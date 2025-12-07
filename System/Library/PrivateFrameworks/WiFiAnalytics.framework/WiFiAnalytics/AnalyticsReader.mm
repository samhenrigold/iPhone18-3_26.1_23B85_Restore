@interface AnalyticsReader
+ (id)networksFromResults:(id)results;
- (AnalyticsReader)initWithPersistentContainer:(id)container;
- (BOOL)isNetworkWithinRangeOfLocation:(id)location range:(double)range location:(id)a5 count:(unint64_t *)count;
- (BOOL)parsedBeaconInfoIsStored:(id)stored ssid:(id)ssid;
- (id)adaptiveRoamingParamsForBSS:(id)s;
- (id)apProfileForBssid:(id)bssid;
- (id)bandsInNetwork:(id)network withError:(id *)error;
- (id)bssForBSSID:(id)d withError:(id *)error;
- (id)bssidCountByBandInLAN:(id)n withError:(id *)error;
- (id)bssidCountByBandInUniqueMO:(id)o withError:(id *)error;
- (id)copyAllStoredNetworkSsids;
- (id)copyGeoTagsForNetwork:(id)network location:(id)location;
- (id)copyLocationsForNetwork:(id)network;
- (id)edgeParametersForBSS:(id)s;
- (id)lanFor:(id)for withError:(id *)error;
- (id)lanForBssid:(id)bssid withError:(id *)error;
- (id)lansForSsid:(id)ssid withError:(id *)error;
- (id)moc;
- (id)networkForSSID:(id)d withError:(id *)error;
- (id)networkSsidsByTraits:(id)traits withError:(id *)error;
- (id)networksAvailableAtLocation:(id)location withinDistance:(double)distance inBand:(unsigned int)band;
- (id)networksInLan:(id)lan withError:(id *)error;
- (id)networksInSameLanAsBssid:(id)bssid withError:(id *)error;
- (id)networksInSameLansAsSsid:(id)ssid withError:(id *)error;
- (id)networksWithPredicate:(id)predicate withError:(id *)error;
- (id)usageForLAN:(id)n withError:(id *)error;
- (id)usageForNetwork:(id)network withError:(id *)error;
- (id)usageOf:(id)of during:(unint64_t)during timeSpan:(unint64_t)span withError:(id *)error;
- (id)usageOf:(id)of timeSpan:(unint64_t)span around:(id)around withError:(id *)error;
- (signed)deploymentCongestionForSSID:(id)d withError:(id *)error;
- (signed)deploymentCoverageForSSID:(id)d withError:(id *)error;
- (unint64_t)countNetworksHavingBand:(signed __int16)band inLan:(id)lan withError:(id *)error;
- (unint64_t)countNetworksInSameLanAsBssid:(id)bssid withError:(id *)error;
- (unint64_t)networkCountForLAN:(id)n withError:(id *)error;
@end

@implementation AnalyticsReader

