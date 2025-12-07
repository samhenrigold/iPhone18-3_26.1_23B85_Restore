@interface MIInstallableBundle
+ (BOOL)_getEligibilityForDomain:(unint64_t)domain forBundle:(id)bundle isEligible:(BOOL *)eligible ineligibilityReason:(id *)reason error:(id *)error;
+ (BOOL)_shouldSkipEligibilityChecksForAppWithSigningInfo:(id)info;
+ (BOOL)_shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:(id)d persona:(id)persona;
+ (BOOL)_shouldSkipEligibilityChecksForInstallRequestorWithAuditToken:(id *)token persona:(id)persona authorizingBundleID:(id *)d;
+ (unint64_t)_domainForBrowserEligibilityForApp:(id)app withSigningInfo:(id)info distributorInfo:(id)distributorInfo isWebDistribution:(BOOL)distribution operationType:(unint64_t)type;
+ (unint64_t)_domainForMarketplaceEligibilityForApp:(id)app withSigningInfo:(id)info isWebDistribution:(BOOL)distribution distributorInfo:(id)distributorInfo operationType:(unint64_t)type;
- (BOOL)_captureDataFromStagingRootOrBundle:(id)bundle toContainer:(id)container withError:(id *)error;
- (BOOL)_checkCanInstallWithError:(id *)error;
- (BOOL)_checkEligibilityForAppWithSigningInfo:(id)info distributorInfo:(id)distributorInfo isWebDistribution:(BOOL)distribution withError:(id *)error;
- (BOOL)_getLinkedParentBundleID:(id *)d withError:(id *)error;
- (BOOL)_handleStashMode:(unint64_t)mode withError:(id *)error;
- (BOOL)_handleStashOptionWithError:(id *)error;
- (BOOL)_installEmbeddedProfilesWithError:(id *)error;
- (BOOL)_isValidWatchKitApp:(id)app withVersion:(unsigned __int8)version installableSigningInfo:(id)info isSystemAppInstall:(BOOL)install error:(id *)error;
- (BOOL)_linkToParentApplication:(id *)application;
- (BOOL)_performAppClipSpecificValidationForEntitlements:(id)entitlements isAppClip:(BOOL *)clip withError:(id *)error;
- (BOOL)_performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:(id)info error:(id *)error;
- (BOOL)_performBuiltInAppUpgradeValidationWithSigningInfo:(id)info error:(id *)error;
- (BOOL)_performCompanionWatchAppValidationForWatchApp:(id)app withVersion:(unsigned __int8)version companionAppSigningInfo:(id)info frameworks:(id)frameworks error:(id *)error;
- (BOOL)_performWatchVerificationForSigningInfo:(id)info isSystemAppInstall:(BOOL)install withError:(id *)error;
- (BOOL)_postFlightAppExtensionsWithError:(id *)error;
- (BOOL)_preserveExistingPlaceholderAsParallelPlaceholderWithError:(id *)error;
- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error;
- (BOOL)_setBundleMetadataWithError:(id *)error;
- (BOOL)_setLaunchWarningDataWithError:(id *)error;
- (BOOL)_setLinkageInBundleMetadata:(id)metadata error:(id *)error;
- (BOOL)_validateAppManagementDomainForSigningInfo:(id)info error:(id *)error;
- (BOOL)_validateApplicationIdentifierForNewBundleSigningInfo:(id)info error:(id *)error;
- (BOOL)_validateCompanionAppStateInWatchKitApp:(id)app withVersion:(unsigned __int8)version isSystemAppInstall:(BOOL)install error:(id *)error;
- (BOOL)_validateITunesMetadataOptionWithError:(id *)error;
- (BOOL)_validateLinkedParentForSigningInfo:(id)info appManagementDomainValue:(unint64_t)value error:(id *)error;
- (BOOL)_validateSinfsWithError:(id *)error;
- (BOOL)_validateiTunesMetadataWithError:(id *)error;
- (BOOL)_verifyBundleMetadataWithError:(id *)error;
- (BOOL)_verifyPluginKitPlugins:(id)plugins extensionKitExtensions:(id)extensions inWatchKit2App:(id)app checkAppexSignatures:(BOOL)signatures checkFrameworkSignature:(BOOL)signature error:(id *)error;
- (BOOL)_writeData:(id)data toFile:(id)file inContainerAtURL:(id)l legacyErrorString:(id)string error:(id *)error;
- (BOOL)_writeOptionsDataToBundle:(id)bundle orContainer:(id)container error:(id *)error;
- (BOOL)applyPatchWithError:(id *)error;
- (BOOL)finalizeInstallationWithError:(id *)error;
- (BOOL)performInstallationWithError:(id *)error;
- (BOOL)performLaunchServicesRegistrationWithError:(id *)error;
- (BOOL)performPreflightWithError:(id *)error;
- (BOOL)performVerificationWithError:(id *)error;
- (BOOL)postFlightInstallationWithError:(id *)error;
- (MIInstallableBundle)initWithBundle:(id)bundle inStagingRoot:(id)root stagingLocation:(id)location packageFormat:(unsigned __int8)format identity:(id)identity domain:(unint64_t)domain installOptions:(id)options manifestURL:(id)self0 existingBundleContainer:(id)self1 patchType:(unsigned __int8)self2 operationType:(unint64_t)self3 error:(id *)self4;
- (id)_builtInAppUpgradeFailureError;
- (id)_createJournalEntry;
- (id)_noLongerPresentAppExtensionDataContainers;
- (id)_validateBundle:(id)bundle validatingResources:(BOOL)resources performingOnlineAuthorization:(BOOL)authorization checkingTrustCacheIfApplicable:(BOOL)applicable allowingFreeProfileValidation:(BOOL)validation skippingProfileIDValidation:(BOOL)dValidation error:(id *)error;
- (id)launchServicesBundleRecordsWithError:(id *)error;
- (id)recordPromise;
- (id)stageBackgroundUpdateWithError:(id *)error;
- (unint64_t)_installationJournalOperationType;
- (unint64_t)eligibilityOperationType;
- (void)dealloc;
@end

@implementation MIInstallableBundle

- (id)recordPromise
{
  journalEntry = [(MIInstallableBundle *)self journalEntry];
  recordPromise = [journalEntry recordPromise];

  return recordPromise;
}

- (MIInstallableBundle)initWithBundle:(id)bundle inStagingRoot:(id)root stagingLocation:(id)location packageFormat:(unsigned __int8)format identity:(id)identity domain:(unint64_t)domain installOptions:(id)options manifestURL:(id)self0 existingBundleContainer:(id)self1 patchType:(unsigned __int8)self2 operationType:(unint64_t)self3 error:(id *)self4
{
  formatCopy = format;
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = MIInstallableBundle;
  v19 = [(MIInstallable *)&v25 initWithBundle:bundle inStagingRoot:root stagingLocation:location packageFormat:formatCopy identity:identity domain:domain installOptions:optionsCopy manifestURL:l existingBundleContainer:container patchType:type operationType:operationType error:error];
  if (v19 && ([optionsCopy installTargetType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19->_isPlaceholderInstall = 1;
  }

  return v19;
}

- (void)dealloc
{
  bundleContainer = [(MIInstallableBundle *)self bundleContainer];
  sub_10003D584(bundleContainer);

  dataContainer = [(MIInstallableBundle *)self dataContainer];
  sub_10003D584(dataContainer);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  appExtensionDataContainers = [(MIInstallableBundle *)self appExtensionDataContainers];
  v6 = [appExtensionDataContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(appExtensionDataContainers);
        }

        sub_10003D584(*(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [appExtensionDataContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = MIInstallableBundle;
  [(MIInstallableBundle *)&v10 dealloc];
}

- (unint64_t)eligibilityOperationType
{
  installOptions = [(MIInstallable *)self installOptions];
  installIntent = [installOptions installIntent];

  v5 = 2;
  if (installIntent != 3 && installIntent != 5)
  {
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
    v7 = existingBundleContainer;
    if (existingBundleContainer)
    {
      bundle = [existingBundleContainer bundle];
      v9 = ~[bundle isPlaceholder];

      v5 = v9 & 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_verifyBundleMetadataWithError:(id *)error
{
  bundle = [(MIInstallable *)self bundle];
  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v6 = 0;
  }

  else
  {
    v23 = 0;
    v10 = [bundle isApplicableToCurrentDeviceFamilyWithError:&v23];
    v11 = v23;
    v12 = v11;
    if (!v10)
    {
      goto LABEL_16;
    }

    v22 = v11;
    v13 = [bundle isApplicableToCurrentOSVersionWithError:&v22];
    v6 = v22;

    if ((v13 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        userInfo = [v6 userInfo];
        v19 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
        MOLogWrite();
      }

      goto LABEL_17;
    }
  }

  bundleType = [bundle bundleType];
  if (bundleType - 1 < 5 || bundleType == 9)
  {
    v21 = v6;
    v8 = [bundle validateAppMetadataWithError:&v21];
    v9 = v21;

    v6 = v9;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v15 = 1;
    goto LABEL_20;
  }

  v20 = v6;
  v16 = [bundle thinningMatchesCurrentDeviceWithError:&v20];
  v12 = v20;

  if (v16)
  {
    v15 = 1;
    v6 = v12;
    goto LABEL_20;
  }

LABEL_16:
  v6 = v12;
LABEL_17:
  if (error)
  {
    v17 = v6;
    v15 = 0;
    *error = v6;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (BOOL)_installEmbeddedProfilesWithError:(id *)error
{
  bundle = [(MIInstallable *)self bundle];
  progressBlock = [(MIInstallable *)self progressBlock];
  v7 = [bundle installEmbeddedProvisioningProfileWithProgress:progressBlock];

  installOptions = [(MIInstallable *)self installOptions];
  [installOptions provisioningProfileInstallFailureIsFatal];

  if (MIIsFatalMISProfileInstallationError())
  {
    v9 = MIInstallerErrorDomain;
    v71[0] = @"LegacyErrorString";
    v71[1] = MILibMISErrorNumberKey;
    v72[0] = @"ApplicationVerificationFailed";
    appExtensionBundles = [NSNumber numberWithInt:v7];
    v72[1] = appExtensionBundles;
    v11 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    bundle2 = [(MIInstallable *)self bundle];
    identifier = [bundle2 identifier];
    v14 = MIErrorStringForMISError();
    sub_100010734("[MIInstallableBundle _installEmbeddedProfilesWithError:]", 332, v9, 13, 0, v11, @"Failed to install embedded profile for %@ : 0x%08x (%@)", v15, identifier);
    v40 = LABEL_32:;

    v39 = 0;
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];
    v16 = [appExtensionBundles countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v57;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(appExtensionBundles);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          progressBlock2 = [(MIInstallable *)self progressBlock];
          v22 = [v20 installEmbeddedProvisioningProfileWithProgress:progressBlock2];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v69[0] = @"ApplicationVerificationFailed";
            v68[0] = @"LegacyErrorString";
            v68[1] = MILibMISErrorNumberKey;
            v11 = [NSNumber numberWithInt:v22];
            v69[1] = v11;
            bundle2 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
            identifier = [v20 identifier];
            v14 = MIErrorStringForMISError();
            v47 = identifier;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 339;
LABEL_31:
            sub_100010734("[MIInstallableBundle _installEmbeddedProfilesWithError:]", v44, v41, 13, 0, bundle2, v43, v42, v47);
            goto LABEL_32;
          }
        }

        v17 = [appExtensionBundles countByEnumeratingWithState:&v56 objects:v70 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    appExtensionBundles = [(MIInstallableBundle *)self frameworkBundles];
    v23 = [appExtensionBundles countByEnumeratingWithState:&v52 objects:v67 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v53;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(appExtensionBundles);
          }

          v27 = *(*(&v52 + 1) + 8 * j);
          progressBlock3 = [(MIInstallable *)self progressBlock];
          v29 = [v27 installEmbeddedProvisioningProfileWithProgress:progressBlock3];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v65[0] = @"LegacyErrorString";
            v65[1] = MILibMISErrorNumberKey;
            v66[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v29];
            v66[1] = v11;
            bundle2 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
            identifier = [v27 identifier];
            v14 = MIErrorStringForMISError();
            v47 = identifier;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 347;
            goto LABEL_31;
          }
        }

        v24 = [appExtensionBundles countByEnumeratingWithState:&v52 objects:v67 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    appExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v30 = [appExtensionBundles countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      while (2)
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(appExtensionBundles);
          }

          v34 = *(*(&v48 + 1) + 8 * k);
          progressBlock4 = [(MIInstallable *)self progressBlock];
          v36 = [v34 installEmbeddedProvisioningProfileWithProgress:progressBlock4];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v62[0] = @"LegacyErrorString";
            v62[1] = MILibMISErrorNumberKey;
            v63[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v36];
            v63[1] = v11;
            bundle2 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
            identifier = [v34 identifier];
            v14 = MIErrorStringForMISError();
            v47 = identifier;
            v43 = @"Failed to install embedded profile for %@ : 0x%08x (%@)";
            v44 = 356;
            goto LABEL_31;
          }

          progressBlock5 = [(MIInstallable *)self progressBlock];
          v38 = [v34 installMacStyleEmbeddedProvisioningProfileWithProgress:progressBlock5];

          if (MIIsFatalMISProfileInstallationError())
          {
            v41 = MIInstallerErrorDomain;
            v60[0] = @"LegacyErrorString";
            v60[1] = MILibMISErrorNumberKey;
            v61[0] = @"ApplicationVerificationFailed";
            v11 = [NSNumber numberWithInt:v38];
            v61[1] = v11;
            bundle2 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
            identifier = [v34 identifier];
            v14 = MIErrorStringForMISError();
            v47 = identifier;
            v43 = @"Failed to install Mac-style embedded profile for %@ : 0x%08x (%@)";
            v44 = 361;
            goto LABEL_31;
          }
        }

        v31 = [appExtensionBundles countByEnumeratingWithState:&v48 objects:v64 count:16];
        v39 = 1;
        if (v31)
        {
          continue;
        }

        break;
      }

      v40 = 0;
    }

    else
    {
      v40 = 0;
      v39 = 1;
    }
  }

  if (error && !v39)
  {
    v45 = v40;
    *error = v40;
  }

  return v39;
}

- (BOOL)_checkCanInstallWithError:(id *)error
{
  bundle = [(MIInstallable *)self bundle];
  bundleType = [bundle bundleType];

  v7 = +[MIDaemonConfiguration sharedInstance];
  builtInFrameworkBundleIDs = [v7 builtInFrameworkBundleIDs];

  bundle2 = [(MIInstallable *)self bundle];
  identifier = [bundle2 identifier];
  v11 = [builtInFrameworkBundleIDs containsObject:identifier];

  if (v11)
  {
    v12 = MIInstallerErrorDomain;
    bundle3 = [(MIInstallable *)self bundle];
    identifier2 = [bundle3 identifier];
    v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 394, v12, 57, 0, &off_10009C3D0, @"A system framework has the bundle ID %@ so an app with the same identifier cannot be installed.", v15, identifier2);

LABEL_3:
    v17 = 0;
    goto LABEL_4;
  }

  v16 = 0;
  v19 = 1;
  if (bundleType <= 2)
  {
    if (bundleType == 1)
    {
      v33 = +[MIDaemonConfiguration sharedInstance];
      systemAppBundleIDToInfoMap = [v33 systemAppBundleIDToInfoMap];

      if (!systemAppBundleIDToInfoMap)
      {
        v28 = MIInstallerErrorDomain;
        v29 = @"Failed to get system app map";
        v30 = 413;
        goto LABEL_50;
      }
    }

    else
    {
      v17 = 0;
      if (bundleType != 2)
      {
        goto LABEL_47;
      }

      v26 = +[MIDaemonConfiguration sharedInstance];
      systemAppBundleIDToInfoMap = [v26 internalAppBundleIDToInfoMap];

      if (!systemAppBundleIDToInfoMap)
      {
        v28 = MIInstallerErrorDomain;
        v29 = @"Failed to get internal app map";
        v30 = 440;
LABEL_50:
        v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", v30, v28, 4, 0, 0, v29, v27, identifier4);
        goto LABEL_3;
      }
    }
  }

  else
  {
    if (bundleType == 3)
    {
      systemAppBundleIDToInfoMap = +[MIDiskImageManager sharedInstance];
      bundle4 = [(MIInstallable *)self bundle];
      identifier3 = [bundle4 identifier];
      v23 = systemAppBundleIDToInfoMap;
      v24 = identifier3;
      v25 = 1;
LABEL_17:
      v31 = [v23 appInfoForBundleID:v24 onAttachedEntityType:v25];
      goto LABEL_22;
    }

    if (bundleType != 5)
    {
      v17 = 0;
      if (bundleType != 12)
      {
        goto LABEL_47;
      }

      systemAppBundleIDToInfoMap = +[MIDiskImageManager sharedInstance];
      bundle4 = [(MIInstallable *)self bundle];
      identifier3 = [bundle4 identifier];
      v23 = systemAppBundleIDToInfoMap;
      v24 = identifier3;
      v25 = 2;
      goto LABEL_17;
    }

    v32 = +[MIDaemonConfiguration sharedInstance];
    systemAppBundleIDToInfoMap = [v32 coreServicesAppBundleIDToInfoMap];

    if (!systemAppBundleIDToInfoMap)
    {
      v28 = MIInstallerErrorDomain;
      v29 = @"Failed to get core services app map";
      v30 = 421;
      goto LABEL_50;
    }
  }

  bundle4 = [(MIInstallable *)self bundle];
  identifier3 = [bundle4 identifier];
  v31 = [systemAppBundleIDToInfoMap objectForKeyedSubscript:identifier3];
LABEL_22:
  v17 = v31;

  if (!v17)
  {
LABEL_46:
    v16 = 0;
    v19 = 1;
    goto LABEL_47;
  }

  v34 = [v17 objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
  objc_opt_class();
  v35 = v34;
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = [v17 objectForKeyedSubscript:kCFBundleVersionKey];
  objc_opt_class();
  v38 = v37;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v64 = v36;
    bundle5 = [(MIInstallable *)self bundle];
    infoPlistSubset = [bundle5 infoPlistSubset];
    v42 = [infoPlistSubset objectForKeyedSubscript:kCFBundleVersionKey];
    objc_opt_class();
    v43 = v42;
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v49 = [v44 compare:v39 options:64];
      isPlaceholderInstall = [(MIInstallableBundle *)self isPlaceholderInstall];
      if (v49 < 2)
      {
        v51 = isPlaceholderInstall;
      }

      else
      {
        v51 = 0;
      }

      if ((v51 & 1) != 0 || v49 == 1)
      {
        goto LABEL_45;
      }

      v52 = +[MIDaemonConfiguration sharedInstance];
      allowsInternalSecurityPolicy = [v52 allowsInternalSecurityPolicy];

      if (allowsInternalSecurityPolicy && !v49)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          bundle6 = [(MIInstallable *)self bundle];
          identifier4 = [bundle6 identifier];
          MOLogWrite();
        }

LABEL_45:
        [(MIInstallableBundle *)self setUpgradingBuiltInAppAtURL:v64, identifier4];

        goto LABEL_46;
      }

      v60 = MIInstallerErrorDomain;
      bundle7 = [(MIInstallable *)self bundle];
      identifier5 = [bundle7 identifier];
      path = [v64 path];
      v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 478, v60, 34, 0, &off_10009C3F8, @"Rejecting downgrade of system/internal app %@ at %@: installed version is %@, proposed version is %@", v61, identifier5);
    }

    else
    {
      v56 = MIInstallerErrorDomain;
      bundle7 = [(MIInstallable *)self bundle];
      identifier5 = [bundle7 identifier];
      v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 457, v56, 33, 0, 0, @"Failed to get CFBundleVersion from Info.plist for incoming OS app upgrade for bundle ID %@", v59, identifier5);
    }
  }

  else
  {
    v45 = MIInstallerErrorDomain;
    bundle8 = [(MIInstallable *)self bundle];
    identifier6 = [bundle8 identifier];
    v16 = sub_100010734("[MIInstallableBundle _checkCanInstallWithError:]", 451, v45, 4, 0, 0, @"Failed to get CFBundleVersion from Info.plist of installed OS app with bundle ID %@", v48, identifier6);
  }

LABEL_4:
  if (error)
  {
    v18 = v16;
    v19 = 0;
    *error = v16;
  }

  else
  {
    v19 = 0;
  }

LABEL_47:

  return v19;
}

