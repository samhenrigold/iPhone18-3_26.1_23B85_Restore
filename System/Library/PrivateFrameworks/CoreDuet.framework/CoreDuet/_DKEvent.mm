@interface _DKEvent
+ (BOOL)copyMetadata:(id)metadata toManagedObject:(id)object;
+ (BOOL)isValidURL:(id)l;
+ (_DKEvent)eventWithInteraction:(id)interaction bundleIdentifier:(id)identifier storeKeyImage:(BOOL)image;
+ (_DKEvent)eventWithRelevantShortcut:(id)shortcut bundleID:(id)d;
+ (_DKEvent)eventWithSearchableItem:(id)item bundleIdentifier:(id)identifier;
+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate categoryIntegerValue:(int64_t)value confidence:(double)confidence metadata:(id)metadata;
+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate identifierStringValue:(id)value confidence:(double)confidence metadata:(id)metadata;
+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate quantityDoubleValue:(double)value confidence:(double)confidence metadata:(id)metadata;
+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata;
+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value;
+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata;
+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value metadata:(id)metadata;
+ (id)allowedWebpageURLSchemes;
+ (id)eventRepresentingUserActivityWithSearchableItem:(id)item bundleIdentifier:(id)identifier;
+ (id)eventStreamFromManagedObject:(id)object forValue:(id)value cache:(id)cache;
+ (id)eventValueFromManagedObject:(id)object streamName:(id)name readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
+ (id)fetchCustomMetadataWithName:(id)name valueHash:(id)hash context:(id)context;
+ (id)fromPBCodable:(id)codable skipMetadata:(BOOL)metadata;
+ (id)keyPathForMOKeyPath:(uint64_t)path;
+ (id)metadataForInteraction:(id)interaction storeKeyImage:(BOOL)image;
+ (id)moKeyPathForKeyPath:(uint64_t)path;
+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
+ (id)relatedContactIdentifiersFromIntent:(id)intent;
+ (id)uncachedEventValueFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
- (BOOL)BOOLValue;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_DKEvent)initWithCoder:(id)coder;
- (_DKEvent)initWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata;
- (double)doubleValue;
- (id)_initWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata;
- (id)interaction;
- (id)metadataFromCustomMetadata:(id)metadata;
- (id)metadataFromCustomMetadata:(id)metadata cache:(id)cache;
- (id)metadataFromStructuredMetadata:(id)metadata excludedMetadataKeys:(id)keys;
- (id)metadataFromStructuredMetadata:(id)metadata excludedMetadataKeys:(id)keys cache:(id)cache;
- (id)primaryValue;
- (id)relevantShortcut;
- (id)stringValue;
- (id)toPBCodableUseStructuredMetadata:(BOOL)metadata;
- (int64_t)compareValue:(id)value;
- (int64_t)integerValue;
- (unint64_t)eventValueClassOf:(id)of;
- (void)encodeWithCoder:(id)coder;
- (void)fetchInteractionWithPopulatedKeyImage:(id)image;
@end

@implementation _DKEvent

- (id)stringValue
{
  value = [(_DKEvent *)self value];
  stringValue = [value stringValue];

  return stringValue;
}

- (id)primaryValue
{
  value = [(_DKEvent *)self value];
  v4 = [value conformsToProtocol:&unk_1F05F7418];

  if (v4)
  {
    value2 = [(_DKEvent *)self value];
    primaryValue = [value2 primaryValue];
  }

  else
  {
    primaryValue = 0;
  }

  return primaryValue;
}

+ (_DKEvent)eventWithSearchableItem:(id)item bundleIdentifier:(id)identifier
{
  v21[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    v7 = [_DKSource sourceForSearchableItem:itemCopy bundleID:identifierCopy];
    attributeSet = [itemCopy attributeSet];
    contentURL = [attributeSet contentURL];
    absoluteString = [contentURL absoluteString];

    if (absoluteString)
    {
      attributeSet2 = [itemCopy attributeSet];
      title = [attributeSet2 title];

      if (title)
      {
        v13 = +[_DKSafariHistoryMetadataKey title];
        v20 = v13;
        v21[0] = title;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      }

      else
      {
        v14 = 0;
      }

      v16 = +[_DKSystemEventStreams safariHistoryStream];
      date = [MEMORY[0x1E695DF00] date];
      date2 = [MEMORY[0x1E695DF00] date];
      v15 = [_DKEvent eventWithStream:v16 source:v7 startDate:date endDate:date2 identifierStringValue:absoluteString metadata:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)allowedWebpageURLSchemes
{
  if (allowedWebpageURLSchemes_once != -1)
  {
    +[_DKEvent(CSSearchableItem) allowedWebpageURLSchemes];
  }

  v3 = allowedWebpageURLSchemes_result;

  return v3;
}

+ (BOOL)isValidURL:(id)l
{
  v4 = MEMORY[0x1E696AF20];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy resolvingAgainstBaseURL:1];

  if (v6 && ([v6 scheme], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lowercaseString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "copy"), v8, v7, v9))
  {
    allowedWebpageURLSchemes = [self allowedWebpageURLSchemes];
    v11 = [allowedWebpageURLSchemes containsObject:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)eventRepresentingUserActivityWithSearchableItem:(id)item bundleIdentifier:(id)identifier
{
  v52[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    v8 = [_DKSource sourceForSearchableItem:itemCopy bundleID:identifierCopy];
    attributeSet = [itemCopy attributeSet];
    contentURL = [attributeSet contentURL];

    if (!contentURL)
    {
      v18 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (([self isValidURL:contentURL] & 1) == 0)
    {
      v19 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_DKEvent(CSSearchableItem) eventRepresentingUserActivityWithSearchableItem:contentURL bundleIdentifier:v19];
      }

      v18 = 0;
      goto LABEL_21;
    }

    attributeSet2 = [itemCopy attributeSet];
    title = [attributeSet2 title];

    v12 = objc_alloc(MEMORY[0x1E69636A8]);
    v13 = [v12 initWithActivityType:*MEMORY[0x1E696AA68]];
    [v13 setWebpageURL:contentURL];
    [v13 setTitle:title];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__9;
    v49 = __Block_byref_object_dispose__9;
    v50 = 0;
    v14 = dispatch_semaphore_create(0);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __95___DKEvent_CSSearchableItem__eventRepresentingUserActivityWithSearchableItem_bundleIdentifier___block_invoke;
    v42[3] = &unk_1E7368790;
    v44 = &v45;
    v15 = v14;
    v43 = v15;
    [v13 _createUserActivityStringsWithOptions:0 completionHandler:v42];
    v16 = dispatch_time(0, 1000000000);
    v40 = dispatch_semaphore_wait(v15, v16);
    if (v40)
    {
      v17 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_DKEvent(CSSearchableItem) eventRepresentingUserActivityWithSearchableItem:v17 bundleIdentifier:?];
      }

      v18 = 0;
    }

    else
    {
      if (!v46[5] || ([itemCopy uniqueIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
      {
        v18 = 0;
LABEL_20:

        _Block_object_dispose(&v45, 8);
        if (v40)
        {
LABEL_21:

          v35 = 0;
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v38 = +[_DKApplicationActivityMetadataKey itemIdentifier];
      v51[0] = v38;
      uniqueIdentifier = [itemCopy uniqueIdentifier];
      v52[0] = uniqueIdentifier;
      v22 = +[_DKApplicationActivityMetadataKey userActivityRequiredString];
      v51[1] = v22;
      v52[1] = v46[5];
      v23 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
      v51[2] = v23;
      v52[2] = MEMORY[0x1E695E118];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
      v17 = [v24 mutableCopy];

      _uniqueIdentifier = [v13 _uniqueIdentifier];
      uUIDString = [_uniqueIdentifier UUIDString];
      v27 = +[_DKApplicationActivityMetadataKey userActivityUUID];
      [v17 setObject:uUIDString forKeyedSubscript:v27];

      attributeSet3 = [itemCopy attributeSet];
      contentDescription = [attributeSet3 contentDescription];

      if (contentDescription)
      {
        attributeSet4 = [itemCopy attributeSet];
        contentDescription2 = [attributeSet4 contentDescription];
        v32 = +[_DKApplicationActivityMetadataKey contentDescription];
        [v17 setObject:contentDescription2 forKeyedSubscript:v32];
      }

      v39 = +[_DKSystemEventStreams appActivityStream];
      date = [MEMORY[0x1E695DF00] date];
      date2 = [MEMORY[0x1E695DF00] date];
      v18 = [_DKEvent eventWithStream:v39 source:v8 startDate:date endDate:date2 identifierStringValue:identifierCopy metadata:v17];
    }

    goto LABEL_20;
  }

  v18 = 0;
LABEL_23:
  v18 = v18;
  v35 = v18;
LABEL_24:

  return v35;
}

+ (_DKEvent)eventWithRelevantShortcut:(id)shortcut bundleID:(id)d
{
  v49 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  dCopy = d;
  if (!shortcutCopy)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v7 = INTrimToKeyImage();
  v47[1] = 0;
  v8 = INExtractKeyImage();
  v9 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  watchTemplate = [v8 watchTemplate];
  v42 = v10;
  if (watchTemplate)
  {
    cd_encodedDataImage = watchTemplate;
    watchTemplate2 = [v8 watchTemplate];
    image = [watchTemplate2 image];
    if (!image)
    {
LABEL_10:

      goto LABEL_11;
    }

    v15 = image;
    keyImage = [v9 keyImage];

    if (!keyImage)
    {
LABEL_11:
      v41 = v7;
      v47[0] = 0;
      v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v47];
      v23 = v47[0];
      v24 = v23;
      if (v22)
      {
        v38 = v23;
        v25 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
        v39 = v22;
        [v10 setObject:v22 forKeyedSubscript:v25];

        date = [MEMORY[0x1E695DF00] date];
        v27 = +[_DKSystemEventStreams appRelevantShortcutsStream];
        v40 = dCopy;
        v28 = [_DKBundleIdentifier withBundle:dCopy];
        v29 = [v10 copy];
        v19 = [_DKEvent eventWithStream:v27 startDate:date endDate:date value:v28 metadata:v29];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        relevanceProviders = [shortcutCopy relevanceProviders];
        v31 = [relevanceProviders countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v44;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v44 != v33)
              {
                objc_enumerationMutation(relevanceProviders);
              }

              v35 = *(*(&v43 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
                if ([v36 situation] > 5)
                {
                  [v19 setCompatibilityVersion:4096];

                  goto LABEL_27;
                }
              }
            }

            v32 = [relevanceProviders countByEnumeratingWithState:&v43 objects:v48 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        dCopy = v40;
        v24 = v38;
        v22 = v39;
      }

      else
      {
        date = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
        {
          +[_DKEvent(INRelevantShortcut) eventWithRelevantShortcut:bundleID:];
        }

        v19 = 0;
      }

      v7 = v41;
      goto LABEL_29;
    }
  }

  keyImage2 = [v9 keyImage];
  cd_encodedDataImage = [keyImage2 cd_encodedDataImage];

  keyImage3 = [v9 keyImage];

  if (!keyImage3 || cd_encodedDataImage)
  {
    proxyIdentifier = [v9 proxyIdentifier];
    v21 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
    [v10 setObject:proxyIdentifier forKeyedSubscript:v21];

    watchTemplate2 = +[_DKRelevantShortcutMetadataKey serializedKeyImage];
    [v10 setObject:cd_encodedDataImage forKeyedSubscript:watchTemplate2];
    goto LABEL_10;
  }

  v19 = 0;
LABEL_29:

LABEL_30:

  return v19;
}

- (id)relevantShortcut
{
  stream = [(_DKEvent *)self stream];
  v4 = +[_DKSystemEventStreams appRelevantShortcutsStream];
  v5 = [stream isEqual:v4];

  if (v5)
  {
    metadata = [(_DKEvent *)self metadata];
    v7 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
    v8 = [metadata objectForKeyedSubscript:v7];

    if (!v8)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(INRelevantShortcut) *)v10 relevantShortcut];
      }

      v21 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v25];
    v10 = v25;
    if (!v9)
    {
      v9 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent(INRelevantShortcut) relevantShortcut];
      }

      v21 = 0;
      goto LABEL_22;
    }

    metadata2 = [(_DKEvent *)self metadata];
    v12 = +[_DKRelevantShortcutMetadataKey serializedKeyImage];
    v13 = [metadata2 objectForKeyedSubscript:v12];

    if (v13)
    {
      v24 = v10;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INRelevantShortcut) relevantShortcut];
        }

        v21 = 0;
        goto LABEL_21;
      }

      v16 = objc_alloc_init(MEMORY[0x1E696E8D8]);
      [v16 setKeyImage:v14];
      metadata3 = [(_DKEvent *)self metadata];
      v18 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
      v19 = [metadata3 objectForKeyedSubscript:v18];
      [v16 setProxyIdentifier:v19];

      v20 = INInsertKeyImageExtraction();

      v9 = v20;
    }

    else
    {
      v15 = v10;
    }

    v9 = v9;
    v21 = v9;