- (id)moc
{
  persistentContainer = [(AnalyticsReader *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

- (AnalyticsReader)initWithPersistentContainer:(id)container
{
  v15 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v10.receiver = self;
  v10.super_class = AnalyticsReader;
  v6 = [(AnalyticsReader *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (containerCopy)
    {
      objc_storeStrong(&v6->_persistentContainer, container);
    }

    else
    {
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "[AnalyticsReader initWithPersistentContainer:]";
        v13 = 1024;
        v14 = 47;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil PersistentContainer", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)bssForBSSID:(id)d withError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    persistentContainer = [(AnalyticsReader *)self persistentContainer];
    v8 = +[BSSMO defaultPropertiesToFetch];
    allObjects = [v8 allObjects];
    error = [persistentContainer bssForBssid:dCopy prefetchProperties:allObjects withError:error];
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "[AnalyticsReader bssForBSSID:withError:]";
      v18 = 1024;
      v19 = 65;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v15 = @"WAErrorCodeInvalidInput";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

- (id)adaptiveRoamingParamsForBSS:(id)s
{
  sCopy = s;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AnalyticsReader_adaptiveRoamingParamsForBSS___block_invoke;
  v9[3] = &unk_1E830DAF8;
  v9[4] = self;
  v6 = sCopy;
  v10 = v6;
  v11 = &v12;
  [v5 performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__AnalyticsReader_adaptiveRoamingParamsForBSS___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v17 = 0;
  v5 = [v3 bssForBssid:v4 prefetchProperties:&unk_1F483E7B8 withError:&v17];
  v6 = v17;

  if (v6)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 136446722;
    v19 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v20 = 1024;
    v21 = 82;
    v22 = 2112;
    v23 = v6;
    v12 = "%{public}s::%d:BSS fetch failed: %@";
    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v16 = *(a1 + 40);
    *buf = 136446722;
    v19 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v20 = 1024;
    v21 = 83;
    v22 = 2112;
    v23 = v16;
    v12 = "%{public}s::%d:BSS not found for %@";
LABEL_11:
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_5;
  }

  v7 = [[WADeviceAnalytics_AdaptiveRoamingBSSParams alloc] initWithBSS:v5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136446722;
    v19 = "[AnalyticsReader adaptiveRoamingParamsForBSS:]_block_invoke";
    v20 = 1024;
    v21 = 87;
    v22 = 2112;
    v23 = v11;
    v12 = "%{public}s::%d:returning %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_5:
    _os_log_impl(&dword_1C8460000, v13, v14, v12, buf, 0x1Cu);
  }

LABEL_6:

  v15 = [*(a1 + 32) persistentContainer];
  [v15 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)edgeParametersForBSS:(id)s
{
  v32 = *MEMORY[0x1E69E9840];
  sCopy = s;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__AnalyticsReader_edgeParametersForBSS___block_invoke;
  v13[3] = &unk_1E830DAF8;
  v13[4] = self;
  v6 = sCopy;
  v14 = v6;
  v15 = &v16;
  [v5 performBlockAndWait:v13];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    isEdge = [v17[5] isEdge];
    autoLeaveRssi = [v17[5] autoLeaveRssi];
    v23 = "[AnalyticsReader edgeParametersForBSS:]";
    v25 = 108;
    v10 = "is NOT";
    v26 = 2112;
    *buf = 136447234;
    v24 = 1024;
    if (isEdge)
    {
      v10 = "is";
    }

    v27 = v6;
    v28 = 2080;
    v29 = v10;
    v30 = 1024;
    v31 = autoLeaveRssi;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bssid[%@] : %s an edgeBSS autoLeaveRssi:%hd", buf, 0x2Cu);
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __40__AnalyticsReader_edgeParametersForBSS___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 8) bssForBssid:*(a1 + 40) prefetchProperties:&unk_1F483E7D0 withError:0];
  if (v3)
  {
    v4 = [[WADeviceAnalytics_EdgeBSSParameters alloc] initWithBSS:v3];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 136446722;
      v11 = "[AnalyticsReader edgeParametersForBSS:]_block_invoke";
      v12 = 1024;
      v13 = 101;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:BSS not found for %@", &v10, 0x1Cu);
    }
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)parsedBeaconInfoIsStored:(id)stored ssid:(id)ssid
{
  v30 = *MEMORY[0x1E69E9840];
  storedCopy = stored;
  ssidCopy = ssid;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AnalyticsReader_parsedBeaconInfoIsStored_ssid___block_invoke;
  v15[3] = &unk_1E830F050;
  v9 = storedCopy;
  v16 = v9;
  v10 = ssidCopy;
  v17 = v10;
  selfCopy = self;
  v19 = &v20;
  [v8 performBlockAndWait:v15];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 24))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 136446722;
    v25 = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]";
    v26 = 1024;
    v27 = 139;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v13 & 1;
}

void __49__AnalyticsReader_parsedBeaconInfoIsStored_ssid___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v20 = 136446466;
    *&v20[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
    *&v20[12] = 1024;
    *&v20[14] = 121;
    v11 = "%{public}s::%d:bssid nil";
LABEL_12:
    v12 = v10;
    v13 = 18;
LABEL_15:
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, v11, v20, v13);
    goto LABEL_16;
  }

  if (!*(a1 + 40))
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v20 = 136446466;
    *&v20[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
    *&v20[12] = 1024;
    *&v20[14] = 122;
    v11 = "%{public}s::%d:ssid nil";
    goto LABEL_12;
  }

  v3 = [*(a1 + 48) persistentContainer];
  v4 = [v3 bssForBssid:*(a1 + 32) prefetchProperties:&unk_1F483E7E8 withError:0];

  if (!v4)
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *v20 = 136446722;
      *&v20[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 125;
      *&v20[18] = 2112;
      *&v20[20] = v14;
      v11 = "%{public}s::%d:BSS not found for %@";
      v12 = v10;
      v13 = 28;
      goto LABEL_15;
    }

LABEL_16:

    v4 = 0;
    v8 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v5 = [v4 network];
  v6 = [v5 ssid];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = [v4 parsedBeacon];
    if (!v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = [v4 network];
      v19 = [v18 ssid];
      *v20 = 136447234;
      *&v20[4] = "[AnalyticsReader parsedBeaconInfoIsStored:ssid:]_block_invoke";
      *&v20[12] = 1024;
      *&v20[14] = 126;
      *&v20[18] = 2112;
      *&v20[20] = v16;
      *&v20[28] = 2112;
      *&v20[30] = v17;
      v21 = 2112;
      v22 = v19;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Mismatched Network (%@): bss %@ is known to belong to %@, ", v20, 0x30u);
    }

    v8 = 0;
  }

LABEL_7:
  v9 = [*(a1 + 48) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)apProfileForBssid:(id)bssid
{
  v27 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v5 = [(AnalyticsReader *)self moc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__AnalyticsReader_apProfileForBssid___block_invoke;
  v11[3] = &unk_1E830DAF8;
  v6 = bssidCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  [v5 performBlockAndWait:v11];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v16[5];
    *buf = 136446722;
    v22 = "[AnalyticsReader apProfileForBssid:]";
    v23 = 1024;
    v24 = 161;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %@", buf, 0x1Cu);
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __37__AnalyticsReader_apProfileForBssid___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v16 = 136446466;
    v17 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
    v18 = 1024;
    v19 = 150;
    v10 = "%{public}s::%d:bssid is nil. bailing";
    v11 = v4;
    v12 = 18;
LABEL_10:
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
    goto LABEL_5;
  }

  v3 = [*(a1 + 40) persistentContainer];
  v4 = [v3 bssForBssid:*(a1 + 32) prefetchProperties:&unk_1F483E800 withError:0];

  if (!v4)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 32);
    v16 = 136446722;
    v17 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
    v18 = 1024;
    v19 = 153;
    v20 = 2112;
    v21 = v13;
    v10 = "%{public}s::%d:BSS not found for %@";
    v11 = v4;
    v12 = 28;
    goto LABEL_10;
  }

  v5 = [v4 apProfileID];

  if (v5)
  {
    v6 = [v4 apProfileID];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = 136446722;
      v17 = "[AnalyticsReader apProfileForBssid:]_block_invoke";
      v18 = 1024;
      v19 = 154;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:apProfileID nil for bssid:%@", &v16, 0x1Cu);
    }
  }

