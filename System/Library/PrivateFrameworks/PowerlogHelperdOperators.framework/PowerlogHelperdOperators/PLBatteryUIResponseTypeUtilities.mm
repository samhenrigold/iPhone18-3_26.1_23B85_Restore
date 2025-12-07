@interface PLBatteryUIResponseTypeUtilities
+ (BOOL)energyEntryHasNegligibleEnergyDrain:(id)drain filterArray:(id)array;
+ (id)getBundleIDToDisplayNameMapWithResponderService:(id)service;
+ (id)getBundleIDToReplacementBundleIDMap;
+ (id)getDeletedAppBundleIDsWithResponderService:(id)service;
+ (id)getDeletedAppClipBundleIDsWithResponderService:(id)service;
+ (id)getEnergyEntry:(id)entry forBundleID:(id)d;
+ (id)getInstalledPluginEntries;
+ (id)getNonAppBundleIDs;
+ (id)getPluginBundleIDToEntryMapWithResponderService:(id)service;
+ (id)getWebAppBundleIDsWithResponderService:(id)service;
+ (void)addEntryTypesToEnergyEntriesInBucket:(id)bucket withResponderService:(id)service;
+ (void)applyDynamicNameTransformation:(id)transformation withResponderService:(id)service;
+ (void)applyStaticNameTransformation:(id)transformation withResponderService:(id)service;
+ (void)collapseEnergyEntries:(id)entries;
+ (void)filterEnergyEntriesByAppTypeFromBucket:(id)bucket;
+ (void)filterEnergyEntriesWithRuntimes:(id)runtimes;
+ (void)reaccountBackupRestore:(id)restore;
+ (void)reaccountExchangeEntries:(id)entries withExchangeBundleIDs:(id)ds;
+ (void)replaceBundleIDsWithDisplayNamesForEnergyEntryInBucket:(id)bucket withResponderService:(id)service;
+ (void)transformDeletedApps:(id)apps withResponderService:(id)service;
+ (void)transformPlugins:(id)plugins withResponderService:(id)service;
@end

@implementation PLBatteryUIResponseTypeUtilities

+ (void)applyStaticNameTransformation:(id)transformation withResponderService:(id)service
{
  v81 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  serviceCopy = service;
  v7 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  v8 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:serviceCopy];
  v9 = v8;
  if (!v7)
  {
    v64 = PLLogCommon(v8);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }

    goto LABEL_43;
  }

  if (!v8)
  {
    v64 = PLLogCommon(0);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }

LABEL_43:

    goto LABEL_44;
  }

  v65 = v8;
  v66 = serviceCopy;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v67 = transformationCopy;
  v10 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = v11;
  v13 = *v71;
  v69 = *MEMORY[0x277D0AB98];
  v14 = 0x277CCA000uLL;
  v68 = v10;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v71 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v70 + 1) + 8 * i);
      v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([v17 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
      {
        v18 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        v19 = *(v14 + 2992);
        [v18 doubleValue];
        v21 = [v19 numberWithDouble:-v20];
        [v16 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

LABEL_10:
        goto LABEL_34;
      }

      if ([v17 isEqualToString:@"com.apple.PassbookUIService"])
      {
        [v16 setObject:&unk_28714B118 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      }

      else if (_os_feature_enabled_impl())
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v69, @"aod"];
        v23 = [v17 isEqualToString:v22];

        if (v23)
        {
          v25 = PLLogCommon(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v75 = *&v17;
            v76 = 2112;
            v77 = *&v16;
            _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: processing aod entry with bundleID=%@, energyEntry=%@", buf, 0x16u);
          }

          v26 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v16 setObject:v26 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v27 = MEMORY[0x277CCABB0];
          v28 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v28 doubleValue];
          v29 = [v27 numberWithDouble:?];
          [v16 setObject:v29 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];

          v30 = MEMORY[0x277CCABB0];
          v31 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v31 doubleValue];
          v32 = [v30 numberWithDouble:?];
          [v16 setObject:v32 forKeyedSubscript:@"AlwaysOnEnergyBeforeClamp"];

          v33 = PLLogCommon([v16 setObject:&unk_28714B118 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"]);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v60 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            v61 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            *buf = 138412802;
            v75 = *&v60;
            v76 = 2112;
            v77 = *&v61;
            v78 = 2112;
            v79 = v17;
            _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Subtracting foregroundPluggedInTime=%@ from alwaysOnRuntime=%@ for bundleID=%@", buf, 0x20u);
          }

          v34 = MEMORY[0x277CCABB0];
          v35 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v35 doubleValue];
          v37 = v36;
          v38 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v38 doubleValue];
          v40 = v37 - v39;

          if (v40 >= 0.0)
          {
            v41 = v40;
          }

          else
          {
            v41 = 0.0;
          }

          v42 = [v34 numberWithDouble:v41];
          [v16 setObject:v42 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v44 = PLLogCommon(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v62 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            v63 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
            *buf = 138412546;
            v75 = *&v62;
            v76 = 2112;
            v77 = *&v63;
            _os_log_debug_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: After subtracting plugged in time, alwaysOnRuntime=%@, alwaysOnRuntimeOriginal=%@", buf, 0x16u);
          }

          v45 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v45 doubleValue];
          v47 = v46;

          v48 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v48 doubleValue];
          v50 = v49 / 3600.0;

          v52 = PLLogCommon(v51);
          v10 = v68;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v75 = v47;
            v76 = 2048;
            v77 = v50;
            v78 = 2048;
            v79 = 0x4075E00000000000;
            _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: AODEnergy=%f, AODUnpluggedTime=%f, kAODModeledPowerUpperBound=%f", buf, 0x20u);
          }

          if (v50 > 0.0)
          {
            v54 = v47 / v50;
            if (v47 / v50 > 350.0)
            {
              v55 = PLLogCommon(v53);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
              }

              v56 = [MEMORY[0x277CCABB0] numberWithDouble:v50 * 350.0];
              [v16 setObject:v56 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              v58 = PLLogCommon(v57);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
              }
            }
          }

          v18 = [v16 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyValueKey", v54}];
          [v16 setObject:v18 forKeyedSubscript:@"AlwaysOnEnergy"];
          goto LABEL_10;
        }
      }

LABEL_34:
      v59 = [v7 objectForKeyedSubscript:v17];
      if (v59)
      {
        [v16 setObject:v59 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      }

      v14 = 0x277CCA000;
    }

    v12 = [v10 countByEnumeratingWithState:&v70 objects:v80 count:16];
  }

  while (v12);
LABEL_38:

  transformationCopy = v67;
  [PLBatteryUIResponseTypeUtilities collapseEnergyEntries:v67];
  v9 = v65;
  serviceCopy = v66;
LABEL_44:
}

+ (void)applyDynamicNameTransformation:(id)transformation withResponderService:(id)service
{
  serviceCopy = service;
  transformationCopy = transformation;
  v6 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities transformDeletedApps:v6 withResponderService:serviceCopy];

  v7 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities transformPlugins:v7 withResponderService:serviceCopy];

  v8 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities reaccountBackupRestore:v8];

  [PLBatteryUIResponseTypeUtilities collapseEnergyEntries:transformationCopy];
}

