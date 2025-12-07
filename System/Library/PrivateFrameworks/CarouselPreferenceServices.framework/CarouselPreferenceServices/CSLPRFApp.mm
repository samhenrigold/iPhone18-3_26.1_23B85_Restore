@interface CSLPRFApp
+ (id)appWithACXRemoteApplication:(id)application;
+ (id)appWithApplicationRecord:(id)record;
+ (id)appWithBBSectionInfo:(id)info;
+ (id)appWithBundleID:(id)d name:(id)name sdkVersion:(id)version supportsAlwaysOnDisplay:(BOOL)display defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)treatment;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsSmartStack;
- (CSLPRFApp)initWithBundleIdentifier:(id)identifier localizedName:(id)name sdkVersion:(id)version supportsAlwaysOnDisplay:(BOOL)display defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)treatment applicationRecord:(id)record remoteApplicationRecord:(id)applicationRecord bbSectionInfo:(id)self0;
- (LSApplicationRecord)applicationRecord;
- (NSMutableArray)unionedBackgroundModes;
- (NSString)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation CSLPRFApp

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_localizedName];
  v5 = [builder appendObject:self->_bundleIdentifier];
  v6 = [builder appendObject:self->_SDKVersion];
  v7 = [builder appendBool:self->_supportsAlwaysOnDisplay];
  v8 = [builder appendBool:self->_defaultsToPrivateAlwaysOnDisplayTreatment];
  v9 = [builder appendBool:self->_local];
  v10 = [builder appendObject:self->_URL];
  v11 = [builder appendObject:self->_bbSectionInfo];
  v12 = [builder hash];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  localizedName = self->_localizedName;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __21__CSLPRFApp_isEqual___block_invoke;
  v48[3] = &unk_278745500;
  v7 = equalCopy;
  v49 = v7;
  v8 = [v5 appendObject:localizedName counterpart:v48];
  bundleIdentifier = self->_bundleIdentifier;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __21__CSLPRFApp_isEqual___block_invoke_2;
  v46[3] = &unk_278745500;
  v10 = v7;
  v47 = v10;
  v11 = [v5 appendObject:bundleIdentifier counterpart:v46];
  SDKVersion = self->_SDKVersion;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __21__CSLPRFApp_isEqual___block_invoke_3;
  v44[3] = &unk_278745500;
  v13 = v10;
  v45 = v13;
  v14 = [v5 appendObject:SDKVersion counterpart:v44];
  supportsAlwaysOnDisplay = self->_supportsAlwaysOnDisplay;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __21__CSLPRFApp_isEqual___block_invoke_4;
  v42[3] = &unk_278745630;
  v16 = v13;
  v43 = v16;
  v17 = [v5 appendBool:supportsAlwaysOnDisplay counterpart:v42];
  defaultsToPrivateAlwaysOnDisplayTreatment = self->_defaultsToPrivateAlwaysOnDisplayTreatment;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __21__CSLPRFApp_isEqual___block_invoke_5;
  v40[3] = &unk_278745630;
  v19 = v16;
  v41 = v19;
  v20 = [v5 appendBool:defaultsToPrivateAlwaysOnDisplayTreatment counterpart:v40];
  local = self->_local;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __21__CSLPRFApp_isEqual___block_invoke_6;
  v38[3] = &unk_278745630;
  v22 = v19;
  v39 = v22;
  v23 = [v5 appendBool:local counterpart:v38];
  URL = self->_URL;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __21__CSLPRFApp_isEqual___block_invoke_7;
  v36[3] = &unk_278745500;
  v25 = v22;
  v37 = v25;
  v26 = [v5 appendObject:URL counterpart:v36];
  bbSectionInfo = self->_bbSectionInfo;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __21__CSLPRFApp_isEqual___block_invoke_8;
  v34 = &unk_278745500;
  v35 = v25;
  v28 = v25;
  v29 = [v5 appendObject:bbSectionInfo counterpart:&v31];
  LOBYTE(v25) = [v5 isEqual];

  return v25;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_localizedName withName:@"name"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleID"];
  v6 = [v3 appendObject:self->_SDKVersion withName:@"sdk"];
  v7 = [v3 appendBool:self->_supportsAlwaysOnDisplay withName:@"supportsAlwaysOn"];
  v8 = [v3 appendBool:self->_defaultsToPrivateAlwaysOnDisplayTreatment withName:@"privateByDefault"];
  v9 = [v3 appendBool:self->_local withName:@"local" ifEqualTo:1];
  v10 = [v3 appendBool:self->_isBBSourcedApplication withName:@"bbSourced" ifEqualTo:1];
  build = [v3 build];

  return build;
}

