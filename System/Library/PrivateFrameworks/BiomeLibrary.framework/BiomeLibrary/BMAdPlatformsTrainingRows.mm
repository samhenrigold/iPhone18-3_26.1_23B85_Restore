@interface BMAdPlatformsTrainingRows
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAdPlatformsTrainingRows)initWithDeploymentID:(id)d experimentID:(id)iD treatmentID:(id)treatmentID adamID:(id)adamID impressed:(id)impressed tapped:(id)tapped dupe:(id)dupe installed:(id)self0 errorCode:(id)self1 appUsageVector:(id)self2 appDownloadVector:(id)self3 installedAppVector:(id)self4 userQueryVector:(id)self5 serverResponse:(id)self6 recordID:(id)self7;
- (BMAdPlatformsTrainingRows)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_appDownloadVectorJSONArray;
- (id)_appUsageVectorJSONArray;
- (id)_installedAppVectorJSONArray;
- (id)_userQueryVectorJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAdPlatformsTrainingRows

+ (id)columns
{
  v19[15] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deploymentID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"treatmentID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adamID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"impressed" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapped" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dupe" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"installed" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appUsageVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_23485];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appDownloadVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_90];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"installedAppVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_92];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userQueryVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_94];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serverResponse" dataType:4 requestOnly:0 fieldNumber:14 protoDataType:14 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recordID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v14;
  v19[5] = v2;
  v19[6] = v3;
  v19[7] = v4;
  v19[8] = v13;
  v19[9] = v12;
  v19[10] = v5;
  v19[11] = v6;
  v19[12] = v11;
  v19[13] = v7;
  v19[14] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:15];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deploymentID = [(BMAdPlatformsTrainingRows *)self deploymentID];
    deploymentID2 = [v5 deploymentID];
    v8 = deploymentID2;
    if (deploymentID == deploymentID2)
    {
    }

    else
    {
      deploymentID3 = [(BMAdPlatformsTrainingRows *)self deploymentID];
      deploymentID4 = [v5 deploymentID];
      v11 = [deploymentID3 isEqual:deploymentID4];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    experimentID = [(BMAdPlatformsTrainingRows *)self experimentID];
    experimentID2 = [v5 experimentID];
    v15 = experimentID2;
    if (experimentID == experimentID2)
    {
    }

    else
    {
      experimentID3 = [(BMAdPlatformsTrainingRows *)self experimentID];
      experimentID4 = [v5 experimentID];
      v18 = [experimentID3 isEqual:experimentID4];

      if (!v18)
      {
        goto LABEL_62;
      }
    }

    treatmentID = [(BMAdPlatformsTrainingRows *)self treatmentID];
    treatmentID2 = [v5 treatmentID];
    v21 = treatmentID2;
    if (treatmentID == treatmentID2)
    {
    }

    else
    {
      treatmentID3 = [(BMAdPlatformsTrainingRows *)self treatmentID];
      treatmentID4 = [v5 treatmentID];
      v24 = [treatmentID3 isEqual:treatmentID4];

      if (!v24)
      {
        goto LABEL_62;
      }
    }

    adamID = [(BMAdPlatformsTrainingRows *)self adamID];
    adamID2 = [v5 adamID];
    v27 = adamID2;
    if (adamID == adamID2)
    {
    }

    else
    {
      adamID3 = [(BMAdPlatformsTrainingRows *)self adamID];
      adamID4 = [v5 adamID];
      v30 = [adamID3 isEqual:adamID4];

      if (!v30)
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasImpressed](self, "hasImpressed") || [v5 hasImpressed])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasImpressed])
      {
        goto LABEL_62;
      }

      if (![v5 hasImpressed])
      {
        goto LABEL_62;
      }

      impressed = [(BMAdPlatformsTrainingRows *)self impressed];
      if (impressed != [v5 impressed])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasTapped](self, "hasTapped") || [v5 hasTapped])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasTapped])
      {
        goto LABEL_62;
      }

      if (![v5 hasTapped])
      {
        goto LABEL_62;
      }

      tapped = [(BMAdPlatformsTrainingRows *)self tapped];
      if (tapped != [v5 tapped])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasDupe](self, "hasDupe") || [v5 hasDupe])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasDupe])
      {
        goto LABEL_62;
      }

      if (![v5 hasDupe])
      {
        goto LABEL_62;
      }

      dupe = [(BMAdPlatformsTrainingRows *)self dupe];
      if (dupe != [v5 dupe])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasInstalled](self, "hasInstalled") || [v5 hasInstalled])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasInstalled])
      {
        goto LABEL_62;
      }

      if (![v5 hasInstalled])
      {
        goto LABEL_62;
      }

      installed = [(BMAdPlatformsTrainingRows *)self installed];
      if (installed != [v5 installed])
      {
        goto LABEL_62;
      }
    }

    if (-[BMAdPlatformsTrainingRows hasErrorCode](self, "hasErrorCode") || [v5 hasErrorCode])
    {
      if (![(BMAdPlatformsTrainingRows *)self hasErrorCode])
      {
        goto LABEL_62;
      }

      if (![v5 hasErrorCode])
      {
        goto LABEL_62;
      }

      [(BMAdPlatformsTrainingRows *)self errorCode];
      v36 = v35;
      [v5 errorCode];
      if (v36 != v37)
      {
        goto LABEL_62;
      }
    }

    appUsageVector = [(BMAdPlatformsTrainingRows *)self appUsageVector];
    appUsageVector2 = [v5 appUsageVector];
    v40 = appUsageVector2;
    if (appUsageVector == appUsageVector2)
    {
    }

    else
    {
      appUsageVector3 = [(BMAdPlatformsTrainingRows *)self appUsageVector];
      appUsageVector4 = [v5 appUsageVector];
      v43 = [appUsageVector3 isEqual:appUsageVector4];

      if (!v43)
      {
        goto LABEL_62;
      }
    }

    appDownloadVector = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
    appDownloadVector2 = [v5 appDownloadVector];
    v46 = appDownloadVector2;
    if (appDownloadVector == appDownloadVector2)
    {
    }

    else
    {
      appDownloadVector3 = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
      appDownloadVector4 = [v5 appDownloadVector];
      v49 = [appDownloadVector3 isEqual:appDownloadVector4];

      if (!v49)
      {
        goto LABEL_62;
      }
    }

    installedAppVector = [(BMAdPlatformsTrainingRows *)self installedAppVector];
    installedAppVector2 = [v5 installedAppVector];
    v52 = installedAppVector2;
    if (installedAppVector == installedAppVector2)
    {
    }

    else
    {
      installedAppVector3 = [(BMAdPlatformsTrainingRows *)self installedAppVector];
      installedAppVector4 = [v5 installedAppVector];
      v55 = [installedAppVector3 isEqual:installedAppVector4];

      if (!v55)
      {
        goto LABEL_62;
      }
    }

    userQueryVector = [(BMAdPlatformsTrainingRows *)self userQueryVector];
    userQueryVector2 = [v5 userQueryVector];
    v58 = userQueryVector2;
    if (userQueryVector == userQueryVector2)
    {
    }

    else
    {
      userQueryVector3 = [(BMAdPlatformsTrainingRows *)self userQueryVector];
      userQueryVector4 = [v5 userQueryVector];
      v61 = [userQueryVector3 isEqual:userQueryVector4];

      if (!v61)
      {
        goto LABEL_62;
      }
    }

    serverResponse = [(BMAdPlatformsTrainingRows *)self serverResponse];
    serverResponse2 = [v5 serverResponse];
    v64 = serverResponse2;
    if (serverResponse == serverResponse2)
    {
    }

    else
    {
      serverResponse3 = [(BMAdPlatformsTrainingRows *)self serverResponse];
      serverResponse4 = [v5 serverResponse];
      v67 = [serverResponse3 isEqual:serverResponse4];

      if (!v67)
      {
LABEL_62:
        v12 = 0;
LABEL_63:

        goto LABEL_64;
      }
    }

    recordID = [(BMAdPlatformsTrainingRows *)self recordID];
    recordID2 = [v5 recordID];
    if (recordID == recordID2)
    {
      v12 = 1;
    }

    else
    {
      recordID3 = [(BMAdPlatformsTrainingRows *)self recordID];
      recordID4 = [v5 recordID];
      v12 = [recordID3 isEqual:recordID4];
    }

    goto LABEL_63;
  }

  v12 = 0;
