# Devils in Your Apps: Vulnerabilities and User Privacy Exposure in Mobile Notification Systems (DSN 2023)

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

Our analysis is mainly built on top of Flowdroid and MobSF. 

# NotiLeak Outline

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
