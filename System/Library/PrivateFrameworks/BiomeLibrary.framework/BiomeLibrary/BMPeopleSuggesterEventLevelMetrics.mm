@interface BMPeopleSuggesterEventLevelMetrics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)selected engagedSuggestionProxyReason:(id)reason engagedSuggestionProxy:(id)proxy engagedSuggestionProxyDebug:(id)debug airdropShown:(id)shown airdropEngaged:(id)engaged sharePlayAvailable:(id)available sharePlayEngaged:(id)self0 appSharingIntent:(id)self1 engagementType:(id)self2 suggestionAvailable:(id)self3 suggestionNumber:(id)self4 numberOfVisibleSuggestions:(id)self5 peopleSuggestionsSetting:(id)self6 transportApp:(id)self7 sourceApp:(id)self8 contentShared:(id)self9 sessionId:(id)id userExperienceFlow:(id)flow sessionLatency:(id)latency modelTimeout:(id)timeout suggestionPath:(id)path suggestionPathDebug:(id)pathDebug trialDeploymentId:(id)deploymentId trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId isPhotos:(id)photos PSRActive:(id)selected0 sessionDelayInMilliseconds:(id)selected1 datestamp:(id)selected2;
- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPeopleSuggesterEventLevelMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
    indexSelected2 = [v5 indexSelected];
    v8 = indexSelected2;
    if (indexSelected == indexSelected2)
    {
    }

    else
    {
      indexSelected3 = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
      indexSelected4 = [v5 indexSelected];
      v11 = [indexSelected3 isEqual:indexSelected4];

      if (!v11)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
    engagedSuggestionProxyReason2 = [v5 engagedSuggestionProxyReason];
    v15 = engagedSuggestionProxyReason2;
    if (engagedSuggestionProxyReason == engagedSuggestionProxyReason2)
    {
    }

    else
    {
      engagedSuggestionProxyReason3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
      engagedSuggestionProxyReason4 = [v5 engagedSuggestionProxyReason];
      v18 = [engagedSuggestionProxyReason3 isEqual:engagedSuggestionProxyReason4];

      if (!v18)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
    engagedSuggestionProxy2 = [v5 engagedSuggestionProxy];
    v21 = engagedSuggestionProxy2;
    if (engagedSuggestionProxy == engagedSuggestionProxy2)
    {
    }

    else
    {
      engagedSuggestionProxy3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
      engagedSuggestionProxy4 = [v5 engagedSuggestionProxy];
      v24 = [engagedSuggestionProxy3 isEqual:engagedSuggestionProxy4];

      if (!v24)
      {
        goto LABEL_133;
      }
    }

    engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
    engagedSuggestionProxyDebug2 = [v5 engagedSuggestionProxyDebug];
    v27 = engagedSuggestionProxyDebug2;
    if (engagedSuggestionProxyDebug == engagedSuggestionProxyDebug2)
    {
    }

    else
    {
      engagedSuggestionProxyDebug3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
      engagedSuggestionProxyDebug4 = [v5 engagedSuggestionProxyDebug];
      v30 = [engagedSuggestionProxyDebug3 isEqual:engagedSuggestionProxyDebug4];

      if (!v30)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAirdropShown](self, "hasAirdropShown") || [v5 hasAirdropShown])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropShown])
      {
        goto LABEL_133;
      }

      if (![v5 hasAirdropShown])
      {
        goto LABEL_133;
      }

      airdropShown = [(BMPeopleSuggesterEventLevelMetrics *)self airdropShown];
      if (airdropShown != [v5 airdropShown])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAirdropEngaged](self, "hasAirdropEngaged") || [v5 hasAirdropEngaged])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropEngaged])
      {
        goto LABEL_133;
      }

      if (![v5 hasAirdropEngaged])
      {
        goto LABEL_133;
      }

      airdropEngaged = [(BMPeopleSuggesterEventLevelMetrics *)self airdropEngaged];
      if (airdropEngaged != [v5 airdropEngaged])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSharePlayAvailable](self, "hasSharePlayAvailable") || [v5 hasSharePlayAvailable])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayAvailable])
      {
        goto LABEL_133;
      }

      if (![v5 hasSharePlayAvailable])
      {
        goto LABEL_133;
      }

      sharePlayAvailable = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayAvailable];
      if (sharePlayAvailable != [v5 sharePlayAvailable])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSharePlayEngaged](self, "hasSharePlayEngaged") || [v5 hasSharePlayEngaged])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayEngaged])
      {
        goto LABEL_133;
      }

      if (![v5 hasSharePlayEngaged])
      {
        goto LABEL_133;
      }

      sharePlayEngaged = [(BMPeopleSuggesterEventLevelMetrics *)self sharePlayEngaged];
      if (sharePlayEngaged != [v5 sharePlayEngaged])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasAppSharingIntent](self, "hasAppSharingIntent") || [v5 hasAppSharingIntent])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasAppSharingIntent])
      {
        goto LABEL_133;
      }

      if (![v5 hasAppSharingIntent])
      {
        goto LABEL_133;
      }

      appSharingIntent = [(BMPeopleSuggesterEventLevelMetrics *)self appSharingIntent];
      if (appSharingIntent != [v5 appSharingIntent])
      {
        goto LABEL_133;
      }
    }

    engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
    engagementType2 = [v5 engagementType];
    v38 = engagementType2;
    if (engagementType == engagementType2)
    {
    }

    else
    {
      engagementType3 = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
      engagementType4 = [v5 engagementType];
      v41 = [engagementType3 isEqual:engagementType4];

      if (!v41)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSuggestionAvailable](self, "hasSuggestionAvailable") || [v5 hasSuggestionAvailable])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSuggestionAvailable])
      {
        goto LABEL_133;
      }

      if (![v5 hasSuggestionAvailable])
      {
        goto LABEL_133;
      }

      suggestionAvailable = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionAvailable];
      if (suggestionAvailable != [v5 suggestionAvailable])
      {
        goto LABEL_133;
      }
    }

    suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
    suggestionNumber2 = [v5 suggestionNumber];
    v45 = suggestionNumber2;
    if (suggestionNumber == suggestionNumber2)
    {
    }

    else
    {
      suggestionNumber3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
      suggestionNumber4 = [v5 suggestionNumber];
      v48 = [suggestionNumber3 isEqual:suggestionNumber4];

      if (!v48)
      {
        goto LABEL_133;
      }
    }

    numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
    numberOfVisibleSuggestions2 = [v5 numberOfVisibleSuggestions];
    v51 = numberOfVisibleSuggestions2;
    if (numberOfVisibleSuggestions == numberOfVisibleSuggestions2)
    {
    }

    else
    {
      numberOfVisibleSuggestions3 = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
      numberOfVisibleSuggestions4 = [v5 numberOfVisibleSuggestions];
      v54 = [numberOfVisibleSuggestions3 isEqual:numberOfVisibleSuggestions4];

      if (!v54)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasPeopleSuggestionsSetting](self, "hasPeopleSuggestionsSetting") || [v5 hasPeopleSuggestionsSetting])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasPeopleSuggestionsSetting])
      {
        goto LABEL_133;
      }

      if (![v5 hasPeopleSuggestionsSetting])
      {
        goto LABEL_133;
      }

      peopleSuggestionsSetting = [(BMPeopleSuggesterEventLevelMetrics *)self peopleSuggestionsSetting];
      if (peopleSuggestionsSetting != [v5 peopleSuggestionsSetting])
      {
        goto LABEL_133;
      }
    }

    transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
    transportApp2 = [v5 transportApp];
    v58 = transportApp2;
    if (transportApp == transportApp2)
    {
    }

    else
    {
      transportApp3 = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
      transportApp4 = [v5 transportApp];
      v61 = [transportApp3 isEqual:transportApp4];

      if (!v61)
      {
        goto LABEL_133;
      }
    }

    sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
    sourceApp2 = [v5 sourceApp];
    v64 = sourceApp2;
    if (sourceApp == sourceApp2)
    {
    }

    else
    {
      sourceApp3 = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
      sourceApp4 = [v5 sourceApp];
      v67 = [sourceApp3 isEqual:sourceApp4];

      if (!v67)
      {
        goto LABEL_133;
      }
    }

    contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
    contentShared2 = [v5 contentShared];
    v70 = contentShared2;
    if (contentShared == contentShared2)
    {
    }

    else
    {
      contentShared3 = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
      contentShared4 = [v5 contentShared];
      v73 = [contentShared3 isEqual:contentShared4];

      if (!v73)
      {
        goto LABEL_133;
      }
    }

    sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
    sessionId2 = [v5 sessionId];
    v76 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
      sessionId4 = [v5 sessionId];
      v79 = [sessionId3 isEqual:sessionId4];

      if (!v79)
      {
        goto LABEL_133;
      }
    }

    userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
    userExperienceFlow2 = [v5 userExperienceFlow];
    v82 = userExperienceFlow2;
    if (userExperienceFlow == userExperienceFlow2)
    {
    }

    else
    {
      userExperienceFlow3 = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
      userExperienceFlow4 = [v5 userExperienceFlow];
      v85 = [userExperienceFlow3 isEqual:userExperienceFlow4];

      if (!v85)
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasSessionLatency](self, "hasSessionLatency") || [v5 hasSessionLatency])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasSessionLatency])
      {
        goto LABEL_133;
      }

      if (![v5 hasSessionLatency])
      {
        goto LABEL_133;
      }

      sessionLatency = [(BMPeopleSuggesterEventLevelMetrics *)self sessionLatency];
      if (sessionLatency != [v5 sessionLatency])
      {
        goto LABEL_133;
      }
    }

    if (-[BMPeopleSuggesterEventLevelMetrics hasModelTimeout](self, "hasModelTimeout") || [v5 hasModelTimeout])
    {
      if (![(BMPeopleSuggesterEventLevelMetrics *)self hasModelTimeout])
      {
        goto LABEL_133;
      }

      if (![v5 hasModelTimeout])
      {
        goto LABEL_133;
      }

      modelTimeout = [(BMPeopleSuggesterEventLevelMetrics *)self modelTimeout];
      if (modelTimeout != [v5 modelTimeout])
      {
        goto LABEL_133;
      }
    }

    suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
    suggestionPath2 = [v5 suggestionPath];
    v90 = suggestionPath2;
    if (suggestionPath == suggestionPath2)
    {
    }

    else
    {
      suggestionPath3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
      suggestionPath4 = [v5 suggestionPath];
      v93 = [suggestionPath3 isEqual:suggestionPath4];

      if (!v93)
      {
        goto LABEL_133;
      }
    }

    suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
    suggestionPathDebug2 = [v5 suggestionPathDebug];
    v96 = suggestionPathDebug2;
    if (suggestionPathDebug == suggestionPathDebug2)
    {
    }

    else
    {
      suggestionPathDebug3 = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
      suggestionPathDebug4 = [v5 suggestionPathDebug];
      v99 = [suggestionPathDebug3 isEqual:suggestionPathDebug4];

      if (!v99)
      {
        goto LABEL_133;
      }
    }

    trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
    trialDeploymentId2 = [v5 trialDeploymentId];
    v102 = trialDeploymentId2;
    if (trialDeploymentId == trialDeploymentId2)
    {
    }

    else
    {
      trialDeploymentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
      trialDeploymentId4 = [v5 trialDeploymentId];
      v105 = [trialDeploymentId3 isEqual:trialDeploymentId4];

      if (!v105)
      {
        goto LABEL_133;
      }
    }

    trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
    trialExperimentId2 = [v5 trialExperimentId];
    v108 = trialExperimentId2;
    if (trialExperimentId == trialExperimentId2)
    {
    }

    else
    {
      trialExperimentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
      trialExperimentId4 = [v5 trialExperimentId];
      v111 = [trialExperimentId3 isEqual:trialExperimentId4];

      if (!v111)
      {
        goto LABEL_133;
      }
    }

    trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
    trialTreatmentId2 = [v5 trialTreatmentId];
    v114 = trialTreatmentId2;
    if (trialTreatmentId == trialTreatmentId2)
    {
    }

    else
    {
      trialTreatmentId3 = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
      trialTreatmentId4 = [v5 trialTreatmentId];
      v117 = [trialTreatmentId3 isEqual:trialTreatmentId4];

      if (!v117)
      {
        goto LABEL_133;
      }
    }

    if (!-[BMPeopleSuggesterEventLevelMetrics hasIsPhotos](self, "hasIsPhotos") && ![v5 hasIsPhotos] || -[BMPeopleSuggesterEventLevelMetrics hasIsPhotos](self, "hasIsPhotos") && objc_msgSend(v5, "hasIsPhotos") && (v118 = -[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos"), v118 == objc_msgSend(v5, "isPhotos")))
    {
      if (!-[BMPeopleSuggesterEventLevelMetrics hasPSRActive](self, "hasPSRActive") && ![v5 hasPSRActive] || -[BMPeopleSuggesterEventLevelMetrics hasPSRActive](self, "hasPSRActive") && objc_msgSend(v5, "hasPSRActive") && (v119 = -[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive"), v119 == objc_msgSend(v5, "PSRActive")))
      {
        if (!-[BMPeopleSuggesterEventLevelMetrics hasSessionDelayInMilliseconds](self, "hasSessionDelayInMilliseconds") && ![v5 hasSessionDelayInMilliseconds] || -[BMPeopleSuggesterEventLevelMetrics hasSessionDelayInMilliseconds](self, "hasSessionDelayInMilliseconds") && objc_msgSend(v5, "hasSessionDelayInMilliseconds") && (v120 = -[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds"), v120 == objc_msgSend(v5, "sessionDelayInMilliseconds")))
        {
          datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
          datestamp2 = [v5 datestamp];
          if (datestamp == datestamp2)
          {
            v12 = 1;
          }

          else
          {
            datestamp3 = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
            datestamp4 = [v5 datestamp];
            v12 = [datestamp3 isEqual:datestamp4];
          }

          goto LABEL_134;
        }
      }
    }

LABEL_133:
    v12 = 0;
LABEL_134:

    goto LABEL_135;
  }

  v12 = 0;
LABEL_135:

  return v12;
}

- (id)jsonDictionary
{
  v100[30] = *MEMORY[0x1E69E9840];
  indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropShown])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropShown](self, "airdropShown")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAirdropEngaged])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropEngaged](self, "airdropEngaged")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayAvailable])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayAvailable](self, "sharePlayAvailable")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSharePlayEngaged])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayEngaged](self, "sharePlayEngaged")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasAppSharingIntent])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics appSharingIntent](self, "appSharingIntent")}];
  }

  else
  {
    v97 = 0;
  }

  engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSuggestionAvailable])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  }

  else
  {
    v95 = 0;
  }

  suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasPeopleSuggestionsSetting])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  }

  else
  {
    v92 = 0;
  }

  transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSessionLatency])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionLatency](self, "sessionLatency")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasModelTimeout])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics modelTimeout](self, "modelTimeout")}];
  }

  else
  {
    v85 = 0;
  }

  suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasIsPhotos])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasPSRActive])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMPeopleSuggesterEventLevelMetrics *)self hasSessionDelayInMilliseconds])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds")}];
  }

  else
  {
    v77 = 0;
  }

  datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v99[0] = @"indexSelected";
  null = indexSelected;
  if (!indexSelected)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null;
  v100[0] = null;
  v99[1] = @"engagedSuggestionProxyReason";
  null2 = engagedSuggestionProxyReason;
  if (!engagedSuggestionProxyReason)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null2;
  v100[1] = null2;
  v99[2] = @"engagedSuggestionProxy";
  null3 = engagedSuggestionProxy;
  if (!engagedSuggestionProxy)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null3;
  v100[2] = null3;
  v99[3] = @"engagedSuggestionProxyDebug";
  null4 = engagedSuggestionProxyDebug;
  if (!engagedSuggestionProxyDebug)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null4;
  v100[3] = null4;
  v99[4] = @"airdropShown";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null5;
  v100[4] = null5;
  v99[5] = @"airdropEngaged";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null6;
  v100[5] = null6;
  v99[6] = @"sharePlayAvailable";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null7;
  v100[6] = null7;
  v99[7] = @"sharePlayEngaged";
  null8 = v98;
  if (!v98)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v100[7] = null8;
  v99[8] = @"appSharingIntent";
  null9 = v97;
  if (!v97)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v100[8] = null9;
  v99[9] = @"engagementType";
  null10 = engagementType;
  if (!engagementType)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = engagedSuggestionProxyDebug;
  v71 = null10;
  v100[9] = null10;
  v99[10] = @"suggestionAvailable";
  null11 = v95;
  if (!v95)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = indexSelected;
  v59 = null11;
  v100[10] = null11;
  v99[11] = @"suggestionNumber";
  null12 = suggestionNumber;
  if (!suggestionNumber)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = engagedSuggestionProxy;
  v70 = null12;
  v100[11] = null12;
  v99[12] = @"numberOfVisibleSuggestions";
  null13 = numberOfVisibleSuggestions;
  if (!numberOfVisibleSuggestions)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null13;
  v100[12] = null13;
  v99[13] = @"peopleSuggestionsSetting";
  null14 = v92;
  if (!v92)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null14;
  v100[13] = null14;
  v99[14] = @"transportApp";
  null15 = transportApp;
  if (!transportApp)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null15;
  v100[14] = null15;
  v99[15] = @"sourceApp";
  null16 = sourceApp;
  if (!sourceApp)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null16;
  v100[15] = null16;
  v99[16] = @"contentShared";
  null17 = contentShared;
  if (!contentShared)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null17;
  v100[16] = null17;
  v99[17] = @"sessionId";
  null18 = sessionId;
  if (!sessionId)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null18;
  v100[17] = null18;
  v99[18] = @"userExperienceFlow";
  null19 = userExperienceFlow;
  if (!userExperienceFlow)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null19;
  v100[18] = null19;
  v99[19] = @"sessionLatency";
  null20 = v86;
  if (!v86)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null20;
  v100[19] = null20;
  v99[20] = @"modelTimeout";
  null21 = v85;
  if (!v85)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null21;
  v100[20] = null21;
  v99[21] = @"suggestionPath";
  null22 = suggestionPath;
  if (!suggestionPath)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null22;
  v100[21] = null22;
  v99[22] = @"suggestionPathDebug";
  null23 = suggestionPathDebug;
  if (!suggestionPathDebug)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = engagedSuggestionProxyReason;
  v49 = null23;
  v100[22] = null23;
  v99[23] = @"trialDeploymentId";
  null24 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v20;
  v47 = null24;
  v100[23] = null24;
  v99[24] = @"trialExperimentId";
  null25 = trialExperimentId;
  if (!trialExperimentId)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v22;
  v73 = v8;
  v100[24] = null25;
  v99[25] = @"trialTreatmentId";
  null26 = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null9;
  v69 = v24;
  v100[25] = null26;
  v99[26] = @"isPhotos";
  null27 = v79;
  if (!v79)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v7;
  v100[26] = null27;
  v99[27] = @"PSRActive";
  null28 = v78;
  if (!v78)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v100[27] = null28;
  v99[28] = @"sessionDelayInMilliseconds";
  null29 = v77;
  if (!v77)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v100[28] = null29;
  v99[29] = @"datestamp";
  null30 = datestamp;
  if (!datestamp)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v100[29] = null30;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:{30, v47}];
  if (!datestamp)
  {
  }

  v45 = v26;
  if (!v77)
  {

    v45 = v26;
  }

  if (!v78)
  {

    v45 = v26;
  }

  if (!v79)
  {

    v45 = v26;
  }

  if (!trialTreatmentId)
  {

    v45 = v26;
  }

  if (!trialExperimentId)
  {

    v45 = v26;
  }

  if (!trialDeploymentId)
  {

    v45 = v26;
  }

  if (!suggestionPathDebug)
  {

    v45 = v26;
  }

  if (!suggestionPath)
  {

    v45 = v26;
  }

  if (!v85)
  {

    v45 = v26;
  }

  if (!v86)
  {

    v45 = v26;
  }

  if (!userExperienceFlow)
  {

    v45 = v26;
  }

  if (!sessionId)
  {

    v45 = v26;
  }

  if (!contentShared)
  {

    v45 = v26;
  }

  if (!sourceApp)
  {

    v45 = v26;
  }

  if (!transportApp)
  {

    v45 = v26;
  }

  if (!v92)
  {

    v45 = v26;
  }

  if (!numberOfVisibleSuggestions)
  {
  }

  if (!suggestionNumber)
  {
  }

  if (!v95)
  {
  }

  if (!engagementType)
  {
  }

  if (!v97)
  {
  }

  if (v98)
  {
    if (v9)
    {
      goto LABEL_143;
    }
  }

  else
  {

    if (v9)
    {
LABEL_143:
      if (v73)
      {
        goto LABEL_144;
      }

      goto LABEL_154;
    }
  }

  if (v73)
  {
LABEL_144:
    if (v41)
    {
      goto LABEL_145;
    }

    goto LABEL_155;
  }