LABEL_21:

    v10 = v15;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v8 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(_DKEvent(INRelevantShortcut) *)self relevantShortcut];
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (id)toPBCodableUseStructuredMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v56 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(_DKPREvent);
  startDate = [(_DKEvent *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setStartDate:v6];

  endDate = [(_DKEvent *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setEndDate:v8];

  value = [(_DKEvent *)self value];
  toPBCodable = [value toPBCodable];
  [(_DKPREvent *)v4 setValue:toPBCodable];

  stream = [(_DKEvent *)self stream];
  toPBCodable2 = [stream toPBCodable];
  [(_DKPREvent *)v4 setStream:toPBCodable2];

  uUID = [(_DKObject *)self UUID];
  uUIDString = [uUID UUIDString];
  [(_DKPREvent *)v4 setIdentifier:uUIDString];

  source = [(_DKObject *)self source];
  toPBCodable3 = [source toPBCodable];
  [(_DKPREvent *)v4 setSource:toPBCodable3];

  creationDate = [(_DKObject *)self creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setCreationDate:v18];

  timeZone = [(_DKEvent *)self timeZone];

  if (timeZone)
  {
    timeZone2 = [(_DKEvent *)self timeZone];
    -[_DKPREvent setTimeZone:](v4, [timeZone2 secondsFromGMT]);
  }

  if ([(_DKEvent *)self compatibilityVersion])
  {
    [(_DKPREvent *)v4 setCompatibilityVersion:?];
  }

  [(_DKEvent *)self confidence];
  if (v21 != 1.0)
  {
    [(_DKEvent *)self confidence];
    [(_DKPREvent *)v4 setConfidence:v22];
  }

  metadata = [(_DKEvent *)self metadata];
  if (metadata)
  {
    v24 = metadata;
    metadata2 = [(_DKEvent *)self metadata];
    v26 = [metadata2 count];

    if (v26)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = [(_DKEvent *)self metadata];
      v27 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        selfCopy = self;
        v30 = *v51;
        v31 = 0x1E7366000uLL;
        do
        {
          v32 = 0;
          do
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v50 + 1) + 8 * v32);
            metadata3 = [(_DKEvent *)selfCopy metadata];
            v35 = [metadata3 objectForKeyedSubscript:v33];

            v36 = objc_alloc_init(*(v31 + 1984));
            if (metadataCopy && (+[_DKMetadataPersistenceLookupTable keyToIndex](), v48 = v35, v37 = v28, v38 = v30, v39 = v31, v40 = selfCopy, v41 = v4, v42 = objc_claimAutoreleasedReturnValue(), [v42 objectForKeyedSubscript:v33], v43 = objc_claimAutoreleasedReturnValue(), v42, v4 = v41, selfCopy = v40, v31 = v39, v30 = v38, v28 = v37, v35 = v48, v43))
            {
              -[_DKPRMetadataEntry setIndex:](v36, [v43 unsignedIntValue]);
              [(_DKPRMetadataEntry *)v36 setKey:?];
            }

            else
            {
              [(_DKPRMetadataEntry *)v36 setKey:v33];
            }

            toPBCodable4 = [v35 toPBCodable];
            [(_DKPRMetadataEntry *)v36 setValue:toPBCodable4];

            value2 = [(_DKPRMetadataEntry *)v36 value];

            if (value2)
            {
              [(_DKPREvent *)v4 addMetadata:v36];
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [(_DKEvent(Protobuf) *)buf toPBCodableUseStructuredMetadata:v33, &buf[4]];
            }

            ++v32;
          }

          while (v28 != v32);
          v28 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v28);
      }
    }
  }

  return v4;
}