- (BOOL)supportsSmartStack
{
  v23[3] = *MEMORY[0x277D85DE8];
  unionedBackgroundModes = [(CSLPRFApp *)self unionedBackgroundModes];
  v23[0] = @"com.apple.Fitness";
  v23[1] = @"com.apple.Bridge";
  v23[2] = @"com.apple.NanoNowPlaying";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  bundleIdentifier = [(CSLPRFApp *)self bundleIdentifier];
  v6 = [v4 containsObject:bundleIdentifier];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v22[0] = @"com.apple.NanoCompass.watchkitapp";
    v22[1] = @"com.apple.NanoAlarm";
    v22[2] = @"com.apple.NanoPassbook";
    v22[3] = @"com.apple.VoiceMemos";
    v22[4] = @"com.apple.nanomusicrecognition";
    v22[5] = @"com.apple.NanoNowPlaying";
    v22[6] = @"com.apple.NanoStopwatch";
    v22[7] = @"com.apple.Mind";
    v22[8] = @"com.apple.private.NanoTimer";
    v22[9] = @"com.apple.NanoAllMusicApps";
    v22[10] = @"com.apple.NanoAllWorkoutApps";
    v22[11] = @"com.apple.NanoPhone";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:12];
    bundleIdentifier2 = [(CSLPRFApp *)self bundleIdentifier];
    LOBYTE(v10) = [v8 containsObject:bundleIdentifier2];

    if (unionedBackgroundModes && (v10 & 1) == 0)
    {
      if (supportsSmartStack_onceToken != -1)
      {
        dispatch_once(&supportsSmartStack_onceToken, &__block_literal_global_1193);
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = unionedBackgroundModes;
      v10 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v11);
            }

            if ([supportsSmartStack___sessionCapableBackgroundModes containsObject:{*(*(&v17 + 1) + 8 * i), v17}])
            {
              LOBYTE(v10) = 1;
              goto LABEL_17;
            }
          }

          v10 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    applicationRecord = [(CSLPRFApp *)self applicationRecord];
    supportsLiveActivities = [applicationRecord supportsLiveActivities];

    v7 = v10 | supportsLiveActivities;
  }

  return v7 & 1;
}

void __31__CSLPRFApp_supportsSmartStack__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"physical-therapy";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = supportsSmartStack___sessionCapableBackgroundModes;
  supportsSmartStack___sessionCapableBackgroundModes = v2;
}

- (NSMutableArray)unionedBackgroundModes
{
  array = [MEMORY[0x277CBEB18] array];
  applicationRecord = [(CSLPRFApp *)self applicationRecord];
  uIBackgroundModes = [applicationRecord UIBackgroundModes];
  [array addObjectsFromArray:uIBackgroundModes];

  v6 = NSSelectorFromString(&cfstr_Uibackgroundmo.isa);
  backgroundModes = [(ACXRemoteApplication *)self->_remoteApplicationRecord backgroundModes];
  [array addObjectsFromArray:backgroundModes];

  remoteApplicationRecord = [(CSLPRFApp *)self remoteApplicationRecord];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [array addObjectsFromArray:{-[ACXRemoteApplication performSelector:](self->_remoteApplicationRecord, "performSelector:", v6)}];
  }

  return array;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  localizedName = [(CSLPRFApp *)self localizedName];
  localizedName2 = [compareCopy localizedName];
  v7 = [localizedName compare:localizedName2 options:1];

  if (!v7)
  {
    bundleIdentifier = [(CSLPRFApp *)self bundleIdentifier];
    bundleIdentifier2 = [compareCopy bundleIdentifier];
    v7 = [bundleIdentifier compare:bundleIdentifier2 options:1];
  }

  return v7;
}

