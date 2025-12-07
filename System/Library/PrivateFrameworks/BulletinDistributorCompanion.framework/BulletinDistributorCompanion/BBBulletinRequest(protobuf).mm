@interface BBBulletinRequest(protobuf)
+ (id)_actionFromBLTPBAction:()protobuf;
+ (uint64_t)plistTypes;
+ (void)bulletinRequestFromProtobuf:()protobuf;
@end

@implementation BBBulletinRequest(protobuf)

+ (void)bulletinRequestFromProtobuf:()protobuf
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CF3518]);
  sectionID = [v4 sectionID];
  [v5 setSectionID:sectionID];

  recordID = [v4 recordID];
  [v5 setRecordID:recordID];

  publisherBulletinID = [v4 publisherBulletinID];
  [v5 setPublisherBulletinID:publisherBulletinID];

  [v5 setSectionSubtype:{objc_msgSend(v4, "sectionSubtype")}];
  title = [v4 title];
  [v5 setTitle:title];

  subtitle = [v4 subtitle];
  [v5 setSubtitle:subtitle];

  messageTitle = [v4 messageTitle];
  [v5 setMessage:messageTitle];

  [v5 setLoading:{objc_msgSend(v4, "loading")}];
  [v5 setTurnsOnDisplay:{objc_msgSend(v4, "turnsOnDisplay")}];
  dismissalID = [v4 dismissalID];
  [v5 setDismissalID:dismissalID];

  v13 = MEMORY[0x277CBEB98];
  subsectionIDs = [v4 subsectionIDs];
  v15 = [v13 setWithArray:subsectionIDs];
  [v5 setSubsectionIDs:v15];

  peopleIDs = [v4 peopleIDs];
  [v5 setPeopleIDs:peopleIDs];

  [v5 setIgnoresQuietMode:{objc_msgSend(v4, "ignoresQuietMode")}];
  categoryID = [v4 categoryID];
  [v5 setCategoryID:categoryID];

  threadID = [v4 threadID];
  [v5 setThreadID:threadID];

  [v5 setPreemptsPresentedAlert:{objc_msgSend(v4, "preemptsPresentedAlert")}];
  if ([v4 suppressDelayForForwardedBulletins])
  {
    [v5 setContextValue:MEMORY[0x277CBEC38] forKey:@"BLTSuppressDelayForForwardedBulletinsKey"];
  }

  icon = [v4 icon];

  if (icon)
  {
    icon2 = [v4 icon];
    v21 = BBSectionIconFromBLTPBSectionIcon(icon2);
    [v5 setIcon:v21];
  }

  if ([v4 hasDate])
  {
    v22 = MEMORY[0x277CBEAA8];
    [v4 date];
    v23 = [v22 dateWithTimeIntervalSince1970:?];
    [v5 setDate:v23];
  }

  [v5 setDateFormatStyle:1];
  sockPuppetAppBundleID = [v4 sockPuppetAppBundleID];
  if (sockPuppetAppBundleID)
  {
    [v5 setContextValue:sockPuppetAppBundleID forKey:@"BLTSockPuppetAppIdentifierKey"];
  }

  v121 = sockPuppetAppBundleID;
  if ([v4 hasRequiredExpirationDate])
  {
    v25 = MEMORY[0x277CBEAA8];
    [v4 requiredExpirationDate];
    v26 = [v25 dateWithTimeIntervalSince1970:?];
    [v5 setExpirationDate:v26];
  }

  action = [MEMORY[0x277CF3500] action];
  [v5 setAcknowledgeAction:action];

  snoozeAction = [v4 snoozeAction];

  if (snoozeAction)
  {
    action2 = [MEMORY[0x277CF3500] action];
    [v5 setSnoozeAction:action2];
  }

  action3 = [MEMORY[0x277CF3500] action];
  [v5 setDismissAction:action3];

  if ([v4 hasAttachmentType])
  {
    v31 = objc_alloc_init(MEMORY[0x277CF3540]);
    [v31 setType:{objc_msgSend(v4, "attachmentType")}];
    attachmentURLURL = [v4 attachmentURLURL];
    [v31 setURL:attachmentURLURL];

    [v5 setPrimaryAttachment:v31];
  }

  v123 = v5;
  array = [MEMORY[0x277CBEB18] array];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  additionalAttachments = [v4 additionalAttachments];
  v35 = [additionalAttachments countByEnumeratingWithState:&v136 objects:v149 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v137;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v137 != v37)
        {
          objc_enumerationMutation(additionalAttachments);
        }

        v39 = *(*(&v136 + 1) + 8 * i);
        if ([v39 hasURL])
        {
          v40 = objc_alloc_init(MEMORY[0x277CF3540]);
          [v40 setType:{objc_msgSend(v39, "type")}];
          attachmentURLURL2 = [v39 attachmentURLURL];
          [v40 setURL:attachmentURLURL2];

          [array addObject:v40];
        }
      }

      v36 = [additionalAttachments countByEnumeratingWithState:&v136 objects:v149 count:16];
    }

    while (v36);
  }

  v42 = v123;
  if ([array count])
  {
    [v123 setAdditionalAttachments:array];
  }

  context = [v4 context];
  if (context)
  {
    v43 = MEMORY[0x277CCAAC8];
    plistTypes = [self plistTypes];
    v135 = 0;
    v45 = [v43 unarchivedObjectOfClasses:plistTypes fromData:context error:&v135];
    v46 = v135;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || v46)
    {
      v48 = blt_general_log(isKindOfClass);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v120 = objc_opt_class();
        *buf = 138413058;
        v142 = v4;
        v143 = 2112;
        v144 = v45;
        v145 = 2112;
        v146 = v120;
        v147 = 2112;
        v148 = v46;
        v42 = v123;
        _os_log_error_impl(&dword_241FB3000, v48, OS_LOG_TYPE_ERROR, "Bulletin %@ failed to unarchive context dictionary, dict=%@ dictClass=%@ error=%@", buf, 0x2Au);
      }
    }

    else
    {
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __59__BBBulletinRequest_protobuf__bulletinRequestFromProtobuf___block_invoke;
      v133[3] = &unk_278D31E60;
      v134 = v123;
      [v45 enumerateKeysAndObjectsUsingBlock:v133];
      v48 = v134;
    }
  }

  alertSuppressionContexts = [v4 alertSuppressionContexts];

  if (alertSuppressionContexts)
  {
    alertSuppressionContexts2 = [v4 alertSuppressionContexts];
    alertSuppressionContextsNulls = [v4 alertSuppressionContextsNulls];
    v132 = 0;
    v52 = [BLTObjectSerializer unserializeObject:alertSuppressionContexts2 nulls:alertSuppressionContextsNulls error:&v132];
    v53 = v132;

    if (!v53)
    {
      v54 = [MEMORY[0x277CBEB98] setWithArray:v52];
      [v42 setAlertSuppressionContexts:v54];
    }
  }

  if ([v4 includesSound])
  {
    if ([v4 soundAlertType])
    {
      v55 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:{objc_msgSend(v4, "soundAlertType")}];
      soundAccountIdentifier = [v4 soundAccountIdentifier];

      if (soundAccountIdentifier)
      {
        soundAccountIdentifier2 = [v4 soundAccountIdentifier];
        [v55 setTopic:soundAccountIdentifier2];
      }

      soundToneIdentifier = [v4 soundToneIdentifier];

      if (soundToneIdentifier)
      {
        soundToneIdentifier2 = [v4 soundToneIdentifier];
        [v55 setToneIdentifier:soundToneIdentifier2];
      }

      if ([v4 hasSoundShouldRepeat])
      {
        [v55 setShouldRepeat:{objc_msgSend(v4, "soundShouldRepeat")}];
      }

      if ([v4 hasSoundShouldIgnoreRingerSwitch])
      {
        [v55 setShouldIgnoreRingerSwitch:{objc_msgSend(v4, "soundShouldIgnoreRingerSwitch")}];
      }

      if ([v4 hasSoundMaximumDuration])
      {
        [v4 soundMaximumDuration];
        [v55 setMaximumDuration:?];
      }

      if ([v4 hasSoundAudioVolume])
      {
        [v4 soundAudioVolume];
        *&v60 = v60;
        [v55 setAudioVolume:v60];
      }

      v61 = [objc_alloc(MEMORY[0x277CF3588]) initWithToneAlertConfiguration:v55];
    }

    else
    {
      v61 = [objc_alloc(MEMORY[0x277CF3588]) initWithToneAlert:17];
    }

    [v42 setSound:v61];
  }

  v62 = MEMORY[0x277CBEB18];
  supplementaryActions = [v4 supplementaryActions];
  v64 = [v62 arrayWithCapacity:{objc_msgSend(supplementaryActions, "count")}];

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  supplementaryActions2 = [v4 supplementaryActions];
  v66 = [supplementaryActions2 countByEnumeratingWithState:&v128 objects:v140 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v129;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v129 != v68)
        {
          objc_enumerationMutation(supplementaryActions2);
        }

        v70 = [self _actionFromBLTPBAction:*(*(&v128 + 1) + 8 * j)];
        [v64 addObject:v70];
      }

      v67 = [supplementaryActions2 countByEnumeratingWithState:&v128 objects:v140 count:16];
    }

    while (v67);
  }

  [v123 setSupplementaryActions:v64];
  categoryID2 = [v4 categoryID];

  if (categoryID2)
  {
    categoryID3 = [v4 categoryID];
    [v123 setContextValue:categoryID3 forKey:@"category"];
  }

  teamID = [v4 teamID];

  if (teamID)
  {
    teamID2 = [v4 teamID];
    [v123 setContextValue:teamID2 forKey:@"teamID"];
  }

  if ([v4 hasHasCriticalIcon])
  {
    [v123 setHasCriticalIcon:{objc_msgSend(v4, "hasCriticalIcon")}];
  }

  if ([v4 hasHeader])
  {
    header = [v4 header];
    [v123 setHeader:header];
  }

  if ([v4 hasContentType])
  {
    contentType = [v4 contentType];
    [v123 setContentType:contentType];
  }

  if ([v4 hasInterruptionLevel])
  {
    [v123 setInterruptionLevel:{objc_msgSend(v4, "interruptionLevel")}];
  }

  if ([v4 hasCommunicationContext])
  {
    v77 = MEMORY[0x277CF3520];
    communicationContext = [v4 communicationContext];
    v79 = [v77 communicationContextFromProtobuf:communicationContext];
    [v123 setCommunicationContext:v79];
  }

  if ([v4 hasFilterCriteria])
  {
    filterCriteria = [v4 filterCriteria];
    [v123 setFilterCriteria:filterCriteria];
  }

  if ([v4 hasFollowActivityAction])
  {
    v81 = MEMORY[0x277CF3500];
    followActivityAction = [v4 followActivityAction];
    identifier = [followActivityAction identifier];
    followActivityAction2 = [v4 followActivityAction];
    appearance = [followActivityAction2 appearance];
    title2 = [appearance title];
    v87 = [v81 actionWithIdentifier:identifier title:title2];

    followActivityAction3 = [v4 followActivityAction];
    [v87 setActivationMode:{objc_msgSend(followActivityAction3, "activationMode")}];

    [v123 setFollowActivityAction:v87];
  }

  if ([v4 hasSubordinateIcon])
  {
    [v123 setHasSubordinateIcon:{objc_msgSend(v4, "hasSubordinateIcon")}];
  }

  if ([v4 hasSummary])
  {
    v89 = MEMORY[0x277CCAAC8];
    v90 = objc_opt_class();
    summary = [v4 summary];
    v127 = 0;
    v92 = [v89 unarchivedObjectOfClass:v90 fromData:summary error:&v127];
    v93 = v127;

    if (v93)
    {
      v95 = blt_general_log(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v123 setSummary:v92];
  }

  if ([v4 hasThreadSummary])
  {
    v96 = MEMORY[0x277CCAAC8];
    v97 = objc_opt_class();
    threadSummary = [v4 threadSummary];
    v126 = 0;
    v99 = [v96 unarchivedObjectOfClass:v97 fromData:threadSummary error:&v126];
    v100 = v126;

    if (v100)
    {
      v102 = blt_general_log(v101);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v123 setThreadSummary:v99];
  }

  if ([v4 hasAttributedMessage])
  {
    v103 = MEMORY[0x277CCAAC8];
    v104 = objc_opt_class();
    attributedMessage = [v4 attributedMessage];
    v125 = 0;
    v106 = [v103 unarchivedObjectOfClass:v104 fromData:attributedMessage error:&v125];
    v107 = v125;

    if (v107)
    {
      v109 = blt_general_log(v108);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v123 setAttributedMessage:v106];
  }

  if ([v4 hasEventBehavior])
  {
    v110 = MEMORY[0x277CCAAC8];
    v111 = objc_opt_class();
    eventBehavior = [v4 eventBehavior];
    v124 = 0;
    v113 = [v110 unarchivedObjectOfClass:v111 fromData:eventBehavior error:&v124];
    v114 = v124;

    if (v114)
    {
      v116 = blt_general_log(v115);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v123 setEventBehavior:v113];
  }

  if ([v4 hasPriorityNotificationStatus])
  {
    [v4 priorityNotificationStatus];
    [v123 setPriorityNotificationStatus:v117];
  }

  if ([v4 hasIsHighlight])
  {
    [v123 setIsHighlight:{objc_msgSend(v4, "isHighlight")}];
  }

  v118 = v123;

  return v123;
}

