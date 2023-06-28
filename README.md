# Devils in Your Apps: Vulnerabilities and User Privacy Exposure in Mobile Notification Systems (IEEE/IFIP DSN 2023)

# Abstract
Witnessing the blooming adoption of push notifications on mobile devices, this new message delivery paradigm has become pervasive in diverse applications.
Accompanying with its broad adoption, the potential security risks and privacy exposure issues raise public concerns regarding its great social impacts.
This paper conducts the first attempt to exploit the mobile notification ecosystem.
By dissecting its structural elements and implementation process, a comprehensive vulnerability analysis is conducted towards the complete flow of mobile notification from platform enrollment to messaging. 
Meanwhile, for privacy exposure, we first examine the implementation of privacy policy compliance by proposing a three-level inspection approach to guide our analysis.
Then, our top-down methods from documentation analysis, application network traffic study,  to static analysis expose the illicit data collection behaviors in released applications.
In addition, we uncover the potential privacy inference resulted from the notification monitoring.
To support our analysis, we  conduct  empirical studies on 12 most popular notification platforms and perform static analysis over 30,000+ applications.
We discover: 1)  six platforms either provide ambiguous KEY naming rules or offer vulnerable messaging APIs; 2) privacy policy compliance implementations are either stagnated at the documentation stages (8 of 12 platforms) or never implemented in apps, resulting in billions of users  suffering from privacy exposure; and 3) some apps can stealthily monitor notification messages delivering to other apps, potentially incurring user privacy inference risks.
Our study raises the urgent demand for better regulations of mobile notification deployment.

# Source code and Samples 
Please find the codes and samples at https://github.com/EastWindLjd/NotiLeak

# Notification Tampering with MD5 Collision Attack 

This attack employs the well-known chosen-prefix attack from Dr. Marc Stevens's group. 
We adopt the tools published in https://github.com/cr-marcstevens/hashclash to calculate two notification files in the same MD5 signatures.

The two sample notification files can be found in "/MD5_collision/prefix.txt.coll or prefix2.txt.coll".
These are two notification contents that meet the Umeng platform API format, while the field "text" are filled by "TodayWeather" and "AdvertiseInf" to indicate the normal notification and mal-ads, as shown below:

```bash
    "appkey":"35s89834fda",
    "type":"broadcast", 
    "payload":
    {
        "display_type": "notification", 
        "body":
        {
            "title":"Test",
            "text":"TodayWeather",
        }
    },
    "description":"
```
```bash
    "appkey":"35s89834fda",
    "type":"broadcast", 
    "payload":
    {
        "display_type": "notification", 
        "body":
        {
            "title":"Test",
            "text":"AdvertiseInf",
        }
    },
    "description":"
```
Besides, the calculated suffixes for these two content can be put in the field "description":" as it is an optional field that will not influence the packet parsing. 
More technique details about the MD5 collision attack can refer to https://github.com/cr-marcstevens/hashclash

# NotiLeak for Static Analysis

Our analysis tool Notileak is implemented based on LibPecker and Flowdroid. 
LibPecker is used to detect third-party notification libraries and Flowdroid is a well-known tool used to detect whether these libraries leak personal information. 
Flowdroid and the detailed techniques can refer to https://github.com/secure-software-engineering/FlowDroid. 
LibPecker and the detailed techniques can refer to https://github.com/yuanxzhang/LibPecker

We customized the `SourcesAndSinks.txt` file of Flowdroid to detect privacy leakage and the `privacy_apis.yaml` to detect the usage of notification platforms and sensitive APIs.
The analysis results are stored in Mongodb.

## Setup
In the top directory,

```bash
# Install Mongodb
apt-get install gnupg
curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
--dearmor
touch /etc/apt/sources.list.d/mongodb-org-6.0.list
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Scrape latest notification libraries from Maven and other repositories.
python library-scraper.py notification-libraries.json
```

## Run

```bash
python utilities.py
```
## Note
Our empirical analysis is based on the SDKs and APIs collected by 2022. We notice that most of the notification platforms have updated their SDKs and developer guidance. To fit the analysis at present, please check the latest notification SDKs and their data upload APIs to modify the `SourcesAndSinks.txt` and `privacy_apis.yaml` to customize the tool for your requirement.

# Notification Monitoring
The Android permission mechanism protects notification contents with the “BIND NOTIFICATION LISTENER SERVICE”. 
Apps typically require applying for this permission and waiting for the user grant. 
If a user grants this permission to the app, the notification listener function in the app can listen to the respective notification events and obtain the notification messages shown on the notification bar.
However, the design flaw of this mechanism is that the notification bar is not isolated app by app, thus any app with this permission can access all messages in this bar. 
In other words, notification listeners in different apps can access all messages on the notification bar even if the messages are from other apps.
Such shared access to the notification bar can cause the risk of side-channel attacks which allow a malicious app to monitor the notification messages for user privacy inference.
In practice, the malicious app can pretend to be a normal one and perform its normal behavior, such as listening to the notification for automatically receiving verification codes.
This can induce the user to grant the corresponding permission for monitoring notifications. 
But, it can stealthily monitor the sensitive message from other apps for privacy inference.

## Responsible disclose to the Android group
We have reported this issue to the Android group and wait for their responses. 