LABEL_64:

  return v12;
}

- (id)jsonDictionary
{
  v56[15] = *MEMORY[0x1E69E9840];
  deploymentID = [(BMAdPlatformsTrainingRows *)self deploymentID];
  experimentID = [(BMAdPlatformsTrainingRows *)self experimentID];
  treatmentID = [(BMAdPlatformsTrainingRows *)self treatmentID];
  adamID = [(BMAdPlatformsTrainingRows *)self adamID];
  if ([(BMAdPlatformsTrainingRows *)self hasImpressed])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows impressed](self, "impressed")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasTapped])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows tapped](self, "tapped")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasDupe])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows dupe](self, "dupe")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMAdPlatformsTrainingRows *)self hasInstalled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows installed](self, "installed")}];
  }

  else
  {
    v10 = 0;
  }

  if (![(BMAdPlatformsTrainingRows *)self hasErrorCode]|| ([(BMAdPlatformsTrainingRows *)self errorCode], fabs(v11) == INFINITY))
  {
    v54 = 0;
  }

  else
  {
    [(BMAdPlatformsTrainingRows *)self errorCode];
    v12 = MEMORY[0x1E696AD98];
    [(BMAdPlatformsTrainingRows *)self errorCode];
    v54 = [v12 numberWithDouble:?];
  }

  _appUsageVectorJSONArray = [(BMAdPlatformsTrainingRows *)self _appUsageVectorJSONArray];
  _appDownloadVectorJSONArray = [(BMAdPlatformsTrainingRows *)self _appDownloadVectorJSONArray];
  _installedAppVectorJSONArray = [(BMAdPlatformsTrainingRows *)self _installedAppVectorJSONArray];
  _userQueryVectorJSONArray = [(BMAdPlatformsTrainingRows *)self _userQueryVectorJSONArray];
  serverResponse = [(BMAdPlatformsTrainingRows *)self serverResponse];
  v49 = [serverResponse base64EncodedStringWithOptions:0];

  recordID = [(BMAdPlatformsTrainingRows *)self recordID];
  v55[0] = @"deploymentID";
  null = deploymentID;
  if (!deploymentID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null;
  v56[0] = null;
  v55[1] = @"experimentID";
  null2 = experimentID;
  if (!experimentID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null2;
  v56[1] = null2;
  v55[2] = @"treatmentID";
  null3 = treatmentID;
  if (!treatmentID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null3;
  v56[2] = null3;
  v55[3] = @"adamID";
  null4 = adamID;
  if (!adamID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null4;
  v56[3] = null4;
  v55[4] = @"impressed";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null5;
  v56[4] = null5;
  v55[5] = @"tapped";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null6;
  v56[5] = null6;
  v55[6] = @"dupe";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v9;
  v46 = v8;
  v36 = null7;
  v56[6] = null7;
  v55[7] = @"installed";
  null8 = v10;
  if (!v10)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = adamID;
  v35 = null8;
  v56[7] = null8;
  v55[8] = @"errorCode";
  null9 = v54;
  if (!v54)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null9;
  v56[8] = null9;
  v55[9] = @"appUsageVector";
  null10 = _appUsageVectorJSONArray;
  if (!_appUsageVectorJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = deploymentID;
  v56[9] = null10;
  v55[10] = @"appDownloadVector";
  null11 = _appDownloadVectorJSONArray;
  if (!_appDownloadVectorJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v7;
  v26 = experimentID;
  v56[10] = null11;
  v55[11] = @"installedAppVector";
  null12 = _installedAppVectorJSONArray;
  if (!_installedAppVectorJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = treatmentID;
  v56[11] = null12;
  v55[12] = @"userQueryVector";
  null13 = _userQueryVectorJSONArray;
  if (!_userQueryVectorJSONArray)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = null13;
  v55[13] = @"serverResponse";
  null14 = v49;
  if (!v49)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v55[14] = @"recordID";
  null15 = recordID;
  if (!recordID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v56[14] = null15;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{15, v33}];
  if (!recordID)
  {
  }

  if (!v49)
  {
  }

  if (!_userQueryVectorJSONArray)
  {
  }

  if (!_installedAppVectorJSONArray)
  {
  }

  if (!_appDownloadVectorJSONArray)
  {
  }

  if (!_appUsageVectorJSONArray)
  {
  }

  if (!v54)
  {
  }

  if (!v10)
  {
  }

  if (v45)
  {
    if (v46)
    {
      goto LABEL_65;
    }
  }

  else
  {

    if (v46)
    {
LABEL_65:
      if (v44)
      {
        goto LABEL_66;
      }

      goto LABEL_75;
    }
  }

  if (v44)
  {
LABEL_66:
    if (v48)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

LABEL_75:

  if (v48)
  {
LABEL_67:
    if (v28)
    {
      goto LABEL_68;
    }

    goto LABEL_77;
  }

LABEL_76:

  if (v28)
  {
LABEL_68:
    if (v26)
    {
      goto LABEL_69;
    }

LABEL_78:

    if (v47)
    {
      goto LABEL_70;
    }

    goto LABEL_79;
  }

LABEL_77:

  if (!v26)
  {
    goto LABEL_78;
  }

LABEL_69:
  if (v47)
  {
    goto LABEL_70;
  }

LABEL_79:

LABEL_70:

  return v43;
}

- (id)_userQueryVectorJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  userQueryVector = [(BMAdPlatformsTrainingRows *)self userQueryVector];
  v5 = [userQueryVector countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(userQueryVector);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [userQueryVector countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_installedAppVectorJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  installedAppVector = [(BMAdPlatformsTrainingRows *)self installedAppVector];
  v5 = [installedAppVector countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(installedAppVector);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [installedAppVector countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_appDownloadVectorJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appDownloadVector = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
  v5 = [appDownloadVector countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(appDownloadVector);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [appDownloadVector countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_appUsageVectorJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appUsageVector = [(BMAdPlatformsTrainingRows *)self appUsageVector];
  v5 = [appUsageVector countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(appUsageVector);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [appUsageVector countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAdPlatformsTrainingRows)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v303[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v235 = [dictionaryCopy objectForKeyedSubscript:@"deploymentID"];
  if (v235 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        errorCopy = error;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v302 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deploymentID"];
        v303[0] = v10;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v303 forKeys:&v302 count:1];
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v9];
        v7 = 0;
        v32 = 0;
        *errorCopy = v31;
        goto LABEL_215;
      }

      v7 = 0;
      v32 = 0;
      goto LABEL_216;
    }

    v7 = v235;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentID"];
  v233 = v8;
  v234 = v7;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        errorCopy2 = error;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v300 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experimentID"];
        v301 = v12;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
        v37 = v35;
        v11 = v36;
        v10 = 0;
        v32 = 0;
        *errorCopy2 = [v34 initWithDomain:v37 code:2 userInfo:v36];
        goto LABEL_214;
      }

      v10 = 0;
      v32 = 0;
      goto LABEL_215;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"treatmentID"];
  errorCopy3 = error;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = dictionaryCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = errorCopy3;
      if (errorCopy3)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v231 = *MEMORY[0x1E698F240];
        v298 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v189 = objc_opt_class();
        v41 = v40;
        self = selfCopy;
        v42 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v189, @"treatmentID"];
        v299 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
        v32 = 0;
        *errorCopy3 = [v38 initWithDomain:v231 code:2 userInfo:v43];
        v12 = 0;
        v14 = v42;
        dictionaryCopy = v16;
        v13 = v43;
        goto LABEL_213;
      }

      v32 = 0;
      goto LABEL_214;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"adamID"];
  v229 = v11;
  v230 = v13;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v203 = dictionaryCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = errorCopy3;
      if (errorCopy3)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v296 = *MEMORY[0x1E696A578];
        selfCopy2 = self;
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v190 = objc_opt_class();
        v58 = v57;
        self = selfCopy2;
        v59 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v190, @"adamID"];
        v297 = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
        v61 = v55;
        v11 = v229;
        v32 = 0;
        *errorCopy3 = [v54 initWithDomain:v61 code:2 userInfo:v60];
        dictionaryCopy = v203;
        v14 = 0;
        goto LABEL_212;
      }

      v32 = 0;
      goto LABEL_213;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"impressed"];
  v227 = v12;
  selfCopy3 = self;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v225 = v15;
      v15 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v62 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = *MEMORY[0x1E698F240];
          v294 = *MEMORY[0x1E696A578];
          v60 = v15;
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"impressed"];
          v295 = v18;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
          v64 = v62;
          v65 = v63;
          v11 = v229;
          v13 = v230;
          v226 = 0;
          v32 = 0;
          *errorCopy3 = [v64 initWithDomain:v65 code:2 userInfo:v17];
          goto LABEL_211;
        }

        v32 = 0;
        v60 = v15;
        v59 = 0;
        goto LABEL_212;
      }

      v225 = v15;
      v15 = v15;
    }
  }

  else
  {
    v225 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"tapped"];
  v226 = v15;
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy3)
      {
        v18 = 0;
        v32 = 0;
        v60 = v225;
        goto LABEL_211;
      }

      v66 = objc_alloc(MEMORY[0x1E696ABC0]);
      v67 = *MEMORY[0x1E698F240];
      v292 = *MEMORY[0x1E696A578];
      v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tapped"];
      v293 = v223;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
      v69 = v66;
      v70 = v67;
      v11 = v229;
      v13 = v230;
      v18 = 0;
      v32 = 0;
      *errorCopy3 = [v69 initWithDomain:v70 code:2 userInfo:v68];
      v19 = v68;
      goto LABEL_110;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"dupe"];
  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v221 = v14;
        v223 = v19;
        goto LABEL_33;
      }

      if (errorCopy3)
      {
        v224 = objc_alloc(MEMORY[0x1E696ABC0]);
        v77 = *MEMORY[0x1E698F240];
        v290 = *MEMORY[0x1E696A578];
        v78 = v18;
        v79 = v17;
        v80 = objc_alloc(MEMORY[0x1E696AEC0]);
        v191 = objc_opt_class();
        v81 = v80;
        v17 = v79;
        v18 = v78;
        v218 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v191, @"dupe"];
        v291 = v218;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
        v83 = v77;
        v11 = v229;
        v13 = v230;
        v219 = v82;
        v84 = [v224 initWithDomain:v83 code:2 userInfo:?];
        v223 = 0;
        v32 = 0;
        *errorCopy3 = v84;
        v60 = v225;
        goto LABEL_209;
      }

      v223 = 0;
      v32 = 0;