LABEL_154:

  if (v41)
  {
LABEL_145:
    if (v74)
    {
      goto LABEL_146;
    }

    goto LABEL_156;
  }

LABEL_155:

  if (v74)
  {
LABEL_146:
    if (v69)
    {
      goto LABEL_147;
    }

    goto LABEL_157;
  }

LABEL_156:

  if (v69)
  {
LABEL_147:
    if (v75)
    {
      goto LABEL_148;
    }

LABEL_158:

    if (v72)
    {
      goto LABEL_149;
    }

    goto LABEL_159;
  }

LABEL_157:

  if (!v75)
  {
    goto LABEL_158;
  }

LABEL_148:
  if (v72)
  {
    goto LABEL_149;
  }

LABEL_159:

LABEL_149:

  return v68;
}

- (BMPeopleSuggesterEventLevelMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v354[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"indexSelected"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxyReason"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxy"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v287 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v287 = v9;
LABEL_10:
        v10 = [dictionaryCopy objectForKeyedSubscript:@"engagedSuggestionProxyDebug"];
        v288 = v8;
        v286 = v6;
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v289 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v289 = v10;
LABEL_13:
          v291 = [dictionaryCopy objectForKeyedSubscript:@"airdropShown"];
          if (!v291 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            errorCopy2 = error;
            error = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            errorCopy2 = error;
            error = v291;
LABEL_16:
            [dictionaryCopy objectForKeyedSubscript:@"airdropEngaged"];
            v290 = v284 = error;
            if (!v290 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v285 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v285 = v290;
LABEL_19:
              v11 = [dictionaryCopy objectForKeyedSubscript:@"sharePlayAvailable"];
              v281 = v11;
              if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v280 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v280 = v12;
LABEL_22:
                v13 = [dictionaryCopy objectForKeyedSubscript:@"sharePlayEngaged"];
                v279 = v13;
                if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v278 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v278 = v14;
LABEL_25:
                  v283 = [dictionaryCopy objectForKeyedSubscript:@"appSharingIntent"];
                  if (!v283 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v277 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v277 = v283;
LABEL_28:
                    v15 = [dictionaryCopy objectForKeyedSubscript:@"engagementType"];
                    v275 = v15;
                    if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v276 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v276 = v16;
LABEL_31:
                      v17 = [dictionaryCopy objectForKeyedSubscript:@"suggestionAvailable"];
                      v274 = v17;
                      v8 = v288;
                      if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v272 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v272 = v17;
LABEL_34:
                        v18 = [dictionaryCopy objectForKeyedSubscript:@"suggestionNumber"];
                        v268 = v18;
                        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v269 = 0;
                          goto LABEL_37;
                        }

                        v95 = v10;
                        v96 = v5;
                        v97 = v7;
                        v98 = v9;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v269 = v19;
                          v7 = v97;
                          v5 = v96;
                          v10 = v95;
                          v17 = v274;
LABEL_37:
                          v20 = [dictionaryCopy objectForKeyedSubscript:@"numberOfVisibleSuggestions"];
                          v267 = v20;
                          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v265 = 0;
                            goto LABEL_40;
                          }

                          v95 = v10;
                          v96 = v5;
                          v97 = v7;
                          v98 = v9;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v265 = v21;
                            v7 = v97;
                            v5 = v96;
                            v10 = v95;
                            v17 = v274;
LABEL_40:
                            v270 = [dictionaryCopy objectForKeyedSubscript:@"peopleSuggestionsSetting"];
                            if (!v270 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v266 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v266 = v270;
LABEL_43:
                              v22 = [dictionaryCopy objectForKeyedSubscript:@"transportApp"];
                              v263 = v22;
                              if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v264 = 0;
                                goto LABEL_46;
                              }

                              v121 = v10;
                              v122 = v5;
                              v123 = v7;
                              v124 = v9;
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v264 = v23;
                                v7 = v123;
                                v5 = v122;
                                v10 = v121;
                                v17 = v274;
LABEL_46:
                                v24 = [dictionaryCopy objectForKeyedSubscript:@"sourceApp"];
                                v261 = v24;
                                if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v262 = 0;
                                  goto LABEL_49;
                                }

                                v121 = v10;
                                v122 = v5;
                                v123 = v7;
                                v124 = v9;
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v262 = v25;
                                  v7 = v123;
                                  v5 = v122;
                                  v10 = v121;
                                  v17 = v274;
LABEL_49:
                                  v26 = [dictionaryCopy objectForKeyedSubscript:@"contentShared"];
                                  v259 = v26;
                                  if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v260 = 0;
                                    goto LABEL_52;
                                  }

                                  v121 = v10;
                                  v122 = v5;
                                  v123 = v7;
                                  v124 = v9;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v260 = v27;
                                    v7 = v123;
                                    v5 = v122;
                                    v10 = v121;
                                    v17 = v274;
LABEL_52:
                                    v28 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
                                    v257 = v28;
                                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v258 = 0;
                                      goto LABEL_55;
                                    }

                                    v121 = v10;
                                    v122 = v5;
                                    v123 = v7;
                                    v124 = v9;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v258 = v29;
                                      v7 = v123;
                                      v5 = v122;
                                      v10 = v121;
                                      v17 = v274;
