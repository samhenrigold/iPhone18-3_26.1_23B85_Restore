@interface BMMomentsEngagementAppEntryEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementAppEntryEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEngagementAppEntryEvent)initWithType:(int)type clientIdentifier:(id)identifier timestamp:(id)timestamp identifier:(id)a6 startTime:(id)time endTime:(id)endTime totalCharacters:(id)characters addedCharacters:(id)self0 usedPhotoAssets:(id)self1 appEntryEventType:(id)self2 bundleInterfaceTypes:(id)self3 bundleEvergreenTypes:(id)self4 bundleSummary:(id)self5 assets:(id)self6;
- (BOOL)isEqual:(id)equal;
- (NSDate)endTime;
- (NSDate)startTime;
- (NSDate)timestamp;
- (NSString)description;
- (id)_assetsJSONArray;
- (id)_bundleEvergreenTypesJSONArray;
- (id)_bundleInterfaceTypesJSONArray;
- (id)_identifierJSONArray;
- (id)_usedPhotoAssetsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementAppEntryEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMomentsEngagementAppEntryEvent *)self type];
    if (type == [v5 type])
    {
      clientIdentifier = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
      clientIdentifier2 = [v5 clientIdentifier];
      v9 = clientIdentifier2;
      if (clientIdentifier == clientIdentifier2)
      {
      }

      else
      {
        clientIdentifier3 = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
        clientIdentifier4 = [v5 clientIdentifier];
        v12 = [clientIdentifier3 isEqual:clientIdentifier4];

        if (!v12)
        {
          goto LABEL_52;
        }
      }

      timestamp = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
      timestamp2 = [v5 timestamp];
      v16 = timestamp2;
      if (timestamp == timestamp2)
      {
      }

      else
      {
        timestamp3 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
        timestamp4 = [v5 timestamp];
        v19 = [timestamp3 isEqual:timestamp4];

        if (!v19)
        {
          goto LABEL_52;
        }
      }

      identifier = [(BMMomentsEngagementAppEntryEvent *)self identifier];
      identifier2 = [v5 identifier];
      v22 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(BMMomentsEngagementAppEntryEvent *)self identifier];
        identifier4 = [v5 identifier];
        v25 = [identifier3 isEqual:identifier4];

        if (!v25)
        {
          goto LABEL_52;
        }
      }

      startTime = [(BMMomentsEngagementAppEntryEvent *)self startTime];
      startTime2 = [v5 startTime];
      v28 = startTime2;
      if (startTime == startTime2)
      {
      }

      else
      {
        startTime3 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
        startTime4 = [v5 startTime];
        v31 = [startTime3 isEqual:startTime4];

        if (!v31)
        {
          goto LABEL_52;
        }
      }

      endTime = [(BMMomentsEngagementAppEntryEvent *)self endTime];
      endTime2 = [v5 endTime];
      v34 = endTime2;
      if (endTime == endTime2)
      {
      }

      else
      {
        endTime3 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
        endTime4 = [v5 endTime];
        v37 = [endTime3 isEqual:endTime4];

        if (!v37)
        {
          goto LABEL_52;
        }
      }

      if (-[BMMomentsEngagementAppEntryEvent hasTotalCharacters](self, "hasTotalCharacters") || [v5 hasTotalCharacters])
      {
        if (![(BMMomentsEngagementAppEntryEvent *)self hasTotalCharacters])
        {
          goto LABEL_52;
        }

        if (![v5 hasTotalCharacters])
        {
          goto LABEL_52;
        }

        totalCharacters = [(BMMomentsEngagementAppEntryEvent *)self totalCharacters];
        if (totalCharacters != [v5 totalCharacters])
        {
          goto LABEL_52;
        }
      }

      if (-[BMMomentsEngagementAppEntryEvent hasAddedCharacters](self, "hasAddedCharacters") || [v5 hasAddedCharacters])
      {
        if (![(BMMomentsEngagementAppEntryEvent *)self hasAddedCharacters])
        {
          goto LABEL_52;
        }

        if (![v5 hasAddedCharacters])
        {
          goto LABEL_52;
        }

        addedCharacters = [(BMMomentsEngagementAppEntryEvent *)self addedCharacters];
        if (addedCharacters != [v5 addedCharacters])
        {
          goto LABEL_52;
        }
      }

      usedPhotoAssets = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
      usedPhotoAssets2 = [v5 usedPhotoAssets];
      v42 = usedPhotoAssets2;
      if (usedPhotoAssets == usedPhotoAssets2)
      {
      }

      else
      {
        usedPhotoAssets3 = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
        usedPhotoAssets4 = [v5 usedPhotoAssets];
        v45 = [usedPhotoAssets3 isEqual:usedPhotoAssets4];

        if (!v45)
        {
          goto LABEL_52;
        }
      }

      appEntryEventType = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
      appEntryEventType2 = [v5 appEntryEventType];
      v48 = appEntryEventType2;
      if (appEntryEventType == appEntryEventType2)
      {
      }

      else
      {
        appEntryEventType3 = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
        appEntryEventType4 = [v5 appEntryEventType];
        v51 = [appEntryEventType3 isEqual:appEntryEventType4];

        if (!v51)
        {
          goto LABEL_52;
        }
      }

      bundleInterfaceTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
      bundleInterfaceTypes2 = [v5 bundleInterfaceTypes];
      v54 = bundleInterfaceTypes2;
      if (bundleInterfaceTypes == bundleInterfaceTypes2)
      {
      }

      else
      {
        bundleInterfaceTypes3 = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
        bundleInterfaceTypes4 = [v5 bundleInterfaceTypes];
        v57 = [bundleInterfaceTypes3 isEqual:bundleInterfaceTypes4];

        if (!v57)
        {
          goto LABEL_52;
        }
      }

      bundleEvergreenTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
      bundleEvergreenTypes2 = [v5 bundleEvergreenTypes];
      v60 = bundleEvergreenTypes2;
      if (bundleEvergreenTypes == bundleEvergreenTypes2)
      {
      }

      else
      {
        bundleEvergreenTypes3 = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
        bundleEvergreenTypes4 = [v5 bundleEvergreenTypes];
        v63 = [bundleEvergreenTypes3 isEqual:bundleEvergreenTypes4];

        if (!v63)
        {
          goto LABEL_52;
        }
      }

      bundleSummary = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
      bundleSummary2 = [v5 bundleSummary];
      v66 = bundleSummary2;
      if (bundleSummary == bundleSummary2)
      {
      }

      else
      {
        bundleSummary3 = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
        bundleSummary4 = [v5 bundleSummary];
        v69 = [bundleSummary3 isEqual:bundleSummary4];

        if (!v69)
        {
          goto LABEL_52;
        }
      }

      assets = [(BMMomentsEngagementAppEntryEvent *)self assets];
      assets2 = [v5 assets];
      if (assets == assets2)
      {
        v13 = 1;
      }

      else
      {
        assets3 = [(BMMomentsEngagementAppEntryEvent *)self assets];
        assets4 = [v5 assets];
        v13 = [assets3 isEqual:assets4];
      }

      goto LABEL_53;
    }

