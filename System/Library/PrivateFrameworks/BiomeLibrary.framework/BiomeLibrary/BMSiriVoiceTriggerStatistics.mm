@interface BMSiriVoiceTriggerStatistics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriVoiceTriggerStatistics)initWithAbsoluteTimestamp:(id)timestamp firstPassPeakScoreHS:(id)s firstPassPeakScoreJS:(id)jS firstPassTriggerSource:(id)source recognizerScoreHS:(id)hS recognizerScoreJS:(id)scoreJS triggerScoreHS:(id)scoreHS triggerScoreJS:(id)self0 mitigationScore:(id)self1 invocationTypeID:(id)self2 repetitionSimilarityScore:(id)self3 tdSpeakerRecognizerCombinedScore:(id)self4 hwSampleRate:(id)self5 configVersion:(id)self6 keywordThresholdHS:(id)self7 keywordThresholdJS:(id)self8 tdSpeakerRecognizerCombinedThresholdHS:(id)self9 tdSpeakerRecognizerCombinedThresholdJS:(id)combinedThresholdJS;
- (BMSiriVoiceTriggerStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriVoiceTriggerStatistics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassPeakScoreHS](self, "hasFirstPassPeakScoreHS") || [v5 hasFirstPassPeakScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassPeakScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
      v14 = v13;
      [v5 firstPassPeakScoreHS];
      if (v14 != v15)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassPeakScoreJS](self, "hasFirstPassPeakScoreJS") || [v5 hasFirstPassPeakScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassPeakScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
      v17 = v16;
      [v5 firstPassPeakScoreJS];
      if (v17 != v18)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasFirstPassTriggerSource](self, "hasFirstPassTriggerSource") || [v5 hasFirstPassTriggerSource])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassTriggerSource])
      {
        goto LABEL_91;
      }

      if (![v5 hasFirstPassTriggerSource])
      {
        goto LABEL_91;
      }

      firstPassTriggerSource = [(BMSiriVoiceTriggerStatistics *)self firstPassTriggerSource];
      if (firstPassTriggerSource != [v5 firstPassTriggerSource])
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRecognizerScoreHS](self, "hasRecognizerScoreHS") || [v5 hasRecognizerScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasRecognizerScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
      v21 = v20;
      [v5 recognizerScoreHS];
      if (v21 != v22)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRecognizerScoreJS](self, "hasRecognizerScoreJS") || [v5 hasRecognizerScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasRecognizerScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
      v24 = v23;
      [v5 recognizerScoreJS];
      if (v24 != v25)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTriggerScoreHS](self, "hasTriggerScoreHS") || [v5 hasTriggerScoreHS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreHS])
      {
        goto LABEL_91;
      }

      if (![v5 hasTriggerScoreHS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
      v27 = v26;
      [v5 triggerScoreHS];
      if (v27 != v28)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTriggerScoreJS](self, "hasTriggerScoreJS") || [v5 hasTriggerScoreJS])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreJS])
      {
        goto LABEL_91;
      }

      if (![v5 hasTriggerScoreJS])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
      v30 = v29;
      [v5 triggerScoreJS];
      if (v30 != v31)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasMitigationScore](self, "hasMitigationScore") || [v5 hasMitigationScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasMitigationScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasMitigationScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
      v33 = v32;
      [v5 mitigationScore];
      if (v33 != v34)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasInvocationTypeID](self, "hasInvocationTypeID") || [v5 hasInvocationTypeID])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasInvocationTypeID])
      {
        goto LABEL_91;
      }

      if (![v5 hasInvocationTypeID])
      {
        goto LABEL_91;
      }

      invocationTypeID = [(BMSiriVoiceTriggerStatistics *)self invocationTypeID];
      if (invocationTypeID != [v5 invocationTypeID])
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasRepetitionSimilarityScore](self, "hasRepetitionSimilarityScore") || [v5 hasRepetitionSimilarityScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasRepetitionSimilarityScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasRepetitionSimilarityScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
      v37 = v36;
      [v5 repetitionSimilarityScore];
      if (v37 != v38)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedScore](self, "hasTdSpeakerRecognizerCombinedScore") || [v5 hasTdSpeakerRecognizerCombinedScore])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedScore])
      {
        goto LABEL_91;
      }

      if (![v5 hasTdSpeakerRecognizerCombinedScore])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
      v40 = v39;
      [v5 tdSpeakerRecognizerCombinedScore];
      if (v40 != v41)
      {
        goto LABEL_91;
      }
    }

    if (-[BMSiriVoiceTriggerStatistics hasHwSampleRate](self, "hasHwSampleRate") || [v5 hasHwSampleRate])
    {
      if (![(BMSiriVoiceTriggerStatistics *)self hasHwSampleRate])
      {
        goto LABEL_91;
      }

      if (![v5 hasHwSampleRate])
      {
        goto LABEL_91;
      }

      [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
      v43 = v42;
      [v5 hwSampleRate];
      if (v43 != v44)
      {
        goto LABEL_91;
      }
    }

    configVersion = [(BMSiriVoiceTriggerStatistics *)self configVersion];
    configVersion2 = [v5 configVersion];
    v47 = configVersion2;
    if (configVersion == configVersion2)
    {
    }

    else
    {
      configVersion3 = [(BMSiriVoiceTriggerStatistics *)self configVersion];
      configVersion4 = [v5 configVersion];
      v50 = [configVersion3 isEqual:configVersion4];

      if (!v50)
      {
        goto LABEL_91;
      }
    }

    if (!-[BMSiriVoiceTriggerStatistics hasKeywordThresholdHS](self, "hasKeywordThresholdHS") && ![v5 hasKeywordThresholdHS] || -[BMSiriVoiceTriggerStatistics hasKeywordThresholdHS](self, "hasKeywordThresholdHS") && objc_msgSend(v5, "hasKeywordThresholdHS") && (-[BMSiriVoiceTriggerStatistics keywordThresholdHS](self, "keywordThresholdHS"), v52 = v51, objc_msgSend(v5, "keywordThresholdHS"), v52 == v53))
    {
      if (!-[BMSiriVoiceTriggerStatistics hasKeywordThresholdJS](self, "hasKeywordThresholdJS") && ![v5 hasKeywordThresholdJS] || -[BMSiriVoiceTriggerStatistics hasKeywordThresholdJS](self, "hasKeywordThresholdJS") && objc_msgSend(v5, "hasKeywordThresholdJS") && (-[BMSiriVoiceTriggerStatistics keywordThresholdJS](self, "keywordThresholdJS"), v55 = v54, objc_msgSend(v5, "keywordThresholdJS"), v55 == v56))
      {
        if (!-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdHS](self, "hasTdSpeakerRecognizerCombinedThresholdHS") && ![v5 hasTdSpeakerRecognizerCombinedThresholdHS] || -[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdHS](self, "hasTdSpeakerRecognizerCombinedThresholdHS") && objc_msgSend(v5, "hasTdSpeakerRecognizerCombinedThresholdHS") && (-[BMSiriVoiceTriggerStatistics tdSpeakerRecognizerCombinedThresholdHS](self, "tdSpeakerRecognizerCombinedThresholdHS"), v58 = v57, objc_msgSend(v5, "tdSpeakerRecognizerCombinedThresholdHS"), v58 == v59))
        {
          if (!-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdJS](self, "hasTdSpeakerRecognizerCombinedThresholdJS") && ![v5 hasTdSpeakerRecognizerCombinedThresholdJS])
          {
            v12 = 1;
            goto LABEL_92;
          }

          if (-[BMSiriVoiceTriggerStatistics hasTdSpeakerRecognizerCombinedThresholdJS](self, "hasTdSpeakerRecognizerCombinedThresholdJS") && [v5 hasTdSpeakerRecognizerCombinedThresholdJS])
          {
            [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
            v61 = v60;
            [v5 tdSpeakerRecognizerCombinedThresholdJS];
            v12 = v61 == v62;
LABEL_92:

            goto LABEL_93;
          }
        }
      }
    }

