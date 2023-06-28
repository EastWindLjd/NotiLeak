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


# Notification Tampering with MD5 Collision Attack 

This attack employs the well-known chosen-prefix attack from Dr. Marc Stevens's group. 
We adopt the tools published in https://github.com/cr-marcstevens/hashclash to calculate two notification files in the same MD5 signatures.

The two sample notification files can be found in /MD5_collision/prefix.txt.coll or prefix2.txt.coll.
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

# NotiLeak for static analysis

Our analysis tool NotiLeak is mainly built on top of Flowdroid. 
We changed the `SourcesAndSinks.txt` file of Flowdroid to detect privacy leakage and the `privacy_apis.yaml` to detect the usage of notification platforms and sensitive APIs.

## Setup
In the top directory,

```bash
# Install MobSF
cd MobSF
./setup.sh
```

## Run

```bash
# Flowdroid
java -jar FlowDroid/soot-infoflow-cmd-2.9.0-jar-with-dependencies.jar \
    -a <APK File> \
    -p <Android JAR folder> \
    -s ./SourcesAndSinks.txt
```
## Source Code 
Please find the codes and samples in https://github.com/EastWindLjd/NotiLeak