LABEL_52:
    v13 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v13 = 0;
LABEL_54:

  return v13;
}

- (NSDate)endTime
{
  if (self->_hasRaw_endTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startTime
{
  if (self->_hasRaw_startTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v54[14] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent type](self, "type")}];
  clientIdentifier = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
  timestamp = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
  if (timestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  _identifierJSONArray = [(BMMomentsEngagementAppEntryEvent *)self _identifierJSONArray];
  startTime = [(BMMomentsEngagementAppEntryEvent *)self startTime];
  if (startTime)
  {
    v11 = MEMORY[0x1E696AD98];
    startTime2 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
    [startTime2 timeIntervalSince1970];
    v52 = [v11 numberWithDouble:?];
  }

  else
  {
    v52 = 0;
  }

  endTime = [(BMMomentsEngagementAppEntryEvent *)self endTime];
  if (endTime)
  {
    v14 = MEMORY[0x1E696AD98];
    endTime2 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
    [endTime2 timeIntervalSince1970];
    v51 = [v14 numberWithDouble:?];
  }

  else
  {
    v51 = 0;
  }

  if ([(BMMomentsEngagementAppEntryEvent *)self hasTotalCharacters])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent totalCharacters](self, "totalCharacters")}];
  }

  else
  {
    v50 = 0;
  }

  if ([(BMMomentsEngagementAppEntryEvent *)self hasAddedCharacters])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent addedCharacters](self, "addedCharacters")}];
  }

  else
  {
    v49 = 0;
  }

  _usedPhotoAssetsJSONArray = [(BMMomentsEngagementAppEntryEvent *)self _usedPhotoAssetsJSONArray];
  appEntryEventType = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
  _bundleInterfaceTypesJSONArray = [(BMMomentsEngagementAppEntryEvent *)self _bundleInterfaceTypesJSONArray];
  _bundleEvergreenTypesJSONArray = [(BMMomentsEngagementAppEntryEvent *)self _bundleEvergreenTypesJSONArray];
  bundleSummary = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
  jsonDictionary = [bundleSummary jsonDictionary];

  _assetsJSONArray = [(BMMomentsEngagementAppEntryEvent *)self _assetsJSONArray];
  v53[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null;
  v54[0] = null;
  v53[1] = @"clientIdentifier";
  null2 = clientIdentifier;
  if (!clientIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null2;
  v54[1] = null2;
  v53[2] = @"timestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null3;
  v54[2] = null3;
  v53[3] = @"identifier";
  null4 = _identifierJSONArray;
  if (!_identifierJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null4;
  v54[3] = null4;
  v53[4] = @"startTime";
  null5 = v52;
  if (!v52)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v3;
  v54[4] = null5;
  v53[5] = @"endTime";
  null6 = v51;
  if (!v51)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = clientIdentifier;
  v54[5] = null6;
  v53[6] = @"totalCharacters";
  null7 = v50;
  if (!v50)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v8;
  v54[6] = null7;
  v53[7] = @"addedCharacters";
  null8 = v49;
  if (!v49)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = _identifierJSONArray;
  v54[7] = null8;
  v53[8] = @"usedPhotoAssets";
  null9 = _usedPhotoAssetsJSONArray;
  if (!_usedPhotoAssetsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null5;
  v54[8] = null9;
  v53[9] = @"appEntryEventType";
  null10 = appEntryEventType;
  if (!appEntryEventType)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null6;
  v54[9] = null10;
  v53[10] = @"bundleInterfaceTypes";
  null11 = _bundleInterfaceTypesJSONArray;
  if (!_bundleInterfaceTypesJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v54[10] = null11;
  v53[11] = @"bundleEvergreenTypes";
  null12 = _bundleEvergreenTypesJSONArray;
  if (!_bundleEvergreenTypesJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v54[11] = null12;
  v53[12] = @"bundleSummary";
  null13 = jsonDictionary;
  if (!jsonDictionary)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v54[12] = null13;
  v53[13] = @"assets";
  null14 = _assetsJSONArray;
  if (!_assetsJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v54[13] = null14;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:14];
  if (_assetsJSONArray)
  {
    if (jsonDictionary)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_46;
    }
  }

LABEL_46:
  if (!_bundleEvergreenTypesJSONArray)
  {
  }

  if (!_bundleInterfaceTypesJSONArray)
  {
  }

  if (!appEntryEventType)
  {
  }

  if (!_usedPhotoAssetsJSONArray)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (v52)
  {
    if (v41)
    {
      goto LABEL_62;
    }
  }

  else
  {

    if (v41)
    {
LABEL_62:
      if (v42)
      {
        goto LABEL_63;
      }

      goto LABEL_72;
    }
  }

  if (v42)
  {
LABEL_63:
    if (v43)
    {
      goto LABEL_64;
    }

LABEL_73:

    if (v44)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

LABEL_72:

  if (!v43)
  {
    goto LABEL_73;
  }

LABEL_64:
  if (v44)
  {
    goto LABEL_65;
  }

LABEL_74:

LABEL_65:

  return v40;
}

- (id)_assetsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assets = [(BMMomentsEngagementAppEntryEvent *)self assets];
  v5 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(assets);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_bundleEvergreenTypesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bundleEvergreenTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
  v5 = [bundleEvergreenTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(bundleEvergreenTypes);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [bundleEvergreenTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_bundleInterfaceTypesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  bundleInterfaceTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
  v5 = [bundleInterfaceTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(bundleInterfaceTypes);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [bundleInterfaceTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_usedPhotoAssetsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  usedPhotoAssets = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
  v5 = [usedPhotoAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(usedPhotoAssets);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [usedPhotoAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_identifierJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  identifier = [(BMMomentsEngagementAppEntryEvent *)self identifier];
  v5 = [identifier countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(identifier);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [identifier countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMomentsEngagementAppEntryEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v317[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v316 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v317[0] = v45;
          v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v317 forKeys:&v316 count:1];
          v9 = 0;
          selfCopy2 = 0;
          *error = [v56 initWithDomain:v57 code:2 userInfo:?];
          goto LABEL_238;
        }

        v9 = 0;
        selfCopy2 = 0;
        goto LABEL_239;
      }

      v10 = v7;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementAppEntryEventTypeFromString(v10)];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
  v237 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v314 = *MEMORY[0x1E696A578];
        v41 = v9;
        v42 = objc_alloc(MEMORY[0x1E696AEC0]);
        v199 = objc_opt_class();
        v43 = v42;
        v9 = v41;
        v44 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v199, @"clientIdentifier"];
        v315 = v44;
        v236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
        v45 = 0;
        selfCopy2 = 0;
        *error = [v39 initWithDomain:v40 code:2 userInfo:?];
        goto LABEL_237;
      }

      v45 = 0;
      selfCopy2 = 0;
      goto LABEL_238;
    }

    v234 = v12;
  }

  else
  {
    v234 = 0;
  }

  errorCopy = error;
  v13 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  v236 = v13;
  if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v14;
      v38 = objc_alloc(MEMORY[0x1E695DF00]);
      [v37 doubleValue];
      v232 = [v38 initWithTimeIntervalSince1970:?];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v55 = v14;
        v232 = [v54 dateFromString:v55];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          selfCopy2 = error;
          if (error)
          {
            v91 = objc_alloc(MEMORY[0x1E696ABC0]);
            v92 = *MEMORY[0x1E698F240];
            v312 = *MEMORY[0x1E696A578];
            v93 = v9;
            v94 = objc_alloc(MEMORY[0x1E696AEC0]);
            v200 = objc_opt_class();
            v95 = v94;
            v9 = v93;
            v15 = [v95 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v200, @"timestamp"];
            v313 = v15;
            v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
            v44 = 0;
            selfCopy2 = 0;
            *errorCopy = [v91 initWithDomain:v92 code:2 userInfo:?];
            v45 = v234;

            goto LABEL_236;
          }

          v44 = 0;
          v45 = v234;
          goto LABEL_237;
        }

        v232 = v14;
      }

      v8 = 0x1E695D000;
    }
  }

  else
  {
    v232 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  null = [*(v8 + 4016) null];
  v17 = [v15 isEqual:null];

  v233 = v7;
  if (v17)
  {

    v15 = 0;
  }

  else if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v310 = *MEMORY[0x1E696A578];
        v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"identifier"];
        v311 = v239;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
        v21 = v18;
        v22 = v20;
        selfCopy2 = 0;
        *errorCopy = [v21 initWithDomain:v19 code:2 userInfo:v20];
        goto LABEL_55;
      }

      selfCopy2 = 0;
      v45 = v234;
      v44 = v232;
      goto LABEL_236;
    }
  }

  v239 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v264 = 0u;
  v15 = v15;
  v24 = [v15 countByEnumeratingWithState:&v261 objects:v309 count:16];
  selfCopy = self;
  v231 = v9;
  v238 = v15;
  if (!v24)
  {
LABEL_31:

    v30 = [dictionaryCopy objectForKeyedSubscript:@"startTime"];
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v30;
        v59 = objc_alloc(MEMORY[0x1E695DF00]);
        [v58 doubleValue];
        v22 = [v59 initWithTimeIntervalSince1970:?];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v64 = v30;
          v65 = [v63 dateFromString:v64];

          v22 = v65;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = errorCopy;
            if (errorCopy)
            {
              v131 = objc_alloc(MEMORY[0x1E696ABC0]);
              v132 = *MEMORY[0x1E698F240];
              v303 = *MEMORY[0x1E696A578];
              v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startTime"];
              v304 = v36;
              v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
              v133 = [v131 initWithDomain:v132 code:2 userInfo:?];
              selfCopy2 = 0;
              *errorCopy = v133;
              v22 = 0;
              v45 = v234;
              v44 = v232;

              goto LABEL_233;
            }

            selfCopy2 = 0;
            v45 = v234;
            v44 = v232;
LABEL_234:

            v15 = v238;
            goto LABEL_235;
          }

          v22 = v30;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"endTime"];
    v223 = v34;
    v225 = v22;
    if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = v35;
        v61 = objc_alloc(MEMORY[0x1E695DF00]);
        [v60 doubleValue];
        v62 = v61;
        v22 = v225;
        v36 = [v62 initWithTimeIntervalSince1970:?];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v134 = objc_alloc(MEMORY[0x1E696ABC0]);
              v135 = *MEMORY[0x1E698F240];
              v301 = *MEMORY[0x1E696A578];
              v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endTime"];
              v302 = v136;
              v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
              v138 = v135;
              v90 = v136;
              v222 = v137;
              v139 = [v134 initWithDomain:v138 code:2 userInfo:?];
              v36 = 0;
              selfCopy2 = 0;
              *errorCopy = v139;
              v45 = v234;
              v44 = v232;
              goto LABEL_231;
            }

            v36 = 0;
            selfCopy2 = 0;
            v45 = v234;
            v44 = v232;
            goto LABEL_232;
          }

          v36 = v35;
          goto LABEL_72;
        }

        v60 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v66 = v35;
        v36 = [v60 dateFromString:v66];

        v22 = v225;
      }
    }

    else
    {
      v36 = 0;
    }