+ (id)_actionFromBLTPBAction:()protobuf
{
  v3 = a3;
  if (v3)
  {
    action = [MEMORY[0x277CF3500] action];
    identifier = [v3 identifier];
    [action setIdentifier:identifier];

    [action setActivationMode:{objc_msgSend(v3, "activationMode")}];
    v6 = MEMORY[0x277CBEBC0];
    launchURL = [v3 launchURL];
    v8 = [v6 URLWithString:launchURL];
    [action setLaunchURL:v8];

    appearance = [v3 appearance];
    LODWORD(launchURL) = [appearance destructive];

    v10 = MEMORY[0x277CF3508];
    appearance2 = [v3 appearance];
    title = [appearance2 title];
    v13 = [v10 appearanceWithTitle:title];

    [v13 setStyle:launchURL];
    [action setAppearance:v13];
    [action setBehavior:{objc_msgSend(v3, "behavior")}];
    behaviorParameters = [v3 behaviorParameters];

    if (behaviorParameters)
    {
      behaviorParameters2 = [v3 behaviorParameters];
      behaviorParametersNulls = [v3 behaviorParametersNulls];
      v20 = 0;
      v17 = [BLTObjectSerializer unserializeObject:behaviorParameters2 nulls:behaviorParametersNulls error:&v20];
      v18 = v20;

      if (!v18)
      {
        [action setBehaviorParameters:v17];
      }
    }
  }

  else
  {
    action = 0;
  }

  return action;
}

+ (uint64_t)plistTypes
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

@end