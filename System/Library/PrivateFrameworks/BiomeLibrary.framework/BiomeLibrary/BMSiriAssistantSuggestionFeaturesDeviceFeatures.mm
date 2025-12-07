@interface BMSiriAssistantSuggestionFeaturesDeviceFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithConnectedToAirpods:(id)airpods noiseCancellingMode:(id)mode connectedToDevice:(id)device isInCarPlay:(id)play hasWatch:(id)watch hasIPad:(id)pad hasHomePod:(id)pod hasAppleTV:(id)self0 hasIPhone:(id)self1 totalNumDevices:(id)self2 currentDeviceType:(id)self3 currentBuildVersion:(id)self4 distanceFromLatestBuild:(id)self5 isALargeFormatPhone:(id)self6 hasAPasscode:(id)self7 supportsSMSMEssaging:(id)self8;
- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesDeviceFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasConnectedToAirpods](self, "hasConnectedToAirpods") || [v5 hasConnectedToAirpods])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasConnectedToAirpods])
      {
        goto LABEL_78;
      }

      if (![v5 hasConnectedToAirpods])
      {
        goto LABEL_78;
      }

      connectedToAirpods = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToAirpods];
      if (connectedToAirpods != [v5 connectedToAirpods])
      {
        goto LABEL_78;
      }
    }

    noiseCancellingMode = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
    noiseCancellingMode2 = [v5 noiseCancellingMode];
    v9 = noiseCancellingMode2;
    if (noiseCancellingMode == noiseCancellingMode2)
    {
    }

    else
    {
      noiseCancellingMode3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
      noiseCancellingMode4 = [v5 noiseCancellingMode];
      v12 = [noiseCancellingMode3 isEqual:noiseCancellingMode4];

      if (!v12)
      {
        goto LABEL_78;
      }
    }

    connectedToDevice = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
    connectedToDevice2 = [v5 connectedToDevice];
    v16 = connectedToDevice2;
    if (connectedToDevice == connectedToDevice2)
    {
    }

    else
    {
      connectedToDevice3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
      connectedToDevice4 = [v5 connectedToDevice];
      v19 = [connectedToDevice3 isEqual:connectedToDevice4];

      if (!v19)
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsInCarPlay](self, "hasIsInCarPlay") || [v5 hasIsInCarPlay])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsInCarPlay])
      {
        goto LABEL_78;
      }

      if (![v5 hasIsInCarPlay])
      {
        goto LABEL_78;
      }

      isInCarPlay = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self isInCarPlay];
      if (isInCarPlay != [v5 isInCarPlay])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasWatch](self, "hasHasWatch") || [v5 hasHasWatch])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasWatch])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasWatch])
      {
        goto LABEL_78;
      }

      hasWatch = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasWatch];
      if (hasWatch != [v5 hasWatch])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasIPad](self, "hasHasIPad") || [v5 hasHasIPad])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPad])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasIPad])
      {
        goto LABEL_78;
      }

      hasIPad = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIPad];
      if (hasIPad != [v5 hasIPad])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasHomePod](self, "hasHasHomePod") || [v5 hasHasHomePod])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasHomePod])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasHomePod])
      {
        goto LABEL_78;
      }

      hasHomePod = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHomePod];
      if (hasHomePod != [v5 hasHomePod])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAppleTV](self, "hasHasAppleTV") || [v5 hasHasAppleTV])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAppleTV])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasAppleTV])
      {
        goto LABEL_78;
      }

      hasAppleTV = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasAppleTV];
      if (hasAppleTV != [v5 hasAppleTV])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasIPhone](self, "hasHasIPhone") || [v5 hasHasIPhone])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPhone])
      {
        goto LABEL_78;
      }

      if (![v5 hasHasIPhone])
      {
        goto LABEL_78;
      }

      hasIPhone = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIPhone];
      if (hasIPhone != [v5 hasIPhone])
      {
        goto LABEL_78;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasTotalNumDevices](self, "hasTotalNumDevices") || [v5 hasTotalNumDevices])
    {
      if (![(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasTotalNumDevices])
      {
        goto LABEL_78;
      }

      if (![v5 hasTotalNumDevices])
      {
        goto LABEL_78;
      }

      totalNumDevices = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self totalNumDevices];
      if (totalNumDevices != [v5 totalNumDevices])
      {
        goto LABEL_78;
      }
    }

    currentDeviceType = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
    currentDeviceType2 = [v5 currentDeviceType];
    v29 = currentDeviceType2;
    if (currentDeviceType == currentDeviceType2)
    {
    }

    else
    {
      currentDeviceType3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
      currentDeviceType4 = [v5 currentDeviceType];
      v32 = [currentDeviceType3 isEqual:currentDeviceType4];

      if (!v32)
      {
        goto LABEL_78;
      }
    }

    currentBuildVersion = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
    currentBuildVersion2 = [v5 currentBuildVersion];
    v35 = currentBuildVersion2;
    if (currentBuildVersion == currentBuildVersion2)
    {
    }

    else
    {
      currentBuildVersion3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
      currentBuildVersion4 = [v5 currentBuildVersion];
      v38 = [currentBuildVersion3 isEqual:currentBuildVersion4];

      if (!v38)
      {
        goto LABEL_78;
      }
    }

    distanceFromLatestBuild = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
    distanceFromLatestBuild2 = [v5 distanceFromLatestBuild];
    v41 = distanceFromLatestBuild2;
    if (distanceFromLatestBuild == distanceFromLatestBuild2)
    {
    }

    else
    {
      distanceFromLatestBuild3 = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
      distanceFromLatestBuild4 = [v5 distanceFromLatestBuild];
      v44 = [distanceFromLatestBuild3 isEqual:distanceFromLatestBuild4];

      if (!v44)
      {
        goto LABEL_78;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsALargeFormatPhone](self, "hasIsALargeFormatPhone") && ![v5 hasIsALargeFormatPhone] || -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIsALargeFormatPhone](self, "hasIsALargeFormatPhone") && objc_msgSend(v5, "hasIsALargeFormatPhone") && (v45 = -[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone"), v45 == objc_msgSend(v5, "isALargeFormatPhone")))
    {
      if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAPasscode](self, "hasHasAPasscode") && ![v5 hasHasAPasscode] || -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHasAPasscode](self, "hasHasAPasscode") && objc_msgSend(v5, "hasHasAPasscode") && (v46 = -[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode"), v46 == objc_msgSend(v5, "hasAPasscode")))
      {
        if (!-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasSupportsSMSMEssaging](self, "hasSupportsSMSMEssaging") && ![v5 hasSupportsSMSMEssaging])
        {
          LOBYTE(v13) = 1;
          goto LABEL_79;
        }

        if (-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasSupportsSMSMEssaging](self, "hasSupportsSMSMEssaging") && [v5 hasSupportsSMSMEssaging])
        {
          supportsSMSMEssaging = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self supportsSMSMEssaging];
          v13 = supportsSMSMEssaging ^ [v5 supportsSMSMEssaging] ^ 1;
LABEL_79:

          goto LABEL_80;
        }
      }
    }