LABEL_72:
    v67 = [dictionaryCopy objectForKeyedSubscript:@"totalCharacters"];
    v222 = v67;
    if (v67 && (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E698F240];
          v299 = *MEMORY[0x1E696A578];
          v217 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalCharacters"];
          v300 = v217;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          v88 = v85;
          v22 = v225;
          v221 = v87;
          v89 = [v88 initWithDomain:v86 code:2 userInfo:?];
          v90 = 0;
          selfCopy2 = 0;
          *errorCopy = v89;
          v45 = v234;
          v44 = v232;
          goto LABEL_230;
        }

        v90 = 0;
        selfCopy2 = 0;
        v45 = v234;
        v44 = v232;
        goto LABEL_231;
      }

      v216 = v68;
    }

    else
    {
      v216 = 0;
    }

    v69 = [dictionaryCopy objectForKeyedSubscript:@"addedCharacters"];
    v221 = v69;
    if (v69 && (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v297 = *MEMORY[0x1E696A578];
          obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"addedCharacters"];
          v298 = obj;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
          v99 = v96;
          v22 = v225;
          v229 = v98;
          v217 = 0;
          selfCopy2 = 0;
          *errorCopy = [v99 initWithDomain:v97 code:2 userInfo:?];
          v45 = v234;
          v44 = v232;
          v90 = v216;

          goto LABEL_229;
        }

        v217 = 0;
        selfCopy2 = 0;
        v45 = v234;
        v44 = v232;
        v90 = v216;
        goto LABEL_230;
      }

      v217 = v70;
    }

    else
    {
      v217 = 0;
    }

    v71 = [dictionaryCopy objectForKeyedSubscript:@"usedPhotoAssets"];
    null2 = [MEMORY[0x1E695DFB0] null];
    v73 = [v71 isEqual:null2];

    if (v73)
    {

      v71 = 0;
    }

    else if (v71)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v71;
        if (errorCopy)
        {
          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
          v109 = *MEMORY[0x1E698F240];
          v295 = *MEMORY[0x1E696A578];
          v228 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"usedPhotoAssets"];
          v296 = v228;
          v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
          selfCopy2 = 0;
          *errorCopy = [v108 initWithDomain:v109 code:2 userInfo:v110];
          v111 = v110;
          v45 = v234;
          v44 = v232;
          v22 = v225;
          v90 = v216;
          self = selfCopy;
          goto LABEL_228;
        }

        selfCopy2 = 0;
        v45 = v234;
        v44 = v232;
        v22 = v225;
        v90 = v216;
        self = selfCopy;
        goto LABEL_229;
      }
    }

    v228 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v71, "count")}];
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    obj = v71;
    v74 = [obj countByEnumeratingWithState:&v256 objects:v294 count:16];
    if (!v74)
    {
      goto LABEL_92;
    }

    v75 = v74;
    v76 = *v257;
    v212 = dictionaryCopy;
    while (1)
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v257 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v256 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (errorCopy)
          {
            v100 = objc_alloc(MEMORY[0x1E696ABC0]);
            v101 = *MEMORY[0x1E698F240];
            v292 = *MEMORY[0x1E696A578];
            v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"usedPhotoAssets"];
            v293 = v214;
            v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
            v103 = [v100 initWithDomain:v101 code:2 userInfo:v102];
            selfCopy2 = 0;
            *errorCopy = v103;
