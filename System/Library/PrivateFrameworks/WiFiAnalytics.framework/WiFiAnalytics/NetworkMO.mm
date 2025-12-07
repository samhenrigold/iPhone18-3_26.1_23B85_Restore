@interface NetworkMO
+ (BOOL)coalesceSsidsIntoColocatedScope:(id)scope moc:(id)moc;
+ (BOOL)invalidateColocatedScopeForSsidArray:(id)array moc:(id)moc;
+ (BOOL)removeNetwork:(id)network moc:(id)moc;
+ (BOOL)setNetworkManagedObjectPropertyValueForKey:(id)key forKey:(id)forKey withValue:(id)value;
+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error;
+ (id)allStoredSsids:(id)ssids;
+ (id)copyAllSsids:(id)ssids;
+ (id)copyAllSsidsWithColocatedScopeId:(id)id moc:(id)moc;
+ (id)copyAllSsidsWithColocatedScopeIdStr:(id)str moc:(id)moc;
+ (id)defaultPropertiesToFetch;
+ (id)getFirstColocatedScopeUuidForSsids:(id)ssids moc:(id)moc;
+ (id)networkManagedObjectPropertyValue:(id)value forKey:(id)key;
+ (id)predicateForNetworkContainingBSSID:(id)d;
+ (id)predicateForNetworkWithTrait:(unint64_t)trait;
+ (id)propertiesForTraits:(id)traits;
- (BOOL)classifyTraitsWithDistanceFilter:(double)filter container:(id)container;
@end

@implementation NetworkMO

+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  v6 = [constraintsCopy objectForKeyedSubscript:@"ssid"];

  if (!v6)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [constraintsCopy objectForKeyedSubscript:@"ssid"];
      *buf = 136446722;
      v15 = "+[NetworkMO verifyConstraints:withError:]";
      v16 = 1024;
      v17 = 31;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. ssid:%@", buf, 0x1Cu);
    }

    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A588];
      v13 = @"WAErrorCodeLacksRequiredArgument";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *error = [v10 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v11];
    }
  }

  return v6 != 0;
}

+ (id)predicateForNetworkContainingBSSID:(id)d
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [BSSMO formattedMACAddressNotation:d as:6];
  v5 = [v3 predicateWithFormat:@"SUBQUERY(bss, $b, $b.bssid == %@).@count > 0", v4];

  return v5;
}

+ (id)defaultPropertiesToFetch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NetworkMO_defaultPropertiesToFetch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EDE5CB38 != -1)
  {
    dispatch_once(&qword_1EDE5CB38, block);
  }

  v2 = _MergedGlobals_7;

  return v2;
}

void __37__NetworkMO_defaultPropertiesToFetch__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NetworkMO;
  v1 = objc_msgSendSuper2(&v5, sel_defaultPropertiesToFetch);
  v2 = _MergedGlobals_7;
  _MergedGlobals_7 = v1;

  v3 = _MergedGlobals_7;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F483E620];
  [v3 minusSet:v4];
}

+ (BOOL)removeNetwork:(id)network moc:(id)moc
{
  v37 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  mocCopy = moc;
  v7 = objc_alloc(MEMORY[0x1E695D538]);
  v8 = +[NetworkMO fetchRequest];
  v9 = [v7 initWithFetchRequest:v8];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __31__NetworkMO_removeNetwork_moc___block_invoke;
  v17[3] = &unk_1E830DAF8;
  v10 = mocCopy;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v20 = &v21;
  [v10 performBlockAndWait:v17];
  v12 = v22[5];
  if (v12)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v22[5] localizedDescription];
      userInfo = [v22[5] userInfo];
      *buf = 136447234;
      v28 = "+[NetworkMO removeNetwork:moc:]";
      v29 = 1024;
      v30 = 77;
      v31 = 2112;
      v32 = networkCopy;
      v33 = 2112;
      v34 = localizedDescription;
      v35 = 2112;
      v36 = userInfo;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for network[%@]. %@ %@", buf, 0x30u);
    }
  }

  _Block_object_dispose(&v21, 8);
  return v12 == 0;
}