- (BOOL)_validateITunesMetadataOptionWithError:(id *)error
{
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  installOptions = [(MIInstallable *)self installOptions];
  sinfData = [installOptions sinfData];

  if (!sinfData || ([installOptions iTunesMetadata], (sinfData = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19 = 0;
    v18 = 0;
    v12 = 0;
    v16 = 0;
    v10 = 0;
    v20 = 1;
    goto LABEL_11;
  }

  bundle = [(MIInstallable *)self bundle];
  bundleVersion = [bundle bundleVersion];
  v10 = [bundleVersion stringByTrimmingCharactersInSet:v5];

  bundleVersion2 = [sinfData bundleVersion];
  v12 = [bundleVersion2 stringByTrimmingCharactersInSet:v5];

  if (v10 && v12 && ([v10 isEqualToString:v12] & 1) == 0)
  {
    v19 = sub_100010734("[MIInstallableBundle _validateITunesMetadataOptionWithError:]", 537, MIInstallerErrorDomain, 79, 0, &off_10009C420, @"iTunesMetadata.plist content supplied to install command specified bundleVersion (%@) that did not match app's CFBundleVersion (%@).", v13, v12);
    v16 = 0;
    v18 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  bundle2 = [(MIInstallable *)self bundle];
  bundleShortVersion = [bundle2 bundleShortVersion];
  v16 = [bundleShortVersion stringByTrimmingCharactersInSet:v5];

  bundleShortVersionString = [sinfData bundleShortVersionString];
  v18 = [bundleShortVersionString stringByTrimmingCharactersInSet:v5];

  v19 = 0;
  v20 = 1;
  if (v16 && v18)
  {
    if ([v16 isEqualToString:v18])
    {
      v19 = 0;
      goto LABEL_11;
    }

    v19 = sub_100010734("[MIInstallableBundle _validateITunesMetadataOptionWithError:]", 545, MIInstallerErrorDomain, 79, 0, &off_10009C448, @"iTunesMetadata.plist content supplied to install command specified bundleShortVersionString (%@) that did not match app's CFBundleShortVersionString (%@).", v21, v18);
    if (!error)
    {
LABEL_15:
      v20 = 0;
      goto LABEL_11;
    }

LABEL_13:
    v23 = v19;
    v20 = 0;
    *error = v19;
  }

LABEL_11:

  return v20;
}

- (BOOL)performPreflightWithError:(id *)error
{
  isPlaceholderInstall = [(MIInstallableBundle *)self isPlaceholderInstall];
  progressBlock = [(MIInstallable *)self progressBlock];
  (progressBlock)[2](progressBlock, @"PreflightingApplication", 30);

  v145.receiver = self;
  v145.super_class = MIInstallableBundle;
  v146 = 0;
  LODWORD(progressBlock) = [(MIInstallable *)&v145 performPreflightWithError:&v146];
  v7 = v146;
  if (!progressBlock)
  {
    goto LABEL_70;
  }

  bundle = [(MIInstallable *)self bundle];
  v9 = bundle;
  if (isPlaceholderInstall)
  {
    v144 = v7;
    v10 = [bundle setIsPlaceholderWithError:&v144];
    v11 = v144;

    if ((v10 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v143 = v7;
    v12 = [bundle checkExecutableExistsIfRequiredWithError:&v143];
    v11 = v143;

    if (!v12)
    {
      goto LABEL_72;
    }
  }

  bundle2 = [(MIInstallable *)self bundle];
  bundleType = [bundle2 bundleType];

  if (bundleType - 1 < 5 || bundleType == 9)
  {
    v142 = v11;
    v15 = [(MIInstallableBundle *)self _validateITunesMetadataOptionWithError:&v142];
    v7 = v142;

    if (!v15)
    {
      goto LABEL_70;
    }

    v11 = v7;
  }

  v141 = v11;
  v16 = [(MIInstallableBundle *)self _checkCanInstallWithError:&v141];
  v7 = v141;

  if (!v16)
  {
LABEL_70:
    v60 = 0;
    if (!error)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  bundle3 = [(MIInstallable *)self bundle];
  v140 = v7;
  v18 = [bundle3 frameworkBundlesWithError:&v140];
  v11 = v140;

  [(MIInstallableBundle *)self setFrameworkBundles:v18];
  frameworkBundles = [(MIInstallableBundle *)self frameworkBundles];

  if (!frameworkBundles)
  {
    goto LABEL_72;
  }

  bundle4 = [(MIInstallable *)self bundle];
  v139 = v11;
  v21 = [bundle4 appExtensionBundlesWithError:&v139];
  v7 = v139;

  [(MIInstallableBundle *)self setAppExtensionBundles:v21];
  appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];

  if (!appExtensionBundles)
  {
    goto LABEL_70;
  }

  bundle5 = [(MIInstallable *)self bundle];
  v138 = v7;
  v24 = [bundle5 driverKitExtensionBundlesWithError:&v138];
  v11 = v138;

  [(MIInstallableBundle *)self setDriverKitExtensionBundles:v24];
  driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];

  if (!driverKitExtensionBundles)
  {
    goto LABEL_72;
  }

  v26 = [NSMutableDictionary dictionaryWithCapacity:0];
  [(MIInstallableBundle *)self setIdentifiersMap:v26];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = [(MIInstallableBundle *)self frameworkBundles];
  v27 = [obj countByEnumeratingWithState:&v134 objects:v150 count:16];
  if (v27)
  {
    v28 = v27;
    v108 = *v135;
LABEL_16:
    v29 = 0;
    v30 = v11;
    while (1)
    {
      if (*v135 != v108)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v134 + 1) + 8 * v29);
      v133 = v30;
      v32 = [v31 checkExecutableExistsIfRequiredWithError:&v133];
      v11 = v133;

      if (!v32)
      {
        goto LABEL_60;
      }

      identifier = [v31 identifier];
      identifiersMap = [(MIInstallableBundle *)self identifiersMap];
      v35 = [identifiersMap objectForKeyedSubscript:identifier];

      if (v35)
      {
        v61 = MIInstallerErrorDomain;
        bundleURL = [v31 bundleURL];
        path = [bundleURL path];
        identifiersMap2 = [(MIInstallableBundle *)self identifiersMap];
        v65 = [identifiersMap2 objectForKeyedSubscript:identifier];
        path2 = [v65 path];
        sub_100010734("[MIInstallableBundle performPreflightWithError:]", 624, v61, 57, 0, &off_10009C470, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v67, path);
        v70 = LABEL_36:;

        v60 = 0;
        v11 = v70;
        goto LABEL_61;
      }

      bundleURL2 = [v31 bundleURL];
      identifiersMap3 = [(MIInstallableBundle *)self identifiersMap];
      [identifiersMap3 setObject:bundleURL2 forKeyedSubscript:identifier];

      v29 = v29 + 1;
      v30 = v11;
      if (v28 == v29)
      {
        v28 = [obj countByEnumeratingWithState:&v134 objects:v150 count:16];
        if (v28)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v38 = [obj countByEnumeratingWithState:&v129 objects:v149 count:16];
  if (v38)
  {
    v39 = v38;
    v109 = *v130;
LABEL_25:
    v40 = 0;
    v41 = v11;
    while (1)
    {
      if (*v130 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v129 + 1) + 8 * v40);
      v128 = v41;
      v43 = [v42 checkExecutableExistsIfRequiredWithError:&v128];
      v11 = v128;

      if (!v43)
      {
        goto LABEL_60;
      }

      identifier = [v42 identifier];
      identifiersMap4 = [(MIInstallableBundle *)self identifiersMap];
      v45 = [identifiersMap4 objectForKeyedSubscript:identifier];

      if (v45)
      {
        v68 = MIInstallerErrorDomain;
        bundleURL = [v42 bundleURL];
        path = [bundleURL path];
        identifiersMap2 = [(MIInstallableBundle *)self identifiersMap];
        v65 = [identifiersMap2 objectForKeyedSubscript:identifier];
        path2 = [v65 path];
        sub_100010734("[MIInstallableBundle performPreflightWithError:]", 639, v68, 57, 0, &off_10009C498, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v69, path);
        goto LABEL_36;
      }

      bundleURL3 = [v42 bundleURL];
      identifiersMap5 = [(MIInstallableBundle *)self identifiersMap];
      [identifiersMap5 setObject:bundleURL3 forKeyedSubscript:identifier];

      v40 = v40 + 1;
      v41 = v11;
      if (v39 == v40)
      {
        v39 = [obj countByEnumeratingWithState:&v129 objects:v149 count:16];
        if (v39)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  identifiersMap6 = [(MIInstallableBundle *)self identifiersMap];
  bundle6 = [(MIInstallable *)self bundle];
  identifier2 = [bundle6 identifier];
  v51 = [identifiersMap6 objectForKeyedSubscript:identifier2];

  if (v51)
  {
    v52 = MIInstallerErrorDomain;
    obj = [(MIInstallable *)self bundle];
    identifier3 = [obj identifier];
    identifiersMap7 = [(MIInstallableBundle *)self identifiersMap];
    bundle7 = [(MIInstallable *)self bundle];
    identifier4 = [bundle7 identifier];
    v57 = [identifiersMap7 objectForKeyedSubscript:identifier4];
    path3 = [v57 path];
    v59 = sub_100010734("[MIInstallableBundle performPreflightWithError:]", 646, v52, 57, 0, &off_10009C4C0, @"The parent bundle has the same identifier (%@) as sub-bundle at %@", v58, identifier3);

    v60 = 0;
    v11 = v59;
LABEL_61:

    goto LABEL_73;
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = [(MIInstallableBundle *)self driverKitExtensionBundles];
  v71 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v125;
LABEL_39:
    v74 = 0;
    v75 = v11;
    while (1)
    {
      if (*v125 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v76 = *(*(&v124 + 1) + 8 * v74);
      v123 = v75;
      v77 = [v76 checkExecutableExistsIfRequiredWithError:&v123];
      v11 = v123;

      if (!v77)
      {
        break;
      }

      v74 = v74 + 1;
      v75 = v11;
      if (v72 == v74)
      {
        v72 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
        if (v72)
        {
          goto LABEL_39;
        }

        goto LABEL_45;
      }
    }

LABEL_60:
    v60 = 0;
    goto LABEL_61;
  }

LABEL_45:

  if (isPlaceholderInstall)
  {
    v78 = objc_opt_new();
    frameworkBundles2 = [(MIInstallableBundle *)self frameworkBundles];
    [v78 addObjectsFromArray:frameworkBundles2];

    appExtensionBundles2 = [(MIInstallableBundle *)self appExtensionBundles];
    [v78 addObjectsFromArray:appExtensionBundles2];

    driverKitExtensionBundles2 = [(MIInstallableBundle *)self driverKitExtensionBundles];
    [v78 addObjectsFromArray:driverKitExtensionBundles2];

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v78;
    v82 = [obj countByEnumeratingWithState:&v119 objects:v147 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v120;
      while (2)
      {
        v85 = 0;
        v86 = v11;
        do
        {
          if (*v120 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v87 = *(*(&v119 + 1) + 8 * v85);
          v118 = v86;
          v88 = [v87 setIsPlaceholderWithError:&v118];
          v11 = v118;

          if (!v88)
          {

            goto LABEL_60;
          }

          v85 = v85 + 1;
          v86 = v11;
        }

        while (v83 != v85);
        v83 = [obj countByEnumeratingWithState:&v119 objects:v147 count:16];
        if (v83)
        {
          continue;
        }

        break;
      }
    }
  }

  bundle8 = [(MIInstallable *)self bundle];
  bundleType2 = [bundle8 bundleType];

  if (bundleType2 - 1 >= 5 && bundleType2 != 9)
  {
    goto LABEL_65;
  }

  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];

  bundle9 = [(MIInstallable *)self bundle];
  v93 = bundle9;
  if (existingBundleContainer)
  {
    existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
    bundle10 = [existingBundleContainer2 bundle];
    v117 = v11;
    v96 = [v93 transferInstallationIdentityFromBundle:bundle10 error:&v117];
    v7 = v117;

    if ((v96 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v116 = v11;
    v97 = [bundle9 makeAndSetNewInstallationIdentityWithError:&v116];
    v7 = v116;

    if (!v97)
    {
      goto LABEL_70;
    }
  }

  v11 = v7;
LABEL_65:
  v115 = v11;
  v98 = [(MIInstallableBundle *)self _verifyBundleMetadataWithError:&v115];
  v7 = v115;

  if (!v98)
  {
    goto LABEL_70;
  }

  bundle11 = [(MIInstallable *)self bundle];
  v114 = v7;
  v100 = [bundle11 validatePluginKitMetadataWithError:&v114];
  v11 = v114;

  if (!v100)
  {
LABEL_72:
    v60 = 0;
LABEL_73:
    v7 = v11;
    if (!error)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  bundle12 = [(MIInstallable *)self bundle];
  v113 = v11;
  v102 = [bundle12 validateExtensionKitMetadataWithError:&v113];
  v7 = v113;

  if (!v102)
  {
    goto LABEL_70;
  }

  bundle13 = [(MIInstallable *)self bundle];
  v112 = v7;
  v104 = [bundle13 validateDriverKitExtensionMetadataWithError:&v112];
  obj = v112;

  if (v104)
  {
    v111 = obj;
    v60 = [(MIInstallableBundle *)self _installEmbeddedProfilesWithError:&v111];
    v11 = v111;
    goto LABEL_61;
  }

  v60 = 0;
  v7 = obj;
  if (!error)
  {
    goto LABEL_76;
  }

LABEL_74:
  if (!v60)
  {
    v105 = v7;
    *error = v7;
  }

LABEL_76:

  return v60;
}

- (BOOL)applyPatchWithError:(id *)error
{
  v11.receiver = self;
  v11.super_class = MIInstallableBundle;
  v12 = 0;
  v5 = [(MIInstallable *)&v11 applyPatchWithError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    if ([(MIInstallable *)self isPatchUpdate])
    {
      bundle = [(MIInstallable *)self bundle];
      [bundle removeSinf];
    }
  }

  else if (error)
  {
    v9 = v6;
    *error = v7;
  }

  return v5;
}

- (BOOL)_performCompanionWatchAppValidationForWatchApp:(id)app withVersion:(unsigned __int8)version companionAppSigningInfo:(id)info frameworks:(id)frameworks error:(id *)error
{
  versionCopy = version;
  appCopy = app;
  infoCopy = info;
  frameworksCopy = frameworks;
  if (([appCopy isWatchApp] & 1) == 0)
  {
    v20 = @"Unknown";
    if (versionCopy == 3)
    {
      v20 = @"2.0";
    }

    if (versionCopy == 2)
    {
      v20 = @"1.0";
    }

    v15 = sub_100010734("[MIInstallableBundle _performCompanionWatchAppValidationForWatchApp:withVersion:companionAppSigningInfo:frameworks:error:]", 763, MIInstallerErrorDomain, 102, 0, &off_10009C4E8, @"WatchKit %@ app's UIDeviceFamily key does not specify that it's compatible with device family 4.", v14, v20);
    goto LABEL_14;
  }

  if ([infoCopy codeSignerType] == 2 && (objc_msgSend(appCopy, "isPlaceholder") & 1) == 0)
  {
    v41 = 0;
    v23 = [appCopy codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v41];
    v15 = v41;

    if (!v23)
    {
      goto LABEL_14;
    }

    errorCopy = error;
    v33 = frameworksCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = frameworksCopy;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      while (2)
      {
        v28 = 0;
        v29 = v15;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v37 + 1) + 8 * v28);
          v36 = v29;
          v31 = [v30 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:1 error:&v36];
          v15 = v36;

          if (!v31)
          {

            error = errorCopy;
            frameworksCopy = v33;
            goto LABEL_14;
          }

          v28 = v28 + 1;
          v29 = v15;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    error = errorCopy;
    frameworksCopy = v33;
  }

  else
  {
    v15 = 0;
  }

  if (versionCopy != 3)
  {
LABEL_8:
    v19 = 1;
    goto LABEL_17;
  }

  v35 = v15;
  v16 = [appCopy validatePluginKitMetadataWithError:&v35];
  v17 = v35;

  if (v16)
  {
    v34 = v17;
    v18 = [appCopy validateExtensionKitMetadataWithError:&v34];
    v15 = v34;

    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v17;
  }

LABEL_14:
  if (error)
  {
    v21 = v15;
    v19 = 0;
    *error = v15;
  }

  else
  {
    v19 = 0;
  }

LABEL_17:

  return v19;
}

- (BOOL)_validateCompanionAppStateInWatchKitApp:(id)app withVersion:(unsigned __int8)version isSystemAppInstall:(BOOL)install error:(id *)error
{
  versionCopy = version;
  appCopy = app;
  companionAppIdentifier = [appCopy companionAppIdentifier];
  isWatchOnlyApp = [appCopy isWatchOnlyApp];
  watchKitAppRunsIndependentlyOfCompanion = [appCopy watchKitAppRunsIndependentlyOfCompanion];
  bundle = [(MIInstallable *)self bundle];
  identifier = [bundle identifier];
  v15 = [identifier stringByAppendingString:@"."];

  if (isWatchOnlyApp && watchKitAppRunsIndependentlyOfCompanion)
  {
    sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 834, MIInstallerErrorDomain, 138, 0, &off_10009C510, @"This app defines both %@ and %@ in its Info.plist and/or its WatchKit extension's Info.plist. Having both defined is not allowed.", v16, @"WKWatchOnly");
    v17 = LABEL_6:;
    v18 = companionAppIdentifier;
    goto LABEL_7;
  }

  if (isWatchOnlyApp)
  {
    sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 853, MIInstallerErrorDomain, 135, 0, &off_10009C538, @"Watch-only apps cannot be contained in companion apps installed on the companion.", v16, v40);
    goto LABEL_6;
  }

  v18 = companionAppIdentifier;
  if (companionAppIdentifier)
  {
    bundle2 = [(MIInstallable *)self bundle];
    identifier2 = [bundle2 identifier];
    v24 = [companionAppIdentifier isEqualToString:identifier2];

    if (v24)
    {
      if (install)
      {
LABEL_14:
        v17 = 0;
        v20 = 1;
        goto LABEL_10;
      }

      identifier3 = [appCopy identifier];
      if ([identifier3 hasPrefix:v15])
      {
        identifier4 = [appCopy identifier];
        v34 = [identifier4 length];
        v35 = [v15 length];

        if (v34 > v35)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v36 = MIInstallerErrorDomain;
      v37 = @"Unknown";
      if (versionCopy == 3)
      {
        v37 = @"2.0";
      }

      if (versionCopy == 2)
      {
        v37 = @"1.0";
      }

      v38 = v37;
      identifier5 = [appCopy identifier];
      v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 874, v36, 101, 0, &off_10009C5B0, @"WatchKit %@ app's bundle ID %@ is not prefixed by the parent app's bundle ID followed by a '.' expected prefix %@", v39, v38);;

      goto LABEL_7;
    }

    v28 = MIInstallerErrorDomain;
    v29 = @"Unknown";
    if (versionCopy == 3)
    {
      v29 = @"2.0";
    }

    if (versionCopy == 2)
    {
      v29 = @"1.0";
    }

    v30 = v29;
    bundle3 = [(MIInstallable *)self bundle];
    identifier6 = [bundle3 identifier];
    v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 865, v28, 97, 0, &off_10009C588, @"Invalid value of WKCompanionAppBundleIdentifier key in WatchKit %@ app's Info.plist: %@ (expected %@)", v31, v30);
  }

  else
  {
    v25 = MIInstallerErrorDomain;
    bundle3 = [appCopy identifier];
    v17 = sub_100010734("[MIInstallableBundle _validateCompanionAppStateInWatchKitApp:withVersion:isSystemAppInstall:error:]", 858, v25, 97, 0, &off_10009C560, @"%@: Missing WKCompanionAppBundleIdentifier key in WatchKit %@ app's Info.plist", v27, bundle3);
  }

LABEL_7:
  if (error)
  {
    v19 = v17;
    v20 = 0;
    *error = v17;
  }

  else
  {
    v20 = 0;
  }

LABEL_10:

  return v20;
}

- (BOOL)_isValidWatchKitApp:(id)app withVersion:(unsigned __int8)version installableSigningInfo:(id)info isSystemAppInstall:(BOOL)install error:(id *)error
{
  installCopy = install;
  versionCopy = version;
  appCopy = app;
  infoCopy = info;
  if ([appCopy isExtensionBasedWatchKitApp] && objc_msgSend(infoCopy, "codeSignerType") == 3)
  {
    entitlements = [infoCopy entitlements];
    if (sub_10004C498(entitlements) & 1) != 0 || ([appCopy isPlaceholder])
    {
      v15 = 0;
    }

    else
    {
      v15 = [appCopy isApplicableToOSVersionEarlierThan:@"9.0"] & !installCopy;
    }
  }

  else
  {
    v15 = 0;
  }

  if ([appCopy minimumWatchOSVersionIsPreV6])
  {
    v54 = 0;
    v16 = [appCopy hasOnlyAllowedWatchKitAppInfoPlistKeysForWatchKitVersion:versionCopy error:&v54];
    v17 = v54;
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v53 = v17;
  v19 = [(MIInstallableBundle *)self _validateCompanionAppStateInWatchKitApp:appCopy withVersion:versionCopy isSystemAppInstall:installCopy error:&v53];
  v17 = v53;

  if (!v19)
  {
LABEL_19:
    v20 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_30;
  }

  v46 = infoCopy;
  v52 = v17;
  v20 = [appCopy frameworkBundlesWithError:&v52];
  v21 = v52;

  if (!v20)
  {
    v27 = 0;
    v28 = 0;
LABEL_27:
    v17 = v21;
    goto LABEL_29;
  }

  if ([v20 count] && objc_msgSend(appCopy, "isApplicableToOSVersion:error:", @"2.9.9", 0))
  {
    v22 = MIInstallerErrorDomain;
    identifier = [v20 objectAtIndexedSubscript:0];
    bundleURL = [identifier bundleURL];
    path = [bundleURL path];
    v17 = sub_100010734("[MIInstallableBundle _isValidWatchKitApp:withVersion:installableSigningInfo:isSystemAppInstall:error:]", 927, v22, 119, 0, &off_10009C5D8, @"WatchKit 2 app contains a framework at %@. Frameworks are only allowed at that location in WatchKit apps compatible with watchOS 3.0 or later.", v26, path);

    v27 = 0;
    v28 = 0;
    infoCopy = v46;
LABEL_18:

    goto LABEL_30;
  }

  v51 = v21;
  v27 = [appCopy pluginKitBundlesWithError:&v51];
  v17 = v51;

  if (!v27)
  {
    v28 = 0;
    goto LABEL_29;
  }

  v50 = v17;
  v28 = [appCopy extensionKitBundlesWithError:&v50];
  v21 = v50;

  if (!v28)
  {
    goto LABEL_27;
  }

  v49 = v21;
  v44 = [(MIInstallableBundle *)self _performCompanionWatchAppValidationForWatchApp:appCopy withVersion:versionCopy companionAppSigningInfo:v46 frameworks:v20 error:&v49];
  v17 = v49;

  if (v44)
  {
    v45 = v17;
    if (versionCopy == 3)
    {
      infoCopy = v46;
      if (v15)
      {
        v33 = +[MIDaemonConfiguration sharedInstance];
        codeSigningEnforcementIsDisabled = [v33 codeSigningEnforcementIsDisabled];

        if (codeSigningEnforcementIsDisabled)
        {
          v35 = v45;
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            MOLogWrite();
          }
        }

        else
        {
          v48 = v45;
          v40 = [MICodeSigningVerifier validateWatchKitV2StubExecutableBundle:appCopy error:&v48];
          v41 = v48;

          if ((v40 & 1) == 0)
          {
            identifier = v41;
            v17 = sub_100010734("[MIInstallableBundle _isValidWatchKitApp:withVersion:installableSigningInfo:isSystemAppInstall:error:]", 972, MIInstallerErrorDomain, 72, v41, &off_10009C600, @"The WatchKit 2.0 app being installed contains an invalid application executable.", v42, v43);
            goto LABEL_18;
          }

          v35 = v41;
        }
      }

      else
      {
        v35 = v17;
      }

      v38 = ([appCopy isPlaceholder] & 1) == 0 && objc_msgSend(v46, "codeSignerType") == 2;
      v47 = v35;
      v39 = [(MIInstallableBundle *)self _verifyPluginKitPlugins:v27 extensionKitExtensions:v28 inWatchKit2App:appCopy checkAppexSignatures:v38 checkFrameworkSignature:v38 error:&v47];
      v17 = v47;

      if ((v39 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      infoCopy = v46;
      if (versionCopy != 2)
      {
        v36 = MIInstallerErrorDomain;
        identifier = [appCopy identifier];
        v17 = sub_100010734("[MIInstallableBundle _isValidWatchKitApp:withVersion:installableSigningInfo:isSystemAppInstall:error:]", 1006, v36, 4, 0, 0, @"Unknown WatchKit app version while validating %@: %hhu", v37, identifier);

        goto LABEL_18;
      }

      v17 = sub_100010734("[MIInstallableBundle _isValidWatchKitApp:withVersion:installableSigningInfo:isSystemAppInstall:error:]", 956, MIInstallerErrorDomain, 133, 0, 0, @"WatchKit version %hhu is no longer supported", v29, 2);
    }

    v31 = 1;
    goto LABEL_33;
  }

LABEL_29:
  infoCopy = v46;
LABEL_30:
  if (error)
  {
    v30 = v17;
    v31 = 0;
    *error = v17;
  }

  else
  {
    v31 = 0;
  }

LABEL_33:

  return v31;
}

- (BOOL)_verifyPluginKitPlugins:(id)plugins extensionKitExtensions:(id)extensions inWatchKit2App:(id)app checkAppexSignatures:(BOOL)signatures checkFrameworkSignature:(BOOL)signature error:(id *)error
{
  signatureCopy = signature;
  signaturesCopy = signatures;
  pluginsCopy = plugins;
  extensionsCopy = extensions;
  appCopy = app;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = pluginsCopy;
  v57 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
  v17 = 0;
  v18 = 0;
  if (!v57)
  {
    goto LABEL_23;
  }

  v58 = *v72;
  errorCopy = error;
  v52 = extensionsCopy;
  v50 = appCopy;
  v55 = v16;
  v48 = signatureCopy;
  v49 = signaturesCopy;
  while (2)
  {
    for (i = 0; i != v57; i = i + 1)
    {
      if (*v72 != v58)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v71 + 1) + 8 * i);
      if (signaturesCopy)
      {
        v70 = v18;
        v21 = [v20 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v70];
        v22 = v70;

        if (!v21)
        {
          identifier = v16;
LABEL_51:
          error = errorCopy;
          extensionsCopy = v52;
          appCopy = v50;
          goto LABEL_47;
        }
      }

      else
      {
        v22 = v18;
      }

      v69 = v22;
      v23 = [v20 frameworkBundlesWithError:&v69];
      v18 = v69;

      if (!v23)
      {
        identifier = v16;
        v22 = v18;
        goto LABEL_51;
      }

      if (signatureCopy)
      {
        v53 = v17;
        v68 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v22 = v23;
        v24 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v66;
          while (2)
          {
            v27 = 0;
            v28 = v18;
            do
            {
              if (*v66 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v29 = *(*(&v65 + 1) + 8 * v27);
              v64 = v28;
              v30 = [v29 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:1 error:&v64];
              v18 = v64;

              if (!v30)
              {

                v16 = v55;
                identifier = v55;
                error = errorCopy;
                extensionsCopy = v52;
                appCopy = v50;
                goto LABEL_46;
              }

              v27 = v27 + 1;
              v28 = v18;
            }

            while (v25 != v27);
            v25 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v16 = v55;
        v17 = v53;
        signatureCopy = v48;
        signaturesCopy = v49;
      }

      v17 |= [v20 isWatchKitExtension];
    }

    error = errorCopy;
    extensionsCopy = v52;
    appCopy = v50;
    v57 = [v16 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_23:

  if (signaturesCopy)
  {
    v54 = v17;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    identifier = extensionsCopy;
    v31 = [identifier countByEnumeratingWithState:&v60 objects:v75 count:16];
    v56 = v16;
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      while (2)
      {
        v34 = 0;
        v35 = v18;
        do
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(identifier);
          }

          v36 = *(*(&v60 + 1) + 8 * v34);
          v59 = v35;
          v37 = [v36 codeSigningInfoByValidatingResources:1 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v59];
          v18 = v59;

          if (!v37)
          {
            v22 = v18;
            v16 = v56;
            goto LABEL_47;
          }

          v34 = v34 + 1;
          v35 = v18;
        }

        while (v32 != v34);
        v32 = [identifier countByEnumeratingWithState:&v60 objects:v75 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v22 = v18;
    v16 = v56;
    v17 = v54;
  }

  else
  {
    v22 = v18;
  }

  if ([appCopy isExtensionlessWatchKitApp] && objc_msgSend(appCopy, "isExtensionBasedWatchKitApp"))
  {
    v38 = MIInstallerErrorDomain;
    identifier = [appCopy identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1083, v38, 144, 0, &off_10009C628, @"WatchKit app %@ has both WKApplication and WKWatchKitApp Info.plist keys. A WatchKit app should only have one of these keys.", v39, identifier);
    goto LABEL_45;
  }

  if (([appCopy isExtensionlessWatchKitApp] & v17) == 1)
  {
    v40 = MIInstallerErrorDomain;
    identifier = [appCopy identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1086, v40, 143, 0, &off_10009C650, @"Extensionless WatchKit app %@ has a WatchKit extension.", v41, identifier);
    goto LABEL_45;
  }

  if (v17 & 1 | (([appCopy isExtensionBasedWatchKitApp] & 1) == 0))
  {
    v42 = 1;
  }

  else
  {
    v43 = MIInstallerErrorDomain;
    identifier = [appCopy identifier];
    sub_100010734("[MIInstallableBundle _verifyPluginKitPlugins:extensionKitExtensions:inWatchKit2App:checkAppexSignatures:checkFrameworkSignature:error:]", 1089, v43, 96, 0, &off_10009C678, @"Extension-based WatchKit 2 app %@ is missing its app extension.", v44, identifier);
    v18 = LABEL_45:;
LABEL_46:

    v22 = v18;
LABEL_47:

    if (error)
    {
      v45 = v22;
      v42 = 0;
      *error = v22;
    }

    else
    {
      v42 = 0;
    }
  }

  return v42;
}

- (id)_validateBundle:(id)bundle validatingResources:(BOOL)resources performingOnlineAuthorization:(BOOL)authorization checkingTrustCacheIfApplicable:(BOOL)applicable allowingFreeProfileValidation:(BOOL)validation skippingProfileIDValidation:(BOOL)dValidation error:(id *)error
{
  dValidationCopy = dValidation;
  applicableCopy = applicable;
  authorizationCopy = authorization;
  resourcesCopy = resources;
  bundleCopy = bundle;
  v33 = 0;
  v16 = [bundleCopy codeSigningInfoByValidatingResources:resourcesCopy performingOnlineAuthorization:authorizationCopy ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:applicableCopy skippingProfileIDValidation:dValidationCopy error:&v33];
  v17 = v33;
  identifier = v17;
  if (!v16)
  {
    v22 = v17;
    goto LABEL_12;
  }

  if (!-[MIInstallableBundle isPlaceholderInstall](self, "isPlaceholderInstall") && [bundleCopy codeSignatureVerificationState] != 2 || -[MIInstallableBundle isPlaceholderInstall](self, "isPlaceholderInstall") && objc_msgSend(bundleCopy, "codeSignatureVerificationState") != 1)
  {
    v28 = MIInstallerErrorDomain;
    codeSignatureVerificationState = [bundleCopy codeSignatureVerificationState];
    v22 = sub_100010734("[MIInstallableBundle _validateBundle:validatingResources:performingOnlineAuthorization:checkingTrustCacheIfApplicable:allowingFreeProfileValidation:skippingProfileIDValidation:error:]", 1121, v28, 4, 0, 0, @"Unexpectedly failed to validate code signing (status %lu) for %@", v30, codeSignatureVerificationState);
LABEL_15:

    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  identity = [(MIInstallable *)self identity];
  personaUniqueString = [identity personaUniqueString];
  v32 = identifier;
  v21 = [bundleCopy hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:v16 forPersona:personaUniqueString error:&v32];
  v22 = v32;

  if (!v21)
  {
LABEL_12:
    if (!error)
    {
LABEL_16:
      v27 = 0;
      goto LABEL_18;
    }

LABEL_13:
    v26 = v22;
    v27 = 0;
    *error = v22;
    goto LABEL_18;
  }

  if ([bundleCopy codeSignatureVerificationState] == 2 && objc_msgSend(v16, "profileValidationType") == 3 && !validation)
  {
    v23 = MIInstallerErrorDomain;
    identifier = [bundleCopy identifier];
    v25 = sub_100010734("[MIInstallableBundle _validateBundle:validatingResources:performingOnlineAuthorization:checkingTrustCacheIfApplicable:allowingFreeProfileValidation:skippingProfileIDValidation:error:]", 1130, v23, 111, 0, &off_10009C6A0, @"The bundle being installed with bundle ID %@ is authorized by a free provisioning profile, but apps validated by those are not allowed to be installed from this source.", v24, identifier);

    v22 = v25;
    goto LABEL_15;
  }

  v27 = v16;
LABEL_18:

  return v27;
}

- (BOOL)_validateApplicationIdentifierForNewBundleSigningInfo:(id)info error:(id *)error
{
  infoCopy = info;
  entitlements = [infoCopy entitlements];
  v8 = sub_10004C3B0(entitlements);
  if (v8)
  {
    goto LABEL_2;
  }

  v24 = +[MIDaemonConfiguration sharedInstance];
  if ([v24 codeSigningEnforcementIsDisabled])
  {
    codeSignerType = [infoCopy codeSignerType];

    if (codeSignerType == 1)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        bundle = [(MIInstallable *)self bundle];
        identifier = [bundle identifier];
        MOLogWrite();
      }

LABEL_2:
      existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
      if (!existingBundleContainer || (v10 = existingBundleContainer, -[MIInstallable existingBundleContainer](self, "existingBundleContainer"), v11 = objc_claimAutoreleasedReturnValue(), [v11 bundle], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v8) || !v12)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
        {
          bundle2 = [(MIInstallable *)self bundle];
          identifier2 = [bundle2 identifier];
          MOLogWrite();
        }

        goto LABEL_72;
      }

      existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
      bundle3 = [existingBundleContainer2 bundle];
      v15 = [bundle3 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];

      entitlements2 = [v15 entitlements];
      v17 = sub_10004C3B0(entitlements2);

      if (v15 && v17)
      {
        codeSignerType2 = [infoCopy codeSignerType];
        codeSignerType3 = [v15 codeSignerType];
        if ([(MIInstallableBundle *)self isPlaceholderInstall])
        {
          goto LABEL_8;
        }

        existingBundleContainer3 = [(MIInstallable *)self existingBundleContainer];
        bundle4 = [existingBundleContainer3 bundle];
        if ([bundle4 isPlaceholder])
        {
          if (codeSignerType2 == 2)
          {

LABEL_53:
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }

          v42 = sub_10004C498(entitlements);

          if (v42)
          {
            goto LABEL_53;
          }

          v41 = 0;
          v39 = codeSignerType3 == 2;
        }

        else
        {

          v39 = codeSignerType3 == 2;
          v40 = codeSignerType2 == 2;
          v41 = codeSignerType2 == 2;
          if (v40 && codeSignerType3 == 2)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        if (sub_10004C498(entitlements) && ([v15 entitlements], v43 = objc_claimAutoreleasedReturnValue(), v44 = sub_10004C498(v43), v43, v44))
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

        else if (v41 && ([v15 entitlements], v45 = objc_claimAutoreleasedReturnValue(), v46 = sub_10004C498(v45), v45, v46))
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if ((sub_10004C498(entitlements) & v39) != 1)
          {
LABEL_8:
            if ([v8 isEqualToString:v17])
            {
LABEL_71:

LABEL_72:
              v28 = 0;
              v30 = 1;
              goto LABEL_73;
            }

            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              MOLogWrite();
            }

            v20 = sub_10004C430(entitlements);
            v22 = v20;
            if (v20 && [v20 containsObject:v17])
            {

              goto LABEL_71;
            }

            if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
            {
              MOLogWrite();
            }

            v28 = sub_100010734("[MIInstallableBundle _validateApplicationIdentifierForNewBundleSigningInfo:error:]", 1251, MIInstallerErrorDomain, 64, 0, &off_10009C6F0, @"Upgrade's application-identifier entitlement string (%@) does not match installed application's application-identifier string (%@) rejecting upgrade.", v21, v8);;

            if (!error)
            {
              goto LABEL_51;
            }

            goto LABEL_25;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
          {
            goto LABEL_71;
          }
        }

LABEL_70:
        MOLogWrite();
        goto LABEL_71;
      }

      if ([(MIInstallableBundle *)self isPlaceholderInstall])
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          bundle5 = [(MIInstallable *)self bundle];
          identifier3 = [bundle5 identifier];
          MOLogWrite();
        }

        goto LABEL_71;
      }

      bundle6 = [(MIInstallable *)self bundle];
      identifier4 = [bundle6 identifier];

      existingBundleContainer4 = [(MIInstallable *)self existingBundleContainer];
      bundle7 = [existingBundleContainer4 bundle];
      isPlaceholder = [bundle7 isPlaceholder];

      if (isPlaceholder)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
        {
          goto LABEL_40;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_40;
      }

      MOLogWrite();
LABEL_40:

      goto LABEL_71;
    }
  }

  else
  {
  }

  v28 = sub_100010734("[MIInstallableBundle _validateApplicationIdentifierForNewBundleSigningInfo:error:]", 1173, MIInstallerErrorDomain, 63, 0, &off_10009C6C8, @"Application is missing the application-identifier entitlement.", v26, identifier);
  if (!error)
  {
LABEL_51:
    v30 = 0;
    goto LABEL_73;
  }

LABEL_25:
  v29 = v28;
  v30 = 0;
  *error = v28;
LABEL_73:

  return v30;
}

- (BOOL)_performWatchVerificationForSigningInfo:(id)info isSystemAppInstall:(BOOL)install withError:(id *)error
{
  installCopy = install;
  infoCopy = info;
  bundle = [(MIInstallable *)self bundle];
  v32 = 0;
  v10 = [bundle watchKitV2AppBundleWithError:&v32];
  v11 = v32;
  v12 = v11;
  if (v10)
  {
    if (installCopy)
    {
      v13 = MIInstallerErrorDomain;
      bundleURL = [v10 bundleURL];
      path = [bundleURL path];
      identifier = [bundle identifier];
      v18 = sub_100010734("[MIInstallableBundle _performWatchVerificationForSigningInfo:isSystemAppInstall:withError:]", 1350, v13, 92, v12, &off_10009C718, @"Embedded WatchKit apps are not allowed in deletable system apps (found one at %@ in %@).", v17, path);

      v12 = v18;
LABEL_13:

      goto LABEL_14;
    }

    v31 = v11;
    v20 = [v10 watchKitVersionWithError:&v31];
    identifier = v31;

    if (v20 != 3)
    {
      v25 = MIInstallerErrorDomain;
      bundleURL = [v10 bundleURL];
      path = [bundleURL path];
      v12 = sub_100010734("[MIInstallableBundle _performWatchVerificationForSigningInfo:isSystemAppInstall:withError:]", 1355, v25, 92, identifier, &off_10009C740, @"Found WatchKit app at %@ but it was not a WatchKit 2 app (was version %@). Is it missing its app extension?", v26, path);
      goto LABEL_13;
    }

    v30 = identifier;
    v21 = [v10 checkExecutableExistsIfRequiredWithError:&v30];
    v22 = v30;

    if (!v21)
    {
      v12 = v22;
      if (error)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v29 = v22;
    v23 = [(MIInstallableBundle *)self _isValidWatchKitApp:v10 withVersion:3 installableSigningInfo:infoCopy isSystemAppInstall:0 error:&v29];
    v12 = v29;

    if (!v23)
    {
LABEL_15:
      if (error)
      {
LABEL_16:
        v27 = v12;
        v24 = 0;
        *error = v12;
        goto LABEL_19;
      }

LABEL_18:
      v24 = 0;
      goto LABEL_19;
    }

    [(MIInstallableBundle *)self setEmbeddedWatchApp:v10];
  }

  else
  {
    bundleURL = [v11 domain];
    if (![bundleURL isEqualToString:MIInstallerErrorDomain])
    {
LABEL_14:

      goto LABEL_15;
    }

    code = [v12 code];

    if (code != 85)
    {
      goto LABEL_15;
    }

    v12 = 0;
  }

  v24 = 1;
LABEL_19:

  return v24;
}

- (BOOL)_getLinkedParentBundleID:(id *)d withError:(id *)error
{
  bundle = [(MIInstallable *)self bundle];
  identifier = [bundle identifier];

  installOptions = [(MIInstallable *)self installOptions];
  linkedParentBundleID = [installOptions linkedParentBundleID];

  v11 = 0;
  if ([(MIInstallableBundle *)self isPlaceholderInstall]&& !linkedParentBundleID)
  {
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
    v13 = existingBundleContainer;
    if (existingBundleContainer)
    {
      v21 = 0;
      v14 = [existingBundleContainer bundleMetadataWithError:&v21];
      v16 = v21;
      if (!v14)
      {
        v11 = sub_100010734("[MIInstallableBundle _getLinkedParentBundleID:withError:]", 1419, MIInstallerErrorDomain, 4, v16, 0, @"Failed to read previously set bundle metadata for %@", v15, identifier);

        if (error)
        {
          v20 = v11;
          linkedParentBundleID = 0;
          v18 = 0;
          *error = v11;
        }

        else
        {
          linkedParentBundleID = 0;
          v18 = 0;
        }

        goto LABEL_11;
      }

      linkedParentBundleID = [v14 linkedParentBundleID];
    }

    else
    {
      linkedParentBundleID = 0;
      v16 = 0;
    }

    v11 = v16;
  }

  if (d)
  {
    v17 = linkedParentBundleID;
    *d = linkedParentBundleID;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

- (BOOL)_validateLinkedParentForSigningInfo:(id)info appManagementDomainValue:(unint64_t)value error:(id *)error
{
  infoCopy = info;
  isPlaceholderInstall = [(MIInstallableBundle *)self isPlaceholderInstall];
  v10 = +[MIDaemonConfiguration sharedInstance];
  localSigningIsUnrestricted = [v10 localSigningIsUnrestricted];

  bundle = [(MIInstallable *)self bundle];
  identifier = [bundle identifier];

  codeSignerType = [infoCopy codeSignerType];
  v39 = 0;
  v40 = 0;
  LODWORD(self) = [(MIInstallableBundle *)self _getLinkedParentBundleID:&v40 withError:&v39];
  v15 = v40;
  v17 = v39;
  if (!self)
  {
    goto LABEL_44;
  }

  errorCopy = error;
  if (!v15)
  {
    LOBYTE(v19) = 0;
    goto LABEL_17;
  }

  v18 = v15;
  if ([v18 isEqualToString:@"com.apple.Playgrounds"])
  {

    LOBYTE(v19) = 1;
    goto LABEL_17;
  }

  v37 = identifier;
  v42 = 0;
  v20 = +[MITestManager sharedInstance];
  v41 = 0;
  v21 = [v20 isRunningInTestMode:&v42 outError:&v41];
  v36 = v41;

  if (!v21)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
      v22 = v36;
      v19 = 0;
      identifier = v37;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v42 != 1)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = [v18 isEqualToString:@"com.apple.mock.Playgrounds"];
LABEL_13:
  v22 = v36;
  identifier = v37;
LABEL_14:

  if (((v19 | localSigningIsUnrestricted) & 1) == 0)
  {
    v23 = +[MITestManager sharedInstance];
    v24 = [v23 testFlagsAreSet:4];

    if ((v24 & 1) == 0)
    {
      identifier = v37;
      sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1462, MIInstallerErrorDomain, 195, 0, &off_10009C768, @"App %@ specified %@ as its linked parent app but that app isn't an allowed parent app.", v16, v37);
      goto LABEL_41;
    }

    LOBYTE(v19) = 0;
    identifier = v37;
  }

LABEL_17:
  if (!isPlaceholderInstall)
  {
    if (codeSignerType != 5)
    {
      goto LABEL_31;
    }

    if (localSigningIsUnrestricted)
    {
      goto LABEL_23;
    }

    if (value != 1 || v15)
    {
      if (v15)
      {
        if (value != 1)
        {
          goto LABEL_23;
        }

        sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1484, MIInstallerErrorDomain, 197, 0, &off_10009C7E0, @"App %@ was signed with a local key but did not have the %@ entitlement.", v16, identifier);
      }

      else
      {
        sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1481, MIInstallerErrorDomain, 196, 0, &off_10009C7B8, @"App %@ was signed with a local key but did not have linked parent bundle ID specified.", v16, identifier);
      }
    }

    else
    {
      sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1478, MIInstallerErrorDomain, 170, 0, &off_10009C790, @"App %@ was signed with a local key but did not specify either the %@ entitlement or a linked parent bundle ID.", v16, identifier);
    }

    v30 = LABEL_41:;
    goto LABEL_42;
  }

  if (value == 1 && !v15)
  {
    goto LABEL_31;
  }

LABEL_23:
  v25 = v19 ^ 1;
  if (value == 2)
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = MIInstallerErrorDomain;
    [infoCopy entitlements];
    v28 = v27 = identifier;
    v35 = sub_10004C574(v28);
    v30 = sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1497, v26, 168, 0, &off_10009C808, @"App %@ linked to Swift Playgrounds did not have the %@ entitlement set to a value prefixed by swift-playgrounds (found %@).", v29, v27);

    v17 = v28;
    identifier = v27;
LABEL_42:
    error = errorCopy;
    goto LABEL_43;
  }

  if (value == 2)
  {
    v31 = v19;
  }

  else
  {
    v31 = 1;
  }

  error = errorCopy;
  if (v31)
  {
LABEL_31:
    v32 = 1;
    goto LABEL_47;
  }

  v30 = sub_100010734("[MIInstallableBundle _validateLinkedParentForSigningInfo:appManagementDomainValue:error:]", 1500, MIInstallerErrorDomain, 169, 0, &off_10009C830, @"App %@ with the %@ entitlement set to a value prefixed by swift-playgrounds did not specify a linkage to the Swift Playgrounds app.", v16, identifier);
LABEL_43:

  v17 = v30;
LABEL_44:
  if (error)
  {
    v33 = v17;
    v32 = 0;
    *error = v17;
  }

  else
  {
    v32 = 0;
  }

LABEL_47:

  return v32;
}

- (BOOL)_validateAppManagementDomainForSigningInfo:(id)info error:(id *)error
{
  infoCopy = info;
  bundle = [(MIInstallable *)self bundle];
  identifier = [bundle identifier];

  entitlements = [infoCopy entitlements];
  v10 = sub_10004C664(entitlements);
  v11 = +[MIDaemonConfiguration sharedInstance];
  localSigningIsUnrestricted = [v11 localSigningIsUnrestricted];

  if (v10 || (localSigningIsUnrestricted & 1) != 0)
  {
    v20 = 0;
    v16 = [(MIInstallableBundle *)self _validateLinkedParentForSigningInfo:infoCopy appManagementDomainValue:v10 error:&v20];
    v15 = v20;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MIInstallerErrorDomain;
    v19 = sub_10004C574(entitlements);
    v15 = sub_100010734("[MIInstallableBundle _validateAppManagementDomainForSigningInfo:error:]", 1524, v13, 194, 0, 0, @"App %@ has a value for its %@ entitlement that is not allowed: %@.", v14, identifier);

    v16 = 0;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (!v16)
  {
    v17 = v15;
    *error = v15;
  }

LABEL_8:

  return v16;
}

- (BOOL)_performAppClipSpecificValidationForEntitlements:(id)entitlements isAppClip:(BOOL *)clip withError:(id *)error
{
  entitlementsCopy = entitlements;
  v8 = sub_10004C2E4(entitlementsCopy);
  v59 = [NSSet setWithObjects:@"com.apple.widgetkit-extension"];
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    v21 = 0;
    v13 = 0;
    v16 = 0;
    v57 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v9 = sub_10004C3B0(entitlementsCopy);
  v10 = sub_10004C2F4(entitlementsCopy);
  v57 = v9;
  if (!v10)
  {
    v26 = MIInstallerErrorDomain;
    bundle = [(MIInstallable *)self bundle];
    identifier = [bundle identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1578, v26, 145, 0, &off_10009C858, @"Attempted to install an app clip with bundleID %@ which is on demand install capable but doesn't have the %@ entitlement", v29, identifier);

    v11 = 0;
LABEL_20:
    v12 = 0;
    v21 = 0;
    v13 = 0;
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  if ([v10 count] != 1)
  {
    v30 = MIInstallerErrorDomain;
    bundle2 = [(MIInstallable *)self bundle];
    identifier2 = [bundle2 identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1584, v30, 151, 0, &off_10009C880, @"Attempted to install an app clip with bundleID %@ which has %ld parent identifiers in the %@ entitlement", v33, identifier2);

    goto LABEL_20;
  }

  v12 = [v11 objectAtIndex:0];
  v13 = [v12 stringByAppendingString:@"."];
  if (![v9 hasPrefix:v13] || (v15 = objc_msgSend(v9, "length"), v15 <= objc_msgSend(v13, "length")))
  {
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1592, MIInstallerErrorDomain, 150, 0, &off_10009C8A8, @"Application identifier of the parent app, %@, is not a prefix of the application identifier of the app clip, %@", v14, v12);
    v21 = 0;
    goto LABEL_22;
  }

  v16 = [v9 substringFromIndex:{objc_msgSend(v13, "length")}];
  if ([v16 containsString:@"."])
  {
    v53 = MIInstallerErrorDomain;
    bundle3 = [(MIInstallable *)self bundle];
    identifier3 = [bundle3 identifier];
    v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1598, v53, 149, 0, &off_10009C8D0, @"App clip with bundleID %@ contains a '.' in the portion after the parent app's prefix (prefix: %@  dot in: %@)'", v19, identifier3);;

LABEL_8:
    v21 = 0;
    goto LABEL_23;
  }

  v34 = sub_10004C4A8(entitlementsCopy);
  if (!v34)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [(MIInstallableBundle *)self appExtensionBundles];
    v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v55)
    {
      v51 = *v61;
      while (2)
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v61 != v51)
          {
            objc_enumerationMutation(obj);
          }

          extensionPointIdentifier = [*(*(&v60 + 1) + 8 * i) extensionPointIdentifier];
          if (![v59 containsObject:extensionPointIdentifier])
          {
            v52 = MIInstallerErrorDomain;
            bundle4 = [(MIInstallable *)self bundle];
            identifier4 = [bundle4 identifier];
            v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1614, v52, 173, 0, &off_10009C920, @"The App Clip with bundle ID %@ contains an app extension with an extension point that is not allowed within an App Clip, %@.", v47, identifier4);

            goto LABEL_8;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    embeddedWatchApp = [(MIInstallableBundle *)self embeddedWatchApp];

    if (embeddedWatchApp)
    {
      v41 = MIInstallerErrorDomain;
      v42 = &off_10009C948;
      v43 = @"App clip contains an embedded watch app";
      v44 = 1622;
      v45 = 146;
LABEL_40:
      v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", v44, v41, v45, 0, v42, v43, v40, @"com.apple.background-asset-downloader-extension");
      goto LABEL_8;
    }

    driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v20 = [driverKitExtensionBundles count];

    if (v20)
    {
      v41 = MIInstallerErrorDomain;
      v42 = &off_10009C970;
      v43 = @"App clip contains a DriverKit bundle";
      v44 = 1629;
      v45 = 179;
      goto LABEL_40;
    }

    v21 = 0;
LABEL_10:
    v22 = 1;
    if (!clip)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = v34;
  v50 = MIInstallerErrorDomain;
  bundle5 = [(MIInstallable *)self bundle];
  identifier5 = [bundle5 identifier];
  v20 = sub_100010734("[MIInstallableBundle _performAppClipSpecificValidationForEntitlements:isAppClip:withError:]", 1606, v50, 148, 0, &off_10009C8F8, @"App clip with bundleID %@ has the %@ entitlement, which is not allowed on app clips", v36, identifier5);

LABEL_23:
  v22 = 0;
  if (clip)
  {
LABEL_11:
    *clip = v8;
  }

LABEL_12:
  if (error)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v20;
    *error = v20;
  }

  return v22;
}

- (BOOL)_performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_100042B8C;
  v112 = sub_100042B9C;
  v113 = 0;
  bundle = [(MIInstallable *)self bundle];
  entitlements = [infoCopy entitlements];
  v8 = sub_10004CBC8(entitlements);
  v81 = infoCopy;
  v82 = bundle;
  if (!(v8 & 1 | ((sub_10004CBD8(entitlements) & 1) == 0)))
  {
    relativePath = [bundle relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1670, MIInstallerErrorDomain, 216, 0, 0, @"%@ has the %@ entitlement, but it does not have the %@ entitlement. The %@ entitlement is only available to apps with the %@ entitlement.", v14, relativePath);
    goto LABEL_5;
  }

  v9 = sub_10004CA78(entitlements);
  v10 = sub_10004CA88(entitlements);
  if ((v9 & v10) == 1)
  {
    relativePath = [bundle relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1681, MIInstallerErrorDomain, 212, 0, 0, @"%@ has both the %@ entitlement and the %@ entitlement. Only one of these entitlements may be present at a time. Remove one of these entitlements to allow this app to be installed.", v12, relativePath);
LABEL_5:
    relativePath5 = v109[5];
    v109[5] = v13;
LABEL_6:

    v16 = 0;
    goto LABEL_7;
  }

  if ((v10 & v8) == 1)
  {
    relativePath = [bundle relativePath];
    v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1688, MIInstallerErrorDomain, 214, 0, 0, @"%@ has the %@ entitlement so it may not also have the %@ entitlement. Remove one of these entitlements to allow this app to be installed.", v19, relativePath);
    goto LABEL_5;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  if (MGGetBoolAnswer())
  {
    if (![objc_opt_class() _shouldSkipEligibilityChecksForAppWithSigningInfo:infoCopy])
    {
      if (v8)
      {
        v34 = (v109 + 5);
        v107 = v109[5];
        v35 = [bundle hasExecutableSliceForCPUType:16777228 subtype:2 error:&v107];
        objc_storeStrong(v34, v107);
        if ((v35 & 1) == 0)
        {
          v42 = v109[5];
          relativePath = [bundle relativePath];
          v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1721, MIInstallerErrorDomain, 202, v42, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v43, relativePath);
          goto LABEL_5;
        }

        v36 = v109[5];
        v109[5] = 0;

        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_100042BA4;
        v104[3] = &unk_100091928;
        v106 = &v108;
        v105 = bundle;
        v37 = [v105 enumerateDylibsWithBlock:v104];
        relativePath = v37;
        v38 = v109;
        if (!v109[5])
        {
          if (!v37)
          {
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            frameworkBundles = [(MIInstallableBundle *)self frameworkBundles];
            v45 = [frameworkBundles countByEnumeratingWithState:&v100 objects:v117 count:16];
            if (v45)
            {
              v46 = *v101;
              v79 = frameworkBundles;
              while (2)
              {
                for (i = 0; i != v45; i = i + 1)
                {
                  if (*v101 != v46)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v48 = *(*(&v100 + 1) + 8 * i);
                  v49 = (v109 + 5);
                  v99 = v109[5];
                  v50 = [v48 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v99];
                  objc_storeStrong(v49, v99);
                  if ((v50 & 1) == 0)
                  {
                    v63 = v109[5];
                    relativePath2 = [v48 relativePath];
                    v66 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1760, MIInstallerErrorDomain, 202, v63, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v65, relativePath2);
                    v67 = v109[5];
                    v109[5] = v66;

LABEL_75:
                    xpcServiceBundles = v79;
                    goto LABEL_76;
                  }
                }

                frameworkBundles = v79;
                v45 = [v79 countByEnumeratingWithState:&v100 objects:v117 count:16];
                if (v45)
                {
                  continue;
                }

                break;
              }
            }

            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
            v52 = [driverKitExtensionBundles countByEnumeratingWithState:&v95 objects:v116 count:16];
            if (v52)
            {
              v53 = *v96;
              v79 = driverKitExtensionBundles;
              while (2)
              {
                for (j = 0; j != v52; j = j + 1)
                {
                  if (*v96 != v53)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v55 = *(*(&v95 + 1) + 8 * j);
                  v56 = (v109 + 5);
                  v94 = v109[5];
                  v57 = [v55 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v94];
                  objc_storeStrong(v56, v94);
                  if ((v57 & 1) == 0)
                  {
                    v68 = v109[5];
                    relativePath3 = [v55 relativePath];
                    v71 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1768, MIInstallerErrorDomain, 202, v68, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v70, relativePath3);
                    v72 = v109[5];
                    v109[5] = v71;

                    goto LABEL_75;
                  }
                }

                driverKitExtensionBundles = v79;
                v52 = [v79 countByEnumeratingWithState:&v95 objects:v116 count:16];
                if (v52)
                {
                  continue;
                }

                break;
              }
            }

            if (sub_10004BF04(entitlements))
            {
              v93 = 0u;
              v91 = 0u;
              v92 = 0u;
              v90 = 0u;
              xpcServiceBundles = [(MIInstallableBundle *)self xpcServiceBundles];
              v80 = [xpcServiceBundles countByEnumeratingWithState:&v90 objects:v115 count:16];
              if (v80)
              {
                v58 = *v91;
                while (2)
                {
                  for (k = 0; k != v80; k = k + 1)
                  {
                    if (*v91 != v58)
                    {
                      objc_enumerationMutation(xpcServiceBundles);
                    }

                    v60 = *(*(&v90 + 1) + 8 * k);
                    v61 = (v109 + 5);
                    v89 = v109[5];
                    v62 = [v60 hasExecutableSliceForCPUType:16777228 subtype:2 error:&v89];
                    objc_storeStrong(v61, v89);
                    if ((v62 & 1) == 0)
                    {
                      v73 = v109[5];
                      relativePath4 = [v60 relativePath];
                      v76 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1779, MIInstallerErrorDomain, 202, v73, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v75, relativePath4);
                      v77 = v109[5];
                      v109[5] = v76;

                      goto LABEL_76;
                    }
                  }

                  v80 = [xpcServiceBundles countByEnumeratingWithState:&v90 objects:v115 count:16];
                  if (v80)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v20 = 1;
            goto LABEL_23;
          }

          v39 = v37;
          xpcServiceBundles = v38[5];
          v38[5] = v39;
LABEL_76:
        }

        relativePath5 = v105;
        goto LABEL_6;
      }

LABEL_44:
      relativePath = [bundle relativePath];
      v13 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1714, MIInstallerErrorDomain, 201, 0, 0, @"%@ has the %@ entitlement but must also have the %@ entitlement.", v41, relativePath);
      goto LABEL_5;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      identifier = [bundle identifier];
      MOLogWrite();
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  v20 = 0;
LABEL_23:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  relativePath = [(MIInstallableBundle *)self appExtensionBundles];
  v21 = [relativePath countByEnumeratingWithState:&v85 objects:v114 count:16];
  if (v21)
  {
    v22 = *v86;
    while (2)
    {
      for (m = 0; m != v21; m = m + 1)
      {
        if (*v86 != v22)
        {
          objc_enumerationMutation(relativePath);
        }

        v24 = *(*(&v85 + 1) + 8 * m);
        if (v20)
        {
          v25 = (v109 + 5);
          obj = v109[5];
          v26 = [v24 hasExecutableSliceForCPUType:16777228 subtype:2 error:&obj];
          objc_storeStrong(v25, obj);
          if ((v26 & 1) == 0)
          {
            v27 = v109[5];
            relativePath5 = [v24 relativePath];
            v29 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1793, MIInstallerErrorDomain, 202, v27, 0, @"%@ is not built for the ARM64e architecture. The ARM64e architecture is required for all components of a browser app.", v28, relativePath5);
            extensionPointIdentifier = v109[5];
            v109[5] = v29;
LABEL_38:

            goto LABEL_6;
          }
        }

        if ((v9 & 1) == 0 && [v24 targetsBrowserExtensionPoint])
        {
          relativePath5 = [v24 relativePath];
          extensionPointIdentifier = [v24 extensionPointIdentifier];
          v32 = sub_100010734("[MIInstallableBundle _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:error:]", 1799, MIInstallerErrorDomain, 203, 0, 0, @"The app extension at %@ targets the extension point %@, which is not allowed in a non-browser app. Either add the entitlement %@ to the containing app, or remove this app extension.", v31, relativePath5);
          v33 = v109[5];
          v109[5] = v32;

          goto LABEL_38;
        }
      }

      v21 = [relativePath countByEnumeratingWithState:&v85 objects:v114 count:16];
      v16 = 1;
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_7:

  if (error)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *error = v109[5];
  }

  _Block_object_dispose(&v108, 8);
  return v16;
}