+ (void)transformDeletedApps:(id)apps withResponderService:(id)service
{
  v33 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  serviceCopy = service;
  v7 = [PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:serviceCopy];
  v8 = [PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:serviceCopy];
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v23 = serviceCopy;
    v25 = v8;
    if ([v8 count] && objc_msgSend(v7, "count"))
    {
      v9 = @"DeletedAppAndAppClip";
    }

    else if ([v7 count])
    {
      v9 = @"DeletedApp";
    }

    else
    {
      v10 = [v8 count];
      v9 = @"DeletedAppClip";
      if (!v10)
      {
        v9 = 0;
      }
    }

    v27 = v9;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = appsCopy;
    obj = appsCopy;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      v14 = @"Unspecified";
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          if ([v7 containsObject:v17])
          {
          }

          else
          {
            [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v19 = v18 = v14;
            v20 = [v25 containsObject:v19];

            v14 = v18;
            if (!v20)
            {
              goto LABEL_19;
            }
          }

          [v16 setObject:v27 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_19:
          v21 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v22 = [v21 containsString:v14];

          if (v22)
          {
            [v16 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    serviceCopy = v23;
    appsCopy = v24;
    v8 = v25;
  }
}

+ (void)transformPlugins:(id)plugins withResponderService:(id)service
{
  v96 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  v6 = [PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:service];
  v7 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  v75 = v7;
  v78 = v6;
  if (v6)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = pluginsCopy;
    v8 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
    if (v8)
    {
      v9 = v8;
      v70 = pluginsCopy;
      v10 = *v82;
      v11 = 0x277D3F000uLL;
      v74 = *MEMORY[0x277D0AB98];
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v82 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v81 + 1) + 8 * v12);
          if ([*(v11 + 384) debugEnabled])
          {
            v14 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v14;
            if (transformPlugins_withResponderService__defaultOnce != -1)
            {
              dispatch_once(&transformPlugins_withResponderService__defaultOnce, block);
            }

            if (transformPlugins_withResponderService__classDebugEnabled == 1)
            {
              v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v13];
              v16 = MEMORY[0x277D3F178];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent = [v17 lastPathComponent];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:]"];
              [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:184];

              v21 = PLLogCommon(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v86 = v15;
                _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v11 = 0x277D3F000uLL;
            }
          }

          v22 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v23 = [v78 objectForKeyedSubscript:v22];

          if (v23)
          {
            if ([*(v11 + 384) debugEnabled])
            {
              v24 = objc_opt_class();
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke_74;
              v79[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v79[4] = v24;
              if (transformPlugins_withResponderService__defaultOnce_72 != -1)
              {
                dispatch_once(&transformPlugins_withResponderService__defaultOnce_72, v79);
              }

              if (transformPlugins_withResponderService__classDebugEnabled_73 == 1)
              {
                v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
                v26 = MEMORY[0x277D3F178];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent2 = [v27 lastPathComponent];
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:]"];
                [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:189];

                v31 = PLLogCommon(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v86 = v25;
                  _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v11 = 0x277D3F000;
              }
            }

            v32 = [v23 objectForKeyedSubscript:@"PluginId"];
            v33 = [v32 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

            if ((v33 & 1) == 0)
            {
              v34 = v9;
              v35 = v10;
              v36 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v37 = [v23 objectForKeyedSubscript:@"PluginParentApp"];
              if ([v36 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                v38 = [PLBatteryUIResponseTypeUtilities getEnergyEntry:obj forBundleID:v37];
              }

              else
              {
                v38 = 0;
              }

              v77 = v37;
              [v13 setObject:v37 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v39 = [v23 objectForKeyedSubscript:@"PluginType"];
              v40 = [v39 isEqualToString:@"com.apple.watchkit"];

              if (v40)
              {
                v41 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v13 setObject:v41 forKeyedSubscript:@"WatchEnergy"];
                goto LABEL_31;
              }

              v42 = [v23 objectForKeyedSubscript:@"PluginType"];
              v43 = [v42 isEqualToString:@"com.apple.widgetkit-extension"];

              if (v43)
              {
                v44 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v13 setObject:v44 forKeyedSubscript:@"ChronoWidgetEnergy"];

                v41 = PLLogCommon(v45);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v66 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v67 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [v67 doubleValue];
                  *buf = 138412546;
                  v86 = v66;
                  v87 = 2048;
                  v88 = v68;
                  _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Widget Energy for %@ : %f", buf, 0x16u);
                }

LABEL_31:
                v10 = v35;
                v9 = v34;
                v46 = v77;
LABEL_32:
              }

              else
              {
                v53 = [v23 objectForKeyedSubscript:@"PluginType"];
                v54 = [v53 isEqualToString:@"com.apple.posterkit.provider"];

                v9 = v34;
                v46 = v77;
                if (v54)
                {
                  if (!v77)
                  {
                    v55 = [v75 objectForKeyedSubscript:v74];
                    [v13 setObject:v55 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v56 = [v36 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
                  v57 = v56;
                  v58 = PLLogCommon(v56);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    LODWORD(v86) = v57;
                    _os_log_debug_impl(&dword_25EE51000, v58, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: isPhotosPoster=%d", buf, 8u);
                  }

                  if (v57)
                  {
                    v59 = [v13 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v41 = PLLogCommon(v59);
                  v46 = v77;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    v71 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v73 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v73 doubleValue];
                    v61 = v60;
                    v72 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v72 doubleValue];
                    v63 = v62;
                    v64 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                    [v64 doubleValue];
                    *buf = 138413314;
                    v86 = v36;
                    v87 = 2112;
                    v88 = v71;
                    v89 = 2048;
                    v90 = v61;
                    v91 = 2048;
                    v92 = v63;
                    v93 = 2048;
                    v94 = v65;
                    _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Mapping Poster %@ to %@ – energy:%f, foregroundRunTime:%f, bgRunTime:%f", buf, 0x34u);

                    v46 = v77;
                  }

                  goto LABEL_32;
                }
              }

              if ([v36 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                v47 = PLLogCommon([v13 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"]);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v86 = v38;
                  v87 = 2112;
                  v88 = v13;
                  _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: continuityParentAppEnergyEntry=%@, energyEntry=%@", buf, 0x16u);
                }

                if (v38)
                {
                  v49 = [v38 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                  [v49 doubleValue];
                  v51 = v50;

                  if (v51 > 0.0)
                  {
                    [v38 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v48 = [v38 setObject:&unk_2871455C8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                  }
                }

                v52 = PLLogCommon(v48);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v86 = v13;
                  _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: After adjusting Continuity Camera extension energyEntry=%@", buf, 0xCu);
                }

                v46 = v77;
              }

              v11 = 0x277D3F000;
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v69 = [obj countByEnumeratingWithState:&v81 objects:v95 count:16];
        v9 = v69;
        if (!v69)
        {
          pluginsCopy = v70;
          break;
        }
      }
    }
  }

  else
  {
    obj = PLLogCommon(v7);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:];
    }
  }
}

void *__74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withResponderService__classDebugEnabled = result;
  return result;
}

void *__74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke_74(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withResponderService__classDebugEnabled_73 = result;
  return result;
}

+ (void)reaccountExchangeEntries:(id)entries withExchangeBundleIDs:(id)ds
{
  v63 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dsCopy = ds;
  v7 = dsCopy;
  if (dsCopy)
  {
    v43 = dsCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v57;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v56 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v15)
          {
            v16 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v14 forKeyedSubscript:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v11);
    }

    v17 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v19 doubleValue];
      v21 = v20;

      if (v21 != 0.0)
      {
        v41 = v18;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        v52 = 0u;
        v22 = v43;
        v23 = [v22 countByEnumeratingWithState:&v52 objects:v61 count:16];
        v42 = entriesCopy;
        if (v23)
        {
          v24 = v23;
          v25 = *v53;
          v26 = 0.0;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v53 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v28 = [dictionary objectForKeyedSubscript:*(*(&v52 + 1) + 8 * j), v41];
              v29 = v28;
              if (v28)
              {
                v30 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v30 doubleValue];
                v32 = v31;

                if (v32 >= 0.0)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 0.0;
                }

                v26 = v26 + v33;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v24);
        }

        else
        {
          v26 = 0.0;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v34 = v22;
        v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v49;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v49 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [dictionary objectForKeyedSubscript:*(*(&v48 + 1) + 8 * k), v41];
              v40 = v39;
              if (v39)
              {
                v44[0] = MEMORY[0x277D85DD0];
                v44[1] = 3221225472;
                v44[2] = __83__PLBatteryUIResponseTypeUtilities_reaccountExchangeEntries_withExchangeBundleIDs___block_invoke;
                v44[3] = &unk_279A5C0F0;
                v45 = v39;
                v46 = v21;
                v47 = v26;
                [v45 enumerateKeysAndObjectsUsingBlock:v44];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v36);
        }

        v18 = v41;
        [v9 removeObject:v41];
        entriesCopy = v42;
      }
    }

    v7 = v43;
  }

  else
  {
    dictionary = PLLogCommon(0);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }
  }
}

