@interface BMShareEvent
+ (BMShareEvent)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)columns;
+ (id)protoFields;
- (BMShareEvent)initWithDeviceIdentifier:(id)identifier sessionId:(id)id trialIdentifiers:(id)identifiers version:(id)version candidates:(id)candidates testKey:(id)key madResponseStatus:(int)status isFallbackFetch:(id)self0 isSharePlayAvailable:(id)self1 appSharedFrom:(int)self2 feedbackEvents:(id)self3 typeOfContent:(id)self4 isInPhoneCall:(id)self5 timeSinceLastShare:(id)self6 isScreenShot:(id)self7 photoFeatures:(id)self8;
- (BMShareEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_candidatesJSONArray;
- (id)_feedbackEventsJSONArray;
- (id)_photoFeaturesJSONArray;
- (id)_typeOfContentJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMShareEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceIdentifier = [(BMShareEvent *)self deviceIdentifier];
    deviceIdentifier2 = [v5 deviceIdentifier];
    v8 = deviceIdentifier2;
    if (deviceIdentifier == deviceIdentifier2)
    {
    }

    else
    {
      deviceIdentifier3 = [(BMShareEvent *)self deviceIdentifier];
      deviceIdentifier4 = [v5 deviceIdentifier];
      v11 = [deviceIdentifier3 isEqual:deviceIdentifier4];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    sessionId = [(BMShareEvent *)self sessionId];
    sessionId2 = [v5 sessionId];
    v15 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMShareEvent *)self sessionId];
      sessionId4 = [v5 sessionId];
      v18 = [sessionId3 isEqual:sessionId4];

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    trialIdentifiers = [(BMShareEvent *)self trialIdentifiers];
    trialIdentifiers2 = [v5 trialIdentifiers];
    v21 = trialIdentifiers2;
    if (trialIdentifiers == trialIdentifiers2)
    {
    }

    else
    {
      trialIdentifiers3 = [(BMShareEvent *)self trialIdentifiers];
      trialIdentifiers4 = [v5 trialIdentifiers];
      v24 = [trialIdentifiers3 isEqual:trialIdentifiers4];

      if (!v24)
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMShareEvent *)self hasVersion])
      {
        goto LABEL_62;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_62;
      }

      version = [(BMShareEvent *)self version];
      if (version != [v5 version])
      {
        goto LABEL_62;
      }
    }

    candidates = [(BMShareEvent *)self candidates];
    candidates2 = [v5 candidates];
    v28 = candidates2;
    if (candidates == candidates2)
    {
    }

    else
    {
      candidates3 = [(BMShareEvent *)self candidates];
      candidates4 = [v5 candidates];
      v31 = [candidates3 isEqual:candidates4];

      if (!v31)
      {
        goto LABEL_62;
      }
    }

    testKey = [(BMShareEvent *)self testKey];
    testKey2 = [v5 testKey];
    v34 = testKey2;
    if (testKey == testKey2)
    {
    }

    else
    {
      testKey3 = [(BMShareEvent *)self testKey];
      testKey4 = [v5 testKey];
      v37 = [testKey3 isEqual:testKey4];

      if (!v37)
      {
        goto LABEL_62;
      }
    }

    madResponseStatus = [(BMShareEvent *)self madResponseStatus];
    if (madResponseStatus != [v5 madResponseStatus])
    {
      goto LABEL_62;
    }

    if (-[BMShareEvent hasIsFallbackFetch](self, "hasIsFallbackFetch") || [v5 hasIsFallbackFetch])
    {
      if (![(BMShareEvent *)self hasIsFallbackFetch])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsFallbackFetch])
      {
        goto LABEL_62;
      }

      isFallbackFetch = [(BMShareEvent *)self isFallbackFetch];
      if (isFallbackFetch != [v5 isFallbackFetch])
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasIsSharePlayAvailable](self, "hasIsSharePlayAvailable") || [v5 hasIsSharePlayAvailable])
    {
      if (![(BMShareEvent *)self hasIsSharePlayAvailable])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsSharePlayAvailable])
      {
        goto LABEL_62;
      }

      isSharePlayAvailable = [(BMShareEvent *)self isSharePlayAvailable];
      if (isSharePlayAvailable != [v5 isSharePlayAvailable])
      {
        goto LABEL_62;
      }
    }

    appSharedFrom = [(BMShareEvent *)self appSharedFrom];
    if (appSharedFrom != [v5 appSharedFrom])
    {
      goto LABEL_62;
    }

    feedbackEvents = [(BMShareEvent *)self feedbackEvents];
    feedbackEvents2 = [v5 feedbackEvents];
    v44 = feedbackEvents2;
    if (feedbackEvents == feedbackEvents2)
    {
    }

    else
    {
      feedbackEvents3 = [(BMShareEvent *)self feedbackEvents];
      feedbackEvents4 = [v5 feedbackEvents];
      v47 = [feedbackEvents3 isEqual:feedbackEvents4];

      if (!v47)
      {
        goto LABEL_62;
      }
    }

    typeOfContent = [(BMShareEvent *)self typeOfContent];
    typeOfContent2 = [v5 typeOfContent];
    v50 = typeOfContent2;
    if (typeOfContent == typeOfContent2)
    {
    }

    else
    {
      typeOfContent3 = [(BMShareEvent *)self typeOfContent];
      typeOfContent4 = [v5 typeOfContent];
      v53 = [typeOfContent3 isEqual:typeOfContent4];

      if (!v53)
      {
        goto LABEL_62;
      }
    }

    if (-[BMShareEvent hasIsInPhoneCall](self, "hasIsInPhoneCall") || [v5 hasIsInPhoneCall])
    {
      if (![(BMShareEvent *)self hasIsInPhoneCall])
      {
        goto LABEL_62;
      }

      if (![v5 hasIsInPhoneCall])
      {
        goto LABEL_62;
      }

      isInPhoneCall = [(BMShareEvent *)self isInPhoneCall];
      if (isInPhoneCall != [v5 isInPhoneCall])
      {
        goto LABEL_62;
      }
    }

    timeSinceLastShare = [(BMShareEvent *)self timeSinceLastShare];
    timeSinceLastShare2 = [v5 timeSinceLastShare];
    v57 = timeSinceLastShare2;
    if (timeSinceLastShare == timeSinceLastShare2)
    {
    }

    else
    {
      timeSinceLastShare3 = [(BMShareEvent *)self timeSinceLastShare];
      timeSinceLastShare4 = [v5 timeSinceLastShare];
      v60 = [timeSinceLastShare3 isEqual:timeSinceLastShare4];

      if (!v60)
      {
        goto LABEL_62;
      }
    }

    if (!-[BMShareEvent hasIsScreenShot](self, "hasIsScreenShot") && ![v5 hasIsScreenShot] || -[BMShareEvent hasIsScreenShot](self, "hasIsScreenShot") && objc_msgSend(v5, "hasIsScreenShot") && (v61 = -[BMShareEvent isScreenShot](self, "isScreenShot"), v61 == objc_msgSend(v5, "isScreenShot")))
    {
      photoFeatures = [(BMShareEvent *)self photoFeatures];
      photoFeatures2 = [v5 photoFeatures];
      if (photoFeatures == photoFeatures2)
      {
        v12 = 1;
      }

      else
      {
        photoFeatures3 = [(BMShareEvent *)self photoFeatures];
        photoFeatures4 = [v5 photoFeatures];
        v12 = [photoFeatures3 isEqual:photoFeatures4];
      }

      goto LABEL_63;
    }