LABEL_113:
            v22 = v225;
            v215 = obj;
            dictionaryCopy = v212;
            self = selfCopy;
            v7 = v233;
            goto LABEL_114;
          }

LABEL_117:
          selfCopy2 = 0;
          v22 = v225;
          v111 = obj;
          dictionaryCopy = v212;
          self = selfCopy;
          v7 = v233;
          v45 = v234;
          v44 = v232;
          v90 = v216;
          goto LABEL_228;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v104 = objc_alloc(MEMORY[0x1E696ABC0]);
            v105 = *MEMORY[0x1E698F240];
            v290 = *MEMORY[0x1E696A578];
            v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"usedPhotoAssets"];
            v291 = v214;
            v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
            v106 = [v104 initWithDomain:v105 code:2 userInfo:v102];
            selfCopy2 = 0;
            *errorCopy = v106;
            goto LABEL_113;
          }

          goto LABEL_117;
        }

        v79 = v78;
        v80 = [BMMomentsEngagementPhotosAssets alloc];
        v255 = 0;
        v81 = [(BMMomentsEngagementPhotosAssets *)v80 initWithJSONDictionary:v79 error:&v255];
        v82 = v255;
        if (v82)
        {
          v102 = v82;
          v214 = v79;
          if (errorCopy)
          {
            v107 = v82;
            *errorCopy = v102;
          }

          selfCopy2 = 0;
          goto LABEL_113;
        }

        [v228 addObject:v81];
      }

      v75 = [obj countByEnumeratingWithState:&v256 objects:v294 count:16];
      dictionaryCopy = v212;
      if (!v75)
      {
LABEL_92:

        v83 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEventType"];
        v214 = v83;
        if (!v83)
        {
          v215 = 0;
          self = selfCopy;
          goto LABEL_125;
        }

        v84 = v83;
        objc_opt_class();
        self = selfCopy;
        if (objc_opt_isKindOfClass())
        {
          v215 = 0;
          goto LABEL_125;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v215 = v84;
LABEL_125:
          v102 = [dictionaryCopy objectForKeyedSubscript:@"bundleInterfaceTypes"];
          null3 = [MEMORY[0x1E695DFB0] null];
          v113 = [v102 isEqual:null3];

          v22 = v225;
          if (v113)
          {

            v102 = 0;
            v7 = v233;
            goto LABEL_129;
          }

          v7 = v233;
          if (!v102 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
LABEL_129:
            v218 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v102, "count")}];
            v251 = 0u;
            v252 = 0u;
            v253 = 0u;
            v254 = 0u;
            v102 = v102;
            v114 = [v102 countByEnumeratingWithState:&v251 objects:v285 count:16];
            if (!v114)
            {
LABEL_138:

              v121 = [dictionaryCopy objectForKeyedSubscript:@"bundleEvergreenTypes"];
              null4 = [MEMORY[0x1E695DFB0] null];
              v123 = [v121 isEqual:null4];

              if (v123)
              {

                v121 = 0;
              }

              else if (v121)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v209 = v121;
                  if (!errorCopy)
                  {
                    selfCopy2 = 0;
                    v22 = v225;
                    v90 = v216;
                    goto LABEL_225;
                  }

                  v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v163 = *MEMORY[0x1E698F240];
                  v279 = *MEMORY[0x1E696A578];
                  v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bundleEvergreenTypes"];
                  v280 = v210;
                  v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
                  v164 = [v162 initWithDomain:v163 code:2 userInfo:?];
                  selfCopy2 = 0;
                  *errorCopy = v164;
                  v22 = v225;
                  v90 = v216;
                  goto LABEL_186;
                }
              }

              v210 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v121, "count")}];
              v247 = 0u;
              v248 = 0u;
              v249 = 0u;
              v250 = 0u;
              v209 = v121;
              v144 = [v209 countByEnumeratingWithState:&v247 objects:v278 count:16];
              if (!v144)
              {
                goto LABEL_168;
              }

              v145 = v144;
              v146 = *v248;