LABEL_78:
    LOBYTE(v13) = 0;
    goto LABEL_79;
  }

  LOBYTE(v13) = 0;
LABEL_80:

  return v13;
}

- (id)jsonDictionary
{
  v56[16] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasConnectedToAirpods])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures connectedToAirpods](self, "connectedToAirpods")}];
  }

  else
  {
    v3 = 0;
  }

  noiseCancellingMode = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
  connectedToDevice = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsInCarPlay])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isInCarPlay](self, "isInCarPlay")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasWatch])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasWatch](self, "hasWatch")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPad])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPad](self, "hasIPad")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasHomePod])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHomePod](self, "hasHomePod")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAppleTV])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAppleTV](self, "hasAppleTV")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasIPhone])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPhone](self, "hasIPhone")}];
  }

  else
  {
    v53 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasTotalNumDevices])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures totalNumDevices](self, "totalNumDevices")}];
  }

  else
  {
    v52 = 0;
  }

  currentDeviceType = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
  currentBuildVersion = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
  distanceFromLatestBuild = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasIsALargeFormatPhone])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone")}];
  }

  else
  {
    v48 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasHasAPasscode])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode")}];
  }

  else
  {
    v47 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self hasSupportsSMSMEssaging])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures supportsSMSMEssaging](self, "supportsSMSMEssaging")}];
  }

  else
  {
    v10 = 0;
  }

  v55[0] = @"connectedToAirpods";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null;
  v56[0] = null;
  v55[1] = @"noiseCancellingMode";
  null2 = noiseCancellingMode;
  if (!noiseCancellingMode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null2;
  v56[1] = null2;
  v55[2] = @"connectedToDevice";
  null3 = connectedToDevice;
  if (!connectedToDevice)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null3;
  v56[2] = null3;
  v55[3] = @"isInCarPlay";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null4;
  v56[3] = null4;
  v55[4] = @"hasWatch";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null5;
  v56[4] = null5;
  v55[5] = @"hasIPad";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null6;
  v56[5] = null6;
  v55[6] = @"hasHomePod";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null7;
  v56[6] = null7;
  v55[7] = @"hasAppleTV";
  null8 = v54;
  if (!v54)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v9;
  v56[7] = null8;
  v55[8] = @"hasIPhone";
  null9 = v53;
  if (!v53)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v6;
  v56[8] = null9;
  v55[9] = @"totalNumDevices";
  null10 = v52;
  if (!v52)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v3;
  v31 = null10;
  v56[9] = null10;
  v55[10] = @"currentDeviceType";
  null11 = currentDeviceType;
  if (!currentDeviceType)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null9;
  v34 = null8;
  v44 = v7;
  v56[10] = null11;
  v55[11] = @"currentBuildVersion";
  null12 = currentBuildVersion;
  if (!currentBuildVersion)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v8;
  v24 = noiseCancellingMode;
  v56[11] = null12;
  v55[12] = @"distanceFromLatestBuild";
  null13 = distanceFromLatestBuild;
  if (!distanceFromLatestBuild)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = connectedToDevice;
  v56[12] = null13;
  v55[13] = @"isALargeFormatPhone";
  null14 = v48;
  if (!v48)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v55[14] = @"hasAPasscode";
  null15 = v47;
  if (!v47)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = null15;
  v55[15] = @"supportsSMSMEssaging";
  null16 = v10;
  if (!v10)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v56[15] = null16;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{16, v31}];
  if (!v10)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!distanceFromLatestBuild)
  {
  }

  if (!currentBuildVersion)
  {
  }

  if (!currentDeviceType)
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
    if (v43)
    {
      goto LABEL_84;
    }
  }

  else
  {

    if (v43)
    {
LABEL_84:
      if (v23)
      {
        goto LABEL_85;
      }

      goto LABEL_95;
    }
  }

  if (v23)
  {
LABEL_85:
    if (v44)
    {
      goto LABEL_86;
    }

    goto LABEL_96;
  }