LABEL_62:
    v12 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v12 = 0;
LABEL_64:

  return v12;
}

- (id)jsonDictionary
{
  v56[16] = *MEMORY[0x1E69E9840];
  deviceIdentifier = [(BMShareEvent *)self deviceIdentifier];
  sessionId = [(BMShareEvent *)self sessionId];
  trialIdentifiers = [(BMShareEvent *)self trialIdentifiers];
  jsonDictionary = [trialIdentifiers jsonDictionary];

  if ([(BMShareEvent *)self hasVersion])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent version](self, "version")}];
  }

  else
  {
    v7 = 0;
  }

  _candidatesJSONArray = [(BMShareEvent *)self _candidatesJSONArray];
  testKey = [(BMShareEvent *)self testKey];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent madResponseStatus](self, "madResponseStatus")}];
  if ([(BMShareEvent *)self hasIsFallbackFetch])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isFallbackFetch](self, "isFallbackFetch")}];
  }

  else
  {
    v53 = 0;
  }

  if ([(BMShareEvent *)self hasIsSharePlayAvailable])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isSharePlayAvailable](self, "isSharePlayAvailable")}];
  }

  else
  {
    v52 = 0;
  }

  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent appSharedFrom](self, "appSharedFrom")}];
  _feedbackEventsJSONArray = [(BMShareEvent *)self _feedbackEventsJSONArray];
  _typeOfContentJSONArray = [(BMShareEvent *)self _typeOfContentJSONArray];
  if ([(BMShareEvent *)self hasIsInPhoneCall])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isInPhoneCall](self, "isInPhoneCall")}];
  }

  else
  {
    v48 = 0;
  }

  timeSinceLastShare = [(BMShareEvent *)self timeSinceLastShare];
  jsonDictionary2 = [timeSinceLastShare jsonDictionary];

  if ([(BMShareEvent *)self hasIsScreenShot])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isScreenShot](self, "isScreenShot")}];
  }

  else
  {
    v46 = 0;
  }

  _photoFeaturesJSONArray = [(BMShareEvent *)self _photoFeaturesJSONArray];
  v55[0] = @"deviceIdentifier";
  null = deviceIdentifier;
  if (!deviceIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null;
  v56[0] = null;
  v55[1] = @"sessionId";
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null2;
  v56[1] = null2;
  v55[2] = @"trialIdentifiers";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null3;
  v56[2] = null3;
  v55[3] = @"version";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null4;
  v56[3] = null4;
  v55[4] = @"candidates";
  null5 = _candidatesJSONArray;
  if (!_candidatesJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null5;
  v56[4] = null5;
  v55[5] = @"testKey";
  null6 = testKey;
  if (!testKey)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null6;
  v56[5] = null6;
  v55[6] = @"madResponseStatus";
  null7 = v54;
  if (!v54)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v56[6] = null7;
  v55[7] = @"isFallbackFetch";
  null8 = v53;
  if (!v53)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v56[7] = null8;
  v55[8] = @"isSharePlayAvailable";
  null9 = v52;
  if (!v52)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = _photoFeaturesJSONArray;
  v56[8] = null9;
  v55[9] = @"appSharedFrom";
  null10 = v51;
  if (!v51)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = _candidatesJSONArray;
  v31 = null10;
  v56[9] = null10;
  v55[10] = @"feedbackEvents";
  null11 = _feedbackEventsJSONArray;
  if (!_feedbackEventsJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = testKey;
  v44 = deviceIdentifier;
  v56[10] = null11;
  v55[11] = @"typeOfContent";
  null12 = _typeOfContentJSONArray;
  if (!_typeOfContentJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null7;
  v24 = jsonDictionary;
  v56[11] = null12;
  v55[12] = @"isInPhoneCall";
  null13 = v48;
  if (!v48)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null8;
  v26 = sessionId;
  v56[12] = null13;
  v55[13] = @"timeSinceLastShare";
  null14 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v55[14] = @"isScreenShot";
  null15 = v46;
  if (!v46)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = null15;
  v55[15] = @"photoFeatures";
  null16 = v45;
  if (!v45)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v56[15] = null16;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{16, v31}];
  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!jsonDictionary2)
  {
  }

  if (!v48)
  {
  }

  if (!_typeOfContentJSONArray)
  {
  }

  if (!_feedbackEventsJSONArray)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (v54)
  {
    if (v42)
    {
      goto LABEL_68;
    }
  }

  else
  {

    if (v42)
    {
LABEL_68:
      if (v43)
      {
        goto LABEL_69;
      }

      goto LABEL_78;
    }
  }

  if (v43)
  {
LABEL_69:
    if (v7)
    {
      goto LABEL_70;
    }

    goto LABEL_79;
  }

LABEL_78:

  if (v7)
  {
LABEL_70:
    if (v24)
    {
      goto LABEL_71;
    }

    goto LABEL_80;
  }

LABEL_79:

  if (v24)
  {
LABEL_71:
    if (v26)
    {
      goto LABEL_72;
    }

LABEL_81:

    if (v44)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

LABEL_80:

  if (!v26)
  {
    goto LABEL_81;
  }

LABEL_72:
  if (v44)
  {
    goto LABEL_73;
  }

LABEL_82:

LABEL_73:

  return v41;
}

- (id)_photoFeaturesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  photoFeatures = [(BMShareEvent *)self photoFeatures];
  v5 = [photoFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(photoFeatures);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [photoFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_typeOfContentJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  typeOfContent = [(BMShareEvent *)self typeOfContent];
  v5 = [typeOfContent countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(typeOfContent);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [typeOfContent countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_feedbackEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  feedbackEvents = [(BMShareEvent *)self feedbackEvents];
  v5 = [feedbackEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(feedbackEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [feedbackEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_candidatesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  candidates = [(BMShareEvent *)self candidates];
  v5 = [candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(candidates);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [candidates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMShareEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v337[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v261 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v261 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    v262 = v8;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v260 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v260 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"trialIdentifiers"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v258 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v10;
        v285 = 0;
        v258 = [[BMTrialIdentifiers alloc] initWithJSONDictionary:v31 error:&v285];
        v32 = v285;
        if (v32)
        {
          v33 = v261;
          if (error)
          {
            v32 = v32;
            *error = v32;
          }

          selfCopy2 = 0;
          goto LABEL_249;
        }

LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"version"];
        v257 = v11;
        if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v53 = v7;
              v54 = objc_alloc(MEMORY[0x1E696ABC0]);
              v55 = *MEMORY[0x1E698F240];
              v330 = *MEMORY[0x1E696A578];
              errorCopy = error;
              v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
              v331 = v14;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
              v58 = v54;
              v7 = v53;
              v264 = v57;
              v59 = [v58 initWithDomain:v55 code:2 userInfo:?];
              v13 = 0;
              selfCopy2 = 0;
              *errorCopy = v59;
              v33 = v261;

              goto LABEL_247;
            }

            v13 = 0;
            selfCopy2 = 0;
            v33 = v261;
LABEL_248:

            v31 = v10;
LABEL_249:
            v45 = v258;
            goto LABEL_250;
          }

          v254 = v7;
          errorCopy3 = error;
          v13 = v12;
        }

        else
        {
          v254 = v7;
          errorCopy3 = error;
          v13 = 0;
        }

        v14 = [dictionaryCopy objectForKeyedSubscript:@"candidates"];
        null = [MEMORY[0x1E695DFB0] null];
        v16 = [v14 isEqual:null];

        selfCopy = self;
        v259 = v10;
        if (v16)
        {
          v253 = v13;

          v14 = 0;
          goto LABEL_22;
        }

        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v253 = v13;
LABEL_22:
          v263 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
          v281 = 0u;
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v14 = v14;
          v17 = [v14 countByEnumeratingWithState:&v281 objects:v327 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v282;
            do
            {
              v20 = dictionaryCopy;
              for (i = 0; i != v18; ++i)
              {
                if (*v282 != v19)
                {
                  objc_enumerationMutation(v14);
                }

                v22 = *(*(&v281 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = errorCopy3;
                  if (errorCopy3)
                  {
                    v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v62 = *MEMORY[0x1E698F240];
                    v325 = *MEMORY[0x1E696A578];
                    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidates"];
                    v326 = v24;
                    v63 = MEMORY[0x1E695DF20];
                    v64 = &v326;
                    v65 = &v325;
                    goto LABEL_58;
                  }

LABEL_65:
                  selfCopy2 = 0;
                  v23 = v14;
                  dictionaryCopy = v20;
                  v33 = v261;
                  v10 = v259;
                  v13 = v253;
LABEL_245:

                  v7 = v254;
                  goto LABEL_247;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v60 = errorCopy3;
                  if (!errorCopy3)
                  {
                    goto LABEL_65;
                  }

                  v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v62 = *MEMORY[0x1E698F240];
                  v323 = *MEMORY[0x1E696A578];
                  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidates"];
                  v324 = v24;
                  v63 = MEMORY[0x1E695DF20];
                  v64 = &v324;
                  v65 = &v323;
LABEL_58:
                  v30 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];
                  v66 = [v61 initWithDomain:v62 code:2 userInfo:v30];
                  selfCopy2 = 0;
                  *v60 = v66;
                  v23 = v14;
LABEL_62:
                  dictionaryCopy = v20;
                  v33 = v261;
                  v10 = v259;
                  v13 = v253;
                  goto LABEL_243;
                }

                v23 = v14;
                v24 = v22;
                v25 = [BMCandidate alloc];
                v280 = 0;
                v26 = [(BMCandidate *)v25 initWithJSONDictionary:v24 error:&v280];
                v27 = v280;
                if (v27)
                {
                  v30 = v27;
                  if (errorCopy3)
                  {
                    v67 = v27;
                    *errorCopy3 = v30;
                  }

                  selfCopy2 = 0;
                  v14 = v23;
                  goto LABEL_62;
                }

                [v263 addObject:v26];

                v14 = v23;
              }

              v18 = [v23 countByEnumeratingWithState:&v281 objects:v327 count:16];
              dictionaryCopy = v20;
            }

            while (v18);
          }

          v24 = [dictionaryCopy objectForKeyedSubscript:@"testKey"];
          if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = errorCopy3;
              if (!errorCopy3)
              {
                selfCopy2 = 0;
                v33 = v261;
                v10 = v259;
                v13 = v253;
LABEL_244:

                goto LABEL_245;
              }

              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v321 = *MEMORY[0x1E696A578];
              v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"testKey"];
              v322 = v30;
              v246 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
              v73 = [v71 initWithDomain:v72 code:2 userInfo:?];
              selfCopy2 = 0;
              *errorCopy3 = v73;
              v23 = 0;
              v33 = v261;
              v10 = v259;
              goto LABEL_170;
            }

            v23 = v24;
          }

          else
          {
            v23 = 0;
          }

          v28 = [dictionaryCopy objectForKeyedSubscript:@"madResponseStatus"];
          v246 = v28;
          if (!v28)
          {
            v30 = 0;
            v10 = v259;
            goto LABEL_82;
          }

          v29 = v28;
          objc_opt_class();
          v10 = v259;
          if (objc_opt_isKindOfClass())
          {
            v30 = 0;
            goto LABEL_82;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
LABEL_81:

LABEL_82:
            v75 = [dictionaryCopy objectForKeyedSubscript:@"isFallbackFetch"];
            v245 = v75;
            if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v244 = 0;
              goto LABEL_85;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v244 = v76;
LABEL_85:
              v77 = [dictionaryCopy objectForKeyedSubscript:@"isSharePlayAvailable"];
              v243 = v77;
              if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v242 = 0;
                goto LABEL_88;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v242 = v78;
LABEL_88:
                v79 = [dictionaryCopy objectForKeyedSubscript:@"appSharedFrom"];
                v241 = v79;
                if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v81 = v23;
                  v240 = 0;
LABEL_104:
                  v99 = [dictionaryCopy objectForKeyedSubscript:@"feedbackEvents"];
                  null2 = [MEMORY[0x1E695DFB0] null];
                  v101 = [v99 isEqual:null2];

                  v239 = v14;
                  if (v101)
                  {

                    v102 = 0;
LABEL_110:
                    v23 = v81;
                    goto LABEL_111;
                  }

                  v102 = v99;
                  if (!v99)
                  {
                    goto LABEL_110;
                  }

                  objc_opt_class();
                  v23 = v81;
                  if (objc_opt_isKindOfClass())
                  {
LABEL_111:
                    v249 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v102, "count")}];
                    v276 = 0u;
                    v277 = 0u;
                    v278 = 0u;
                    v279 = 0u;
                    obj = v102;
                    v106 = [obj countByEnumeratingWithState:&v276 objects:v310 count:16];
                    v252 = v23;
                    if (!v106)
                    {
                      goto LABEL_121;
                    }

                    v107 = v106;
                    v108 = *v277;
                    v235 = dictionaryCopy;
                    while (1)
                    {
                      for (j = 0; j != v107; ++j)
                      {
                        if (*v277 != v108)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v110 = *(*(&v276 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v118 = errorCopy3;
                          if (errorCopy3)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v308 = *MEMORY[0x1E696A578];
                            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"feedbackEvents"];
                            v309 = v111;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v309;
                            v123 = &v308;
                            goto LABEL_127;
                          }

LABEL_152:
                          selfCopy2 = 0;
                          dictionaryCopy = v235;
                          self = selfCopy;
                          v33 = v261;
                          v14 = v239;

                          goto LABEL_236;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v118 = errorCopy3;
                          if (!errorCopy3)
                          {
                            goto LABEL_152;
                          }

                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v306 = *MEMORY[0x1E696A578];
                          v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"feedbackEvents"];
                          v307 = v111;
                          v121 = MEMORY[0x1E695DF20];
                          v122 = &v307;
                          v123 = &v306;
LABEL_127:
                          v124 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
                          v125 = v120;
                          v10 = v259;
                          v126 = [v119 initWithDomain:v125 code:2 userInfo:v124];
                          selfCopy2 = 0;
                          *v118 = v126;
                          v238 = obj;
                          dictionaryCopy = v235;
                          self = selfCopy;
                          v33 = v261;
LABEL_131:
                          v14 = v239;
                          goto LABEL_234;
                        }

                        v111 = v110;
                        v112 = [BMFeedbackMessage alloc];
                        v275 = 0;
                        v113 = [(BMFeedbackMessage *)v112 initWithJSONDictionary:v111 error:&v275];
                        v114 = v275;
                        if (v114)
                        {
                          v124 = v114;
                          if (errorCopy3)
                          {
                            v127 = v114;
                            *errorCopy3 = v124;
                          }

                          selfCopy2 = 0;
                          v238 = obj;
                          dictionaryCopy = v235;
                          self = selfCopy;
                          v33 = v261;
                          v10 = v259;
                          goto LABEL_131;
                        }

                        [v249 addObject:v113];

                        v10 = v259;
                        v23 = v252;
                      }

                      v107 = [obj countByEnumeratingWithState:&v276 objects:v310 count:16];
                      dictionaryCopy = v235;
                      if (!v107)
                      {
LABEL_121:

                        v115 = [dictionaryCopy objectForKeyedSubscript:@"typeOfContent"];
                        null3 = [MEMORY[0x1E695DFB0] null];
                        v117 = [v115 isEqual:null3];

                        if (v117)
                        {

                          v115 = 0;
                          goto LABEL_136;
                        }

                        if (v115)
                        {
                          objc_opt_class();
                          v14 = v239;
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v238 = v115;
                            self = selfCopy;
                            if (errorCopy3)
                            {
                              v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v129 = *MEMORY[0x1E698F240];
                              v304 = *MEMORY[0x1E696A578];
                              v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"typeOfContent"];
                              v305 = v111;
                              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
                              v130 = v129;
                              v10 = v259;
                              v131 = [v128 initWithDomain:v130 code:2 userInfo:v124];
                              selfCopy2 = 0;
                              *errorCopy3 = v131;
                              v33 = v261;
                              goto LABEL_234;
                            }

                            selfCopy2 = 0;
                            v33 = v261;
LABEL_235:

LABEL_236:
                            v13 = v253;

                            goto LABEL_238;
                          }
                        }

                        else
                        {
LABEL_136:
                          v14 = v239;
                        }

                        v247 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v115, "count")}];
                        v271 = 0u;
                        v272 = 0u;
                        v273 = 0u;
                        v274 = 0u;
                        v132 = v115;
                        v133 = [v132 countByEnumeratingWithState:&v271 objects:v303 count:16];
                        v238 = v132;
                        if (!v133)
                        {
                          goto LABEL_149;
                        }

                        v134 = v133;
                        v135 = *v272;
                        while (1)
                        {
                          for (k = 0; k != v134; ++k)
                          {
                            if (*v272 != v135)
                            {
                              objc_enumerationMutation(v132);
                            }

                            v137 = *(*(&v271 + 1) + 8 * k);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v147 = errorCopy3;
                              if (errorCopy3)
                              {
                                v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v149 = *MEMORY[0x1E698F240];
                                v301 = *MEMORY[0x1E696A578];
                                v231 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"typeOfContent"];
                                v302 = v231;
                                v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
                                v151 = v148;
                                v152 = v149;
LABEL_166:
                                v229 = v150;
                                self = selfCopy;
                                v33 = v261;
                                v14 = v239;
                                selfCopy2 = 0;
                                *v147 = [v151 initWithDomain:v152 code:2 userInfo:?];
                                v124 = v238;
                                goto LABEL_167;
                              }

LABEL_168:
                              selfCopy2 = 0;
                              v124 = v132;
                              self = selfCopy;
                              v33 = v261;
                              v14 = v239;
                              goto LABEL_233;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v138 = v137;
                            }

                            else
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v147 = errorCopy3;
                                if (errorCopy3)
                                {
                                  v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v162 = *MEMORY[0x1E698F240];
                                  v299 = *MEMORY[0x1E696A578];
                                  v231 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"typeOfContent"];
                                  v300 = v231;
                                  v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
                                  v151 = v161;
                                  v152 = v162;
                                  v10 = v259;
                                  goto LABEL_166;
                                }

                                goto LABEL_168;
                              }

                              v139 = v137;
                              v138 = [MEMORY[0x1E696AD98] numberWithInt:BMContentTypeFromString(v139)];
                            }

                            [v247 addObject:v138];
                            v10 = v259;
                          }

                          v134 = [v132 countByEnumeratingWithState:&v271 objects:v303 count:16];
                          v14 = v239;
                          if (!v134)
                          {
LABEL_149:

                            v140 = [dictionaryCopy objectForKeyedSubscript:@"isInPhoneCall"];
                            v231 = v140;
                            if (!v140)
                            {
                              v124 = 0;
                              self = selfCopy;
                              goto LABEL_174;
                            }

                            v141 = v140;
                            objc_opt_class();
                            self = selfCopy;
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v124 = v141;
                                goto LABEL_174;
                              }

                              if (!errorCopy3)
                              {
                                v124 = 0;
                                selfCopy2 = 0;
                                v33 = v261;
                                goto LABEL_232;
                              }

                              v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v187 = *MEMORY[0x1E698F240];
                              v297 = *MEMORY[0x1E696A578];
                              v233 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInPhoneCall"];
                              v298 = v233;
                              v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
                              v189 = v187;
                              v10 = v259;
                              v224 = v188;
                              v124 = 0;
                              selfCopy2 = 0;
                              *errorCopy3 = [v230 initWithDomain:v189 code:2 userInfo:?];
                              goto LABEL_211;
                            }

                            v124 = 0;