LABEL_5:

  v9 = [*(a1 + 40) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networkForSSID:(id)d withError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    persistentContainer = [(AnalyticsReader *)self persistentContainer];
    v8 = +[NetworkMO defaultPropertiesToFetch];
    allObjects = [v8 allObjects];
    error = [persistentContainer networkForSSID:dCopy prefetchProperties:allObjects withError:error];
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "[AnalyticsReader networkForSSID:withError:]";
      v18 = 1024;
      v19 = 172;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v15 = @"WAErrorCodeInvalidInput";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

- (id)usageForNetwork:(id)network withError:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  if (networkCopy)
  {
    v7 = [(AnalyticsReader *)self moc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__AnalyticsReader_usageForNetwork_withError___block_invoke;
    v15[3] = &unk_1E830DB20;
    v17 = &v25;
    v15[4] = self;
    v16 = networkCopy;
    v18 = &v19;
    [v7 performBlockAndWait:v15];

    if (error)
    {
      *error = v20[5];
    }
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "[AnalyticsReader usageForNetwork:withError:]";
      v33 = 1024;
      v34 = 185;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38[0] = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v26[5];
    *buf = 136446722;
    v32 = "[AnalyticsReader usageForNetwork:withError:]";
    v33 = 1024;
    v34 = 197;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v10 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v10;
}

void __45__AnalyticsReader_usageForNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_UsageStats alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 networkForSSID:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_UsageStats *)v3 initWithUniqueMO:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bandsInNetwork:(id)network withError:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  if (networkCopy)
  {
    v7 = [(AnalyticsReader *)self moc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__AnalyticsReader_bandsInNetwork_withError___block_invoke;
    v15[3] = &unk_1E830DB20;
    v17 = &v25;
    v15[4] = self;
    v16 = networkCopy;
    v18 = &v19;
    [v7 performBlockAndWait:v15];

    if (error)
    {
      *error = v20[5];
    }
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "[AnalyticsReader bandsInNetwork:withError:]";
      v33 = 1024;
      v34 = 204;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38[0] = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v26[5];
    *buf = 136446722;
    v32 = "[AnalyticsReader bandsInNetwork:withError:]";
    v33 = 1024;
    v34 = 216;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v10 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v10;
}

void __44__AnalyticsReader_bandsInNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_BandsInNetwork alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 networkForSSID:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_BandsInNetwork *)v3 initWithNetwork:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)copyAllStoredNetworkSsids
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v3 = [(AnalyticsReader *)self moc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AnalyticsReader_copyAllStoredNetworkSsids__block_invoke;
  v8[3] = &unk_1E830EE78;
  v8[4] = self;
  v8[5] = &v9;
  [v3 performBlockAndWait:v8];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v10[5] count];
    *buf = 136446722;
    v16 = "[AnalyticsReader copyAllStoredNetworkSsids]";
    v17 = 1024;
    v18 = 234;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu SSIDs", buf, 0x1Cu);
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __44__AnalyticsReader_copyAllStoredNetworkSsids__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) moc];
  v4 = [NetworkMO allStoredSsids:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7 || ![v7 count])
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[AnalyticsReader copyAllStoredNetworkSsids]_block_invoke";
      v12 = 1024;
      v13 = 229;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:No known network SSIDs", &v10, 0x12u);
    }
  }

  v9 = [*(a1 + 32) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networkSsidsByTraits:(id)traits withError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __50__AnalyticsReader_networkSsidsByTraits_withError___block_invoke;
  v16 = &unk_1E830F078;
  v8 = traitsCopy;
  v17 = v8;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  [v7 performBlockAndWait:&v13];

  if (error)
  {
    *error = v28[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v22[5] count];
    *buf = 136446722;
    v34 = "[AnalyticsReader networkSsidsByTraits:withError:]";
    v35 = 1024;
    v36 = 266;
    v37 = 2048;
    v38 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu traits", buf, 0x1Cu);
  }

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __50__AnalyticsReader_networkSsidsByTraits_withError___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 136446722;
    v30 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
    v31 = 1024;
    v32 = 243;
    v33 = 2112;
    v34 = v3;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching networks with traits:%@", buf, 0x1Cu);
  }

  v23 = objc_opt_new();
  v4 = [NetworkMO propertiesForTraits:*(a1 + 32)];
  [v4 addObject:@"ssid"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v30 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
          v31 = 1024;
          v32 = 249;
          v33 = 2112;
          v34 = v8;
          _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching networks with trait:%@", buf, 0x1Cu);
        }

        v10 = [v8 unsignedIntegerValue];
        v11 = [*(a1 + 40) persistentContainer];
        v12 = *(*(a1 + 48) + 8);
        v24 = *(v12 + 40);
        v13 = [v11 networksWithTrait:v10 prefetchedProperties:v4 withError:&v24];
        objc_storeStrong((v12 + 40), v24);

        v14 = [v13 valueForKey:@"ssid"];
        [v23 setObject:v14 forKeyedSubscript:v8];

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v13 count];
          *buf = 136446978;
          v30 = "[AnalyticsReader networkSsidsByTraits:withError:]_block_invoke";
          v31 = 1024;
          v32 = 260;
          v33 = 2048;
          v34 = v16;
          v35 = 2112;
          v36 = v8;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found %ld networks with trait %@", buf, 0x26u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v23];
  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 40) persistentContainer];
  [v20 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(context);
}