LABEL_110:
      v60 = v225;
      goto LABEL_210;
    }
  }

  v221 = v14;
  v223 = 0;
LABEL_33:
  v20 = [dictionaryCopy objectForKeyedSubscript:@"installed"];
  v219 = v20;
  if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v216 = v19;
      if (!errorCopy3)
      {
        v218 = 0;
        v32 = 0;
        v60 = v225;
        goto LABEL_208;
      }

      v87 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = *MEMORY[0x1E698F240];
      v288 = *MEMORY[0x1E696A578];
      v89 = v18;
      v90 = v17;
      v91 = objc_alloc(MEMORY[0x1E696AEC0]);
      v192 = objc_opt_class();
      v92 = v91;
      v17 = v90;
      v18 = v89;
      v46 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v192, @"installed"];
      v289 = v46;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
      v94 = v88;
      v11 = v229;
      v13 = v230;
      v217 = v93;
      v218 = 0;
      v32 = 0;
      *errorCopy3 = [v87 initWithDomain:v94 code:2 userInfo:?];
LABEL_118:
      v60 = v225;
      v19 = v216;
      goto LABEL_207;
    }

    v218 = v21;
  }

  else
  {
    v218 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
  v217 = v22;
  if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v211 = v17;
    v220 = 0;
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v216 = v19;
    if (errorCopy3)
    {
      v207 = v10;
      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v210 = v18;
      v96 = dictionaryCopy;
      v97 = *MEMORY[0x1E698F240];
      v286 = *MEMORY[0x1E696A578];
      v98 = objc_alloc(MEMORY[0x1E696AEC0]);
      v193 = objc_opt_class();
      v99 = v98;
      v13 = v230;
      v24 = [v99 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v193, @"errorCode"];
      v287 = v24;
      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
      v101 = v95;
      v102 = v97;
      dictionaryCopy = v96;
      v10 = v207;
      v18 = v210;
      v214 = v100;
      v46 = 0;
      v32 = 0;
      *errorCopy3 = [v101 initWithDomain:v102 code:2 userInfo:?];
      v60 = v225;

      goto LABEL_206;
    }

    v46 = 0;
    v32 = 0;
    goto LABEL_118;
  }

  v211 = v17;
  v220 = v23;