LABEL_55:
                                      v30 = [dictionaryCopy objectForKeyedSubscript:@"userExperienceFlow"];
                                      v255 = v30;
                                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v256 = 0;
                                        goto LABEL_58;
                                      }

                                      v121 = v10;
                                      v122 = v5;
                                      v123 = v7;
                                      v124 = v9;
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v256 = v31;
                                        v7 = v123;
                                        v5 = v122;
                                        v10 = v121;
                                        v17 = v274;
LABEL_58:
                                        v32 = [dictionaryCopy objectForKeyedSubscript:@"sessionLatency"];
                                        v253 = v32;
                                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v254 = 0;
LABEL_61:
                                          v34 = [dictionaryCopy objectForKeyedSubscript:@"modelTimeout"];
                                          v251 = v34;
                                          if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!errorCopy2)
                                              {
                                                v252 = 0;
                                                v53 = 0;
                                                v58 = v287;
                                                v17 = v274;
                                                goto LABEL_233;
                                              }

                                              v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v167 = *MEMORY[0x1E698F240];
                                              v313 = *MEMORY[0x1E696A578];
                                              v168 = v5;
                                              v169 = v7;
                                              v170 = v9;
                                              v171 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v228 = objc_opt_class();
                                              v172 = v171;
                                              v9 = v170;
                                              v7 = v169;
                                              v5 = v168;
                                              v250 = [v172 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"modelTimeout"];
                                              v314 = v250;
                                              v249 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
                                              v252 = 0;
                                              v53 = 0;
                                              *errorCopy2 = [v166 initWithDomain:v167 code:2 userInfo:?];
                                              v58 = v287;
                                              goto LABEL_273;
                                            }

                                            v252 = v35;
                                          }

                                          else
                                          {
                                            v252 = 0;
                                          }

                                          v36 = [dictionaryCopy objectForKeyedSubscript:@"suggestionPath"];
                                          v249 = v36;
                                          if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v250 = 0;
                                            goto LABEL_67;
                                          }

                                          v150 = v10;
                                          v151 = v5;
                                          v152 = v7;
                                          v153 = v9;
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v250 = v37;
                                            v7 = v152;
                                            v5 = v151;
                                            v10 = v150;
                                            v17 = v274;
LABEL_67:
                                            v38 = [dictionaryCopy objectForKeyedSubscript:@"suggestionPathDebug"];
                                            v247 = v38;
                                            if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v248 = 0;
                                              goto LABEL_70;
                                            }

                                            v150 = v10;
                                            v151 = v5;
                                            v152 = v7;
                                            v153 = v9;
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v248 = v39;
                                              v7 = v152;
                                              v5 = v151;
                                              v10 = v150;
                                              v17 = v274;
LABEL_70:
                                              v40 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
                                              v245 = v40;
                                              if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v246 = 0;
                                                goto LABEL_73;
                                              }

                                              v150 = v10;
                                              v151 = v5;
                                              v152 = v7;
                                              v153 = v9;
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v246 = v41;
                                                v7 = v152;
                                                v5 = v151;
                                                v10 = v150;
                                                v17 = v274;