LABEL_91:
    v12 = 0;
    goto LABEL_92;
  }

  v12 = 0;
LABEL_93:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v93[18] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasFirstPassPeakScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
    v11 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
    v12 = [v11 numberWithDouble:?];
  }

  if ([(BMSiriVoiceTriggerStatistics *)self hasFirstPassTriggerSource])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics firstPassTriggerSource](self, "firstPassTriggerSource")}];
  }

  else
  {
    v13 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS], fabs(v14) == INFINITY))
  {
    v16 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
    v15 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
    v16 = [v15 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRecognizerScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS], fabs(v17) == INFINITY))
  {
    v19 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
    v18 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
    v19 = [v18 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreHS]|| ([(BMSiriVoiceTriggerStatistics *)self triggerScoreHS], fabs(v20) == INFINITY))
  {
    v22 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
    v21 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
    v22 = [v21 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTriggerScoreJS]|| ([(BMSiriVoiceTriggerStatistics *)self triggerScoreJS], fabs(v23) == INFINITY))
  {
    v91 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
    v24 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
    v91 = [v24 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasMitigationScore]|| ([(BMSiriVoiceTriggerStatistics *)self mitigationScore], fabs(v25) == INFINITY))
  {
    v90 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
    v26 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
    v90 = [v26 numberWithDouble:?];
  }

  if ([(BMSiriVoiceTriggerStatistics *)self hasInvocationTypeID])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics invocationTypeID](self, "invocationTypeID")}];
  }

  else
  {
    v89 = 0;
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasRepetitionSimilarityScore]|| ([(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore], fabs(v27) == INFINITY))
  {
    v88 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
    v88 = [v28 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedScore]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore], fabs(v29) == INFINITY))
  {
    v87 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
    v30 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
    v87 = [v30 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasHwSampleRate]|| ([(BMSiriVoiceTriggerStatistics *)self hwSampleRate], fabs(v31) == INFINITY))
  {
    v86 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
    v32 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
    v86 = [v32 numberWithDouble:?];
  }

  configVersion = [(BMSiriVoiceTriggerStatistics *)self configVersion];
  if (![(BMSiriVoiceTriggerStatistics *)self hasKeywordThresholdHS]|| ([(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS], fabs(v33) == INFINITY))
  {
    v84 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
    v34 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
    v84 = [v34 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasKeywordThresholdJS]|| ([(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS], fabs(v35) == INFINITY))
  {
    v83 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
    v36 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
    v83 = [v36 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedThresholdHS]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS], fabs(v37) == INFINITY))
  {
    v82 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
    v38 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
    v82 = [v38 numberWithDouble:?];
  }

  if (![(BMSiriVoiceTriggerStatistics *)self hasTdSpeakerRecognizerCombinedThresholdJS]|| ([(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS], fabs(v39) == INFINITY))
  {
    v41 = 0;
  }

  else
  {
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
    v40 = MEMORY[0x1E696AD98];
    [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
    v41 = [v40 numberWithDouble:?];
  }

  v92[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null;
  v93[0] = null;
  v92[1] = @"firstPassPeakScoreHS";
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null2;
  v93[1] = null2;
  v92[2] = @"firstPassPeakScoreJS";
  null3 = v12;
  if (!v12)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null3;
  v93[2] = null3;
  v92[3] = @"firstPassTriggerSource";
  null4 = v13;
  if (!v13)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null4;
  v93[3] = null4;
  v92[4] = @"recognizerScoreHS";
  null5 = v16;
  if (!v16)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null5;
  v93[4] = null5;
  v92[5] = @"recognizerScoreJS";
  null6 = v19;
  if (!v19)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null6;
  v93[5] = null6;
  v92[6] = @"triggerScoreHS";
  null7 = v22;
  if (!v22)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null7;
  v93[6] = null7;
  v92[7] = @"triggerScoreJS";
  null8 = v91;
  if (!v91)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v93[7] = null8;
  v92[8] = @"mitigationScore";
  null9 = v90;
  if (!v90)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v93[8] = null9;
  v92[9] = @"invocationTypeID";
  null10 = v89;
  if (!v89)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v22;
  v77 = null10;
  v93[9] = null10;
  v92[10] = @"repetitionSimilarityScore";
  null11 = v88;
  if (!v88)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v13;
  v93[10] = null11;
  v92[11] = @"tdSpeakerRecognizerCombinedScore";
  null12 = v87;
  if (!v87)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v6;
  v64 = null12;
  v93[11] = null12;
  v92[12] = @"hwSampleRate";
  null13 = v86;
  if (!v86)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null9;
  v67 = null8;
  v79 = v9;
  v93[12] = null13;
  v92[13] = @"configVersion";
  null14 = configVersion;
  if (!configVersion)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v19;
  v56 = v12;
  v93[13] = null14;
  v92[14] = @"keywordThresholdHS";
  null15 = v84;
  if (!v84)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v16;
  v93[14] = null15;
  v92[15] = @"keywordThresholdJS";
  null16 = v83;
  if (!v83)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null11;
  v93[15] = null16;
  v92[16] = @"tdSpeakerRecognizerCombinedThresholdHS";
  null17 = v82;
  if (!v82)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v93[16] = null17;
  v92[17] = @"tdSpeakerRecognizerCombinedThresholdJS";
  null18 = v41;
  if (!v41)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v93[17] = null18;
  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:{18, v64}];
  if (!v41)
  {
  }

  if (!v82)
  {
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!configVersion)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (v91)
  {
    if (v78)
    {
      goto LABEL_124;
    }
  }

  else
  {

    if (v78)
    {
LABEL_124:
      if (v76)
      {
        goto LABEL_125;
      }

      goto LABEL_135;
    }
  }

  if (v76)
  {
LABEL_125:
    if (v58)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

LABEL_135:

  if (v58)
  {
LABEL_126:
    if (v80)
    {
      goto LABEL_127;
    }

    goto LABEL_137;
  }

LABEL_136:

  if (v80)
  {
LABEL_127:
    if (v56)
    {
      goto LABEL_128;
    }

    goto LABEL_138;
  }

LABEL_137:

  if (v56)
  {
LABEL_128:
    if (v79)
    {
      goto LABEL_129;
    }

LABEL_139:

    if (v81)
    {
      goto LABEL_130;
    }

    goto LABEL_140;
  }

LABEL_138:

  if (!v79)
  {
    goto LABEL_139;
  }

LABEL_129:
  if (v81)
  {
    goto LABEL_130;
  }

LABEL_140:

LABEL_130:

  return v75;
}

- (BMSiriVoiceTriggerStatistics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v217[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v181 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v181 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = v181;
    v9 = [v7 alloc];
    [v8 doubleValue];
    v11 = v10;

    v12 = [v9 initWithTimeIntervalSince1970:v11];
LABEL_6:
    v6 = v12;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v6 = 0;
        v46 = 0;
        goto LABEL_144;
      }

      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v93 = *MEMORY[0x1E698F240];
      v216 = *MEMORY[0x1E696A578];
      v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v217[0] = v179;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v217 forKeys:&v216 count:1];
      v94 = [v92 initWithDomain:v93 code:2 userInfo:v14];
      v6 = 0;
      v46 = 0;
      *error = v94;
      goto LABEL_143;
    }

    v12 = v181;
    goto LABEL_6;
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v6 = [v13 dateFromString:v181];

LABEL_9:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"firstPassPeakScoreHS"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v179 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v179 = v14;
LABEL_12:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"firstPassPeakScoreJS"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v178 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v178 = v15;
LABEL_15:
      v16 = [dictionaryCopy objectForKeyedSubscript:@"firstPassTriggerSource"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v175 = v16;
        v177 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v175 = v16;
        v177 = v16;
LABEL_18:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"recognizerScoreHS"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
LABEL_21:
          v19 = [dictionaryCopy objectForKeyedSubscript:@"recognizerScoreJS"];
          if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v170 = v19;
            v174 = 0;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v170 = v19;
            v174 = v19;
LABEL_24:
            v20 = [dictionaryCopy objectForKeyedSubscript:@"triggerScoreHS"];
            v172 = v20;
            if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v173 = 0;
              goto LABEL_27;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v173 = v21;
LABEL_27:
              v22 = [dictionaryCopy objectForKeyedSubscript:@"triggerScoreJS"];
              v169 = v22;
              if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v171 = 0;
                goto LABEL_30;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v171 = v23;
LABEL_30:
                v24 = [dictionaryCopy objectForKeyedSubscript:@"mitigationScore"];
                v167 = v24;
                if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v168 = 0;
                  goto LABEL_33;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v168 = v25;
LABEL_33:
                  v26 = [dictionaryCopy objectForKeyedSubscript:@"invocationTypeID"];
                  v163 = v26;
                  if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v164 = 0;
                    goto LABEL_36;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v164 = v27;
LABEL_36:
                    v28 = [dictionaryCopy objectForKeyedSubscript:@"repetitionSimilarityScore"];
                    v158 = v28;
                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v159 = 0;
                      goto LABEL_39;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v159 = v29;
LABEL_39:
                      v30 = [dictionaryCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
                      v156 = v30;
                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v157 = 0;
                        goto LABEL_42;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v157 = v31;
LABEL_42:
                        v32 = [dictionaryCopy objectForKeyedSubscript:@"hwSampleRate"];
                        v154 = v32;
                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v155 = 0;
                          goto LABEL_45;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v155 = v33;
LABEL_45:
                          v34 = [dictionaryCopy objectForKeyedSubscript:@"configVersion"];
                          v151 = v34;
                          if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v152 = 0;
                            goto LABEL_48;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v152 = v35;
LABEL_48:
                            v36 = [dictionaryCopy objectForKeyedSubscript:@"keywordThresholdHS"];
                            v165 = v17;
                            v148 = v36;
                            if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v150 = 0;
                              goto LABEL_51;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v150 = v37;
LABEL_51:
                              v38 = [dictionaryCopy objectForKeyedSubscript:@"keywordThresholdJS"];
                              v147 = v38;
                              if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v149 = 0;
                                goto LABEL_54;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v149 = v39;
LABEL_54:
                                v40 = [dictionaryCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdHS"];
                                v160 = v40;
                                if (v40)
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v41 = v6;
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!error)
                                      {
                                        v40 = 0;
                                        v46 = 0;
                                        v62 = v170;
                                        goto LABEL_127;
                                      }

                                      v41 = v6;
                                      v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v140 = *MEMORY[0x1E698F240];
                                      v184 = *MEMORY[0x1E696A578];
                                      v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedThresholdHS"];
                                      v185 = v114;
                                      v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                                      v141 = [v139 initWithDomain:v140 code:2 userInfo:v113];
                                      v40 = 0;
                                      v46 = 0;
                                      *error = v141;
                                      goto LABEL_126;
                                    }

                                    v41 = v6;
                                    v40 = v40;
                                  }
                                }

                                else
                                {
                                  v41 = v6;
                                }

                                v113 = [dictionaryCopy objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdJS"];
                                if (v113 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (error)
                                    {
                                      v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v145 = *MEMORY[0x1E698F240];
                                      v182 = *MEMORY[0x1E696A578];
                                      v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedThresholdJS"];
                                      v183 = v142;
                                      v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
                                      *error = [v146 initWithDomain:v145 code:2 userInfo:v143];
                                    }

                                    v114 = 0;
                                    v46 = 0;
                                    goto LABEL_126;
                                  }

                                  v114 = v113;
                                }

                                else
                                {
                                  v114 = 0;
                                }

                                v46 = [(BMSiriVoiceTriggerStatistics *)self initWithAbsoluteTimestamp:v41 firstPassPeakScoreHS:v179 firstPassPeakScoreJS:v178 firstPassTriggerSource:v177 recognizerScoreHS:v18 recognizerScoreJS:v174 triggerScoreHS:v173 triggerScoreJS:v171 mitigationScore:v168 invocationTypeID:v164 repetitionSimilarityScore:v159 tdSpeakerRecognizerCombinedScore:v157 hwSampleRate:v155 configVersion:v152 keywordThresholdHS:v150 keywordThresholdJS:v149 tdSpeakerRecognizerCombinedThresholdHS:v40 tdSpeakerRecognizerCombinedThresholdJS:v114];
                                self = v46;
