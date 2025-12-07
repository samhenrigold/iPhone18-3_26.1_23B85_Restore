@interface MSUAssetStager
+ (BOOL)_checkAndLogLocalError:(id)error outError:(id *)outError;
+ (BOOL)_isEnabledWithAdditionalIndicators:(BOOL)indicators options:(id)options updateAttributes:(id)attributes snapshotPrepare:(BOOL)prepare splat:(BOOL)splat sfr:(BOOL)sfr purging:(BOOL)purging;
+ (BOOL)_stageAssetsUsingUpdateAttributes:(id)attributes withError:(id *)error;
+ (BOOL)isPurgingEnabled;
+ (BOOL)isStagingEnabledForOptions:(id)options updateAttributes:(id)attributes snapshotPrepare:(BOOL)prepare splat:(BOOL)splat sfr:(BOOL)sfr;
+ (id)buildVersionFromAttributes:(id)attributes;
+ (id)buildVersionFromInfoPlist:(id)plist;
+ (id)osVersionFromAttributes:(id)attributes;
+ (id)osVersionFromInfoPlist:(id)plist;
+ (id)restoreVersionFromAttributes:(id)attributes;
+ (id)trainNameFromAttributes:(id)attributes;
+ (void)_purgeStagedAssetsSynchronously:(BOOL)synchronously;
+ (void)disableStagingForReason:(id)reason buildVersion:(id)version osVersion:(id)osVersion;
@end

@implementation MSUAssetStager