void __31__NetworkMO_removeNetwork_moc___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 executeRequest:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

+ (id)networkManagedObjectPropertyValue:(id)value forKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = keyCopy;
  if (value && keyCopy)
  {
    opaque = [value opaque];
    v8 = opaque;
    if (opaque)
    {
      v9 = [opaque valueForKey:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "+[NetworkMO networkManagedObjectPropertyValue:forKey:]";
      v14 = 1024;
      v15 = 93;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil networkMO or key %@", &v12, 0x1Cu);
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)setNetworkManagedObjectPropertyValueForKey:(id)key forKey:(id)forKey withValue:(id)value
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  forKeyCopy = forKey;
  valueCopy = value;
  if (!keyCopy)
  {
    dictionary = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446466;
      v16 = "+[NetworkMO setNetworkManagedObjectPropertyValueForKey:forKey:withValue:]";
      v17 = 1024;
      v18 = 103;
      v14 = "%{public}s::%d:networkMO nil";
LABEL_12:
      _os_log_impl(&dword_1C8460000, dictionary, OS_LOG_TYPE_ERROR, v14, &v15, 0x12u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_7;
  }

  if (!forKeyCopy)
  {
    dictionary = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446466;
      v16 = "+[NetworkMO setNetworkManagedObjectPropertyValueForKey:forKey:withValue:]";
      v17 = 1024;
      v18 = 104;
      v14 = "%{public}s::%d:key nil";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  opaque = [keyCopy opaque];
  if (opaque)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:opaque];
    [dictionary removeObjectForKey:forKeyCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:valueCopy forKey:forKeyCopy];
  [keyCopy setOpaque:dictionary];

  v12 = 1;
LABEL_7:

  return v12;
}

+ (id)allStoredSsids:(id)ssids
{
  v32 = *MEMORY[0x1E69E9840];
  ssidsCopy = ssids;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:@"network.ssid"];
  v6 = +[NetworkMO entity];
  name = [v6 name];
  v8 = [AnalyticsStoreProxy fetchRequestForEntityWithBatchSize:name batchSize:100 prefetch:v5];
  v9 = [AnalyticsStoreProxy fetch:v8 withPredicate:0 moc:ssidsCopy];

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v27 = "+[NetworkMO allStoredSsids:]";
    v28 = 1024;
    v29 = 132;
    v30 = 2048;
    v31 = [v9 count];
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu", buf, 0x1Cu);
  }

  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
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

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = v16;
          if (v16)
          {
            ssid = [v16 ssid];

            if (ssid)
            {
              ssid2 = [v17 ssid];
              [array addObject:ssid2];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }

  if (![array count])
  {

    array = 0;
  }

  return array;
}

- (BOOL)classifyTraitsWithDistanceFilter:(double)filter container:(id)container
{
  v66 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v7 = objc_autoreleasePoolPush();
  ssid = [(NetworkMO *)self ssid];
  v9 = [GeoTagMO geoTagsForNetwork:ssid container:containerCopy];

  v54 = v9;
  v50 = v7;
  v51 = containerCopy;
  selfCopy = self;
  if (v9 && [v9 count])
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v53 = v13;
      v15 = [v9 objectAtIndex:v13];
      v52 = v14;
      if (v15)
      {
        break;
      }

LABEL_17:

      v13 = v53 + 1;
      v14 = v52 + 1;
      if (v53 + 1 >= [v9 count])
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      if (v14 >= [v9 count])
      {
        goto LABEL_17;
      }

      context = objc_autoreleasePoolPush();
      v16 = [v9 objectAtIndex:v14];
      v17 = objc_alloc(MEMORY[0x1E6985C38]);
      [v15 latitude];
      v19 = v18;
      [v15 longitude];
      v21 = [v17 initWithLatitude:v19 longitude:v20];
      v22 = objc_alloc(MEMORY[0x1E6985C38]);
      [v16 latitude];
      v24 = v23;
      [v16 longitude];
      v26 = [v22 initWithLatitude:v24 longitude:v25];
      [v21 distanceFromLocation:v26];
      if (v27 < filter)
      {
        goto LABEL_15;
      }

      v56 = v12 + 1;
      v28 = (v12 + 1) > 1;
      if (v10)
      {
        v10 = 1;
      }

      else
      {
        [v15 bss];
        v29 = v55 = v11;
        bssid = [v29 bssid];

        v31 = [v16 bss];
        bssid2 = [v31 bssid];

        date = [v15 date];
        date2 = [v16 date];
        [date timeIntervalSinceDate:date2];
        v36 = v35;

        v11 = v55;
        v37 = [bssid isEqualToString:bssid2];
        v38 = v36 > 0.0;
        if (v36 > 604800.0)
        {
          v38 = 0;
        }

        v10 = v37 & v38;

        v9 = v54;
      }

      v11 |= v28;
      if ((v11 & v10 & 1) == 0)
      {
        break;
      }

      v39 = 0;
      v11 = 1;
      LOBYTE(v10) = 1;
      v12 = v56;
LABEL_16:

      objc_autoreleasePoolPop(context);
      ++v14;
      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v12 = v56;
LABEL_15:
    v39 = 1;
    goto LABEL_16;
  }

  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
LABEL_20:
  [(NetworkMO *)selfCopy setIsOmnipresent:v11 & 1];
  v40 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    ssid2 = [(NetworkMO *)selfCopy ssid];
    v42 = ssid2;
    v43 = "NOT Omnipresent";
    *buf = 136446978;
    v59 = "[NetworkMO classifyTraitsWithDistanceFilter:container:]";
    v60 = 1024;
    if (v11)
    {
      v43 = "Omnipresent";
    }

    v61 = 200;
    v62 = 2112;
    v63 = ssid2;
    v64 = 2080;
    v65 = v43;
    _os_log_impl(&dword_1C8460000, v40, OS_LOG_TYPE_INFO, "%{public}s::%d:Marking network %@ as %s.", buf, 0x26u);
  }

  [(NetworkMO *)selfCopy setIsMoving:v10 & 1];
  v44 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    ssid3 = [(NetworkMO *)selfCopy ssid];
    v46 = ssid3;
    v47 = "NOT Moving";
    *buf = 136446978;
    v59 = "[NetworkMO classifyTraitsWithDistanceFilter:container:]";
    v60 = 1024;
    if (v10)
    {
      v47 = "Moving";
    }

    v61 = 203;
    v62 = 2112;
    v63 = ssid3;
    v64 = 2080;
    v65 = v47;
    _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_INFO, "%{public}s::%d:Marking network %@ as %s.", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v50);
  return 1;
}