- (id)_builtInAppUpgradeFailureError
{
  upgradingBuiltInAppAtURL = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];
  path = [upgradingBuiltInAppAtURL path];

  v5 = +[MIDaemonConfiguration sharedInstance];
  hasInternalContent = [v5 hasInternalContent];

  v7 = MIInstallerErrorDomain;
  bundle = [(MIInstallable *)self bundle];
  identifier = [bundle identifier];
  if (hasInternalContent)
  {
  }

  else
  {
    sub_100010734("[MIInstallableBundle _builtInAppUpgradeFailureError]", 1886, v7, 58, 0, &off_10009C9C0, @"This app has the same bundle identifier, %@, as a built-in system app located at %@. However, this app is not configured correctly to allow it to upgrade that system app.", v9, identifier);
  }
  v11 = ;

  return v11;
}

- (BOOL)_performBuiltInAppUpgradeValidationWithSigningInfo:(id)info error:(id *)error
{
  infoCopy = info;
  upgradingBuiltInAppAtURL = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];

  if (upgradingBuiltInAppAtURL)
  {
    entitlements = [infoCopy entitlements];
    upgradingBuiltInAppAtURL2 = [(MIInstallableBundle *)self upgradingBuiltInAppAtURL];
    uRLByDeletingLastPathComponent = [upgradingBuiltInAppAtURL2 URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    v12 = +[MIDaemonConfiguration sharedInstance];
    systemAppsDirectory = [v12 systemAppsDirectory];
    path2 = [systemAppsDirectory path];
    v15 = [path isEqualToString:path2];

    if (v15 && ![MIExecutableBundle isGrandfatheredNonContainerizedForSigningInfo:infoCopy]|| (sub_100043024(entitlements) & 1) != 0)
    {
      v16 = 0;
      v17 = 1;
    }

    else
    {
      _builtInAppUpgradeFailureError = [(MIInstallableBundle *)self _builtInAppUpgradeFailureError];
      v16 = _builtInAppUpgradeFailureError;
      if (error)
      {
        v19 = _builtInAppUpgradeFailureError;
        v17 = 0;
        *error = v16;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)performVerificationWithError:(id *)error
{
  installOptions = [(MIInstallable *)self installOptions];
  isPlaceholderInstall = [(MIInstallableBundle *)self isPlaceholderInstall];
  v374.receiver = self;
  v374.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v374 performVerificationWithError:error])
  {
    v16 = 0;
    path = 0;
    goto LABEL_98;
  }

  progressBlock = [(MIInstallable *)self progressBlock];

  if (progressBlock)
  {
    progressBlock2 = [(MIInstallable *)self progressBlock];
    (progressBlock2)[2](progressBlock2, @"VerifyingApplication", 40);
  }

  if ((isPlaceholderInstall & 1) == 0)
  {
    bundle = [(MIInstallable *)self bundle];
    executableURL = [bundle executableURL];
    removexattr([executableURL fileSystemRepresentation], "com.apple.installd.hidden_archs_fat_header", 1);

    bundle2 = [(MIInstallable *)self bundle];
    executableURL2 = [bundle2 executableURL];
    v13 = sub_1000016D0([executableURL2 fileSystemRepresentation]);

    if ((v13 & 1) == 0)
    {
      v29 = MIInstallerErrorDomain;
      bundle3 = [(MIInstallable *)self bundle];
      executableURL3 = [bundle3 executableURL];
      path = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 1952, v29, 14, 0, 0, @"Failed to unhide archs in executable %@", v32, executableURL3);

      goto LABEL_22;
    }
  }

  if ([installOptions installTargetType] == 1)
  {
    isDeveloperInstall = [installOptions isDeveloperInstall];
    isSystemAppInstall = [installOptions isSystemAppInstall];
  }

  else
  {
    isSystemAppInstall = 0;
    isDeveloperInstall = 0;
  }

  v18 = +[MIDaemonConfiguration sharedInstance];
  if ((([v18 codeSigningEnforcementIsDisabled] | isPlaceholderInstall) & 1) != 0 || isSystemAppInstall)
  {
  }

  else
  {
    bundle4 = [(MIInstallable *)self bundle];
    isRemovableSystemApp = [bundle4 isRemovableSystemApp];

    if (isRemovableSystemApp)
    {
      path = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 1971, MIInstallerErrorDomain, 25, 0, &off_10009C9E8, @"Attempted to install a deletable system app with incorrect install type.", v21, v262);
LABEL_22:
      v16 = 0;
      goto LABEL_96;
    }
  }

  v286 = isPlaceholderInstall;
  allowLocalProvisioned = [installOptions allowLocalProvisioned];
  bundle5 = [(MIInstallable *)self bundle];
  v373 = 0;
  identifier = &v373;
  v290 = allowLocalProvisioned;
  v16 = [(MIInstallableBundle *)self _validateBundle:bundle5 validatingResources:isDeveloperInstall ^ 1 performingOnlineAuthorization:1 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:allowLocalProvisioned skippingProfileIDValidation:0 error:?];
  path = v373;

  if (!v16)
  {
    goto LABEL_96;
  }

  v285 = isSystemAppInstall;
  codeSignerType = [v16 codeSignerType];
  if (isDeveloperInstall)
  {
    v25 = codeSignerType;
    if ([v16 profileValidationType] == 2 || v25 == 2)
    {
      goto LABEL_26;
    }

    entitlements = [v16 entitlements];
    if (sub_10004BF14(entitlements))
    {
      v27 = +[MIDaemonConfiguration sharedInstance];
      v28 = [v27 codeSigningEnforcementIsDisabled] ^ 1;
    }

    else
    {
      v28 = 0;
    }

    if ((v28 & 1) != 0 || v25 == 5)
    {
LABEL_26:
      if ([v16 codeSignerType] == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_37;
        }
      }

      else if ([v16 profileValidationType] == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_37;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_37;
      }

      bundle6 = [(MIInstallable *)self bundle];
      identifier = [bundle6 identifier];
      MOLogWrite();

LABEL_37:
      bundle7 = [(MIInstallable *)self bundle];
      v372 = path;
      identifier = &v372;
      v35 = [(MIInstallableBundle *)self _validateBundle:bundle7 validatingResources:1 performingOnlineAuthorization:1 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v290 skippingProfileIDValidation:0 error:?];
      v36 = v372;

      if (!v35)
      {
        v16 = 0;
        path = v36;
        goto LABEL_96;
      }

      v16 = v35;
      path = v36;
    }
  }

  v37 = path;
  [(MIInstallableBundle *)self setBundleSigningInfo:v16];
  bundle8 = [(MIInstallable *)self bundle];
  entitlements2 = [v16 entitlements];
  v371 = path;
  v40 = sub_100045420(bundle8, entitlements2, &v371);
  path = v371;

  if (!v40)
  {
    goto LABEL_96;
  }

  errorCopy = error;
  v289 = v16;
  v274 = installOptions;
  v370 = 0u;
  v369 = 0u;
  v368 = 0u;
  v367 = 0u;
  frameworkBundles = [(MIInstallableBundle *)self frameworkBundles];
  v42 = [frameworkBundles countByEnumeratingWithState:&v367 objects:v386 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v368;
    do
    {
      v45 = 0;
      v46 = path;
      do
      {
        if (*v368 != v44)
        {
          objc_enumerationMutation(frameworkBundles);
        }

        v47 = *(*(&v367 + 1) + 8 * v45);
        v366 = v46;
        v48 = [(MIInstallableBundle *)self _validateBundle:v47 validatingResources:isDeveloperInstall ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v290 skippingProfileIDValidation:1 error:&v366];
        path = v366;

        if (!v48)
        {

          goto LABEL_61;
        }

        v45 = v45 + 1;
        v46 = path;
      }

      while (v43 != v45);
      v43 = [frameworkBundles countByEnumeratingWithState:&v367 objects:v386 count:16];
    }

    while (v43);
  }

  v365 = 0u;
  v364 = 0u;
  v363 = 0u;
  v362 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v275 = [obj countByEnumeratingWithState:&v362 objects:v385 count:16];
  if (!v275)
  {
    error = errorCopy;
    goto LABEL_65;
  }

  v279 = *v363;
  do
  {
    for (i = 0; i != v275; i = i + 1)
    {
      if (*v363 != v279)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(*(&v362 + 1) + 8 * i);
      v361 = path;
      v51 = [(MIInstallableBundle *)self _validateBundle:v50 validatingResources:isDeveloperInstall ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v290 skippingProfileIDValidation:0 error:&v361];
      v52 = v361;

      if (!v51)
      {
        installOptions = v274;
        error = errorCopy;
        goto LABEL_94;
      }

      entitlements3 = [v51 entitlements];
      v360 = v52;
      v54 = [v50 validateHasCorrespondingEntitlements:entitlements3 error:&v360];
      v55 = v360;

      if (!v54)
      {
        goto LABEL_91;
      }

      v359 = v55;
      v56 = sub_100045600(v50, entitlements3, &v359);
      path = v359;

      if (!v56)
      {
        v55 = path;
LABEL_91:
        error = errorCopy;
LABEL_93:

        v52 = v55;
        installOptions = v274;
LABEL_94:

        path = v52;
        goto LABEL_95;
      }

      error = errorCopy;
      if (sub_10004BF34(entitlements3))
      {
        v81 = MIInstallerErrorDomain;
        relativePath = [v50 relativePath];
        v55 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2080, v81, 210, 0, 0, @"The app extension at %@ has the %@ entitlement, which is not allowed on an app extension.", v83, relativePath);

        goto LABEL_93;
      }

      v16 = v289;
    }

    v275 = [obj countByEnumeratingWithState:&v362 objects:v385 count:16];
  }

  while (v275);