+ (id)fromPBCodable:(id)codable skipMetadata:(BOOL)metadata
{
  v49 = *MEMORY[0x1E69E9840];
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = codableCopy;
    v42 = codableCopy;
    value = [(_DKPREvent *)v42 value];
    v41 = [_DKObject fromPBCodable:value];

    if (!metadata && (-[_DKPREvent metadatas](v42), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (-[_DKPREvent metadatas](v42), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
    {
      v10 = MEMORY[0x1E695DF90];
      metadatas = [(_DKPREvent *)v42 metadatas];
      v43 = [v10 dictionaryWithCapacity:{objc_msgSend(metadatas, "count")}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      metadatas2 = [(_DKPREvent *)v42 metadatas];
      v13 = [metadatas2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v13)
      {
        v14 = *v45;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(metadatas2);
            }

            v16 = *(*(&v44 + 1) + 8 * i);
            v17 = [(_DKPRMetadataEntry *)v16 key];
            if ([(_DKPRMetadataEntry *)v16 hasIndex])
            {
              v18 = +[_DKMetadataPersistenceLookupTable indexToKey];
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:-[_DKPRMetadataEntry index](v16)];
              v20 = [v18 objectForKeyedSubscript:v19];

              v17 = v20;
            }

            if ([v17 length])
            {
              v21 = MEMORY[0x1E69E58C0];
              value2 = [(_DKPRMetadataEntry *)v16 value];
              v23 = [v21 fromPBCodable:value2];
              [v43 setObject:v23 forKeyedSubscript:v17];
            }
          }

          v13 = [metadatas2 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v43 = 0;
    }

    stream = [(_DKPREvent *)v42 stream];
    v26 = [_DKEventStream fromPBCodable:stream];

    source = [(_DKPREvent *)v42 source];
    v28 = [_DKSource fromPBCodable:source];

    v29 = objc_alloc(MEMORY[0x1E696AFB0]);
    identifier = [(_DKPREvent *)v42 identifier];
    v31 = [v29 initWithUUIDString:identifier];

    confidence = 1.0;
    if ([(_DKPREvent *)v42 hasConfidence])
    {
      confidence = [(_DKPREvent *)v42 confidence];
    }

    v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent startDate](v42)];
    v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent endDate](v42)];
    v24 = [[_DKEvent alloc] _initWithStream:v26 source:v28 startDate:v33 endDate:v34 value:v41 confidence:v43 metadata:confidence];
    [v24 setUUID:v31];
    v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent creationDate](v42)];
    [v24 setCreationDate:v35];

    if ([(_DKPREvent *)v42 hasTimeZone])
    {
      os_unfair_lock_lock(&fromPBCodable_skipMetadata___cacheLock);
      if (!fromPBCodable_skipMetadata___cachedTimeZone || (v36 = fromPBCodable_skipMetadata___cachedSecondsSinceGMT, v36 != [(_DKPREvent *)v42 timeZone]))
      {
        fromPBCodable_skipMetadata___cachedSecondsSinceGMT = [(_DKPREvent *)v42 timeZone];
        v37 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:-[_DKPREvent timeZone](v42)];
        v38 = fromPBCodable_skipMetadata___cachedTimeZone;
        fromPBCodable_skipMetadata___cachedTimeZone = v37;
      }

      [v24 setTimeZone:{fromPBCodable_skipMetadata___cachedTimeZone, v40}];
      os_unfair_lock_unlock(&fromPBCodable_skipMetadata___cacheLock);
    }

    if ([(_DKPREvent *)v42 hasCompatibilityVersion])
    {
      [v24 setCompatibilityVersion:-[_DKPREvent compatibilityVersion](v42)];
    }

    codableCopy = v40;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)metadataForInteraction:(id)interaction storeKeyImage:(BOOL)image
{
  imageCopy = image;
  interactionCopy = interaction;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:12];
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:interactionCopy];
  v9 = +[_DKIntentMetadataKey serializedInteraction];
  [v7 setObject:v8 forKeyedSubscript:v9];

  intent = [interactionCopy intent];
  _className = [intent _className];
  v12 = +[_DKIntentMetadataKey intentClass];
  [v7 setObject:_className forKeyedSubscript:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(intent, "_type")}];
  v14 = +[_DKIntentMetadataKey intentType];
  [v7 setObject:v13 forKeyedSubscript:v14];

  verb = [intent verb];
  v16 = +[_DKIntentMetadataKey intentVerb];
  [v7 setObject:verb forKeyedSubscript:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(interactionCopy, "_donatedBySiri")}];
  v18 = +[_DKIntentMetadataKey donatedBySiri];
  [v7 setObject:v17 forKeyedSubscript:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(interactionCopy, "direction")}];
  v20 = +[_DKIntentMetadataKey direction];
  [v7 setObject:v19 forKeyedSubscript:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(interactionCopy, "intentHandlingStatus")}];
  v22 = +[_DKIntentMetadataKey intentHandlingStatus];
  [v7 setObject:v21 forKeyedSubscript:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(intent, "shortcutAvailability")}];
  v24 = +[_DKIntentMetadataKey shortcutAvailability];
  [v7 setObject:v23 forKeyedSubscript:v24];

  cd_derivedIntentIdentifier = [intent cd_derivedIntentIdentifier];
  v26 = +[_DKIntentMetadataKey derivedIntentIdentifier];
  [v7 setObject:cd_derivedIntentIdentifier forKeyedSubscript:v26];

  if (imageCopy)
  {
    _keyImage = [intent _keyImage];
    cd_encodedDataImage = [_keyImage cd_encodedDataImage];
    v29 = +[_DKIntentMetadataKey serializedKeyImage];
    [v7 setObject:cd_encodedDataImage forKeyedSubscript:v29];
  }

  identifier = [interactionCopy identifier];
  v31 = +[_DKIntentMetadataKey interactionIdentifier];
  [v7 setObject:identifier forKeyedSubscript:v31];

  v32 = [self relatedContactIdentifiersFromIntent:intent];
  v33 = +[_DKIntentMetadataKey relatedContactIdentifiers];
  [v7 setObject:v32 forKeyedSubscript:v33];

  return v7;
}

+ (_DKEvent)eventWithInteraction:(id)interaction bundleIdentifier:(id)identifier storeKeyImage:(BOOL)image
{
  imageCopy = image;
  interactionCopy = interaction;
  identifierCopy = identifier;
  intent = [interactionCopy intent];
  v11 = [self metadataForInteraction:interactionCopy storeKeyImage:imageCopy];
  dateInterval = [interactionCopy dateInterval];
  startDate = [dateInterval startDate];
  v14 = startDate;
  if (startDate)
  {
    date = startDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v16 = date;

  dateInterval2 = [interactionCopy dateInterval];
  endDate = [dateInterval2 endDate];
  v19 = endDate;
  if (endDate)
  {
    v20 = endDate;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20;

  v22 = [_DKSource sourceForInteraction:interactionCopy bundleID:identifierCopy];

  domain = [intent domain];
  v24 = +[_DKSystemEventStreams appIntentsStream];
  v25 = [_DKEvent eventWithStream:v24 source:v22 startDate:v16 endDate:v21 identifierStringValue:domain metadata:v11];

  return v25;
}

+ (id)relatedContactIdentifiersFromIntent:(id)intent
{
  v35 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v4 = objc_opt_new();
  [intentCopy _nonNilParameters];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = 0x1E695D000uLL;
    do
    {
      v9 = 0;
      v23 = v6;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [intentCopy valueForKey:{*(*(&v29 + 1) + 8 * v9), v23}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v12 = v7;
          v13 = v8;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = v10;
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            do
            {
              v18 = 0;
              do
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                __63___DKEvent_INInteraction__relatedContactIdentifiersFromIntent___block_invoke(v15, v4, *(*(&v25 + 1) + 8 * v18++));
              }

              while (v16 != v18);
              v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              v16 = v15;
            }

            while (v15);
          }

          v8 = v13;
          v7 = v12;
          v6 = v23;
        }

        else
        {
          __63___DKEvent_INInteraction__relatedContactIdentifiersFromIntent___block_invoke(isKindOfClass, v4, v10);
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v19 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    +[_DKEvent(INInteraction) relatedContactIdentifiersFromIntent:];
  }

  if ([v4 count])
  {
    allObjects = [v4 allObjects];
    v21 = [allObjects componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)interaction
{
  stream = [(_DKEvent *)self stream];
  name = [stream name];
  v5 = +[_DKSystemEventStreams appIntentsStream];
  name2 = [v5 name];
  v7 = [name isEqualToString:name2];

  if (v7)
  {
    metadata = [(_DKEvent *)self metadata];
    v9 = +[_DKIntentMetadataKey serializedInteraction];
    v10 = [metadata objectForKeyedSubscript:v9];

    if (v10)
    {
      v16 = 0;
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v16];
      v12 = v16;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v14 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INInteraction) interaction];
        }
      }
    }

    else
    {
      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent(INInteraction) interaction];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_DKEvent(INInteraction) *)self interaction];
    }

    v11 = 0;
  }

  return v11;
}