LABEL_174:
                            v164 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastShare"];
                            v229 = v164;
                            if (!v164 || (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v224 = 0;
LABEL_177:
                              v166 = [dictionaryCopy objectForKeyedSubscript:@"isScreenShot"];
                              v222 = v166;
                              if (!v166 || (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v223 = 0;
                                goto LABEL_180;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v223 = v167;
LABEL_180:
                                v168 = [dictionaryCopy objectForKeyedSubscript:@"photoFeatures"];
                                null4 = [MEMORY[0x1E695DFB0] null];
                                v232 = v168;
                                LODWORD(v168) = [v168 isEqual:null4];

                                if (v168)
                                {

                                  goto LABEL_187;
                                }

                                if (!v232)
                                {
LABEL_187:
                                  v170 = 0;
                                  v10 = v259;
                                  goto LABEL_188;
                                }

                                objc_opt_class();
                                v10 = v259;
                                if (objc_opt_isKindOfClass())
                                {
                                  v170 = v232;
LABEL_188:
                                  v171 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v170, "count")}];
                                  v266 = 0u;
                                  v267 = 0u;
                                  v268 = 0u;
                                  v269 = 0u;
                                  v232 = v170;
                                  v172 = [v232 countByEnumeratingWithState:&v266 objects:v290 count:16];
                                  if (!v172)
                                  {
                                    goto LABEL_198;
                                  }

                                  v173 = v172;
                                  v174 = *v267;
                                  v236 = dictionaryCopy;
                                  v225 = v171;
LABEL_190:
                                  v175 = 0;
                                  while (1)
                                  {
                                    if (*v267 != v174)
                                    {
                                      objc_enumerationMutation(v232);
                                    }

                                    v176 = *(*(&v266 + 1) + 8 * v175);
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      break;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      dictionaryCopy = v236;
                                      v33 = v261;
                                      v14 = v239;
                                      v198 = errorCopy3;
                                      if (!errorCopy3)
                                      {
                                        goto LABEL_223;
                                      }

                                      v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v221 = *MEMORY[0x1E698F240];
                                      v286 = *MEMORY[0x1E696A578];
                                      v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"photoFeatures"];
                                      v287 = v204;
                                      v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
                                      v202 = v205;
                                      v203 = v221;
                                      goto LABEL_218;
                                    }

                                    v177 = v176;
                                    v178 = [BMPhotoFeatures alloc];
                                    v265 = 0;
                                    v179 = [(BMPhotoFeatures *)v178 initWithJSONDictionary:v177 error:&v265];
                                    v180 = v265;
                                    if (v180)
                                    {
                                      v201 = v180;
                                      if (errorCopy3)
                                      {
                                        v206 = v180;
                                        *errorCopy3 = v201;
                                      }

                                      dictionaryCopy = v236;
                                      v33 = v261;
                                      v14 = v239;
                                      v204 = v177;
LABEL_222:

                                      v10 = v259;
LABEL_223:

                                      selfCopy2 = 0;
                                      self = selfCopy;
                                      v183 = v225;
                                      goto LABEL_227;
                                    }

                                    v171 = v225;
                                    [v225 addObject:v179];

                                    ++v175;
                                    v10 = v259;
                                    if (v173 == v175)
                                    {
                                      dictionaryCopy = v236;
                                      v173 = [v232 countByEnumeratingWithState:&v266 objects:v290 count:16];
                                      if (v173)
                                      {
                                        goto LABEL_190;
                                      }

LABEL_198:

                                      v181 = v171;
                                      intValue = [v30 intValue];
                                      LODWORD(v219) = [v240 intValue];
                                      LODWORD(v212) = intValue;
                                      v33 = v261;
                                      self = [(BMShareEvent *)selfCopy initWithDeviceIdentifier:v261 sessionId:v260 trialIdentifiers:v258 version:v253 candidates:v263 testKey:v23 madResponseStatus:v212 isFallbackFetch:v244 isSharePlayAvailable:v242 appSharedFrom:v219 feedbackEvents:v249 typeOfContent:v247 isInPhoneCall:v124 timeSinceLastShare:v224 isScreenShot:v223 photoFeatures:v181];
                                      v183 = v181;
                                      selfCopy2 = self;
                                      v14 = v239;
LABEL_227:

LABEL_228:
LABEL_229:

                                      v233 = v229;
LABEL_230:

                                      v163 = v233;
LABEL_231:

LABEL_232:
LABEL_233:
                                      v111 = v247;
LABEL_234:

                                      v23 = v252;
                                      goto LABEL_235;
                                    }
                                  }

                                  dictionaryCopy = v236;
                                  v33 = v261;
                                  v14 = v239;
                                  v198 = errorCopy3;
                                  if (!errorCopy3)
                                  {
                                    goto LABEL_223;
                                  }

                                  v220 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v199 = *MEMORY[0x1E698F240];
                                  v288 = *MEMORY[0x1E696A578];
                                  v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"photoFeatures"];
                                  v289 = v200;
                                  v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
                                  v202 = v220;
                                  v203 = v199;
                                  v204 = v200;