LABEL_73:
                                                v42 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
                                                v241 = v42;
                                                if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v244 = 0;
                                                  goto LABEL_76;
                                                }

                                                v150 = v10;
                                                v151 = v5;
                                                v152 = v7;
                                                v153 = v9;
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v244 = v43;
                                                  v7 = v152;
                                                  v5 = v151;
                                                  v10 = v150;
                                                  v17 = v274;
LABEL_76:
                                                  v44 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
                                                  v239 = v44;
                                                  if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v242 = 0;
LABEL_79:
                                                    v46 = [dictionaryCopy objectForKeyedSubscript:@"isPhotos"];
                                                    v238 = v46;
                                                    if (v46 && (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!errorCopy2)
                                                        {
                                                          v240 = 0;
                                                          v53 = 0;
                                                          v58 = v287;
                                                          v17 = v274;
                                                          goto LABEL_226;
                                                        }

                                                        v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v195 = *MEMORY[0x1E698F240];
                                                        v301 = *MEMORY[0x1E696A578];
                                                        v196 = v5;
                                                        v197 = v7;
                                                        v198 = v9;
                                                        v199 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v229 = objc_opt_class();
                                                        v200 = v199;
                                                        v9 = v198;
                                                        v7 = v197;
                                                        v5 = v196;
                                                        v236 = [v200 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"isPhotos"];
                                                        v302 = v236;
                                                        v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
                                                        v240 = 0;
                                                        v53 = 0;
                                                        *errorCopy2 = [v194 initWithDomain:v195 code:2 userInfo:v182];
                                                        v58 = v287;
                                                        v17 = v274;
LABEL_225:

LABEL_226:
                                                        v183 = v238;
LABEL_227:

LABEL_228:
LABEL_229:

LABEL_230:
LABEL_231:

LABEL_232:
LABEL_233:
                                                        v165 = v251;
                                                        goto LABEL_234;
                                                      }

                                                      v240 = v47;
                                                    }

                                                    else
                                                    {
                                                      v240 = 0;
                                                    }

                                                    v48 = [dictionaryCopy objectForKeyedSubscript:@"PSRActive"];
                                                    v235 = v48;
                                                    if (v48)
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v48 = 0;
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (!errorCopy2)
                                                          {
                                                            v236 = 0;
                                                            v53 = 0;
                                                            v58 = v287;
                                                            v17 = v274;
                                                            goto LABEL_224;
                                                          }

                                                          v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v202 = *MEMORY[0x1E698F240];
                                                          v299 = *MEMORY[0x1E696A578];
                                                          v203 = v5;
                                                          v204 = v7;
                                                          v205 = v9;
                                                          v206 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v230 = objc_opt_class();
                                                          v207 = v206;
                                                          v9 = v205;
                                                          v7 = v204;
                                                          v5 = v203;
                                                          v237 = [v207 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v230, @"PSRActive"];
                                                          v300 = v237;
                                                          v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
                                                          v236 = 0;
                                                          v53 = 0;
                                                          *errorCopy2 = [v201 initWithDomain:v202 code:2 userInfo:v181];
                                                          v58 = v287;
                                                          v17 = v274;
LABEL_223:

LABEL_224:
                                                          v182 = v235;
                                                          goto LABEL_225;
                                                        }

                                                        v48 = v48;
                                                      }
                                                    }

                                                    v177 = [dictionaryCopy objectForKeyedSubscript:@"sessionDelayInMilliseconds"];
                                                    v236 = v48;
                                                    v234 = v177;
                                                    if (v177 && (v178 = v177, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (!errorCopy2)
                                                        {
                                                          v237 = 0;
                                                          v53 = 0;
                                                          v58 = v287;
                                                          v17 = v274;
                                                          v181 = v234;
                                                          goto LABEL_223;
                                                        }

                                                        v208 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v209 = *MEMORY[0x1E698F240];
                                                        v297 = *MEMORY[0x1E696A578];
                                                        v210 = v5;
                                                        v211 = v7;
                                                        v212 = v9;
                                                        v213 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v231 = objc_opt_class();
                                                        v214 = v213;
                                                        v9 = v212;
                                                        v7 = v211;
                                                        v5 = v210;
                                                        v181 = v234;
                                                        v232 = [v214 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v231, @"sessionDelayInMilliseconds"];
                                                        v298 = v232;
                                                        v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
                                                        v237 = 0;
                                                        v53 = 0;
                                                        *errorCopy2 = [v208 initWithDomain:v209 code:2 userInfo:?];
                                                        v58 = v287;
                                                        v17 = v274;
                                                        goto LABEL_222;
                                                      }

                                                      v237 = v178;
                                                    }

                                                    else
                                                    {
                                                      v237 = 0;
                                                    }

                                                    v179 = [dictionaryCopy objectForKeyedSubscript:@"datestamp"];
                                                    v233 = v179;
                                                    if (v179)
                                                    {
                                                      v180 = v179;
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        v189 = v10;
                                                        v190 = v7;
                                                        v191 = v9;
                                                        objc_opt_class();
                                                        v58 = v287;
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (errorCopy2)
                                                          {
                                                            v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v216 = *MEMORY[0x1E698F240];
                                                            v295 = *MEMORY[0x1E696A578];
                                                            v217 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"datestamp"];
                                                            v296 = v217;
                                                            v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
                                                            v219 = v215;
                                                            v58 = v287;
                                                            *errorCopy2 = [v219 initWithDomain:v216 code:2 userInfo:v218];
                                                          }

                                                          v232 = 0;
                                                          v53 = 0;
                                                          v9 = v191;
                                                          v7 = v190;
                                                          v10 = v189;
                                                          v17 = v274;
                                                          goto LABEL_221;
                                                        }

                                                        v179 = v180;
                                                        v7 = v190;
                                                        v10 = v189;
                                                        v17 = v274;
LABEL_220:
                                                        v232 = v179;
                                                        v53 = [(BMPeopleSuggesterEventLevelMetrics *)self initWithIndexSelected:v286 engagedSuggestionProxyReason:v288 engagedSuggestionProxy:v58 engagedSuggestionProxyDebug:v289 airdropShown:error airdropEngaged:v285 sharePlayAvailable:v280 sharePlayEngaged:v278 appSharingIntent:v277 engagementType:v276 suggestionAvailable:v272 suggestionNumber:v269 numberOfVisibleSuggestions:v265 peopleSuggestionsSetting:v266 transportApp:v264 sourceApp:v262 contentShared:v260 sessionId:v258 userExperienceFlow:v256 sessionLatency:v254 modelTimeout:v252 suggestionPath:v250 suggestionPathDebug:v248 trialDeploymentId:v246 trialExperimentId:v244 trialTreatmentId:v242 isPhotos:v240 PSRActive:v48 sessionDelayInMilliseconds:v237 datestamp:v179];
                                                        self = v53;
LABEL_221:
                                                        v181 = v234;
LABEL_222:

                                                        goto LABEL_223;
                                                      }

                                                      v179 = 0;
                                                    }

                                                    v58 = v287;
                                                    goto LABEL_220;
                                                  }

                                                  v150 = v10;
                                                  v151 = v5;
                                                  v152 = v7;
                                                  v153 = v9;
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v242 = v45;
                                                    v7 = v152;
                                                    v5 = v151;
                                                    v10 = v150;
                                                    v17 = v274;
                                                    goto LABEL_79;
                                                  }

                                                  if (errorCopy2)
                                                  {
                                                    v243 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v192 = *MEMORY[0x1E698F240];
                                                    v303 = *MEMORY[0x1E696A578];
                                                    v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialTreatmentId"];
                                                    v304 = v240;
                                                    v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
                                                    v193 = [v243 initWithDomain:v192 code:2 userInfo:v183];
                                                    v242 = 0;
                                                    v53 = 0;
                                                    *errorCopy2 = v193;
                                                    v7 = v152;
                                                    v5 = v151;
                                                    v58 = v287;
                                                    v10 = v150;
                                                    v17 = v274;
                                                    goto LABEL_227;
                                                  }

                                                  v242 = 0;
                                                  v53 = 0;
LABEL_288:
                                                  v9 = v153;
                                                  v7 = v152;
                                                  v5 = v151;
                                                  v58 = v287;
                                                  v10 = v150;
                                                  v17 = v274;
                                                  goto LABEL_228;
                                                }

                                                if (errorCopy2)
                                                {
                                                  v187 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v188 = *MEMORY[0x1E698F240];
                                                  v305 = *MEMORY[0x1E696A578];
                                                  v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
                                                  v306 = v242;
                                                  v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
                                                  v244 = 0;
                                                  v53 = 0;
                                                  *errorCopy2 = [v187 initWithDomain:v188 code:2 userInfo:?];
                                                  goto LABEL_288;
                                                }

                                                v244 = 0;
                                                v53 = 0;
LABEL_286:
                                                v9 = v153;
                                                v7 = v152;
                                                v5 = v151;
                                                v58 = v287;
                                                v10 = v150;
                                                v17 = v274;
                                                goto LABEL_229;
                                              }

                                              if (errorCopy2)
                                              {
                                                v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v186 = *MEMORY[0x1E698F240];
                                                v307 = *MEMORY[0x1E696A578];
                                                v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
                                                v308 = v244;
                                                v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
                                                v246 = 0;
                                                v53 = 0;
                                                *errorCopy2 = [v185 initWithDomain:v186 code:2 userInfo:?];
                                                goto LABEL_286;
                                              }

                                              v246 = 0;
                                              v53 = 0;
LABEL_281:
                                              v9 = v153;
                                              v7 = v152;
                                              v5 = v151;
                                              v58 = v287;
                                              v10 = v150;
                                              v17 = v274;
                                              goto LABEL_230;
                                            }

                                            if (errorCopy2)
                                            {
                                              v175 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v176 = *MEMORY[0x1E698F240];
                                              v309 = *MEMORY[0x1E696A578];
                                              v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPathDebug"];
                                              v310 = v246;
                                              v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
                                              v248 = 0;
                                              v53 = 0;
                                              *errorCopy2 = [v175 initWithDomain:v176 code:2 userInfo:?];
                                              goto LABEL_281;
                                            }

                                            v248 = 0;
                                            v53 = 0;