LABEL_126:
                                v62 = v170;

                                v6 = v41;
                                v17 = v165;
LABEL_127:
                                v115 = v160;
LABEL_128:

                                v16 = v175;
LABEL_129:

LABEL_130:
LABEL_131:

LABEL_132:
LABEL_133:

LABEL_134:
LABEL_135:

LABEL_136:
LABEL_137:

                                goto LABEL_138;
                              }

                              if (error)
                              {
                                v162 = v18;
                                v131 = v14;
                                v132 = v15;
                                v133 = v6;
                                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v135 = *MEMORY[0x1E698F240];
                                v186 = *MEMORY[0x1E696A578];
                                v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"keywordThresholdJS"];
                                v187 = v136;
                                v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
                                v137 = v134;
                                v6 = v133;
                                v40 = v136;
                                v15 = v132;
                                v14 = v131;
                                v18 = v162;
                                v138 = [v137 initWithDomain:v135 code:2 userInfo:v115];
                                v149 = 0;
                                v46 = 0;
                                *error = v138;
                                v62 = v170;
                                goto LABEL_128;
                              }

                              v149 = 0;
                              v46 = 0;
LABEL_178:
                              v16 = v175;
                              v62 = v170;
                              goto LABEL_129;
                            }

                            if (error)
                            {
                              v125 = v6;
                              v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v127 = *MEMORY[0x1E698F240];
                              v188 = *MEMORY[0x1E696A578];
                              v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"keywordThresholdHS"];
                              v189 = v149;
                              v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
                              v129 = v126;
                              v6 = v125;
                              v147 = v128;
                              v130 = [v129 initWithDomain:v127 code:2 userInfo:?];
                              v150 = 0;
                              v46 = 0;
                              *error = v130;
                              goto LABEL_178;
                            }

                            v150 = 0;
                            v46 = 0;
                            v16 = v175;