LABEL_95:

  if (v44)
  {
LABEL_86:
    if (v45)
    {
      goto LABEL_87;
    }

    goto LABEL_97;
  }

LABEL_96:

  if (v45)
  {
LABEL_87:
    if (v26)
    {
      goto LABEL_88;
    }

    goto LABEL_98;
  }

LABEL_97:

  if (v26)
  {
LABEL_88:
    if (v24)
    {
      goto LABEL_89;
    }

LABEL_99:

    if (v46)
    {
      goto LABEL_90;
    }

    goto LABEL_100;
  }

LABEL_98:

  if (!v24)
  {
    goto LABEL_99;
  }

LABEL_89:
  if (v46)
  {
    goto LABEL_90;
  }

LABEL_100:

LABEL_90:

  return v42;
}

- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v199[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v167 = [dictionaryCopy objectForKeyedSubscript:@"connectedToAirpods"];
  if (!v167 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"noiseCancellingMode"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v165 = 0;
          selfCopy6 = 0;
          goto LABEL_67;
        }

        v46 = v7;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v196 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"noiseCancellingMode"];
        v197 = v40;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
        v50 = v47;
        v7 = v46;
        v166 = v49;
        v51 = [v50 initWithDomain:v48 code:2 userInfo:?];
        v165 = 0;
        selfCopy6 = 0;
        *error = v51;
        goto LABEL_66;
      }

      v165 = v8;
    }

    else
    {
      v165 = 0;
    }

    v166 = [dictionaryCopy objectForKeyedSubscript:@"connectedToDevice"];
    if (v166 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      errorCopy = error;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v40 = 0;
          selfCopy6 = 0;
          goto LABEL_66;
        }

        v155 = v8;
        v52 = v7;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v194 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"connectedToDevice"];
        v195 = v55;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
        v56 = v53;
        v7 = v52;
        v8 = v155;
        v57 = [v56 initWithDomain:v54 code:2 userInfo:v9];
        v40 = 0;
        selfCopy6 = 0;
        *errorCopy = v57;
        v11 = v55;
LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v164 = v166;
    }

    else
    {
      v164 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isInCarPlay"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          selfCopy6 = 0;
          v40 = v164;
          goto LABEL_65;
        }

        v58 = v7;
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E698F240];
        v192 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInCarPlay"];
        v193 = v163;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
        v61 = v59;
        v7 = v58;
        v62 = [v61 initWithDomain:v60 code:2 userInfo:v38];
        v11 = 0;
        selfCopy6 = 0;
        *errorCopy2 = v62;
        v40 = v164;
        goto LABEL_64;
      }

      selfCopy2 = self;
      v11 = v9;
    }

    else
    {
      selfCopy2 = self;
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasWatch"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v163 = 0;
          selfCopy6 = 0;
          v40 = v164;
          v38 = v12;
          self = selfCopy2;
          goto LABEL_64;
        }

        v156 = v8;
        v63 = v11;
        v64 = v7;
        v65 = objc_alloc(MEMORY[0x1E696ABC0]);
        v66 = *MEMORY[0x1E698F240];
        v190 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v67 = objc_alloc(MEMORY[0x1E696AEC0]);
        v132 = objc_opt_class();
        v68 = v67;
        v38 = v12;
        self = selfCopy2;
        v162 = [v68 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v132, @"hasWatch"];
        v191 = v162;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        v69 = v65;
        v7 = v64;
        v11 = v63;
        v8 = v156;
        v70 = [v69 initWithDomain:v66 code:2 userInfo:v13];
        v163 = 0;
        selfCopy6 = 0;
        *errorCopy3 = v70;
        v40 = v164;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      v159 = v12;
      v163 = v12;
    }

    else
    {
      v159 = v12;
      v163 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"hasIPad"];
    v13 = self = selfCopy2;
    v160 = v11;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v162 = 0;
          selfCopy6 = 0;
          v40 = v164;
          v38 = v159;
          goto LABEL_63;
        }

        v157 = v8;
        v71 = v11;
        v72 = v7;
        v73 = objc_alloc(MEMORY[0x1E696ABC0]);
        v74 = *MEMORY[0x1E698F240];
        v188 = *MEMORY[0x1E696A578];
        v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasIPad"];
        v189 = v161;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v76 = v73;
        v7 = v72;
        v11 = v71;
        v8 = v157;
        v158 = v75;
        v77 = [v76 initWithDomain:v74 code:2 userInfo:?];
        v162 = 0;
        selfCopy6 = 0;
        *error = v77;
        v40 = v164;
        v38 = v159;
        goto LABEL_62;
      }

      v14 = v7;
      v162 = v13;
    }

    else
    {
      v14 = v7;
      v162 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"hasHomePod"];
    v158 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v161 = 0;
          selfCopy6 = 0;
          v40 = v164;
          v38 = v159;
          v7 = v14;
          goto LABEL_61;
        }

        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
        v81 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasHomePod"];
        v187 = v153;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v83 = v80;
        v7 = v14;
        v17 = v82;
        v84 = [v83 initWithDomain:v81 code:2 userInfo:v82];
        v161 = 0;
        selfCopy6 = 0;
        *error = v84;
        goto LABEL_135;
      }

      v161 = v16;
    }

    else
    {
      v161 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"hasAppleTV"];
    v17 = v7 = v14;
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v145 = v13;
      selfCopy8 = self;
      v153 = 0;