LABEL_218:
                                  *v198 = [v202 initWithDomain:v203 code:2 userInfo:v201];
                                  goto LABEL_222;
                                }

                                if (!errorCopy3)
                                {
                                  selfCopy2 = 0;
                                  v33 = v261;
                                  goto LABEL_228;
                                }

                                v228 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v207 = *MEMORY[0x1E698F240];
                                v291 = *MEMORY[0x1E696A578];
                                v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"photoFeatures"];
                                v292 = v208;
                                v209 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
                                v210 = v207;
                                v10 = v259;
                                *errorCopy3 = [v228 initWithDomain:v210 code:2 userInfo:v209];

                                v183 = v208;
                                selfCopy2 = 0;
                              }

                              else
                              {
                                if (!errorCopy3)
                                {
                                  v223 = 0;
                                  selfCopy2 = 0;
                                  v33 = v261;
                                  goto LABEL_229;
                                }

                                v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v227 = *MEMORY[0x1E698F240];
                                v293 = *MEMORY[0x1E696A578];
                                v194 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v218 = objc_opt_class();
                                v195 = v194;
                                v10 = v259;
                                v232 = [v195 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v218, @"isScreenShot"];
                                v294 = v232;
                                v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
                                v197 = [v193 initWithDomain:v227 code:2 userInfo:v196];
                                v223 = 0;
                                selfCopy2 = 0;
                                *errorCopy3 = v197;
                                v183 = v196;
                              }

                              v33 = v261;
                              goto LABEL_227;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v184 = v165;
                              v185 = [BMFeatureDouble alloc];
                              v270 = 0;
                              v224 = [(BMFeatureDouble *)v185 initWithJSONDictionary:v184 error:&v270];
                              v186 = v270;
                              if (!v186)
                              {

                                goto LABEL_177;
                              }

                              if (errorCopy3)
                              {
                                v186 = v186;
                                *errorCopy3 = v186;
                              }

                              v233 = v184;
                              selfCopy2 = 0;