LABEL_39:
  v24 = [dictionaryCopy objectForKeyedSubscript:@"appUsageVector"];
  null = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 isEqual:null];

  if (v26)
  {
    v215 = v19;
    v206 = v10;
    v209 = v18;
    v27 = dictionaryCopy;

    v24 = 0;
  }

  else
  {
    v13 = v230;
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v111 = objc_alloc(MEMORY[0x1E696ABC0]);
          v112 = v18;
          v113 = dictionaryCopy;
          v114 = *MEMORY[0x1E698F240];
          v284 = *MEMORY[0x1E696A578];
          v213 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appUsageVector"];
          v285 = v213;
          v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v285 forKeys:&v284 count:1];
          v116 = v111;
          v117 = v114;
          dictionaryCopy = v113;
          v18 = v112;
          v13 = v230;
          obj = v115;
          v32 = 0;
          *errorCopy3 = [v116 initWithDomain:v117 code:2 userInfo:?];
          v60 = v225;
          v17 = v211;
          goto LABEL_204;
        }

        v32 = 0;
        v60 = v225;
        v17 = v211;
        v46 = v220;
        goto LABEL_206;
      }
    }

    v215 = v19;
    v206 = v10;
    v209 = v18;
    v27 = dictionaryCopy;
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v24 = v24;
  v45 = [v24 countByEnumeratingWithState:&v248 objects:v283 count:16];
  v46 = v220;
  v213 = v44;
  if (v45)
  {
    v47 = v45;
    v48 = *v249;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v249 != v48)
        {
          objc_enumerationMutation(v24);
        }

        v50 = *(*(&v248 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (errorCopy3)
          {
            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            v72 = *MEMORY[0x1E698F240];
            v281 = *MEMORY[0x1E696A578];
            v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appUsageVector"];
            v282 = v73;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
            v75 = v71;
            v76 = v72;
LABEL_82:
            v205 = v74;
            v10 = v206;
            v13 = v230;
            v60 = v225;
            v19 = v215;
            v32 = 0;
            *errorCopy3 = [v75 initWithDomain:v76 code:2 userInfo:?];
            obj = v24;
            dictionaryCopy = v27;
            v18 = v209;
            v17 = v211;
            goto LABEL_203;
          }

LABEL_86:
          v32 = 0;
          obj = v24;
          v10 = v206;
          dictionaryCopy = v27;
          v13 = v230;
LABEL_87:
          v60 = v225;
          v18 = v209;
          v17 = v211;
          v19 = v215;
          goto LABEL_205;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy3)
          {
            v85 = objc_alloc(MEMORY[0x1E696ABC0]);
            v86 = *MEMORY[0x1E698F240];
            v279 = *MEMORY[0x1E696A578];
            v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appUsageVector"];
            v280 = v73;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
            v75 = v85;
            v76 = v86;
            goto LABEL_82;
          }

          goto LABEL_86;
        }

        [v44 addObject:v50];
      }

      v47 = [v24 countByEnumeratingWithState:&v248 objects:v283 count:16];
    }

    while (v47);
  }

  dictionaryCopy = v27;
  v51 = [v27 objectForKeyedSubscript:@"appDownloadVector"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v53 = [v51 isEqual:null2];

  if (v53)
  {

    v51 = 0;
    v13 = v230;
  }

  else
  {
    v13 = v230;
    if (v51)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v51;
        if (!errorCopy3)
        {
          v32 = 0;
          v10 = v206;
          goto LABEL_87;
        }

        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v277 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appDownloadVector"];
        v278 = v73;
        v205 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
        v32 = 0;
        *errorCopy3 = [v133 initWithDomain:v134 code:2 userInfo:?];
LABEL_136:
        v10 = v206;
        goto LABEL_137;
      }
    }
  }

  v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  obj = v51;
  v103 = [obj countByEnumeratingWithState:&v244 objects:v276 count:16];
  if (!v103)
  {
    goto LABEL_103;
  }

  v104 = v103;
  v105 = *v245;
  do
  {
    for (j = 0; j != v104; ++j)
    {
      if (*v245 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v107 = *(*(&v244 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v118 = objc_alloc(MEMORY[0x1E696ABC0]);
          v119 = *MEMORY[0x1E698F240];
          v274 = *MEMORY[0x1E696A578];
          v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appDownloadVector"];
          v275 = v202;
          v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
          v121 = v118;
          v122 = v119;
LABEL_115:
          v201 = v120;
          dictionaryCopy = v27;
          v13 = v230;
          v60 = v225;
          v32 = 0;
          *errorCopy3 = [v121 initWithDomain:v122 code:2 userInfo:?];
          v205 = obj;
          v10 = v206;
          goto LABEL_151;
        }

LABEL_119:
        v32 = 0;
        v205 = obj;
        v10 = v206;
        dictionaryCopy = v27;
        v13 = v230;
LABEL_137:
        v60 = v225;
        v18 = v209;
        v17 = v211;
        v19 = v215;
        goto LABEL_203;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v272 = *MEMORY[0x1E696A578];
          v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appDownloadVector"];
          v273 = v202;
          v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
          v121 = v123;
          v122 = v124;
          goto LABEL_115;
        }

        goto LABEL_119;
      }

      [v73 addObject:v107];
    }

    v104 = [obj countByEnumeratingWithState:&v244 objects:v276 count:16];
    v13 = v230;
  }

  while (v104);