LABEL_25:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"hasIPhone"];
      v148 = v17;
      v151 = v19;
      if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v152 = 0;
            selfCopy6 = 0;
            v40 = v164;
            v38 = v159;
            self = selfCopy8;
            goto LABEL_58;
          }

          v90 = v7;
          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          v92 = *MEMORY[0x1E698F240];
          v182 = *MEMORY[0x1E696A578];
          self = selfCopy8;
          v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasIPhone"];
          v183 = v149;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
          v93 = v91;
          v7 = v90;
          v17 = v148;
          v94 = [v93 initWithDomain:v92 code:2 userInfo:v21];
          v152 = 0;
          selfCopy6 = 0;
          *error = v94;
          goto LABEL_142;
        }

        v152 = v20;
      }

      else
      {
        v152 = 0;
      }

      [dictionaryCopy objectForKeyedSubscript:@"totalNumDevices"];
      v21 = self = selfCopy8;
      v144 = v21;
      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v149 = 0;
LABEL_31:
        v22 = [dictionaryCopy objectForKeyedSubscript:@"currentDeviceType"];
        v142 = v22;
        if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v78 = v9;
          selfCopy7 = self;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v143 = 0;
              selfCopy6 = 0;
              v40 = v164;
              v38 = v159;
              v17 = v148;
              v21 = v144;
              goto LABEL_56;
            }

            v101 = v7;
            v102 = objc_alloc(MEMORY[0x1E696ABC0]);
            v103 = *MEMORY[0x1E698F240];
            v178 = *MEMORY[0x1E696A578];
            v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentDeviceType"];
            v179 = v141;
            v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
            v105 = v102;
            v7 = v101;
            v140 = v104;
            v106 = [v105 initWithDomain:v103 code:2 userInfo:?];
            v143 = 0;
            selfCopy6 = 0;
            *error = v106;
            goto LABEL_148;
          }

          v143 = v23;
          v17 = v148;
          v21 = v144;
        }

        else
        {
          v143 = 0;
        }

        v24 = [dictionaryCopy objectForKeyedSubscript:@"currentBuildVersion"];
        v140 = v24;
        if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v141 = 0;
          goto LABEL_37;
        }

        v78 = v9;
        selfCopy7 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v141 = v25;
          v17 = v148;
          v21 = v144;
LABEL_37:
          v26 = [dictionaryCopy objectForKeyedSubscript:@"distanceFromLatestBuild"];
          v137 = v26;
          if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v139 = 0;