LABEL_65:

  v357 = 0u;
  v358 = 0u;
  v355 = 0u;
  v356 = 0u;
  driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
  obja = [driverKitExtensionBundles countByEnumeratingWithState:&v355 objects:v384 count:16];
  if (obja)
  {
    v276 = *v356;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v356 != v276)
        {
          objc_enumerationMutation(driverKitExtensionBundles);
        }

        v58 = *(*(&v355 + 1) + 8 * j);
        v354 = path;
        v59 = [(MIInstallableBundle *)self _validateBundle:v58 validatingResources:isDeveloperInstall ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v290 skippingProfileIDValidation:0 error:&v354];
        v60 = v354;

        if (!v59)
        {
          installOptions = v274;
          goto LABEL_107;
        }

        v280 = v59;
        entitlements4 = [v59 entitlements];
        if ((sub_10004C814(entitlements4) & 1) == 0)
        {
          v87 = MIInstallerErrorDomain;
          bundleURL = [v58 bundleURL];
          path = [bundleURL path];
          v63 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2102, v87, 178, 0, &off_10009CA10, @"Found DriverKit bundle %@ with missing entitlement %@", v89, path);

LABEL_105:
          installOptions = v274;

          goto LABEL_106;
        }

        v353 = v60;
        v62 = sub_100045600(v58, entitlements4, &v353);
        v63 = v353;

        if (!v62)
        {
          goto LABEL_103;
        }

        v352 = v63;
        v64 = sub_100045420(v58, entitlements4, &v352);
        path = v352;

        if (!v64)
        {
          v63 = path;
LABEL_103:
          installOptions = v274;
          v16 = v289;
LABEL_106:

          v60 = v63;
LABEL_107:

LABEL_108:
          path = v60;
          goto LABEL_96;
        }

        v16 = v289;
        if (sub_10004BF34(entitlements4))
        {
          v90 = MIInstallerErrorDomain;
          bundleURL = [v58 relativePath];
          v63 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2116, v90, 210, 0, 0, @"The DriverKit extension at %@ has the %@ entitlement, which is not allowed on a DriverKit extension.", v91, bundleURL);
          goto LABEL_105;
        }
      }

      obja = [driverKitExtensionBundles countByEnumeratingWithState:&v355 objects:v384 count:16];
    }

    while (obja);
  }

  entitlements5 = [v16 entitlements];
  v66 = sub_10004BF04(entitlements5);

  if (v66)
  {
    bundle9 = [(MIInstallable *)self bundle];
    v351 = path;
    v68 = [bundle9 xpcServiceBundlesWithError:&v351];
    v60 = v351;

    [(MIInstallableBundle *)self setXpcServiceBundles:v68];
    xpcServiceBundles = [(MIInstallableBundle *)self xpcServiceBundles];

    installOptions = v274;
    if (!xpcServiceBundles)
    {
      goto LABEL_108;
    }

    v349 = 0u;
    v350 = 0u;
    v347 = 0u;
    v348 = 0u;
    xpcServiceBundles2 = [(MIInstallableBundle *)self xpcServiceBundles];
    v70 = [xpcServiceBundles2 countByEnumeratingWithState:&v347 objects:v383 count:16];
    if (v70)
    {
      v71 = v70;
      v281 = *v348;
      path = v60;
      do
      {
        v72 = 0;
        v73 = path;
        do
        {
          if (*v348 != v281)
          {
            objc_enumerationMutation(xpcServiceBundles2);
          }

          v74 = *(*(&v347 + 1) + 8 * v72);
          v346 = v73;
          v75 = [v74 checkExecutableExistsIfRequiredWithError:&v346];
          path = v346;

          if (!v75)
          {
            goto LABEL_188;
          }

          identifier2 = [v74 identifier];
          identifiersMap = [(MIInstallableBundle *)self identifiersMap];
          v78 = [identifiersMap objectForKeyedSubscript:identifier2];

          if (v78)
          {
            v164 = MIInstallerErrorDomain;
            bundleURL2 = [v74 bundleURL];
            path2 = [bundleURL2 path];
            identifiersMap2 = [(MIInstallableBundle *)self identifiersMap];
            v168 = [identifiersMap2 objectForKeyedSubscript:identifier2];
            path3 = [v168 path];
            v170 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2139, v164, 57, 0, &off_10009CA38, @"Found bundle at %@ with the same identifier (%@) as bundle at %@", v169, path2);

            path = v170;
            error = errorCopy;
LABEL_188:

            goto LABEL_95;
          }

          bundleURL3 = [v74 bundleURL];
          identifiersMap3 = [(MIInstallableBundle *)self identifiersMap];
          [identifiersMap3 setObject:bundleURL3 forKeyedSubscript:identifier2];

          v72 = v72 + 1;
          v73 = path;
          error = errorCopy;
        }

        while (v71 != v72);
        v71 = [xpcServiceBundles2 countByEnumeratingWithState:&v347 objects:v383 count:16];
      }

      while (v71);
    }

    else
    {
      path = v60;
    }

    if (v286)
    {
      v344 = 0u;
      v345 = 0u;
      v342 = 0u;
      v343 = 0u;
      xpcServiceBundles3 = [(MIInstallableBundle *)self xpcServiceBundles];
      v93 = [xpcServiceBundles3 countByEnumeratingWithState:&v342 objects:v382 count:16];
      if (v93)
      {
        v94 = v93;
        v95 = *v343;
        do
        {
          v96 = 0;
          v97 = path;
          do
          {
            if (*v343 != v95)
            {
              objc_enumerationMutation(xpcServiceBundles3);
            }

            v98 = *(*(&v342 + 1) + 8 * v96);
            v341 = v97;
            v99 = [v98 setIsPlaceholderWithError:&v341];
            path = v341;

            if (!v99)
            {

              goto LABEL_62;
            }

            v96 = v96 + 1;
            v97 = path;
          }

          while (v94 != v96);
          v94 = [xpcServiceBundles3 countByEnumeratingWithState:&v342 objects:v382 count:16];
        }

        while (v94);
      }
    }

    v339 = 0u;
    v340 = 0u;
    v337 = 0u;
    v338 = 0u;
    xpcServiceBundles4 = [(MIInstallableBundle *)self xpcServiceBundles];
    v101 = [xpcServiceBundles4 countByEnumeratingWithState:&v337 objects:v381 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v338;
      do
      {
        for (k = 0; k != v102; k = k + 1)
        {
          if (*v338 != v103)
          {
            objc_enumerationMutation(xpcServiceBundles4);
          }

          v105 = *(*(&v337 + 1) + 8 * k);
          progressBlock3 = [(MIInstallable *)self progressBlock];
          [v105 installEmbeddedProvisioningProfileWithProgress:progressBlock3];
        }

        v102 = [xpcServiceBundles4 countByEnumeratingWithState:&v337 objects:v381 count:16];
      }

      while (v102);
    }

    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    objb = [(MIInstallableBundle *)self xpcServiceBundles];
    v107 = [objb countByEnumeratingWithState:&v333 objects:v380 count:16];
    if (v107)
    {
      v108 = v107;
      v278 = *v334;
      do
      {
        for (m = 0; m != v108; m = m + 1)
        {
          if (*v334 != v278)
          {
            objc_enumerationMutation(objb);
          }

          v110 = *(*(&v333 + 1) + 8 * m);
          v332 = path;
          v111 = [(MIInstallableBundle *)self _validateBundle:v110 validatingResources:isDeveloperInstall ^ 1 performingOnlineAuthorization:0 checkingTrustCacheIfApplicable:1 allowingFreeProfileValidation:v290 skippingProfileIDValidation:0 error:&v332];
          v112 = v332;
          v113 = path;
          path = v112;

          if (!v111)
          {
            v192 = objb;
            error = errorCopy;
            v16 = v289;
LABEL_214:

            goto LABEL_96;
          }

          v282 = v111;
          entitlements6 = [v111 entitlements];
          v331 = path;
          v115 = sub_100045600(v110, entitlements6, &v331);
          v116 = v331;

          if (!v115)
          {
            v192 = objb;
LABEL_213:
            error = errorCopy;
            v16 = v289;

            path = v116;
            goto LABEL_214;
          }

          v330 = v116;
          v117 = sub_100045420(v110, entitlements6, &v330);
          path = v330;

          if (!v117)
          {
            v192 = objb;
            v116 = path;
            goto LABEL_213;
          }

          if (sub_10004BF34(entitlements6))
          {
            v192 = objb;
            v193 = MIInstallerErrorDomain;
            relativePath2 = [v110 relativePath];
            v116 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2185, v193, 210, 0, 0, @"The XPCService extension at %@ has the %@ entitlement, which is not allowed on an XPCService.", v195, relativePath2);

            goto LABEL_213;
          }
        }

        v108 = [objb countByEnumeratingWithState:&v333 objects:v380 count:16];
      }

      while (v108);
    }

    v283 = path;

    v328 = 0u;
    v329 = 0u;
    v326 = 0u;
    v327 = 0u;
    xpcServiceBundles5 = [(MIInstallableBundle *)self xpcServiceBundles];
    v118 = [xpcServiceBundles5 countByEnumeratingWithState:&v326 objects:v379 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v327;
      do
      {
        for (n = 0; n != v119; n = n + 1)
        {
          if (*v327 != v120)
          {
            objc_enumerationMutation(xpcServiceBundles5);
          }

          v122 = *(*(&v326 + 1) + 8 * n);
          infoPlistSubset = [v122 infoPlistSubset];
          v124 = [infoPlistSubset objectForKeyedSubscript:@"XPCService"];

          if (v124)
          {
            v125 = objc_opt_class();
            v126 = sub_1000146E0(v124, v125);

            if (!v126)
            {
              v200 = MIInstallerErrorDomain;
              bundleURL4 = [v122 bundleURL];
              path4 = [bundleURL4 path];
              v202 = objc_opt_class();
              v201Path = NSStringFromClass(v202);
              sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2194, v200, 113, 0, 0, @"XPCService key in Info.plist of XPC service at %@ has illegal value type: %@", v204, path4);
              goto LABEL_229;
            }

            bundleURL4 = [v124 objectForKeyedSubscript:@"ServiceType"];
            if (bundleURL4)
            {
              v128 = objc_opt_class();
              v129 = sub_1000146E0(bundleURL4, v128);

              if (!v129)
              {
                v208 = MIInstallerErrorDomain;
                path4 = [v122 bundleURL];
                v201Path = [path4 path];
                v209 = objc_opt_class();
                v267 = NSStringFromClass(v209);
                path = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2201, v208, 51, 0, 0, @"XPCService's ServiceType key in Info.plist of service at %@ has illegal value type: %@", v210, v201Path);

                goto LABEL_230;
              }

              if (([bundleURL4 isEqualToString:@"Application"] & 1) == 0)
              {
                v211 = MIInstallerErrorDomain;
                path4 = [v122 bundleURL];
                v201Path = [path4 path];
                sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2206, v211, 51, 0, 0, @"XPCService's ServiceType key in Info.plist of service at %@ has illegal value: %@ (must be Application)", v212, v201Path);
                path = LABEL_229:;

LABEL_230:
                goto LABEL_62;
              }
            }
          }
        }

        v119 = [xpcServiceBundles5 countByEnumeratingWithState:&v326 objects:v379 count:16];
      }

      while (v119);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      bundle10 = [(MIInstallable *)self bundle];
      identifier = [bundle10 identifier];
      MOLogWrite();
    }

    [(MIInstallableBundle *)self setXpcServiceBundlesEnabled:1, identifier];
  }

  v324 = 0u;
  v325 = 0u;
  v322 = 0u;
  v323 = 0u;
  appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];
  v131 = [appExtensionBundles countByEnumeratingWithState:&v322 objects:v378 count:16];
  if (!v131)
  {
    goto LABEL_174;
  }

  v132 = v131;
  v133 = *v323;
  v284 = MIContainerManagerErrorDomain;
  while (2)
  {
    v134 = 0;
    v135 = path;
    while (2)
    {
      if (*v323 != v133)
      {
        objc_enumerationMutation(appExtensionBundles);
      }

      v136 = *(*(&v322 + 1) + 8 * v134);
      identity = [(MIInstallable *)self identity];
      personaUniqueString = [identity personaUniqueString];
      v321 = v135;
      v139 = [v136 dataContainerForPersona:personaUniqueString error:&v321];
      path = v321;

      if (v139)
      {
        parentBundleID = [v139 parentBundleID];
        if (parentBundleID)
        {
          bundle11 = [(MIInstallable *)self bundle];
          identifier3 = [bundle11 identifier];
          v143 = [parentBundleID isEqualToString:identifier3];

          if ((v143 & 1) == 0)
          {
            v159 = MIInstallerErrorDomain;
            identifier4 = [v139 identifier];
            v162 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2248, v159, 88, 0, &off_10009CA60, @"An app extension with the identifier %@ is already installed as part of the bundle with identifier %@", v161, identifier4);
            v163 = path;
            path = v162;

LABEL_185:
            goto LABEL_61;
          }
        }

        else if ([v139 status] != 3 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
        {
          identifier = v139;
          MOLogWrite();
        }
      }

      else
      {
        domain = [path domain];
        if (![domain isEqualToString:v284])
        {

LABEL_184:
          sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2256, MIInstallerErrorDomain, 4, path, 0, @"Failed to look up data container for app extension %@", v146, v136);
          path = parentBundleID = path;
          goto LABEL_185;
        }

        code = [path code];

        if (code != 21)
        {
          goto LABEL_184;
        }
      }

      v134 = v134 + 1;
      v135 = path;
      if (v132 != v134)
      {
        continue;
      }

      break;
    }

    v132 = [appExtensionBundles countByEnumeratingWithState:&v322 objects:v378 count:16];
    if (v132)
    {
      continue;
    }

    break;
  }