LABEL_211:
                              v33 = v261;
                              goto LABEL_230;
                            }

                            if (errorCopy3)
                            {
                              v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v226 = *MEMORY[0x1E698F240];
                              v295 = *MEMORY[0x1E696A578];
                              v190 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v217 = objc_opt_class();
                              v191 = v190;
                              v10 = v259;
                              v224 = [v191 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v217, @"timeSinceLastShare"];
                              v296 = v224;
                              v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
                              *errorCopy3 = [v234 initWithDomain:v226 code:2 userInfo:v192];

                              selfCopy2 = 0;
                              v233 = v229;
                              goto LABEL_211;
                            }

                            selfCopy2 = 0;
                            v33 = v261;
LABEL_167:
                            v163 = v229;
                            goto LABEL_231;
                          }
                        }
                      }
                    }
                  }

                  obj = v102;
                  if (errorCopy3)
                  {
                    v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v104 = *MEMORY[0x1E698F240];
                    v311 = *MEMORY[0x1E696A578];
                    v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"feedbackEvents"];
                    v312 = v249;
                    v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
                    v105 = [v103 initWithDomain:v104 code:2 userInfo:?];
                    selfCopy2 = 0;
                    *errorCopy3 = v105;
                    v33 = v261;
                    self = selfCopy;

                    goto LABEL_236;
                  }

                  selfCopy2 = 0;
                  v33 = v261;
                  v13 = v253;
                  self = selfCopy;