LABEL_161:
              v147 = dictionaryCopy;
              v148 = 0;
              while (1)
              {
                if (*v248 != v146)
                {
                  objc_enumerationMutation(v209);
                }

                v149 = *(*(&v247 + 1) + 8 * v148);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (errorCopy)
                  {
                    v160 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v161 = *MEMORY[0x1E698F240];
                    v274 = *MEMORY[0x1E696A578];
                    v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEvergreenTypes"];
                    v275 = v203;
                    v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
                    v158 = v160;
                    v159 = v161;
                    goto LABEL_178;
                  }

                  goto LABEL_182;
                }

                v150 = v149;
                [v210 addObject:v150];

                if (v145 == ++v148)
                {
                  v145 = [v209 countByEnumeratingWithState:&v247 objects:v278 count:16];
                  dictionaryCopy = v147;
                  self = selfCopy;
                  if (v145)
                  {
                    goto LABEL_161;
                  }

LABEL_168:

                  v151 = [dictionaryCopy objectForKeyedSubscript:@"bundleSummary"];
                  v208 = v151;
                  if (!v151)
                  {
                    v203 = 0;
                    v22 = v225;
                    goto LABEL_188;
                  }

                  v152 = v151;
                  objc_opt_class();
                  v22 = v225;
                  if (objc_opt_isKindOfClass())
                  {
                    v203 = 0;
                    goto LABEL_188;
                  }

                  objc_opt_class();
                  v90 = v216;
                  if (objc_opt_isKindOfClass())
                  {
                    v178 = v152;
                    v179 = [BMMomentsEngagementBundleSummary alloc];
                    v246 = 0;
                    v203 = [(BMMomentsEngagementBundleSummary *)v179 initWithJSONDictionary:v178 error:&v246];
                    v180 = v246;
                    if (v180)
                    {
                      v206 = v178;
                      if (errorCopy)
                      {
                        v180 = v180;
                        *errorCopy = v180;
                      }

                      selfCopy2 = 0;
                      v208 = v178;
                      goto LABEL_222;
                    }

LABEL_188:
                    v165 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
                    null5 = [MEMORY[0x1E695DFB0] null];
                    v167 = [v165 isEqual:null5];

                    if (v167)
                    {

                      v165 = 0;
LABEL_192:
                      v204 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v165, "count")}];
                      v242 = 0u;
                      v243 = 0u;
                      v244 = 0u;
                      v245 = 0u;
                      v206 = v165;
                      v168 = [v206 countByEnumeratingWithState:&v242 objects:v269 count:16];
                      v90 = v216;
                      if (!v168)
                      {
                        goto LABEL_202;
                      }

                      v169 = v168;
                      v170 = *v243;
                      v213 = dictionaryCopy;
LABEL_194:
                      v171 = 0;
                      while (1)
                      {
                        if (*v243 != v170)
                        {
                          objc_enumerationMutation(v206);
                        }

                        v172 = *(*(&v242 + 1) + 8 * v171);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          dictionaryCopy = v213;
                          self = selfCopy;
                          v187 = errorCopy;
                          v22 = v225;
                          if (!errorCopy)
                          {
                            goto LABEL_220;
                          }

                          v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v202 = *MEMORY[0x1E698F240];
                          v265 = *MEMORY[0x1E696A578];
                          v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assets"];
                          v266 = v189;
                          v190 = MEMORY[0x1E695DF20];
                          v191 = &v266;
                          v192 = &v265;
                          goto LABEL_215;
                        }

                        v173 = v172;
                        v174 = [BMMomentsEngagementAppEntryEventComposerAsset alloc];
                        v241 = 0;
                        v175 = [(BMMomentsEngagementAppEntryEventComposerAsset *)v174 initWithJSONDictionary:v173 error:&v241];
                        v176 = v241;
                        if (v176)
                        {
                          v193 = v176;
                          v194 = v173;
                          if (errorCopy)
                          {
                            v195 = v176;
                            *errorCopy = v193;
                          }

                          dictionaryCopy = v213;
                          self = selfCopy;
                          v22 = v225;
                          v189 = v194;
LABEL_219:

                          v90 = v216;
LABEL_220:

                          selfCopy2 = 0;
                          v7 = v233;
                          v177 = v204;
                          goto LABEL_221;
                        }

                        [v204 addObject:v175];

                        ++v171;
                        v90 = v216;
                        if (v169 == v171)
                        {
                          dictionaryCopy = v213;
                          self = selfCopy;
                          v169 = [v206 countByEnumeratingWithState:&v242 objects:v269 count:16];
                          if (v169)
                          {
                            goto LABEL_194;
                          }

LABEL_202:

                          v177 = v204;
                          v22 = v225;
                          self = -[BMMomentsEngagementAppEntryEvent initWithType:clientIdentifier:timestamp:identifier:startTime:endTime:totalCharacters:addedCharacters:usedPhotoAssets:appEntryEventType:bundleInterfaceTypes:bundleEvergreenTypes:bundleSummary:assets:](self, "initWithType:clientIdentifier:timestamp:identifier:startTime:endTime:totalCharacters:addedCharacters:usedPhotoAssets:appEntryEventType:bundleInterfaceTypes:bundleEvergreenTypes:bundleSummary:assets:", [v231 intValue], v234, v232, v239, v225, v36, v90, v217, v228, v215, v218, v210, v203, v204);
                          selfCopy2 = self;
                          v7 = v233;
LABEL_221:

                          goto LABEL_222;
                        }
                      }

                      dictionaryCopy = v213;
                      self = selfCopy;
                      v187 = errorCopy;
                      v22 = v225;
                      if (!errorCopy)
                      {
                        goto LABEL_220;
                      }

                      v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v202 = *MEMORY[0x1E698F240];
                      v267 = *MEMORY[0x1E696A578];
                      v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assets"];
                      v268 = v189;
                      v190 = MEMORY[0x1E695DF20];
                      v191 = &v268;
                      v192 = &v267;
LABEL_215:
                      v193 = [v190 dictionaryWithObjects:v191 forKeys:v192 count:1];
                      *v187 = [v188 initWithDomain:v202 code:2 userInfo:v193];
                      goto LABEL_219;
                    }

                    if (!v165)
                    {
                      goto LABEL_192;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      goto LABEL_192;
                    }

                    v206 = v165;
                    if (errorCopy)
                    {
                      v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v205 = *MEMORY[0x1E698F240];
                      v270 = *MEMORY[0x1E696A578];
                      v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assets"];
                      v271 = v197;
                      v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                      *errorCopy = [v226 initWithDomain:v205 code:2 userInfo:v198];
                      v177 = v197;

                      selfCopy2 = 0;
                      v90 = v216;
                      goto LABEL_221;
                    }

                    selfCopy2 = 0;
                    v90 = v216;