void __83__PLBatteryUIResponseTypeUtilities_reaccountExchangeEntries_withExchangeBundleIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = [v6 numberWithDouble:v7 * (*(a1 + 40) / *(a1 + 48) + 1.0)];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

+ (void)reaccountBackupRestore:(id)restore
{
  v29 = *MEMORY[0x277D85DE8];
  restoreCopy = restore;
  v4 = restoreCopy;
  if (restoreCopy && [restoreCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"Backup"];
    v15 = [dictionary objectForKeyedSubscript:@"Restore"];
    v16 = v15;
    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __59__PLBatteryUIResponseTypeUtilities_reaccountBackupRestore___block_invoke;
      v21 = &unk_279A5C118;
      v22 = v14;
      v17 = v16;
      v23 = v17;
      [v22 enumerateKeysAndObjectsUsingBlock:&v18];
      [v6 removeObject:{v17, v18, v19, v20, v21}];
    }
  }
}

void __59__PLBatteryUIResponseTypeUtilities_reaccountBackupRestore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = v7;
    v9 = [*(a1 + 40) objectForKeyedSubscript:v12];
    [v9 doubleValue];
    v11 = [v6 numberWithDouble:v8 + v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }
}

+ (void)collapseEnergyEntries:(id)entries
{
  v23 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v11)
        {
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (v12)
          {
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __58__PLBatteryUIResponseTypeUtilities_collapseEnergyEntries___block_invoke;
            v15[3] = &unk_279A5C140;
            v16 = dictionary;
            v17 = v11;
            [v10 enumerateKeysAndObjectsUsingBlock:v15];
          }

          else
          {
            [dictionary setObject:v10 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  allValues = [dictionary allValues];
  v14 = [allValues mutableCopy];
  [entriesCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

void __58__PLBatteryUIResponseTypeUtilities_collapseEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if ([v16 isEqualToString:@"NotificationInfo"])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v7 = [v6 objectForKeyedSubscript:@"NotificationInfo"];

    v8 = v5;
    if (!v8 || v7)
    {
      [v7 combineWith:v8];
    }

    else
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v9 setObject:v8 forKeyedSubscript:@"NotificationInfo"];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v12 = v11;
    v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 objectForKeyedSubscript:v16];
    [v8 doubleValue];
    v14 = [v10 numberWithDouble:v12 + v13];
    v15 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v15 setObject:v14 forKeyedSubscript:v16];

LABEL_9:
  }
}

+ (id)getEnergyEntry:(id)entry forBundleID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PLBatteryUIResponseTypeUtilities_getEnergyEntry_forBundleID___block_invoke;
  v10[3] = &unk_279A5C168;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [entryCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __63__PLBatteryUIResponseTypeUtilities_getEnergyEntry_forBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (void)replaceBundleIDsWithDisplayNamesForEnergyEntryInBucket:(id)bucket withResponderService:(id)service
{
  v22 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  v6 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:service];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = bucketCopy;
  obj = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v13 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:v12];
          [v11 setObject:v14 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
        }

        else
        {
          [v11 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

+ (void)addEntryTypesToEnergyEntriesInBucket:(id)bucket withResponderService:(id)service
{
  v38 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  serviceCopy = service;
  v32 = +[PLBatteryUIResponseTypeUtilities getRootNodeBundleIDs];
  v30 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
  v29 = [PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:serviceCopy];
  v27 = serviceCopy;
  v28 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:serviceCopy];
  [bucketCopy setObject:&unk_2871455C8 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = MEMORY[0x277CCABB0];
        v13 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v16 doubleValue];
        v18 = [v12 numberWithDouble:v15 + v17];
        [bucketCopy setObject:v18 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];

        v19 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        LOBYTE(v18) = [v32 containsObject:v19];

        v20 = &unk_2871455E0;
        if ((v18 & 1) == 0)
        {
          v21 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v22 = [v30 containsObject:v21];

          v20 = &unk_2871455F8;
          if ((v22 & 1) == 0)
          {
            v23 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v24 = [v29 containsObject:v23];

            v20 = &unk_287145610;
            if ((v24 & 1) == 0)
            {
              v25 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v26 = [v28 objectForKeyedSubscript:v25];

              if (v26)
              {
                v20 = &unk_2871455C8;
              }

              else
              {
                v20 = &unk_287145628;
              }
            }
          }
        }

        [v11 setObject:v20 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }
}

+ (id)getNonAppBundleIDs
{
  if (getNonAppBundleIDs_onceToken != -1)
  {
    +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
  }

  v3 = getNonAppBundleIDs_nonAppBundleIDs;

  return v3;
}

uint64_t __54__PLBatteryUIResponseTypeUtilities_getNonAppBundleIDs__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BC48];
  getNonAppBundleIDs_nonAppBundleIDs = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)filterEnergyEntriesByAppTypeFromBucket:(id)bucket
{
  v19 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [bucketCopy objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        intValue = [v11 intValue];

        if (intValue != 2 && intValue != 5)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [bucketCopy setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

+ (void)filterEnergyEntriesWithRuntimes:(id)runtimes
{
  v46 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  array = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v39 = runtimesCopy;
  obj = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        if ([v11 intValue] == 1)
        {

LABEL_9:
          if (([v10 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"DeletedAppAndAppClip"))
          {
            v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;

            if (v15 < 60.0)
            {
              v16 = @"PLBatteryUIAppForegroundRuntimeKey";
              if (v15 > 0.0)
              {
                goto LABEL_16;
              }
            }
          }

          else if ([v10 isEqualToString:@"Flashlight"])
          {
            v29 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v29 doubleValue];
            v31 = v30;

            if (v31 < 60.0 && v31 > 0.0)
            {
              goto LABEL_16;
            }
          }

          else if ([v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
          {
            v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v32 doubleValue];
            v34 = v33;

            v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v35 doubleValue];
            v37 = v36;

            if (v34 < 60.0 && v37 > 2.0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }

        v12 = [v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

        if (v12)
        {
          goto LABEL_9;
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v17 doubleValue];
        v19 = v18;

        if (![PLBatteryUIResponseTypeUtilities energyEntryHasNegligibleEnergyDrain:v9 filterArray:array])
        {
          if (v19 > 0.0 && v19 < 60.0)
          {
            v21 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v19 * v23];
            [v9 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v9 setObject:&unk_287145640 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          }

          v25 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = v27 > 0.0 && v27 < 60.0;
          v16 = @"PLBatteryUIAppAlwaysOnRuntimeKey";
          if (!v28)
          {
            goto LABEL_17;
          }

LABEL_16:
          [v9 setObject:&unk_287145640 forKeyedSubscript:?];
LABEL_17:
          [array addObject:{v9, v16}];
        }

        ++v8;
      }

      while (v6 != v8);
      v38 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v6 = v38;
    }

    while (v38);
  }

  [v39 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

+ (BOOL)energyEntryHasNegligibleEnergyDrain:(id)drain filterArray:(id)array
{
  v41 = *MEMORY[0x277D85DE8];
  drainCopy = drain;
  arrayCopy = array;
  v7 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
  [v14 doubleValue];
  v16 = v15;

  if (v16 > 0.0)
  {
    goto LABEL_2;
  }

  if (v10 == 0.0 && v13 < 60.0)
  {
    if ([v7 isEqualToString:@"com.apple.findmy"])
    {
      v18 = [&unk_28714BC60 objectAtIndexedSubscript:59];
      v19 = [drainCopy objectForKeyedSubscript:v18];
      [v19 doubleValue];
      v21 = v20;

      if (v21 > 0.0)
      {
        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeUtilities *)v23 energyEntryHasNegligibleEnergyDrain:v24 filterArray:v25, v26, v27, v28, v29, v30];
        }

        [arrayCopy addObject:drainCopy];
      }
    }

LABEL_15:
    v17 = 1;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"PowerOutAccessories"])
  {
    v31 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v31 doubleValue];
    v33 = v32;

    if (v33 < 33.3)
    {
      v35 = PLLogCommon(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412546;
        v38 = v7;
        v39 = 2048;
        v40 = v33;
        _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, "removing %@ due to energy: %.2f", &v37, 0x16u);
      }

      goto LABEL_15;
    }
  }