+ (id)predicateForNetworkWithTrait:(unint64_t)trait
{
  v16 = *MEMORY[0x1E69E9840];
  if (trait <= 2)
  {
    if (trait)
    {
      if (trait != 1)
      {
        goto LABEL_17;
      }

      v4 = MEMORY[0x1E696AE18];
      v5 = @"isOmnipresent == YES";
    }

    else
    {
      v4 = MEMORY[0x1E696AE18];
      v5 = @"isMoving == YES";
    }

LABEL_12:
    [v4 predicateWithFormat:v5, v9];
    goto LABEL_13;
  }

  switch(trait)
  {
    case 3uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = @"isHome == YES";
      goto LABEL_12;
    case 4uLL:
      [MEMORY[0x1E696AE18] predicateWithFormat:@"coverageDetermination == %lu", 2];
      goto LABEL_13;
    case 5uLL:
      [MEMORY[0x1E696AE18] predicateWithFormat:@"congestionDetermination == %lu", 2];
      v6 = LABEL_13:;
      goto LABEL_14;
  }

LABEL_17:
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v11 = "+[NetworkMO predicateForNetworkWithTrait:]";
    v12 = 1024;
    v13 = 218;
    v14 = 2048;
    traitCopy = trait;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:unknown trait %lu", buf, 0x1Cu);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)propertiesForTraits:(id)traits
{
  v30 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = traitsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 136446722;
    v18 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        unsignedIntegerValue = [*(*(&v19 + 1) + 8 * v10) unsignedIntegerValue];
        v12 = unsignedIntegerValue;
        if (unsignedIntegerValue <= 2)
        {
          if (!unsignedIntegerValue)
          {
            v13 = v4;
            v14 = @"isMoving";
            goto LABEL_17;
          }

          if (unsignedIntegerValue == 1)
          {
            v13 = v4;
            v14 = @"isOmnipresent";
            goto LABEL_17;
          }
        }

        else
        {
          switch(unsignedIntegerValue)
          {
            case 3:
              v13 = v4;
              v14 = @"isHome";
              goto LABEL_17;
            case 4:
              v13 = v4;
              v14 = @"coverageDetermination";
              goto LABEL_17;
            case 5:
              v13 = v4;
              v14 = @"congestionDetermination";
LABEL_17:
              [v13 addObject:v14];
              goto LABEL_18;
          }
        }

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v24 = "+[NetworkMO propertiesForTraits:]";
          v25 = 1024;
          v26 = 244;
          v27 = 2048;
          v28 = v12;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:unknown trait %lu", buf, 0x1Cu);
        }

LABEL_18:
        ++v10;
      }

      while (v8 != v10);
      v16 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
      v8 = v16;
    }

    while (v16);
  }

  return v4;
}

