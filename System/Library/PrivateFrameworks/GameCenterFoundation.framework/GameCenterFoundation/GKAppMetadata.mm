@interface GKAppMetadata
+ (id)secureCodedPropertyKeys;
- (GKAppMetadata)initWithBundleID:(id)d adamID:(id)iD platform:(id)platform name:(id)name shortName:(id)shortName artwork:(id)artwork customIconArtwork:(id)iconArtwork supportsGameCenter:(id)self0 supportsArcade:(BOOL)self1 supportsGameController:(id)self2 isEligibleForGamesApp:(BOOL)self3 supportedGameCenterFeatures:(id)self4 deviceFamilies:(id)self5 genreDisplayName:(id)self6 rawResponse:(id)self7 isIOSBinaryMacOSCompatible:(id)self8 gameDisplayName:(id)self9 miniGamesDeepLink:(id)link isGameGenre:(id)genre ageRating:(id)rating gkGameGenres:(id)genres;
- (id)description;
@end

@implementation GKAppMetadata

- (GKAppMetadata)initWithBundleID:(id)d adamID:(id)iD platform:(id)platform name:(id)name shortName:(id)shortName artwork:(id)artwork customIconArtwork:(id)iconArtwork supportsGameCenter:(id)self0 supportsArcade:(BOOL)self1 supportsGameController:(id)self2 isEligibleForGamesApp:(BOOL)self3 supportedGameCenterFeatures:(id)self4 deviceFamilies:(id)self5 genreDisplayName:(id)self6 rawResponse:(id)self7 isIOSBinaryMacOSCompatible:(id)self8 gameDisplayName:(id)self9 miniGamesDeepLink:(id)link isGameGenre:(id)genre ageRating:(id)rating gkGameGenres:(id)genres
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  platformCopy = platform;
  platformCopy2 = platform;
  nameCopy = name;
  nameCopy2 = name;
  shortNameCopy = shortName;
  artworkCopy = artwork;
  artworkCopy2 = artwork;
  iconArtworkCopy = iconArtwork;
  centerCopy = center;
  controllerCopy = controller;
  featuresCopy = features;
  familiesCopy = families;
  displayNameCopy = displayName;
  responseCopy = response;
  compatibleCopy = compatible;
  gameDisplayNameCopy = gameDisplayName;
  linkCopy = link;
  genreCopy = genre;
  ratingCopy = rating;
  genresCopy = genres;
  v56.receiver = self;
  v56.super_class = GKAppMetadata;
  v34 = [(GKAppMetadata *)&v56 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_bundleID, d);
    objc_storeStrong(&v35->_adamID, iDCopy);
    objc_storeStrong(&v35->_platform, platformCopy);
    objc_storeStrong(&v35->_name, nameCopy);
    objc_storeStrong(&v35->_shortName, shortName);
    objc_storeStrong(&v35->_artwork, artworkCopy);
    objc_storeStrong(&v35->_customIconArtwork, iconArtwork);
    v35->_supportsGameCenter = centerCopy;
    v35->_supportsArcade = arcade;
    v35->_supportsGameController = controllerCopy;
    objc_storeStrong(&v35->_supportedGameCenterFeatures, features);
    v35->_isEligibleForGamesApp = app;
    objc_storeStrong(&v35->_deviceFamilies, families);
    objc_storeStrong(&v35->_genreDisplayName, displayName);
    objc_storeStrong(&v35->_rawResponse, response);
    objc_storeStrong(&v35->_isIOSBinaryMacOSCompatible, compatible);
    objc_storeStrong(&v35->_gameDisplayName, gameDisplayName);
    objc_storeStrong(&v35->_miniGamesDeepLink, link);
    objc_storeStrong(&v35->_isGameGenre, genre);
    objc_storeStrong(&v35->_ageRating, rating);
    objc_storeStrong(&v35->_gkGameGenres, genres);
  }

  return v35;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_22 != -1)
  {
    +[GKAppMetadata secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_22;

  return v3;
}

void __40__GKAppMetadata_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v14[21] = *MEMORY[0x277D85DE8];
  v13[0] = @"bundleID";
  v14[0] = objc_opt_class();
  v13[1] = @"adamID";
  v14[1] = objc_opt_class();
  v13[2] = @"platform";
  v14[2] = objc_opt_class();
  v13[3] = @"name";
  v14[3] = objc_opt_class();
  v13[4] = @"shortName";
  v14[4] = objc_opt_class();
  v13[5] = @"artwork";
  v14[5] = objc_opt_class();
  v13[6] = @"customIconArtwork";
  v14[6] = objc_opt_class();
  v13[7] = @"genreDisplayName";
  v14[7] = objc_opt_class();
  v13[8] = @"supportsGameCenter";
  v14[8] = objc_opt_class();
  v13[9] = @"supportsArcade";
  v14[9] = objc_opt_class();
  v13[10] = @"supportsGameController";
  v14[10] = objc_opt_class();
  v13[11] = @"isEligibleForGamesApp";
  v14[11] = objc_opt_class();
  v13[12] = @"supportedGameCenterFeatures";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v14[12] = v4;
  v13[13] = @"deviceFamilies";
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v14[13] = v7;
  v13[14] = @"rawResponse";
  v14[14] = objc_opt_class();
  v13[15] = @"isIOSBinaryMacOSCompatible";
  v14[15] = objc_opt_class();
  v13[16] = @"gameDisplayName";
  v14[16] = objc_opt_class();
  v13[17] = @"miniGamesDeepLink";
  v14[17] = objc_opt_class();
  v13[18] = @"isGameGenre";
  v14[18] = objc_opt_class();
  v13[19] = @"ageRating";
  v14[19] = objc_opt_class();
  v13[20] = @"gkGameGenres";
  v8 = MEMORY[0x277CBEA60];
  v9 = objc_opt_class();
  v10 = [v8 arrayWithObjects:{v9, objc_opt_class(), 0}];
  v14[20] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:21];
  v12 = secureCodedPropertyKeys_sSecureCodedKeys_22;
  secureCodedPropertyKeys_sSecureCodedKeys_22 = v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  adamID = [(GKAppMetadata *)self adamID];
  bundleID = [(GKAppMetadata *)self bundleID];
  v8 = [v3 stringWithFormat:@"%@: adamID: %@, bundleID: %@", v5, adamID, bundleID];

  return v8;
}

@end