LABEL_277:
                                            v9 = v153;
                                            v7 = v152;
                                            v5 = v151;
                                            v58 = v287;
                                            v10 = v150;
                                            v17 = v274;
                                            goto LABEL_231;
                                          }

                                          if (errorCopy2)
                                          {
                                            v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v174 = *MEMORY[0x1E698F240];
                                            v311 = *MEMORY[0x1E696A578];
                                            v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionPath"];
                                            v312 = v248;
                                            v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
                                            v250 = 0;
                                            v53 = 0;
                                            *errorCopy2 = [v173 initWithDomain:v174 code:2 userInfo:?];
                                            goto LABEL_277;
                                          }

                                          v250 = 0;
                                          v53 = 0;
                                          v7 = v152;
                                          v5 = v151;
                                          v58 = v287;
                                          v10 = v150;
LABEL_273:
                                          v17 = v274;
                                          goto LABEL_232;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v254 = v33;
                                          goto LABEL_61;
                                        }

                                        if (errorCopy2)
                                        {
                                          v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v159 = *MEMORY[0x1E698F240];
                                          v315 = *MEMORY[0x1E696A578];
                                          v160 = v5;
                                          v161 = v7;
                                          v162 = v9;
                                          v163 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v227 = objc_opt_class();
                                          v164 = v163;
                                          v9 = v162;
                                          v7 = v161;
                                          v5 = v160;
                                          v252 = [v164 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"sessionLatency"];
                                          v316 = v252;
                                          v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
                                          v254 = 0;
                                          v53 = 0;
                                          *errorCopy2 = [v158 initWithDomain:v159 code:2 userInfo:v165];
                                          v58 = v287;
                                          v17 = v274;
LABEL_234:

LABEL_235:
                                          v133 = v265;

LABEL_236:
                                          goto LABEL_237;
                                        }

                                        v254 = 0;
                                        v53 = 0;
                                        v58 = v287;
LABEL_264:
                                        v17 = v274;
                                        goto LABEL_235;
                                      }

                                      if (errorCopy2)
                                      {
                                        v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v157 = *MEMORY[0x1E698F240];
                                        v317 = *MEMORY[0x1E696A578];
                                        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userExperienceFlow"];
                                        v318 = v254;
                                        v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
                                        v256 = 0;
                                        v53 = 0;
                                        *errorCopy2 = [v156 initWithDomain:v157 code:2 userInfo:?];
                                        v7 = v123;
                                        v5 = v122;
                                        v58 = v287;
                                        v10 = v121;
                                        goto LABEL_264;
                                      }

                                      v256 = 0;
                                      v53 = 0;
LABEL_258:
                                      v9 = v124;
                                      v7 = v123;
                                      v5 = v122;
                                      v58 = v287;
                                      v10 = v121;
                                      v17 = v274;
                                      v133 = v265;
                                      goto LABEL_236;
                                    }

                                    if (errorCopy2)
                                    {
                                      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v155 = *MEMORY[0x1E698F240];
                                      v319 = *MEMORY[0x1E696A578];
                                      v256 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
                                      v320 = v256;
                                      v255 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
                                      v258 = 0;
                                      v53 = 0;
                                      *errorCopy2 = [v154 initWithDomain:v155 code:2 userInfo:?];
                                      goto LABEL_258;
                                    }

                                    v258 = 0;
                                    v53 = 0;
LABEL_210:
                                    v9 = v124;
                                    v7 = v123;
                                    v5 = v122;
                                    v58 = v287;
                                    v10 = v121;
                                    v17 = v274;
                                    v133 = v265;
LABEL_237:

                                    goto LABEL_238;
                                  }

                                  if (errorCopy2)
                                  {
                                    v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v149 = *MEMORY[0x1E698F240];
                                    v321 = *MEMORY[0x1E696A578];
                                    v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentShared"];
                                    v322 = v258;
                                    v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
                                    v260 = 0;
                                    v53 = 0;
                                    *errorCopy2 = [v148 initWithDomain:v149 code:2 userInfo:?];
                                    goto LABEL_210;
                                  }

                                  v260 = 0;
                                  v53 = 0;
LABEL_204:
                                  v9 = v124;
                                  v7 = v123;
                                  v5 = v122;
                                  v58 = v287;
                                  v10 = v121;
                                  v17 = v274;
                                  v133 = v265;
LABEL_238:

                                  goto LABEL_239;
                                }

                                if (errorCopy2)
                                {
                                  v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v147 = *MEMORY[0x1E698F240];
                                  v323 = *MEMORY[0x1E696A578];
                                  v260 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceApp"];
                                  v324 = v260;
                                  v259 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
                                  v262 = 0;
                                  v53 = 0;
                                  *errorCopy2 = [v146 initWithDomain:v147 code:2 userInfo:?];
                                  goto LABEL_204;
                                }

                                v262 = 0;
                                v53 = 0;
LABEL_198:
                                v9 = v124;
                                v7 = v123;
                                v5 = v122;
                                v58 = v287;
                                v10 = v121;
                                v17 = v274;
                                v133 = v265;
LABEL_239:

                                goto LABEL_240;
                              }

                              if (errorCopy2)
                              {
                                v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v145 = *MEMORY[0x1E698F240];
                                v325 = *MEMORY[0x1E696A578];
                                v262 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transportApp"];
                                v326 = v262;
                                v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
                                v264 = 0;
                                v53 = 0;
                                *errorCopy2 = [v144 initWithDomain:v145 code:2 userInfo:?];
                                goto LABEL_198;
                              }

                              v264 = 0;
                              v53 = 0;
                              v7 = v123;
                              v5 = v122;
                              v58 = v287;
                              v10 = v121;
LABEL_192:
                              v17 = v274;
                              v133 = v265;
LABEL_240:

                              goto LABEL_241;
                            }

                            if (errorCopy2)
                            {
                              v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v138 = *MEMORY[0x1E698F240];
                              v327 = *MEMORY[0x1E696A578];
                              v139 = v5;
                              v140 = v7;
                              v141 = v9;
                              v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v226 = objc_opt_class();
                              v143 = v142;
                              v9 = v141;
                              v7 = v140;
                              v5 = v139;
                              v264 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v226, @"peopleSuggestionsSetting"];
                              v328 = v264;
                              v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
                              v266 = 0;
                              v53 = 0;
                              *errorCopy2 = [v137 initWithDomain:v138 code:2 userInfo:?];
                              v58 = v287;
                              goto LABEL_192;
                            }

                            v266 = 0;
                            v53 = 0;
                            v58 = v287;
                            v17 = v274;
                            v133 = v265;
LABEL_241:

                            goto LABEL_242;
                          }

                          if (errorCopy2)
                          {
                            v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v135 = *MEMORY[0x1E698F240];
                            v329 = *MEMORY[0x1E696A578];
                            v266 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"numberOfVisibleSuggestions"];
                            v330 = v266;
                            v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
                            v136 = [v134 initWithDomain:v135 code:2 userInfo:v270];
                            v133 = 0;
                            v53 = 0;
                            *errorCopy2 = v136;
                            v7 = v97;
                            v5 = v96;
                            v58 = v287;
                            v10 = v95;
                            v17 = v274;
                            goto LABEL_241;
                          }

                          v133 = 0;
                          v53 = 0;
LABEL_181:
                          v9 = v98;
                          v7 = v97;
                          v5 = v96;
                          v58 = v287;
                          v10 = v95;
                          v17 = v274;
LABEL_242:

                          goto LABEL_243;
                        }

                        if (errorCopy2)
                        {
                          v271 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v132 = *MEMORY[0x1E698F240];
                          v331 = *MEMORY[0x1E696A578];
                          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionNumber"];
                          v332 = v133;
                          v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
                          v269 = 0;
                          v53 = 0;
                          *errorCopy2 = [v271 initWithDomain:v132 code:2 userInfo:?];
                          goto LABEL_181;
                        }

                        v269 = 0;
                        v53 = 0;
                        v7 = v97;
                        v5 = v96;
                        v58 = v287;
                        v10 = v95;
                        v17 = v274;
LABEL_243:

                        v8 = v288;
                        goto LABEL_244;
                      }

                      if (errorCopy2)
                      {
                        v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v273 = *MEMORY[0x1E698F240];
                        v333 = *MEMORY[0x1E696A578];
                        v126 = v5;
                        v127 = v7;
                        v128 = v9;
                        v129 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v225 = objc_opt_class();
                        v130 = v129;
                        v9 = v128;
                        v7 = v127;
                        v5 = v126;
                        v269 = [v130 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v225, @"suggestionAvailable"];
                        v334 = v269;
                        v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
                        v131 = [v125 initWithDomain:v273 code:2 userInfo:?];
                        v272 = 0;
                        v53 = 0;
                        *errorCopy2 = v131;
                        v58 = v287;
                        goto LABEL_243;
                      }

                      v272 = 0;
                      v53 = 0;
                      v58 = v287;
LABEL_244:

                      goto LABEL_245;
                    }

                    if (errorCopy2)
                    {
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v335 = *MEMORY[0x1E696A578];
                      v272 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagementType"];
                      v336 = v272;
                      v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
                      v120 = v117;
                      v8 = v288;
                      v276 = 0;
                      v53 = 0;
                      *errorCopy2 = [v120 initWithDomain:v118 code:2 userInfo:v119];
                      v58 = v287;
                      v17 = v119;
                      error = v284;
                      goto LABEL_244;
                    }

                    v276 = 0;
                    v53 = 0;
                    v58 = v287;
                    v8 = v288;