LABEL_103:

  dictionaryCopy = v27;
  v108 = [v27 objectForKeyedSubscript:@"installedAppVector"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v110 = [v108 isEqual:null3];

  if (!v110)
  {
    if (!v108)
    {
      goto LABEL_123;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_123;
    }

    v205 = v108;
    if (errorCopy3)
    {
      v142 = objc_alloc(MEMORY[0x1E696ABC0]);
      v143 = *MEMORY[0x1E698F240];
      v270 = *MEMORY[0x1E696A578];
      v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"installedAppVector"];
      v271 = v202;
      v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
      v32 = 0;
      *errorCopy3 = [v142 initWithDomain:v143 code:2 userInfo:?];
      v10 = v206;
      goto LABEL_150;
    }

    v32 = 0;
    goto LABEL_136;
  }

  v108 = 0;
LABEL_123:
  v202 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v108, "count")}];
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v205 = v108;
  v125 = [v205 countByEnumeratingWithState:&v240 objects:v269 count:16];
  if (!v125)
  {
    goto LABEL_132;
  }

  v126 = v125;
  v127 = *v241;
  do
  {
    for (k = 0; k != v126; ++k)
    {
      if (*v241 != v127)
      {
        objc_enumerationMutation(v205);
      }

      v129 = *(*(&v240 + 1) + 8 * k);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v135 = objc_alloc(MEMORY[0x1E696ABC0]);
          v136 = *MEMORY[0x1E698F240];
          v267 = *MEMORY[0x1E696A578];
          v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"installedAppVector"];
          v268 = v200;
          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
          v138 = v135;
          v139 = v136;
LABEL_142:
          v199 = v137;
          dictionaryCopy = v27;
          v13 = v230;
          v60 = v225;
          v32 = 0;
          *errorCopy3 = [v138 initWithDomain:v139 code:2 userInfo:?];
          v10 = v206;
          v201 = v205;
          v18 = v209;
          v17 = v211;
          v19 = v215;
          goto LABEL_200;
        }

LABEL_143:
        v32 = 0;
        v10 = v206;
        v201 = v205;
        dictionaryCopy = v27;
        v13 = v230;
LABEL_150:
        v60 = v225;
LABEL_151:
        v17 = v211;
        goto LABEL_152;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v140 = objc_alloc(MEMORY[0x1E696ABC0]);
          v141 = *MEMORY[0x1E698F240];
          v265 = *MEMORY[0x1E696A578];
          v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"installedAppVector"];
          v266 = v200;
          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
          v138 = v140;
          v139 = v141;
          goto LABEL_142;
        }

        goto LABEL_143;
      }

      [v202 addObject:v129];
    }

    v126 = [v205 countByEnumeratingWithState:&v240 objects:v269 count:16];
    v13 = v230;
  }

  while (v126);
LABEL_132:

  dictionaryCopy = v27;
  v130 = [v27 objectForKeyedSubscript:@"userQueryVector"];
  null4 = [MEMORY[0x1E695DFB0] null];
  v132 = [v130 isEqual:null4];

  if (v132)
  {
    v204 = dictionaryCopy;

    v130 = 0;
    goto LABEL_154;
  }

  if (v130)
  {
    objc_opt_class();
    v17 = v211;
    if (objc_opt_isKindOfClass())
    {
      v204 = dictionaryCopy;
      goto LABEL_155;
    }

    v201 = v130;
    if (errorCopy3)
    {
      v162 = objc_alloc(MEMORY[0x1E696ABC0]);
      v163 = *MEMORY[0x1E698F240];
      v263 = *MEMORY[0x1E696A578];
      v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"userQueryVector"];
      v264 = v200;
      v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
      v165 = v163;
      v17 = v211;
      v32 = 0;
      *errorCopy3 = [v162 initWithDomain:v165 code:2 userInfo:v164];
      v161 = v164;
      v10 = v206;
      v60 = v225;
      goto LABEL_176;
    }

    v32 = 0;
    v10 = v206;
    v60 = v225;