LABEL_238:

                  goto LABEL_239;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v240 = v80;
LABEL_103:

                  v81 = v23;
                  goto LABEL_104;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v98 = v80;
                  v240 = [MEMORY[0x1E696AD98] numberWithInt:BMSharingAppFromString(v98)];

                  goto LABEL_103;
                }

                v251 = v23;
                if (errorCopy3)
                {
                  v153 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v154 = *MEMORY[0x1E698F240];
                  v313 = *MEMORY[0x1E696A578];
                  v155 = v14;
                  v156 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v216 = objc_opt_class();
                  v157 = v156;
                  v14 = v155;
                  obj = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v216, @"appSharedFrom"];
                  v314 = obj;
                  v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
                  v159 = v154;
                  v10 = v259;
                  v250 = v158;
                  v160 = [v153 initWithDomain:v159 code:2 userInfo:?];
                  v240 = 0;
                  selfCopy2 = 0;
                  *errorCopy3 = v160;
                  v33 = v261;
                  v13 = v253;

                  goto LABEL_238;
                }

                v240 = 0;
                selfCopy2 = 0;
LABEL_183:
                v33 = v261;
                v23 = v251;
                v13 = v253;
LABEL_239:

                goto LABEL_240;
              }

              v251 = v23;
              if (errorCopy3)
              {
                v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = *MEMORY[0x1E698F240];
                v315 = *MEMORY[0x1E696A578];
                v92 = v14;
                v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                v214 = objc_opt_class();
                v94 = v93;
                v14 = v92;
                v240 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v214, @"isSharePlayAvailable"];
                v316 = v240;
                v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
                v96 = v91;
                v10 = v259;
                v241 = v95;
                v97 = [v90 initWithDomain:v96 code:2 userInfo:?];
                v242 = 0;
                selfCopy2 = 0;
                *errorCopy3 = v97;
                goto LABEL_183;
              }

              v242 = 0;
              selfCopy2 = 0;
LABEL_162:
              v33 = v261;
              v23 = v251;
              v13 = v253;
LABEL_240:

              goto LABEL_241;
            }

            v251 = v23;
            if (errorCopy3)
            {
              v82 = objc_alloc(MEMORY[0x1E696ABC0]);
              v83 = *MEMORY[0x1E698F240];
              v317 = *MEMORY[0x1E696A578];
              v84 = v14;
              v85 = objc_alloc(MEMORY[0x1E696AEC0]);
              v213 = objc_opt_class();
              v86 = v85;
              v14 = v84;
              v242 = [v86 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v213, @"isFallbackFetch"];
              v318 = v242;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
              v88 = v83;
              v10 = v259;
              v243 = v87;
              v89 = [v82 initWithDomain:v88 code:2 userInfo:?];
              v244 = 0;
              selfCopy2 = 0;
              *errorCopy3 = v89;
              goto LABEL_162;
            }

            v244 = 0;
            selfCopy2 = 0;
            v33 = v261;
            v13 = v253;
LABEL_241:

LABEL_242:
LABEL_243:

            goto LABEL_244;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v29;
            v30 = [MEMORY[0x1E696AD98] numberWithInt:BMMadResponseStatusFromString(v74)];

            goto LABEL_81;
          }

          if (errorCopy3)
          {
            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
            v143 = *MEMORY[0x1E698F240];
            v319 = *MEMORY[0x1E696A578];
            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v215 = objc_opt_class();
            v145 = v144;
            v10 = v259;
            v244 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v215, @"madResponseStatus"];
            v320 = v244;
            v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
            v146 = [v142 initWithDomain:v143 code:2 userInfo:?];
            v30 = 0;
            selfCopy2 = 0;
            *errorCopy3 = v146;
            v33 = v261;
            v13 = v253;
            goto LABEL_241;
          }

          v30 = 0;
          selfCopy2 = 0;
          v33 = v261;
LABEL_170:
          v13 = v253;
          goto LABEL_242;
        }

        if (errorCopy3)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v328 = *MEMORY[0x1E696A578];
          v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidates"];
          v329 = v263;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
          v70 = [v68 initWithDomain:v69 code:2 userInfo:v23];
          selfCopy2 = 0;
          *errorCopy3 = v70;
          v33 = v261;
          goto LABEL_245;
        }

        selfCopy2 = 0;
        v7 = v254;
        v33 = v261;
LABEL_247:

        goto LABEL_248;
      }

      if (!error)
      {
        selfCopy2 = 0;
        v33 = v261;
LABEL_251:

        v38 = v260;
        goto LABEL_252;
      }

      v48 = v7;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v332 = *MEMORY[0x1E696A578];
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
      v333 = v45;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
      v52 = v49;
      v7 = v48;
      *error = [v52 initWithDomain:v50 code:2 userInfo:v51];

      selfCopy2 = 0;
      v31 = v10;
LABEL_51:
      v33 = v261;
LABEL_250:

      v10 = v31;
      goto LABEL_251;
    }

    if (error)
    {
      v42 = v7;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v334 = *MEMORY[0x1E696A578];
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
      v335 = v31;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v46 = v43;
      v7 = v42;
      v47 = [v46 initWithDomain:v44 code:2 userInfo:v45];
      v260 = 0;
      selfCopy2 = 0;
      *error = v47;
      goto LABEL_51;
    }

    v38 = 0;
    selfCopy2 = 0;
    v33 = v261;
LABEL_252:

    goto LABEL_253;
  }

  if (error)
  {
    v35 = v7;
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v336 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v337[0] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v337 forKeys:&v336 count:1];
    v40 = v36;
    v7 = v35;
    v262 = v39;
    v41 = [v40 initWithDomain:v37 code:2 userInfo:?];
    v33 = 0;
    selfCopy2 = 0;
    *error = v41;
    goto LABEL_252;
  }

  v33 = 0;
  selfCopy2 = 0;