+ (id)networksFromResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [WADeviceAnalyticsNetwork networkWith:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)networksWithPredicate:(id)predicate withError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__AnalyticsReader_networksWithPredicate_withError___block_invoke;
  v16 = &unk_1E830F078;
  selfCopy = self;
  v8 = predicateCopy;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  [v7 performBlockAndWait:&v13];

  if (error)
  {
    *error = v22[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v28[5] count];
    *buf = 136446722;
    v34 = "[AnalyticsReader networksWithPredicate:withError:]";
    v35 = 1024;
    v36 = 300;
    v37 = 2048;
    v38 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks", buf, 0x1Cu);
  }

  v11 = v28[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v11;
}

void __51__AnalyticsReader_networksWithPredicate_withError___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = +[NetworkMO entity];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ssid" ascending:1];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v3 fetchObjects:v4 withPredicate:v5 withSorting:v7 withPrefetchedProperties:&unk_1F483E818 withLimit:0 withError:&obj];
  objc_storeStrong((v8 + 40), obj);

  v10 = [AnalyticsReader networksFromResults:v9];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(a1 + 32) persistentContainer];
  [v13 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksInSameLansAsSsid:(id)ssid withError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  ssidCopy = ssid;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AnalyticsReader_networksInSameLansAsSsid_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = ssidCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (error)
  {
    *error = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v26[5] count];
    v11 = v20[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v20[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v32 = "[AnalyticsReader networksInSameLansAsSsid:withError:]";
    v33 = 1024;
    v34 = 318;
    v35 = 2048;
    v36 = v10;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same lan as:%@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __54__AnalyticsReader_networksInSameLansAsSsid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsNetwork:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 allObjects];
  v8 = [AnalyticsReader networksFromResults:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksInSameLanAsBssid:(id)bssid withError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AnalyticsReader_networksInSameLanAsBssid_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = bssidCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (error)
  {
    *error = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v26[5] count];
    v11 = v20[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v20[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v32 = "[AnalyticsReader networksInSameLanAsBssid:withError:]";
    v33 = 1024;
    v34 = 337;
    v35 = 2048;
    v36 = v10;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same lan as:%@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __54__AnalyticsReader_networksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsBSS:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 136446978;
      v16 = "[AnalyticsReader networksInSameLanAsBssid:withError:]_block_invoke";
      v17 = 1024;
      v18 = 329;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Fetching networksInSameLANsAsBSS:%@ failed with %@", buf, 0x26u);
    }
  }

  else
  {
    v7 = [v6 allObjects];
    v8 = [AnalyticsReader networksFromResults:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)lansForSsid:(id)ssid withError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  ssidCopy = ssid;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__AnalyticsReader_lansForSsid_withError___block_invoke;
  v13[3] = &unk_1E830F5A8;
  v8 = ssidCopy;
  v16 = &v18;
  v17 = &v24;
  v14 = v8;
  selfCopy = self;
  [v7 performBlockAndWait:v13];

  if (error)
  {
    *error = v19[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v25[5];
    *buf = 136446978;
    v31 = "[AnalyticsReader lansForSsid:withError:]";
    v32 = 1024;
    v33 = 357;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning LANs for %@: %@", buf, 0x26u);
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

void __41__AnalyticsReader_lansForSsid_withError___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [LANMO predicateForLANsInNetwork:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(a1[6] + 8) + 40))
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = *(*(a1[6] + 8) + 40);
      *buf = 136446978;
      v17 = "[AnalyticsReader lansForSsid:withError:]_block_invoke";
      v18 = 1024;
      v19 = 348;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:predicateForLanInNetwork:%@ failed %@", buf, 0x26u);
    }
  }

  else
  {
    v6 = *(a1[5] + 8);
    v7 = +[LANMO entity];
    v8 = *(a1[6] + 8);
    v14 = *(v8 + 40);
    v9 = [v6 fetchDistinctPropertiesIn:v7 withPredicate:v5 withSorting:0 withPrefetchedProperties:0 withLimit:0 withError:&v14];
    objc_storeStrong((v8 + 40), v14);
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_autoreleasePoolPop(v2);
}

- (signed)deploymentCoverageForSSID:(id)d withError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__AnalyticsReader_deploymentCoverageForSSID_withError___block_invoke;
  v14[3] = &unk_1E830F078;
  v14[4] = self;
  v8 = dCopy;
  v15 = v8;
  v16 = &v18;
  v17 = &v24;
  [v7 performBlockAndWait:v14];

  if (error)
  {
    *error = v19[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WADeploymentCoverageToString(*(v25 + 12));
    v11 = *(v25 + 12);
    *buf = 136447234;
    v29 = "[AnalyticsReader deploymentCoverageForSSID:withError:]";
    v30 = 1024;
    v31 = 375;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v10;
    v36 = 2048;
    v37 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment coverage for %@ is %@ (%lu)", buf, 0x30u);
  }

  v12 = *(v25 + 12);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v12;
}

void __55__AnalyticsReader_deploymentCoverageForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkForSSID:v4 prefetchProperties:&unk_1F483E830 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v6 coverageDetermination];
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (signed)deploymentCongestionForSSID:(id)d withError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__AnalyticsReader_deploymentCongestionForSSID_withError___block_invoke;
  v14[3] = &unk_1E830F078;
  v14[4] = self;
  v8 = dCopy;
  v15 = v8;
  v16 = &v18;
  v17 = &v24;
  [v7 performBlockAndWait:v14];

  if (error)
  {
    *error = v19[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = WADeploymentCongestionToString(*(v25 + 12));
    v11 = *(v25 + 12);
    *buf = 136447234;
    v29 = "[AnalyticsReader deploymentCongestionForSSID:withError:]";
    v30 = 1024;
    v31 = 393;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v10;
    v36 = 2048;
    v37 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment coverage for %@ is %@ (%lu)", buf, 0x30u);
  }

  v12 = *(v25 + 12);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v12;
}

void __57__AnalyticsReader_deploymentCongestionForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentContainer];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkForSSID:v4 prefetchProperties:&unk_1F483E848 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v6 congestionDetermination];
  }

  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)countNetworksInSameLanAsBssid:(id)bssid withError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__AnalyticsReader_countNetworksInSameLanAsBssid_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = bssidCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (error)
  {
    *error = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v26[3];
    v11 = v20[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v20[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v30 = "[AnalyticsReader countNetworksInSameLanAsBssid:withError:]";
    v31 = 1024;
    v32 = 410;
    v33 = 2048;
    v34 = v10;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks in same LAN as %@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __59__AnalyticsReader_countNetworksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInSameLANsAsBSS:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = [v6 count];
  v7 = [*(a1 + 32) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)networkCountForLAN:(id)n withError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__AnalyticsReader_networkCountForLAN_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = nCopy;
  v16 = v8;
  v17 = &v23;
  v18 = &v19;
  [v7 performBlockAndWait:v15];

  if (error)
  {
    *error = v24[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v20[3];
    v11 = v24[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v24[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136446978;
    v30 = "[AnalyticsReader networkCountForLAN:withError:]";
    v31 = 1024;
    v32 = 517;
    v33 = 2048;
    v34 = v10;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks %@", buf, 0x26u);
    if (v11)
    {
    }
  }

  v13 = v20[3];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __48__AnalyticsReader_networkCountForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 lanFor:v3 prefetchProperties:&unk_1F483E860 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = [v7 networkCountForLAN:v6 withError:&v11];
  objc_storeStrong((v8 + 40), v11);
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = [*(a1 + 32) persistentContainer];
  [v10 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksInLan:(id)lan withError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  lanCopy = lan;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__AnalyticsReader_networksInLan_withError___block_invoke;
  v16[3] = &unk_1E830F078;
  v16[4] = self;
  v8 = lanCopy;
  v17 = v8;
  v18 = &v20;
  v19 = &v26;
  [v7 performBlockAndWait:v16];

  if (error)
  {
    *error = v21[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v27[5] count];
    v11 = v21[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v21[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    v13 = v27[5];
    *buf = 136447234;
    v33 = "[AnalyticsReader networksInLan:withError:]";
    v34 = 1024;
    v35 = 538;
    v36 = 2048;
    v37 = v10;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks %@ : %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v14 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v14;
}

void __43__AnalyticsReader_networksInLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 networksInLAN:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [v6 allObjects];
    v8 = [AnalyticsReader networksFromResults:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)lanForBssid:(id)bssid withError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__AnalyticsReader_lanForBssid_withError___block_invoke;
  v15[3] = &unk_1E830F078;
  v15[4] = self;
  v8 = bssidCopy;
  v16 = v8;
  v17 = &v19;
  v18 = &v25;
  [v7 performBlockAndWait:v15];

  if (error)
  {
    *error = v20[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v26[5];
    v11 = v20[5];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"with error: %@", v20[5]];
    }

    else
    {
      v12 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v32 = "[AnalyticsReader lanForBssid:withError:]";
    v33 = 1024;
    v34 = 558;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning LAN for %@: %@ %@", buf, 0x30u);
    if (v11)
    {
    }
  }

  v13 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __41__AnalyticsReader_lanForBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 lanContainingBSS:v3 prefetchProperties:0 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [WAPersistentContainer getConstraintsValues:v6];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 32) persistentContainer];
  [v10 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bssidCountByBandInUniqueMO:(id)o withError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  oCopy = o;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v7 = [(AnalyticsReader *)self moc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__AnalyticsReader_bssidCountByBandInUniqueMO_withError___block_invoke;
  v13[3] = &unk_1E830DB20;
  v15 = &v23;
  v13[4] = self;
  v8 = oCopy;
  v14 = v8;
  v16 = &v17;
  [v7 performBlockAndWait:v13];

  if (error)
  {
    *error = v18[5];
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v24[5];
    *buf = 136446978;
    v30 = "[AnalyticsReader bssidCountByBandInUniqueMO:withError:]";
    v31 = 1024;
    v32 = 574;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:bssid Count by Band for %@ returning %@", buf, 0x26u);
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

void __56__AnalyticsReader_bssidCountByBandInUniqueMO_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 bssidCountBy:&unk_1F483E878 inUniqueMO:v3 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) persistentContainer];
  [v9 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)bssidCountByBandInLAN:(id)n withError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if (n)
  {
    v5 = [(AnalyticsReader *)self bssidCountByBandInUniqueMO:n withError:error];
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[AnalyticsReader bssidCountByBandInLAN:withError:]";
      v14 = 1024;
      v15 = 580;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A588];
      v11 = @"WAErrorCodeInvalidInput";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      *error = [v8 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v9];
    }

    v5 = 0;
  }

  return v5;
}

- (unint64_t)countNetworksHavingBand:(signed __int16)band inLan:(id)lan withError:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  lanCopy = lan;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v9 = [(AnalyticsReader *)self moc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__AnalyticsReader_countNetworksHavingBand_inLan_withError___block_invoke;
  v15[3] = &unk_1E830F0C8;
  v17 = &v26;
  v15[4] = self;
  bandCopy = band;
  v10 = lanCopy;
  v16 = v10;
  v18 = &v20;
  [v9 performBlockAndWait:v15];

  if (error)
  {
    *error = v21[5];
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v27[3];
    *buf = 136446722;
    v31 = "[AnalyticsReader countNetworksHavingBand:inLan:withError:]";
    v32 = 1024;
    v33 = 599;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %lu networks", buf, 0x1Cu);
  }

  v13 = v27[3];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v13;
}

void __59__AnalyticsReader_countNetworksHavingBand_inLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 64);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 countNetworksHavingBand:v5 inLan:v3 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7;
  v8 = [*(a1 + 32) persistentContainer];
  [v8 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)lanFor:(id)for withError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if (forCopy)
  {
    persistentContainer = [(AnalyticsReader *)self persistentContainer];
    v8 = +[(UniqueMO *)LANMO];
    allObjects = [v8 allObjects];
    error = [persistentContainer lanFor:forCopy prefetchProperties:allObjects withError:error];
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "[AnalyticsReader lanFor:withError:]";
      v18 = 1024;
      v19 = 606;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v15 = @"WAErrorCodeInvalidInput";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

- (id)usageForLAN:(id)n withError:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  if (nCopy)
  {
    v7 = [(AnalyticsReader *)self moc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__AnalyticsReader_usageForLAN_withError___block_invoke;
    v15[3] = &unk_1E830DB20;
    v17 = &v25;
    v15[4] = self;
    v16 = nCopy;
    v18 = &v19;
    [v7 performBlockAndWait:v15];

    if (error)
    {
      *error = v20[5];
    }
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "[AnalyticsReader usageForLAN:withError:]";
      v33 = 1024;
      v34 = 618;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A588];
      v40[0] = @"WAErrorCodeInvalidInput";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *error = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v14];
    }
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v26[5];
    *buf = 136446978;
    v32 = "[AnalyticsReader usageForLAN:withError:]";
    v33 = 1024;
    v34 = 630;
    v35 = 2112;
    v36 = nCopy;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:usageForLAN:%@ : %@", buf, 0x26u);
  }

  v10 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v10;
}

void __41__AnalyticsReader_usageForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WADeviceAnalytics_UsageStats alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 lanFor:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = [(WADeviceAnalytics_UsageStats *)v3 initWithUniqueMO:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) persistentContainer];
  [v11 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isNetworkWithinRangeOfLocation:(id)location range:(double)range location:(id)a5 count:(unint64_t *)count
{
  v41 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v11 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v12 = [(AnalyticsReader *)self moc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__AnalyticsReader_isNetworkWithinRangeOfLocation_range_location_count___block_invoke;
  v20[3] = &unk_1E830F5D0;
  v13 = locationCopy;
  v21 = v13;
  v14 = v11;
  rangeCopy = range;
  v22 = v14;
  selfCopy = self;
  v24 = &v31;
  v25 = &v27;
  [v12 performBlockAndWait:v20];

  if (count)
  {
    *count = v28[3];
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(v32 + 24) == 0;
    *buf = 136446722;
    v36 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]";
    if (v16)
    {
      v17 = @"NO";
    }

    else
    {
      v17 = @"YES";
    }

    v37 = 1024;
    v38 = 654;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %@", buf, 0x1Cu);
  }

  v18 = *(v32 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v18 & 1;
}

void __71__AnalyticsReader_isNetworkWithinRangeOfLocation_range_location_count___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      *(*(*(a1 + 56) + 8) + 24) = [GeoTagMO isNetworkWithinRangeOfLocation:"isNetworkWithinRangeOfLocation:range:location:container:count:" range:*(a1 + 72) location:? container:? count:?];
      goto LABEL_4;
    }

    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
      v12 = 1024;
      v13 = 642;
      v9 = "%{public}s::%d:location nil";
      goto LABEL_14;
    }
  }

  else
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
      v12 = 1024;
      v13 = 641;
      v9 = "%{public}s::%d:ssid nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, v9, &v10, 0x12u);
    }
  }