+ (id)copyAllSsids:(id)ssids
{
  v15 = *MEMORY[0x1E69E9840];
  ssidsCopy = ssids;
  v4 = +[NetworkMO entity];
  name = [v4 name];
  v6 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E638 predicate:0 moc:ssidsCopy];

  if (v6 && [v6 count])
  {
    v7 = [v6 valueForKey:@"ssid"];
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "+[NetworkMO copyAllSsids:]";
      v13 = 1024;
      v14 = 256;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", &v11, 0x12u);
    }

    v7 = 0;
  }

  v8 = [v7 copy];

  return v8;
}

+ (id)copyAllSsidsWithColocatedScopeId:(id)id moc:(id)moc
{
  v20 = *MEMORY[0x1E69E9840];
  idCopy = id;
  mocCopy = moc;
  if (idCopy)
  {
    v7 = +[NetworkMO entity];
    name = [v7 name];
    idCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"colocatedScopeId", idCopy];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E650 predicate:idCopy moc:mocCopy];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"ssid"];
    }

    else
    {
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v17 = "+[NetworkMO copyAllSsidsWithColocatedScopeId:moc:]";
        v18 = 1024;
        v19 = 271;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", buf, 0x12u);
      }

      v11 = 0;
    }
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "+[NetworkMO copyAllSsidsWithColocatedScopeId:moc:]";
      v18 = 1024;
      v19 = 268;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:colocatedScopeId nil", buf, 0x12u);
    }

    v11 = 0;
    v10 = 0;
  }

  v12 = [v11 copy];

  return v12;
}

+ (id)copyAllSsidsWithColocatedScopeIdStr:(id)str moc:(id)moc
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AFB0];
  mocCopy = moc;
  strCopy = str;
  v8 = [[v5 alloc] initWithUUIDString:strCopy];

  v9 = +[NetworkMO entity];
  name = [v9 name];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"colocatedScopeId", v8];
  v12 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E668 predicate:v11 moc:mocCopy];

  if (v12 && [v12 count])
  {
    v13 = [v12 valueForKey:@"ssid"];
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "+[NetworkMO copyAllSsidsWithColocatedScopeIdStr:moc:]";
      v19 = 1024;
      v20 = 287;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultsArrOfDicts nil", buf, 0x12u);
    }

    v13 = 0;
  }

  v14 = [v13 copy];

  return v14;
}