LABEL_176:
                            v62 = v170;
                            goto LABEL_130;
                          }

                          if (error)
                          {
                            v153 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v123 = *MEMORY[0x1E698F240];
                            v190 = *MEMORY[0x1E696A578];
                            v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"configVersion"];
                            v191 = v150;
                            v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
                            v124 = [v153 initWithDomain:v123 code:2 userInfo:?];
                            v152 = 0;
                            v46 = 0;
                            *error = v124;
                            v16 = v175;
                            goto LABEL_176;
                          }

                          v152 = 0;
                          v46 = 0;
                          v16 = v175;
LABEL_174:
                          v62 = v170;
                          goto LABEL_131;
                        }

                        if (error)
                        {
                          v117 = v6;
                          v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v119 = *MEMORY[0x1E698F240];
                          v192 = *MEMORY[0x1E696A578];
                          v152 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hwSampleRate"];
                          v193 = v152;
                          v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
                          v121 = v118;
                          v6 = v117;
                          v151 = v120;
                          v122 = [v121 initWithDomain:v119 code:2 userInfo:?];
                          v155 = 0;
                          v46 = 0;
                          *error = v122;
                          v16 = v175;
                          goto LABEL_174;
                        }

                        v155 = 0;
                        v46 = 0;
LABEL_172:
                        v16 = v175;
                        v62 = v170;
                        goto LABEL_132;
                      }

                      if (error)
                      {
                        v107 = v6;
                        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v109 = *MEMORY[0x1E698F240];
                        v194 = *MEMORY[0x1E696A578];
                        v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tdSpeakerRecognizerCombinedScore"];
                        v195 = v155;
                        v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
                        v111 = v108;
                        v6 = v107;
                        v154 = v110;
                        v112 = [v111 initWithDomain:v109 code:2 userInfo:?];
                        v157 = 0;
                        v46 = 0;
                        *error = v112;
                        goto LABEL_172;
                      }

                      v157 = 0;
                      v46 = 0;