- (void)fetchInteractionWithPopulatedKeyImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    interaction = [(_DKEvent *)self interaction];
    intent = [interaction intent];
    _keyImage = [intent _keyImage];
    if (_keyImage)
    {
      source = [(_DKObject *)self source];
      deviceID = [source deviceID];

      if (deviceID)
      {
        metadata = [(_DKEvent *)self metadata];
        v11 = +[_DKIntentMetadataKey serializedKeyImage];
        v12 = [metadata objectForKeyedSubscript:v11];

        if (v12)
        {
          v24 = 0;
          cd_dataImage = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v24];
          v14 = v24;
          v15 = v14;
          if (!cd_dataImage)
          {
            v17 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [_DKEvent(INInteraction) fetchInteractionWithPopulatedKeyImage:];
            }

            imageCopy[2](imageCopy, 0);
            goto LABEL_17;
          }

LABEL_9:
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke;
          v21[3] = &unk_1E7369028;
          v22 = _keyImage;
          v23 = cd_dataImage;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke_2;
          v18[3] = &unk_1E7369050;
          v19 = v23;
          v20 = imageCopy;
          v12 = v23;
          [interaction _injectProxiesForImages:v21 completion:v18];

LABEL_17:
          goto LABEL_18;
        }

        v16 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INInteraction) fetchInteractionWithPopulatedKeyImage:];
        }
      }

      else
      {
        cd_dataImage = [_keyImage cd_dataImage];
        if (cd_dataImage)
        {
          goto LABEL_9;
        }
      }

      imageCopy[2](imageCopy, 0);
    }

    else
    {
      (imageCopy)[2](imageCopy, interaction);
    }

LABEL_18:
  }
}

- (id)metadataFromStructuredMetadata:(id)metadata excludedMetadataKeys:(id)keys
{
  v49 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  keysCopy = keys;
  v7 = +[_DKMetadataPersistenceLookupTable attributeToKey];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    v33 = keysCopy;
    v34 = metadataCopy;
    v31 = *v43;
    v32 = dictionary;
    v39 = v9;
    do
    {
      v13 = 0;
      v40 = v11;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = v15;
        if (!keysCopy || !v15 || ([keysCopy containsObject:v15] & 1) == 0)
        {
          NSSelectorFromString(v14);
          if (objc_opt_respondsToSelector())
          {
            v17 = [metadataCopy valueForKey:v14];
            if (v17)
            {
              v18 = v17;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = MEMORY[0x1E695DFD8];
                v38 = objc_opt_class();
                v37 = objc_opt_class();
                v36 = objc_opt_class();
                v35 = objc_opt_class();
                v20 = objc_opt_class();
                v21 = objc_opt_class();
                v22 = objc_opt_class();
                v23 = objc_opt_class();
                v24 = objc_opt_class();
                v25 = [v19 setWithObjects:{v38, v37, v36, v35, v20, v21, v22, v23, v24, objc_opt_class(), 0}];
                v41 = 0;
                v26 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v25 fromData:v18 error:&v41];
                v27 = v41;

                v9 = v39;
                if (v27)
                {
                  v28 = +[_CDLogging knowledgeChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v47 = v27;
                    _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Error unarchiving object %@", buf, 0xCu);
                  }
                }

                v18 = v26;
                keysCopy = v33;
                metadataCopy = v34;
                v12 = v31;
                dictionary = v32;
              }

              else
              {
                v9 = v39;
              }

              v29 = [v9 objectForKeyedSubscript:v14];
              [dictionary setObject:v18 forKeyedSubscript:v29];

              v11 = v40;
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v11);
  }

  return dictionary;
}

- (id)metadataFromStructuredMetadata:(id)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  metadataCopy = metadata;
  keysCopy = keys;
  cacheCopy = cache;
  if (cacheCopy)
  {
    objectID = [metadataCopy objectID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84___DKEvent_MOConversion__metadataFromStructuredMetadata_excludedMetadataKeys_cache___block_invoke;
    v14[3] = &unk_1E736A378;
    v14[4] = self;
    v15 = metadataCopy;
    v16 = keysCopy;
    v11 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:objectID type:@"metadata" setIfMissingWithBlock:v14];
  }

  else
  {
    v11 = [(_DKEvent *)self metadataFromStructuredMetadata:metadataCopy excludedMetadataKeys:keysCopy];
  }

  return v11;
}

- (id)metadataFromCustomMetadata:(id)metadata
{
  v45 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(metadataCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = metadataCopy;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        name = [v10 name];
        if (!name)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing attribute for CustomMetadata: %@", v10, v30];
          binaryValue2 = LABEL_10:;
          [_CDErrorUtilities simulateCrashWithDescription:binaryValue2];
          goto LABEL_18;
        }

        stringValue = [v10 stringValue];

        if (stringValue)
        {
          stringValue2 = [v10 stringValue];
LABEL_17:
          binaryValue2 = stringValue2;
          [v4 setObject:stringValue2 forKeyedSubscript:name];
          goto LABEL_18;
        }

        integerValue = [v10 integerValue];

        if (integerValue)
        {
          stringValue2 = [v10 integerValue];
          goto LABEL_17;
        }

        doubleValue = [v10 doubleValue];

        if (doubleValue)
        {
          stringValue2 = [v10 doubleValue];
          goto LABEL_17;
        }

        dateValue = [v10 dateValue];

        if (dateValue)
        {
          stringValue2 = [v10 dateValue];
          goto LABEL_17;
        }

        binaryValue = [v10 binaryValue];

        if (!binaryValue)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid attributeValue for key '%@': %@", name, v10];
          goto LABEL_10;
        }

        valueHash = [v10 valueHash];
        v20 = [valueHash hasSuffix:@"B"];

        if (v20)
        {
          binaryValue2 = [v10 binaryValue];
          [v4 setObject:binaryValue2 forKeyedSubscript:name];
        }

        else
        {
          v37 = MEMORY[0x1E695DFD8];
          v36 = objc_opt_class();
          v35 = objc_opt_class();
          v34 = objc_opt_class();
          v33 = objc_opt_class();
          v32 = objc_opt_class();
          v31 = objc_opt_class();
          v21 = objc_opt_class();
          v22 = objc_opt_class();
          v23 = objc_opt_class();
          binaryValue2 = [v37 setWithObjects:{v36, v35, v34, v33, v32, v31, v21, v22, v23, objc_opt_class(), 0}];
          v24 = MEMORY[0x1E696ACD0];
          binaryValue3 = [v10 binaryValue];
          v38 = 0;
          v26 = [v24 unarchivedObjectOfClasses:binaryValue2 fromData:binaryValue3 error:&v38];
          v27 = v38;

          if (v27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [(_DKEvent(MOConversion) *)buf metadataFromCustomMetadata:v27, &buf[4]];
            }
          }

          else
          {
            [v4 setObject:v26 forKeyedSubscript:name];
          }
        }

LABEL_18:

        ++v9;
      }

      while (v7 != v9);
      v28 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
      v7 = v28;
    }

    while (v28);
  }

  return v4;
}

- (id)metadataFromCustomMetadata:(id)metadata cache:(id)cache
{
  v26 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  cacheCopy = cache;
  if (cacheCopy)
  {
    v10 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = metadataCopy;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          objectID = [*(*(&v21 + 1) + 8 * i) objectID];
          uRIRepresentation = [objectID URIRepresentation];

          absoluteString = [uRIRepresentation absoluteString];
          [v10 addObject:absoluteString];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v10 sortUsingSelector:sel_compare_];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59___DKEvent_MOConversion__metadataFromCustomMetadata_cache___block_invoke;
    v19[3] = &unk_1E736A3A0;
    v19[4] = self;
    v20 = v11;
    v8 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:v10 type:@"attributeValue" setIfMissingWithBlock:v19];
  }

  else
  {
    v8 = [(_DKEvent *)self metadataFromCustomMetadata:metadataCopy];
  }

  return v8;
}