LABEL_40:
            v28 = [dictionaryCopy objectForKeyedSubscript:@"isALargeFormatPhone"];
            v136 = v28;
            if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v138 = 0;
                  selfCopy6 = 0;
                  v40 = v164;
                  v38 = v159;
                  goto LABEL_53;
                }

                v119 = v7;
                v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                v121 = *MEMORY[0x1E698F240];
                v172 = *MEMORY[0x1E696A578];
                v21 = v144;
                v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isALargeFormatPhone"];
                v173 = v135;
                v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                v122 = v120;
                v7 = v119;
                v17 = v148;
                v123 = [v122 initWithDomain:v121 code:2 userInfo:v39];
                v138 = 0;
                selfCopy6 = 0;
                *error = v123;
                v38 = v159;
                goto LABEL_52;
              }

              v138 = v29;
            }

            else
            {
              v138 = 0;
            }

            v30 = [dictionaryCopy objectForKeyedSubscript:@"hasAPasscode"];
            v134 = v9;
            v154 = v30;
            if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v135 = 0;
                  selfCopy6 = 0;
                  v38 = v159;
                  goto LABEL_51;
                }

                v33 = v7;
                v124 = objc_alloc(MEMORY[0x1E696ABC0]);
                errorCopy4 = error;
                v126 = *MEMORY[0x1E698F240];
                v170 = *MEMORY[0x1E696A578];
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasAPasscode"];
                v171 = v36;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                v127 = [v124 initWithDomain:v126 code:2 userInfo:v35];
                v135 = 0;
                selfCopy6 = 0;
                *errorCopy4 = v127;
                goto LABEL_50;
              }

              v32 = v160;
              v33 = v7;
              v34 = v31;
            }

            else
            {
              v32 = v160;
              v33 = v7;
              v34 = 0;
            }

            v35 = [dictionaryCopy objectForKeyedSubscript:@"supportsSMSMEssaging"];
            v135 = v34;
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                  errorCopy5 = error;
                  v129 = *MEMORY[0x1E698F240];
                  v168 = *MEMORY[0x1E696A578];
                  v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"supportsSMSMEssaging"];
                  v169 = v130;
                  v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
                  *errorCopy5 = [v133 initWithDomain:v129 code:2 userInfo:v131];
                }

                v36 = 0;
                selfCopy6 = 0;
                goto LABEL_50;
              }

              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            self = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self initWithConnectedToAirpods:v33 noiseCancellingMode:v165 connectedToDevice:v164 isInCarPlay:v32 hasWatch:v163 hasIPad:v162 hasHomePod:v161 hasAppleTV:v153 hasIPhone:v152 totalNumDevices:v149 currentDeviceType:v143 currentBuildVersion:v141 distanceFromLatestBuild:v139 isALargeFormatPhone:v138 hasAPasscode:v34 supportsSMSMEssaging:v36];
            selfCopy6 = self;
LABEL_50:
            v38 = v159;

            v7 = v33;
            v9 = v134;
            v17 = v148;
            v21 = v144;
LABEL_51:
            v39 = v154;
LABEL_52:

            v40 = v164;
LABEL_53:

LABEL_54:
LABEL_55:

LABEL_56:
LABEL_57:

LABEL_58:
            v13 = v145;
LABEL_59:

LABEL_60:
LABEL_61:
            v11 = v160;
LABEL_62:

            goto LABEL_63;
          }

          v78 = v9;
          selfCopy7 = self;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v139 = v27;
            v17 = v148;
            v21 = v144;
            goto LABEL_40;
          }

          if (error)
          {
            v113 = v7;
            v114 = objc_alloc(MEMORY[0x1E696ABC0]);
            v115 = *MEMORY[0x1E698F240];
            v174 = *MEMORY[0x1E696A578];
            v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"distanceFromLatestBuild"];
            v175 = v138;
            v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
            v117 = v114;
            v7 = v113;
            v136 = v116;
            v118 = [v117 initWithDomain:v115 code:2 userInfo:?];
            v139 = 0;
            selfCopy6 = 0;
            *error = v118;
            v40 = v164;
            v9 = v78;
            v38 = v159;
            v17 = v148;
            v21 = v144;
            goto LABEL_53;
          }

          v139 = 0;
          selfCopy6 = 0;
LABEL_150:
          self = selfCopy7;
          v40 = v164;
          v9 = v78;
          v38 = v159;
          v17 = v148;
          v21 = v144;
          goto LABEL_54;
        }

        if (error)
        {
          v107 = v7;
          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
          v109 = *MEMORY[0x1E698F240];
          v176 = *MEMORY[0x1E696A578];
          v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentBuildVersion"];
          v177 = v139;
          v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
          v111 = v108;
          v7 = v107;
          v137 = v110;
          v112 = [v111 initWithDomain:v109 code:2 userInfo:?];
          v141 = 0;
          selfCopy6 = 0;
          *error = v112;
          goto LABEL_150;
        }

        v141 = 0;
        selfCopy6 = 0;
LABEL_148:
        self = selfCopy7;
        v40 = v164;
        v9 = v78;
        v38 = v159;
        v17 = v148;
        v21 = v144;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v149 = v21;
        goto LABEL_31;
      }

      if (error)
      {
        v95 = v7;
        v96 = objc_alloc(MEMORY[0x1E696ABC0]);
        v97 = *MEMORY[0x1E698F240];
        v180 = *MEMORY[0x1E696A578];
        v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalNumDevices"];
        v181 = v143;
        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        v99 = v96;
        v7 = v95;
        v17 = v148;
        v142 = v98;
        v100 = [v99 initWithDomain:v97 code:2 userInfo:?];
        v149 = 0;
        selfCopy6 = 0;
        *error = v100;
        v40 = v164;
        v38 = v159;
        goto LABEL_56;
      }

      v149 = 0;
      selfCopy6 = 0;