- (CSLPRFApp)initWithBundleIdentifier:(id)identifier localizedName:(id)name sdkVersion:(id)version supportsAlwaysOnDisplay:(BOOL)display defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)treatment applicationRecord:(id)record remoteApplicationRecord:(id)applicationRecord bbSectionInfo:(id)self0
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  versionCopy = version;
  recordCopy = record;
  applicationRecordCopy = applicationRecord;
  infoCopy = info;
  v49.receiver = self;
  v49.super_class = CSLPRFApp;
  v21 = [(CSLPRFApp *)&v49 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_14;
  }

  v21->_lock._os_unfair_lock_opaque = 0;
  v23 = [identifierCopy copy];
  bundleIdentifier = v22->_bundleIdentifier;
  v22->_bundleIdentifier = v23;

  v25 = [nameCopy copy];
  localizedName = v22->_localizedName;
  v22->_localizedName = v25;

  v27 = [versionCopy copy];
  SDKVersion = v22->_SDKVersion;
  v22->_SDKVersion = v27;

  v22->_supportsAlwaysOnDisplay = display;
  v22->_defaultsToPrivateAlwaysOnDisplayTreatment = treatment;
  if (recordCopy)
  {
    v22->_local = 1;
    objc_storeWeak(&v22->_lock_applicationRecord, recordCopy);
    v29 = [recordCopy URL];
    URL = v22->_URL;
    v22->_URL = v29;

    counterpartIdentifiers = [recordCopy counterpartIdentifiers];
    v32 = [counterpartIdentifiers copy];
    counterpartIdentifiers = v22->_counterpartIdentifiers;
    v22->_counterpartIdentifiers = v32;

    applicationState = [recordCopy applicationState];
    if ([applicationState isInstalled])
    {
      v22->_isRemovedSystemApp = 0;
    }

    else
    {
      applicationState2 = [recordCopy applicationState];
      v22->_isRemovedSystemApp = [applicationState2 isPlaceholder] ^ 1;
    }
  }

  objc_storeStrong(&v22->_remoteApplicationRecord, applicationRecord);
  applicationRecord = [(CSLPRFApp *)v22 applicationRecord];
  if (!applicationRecord)
  {
    if (v22->_remoteApplicationRecord)
    {
      goto LABEL_10;
    }

    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    applicationRecord = [mEMORY[0x277D2BCF8] getActivePairedDevice];

    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v40 = v22->_bundleIdentifier;
    v48 = 0;
    v41 = [mEMORY[0x277CEAF80] applicationOnPairedDevice:applicationRecord withBundleID:v40 error:&v48];
    v42 = v48;
    remoteApplicationRecord = v22->_remoteApplicationRecord;
    v22->_remoteApplicationRecord = v41;
    v44 = v42;

    if (v44)
    {
      v45 = cslprf_settings_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = v22->_bundleIdentifier;
        *buf = 138412546;
        v51 = v46;
        v52 = 2112;
        v53 = v44;
        _os_log_error_impl(&dword_22CE92000, v45, OS_LOG_TYPE_ERROR, "error retrieving remote application record with bundleID:%@ error:%@", buf, 0x16u);
      }
    }
  }

LABEL_10:
  v22->_isBBSourcedApplication = infoCopy != 0;
  objc_storeStrong(&v22->_bbSectionInfo, info);
  if (!applicationRecordCopy && !v22->_local && !v22->_isBBSourcedApplication)
  {
    v22->_local = 1;
  }