LABEL_167:
                      v16 = v175;
                      v62 = v170;
                      goto LABEL_133;
                    }

                    if (error)
                    {
                      v101 = v6;
                      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v103 = *MEMORY[0x1E698F240];
                      v196 = *MEMORY[0x1E696A578];
                      v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"repetitionSimilarityScore"];
                      v197 = v157;
                      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
                      v105 = v102;
                      v6 = v101;
                      v156 = v104;
                      v106 = [v105 initWithDomain:v103 code:2 userInfo:?];
                      v159 = 0;
                      v46 = 0;
                      *error = v106;
                      goto LABEL_167;
                    }

                    v159 = 0;
                    v46 = 0;
LABEL_163:
                    v16 = v175;
                    v62 = v170;
                    goto LABEL_134;
                  }

                  if (error)
                  {
                    v95 = v6;
                    v96 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v97 = *MEMORY[0x1E698F240];
                    v198 = *MEMORY[0x1E696A578];
                    v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationTypeID"];
                    v199 = v159;
                    v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
                    v99 = v96;
                    v6 = v95;
                    v158 = v98;
                    v100 = [v99 initWithDomain:v97 code:2 userInfo:?];
                    v164 = 0;
                    v46 = 0;
                    *error = v100;
                    goto LABEL_163;
                  }

                  v164 = 0;
                  v46 = 0;
LABEL_159:
                  v16 = v175;
                  v62 = v170;
                  goto LABEL_135;
                }

                if (error)
                {
                  v86 = v6;
                  v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v88 = *MEMORY[0x1E698F240];
                  v200 = *MEMORY[0x1E696A578];
                  v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mitigationScore"];
                  v201 = v164;
                  v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
                  v90 = v87;
                  v6 = v86;
                  v163 = v89;
                  v91 = [v90 initWithDomain:v88 code:2 userInfo:?];
                  v168 = 0;
                  v46 = 0;
                  *error = v91;
                  goto LABEL_159;
                }

                v168 = 0;
                v46 = 0;
LABEL_154:
                v16 = v175;
                v62 = v170;
                goto LABEL_136;
              }

              if (error)
              {
                v80 = v6;
                v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                v82 = *MEMORY[0x1E698F240];
                v202 = *MEMORY[0x1E696A578];
                v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"triggerScoreJS"];
                v203 = v168;
                v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
                v84 = v81;
                v6 = v80;
                v167 = v83;
                v85 = [v84 initWithDomain:v82 code:2 userInfo:?];
                v171 = 0;
                v46 = 0;
                *error = v85;
                goto LABEL_154;
              }

              v171 = 0;
              v46 = 0;
LABEL_148:
              v16 = v175;
              v62 = v170;
              goto LABEL_137;
            }

            if (error)
            {
              v74 = v6;
              v75 = objc_alloc(MEMORY[0x1E696ABC0]);
              v76 = *MEMORY[0x1E698F240];
              v204 = *MEMORY[0x1E696A578];
              v171 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"triggerScoreHS"];
              v205 = v171;
              v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
              v78 = v75;
              v6 = v74;
              v169 = v77;
              v79 = [v78 initWithDomain:v76 code:2 userInfo:?];
              v173 = 0;
              v46 = 0;
              *error = v79;
              goto LABEL_148;
            }

            v173 = 0;
            v46 = 0;
            v16 = v175;
            v62 = v170;
LABEL_138:

            goto LABEL_139;
          }

          if (error)
          {
            v161 = v18;
            v65 = v6;
            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v206 = *MEMORY[0x1E696A578];
            v166 = v17;
            errorCopy = error;
            v69 = objc_alloc(MEMORY[0x1E696AEC0]);
            v144 = objc_opt_class();
            v70 = v69;
            v62 = v19;
            v173 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v144, @"recognizerScoreJS"];
            v207 = v173;
            v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
            v72 = v66;
            v6 = v65;
            v18 = v161;
            v172 = v71;
            v73 = [v72 initWithDomain:v67 code:2 userInfo:?];
            v174 = 0;
            v46 = 0;
            *errorCopy = v73;
            v17 = v166;
            v16 = v175;
            goto LABEL_138;
          }

          v174 = 0;
          v46 = 0;
          v16 = v175;
          v62 = v19;
LABEL_139:

          goto LABEL_140;
        }

        if (error)
        {
          v58 = v6;
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E698F240];
          v208 = *MEMORY[0x1E696A578];
          errorCopy2 = error;
          v174 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"recognizerScoreHS"];
          v209 = v174;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
          v63 = v59;
          v6 = v58;
          v64 = [v63 initWithDomain:v60 code:2 userInfo:v62];
          v46 = 0;
          *errorCopy2 = v64;
          v18 = 0;
          v16 = v175;
          goto LABEL_139;
        }

        v18 = 0;
        v46 = 0;
        v16 = v175;
LABEL_140:

        v50 = v177;
        goto LABEL_141;
      }

      if (error)
      {
        errorCopy3 = error;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = v6;
        v56 = *MEMORY[0x1E698F240];
        v210 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassTriggerSource"];
        v211 = v18;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
        v57 = v56;
        v6 = v55;
        v177 = 0;
        v46 = 0;
        *errorCopy3 = [v54 initWithDomain:v57 code:2 userInfo:v17];
        goto LABEL_140;
      }

      v50 = 0;
      v46 = 0;
LABEL_141:

      goto LABEL_142;
    }

    if (error)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = v6;
      v49 = *MEMORY[0x1E698F240];
      v212 = *MEMORY[0x1E696A578];
      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassPeakScoreJS"];
      v213 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
      v52 = v47;
      v16 = v51;
      v53 = v49;
      v6 = v48;
      v178 = 0;
      v46 = 0;
      *error = [v52 initWithDomain:v53 code:2 userInfo:v51];
      goto LABEL_141;
    }

    v178 = 0;
    v46 = 0;