LABEL_4:
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v5 = "IS";
    }

    else
    {
      v5 = "NOT";
    }

    v6 = *(a1 + 72);
    v10 = 136447234;
    v11 = "[AnalyticsReader isNetworkWithinRangeOfLocation:range:location:count:]_block_invoke";
    v12 = 1024;
    v13 = 647;
    v14 = 2112;
    v15 = v4;
    v16 = 2080;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@ %s within %f of given location", &v10, 0x30u);
  }

  v7 = [*(a1 + 48) persistentContainer];
  [v7 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)copyGeoTagsForNetwork:(id)network location:(id)location
{
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  locationCopy = location;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [(AnalyticsReader *)self moc];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __50__AnalyticsReader_copyGeoTagsForNetwork_location___block_invoke;
  v18 = &unk_1E830F050;
  v9 = networkCopy;
  v19 = v9;
  v10 = locationCopy;
  v20 = v10;
  selfCopy = self;
  v22 = &v23;
  [v8 performBlockAndWait:&v15];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [v24[5] count];
    *buf = 136446722;
    v30 = "[AnalyticsReader copyGeoTagsForNetwork:location:]";
    v31 = 1024;
    v32 = 705;
    v33 = 2048;
    v34 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu tags", buf, 0x1Cu);
  }

  v13 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __50__AnalyticsReader_copyGeoTagsForNetwork_location___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 32))
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136446466;
    v57 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
    v58 = 1024;
    v59 = 664;
    v41 = "%{public}s::%d:ssid nil";
    goto LABEL_35;
  }

  if (*(a1 + 40))
  {
    v3 = [GeoTagMO geoTagsForNetwork:"geoTagsForNetwork:container:" container:?];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (!v4)
    {
      goto LABEL_28;
    }

    v5 = v4;
    v44 = a1;
    v42 = v2;
    v6 = *v51;
    v45 = v3;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v50 + 1) + 8 * v7);
        if (v8)
        {
          [*(*(&v50 + 1) + 8 * v7) latitude];
          if (v9 == 0.0 || ([v8 longitude], v10 == 0.0) || (objc_msgSend(v8, "date"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
          {
            v11 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = [v8 date];
              *buf = 136446722;
              v57 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
              v58 = 1024;
              v59 = 676;
              v60 = 2112;
              v61 = v12;
              _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - invalid geoTag coordinates or geoTag.date %@", buf, 0x1Cu);
            }
          }

          else
          {
            v14 = [v8 bss];
            if (v14)
            {
              v15 = v14;
              v16 = [v8 bss];
              if ([v16 mostRecentChannel])
              {
                v17 = [v8 bss];
                v18 = [v17 bssid];

                if (v18)
                {
                  v19 = objc_alloc(MEMORY[0x1E6985C38]);
                  [v8 latitude];
                  v21 = v20;
                  [v8 longitude];
                  v11 = [v19 initWithLatitude:v21 longitude:v22];
                  [v11 distanceFromLocation:*(v44 + 40)];
                  v24 = v23;
                  v54[0] = @"bssid";
                  v48 = [v8 bss];
                  v46 = [v48 bssid];
                  v55[0] = v46;
                  v54[1] = @"is5Ghz";
                  v25 = MEMORY[0x1E696AD98];
                  v43 = [v8 bss];
                  v26 = [v25 numberWithInt:{objc_msgSend(v43, "mostRecentBand") == 1}];
                  v55[1] = v26;
                  v54[2] = @"date";
                  v27 = [v8 date];
                  v55[2] = v27;
                  v54[3] = @"latitude";
                  v28 = MEMORY[0x1E696AD98];
                  [v8 latitude];
                  v29 = [v28 numberWithDouble:?];
                  v55[3] = v29;
                  v54[4] = @"longitude";
                  v30 = MEMORY[0x1E696AD98];
                  [v8 longitude];
                  v31 = [v30 numberWithDouble:?];
                  v55[4] = v31;
                  v54[5] = @"distance";
                  v32 = [MEMORY[0x1E696AD98] numberWithInt:v24];
                  v55[5] = v32;
                  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:6];

                  v3 = v45;
                  [*(*(*(v44 + 56) + 8) + 40) addObject:v33];

                  goto LABEL_15;
                }
              }

              else
              {
              }
            }

            v11 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v47 = [v8 bss];
              v49 = [v8 bss];
              v34 = [v49 mostRecentChannel];
              v35 = [v8 bss];
              v36 = [v35 bssid];
              *buf = 136447234;
              v57 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
              v58 = 1024;
              v59 = 681;
              v60 = 2112;
              v61 = v47;
              v62 = 1024;
              v63 = v34;
              v64 = 2112;
              v65 = v36;
              _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - geoTag.bss  %@ geoTag.bss.mostRecentChannel %d geoTag.bss.bssid %@", buf, 0x2Cu);

              v3 = v45;
            }
          }
        }

        else
        {
          v11 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v57 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
            v58 = 1024;
            v59 = 671;
            _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
          }
        }