LABEL_253:

  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMShareEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v49 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialIdentifiers)
  {
    v44 = 0;
    PBDataWriterPlaceMark();
    [(BMTrialIdentifiers *)self->_trialIdentifiers writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasVersion)
  {
    PBDataWriterWriteInt32Field();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = self->_candidates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v7);
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasIsFallbackFetch)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSharePlayAvailable)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = self->_feedbackEvents;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_typeOfContent;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v32 + 1) + 8 * v21) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v19);
  }

  if (self->_hasIsInPhoneCall)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_timeSinceLastShare)
  {
    v44 = 0;
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastShare writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsScreenShot)
  {
    PBDataWriterWriteBOOLField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self->_photoFeatures;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      v26 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * v26);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v27 writeTo:{toCopy, v28}];
        PBDataWriterRecallMark();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v24);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v99.receiver = self;
  v99.super_class = BMShareEvent;
  v5 = [(BMEventBase *)&v99 init];
  if (!v5)
  {
LABEL_150:
    v96 = v5;
    goto LABEL_151;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  position = [fromCopy position];
  if (position >= [fromCopy length])
  {
LABEL_148:
    v87 = [v6 copy];
    candidates = v5->_candidates;
    v5->_candidates = v87;

    v89 = [v7 copy];
    feedbackEvents = v5->_feedbackEvents;
    v5->_feedbackEvents = v89;

    v91 = [v8 copy];
    typeOfContent = v5->_typeOfContent;
    v5->_typeOfContent = v91;

    v93 = [v9 copy];
    photoFeatures = v5->_photoFeatures;
    v5->_photoFeatures = v93;

    hasError = [fromCopy hasError];
    if (hasError)
    {
      goto LABEL_149;
    }

    goto LABEL_150;
  }

  v98 = v6;
  while (2)
  {
    if ([fromCopy hasError])
    {
      goto LABEL_148;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v100) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v100 & 0x7F) << v11;
      if ((v100 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [fromCopy hasError] ? 0 : v13;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_148;
    }

    switch((v18 >> 3))
    {
      case 1u:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_86;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_86;
      case 3u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v51 = [[BMTrialIdentifiers alloc] initByReadFrom:fromCopy];
        if (!v51)
        {
          goto LABEL_152;
        }

        v52 = 64;
        goto LABEL_90;
      case 4u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v57 = [fromCopy position] + 1;
          if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v56 |= (v100 & 0x7F) << v54;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v17 = v55++ >= 9;
          if (v17)
          {
            v60 = 0;
            goto LABEL_132;
          }
        }

        if ([fromCopy hasError])
        {
          v60 = 0;
        }

        else
        {
          v60 = v56;
        }

LABEL_132:
        v5->_version = v60;
        goto LABEL_143;
      case 5u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v36 = [[BMCandidate alloc] initByReadFrom:fromCopy];
        if (!v36)
        {
          goto LABEL_152;
        }

        v37 = v36;
        v38 = v6;
        goto LABEL_103;
      case 6u:
        v19 = PBReaderReadString();
        v20 = 80;
LABEL_86:
        v68 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        goto LABEL_144;
      case 7u:
        v70 = 0;
        v71 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v72 = [fromCopy position] + 1;
          if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v47 |= (v100 & 0x7F) << v70;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v35 = v71++ > 8;
          if (v35)
          {
            goto LABEL_137;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v47 > 4)
        {
LABEL_137:
          LODWORD(v47) = 0;
        }

        v84 = 36;
        goto LABEL_139;
      case 8u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v5->_hasIsFallbackFetch = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v64 = [fromCopy position] + 1;
          if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v63 |= (v100 & 0x7F) << v61;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v17 = v62++ >= 9;
          if (v17)
          {
            LOBYTE(v67) = 0;
            goto LABEL_134;
          }
        }

        v67 = (v63 != 0) & ~[fromCopy hasError];
LABEL_134:
        v85 = 17;
        goto LABEL_142;
      case 9u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasIsSharePlayAvailable = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v79 = [fromCopy position] + 1;
          if (v79 >= [fromCopy position] && (v80 = objc_msgSend(fromCopy, "position") + 1, v80 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v78 |= (v100 & 0x7F) << v76;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v17 = v77++ >= 9;
          if (v17)
          {
            LOBYTE(v67) = 0;
            goto LABEL_141;
          }
        }

        v67 = (v78 != 0) & ~[fromCopy hasError];
LABEL_141:
        v85 = 19;
LABEL_142:
        *(&v5->super.super.isa + v85) = v67;
LABEL_143:
        v6 = v98;
        goto LABEL_144;
      case 0xAu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          LOBYTE(v100) = 0;
          v48 = [fromCopy position] + 1;
          if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v47 |= (v100 & 0x7F) << v45;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v35 = v46++ > 8;
          if (v35)
          {
            goto LABEL_127;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v47 > 4)
        {
LABEL_127:
          LODWORD(v47) = 0;
        }

        v84 = 40;
LABEL_139:
        *(&v5->super.super.isa + v84) = v47;
        goto LABEL_144;
      case 0xBu:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v75 = [[BMFeedbackMessage alloc] initByReadFrom:fromCopy];
        if (!v75)
        {
          goto LABEL_152;
        }

        v37 = v75;
        v38 = v7;
        goto LABEL_103;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v100) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v30 |= (v100 & 0x7F) << v28;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v35 = v29++ > 8;
          if (v35)
          {
            goto LABEL_118;
          }
        }

        if ([fromCopy hasError])
        {
LABEL_118:
          v30 = 0;
          v6 = v98;
          goto LABEL_119;
        }

        v6 = v98;
        if (v30 > 0xD)
        {
          v30 = 0;
        }

LABEL_119:
        v83 = [v31 numberWithUnsignedInt:v30];
        if (v83)
        {
          v37 = v83;
          [v8 addObject:v83];
LABEL_121:

LABEL_144:
          position2 = [fromCopy position];
          if (position2 >= [fromCopy length])
          {
            goto LABEL_148;
          }

          continue;
        }

LABEL_152:

LABEL_149:
        v96 = 0;
LABEL_151:

        return v96;
      case 0xDu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v5->_hasIsInPhoneCall = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v42 = [fromCopy position] + 1;
          if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 |= (v100 & 0x7F) << v39;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v17 = v40++ >= 9;
          if (v17)
          {
            LOBYTE(v27) = 0;
            goto LABEL_123;
          }
        }

        v27 = (v41 != 0) & ~[fromCopy hasError];
LABEL_123:
        v82 = 21;
        goto LABEL_124;
      case 0xEu:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v51 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
        if (!v51)
        {
          goto LABEL_152;
        }

        v52 = 104;
LABEL_90:
        v69 = *(&v5->super.super.isa + v52);
        *(&v5->super.super.isa + v52) = v51;

        PBReaderRecallMark();
        goto LABEL_144;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasIsScreenShot = 1;
        while (1)
        {
          LOBYTE(v100) = 0;
          v24 = [fromCopy position] + 1;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v100 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v23 |= (v100 & 0x7F) << v21;
          if ((v100 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v17 = v22++ >= 9;
          if (v17)
          {
            LOBYTE(v27) = 0;
            goto LABEL_116;
          }
        }

        v27 = (v23 != 0) & ~[fromCopy hasError];
LABEL_116:
        v82 = 23;
LABEL_124:
        *(&v5->super.super.isa + v82) = v27;
        goto LABEL_144;
      case 0x10u:
        v100 = 0;
        v101 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_152;
        }

        v53 = [[BMPhotoFeatures alloc] initByReadFrom:fromCopy];
        if (!v53)
        {
          goto LABEL_152;
        }

        v37 = v53;
        v38 = v9;
LABEL_103:
        [v38 addObject:v37];
        PBReaderRecallMark();
        goto LABEL_121;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_144;
    }
  }
}