LABEL_142:

    goto LABEL_143;
  }

  if (error)
  {
    v42 = objc_alloc(MEMORY[0x1E696ABC0]);
    v43 = v6;
    v44 = *MEMORY[0x1E698F240];
    v214 = *MEMORY[0x1E696A578];
    v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"firstPassPeakScoreHS"];
    v215 = v178;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    v45 = v44;
    v6 = v43;
    v179 = 0;
    v46 = 0;
    *error = [v42 initWithDomain:v45 code:2 userInfo:v15];
    goto LABEL_142;
  }

  v179 = 0;
  v46 = 0;
LABEL_143:

LABEL_144:
  return v46;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriVoiceTriggerStatistics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasFirstPassPeakScoreHS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFirstPassPeakScoreJS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFirstPassTriggerSource)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRecognizerScoreHS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasRecognizerScoreJS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTriggerScoreHS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTriggerScoreJS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMitigationScore)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasInvocationTypeID)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRepetitionSimilarityScore)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedScore)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasHwSampleRate)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasKeywordThresholdHS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasKeywordThresholdJS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedThresholdHS)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasTdSpeakerRecognizerCombinedThresholdJS)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v81.receiver = self;
  v81.super_class = BMSiriVoiceTriggerStatistics;
  v5 = [(BMEventBase *)&v81 init];
  if (!v5)
  {
    goto LABEL_128;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v82) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v82) & 0x7F) << v7;
        if ((LOBYTE(v82) & 0x80) == 0)
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
          v5->_hasRaw_absoluteTimestamp = 1;
          v82 = 0.0;
          v15 = [fromCopy position] + 8;
          if (v15 >= [fromCopy position] && (v16 = objc_msgSend(fromCopy, "position") + 8, v16 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v82;
          v63 = 24;
          goto LABEL_124;
        case 2u:
          v5->_hasFirstPassPeakScoreHS = 1;
          LODWORD(v82) = 0;
          v46 = [fromCopy position] + 4;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 4, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 64;
          goto LABEL_124;
        case 3u:
          v5->_hasFirstPassPeakScoreJS = 1;
          LODWORD(v82) = 0;
          v34 = [fromCopy position] + 4;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 4, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 72;
          goto LABEL_124;
        case 4u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v5->_hasFirstPassTriggerSource = 1;
          while (1)
          {
            LOBYTE(v82) = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v40 |= (LOBYTE(v82) & 0x7F) << v38;
            if ((LOBYTE(v82) & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v13 = v39++ >= 9;
            if (v13)
            {
              v33 = 0;
              goto LABEL_92;
            }
          }

          if ([fromCopy hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v40;
          }

LABEL_92:
          v60 = 52;
          goto LABEL_93;
        case 5u:
          v5->_hasRecognizerScoreHS = 1;
          LODWORD(v82) = 0;
          v23 = [fromCopy position] + 4;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 4, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 80;
          goto LABEL_124;
        case 6u:
          v5->_hasRecognizerScoreJS = 1;
          LODWORD(v82) = 0;
          v50 = [fromCopy position] + 4;
          if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 4, v51 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 88;
          goto LABEL_124;
        case 7u:
          v5->_hasTriggerScoreHS = 1;
          LODWORD(v82) = 0;
          v54 = [fromCopy position] + 4;
          if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 4, v55 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 96;
          goto LABEL_124;
        case 8u:
          v5->_hasTriggerScoreJS = 1;
          LODWORD(v82) = 0;
          v44 = [fromCopy position] + 4;
          if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 4, v45 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 104;
          goto LABEL_124;
        case 9u:
          v5->_hasMitigationScore = 1;
          LODWORD(v82) = 0;
          v58 = [fromCopy position] + 4;
          if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 4, v59 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 112;
          goto LABEL_124;
        case 0xAu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasInvocationTypeID = 1;
          break;
        case 0xBu:
          v5->_hasRepetitionSimilarityScore = 1;
          LODWORD(v82) = 0;
          v56 = [fromCopy position] + 4;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 4, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 120;
          goto LABEL_124;
        case 0xCu:
          v5->_hasTdSpeakerRecognizerCombinedScore = 1;
          LODWORD(v82) = 0;
          v21 = [fromCopy position] + 4;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 4, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 128;
          goto LABEL_124;
        case 0xDu:
          v5->_hasHwSampleRate = 1;
          LODWORD(v82) = 0;
          v25 = [fromCopy position] + 4;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 4, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 136;
          goto LABEL_124;
        case 0xEu:
          v52 = PBReaderReadString();
          configVersion = v5->_configVersion;
          v5->_configVersion = v52;

          goto LABEL_125;
        case 0xFu:
          v5->_hasKeywordThresholdHS = 1;
          LODWORD(v82) = 0;
          v19 = [fromCopy position] + 4;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 4, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 152;
          goto LABEL_124;
        case 0x10u:
          v5->_hasKeywordThresholdJS = 1;
          LODWORD(v82) = 0;
          v36 = [fromCopy position] + 4;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 4, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 160;
          goto LABEL_124;
        case 0x11u:
          v5->_hasTdSpeakerRecognizerCombinedThresholdHS = 1;
          LODWORD(v82) = 0;
          v17 = [fromCopy position] + 4;
          if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 4, v18 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 168;
          goto LABEL_124;
        case 0x12u:
          v5->_hasTdSpeakerRecognizerCombinedThresholdJS = 1;
          LODWORD(v82) = 0;
          v48 = [fromCopy position] + 4;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 4, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = *&v82;
          v63 = 176;
LABEL_124:
          *(&v5->super.super.isa + v63) = v62;
          goto LABEL_125;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_127;
          }

          goto LABEL_125;
      }

      while (1)
      {
        LOBYTE(v82) = 0;
        v30 = [fromCopy position] + 1;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data18 = [fromCopy data];
          [data18 getBytes:&v82 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v29 |= (LOBYTE(v82) & 0x7F) << v27;
        if ((LOBYTE(v82) & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v13 = v28++ >= 9;
        if (v13)
        {
          v33 = 0;
          goto LABEL_88;
        }
      }

      v33 = [fromCopy hasError] ? 0 : v29;
LABEL_88:
      v60 = 56;
LABEL_93:
      *(&v5->super.super.isa + v60) = v33;
LABEL_125:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_127:
    v79 = 0;
  }

  else
  {
LABEL_128:
    v79 = v5;
  }

  return v79;
}

- (NSString)description
{
  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMSiriVoiceTriggerStatistics *)self absoluteTimestamp];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreHS];
  v36 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self firstPassPeakScoreJS];
  v35 = [v4 numberWithDouble:?];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics firstPassTriggerSource](self, "firstPassTriggerSource")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self recognizerScoreHS];
  v29 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self recognizerScoreJS];
  v28 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self triggerScoreHS];
  v34 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self triggerScoreJS];
  v27 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self mitigationScore];
  v26 = [v9 numberWithDouble:?];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriVoiceTriggerStatistics invocationTypeID](self, "invocationTypeID")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self repetitionSimilarityScore];
  v25 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedScore];
  v24 = [v11 numberWithDouble:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self hwSampleRate];
  v23 = [v12 numberWithDouble:?];
  configVersion = [(BMSiriVoiceTriggerStatistics *)self configVersion];
  v14 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self keywordThresholdHS];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self keywordThresholdJS];
  v17 = [v16 numberWithDouble:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdHS];
  v19 = [v18 numberWithDouble:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMSiriVoiceTriggerStatistics *)self tdSpeakerRecognizerCombinedThresholdJS];
  v21 = [v20 numberWithDouble:?];
  v32 = [v31 initWithFormat:@"BMSiriVoiceTriggerStatistics with absoluteTimestamp: %@, firstPassPeakScoreHS: %@, firstPassPeakScoreJS: %@, firstPassTriggerSource: %@, recognizerScoreHS: %@, recognizerScoreJS: %@, triggerScoreHS: %@, triggerScoreJS: %@, mitigationScore: %@, invocationTypeID: %@, repetitionSimilarityScore: %@, tdSpeakerRecognizerCombinedScore: %@, hwSampleRate: %@, configVersion: %@, keywordThresholdHS: %@, keywordThresholdJS: %@, tdSpeakerRecognizerCombinedThresholdHS: %@, tdSpeakerRecognizerCombinedThresholdJS: %@", absoluteTimestamp, v36, v35, v30, v29, v28, v34, v27, v26, v33, v25, v24, v23, configVersion, v15, v17, v19, v21];

  return v32;
}

