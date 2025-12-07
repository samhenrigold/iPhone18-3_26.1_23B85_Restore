@interface INPrivatePlayMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivatePlayMediaIntentData)initWithAppSelectionEnabled:(id)enabled appInferred:(id)inferred audioSearchResults:(id)results privateMediaIntentData:(id)data appSelectionSignalsEnabled:(id)signalsEnabled appSelectionSignalsFrequencyDenominator:(id)denominator shouldSuppressCommonWholeHouseAudioRoutes:(id)routes immediatelyStartPlayback:(id)self0 isAmbiguousPlay:(id)self1 isPersonalizedRequest:(id)self2 internalSignals:(id)self3 entityConfidenceSignalsEnabled:(id)self4 entityConfidenceSignalsFrequencyDenominatorInternal:(id)self5 entityConfidenceSignalsFrequencyDenominatorProd:(id)self6 entityConfidenceSignalsMaxItemsToDisambiguate:(id)self7 alternativeProviderBundleIdentifier:(id)self8 ampPAFDataSetID:(id)self9 pegasusMetaData:(id)metaData;
- (INPrivatePlayMediaIntentData)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPrivatePlayMediaIntentData

- (id)_dictionaryRepresentation
{
  v58[18] = *MEMORY[0x1E69E9840];
  v57[0] = @"appSelectionEnabled";
  appSelectionEnabled = self->_appSelectionEnabled;
  null = appSelectionEnabled;
  if (!appSelectionEnabled)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v58[0] = null;
  v57[1] = @"appInferred";
  appInferred = self->_appInferred;
  v53 = appInferred;
  if (!appInferred)
  {
    appInferred = [MEMORY[0x1E695DFB0] null];
  }

  v58[1] = appInferred;
  v57[2] = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  v51 = audioSearchResults;
  if (!audioSearchResults)
  {
    audioSearchResults = [MEMORY[0x1E695DFB0] null];
  }

  v58[2] = audioSearchResults;
  v57[3] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  v49 = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    privateMediaIntentData = [MEMORY[0x1E695DFB0] null];
  }

  v58[3] = privateMediaIntentData;
  v57[4] = @"appSelectionSignalsEnabled";
  appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
  v47 = appSelectionSignalsEnabled;
  if (!appSelectionSignalsEnabled)
  {
    appSelectionSignalsEnabled = [MEMORY[0x1E695DFB0] null];
  }

  v58[4] = appSelectionSignalsEnabled;
  v57[5] = @"appSelectionSignalsFrequencyDenominator";
  appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
  v45 = appSelectionSignalsFrequencyDenominator;
  if (!appSelectionSignalsFrequencyDenominator)
  {
    appSelectionSignalsFrequencyDenominator = [MEMORY[0x1E695DFB0] null];
  }

  v58[5] = appSelectionSignalsFrequencyDenominator;
  v57[6] = @"shouldSuppressCommonWholeHouseAudioRoutes";
  shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
  v43 = shouldSuppressCommonWholeHouseAudioRoutes;
  if (!shouldSuppressCommonWholeHouseAudioRoutes)
  {
    shouldSuppressCommonWholeHouseAudioRoutes = [MEMORY[0x1E695DFB0] null];
  }

  v58[6] = shouldSuppressCommonWholeHouseAudioRoutes;
  v57[7] = @"immediatelyStartPlayback";
  immediatelyStartPlayback = self->_immediatelyStartPlayback;
  v41 = immediatelyStartPlayback;
  if (!immediatelyStartPlayback)
  {
    immediatelyStartPlayback = [MEMORY[0x1E695DFB0] null];
  }

  v58[7] = immediatelyStartPlayback;
  v57[8] = @"isAmbiguousPlay";
  isAmbiguousPlay = self->_isAmbiguousPlay;
  v39 = isAmbiguousPlay;
  if (!isAmbiguousPlay)
  {
    isAmbiguousPlay = [MEMORY[0x1E695DFB0] null];
  }

  v58[8] = isAmbiguousPlay;
  v57[9] = @"isPersonalizedRequest";
  isPersonalizedRequest = self->_isPersonalizedRequest;
  v38 = isPersonalizedRequest;
  if (!isPersonalizedRequest)
  {
    isPersonalizedRequest = [MEMORY[0x1E695DFB0] null];
  }

  v37 = isPersonalizedRequest;
  v58[9] = isPersonalizedRequest;
  v57[10] = @"internalSignals";
  internalSignals = self->_internalSignals;
  v36 = internalSignals;
  if (!internalSignals)
  {
    internalSignals = [MEMORY[0x1E695DFB0] null];
  }

  v48 = privateMediaIntentData;
  v56 = internalSignals;
  v58[10] = internalSignals;
  v57[11] = @"entityConfidenceSignalsEnabled";
  entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
  v35 = entityConfidenceSignalsEnabled;
  if (!entityConfidenceSignalsEnabled)
  {
    entityConfidenceSignalsEnabled = [MEMORY[0x1E695DFB0] null];
  }

  v46 = appSelectionSignalsEnabled;
  v33 = entityConfidenceSignalsEnabled;
  v58[11] = entityConfidenceSignalsEnabled;
  v57[12] = @"entityConfidenceSignalsFrequencyDenominatorInternal";
  entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
  null2 = entityConfidenceSignalsFrequencyDenominatorInternal;
  if (!entityConfidenceSignalsFrequencyDenominatorInternal)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = appSelectionSignalsFrequencyDenominator;
  v50 = audioSearchResults;
  v32 = null2;
  v58[12] = null2;
  v57[13] = @"entityConfidenceSignalsFrequencyDenominatorProd";
  entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
  null3 = entityConfidenceSignalsFrequencyDenominatorProd;
  if (!entityConfidenceSignalsFrequencyDenominatorProd)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = shouldSuppressCommonWholeHouseAudioRoutes;
  v54 = null;
  v31 = null3;
  v58[13] = null3;
  v57[14] = @"entityConfidenceSignalsMaxItemsToDisambiguate";
  entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
  null4 = entityConfidenceSignalsMaxItemsToDisambiguate;
  if (!entityConfidenceSignalsMaxItemsToDisambiguate)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = immediatelyStartPlayback;
  v52 = appInferred;
  v30 = null4;
  v58[14] = null4;
  v57[15] = @"alternativeProviderBundleIdentifier";
  alternativeProviderBundleIdentifier = self->_alternativeProviderBundleIdentifier;
  null5 = alternativeProviderBundleIdentifier;
  if (!alternativeProviderBundleIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = isAmbiguousPlay;
  v58[15] = null5;
  v57[16] = @"ampPAFDataSetID";
  ampPAFDataSetID = self->_ampPAFDataSetID;
  null6 = ampPAFDataSetID;
  if (!ampPAFDataSetID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v58[16] = null6;
  v57[17] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  null7 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v58[17] = null7;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:18];
  if (!pegasusMetaData)
  {
  }

  v28 = v56;
  if (!ampPAFDataSetID)
  {

    v28 = v56;
  }

  if (!alternativeProviderBundleIdentifier)
  {

    v28 = v56;
  }

  if (!entityConfidenceSignalsMaxItemsToDisambiguate)
  {

    v28 = v56;
  }

  if (!entityConfidenceSignalsFrequencyDenominatorProd)
  {

    v28 = v56;
  }

  if (!entityConfidenceSignalsFrequencyDenominatorInternal)
  {

    v28 = v56;
  }

  if (!v35)
  {

    v28 = v56;
  }

  if (!v36)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v41)
  {
  }

  if (!v43)
  {
  }

  if (!v45)
  {
  }

  if (!v47)
  {
  }

  if (!v49)
  {
  }

  if (!v51)
  {
  }

  if (!v53)
  {
  }

  if (!appSelectionEnabled)
  {
  }

  return v34;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivatePlayMediaIntentData;
  v6 = [(INPrivatePlayMediaIntentData *)&v11 description];
  _dictionaryRepresentation = [(INPrivatePlayMediaIntentData *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_appSelectionEnabled];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"appSelectionEnabled"];

  v9 = [encoderCopy encodeObject:self->_appInferred];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"appInferred"];

  v10 = [encoderCopy encodeObject:self->_audioSearchResults];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"audioSearchResults"];

  v11 = [encoderCopy encodeObject:self->_privateMediaIntentData];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"privateMediaIntentData"];

  v12 = [encoderCopy encodeObject:self->_appSelectionSignalsEnabled];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"appSelectionSignalsEnabled"];

  v13 = [encoderCopy encodeObject:self->_appSelectionSignalsFrequencyDenominator];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"appSelectionSignalsFrequencyDenominator"];

  v14 = [encoderCopy encodeObject:self->_shouldSuppressCommonWholeHouseAudioRoutes];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];

  v15 = [encoderCopy encodeObject:self->_immediatelyStartPlayback];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"immediatelyStartPlayback"];

  v16 = [encoderCopy encodeObject:self->_isAmbiguousPlay];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"isAmbiguousPlay"];

  v17 = [encoderCopy encodeObject:self->_isPersonalizedRequest];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"isPersonalizedRequest"];

  v18 = [encoderCopy encodeObject:self->_internalSignals];
  [dictionary if_setObjectIfNonNil:v18 forKey:@"internalSignals"];

  v19 = [encoderCopy encodeObject:self->_entityConfidenceSignalsEnabled];
  [dictionary if_setObjectIfNonNil:v19 forKey:@"entityConfidenceSignalsEnabled"];

  v20 = [encoderCopy encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorInternal];
  [dictionary if_setObjectIfNonNil:v20 forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];

  v21 = [encoderCopy encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorProd];
  [dictionary if_setObjectIfNonNil:v21 forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];

  v22 = [encoderCopy encodeObject:self->_entityConfidenceSignalsMaxItemsToDisambiguate];
  [dictionary if_setObjectIfNonNil:v22 forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];

  v23 = [encoderCopy encodeObject:self->_alternativeProviderBundleIdentifier];
  [dictionary if_setObjectIfNonNil:v23 forKey:@"alternativeProviderBundleIdentifier"];

  v24 = [encoderCopy encodeObject:self->_ampPAFDataSetID];
  [dictionary if_setObjectIfNonNil:v24 forKey:@"ampPAFDataSetID"];

  v25 = [encoderCopy encodeObject:self->_pegasusMetaData];

  [dictionary if_setObjectIfNonNil:v25 forKey:@"pegasusMetaData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  appSelectionEnabled = self->_appSelectionEnabled;
  coderCopy = coder;
  [coderCopy encodeObject:appSelectionEnabled forKey:@"appSelectionEnabled"];
  [coderCopy encodeObject:self->_appInferred forKey:@"appInferred"];
  [coderCopy encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [coderCopy encodeObject:self->_privateMediaIntentData forKey:@"privateMediaIntentData"];
  [coderCopy encodeObject:self->_appSelectionSignalsEnabled forKey:@"appSelectionSignalsEnabled"];
  [coderCopy encodeObject:self->_appSelectionSignalsFrequencyDenominator forKey:@"appSelectionSignalsFrequencyDenominator"];
  [coderCopy encodeObject:self->_shouldSuppressCommonWholeHouseAudioRoutes forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  [coderCopy encodeObject:self->_immediatelyStartPlayback forKey:@"immediatelyStartPlayback"];
  [coderCopy encodeObject:self->_isAmbiguousPlay forKey:@"isAmbiguousPlay"];
  [coderCopy encodeObject:self->_isPersonalizedRequest forKey:@"isPersonalizedRequest"];
  [coderCopy encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [coderCopy encodeObject:self->_entityConfidenceSignalsEnabled forKey:@"entityConfidenceSignalsEnabled"];
  [coderCopy encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorInternal forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  [coderCopy encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorProd forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  [coderCopy encodeObject:self->_entityConfidenceSignalsMaxItemsToDisambiguate forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  [coderCopy encodeObject:self->_alternativeProviderBundleIdentifier forKey:@"alternativeProviderBundleIdentifier"];
  [coderCopy encodeObject:self->_ampPAFDataSetID forKey:@"ampPAFDataSetID"];
  [coderCopy encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivatePlayMediaIntentData)initWithCoder:(id)coder
{
  v32[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionEnabled"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appInferred"];
  v4 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v6 = [v4 setWithArray:v5];
  v28 = [coderCopy decodeObjectOfClasses:v6 forKey:@"audioSearchResults"];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionSignalsEnabled"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionSignalsFrequencyDenominator"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"immediatelyStartPlayback"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAmbiguousPlay"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPersonalizedRequest"];
  v7 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v9 = [v7 setWithArray:v8];
  v18 = [coderCopy decodeObjectOfClasses:v9 forKey:@"internalSignals"];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsEnabled"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternativeProviderBundleIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ampPAFDataSetID"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v25 = [(INPrivatePlayMediaIntentData *)self initWithAppSelectionEnabled:v30 appInferred:v29 audioSearchResults:v28 privateMediaIntentData:v23 appSelectionSignalsEnabled:v22 appSelectionSignalsFrequencyDenominator:v21 shouldSuppressCommonWholeHouseAudioRoutes:v27 immediatelyStartPlayback:v20 isAmbiguousPlay:v26 isPersonalizedRequest:v19 internalSignals:v18 entityConfidenceSignalsEnabled:v17 entityConfidenceSignalsFrequencyDenominatorInternal:v16 entityConfidenceSignalsFrequencyDenominatorProd:v10 entityConfidenceSignalsMaxItemsToDisambiguate:v11 alternativeProviderBundleIdentifier:v12 ampPAFDataSetID:v13 pegasusMetaData:v14];
  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      appSelectionEnabled = self->_appSelectionEnabled;
      v24 = 0;
      if (appSelectionEnabled == v5->_appSelectionEnabled || [(NSNumber *)appSelectionEnabled isEqual:?])
      {
        appInferred = self->_appInferred;
        if (appInferred == v5->_appInferred || [(NSNumber *)appInferred isEqual:?])
        {
          audioSearchResults = self->_audioSearchResults;
          if (audioSearchResults == v5->_audioSearchResults || [(NSArray *)audioSearchResults isEqual:?])
          {
            privateMediaIntentData = self->_privateMediaIntentData;
            if (privateMediaIntentData == v5->_privateMediaIntentData || [(INPrivateMediaIntentData *)privateMediaIntentData isEqual:?])
            {
              appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
              if (appSelectionSignalsEnabled == v5->_appSelectionSignalsEnabled || [(NSNumber *)appSelectionSignalsEnabled isEqual:?])
              {
                appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
                if (appSelectionSignalsFrequencyDenominator == v5->_appSelectionSignalsFrequencyDenominator || [(NSNumber *)appSelectionSignalsFrequencyDenominator isEqual:?])
                {
                  shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
                  if (shouldSuppressCommonWholeHouseAudioRoutes == v5->_shouldSuppressCommonWholeHouseAudioRoutes || [(NSNumber *)shouldSuppressCommonWholeHouseAudioRoutes isEqual:?])
                  {
                    immediatelyStartPlayback = self->_immediatelyStartPlayback;
                    if (immediatelyStartPlayback == v5->_immediatelyStartPlayback || [(NSNumber *)immediatelyStartPlayback isEqual:?])
                    {
                      isAmbiguousPlay = self->_isAmbiguousPlay;
                      if (isAmbiguousPlay == v5->_isAmbiguousPlay || [(NSNumber *)isAmbiguousPlay isEqual:?])
                      {
                        isPersonalizedRequest = self->_isPersonalizedRequest;
                        if (isPersonalizedRequest == v5->_isPersonalizedRequest || [(NSNumber *)isPersonalizedRequest isEqual:?])
                        {
                          internalSignals = self->_internalSignals;
                          if (internalSignals == v5->_internalSignals || [(NSArray *)internalSignals isEqual:?])
                          {
                            entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
                            if (entityConfidenceSignalsEnabled == v5->_entityConfidenceSignalsEnabled || [(NSNumber *)entityConfidenceSignalsEnabled isEqual:?])
                            {
                              entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
                              if (entityConfidenceSignalsFrequencyDenominatorInternal == v5->_entityConfidenceSignalsFrequencyDenominatorInternal || [(NSNumber *)entityConfidenceSignalsFrequencyDenominatorInternal isEqual:?])
                              {
                                entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
                                if (entityConfidenceSignalsFrequencyDenominatorProd == v5->_entityConfidenceSignalsFrequencyDenominatorProd || [(NSNumber *)entityConfidenceSignalsFrequencyDenominatorProd isEqual:?])
                                {
                                  entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
                                  if (entityConfidenceSignalsMaxItemsToDisambiguate == v5->_entityConfidenceSignalsMaxItemsToDisambiguate || [(NSNumber *)entityConfidenceSignalsMaxItemsToDisambiguate isEqual:?])
                                  {
                                    alternativeProviderBundleIdentifier = self->_alternativeProviderBundleIdentifier;
                                    if (alternativeProviderBundleIdentifier == v5->_alternativeProviderBundleIdentifier || [(NSString *)alternativeProviderBundleIdentifier isEqual:?])
                                    {
                                      ampPAFDataSetID = self->_ampPAFDataSetID;
                                      if (ampPAFDataSetID == v5->_ampPAFDataSetID || [(NSString *)ampPAFDataSetID isEqual:?])
                                      {
                                        pegasusMetaData = self->_pegasusMetaData;
                                        if (pegasusMetaData == v5->_pegasusMetaData || [(NSData *)pegasusMetaData isEqual:?])
                                        {
                                          v24 = 1;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_appSelectionEnabled hash];
  v4 = [(NSNumber *)self->_appInferred hash]^ v3;
  v5 = [(NSArray *)self->_audioSearchResults hash];
  v6 = v4 ^ v5 ^ [(INPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  v7 = [(NSNumber *)self->_appSelectionSignalsEnabled hash];
  v8 = v7 ^ [(NSNumber *)self->_appSelectionSignalsFrequencyDenominator hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_shouldSuppressCommonWholeHouseAudioRoutes hash];
  v10 = [(NSNumber *)self->_immediatelyStartPlayback hash];
  v11 = v10 ^ [(NSNumber *)self->_isAmbiguousPlay hash];
  v12 = v11 ^ [(NSNumber *)self->_isPersonalizedRequest hash];
  v13 = v9 ^ v12 ^ [(NSArray *)self->_internalSignals hash];
  v14 = [(NSNumber *)self->_entityConfidenceSignalsEnabled hash];
  v15 = v14 ^ [(NSNumber *)self->_entityConfidenceSignalsFrequencyDenominatorInternal hash];
  v16 = v15 ^ [(NSNumber *)self->_entityConfidenceSignalsFrequencyDenominatorProd hash];
  v17 = v16 ^ [(NSNumber *)self->_entityConfidenceSignalsMaxItemsToDisambiguate hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_alternativeProviderBundleIdentifier hash];
  v19 = [(NSString *)self->_ampPAFDataSetID hash];
  return v18 ^ v19 ^ [(NSData *)self->_pegasusMetaData hash];
}

- (INPrivatePlayMediaIntentData)initWithAppSelectionEnabled:(id)enabled appInferred:(id)inferred audioSearchResults:(id)results privateMediaIntentData:(id)data appSelectionSignalsEnabled:(id)signalsEnabled appSelectionSignalsFrequencyDenominator:(id)denominator shouldSuppressCommonWholeHouseAudioRoutes:(id)routes immediatelyStartPlayback:(id)self0 isAmbiguousPlay:(id)self1 isPersonalizedRequest:(id)self2 internalSignals:(id)self3 entityConfidenceSignalsEnabled:(id)self4 entityConfidenceSignalsFrequencyDenominatorInternal:(id)self5 entityConfidenceSignalsFrequencyDenominatorProd:(id)self6 entityConfidenceSignalsMaxItemsToDisambiguate:(id)self7 alternativeProviderBundleIdentifier:(id)self8 ampPAFDataSetID:(id)self9 pegasusMetaData:(id)metaData
{
  enabledCopy = enabled;
  inferredCopy = inferred;
  resultsCopy = results;
  dataCopy = data;
  signalsEnabledCopy = signalsEnabled;
  denominatorCopy = denominator;
  routesCopy = routes;
  playbackCopy = playback;
  playCopy = play;
  requestCopy = request;
  signalsCopy = signals;
  confidenceSignalsEnabledCopy = confidenceSignalsEnabled;
  internalCopy = internal;
  prodCopy = prod;
  disambiguateCopy = disambiguate;
  identifierCopy = identifier;
  dCopy = d;
  metaDataCopy = metaData;
  v82.receiver = self;
  v82.super_class = INPrivatePlayMediaIntentData;
  v34 = [(INPrivatePlayMediaIntentData *)&v82 init];
  if (v34)
  {
    v35 = [enabledCopy copy];
    appSelectionEnabled = v34->_appSelectionEnabled;
    v34->_appSelectionEnabled = v35;

    v37 = [inferredCopy copy];
    appInferred = v34->_appInferred;
    v34->_appInferred = v37;

    v39 = [resultsCopy copy];
    audioSearchResults = v34->_audioSearchResults;
    v34->_audioSearchResults = v39;

    v41 = [dataCopy copy];
    privateMediaIntentData = v34->_privateMediaIntentData;
    v34->_privateMediaIntentData = v41;

    v43 = [signalsEnabledCopy copy];
    appSelectionSignalsEnabled = v34->_appSelectionSignalsEnabled;
    v34->_appSelectionSignalsEnabled = v43;

    v45 = [denominatorCopy copy];
    appSelectionSignalsFrequencyDenominator = v34->_appSelectionSignalsFrequencyDenominator;
    v34->_appSelectionSignalsFrequencyDenominator = v45;

    v47 = [routesCopy copy];
    shouldSuppressCommonWholeHouseAudioRoutes = v34->_shouldSuppressCommonWholeHouseAudioRoutes;
    v34->_shouldSuppressCommonWholeHouseAudioRoutes = v47;

    v49 = [playbackCopy copy];
    immediatelyStartPlayback = v34->_immediatelyStartPlayback;
    v34->_immediatelyStartPlayback = v49;

    v51 = [playCopy copy];
    isAmbiguousPlay = v34->_isAmbiguousPlay;
    v34->_isAmbiguousPlay = v51;

    v53 = [requestCopy copy];
    isPersonalizedRequest = v34->_isPersonalizedRequest;
    v34->_isPersonalizedRequest = v53;

    v55 = [signalsCopy copy];
    internalSignals = v34->_internalSignals;
    v34->_internalSignals = v55;

    v57 = [confidenceSignalsEnabledCopy copy];
    entityConfidenceSignalsEnabled = v34->_entityConfidenceSignalsEnabled;
    v34->_entityConfidenceSignalsEnabled = v57;

    v59 = [internalCopy copy];
    entityConfidenceSignalsFrequencyDenominatorInternal = v34->_entityConfidenceSignalsFrequencyDenominatorInternal;
    v34->_entityConfidenceSignalsFrequencyDenominatorInternal = v59;

    v61 = [prodCopy copy];
    entityConfidenceSignalsFrequencyDenominatorProd = v34->_entityConfidenceSignalsFrequencyDenominatorProd;
    v34->_entityConfidenceSignalsFrequencyDenominatorProd = v61;

    v63 = [disambiguateCopy copy];
    entityConfidenceSignalsMaxItemsToDisambiguate = v34->_entityConfidenceSignalsMaxItemsToDisambiguate;
    v34->_entityConfidenceSignalsMaxItemsToDisambiguate = v63;

    v65 = [identifierCopy copy];
    alternativeProviderBundleIdentifier = v34->_alternativeProviderBundleIdentifier;
    v34->_alternativeProviderBundleIdentifier = v65;

    v67 = [dCopy copy];
    ampPAFDataSetID = v34->_ampPAFDataSetID;
    v34->_ampPAFDataSetID = v67;

    v69 = [metaDataCopy copy];
    pegasusMetaData = v34->_pegasusMetaData;
    v34->_pegasusMetaData = v69;
  }

  return v34;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = [fromCopy objectForKeyedSubscript:@"appSelectionEnabled"];
    v41 = [fromCopy objectForKeyedSubscript:@"appInferred"];
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"audioSearchResults"];
    v42 = [decoderCopy decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"privateMediaIntentData"];
    v40 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v39 = [fromCopy objectForKeyedSubscript:@"appSelectionSignalsEnabled"];
    v34 = [fromCopy objectForKeyedSubscript:@"appSelectionSignalsFrequencyDenominator"];
    v38 = [fromCopy objectForKeyedSubscript:@"shouldSuppressCommonWholeHouseAudioRoutes"];
    v37 = [fromCopy objectForKeyedSubscript:@"immediatelyStartPlayback"];
    v33 = [fromCopy objectForKeyedSubscript:@"isAmbiguousPlay"];
    v32 = [fromCopy objectForKeyedSubscript:@"isPersonalizedRequest"];
    v31 = [fromCopy objectForKeyedSubscript:@"internalSignals"];
    v28 = [fromCopy objectForKeyedSubscript:@"entityConfidenceSignalsEnabled"];
    v30 = [fromCopy objectForKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
    v13 = [fromCopy objectForKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorProd"];
    v27 = [fromCopy objectForKeyedSubscript:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"alternativeProviderBundleIdentifier"];
    v16 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"ampPAFDataSetID"];
    v19 = decoderCopy;
    v20 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"pegasusMetaData"];
    v23 = [decoderCopy decodeObjectOfClass:v21 from:v22];

    v24 = [selfCopy alloc];
    v36 = v19;
    v29 = [v24 initWithAppSelectionEnabled:v43 appInferred:v41 audioSearchResults:v42 privateMediaIntentData:v40 appSelectionSignalsEnabled:v39 appSelectionSignalsFrequencyDenominator:v34 shouldSuppressCommonWholeHouseAudioRoutes:v38 immediatelyStartPlayback:v37 isAmbiguousPlay:v33 isPersonalizedRequest:v32 internalSignals:v31 entityConfidenceSignalsEnabled:v28 entityConfidenceSignalsFrequencyDenominatorInternal:v30 entityConfidenceSignalsFrequencyDenominatorProd:v13 entityConfidenceSignalsMaxItemsToDisambiguate:v27 alternativeProviderBundleIdentifier:v16 ampPAFDataSetID:v20 pegasusMetaData:v23];

    v25 = v29;
    decoderCopy = v36;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  v15 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioSearchResults = [(INPrivatePlayMediaIntentData *)self audioSearchResults];
  v6 = [audioSearchResults countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(audioSearchResults);
        }

        [*(*(&v10 + 1) + 8 * v9++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v7 != v9);
      v7 = [audioSearchResults countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_intents_cacheableObjects
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  audioSearchResults = [(INPrivatePlayMediaIntentData *)self audioSearchResults];
  v5 = [audioSearchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(audioSearchResults);
        }

        _intents_cacheableObjects = [*(*(&v13 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects];

        ++v8;
      }

      while (v6 != v8);
      v6 = [audioSearchResults countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end