+ (BOOL)_stageAssetsUsingUpdateAttributes:(id)attributes withError:(id *)error
{
  v101 = 0;
  v102 = &v101;
  v103 = 0x3052000000;
  v104 = __Block_byref_object_copy_;
  v105 = __Block_byref_object_dispose_;
  v106 = 0;
  if (error)
  {
    *error = 0;
  }

  if (objc_opt_class() && objc_opt_class() && objc_opt_class())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector()) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v100[0] = 0;
      v100[1] = v100;
      v100[2] = 0x2020000000;
      v100[3] = 0;
      v98 = 0;
      v99 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v9 = [MSUAssetStager buildVersionFromAttributes:attributes];
      v10 = [MSUAssetStager osVersionFromAttributes:attributes];
      v11 = [MSUAssetStager trainNameFromAttributes:attributes];
      v12 = [MSUAssetStager restoreVersionFromAttributes:attributes];
      if (objc_opt_respondsToSelector())
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [v18 setObject:v9 forKeyedSubscript:@"Build"];
        [v18 setObject:v10 forKeyedSubscript:@"OSVersion"];
        if (v11)
        {
          [v18 setObject:v11 forKeyedSubscript:@"TrainName"];
        }

        else
        {
          logfunction(", 1, @"MSUAssetStager: Unable to determine TrainName from update attributes. Not adding to options\n"", v19, v20, v21, v22, v23);
        }

        if (v12)
        {
          [v18 setObject:v12 forKeyedSubscript:@"RestoreVersion"];
        }

        else
        {
          logfunction(", 1, @"MSUAssetStager: Unable to determine RestoreVersion from update attributes. Not adding to options\n"", v24, v25, v26, v27, v28);
        }

        logfunction(", 1, @"MSUAssetStager: Using new SPI for determining assets for pre SU staging. Options being passed into stageDetermineAllAvailableForUpdate are {\n%@\n}\n"", v39, v40, v41, v42, v43, v18);
        v33 = [MAAutoAsset stageDetermineAllAvailableForUpdateSync:v18 totalExpectedBytes:&v99 error:v102 + 5];
      }

      else
      {
        logfunction(", 1, @"MSUAssetStager: Determining all available assets for staging using buildVersion:%@ osVersion:%@ via legacy SPI on supported OS\n"", v13, v14, v15, v16, v17, v9, v10);
        v33 = [MAAutoAsset stageDetermineAllAvailableSync:v10 forTargetBuildVersion:v9 totalExpectedBytes:&v99 error:v102 + 5];
      }

      v44 = v33;
      if (v102[5])
      {
        logfunction(", 1, @"MSUAssetStager: Failed to determine assets available for staging\n"", v34, v35, v36, v37, v38);
        v45 = v102[5];
      }

      else
      {
        if (!v33 || ![v33 count])
        {
          v31 = 1;
          logfunction(", 1, @"MSUAssetStager: No assets found for staging\n"", v34, v35, v36, v37, v38);
          goto LABEL_40;
        }

        if (v99)
        {
          v46 = [v44 count];
          logfunction(", 1, @"MSUAssetStager: Determined %lu assets to stage requiring %llu bytes\n"", v47, v48, v49, v50, v51, v46, v99);
          v93 = 0;
          v94 = 0;
          if (get_snapshot_preparation_size(attributes, &v93, &v94))
          {
            v92 = 0;
            if (get_snapshot_apply_size(attributes, &v92))
            {
              bzero(&v107, 0x878uLL);
              statfs("/private/var", &v107);
              v67 = v107.f_bavail * v107.f_bsize;
              v68 = v67 - &v93[v92];
              if (v67 <= &v93[v92])
              {
                v89 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Free space (%llu) is less than the prepareSize (%llu) + applySize (%llu) total", v64, v65, v66, v107.f_bavail * v107.f_bsize, v93, v92);
                v102[5] = v89;
                [MSUAssetStager _checkAndLogLocalError:v89 outError:error];
              }

              else
              {
                v69 = (v99 + (v99 * 0.1)) + 262140000.0;
                v70 = v69;
                v71 = @"NO";
                if (v68 > v69)
                {
                  v71 = @"YES";
                }

                logfunction(", 1, @"MSUAssetStager: Required space for staging assets freeSpace:%llu - (prepareSize:%llu + applySize:%llu) = remainingSpace:%llu > estimatedBytesWithPadding:%llu | stagingValid:%@\n"", v62, v63, v64, v65, v66, v107.f_bavail * v107.f_bsize, v93, v92, v67 - &v93[v92], v69, v71);
                if (v68 <= v70)
                {
                  v90 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Not enough space available for staging assets; remainingSpace:%llu, estimatedBytesWithPadding:%llu", v74, v75, v76, v68, v70);
                  v102[5] = v90;
                  [MSUAssetStager _checkAndLogLocalError:v90 outError:error];
                }

                else
                {
                  logfunction(", 1, @"MSUAssetStager: Beginning asset downloads for staging\n"", v72, v73, v74, v75, v76);
                  v77 = dispatch_semaphore_create(0);
                  if (v77)
                  {
                    v83 = v77;
                    v91[0] = _NSConcreteStackBlock;
                    v91[1] = 3221225472;
                    v91[2] = __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke_2;
                    v91[3] = &unk_10004D070;
                    v91[6] = &v95;
                    v91[7] = &v101;
                    v91[4] = v77;
                    v91[5] = v100;
                    [MAAutoAsset stageDownloadAll:3600 reportingProgress:&__block_literal_global_2 completion:v91];
                    if (dispatch_semaphore_wait(v83, 0))
                    {
                      [+[NSRunLoop currentRunLoop](NSRunLoop runMode:"runMode:beforeDate:" beforeDate:NSDefaultRunLoopMode, objc_opt_new()];
                      +[MAAutoAsset stagePurgeAllSync];
                    }

                    else
                    {
                      if (!v102[5])
                      {
                        v31 = 1;
                        logfunction(", 1, @"MSUAssetStager: Completed asset staging using %llu bytes\n"", v84, v85, v86, v87, v88, v96[3]);
                        goto LABEL_40;
                      }

                      logfunction(", 1, @"MSUAssetStager: Failed to download assets for staging\n"", v84, v85, v86, v87, v88);
                      [MSUAssetStager _checkAndLogLocalError:v102[5] outError:error];
                    }
                  }

                  else
                  {
                    logfunction(", 1, @"MSUAssetStager: Failed to create semaphore for staging.\n"", v78, v79, v80, v81, v82);
                  }
                }
              }
            }

            else
            {
              logfunction(", 1, @"MSUAssetStager: Failed to get snapshot apply size with error: %@\n"", v57, v58, v59, v60, v61, v94);
              [MSUAssetStager _checkAndLogLocalError:v94 outError:error];
            }
          }

          else
          {
            logfunction(", 1, @"MSUAssetStager: Failed to get snapshot preparation size with error: %@\n"", v52, v53, v54, v55, v56, v94);
            [MSUAssetStager _checkAndLogLocalError:v94 outError:error];
          }

          goto LABEL_26;
        }

        v45 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Failed to estimate bytes needed for staging", v36, v37, v38);
        v102[5] = v45;
      }

      [MSUAssetStager _checkAndLogLocalError:v45 outError:error];
LABEL_26:
      v31 = 0;
LABEL_40:
      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(v100, 8);
      goto LABEL_16;
    }

    v29 = @"Required MobileAsset classes do not respond to required selectors";
  }

  else
  {
    v29 = @"Required MobileAsset classes do not exist";
  }

  v30 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, v29, v6, v7, v8);
  v102[5] = v30;
  [MSUAssetStager _checkAndLogLocalError:v30 outError:error];
  v31 = 0;
LABEL_16:
  _Block_object_dispose(&v101, 8);
  return v31;
}

void __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke(id a1, MAAutoAssetStatus *a2, NSError *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v9 = [(MAAutoAssetStatus *)a2 summary];
    logfunction(", 1, @"MSUAssetStager: Progress %@\n"", v10, v11, v12, v13, v14, v9);
  }

  else
  {

    logfunction(", 1, @"MSUAssetStager: Progress reported, but status does not implement summary\n"", v4, v5, v6, v7, v8);
  }
}