- (BMSiriVoiceTriggerStatistics)initWithAbsoluteTimestamp:(id)timestamp firstPassPeakScoreHS:(id)s firstPassPeakScoreJS:(id)jS firstPassTriggerSource:(id)source recognizerScoreHS:(id)hS recognizerScoreJS:(id)scoreJS triggerScoreHS:(id)scoreHS triggerScoreJS:(id)self0 mitigationScore:(id)self1 invocationTypeID:(id)self2 repetitionSimilarityScore:(id)self3 tdSpeakerRecognizerCombinedScore:(id)self4 hwSampleRate:(id)self5 configVersion:(id)self6 keywordThresholdHS:(id)self7 keywordThresholdJS:(id)self8 tdSpeakerRecognizerCombinedThresholdHS:(id)self9 tdSpeakerRecognizerCombinedThresholdJS:(id)combinedThresholdJS
{
  timestampCopy = timestamp;
  sCopy = s;
  jSCopy = jS;
  sourceCopy = source;
  hSCopy = hS;
  scoreJSCopy = scoreJS;
  scoreHSCopy = scoreHS;
  triggerScoreJSCopy = triggerScoreJS;
  v27 = sCopy;
  scoreCopy = score;
  dCopy = d;
  similarityScoreCopy = similarityScore;
  combinedScoreCopy = combinedScore;
  rateCopy = rate;
  versionCopy = version;
  thresholdHSCopy = thresholdHS;
  thresholdJSCopy = thresholdJS;
  combinedThresholdHSCopy = combinedThresholdHS;
  combinedThresholdJSCopy = combinedThresholdJS;
  v78.receiver = self;
  v78.super_class = BMSiriVoiceTriggerStatistics;
  v35 = [(BMEventBase *)&v78 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v35->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v35->_hasRaw_absoluteTimestamp = 0;
      v36 = -1.0;
    }

    v35->_raw_absoluteTimestamp = v36;
    if (v27)
    {
      v35->_hasFirstPassPeakScoreHS = 1;
      [v27 floatValue];
      v38 = v37;
    }

    else
    {
      v35->_hasFirstPassPeakScoreHS = 0;
      v38 = -1.0;
    }

    v35->_firstPassPeakScoreHS = v38;
    if (jSCopy)
    {
      v35->_hasFirstPassPeakScoreJS = 1;
      [jSCopy floatValue];
      v40 = v39;
    }

    else
    {
      v35->_hasFirstPassPeakScoreJS = 0;
      v40 = -1.0;
    }

    v35->_firstPassPeakScoreJS = v40;
    if (sourceCopy)
    {
      v35->_hasFirstPassTriggerSource = 1;
      intValue = [sourceCopy intValue];
    }

    else
    {
      v35->_hasFirstPassTriggerSource = 0;
      intValue = -1;
    }

    v35->_firstPassTriggerSource = intValue;
    if (hSCopy)
    {
      v35->_hasRecognizerScoreHS = 1;
      [hSCopy floatValue];
      v43 = v42;
    }

    else
    {
      v35->_hasRecognizerScoreHS = 0;
      v43 = -1.0;
    }

    v35->_recognizerScoreHS = v43;
    if (scoreJSCopy)
    {
      v35->_hasRecognizerScoreJS = 1;
      [scoreJSCopy floatValue];
      v45 = v44;
    }

    else
    {
      v35->_hasRecognizerScoreJS = 0;
      v45 = -1.0;
    }

    v35->_recognizerScoreJS = v45;
    if (scoreHSCopy)
    {
      v35->_hasTriggerScoreHS = 1;
      [scoreHSCopy floatValue];
      v47 = v46;
    }

    else
    {
      v35->_hasTriggerScoreHS = 0;
      v47 = -1.0;
    }

    v35->_triggerScoreHS = v47;
    if (triggerScoreJSCopy)
    {
      v35->_hasTriggerScoreJS = 1;
      [triggerScoreJSCopy floatValue];
      v49 = v48;
    }

    else
    {
      v35->_hasTriggerScoreJS = 0;
      v49 = -1.0;
    }

    v35->_triggerScoreJS = v49;
    if (scoreCopy)
    {
      v35->_hasMitigationScore = 1;
      [scoreCopy floatValue];
      v51 = v50;
    }

    else
    {
      v35->_hasMitigationScore = 0;
      v51 = -1.0;
    }

    v35->_mitigationScore = v51;
    if (dCopy)
    {
      v35->_hasInvocationTypeID = 1;
      intValue2 = [dCopy intValue];
    }

    else
    {
      v35->_hasInvocationTypeID = 0;
      intValue2 = -1;
    }

    v35->_invocationTypeID = intValue2;
    if (similarityScoreCopy)
    {
      v35->_hasRepetitionSimilarityScore = 1;
      [similarityScoreCopy floatValue];
      v54 = v53;
    }

    else
    {
      v35->_hasRepetitionSimilarityScore = 0;
      v54 = -1.0;
    }

    v35->_repetitionSimilarityScore = v54;
    if (combinedScoreCopy)
    {
      v35->_hasTdSpeakerRecognizerCombinedScore = 1;
      [combinedScoreCopy floatValue];
      v56 = v55;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedScore = 0;
      v56 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedScore = v56;
    if (rateCopy)
    {
      v35->_hasHwSampleRate = 1;
      [rateCopy floatValue];
      v58 = v57;
    }

    else
    {
      v35->_hasHwSampleRate = 0;
      v58 = -1.0;
    }

    v35->_hwSampleRate = v58;
    objc_storeStrong(&v35->_configVersion, version);
    if (thresholdHSCopy)
    {
      v35->_hasKeywordThresholdHS = 1;
      [thresholdHSCopy floatValue];
      v60 = v59;
    }

    else
    {
      v35->_hasKeywordThresholdHS = 0;
      v60 = -1.0;
    }

    v35->_keywordThresholdHS = v60;
    if (thresholdJSCopy)
    {
      v35->_hasKeywordThresholdJS = 1;
      [thresholdJSCopy floatValue];
      v62 = v61;
    }

    else
    {
      v35->_hasKeywordThresholdJS = 0;
      v62 = -1.0;
    }

    v35->_keywordThresholdJS = v62;
    if (combinedThresholdHSCopy)
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdHS = 1;
      [combinedThresholdHSCopy floatValue];
      v64 = v63;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdHS = 0;
      v64 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedThresholdHS = v64;
    if (combinedThresholdJSCopy)
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdJS = 1;
      [combinedThresholdJSCopy floatValue];
      v66 = v65;
    }

    else
    {
      v35->_hasTdSpeakerRecognizerCombinedThresholdJS = 0;
      v66 = -1.0;
    }

    v35->_tdSpeakerRecognizerCombinedThresholdJS = v66;
  }

  return v35;
}