LABEL_2:
  v17 = 0;
LABEL_16:

  return v17;
}

+ (id)getDeletedAppBundleIDsWithResponderService:(id)service
{
  v50[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"DeletedAppBundleIDs"];

  v8 = PLLogCommon(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v11 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v12 = [v11 objectForKey:@"DeletedAppBundleIDs"];
  }

  else
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:];
    }

    v14 = PLLogCommon(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "Searching for deleted app names", buf, 2u);
    }

    v15 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v16 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:1];
    v39 = serviceCopy;
    v17 = objc_msgSend_storage(serviceCopy);
    v37 = v16;
    v50[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v38 = v15;
    v19 = [v17 entriesForKey:v15 withComparisons:v18];

    v21 = PLLogCommon(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v19;
      _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    v40 = [MEMORY[0x277CBEB58] set];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v41 + 1) + 8 * i);
          v28 = [v27 objectForKeyedSubscript:@"AppBundleId"];
          v29 = [v27 objectForKeyedSubscript:@"AppIsClip"];
          v30 = PLLogCommon(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v29 intValue];
            *buf = 138412546;
            v46 = v28;
            v47 = 1024;
            v48 = intValue;
            _os_log_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v28 && ([v29 BOOLValue] & 1) == 0)
          {
            [v40 addObject:v28];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v24);
    }

    v33 = PLLogCommon(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v40;
      _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    serviceCopy = v39;
    sharedUtilityCache3 = [v39 sharedUtilityCache];
    v35 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v35 setObject:v40 forKeyedSubscript:@"DeletedAppBundleIDs"];

    v12 = [v40 copy];
    v11 = v37;
    sharedUtilityCache2 = v38;
  }

  return v12;
}

+ (id)getDeletedAppClipBundleIDsWithResponderService:(id)service
{
  v50[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"DeletedAppClipBundleIDs"];

  v8 = PLLogCommon(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v11 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v12 = [v11 objectForKey:@"DeletedAppClipBundleIDs"];
  }

  else
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:];
    }

    v14 = PLLogCommon(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: Searching for deleted app clip names", buf, 2u);
    }

    v15 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v16 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:1];
    v39 = serviceCopy;
    v17 = objc_msgSend_storage(serviceCopy);
    v37 = v16;
    v50[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v38 = v15;
    v19 = [v17 entriesForKey:v15 withComparisons:v18];

    v21 = PLLogCommon(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v19;
      _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: DeletedAppEntries = %@", buf, 0xCu);
    }

    v40 = [MEMORY[0x277CBEB58] set];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v41 + 1) + 8 * i);
          v28 = [v27 objectForKeyedSubscript:@"AppBundleId"];
          v29 = [v27 objectForKeyedSubscript:@"AppIsClip"];
          v30 = PLLogCommon(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v29 intValue];
            *buf = 138412546;
            v46 = v28;
            v47 = 1024;
            v48 = intValue;
            _os_log_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v28 && [v29 BOOLValue])
          {
            [v40 addObject:v28];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v24);
    }

    v33 = PLLogCommon(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v40;
      _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: DeletedAppNames = %@", buf, 0xCu);
    }

    serviceCopy = v39;
    sharedUtilityCache3 = [v39 sharedUtilityCache];
    v35 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v35 setObject:v40 forKeyedSubscript:@"DeletedAppClipBundleIDs"];

    v12 = [v40 copy];
    v11 = v37;
    sharedUtilityCache2 = v38;
  }

  return v12;
}

+ (id)getWebAppBundleIDsWithResponderService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"WebAppBundleIDs"];

  v8 = PLLogCommon(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v11 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v12 = [v11 objectForKey:@"WebAppBundleIDs"];
  }

  else
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
    v11 = [MEMORY[0x277CBEB58] set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = objc_msgSend_storage(serviceCopy, 0);
    v14 = [v13 entriesForKey:sharedUtilityCache2];

    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"identifier"];

          if (v20)
          {
            v21 = [v19 objectForKeyedSubscript:@"identifier"];
            [v11 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    sharedUtilityCache3 = [serviceCopy sharedUtilityCache];
    v23 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v23 setObject:v11 forKeyedSubscript:@"WebAppBundleIDs"];

    v12 = [v11 copy];
  }

  v24 = v12;

  return v24;
}