+ (id)objectFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  metadataCopy = metadata;
  objectCopy = object;
  keysCopy = keys;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    streamName = [v13 streamName];

    if (streamName)
    {
      streamName2 = [v13 streamName];
      v16 = [self eventValueFromManagedObject:v13 streamName:streamName2 readMetadata:metadataCopy excludedMetadataKeys:keysCopy cache:cacheCopy];

      if (v16)
      {
        v17 = [self eventStreamFromManagedObject:v13 forValue:v16 cache:cacheCopy];
        if (v17)
        {
          if (cacheCopy)
          {
            v33 = MEMORY[0x1E696AD98];
            [v13 startDate];
            v34 = [v33 numberWithDouble:?];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke;
            v56[3] = &unk_1E736A328;
            v35 = v13;
            v57 = v35;
            v19 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:v34 type:@"date" setIfMissingWithBlock:v56];

            v36 = MEMORY[0x1E696AD98];
            [v35 endDate];
            v37 = [v36 numberWithDouble:?];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke_2;
            v54[3] = &unk_1E736A328;
            v55 = v35;
            v21 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:v37 type:@"date" setIfMissingWithBlock:v54];
          }

          else
          {
            v18 = MEMORY[0x1E695DF00];
            [v13 startDate];
            v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
            v20 = MEMORY[0x1E695DF00];
            [v13 endDate];
            v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
          }

          v50 = v19;
          v22 = [_DKEvent eventWithStream:v17 startDate:v19 endDate:v21 value:v16];
          [v13 confidence];
          [v22 setConfidence:?];
          if (cacheCopy)
          {
            v49 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "secondsFromGMT")}];
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __90___DKEvent_MOConversion__objectFromManagedObject_readMetadata_excludedMetadataKeys_cache___block_invoke_3;
            v52[3] = &unk_1E736A328;
            v53 = v13;
            v38 = [(_DKObjectFromMOCache *)cacheCopy objectForKey:v49 type:@"timeZone" setIfMissingWithBlock:v52];
            [v22 setTimeZone:v38];

            v23 = v53;
          }

          else
          {
            v23 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:{objc_msgSend(v13, "secondsFromGMT")}];
            [v22 setTimeZone:v23];
          }

          if ([v22 copyBaseObjectInfoFromManagedObject:v13 cache:cacheCopy])
          {
            if (metadataCopy)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              if ([v13 hasCustomMetadata])
              {
                if ([keysCopy count])
                {
                  v24 = +[_DKCustomMetadataMO fetchRequest];
                  v25 = MEMORY[0x1E696AE18];
                  objectID = [v13 objectID];
                  keysCopy = [v25 predicateWithFormat:@"ANY event == %@ && NOT name IN %@", objectID, keysCopy];
                  [v24 setPredicate:keysCopy];

                  managedObjectContext = [v13 managedObjectContext];
                  v51 = 0;
                  v47 = v24;
                  v45 = [managedObjectContext executeFetchRequest:v24 error:&v51];
                  v28 = v51;

                  if (v28)
                  {
                    v29 = +[_CDLogging knowledgeChannel];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      [_DKEvent(MOConversion) objectFromManagedObject:v17 readMetadata:v29 excludedMetadataKeys:? cache:?];
                    }
                  }

                  allObjects = v45;
                  customMetadata = v47;
                }

                else
                {
                  customMetadata = [v13 customMetadata];
                  allObjects = [customMetadata allObjects];
                }

                v39 = [v22 metadataFromCustomMetadata:allObjects cache:cacheCopy];
                [dictionary addEntriesFromDictionary:v39];
              }

              if ([v13 hasStructuredMetadata])
              {
                structuredMetadata = [v13 structuredMetadata];

                if (structuredMetadata)
                {
                  structuredMetadata2 = [v13 structuredMetadata];
                  v42 = [v22 metadataFromStructuredMetadata:structuredMetadata2 excludedMetadataKeys:keysCopy cache:cacheCopy];
                  [dictionary addEntriesFromDictionary:v42];
                }
              }

              if ([dictionary count])
              {
                if (keysCopy && [keysCopy count])
                {
                  [dictionary removeObjectsForKeys:keysCopy];
                }

                v43 = [dictionary copy];
                [v22 setMetadata:v43];
              }
            }

            [v22 setShouldSync:{objc_msgSend(v13, "shouldSync")}];
            [v22 setCompatibilityVersion:{objc_msgSend(v13, "compatibilityVersion")}];
            v32 = v22;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)eventStreamFromManagedObject:(id)object forValue:(id)value cache:(id)cache
{
  objectCopy = object;
  valueCopy = value;
  if ([valueCopy conformsToProtocol:&unk_1F05F7490])
  {
    objectType = [valueCopy objectType];
  }

  else
  {
    objectType = 0;
  }

  streamName = [objectCopy streamName];
  v10 = [_DKEventStream eventStreamWithName:streamName valueType:objectType];

  return v10;
}

+ (id)uncachedEventValueFromManagedObject:(id)object readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  metadataCopy = metadata;
  objectCopy = object;
  keysCopy = keys;
  cacheCopy = cache;
  v12 = 0;
  valueClass = [objectCopy valueClass];
  if (valueClass > 1)
  {
    if (valueClass == 2)
    {
      valueString = +[_DKObjectType objectTypeWithTypeCode:](_DKCategoryType, "objectTypeWithTypeCode:", [objectCopy valueTypeCode]);
      v16 = +[_DKCategory categoryWithInteger:type:](_DKCategory, "categoryWithInteger:type:", [objectCopy valueInteger], valueString);
    }

    else
    {
      if (valueClass != 3)
      {
        goto LABEL_13;
      }

      valueString = +[_DKObjectType objectTypeWithTypeCode:](_DKQuantityType, "objectTypeWithTypeCode:", [objectCopy valueTypeCode]);
      [objectCopy valueDouble];
      v16 = [_DKQuantity quantityWithDouble:valueString type:?];
    }
  }

  else
  {
    if (valueClass)
    {
      valueString = [objectCopy valueString];
      if (cacheCopy)
      {
        v18 = [(_DKObjectFromMOCache *)cacheCopy deduplicateString:valueString];

        valueString = v18;
      }

      v15 = +[_DKObjectType objectTypeWithTypeCode:](_DKIdentifierType, "objectTypeWithTypeCode:", [objectCopy valueTypeCode]);
      v12 = [_DKIdentifier identifierWithString:valueString type:v15];

      goto LABEL_12;
    }

    valueString = [objectCopy value];
    v16 = [_DKObject objectFromManagedObject:valueString readMetadata:metadataCopy excludedMetadataKeys:keysCopy cache:cacheCopy];
  }

  v12 = v16;
LABEL_12:

LABEL_13:

  return v12;
}

+ (id)eventValueFromManagedObject:(id)object streamName:(id)name readMetadata:(BOOL)metadata excludedMetadataKeys:(id)keys cache:(id)cache
{
  metadataCopy = metadata;
  objectCopy = object;
  nameCopy = name;
  keysCopy = keys;
  cacheCopy = cache;
  if (cacheCopy && [objectCopy valueClass] != 3)
  {
    if ([objectCopy valueClass] == 1)
    {
      [objectCopy valueString];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objectCopy, "valueInteger")}];
    }
    v18 = ;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", nameCopy, v18];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105___DKEvent_MOConversion__eventValueFromManagedObject_streamName_readMetadata_excludedMetadataKeys_cache___block_invoke;
    v20[3] = &unk_1E736A3C8;
    selfCopy = self;
    v21 = objectCopy;
    v25 = metadataCopy;
    v22 = keysCopy;
    v23 = cacheCopy;
    v16 = [(_DKObjectFromMOCache *)v23 objectForKey:v19 type:@"eventValue" setIfMissingWithBlock:v20];
  }

  else
  {
    v16 = [self uncachedEventValueFromManagedObject:objectCopy readMetadata:metadataCopy excludedMetadataKeys:keysCopy cache:cacheCopy];
  }

  return v16;
}