LABEL_14:

  return v22;
}

- (LSApplicationRecord)applicationRecord
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_applicationRecord);
  os_unfair_lock_unlock(&self->_lock);
  if (!WeakRetained)
  {
    URL = self->_URL;
    v5 = objc_alloc(MEMORY[0x277CC1E70]);
    if (URL)
    {
      v6 = [v5 initWithURL:self->_URL allowPlaceholder:0 error:0];
    }

    else
    {
      v6 = [v5 initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:0 error:0];
    }

    WeakRetained = v6;
    os_unfair_lock_lock(&self->_lock);
    objc_storeWeak(&self->_lock_applicationRecord, WeakRetained);
    os_unfair_lock_unlock(&self->_lock);
  }

  return WeakRetained;
}

+ (id)appWithBBSectionInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  sectionID = [infoCopy sectionID];
  sectionID2 = [infoCopy sectionID];
  v17 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sectionID2 allowPlaceholder:0 error:&v17];
  v8 = v17;
  if (v8)
  {
    v9 = cslprf_settings_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = sectionID2;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_22CE92000, v9, OS_LOG_TYPE_ERROR, "error retrieving application record with bundleID:%@ error:%@", buf, 0x16u);
    }
  }

  displayName = [infoCopy displayName];

  if (displayName)
  {
    displayName2 = [infoCopy displayName];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    displayName2 = [v7 localizedName];
  }

  v12 = displayName2;

  sectionID = v12;
LABEL_10:
  v13 = [self alloc];
  sDKVersion = [v7 SDKVersion];
  v15 = [v13 initWithBundleIdentifier:sectionID2 localizedName:sectionID sdkVersion:sDKVersion supportsAlwaysOnDisplay:objc_msgSend(v7 defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(v7 bbSectionInfo:{"defaultsToPrivateAlwaysOnDisplayTreatment"), v7, infoCopy}];

  return v15;
}

+ (id)appWithApplicationRecord:(id)record
{
  recordCopy = record;
  v5 = [self alloc];
  bundleIdentifier = [recordCopy bundleIdentifier];
  localizedName = [recordCopy localizedName];
  sDKVersion = [recordCopy SDKVersion];
  v9 = [v5 initWithBundleIdentifier:bundleIdentifier localizedName:localizedName sdkVersion:sDKVersion supportsAlwaysOnDisplay:objc_msgSend(recordCopy defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(recordCopy bbSectionInfo:{"defaultsToPrivateAlwaysOnDisplayTreatment"), recordCopy, 0}];

  return v9;
}

+ (id)appWithACXRemoteApplication:(id)application
{
  applicationCopy = application;
  v5 = [self alloc];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  cslprf_displayName = [applicationCopy cslprf_displayName];
  sdkVersion = [applicationCopy sdkVersion];
  v9 = [v5 initWithBundleIdentifier:bundleIdentifier localizedName:cslprf_displayName sdkVersion:sdkVersion supportsAlwaysOnDisplay:objc_msgSend(applicationCopy defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(applicationCopy remoteApplicationRecord:"defaultsToPrivateAlwaysOnDisplayTreatment") bbSectionInfo:{0, applicationCopy, 0}];

  return v9;
}

+ (id)appWithBundleID:(id)d name:(id)name sdkVersion:(id)version supportsAlwaysOnDisplay:(BOOL)display defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)treatment
{
  treatmentCopy = treatment;
  displayCopy = display;
  versionCopy = version;
  nameCopy = name;
  dCopy = d;
  v15 = [[self alloc] initWithBundleIdentifier:dCopy localizedName:nameCopy sdkVersion:versionCopy supportsAlwaysOnDisplay:displayCopy defaultsToPrivateAlwaysOnDisplayTreatment:treatmentCopy applicationRecord:0 bbSectionInfo:0];

  return v15;
}

@end