LABEL_245:

                    goto LABEL_246;
                  }

                  v8 = v288;
                  if (errorCopy2)
                  {
                    v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v109 = *MEMORY[0x1E698F240];
                    v337 = *MEMORY[0x1E696A578];
                    v110 = v5;
                    v111 = v7;
                    v112 = v9;
                    v113 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v224 = objc_opt_class();
                    v114 = v113;
                    v9 = v112;
                    v7 = v111;
                    v5 = v110;
                    v276 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v224, @"appSharingIntent"];
                    v338 = v276;
                    v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
                    v116 = v109;
                    v8 = v288;
                    v275 = v115;
                    v277 = 0;
                    v53 = 0;
                    *errorCopy2 = [v108 initWithDomain:v116 code:2 userInfo:?];
                    v58 = v287;
                    goto LABEL_245;
                  }

                  v277 = 0;
                  v53 = 0;
LABEL_160:
                  v58 = v287;
LABEL_246:

                  v6 = v286;
                  goto LABEL_247;
                }

                if (errorCopy2)
                {
                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = *MEMORY[0x1E698F240];
                  v339 = *MEMORY[0x1E696A578];
                  v101 = v5;
                  v102 = v7;
                  v103 = v9;
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v223 = objc_opt_class();
                  v105 = v104;
                  v9 = v103;
                  v7 = v102;
                  v5 = v101;
                  v277 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v223, @"sharePlayEngaged"];
                  v340 = v277;
                  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
                  v107 = v100;
                  v8 = v288;
                  v283 = v106;
                  v278 = 0;
                  v53 = 0;
                  *errorCopy2 = [v99 initWithDomain:v107 code:2 userInfo:?];
                  goto LABEL_160;
                }

                v278 = 0;
                v53 = 0;
                v58 = v287;
                v8 = v288;
LABEL_247:

                goto LABEL_248;
              }

              if (errorCopy2)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v341 = *MEMORY[0x1E696A578];
                v88 = v5;
                v89 = v7;
                v90 = v9;
                v91 = objc_alloc(MEMORY[0x1E696AEC0]);
                v222 = objc_opt_class();
                v92 = v91;
                v9 = v90;
                v7 = v89;
                v5 = v88;
                v278 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v222, @"sharePlayAvailable"];
                v342 = v278;
                v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
                v94 = v87;
                v6 = v286;
                v8 = v288;
                v279 = v93;
                v280 = 0;
                v53 = 0;
                *errorCopy2 = [v86 initWithDomain:v94 code:2 userInfo:?];
                v58 = v287;
                goto LABEL_247;
              }

              v280 = 0;
              v53 = 0;
              v58 = v287;
              v8 = v288;
LABEL_248:

              goto LABEL_249;
            }

            if (errorCopy2)
            {
              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v343 = *MEMORY[0x1E696A578];
              v79 = v5;
              v80 = v7;
              v81 = v9;
              v82 = objc_alloc(MEMORY[0x1E696AEC0]);
              v221 = objc_opt_class();
              v83 = v82;
              v9 = v81;
              v7 = v80;
              v5 = v79;
              v280 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v221, @"airdropEngaged"];
              v344 = v280;
              v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
              v85 = v78;
              v6 = v286;
              v8 = v288;
              v281 = v84;
              v285 = 0;
              v53 = 0;
              *errorCopy2 = [v77 initWithDomain:v85 code:2 userInfo:?];
              v58 = v287;
              goto LABEL_248;
            }

            v285 = 0;
            v53 = 0;
LABEL_144:
            v58 = v287;
LABEL_249:

            goto LABEL_250;
          }

          if (error)
          {
            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = *MEMORY[0x1E698F240];
            v345 = *MEMORY[0x1E696A578];
            v69 = v5;
            v70 = v7;
            v71 = v9;
            v72 = objc_alloc(MEMORY[0x1E696AEC0]);
            v220 = objc_opt_class();
            v73 = v72;
            v9 = v71;
            v7 = v70;
            v5 = v69;
            v285 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v220, @"airdropShown"];
            v346 = v285;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
            v75 = v74 = error;
            v76 = v68;
            v8 = v288;
            v290 = v75;
            error = 0;
            v53 = 0;
            *v74 = [v67 initWithDomain:v76 code:2 userInfo:?];
            v6 = v286;
            goto LABEL_144;
          }

          v53 = 0;
LABEL_138:
          v58 = v287;
LABEL_250:

          goto LABEL_251;
        }

        if (error)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v347 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxyDebug"];
          v348 = v66;
          v291 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
          v289 = 0;
          v53 = 0;
          *error = [v64 initWithDomain:v65 code:2 userInfo:?];
          v8 = v288;
          error = v66;
          goto LABEL_138;
        }

        v289 = 0;
        v53 = 0;
        v58 = v287;
LABEL_251:

        goto LABEL_252;
      }

      if (error)
      {
        v292 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = v5;
        v61 = v7;
        v62 = *MEMORY[0x1E698F240];
        v349 = *MEMORY[0x1E696A578];
        v289 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxy"];
        v350 = v289;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
        v63 = v62;
        v7 = v61;
        v5 = v60;
        v58 = 0;
        v53 = 0;
        *error = [v292 initWithDomain:v63 code:2 userInfo:v10];
        goto LABEL_251;
      }

      v58 = 0;
      v53 = 0;
LABEL_252:

      goto LABEL_253;
    }

    if (error)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E698F240];
      v351 = *MEMORY[0x1E696A578];
      v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"engagedSuggestionProxyReason"];
      v352 = v56;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
      v57 = v54;
      v58 = v56;
      v59 = [v57 initWithDomain:v55 code:2 userInfo:v9];
      v8 = 0;
      v53 = 0;
      *error = v59;
      goto LABEL_252;
    }

    v8 = 0;
    v53 = 0;
LABEL_253:

    goto LABEL_254;
  }

  if (error)
  {
    v49 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50 = *MEMORY[0x1E698F240];
    v353 = *MEMORY[0x1E696A578];
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"indexSelected"];
    v354[0] = v51;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v354 forKeys:&v353 count:1];
    v52 = v50;
    v8 = v51;
    v6 = 0;
    v53 = 0;
    *error = [v49 initWithDomain:v52 code:2 userInfo:v7];
    goto LABEL_253;
  }

  v6 = 0;
  v53 = 0;
LABEL_254:

  return v53;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPeopleSuggesterEventLevelMetrics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_indexSelected)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_engagedSuggestionProxyReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_engagedSuggestionProxy)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_engagedSuggestionProxyDebug)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasAirdropShown)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasAirdropEngaged)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasSharePlayAvailable)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasSharePlayEngaged)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasAppSharingIntent)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_engagementType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasSuggestionAvailable)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_suggestionNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_numberOfVisibleSuggestions)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasPeopleSuggestionsSetting)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_transportApp)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceApp)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_contentShared)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userExperienceFlow)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasSessionLatency)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasModelTimeout)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_suggestionPath)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_suggestionPathDebug)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasIsPhotos)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasPSRActive)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasSessionDelayInMilliseconds)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_datestamp)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v104.receiver = self;
  v104.super_class = BMPeopleSuggesterEventLevelMetrics;
  v5 = [(BMEventBase *)&v104 init];
  if (!v5)
  {
LABEL_179:
    v102 = v5;
    goto LABEL_180;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v105 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (v105 & 0x7F) << v7;
      if ((v105 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 56;
        goto LABEL_138;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 64;
        goto LABEL_138;
      case 3u:
        v15 = PBReaderReadString();
        v16 = 72;
        goto LABEL_138;
      case 4u:
        v15 = PBReaderReadString();
        v16 = 80;
        goto LABEL_138;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasAirdropShown = 1;
        while (1)
        {
          v105 = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 |= (v105 & 0x7F) << v24;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            LOBYTE(v30) = 0;
            goto LABEL_151;
          }
        }

        v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_151:
        v5->_airdropShown = v30;
        continue;
      case 6u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasAirdropEngaged = 1;
        while (1)
        {
          v105 = 0;
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v47 |= (v105 & 0x7F) << v45;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v13 = v46++ >= 9;
          if (v13)
          {
            LOBYTE(v51) = 0;
            goto LABEL_157;
          }
        }

        v51 = (v47 != 0) & ~[fromCopy hasError];
LABEL_157:
        v5->_airdropEngaged = v51;
        continue;
      case 7u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v5->_hasSharePlayAvailable = 1;
        while (1)
        {
          v105 = 0;
          v62 = [fromCopy position] + 1;
          if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v61 |= (v105 & 0x7F) << v59;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v13 = v60++ >= 9;
          if (v13)
          {
            LOBYTE(v65) = 0;
            goto LABEL_161;
          }
        }

        v65 = (v61 != 0) & ~[fromCopy hasError];
LABEL_161:
        v5->_sharePlayAvailable = v65;
        continue;
      case 8u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasSharePlayEngaged = 1;
        while (1)
        {
          v105 = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v105 & 0x7F) << v31;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v13 = v32++ >= 9;
          if (v13)
          {
            LOBYTE(v37) = 0;
            goto LABEL_153;
          }
        }

        v37 = (v33 != 0) & ~[fromCopy hasError];
LABEL_153:
        v5->_sharePlayEngaged = v37;
        continue;
      case 9u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v5->_hasAppSharingIntent = 1;
        while (1)
        {
          v105 = 0;
          v76 = [fromCopy position] + 1;
          if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v75 |= (v105 & 0x7F) << v73;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v13 = v74++ >= 9;
          if (v13)
          {
            LOBYTE(v79) = 0;
            goto LABEL_165;
          }
        }

        v79 = (v75 != 0) & ~[fromCopy hasError];
LABEL_165:
        v5->_appSharingIntent = v79;
        continue;
      case 0xAu:
        v15 = PBReaderReadString();
        v16 = 88;
        goto LABEL_138;
      case 0xBu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasSuggestionAvailable = 1;
        while (1)
        {
          v105 = 0;
          v69 = [fromCopy position] + 1;
          if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v68 |= (v105 & 0x7F) << v66;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v13 = v67++ >= 9;
          if (v13)
          {
            LOBYTE(v72) = 0;
            goto LABEL_163;
          }
        }

        v72 = (v68 != 0) & ~[fromCopy hasError];
LABEL_163:
        v5->_suggestionAvailable = v72;
        continue;
      case 0xCu:
        v15 = PBReaderReadString();
        v16 = 96;
        goto LABEL_138;
      case 0xDu:
        v15 = PBReaderReadString();
        v16 = 104;
        goto LABEL_138;
      case 0xEu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasPeopleSuggestionsSetting = 1;
        while (1)
        {
          v105 = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v105 & 0x7F) << v52;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            LOBYTE(v58) = 0;
            goto LABEL_159;
          }
        }

        v58 = (v54 != 0) & ~[fromCopy hasError];