LABEL_152:
    v18 = v209;
    v19 = v215;
    goto LABEL_202;
  }

  v204 = dictionaryCopy;
LABEL_154:
  v17 = v211;
LABEL_155:
  v200 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v130, "count")}];
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v144 = v130;
  v145 = [v144 countByEnumeratingWithState:&v236 objects:v262 count:16];
  v201 = v144;
  if (!v145)
  {
    goto LABEL_164;
  }

  v146 = v145;
  v147 = *v237;
  while (2)
  {
    v148 = v17;
    v149 = 0;
    while (2)
    {
      if (*v237 != v147)
      {
        objc_enumerationMutation(v201);
      }

      v150 = *(*(&v236 + 1) + 8 * v149);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v154 = objc_alloc(MEMORY[0x1E696ABC0]);
          v155 = *MEMORY[0x1E698F240];
          v260 = *MEMORY[0x1E696A578];
          v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"userQueryVector"];
          v261 = v198;
          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
          v157 = v154;
          v158 = v155;
LABEL_171:
          v196 = v156;
          dictionaryCopy = v204;
          v13 = v230;
          v60 = v225;
          v32 = 0;
          *errorCopy3 = [v157 initWithDomain:v158 code:2 userInfo:?];
          v199 = v201;
          v17 = v148;
          v10 = v206;
          v18 = v209;
          v19 = v215;

          goto LABEL_199;
        }

LABEL_172:
        v32 = 0;
        v161 = v201;
        v10 = v206;
        dictionaryCopy = v204;
        v13 = v230;
        v60 = v225;
        v17 = v148;
LABEL_176:
        v18 = v209;
        v19 = v215;
        goto LABEL_201;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v159 = objc_alloc(MEMORY[0x1E696ABC0]);
          v160 = *MEMORY[0x1E698F240];
          v258 = *MEMORY[0x1E696A578];
          v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userQueryVector"];
          v259 = v198;
          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
          v157 = v159;
          v158 = v160;
          goto LABEL_171;
        }

        goto LABEL_172;
      }

      [v200 addObject:v150];
      if (v146 != ++v149)
      {
        continue;
      }

      break;
    }

    v146 = [v201 countByEnumeratingWithState:&v236 objects:v262 count:16];
    v17 = v148;
    v144 = v201;
    if (v146)
    {
      continue;
    }

    break;
  }

LABEL_164:

  v151 = [v204 objectForKeyedSubscript:@"serverResponse"];
  v198 = v151;
  if (!v151)
  {
    v153 = v204;
    v199 = 0;
    v10 = v206;
    v19 = v215;
    goto LABEL_183;
  }

  v152 = v151;
  objc_opt_class();
  v10 = v206;
  v19 = v215;
  v153 = v204;
  if (objc_opt_isKindOfClass())
  {
    v199 = 0;
    goto LABEL_183;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v199 = v152;
    goto LABEL_183;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy3)
    {
      v179 = objc_alloc(MEMORY[0x1E696ABC0]);
      v180 = v17;
      v181 = *MEMORY[0x1E698F240];
      v254 = *MEMORY[0x1E696A578];
      v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"serverResponse"];
      v255 = v197;
      v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
      v183 = v179;
      v10 = v206;
      v184 = v181;
      v17 = v180;
      v194 = v182;
      v199 = 0;
      v32 = 0;
      *errorCopy3 = [v183 initWithDomain:v184 code:2 userInfo:?];
      dictionaryCopy = v204;
      v13 = v230;
      v60 = v225;
LABEL_196:
      v18 = v209;
      goto LABEL_197;
    }

LABEL_219:
    v199 = 0;
    v32 = 0;
    dictionaryCopy = v204;
    v13 = v230;
    v60 = v225;
    v18 = v209;
    goto LABEL_199;
  }

  v199 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v152 options:0];
  if (!v199)
  {
    v212 = v17;
    if (errorCopy3)
    {
      v186 = objc_alloc(MEMORY[0x1E696ABC0]);
      v187 = *MEMORY[0x1E698F240];
      v256 = *MEMORY[0x1E696A578];
      v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"serverResponse"];
      v257 = v197;
      v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
      v188 = [v186 initWithDomain:v187 code:2 userInfo:?];
      v199 = 0;
      v32 = 0;
      v13 = v230;
      *errorCopy3 = v188;
      dictionaryCopy = v204;
      v60 = v225;
      v18 = v209;
      v17 = v212;

      goto LABEL_198;
    }

    goto LABEL_219;
  }

LABEL_183:
  dictionaryCopy = v153;
  v166 = [v153 objectForKeyedSubscript:@"recordID"];
  v194 = v166;
  if (!v166)
  {
    v168 = 0;
    v170 = v227;
    v169 = selfCopy3;
    v13 = v230;
    v60 = v225;
    v18 = v209;
    goto LABEL_190;
  }

  v167 = v166;
  objc_opt_class();
  v18 = v209;
  if (objc_opt_isKindOfClass())
  {
    v168 = 0;
    v13 = v230;
    v60 = v225;
    goto LABEL_189;
  }

  objc_opt_class();
  v60 = v225;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy3)
    {
      v208 = v10;
      v171 = objc_alloc(MEMORY[0x1E696ABC0]);
      v172 = v17;
      v173 = *MEMORY[0x1E698F240];
      v252 = *MEMORY[0x1E696A578];
      v174 = dictionaryCopy;
      v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recordID"];
      v253 = v175;
      v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
      v177 = v171;
      v10 = v208;
      v178 = v173;
      v17 = v172;
      v60 = v225;
      *errorCopy3 = [v177 initWithDomain:v178 code:2 userInfo:v176];

      dictionaryCopy = v174;
    }

    v197 = 0;
    v32 = 0;
    v13 = v230;
    goto LABEL_196;
  }

  v168 = v167;
  v13 = v230;