LABEL_142:
      v40 = v164;
      v38 = v159;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v145 = v13;
      selfCopy8 = self;
      v153 = v17;
      goto LABEL_25;
    }

    if (error)
    {
      v150 = v7;
      v85 = objc_alloc(MEMORY[0x1E696ABC0]);
      v86 = *MEMORY[0x1E698F240];
      v184 = *MEMORY[0x1E696A578];
      v152 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasAppleTV"];
      v185 = v152;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
      v88 = v85;
      v7 = v150;
      v151 = v87;
      v89 = [v88 initWithDomain:v86 code:2 userInfo:?];
      v153 = 0;
      selfCopy6 = 0;
      *error = v89;
      v40 = v164;
      v38 = v159;
      goto LABEL_59;
    }

    v153 = 0;
    selfCopy6 = 0;
LABEL_135:
    v40 = v164;
    v38 = v159;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v167;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    selfCopy6 = 0;
    goto LABEL_68;
  }

  v43 = objc_alloc(MEMORY[0x1E696ABC0]);
  v44 = *MEMORY[0x1E698F240];
  v198 = *MEMORY[0x1E696A578];
  v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"connectedToAirpods"];
  v199[0] = v165;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:&v198 count:1];
  v45 = [v43 initWithDomain:v44 code:2 userInfo:v8];
  v7 = 0;
  selfCopy6 = 0;
  *error = v45;
LABEL_67:

LABEL_68:
  return selfCopy6;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasConnectedToAirpods)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_noiseCancellingMode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_connectedToDevice)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsInCarPlay)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasWatch)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasIPad)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasHomePod)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasAppleTV)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasIPhone)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTotalNumDevices)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_currentDeviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentBuildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_distanceFromLatestBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsALargeFormatPhone)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasHasAPasscode)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSupportsSMSMEssaging)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v90.receiver = self;
  v90.super_class = BMSiriAssistantSuggestionFeaturesDeviceFeatures;
  v5 = [(BMEventBase *)&v90 init];
  if (!v5)
  {
    goto LABEL_154;
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
        v91 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v91 & 0x7F) << v7;
        if ((v91 & 0x80) == 0)
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
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasConnectedToAirpods = 1;
          while (1)
          {
            v91 = 0;
            v18 = [fromCopy position] + 1;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v91 & 0x7F) << v15;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v13 = v16++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
LABEL_131:
              v86 = 16;
              goto LABEL_150;
            }
          }

          v21 = (v17 != 0) & ~[fromCopy hasError];
          goto LABEL_131;
        case 2u:
          v28 = PBReaderReadString();
          v29 = 48;
          goto LABEL_51;
        case 3u:
          v28 = PBReaderReadString();
          v29 = 56;
          goto LABEL_51;
        case 5u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v5->_hasIsInCarPlay = 1;
          while (1)
          {
            v91 = 0;
            v64 = [fromCopy position] + 1;
            if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v63 |= (v91 & 0x7F) << v61;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v13 = v62++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_141;
            }
          }

          v21 = (v63 != 0) & ~[fromCopy hasError];
LABEL_141:
          v86 = 18;
          goto LABEL_150;
        case 6u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasHasWatch = 1;
          while (1)
          {
            v91 = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (v91 & 0x7F) << v67;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v13 = v68++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_143;
            }
          }

          v21 = (v69 != 0) & ~[fromCopy hasError];
LABEL_143:
          v86 = 20;
          goto LABEL_150;
        case 7u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasHasIPad = 1;
          while (1)
          {
            v91 = 0;
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v32 |= (v91 & 0x7F) << v30;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_129;
            }
          }

          v21 = (v32 != 0) & ~[fromCopy hasError];
LABEL_129:
          v86 = 22;
          goto LABEL_150;
        case 8u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasHasHomePod = 1;
          while (1)
          {
            v91 = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v91 & 0x7F) << v37;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_133;
            }
          }

          v21 = (v39 != 0) & ~[fromCopy hasError];
LABEL_133:
          v86 = 24;
          goto LABEL_150;
        case 9u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasHasAppleTV = 1;
          while (1)
          {
            v91 = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (v91 & 0x7F) << v43;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_135;
            }
          }

          v21 = (v45 != 0) & ~[fromCopy hasError];
LABEL_135:
          v86 = 26;
          goto LABEL_150;
        case 0xAu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v5->_hasHasIPhone = 1;
          while (1)
          {
            v91 = 0;
            v83 = [fromCopy position] + 1;
            if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v82 |= (v91 & 0x7F) << v80;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v13 = v81++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_149;
            }
          }

          v21 = (v82 != 0) & ~[fromCopy hasError];
LABEL_149:
          v86 = 28;
          goto LABEL_150;
        case 0xBu:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasTotalNumDevices = 1;
          while (1)
          {
            v91 = 0;
            v76 = [fromCopy position] + 1;
            if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v75 |= (v91 & 0x7F) << v73;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v13 = v74++ >= 9;
            if (v13)
            {
              v79 = 0;
              goto LABEL_147;
            }
          }

          if ([fromCopy hasError])
          {
            v79 = 0;
          }

          else
          {
            v79 = v75;
          }

LABEL_147:
          v5->_totalNumDevices = v79;
          goto LABEL_151;
        case 0xCu:
          v28 = PBReaderReadString();
          v29 = 64;
          goto LABEL_51;
        case 0xDu:
          v28 = PBReaderReadString();
          v29 = 72;
          goto LABEL_51;
        case 0xEu:
          v28 = PBReaderReadString();
          v29 = 80;