LABEL_174:

  v320 = path;
  v16 = v289;
  v147 = [(MIInstallableBundle *)self _validateAppManagementDomainForSigningInfo:v289 error:&v320];
  v148 = v320;
  v149 = path;
  path = v148;

  if (!v147)
  {
    installOptions = v274;
    error = errorCopy;
    goto LABEL_96;
  }

  installOptions = v274;
  error = errorCopy;
  if (v286)
  {
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
    bundle12 = [existingBundleContainer bundle];
    v152 = bundle12;
    if (existingBundleContainer)
    {
      if (([bundle12 isPlaceholder] & 1) != 0 || objc_msgSend(v274, "installTargetType") == 3)
      {
        entitlements7 = [v289 entitlements];
        v287 = [v152 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
        entitlements8 = [v287 entitlements];
        v154 = entitlements8;
        if (entitlements8)
        {
          if (sub_10004BF34(entitlements8) && [v274 installTargetType] == 3)
          {
            v155 = MIInstallerErrorDomain;
            displayName = [v152 displayName];
            v158 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2348, v155, 172, 0, 0, @"Offloading is not allowed for the marketplace %@.", v157, displayName);
            goto LABEL_290;
          }

          if (entitlements7)
          {
            bundle15 = sub_10004C3B0(v154);
            v197 = sub_10004C3B0(entitlements7);
            identifier7 = v197;
            if (bundle15)
            {
              if (v197)
              {
                if ([v197 isEqualToString:bundle15])
                {
                  v199 = path;
                  goto LABEL_285;
                }

                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
                {
                  bundle13 = [(MIInstallable *)self bundle];
                  identifier5 = [bundle13 identifier];
                  v266 = identifier7;
                  v268 = bundle15;
                  v264 = identifier5;
LABEL_281:
                  MOLogWrite();
                }
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                bundle13 = [(MIInstallable *)self bundle];
                identifier5 = [bundle13 identifier];
                v264 = identifier5;
                goto LABEL_281;
              }

LABEL_282:

              goto LABEL_283;
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
            {
              bundle14 = [(MIInstallable *)self bundle];
              identifier6 = [bundle14 identifier];
LABEL_237:
              MOLogWrite();
            }

            goto LABEL_286;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            bundle15 = [(MIInstallable *)self bundle];
            identifier7 = [bundle15 identifier];
            v264 = identifier7;
            MOLogWrite();
            goto LABEL_282;
          }

LABEL_283:
          v255 = [(MIInstallable *)self bundle:v264];
          bundleURL5 = [v255 bundleURL];
          v319 = path;
          v257 = sub_10004BFB0(bundleURL5, v154, &v319);
          v199 = v319;

          if (v257)
          {
            bundle15 = [(MIInstallable *)self bundle];
            [bundle15 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:0];
            v289 = identifier7 = v289;
LABEL_285:

            v318 = v199;
            v258 = [(MIInstallableBundle *)self _validateApplicationIdentifierForNewBundleSigningInfo:v289 error:&v318];
            path = v318;

            if (v258)
            {
              goto LABEL_286;
            }
          }

          else
          {
            v259 = MIInstallerErrorDomain;
            displayName = [(MIInstallable *)self bundle];
            path = [displayName identifier];
            v158 = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2373, v259, 4, v199, 0, @"%@: Unable to write placeholder entitlements into downgrade placeholder: %@", v260, path);

LABEL_290:
            path = v158;
          }

LABEL_61:
          installOptions = v274;
LABEL_62:
          error = errorCopy;
LABEL_95:
          v16 = v289;
LABEL_96:
          if (error)
          {
            v84 = path;
            v85 = 0;
            *error = path;
            goto LABEL_99;
          }

LABEL_98:
          v85 = 0;
          goto LABEL_99;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          bundle15 = [(MIInstallable *)self bundle];
          identifier7 = [bundle15 identifier];
          bundle14 = [v152 bundleURL];
          identifier6 = [bundle14 path];
          goto LABEL_237;
        }

LABEL_286:

        identifier8 = v287;
LABEL_287:

LABEL_288:
        installOptions = v274;
        v16 = v289;

        v85 = 1;
        goto LABEL_99;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
      {
        goto LABEL_288;
      }
    }

    else if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
    {
      goto LABEL_288;
    }

    entitlements7 = [(MIInstallable *)self bundle];
    identifier8 = [entitlements7 identifier];
    MOLogWrite();
    goto LABEL_287;
  }

  v317 = path;
  v171 = [(MIInstallableBundle *)self _validateApplicationIdentifierForNewBundleSigningInfo:v289 error:&v317];
  v172 = v317;

  if (!v171)
  {
    path = v172;
    goto LABEL_96;
  }

  entitlements9 = [v289 entitlements];
  v316 = v172;
  v174 = [(MIInstallableBundle *)self _performWatchVerificationForSigningInfo:v289 isSystemAppInstall:v285 withError:&v316];
  path = v316;

  if ((v174 & 1) == 0)
  {

    goto LABEL_96;
  }

  v315 = 0;
  v314 = path;
  v175 = [(MIInstallableBundle *)self _performAppClipSpecificValidationForEntitlements:entitlements9 isAppClip:&v315 withError:&v314];
  appExtensionBundles2 = v314;

  if (!v175)
  {
    goto LABEL_299;
  }

  if (v315 == 1)
  {
    v177 = sub_10004C3B0(entitlements9);
    v178 = +[MIFileManager defaultManager];
    bundle16 = [(MIInstallable *)self bundle];
    bundleURL6 = [bundle16 bundleURL];
    v313 = appExtensionBundles2;
    v181 = [v178 setAppClipAppIdentifier:v177 insecurelyCachedOnBundle:bundleURL6 error:&v313];
    v182 = v313;

    if ((v181 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        bundle17 = [(MIInstallable *)self bundle];
        identifier = [bundle17 bundleURL];
        v266 = v182;
        MOLogWrite();
      }

      v182 = 0;
    }

    appExtensionBundles2 = v182;
  }

  v184 = appExtensionBundles2;
  v312 = appExtensionBundles2;
  v266 = [(MIInstallableBundle *)self _performBrowserAppEntitlementAndArchitectureValidationForSigningInfo:v289 error:&v312, identifier, v266];
  appExtensionBundles2 = v312;

  if (!v266)
  {
LABEL_299:

    path = appExtensionBundles2;
    goto LABEL_61;
  }

  if (sub_10004BF34(entitlements9))
  {
    bundle18 = [(MIInstallable *)self bundle];
    isLaunchProhibited = [bundle18 isLaunchProhibited];

    if (isLaunchProhibited)
    {
      v188 = MIInstallerErrorDomain;
      bundle19 = [(MIInstallable *)self bundle];
      displayName2 = [bundle19 displayName];
      path = sub_100010734("[MIInstallableBundle performVerificationWithError:]", 2440, v188, 209, 0, 0, @"The marketplace %@ has the key %@ = TRUE in its Info.plist. This is not allowed.", v191, displayName2);

      appExtensionBundles2 = bundle19;
      goto LABEL_297;
    }
  }

  v213 = +[MIDaemonConfiguration sharedInstance];
  if (([v213 codeSigningEnforcementIsDisabled] & 1) != 0 || (-[MIInstallableBundle upgradingBuiltInAppAtURL](self, "upgradingBuiltInAppAtURL"), (v214 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v215 = v214;
    v216 = sub_10004BE68(entitlements9);

    if ((v216 & 1) == 0)
    {
      v217 = +[MIDaemonConfiguration sharedInstance];
      hasInternalContent = [v217 hasInternalContent];

      v220 = MIInstallerErrorDomain;
      if (hasInternalContent)
      {
        v221 = &off_10009CA88;
        v222 = @"System app upgrade is missing upgrade entitlement (disable code signing enforcement via boot-args to avoid this).";
        v223 = 2446;
      }

      else
      {
        v221 = &off_10009CAB0;
        v222 = @"System app upgrade is missing upgrade entitlement.";
        v223 = 2448;
      }

      v261 = 16;
      goto LABEL_296;
    }
  }

  if (v285 && (sub_10004BF14(entitlements9) & 1) == 0)
  {
    v220 = MIInstallerErrorDomain;
    v221 = &off_10009CAD8;
    v222 = @"System app install missing system app entitlement.";
    v223 = 2455;
    v261 = 127;
LABEL_296:
    path = sub_100010734("[MIInstallableBundle performVerificationWithError:]", v223, v220, v261, 0, v221, v222, v219, v265);
LABEL_297:

    goto LABEL_298;
  }

  v311 = appExtensionBundles2;
  v224 = [(MIInstallableBundle *)self _performBuiltInAppUpgradeValidationWithSigningInfo:v289 error:&v311];
  v225 = v311;

  if (!v224)
  {
    appExtensionBundles2 = v225;
    goto LABEL_299;
  }

  bundle20 = [(MIInstallable *)self bundle];
  executableURL4 = [bundle20 executableURL];
  [executableURL4 fileSystemRepresentation];
  v310 = v225;
  v228 = MIMachOFileMatchesMyArchitecture();
  path = v225;

  if (!v228)
  {
LABEL_298:
    appExtensionBundles2 = path;
    goto LABEL_299;
  }

  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  appExtensionBundles2 = [(MIInstallableBundle *)self appExtensionBundles];
  v229 = [appExtensionBundles2 countByEnumeratingWithState:&v306 objects:v377 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v307;
    do
    {
      v232 = 0;
      v233 = path;
      do
      {
        if (*v307 != v231)
        {
          objc_enumerationMutation(appExtensionBundles2);
        }

        executableURL5 = [*(*(&v306 + 1) + 8 * v232) executableURL];
        [executableURL5 fileSystemRepresentation];
        v305 = v233;
        v235 = MIMachOFileMatchesMyArchitecture();
        path = v233;

        if (!v235)
        {
          goto LABEL_297;
        }

        v232 = v232 + 1;
        v233 = path;
      }

      while (v230 != v232);
      v230 = [appExtensionBundles2 countByEnumeratingWithState:&v306 objects:v377 count:16];
    }

    while (v230);
  }

  v303 = 0u;
  v304 = 0u;
  v301 = 0u;
  v302 = 0u;
  appExtensionBundles2 = [(MIInstallableBundle *)self xpcServiceBundles];
  v236 = [appExtensionBundles2 countByEnumeratingWithState:&v301 objects:v376 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v302;
    do
    {
      v239 = 0;
      v240 = path;
      do
      {
        if (*v302 != v238)
        {
          objc_enumerationMutation(appExtensionBundles2);
        }

        executableURL6 = [*(*(&v301 + 1) + 8 * v239) executableURL];
        [executableURL6 fileSystemRepresentation];
        v300 = v240;
        v242 = MIMachOFileMatchesMyArchitecture();
        path = v240;

        if (!v242)
        {
          goto LABEL_297;
        }

        v239 = v239 + 1;
        v240 = path;
      }

      while (v237 != v239);
      v237 = [appExtensionBundles2 countByEnumeratingWithState:&v301 objects:v376 count:16];
    }

    while (v237);
  }

  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  driverKitExtensionBundles2 = [(MIInstallableBundle *)self driverKitExtensionBundles];
  v244 = [driverKitExtensionBundles2 countByEnumeratingWithState:&v296 objects:v375 count:16];
  if (!v244)
  {
    goto LABEL_274;
  }

  v245 = v244;
  v246 = *v297;
  while (2)
  {
    v247 = 0;
    while (2)
    {
      if (*v297 != v246)
      {
        objc_enumerationMutation(driverKitExtensionBundles2);
      }

      v248 = *(*(&v296 + 1) + 8 * v247);
      executableURL7 = [v248 executableURL];
      [executableURL7 fileSystemRepresentation];

      v295 = path;
      v250 = MIMachOFileMatchesMyArchitecture();
      v251 = v295;

      if (!v250)
      {
        path = v251;
LABEL_304:

        goto LABEL_61;
      }

      v294 = v251;
      v252 = [v248 onlyHasExecutableSlicesForPlatform:10 error:&v294];
      path = v294;

      if ((v252 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        goto LABEL_304;
      }

      if (v245 != ++v247)
      {
        continue;
      }

      break;
    }

    v245 = [driverKitExtensionBundles2 countByEnumeratingWithState:&v296 objects:v375 count:16];
    if (v245)
    {
      continue;
    }

    break;
  }

LABEL_274:

  v85 = 1;
  installOptions = v274;
  v16 = v289;
LABEL_99:

  return v85;
}

- (BOOL)_writeData:(id)data toFile:(id)file inContainerAtURL:(id)l legacyErrorString:(id)string error:(id *)error
{
  dataCopy = data;
  stringCopy = string;
  v13 = [l URLByAppendingPathComponent:file isDirectory:0];
  v24 = 0;
  v14 = [dataCopy writeToURL:v13 options:268435457 error:&v24];
  v15 = v24;
  if (v14)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      [dataCopy length];
      path = [v13 path];
      MOLogWrite();
    }
  }

  else
  {
    v16 = MIInstallerErrorDomain;
    v25 = @"LegacyErrorString";
    v26 = stringCopy;
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    path2 = [v13 path];
    v20 = sub_100010734("[MIInstallableBundle _writeData:toFile:inContainerAtURL:legacyErrorString:error:]", 2528, v16, 24, v15, v17, @"Failed to write data to %@", v19, path2);

    if (error)
    {
      v21 = v20;
      *error = v20;
    }

    v15 = v20;
  }

  return v14;
}

- (BOOL)_writeOptionsDataToBundle:(id)bundle orContainer:(id)container error:(id *)error
{
  bundleCopy = bundle;
  containerCopy = container;
  containerURL = [containerCopy containerURL];
  installOptions = [(MIInstallable *)self installOptions];
  iTunesMetadata = [installOptions iTunesMetadata];
  iTunesMetadata2 = [installOptions iTunesMetadata];
  distributorInfo = [iTunesMetadata2 distributorInfo];

  sinfData = [installOptions sinfData];
  if (sinfData)
  {
    v14 = sinfData;
    distributorID = [distributorInfo distributorID];
    if (distributorID && ![distributorInfo distributorIsFirstPartyApple])
    {
      sinfDataType = [installOptions sinfDataType];

      if (sinfDataType != 1)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          bundle = [(MIInstallable *)self bundle];
          identifier = [bundle identifier];
          MOLogWrite();
        }

        [installOptions setSinfDataType:{1, identifier}];
      }
    }

    else
    {
    }
  }

  v42 = 0;
  v16 = [bundleCopy setSinfDataType:objc_msgSend(installOptions withError:{"sinfDataType"), &v42}];
  v17 = v42;
  if (!v16)
  {
    sinfData2 = 0;
    goto LABEL_21;
  }

  sinfData2 = [installOptions sinfData];
  if (sinfData2)
  {
    v41 = v17;
    v19 = [bundleCopy updateSinfWithData:sinfData2 error:&v41];
    v20 = v41;

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v40 = v17;
    v23 = [bundleCopy replicateRootSinfWithError:&v40];
    v20 = v40;

    if (!v23)
    {
      sinfData2 = 0;
LABEL_20:
      v17 = v20;
      goto LABEL_21;
    }
  }

  geoJSONData = [installOptions geoJSONData];

  if (geoJSONData)
  {
    v39 = v20;
    v25 = [(MIInstallableBundle *)self _writeData:geoJSONData toFile:@"GeoJSON" inContainerAtURL:containerURL legacyErrorString:@"GeoJSONCaptureFailed" error:&v39];
    v26 = v39;

    if (!v25)
    {
      sinfData2 = geoJSONData;
      v17 = v26;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = v20;
  }

  sinfData2 = [installOptions iTunesArtworkData];

  if (sinfData2)
  {
    v38 = v26;
    v30 = [(MIInstallableBundle *)self _writeData:sinfData2 toFile:@"iTunesArtwork" inContainerAtURL:containerURL legacyErrorString:@"iTunesArtworkCaptureFailed" error:&v38];
    v17 = v38;

    if (!v30)
    {
LABEL_21:
      v27 = iTunesMetadata;
      if (error)
      {
        goto LABEL_22;
      }

LABEL_33:
      v29 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v17 = v26;
  }

  v27 = iTunesMetadata;
  if (!iTunesMetadata)
  {
    v29 = 1;
    goto LABEL_34;
  }

  v37 = v17;
  v31 = [containerCopy writeiTunesMetadata:iTunesMetadata error:&v37];
  v32 = v37;

  if (v31)
  {
    v29 = 1;
    v17 = v32;
    goto LABEL_34;
  }

  v17 = v32;
  if (!error)
  {
    goto LABEL_33;
  }

LABEL_22:
  v28 = v17;
  v29 = 0;
  *error = v17;
LABEL_34:

  return v29;
}

- (BOOL)_captureDataFromStagingRootOrBundle:(id)bundle toContainer:(id)container withError:(id *)error
{
  bundleCopy = bundle;
  containerCopy = container;
  installOptions = [(MIInstallable *)self installOptions];
  iTunesMetadata = [installOptions iTunesMetadata];

  stagingRootURL = [(MIInstallable *)self stagingRootURL];
  v13 = [containerCopy captureStoreDataFromDirectory:stagingRootURL doCopy:1 failureIsFatal:1 includeiTunesMetadata:iTunesMetadata == 0 withError:error];

  v14 = v13 && (-[MIInstallable packageFormat](self, "packageFormat") != 2 || [containerCopy captureStoreDataFromDirectory:bundleCopy doCopy:1 failureIsFatal:1 includeiTunesMetadata:iTunesMetadata == 0 withError:error]);
  return v14;
}

- (BOOL)_validateSinfsWithError:(id *)error
{
  if ([(MIInstallableBundle *)self isPlaceholderInstall])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    bundle = [(MIInstallable *)self bundle];
    [v7 addObject:bundle];

    frameworkBundles = [(MIInstallableBundle *)self frameworkBundles];
    [v7 addObjectsFromArray:frameworkBundles];

    appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];
    [v7 addObjectsFromArray:appExtensionBundles];

    driverKitExtensionBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
    [v7 addObjectsFromArray:driverKitExtensionBundles];

    xpcServiceBundles = [(MIInstallableBundle *)self xpcServiceBundles];

    if (xpcServiceBundles)
    {
      xpcServiceBundles2 = [(MIInstallableBundle *)self xpcServiceBundles];
      [v7 addObjectsFromArray:xpcServiceBundles2];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v7;
    v14 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v6 = 0;
      v16 = *v26;
      while (2)
      {
        v17 = 0;
        v18 = v6;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v25 + 1) + 8 * v17);
          v24 = v18;
          v20 = [v19 validateSinfWithError:&v24];
          v6 = v24;

          if (!v20)
          {

            if (error)
            {
              v21 = v6;
              v22 = 0;
              *error = v6;
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_19;
          }

          v17 = v17 + 1;
          v18 = v6;
        }

        while (v15 != v17);
        v15 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v22 = 1;
LABEL_19:

  return v22;
}