LABEL_15:

        ++v7;
      }

      while (v5 != v7);
      v37 = [v3 countByEnumeratingWithState:&v50 objects:v66 count:16];
      v5 = v37;
      if (!v37)
      {
        v2 = v42;
        a1 = v44;
        goto LABEL_28;
      }
    }
  }

  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v57 = "[AnalyticsReader copyGeoTagsForNetwork:location:]_block_invoke";
    v58 = 1024;
    v59 = 665;
    v41 = "%{public}s::%d:location nil";
LABEL_35:
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, v41, buf, 0x12u);
  }

LABEL_28:

  if (![*(*(*(a1 + 56) + 8) + 40) count])
  {
    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = 0;
  }

  v40 = [*(a1 + 48) persistentContainer];
  [v40 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)networksAvailableAtLocation:(id)location withinDistance:(double)distance inBand:(unsigned int)band
{
  locationCopy = location;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v9 = [(AnalyticsReader *)self moc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AnalyticsReader_networksAvailableAtLocation_withinDistance_inBand___block_invoke;
  v13[3] = &unk_1E830F5F8;
  v10 = locationCopy;
  distanceCopy = distance;
  bandCopy = band;
  v14 = v10;
  selfCopy = self;
  v16 = &v19;
  [v9 performBlockAndWait:v13];

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __69__AnalyticsReader_networksAvailableAtLocation_withinDistance_inBand___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v49 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
      v50 = 1024;
      v51 = 716;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
    }

    goto LABEL_24;
  }

  v4 = [GeoTagMO geoTagsAtLocation:v3 withinDistance:*(a1 + 64) inBand:*(*(a1 + 40) + 8) container:*(a1 + 56)];
  if (!v4)
  {
    goto LABEL_21;
  }

  v39 = v2;
  v5 = [MEMORY[0x1E695DF70] array];
  v40 = a1;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v4;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = *v43;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v43 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v42 + 1) + 8 * i);
      if (v12)
      {
        v13 = [*(*(&v42 + 1) + 8 * i) bss];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 bss];
          v16 = [v15 network];
          if (v16)
          {
            v17 = v16;
            v18 = [v12 bss];
            v19 = [v18 network];
            v20 = [v19 ssid];

            if (v20)
            {
              v46[0] = @"ssid";
              v21 = [v12 bss];
              v22 = [v21 network];
              v23 = [v22 ssid];
              v46[1] = @"authFlags";
              v47[0] = v23;
              v24 = MEMORY[0x1E696AD98];
              v25 = [v12 bss];
              v26 = [v25 network];
              v27 = [v24 numberWithInt:{objc_msgSend(v26, "authFlags")}];
              v47[1] = v27;
              v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];

              [*(*(*(v40 + 48) + 8) + 40) addObject:v28];
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v28 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v12 bss];
          v30 = [v12 bss];
          v31 = [v30 network];
          v32 = [v12 bss];
          v33 = [v32 network];
          v34 = [v33 ssid];
          *buf = 136447234;
          v49 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
          v50 = 1024;
          v51 = 729;
          v52 = 2112;
          v53 = v29;
          v54 = 2112;
          v55 = v31;
          v56 = 2112;
          v57 = v34;
          _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nil - geoTag.bss  %@ geoTag.bss.network %@ geoTag.bss.network.ssid %@", buf, 0x30u);
        }
      }

      else
      {
        v28 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v49 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
          v50 = 1024;
          v51 = 724;
          _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
        }
      }

