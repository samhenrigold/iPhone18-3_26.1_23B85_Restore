@interface INPrivateMediaItemValueData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivateMediaItemValueData)initWithCoder:(id)coder;
- (INPrivateMediaItemValueData)initWithRecommendationId:(id)id assetInfo:(id)info sharedUserIdFromPlayableMusicAccount:(id)account punchoutURI:(id)i requiresSubscription:(id)subscription provider:(id)provider isAvailable:(id)available isHardBan:(id)self0 bundleId:(id)self1 universalResourceLink:(id)self2 providerAppName:(id)self3 internalSignals:(id)self4 ampConfidenceScore:(id)self5 ampConfidenceLevel:(int64_t)self6 pegasusMetaData:(id)self7 mediaSubItems:(id)self8;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPrivateMediaItemValueData

- (id)_dictionaryRepresentation
{
  v50[16] = *MEMORY[0x1E69E9840];
  recommendationId = self->_recommendationId;
  v48 = recommendationId;
  v49[0] = @"recommendationId";
  if (!recommendationId)
  {
    recommendationId = [MEMORY[0x1E695DFB0] null];
  }

  v38 = recommendationId;
  v50[0] = recommendationId;
  v49[1] = @"assetInfo";
  assetInfo = self->_assetInfo;
  v47 = assetInfo;
  if (!assetInfo)
  {
    assetInfo = [MEMORY[0x1E695DFB0] null];
  }

  v37 = assetInfo;
  v50[1] = assetInfo;
  v49[2] = @"sharedUserIdFromPlayableMusicAccount";
  sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
  v46 = sharedUserIdFromPlayableMusicAccount;
  if (!sharedUserIdFromPlayableMusicAccount)
  {
    sharedUserIdFromPlayableMusicAccount = [MEMORY[0x1E695DFB0] null];
  }

  v36 = sharedUserIdFromPlayableMusicAccount;
  v50[2] = sharedUserIdFromPlayableMusicAccount;
  v49[3] = @"punchoutURI";
  punchoutURI = self->_punchoutURI;
  v45 = punchoutURI;
  if (!punchoutURI)
  {
    punchoutURI = [MEMORY[0x1E695DFB0] null];
  }

  v35 = punchoutURI;
  v50[3] = punchoutURI;
  v49[4] = @"requiresSubscription";
  requiresSubscription = self->_requiresSubscription;
  v44 = requiresSubscription;
  if (!requiresSubscription)
  {
    requiresSubscription = [MEMORY[0x1E695DFB0] null];
  }

  v34 = requiresSubscription;
  v50[4] = requiresSubscription;
  v49[5] = @"provider";
  provider = self->_provider;
  v43 = provider;
  if (!provider)
  {
    provider = [MEMORY[0x1E695DFB0] null];
  }

  v33 = provider;
  v50[5] = provider;
  v49[6] = @"isAvailable";
  isAvailable = self->_isAvailable;
  v42 = isAvailable;
  if (!isAvailable)
  {
    isAvailable = [MEMORY[0x1E695DFB0] null];
  }

  v32 = isAvailable;
  v50[6] = isAvailable;
  v49[7] = @"isHardBan";
  isHardBan = self->_isHardBan;
  v41 = isHardBan;
  if (!isHardBan)
  {
    isHardBan = [MEMORY[0x1E695DFB0] null];
  }

  v31 = isHardBan;
  v50[7] = isHardBan;
  v49[8] = @"bundleId";
  bundleId = self->_bundleId;
  v40 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x1E695DFB0] null];
  }

  v30 = bundleId;
  v50[8] = bundleId;
  v49[9] = @"universalResourceLink";
  universalResourceLink = self->_universalResourceLink;
  null = universalResourceLink;
  if (!universalResourceLink)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v50[9] = null;
  v49[10] = @"providerAppName";
  providerAppName = self->_providerAppName;
  null2 = providerAppName;
  if (!providerAppName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v50[10] = null2;
  v49[11] = @"internalSignals";
  internalSignals = self->_internalSignals;
  null3 = internalSignals;
  if (!internalSignals)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v50[11] = null3;
  v49[12] = @"ampConfidenceScore";
  ampConfidenceScore = self->_ampConfidenceScore;
  null4 = ampConfidenceScore;
  if (!ampConfidenceScore)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v50[12] = null4;
  v49[13] = @"ampConfidenceLevel";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_ampConfidenceLevel, v26}];
  v50[13] = v20;
  v49[14] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  null5 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v50[14] = null5;
  v49[15] = @"mediaSubItems";
  mediaSubItems = self->_mediaSubItems;
  null6 = mediaSubItems;
  if (!mediaSubItems)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v50[15] = null6;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:16];
  if (mediaSubItems)
  {
    if (pegasusMetaData)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (pegasusMetaData)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (ampConfidenceScore)
  {
    if (internalSignals)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (internalSignals)
    {
LABEL_35:
      if (providerAppName)
      {
        goto LABEL_36;
      }

LABEL_62:

      if (universalResourceLink)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  if (!providerAppName)
  {
    goto LABEL_62;
  }

LABEL_36:
  if (universalResourceLink)
  {
    goto LABEL_37;
  }

LABEL_63:

LABEL_37:
  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  return v39;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateMediaItemValueData;
  v6 = [(INPrivateMediaItemValueData *)&v11 description];
  _dictionaryRepresentation = [(INPrivateMediaItemValueData *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_recommendationId];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"recommendationId"];

  v9 = [encoderCopy encodeObject:self->_assetInfo];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"assetInfo"];

  v10 = [encoderCopy encodeObject:self->_sharedUserIdFromPlayableMusicAccount];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"sharedUserIdFromPlayableMusicAccount"];

  v11 = [encoderCopy encodeObject:self->_punchoutURI];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"punchoutURI"];

  v12 = [encoderCopy encodeObject:self->_requiresSubscription];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"requiresSubscription"];

  v13 = [encoderCopy encodeObject:self->_provider];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"provider"];

  v14 = [encoderCopy encodeObject:self->_isAvailable];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"isAvailable"];

  v15 = [encoderCopy encodeObject:self->_isHardBan];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"isHardBan"];

  v16 = [encoderCopy encodeObject:self->_bundleId];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"bundleId"];

  v17 = [encoderCopy encodeObject:self->_universalResourceLink];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"universalResourceLink"];

  v18 = [encoderCopy encodeObject:self->_providerAppName];
  [dictionary if_setObjectIfNonNil:v18 forKey:@"providerAppName"];

  v19 = [encoderCopy encodeObject:self->_internalSignals];
  [dictionary if_setObjectIfNonNil:v19 forKey:@"internalSignals"];

  v20 = [encoderCopy encodeObject:self->_ampConfidenceScore];
  [dictionary if_setObjectIfNonNil:v20 forKey:@"ampConfidenceScore"];

  v21 = self->_ampConfidenceLevel - 1;
  if (v21 > 2)
  {
    v22 = @"unknown";
  }

  else
  {
    v22 = off_1E7287F98[v21];
  }

  v23 = v22;
  [dictionary if_setObjectIfNonNil:v23 forKey:@"ampConfidenceLevel"];

  v24 = [encoderCopy encodeObject:self->_pegasusMetaData];
  [dictionary if_setObjectIfNonNil:v24 forKey:@"pegasusMetaData"];

  v25 = [encoderCopy encodeObject:self->_mediaSubItems];

  [dictionary if_setObjectIfNonNil:v25 forKey:@"mediaSubItems"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  recommendationId = self->_recommendationId;
  coderCopy = coder;
  [coderCopy encodeObject:recommendationId forKey:@"recommendationId"];
  [coderCopy encodeObject:self->_assetInfo forKey:@"assetInfo"];
  [coderCopy encodeObject:self->_sharedUserIdFromPlayableMusicAccount forKey:@"sharedUserIdFromPlayableMusicAccount"];
  [coderCopy encodeObject:self->_punchoutURI forKey:@"punchoutURI"];
  [coderCopy encodeObject:self->_requiresSubscription forKey:@"requiresSubscription"];
  [coderCopy encodeObject:self->_provider forKey:@"provider"];
  [coderCopy encodeObject:self->_isAvailable forKey:@"isAvailable"];
  [coderCopy encodeObject:self->_isHardBan forKey:@"isHardBan"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_universalResourceLink forKey:@"universalResourceLink"];
  [coderCopy encodeObject:self->_providerAppName forKey:@"providerAppName"];
  [coderCopy encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [coderCopy encodeObject:self->_ampConfidenceScore forKey:@"ampConfidenceScore"];
  [coderCopy encodeInteger:self->_ampConfidenceLevel forKey:@"ampConfidenceLevel"];
  [coderCopy encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
  [coderCopy encodeObject:self->_mediaSubItems forKey:@"mediaSubItems"];
}

- (INPrivateMediaItemValueData)initWithCoder:(id)coder
{
  v54[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v52 = [coderCopy decodeObjectOfClasses:v6 forKey:@"recommendationId"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v51 = [coderCopy decodeObjectOfClasses:v9 forKey:@"assetInfo"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v50 = [coderCopy decodeObjectOfClasses:v12 forKey:@"sharedUserIdFromPlayableMusicAccount"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v49 = [coderCopy decodeObjectOfClasses:v15 forKey:@"punchoutURI"];

  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresSubscription"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v45 = [coderCopy decodeObjectOfClasses:v18 forKey:@"provider"];

  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAvailable"];
  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isHardBan"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v42 = [coderCopy decodeObjectOfClasses:v21 forKey:@"bundleId"];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v41 = [coderCopy decodeObjectOfClasses:v24 forKey:@"universalResourceLink"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"providerAppName"];

  v29 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v54[2] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v31 = [v29 setWithArray:v30];
  v40 = [coderCopy decodeObjectOfClasses:v31 forKey:@"internalSignals"];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ampConfidenceScore"];
  v33 = [coderCopy decodeIntegerForKey:@"ampConfidenceLevel"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];
  v35 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v37 = [v35 setWithArray:v36];
  v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"mediaSubItems"];

  v48 = [(INPrivateMediaItemValueData *)self initWithRecommendationId:v52 assetInfo:v51 sharedUserIdFromPlayableMusicAccount:v50 punchoutURI:v49 requiresSubscription:v46 provider:v45 isAvailable:v44 isHardBan:v43 bundleId:v42 universalResourceLink:v41 providerAppName:v28 internalSignals:v40 ampConfidenceScore:v32 ampConfidenceLevel:v33 pegasusMetaData:v34 mediaSubItems:v38];
  return v48;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      recommendationId = self->_recommendationId;
      v21 = 0;
      if (recommendationId == v5->_recommendationId || [(NSString *)recommendationId isEqual:?])
      {
        assetInfo = self->_assetInfo;
        if (assetInfo == v5->_assetInfo || [(NSString *)assetInfo isEqual:?])
        {
          sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
          if (sharedUserIdFromPlayableMusicAccount == v5->_sharedUserIdFromPlayableMusicAccount || [(NSString *)sharedUserIdFromPlayableMusicAccount isEqual:?])
          {
            punchoutURI = self->_punchoutURI;
            if (punchoutURI == v5->_punchoutURI || [(NSString *)punchoutURI isEqual:?])
            {
              requiresSubscription = self->_requiresSubscription;
              if (requiresSubscription == v5->_requiresSubscription || [(NSNumber *)requiresSubscription isEqual:?])
              {
                provider = self->_provider;
                if (provider == v5->_provider || [(NSString *)provider isEqual:?])
                {
                  isAvailable = self->_isAvailable;
                  if (isAvailable == v5->_isAvailable || [(NSNumber *)isAvailable isEqual:?])
                  {
                    isHardBan = self->_isHardBan;
                    if (isHardBan == v5->_isHardBan || [(NSNumber *)isHardBan isEqual:?])
                    {
                      bundleId = self->_bundleId;
                      if (bundleId == v5->_bundleId || [(NSString *)bundleId isEqual:?])
                      {
                        universalResourceLink = self->_universalResourceLink;
                        if (universalResourceLink == v5->_universalResourceLink || [(NSString *)universalResourceLink isEqual:?])
                        {
                          providerAppName = self->_providerAppName;
                          if (providerAppName == v5->_providerAppName || [(NSString *)providerAppName isEqual:?])
                          {
                            internalSignals = self->_internalSignals;
                            if (internalSignals == v5->_internalSignals || [(NSArray *)internalSignals isEqual:?])
                            {
                              ampConfidenceScore = self->_ampConfidenceScore;
                              if ((ampConfidenceScore == v5->_ampConfidenceScore || [(NSNumber *)ampConfidenceScore isEqual:?]) && self->_ampConfidenceLevel == v5->_ampConfidenceLevel)
                              {
                                pegasusMetaData = self->_pegasusMetaData;
                                if (pegasusMetaData == v5->_pegasusMetaData || [(NSData *)pegasusMetaData isEqual:?])
                                {
                                  mediaSubItems = self->_mediaSubItems;
                                  if (mediaSubItems == v5->_mediaSubItems || [(NSArray *)mediaSubItems isEqual:?])
                                  {
                                    v21 = 1;
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
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recommendationId hash];
  v4 = [(NSString *)self->_assetInfo hash]^ v3;
  v5 = [(NSString *)self->_sharedUserIdFromPlayableMusicAccount hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_punchoutURI hash];
  v7 = [(NSNumber *)self->_requiresSubscription hash];
  v8 = v7 ^ [(NSString *)self->_provider hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_isAvailable hash];
  v10 = [(NSNumber *)self->_isHardBan hash];
  v11 = v10 ^ [(NSString *)self->_bundleId hash];
  v12 = v11 ^ [(NSString *)self->_universalResourceLink hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_providerAppName hash];
  v14 = [(NSArray *)self->_internalSignals hash];
  v15 = v14 ^ [(NSNumber *)self->_ampConfidenceScore hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_ampConfidenceLevel];
  v17 = v15 ^ [v16 hash];
  v18 = v13 ^ v17 ^ [(NSData *)self->_pegasusMetaData hash];
  v19 = [(NSArray *)self->_mediaSubItems hash];

  return v18 ^ v19;
}

- (INPrivateMediaItemValueData)initWithRecommendationId:(id)id assetInfo:(id)info sharedUserIdFromPlayableMusicAccount:(id)account punchoutURI:(id)i requiresSubscription:(id)subscription provider:(id)provider isAvailable:(id)available isHardBan:(id)self0 bundleId:(id)self1 universalResourceLink:(id)self2 providerAppName:(id)self3 internalSignals:(id)self4 ampConfidenceScore:(id)self5 ampConfidenceLevel:(int64_t)self6 pegasusMetaData:(id)self7 mediaSubItems:(id)self8
{
  idCopy = id;
  infoCopy = info;
  accountCopy = account;
  iCopy = i;
  subscriptionCopy = subscription;
  providerCopy = provider;
  v27 = iCopy;
  availableCopy = available;
  v28 = accountCopy;
  banCopy = ban;
  v29 = infoCopy;
  bundleIdCopy = bundleId;
  linkCopy = link;
  nameCopy = name;
  signalsCopy = signals;
  scoreCopy = score;
  dataCopy = data;
  itemsCopy = items;
  v74.receiver = self;
  v74.super_class = INPrivateMediaItemValueData;
  v35 = [(INPrivateMediaItemValueData *)&v74 init];
  if (v35)
  {
    v36 = [idCopy copy];
    recommendationId = v35->_recommendationId;
    v35->_recommendationId = v36;

    v38 = [v29 copy];
    assetInfo = v35->_assetInfo;
    v35->_assetInfo = v38;

    v40 = [v28 copy];
    sharedUserIdFromPlayableMusicAccount = v35->_sharedUserIdFromPlayableMusicAccount;
    v35->_sharedUserIdFromPlayableMusicAccount = v40;

    v42 = [v27 copy];
    punchoutURI = v35->_punchoutURI;
    v35->_punchoutURI = v42;

    v44 = [subscriptionCopy copy];
    requiresSubscription = v35->_requiresSubscription;
    v35->_requiresSubscription = v44;

    v46 = [providerCopy copy];
    provider = v35->_provider;
    v35->_provider = v46;

    v48 = [availableCopy copy];
    isAvailable = v35->_isAvailable;
    v35->_isAvailable = v48;

    v50 = [banCopy copy];
    isHardBan = v35->_isHardBan;
    v35->_isHardBan = v50;

    v52 = [bundleIdCopy copy];
    bundleId = v35->_bundleId;
    v35->_bundleId = v52;

    v54 = [linkCopy copy];
    universalResourceLink = v35->_universalResourceLink;
    v35->_universalResourceLink = v54;

    v56 = [nameCopy copy];
    providerAppName = v35->_providerAppName;
    v35->_providerAppName = v56;

    v58 = [signalsCopy copy];
    internalSignals = v35->_internalSignals;
    v35->_internalSignals = v58;

    v60 = [scoreCopy copy];
    ampConfidenceScore = v35->_ampConfidenceScore;
    v35->_ampConfidenceScore = v60;

    v35->_ampConfidenceLevel = level;
    v62 = [dataCopy copy];
    pegasusMetaData = v35->_pegasusMetaData;
    v35->_pegasusMetaData = v62;

    v64 = [itemsCopy copy];
    mediaSubItems = v35->_mediaSubItems;
    v35->_mediaSubItems = v64;
  }

  return v35;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [fromCopy objectForKeyedSubscript:@"recommendationId"];
    v28 = [fromCopy objectForKeyedSubscript:@"assetInfo"];
    v30 = [fromCopy objectForKeyedSubscript:@"sharedUserIdFromPlayableMusicAccount"];
    v29 = [fromCopy objectForKeyedSubscript:@"punchoutURI"];
    v27 = [fromCopy objectForKeyedSubscript:@"requiresSubscription"];
    v25 = [fromCopy objectForKeyedSubscript:@"provider"];
    v26 = [fromCopy objectForKeyedSubscript:@"isAvailable"];
    v24 = [fromCopy objectForKeyedSubscript:@"isHardBan"];
    v23 = [fromCopy objectForKeyedSubscript:@"bundleId"];
    v22 = [fromCopy objectForKeyedSubscript:@"universalResourceLink"];
    v9 = [fromCopy objectForKeyedSubscript:@"providerAppName"];
    v10 = [fromCopy objectForKeyedSubscript:@"internalSignals"];
    v11 = [fromCopy objectForKeyedSubscript:@"ampConfidenceScore"];
    v12 = [fromCopy objectForKeyedSubscript:@"ampConfidenceLevel"];
    v13 = INMediaConfidenceLevelWithString(v12);

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"pegasusMetaData"];
    v21 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v16 = objc_opt_class();
    v17 = [fromCopy objectForKeyedSubscript:@"mediaSubItems"];
    v18 = [decoderCopy decodeObjectsOfClass:v16 from:v17];

    v19 = [[self alloc] initWithRecommendationId:v31 assetInfo:v28 sharedUserIdFromPlayableMusicAccount:v30 punchoutURI:v29 requiresSubscription:v27 provider:v25 isAvailable:v26 isHardBan:v24 bundleId:v23 universalResourceLink:v22 providerAppName:v9 internalSignals:v10 ampConfidenceScore:v11 ampConfidenceLevel:v13 pegasusMetaData:v21 mediaSubItems:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end