+ (BOOL)_shouldSkipEligibilityChecksForAppWithSigningInfo:(id)info
{
  infoCopy = info;
  codeSignerType = [infoCopy codeSignerType];
  v15 = 0;
  v5 = +[MITestManager sharedInstance];
  v6 = v5;
  if (codeSignerType == 3)
  {
    if ([infoCopy profileValidationType] == 4)
    {
      entitlements = [infoCopy entitlements];
      v8 = sub_10004C498(entitlements);

      if ((v8 & 1) == 0)
      {
        v9 = +[MIDaemonConfiguration sharedInstance];
        requireEligibilityChecksForAppsInDevelopment = [v9 requireEligibilityChecksForAppsInDevelopment];

        if (!requireEligibilityChecksForAppsInDevelopment)
        {
LABEL_17:
          v11 = 1;
          goto LABEL_16;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          codeInfoIdentifier = [infoCopy codeInfoIdentifier];
          MOLogWrite();
        }
      }
    }
  }

  else if (codeSignerType == 1 && [v5 isRunningInTestMode:&v15 outError:0] && v15 == 1 && objc_msgSend(v6, "testFlagsAreSet:", 256))
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      codeInfoIdentifier2 = [infoCopy codeInfoIdentifier];
      MOLogWrite();
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (BOOL)_shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:(id)d persona:(id)persona
{
  dCopy = d;
  v19 = 0;
  v7 = [MIBundleContainer containerWithIdentifier:dCopy forPersona:persona ofContentClass:1 createIfNeeded:0 created:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      code = [v9 code];

      if (code == 21)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_17;
    }

LABEL_16:
    MOLogWrite();
LABEL_17:
    v14 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  bundle = [v7 bundle];
  if (!bundle)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = bundle;
  v18 = v9;
  v12 = [bundle codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:0 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [self _shouldSkipEligibilityChecksForAppWithSigningInfo:v12];
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v14 = 0;
  }

  v9 = v13;
LABEL_23:

  return v14;
}

+ (BOOL)_shouldSkipEligibilityChecksForInstallRequestorWithAuditToken:(id *)token persona:(id)persona authorizingBundleID:(id *)d
{
  personaCopy = persona;
  v9 = *&token->var0[4];
  *v19.val = *token->var0;
  *&v19.val[4] = v9;
  v18 = 0;
  v10 = *&token->var0[4];
  *atoken.val = *token->var0;
  *&atoken.val[4] = v10;
  v11 = [MICodeSigningInfo signingIdentifierForAuditToken:&atoken error:&v18];
  v12 = v18;
  if (v11)
  {
    LOBYTE(atoken.val[0]) = 0;
    v13 = +[MITestManager sharedInstance];
    if ([v11 isEqualToString:@"com.apple.mi-test-runner"] && objc_msgSend(v13, "isRunningInTestMode:outError:", &atoken, 0) && LOBYTE(atoken.val[0]) == 1 && objc_msgSend(v13, "testFlagsAreSet:", 512))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      v14 = 1;
    }

    else
    {
      v14 = [self _shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:v11 persona:personaCopy];
    }

    if (d && v14)
    {
      v15 = v11;
      *d = v11;
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      atoken = v19;
      audit_token_to_pid(&atoken);
      MOLogWrite();
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

+ (unint64_t)_domainForBrowserEligibilityForApp:(id)app withSigningInfo:(id)info distributorInfo:(id)distributorInfo isWebDistribution:(BOOL)distribution operationType:(unint64_t)type
{
  infoCopy = info;
  identifier = [app identifier];
  entitlements = [infoCopy entitlements];

  if (sub_10004CA78(entitlements))
  {
    switch(type)
    {
      case 2uLL:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
          goto LABEL_24;
        }

        break;
      case 1uLL:
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
        {
LABEL_24:
          v12 = 4;
          goto LABEL_32;
        }

        break;
      case 0uLL:
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          MOLogWrite();
        }

        v12 = 7;
        goto LABEL_32;
      default:
LABEL_17:
        v12 = 0;
        goto LABEL_32;
    }

    MOLogWrite();
    goto LABEL_24;
  }

  if (!sub_10004CA88(entitlements))
  {
    goto LABEL_17;
  }

  if (type == 2)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

LABEL_30:
    MOLogWrite();
LABEL_31:
    v12 = 6;
    goto LABEL_32;
  }

  if (type == 1)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (type)
  {
    goto LABEL_17;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v12 = 23;
LABEL_32:

  return v12;
}

+ (unint64_t)_domainForMarketplaceEligibilityForApp:(id)app withSigningInfo:(id)info isWebDistribution:(BOOL)distribution distributorInfo:(id)distributorInfo operationType:(unint64_t)type
{
  distributorInfoCopy = distributorInfo;
  infoCopy = info;
  identifier = [app identifier];
  entitlements = [infoCopy entitlements];

  v15 = sub_10004BF34(entitlements);
  distributorIsThirdParty = [distributorInfoCopy distributorIsThirdParty];
  if ((v15 & 1) == 0 && !distributorIsThirdParty)
  {
    goto LABEL_3;
  }

  if (v15 & 1 | !distribution)
  {
    if (v15)
    {
      v18 = @"marketplace";
    }

    else
    {
      distributorID = [distributorInfoCopy distributorID];
      v18 = [NSString stringWithFormat:@"app distributed by marketplace %@, ", distributorID];
    }

    if (type == 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (type != 1)
      {
        if (type)
        {
          v17 = 0;
        }

        else
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            MOLogWrite();
          }

          v17 = 2;
        }

        goto LABEL_37;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
LABEL_35:
        v17 = 3;
LABEL_37:

        goto LABEL_38;
      }
    }

    MOLogWrite();
    goto LABEL_35;
  }

  if (type == 2)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

LABEL_30:
    MOLogWrite();
LABEL_31:
    v17 = 20;
    goto LABEL_38;
  }

  if (type == 1)
  {
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (type)
  {
LABEL_3:
    v17 = 0;
    goto LABEL_38;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    MOLogWrite();
  }

  v17 = 19;
LABEL_38:

  return v17;
}

+ (BOOL)_getEligibilityForDomain:(unint64_t)domain forBundle:(id)bundle isEligible:(BOOL *)eligible ineligibilityReason:(id *)reason error:(id *)error
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  identifier = [bundle identifier];
  v12 = +[MIEligibilityManager sharedInstance];
  v42 = 0;
  v13 = [v12 getEligibilityForDomain:domain answer:&v46 source:&v45 status:&v44 context:&v43 error:&v42];
  v14 = v42;

  if (v13)
  {
    if (v46 == 4)
    {
      v16 = 0;
      if (!eligible)
      {
LABEL_30:
        if (reason)
        {
          v26 = v16;
          *reason = v16;
        }

        goto LABEL_32;
      }

LABEL_29:
      *eligible = v46 == 4;
      goto LABEL_30;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v19 = v45;
    v20 = v44;
    v21 = v20;
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_27;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_27;
      }

LABEL_26:
      MOLogWrite();
LABEL_27:
      v25 = 0;
      v22 = 0;
      goto LABEL_28;
    }

    if (!v20)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v22 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v22 || ((objc_opt_class(), v23 = v22, (objc_opt_isKindOfClass() & 1) == 0) ? (v24 = 0) : (v24 = v23), v23, v24, !v24))
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      v25 = 0;
LABEL_28:

      v16 = v25;
      if (!eligible)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v28 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_CLASS"];
    objc_opt_class();
    v29 = v28;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    unsignedLongLongValue = [v30 unsignedLongLongValue];
    v31 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION"];
    objc_opt_class();
    v32 = v31;
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    unsignedLongLongValue2 = [v33 unsignedLongLongValue];
    v34 = [v23 objectForKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING"];
    objc_opt_class();
    v35 = v34;
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    unsignedLongLongValue3 = [v36 unsignedLongLongValue];
    if (unsignedLongLongValue == 3)
    {
      if (unsignedLongLongValue2 != 3 && unsignedLongLongValue3 != 3)
      {
        v38 = @"This device is not eligible based on the country or region it is located in and the country or region of the Apple ID signed in.";
        v39 = @"This device is not eligible based on the country or region it is located in and without an Apple ID signed in.";
LABEL_52:
        if (unsignedLongLongValue3 == 7)
        {
          v25 = v39;
        }

        else
        {
          v25 = v38;
        }

        goto LABEL_56;
      }

      if (unsignedLongLongValue2 == 3)
      {
        if (unsignedLongLongValue3 == 3)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            MOLogWrite();
          }

          v25 = 0;
          goto LABEL_56;
        }

        v38 = @"This device is not eligible based on the country or region of the Apple ID signed in.";
        v39 = @"This device is not eligible without an Apple ID signed in.";
        goto LABEL_52;
      }

      v25 = @"This device is not eligible based on the country or region it is located in.";
    }

    else
    {
      v25 = @"This device type is not eligible.";
    }

LABEL_56:
    v22 = v23;
    goto LABEL_28;
  }

  v17 = sub_100010734("+[MIInstallableBundle _getEligibilityForDomain:forBundle:isEligible:ineligibilityReason:error:]", 2900, MIInstallerErrorDomain, 4, v14, 0, @"Failed to get eligibility for domain %llu for %@", v15, domain);

  if (error)
  {
    v18 = v17;
    v16 = 0;
    *error = v17;
  }

  else
  {
    v16 = 0;
  }

  v14 = v17;
LABEL_32:

  return v13;
}

- (BOOL)_checkEligibilityForAppWithSigningInfo:(id)info distributorInfo:(id)distributorInfo isWebDistribution:(BOOL)distribution withError:(id *)error
{
  distributionCopy = distribution;
  infoCopy = info;
  distributorInfoCopy = distributorInfo;
  bundle = [(MIInstallable *)self bundle];
  displayName = [bundle displayName];
  eligibilityOperationType = [(MIInstallableBundle *)self eligibilityOperationType];
  identifier = [bundle identifier];
  v13 = objc_opt_class();
  installOptions = [(MIInstallable *)self installOptions];
  installationRequestorAuditToken = [installOptions installationRequestorAuditToken];

  v16 = [v13 _domainForBrowserEligibilityForApp:bundle withSigningInfo:infoCopy distributorInfo:distributorInfoCopy isWebDistribution:distributionCopy operationType:eligibilityOperationType];
  v17 = [v13 _domainForMarketplaceEligibilityForApp:bundle withSigningInfo:infoCopy isWebDistribution:distributionCopy distributorInfo:distributorInfoCopy operationType:eligibilityOperationType];
  if (!(v16 | v17))
  {
    v18 = 0;
    v19 = 0;
LABEL_3:
    v20 = 1;
LABEL_4:
    v21 = displayName;
    goto LABEL_5;
  }

  v23 = v17;
  v60 = distributorInfoCopy;
  if (distributionCopy && installationRequestorAuditToken)
  {
    v59 = infoCopy;
    v72 = *installationRequestorAuditToken;
    v70 = 0;
    v71 = 0;
    atoken = v72;
    v24 = [MICodeSigningInfo getValue:&v71 forEntitlement:@"com.apple.developer.browser.app-installation" fromProcessWithAuditToken:&atoken error:&v70];
    v25 = v71;
    v18 = v70;
    if ((v24 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v54 = @"com.apple.developer.browser.app-installation";
        v55 = v18;
        MOLogWrite();
      }

      v28 = 0;
      v19 = 0;
      v18 = 0;
      distributorInfoCopy = v60;
      goto LABEL_37;
    }

    if (v25)
    {
      distributorInfoCopy = v60;
      if (objc_opt_respondsToSelector())
      {
        v58 = v25;
        if ([v25 BOOLValue])
        {
          identity = [(MIInstallable *)self identity];
          personaUniqueString = [identity personaUniqueString];

          distributorInfoCopy = v60;
          v68 = 0;
          v28 = [v13 _shouldSkipEligibilityChecksForInstallRequestorWithAuditToken:installationRequestorAuditToken persona:personaUniqueString authorizingBundleID:&v68];
          v19 = v68;
        }

        else
        {
          v28 = 0;
          v19 = 0;
        }

        v25 = v58;
        goto LABEL_37;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
LABEL_30:
        v28 = 0;
        v19 = 0;
LABEL_37:

        infoCopy = v59;
        goto LABEL_38;
      }
    }

    else
    {
      distributorInfoCopy = v60;
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_30;
      }
    }

    atoken = v72;
    v54 = audit_token_to_pid(&atoken);
    v55 = @"com.apple.developer.browser.app-installation";
    MOLogWrite();
    goto LABEL_30;
  }

  if ([v13 _shouldSkipEligibilityChecksForAppWithSigningInfo:infoCopy])
  {
    v19 = 0;
    v18 = 0;
    v28 = 1;
  }

  else
  {
    if (![distributorInfoCopy distributorIsThirdParty])
    {
      if (!v16)
      {
        v18 = 0;
        if (!v23)
        {
          v20 = 1;
          v19 = 0;
          goto LABEL_4;
        }

        v19 = 0;
        goto LABEL_67;
      }

      v19 = 0;
      v18 = 0;
      goto LABEL_48;
    }

    distributorID = [distributorInfoCopy distributorID];
    identity2 = [(MIInstallable *)self identity];
    personaUniqueString2 = [identity2 personaUniqueString];
    v28 = [v13 _shouldSkipEligibilityChecksForAuthorizingAppWithBundleID:distributorID persona:personaUniqueString2];

    if (v28)
    {
      v19 = distributorID;
    }

    else
    {
      v19 = 0;
    }

    v18 = 0;
    distributorInfoCopy = v60;
  }