LABEL_51:
          v36 = *(&v5->super.super.isa + v29);
          *(&v5->super.super.isa + v29) = v28;

          goto LABEL_151;
        case 0xFu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasIsALargeFormatPhone = 1;
          while (1)
          {
            v91 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v24 |= (v91 & 0x7F) << v22;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v13 = v23++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_127;
            }
          }

          v21 = (v24 != 0) & ~[fromCopy hasError];
LABEL_127:
          v86 = 31;
          goto LABEL_150;
        case 0x10u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasHasAPasscode = 1;
          while (1)
          {
            v91 = 0;
            v52 = [fromCopy position] + 1;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v51 |= (v91 & 0x7F) << v49;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v21) = 0;
              goto LABEL_137;
            }
          }

          v21 = (v51 != 0) & ~[fromCopy hasError];
LABEL_137:
          v86 = 33;
          goto LABEL_150;
        case 0x11u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasSupportsSMSMEssaging = 1;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_153;
          }

          goto LABEL_151;
      }

      while (1)
      {
        v91 = 0;
        v58 = [fromCopy position] + 1;
        if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:&v91 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v57 |= (v91 & 0x7F) << v55;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v13 = v56++ >= 9;
        if (v13)
        {
          LOBYTE(v21) = 0;
          goto LABEL_139;
        }
      }

      v21 = (v57 != 0) & ~[fromCopy hasError];
LABEL_139:
      v86 = 35;
LABEL_150:
      *(&v5->super.super.isa + v86) = v21;
LABEL_151:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_153:
    v88 = 0;
  }

  else
  {
LABEL_154:
    v88 = v5;
  }

  return v88;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures connectedToAirpods](self, "connectedToAirpods")}];
  noiseCancellingMode = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self noiseCancellingMode];
  connectedToDevice = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self connectedToDevice];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isInCarPlay](self, "isInCarPlay")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasWatch](self, "hasWatch")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPad](self, "hasIPad")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasHomePod](self, "hasHomePod")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAppleTV](self, "hasAppleTV")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasIPhone](self, "hasIPhone")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures totalNumDevices](self, "totalNumDevices")}];
  currentDeviceType = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentDeviceType];
  currentBuildVersion = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self currentBuildVersion];
  distanceFromLatestBuild = [(BMSiriAssistantSuggestionFeaturesDeviceFeatures *)self distanceFromLatestBuild];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures isALargeFormatPhone](self, "isALargeFormatPhone")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures hasAPasscode](self, "hasAPasscode")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesDeviceFeatures supportsSMSMEssaging](self, "supportsSMSMEssaging")}];
  v18 = [v17 initWithFormat:@"BMSiriAssistantSuggestionFeaturesDeviceFeatures with connectedToAirpods: %@, noiseCancellingMode: %@, connectedToDevice: %@, isInCarPlay: %@, hasWatch: %@, hasIPad: %@, hasHomePod: %@, hasAppleTV: %@, hasIPhone: %@, totalNumDevices: %@, currentDeviceType: %@, currentBuildVersion: %@, distanceFromLatestBuild: %@, isALargeFormatPhone: %@, hasAPasscode: %@, supportsSMSMEssaging: %@", v16, noiseCancellingMode, connectedToDevice, v15, v14, v13, v19, v12, v11, v10, currentDeviceType, currentBuildVersion, distanceFromLatestBuild, v6, v7, v8];

  return v18;
}