- (unint64_t)eventValueClassOf:(id)of
{
  ofCopy = of;
  uUID = [ofCopy UUID];

  if (uUID)
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 3;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v36.receiver = self, v36.super_class = _DKEvent, [(_DKObject *)&v36 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    stream = [(_DKEvent *)self stream];
    name = [stream name];
    [v5 setStreamName:name];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    timeZone = [(_DKEvent *)self timeZone];
    [v5 setSecondsFromGMT:{objc_msgSend(timeZone, "secondsFromGMT")}];

    startDate = [(_DKEvent *)self startDate];
    [startDate timeIntervalSinceReferenceDate];
    [v5 setStartDate:?];

    [v5 startDate];
    [v5 setStartSecondOfDay:(v11 % 86400)];
    startDate2 = [(_DKEvent *)self startDate];
    v13 = [currentCalendar components:512 fromDate:startDate2];
    [v5 setStartDayOfWeek:{objc_msgSend(v13, "weekday")}];

    endDate = [(_DKEvent *)self endDate];
    [endDate timeIntervalSinceReferenceDate];
    [v5 setEndDate:?];

    [v5 endDate];
    [v5 setEndSecondOfDay:(v15 % 86400)];
    endDate2 = [(_DKEvent *)self endDate];
    v17 = [currentCalendar components:512 fromDate:endDate2];
    [v5 setEndDayOfWeek:{objc_msgSend(v17, "weekday")}];

    [v5 setShouldSync:{-[_DKEvent shouldSync](self, "shouldSync")}];
    [(_DKEvent *)self confidence];
    [v5 setConfidence:?];
    [v5 setCompatibilityVersion:{-[_DKEvent compatibilityVersion](self, "compatibilityVersion")}];
    value = [(_DKEvent *)self value];
    [v5 setValueInteger:{objc_msgSend(value, "integerValue")}];

    value2 = [(_DKEvent *)self value];
    [value2 doubleValue];
    [v5 setValueDouble:?];

    value3 = [(_DKEvent *)self value];
    objc_opt_class();
    LOBYTE(v17) = objc_opt_isKindOfClass();

    if (v17)
    {
      value4 = [(_DKEvent *)self value];
      stringValue = [value4 stringValue];
      [v5 setValueString:stringValue];
    }

    v23 = objc_opt_class();
    metadata = [(_DKEvent *)self metadata];
    [v23 copyMetadata:metadata toManagedObject:v5];

    value5 = [(_DKEvent *)self value];
    v26 = [(_DKEvent *)self eventValueClassOf:value5];

    [v5 setValueClass:v26];
    if (v26)
    {
      value6 = [(_DKEvent *)self value];
      [v5 setValueTypeCode:{objc_msgSend(value6, "typeCode")}];
      v28 = 1;
    }

    else
    {
      [v5 setValueClass:0];
      v29 = MEMORY[0x1E695D5B8];
      value7 = [(_DKEvent *)self value];
      entityName = [objc_opt_class() entityName];
      managedObjectContext = [v5 managedObjectContext];
      v33 = [v29 insertNewObjectForEntityForName:entityName inManagedObjectContext:managedObjectContext];
      [v5 setValue:v33];

      value6 = [(_DKEvent *)self value];
      value8 = [v5 value];
      v28 = [value6 copyToManagedObject:value8];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)fetchCustomMetadataWithName:(id)name valueHash:(id)hash context:(id)context
{
  nameCopy = name;
  hashCopy = hash;
  contextCopy = context;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72___DKEvent_MOConversion__fetchCustomMetadataWithName_valueHash_context___block_invoke;
  v21 = &unk_1E7367F20;
  v10 = contextCopy;
  v22 = v10;
  v11 = nameCopy;
  v23 = v11;
  v12 = hashCopy;
  v24 = v12;
  v25 = &v26;
  [v10 performWithOptions:4 andBlock:&v18];
  v13 = v27[5];
  if (!v13)
  {
    v14 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CustomMetadata" inManagedObjectContext:{v10, v18, v19, v20, v21, v22, v23}];
    v15 = v27[5];
    v27[5] = v14;

    [v27[5] setName:v11];
    [v27[5] setValueHash:v12];
    v13 = v27[5];
  }

  v16 = v13;

  _Block_object_dispose(&v26, 8);

  return v16;
}

+ (BOOL)copyMetadata:(id)metadata toManagedObject:(id)object
{
  v68 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_46;
  }

  v46 = objectCopy;
  v6 = objectCopy;
  v51 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  allKeys = [metadataCopy allKeys];
  obj = [allKeys sortedArrayUsingSelector:sel_compare_];

  v53 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (!v53)
  {
    v8 = 0;
    goto LABEL_44;
  }

  v8 = 0;
  v50 = *v58;
  do
  {
    v9 = 0;
    do
    {
      if (*v58 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v57 + 1) + 8 * v9);
      v11 = [metadataCopy objectForKeyedSubscript:v10];
      v12 = [v51 objectForKeyedSubscript:v10];
      if (!v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = v11;
          v23 = [_CDHashUtilities md5ForString:v22];
          v24 = [v21 stringWithFormat:@"%@S", v23];

          managedObjectContext = [v6 managedObjectContext];
          v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:managedObjectContext];

          [v26 setStringValue:v22];
LABEL_25:

          [v6 addCustomMetadataObject:v26];
          [v6 setHasCustomMetadata:1];
          if (([v10 hasPrefix:@"test"] & 1) == 0)
          {
            v38 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              streamName = [v6 streamName];
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138412802;
              v62 = streamName;
              v63 = 2112;
              v64 = v10;
              v65 = 2112;
              v66 = v41;
              _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, "Using custom metadata path in stream %@ for key '%@'. Value class: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v11;
            if (CFNumberIsFloatType(v22))
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@D", v22];
              managedObjectContext2 = [v6 managedObjectContext];
              v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:managedObjectContext2];

              [v26 setDoubleValue:v22];
            }

            else
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@I", v22];
              managedObjectContext3 = [v6 managedObjectContext];
              v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:managedObjectContext3];

              [v26 setIntegerValue:v22];
            }

            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = MEMORY[0x1E696AEC0];
            v22 = v11;
            [v22 timeIntervalSinceReferenceDate];
            v24 = [v28 stringWithFormat:@"%fT", v29];
            managedObjectContext4 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:managedObjectContext4];

            [v26 setDateValue:v22];
            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = MEMORY[0x1E696AEC0];
            v22 = v11;
            v32 = [_CDHashUtilities md5ForData:v22];
            v24 = [v31 stringWithFormat:@"%@B", v32];

            managedObjectContext5 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:managedObjectContext5];

            [v26 setBinaryValue:v22];
            goto LABEL_25;
          }

          if ([v11 conformsToProtocol:&unk_1F05F0800])
          {
            v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11];
            v35 = MEMORY[0x1E696AEC0];
            v36 = [_CDHashUtilities md5ForData:v24];
            v22 = [v35 stringWithFormat:@"%@O", v36];

            managedObjectContext6 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v22 context:managedObjectContext6];

            [v26 setBinaryValue:v24];
            goto LABEL_25;
          }

          v26 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(_DKEvent(MOConversion) *)&v55 copyMetadata:v56 toManagedObject:v26];
          }
        }

        goto LABEL_30;
      }

      if (!v8)
      {
        v13 = [_DKStructuredMetadataMO alloc];
        v14 = +[_DKStructuredMetadataMO entity];
        managedObjectContext7 = [v6 managedObjectContext];
        v8 = [(_DKStructuredMetadataMO *)v13 initWithEntity:v14 insertIntoManagedObjectContext:managedObjectContext7];
      }

      entity = [(_DKStructuredMetadataMO *)v8 entity];
      propertiesByName = [entity propertiesByName];
      v18 = [propertiesByName objectForKeyedSubscript:v12];
      v19 = [v18 attributeType] == 1000;

      if (v19)
      {
        v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11];

        v11 = v20;
      }

      [(_DKStructuredMetadataMO *)v8 setValue:v11 forKey:v12];
      [dictionary setObject:v11 forKeyedSubscript:v10];
LABEL_30:

      ++v9;
    }

    while (v53 != v9);
    v42 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    v53 = v42;
  }

  while (v42);

  if (v8)
  {
    v54 = 0;
    v43 = [_CDHashUtilities md5forDictionary:dictionary error:&v54];
    obj = v54;
    if (v43)
    {
      [(_DKStructuredMetadataMO *)v8 setMetadataHash:v43];
      [(_DKStructuredMetadataMO *)v8 addEventObject:v6];
      [v6 setHasStructuredMetadata:1];
    }

    else
    {
      v44 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        +[_DKEvent(MOConversion) copyMetadata:toManagedObject:];
      }
    }

LABEL_44:
  }

  objectCopy = v46;