LABEL_189:
  v170 = v227;
  v169 = selfCopy3;
LABEL_190:
  v197 = v168;
  v32 = [(BMAdPlatformsTrainingRows *)v169 initWithDeploymentID:v234 experimentID:v10 treatmentID:v170 adamID:v221 impressed:v226 tapped:v18 dupe:v223 installed:v218 errorCode:v220 appUsageVector:v213 appDownloadVector:v73 installedAppVector:v202 userQueryVector:v200 serverResponse:v199 recordID:v168];
  selfCopy3 = v32;
LABEL_197:

LABEL_198:
LABEL_199:

LABEL_200:
  v161 = v199;
LABEL_201:

LABEL_202:
LABEL_203:

LABEL_204:
  v46 = v220;
LABEL_205:

LABEL_206:
  v11 = v229;
LABEL_207:

LABEL_208:
  v14 = v221;
LABEL_209:

LABEL_210:
LABEL_211:

  v12 = v227;
  self = selfCopy3;
  v59 = v226;
LABEL_212:

LABEL_213:
LABEL_214:

  v9 = v233;
  v7 = v234;
LABEL_215:

LABEL_216:
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAdPlatformsTrainingRows *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deploymentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experimentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adamID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasImpressed)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTapped)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasDupe)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasInstalled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasErrorCode)
  {
    PBDataWriterWriteDoubleField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_appUsageVector;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v37 + 1) + 8 * v9) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_appDownloadVector;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v33 + 1) + 8 * v14) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_installedAppVector;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v29 + 1) + 8 * v19) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_userQueryVector;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * v24) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }

  if (self->_serverResponse)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v86.receiver = self;
  v86.super_class = BMAdPlatformsTrainingRows;
  v5 = [(BMEventBase *)&v86 init];
  if (!v5)
  {
    goto LABEL_105;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v87) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (LOBYTE(v87) & 0x7F) << v11;
      if ((LOBYTE(v87) & 0x80) == 0)
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
      break;
    }

    switch((v18 >> 3))
    {
      case 1u:
        v19 = PBReaderReadString();
        v20 = 32;
        goto LABEL_64;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_64;
      case 3u:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_64;
      case 4u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_64;
      case 5u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasImpressed = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 |= (LOBYTE(v87) & 0x7F) << v24;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v17 = v25++ >= 9;
          if (v17)
          {
            LOBYTE(v30) = 0;
            goto LABEL_81;
          }
        }

        v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_81:
        v5->_impressed = v30;
        continue;
      case 6u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasTapped = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v47 = [fromCopy position] + 1;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 |= (LOBYTE(v87) & 0x7F) << v44;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v17 = v45++ >= 9;
          if (v17)
          {
            LOBYTE(v50) = 0;
            goto LABEL_85;
          }
        }

        v50 = (v46 != 0) & ~[fromCopy hasError];
LABEL_85:
        v5->_tapped = v50;
        continue;
      case 7u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasDupe = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (LOBYTE(v87) & 0x7F) << v52;
          if ((LOBYTE(v87) & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v17 = v53++ >= 9;
          if (v17)
          {
            LOBYTE(v58) = 0;
            goto LABEL_87;
          }
        }

        v58 = (v54 != 0) & ~[fromCopy hasError];
LABEL_87:
        v5->_dupe = v58;
        continue;
      case 8u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasInstalled = 1;
        break;
      case 9u:
        v5->_hasErrorCode = 1;
        v87 = 0.0;
        v62 = [fromCopy position] + 8;
        if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 8, v63 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_errorCode = v87;
        continue;
      case 0xAu:
        v34 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v35 = [fromCopy position] + 8;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v71 = [v34 numberWithDouble:v87];
        if (!v71)
        {
          goto LABEL_107;
        }

        v66 = v71;
        v67 = v6;
        goto LABEL_100;
      case 0xBu:
        v59 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v60 = [fromCopy position] + 8;
        if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 8, v61 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v73 = [v59 numberWithDouble:v87];
        if (!v73)
        {
          goto LABEL_107;
        }

        v66 = v73;
        v67 = v7;
        goto LABEL_100;
      case 0xCu:
        v21 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v22 = [fromCopy position] + 8;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 8, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v65 = [v21 numberWithDouble:v87];
        if (!v65)
        {
          goto LABEL_107;
        }

        v66 = v65;
        v67 = v8;
        goto LABEL_100;
      case 0xDu:
        v31 = MEMORY[0x1E696AD98];
        v87 = 0.0;
        v32 = [fromCopy position] + 8;
        if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v69 = [v31 numberWithDouble:v87];
        if (!v69)
        {
          goto LABEL_107;
        }

        v66 = v69;
        v67 = v9;
LABEL_100:
        [v67 addObject:v66];

        continue;
      case 0xEu:
        v19 = PBReaderReadData();
        v20 = 104;
        goto LABEL_64;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 112;
LABEL_64:
        v51 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_107:

        goto LABEL_104;
    }

    while (1)
    {
      LOBYTE(v87) = 0;
      v40 = [fromCopy position] + 1;
      if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
      {
        data10 = [fromCopy data];
        [data10 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v39 |= (LOBYTE(v87) & 0x7F) << v37;
      if ((LOBYTE(v87) & 0x80) == 0)
      {
        break;
      }

      v37 += 7;
      v17 = v38++ >= 9;
      if (v17)
      {
        LOBYTE(v43) = 0;
        goto LABEL_83;
      }
    }

    v43 = (v39 != 0) & ~[fromCopy hasError];
LABEL_83:
    v5->_installed = v43;
  }

  v75 = [v6 copy];
  appUsageVector = v5->_appUsageVector;
  v5->_appUsageVector = v75;

  v77 = [v7 copy];
  appDownloadVector = v5->_appDownloadVector;
  v5->_appDownloadVector = v77;

  v79 = [v8 copy];
  installedAppVector = v5->_installedAppVector;
  v5->_installedAppVector = v79;

  v81 = [v9 copy];
  userQueryVector = v5->_userQueryVector;
  v5->_userQueryVector = v81;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_104:
    v84 = 0;
  }

  else
  {
LABEL_105:
    v84 = v5;
  }

  return v84;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  deploymentID = [(BMAdPlatformsTrainingRows *)self deploymentID];
  experimentID = [(BMAdPlatformsTrainingRows *)self experimentID];
  treatmentID = [(BMAdPlatformsTrainingRows *)self treatmentID];
  adamID = [(BMAdPlatformsTrainingRows *)self adamID];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows impressed](self, "impressed")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows tapped](self, "tapped")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows dupe](self, "dupe")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAdPlatformsTrainingRows installed](self, "installed")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMAdPlatformsTrainingRows *)self errorCode];
  v11 = [v3 numberWithDouble:?];
  appUsageVector = [(BMAdPlatformsTrainingRows *)self appUsageVector];
  appDownloadVector = [(BMAdPlatformsTrainingRows *)self appDownloadVector];
  installedAppVector = [(BMAdPlatformsTrainingRows *)self installedAppVector];
  userQueryVector = [(BMAdPlatformsTrainingRows *)self userQueryVector];
  serverResponse = [(BMAdPlatformsTrainingRows *)self serverResponse];
  recordID = [(BMAdPlatformsTrainingRows *)self recordID];
  v19 = [v18 initWithFormat:@"BMAdPlatformsTrainingRows with deploymentID: %@, experimentID: %@, treatmentID: %@, adamID: %@, impressed: %@, tapped: %@, dupe: %@, installed: %@, errorCode: %@, appUsageVector: %@, appDownloadVector: %@, installedAppVector: %@, userQueryVector: %@, serverResponse: %@, recordID: %@", deploymentID, experimentID, treatmentID, adamID, v20, v14, v13, v12, v11, appUsageVector, appDownloadVector, installedAppVector, userQueryVector, serverResponse, recordID];

  return v19;
}

