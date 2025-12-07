@interface GKInstallMetadata
+ (id)secureCodedPropertyKeys;
- (GKInstallMetadata)initWithBundleID:(id)d adamID:(id)iD bundleShortVersion:(id)version name:(id)name shortName:(id)shortName estimatedInstallDate:(id)date supportsGameController:(BOOL)controller isArcade:(BOOL)self0 platform:(int64_t)self1 isHidden:(BOOL)self2 metadataEligibility:(int64_t)self3 applicationType:(int64_t)self4 isBeta:(BOOL)self5 persistentRecordID:(id)self6;
@end

@implementation GKInstallMetadata

- (GKInstallMetadata)initWithBundleID:(id)d adamID:(id)iD bundleShortVersion:(id)version name:(id)name shortName:(id)shortName estimatedInstallDate:(id)date supportsGameController:(BOOL)controller isArcade:(BOOL)self0 platform:(int64_t)self1 isHidden:(BOOL)self2 metadataEligibility:(int64_t)self3 applicationType:(int64_t)self4 isBeta:(BOOL)self5 persistentRecordID:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  obj = version;
  versionCopy = version;
  nameCopy = name;
  shortNameCopy = shortName;
  shortNameCopy2 = shortName;
  dateCopy = date;
  dateCopy2 = date;
  recordIDCopy = recordID;
  v36.receiver = self;
  v36.super_class = GKInstallMetadata;
  v28 = [(GKInstallMetadata *)&v36 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_bundleID, d);
    objc_storeStrong(&v29->_adamID, iD);
    objc_storeStrong(&v29->_bundleShortVersion, obj);
    objc_storeStrong(&v29->_name, name);
    objc_storeStrong(&v29->_shortName, shortNameCopy);
    objc_storeStrong(&v29->_estimatedInstallDate, dateCopy);
    v29->_supportsGameController = controller;
    v29->_isArcade = arcade;
    v29->_platform = platform;
    v29->_isHidden = hidden;
    v29->_metadataEligibility = eligibility;
    v29->_applicationType = type;
    v29->_isBeta = beta;
    objc_storeStrong(&v29->_persistentRecordID, recordID);
  }

  return v29;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_11 != -1)
  {
    +[GKInstallMetadata secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_11;

  return v3;
}

void __44__GKInstallMetadata_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[13] = *MEMORY[0x277D85DE8];
  v4[0] = @"bundleID";
  v5[0] = objc_opt_class();
  v4[1] = @"adamID";
  v5[1] = objc_opt_class();
  v4[2] = @"bundleShortVersion";
  v5[2] = objc_opt_class();
  v4[3] = @"name";
  v5[3] = objc_opt_class();
  v4[4] = @"shortName";
  v5[4] = objc_opt_class();
  v4[5] = @"estimatedInstallDate";
  v5[5] = objc_opt_class();
  v4[6] = @"supportsGameController";
  v5[6] = objc_opt_class();
  v4[7] = @"isArcade";
  v5[7] = objc_opt_class();
  v4[8] = @"platform";
  v5[8] = objc_opt_class();
  v4[9] = @"isHidden";
  v5[9] = objc_opt_class();
  v4[10] = @"metadataEligibility";
  v5[10] = objc_opt_class();
  v4[11] = @"applicationType";
  v5[11] = objc_opt_class();
  v4[12] = @"isBeta";
  v5[12] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:13];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_11;
  secureCodedPropertyKeys_sSecureCodedKeys_11 = v2;
}

@end