- (NSString)description
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  typeOfContent = [(BMShareEvent *)self typeOfContent];
  v5 = [typeOfContent countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(typeOfContent);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMContentTypeAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [typeOfContent countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  deviceIdentifier = [(BMShareEvent *)self deviceIdentifier];
  sessionId = [(BMShareEvent *)self sessionId];
  trialIdentifiers = [(BMShareEvent *)self trialIdentifiers];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMShareEvent version](self, "version")}];
  candidates = [(BMShareEvent *)self candidates];
  testKey = [(BMShareEvent *)self testKey];
  v20 = BMMadResponseStatusAsString([(BMShareEvent *)self madResponseStatus]);
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isFallbackFetch](self, "isFallbackFetch")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isSharePlayAvailable](self, "isSharePlayAvailable")}];
  v17 = BMSharingAppAsString([(BMShareEvent *)self appSharedFrom]);
  feedbackEvents = [(BMShareEvent *)self feedbackEvents];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isInPhoneCall](self, "isInPhoneCall")}];
  timeSinceLastShare = [(BMShareEvent *)self timeSinceLastShare];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMShareEvent isScreenShot](self, "isScreenShot")}];
  photoFeatures = [(BMShareEvent *)self photoFeatures];
  v26 = [v25 initWithFormat:@"BMShareEvent with deviceIdentifier: %@, sessionId: %@, trialIdentifiers: %@, version: %@, candidates: %@, testKey: %@, madResponseStatus: %@, isFallbackFetch: %@, isSharePlayAvailable: %@, appSharedFrom: %@, feedbackEvents: %@, typeOfContent: %@, isInPhoneCall: %@, timeSinceLastShare: %@, isScreenShot: %@, photoFeatures: %@", deviceIdentifier, sessionId, trialIdentifiers, v22, candidates, testKey, v20, v19, v18, v17, feedbackEvents, v3, v11, timeSinceLastShare, v13, photoFeatures];

  return v26;
}

- (BMShareEvent)initWithDeviceIdentifier:(id)identifier sessionId:(id)id trialIdentifiers:(id)identifiers version:(id)version candidates:(id)candidates testKey:(id)key madResponseStatus:(int)status isFallbackFetch:(id)self0 isSharePlayAvailable:(id)self1 appSharedFrom:(int)self2 feedbackEvents:(id)self3 typeOfContent:(id)self4 isInPhoneCall:(id)self5 timeSinceLastShare:(id)self6 isScreenShot:(id)self7 photoFeatures:(id)self8
{
  identifierCopy = identifier;
  idCopy = id;
  idCopy2 = id;
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  versionCopy = version;
  candidatesCopy = candidates;
  keyCopy = key;
  fetchCopy = fetch;
  availableCopy = available;
  eventsCopy = events;
  contentCopy = content;
  callCopy = call;
  shareCopy = share;
  shotCopy = shot;
  featuresCopy = features;
  v45.receiver = self;
  v45.super_class = BMShareEvent;
  v29 = [(BMEventBase *)&v45 init];
  if (v29)
  {
    v29->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v29->_deviceIdentifier, identifier);
    objc_storeStrong(&v29->_sessionId, idCopy);
    objc_storeStrong(&v29->_trialIdentifiers, identifiersCopy);
    if (versionCopy)
    {
      v29->_hasVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v29->_hasVersion = 0;
      intValue = -1;
    }

    v29->_version = intValue;
    objc_storeStrong(&v29->_candidates, candidates);
    objc_storeStrong(&v29->_testKey, key);
    v29->_madResponseStatus = status;
    if (fetchCopy)
    {
      v29->_hasIsFallbackFetch = 1;
      v31 = fetchCopy;
      v29->_isFallbackFetch = [fetchCopy BOOLValue];
    }

    else
    {
      v31 = 0;
      v29->_hasIsFallbackFetch = 0;
      v29->_isFallbackFetch = 0;
    }

    if (availableCopy)
    {
      v29->_hasIsSharePlayAvailable = 1;
      v29->_isSharePlayAvailable = [availableCopy BOOLValue];
    }

    else
    {
      v29->_hasIsSharePlayAvailable = 0;
      v29->_isSharePlayAvailable = 0;
    }

    v29->_appSharedFrom = from;
    objc_storeStrong(&v29->_feedbackEvents, events);
    objc_storeStrong(&v29->_typeOfContent, content);
    if (callCopy)
    {
      v29->_hasIsInPhoneCall = 1;
      v29->_isInPhoneCall = [callCopy BOOLValue];
    }

    else
    {
      v29->_hasIsInPhoneCall = 0;
      v29->_isInPhoneCall = 0;
    }

    fetchCopy = v31;
    objc_storeStrong(&v29->_timeSinceLastShare, share);
    if (shotCopy)
    {
      v29->_hasIsScreenShot = 1;
      v29->_isScreenShot = [shotCopy BOOLValue];
    }

    else
    {
      v29->_hasIsScreenShot = 0;
      v29->_isScreenShot = 0;
    }

    objc_storeStrong(&v29->_photoFeatures, features);
  }

  return v29;
}

+ (id)protoFields
{
  v20[16] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:1 type:13 subMessageClass:0];
  v20[0] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:0];
  v20[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:3 type:14 subMessageClass:objc_opt_class()];
  v20[2] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:4 type:2 subMessageClass:0];
  v20[3] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidates" number:5 type:14 subMessageClass:objc_opt_class()];
  v20[4] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"testKey" number:6 type:13 subMessageClass:0];
  v20[5] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"madResponseStatus" number:7 type:4 subMessageClass:0];
  v20[6] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFallbackFetch" number:8 type:12 subMessageClass:0];
  v20[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSharePlayAvailable" number:9 type:12 subMessageClass:0];
  v20[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSharedFrom" number:10 type:4 subMessageClass:0];
  v20[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackEvents" number:11 type:14 subMessageClass:objc_opt_class()];
  v20[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"typeOfContent" number:12 type:4 subMessageClass:0];
  v20[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInPhoneCall" number:13 type:12 subMessageClass:0];
  v20[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastShare" number:14 type:14 subMessageClass:objc_opt_class()];
  v20[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isScreenShot" number:15 type:12 subMessageClass:0];
  v20[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoFeatures" number:16 type:14 subMessageClass:objc_opt_class()];
  v20[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:16];

  return v11;
}

+ (id)columns
{
  v20[16] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_546];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidates_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_548];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"testKey" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"madResponseStatus" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFallbackFetch" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSharePlayAvailable" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appSharedFrom" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"feedbackEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_550];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"typeOfContent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_552];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInPhoneCall" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastShare_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_554];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isScreenShot" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"photoFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_556];
  v20[0] = v19;
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v14;
  v20[6] = v2;
  v20[7] = v3;
  v20[8] = v4;
  v20[9] = v5;
  v20[10] = v13;
  v20[11] = v6;
  v20[12] = v7;
  v20[13] = v12;
  v20[14] = v8;
  v20[15] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:16];

  return v11;
}

id __23__BMShareEvent_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _photoFeaturesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __23__BMShareEvent_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastShare];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __23__BMShareEvent_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _typeOfContentJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __23__BMShareEvent_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _feedbackEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __23__BMShareEvent_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _candidatesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __23__BMShareEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 trialIdentifiers];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (BMShareEvent)eventWithData:(id)data dataVersion:(unsigned int)version
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

    v8 = [[BMShareEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end