LABEL_222:
                    v121 = v209;
LABEL_223:

LABEL_224:
LABEL_225:

LABEL_226:
                    v84 = v214;
                    goto LABEL_227;
                  }

                  if (errorCopy)
                  {
                    v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v207 = *MEMORY[0x1E698F240];
                    v272 = *MEMORY[0x1E696A578];
                    v182 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v201 = objc_opt_class();
                    v183 = v182;
                    v90 = v216;
                    v203 = [v183 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v201, @"bundleSummary"];
                    v273 = v203;
                    v184 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
                    v185 = v207;
                    v206 = v184;
                    v186 = [v181 initWithDomain:v185 code:2 userInfo:?];
                    selfCopy2 = 0;
                    *errorCopy = v186;
                    v22 = v225;
                    goto LABEL_222;
                  }

                  selfCopy2 = 0;
                  v22 = v225;
LABEL_186:
                  v121 = v209;
                  goto LABEL_224;
                }
              }

              if (errorCopy)
              {
                v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                v156 = *MEMORY[0x1E698F240];
                v276 = *MEMORY[0x1E696A578];
                v203 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bundleEvergreenTypes"];
                v277 = v203;
                v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
                v158 = v155;
                v159 = v156;
LABEL_178:
                v206 = v157;
                dictionaryCopy = v147;
                v22 = v225;
                selfCopy2 = 0;
                *errorCopy = [v158 initWithDomain:v159 code:2 userInfo:?];
                v121 = v209;
                v208 = v209;
                self = selfCopy;
                v90 = v216;
                goto LABEL_223;
              }

LABEL_182:
              selfCopy2 = 0;
              v121 = v209;
              v208 = v209;
              dictionaryCopy = v147;
              self = selfCopy;
              v22 = v225;
              goto LABEL_148;
            }

            v115 = v114;
            v116 = *v252;
LABEL_131:
            v117 = dictionaryCopy;
            v118 = 0;
            while (1)
            {
              if (*v252 != v116)
              {
                objc_enumerationMutation(v102);
              }

              v119 = *(*(&v251 + 1) + 8 * v118);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy)
                {
                  v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v130 = *MEMORY[0x1E698F240];
                  v281 = *MEMORY[0x1E696A578];
                  v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleInterfaceTypes"];
                  v282 = v210;
                  v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
                  v127 = v129;
                  v128 = v130;
LABEL_147:
                  v208 = v126;
                  dictionaryCopy = v117;
                  v22 = v225;
                  selfCopy2 = 0;
                  *errorCopy = [v127 initWithDomain:v128 code:2 userInfo:?];
                  v121 = v102;
                  self = selfCopy;
LABEL_148:
                  v90 = v216;
                  goto LABEL_224;
                }

                goto LABEL_154;
              }

              v120 = v119;
              [v218 addObject:v120];

              if (v115 == ++v118)
              {
                v115 = [v102 countByEnumeratingWithState:&v251 objects:v285 count:16];
                dictionaryCopy = v117;
                self = selfCopy;
                if (!v115)
                {
                  goto LABEL_138;
                }

                goto LABEL_131;
              }
            }

            if (errorCopy)
            {
              v124 = objc_alloc(MEMORY[0x1E696ABC0]);
              v125 = *MEMORY[0x1E698F240];
              v283 = *MEMORY[0x1E696A578];
              v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bundleInterfaceTypes"];
              v284 = v210;
              v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
              v127 = v124;
              v128 = v125;
              goto LABEL_147;
            }

LABEL_154:
            selfCopy2 = 0;
            v121 = v102;
            dictionaryCopy = v117;
            self = selfCopy;
            v22 = v225;
LABEL_173:
            v90 = v216;
            goto LABEL_225;
          }

          if (errorCopy)
          {
            v211 = objc_alloc(MEMORY[0x1E696ABC0]);
            v153 = *MEMORY[0x1E698F240];
            v286 = *MEMORY[0x1E696A578];
            v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bundleInterfaceTypes"];
            v287 = v218;
            v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
            v154 = [v211 initWithDomain:v153 code:2 userInfo:v121];
            selfCopy2 = 0;
            *errorCopy = v154;
            goto LABEL_173;
          }

          selfCopy2 = 0;
LABEL_114:
          v90 = v216;
          goto LABEL_226;
        }

        v7 = v233;
        if (errorCopy)
        {
          v219 = objc_alloc(MEMORY[0x1E696ABC0]);
          v140 = *MEMORY[0x1E698F240];
          v288 = *MEMORY[0x1E696A578];
          v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appEntryEventType"];
          v289 = v102;
          v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
          v142 = v219;
          v220 = v141;
          v143 = [v142 initWithDomain:v140 code:2 userInfo:?];
          v215 = 0;
          selfCopy2 = 0;
          *errorCopy = v143;
          v22 = v225;
          v90 = v216;

          goto LABEL_226;
        }

        v215 = 0;
        selfCopy2 = 0;
        v22 = v225;
        v90 = v216;
LABEL_227:

        v45 = v234;
        v44 = v232;
        v111 = v215;
LABEL_228:

LABEL_229:
LABEL_230:

LABEL_231:
LABEL_232:

LABEL_233:
        v9 = v231;
        goto LABEL_234;
      }
    }
  }

  v25 = v24;
  v26 = *v262;
LABEL_23:
  v27 = dictionaryCopy;
  v28 = 0;
  while (1)
  {
    if (*v262 != v26)
    {
      objc_enumerationMutation(v15);
    }

    v29 = *(*(&v261 + 1) + 8 * v28);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_54;
      }

      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v305 = *MEMORY[0x1E696A578];
      v49 = v15;
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifier"];
      v306 = v30;
      v50 = MEMORY[0x1E695DF20];
      v51 = &v306;
      v52 = &v305;
LABEL_47:
      v36 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
      selfCopy2 = 0;
      *v46 = [v47 initWithDomain:v48 code:2 userInfo:v36];
      v22 = v49;