- (BMAdPlatformsTrainingRows)initWithDeploymentID:(id)d experimentID:(id)iD treatmentID:(id)treatmentID adamID:(id)adamID impressed:(id)impressed tapped:(id)tapped dupe:(id)dupe installed:(id)self0 errorCode:(id)self1 appUsageVector:(id)self2 appDownloadVector:(id)self3 installedAppVector:(id)self4 userQueryVector:(id)self5 serverResponse:(id)self6 recordID:(id)self7
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  treatmentIDCopy = treatmentID;
  treatmentIDCopy2 = treatmentID;
  adamIDCopy = adamID;
  adamIDCopy2 = adamID;
  impressedCopy = impressed;
  tappedCopy = tapped;
  dupeCopy = dupe;
  v24 = tappedCopy;
  installedCopy = installed;
  v26 = impressedCopy;
  codeCopy = code;
  vectorCopy = vector;
  downloadVectorCopy = downloadVector;
  appVectorCopy = appVector;
  queryVectorCopy = queryVector;
  responseCopy = response;
  recordIDCopy = recordID;
  v47.receiver = self;
  v47.super_class = BMAdPlatformsTrainingRows;
  v31 = [(BMEventBase *)&v47 init];
  if (v31)
  {
    v31->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v31->_deploymentID, d);
    objc_storeStrong(&v31->_experimentID, iDCopy);
    objc_storeStrong(&v31->_treatmentID, treatmentIDCopy);
    objc_storeStrong(&v31->_adamID, adamIDCopy);
    if (v26)
    {
      v31->_hasImpressed = 1;
      v31->_impressed = [v26 BOOLValue];
    }

    else
    {
      v31->_hasImpressed = 0;
      v31->_impressed = 0;
    }

    if (v24)
    {
      v31->_hasTapped = 1;
      v31->_tapped = [v24 BOOLValue];
    }

    else
    {
      v31->_hasTapped = 0;
      v31->_tapped = 0;
    }

    if (dupeCopy)
    {
      v31->_hasDupe = 1;
      v31->_dupe = [dupeCopy BOOLValue];
    }

    else
    {
      v31->_hasDupe = 0;
      v31->_dupe = 0;
    }

    if (installedCopy)
    {
      v31->_hasInstalled = 1;
      v31->_installed = [installedCopy BOOLValue];
    }

    else
    {
      v31->_hasInstalled = 0;
      v31->_installed = 0;
    }

    if (codeCopy)
    {
      v31->_hasErrorCode = 1;
      [codeCopy doubleValue];
    }

    else
    {
      v31->_hasErrorCode = 0;
      v32 = -1.0;
    }

    v31->_errorCode = v32;
    objc_storeStrong(&v31->_appUsageVector, vector);
    objc_storeStrong(&v31->_appDownloadVector, downloadVector);
    objc_storeStrong(&v31->_installedAppVector, appVector);
    objc_storeStrong(&v31->_userQueryVector, queryVector);
    objc_storeStrong(&v31->_serverResponse, response);
    objc_storeStrong(&v31->_recordID, recordID);
  }

  return v31;
}

+ (id)protoFields
{
  v19[15] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deploymentID" number:1 type:13 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentID" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"treatmentID" number:3 type:13 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adamID" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"impressed" number:5 type:12 subMessageClass:0];
  v19[4] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapped" number:6 type:12 subMessageClass:0];
  v19[5] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dupe" number:7 type:12 subMessageClass:0];
  v19[6] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installed" number:8 type:12 subMessageClass:0];
  v19[7] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:9 type:0 subMessageClass:0];
  v19[8] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsageVector" number:10 type:0 subMessageClass:0];
  v19[9] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appDownloadVector" number:11 type:0 subMessageClass:0];
  v19[10] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installedAppVector" number:12 type:0 subMessageClass:0];
  v19[11] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userQueryVector" number:13 type:0 subMessageClass:0];
  v19[12] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverResponse" number:14 type:14 subMessageClass:0];
  v19[13] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recordID" number:15 type:13 subMessageClass:0];
  v19[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:15];

  return v11;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _userQueryVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _installedAppVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _appDownloadVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMAdPlatformsTrainingRows_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _appUsageVectorJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMAdPlatformsTrainingRows alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end