+ (id)getFirstColocatedScopeUuidForSsids:(id)ssids moc:(id)moc
{
  v26 = *MEMORY[0x1E69E9840];
  ssidsCopy = ssids;
  mocCopy = moc;
  if (ssidsCopy)
  {
    v7 = +[NetworkMO entity];
    name = [v7 name];
    ssidsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", ssidsCopy];
    v10 = [AnalyticsStoreProxy fetchPropertiesForEntity:name properties:&unk_1F483E680 predicate:ssidsCopy moc:mocCopy];

    if (v10 && [v10 count])
    {
      v11 = [v10 valueForKey:@"colocatedScopeId"];
      if (![v11 count])
      {
LABEL_11:
        uUIDString2 = 0;
        goto LABEL_12;
      }

      v12 = 0;
      while (1)
      {
        v13 = [v11 objectAtIndex:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v11 objectAtIndex:v12];
          v16 = v15;
          if (v15)
          {
            uUIDString = [v15 UUIDString];

            if (uUIDString)
            {
              uUIDString2 = [v16 UUIDString];

              goto LABEL_12;
            }
          }
        }

        if (++v12 >= [v11 count])
        {
          goto LABEL_11;
        }
      }
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "+[NetworkMO getFirstColocatedScopeUuidForSsids:moc:]";
      v24 = 1024;
      v25 = 302;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
    }

    uUIDString2 = 0;
    v11 = 0;
  }

  else
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "+[NetworkMO getFirstColocatedScopeUuidForSsids:moc:]";
      v24 = 1024;
      v25 = 299;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
    }

    uUIDString2 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_12:

  return uUIDString2;
}

+ (BOOL)invalidateColocatedScopeForSsidArray:(id)array moc:(id)moc
{
  v18 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  mocCopy = moc;
  if (arrayCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
    [dictionary setValue:v8 forKey:@"colocatedScopeId"];

    v9 = +[NetworkMO entity];
    name = [v9 name];
    arrayCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", arrayCopy];
    v12 = [AnalyticsStoreProxy batchUpdate:name withPredicate:arrayCopy propertiesToUpdate:dictionary moc:mocCopy];
  }

  else
  {
    dictionary = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "+[NetworkMO invalidateColocatedScopeForSsidArray:moc:]";
      v16 = 1024;
      v17 = 324;
      _os_log_impl(&dword_1C8460000, dictionary, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidArray nil", buf, 0x12u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)coalesceSsidsIntoColocatedScope:(id)scope moc:(id)moc
{
  v28 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  mocCopy = moc;
  if (scopeCopy)
  {
    v7 = [NetworkMO getFirstColocatedScopeUuidForSsids:scopeCopy moc:mocCopy];
    if (v7)
    {
      uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [uUID UUIDString];
        *buf = 136446722;
        v21 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
        v22 = 1024;
        v23 = 347;
        v24 = 2112;
        v25 = uUIDString;
        v11 = "%{public}s::%d:Existing ColocatedScope UUID %@";
LABEL_7:
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, v11, buf, 0x1Cu);
      }
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        uUIDString = [uUID UUIDString];
        *buf = 136446722;
        v21 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
        v22 = 1024;
        v23 = 344;
        v24 = 2112;
        v25 = uUIDString;
        v11 = "%{public}s::%d:Created ColocatedScope UUID %@";
        goto LABEL_7;
      }
    }

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uUIDString2 = [uUID UUIDString];
      *buf = 136446978;
      v21 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
      v22 = 1024;
      v23 = 349;
      v24 = 2112;
      v25 = uUIDString2;
      v26 = 2112;
      v27 = scopeCopy;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Applying ColocatedScope UUID %@ to ssidArray %@", buf, 0x26u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setValue:uUID forKey:@"colocatedScopeId"];
    v15 = +[NetworkMO entity];
    name = [v15 name];
    scopeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ssid IN %@", scopeCopy];
    v18 = [AnalyticsStoreProxy batchUpdate:name withPredicate:scopeCopy propertiesToUpdate:dictionary moc:mocCopy];

    goto LABEL_11;
  }

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v21 = "+[NetworkMO coalesceSsidsIntoColocatedScope:moc:]";
    v22 = 1024;
    v23 = 339;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssidsArray nil", buf, 0x12u);
  }

  v18 = 0;
LABEL_11:

  return v18;
}

@end