@interface WADeviceAnalyticsScanRecord
+ (BOOL)getSsidAndBssidWithinRangeForColocatedScopeTransition:(id)transition bssid:(id)bssid minRssi:(int)rssi maxRssi:(int)maxRssi band:(unsigned int)band transitionSsid:(id *)ssid transitionBssid:(id *)transitionBssid transitionRssi:(int *)self0 authFlags:(id *)self1 container:(id)self2;
@end

@implementation WADeviceAnalyticsScanRecord

+ (BOOL)getSsidAndBssidWithinRangeForColocatedScopeTransition:(id)transition bssid:(id)bssid minRssi:(int)rssi maxRssi:(int)maxRssi band:(unsigned int)band transitionSsid:(id *)ssid transitionBssid:(id *)transitionBssid transitionRssi:(int *)self0 authFlags:(id *)self1 container:(id)self2
{
  v13 = *&maxRssi;
  v14 = *&rssi;
  v122[1] = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  bssidCopy = bssid;
  containerCopy = container;
  v77 = +[WADeviceAnalyticsScanRecord fetchRequest];
  v18 = +[NetworkMO entity];
  v121 = @"ssid";
  v122[0] = transitionCopy;
  v83 = transitionCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
  v78 = containerCopy;
  v20 = [containerCopy uniqueObjectFor:v18 withConstraints:v19 allowCreate:0 prefetchProperties:&unk_1F483E908];

  if (!v20)
  {
    v38 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v94 = "+[WADeviceAnalyticsScanRecord getSsidAndBssidWithinRangeForColocatedScopeTransition:bssid:minRssi:maxRssi:band:transitionSsid:transitionBssid:transitionRssi:authFlags:container:]";
      v95 = 1024;
      v96 = 50;
      v97 = 2112;
      v98 = v83;
      v70 = "%{public}s::%d:networkMO nil for ssid %@";
      v71 = v38;
      v72 = 28;
LABEL_39:
      _os_log_impl(&dword_1C8460000, v71, OS_LOG_TYPE_ERROR, v70, buf, v72);
    }

LABEL_40:
    v32 = 0;
    v66 = 0;
    v22 = 0;
    v33 = 0;
    v39 = 0;
    goto LABEL_31;
  }

  colocatedScopeId = [v20 colocatedScopeId];
  if (!colocatedScopeId)
  {
    v38 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v94 = "+[WADeviceAnalyticsScanRecord getSsidAndBssidWithinRangeForColocatedScopeTransition:bssid:minRssi:maxRssi:band:transitionSsid:transitionBssid:transitionRssi:authFlags:container:]";
      v95 = 1024;
      v96 = 53;
      v70 = "%{public}s::%d:No colocated scope id";
      v71 = v38;
      v72 = 18;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v80 = colocatedScopeId;
  bandCopy = band;
  v76 = v20;
  if (band - 1 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"result.mostRecentBand == %@", off_1E830F688[band - 1]];
  }

  v23 = MEMORY[0x1E696AB28];
  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"origin.network.ssid == %@", v83];
  v120[0] = v24;
  bssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"origin.bssid == %@", bssidCopy];
  v120[1] = bssidCopy;
  bssidCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"result.bssid != %@", bssidCopy];
  v120[2] = bssidCopy2;
  v81 = v13;
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(resultRssi > %d) AND (resultRssi <= %d)", v14, v13];
  v120[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
  v29 = [v23 andPredicateWithSubpredicates:v28];

  if (v22)
  {
    v30 = MEMORY[0x1E696AB28];
    v119[0] = v29;
    v119[1] = v22;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
    v32 = [v30 andPredicateWithSubpredicates:v31];
  }

  else
  {
    v32 = v29;
  }

  v33 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"resultRssi" ascending:0];
  [v77 setFetchBatchSize:100];
  [v77 setRelationshipKeyPathsForPrefetching:&unk_1F483E920];
  v118 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
  [v77 setSortDescriptors:v34];

  viewContext = [containerCopy viewContext];
  v36 = [AnalyticsStoreProxy fetch:v77 withPredicate:v32 moc:viewContext];

  v37 = WALogCategoryDeviceStoreHandle();
  LODWORD(v13) = v81;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v94 = "+[WADeviceAnalyticsScanRecord getSsidAndBssidWithinRangeForColocatedScopeTransition:bssid:minRssi:maxRssi:band:transitionSsid:transitionBssid:transitionRssi:authFlags:container:]";
    v95 = 1024;
    v96 = 88;
    v97 = 2048;
    v98 = [v36 count];
    v99 = 1024;
    LODWORD(v100) = bandCopy;
    _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Found %lu results with bandPref:%d", buf, 0x22u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v38 = v36;
  v39 = v80;
  v86 = [v38 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (v86)
  {
    v73 = v33;
    v74 = v32;
    v75 = v22;
    v85 = *v90;
    obj = v38;
    while (2)
    {
      for (i = 0; i != v86; ++i)
      {
        if (*v90 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v89 + 1) + 8 * i);
        result = [v41 result];
        network = [result network];
        colocatedScopeId2 = [network colocatedScopeId];
        v45 = [v39 isEqual:colocatedScopeId2];

        if (v45)
        {
          v46 = MEMORY[0x1E696AEC0];
          result2 = [v41 result];
          network2 = [result2 network];
          ssid = [network2 ssid];
          v88 = [v46 stringWithString:ssid];

          v50 = MEMORY[0x1E696AEC0];
          result3 = [v41 result];
          bssid = [result3 bssid];
          v53 = [v50 stringWithString:bssid];

          if ([v41 resultRssi] > v14 && objc_msgSend(v41, "resultRssi") <= v13)
          {
            *ssid = [MEMORY[0x1E696AEC0] stringWithString:v88];
            *transitionBssid = [MEMORY[0x1E696AEC0] stringWithString:v53];
            *transitionRssi = [v41 resultRssi];
            v55 = MEMORY[0x1E696AD98];
            result4 = [v41 result];
            network3 = [result4 network];
            *flags = [v55 numberWithInt:{objc_msgSend(network3, "authFlags")}];

            v54 = 1;
          }

          else
          {
            v54 = 0;
          }

          v58 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            resultRssi = [v41 resultRssi];
            result5 = [v41 result];
            v13 = v14;
            mostRecentChannel = [result5 mostRecentChannel];
            result6 = [v41 result];
            v63 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [result6 mostRecentBand]);
            v64 = v63;
            *buf = 136449026;
            v65 = "Will not";
            if (v54)
            {
              v65 = "Will";
            }

            v94 = "+[WADeviceAnalyticsScanRecord getSsidAndBssidWithinRangeForColocatedScopeTransition:bssid:minRssi:maxRssi:band:transitionSsid:transitionBssid:transitionRssi:authFlags:container:]";
            v95 = 1024;
            v96 = 107;
            v97 = 2112;
            v98 = v88;
            v99 = 2112;
            v100 = v53;
            v101 = 1024;
            v102 = resultRssi;
            v103 = 1024;
            v104 = mostRecentChannel;
            v14 = v13;
            v39 = v80;
            LODWORD(v13) = v81;
            v105 = 2112;
            v106 = v63;
            v107 = 2112;
            v108 = v83;
            v109 = 2112;
            v110 = bssidCopy;
            v111 = 1024;
            v112 = v81;
            v113 = 1024;
            v114 = v14;
            v115 = 2080;
            v116 = v65;
            _os_log_impl(&dword_1C8460000, v58, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@[%@] at rssi %d on chan: %d[%@] for %@[%@] in range [%d, %d). %s use", buf, 0x66u);
          }

          if (v54)
          {
            v67 = 1;
            v68 = obj;
            v66 = obj;
            v22 = v75;
            v20 = v76;
            v33 = v73;
            v32 = v74;
            goto LABEL_34;
          }
        }
      }

      v38 = obj;
      v86 = [obj countByEnumeratingWithState:&v89 objects:v117 count:16];
      if (v86)
      {
        continue;
      }

      break;
    }

    v66 = obj;
    v22 = v75;
    v20 = v76;
    v33 = v73;
    v32 = v74;
  }

  else
  {
    v66 = v38;
    v20 = v76;
  }

LABEL_31:

  *ssid = 0;
  *transitionBssid = 0;
  v68 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    *buf = 136447490;
    v94 = "+[WADeviceAnalyticsScanRecord getSsidAndBssidWithinRangeForColocatedScopeTransition:bssid:minRssi:maxRssi:band:transitionSsid:transitionBssid:transitionRssi:authFlags:container:]";
    v95 = 1024;
    v96 = 117;
    v97 = 2112;
    v98 = v83;
    v99 = 2112;
    v100 = bssidCopy;
    v101 = 1024;
    v102 = v13;
    v103 = 1024;
    v104 = v14;
    _os_log_impl(&dword_1C8460000, v68, OS_LOG_TYPE_ERROR, "%{public}s::%d:Nothing found for %@[%@] in range [%d, %d)", buf, 0x32u);
  }

  v67 = 0;
LABEL_34:

  return v67;
}

@end