LABEL_46:

  return isKindOfClass & 1;
}

+ (id)moKeyPathForKeyPath:(uint64_t)path
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@"."];
  firstObject = [v3 firstObject];
  v5 = [firstObject isEqualToString:@"metadata"];

  if (v5)
  {
    v6 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
    lastObject = [v3 lastObject];
    v8 = [v6 objectForKeyedSubscript:lastObject];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"structuredMetadata.%@", v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    firstObject2 = [v3 firstObject];
    v11 = [firstObject2 isEqualToString:@"value"];

    if (v11)
    {
      lastObject2 = [v3 lastObject];
      v13 = [lastObject2 stringByReplacingOccurrencesOfString:@"Value" withString:&stru_1F05B9908];

      v14 = [v13 substringToIndex:1];
      capitalizedString = [v14 capitalizedString];
      v16 = [v13 stringByReplacingCharactersInRange:0 withString:{1, capitalizedString}];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value%@", v16];
    }

    else
    {
      v9 = v2;
    }
  }

  return v9;
}

+ (id)keyPathForMOKeyPath:(uint64_t)path
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@"."];
  if ([v3 count] < 2)
  {
    if ([v2 hasPrefix:@"value"])
    {
      v10 = [v2 substringFromIndex:{objc_msgSend(@"value", "length")}];
      v11 = [v10 substringToIndex:1];
      lowercaseString = [v11 lowercaseString];
      v13 = [v10 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value.%@Value", v13];
    }

    else
    {
      v9 = v2;
    }
  }

  else
  {
    firstObject = [v3 firstObject];
    v5 = [firstObject isEqualToString:@"structuredMetadata"];

    if (v5)
    {
      v6 = +[_DKMetadataPersistenceLookupTable attributeToKey];
      lastObject = [v3 lastObject];
      v8 = [v6 objectForKeyedSubscript:lastObject];

      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"metadata.%@", v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value
{
  valueCopy = value;
  endDateCopy = endDate;
  dateCopy = date;
  streamCopy = stream;
  v13 = [[_DKEvent alloc] initWithStream:streamCopy source:0 startDate:dateCopy endDate:endDateCopy value:valueCopy confidence:0 metadata:1.0];

  return v13;
}

+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value metadata:(id)metadata
{
  metadataCopy = metadata;
  valueCopy = value;
  endDateCopy = endDate;
  dateCopy = date;
  streamCopy = stream;
  v16 = [[_DKEvent alloc] initWithStream:streamCopy source:0 startDate:dateCopy endDate:endDateCopy value:valueCopy confidence:metadataCopy metadata:1.0];

  return v16;
}

+ (_DKEvent)eventWithStream:(id)stream startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata
{
  metadataCopy = metadata;
  valueCopy = value;
  endDateCopy = endDate;
  dateCopy = date;
  streamCopy = stream;
  v18 = [[_DKEvent alloc] initWithStream:streamCopy source:0 startDate:dateCopy endDate:endDateCopy value:valueCopy confidence:metadataCopy metadata:confidence];

  return v18;
}

+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata
{
  metadataCopy = metadata;
  valueCopy = value;
  endDateCopy = endDate;
  dateCopy = date;
  sourceCopy = source;
  streamCopy = stream;
  v21 = [[_DKEvent alloc] initWithStream:streamCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy value:valueCopy confidence:metadataCopy metadata:confidence];

  return v21;
}

+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate categoryIntegerValue:(int64_t)value confidence:(double)confidence metadata:(id)metadata
{
  streamCopy = stream;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  metadataCopy = metadata;
  v20 = +[_DKAnyIntegerCategory type];
  eventValueType = [streamCopy eventValueType];

  if (!eventValueType)
  {
    goto LABEL_4;
  }

  eventValueType2 = [streamCopy eventValueType];
  v23 = [objc_msgSend(eventValueType2 "objectClass")];

  if (v23)
  {
    eventValueType3 = [streamCopy eventValueType];
    v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKCategoryType, "objectTypeWithTypeCode:", [eventValueType3 typeCode]);

    v20 = v25;
LABEL_4:
    v26 = [_DKCategory categoryWithInteger:value type:v20];
    v27 = [[_DKEvent alloc] initWithStream:streamCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy value:v26 confidence:metadataCopy metadata:confidence];

    goto LABEL_8;
  }

  v28 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:streamCopy source:? startDate:? endDate:? categoryIntegerValue:? confidence:? metadata:?];
  }

  v27 = 0;
LABEL_8:

  return v27;
}

+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate quantityDoubleValue:(double)value confidence:(double)confidence metadata:(id)metadata
{
  streamCopy = stream;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  metadataCopy = metadata;
  v20 = +[_DKAnyDoubleQuantity type];
  eventValueType = [streamCopy eventValueType];

  if (!eventValueType)
  {
    goto LABEL_4;
  }

  eventValueType2 = [streamCopy eventValueType];
  v23 = [objc_msgSend(eventValueType2 "objectClass")];

  if (v23)
  {
    eventValueType3 = [streamCopy eventValueType];
    v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKQuantityType, "objectTypeWithTypeCode:", [eventValueType3 typeCode]);

    v20 = v25;
LABEL_4:
    v26 = [_DKQuantity quantityWithDouble:v20 type:value];
    v27 = [[_DKEvent alloc] initWithStream:streamCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy value:v26 confidence:metadataCopy metadata:confidence];

    goto LABEL_8;
  }

  v28 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:streamCopy source:? startDate:? endDate:? quantityDoubleValue:? confidence:? metadata:?];
  }

  v27 = 0;
LABEL_8:

  return v27;
}

+ (_DKEvent)eventWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate identifierStringValue:(id)value confidence:(double)confidence metadata:(id)metadata
{
  streamCopy = stream;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  valueCopy = value;
  metadataCopy = metadata;
  v21 = +[_DKAnyStringIdentifier type];
  eventValueType = [streamCopy eventValueType];

  if (!eventValueType)
  {
    goto LABEL_4;
  }

  eventValueType2 = [streamCopy eventValueType];
  v24 = [objc_msgSend(eventValueType2 "objectClass")];

  if (v24)
  {
    eventValueType3 = [streamCopy eventValueType];
    v26 = +[_DKObjectType objectTypeWithTypeCode:](_DKIdentifierType, "objectTypeWithTypeCode:", [eventValueType3 typeCode]);

    v21 = v26;
LABEL_4:
    v27 = [_DKIdentifier identifierWithString:valueCopy type:v21];
    v28 = [[_DKEvent alloc] initWithStream:streamCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy value:v27 confidence:metadataCopy metadata:confidence];

    goto LABEL_8;
  }

  v29 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:streamCopy source:? startDate:? endDate:? identifierStringValue:? confidence:? metadata:?];
  }

  v28 = 0;
LABEL_8:

  return v28;
}

- (_DKEvent)initWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata
{
  streamCopy = stream;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  valueCopy = value;
  metadataCopy = metadata;
  eventValueType = [streamCopy eventValueType];
  if (eventValueType)
  {
    v23 = eventValueType;
    v24 = objc_opt_class();
    eventValueType2 = [streamCopy eventValueType];
    LOBYTE(v24) = [v24 isEqual:{objc_msgSend(eventValueType2, "objectClass")}];

    if ((v24 & 1) == 0)
    {
      v26 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent initWithStream:streamCopy source:valueCopy startDate:? endDate:? value:? confidence:? metadata:?];
      }

      goto LABEL_9;
    }
  }

  if ([dateCopy compare:endDateCopy] == 1)
  {
    v26 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_DKEvent initWithStream:source:startDate:endDate:value:confidence:metadata:];
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  self = [(_DKEvent *)self _initWithStream:streamCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy value:valueCopy confidence:metadataCopy metadata:confidence];
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)_initWithStream:(id)stream source:(id)source startDate:(id)date endDate:(id)endDate value:(id)value confidence:(double)confidence metadata:(id)metadata
{
  streamCopy = stream;
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  valueCopy = value;
  metadataCopy = metadata;
  v30.receiver = self;
  v30.super_class = _DKEvent;
  v21 = [(_DKObject *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_stream, stream);
    objc_storeStrong(&v22->_startDate, date);
    objc_storeStrong(&v22->_endDate, endDate);
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    v24 = [localTimeZone copy];
    timeZone = v22->_timeZone;
    v22->_timeZone = v24;

    objc_storeStrong(&v22->_value, value);
    objc_storeStrong(&v22->_metadata, metadata);
    v22->_confidence = confidence;
    [(_DKObject *)v22 setSource:sourceCopy];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(_DKObject *)v22 setUUID:uUID];
  }

  return v22;
}