intptr_t __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  *(*(*(a1 + 56) + 8) + 40) = a4;
  return dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)disableStagingForReason:(id)reason buildVersion:(id)version osVersion:(id)osVersion
{
  if (!+[MSUAssetStager _preSUStagingSupportedInSUCore])
  {
    v22[0] = @"DisablePreSoftwareUpdateAssetStaging";
    v22[1] = @"Reason";
    osVersionCopy = @"NotSpecified";
    if (reason)
    {
      reasonCopy = reason;
    }

    else
    {
      reasonCopy = @"NotSpecified";
    }

    v23[0] = &__kCFBooleanTrue;
    v23[1] = reasonCopy;
    if (version)
    {
      versionCopy = version;
    }

    else
    {
      versionCopy = @"NotSpecified";
    }

    v22[2] = @"BuildVersion";
    v22[3] = @"OSVersion";
    if (osVersion)
    {
      osVersionCopy = osVersion;
    }

    v23[2] = versionCopy;
    v23[3] = osVersionCopy;
    v11 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    logfunction(", 1, @"MSUAssetStager: Writing preSoftwareUpdateStagingDictionary: %@ to path: %s\n", v12, v13, v14, v15, v16, v11, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist"");
    if (![(NSDictionary *)v11 writeToFile:@"/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist" atomically:1])
    {
      logfunction(", 1, @"MSUAssetStager: Failed to write preSoftwareUpdateStagingDictionary to plist at path: %s\n", v17, v18, v19, v20, v21, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist"");
    }
  }
}

+ (void)_purgeStagedAssetsSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  if (!objc_opt_class())
  {
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does not exist\n";
    goto LABEL_16;
  }

  if (synchronouslyCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      if (+[MSUAssetStager isPurgingEnabled])
      {
        logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging purge starting (synchronously)\n"", v4, v5, v6, v7, v8);
        v9 = +[MAAutoAsset stagePurgeAllSync];
        if (v9)
        {
          logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging failed to complete purge with error: %@\n"", v4, v5, v6, v7, v8, v9);
          return;
        }

        v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging completed purge successfully\n";
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does respond to required selector (stagePurgeAllSync)\n";
LABEL_16:

    logfunction("", 1, v10, v4, v5, v6, v7, v8);
    return;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does respond to required selector (stagePurgeAll:)\n";
    goto LABEL_16;
  }

  if (!+[MSUAssetStager isPurgingEnabled])
  {
LABEL_15:
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Purging is disabled\n";
    goto LABEL_16;
  }

  logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging purge starting (asynchronously)\n"", v4, v5, v6, v7, v8);

  [MAAutoAsset stagePurgeAll:&__block_literal_global_160];
}

void __50__MSUAssetStager__purgeStagedAssetsSynchronously___block_invoke(id a1, NSError *a2)
{
  if (a2)
  {
    logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging failed to complete purge with error: %@\n"", v2, v3, v4, v5, v6, a2);
  }

  else
  {

    logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging completed purge successfully\n"", v2, v3, v4, v5, v6);
  }
}

+ (BOOL)isPurgingEnabled
{
  LOBYTE(v10) = 1;
  v7 = [MSUAssetStager _isEnabledWithAdditionalIndicators:0 options:0 updateAttributes:0 snapshotPrepare:0 splat:0 sfr:0 purging:v10];
  v8 = "not enabled";
  if (v7)
  {
    v8 = "enabled";
  }

  logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is %s for purging\n"", v2, v3, v4, v5, v6, v8);
  return v7;
}

+ (BOOL)isStagingEnabledForOptions:(id)options updateAttributes:(id)attributes snapshotPrepare:(BOOL)prepare splat:(BOOL)splat sfr:(BOOL)sfr
{
  sfrCopy = sfr;
  splatCopy = splat;
  prepareCopy = prepare;
  v17 = MANonUserInitiatedDownloadsAllowed() & 1;
  if ((v17 & 1) == 0)
  {
    logfunction(", 1, @"MSUAssetStager: Failed to check if non-User Initiated Downloads are allowed with error: %@\n"", v12, v13, v14, v15, v16, 0);
  }

  LOBYTE(v27) = 0;
  v18 = [MSUAssetStager _isEnabledWithAdditionalIndicators:1 options:options updateAttributes:attributes snapshotPrepare:prepareCopy splat:splatCopy sfr:sfrCopy purging:v27];
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging found preSoftwareUpdateStagingPlist at path: %s\n", v19, v20, v21, v22, v23, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist"");
    LOBYTE(v24) = 0;
    v25 = "not enabled";
  }

  else
  {
    v24 = v18 & v17;
    v25 = "not enabled";
    if (v24)
    {
      v25 = "enabled";
    }
  }

  logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is %s for downloads and staging\n"", v19, v20, v21, v22, v23, v25);
  return v24 & 1;
}