LABEL_51:
      dictionaryCopy = v27;
      self = selfCopy;
      v45 = v234;
      v44 = v232;
      goto LABEL_233;
    }

    v30 = v29;
    v31 = [BMMomentsEngagementSuggestionIdentifier alloc];
    v260 = 0;
    v32 = [(BMMomentsEngagementSuggestionIdentifier *)v31 initWithJSONDictionary:v30 error:&v260];
    v33 = v260;
    if (v33)
    {
      v36 = v33;
      if (errorCopy)
      {
        v53 = v33;
        *errorCopy = v36;
      }

      selfCopy2 = 0;
      v22 = v238;
      goto LABEL_51;
    }

    [v239 addObject:v32];

    ++v28;
    v15 = v238;
    if (v25 == v28)
    {
      v25 = [v238 countByEnumeratingWithState:&v261 objects:v309 count:16];
      dictionaryCopy = v27;
      self = selfCopy;
      v9 = v231;
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_23;
    }
  }

  v46 = errorCopy;
  if (errorCopy)
  {
    v47 = objc_alloc(MEMORY[0x1E696ABC0]);
    v48 = *MEMORY[0x1E698F240];
    v307 = *MEMORY[0x1E696A578];
    v49 = v15;
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"identifier"];
    v308 = v30;
    v50 = MEMORY[0x1E695DF20];
    v51 = &v308;
    v52 = &v307;
    goto LABEL_47;
  }

LABEL_54:
  selfCopy2 = 0;
  v22 = v15;
  dictionaryCopy = v27;
  self = selfCopy;
  v9 = v231;
LABEL_55:
  v45 = v234;
  v44 = v232;
LABEL_235:

LABEL_236:
LABEL_237:

LABEL_238:
LABEL_239:

  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementAppEntryEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v59 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = self->_identifier;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v49 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  if (self->_hasRaw_startTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasTotalCharacters)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAddedCharacters)
  {
    PBDataWriterWriteInt32Field();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = self->_usedPhotoAssets;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        v49 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v13);
  }

  if (self->_appEntryEventType)
  {
    PBDataWriterWriteStringField();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = self->_bundleInterfaceTypes;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      v21 = 0;
      do
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v19);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = self->_bundleEvergreenTypes;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteStringField();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v37 objects:v55 count:16];
    }

    while (v24);
  }

  if (self->_bundleSummary)
  {
    v49 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementBundleSummary *)self->_bundleSummary writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = self->_assets;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v33 + 1) + 8 * v31);
        v49 = 0;
        PBDataWriterPlaceMark();
        [v32 writeTo:{toCopy, v33}];
        PBDataWriterRecallMark();
        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v54 count:16];
    }

    while (v29);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v77.receiver = self;
  v77.super_class = BMMomentsEngagementAppEntryEvent;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
    goto LABEL_99;
  }

  v76 = objc_opt_new();
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
      LOBYTE(v78) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (LOBYTE(v78) & 0x7F) << v11;
      if ((LOBYTE(v78) & 0x80) == 0)
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
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (LOBYTE(v78) & 0x7F) << v19;
          if ((LOBYTE(v78) & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          if (v20++ > 8)
          {
            goto LABEL_85;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 4)
        {
LABEL_85:
          LODWORD(v21) = 0;
        }

        v5->_type = v21;
        continue;
      case 2u:
        v33 = PBReaderReadString();
        v34 = 88;
        goto LABEL_54;
      case 3u:
        v5->_hasRaw_timestamp = 1;
        v78 = 0.0;
        v35 = [fromCopy position] + 8;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_timestamp = v78;
        continue;
      case 4u:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v37 = [[BMMomentsEngagementSuggestionIdentifier alloc] initByReadFrom:fromCopy];
        if (!v37)
        {
          goto LABEL_101;
        }

        v38 = v37;
        v39 = v76;
        goto LABEL_76;
      case 5u:
        v5->_hasRaw_startTime = 1;
        v78 = 0.0;
        v29 = [fromCopy position] + 8;
        if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 8, v30 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_startTime = v78;
        continue;
      case 6u:
        v5->_hasRaw_endTime = 1;
        v78 = 0.0;
        v48 = [fromCopy position] + 8;
        if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 8, v49 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_endTime = v78;
        continue;
      case 7u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasTotalCharacters = 1;
        while (1)
        {
          LOBYTE(v78) = 0;
          v54 = [fromCopy position] + 1;
          if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 |= (LOBYTE(v78) & 0x7F) << v51;
          if ((LOBYTE(v78) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v17 = v52++ >= 9;
          if (v17)
          {
            v57 = 0;
            goto LABEL_90;
          }
        }

        if ([fromCopy hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_90:
        v5->_totalCharacters = v57;
        continue;
      case 8u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasAddedCharacters = 1;
        break;
      case 9u:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v59 = [[BMMomentsEngagementPhotosAssets alloc] initByReadFrom:fromCopy];
        if (!v59)
        {
          goto LABEL_101;
        }

        v38 = v59;
        v39 = v6;
        goto LABEL_76;
      case 0xAu:
        v33 = PBReaderReadString();
        v34 = 112;
LABEL_54:
        v47 = *(&v5->super.super.isa + v34);
        *(&v5->super.super.isa + v34) = v33;

        continue;
      case 0xBu:
        v58 = PBReaderReadString();
        if (!v58)
        {
          goto LABEL_101;
        }

        v27 = v58;
        v28 = v7;
        goto LABEL_72;
      case 0xCu:
        v26 = PBReaderReadString();
        if (!v26)
        {
          goto LABEL_101;
        }

        v27 = v26;
        v28 = v8;
LABEL_72:
        [v28 addObject:v27];

        continue;
      case 0xDu:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v31 = [[BMMomentsEngagementBundleSummary alloc] initByReadFrom:fromCopy];
        if (!v31)
        {
          goto LABEL_101;
        }

        bundleSummary = v5->_bundleSummary;
        v5->_bundleSummary = v31;

        PBReaderRecallMark();
        continue;
      case 0xEu:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v50 = [[BMMomentsEngagementAppEntryEventComposerAsset alloc] initByReadFrom:fromCopy];
        if (!v50)
        {
          goto LABEL_101;
        }

        v38 = v50;
        v39 = v9;
LABEL_76:
        [v39 addObject:v38];
        PBReaderRecallMark();

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_101:

        goto LABEL_98;
    }

    while (1)
    {
      LOBYTE(v78) = 0;
      v43 = [fromCopy position] + 1;
      if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
      {
        data7 = [fromCopy data];
        [data7 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v42 |= (LOBYTE(v78) & 0x7F) << v40;
      if ((LOBYTE(v78) & 0x80) == 0)
      {
        break;
      }

      v40 += 7;
      v17 = v41++ >= 9;
      if (v17)
      {
        v46 = 0;
        goto LABEL_82;
      }
    }

    if ([fromCopy hasError])
    {
      v46 = 0;
    }

    else
    {
      v46 = v42;
    }

LABEL_82:
    v5->_addedCharacters = v46;
  }

  v63 = [v76 copy];
  identifier = v5->_identifier;
  v5->_identifier = v63;

  v65 = [v6 copy];
  usedPhotoAssets = v5->_usedPhotoAssets;
  v5->_usedPhotoAssets = v65;

  v67 = [v7 copy];
  bundleInterfaceTypes = v5->_bundleInterfaceTypes;
  v5->_bundleInterfaceTypes = v67;

  v69 = [v8 copy];
  bundleEvergreenTypes = v5->_bundleEvergreenTypes;
  v5->_bundleEvergreenTypes = v69;

  v71 = [v9 copy];
  assets = v5->_assets;
  v5->_assets = v71;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_98:
    v74 = 0;
  }

  else
  {
LABEL_99:
    v74 = v5;
  }

  return v74;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = BMMomentsEngagementAppEntryEventTypeAsString([(BMMomentsEngagementAppEntryEvent *)self type]);
  clientIdentifier = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
  timestamp = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
  identifier = [(BMMomentsEngagementAppEntryEvent *)self identifier];
  startTime = [(BMMomentsEngagementAppEntryEvent *)self startTime];
  endTime = [(BMMomentsEngagementAppEntryEvent *)self endTime];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent totalCharacters](self, "totalCharacters")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent addedCharacters](self, "addedCharacters")}];
  usedPhotoAssets = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
  appEntryEventType = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
  bundleInterfaceTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
  bundleEvergreenTypes = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
  bundleSummary = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
  assets = [(BMMomentsEngagementAppEntryEvent *)self assets];
  v16 = [v15 initWithFormat:@"BMMomentsEngagementAppEntryEvent with type: %@, clientIdentifier: %@, timestamp: %@, identifier: %@, startTime: %@, endTime: %@, totalCharacters: %@, addedCharacters: %@, usedPhotoAssets: %@, appEntryEventType: %@, bundleInterfaceTypes: %@, bundleEvergreenTypes: %@, bundleSummary: %@, assets: %@", v19, clientIdentifier, timestamp, identifier, startTime, endTime, v5, v13, usedPhotoAssets, appEntryEventType, bundleInterfaceTypes, bundleEvergreenTypes, bundleSummary, assets];

  return v16;
}