- (BMSiriAssistantSuggestionFeaturesDeviceFeatures)initWithConnectedToAirpods:(id)airpods noiseCancellingMode:(id)mode connectedToDevice:(id)device isInCarPlay:(id)play hasWatch:(id)watch hasIPad:(id)pad hasHomePod:(id)pod hasAppleTV:(id)self0 hasIPhone:(id)self1 totalNumDevices:(id)self2 currentDeviceType:(id)self3 currentBuildVersion:(id)self4 distanceFromLatestBuild:(id)self5 isALargeFormatPhone:(id)self6 hasAPasscode:(id)self7 supportsSMSMEssaging:(id)self8
{
  airpodsCopy = airpods;
  obj = mode;
  modeCopy = mode;
  deviceCopy = device;
  deviceCopy2 = device;
  playCopy = play;
  watchCopy = watch;
  padCopy = pad;
  podCopy = pod;
  vCopy = v;
  phoneCopy = phone;
  devicesCopy = devices;
  typeCopy = type;
  versionCopy = version;
  buildCopy = build;
  formatPhoneCopy = formatPhone;
  passcodeCopy = passcode;
  essagingCopy = essaging;
  v45.receiver = self;
  v45.super_class = BMSiriAssistantSuggestionFeaturesDeviceFeatures;
  v30 = [(BMEventBase *)&v45 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    if (airpodsCopy)
    {
      v30->_hasConnectedToAirpods = 1;
      v30->_connectedToAirpods = [airpodsCopy BOOLValue];
    }

    else
    {
      v30->_hasConnectedToAirpods = 0;
      v30->_connectedToAirpods = 0;
    }

    objc_storeStrong(&v30->_noiseCancellingMode, obj);
    objc_storeStrong(&v30->_connectedToDevice, deviceCopy);
    if (playCopy)
    {
      v30->_hasIsInCarPlay = 1;
      v30->_isInCarPlay = [playCopy BOOLValue];
    }

    else
    {
      v30->_hasIsInCarPlay = 0;
      v30->_isInCarPlay = 0;
    }

    if (watchCopy)
    {
      v30->_hasHasWatch = 1;
      v30->_hasWatch = [watchCopy BOOLValue];
    }

    else
    {
      v30->_hasHasWatch = 0;
      v30->_hasWatch = 0;
    }

    if (padCopy)
    {
      v30->_hasHasIPad = 1;
      v30->_hasIPad = [padCopy BOOLValue];
    }

    else
    {
      v30->_hasHasIPad = 0;
      v30->_hasIPad = 0;
    }

    if (podCopy)
    {
      v30->_hasHasHomePod = 1;
      v30->_hasHomePod = [podCopy BOOLValue];
    }

    else
    {
      v30->_hasHasHomePod = 0;
      v30->_hasHomePod = 0;
    }

    if (vCopy)
    {
      v30->_hasHasAppleTV = 1;
      v30->_hasAppleTV = [vCopy BOOLValue];
    }

    else
    {
      v30->_hasHasAppleTV = 0;
      v30->_hasAppleTV = 0;
    }

    if (phoneCopy)
    {
      v30->_hasHasIPhone = 1;
      v30->_hasIPhone = [phoneCopy BOOLValue];
    }

    else
    {
      v30->_hasHasIPhone = 0;
      v30->_hasIPhone = 0;
    }

    if (devicesCopy)
    {
      v30->_hasTotalNumDevices = 1;
      intValue = [devicesCopy intValue];
    }

    else
    {
      v30->_hasTotalNumDevices = 0;
      intValue = -1;
    }

    v30->_totalNumDevices = intValue;
    objc_storeStrong(&v30->_currentDeviceType, type);
    objc_storeStrong(&v30->_currentBuildVersion, version);
    objc_storeStrong(&v30->_distanceFromLatestBuild, build);
    if (formatPhoneCopy)
    {
      v30->_hasIsALargeFormatPhone = 1;
      v30->_isALargeFormatPhone = [formatPhoneCopy BOOLValue];
    }

    else
    {
      v30->_hasIsALargeFormatPhone = 0;
      v30->_isALargeFormatPhone = 0;
    }

    if (passcodeCopy)
    {
      v30->_hasHasAPasscode = 1;
      v30->_hasAPasscode = [passcodeCopy BOOLValue];
    }

    else
    {
      v30->_hasHasAPasscode = 0;
      v30->_hasAPasscode = 0;
    }

    if (essagingCopy)
    {
      v30->_hasSupportsSMSMEssaging = 1;
      v30->_supportsSMSMEssaging = [essagingCopy BOOLValue];
    }

    else
    {
      v30->_hasSupportsSMSMEssaging = 0;
      v30->_supportsSMSMEssaging = 0;
    }
  }

  return v30;
}

+ (id)protoFields
{
  v20[16] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connectedToAirpods" number:1 type:12 subMessageClass:0];
  v20[0] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"noiseCancellingMode" number:2 type:13 subMessageClass:0];
  v20[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"connectedToDevice" number:3 type:13 subMessageClass:0];
  v20[2] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInCarPlay" number:5 type:12 subMessageClass:0];
  v20[3] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasWatch" number:6 type:12 subMessageClass:0];
  v20[4] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasIPad" number:7 type:12 subMessageClass:0];
  v20[5] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasHomePod" number:8 type:12 subMessageClass:0];
  v20[6] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasAppleTV" number:9 type:12 subMessageClass:0];
  v20[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasIPhone" number:10 type:12 subMessageClass:0];
  v20[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalNumDevices" number:11 type:2 subMessageClass:0];
  v20[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentDeviceType" number:12 type:13 subMessageClass:0];
  v20[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentBuildVersion" number:13 type:13 subMessageClass:0];
  v20[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"distanceFromLatestBuild" number:14 type:13 subMessageClass:0];
  v20[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isALargeFormatPhone" number:15 type:12 subMessageClass:0];
  v20[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasAPasscode" number:16 type:12 subMessageClass:0];
  v20[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"supportsSMSMEssaging" number:17 type:12 subMessageClass:0];
  v20[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:16];

  return v11;
}

+ (id)columns
{
  v20[16] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connectedToAirpods" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"noiseCancellingMode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"connectedToDevice" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInCarPlay" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasWatch" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasIPad" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasHomePod" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasAppleTV" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasIPhone" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalNumDevices" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentDeviceType" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentBuildVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"distanceFromLatestBuild" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isALargeFormatPhone" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasAPasscode" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"supportsSMSMEssaging" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesDeviceFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end