+ (BOOL)_isEnabledWithAdditionalIndicators:(BOOL)indicators options:(id)options updateAttributes:(id)attributes snapshotPrepare:(BOOL)prepare splat:(BOOL)splat sfr:(BOOL)sfr purging:(BOOL)purging
{
  sfrCopy = sfr;
  splatCopy = splat;
  prepareCopy = prepare;
  indicatorsCopy = indicators;
  if ([MSUAssetStager _preSUStagingSupportedInSUCore:indicators])
  {
    v19 = !purging;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v23 = 0;
    v22 = @"MSUAssetStager: Only purging is enabled\n";
    goto LABEL_8;
  }

  AppBooleanValueWithDefaultValue = _MSUPreferencesGetAppBooleanValueWithDefaultValue(@"DisablePreSoftwareUpdateAssetStaging", 0);
  if (AppBooleanValueWithDefaultValue)
  {
    v23 = 0;
    v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging disabled via on-device default; skipping staging\n";
    goto LABEL_8;
  }

  if (indicatorsCopy)
  {
    v25 = [attributes objectForKey:@"DisablePreSoftwareUpdateAssetStaging"];
    objc_opt_class();
    AppBooleanValueWithDefaultValue = objc_opt_isKindOfClass();
    if (AppBooleanValueWithDefaultValue)
    {
      AppBooleanValueWithDefaultValue = [v25 BOOLValue];
      v23 = 0;
      v26 = AppBooleanValueWithDefaultValue | (splatCopy || sfrCopy);
      v27 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is disabled for sfr updates\n";
      if (splatCopy)
      {
        v27 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is disabled for splat updates\n";
      }

      if (AppBooleanValueWithDefaultValue)
      {
        v27 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is disabled via asset attributes\n";
      }

      if (v26)
      {
        v22 = v27;
      }

      else
      {
        v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is only enabled for snapshot based updates\n";
      }

      if ((v26 & 1) != 0 || !prepareCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = 0;
      v28 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is only enabled for snapshot based updates\n";
      if (sfrCopy)
      {
        v28 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is disabled for sfr updates\n";
      }

      if (splatCopy)
      {
        v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is disabled for splat updates\n";
      }

      else
      {
        v22 = v28;
      }

      if (!prepareCopy || sfrCopy || splatCopy)
      {
        goto LABEL_8;
      }
    }
  }

  if (msu_running_in_limited_environment(AppBooleanValueWithDefaultValue, v21, v22, v14, v15, v16, v17, v18))
  {
    v23 = 0;
    v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is not enabled running in limited environments\n";
  }

  else
  {
    if (attributes)
    {
      if (![MSUAssetStager buildVersionFromAttributes:attributes])
      {
        v23 = 0;
        v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging requires a build version\n";
        goto LABEL_8;
      }

      if (![MSUAssetStager osVersionFromAttributes:attributes])
      {
        v23 = 0;
        v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging requires an os version\n";
        goto LABEL_8;
      }
    }

    v23 = 1;
    v22 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging passed environment pre-checks\n";
  }

LABEL_8:
  logfunction("", 1, v22, v14, v15, v16, v17, v18);
  return v23;
}

+ (id)buildVersionFromAttributes:(id)attributes
{
  v3 = [attributes objectForKey:@"Build"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)osVersionFromAttributes:(id)attributes
{
  v3 = [attributes objectForKey:@"OSVersion"];
  if (!v3)
  {
    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v3 length] < 4 || objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_100050240}];
}

+ (id)trainNameFromAttributes:(id)attributes
{
  v3 = [attributes objectForKey:@"TrainName"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)restoreVersionFromAttributes:(id)attributes
{
  v3 = [attributes objectForKey:@"RestoreVersion"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)buildVersionFromInfoPlist:(id)plist
{
  v3 = [plist objectForKey:@"TargetUpdate"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)osVersionFromInfoPlist:(id)plist
{
  v3 = [plist objectForKey:@"ProductVersion"];
  if (!v3)
  {
    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v3 length] < 4 || objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_100050240}];
}

+ (BOOL)_checkAndLogLocalError:(id)error outError:(id *)outError
{
  if (error)
  {
    logfunction(", 1, @"MSUAssetStager: Failed with error %@\n"", outError, v4, v5, v6, v7, error);
    errorCopy = error;
    if (!outError)
    {
      return error == 0;
    }

    goto LABEL_6;
  }

  if (outError)
  {
    errorCopy = 0;
LABEL_6:
    *outError = errorCopy;
  }

  return error == 0;
}

@end