LABEL_159:
        v5->_peopleSuggestionsSetting = v58;
        continue;
      case 0xFu:
        v15 = PBReaderReadString();
        v16 = 112;
        goto LABEL_138;
      case 0x10u:
        v15 = PBReaderReadString();
        v16 = 120;
        goto LABEL_138;
      case 0x11u:
        v15 = PBReaderReadString();
        v16 = 128;
        goto LABEL_138;
      case 0x12u:
        v15 = PBReaderReadString();
        v16 = 136;
        goto LABEL_138;
      case 0x13u:
        v15 = PBReaderReadString();
        v16 = 144;
        goto LABEL_138;
      case 0x14u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v5->_hasSessionLatency = 1;
        while (1)
        {
          v105 = 0;
          v83 = [fromCopy position] + 1;
          if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v82 |= (v105 & 0x7F) << v80;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v13 = v81++ >= 9;
          if (v13)
          {
            v86 = 0;
            goto LABEL_169;
          }
        }

        if ([fromCopy hasError])
        {
          v86 = 0;
        }

        else
        {
          v86 = v82;
        }

LABEL_169:
        v101 = 44;
        goto LABEL_174;
      case 0x15u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasModelTimeout = 1;
        while (1)
        {
          v105 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (v105 & 0x7F) << v38;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v13 = v39++ >= 9;
          if (v13)
          {
            LOBYTE(v44) = 0;
            goto LABEL_155;
          }
        }

        v44 = (v40 != 0) & ~[fromCopy hasError];
LABEL_155:
        v5->_modelTimeout = v44;
        continue;
      case 0x16u:
        v15 = PBReaderReadString();
        v16 = 152;
        goto LABEL_138;
      case 0x17u:
        v15 = PBReaderReadString();
        v16 = 160;
        goto LABEL_138;
      case 0x18u:
        v15 = PBReaderReadString();
        v16 = 168;
        goto LABEL_138;
      case 0x19u:
        v15 = PBReaderReadString();
        v16 = 176;
        goto LABEL_138;
      case 0x1Au:
        v15 = PBReaderReadString();
        v16 = 184;
        goto LABEL_138;
      case 0x1Bu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasIsPhotos = 1;
        while (1)
        {
          v105 = 0;
          v97 = [fromCopy position] + 1;
          if (v97 >= [fromCopy position] && (v98 = objc_msgSend(fromCopy, "position") + 1, v98 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v96 |= (v105 & 0x7F) << v94;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v13 = v95++ >= 9;
          if (v13)
          {
            LOBYTE(v100) = 0;
            goto LABEL_176;
          }
        }

        v100 = (v96 != 0) & ~[fromCopy hasError];
LABEL_176:
        v5->_isPhotos = v100;
        continue;
      case 0x1Cu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasPSRActive = 1;
        while (1)
        {
          v105 = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v105 & 0x7F) << v17;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_149;
          }
        }

        v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_149:
        v5->_PSRActive = v23;
        continue;
      case 0x1Du:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v5->_hasSessionDelayInMilliseconds = 1;
        break;
      case 0x1Eu:
        v15 = PBReaderReadString();
        v16 = 192;
LABEL_138:
        v93 = *(&v5->super.super.isa + v16);
        *(&v5->super.super.isa + v16) = v15;

        continue;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_178;
        }

        continue;
    }

    while (1)
    {
      v105 = 0;
      v90 = [fromCopy position] + 1;
      if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 1, v91 <= objc_msgSend(fromCopy, "length")))
      {
        data13 = [fromCopy data];
        [data13 getBytes:&v105 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v89 |= (v105 & 0x7F) << v87;
      if ((v105 & 0x80) == 0)
      {
        break;
      }

      v87 += 7;
      v13 = v88++ >= 9;
      if (v13)
      {
        v86 = 0;
        goto LABEL_173;
      }
    }

    if ([fromCopy hasError])
    {
      v86 = 0;
    }

    else
    {
      v86 = v89;
    }

LABEL_173:
    v101 = 48;
LABEL_174:
    *(&v5->super.super.isa + v101) = v86;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_179;
  }

LABEL_178:
  v102 = 0;
LABEL_180:

  return v102;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  indexSelected = [(BMPeopleSuggesterEventLevelMetrics *)self indexSelected];
  engagedSuggestionProxyReason = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyReason];
  engagedSuggestionProxy = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxy];
  engagedSuggestionProxyDebug = [(BMPeopleSuggesterEventLevelMetrics *)self engagedSuggestionProxyDebug];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropShown](self, "airdropShown")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics airdropEngaged](self, "airdropEngaged")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayAvailable](self, "sharePlayAvailable")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics sharePlayEngaged](self, "sharePlayEngaged")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics appSharingIntent](self, "appSharingIntent")}];
  engagementType = [(BMPeopleSuggesterEventLevelMetrics *)self engagementType];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics suggestionAvailable](self, "suggestionAvailable")}];
  suggestionNumber = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionNumber];
  numberOfVisibleSuggestions = [(BMPeopleSuggesterEventLevelMetrics *)self numberOfVisibleSuggestions];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics peopleSuggestionsSetting](self, "peopleSuggestionsSetting")}];
  transportApp = [(BMPeopleSuggesterEventLevelMetrics *)self transportApp];
  sourceApp = [(BMPeopleSuggesterEventLevelMetrics *)self sourceApp];
  contentShared = [(BMPeopleSuggesterEventLevelMetrics *)self contentShared];
  sessionId = [(BMPeopleSuggesterEventLevelMetrics *)self sessionId];
  userExperienceFlow = [(BMPeopleSuggesterEventLevelMetrics *)self userExperienceFlow];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionLatency](self, "sessionLatency")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics modelTimeout](self, "modelTimeout")}];
  suggestionPath = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPath];
  suggestionPathDebug = [(BMPeopleSuggesterEventLevelMetrics *)self suggestionPathDebug];
  trialDeploymentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialDeploymentId];
  trialExperimentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialExperimentId];
  trialTreatmentId = [(BMPeopleSuggesterEventLevelMetrics *)self trialTreatmentId];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics isPhotos](self, "isPhotos")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPeopleSuggesterEventLevelMetrics PSRActive](self, "PSRActive")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPeopleSuggesterEventLevelMetrics sessionDelayInMilliseconds](self, "sessionDelayInMilliseconds")}];
  datestamp = [(BMPeopleSuggesterEventLevelMetrics *)self datestamp];
  v19 = [v18 initWithFormat:@"BMPeopleSuggesterEventLevelMetrics with indexSelected: %@, engagedSuggestionProxyReason: %@, engagedSuggestionProxy: %@, engagedSuggestionProxyDebug: %@, airdropShown: %@, airdropEngaged: %@, sharePlayAvailable: %@, sharePlayEngaged: %@, appSharingIntent: %@, engagementType: %@, suggestionAvailable: %@, suggestionNumber: %@, numberOfVisibleSuggestions: %@, peopleSuggestionsSetting: %@, transportApp: %@, sourceApp: %@, contentShared: %@, sessionId: %@, userExperienceFlow: %@, sessionLatency: %@, modelTimeout: %@, suggestionPath: %@, suggestionPathDebug: %@, trialDeploymentId: %@, trialExperimentId: %@, trialTreatmentId: %@, isPhotos: %@, PSRActive: %@, sessionDelayInMilliseconds: %@, datestamp: %@", indexSelected, engagedSuggestionProxyReason, engagedSuggestionProxy, engagedSuggestionProxyDebug, v30, v32, v29, v26, v28, engagementType, v27, suggestionNumber, numberOfVisibleSuggestions, v25, transportApp, sourceApp, contentShared, sessionId, userExperienceFlow, v14, v13, suggestionPath, suggestionPathDebug, trialDeploymentId, trialExperimentId, trialTreatmentId, v5, v6, v7, datestamp];

  return v19;
}