+ (id)getPluginBundleIDToEntryMapWithResponderService:(id)service
{
  v96[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"PluginBundleIDs"];

  v8 = PLLogCommon(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v11 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v12 = [v11 objectForKey:@"PluginBundleIDs"];
  }

  else
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:];
    }

    v13 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v14 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:0];
    v15 = objc_msgSend_storage(serviceCopy);
    v72 = v14;
    v96[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
    v73 = v13;
    v17 = [v15 entriesForKey:v13 withComparisons:v16];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke;
      v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v91[4] = v18;
      if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce != -1)
      {
        dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce, v91);
      }

      if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v17];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
        lastPathComponent = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:689];

        v25 = PLLogCommon(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeUtilities *)v19 getPluginBundleIDToEntryMapWithResponderService:v25, v26, v27, v28, v29, v30, v31];
        }
      }
    }

    v74 = serviceCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v32 = v17;
    v33 = [v32 countByEnumeratingWithState:&v87 objects:v95 count:16];
    v34 = 0x277D3F000uLL;
    v76 = v32;
    if (v33)
    {
      v35 = v33;
      v36 = *v88;
      v37 = v86;
      v77 = *v88;
      do
      {
        v38 = 0;
        do
        {
          if (*v88 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v39 = *(*(&v87 + 1) + 8 * v38);
          v40 = [v39 objectForKeyedSubscript:@"PluginId"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v41 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            v86[0] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_444;
            v86[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v86[2] = v41;
            if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce_442 != -1)
            {
              dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce_442, block);
            }

            if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_443 == 1)
            {
              v42 = v37;
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v40];
              v44 = MEMORY[0x277D3F178];
              v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent2 = [v45 lastPathComponent];
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
              [v44 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v47 fromLineNumber:694];

              v49 = PLLogCommon(v48);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v94 = v43;
                _os_log_debug_impl(&dword_25EE51000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v32 = v76;
              v34 = 0x277D3F000uLL;
              v37 = v42;
              v36 = v77;
            }
          }

          [dictionary setObject:v39 forKeyedSubscript:v40];

          ++v38;
        }

        while (v35 != v38);
        v35 = [v32 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v35);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v50 = +[PLBatteryUIResponseTypeUtilities getInstalledPluginEntries];
    v51 = [v50 countByEnumeratingWithState:&v81 objects:v92 count:16];
    v12 = dictionary;
    if (v51)
    {
      v52 = v51;
      v78 = *v82;
      v75 = v50;
      do
      {
        v53 = 0;
        do
        {
          if (*v82 != v78)
          {
            objc_enumerationMutation(v50);
          }

          v54 = *(*(&v81 + 1) + 8 * v53);
          v55 = [v54 objectForKeyedSubscript:@"PluginId"];
          v56 = [v54 objectForKeyedSubscript:@"PluginParentApp"];
          v57 = [v12 objectForKeyedSubscript:v55];

          if (!v57)
          {
            if ([*(v34 + 384) debugEnabled])
            {
              v58 = objc_opt_class();
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_450;
              v80[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v80[4] = v58;
              if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce_448 != -1)
              {
                dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce_448, v80);
              }

              if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_449 == 1)
              {
                v59 = MEMORY[0x277CCACA8];
                v60 = [v54 objectForKeyedSubscript:@"PluginExecutableName"];
                v61 = [v54 objectForKeyedSubscript:@"PluginType"];
                v62 = [v59 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v60, v55, v56, v61];

                v63 = MEMORY[0x277D3F178];
                v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent3 = [v64 lastPathComponent];
                v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
                [v63 logMessage:v62 fromFile:lastPathComponent3 fromFunction:v66 fromLineNumber:705];

                v68 = PLLogCommon(v67);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v94 = v62;
                  _os_log_debug_impl(&dword_25EE51000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v34 = 0x277D3F000;
                v12 = dictionary;
                v50 = v75;
              }
            }

            [v12 setObject:v54 forKeyedSubscript:v55];
          }

          ++v53;
        }

        while (v52 != v53);
        v52 = [v50 countByEnumeratingWithState:&v81 objects:v92 count:16];
      }

      while (v52);
    }

    serviceCopy = v74;
    sharedUtilityCache3 = [v74 sharedUtilityCache];
    v70 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v70 setObject:v12 forKeyedSubscript:@"PluginBundleIDs"];

    v11 = v72;
    sharedUtilityCache2 = v73;
  }

  return v12;
}

void *__84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled = result;
  return result;
}

void *__84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_444(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_443 = result;
  return result;
}

void *__84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_450(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_449 = result;
  return result;
}

+ (id)getBundleIDToDisplayNameMapWithResponderService:(id)service
{
  v91[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"BundleIDs"];

  v8 = PLLogCommon(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v9)
    {
      +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
    }

    v13 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v14 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:0];
    v73 = serviceCopy;
    v15 = objc_msgSend_storage(serviceCopy);
    v71 = v14;
    v91[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:1];
    v72 = v13;
    v17 = [v15 entriesForKey:v13 withComparisons:v16];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = PLLogCommon(dictionary);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeUtilities *)v17 getBundleIDToDisplayNameMapWithResponderService:v18, v19, v20, v21, v22, v23, v24];
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v25 = v17;
    v26 = [v25 countByEnumeratingWithState:&v83 objects:v90 count:16];
    v27 = 0x277D3F000uLL;
    v75 = v25;
    if (v26)
    {
      v28 = v26;
      v29 = *v84;
      do
      {
        v30 = 0;
        do
        {
          if (*v84 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v83 + 1) + 8 * v30);
          v32 = [v31 objectForKeyedSubscript:@"AppType"];
          intValue = [v32 intValue];

          if (intValue == 101 || ([v31 objectForKeyedSubscript:@"AppBundleId"], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v34, v35))
          {
            v37 = [v31 objectForKeyedSubscript:@"AppBundleId"];
            v38 = [v31 objectForKeyedSubscript:@"AppName"];
            if ([*(v27 + 384) debugEnabled])
            {
              v39 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v39;
              if (getBundleIDToDisplayNameMapWithResponderService__defaultOnce != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMapWithResponderService__defaultOnce, block);
              }

              if (getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled == 1)
              {
                v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v37, v38];
                v41 = MEMORY[0x277D3F178];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent = [v42 lastPathComponent];
                v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:]"];
                [v41 logMessage:v40 fromFile:lastPathComponent fromFunction:v44 fromLineNumber:739];

                v46 = PLLogCommon(v45);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v89 = v40;
                  _os_log_debug_impl(&dword_25EE51000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v25 = v75;
                v27 = 0x277D3F000;
              }
            }

            [dictionary setObject:v38 forKeyedSubscript:v37];
          }

          else
          {
            v37 = PLLogCommon(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
            }
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v25 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v28);
    }

    v47 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v48 = [v47 countByEnumeratingWithState:&v78 objects:v87 count:16];
    v49 = 0x279A5A000uLL;
    if (!v48)
    {
LABEL_51:
      [dictionary setObject:@"Apple Watch" forKeyedSubscript:@"com.apple.Bridge"];
      v12 = [dictionary copy];

      sharedUtilityCache2 = v72;
      serviceCopy = v73;
      v11 = v71;
      goto LABEL_52;
    }

    v50 = v48;
    v51 = *v79;
    v74 = v47;
LABEL_30:
    v52 = 0;
    while (1)
    {
      if (*v79 != v51)
      {
        objc_enumerationMutation(v47);
      }

      v53 = *(*(&v78 + 1) + 8 * v52);
      if (([v53 mayBeBUIVisible] & 1) != 0 || (objc_msgSend(v53, "bundleIdentifier"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v54, v55))
      {
        if (([*(v49 + 3200) hasScreenPresence:v53] & 1) == 0)
        {
          bundleIdentifier = [v53 bundleIdentifier];
          v58 = [bundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

          if (!v58)
          {
            goto LABEL_49;
          }
        }

        bundleIdentifier2 = [v53 bundleIdentifier];
        v60 = [dictionary objectForKeyedSubscript:bundleIdentifier2];

        if (!v60)
        {
          localizedName = [v53 localizedName];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v62 = objc_opt_class();
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke_472;
            v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v77[4] = v62;
            if (getBundleIDToDisplayNameMapWithResponderService__defaultOnce_470 != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMapWithResponderService__defaultOnce_470, v77);
            }

            if (getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled_471 == 1)
            {
              v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier2, localizedName];
              v64 = MEMORY[0x277D3F178];
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent2 = [v65 lastPathComponent];
              v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:]"];
              [v64 logMessage:v63 fromFile:lastPathComponent2 fromFunction:v67 fromLineNumber:757];

              v69 = PLLogCommon(v68);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v89 = v63;
                _os_log_debug_impl(&dword_25EE51000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v49 = 0x279A5A000;
              v47 = v74;
            }
          }

          [dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier2];
        }
      }

      else
      {
        bundleIdentifier2 = PLLogCommon(v56);
        if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_DEBUG))
        {
          +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
        }
      }

LABEL_49:
      if (v50 == ++v52)
      {
        v50 = [v47 countByEnumeratingWithState:&v78 objects:v87 count:16];
        if (!v50)
        {
          goto LABEL_51;
        }

        goto LABEL_30;
      }
    }
  }

  if (v9)
  {
    +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
  }

  sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
  v11 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
  v12 = [v11 objectForKey:@"BundleIDs"];