LABEL_38:
  if (!v16)
  {
    goto LABEL_61;
  }

  if (!v28)
  {
LABEL_48:
    v33 = v18;
    LOBYTE(v72.val[0]) = 0;
    v66 = v18;
    v67 = 0;
    v34 = [v13 _getEligibilityForDomain:v16 forBundle:bundle isEligible:&v72 ineligibilityReason:&v67 error:{&v66, v54, v55}];
    v35 = v67;
    v18 = v66;

    if (!v34)
    {
      goto LABEL_70;
    }

    distributorInfoCopy = v60;
    if ((v72.val[0] & 1) == 0)
    {
      v21 = displayName;
      if (v35)
      {
        v42 = [NSString stringWithFormat:@" %@", v35];

        v35 = v42;
      }

      else
      {
        v35 = &stru_100092CF8;
      }

      errorCopy2 = error;
      v44 = "install";
      if (eligibilityOperationType == 1)
      {
        v44 = "update";
      }

      if (eligibilityOperationType == 2)
      {
        v44 = "restore";
      }

      v45 = sub_100010734("[MIInstallableBundle _checkEligibilityForAppWithSigningInfo:distributorInfo:isWebDistribution:withError:]", 3015, MIInstallerErrorDomain, 208, 0, 0, @"This device is not eligible to %s the browser engine app %@.%@", v36, v44);

      v18 = v45;
      goto LABEL_72;
    }

    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_67:
    v38 = v18;
    LOBYTE(v72.val[0]) = 0;
    v64 = v18;
    v65 = 0;
    v39 = [v13 _getEligibilityForDomain:v23 forBundle:bundle isEligible:&v72 ineligibilityReason:&v65 error:{&v64, v54, v55, v56}];
    v35 = v65;
    v18 = v64;

    if (v39)
    {
      v21 = displayName;
      if (v72.val[0])
      {

        v20 = 1;
        distributorInfoCopy = v60;
        goto LABEL_5;
      }

      if (v35)
      {
        v43 = [NSString stringWithFormat:@" %@", v35];

        v35 = v43;
      }

      else
      {
        v35 = &stru_100092CF8;
      }

      entitlements = [infoCopy entitlements];
      v47 = sub_10004BF34(entitlements);

      v49 = MIInstallerErrorDomain;
      v50 = "install";
      if (eligibilityOperationType == 1)
      {
        v50 = "update";
      }

      if (eligibilityOperationType == 2)
      {
        v51 = "restore";
      }

      else
      {
        v51 = v50;
      }

      if (v47)
      {
        v52 = sub_100010734("[MIInstallableBundle _checkEligibilityForAppWithSigningInfo:distributorInfo:isWebDistribution:withError:]", 3044, MIInstallerErrorDomain, 208, 0, 0, @"This device is not eligible to %s the marketplace %@.%@", v48, v51);
      }

      else
      {
        distributorNameForCurrentLocale = [v60 distributorNameForCurrentLocale];
        v52 = sub_100010734("[MIInstallableBundle _checkEligibilityForAppWithSigningInfo:distributorInfo:isWebDistribution:withError:]", 3046, v49, 208, 0, 0, @"This device is not eligible to %s the app %@ distributed by %@.%@", v53, v51);

        v18 = distributorNameForCurrentLocale;
      }

      v18 = v52;
      goto LABEL_71;
    }

LABEL_70:
    v21 = displayName;
LABEL_71:
    errorCopy2 = error;
LABEL_72:

    distributorInfoCopy = v60;
    if (errorCopy2)
    {
      v41 = v18;
      v20 = 0;
      *errorCopy2 = v18;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_5;
  }

  if (v19)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v32 = "install";
      if (eligibilityOperationType == 1)
      {
        v32 = "update";
      }

      if (eligibilityOperationType == 2)
      {
        v32 = "restore";
      }

      v55 = v19;
      v56 = identifier;
      v54 = v32;
      MOLogWrite();
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v37 = "install";
      if (eligibilityOperationType == 1)
      {
        v37 = "update";
      }

      if (eligibilityOperationType == 2)
      {
        v37 = "restore";
      }

      v54 = identifier;
      v55 = v37;
      MOLogWrite();
    }

    v19 = 0;
  }

  v28 = 1;
LABEL_61:
  if (!v23)
  {
    goto LABEL_3;
  }

  if (!v28)
  {
    goto LABEL_67;
  }

  if (v19)
  {
    v21 = displayName;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  else
  {
    v21 = displayName;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      MOLogWrite();
    }

    v19 = 0;
  }

  v20 = 1;
LABEL_5:

  return v20;
}

- (BOOL)_validateiTunesMetadataWithError:(id *)error
{
  bundleContainer = [(MIInstallableBundle *)self bundleContainer];
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  bundle = [(MIInstallable *)self bundle];
  displayName = [bundle displayName];

  v63 = 0;
  v8 = [bundleContainer iTunesMetadataWithError:&v63];
  v9 = v63;
  v10 = v9;
  if (v8)
  {
    identifier = v9;
    goto LABEL_3;
  }

  userInfo = [v9 userInfo];
  identifier = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [identifier domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

LABEL_25:
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v57 = 0;
    v59 = 0;
    v8 = 0;
    v29 = 0;
    distributorID = 0;
    distributorInfo = 0;
    goto LABEL_58;
  }

  code = [identifier code];

  if (code != 260)
  {
    goto LABEL_25;
  }

  identifier = 0;
LABEL_3:
  distributorInfo = [v8 distributorInfo];
  distributorID = [distributorInfo distributorID];
  distributorType = [distributorInfo distributorType];
  if (existingBundleContainer)
  {
    v53 = distributorID;
    v15 = bundleContainer;
    v16 = existingBundleContainer;
    v17 = displayName;
    v62 = identifier;
    v18 = v16;
    v19 = [v16 iTunesMetadataWithError:&v62];
    v10 = v62;

    v56 = v19;
    if (v19)
    {
      displayName = v17;
LABEL_6:
      distributorInfo2 = [v56 distributorInfo];
      distributorID2 = [distributorInfo2 distributorID];
      v59 = distributorInfo2;
      distributorType2 = [distributorInfo2 distributorType];
      identifier = v10;
      v23 = distributorID2;
      existingBundleContainer = v18;
      bundleContainer = v15;
      distributorID = v53;
      goto LABEL_11;
    }

    v51 = v8;
    userInfo2 = [v10 userInfo];
    identifier = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    domain2 = [identifier domain];
    if ([domain2 isEqualToString:NSCocoaErrorDomain])
    {
      v36 = v18;
      code2 = [identifier code];

      v38 = code2 == 260;
      v18 = v36;
      displayName = v17;
      if (v38)
      {

        v10 = 0;
        v8 = v51;
        goto LABEL_6;
      }
    }

    else
    {

      displayName = v17;
    }

    v8 = v51;
    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      v57 = 0;
      v59 = 0;
      v29 = 0;
      existingBundleContainer = v18;
    }

    else
    {
      existingBundleContainer = v18;
      MOLogWrite();
      v57 = 0;
      v59 = 0;
      v29 = 0;
    }

    bundleContainer = v15;
    distributorID = v53;
    goto LABEL_58;
  }

  distributorType2 = 0;
  v23 = 0;
  v59 = 0;
  v56 = 0;
LABEL_11:
  v57 = v23;
  if (distributorID && !v23)
  {
    goto LABEL_13;
  }

  if (!distributorID && v23)
  {
    v54 = distributorType2;
    v27 = [v59 copy];

    distributorID = v23;
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    [v8 setDistributorInfo:v27];
    v61 = identifier;
    v30 = [bundleContainer writeiTunesMetadata:v8 error:&v61];
    v10 = v61;

    if ((v30 & 1) == 0)
    {
      v57 = distributorID;
      v29 = v56;
      goto LABEL_59;
    }

    goto LABEL_14;
  }

  if (!distributorID || !v23 || (v55 = distributorType2, ([distributorID isEqualToString:v23] & 1) != 0) || distributorType == 2 || v55 == 2)
  {
LABEL_13:
    v54 = distributorType;
    v27 = distributorInfo;
    v10 = identifier;
LABEL_14:
    if ([(MIInstallableBundle *)self isPlaceholderInstall])
    {
LABEL_15:
      [(MIInstallable *)self setInstalledDistributorID:distributorID];
      v28 = 1;
      v29 = v56;
      goto LABEL_62;
    }

    bundle2 = [(MIInstallable *)self bundle];
    identifier = [bundle2 identifier];

    bundleSigningInfo = [(MIInstallableBundle *)self bundleSigningInfo];
    v49 = bundleContainer;
    v50 = v8;
    v48 = displayName;
    if (distributorID)
    {
      v33 = [identifier isEqualToString:distributorID];
    }

    else
    {
      v33 = 0;
    }

    entitlements = [bundleSigningInfo entitlements];
    v42 = sub_10004BF34(entitlements);

    if (!distributorID || !v42 || (v33 & 1) != 0 || v54 == 2)
    {
      v60 = v10;
      v45 = [(MIInstallableBundle *)self _checkEligibilityForAppWithSigningInfo:bundleSigningInfo distributorInfo:v27 isWebDistribution:v33 withError:&v60];
      v44 = v60;

      if (v45)
      {

        v10 = v44;
        bundleContainer = v49;
        displayName = v48;
        v8 = v50;
        goto LABEL_15;
      }

      bundleContainer = v49;
      displayName = v48;
    }

    else
    {
      displayName = v48;
      v44 = sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3177, MIInstallerErrorDomain, 211, 0, 0, @"The marketplace %@ may not be installed by the distributor ID %@.", v43, v48);

      bundleContainer = v49;
    }

    distributorInfo = v27;
    v10 = v44;
    v8 = v50;
    goto LABEL_55;
  }

  IsThirdParty = MIDistributorTypeIsThirdParty();
  v39 = MIDistributorTypeIsThirdParty();
  if (IsThirdParty && v55 == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3145, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by a third party (distributor ID %@) but its existing installation is distributed by Apple (distributor ID %@). An app cannot change its distribution source from Apple to a third party once installed. Uninstall this app, then try installing it again.", v40, displayName);
  }

  else if (((distributorType == 1) & v39) == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3148, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by Apple (distributor ID %@) but its existing installation is distributed by a third party (distributor ID %@). An app cannot change its distribution source from a third party to Apple once installed. Uninstall this app, then try installing it again.", v40, displayName);
  }

  else if ((IsThirdParty & v39) == 1)
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3151, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by %@ but its existing installation is distributed by %@. An app cannot change its third party distribution source once installed. Uninstall this app, then try installing it again.", v40, displayName);
  }

  else
  {
    sub_100010734("[MIInstallableBundle _validateiTunesMetadataWithError:]", 3155, MIInstallerErrorDomain, 199, 0, 0, @"The app being installed, %@, is distributed by %@ but its existing installation is distributed by %@. An app cannot change its distribution source once installed, except to/from TestFlight. Uninstall this app, then try installing it again.", v40, displayName);
  }
  v10 = ;
LABEL_55:
  v29 = v56;
LABEL_58:

  v27 = distributorInfo;
LABEL_59:
  if (error)
  {
    v46 = v10;
    v28 = 0;
    *error = v10;
  }

  else
  {
    v28 = 0;
  }

LABEL_62:

  return v28;
}

- (BOOL)_setLinkageInBundleMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  installOptions = [(MIInstallable *)self installOptions];
  linkedParentBundleID = [installOptions linkedParentBundleID];

  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  v10 = existingBundleContainer;
  if (existingBundleContainer)
  {
    v38 = 0;
    v11 = [existingBundleContainer bundleMetadataWithError:&v38];
    v12 = v38;
    if (!v11)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
        if (!error)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    linkedParentBundleID2 = [v11 linkedParentBundleID];
    v14 = linkedParentBundleID2;
    if (linkedParentBundleID)
    {
      if (linkedParentBundleID2)
      {
        if (([linkedParentBundleID isEqualToString:linkedParentBundleID2] & 1) == 0)
        {
          v35 = MIInstallerErrorDomain;
          bundle = [(MIInstallable *)self bundle];
          identifier = [bundle identifier];
          v18 = sub_100010734("[MIInstallableBundle _setLinkageInBundleMetadata:error:]", 3230, v35, 4, 0, 0, @"Existing installation of %@ is linked to %@, but the client supplied a linked parent bundle ID of %@ for the update. Changing linkage of an already installed app is not supported", v17, identifier);

          v12 = bundle;
          goto LABEL_27;
        }
      }

      else
      {
        bundle2 = [v10 bundle];
        isPlaceholder = [bundle2 isPlaceholder];

        if ((isPlaceholder & 1) == 0)
        {
          v18 = sub_100010734("[MIInstallableBundle _setLinkageInBundleMetadata:error:]", 3225, MIInstallerErrorDomain, 4, 0, 0, @"Client specified a linked parent bundle ID for an upgrade to %@ when a parent linkage was not originally specified when the app was installed. Linkage cannot be established by updating an app", v30, linkedParentBundleID);
LABEL_27:

          v12 = v18;
          if (!error)
          {
            goto LABEL_28;
          }

          goto LABEL_19;
        }
      }
    }

    else if (linkedParentBundleID2)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        identifier3 = @"LinkedParentBundleID";
        v34 = linkedParentBundleID2;
        MOLogWrite();
      }

      linkedParentBundleID = v14;
    }

    else
    {
      linkedParentBundleID = 0;
    }

    linkedChildBundleIDs = [v11 linkedChildBundleIDs];
    [metadataCopy setLinkedChildBundleIDs:linkedChildBundleIDs];

    if (!linkedParentBundleID)
    {
LABEL_31:
      v26 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    v12 = 0;
    if (!linkedParentBundleID)
    {
      goto LABEL_31;
    }
  }

  v36 = metadataCopy;
  errorCopy = error;
  v20 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstallable *)self installationDomain]];
  bundle3 = [(MIInstallable *)self bundle];
  identifier2 = [bundle3 identifier];
  v37 = v12;
  v23 = [v20 preflightLinkingChild:identifier2 toParent:linkedParentBundleID error:&v37];
  v24 = v37;

  if (!v23)
  {

    v12 = v24;
    error = errorCopy;
    metadataCopy = v36;
LABEL_18:
    if (!error)
    {
LABEL_28:
      v26 = 0;
      goto LABEL_32;
    }

LABEL_19:
    v27 = v12;
    v26 = 0;
    *error = v12;
LABEL_32:
    v24 = v12;
    goto LABEL_33;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    bundle4 = [(MIInstallable *)self bundle];
    identifier3 = [bundle4 identifier];
    v34 = linkedParentBundleID;
    MOLogWrite();
  }

  metadataCopy = v36;
  [v36 setLinkedParentBundleID:{linkedParentBundleID, identifier3, v34}];

  v26 = 1;
LABEL_33:

  return v26;
}

- (BOOL)_setBundleMetadataWithError:(id *)error
{
  installOptions = [(MIInstallable *)self installOptions];
  bundleContainer = [(MIInstallableBundle *)self bundleContainer];
  v40 = 0;
  v7 = [bundleContainer bundleMetadataWithError:&v40];
  alternateIconName = v40;

  if (!v7)
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_39;
  }

  v9 = +[NSDate date];
  [v7 setInstallDate:v9];

  v10 = MGCopyAnswer();
  objc_opt_class();
  v11 = v10;
  v12 = 0;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  if (!v12)
  {
    v16 = sub_100010734("[MIInstallableBundle _setBundleMetadataWithError:]", 3278, MIInstallerErrorDomain, 4, 0, 0, @"Failed to copy build version for %@", v13, self);
    v15 = 0;
LABEL_38:

    alternateIconName = v16;
    goto LABEL_39;
  }

  [v7 setInstallBuildVersion:v12];
  lsInstallType = [installOptions lsInstallType];
  if (!lsInstallType)
  {
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];

    if (!existingBundleContainer)
    {
      goto LABEL_21;
    }

    existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
    bundle = [existingBundleContainer2 bundle];
    v39 = alternateIconName;
    v20 = [bundle lsInstallTypeWithError:&v39];
    v21 = v39;

    if (v20)
    {
      [v7 setInstallType:{objc_msgSend(v20, "unsignedIntegerValue")}];
LABEL_20:

      alternateIconName = v21;
      goto LABEL_21;
    }

    domain = [v21 domain];
    if ([domain isEqualToString:MIInstallerErrorDomain])
    {
      code = [v21 code];

      if (code == 158)
      {
LABEL_19:

        v21 = 0;
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      existingBundleContainer3 = [(MIInstallable *)self existingBundleContainer];
      bundle2 = [existingBundleContainer3 bundle];
      v35 = v21;
      MOLogWrite();
    }

    goto LABEL_19;
  }

  [v7 setInstallType:lsInstallType];
LABEL_21:
  v38 = alternateIconName;
  v25 = [(MIInstallableBundle *)self _setLinkageInBundleMetadata:v7 error:&v38, bundle2, v35];
  v26 = v38;

  if (v25)
  {
    autoInstallOverride = [installOptions autoInstallOverride];
    v28 = autoInstallOverride;
    if (autoInstallOverride == 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (autoInstallOverride != 1)
      {
LABEL_32:
        alternateIconName = [installOptions alternateIconName];
        if (alternateIconName)
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            bundle3 = [(MIInstallable *)self bundle];
            identifier = [bundle3 identifier];
            v36 = alternateIconName;
            MOLogWrite();
          }

          [v7 setAlternateIconName:{alternateIconName, identifier, v36}];
        }

        bundleContainer2 = [(MIInstallableBundle *)self bundleContainer];
        v37 = v26;
        v15 = [bundleContainer2 saveBundleMetadata:v7 withError:&v37];
        v16 = v37;

        goto LABEL_38;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
LABEL_31:
        [v7 setAutoInstallOverride:v28];
        goto LABEL_32;
      }
    }

    MOLogWrite();
    goto LABEL_31;
  }

  v15 = 0;
  alternateIconName = v26;
LABEL_39:
  if (error && (v15 & 1) == 0)
  {
    v31 = alternateIconName;
    *error = alternateIconName;
  }

  return v15;
}

- (BOOL)_handleStashMode:(unint64_t)mode withError:(id *)error
{
  if (mode == 2)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      bundle = [(MIInstallable *)self bundle];
      identifier = [bundle identifier];
      MOLogWrite();
    }

    v11 = 0;
    goto LABEL_13;
  }

  if (mode == 1)
  {
    bundleContainer = [(MIInstallableBundle *)self bundleContainer];
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
    v17 = 0;
    v9 = [bundleContainer stashBundleContainerContents:existingBundleContainer error:&v17];
    v10 = v17;
  }

  else
  {
    if (mode)
    {
      v11 = sub_100010734("[MIInstallableBundle _handleStashMode:withError:]", 3368, MIInstallerErrorDomain, 25, 0, 0, @"Unknown stash mode specified in options: %lu", v4, mode);
      if (error)
      {
        goto LABEL_8;
      }

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    bundleContainer = [(MIInstallableBundle *)self bundleContainer];
    existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
    v18 = 0;
    v9 = [bundleContainer transferExistingStashesFromContainer:existingBundleContainer error:&v18];
    v10 = v18;
  }

  v11 = v10;

  if (v9)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_16;
  }

  if (!error)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = v11;
  v13 = 0;
  *error = v11;
LABEL_16:

  return v13;
}

- (BOOL)_linkToParentApplication:(id *)application
{
  installOptions = [(MIInstallable *)self installOptions];
  linkedParentBundleID = [installOptions linkedParentBundleID];

  if (linkedParentBundleID)
  {
    v7 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstallable *)self installationDomain]];
    bundleContainer = [(MIInstallableBundle *)self bundleContainer];
    identifier = [bundleContainer identifier];
    v14 = 0;
    v10 = [v7 linkChild:identifier toParent:linkedParentBundleID error:&v14];
    v11 = v14;

    if (application && (v10 & 1) == 0)
    {
      v12 = v11;
      v10 = 0;
      *application = v11;
    }
  }

  else
  {
    v7 = 0;
    v11 = 0;
    v10 = 1;
  }

  return v10;
}