- (BMPeopleSuggesterEventLevelMetrics)initWithIndexSelected:(id)selected engagedSuggestionProxyReason:(id)reason engagedSuggestionProxy:(id)proxy engagedSuggestionProxyDebug:(id)debug airdropShown:(id)shown airdropEngaged:(id)engaged sharePlayAvailable:(id)available sharePlayEngaged:(id)self0 appSharingIntent:(id)self1 engagementType:(id)self2 suggestionAvailable:(id)self3 suggestionNumber:(id)self4 numberOfVisibleSuggestions:(id)self5 peopleSuggestionsSetting:(id)self6 transportApp:(id)self7 sourceApp:(id)self8 contentShared:(id)self9 sessionId:(id)id userExperienceFlow:(id)flow sessionLatency:(id)latency modelTimeout:(id)timeout suggestionPath:(id)path suggestionPathDebug:(id)pathDebug trialDeploymentId:(id)deploymentId trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId isPhotos:(id)photos PSRActive:(id)selected0 sessionDelayInMilliseconds:(id)selected1 datestamp:(id)selected2
{
  selectedCopy = selected;
  reasonCopy = reason;
  reasonCopy2 = reason;
  proxyCopy = proxy;
  proxyCopy2 = proxy;
  debugCopy = debug;
  debugCopy2 = debug;
  shownCopy = shown;
  engagedCopy = engaged;
  availableCopy = available;
  playEngagedCopy = playEngaged;
  intentCopy = intent;
  typeCopy = type;
  suggestionAvailableCopy = suggestionAvailable;
  numberCopy = number;
  suggestionsCopy = suggestions;
  settingCopy = setting;
  appCopy = app;
  sourceAppCopy = sourceApp;
  sharedCopy = shared;
  idCopy = id;
  flowCopy = flow;
  latencyCopy = latency;
  timeoutCopy = timeout;
  pathCopy = path;
  pathDebugCopy = pathDebug;
  deploymentIdCopy = deploymentId;
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  photosCopy = photos;
  activeCopy = active;
  millisecondsCopy = milliseconds;
  datestampCopy = datestamp;
  v76.receiver = self;
  v76.super_class = BMPeopleSuggesterEventLevelMetrics;
  v44 = [(BMEventBase *)&v76 init];
  if (v44)
  {
    v44->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v44->_indexSelected, selected);
    objc_storeStrong(&v44->_engagedSuggestionProxyReason, reasonCopy);
    objc_storeStrong(&v44->_engagedSuggestionProxy, proxyCopy);
    objc_storeStrong(&v44->_engagedSuggestionProxyDebug, debugCopy);
    if (shownCopy)
    {
      v44->_hasAirdropShown = 1;
      v44->_airdropShown = [shownCopy BOOLValue];
    }

    else
    {
      v44->_hasAirdropShown = 0;
      v44->_airdropShown = 0;
    }

    if (engagedCopy)
    {
      v44->_hasAirdropEngaged = 1;
      v44->_airdropEngaged = [engagedCopy BOOLValue];
    }

    else
    {
      v44->_hasAirdropEngaged = 0;
      v44->_airdropEngaged = 0;
    }

    if (availableCopy)
    {
      v44->_hasSharePlayAvailable = 1;
      v44->_sharePlayAvailable = [availableCopy BOOLValue];
    }

    else
    {
      v44->_hasSharePlayAvailable = 0;
      v44->_sharePlayAvailable = 0;
    }

    if (playEngagedCopy)
    {
      v44->_hasSharePlayEngaged = 1;
      v44->_sharePlayEngaged = [playEngagedCopy BOOLValue];
    }

    else
    {
      v44->_hasSharePlayEngaged = 0;
      v44->_sharePlayEngaged = 0;
    }

    if (intentCopy)
    {
      v44->_hasAppSharingIntent = 1;
      v44->_appSharingIntent = [intentCopy BOOLValue];
    }

    else
    {
      v44->_hasAppSharingIntent = 0;
      v44->_appSharingIntent = 0;
    }

    objc_storeStrong(&v44->_engagementType, type);
    if (suggestionAvailableCopy)
    {
      v44->_hasSuggestionAvailable = 1;
      v44->_suggestionAvailable = [suggestionAvailableCopy BOOLValue];
    }

    else
    {
      v44->_hasSuggestionAvailable = 0;
      v44->_suggestionAvailable = 0;
    }

    objc_storeStrong(&v44->_suggestionNumber, number);
    objc_storeStrong(&v44->_numberOfVisibleSuggestions, suggestions);
    if (settingCopy)
    {
      v44->_hasPeopleSuggestionsSetting = 1;
      v44->_peopleSuggestionsSetting = [settingCopy BOOLValue];
    }

    else
    {
      v44->_hasPeopleSuggestionsSetting = 0;
      v44->_peopleSuggestionsSetting = 0;
    }

    objc_storeStrong(&v44->_transportApp, app);
    objc_storeStrong(&v44->_sourceApp, sourceApp);
    objc_storeStrong(&v44->_contentShared, shared);
    objc_storeStrong(&v44->_sessionId, id);
    objc_storeStrong(&v44->_userExperienceFlow, flow);
    unsignedIntValue = latencyCopy;
    if (latencyCopy)
    {
      v44->_hasSessionLatency = 1;
      unsignedIntValue = [latencyCopy unsignedIntValue];
    }

    else
    {
      v44->_hasSessionLatency = 0;
    }

    v44->_sessionLatency = unsignedIntValue;
    if (timeoutCopy)
    {
      v44->_hasModelTimeout = 1;
      v44->_modelTimeout = [timeoutCopy BOOLValue];
    }

    else
    {
      v44->_hasModelTimeout = 0;
      v44->_modelTimeout = 0;
    }

    objc_storeStrong(&v44->_suggestionPath, path);
    objc_storeStrong(&v44->_suggestionPathDebug, pathDebug);
    objc_storeStrong(&v44->_trialDeploymentId, deploymentId);
    objc_storeStrong(&v44->_trialExperimentId, experimentId);
    objc_storeStrong(&v44->_trialTreatmentId, treatmentId);
    if (photosCopy)
    {
      v44->_hasIsPhotos = 1;
      v44->_isPhotos = [photosCopy BOOLValue];
    }

    else
    {
      v44->_hasIsPhotos = 0;
      v44->_isPhotos = 0;
    }

    if (activeCopy)
    {
      v44->_hasPSRActive = 1;
      v44->_PSRActive = [activeCopy BOOLValue];
    }

    else
    {
      v44->_hasPSRActive = 0;
      v44->_PSRActive = 0;
    }

    if (millisecondsCopy)
    {
      v44->_hasSessionDelayInMilliseconds = 1;
      unsignedIntValue2 = [millisecondsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v44->_hasSessionDelayInMilliseconds = 0;
    }

    v44->_sessionDelayInMilliseconds = unsignedIntValue2;
    objc_storeStrong(&v44->_datestamp, datestamp);
  }

  return v44;
}

+ (id)protoFields
{
  v34[30] = *MEMORY[0x1E69E9840];
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"indexSelected" number:1 type:13 subMessageClass:0];
  v34[0] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxyReason" number:2 type:13 subMessageClass:0];
  v34[1] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxy" number:3 type:13 subMessageClass:0];
  v34[2] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedSuggestionProxyDebug" number:4 type:13 subMessageClass:0];
  v34[3] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"airdropShown" number:5 type:12 subMessageClass:0];
  v34[4] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"airdropEngaged" number:6 type:12 subMessageClass:0];
  v34[5] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharePlayAvailable" number:7 type:12 subMessageClass:0];
  v34[6] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharePlayEngaged" number:8 type:12 subMessageClass:0];
  v34[7] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSharingIntent" number:9 type:12 subMessageClass:0];
  v34[8] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:10 type:13 subMessageClass:0];
  v34[9] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionAvailable" number:11 type:12 subMessageClass:0];
  v34[10] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionNumber" number:12 type:13 subMessageClass:0];
  v34[11] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfVisibleSuggestions" number:13 type:13 subMessageClass:0];
  v34[12] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleSuggestionsSetting" number:14 type:12 subMessageClass:0];
  v34[13] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transportApp" number:15 type:13 subMessageClass:0];
  v34[14] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceApp" number:16 type:13 subMessageClass:0];
  v34[15] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentShared" number:17 type:13 subMessageClass:0];
  v34[16] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:18 type:13 subMessageClass:0];
  v34[17] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userExperienceFlow" number:19 type:13 subMessageClass:0];
  v34[18] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionLatency" number:20 type:4 subMessageClass:0];
  v34[19] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelTimeout" number:21 type:12 subMessageClass:0];
  v34[20] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionPath" number:22 type:13 subMessageClass:0];
  v34[21] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionPathDebug" number:23 type:13 subMessageClass:0];
  v34[22] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialDeploymentId" number:24 type:13 subMessageClass:0];
  v34[23] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:25 type:13 subMessageClass:0];
  v34[24] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialTreatmentId" number:26 type:13 subMessageClass:0];
  v34[25] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPhotos" number:27 type:12 subMessageClass:0];
  v34[26] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"PSRActive" number:28 type:12 subMessageClass:0];
  v34[27] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionDelayInMilliseconds" number:29 type:4 subMessageClass:0];
  v34[28] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"datestamp" number:30 type:13 subMessageClass:0];
  v34[29] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:30];

  return v11;
}

+ (id)columns
{
  v34[30] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"indexSelected" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxyReason" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxy" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedSuggestionProxyDebug" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"airdropShown" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"airdropEngaged" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharePlayAvailable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharePlayEngaged" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appSharingIntent" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionAvailable" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionNumber" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfVisibleSuggestions" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleSuggestionsSetting" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transportApp" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceApp" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentShared" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userExperienceFlow" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionLatency" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelTimeout" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionPath" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionPathDebug" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialDeploymentId" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialTreatmentId" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPhotos" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"PSRActive" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionDelayInMilliseconds" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"datestamp" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v34[0] = v14;
  v34[1] = v33;
  v34[2] = v32;
  v34[3] = v31;
  v34[4] = v30;
  v34[5] = v29;
  v34[6] = v28;
  v34[7] = v27;
  v34[8] = v26;
  v34[9] = v25;
  v34[10] = v24;
  v34[11] = v23;
  v34[12] = v22;
  v34[13] = v21;
  v34[14] = v20;
  v34[15] = v19;
  v34[16] = v18;
  v34[17] = v17;
  v34[18] = v16;
  v34[19] = v15;
  v34[20] = v2;
  v34[21] = v3;
  v34[22] = v4;
  v34[23] = v13;
  v34[24] = v5;
  v34[25] = v6;
  v34[26] = v7;
  v34[27] = v12;
  v34[28] = v11;
  v34[29] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:30];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMPeopleSuggesterEventLevelMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end