- (_DKEvent)initWithCoder:(id)coder
{
  v25[10] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = _DKEvent;
  v5 = [(_DKObject *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v14;
    v5->_shouldSync = [coderCopy decodeBoolForKey:@"shouldSync"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v15;

    v5->_compatibilityVersion = [coderCopy decodeInt64ForKey:@"compatibilityVersion"];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([coderCopy dk_shouldSkipDecodingMetadata] & 1) == 0)
    {
      v17 = MEMORY[0x1E695DFD8];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v25[2] = objc_opt_class();
      v25[3] = objc_opt_class();
      v25[4] = objc_opt_class();
      v25[5] = objc_opt_class();
      v25[6] = objc_opt_class();
      v25[7] = objc_opt_class();
      v25[8] = objc_opt_class();
      v25[9] = objc_opt_class();
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:10];
      v19 = [v17 setWithArray:v18];

      v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"metadata"];
      metadata = v5->_metadata;
      v5->_metadata = v20;
    }

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = _DKEvent;
  [(_DKObject *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stream forKey:@"stream"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeBool:self->_shouldSync forKey:@"shouldSync"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  metadata = self->_metadata;
  if (metadata && [(NSDictionary *)metadata count])
  {
    [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  }
}

- (NSString)description
{
  metadata = self->_metadata;
  allKeys = [(NSDictionary *)metadata allKeys];
  v5 = [allKeys _pas_filteredArrayWithTest:&__block_literal_global_67];
  v6 = [(NSDictionary *)metadata dictionaryWithValuesForKeys:v5];

  v20 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  stream = self->_stream;
  startDate = self->_startDate;
  endDate = self->_endDate;
  secondsFromGMT = [(NSTimeZone *)self->_timeZone secondsFromGMT];
  confidence = self->_confidence;
  value = self->_value;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSync];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_compatibilityVersion];
  v21.receiver = self;
  v21.super_class = _DKEvent;
  v17 = [(_DKObject *)&v21 description];
  v18 = [v20 stringWithFormat:@"%@: { stream='%@', start=%@, end=%@, tz=%d, conf=%f, value=%@, metadata=%@, shouldSync=%@, compatibilityVersion=%@, %@}", v8, stream, startDate, endDate, secondsFromGMT, *&confidence, value, v6, v15, v16, v17];

  return v18;
}

- (int64_t)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    value = [(_DKEvent *)self value];
    v7 = [value conformsToProtocol:&unk_1F05F73A0];

    if (!v7)
    {
LABEL_11:
      metadata2 = -1;
      goto LABEL_12;
    }

    value2 = [(_DKEvent *)self value];
    value3 = [v5 value];
    metadata2 = [value2 compareValue:value3];

    if (!metadata2)
    {
      metadata = [(_DKEvent *)self metadata];
      if (metadata)
      {

        goto LABEL_8;
      }

      metadata2 = [v5 metadata];

      if (metadata2)
      {
LABEL_8:
        metadata3 = [(_DKEvent *)self metadata];

        if (metadata3)
        {
          metadata4 = [v5 metadata];

          if (metadata4)
          {
            metadata5 = [(_DKEvent *)self metadata];
            metadata6 = [v5 metadata];
            v16 = [metadata5 isEqualToDictionary:metadata6];

            metadata2 = v16 - 1;
          }

          else
          {
            metadata2 = 1;
          }

          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  metadata2 = -1;
LABEL_13:

  return metadata2;
}

- (BOOL)BOOLValue
{
  value = [(_DKEvent *)self value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (int64_t)integerValue
{
  value = [(_DKEvent *)self value];
  integerValue = [value integerValue];

  return integerValue;
}

- (double)doubleValue
{
  value = [(_DKEvent *)self value];
  [value doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52.receiver = self;
        v52.super_class = _DKEvent;
        if ([(_DKObject *)&v52 isEqual:v5])
        {
          v6 = v5;
          stream = [(_DKEvent *)self stream];
          stream2 = [(_DKEvent *)v6 stream];
          if (stream != stream2)
          {
            stream3 = [(_DKEvent *)self stream];
            stream4 = [(_DKEvent *)v6 stream];
            if (![stream3 isEqual:stream4])
            {
              v11 = 0;
              goto LABEL_41;
            }

            v49 = stream4;
            v50 = stream3;
          }

          startDate = [(_DKEvent *)self startDate];
          startDate2 = [(_DKEvent *)v6 startDate];
          if (startDate != startDate2)
          {
            startDate3 = [(_DKEvent *)self startDate];
            startDate4 = [(_DKEvent *)v6 startDate];
            if (![startDate3 isEqual:startDate4])
            {
              v11 = 0;
LABEL_39:

LABEL_40:
              stream4 = v49;
              stream3 = v50;
              if (stream == stream2)
              {
LABEL_42:

                goto LABEL_43;
              }

LABEL_41:

              goto LABEL_42;
            }

            v47 = startDate4;
            v48 = startDate3;
          }

          endDate = [(_DKEvent *)self endDate];
          endDate2 = [(_DKEvent *)v6 endDate];
          v51 = endDate;
          if (endDate != endDate2)
          {
            endDate3 = [(_DKEvent *)self endDate];
            endDate4 = [(_DKEvent *)v6 endDate];
            v45 = endDate3;
            if (![endDate3 isEqual:?])
            {
              v11 = 0;
LABEL_37:

LABEL_38:
              startDate4 = v47;
              startDate3 = v48;
              if (startDate == startDate2)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          timeZone = [(_DKEvent *)self timeZone];
          timeZone2 = [(_DKEvent *)v6 timeZone];
          if (timeZone != timeZone2)
          {
            v20 = timeZone;
            timeZone3 = [(_DKEvent *)self timeZone];
            secondsFromGMT = [timeZone3 secondsFromGMT];
            timeZone4 = [(_DKEvent *)v6 timeZone];
            if (secondsFromGMT != [timeZone4 secondsFromGMT])
            {
              v11 = 0;
              timeZone = v20;
              v27 = timeZone2;
LABEL_35:

LABEL_36:
              if (v51 == endDate2)
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            }

            timeZone = v20;
          }

          [(_DKEvent *)self confidence];
          v23 = v22;
          [(_DKEvent *)v6 confidence];
          if (v23 != v24 || (v41 = timeZone, v25 = [(_DKEvent *)self shouldSync], v26 = v25 == [(_DKEvent *)v6 shouldSync], timeZone = v41, !v26))
          {
            v11 = 0;
            goto LABEL_34;
          }

          value = [(_DKEvent *)self value];
          value2 = [(_DKEvent *)v6 value];
          v40 = value;
          if (value == value2 || (-[_DKEvent value](self, "value"), v29 = objc_claimAutoreleasedReturnValue(), -[_DKEvent value](v6, "value"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v29, [v29 isEqual:?]))
          {
            metadata = [(_DKEvent *)self metadata];
            metadata2 = [(_DKEvent *)v6 metadata];
            if (metadata == metadata2)
            {

              v11 = 1;
            }

            else
            {
              v36 = metadata2;
              metadata3 = [(_DKEvent *)self metadata];
              metadata4 = [(_DKEvent *)v6 metadata];
              v11 = [metadata3 isEqual:metadata4];

              timeZone = v41;
            }

            v30 = value2;
            if (v40 == value2)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v11 = 0;
            v30 = value2;
          }

LABEL_33:
LABEL_34:
          v27 = timeZone2;
          if (timeZone == timeZone2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    v11 = 0;
  }

LABEL_43:

  return v11;
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:categoryIntegerValue:confidence:metadata:.cold.1(void *a1)
{
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:quantityDoubleValue:confidence:metadata:.cold.1(void *a1)
{
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:identifierStringValue:confidence:metadata:.cold.1(void *a1)
{
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithStream:(void *)a1 source:(uint64_t)a2 startDate:endDate:value:confidence:metadata:.cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 eventValueType];
  v3 = NSStringFromClass([v2 objectClass]);
  v4 = objc_opt_class();
  v10 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initWithStream:source:startDate:endDate:value:confidence:metadata:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_191750000, v1, OS_LOG_TYPE_ERROR, "_DKEvent endDate (%@) must be at or later than startDate (%@).", v2, 0x16u);
}

@end