- (BOOL)_handleStashOptionWithError:(id *)error
{
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  if (!existingBundleContainer)
  {
    goto LABEL_11;
  }

  v6 = existingBundleContainer;
  existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
  bundle = [existingBundleContainer2 bundle];
  if ([bundle isPlaceholder])
  {

LABEL_11:
    v15 = 0;
LABEL_12:
    v17 = 1;
    goto LABEL_13;
  }

  v9 = +[MIDaemonConfiguration sharedInstance];
  allowsInternalSecurityPolicy = [v9 allowsInternalSecurityPolicy];

  if (!allowsInternalSecurityPolicy)
  {
    goto LABEL_11;
  }

  installOptions = [(MIInstallable *)self installOptions];
  stashMode = [installOptions stashMode];
  if ([installOptions installTargetType] == 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = stashMode;
  }

  v19 = 0;
  v14 = [(MIInstallableBundle *)self _handleStashMode:v13 withError:&v19];
  v15 = v19;

  if (v14)
  {
    goto LABEL_12;
  }

  if (error)
  {
    v16 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_13:

  return v17;
}

- (BOOL)_preserveExistingPlaceholderAsParallelPlaceholderWithError:(id *)error
{
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  v6 = existingBundleContainer;
  if (existingBundleContainer)
  {
    hasParallelPlaceholder = [existingBundleContainer hasParallelPlaceholder];
    bundle = [v6 bundle];
    isPlaceholder = [bundle isPlaceholder];

    if ((isPlaceholder & 1) == 0 && (hasParallelPlaceholder & 1) == 0)
    {
      v10 = MIInstallerErrorDomain;
      bundle2 = [(MIInstallable *)self bundle];
      identifier = [bundle2 identifier];
      [(MIInstallable *)self installationDomain];
      v13 = MIStringForInstallationDomain();
      sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", 3455, v10, 190, 0, 0, @"Existing installed bundle for %@ in %@ was not a placeholder or did not have a parallel placeholder.", v14, identifier);
      goto LABEL_6;
    }

    bundleContainer = [(MIInstallableBundle *)self bundleContainer];
    parallelPlaceholderURL = [bundleContainer parallelPlaceholderURL];

    v22 = +[MIFileManager defaultManager];
    if (hasParallelPlaceholder)
    {
      parallelPlaceholderURL2 = [v6 parallelPlaceholderURL];
      v36 = 0;
      v24 = [v22 copyItemAtURL:parallelPlaceholderURL2 toURL:parallelPlaceholderURL error:&v36];
      v17 = v36;

      if ((v24 & 1) == 0)
      {
        v26 = MIInstallerErrorDomain;
        v27 = @"Could not copy existing parallel placeholder to new bundle container.";
        v28 = 3465;
        goto LABEL_14;
      }
    }

    else
    {
      bundle3 = [v6 bundle];
      bundleURL = [bundle3 bundleURL];
      v35 = 0;
      v31 = [v22 copyItemAtURL:bundleURL toURL:parallelPlaceholderURL error:&v35];
      v17 = v35;

      if ((v31 & 1) == 0)
      {
        v26 = MIInstallerErrorDomain;
        v27 = @"Could not copy existing placeholder to parallel placeholder.";
        v28 = 3470;
LABEL_14:
        v32 = sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", v28, v26, 4, v17, 0, v27, v25, v34);

        v17 = v32;
        if (error)
        {
          goto LABEL_7;
        }

LABEL_15:
        v20 = 0;
        goto LABEL_16;
      }
    }

    v20 = 1;
    goto LABEL_16;
  }

  v15 = MIInstallerErrorDomain;
  bundle2 = [(MIInstallable *)self bundle];
  identifier = [bundle2 identifier];
  [(MIInstallable *)self installationDomain];
  v13 = MIStringForInstallationDomain();
  sub_100010734("[MIInstallableBundle _preserveExistingPlaceholderAsParallelPlaceholderWithError:]", 3448, v15, 190, 0, 0, @"Did not find existing bundle container for %@ in %@ from which to preserve placeholder.", v16, identifier);
  v17 = LABEL_6:;

  parallelPlaceholderURL = 0;
  if (!error)
  {
    goto LABEL_15;
  }

LABEL_7:
  v19 = v17;
  v20 = 0;
  *error = v17;
LABEL_16:

  return v20;
}

- (BOOL)performInstallationWithError:(id *)error
{
  v54.receiver = self;
  v54.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v54 performInstallationWithError:?])
  {
    v17 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  progressBlock = [(MIInstallable *)self progressBlock];
  (progressBlock)[2](progressBlock, @"CreatingContainer", 50);

  bundle = [(MIInstallable *)self bundle];
  bundleType = [bundle bundleType];

  if (bundleType <= 5 && ((1 << bundleType) & 0x36) != 0)
  {
    bundle2 = [(MIInstallable *)self bundle];
    identifier = [bundle2 identifier];
    v53 = 0;
    v10 = [MIBundleContainer tempAppBundleContainerWithIdentifier:identifier inDomain:[(MIInstallable *)self installationDomain] withError:&v53];
    v11 = v53;
    [(MIInstallableBundle *)self setBundleContainer:v10];
  }

  else
  {
    v42 = MIInstallerErrorDomain;
    bundle2 = [(MIInstallable *)self bundle];
    bundleType2 = [bundle2 bundleType];
    v11 = sub_100010734("[MIInstallableBundle performInstallationWithError:]", 3536, v42, 4, 0, 0, @"Don't know how to create bundle container for installable type %d", v44, bundleType2);
  }

  bundleContainer = [(MIInstallableBundle *)self bundleContainer];

  if (!bundleContainer)
  {
    v36 = MIInstallerErrorDomain;
    bundle3 = [(MIInstallable *)self bundle];
    identifier2 = [bundle3 identifier];
    v17 = sub_100010734("[MIInstallableBundle performInstallationWithError:]", 3541, v36, 21, v11, &off_10009CB00, @"Failed to create container for %@", v39, identifier2);

    goto LABEL_19;
  }

  progressBlock2 = [(MIInstallable *)self progressBlock];
  (progressBlock2)[2](progressBlock2, @"InstallingApplication", 60);

  bundleContainer2 = [(MIInstallableBundle *)self bundleContainer];
  bundle4 = [(MIInstallable *)self bundle];
  v52 = v11;
  v16 = [bundleContainer2 captureBundleByMoving:bundle4 withError:&v52];
  v17 = v52;

  if (!v16)
  {
    goto LABEL_19;
  }

  bundleContainer3 = [(MIInstallableBundle *)self bundleContainer];
  bundle5 = [bundleContainer3 bundle];
  bundleURL = [bundle5 bundleURL];
  bundleContainer4 = [(MIInstallableBundle *)self bundleContainer];
  v51 = v17;
  v22 = [(MIInstallableBundle *)self _captureDataFromStagingRootOrBundle:bundleURL toContainer:bundleContainer4 withError:&v51];
  v23 = v51;

  if (!v22)
  {
    goto LABEL_21;
  }

  bundleContainer5 = [(MIInstallableBundle *)self bundleContainer];
  bundle6 = [bundleContainer5 bundle];
  bundleContainer6 = [(MIInstallableBundle *)self bundleContainer];
  v50 = v23;
  v27 = [(MIInstallableBundle *)self _writeOptionsDataToBundle:bundle6 orContainer:bundleContainer6 error:&v50];
  v17 = v50;

  if (!v27)
  {
    goto LABEL_19;
  }

  v49 = v17;
  v28 = [(MIInstallableBundle *)self _validateiTunesMetadataWithError:&v49];
  v23 = v49;

  if (!v28)
  {
    goto LABEL_21;
  }

  v48 = v23;
  v29 = [(MIInstallableBundle *)self _setBundleMetadataWithError:&v48];
  v17 = v48;

  if (!v29)
  {
    goto LABEL_19;
  }

  v47 = v17;
  v30 = [(MIInstallableBundle *)self _validateSinfsWithError:&v47];
  v23 = v47;

  if (!v30)
  {
    goto LABEL_21;
  }

  v46 = v23;
  v31 = [(MIInstallableBundle *)self _handleStashOptionWithError:&v46];
  v17 = v46;

  if (!v31)
  {
LABEL_19:
    if (!error)
    {
LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

LABEL_20:
    v40 = v17;
    v35 = 0;
    *error = v17;
    goto LABEL_23;
  }

  installOptions = [(MIInstallable *)self installOptions];
  preservePlaceholderAsParallel = [installOptions preservePlaceholderAsParallel];

  if (!preservePlaceholderAsParallel)
  {
    v35 = 1;
    goto LABEL_23;
  }

  v45 = v17;
  v34 = [(MIInstallableBundle *)self _preserveExistingPlaceholderAsParallelPlaceholderWithError:&v45];
  v23 = v45;

  if ((v34 & 1) == 0)
  {
LABEL_21:
    v17 = v23;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v35 = 1;
  v17 = v23;
LABEL_23:

  return v35;
}

- (BOOL)_postFlightAppExtensionsWithError:(id *)error
{
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(MIInstallableBundle *)self appExtensionBundles];
  v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v32)
  {
    errorCopy = error;
    v6 = 0;
    v33 = *v38;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v38 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v37 + 1) + 8 * v7);
      bundle = [(MIInstallable *)self bundle];
      isPlaceholder = [bundle isPlaceholder];

      if (isPlaceholder)
      {
        v11 = v6;
      }

      else
      {
        v36 = v6;
        v12 = [v8 makeExecutableWithError:&v36];
        v11 = v36;

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v35 = 0;
      v13 = [v8 updateMCMWithCodeSigningInfoAsAdvanceCopy:1 withError:&v35];
      v14 = v35;
      if ((v13 & 1) == 0)
      {
        break;
      }

      v15 = v5;
      identity = [(MIInstallable *)self identity];
      personaUniqueString = [identity personaUniqueString];
      v34 = v11;
      v18 = [v8 dataContainerCreatingIfNeeded:1 forPersona:personaUniqueString makeLive:0 created:0 error:&v34];
      v6 = v34;

      if (!v18)
      {
        v24 = MIInstallerErrorDomain;
        identifier = [v8 identifier];
        v23 = sub_100010734("[MIInstallableBundle _postFlightAppExtensionsWithError:]", 3636, v24, 21, v6, &off_10009CB28, @"Failed to create plugin data container for plugin %@", v25, identifier);
        v11 = v6;
        v5 = v15;
LABEL_21:

        v11 = v23;
LABEL_22:

        if (errorCopy)
        {
          v26 = v11;
          v19 = 0;
          *errorCopy = v11;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_25;
      }

      v5 = v15;
      [v15 addObject:v18];

      if (v32 == ++v7)
      {
        v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v32)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      identifier2 = [v8 identifier];
      v29 = v14;
      MOLogWrite();
    }

    v20 = MIInstallerErrorDomain;
    identifier = [v8 identifier];
    [v8 isPlaceholder];
    v23 = sub_100010734("[MIInstallableBundle _postFlightAppExtensionsWithError:]", 3629, v20, 110, v14, 0, @"Failed to set app extension code signing info with container manager for %@, isPlaceholder: %c", v22, identifier);
    goto LABEL_21;
  }

  v6 = 0;
LABEL_15:

  [(MIInstallableBundle *)self setAppExtensionDataContainers:v5];
  v19 = 1;
  v11 = v6;
LABEL_25:

  return v19;
}

- (BOOL)_setLaunchWarningDataWithError:(id *)error
{
  bundleSigningInfo = [(MIInstallableBundle *)self bundleSigningInfo];
  if (bundleSigningInfo)
  {
    bundle = [(MIInstallable *)self bundle];
    launchWarningData = [bundleSigningInfo launchWarningData];
    v14 = 0;
    v9 = [bundle setLaunchWarningData:launchWarningData withError:&v14];
    v10 = v14;

    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = sub_100010734("[MIInstallableBundle _setLaunchWarningDataWithError:]", 3663, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly missing bundle signing information", v5, v13);
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & 1) == 0)
  {
    v11 = v10;
    *error = v10;
  }

LABEL_7:

  return v9;
}

- (BOOL)postFlightInstallationWithError:(id *)error
{
  progressBlock = [(MIInstallable *)self progressBlock];
  (progressBlock)[2](progressBlock, @"PostflightingApplication", 70);

  v59.receiver = self;
  v59.super_class = MIInstallableBundle;
  if (![(MIInstallable *)&v59 postFlightInstallationWithError:error])
  {
    v12 = 0;
    goto LABEL_35;
  }

  bundle = [(MIInstallable *)self bundle];
  needsDataContainer = [bundle needsDataContainer];

  if (needsDataContainer)
  {
    bundle2 = [(MIInstallable *)self bundle];
    identity = [(MIInstallable *)self identity];
    personaUniqueString = [identity personaUniqueString];
    v58 = 0;
    v11 = [bundle2 dataContainerCreatingIfNeeded:1 forPersona:personaUniqueString makeLive:0 created:0 error:&v58];
    v12 = v58;

    if (!v11)
    {
      goto LABEL_35;
    }

    [(MIInstallableBundle *)self setDataContainer:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v57 = v12;
  v14 = [(MIInstallableBundle *)self _postFlightAppExtensionsWithError:&v57];
  v12 = v57;

  if (v14)
  {
    bundle3 = [(MIInstallable *)self bundle];
    isPlaceholder = [bundle3 isPlaceholder];

    if (isPlaceholder)
    {
LABEL_9:
      v17 = 1;
      goto LABEL_38;
    }

    bundle4 = [(MIInstallable *)self bundle];
    v56 = v12;
    v19 = [bundle4 makeExecutableWithError:&v56];
    v20 = v56;

    if (!v19)
    {
      goto LABEL_34;
    }

    if ([(MIInstallableBundle *)self xpcServiceBundlesEnabled])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      xpcServiceBundles = [(MIInstallableBundle *)self xpcServiceBundles];
      v22 = [xpcServiceBundles countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v53;
LABEL_14:
        v25 = 0;
        v26 = v20;
        while (1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(xpcServiceBundles);
          }

          v27 = *(*(&v52 + 1) + 8 * v25);
          v51 = v26;
          v28 = [v27 makeExecutableWithError:&v51];
          v20 = v51;

          if (!v28)
          {
            goto LABEL_33;
          }

          v25 = v25 + 1;
          v26 = v20;
          if (v23 == v25)
          {
            v23 = [xpcServiceBundles countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v23)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    xpcServiceBundles = [(MIInstallableBundle *)self driverKitExtensionBundles];
    v29 = [xpcServiceBundles countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
LABEL_23:
      v32 = 0;
      v33 = v20;
      while (1)
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(xpcServiceBundles);
        }

        v34 = *(*(&v47 + 1) + 8 * v32);
        v46 = v33;
        v35 = [v34 makeExecutableWithError:&v46];
        v20 = v46;

        if (!v35)
        {
          break;
        }

        v32 = v32 + 1;
        v33 = v20;
        if (v30 == v32)
        {
          v30 = [xpcServiceBundles countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v30)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

LABEL_33:

LABEL_34:
      v12 = v20;
      goto LABEL_35;
    }

LABEL_29:

    v45 = v20;
    v36 = [(MIInstallableBundle *)self _setLaunchWarningDataWithError:&v45];
    v12 = v45;

    if (v36)
    {
      if (_os_feature_enabled_impl())
      {
        bundleContainer = [(MIInstallableBundle *)self bundleContainer];
        v44 = v12;
        v38 = [MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:bundleContainer withError:&v44];
        v39 = v44;

        if (v38)
        {
          v17 = 1;
          v12 = v39;
          goto LABEL_38;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          bundle5 = [(MIInstallable *)self bundle];
          identifier = [bundle5 identifier];
          MOLogWrite();
        }

        v12 = 0;
      }

      goto LABEL_9;
    }
  }

LABEL_35:
  if (error)
  {
    v40 = v12;
    v17 = 0;
    *error = v12;
  }

  else
  {
    v17 = 0;
  }

LABEL_38:

  return v17;
}

- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  if (!-[MIInstallable shouldModifyExistingContainers](self, "shouldModifyExistingContainers") || [containerCopy status] != 1)
  {
    v9 = 0;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v16 = 0;
  v7 = [containerCopy regenerateDirectoryUUIDWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      identifier = [containerCopy identifier];
      containerURL = [containerCopy containerURL];
      path = [containerURL path];
      MOLogWrite();
    }

    goto LABEL_8;
  }

  if (error)
  {
    v14 = v8;
    v12 = 0;
    *error = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (unint64_t)_installationJournalOperationType
{
  if ([(MIInstallable *)self installOperationType]== 1)
  {
    return 5;
  }

  if (![(MIInstallableBundle *)self isPlaceholderInstall])
  {
    return 1;
  }

  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  v5 = existingBundleContainer;
  if (existingBundleContainer && ([existingBundleContainer bundle], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isPlaceholder"), v6, (v7 & 1) == 0))
  {
    installOptions = [(MIInstallable *)self installOptions];
    installTargetType = [installOptions installTargetType];

    if (installTargetType == 3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)_noLongerPresentAppExtensionDataContainers
{
  v37 = [NSMutableArray arrayWithCapacity:0];
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  bundle = [existingBundleContainer bundle];

  v49 = 0;
  v5 = [bundle appExtensionBundlesWithError:&v49];
  v6 = v49;
  v7 = v6;
  if (v5)
  {
    v8 = v6;
    bundleURL = [NSMutableArray arrayWithCapacity:0];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];
    v11 = [appExtensionBundles countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(appExtensionBundles);
          }

          identifier = [*(*(&v45 + 1) + 8 * i) identifier];
          [bundleURL addObject:identifier];
        }

        v12 = [appExtensionBundles countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = v5;
    obj = v5;
    v16 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v35 = bundle;
      v18 = *v42;
      v7 = v8;
      v38 = bundleURL;
      do
      {
        v19 = 0;
        v20 = v7;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v41 + 1) + 8 * v19);
          identifier2 = [v21 identifier];
          v23 = [bundleURL containsObject:identifier2];

          if (v23)
          {
            v7 = v20;
          }

          else
          {
            v24 = v17;
            v25 = v18;
            selfCopy = self;
            identity = [(MIInstallable *)self identity];
            personaUniqueString = [identity personaUniqueString];
            v40 = v20;
            v29 = [v21 dataContainerCreatingIfNeeded:0 forPersona:personaUniqueString makeLive:0 created:0 error:&v40];
            v30 = v40;

            if (v29)
            {
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
              {
                identifier3 = [v21 identifier];
                MOLogWrite();
              }

              [v37 addObject:{v29, identifier3}];
            }

            else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              identifier3 = [v21 identifier];
              v34 = v30;
              MOLogWrite();
            }

            v7 = v30;
            v20 = v30;
            self = selfCopy;
            v18 = v25;
            v17 = v24;
            bundleURL = v38;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v17);
      bundle = v35;
      v5 = v36;
    }

    else
    {
      v7 = v8;
    }

    goto LABEL_32;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    bundleURL = [bundle bundleURL];
    identifier3 = [bundleURL path];
    v34 = v7;
    obj = identifier3;
    MOLogWrite();
LABEL_32:
  }

  v31 = [v37 copy];

  return v31;
}

- (id)_createJournalEntry
{
  installOptions = [(MIInstallable *)self installOptions];
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  if (existingBundleContainer && ![(MIInstallableBundle *)self isPlaceholderInstall])
  {
    _noLongerPresentAppExtensionDataContainers = [(MIInstallableBundle *)self _noLongerPresentAppExtensionDataContainers];
  }

  else
  {
    _noLongerPresentAppExtensionDataContainers = 0;
  }

  _installationJournalOperationType = [(MIInstallableBundle *)self _installationJournalOperationType];
  v7 = [MIInstallationJournalEntry alloc];
  identity = [(MIInstallable *)self identity];
  bundleContainer = [(MIInstallableBundle *)self bundleContainer];
  installationDomain = [(MIInstallable *)self installationDomain];
  bundleSigningInfo = [(MIInstallableBundle *)self bundleSigningInfo];
  v12 = [(MIInstallationJournalEntry *)v7 initWithIdentity:identity bundleContainer:bundleContainer existingBundleContainer:existingBundleContainer installationDomain:installationDomain operationType:_installationJournalOperationType installOptions:installOptions bundleSigningInfo:bundleSigningInfo];

  progressBlock = [(MIInstallable *)self progressBlock];
  [(MIInstallationJournalEntry *)v12 setProgressBlock:progressBlock];

  linkedParentBundleID = [installOptions linkedParentBundleID];
  [(MIInstallationJournalEntry *)v12 setLinkToParentBundleID:linkedParentBundleID];

  [(MIInstallationJournalEntry *)v12 setNoLongerPresentAppExtensionDataContainers:_noLongerPresentAppExtensionDataContainers];
  dataContainer = [(MIInstallableBundle *)self dataContainer];
  if (dataContainer)
  {
    [(MIInstallationJournalEntry *)v12 setDataContainer:dataContainer];
  }

  appExtensionBundles = [(MIInstallableBundle *)self appExtensionBundles];
  v17 = [appExtensionBundles copy];
  [(MIInstallationJournalEntry *)v12 setAppExtensionBundles:v17];

  appExtensionDataContainers = [(MIInstallableBundle *)self appExtensionDataContainers];
  v19 = [appExtensionDataContainers copy];
  [(MIInstallationJournalEntry *)v12 setAppExtensionDataContainers:v19];

  return v12;
}

- (BOOL)finalizeInstallationWithError:(id *)error
{
  progressBlock = [(MIInstallable *)self progressBlock];
  (progressBlock)[2](progressBlock, @"SandboxingApplication", 80);

  v16.receiver = self;
  v16.super_class = MIInstallableBundle;
  v17 = 0;
  v6 = [(MIInstallable *)&v16 finalizeInstallationWithError:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    _createJournalEntry = [(MIInstallableBundle *)self _createJournalEntry];
    v15 = v8;
    v10 = [_createJournalEntry finalizeContainersWithError:&v15];
    v11 = v15;

    if (v10)
    {
      [(MIInstallableBundle *)self setJournalEntry:_createJournalEntry];
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    _createJournalEntry = 0;
    v11 = v7;
  }

  if (error)
  {
    v13 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (id)stageBackgroundUpdateWithError:(id *)error
{
  _createJournalEntry = [(MIInstallableBundle *)self _createJournalEntry];
  v18 = 0;
  v6 = [_createJournalEntry stageUpdateForLaterWithError:&v18];
  v7 = v18;
  if (v6)
  {
    [(MIInstallableBundle *)self setJournalEntry:_createJournalEntry];
    v8 = [MIStagedUpdateMetadata alloc];
    uniqueIdentifier = [_createJournalEntry uniqueIdentifier];
    bundleContainer = [_createJournalEntry bundleContainer];
    v11 = -[MIStagedUpdateMetadata initForStagedIdentifier:diskUsage:](v8, "initForStagedIdentifier:diskUsage:", uniqueIdentifier, [bundleContainer diskUsage]);
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v16 = _createJournalEntry;
      MOLogWrite();
    }

    v12 = +[MIJournal sharedInstance];
    v17 = 0;
    v13 = [v12 purgeJournalEntry:_createJournalEntry withError:&v17];
    uniqueIdentifier = v17;

    if ((v13 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      MOLogWrite();
    }

    v11 = 0;
  }

  if (error && !v11)
  {
    v14 = v7;
    *error = v7;
  }

  return v11;
}

- (id)launchServicesBundleRecordsWithError:(id *)error
{
  v5 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = MIInstallableBundle;
  v6 = [(MIInstallable *)&v11 launchServicesBundleRecordsWithError:error];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
    journalEntry = [(MIInstallableBundle *)self journalEntry];
    bundleRecordsToRegister = [journalEntry bundleRecordsToRegister];
    [v5 addObjectsFromArray:bundleRecordsToRegister];

    v9 = [v5 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)performLaunchServicesRegistrationWithError:(id *)error
{
  journalEntry = [(MIInstallableBundle *)self journalEntry];
  LOBYTE(error) = [journalEntry performLaunchServicesRegistrationWithError:error];

  return error;
}

@end