LABEL_18:
    }

    v9 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  }

  while (v9);
LABEL_20:

  v4 = v38;
  v2 = v39;
  a1 = v40;
LABEL_21:
  v35 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(*(*(a1 + 48) + 8) + 40) count];
    *buf = 136446722;
    v49 = "[AnalyticsReader networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
    v50 = 1024;
    v51 = 739;
    v52 = 2048;
    v53 = v36;
    _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %ld networks", buf, 0x1Cu);
  }

LABEL_24:
  v37 = [*(a1 + 40) persistentContainer];
  [v37 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)copyLocationsForNetwork:(id)network
{
  v27 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [(AnalyticsReader *)self moc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__AnalyticsReader_copyLocationsForNetwork___block_invoke;
  v11[3] = &unk_1E830DAF8;
  v6 = networkCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  [v5 performBlockAndWait:v11];

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v16[5] count];
    *buf = 136446722;
    v22 = "[AnalyticsReader copyLocationsForNetwork:]";
    v23 = 1024;
    v24 = 776;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:returning %lu loc", buf, 0x1Cu);
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __43__AnalyticsReader_copyLocationsForNetwork___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v23 = v2;
    v5 = [*(a1 + 40) persistentContainer];
    v6 = [GeoTagMO geoTagsForNetwork:v4 container:v5];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if (v12)
          {
            v13 = objc_alloc(MEMORY[0x1E6985C38]);
            [v12 latitude];
            v15 = v14;
            [v12 longitude];
            v17 = [v13 initWithLatitude:v15 longitude:v16];
            if (v17)
            {
              v18 = v17;
              [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
            }

            else
            {
              v19 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v30 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
                v31 = 1024;
                v32 = 764;
                _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
              }

              v18 = 0;
            }
          }

          else
          {
            v18 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v30 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
              v31 = 1024;
              v32 = 758;
              _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v3 = v23;
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v30 = "[AnalyticsReader copyLocationsForNetwork:]_block_invoke";
      v31 = 1024;
      v32 = 752;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }
  }

  if (![*(*(*(a1 + 48) + 8) + 40) count])
  {
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  v22 = [*(a1 + 40) persistentContainer];
  [v22 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v3);
}