+ (id)protoFields
{
  v22[18] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v22[0] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassPeakScoreHS" number:2 type:1 subMessageClass:0];
  v22[1] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassPeakScoreJS" number:3 type:1 subMessageClass:0];
  v22[2] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"firstPassTriggerSource" number:4 type:2 subMessageClass:0];
  v22[3] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizerScoreHS" number:5 type:1 subMessageClass:0];
  v22[4] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizerScoreJS" number:6 type:1 subMessageClass:0];
  v22[5] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggerScoreHS" number:7 type:1 subMessageClass:0];
  v22[6] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggerScoreJS" number:8 type:1 subMessageClass:0];
  v22[7] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mitigationScore" number:9 type:1 subMessageClass:0];
  v22[8] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationTypeID" number:10 type:2 subMessageClass:0];
  v22[9] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"repetitionSimilarityScore" number:11 type:1 subMessageClass:0];
  v22[10] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedScore" number:12 type:1 subMessageClass:0];
  v22[11] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hwSampleRate" number:13 type:1 subMessageClass:0];
  v22[12] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"configVersion" number:14 type:13 subMessageClass:0];
  v22[13] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"keywordThresholdHS" number:15 type:1 subMessageClass:0];
  v22[14] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"keywordThresholdJS" number:16 type:1 subMessageClass:0];
  v22[15] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdHS" number:17 type:1 subMessageClass:0];
  v22[16] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdJS" number:18 type:1 subMessageClass:0];
  v22[17] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:18];

  return v11;
}

+ (id)columns
{
  v22[18] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassPeakScoreHS" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassPeakScoreJS" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"firstPassTriggerSource" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizerScoreHS" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizerScoreJS" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggerScoreHS" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggerScoreJS" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mitigationScore" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationTypeID" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"repetitionSimilarityScore" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedScore" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:1 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hwSampleRate" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:1 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"configVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"keywordThresholdHS" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:1 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"keywordThresholdJS" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdHS" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:1 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tdSpeakerRecognizerCombinedThresholdJS" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:1 convertedType:0];
  v22[0] = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v14;
  v22[8] = v2;
  v22[9] = v3;
  v22[10] = v4;
  v22[11] = v13;
  v22[12] = v5;
  v22[13] = v6;
  v22[14] = v7;
  v22[15] = v12;
  v22[16] = v8;
  v22[17] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:18];

  return v11;
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

    v8 = [[BMSiriVoiceTriggerStatistics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end