- (BMMomentsEngagementAppEntryEvent)initWithType:(int)type clientIdentifier:(id)identifier timestamp:(id)timestamp identifier:(id)a6 startTime:(id)time endTime:(id)endTime totalCharacters:(id)characters addedCharacters:(id)self0 usedPhotoAssets:(id)self1 appEntryEventType:(id)self2 bundleInterfaceTypes:(id)self3 bundleEvergreenTypes:(id)self4 bundleSummary:(id)self5 assets:(id)self6
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v39 = a6;
  v43 = a6;
  timeCopy = time;
  endTimeCopy = endTime;
  v23 = timestampCopy;
  charactersCopy = characters;
  addedCharactersCopy = addedCharacters;
  assetsCopy = assets;
  eventTypeCopy = eventType;
  typesCopy = types;
  evergreenTypesCopy = evergreenTypes;
  summaryCopy = summary;
  v29 = a16;
  v45.receiver = self;
  v45.super_class = BMMomentsEngagementAppEntryEvent;
  v30 = [(BMEventBase *)&v45 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    v30->_type = type;
    objc_storeStrong(&v30->_clientIdentifier, identifier);
    if (v23)
    {
      v30->_hasRaw_timestamp = 1;
      [v23 timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_timestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_timestamp = v31;
    objc_storeStrong(&v30->_identifier, v39);
    if (timeCopy)
    {
      v30->_hasRaw_startTime = 1;
      [timeCopy timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_startTime = 0;
      v32 = -1.0;
    }

    v30->_raw_startTime = v32;
    if (endTimeCopy)
    {
      v30->_hasRaw_endTime = 1;
      [endTimeCopy timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_endTime = 0;
      v33 = -1.0;
    }

    v30->_raw_endTime = v33;
    if (charactersCopy)
    {
      v30->_hasTotalCharacters = 1;
      intValue = [charactersCopy intValue];
    }

    else
    {
      v30->_hasTotalCharacters = 0;
      intValue = -1;
    }

    v30->_totalCharacters = intValue;
    if (addedCharactersCopy)
    {
      v30->_hasAddedCharacters = 1;
      intValue2 = [addedCharactersCopy intValue];
    }

    else
    {
      v30->_hasAddedCharacters = 0;
      intValue2 = -1;
    }

    v30->_addedCharacters = intValue2;
    objc_storeStrong(&v30->_usedPhotoAssets, assets);
    objc_storeStrong(&v30->_appEntryEventType, eventType);
    objc_storeStrong(&v30->_bundleInterfaceTypes, types);
    objc_storeStrong(&v30->_bundleEvergreenTypes, evergreenTypes);
    objc_storeStrong(&v30->_bundleSummary, summary);
    objc_storeStrong(&v30->_assets, a16);
  }

  return v30;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:2 type:13 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:14 subMessageClass:objc_opt_class()];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTime" number:5 type:0 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTime" number:6 type:0 subMessageClass:0];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalCharacters" number:7 type:2 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addedCharacters" number:8 type:2 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usedPhotoAssets" number:9 type:14 subMessageClass:objc_opt_class()];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventType" number:10 type:13 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceTypes" number:11 type:13 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEvergreenTypes" number:12 type:13 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSummary" number:13 type:14 subMessageClass:objc_opt_class()];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assets" number:14 type:14 subMessageClass:objc_opt_class()];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_760_51397];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTime" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTime" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalCharacters" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"addedCharacters" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"usedPhotoAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_762];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleInterfaceTypes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_764_51398];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleEvergreenTypes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_766_51399];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleSummary_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_768_51400];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_770];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v2;
  v18[5] = v3;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v13;
  v18[9] = v12;
  v18[10] = v6;
  v18[11] = v11;
  v18[12] = v7;
  v18[13] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v10;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _assetsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 bundleSummary];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _bundleEvergreenTypesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _bundleInterfaceTypesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _usedPhotoAssetsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _identifierJSONArray];
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

    v8 = [[BMMomentsEngagementAppEntryEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end