- (id)usageOf:(id)of timeSpan:(unint64_t)span around:(id)around withError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  aroundCopy = around;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__10;
  v36 = __Block_byref_object_dispose__10;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v12 = [(AnalyticsReader *)self moc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__AnalyticsReader_usageOf_timeSpan_around_withError___block_invoke;
  v19[3] = &unk_1E830F118;
  v23 = &v32;
  v13 = ofCopy;
  v20 = v13;
  spanCopy = span;
  v14 = aroundCopy;
  v21 = v14;
  selfCopy = self;
  v24 = &v26;
  [v12 performBlockAndWait:v19];

  if (error)
  {
    *error = v27[5];
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v33[5];
    *buf = 136446722;
    v39 = "[AnalyticsReader usageOf:timeSpan:around:withError:]";
    v40 = 1024;
    v41 = 792;
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Returning %@", buf, 0x1Cu);
  }

  v17 = v33[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v17;
}

void __53__AnalyticsReader_usageOf_timeSpan_around_withError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) persistentContainer];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [UsageMO usageOf:v4 timeSpan:v3 around:v5 onContainer:v6 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136446722;
    v16 = "[AnalyticsReader usageOf:timeSpan:around:withError:]_block_invoke";
    v17 = 1024;
    v18 = 788;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning: %@", buf, 0x1Cu);
  }

  v13 = [*(a1 + 48) persistentContainer];
  [v13 managedObjectContextSave:0 reset:1 release:1 withError:0];

  objc_autoreleasePoolPop(v2);
}

- (id)usageOf:(id)of during:(unint64_t)during timeSpan:(unint64_t)span withError:(id *)error
{
  ofCopy = of;
  v11 = [UsageMO referenceDateFor:during timeSpan:span withError:error];
  v12 = [(AnalyticsReader *)self usageOf:ofCopy timeSpan:span around:v11 withError:error];

  return v12;
}

@end