LABEL_52:

  return v12;
}

void *__84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled = result;
  return result;
}

void *__84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke_472(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled_471 = result;
  return result;
}

+ (id)getInstalledPluginEntries
{
  v39 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v30 = *MEMORY[0x277D3F5E0];
    do
    {
      v6 = 0;
      v31 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        bundleIdentifier = [v7 bundleIdentifier];
        if (!bundleIdentifier)
        {
          goto LABEL_20;
        }

        v9 = bundleIdentifier;
        executableURL = [v7 executableURL];
        if (!executableURL)
        {
          goto LABEL_19;
        }

        v11 = executableURL;
        containingBundleRecord = [v7 containingBundleRecord];
        if (!containingBundleRecord)
        {
          goto LABEL_12;
        }

        containingBundleRecord2 = [v7 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
        if (!bundleIdentifier2)
        {
          v32 = 0;
LABEL_12:
          v15 = v5;
          v16 = v2;
          extensionPointRecord = [v7 extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          v14 = [identifier isEqualToString:@"com.apple.posterkit.provider"];

          if (!containingBundleRecord)
          {

            v2 = v16;
            v5 = v15;
            v4 = v31;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_17:
            v19 = objc_alloc(MEMORY[0x277D3F190]);
            v20 = [(PLOperator *)PLApplicationAgent entryKeyForType:v30 andName:@"AllPlugins"];
            v9 = [v19 initWithEntryKey:v20];

            bundleIdentifier3 = [v7 bundleIdentifier];
            [v9 setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

            containingBundleRecord3 = [v7 containingBundleRecord];
            bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
            [v9 setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

            extensionPointRecord2 = [v7 extensionPointRecord];
            identifier2 = [extensionPointRecord2 identifier];
            [v9 setObject:identifier2 forKeyedSubscript:@"PluginType"];

            executableURL2 = [v7 executableURL];
            path = [executableURL2 path];
            [v9 setObject:path forKeyedSubscript:@"PluginExecutableName"];

            [v9 setObject:&unk_2871455C8 forKeyedSubscript:@"PluginDeletedDate"];
            if (!v9)
            {
              goto LABEL_20;
            }

            [array addObject:v9];
LABEL_19:

            goto LABEL_20;
          }

          v2 = v16;
          v5 = v15;
          v4 = v31;
          bundleIdentifier2 = v32;
          goto LABEL_14;
        }

        LOBYTE(v14) = 1;
LABEL_14:
        v32 = bundleIdentifier2;

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_20:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  return array;
}

+ (id)getBundleIDToReplacementBundleIDMap
{
  v151[170] = *MEMORY[0x277D85DE8];
  v9[0] = @"IMRemoteURLConn";
  v9[1] = @"IMRemoteURLConne";
  v151[0] = @"com.apple.MobileSMS";
  v151[1] = @"com.apple.MobileSMS";
  v9[2] = @"com.apple.mobilesms.notification";
  v9[3] = @"GenerativePlaygroundApp.MessagesExtension";
  v151[2] = @"com.apple.MobileSMS";
  v151[3] = @"com.apple.MobileSMS";
  v9[4] = @"com.apple.GenerativePlaygroundApp.MessagesExtension";
  v9[5] = @"mstreamd";
  v151[4] = @"com.apple.MobileSMS";
  v151[5] = @"com.apple.mobileslideshow";
  v9[6] = @"mediastream.mstreamd";
  v9[7] = @"assetsd";
  v151[6] = @"com.apple.mobileslideshow";
  v151[7] = @"com.apple.mobileslideshow";
  v9[8] = @"cloudphotod";
  v9[9] = @"com.apple.mobileslideshow.Discretionary";
  v151[8] = @"com.apple.mobileslideshow";
  v151[9] = @"com.apple.mobileslideshow";
  v9[10] = @"com.apple.icloud-container.com.apple.photos.cloud";
  v9[11] = @"com.apple.photoanalysisd";
  v151[10] = @"com.apple.mobileslideshow";
  v151[11] = @"com.apple.mobileslideshow";
  v9[12] = @"com.apple.photoanalysisd.backgroundanalysis";
  v9[13] = @"com.apple.photos.cloud";
  v151[12] = @"com.apple.mobileslideshow";
  v151[13] = @"com.apple.mobileslideshow";
  v9[14] = @"WirelessRadioManager";
  v9[15] = @"WirelessRadioManagerd";
  v151[14] = @"com.apple.mobilephone";
  v151[15] = @"com.apple.mobilephone";
  v9[16] = @"WirelessRadioMa";
  v9[17] = @"vmd";
  v151[16] = @"com.apple.mobilephone";
  v151[17] = @"com.apple.mobilephone";
  v9[18] = @"ipTelephony";
  v9[19] = @"ContactsUI.MonogramPosterExtension";
  v151[18] = @"com.apple.mobilephone";
  v151[19] = @"com.apple.mobilephone";
  v9[20] = @"com.apple.ContactsUI.MonogramPosterExtension";
  v9[21] = @"com.apple.MailCompositionService";
  v151[20] = @"com.apple.mobilephone";
  v151[21] = @"com.apple.mobilemail";
  v9[22] = @"MailCompositionService";
  v9[23] = @"suggestd";
  v151[22] = @"com.apple.mobilemail";
  v151[23] = @"com.apple.mobilemail";
  v9[24] = @"email.maild";
  v9[25] = @"com.apple.email.maild";
  v151[24] = @"com.apple.mobilemail";
  v151[25] = @"com.apple.mobilemail";
  v9[26] = @"maild";
  v9[27] = @"com.apple.springboard.lockscreen.navigation";
  v151[26] = @"com.apple.mobilemail";
  v151[27] = @"com.apple.Maps";
  v2 = *MEMORY[0x277D0ABB8];
  v9[28] = @"com.apple.Siri";
  v10 = v2;
  v151[28] = @"Siri";
  v151[29] = @"Siri";
  v11 = @"assistantd";
  v12 = @"omniSearch.SearchToolExtension";
  v151[30] = @"Siri";
  v151[31] = @"Siri";
  v13 = @"com.apple.WebKit.Networking";
  v14 = @"com.apple.WebKit.WebContent";
  v151[32] = @"com.apple.mobilesafari";
  v151[33] = @"com.apple.mobilesafari";
  v15 = @"com.apple.WebKit";
  v16 = @"com.apple.WebKi";
  v151[34] = @"com.apple.mobilesafari";
  v151[35] = @"com.apple.mobilesafari";
  v17 = @"com.apple.SafariViewService";
  v18 = @"safarifetcherd";
  v151[36] = @"com.apple.mobilesafari";
  v151[37] = @"com.apple.mobilesafari";
  v19 = @"com.apple.WebKit.WebContent.CaptivePortal";
  v20 = @"com.apple.WebKit.WebContent.Development";
  v151[38] = @"com.apple.mobilesafari";
  v151[39] = @"com.apple.mobilesafari";
  v21 = @"com.apple.WebKit.GPU";
  v22 = @"com.apple.WebKit.GPU.Development";
  v151[40] = @"com.apple.mobilesafari";
  v151[41] = @"com.apple.mobilesafari";
  v23 = @"com.apple.PassKitCore";
  v24 = @"passd";
  v151[42] = @"com.apple.Passbook";
  v151[43] = @"com.apple.Passbook";
  v25 = @"PassbookUIService";
  v26 = @"com.apple.PassbookUIService";
  v151[44] = @"com.apple.Passbook";
  v151[45] = @"com.apple.Passbook";
  v27 = @"com.apple.calendar";
  v28 = @"calaccessd";
  v151[46] = @"com.apple.mobilecal";
  v151[47] = @"com.apple.mobilecal";
  v3 = *MEMORY[0x277D66F48];
  v29 = *MEMORY[0x277D66F20];
  v30 = v3;
  v151[48] = @"HLS";
  v151[49] = @"HLS";
  v4 = *MEMORY[0x277D66F58];
  v31 = *MEMORY[0x277D66F10];
  v32 = v4;
  v151[50] = @"HLS";
  v151[51] = @"HLS";
  v33 = *MEMORY[0x277D0AB98];
  v151[52] = @"HLS";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v33, @"aod", @"IMRemoteURLConn", @"IMRemoteURLConne", @"com.apple.mobilesms.notification", @"GenerativePlaygroundApp.MessagesExtension", @"com.apple.GenerativePlaygroundApp.MessagesExtension", @"mstreamd", @"mediastream.mstreamd", @"assetsd", @"cloudphotod", @"com.apple.mobileslideshow.Discretionary", @"com.apple.icloud-container.com.apple.photos.cloud", @"com.apple.photoanalysisd", @"com.apple.photoanalysisd.backgroundanalysis", @"com.apple.photos.cloud", @"WirelessRadioManager", @"WirelessRadioManagerd", @"WirelessRadioMa", @"vmd", @"ipTelephony", @"ContactsUI.MonogramPosterExtension", @"com.apple.ContactsUI.MonogramPosterExtension", @"com.apple.MailCompositionService", @"MailCompositionService", @"suggestd", @"email.maild", @"com.apple.email.maild", @"maild", @"com.apple.springboard.lockscreen.navigation", @"com.apple.Siri", v10, @"assistantd", @"omniSearch.SearchToolExtension", @"com.apple.WebKit.Networking", @"com.apple.WebKit.WebContent", @"com.apple.WebKit", @"com.apple.WebKi", @"com.apple.SafariViewService", @"safarifetcherd", @"com.apple.WebKit.WebContent.CaptivePortal", @"com.apple.WebKit.WebContent.Development", @"com.apple.WebKit.GPU", @"com.apple.WebKit.GPU.Development", @"com.apple.PassKitCore", @"passd", @"PassbookUIService", @"com.apple.PassbookUIService", @"com.apple.calendar", @"calaccessd", v29, v30, v31, v4, v33];
  v6 = *MEMORY[0x277D0AB90];
  v34 = v5;
  v35 = v6;
  v151[53] = @"AlwaysOnDisplay";
  v151[54] = @"HLS";
  v36 = *MEMORY[0x277D0ABB0];
  v37 = @"LockScreen";
  v151[55] = @"HLS";
  v151[56] = @"HLS";
  v38 = @"com.apple.PosterBoard";
  v39 = @"PosterBoard";
  v151[57] = @"HLS";
  v151[58] = @"HLS";
  v40 = @"com.apple.MobileBackup.framework";
  v41 = @"backupd";
  v151[59] = @"Backup";
  v151[60] = @"Backup";
  v42 = @"com.apple.backupd";
  v43 = @"softwareupdateservicesd";
  v151[61] = @"Backup";
  v151[62] = @"Backup";
  v44 = @"mobile.softwareupdated";
  v45 = @"com.apple.Restore";
  v151[63] = @"Backup";
  v151[64] = @"com.apple.AppStore";
  v46 = @"com.apple.atc";
  v151[65] = @"com.apple.AppStore";
  v47 = @"installd";
  v151[66] = @"com.apple.AppStore";
  v48 = @"com.apple.StreamingUnzipService";
  v151[67] = @"com.apple.AppStore";
  v49 = @"containermanagerd";
  v151[68] = @"com.apple.AppStore";
  v50 = @"appstored";
  v151[69] = @"com.apple.AppStore";
  v51 = @"OOS";
  v151[70] = @"PoorCellCondition";
  v52 = @"healthd";
  v151[71] = @"com.apple.Health";
  v53 = @"com.apple.healthappd";
  v151[72] = @"com.apple.Health";
  v54 = @"misd";
  v151[73] = @"Hotspot";
  v55 = @"RadarComposeUIService";
  v151[74] = @"com.apple.ist.radar";
  v56 = @"remindd";
  v151[75] = @"com.apple.reminders";
  v57 = @"homed";
  v151[76] = @"HomeKit";
  v58 = @"com.apple.private.alloy.willow";
  v151[77] = @"HomeKit";
  v59 = @"atc";
  v151[78] = @"com.apple.Music";
  v60 = @"siriactionsd";
  v151[79] = @"com.apple.shortcuts";
  v61 = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v151[80] = @"com.apple.shortcuts";
  v62 = @"weatherd";
  v151[81] = @"com.apple.weather";
  v63 = @"synapse.contentlinkingd";
  v151[82] = @"com.apple.mobilenotes";
  v64 = @"com.apple.sportsd";
  v151[83] = @"com.apple.tv";
  v65 = @"sportsd";
  v151[84] = @"com.apple.tv";
  v66 = @"com.apple.continuitycaptured";
  v151[85] = @"com.apple.sidecar.extension.capture";
  v67 = @"com.apple.ContinuityCaptureShieldUI";
  v151[86] = @"com.apple.sidecar.extension.capture";
  v68 = @"GenerativePlaygroundApp";
  v151[87] = @"com.apple.GenerativePlaygroundApp";
  v69 = @"eventkitsyncd";
  v151[88] = @"com.apple.mobilecal";
  v70 = @"companioncamerad";
  v151[89] = @"com.apple.camera";
  v71 = @"nanomailbootstrapd";
  v151[90] = @"com.apple.mobilemail";
  v72 = @"nanomapscd";
  v151[91] = @"com.apple.Maps";
  v73 = @"companionmessagesd";
  v151[92] = @"com.apple.MobileSMS";
  v74 = @"NPKCompanionAgent";
  v151[93] = @"com.apple.Passbook";
  v75 = @"tursd";
  v151[94] = @"com.apple.mobilephone";
  v76 = @"nptocompaniond";
  v151[95] = @"com.apple.mobileslideshow";
  v77 = @"remotemediaservicesd";
  v151[96] = @"com.apple.RemoteMediaServices";
  v78 = @"companionfindlocallyd";
  v151[97] = @"com.apple.companionfindlocallyd";
  v79 = @"pairedunlockd";
  v151[98] = @"com.apple.pairedunlockd";
  v80 = @"nanoweatherprefsd";
  v151[99] = @"com.apple.weather";
  v81 = @"com.apple.ess";
  v151[100] = @"com.apple.mobilephone";
  v82 = @"com.apple.madrid";
  v151[101] = @"com.apple.MobileSMS";
  v83 = @"com.apple.private.alloy.accountssync";
  v151[102] = @"accountsd";
  v84 = @"com.apple.private.alloy.addressbooksync";
  v151[103] = @"addressbooksyncd";
  v85 = @"com.apple.private.alloy.appregistrysync";
  v151[104] = @"nanoappregistryd";
  v86 = @"com.apple.private.alloy.audiocontrol.bridge";
  v151[105] = @"com.apple.Bridge";
  v87 = @"com.apple.private.alloy.audiocontrol.music";
  v151[106] = @"com.apple.Music";
  v88 = @"com.apple.private.alloy.bluetoothregistry";
  v151[107] = @"nanoregistryd";
  v89 = @"com.apple.private.alloy.bulletindistributor.settings";
  v151[108] = @"bulletindistributord";
  v90 = @"com.apple.private.alloy.bulletindistributor";
  v151[109] = @"bulletindistributord";
  v91 = @"com.apple.private.alloy.callhistorysync";
  v151[110] = @"CallHistorySyncHelper";
  v92 = @"com.apple.private.alloy.camera.proxy";
  v151[111] = @"com.apple.camera";
  v93 = @"com.apple.private.alloy.continuity.activity";
  v151[112] = @"sharingd";
  v94 = @"com.apple.private.alloy.continuity.auth";
  v151[113] = @"sharingd";
  v95 = @"com.apple.private.alloy.continuity.encryption";
  v151[114] = @"sharingd";
  v96 = @"com.apple.private.alloy.continuity.tethering";
  v151[115] = @"sharingd";
  v97 = @"com.apple.private.alloy.coreduet";
  v151[116] = @"coreduetd";
  v98 = @"com.apple.private.alloy.eventkitsync";
  v151[117] = @"com.apple.mobilecal";
  v99 = @"com.apple.private.alloy.fignero";
  v151[118] = @"mediaserverd";
  v100 = @"com.apple.private.alloy.findmylocaldevice";
  v151[119] = @"com.apple.companionfindlocallyd";
  v101 = @"com.apple.private.alloy.fmf";
  v151[120] = @"fmfd";
  v102 = @"com.apple.private.alloy.health.general";
  v151[121] = @"com.apple.Health";
  v103 = @"com.apple.private.alloy.health.sync";
  v151[122] = @"com.apple.Health";
  v104 = @"com.apple.private.alloy.icloudpairing";
  v151[123] = @"bluetoothd";
  v105 = @"com.apple.private.alloy.idscredentials";
  v151[124] = @"IDSCredentialsAgent";
  v106 = @"com.apple.private.alloy.idsremoteurlconnection";
  v151[125] = @"IDSRemoteURLConnectionAgent";
  v107 = @"com.apple.private.alloy.idstransfers";
  v151[126] = @"IMTransferAgent";
  v108 = @"com.apple.private.alloy.iosdiagnostics";
  v151[127] = @"Diagnostics";
  v109 = @"com.apple.private.alloy.location.auth";
  v151[128] = @"locationd";
  v110 = @"com.apple.private.alloy.location.motion";
  v151[129] = @"locationd";
  v111 = @"com.apple.private.alloy.location.usage";
  v151[130] = @"locationd";
  v112 = @"com.apple.private.alloy.location.wifitilesync";
  v151[131] = @"locationd";
  v113 = @"com.apple.private.alloy.mail.fetches";
  v151[132] = @"com.apple.mobilemail";
  v114 = @"com.apple.private.alloy.mail.sync.accounts";
  v151[133] = @"com.apple.mobilemail";
  v115 = @"com.apple.private.alloy.mail.sync.content";
  v151[134] = @"com.apple.mobilemail";
  v116 = @"com.apple.private.alloy.mail.sync.messages";
  v151[135] = @"com.apple.mobilemail";
  v117 = @"com.apple.private.alloy.maps.proxy";
  v151[136] = @"com.apple.Maps";
  v118 = @"com.apple.private.alloy.maps.sync";
  v151[137] = @"com.apple.Maps";
  v119 = @"com.apple.private.alloy.maps";
  v151[138] = @"com.apple.Maps";
  v120 = @"com.apple.private.alloy.messages";
  v151[139] = @"com.apple.MobileSMS";
  v121 = @"com.apple.private.alloy.nsurlsessionproxy";
  v151[140] = @"sharingd";
  v122 = @"com.apple.private.alloy.otaupdate";
  v151[141] = @"Restore";
  v123 = @"com.apple.private.alloy.pairedunlock";
  v151[142] = @"com.apple.pairedunlockd";
  v124 = @"com.apple.private.alloy.passbook.general";
  v151[143] = @"com.apple.Passbook";
  v125 = @"com.apple.private.alloy.passbook.maintenance";
  v151[144] = @"com.apple.Passbook";
  v126 = @"com.apple.private.alloy.passbook.provisioning";
  v151[145] = @"com.apple.Passbook";
  v127 = @"com.apple.private.alloy.passbook.relevancy";
  v151[146] = @"com.apple.Passbook";
  v128 = @"com.apple.private.alloy.passbook.remoteadmin";
  v151[147] = @"com.apple.Passbook";
  v129 = @"com.apple.private.alloy.pbbridge";
  v151[148] = @"com.apple.Bridge";
  v130 = @"com.apple.private.alloy.phonecontinuity";
  v151[149] = @"com.apple.mobilephone";
  v131 = @"com.apple.private.alloy.photos.proxy";
  v151[150] = @"com.apple.mobileslideshow";
  v132 = @"com.apple.private.alloy.photostream";
  v151[151] = @"com.apple.mobileslideshow";
  v133 = @"com.apple.private.alloy.preferencessync";
  v151[152] = @"nanoprefsyncd";
  v134 = @"com.apple.private.alloy.proxiedcrashcopier";
  v151[153] = @"ProxiedCrashCopier";
  v135 = @"com.apple.private.alloy.pushproxy";
  v151[154] = @"apsd";
  v136 = @"com.apple.private.alloy.remotemediaservices";
  v151[155] = @"com.apple.RemoteMediaServices";
  v137 = @"com.apple.private.alloy.resourcegrabber";
  v151[156] = @"resourcegrabberd";
  v138 = @"com.apple.private.alloy.screenshotter";
  v151[157] = @"screenshotsyncd";
  v139 = @"com.apple.private.alloy.siri.device";
  v151[158] = @"Siri";
  v140 = @"com.apple.private.alloy.siri.location";
  v151[159] = @"Siri";
  v141 = @"com.apple.private.alloy.siri.proxy";
  v151[160] = @"Siri";
  v142 = @"com.apple.private.alloy.sms";
  v151[161] = @"com.apple.MobileSMS";
  v143 = @"com.apple.private.alloy.sockpuppet";
  v151[162] = @"companionappd";
  v144 = @"com.apple.private.alloy.systemsettings";
  v151[163] = @"nanosystemsettingsd";
  v145 = @"com.apple.private.alloy.telephonyutilitiestemporary";
  v151[164] = @"com.apple.mobilephone";
  v146 = @"com.apple.private.alloy.timesync";
  v151[165] = @"timed";
  v147 = @"com.apple.private.alloy.timezonesync";
  v151[166] = @"tzd";
  v148 = @"com.apple.private.alloy.utilitybelt";
  v151[167] = @"com.apple.Bridge";
  v149 = @"com.apple.private.alloy.voicemailsync";
  v151[168] = @"com.apple.mobilephone";
  v150 = @"com.apple.private.alloy.wifi.networksync";
  v151[169] = @"wifid";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v9 count:170];

  return v7;
}

+ (void)applyStaticNameTransformation:withResponderService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Battery UI Response Type Utilities: Before clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

+ (void)applyStaticNameTransformation:withResponderService:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Battery UI Response Type Utilities: After clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

+ (void)energyEntryHasNegligibleEnergyDrain:(uint64_t)a3 filterArray:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"com.apple.findmy";
  OUTLINED_FUNCTION_0(&dword_25EE51000, a1, a3, "skipping runtime filter for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)getPluginBundleIDToEntryMapWithResponderService:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "installedAppEntries=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"AppBundleId"];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v4, v5, "Battery UI Response Type Utilities: Skipping non system / non user bundleID=%@");
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:.cold.5()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 bundleIdentifier];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v4, v5, "Battery UI Response Type Utilities: LSApplicationRecord Skipping non system / non user bundleID=%@");
}

@end