@interface BMPhotosUserAnalytics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPhotosUserAnalytics)initWithIdentifier:(id)identifier userEvent:(id)event containsVIP:(id)p faceCount:(id)count containsPets:(id)pets capturedAtHome:(id)home capturedAtWork:(id)work capturedAtFrequentLocation:(id)self0 capturedOnTrip:(id)self1 capturedOnShortTrip:(id)self2 isDocument:(id)self3 isMeme:(id)self4 isScreenshot:(id)self5 isFavorite:(id)self6 isCapturedOnWeekend:(id)self7 isCapturedAtPrivateEvent:(id)self8 isCapturedOnHoliday:(id)self9 mediaType:(int)type importSource:(int)source assetAge:(int)age userLibrarySize:(int)size userNumTrips:(id)trips userNumVIPPeople:(id)people userNumFavorites:(id)favorites userHasVIP:(id)iP userHasHome:(id)hasHome userHasPet:(id)pet containsBaby:(id)identifier0 containsSocialGroup:(id)identifier1 containsMyPet:(id)identifier2 containsCoWorker:(id)identifier3 containsFamily:(id)identifier4 containsFriends:(id)identifier5 containsPartner:(id)identifier6 containsParent:(id)identifier7 containsSibling:(id)identifier8 containsChild:(id)identifier9 isCoupon:(id)event0 isRecipe:(id)event1 isReceipt:(id)event2 isRecentView:(id)event3 isRecentEdit:(id)event4 isRecentShare:(id)event5 isRecentFavorite:(id)event6 isContainedInSharedAlbum:(id)event7 isContainedInOnThisDay:(id)event8 capturedAtAOI:(id)event9 capturedAtPOI:(id)p0 capturedAtROI:(id)p1 capturedAtBusiness:(id)p2 isCapturedAtPublicEvent:(id)p3 isContainedInVisualTrend:(id)p4 isContainedInActivity:(id)p5 isContainedInChildActivity:(id)p6 userLibraryAgeInDays:(int)p7 userisDAU:(id)p8;
- (BMPhotosUserAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPhotosUserAnalytics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPhotosUserAnalytics *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPhotosUserAnalytics *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_261;
      }
    }

    userEvent = [(BMPhotosUserAnalytics *)self userEvent];
    userEvent2 = [v5 userEvent];
    v15 = userEvent2;
    if (userEvent == userEvent2)
    {
    }

    else
    {
      userEvent3 = [(BMPhotosUserAnalytics *)self userEvent];
      userEvent4 = [v5 userEvent];
      v18 = [userEvent3 isEqual:userEvent4];

      if (!v18)
      {
        goto LABEL_261;
      }
    }

    if (!-[BMPhotosUserAnalytics hasContainsVIP](self, "hasContainsVIP") && ![v5 hasContainsVIP] || -[BMPhotosUserAnalytics hasContainsVIP](self, "hasContainsVIP") && objc_msgSend(v5, "hasContainsVIP") && (v19 = -[BMPhotosUserAnalytics containsVIP](self, "containsVIP"), v19 == objc_msgSend(v5, "containsVIP")))
    {
      if (!-[BMPhotosUserAnalytics hasFaceCount](self, "hasFaceCount") && ![v5 hasFaceCount] || -[BMPhotosUserAnalytics hasFaceCount](self, "hasFaceCount") && objc_msgSend(v5, "hasFaceCount") && (v20 = -[BMPhotosUserAnalytics faceCount](self, "faceCount"), v20 == objc_msgSend(v5, "faceCount")))
      {
        if (!-[BMPhotosUserAnalytics hasContainsPets](self, "hasContainsPets") && ![v5 hasContainsPets] || -[BMPhotosUserAnalytics hasContainsPets](self, "hasContainsPets") && objc_msgSend(v5, "hasContainsPets") && (v21 = -[BMPhotosUserAnalytics containsPets](self, "containsPets"), v21 == objc_msgSend(v5, "containsPets")))
        {
          if (!-[BMPhotosUserAnalytics hasCapturedAtHome](self, "hasCapturedAtHome") && ![v5 hasCapturedAtHome] || -[BMPhotosUserAnalytics hasCapturedAtHome](self, "hasCapturedAtHome") && objc_msgSend(v5, "hasCapturedAtHome") && (v22 = -[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome"), v22 == objc_msgSend(v5, "capturedAtHome")))
          {
            if (!-[BMPhotosUserAnalytics hasCapturedAtWork](self, "hasCapturedAtWork") && ![v5 hasCapturedAtWork] || -[BMPhotosUserAnalytics hasCapturedAtWork](self, "hasCapturedAtWork") && objc_msgSend(v5, "hasCapturedAtWork") && (v23 = -[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork"), v23 == objc_msgSend(v5, "capturedAtWork")))
            {
              if (!-[BMPhotosUserAnalytics hasCapturedAtFrequentLocation](self, "hasCapturedAtFrequentLocation") && ![v5 hasCapturedAtFrequentLocation] || -[BMPhotosUserAnalytics hasCapturedAtFrequentLocation](self, "hasCapturedAtFrequentLocation") && objc_msgSend(v5, "hasCapturedAtFrequentLocation") && (v24 = -[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation"), v24 == objc_msgSend(v5, "capturedAtFrequentLocation")))
              {
                if (!-[BMPhotosUserAnalytics hasCapturedOnTrip](self, "hasCapturedOnTrip") && ![v5 hasCapturedOnTrip] || -[BMPhotosUserAnalytics hasCapturedOnTrip](self, "hasCapturedOnTrip") && objc_msgSend(v5, "hasCapturedOnTrip") && (v25 = -[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip"), v25 == objc_msgSend(v5, "capturedOnTrip")))
                {
                  if (!-[BMPhotosUserAnalytics hasCapturedOnShortTrip](self, "hasCapturedOnShortTrip") && ![v5 hasCapturedOnShortTrip] || -[BMPhotosUserAnalytics hasCapturedOnShortTrip](self, "hasCapturedOnShortTrip") && objc_msgSend(v5, "hasCapturedOnShortTrip") && (v26 = -[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip"), v26 == objc_msgSend(v5, "capturedOnShortTrip")))
                  {
                    if (!-[BMPhotosUserAnalytics hasIsDocument](self, "hasIsDocument") && ![v5 hasIsDocument] || -[BMPhotosUserAnalytics hasIsDocument](self, "hasIsDocument") && objc_msgSend(v5, "hasIsDocument") && (v27 = -[BMPhotosUserAnalytics isDocument](self, "isDocument"), v27 == objc_msgSend(v5, "isDocument")))
                    {
                      if (!-[BMPhotosUserAnalytics hasIsMeme](self, "hasIsMeme") && ![v5 hasIsMeme] || -[BMPhotosUserAnalytics hasIsMeme](self, "hasIsMeme") && objc_msgSend(v5, "hasIsMeme") && (v28 = -[BMPhotosUserAnalytics isMeme](self, "isMeme"), v28 == objc_msgSend(v5, "isMeme")))
                      {
                        if (!-[BMPhotosUserAnalytics hasIsScreenshot](self, "hasIsScreenshot") && ![v5 hasIsScreenshot] || -[BMPhotosUserAnalytics hasIsScreenshot](self, "hasIsScreenshot") && objc_msgSend(v5, "hasIsScreenshot") && (v29 = -[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot"), v29 == objc_msgSend(v5, "isScreenshot")))
                        {
                          if (!-[BMPhotosUserAnalytics hasIsFavorite](self, "hasIsFavorite") && ![v5 hasIsFavorite] || -[BMPhotosUserAnalytics hasIsFavorite](self, "hasIsFavorite") && objc_msgSend(v5, "hasIsFavorite") && (v30 = -[BMPhotosUserAnalytics isFavorite](self, "isFavorite"), v30 == objc_msgSend(v5, "isFavorite")))
                          {
                            if (!-[BMPhotosUserAnalytics hasIsCapturedOnWeekend](self, "hasIsCapturedOnWeekend") && ![v5 hasIsCapturedOnWeekend] || -[BMPhotosUserAnalytics hasIsCapturedOnWeekend](self, "hasIsCapturedOnWeekend") && objc_msgSend(v5, "hasIsCapturedOnWeekend") && (v31 = -[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend"), v31 == objc_msgSend(v5, "isCapturedOnWeekend")))
                            {
                              if (!-[BMPhotosUserAnalytics hasIsCapturedAtPrivateEvent](self, "hasIsCapturedAtPrivateEvent") && ![v5 hasIsCapturedAtPrivateEvent] || -[BMPhotosUserAnalytics hasIsCapturedAtPrivateEvent](self, "hasIsCapturedAtPrivateEvent") && objc_msgSend(v5, "hasIsCapturedAtPrivateEvent") && (v32 = -[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent"), v32 == objc_msgSend(v5, "isCapturedAtPrivateEvent")))
                              {
                                if (!-[BMPhotosUserAnalytics hasIsCapturedOnHoliday](self, "hasIsCapturedOnHoliday") && ![v5 hasIsCapturedOnHoliday] || -[BMPhotosUserAnalytics hasIsCapturedOnHoliday](self, "hasIsCapturedOnHoliday") && objc_msgSend(v5, "hasIsCapturedOnHoliday") && (v33 = -[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday"), v33 == objc_msgSend(v5, "isCapturedOnHoliday")))
                                {
                                  mediaType = [(BMPhotosUserAnalytics *)self mediaType];
                                  if (mediaType == [v5 mediaType])
                                  {
                                    importSource = [(BMPhotosUserAnalytics *)self importSource];
                                    if (importSource == [v5 importSource])
                                    {
                                      assetAge = [(BMPhotosUserAnalytics *)self assetAge];
                                      if (assetAge == [v5 assetAge])
                                      {
                                        userLibrarySize = [(BMPhotosUserAnalytics *)self userLibrarySize];
                                        if (userLibrarySize == [v5 userLibrarySize])
                                        {
                                          if (!-[BMPhotosUserAnalytics hasUserNumTrips](self, "hasUserNumTrips") && ![v5 hasUserNumTrips] || -[BMPhotosUserAnalytics hasUserNumTrips](self, "hasUserNumTrips") && objc_msgSend(v5, "hasUserNumTrips") && (v38 = -[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips"), v38 == objc_msgSend(v5, "userNumTrips")))
                                          {
                                            if (!-[BMPhotosUserAnalytics hasUserNumVIPPeople](self, "hasUserNumVIPPeople") && ![v5 hasUserNumVIPPeople] || -[BMPhotosUserAnalytics hasUserNumVIPPeople](self, "hasUserNumVIPPeople") && objc_msgSend(v5, "hasUserNumVIPPeople") && (v39 = -[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople"), v39 == objc_msgSend(v5, "userNumVIPPeople")))
                                            {
                                              if (!-[BMPhotosUserAnalytics hasUserNumFavorites](self, "hasUserNumFavorites") && ![v5 hasUserNumFavorites] || -[BMPhotosUserAnalytics hasUserNumFavorites](self, "hasUserNumFavorites") && objc_msgSend(v5, "hasUserNumFavorites") && (v40 = -[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites"), v40 == objc_msgSend(v5, "userNumFavorites")))
                                              {
                                                if (!-[BMPhotosUserAnalytics hasUserHasVIP](self, "hasUserHasVIP") && ![v5 hasUserHasVIP] || -[BMPhotosUserAnalytics hasUserHasVIP](self, "hasUserHasVIP") && objc_msgSend(v5, "hasUserHasVIP") && (v41 = -[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP"), v41 == objc_msgSend(v5, "userHasVIP")))
                                                {
                                                  if (!-[BMPhotosUserAnalytics hasUserHasHome](self, "hasUserHasHome") && ![v5 hasUserHasHome] || -[BMPhotosUserAnalytics hasUserHasHome](self, "hasUserHasHome") && objc_msgSend(v5, "hasUserHasHome") && (v42 = -[BMPhotosUserAnalytics userHasHome](self, "userHasHome"), v42 == objc_msgSend(v5, "userHasHome")))
                                                  {
                                                    if (!-[BMPhotosUserAnalytics hasUserHasPet](self, "hasUserHasPet") && ![v5 hasUserHasPet] || -[BMPhotosUserAnalytics hasUserHasPet](self, "hasUserHasPet") && objc_msgSend(v5, "hasUserHasPet") && (v43 = -[BMPhotosUserAnalytics userHasPet](self, "userHasPet"), v43 == objc_msgSend(v5, "userHasPet")))
                                                    {
                                                      if (!-[BMPhotosUserAnalytics hasContainsBaby](self, "hasContainsBaby") && ![v5 hasContainsBaby] || -[BMPhotosUserAnalytics hasContainsBaby](self, "hasContainsBaby") && objc_msgSend(v5, "hasContainsBaby") && (v44 = -[BMPhotosUserAnalytics containsBaby](self, "containsBaby"), v44 == objc_msgSend(v5, "containsBaby")))
                                                      {
                                                        if (!-[BMPhotosUserAnalytics hasContainsSocialGroup](self, "hasContainsSocialGroup") && ![v5 hasContainsSocialGroup] || -[BMPhotosUserAnalytics hasContainsSocialGroup](self, "hasContainsSocialGroup") && objc_msgSend(v5, "hasContainsSocialGroup") && (v45 = -[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup"), v45 == objc_msgSend(v5, "containsSocialGroup")))
                                                        {
                                                          if (!-[BMPhotosUserAnalytics hasContainsMyPet](self, "hasContainsMyPet") && ![v5 hasContainsMyPet] || -[BMPhotosUserAnalytics hasContainsMyPet](self, "hasContainsMyPet") && objc_msgSend(v5, "hasContainsMyPet") && (v46 = -[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet"), v46 == objc_msgSend(v5, "containsMyPet")))
                                                          {
                                                            if (!-[BMPhotosUserAnalytics hasContainsCoWorker](self, "hasContainsCoWorker") && ![v5 hasContainsCoWorker] || -[BMPhotosUserAnalytics hasContainsCoWorker](self, "hasContainsCoWorker") && objc_msgSend(v5, "hasContainsCoWorker") && (v47 = -[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker"), v47 == objc_msgSend(v5, "containsCoWorker")))
                                                            {
                                                              if (!-[BMPhotosUserAnalytics hasContainsFamily](self, "hasContainsFamily") && ![v5 hasContainsFamily] || -[BMPhotosUserAnalytics hasContainsFamily](self, "hasContainsFamily") && objc_msgSend(v5, "hasContainsFamily") && (v48 = -[BMPhotosUserAnalytics containsFamily](self, "containsFamily"), v48 == objc_msgSend(v5, "containsFamily")))
                                                              {
                                                                if (!-[BMPhotosUserAnalytics hasContainsFriends](self, "hasContainsFriends") && ![v5 hasContainsFriends] || -[BMPhotosUserAnalytics hasContainsFriends](self, "hasContainsFriends") && objc_msgSend(v5, "hasContainsFriends") && (v49 = -[BMPhotosUserAnalytics containsFriends](self, "containsFriends"), v49 == objc_msgSend(v5, "containsFriends")))
                                                                {
                                                                  if (!-[BMPhotosUserAnalytics hasContainsPartner](self, "hasContainsPartner") && ![v5 hasContainsPartner] || -[BMPhotosUserAnalytics hasContainsPartner](self, "hasContainsPartner") && objc_msgSend(v5, "hasContainsPartner") && (v50 = -[BMPhotosUserAnalytics containsPartner](self, "containsPartner"), v50 == objc_msgSend(v5, "containsPartner")))
                                                                  {
                                                                    if (!-[BMPhotosUserAnalytics hasContainsParent](self, "hasContainsParent") && ![v5 hasContainsParent] || -[BMPhotosUserAnalytics hasContainsParent](self, "hasContainsParent") && objc_msgSend(v5, "hasContainsParent") && (v51 = -[BMPhotosUserAnalytics containsParent](self, "containsParent"), v51 == objc_msgSend(v5, "containsParent")))
                                                                    {
                                                                      if (!-[BMPhotosUserAnalytics hasContainsSibling](self, "hasContainsSibling") && ![v5 hasContainsSibling] || -[BMPhotosUserAnalytics hasContainsSibling](self, "hasContainsSibling") && objc_msgSend(v5, "hasContainsSibling") && (v52 = -[BMPhotosUserAnalytics containsSibling](self, "containsSibling"), v52 == objc_msgSend(v5, "containsSibling")))
                                                                      {
                                                                        if (!-[BMPhotosUserAnalytics hasContainsChild](self, "hasContainsChild") && ![v5 hasContainsChild] || -[BMPhotosUserAnalytics hasContainsChild](self, "hasContainsChild") && objc_msgSend(v5, "hasContainsChild") && (v53 = -[BMPhotosUserAnalytics containsChild](self, "containsChild"), v53 == objc_msgSend(v5, "containsChild")))
                                                                        {
                                                                          if (!-[BMPhotosUserAnalytics hasIsCoupon](self, "hasIsCoupon") && ![v5 hasIsCoupon] || -[BMPhotosUserAnalytics hasIsCoupon](self, "hasIsCoupon") && objc_msgSend(v5, "hasIsCoupon") && (v54 = -[BMPhotosUserAnalytics isCoupon](self, "isCoupon"), v54 == objc_msgSend(v5, "isCoupon")))
                                                                          {
                                                                            if (!-[BMPhotosUserAnalytics hasIsRecipe](self, "hasIsRecipe") && ![v5 hasIsRecipe] || -[BMPhotosUserAnalytics hasIsRecipe](self, "hasIsRecipe") && objc_msgSend(v5, "hasIsRecipe") && (v55 = -[BMPhotosUserAnalytics isRecipe](self, "isRecipe"), v55 == objc_msgSend(v5, "isRecipe")))
                                                                            {
                                                                              if (!-[BMPhotosUserAnalytics hasIsReceipt](self, "hasIsReceipt") && ![v5 hasIsReceipt] || -[BMPhotosUserAnalytics hasIsReceipt](self, "hasIsReceipt") && objc_msgSend(v5, "hasIsReceipt") && (v56 = -[BMPhotosUserAnalytics isReceipt](self, "isReceipt"), v56 == objc_msgSend(v5, "isReceipt")))
                                                                              {
                                                                                if (!-[BMPhotosUserAnalytics hasIsRecentView](self, "hasIsRecentView") && ![v5 hasIsRecentView] || -[BMPhotosUserAnalytics hasIsRecentView](self, "hasIsRecentView") && objc_msgSend(v5, "hasIsRecentView") && (v57 = -[BMPhotosUserAnalytics isRecentView](self, "isRecentView"), v57 == objc_msgSend(v5, "isRecentView")))
                                                                                {
                                                                                  if (!-[BMPhotosUserAnalytics hasIsRecentEdit](self, "hasIsRecentEdit") && ![v5 hasIsRecentEdit] || -[BMPhotosUserAnalytics hasIsRecentEdit](self, "hasIsRecentEdit") && objc_msgSend(v5, "hasIsRecentEdit") && (v58 = -[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit"), v58 == objc_msgSend(v5, "isRecentEdit")))
                                                                                  {
                                                                                    if (!-[BMPhotosUserAnalytics hasIsRecentShare](self, "hasIsRecentShare") && ![v5 hasIsRecentShare] || -[BMPhotosUserAnalytics hasIsRecentShare](self, "hasIsRecentShare") && objc_msgSend(v5, "hasIsRecentShare") && (v59 = -[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare"), v59 == objc_msgSend(v5, "isRecentShare")))
                                                                                    {
                                                                                      if (!-[BMPhotosUserAnalytics hasIsRecentFavorite](self, "hasIsRecentFavorite") && ![v5 hasIsRecentFavorite] || -[BMPhotosUserAnalytics hasIsRecentFavorite](self, "hasIsRecentFavorite") && objc_msgSend(v5, "hasIsRecentFavorite") && (v60 = -[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite"), v60 == objc_msgSend(v5, "isRecentFavorite")))
                                                                                      {
                                                                                        if (!-[BMPhotosUserAnalytics hasIsContainedInSharedAlbum](self, "hasIsContainedInSharedAlbum") && ![v5 hasIsContainedInSharedAlbum] || -[BMPhotosUserAnalytics hasIsContainedInSharedAlbum](self, "hasIsContainedInSharedAlbum") && objc_msgSend(v5, "hasIsContainedInSharedAlbum") && (v61 = -[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum"), v61 == objc_msgSend(v5, "isContainedInSharedAlbum")))
                                                                                        {
                                                                                          if (!-[BMPhotosUserAnalytics hasIsContainedInOnThisDay](self, "hasIsContainedInOnThisDay") && ![v5 hasIsContainedInOnThisDay] || -[BMPhotosUserAnalytics hasIsContainedInOnThisDay](self, "hasIsContainedInOnThisDay") && objc_msgSend(v5, "hasIsContainedInOnThisDay") && (v62 = -[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay"), v62 == objc_msgSend(v5, "isContainedInOnThisDay")))
                                                                                          {
                                                                                            if (!-[BMPhotosUserAnalytics hasCapturedAtAOI](self, "hasCapturedAtAOI") && ![v5 hasCapturedAtAOI] || -[BMPhotosUserAnalytics hasCapturedAtAOI](self, "hasCapturedAtAOI") && objc_msgSend(v5, "hasCapturedAtAOI") && (v63 = -[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI"), v63 == objc_msgSend(v5, "capturedAtAOI")))
                                                                                            {
                                                                                              if (!-[BMPhotosUserAnalytics hasCapturedAtPOI](self, "hasCapturedAtPOI") && ![v5 hasCapturedAtPOI] || -[BMPhotosUserAnalytics hasCapturedAtPOI](self, "hasCapturedAtPOI") && objc_msgSend(v5, "hasCapturedAtPOI") && (v64 = -[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI"), v64 == objc_msgSend(v5, "capturedAtPOI")))
                                                                                              {
                                                                                                if (!-[BMPhotosUserAnalytics hasCapturedAtROI](self, "hasCapturedAtROI") && ![v5 hasCapturedAtROI] || -[BMPhotosUserAnalytics hasCapturedAtROI](self, "hasCapturedAtROI") && objc_msgSend(v5, "hasCapturedAtROI") && (v65 = -[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI"), v65 == objc_msgSend(v5, "capturedAtROI")))
                                                                                                {
                                                                                                  if (!-[BMPhotosUserAnalytics hasCapturedAtBusiness](self, "hasCapturedAtBusiness") && ![v5 hasCapturedAtBusiness] || -[BMPhotosUserAnalytics hasCapturedAtBusiness](self, "hasCapturedAtBusiness") && objc_msgSend(v5, "hasCapturedAtBusiness") && (v66 = -[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness"), v66 == objc_msgSend(v5, "capturedAtBusiness")))
                                                                                                  {
                                                                                                    if (!-[BMPhotosUserAnalytics hasIsCapturedAtPublicEvent](self, "hasIsCapturedAtPublicEvent") && ![v5 hasIsCapturedAtPublicEvent] || -[BMPhotosUserAnalytics hasIsCapturedAtPublicEvent](self, "hasIsCapturedAtPublicEvent") && objc_msgSend(v5, "hasIsCapturedAtPublicEvent") && (v67 = -[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent"), v67 == objc_msgSend(v5, "isCapturedAtPublicEvent")))
                                                                                                    {
                                                                                                      if (!-[BMPhotosUserAnalytics hasIsContainedInVisualTrend](self, "hasIsContainedInVisualTrend") && ![v5 hasIsContainedInVisualTrend] || -[BMPhotosUserAnalytics hasIsContainedInVisualTrend](self, "hasIsContainedInVisualTrend") && objc_msgSend(v5, "hasIsContainedInVisualTrend") && (v68 = -[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend"), v68 == objc_msgSend(v5, "isContainedInVisualTrend")))
                                                                                                      {
                                                                                                        if (!-[BMPhotosUserAnalytics hasIsContainedInActivity](self, "hasIsContainedInActivity") && ![v5 hasIsContainedInActivity] || -[BMPhotosUserAnalytics hasIsContainedInActivity](self, "hasIsContainedInActivity") && objc_msgSend(v5, "hasIsContainedInActivity") && (v69 = -[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity"), v69 == objc_msgSend(v5, "isContainedInActivity")))
                                                                                                        {
                                                                                                          if (!-[BMPhotosUserAnalytics hasIsContainedInChildActivity](self, "hasIsContainedInChildActivity") && ![v5 hasIsContainedInChildActivity] || -[BMPhotosUserAnalytics hasIsContainedInChildActivity](self, "hasIsContainedInChildActivity") && objc_msgSend(v5, "hasIsContainedInChildActivity") && (v70 = -[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity"), v70 == objc_msgSend(v5, "isContainedInChildActivity")))
                                                                                                          {
                                                                                                            userLibraryAgeInDays = [(BMPhotosUserAnalytics *)self userLibraryAgeInDays];
                                                                                                            if (userLibraryAgeInDays == [v5 userLibraryAgeInDays])
                                                                                                            {
                                                                                                              if (!-[BMPhotosUserAnalytics hasUserisDAU](self, "hasUserisDAU") && ![v5 hasUserisDAU])
                                                                                                              {
                                                                                                                v12 = 1;
                                                                                                                goto LABEL_262;
                                                                                                              }

                                                                                                              if (-[BMPhotosUserAnalytics hasUserisDAU](self, "hasUserisDAU") && [v5 hasUserisDAU])
                                                                                                              {
                                                                                                                [(BMPhotosUserAnalytics *)self userisDAU];
                                                                                                                v73 = v72;
                                                                                                                [v5 userisDAU];
                                                                                                                v12 = v73 == v74;
LABEL_262:

                                                                                                                goto LABEL_263;
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_261:
    v12 = 0;
    goto LABEL_262;
  }

  v12 = 0;
LABEL_263:

  return v12;
}

- (id)jsonDictionary
{
  v177[56] = *MEMORY[0x1E69E9840];
  identifier = [(BMPhotosUserAnalytics *)self identifier];
  userEvent = [(BMPhotosUserAnalytics *)self userEvent];
  if ([(BMPhotosUserAnalytics *)self hasContainsVIP])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsVIP](self, "containsVIP")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasFaceCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics faceCount](self, "faceCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsPets])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPets](self, "containsPets")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtHome])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtWork])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtFrequentLocation])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation")}];
  }

  else
  {
    v175 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedOnTrip])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedOnShortTrip])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsDocument])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isDocument](self, "isDocument")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsMeme])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isMeme](self, "isMeme")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsScreenshot])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsFavorite])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isFavorite](self, "isFavorite")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedOnWeekend])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend")}];
  }

  else
  {
    v168 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedAtPrivateEvent])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent")}];
  }

  else
  {
    v167 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedOnHoliday])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday")}];
  }

  else
  {
    v166 = 0;
  }

  v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics mediaType](self, "mediaType")}];
  v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics importSource](self, "importSource")}];
  v163 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics assetAge](self, "assetAge")}];
  v162 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userLibrarySize](self, "userLibrarySize")}];
  if ([(BMPhotosUserAnalytics *)self hasUserNumTrips])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips")}];
  }

  else
  {
    v161 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserNumVIPPeople])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople")}];
  }

  else
  {
    v160 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserNumFavorites])
  {
    v159 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites")}];
  }

  else
  {
    v159 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasVIP])
  {
    v158 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP")}];
  }

  else
  {
    v158 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasHome])
  {
    v157 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasHome](self, "userHasHome")}];
  }

  else
  {
    v157 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasPet])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasPet](self, "userHasPet")}];
  }

  else
  {
    v156 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsBaby])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsBaby](self, "containsBaby")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsSocialGroup])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsMyPet])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet")}];
  }

  else
  {
    v153 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsCoWorker])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker")}];
  }

  else
  {
    v152 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsFamily])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFamily](self, "containsFamily")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsFriends])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFriends](self, "containsFriends")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsPartner])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPartner](self, "containsPartner")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsParent])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsParent](self, "containsParent")}];
  }

  else
  {
    v148 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsSibling])
  {
    v147 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSibling](self, "containsSibling")}];
  }

  else
  {
    v147 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsChild])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsChild](self, "containsChild")}];
  }

  else
  {
    v146 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCoupon])
  {
    v145 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCoupon](self, "isCoupon")}];
  }

  else
  {
    v145 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecipe])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecipe](self, "isRecipe")}];
  }

  else
  {
    v144 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsReceipt])
  {
    v143 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isReceipt](self, "isReceipt")}];
  }

  else
  {
    v143 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentView])
  {
    v142 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentView](self, "isRecentView")}];
  }

  else
  {
    v142 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentEdit])
  {
    v141 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit")}];
  }

  else
  {
    v141 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentShare])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare")}];
  }

  else
  {
    v140 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentFavorite])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite")}];
  }

  else
  {
    v139 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInSharedAlbum])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInOnThisDay])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtAOI])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtPOI])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtROI])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtBusiness])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedAtPublicEvent])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInVisualTrend])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInActivity])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity")}];
  }

  else
  {
    v130 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInChildActivity])
  {
    v129 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity")}];
  }

  else
  {
    v129 = 0;
  }

  v128 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userLibraryAgeInDays](self, "userLibraryAgeInDays")}];
  if (![(BMPhotosUserAnalytics *)self hasUserisDAU]|| ([(BMPhotosUserAnalytics *)self userisDAU], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMPhotosUserAnalytics *)self userisDAU];
    v11 = MEMORY[0x1E696AD98];
    [(BMPhotosUserAnalytics *)self userisDAU];
    v12 = [v11 numberWithDouble:?];
  }

  v176[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null;
  v177[0] = null;
  v176[1] = @"userEvent";
  null2 = userEvent;
  if (!userEvent)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null2;
  v177[1] = null2;
  v176[2] = @"containsVIP";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null3;
  v177[2] = null3;
  v176[3] = @"faceCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null4;
  v177[3] = null4;
  v176[4] = @"containsPets";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null5;
  v177[4] = null5;
  v176[5] = @"capturedAtHome";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null6;
  v177[5] = null6;
  v176[6] = @"capturedAtWork";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null7;
  v177[6] = null7;
  v176[7] = @"capturedAtFrequentLocation";
  null8 = v175;
  if (!v175)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v177[7] = null8;
  v176[8] = @"capturedOnTrip";
  null9 = v174;
  if (!v174)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v177[8] = null9;
  v176[9] = @"capturedOnShortTrip";
  null10 = v173;
  if (!v173)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v9;
  v121 = null10;
  v177[9] = null10;
  v176[10] = @"isDocument";
  null11 = v172;
  if (!v172)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = identifier;
  v120 = null11;
  v177[10] = null11;
  v176[11] = @"isMeme";
  null12 = v171;
  if (!v171)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null12;
  v177[11] = null12;
  v176[12] = @"isScreenshot";
  null13 = v170;
  if (!v170)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null13;
  v177[12] = null13;
  v176[13] = @"isFavorite";
  null14 = v169;
  if (!v169)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null14;
  v177[13] = null14;
  v176[14] = @"isCapturedOnWeekend";
  null15 = v168;
  if (!v168)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null15;
  v177[14] = null15;
  v176[15] = @"isCapturedAtPrivateEvent";
  null16 = v167;
  if (!v167)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null16;
  v177[15] = null16;
  v176[16] = @"isCapturedOnHoliday";
  null17 = v166;
  if (!v166)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null17;
  v177[16] = null17;
  v176[17] = @"mediaType";
  null18 = v165;
  if (!v165)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null18;
  v177[17] = null18;
  v176[18] = @"importSource";
  null19 = v164;
  if (!v164)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null19;
  v177[18] = null19;
  v176[19] = @"assetAge";
  null20 = v163;
  if (!v163)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null20;
  v177[19] = null20;
  v176[20] = @"userLibrarySize";
  null21 = v162;
  if (!v162)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null21;
  v177[20] = null21;
  v176[21] = @"userNumTrips";
  null22 = v161;
  if (!v161)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null22;
  v177[21] = null22;
  v176[22] = @"userNumVIPPeople";
  null23 = v160;
  if (!v160)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null23;
  v177[22] = null23;
  v176[23] = @"userNumFavorites";
  null24 = v159;
  if (!v159)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null24;
  v177[23] = null24;
  v176[24] = @"userHasVIP";
  null25 = v158;
  if (!v158)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null25;
  v177[24] = null25;
  v176[25] = @"userHasHome";
  null26 = v157;
  if (!v157)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null26;
  v177[25] = null26;
  v176[26] = @"userHasPet";
  null27 = v156;
  if (!v156)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null27;
  v177[26] = null27;
  v176[27] = @"containsBaby";
  null28 = v155;
  if (!v155)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null28;
  v177[27] = null28;
  v176[28] = @"containsSocialGroup";
  null29 = v154;
  if (!v154)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null29;
  v177[28] = null29;
  v176[29] = @"containsMyPet";
  null30 = v153;
  if (!v153)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null30;
  v177[29] = null30;
  v176[30] = @"containsCoWorker";
  null31 = v152;
  if (!v152)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null31;
  v177[30] = null31;
  v176[31] = @"containsFamily";
  null32 = v151;
  if (!v151)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null32;
  v177[31] = null32;
  v176[32] = @"containsFriends";
  null33 = v150;
  if (!v150)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null33;
  v177[32] = null33;
  v176[33] = @"containsPartner";
  null34 = v149;
  if (!v149)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null34;
  v177[33] = null34;
  v176[34] = @"containsParent";
  null35 = v148;
  if (!v148)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null35;
  v177[34] = null35;
  v176[35] = @"containsSibling";
  null36 = v147;
  if (!v147)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null36;
  v177[35] = null36;
  v176[36] = @"containsChild";
  null37 = v146;
  if (!v146)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null37;
  v177[36] = null37;
  v176[37] = @"isCoupon";
  null38 = v145;
  if (!v145)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null38;
  v177[37] = null38;
  v176[38] = @"isRecipe";
  null39 = v144;
  if (!v144)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null39;
  v177[38] = null39;
  v176[39] = @"isReceipt";
  null40 = v143;
  if (!v143)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null40;
  v177[39] = null40;
  v176[40] = @"isRecentView";
  null41 = v142;
  if (!v142)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null41;
  v177[40] = null41;
  v176[41] = @"isRecentEdit";
  null42 = v141;
  if (!v141)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null42;
  v177[41] = null42;
  v176[42] = @"isRecentShare";
  null43 = v140;
  if (!v140)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null43;
  v177[42] = null43;
  v176[43] = @"isRecentFavorite";
  null44 = v139;
  if (!v139)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null44;
  v177[43] = null44;
  v176[44] = @"isContainedInSharedAlbum";
  null45 = v138;
  if (!v138)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null45;
  v177[44] = null45;
  v176[45] = @"isContainedInOnThisDay";
  null46 = v137;
  if (!v137)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v6;
  v77 = null46;
  v177[45] = null46;
  v176[46] = @"capturedAtAOI";
  null47 = v136;
  if (!v136)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null47;
  v177[46] = null47;
  v176[47] = @"capturedAtPOI";
  null48 = v135;
  if (!v135)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = userEvent;
  v75 = null48;
  v177[47] = null48;
  v176[48] = @"capturedAtROI";
  null49 = v134;
  if (!v134)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v8;
  v74 = null49;
  v177[48] = null49;
  v176[49] = @"capturedAtBusiness";
  null50 = v133;
  if (!v133)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = v5;
  v73 = null50;
  v177[49] = null50;
  v176[50] = @"isCapturedAtPublicEvent";
  null51 = v132;
  if (!v132)
  {
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = v7;
  v177[50] = null51;
  v176[51] = @"isContainedInVisualTrend";
  null52 = v131;
  if (!v131)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = v12;
  v177[51] = null52;
  v176[52] = @"isContainedInActivity";
  null53 = v130;
  if (!v130)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v177[52] = null53;
  v176[53] = @"isContainedInChildActivity";
  null54 = v129;
  if (!v129)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v177[53] = null54;
  v176[54] = @"userLibraryAgeInDays";
  null55 = v128;
  if (!v128)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v177[54] = null55;
  v176[55] = @"userisDAU";
  null56 = v127;
  if (!v127)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v177[55] = null56;
  v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:v176 count:56];
  if (!v127)
  {
  }

  v71 = v26;
  if (!v128)
  {

    v71 = v26;
  }

  if (!v129)
  {

    v71 = v26;
  }

  if (!v130)
  {

    v71 = v26;
  }

  if (!v131)
  {

    v71 = v26;
  }

  if (!v132)
  {

    v71 = v26;
  }

  if (!v133)
  {

    v71 = v26;
  }

  if (!v134)
  {

    v71 = v26;
  }

  if (!v135)
  {

    v71 = v26;
  }

  if (!v136)
  {

    v71 = v26;
  }

  if (!v137)
  {

    v71 = v26;
  }

  if (!v138)
  {

    v71 = v26;
  }

  if (!v139)
  {

    v71 = v26;
  }

  if (!v140)
  {

    v71 = v26;
  }

  if (!v141)
  {

    v71 = v26;
  }

  if (!v142)
  {

    v71 = v26;
  }

  if (!v143)
  {

    v71 = v26;
  }

  if (!v144)
  {

    v71 = v26;
  }

  if (!v145)
  {

    v71 = v26;
  }

  if (!v146)
  {

    v71 = v26;
  }

  if (!v147)
  {

    v71 = v26;
  }

  if (!v148)
  {

    v71 = v26;
  }

  if (!v149)
  {

    v71 = v26;
  }

  if (!v150)
  {

    v71 = v26;
  }

  if (!v151)
  {

    v71 = v26;
  }

  if (!v152)
  {

    v71 = v26;
  }

  if (!v153)
  {

    v71 = v26;
  }

  if (!v154)
  {

    v71 = v26;
  }

  if (!v155)
  {

    v71 = v26;
  }

  if (!v156)
  {

    v71 = v26;
  }

  if (!v157)
  {

    v71 = v26;
  }

  if (!v158)
  {

    v71 = v26;
  }

  if (!v159)
  {

    v71 = v26;
  }

  if (!v160)
  {

    v71 = v26;
  }

  if (!v161)
  {

    v71 = v26;
  }

  if (!v162)
  {

    v71 = v26;
  }

  if (!v163)
  {

    v71 = v26;
  }

  if (!v164)
  {

    v71 = v26;
  }

  if (!v165)
  {

    v71 = v26;
  }

  if (!v166)
  {

    v71 = v26;
  }

  if (!v167)
  {

    v71 = v26;
  }

  if (!v168)
  {

    v71 = v26;
  }

  if (!v169)
  {

    v71 = v26;
  }

  if (!v170)
  {

    v71 = v26;
  }

  if (!v171)
  {
  }

  if (!v172)
  {
  }

  if (!v173)
  {
  }

  if (!v174)
  {
  }

  if (v175)
  {
    if (v119)
    {
      goto LABEL_359;
    }
  }

  else
  {

    if (v119)
    {
LABEL_359:
      if (v123)
      {
        goto LABEL_360;
      }

      goto LABEL_370;
    }
  }

  if (v123)
  {
LABEL_360:
    if (v122)
    {
      goto LABEL_361;
    }

    goto LABEL_371;
  }

LABEL_370:

  if (v122)
  {
LABEL_361:
    if (v124)
    {
      goto LABEL_362;
    }

    goto LABEL_372;
  }

LABEL_371:

  if (v124)
  {
LABEL_362:
    if (v125)
    {
      goto LABEL_363;
    }

    goto LABEL_373;
  }

LABEL_372:

  if (v125)
  {
LABEL_363:
    if (v126)
    {
      goto LABEL_364;
    }

LABEL_374:

    if (v24)
    {
      goto LABEL_365;
    }

    goto LABEL_375;
  }

LABEL_373:

  if (!v126)
  {
    goto LABEL_374;
  }

LABEL_364:
  if (v24)
  {
    goto LABEL_365;
  }

LABEL_375:

LABEL_365:

  return v118;
}

- (BMPhotosUserAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v732[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v620 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v620 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"userEvent"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"containsVIP"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v617 = v9;
        v11 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v617 = v9;
        v11 = v10;
LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"faceCount"];
        v611 = v11;
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v610 = v12;
          v618 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v610 = v12;
          v618 = v12;
LABEL_13:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"containsPets"];
          v614 = v13;
          if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v612 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v612 = v14;
LABEL_16:
            v15 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtHome"];
            v609 = v15;
            if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v605 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v605 = v16;
LABEL_19:
              v17 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtWork"];
              v608 = v17;
              if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v606 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v606 = v18;
LABEL_22:
                v19 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtFrequentLocation"];
                v604 = v19;
                if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v602 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v602 = v20;
LABEL_25:
                  v21 = [dictionaryCopy objectForKeyedSubscript:@"capturedOnTrip"];
                  v601 = v21;
                  if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v599 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v599 = v22;
LABEL_28:
                    v23 = [dictionaryCopy objectForKeyedSubscript:@"capturedOnShortTrip"];
                    v595 = v23;
                    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v587 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v587 = v24;
LABEL_31:
                      v25 = [dictionaryCopy objectForKeyedSubscript:@"isDocument"];
                      v592 = v25;
                      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v588 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v588 = v26;
LABEL_34:
                        v27 = [dictionaryCopy objectForKeyedSubscript:@"isMeme"];
                        selfCopy = self;
                        v584 = v27;
                        if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v582 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v582 = v28;
LABEL_37:
                          v29 = [dictionaryCopy objectForKeyedSubscript:@"isScreenshot"];
                          v581 = v29;
                          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v575 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v575 = v30;
LABEL_40:
                            v31 = [dictionaryCopy objectForKeyedSubscript:@"isFavorite"];
                            v574 = v31;
                            if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v572 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v572 = v32;
LABEL_43:
                              v33 = [dictionaryCopy objectForKeyedSubscript:@"isCapturedOnWeekend"];
                              v571 = v33;
                              if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v569 = 0;
                                goto LABEL_46;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v569 = v34;
LABEL_46:
                                v35 = [dictionaryCopy objectForKeyedSubscript:@"isCapturedAtPrivateEvent"];
                                v568 = v35;
                                if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v566 = 0;
LABEL_49:
                                  v37 = [dictionaryCopy objectForKeyedSubscript:@"isCapturedOnHoliday"];
                                  v565 = v37;
                                  if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!error)
                                      {
                                        v563 = 0;
                                        selfCopy5 = 0;
                                        v56 = v610;
                                        error = v605;
LABEL_512:
                                        v112 = v587;
                                        goto LABEL_513;
                                      }

                                      errorCopy = error;
                                      v564 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v170 = *MEMORY[0x1E698F240];
                                      v699 = *MEMORY[0x1E696A578];
                                      v171 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v452 = objc_opt_class();
                                      v172 = v171;
                                      self = selfCopy;
                                      error = v605;
                                      v173 = [v172 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v452, @"isCapturedOnHoliday"];
                                      v700 = v173;
                                      v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v700 forKeys:&v699 count:1];
                                      v175 = v170;
                                      v11 = v611;
                                      v562 = v174;
                                      v176 = [v564 initWithDomain:v175 code:2 userInfo:?];
                                      v563 = 0;
                                      selfCopy5 = 0;
                                      *errorCopy = v176;
                                      v56 = v610;
                                      goto LABEL_511;
                                    }

                                    v563 = v38;
                                  }

                                  else
                                  {
                                    v563 = 0;
                                  }

                                  v39 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
                                  v562 = v39;
                                  if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v559 = 0;
                                    goto LABEL_140;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v147 = v40;
LABEL_139:
                                    v559 = v147;

LABEL_140:
                                    v178 = [dictionaryCopy objectForKeyedSubscript:@"importSource"];
                                    v561 = v178;
                                    if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v560 = 0;
                                      goto LABEL_148;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v180 = v179;
LABEL_147:
                                      v560 = v180;

LABEL_148:
                                      v182 = [dictionaryCopy objectForKeyedSubscript:@"assetAge"];
                                      v558 = v182;
                                      if (!v182 || (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v557 = 0;
                                        goto LABEL_157;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v184 = v183;
LABEL_156:
                                        v557 = v184;

LABEL_157:
                                        v186 = [dictionaryCopy objectForKeyedSubscript:@"userLibrarySize"];
                                        v556 = v186;
                                        if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v555 = 0;
                                          goto LABEL_165;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v188 = v187;
LABEL_164:
                                          v555 = v188;

LABEL_165:
                                          v190 = [dictionaryCopy objectForKeyedSubscript:@"userNumTrips"];
                                          v554 = v190;
                                          if (!v190 || (v191 = v190, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v553 = 0;
                                            goto LABEL_168;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v553 = v191;
LABEL_168:
                                            v192 = [dictionaryCopy objectForKeyedSubscript:@"userNumVIPPeople"];
                                            v552 = v192;
                                            if (!v192 || (v193 = v192, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v550 = 0;
                                              goto LABEL_171;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v550 = v193;
LABEL_171:
                                              v194 = [dictionaryCopy objectForKeyedSubscript:@"userNumFavorites"];
                                              v549 = v194;
                                              if (!v194 || (v195 = v194, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v546 = 0;
                                                goto LABEL_174;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v546 = v195;
LABEL_174:
                                                v196 = [dictionaryCopy objectForKeyedSubscript:@"userHasVIP"];
                                                v548 = v196;
                                                if (!v196 || (v197 = v196, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v547 = 0;
                                                  goto LABEL_177;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v547 = v197;
LABEL_177:
                                                  v198 = [dictionaryCopy objectForKeyedSubscript:@"userHasHome"];
                                                  v545 = v198;
                                                  if (!v198 || (v199 = v198, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v543 = 0;
                                                    goto LABEL_180;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v543 = v199;
LABEL_180:
                                                    v200 = [dictionaryCopy objectForKeyedSubscript:@"userHasPet"];
                                                    v542 = v200;
                                                    if (!v200 || (v201 = v200, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v539 = 0;
                                                      goto LABEL_183;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v539 = v201;
LABEL_183:
                                                      v202 = [dictionaryCopy objectForKeyedSubscript:@"containsBaby"];
                                                      v541 = v202;
                                                      if (!v202 || (v203 = v202, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v540 = 0;
                                                        goto LABEL_186;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v540 = v203;
LABEL_186:
                                                        v204 = [dictionaryCopy objectForKeyedSubscript:@"containsSocialGroup"];
                                                        v538 = v204;
                                                        if (!v204 || (v205 = v204, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v537 = 0;
                                                          goto LABEL_189;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v537 = v205;
LABEL_189:
                                                          v206 = [dictionaryCopy objectForKeyedSubscript:@"containsMyPet"];
                                                          v536 = v206;
                                                          if (!v206 || (v207 = v206, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v535 = 0;
                                                            goto LABEL_192;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v535 = v207;
LABEL_192:
                                                            v208 = [dictionaryCopy objectForKeyedSubscript:@"containsCoWorker"];
                                                            v534 = v208;
                                                            if (!v208 || (v209 = v208, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v533 = 0;
                                                              goto LABEL_195;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v533 = v209;
LABEL_195:
                                                              v210 = [dictionaryCopy objectForKeyedSubscript:@"containsFamily"];
                                                              if (!v210 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v528 = v210;
                                                                v531 = 0;
                                                                goto LABEL_198;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v528 = v210;
                                                                v531 = v210;
LABEL_198:
                                                                v211 = [dictionaryCopy objectForKeyedSubscript:@"containsFriends"];
                                                                v530 = v211;
                                                                if (!v211 || (v212 = v211, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v529 = 0;
                                                                  goto LABEL_201;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v529 = v212;
LABEL_201:
                                                                  v213 = [dictionaryCopy objectForKeyedSubscript:@"containsPartner"];
                                                                  v527 = v213;
                                                                  if (!v213 || (v214 = v213, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v524 = 0;
                                                                    goto LABEL_204;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v524 = v214;
LABEL_204:
                                                                    v215 = [dictionaryCopy objectForKeyedSubscript:@"containsParent"];
                                                                    v526 = v215;
                                                                    if (!v215 || (v216 = v215, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v525 = 0;
                                                                      goto LABEL_207;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v525 = v216;
LABEL_207:
                                                                      v217 = [dictionaryCopy objectForKeyedSubscript:@"containsSibling"];
                                                                      v523 = v217;
                                                                      if (!v217 || (v218 = v217, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v522 = 0;
                                                                        goto LABEL_210;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v522 = v218;
LABEL_210:
                                                                        v219 = [dictionaryCopy objectForKeyedSubscript:@"containsChild"];
                                                                        v521 = v219;
                                                                        if (!v219 || (v220 = v219, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v520 = 0;
                                                                          goto LABEL_213;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v520 = v220;
LABEL_213:
                                                                          v221 = [dictionaryCopy objectForKeyedSubscript:@"isCoupon"];
                                                                          v518 = v221;
                                                                          if (!v221 || (v222 = v221, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v519 = 0;
                                                                            goto LABEL_216;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v519 = v222;
LABEL_216:
                                                                            v223 = [dictionaryCopy objectForKeyedSubscript:@"isRecipe"];
                                                                            v516 = v223;
                                                                            if (!v223 || (v224 = v223, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v517 = 0;
                                                                              goto LABEL_219;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v517 = v224;
LABEL_219:
                                                                              v225 = [dictionaryCopy objectForKeyedSubscript:@"isReceipt"];
                                                                              v515 = v225;
                                                                              if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v514 = 0;
                                                                                goto LABEL_222;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v514 = v226;
LABEL_222:
                                                                                v227 = [dictionaryCopy objectForKeyedSubscript:@"isRecentView"];
                                                                                v513 = v227;
                                                                                if (!v227 || (v228 = v227, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v509 = 0;
                                                                                  goto LABEL_225;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v509 = v228;
LABEL_225:
                                                                                  v229 = [dictionaryCopy objectForKeyedSubscript:@"isRecentEdit"];
                                                                                  v511 = v229;
                                                                                  if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                  {
                                                                                    v510 = 0;
                                                                                    goto LABEL_228;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v510 = v230;
LABEL_228:
                                                                                    v231 = [dictionaryCopy objectForKeyedSubscript:@"isRecentShare"];
                                                                                    v508 = v231;
                                                                                    if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v512 = 0;
                                                                                      goto LABEL_231;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v512 = v232;
LABEL_231:
                                                                                      v233 = [dictionaryCopy objectForKeyedSubscript:@"isRecentFavorite"];
                                                                                      v505 = v233;
                                                                                      if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v506 = 0;
                                                                                        goto LABEL_234;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v506 = v234;
LABEL_234:
                                                                                        v235 = [dictionaryCopy objectForKeyedSubscript:@"isContainedInSharedAlbum"];
                                                                                        v504 = v235;
                                                                                        if (!v235 || (v236 = v235, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v597 = 0;
                                                                                          goto LABEL_237;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v597 = v236;
LABEL_237:
                                                                                          v503 = [dictionaryCopy objectForKeyedSubscript:@"isContainedInOnThisDay"];
                                                                                          if (!v503 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v501 = 0;
LABEL_240:
                                                                                            v237 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtAOI"];
                                                                                            v499 = v237;
                                                                                            if (!v237)
                                                                                            {
LABEL_378:
                                                                                              [dictionaryCopy objectForKeyedSubscript:@"capturedAtPOI"];
                                                                                              v497 = v494 = v237;
                                                                                              if (v497 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                {
                                                                                                  selfCopy6 = self;
                                                                                                  if (!error)
                                                                                                  {
                                                                                                    v495 = 0;
                                                                                                    selfCopy5 = 0;
                                                                                                    v56 = v610;
                                                                                                    v318 = v528;
LABEL_480:
                                                                                                    v394 = v494;
                                                                                                    goto LABEL_481;
                                                                                                  }

                                                                                                  v404 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v496 = *MEMORY[0x1E698F240];
                                                                                                  v637 = *MEMORY[0x1E696A578];
                                                                                                  v492 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtPOI"];
                                                                                                  v638 = v492;
                                                                                                  v491 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v638 forKeys:&v637 count:1];
                                                                                                  v405 = [v404 initWithDomain:v496 code:2 userInfo:?];
                                                                                                  v495 = 0;
                                                                                                  selfCopy5 = 0;
                                                                                                  *error = v405;
                                                                                                  goto LABEL_464;
                                                                                                }

                                                                                                v495 = v497;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v495 = 0;
                                                                                              }

                                                                                              v491 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtROI"];
                                                                                              if (!v491 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v492 = 0;
LABEL_384:
                                                                                                v487 = [dictionaryCopy objectForKeyedSubscript:@"capturedAtBusiness"];
                                                                                                if (v487 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                  {
                                                                                                    if (!error)
                                                                                                    {
                                                                                                      v489 = 0;
                                                                                                      selfCopy5 = 0;
                                                                                                      v56 = v610;
                                                                                                      v407 = v487;
                                                                                                      goto LABEL_478;
                                                                                                    }

                                                                                                    v409 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v490 = *MEMORY[0x1E698F240];
                                                                                                    v633 = *MEMORY[0x1E696A578];
                                                                                                    v407 = v487;
                                                                                                    v485 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtBusiness"];
                                                                                                    v634 = v485;
                                                                                                    v486 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v634 forKeys:&v633 count:1];
                                                                                                    v410 = [v409 initWithDomain:v490 code:2 userInfo:?];
                                                                                                    v489 = 0;
                                                                                                    selfCopy5 = 0;
                                                                                                    *error = v410;
                                                                                                    v11 = v611;
                                                                                                    v56 = v610;
                                                                                                    v411 = v605;
                                                                                                    goto LABEL_477;
                                                                                                  }

                                                                                                  v489 = v487;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v489 = 0;
                                                                                                }

                                                                                                v486 = [dictionaryCopy objectForKeyedSubscript:@"isCapturedAtPublicEvent"];
                                                                                                if (v486 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                  {
                                                                                                    if (!error)
                                                                                                    {
                                                                                                      v485 = 0;
                                                                                                      selfCopy5 = 0;
                                                                                                      v56 = v610;
                                                                                                      v411 = v605;
                                                                                                      v407 = v487;
                                                                                                      goto LABEL_477;
                                                                                                    }

                                                                                                    v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v413 = *MEMORY[0x1E698F240];
                                                                                                    v631 = *MEMORY[0x1E696A578];
                                                                                                    v484 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCapturedAtPublicEvent"];
                                                                                                    v632 = v484;
                                                                                                    v483 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v632 forKeys:&v631 count:1];
                                                                                                    v485 = 0;
                                                                                                    selfCopy5 = 0;
                                                                                                    *error = [v412 initWithDomain:v413 code:2 userInfo:?];
                                                                                                    goto LABEL_538;
                                                                                                  }

                                                                                                  v485 = v486;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v485 = 0;
                                                                                                }

                                                                                                v483 = [dictionaryCopy objectForKeyedSubscript:@"isContainedInVisualTrend"];
                                                                                                if (!v483 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                {
                                                                                                  v484 = 0;
                                                                                                  goto LABEL_393;
                                                                                                }

                                                                                                selfCopy4 = self;
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v484 = v483;
LABEL_393:
                                                                                                  v482 = [dictionaryCopy objectForKeyedSubscript:@"isContainedInActivity"];
                                                                                                  if (!v482 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                  {
                                                                                                    v481 = 0;
                                                                                                    v383 = v617;
                                                                                                    goto LABEL_396;
                                                                                                  }

                                                                                                  v383 = v617;
                                                                                                  selfCopy4 = self;
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    v481 = v482;
LABEL_396:
                                                                                                    v586 = v8;
                                                                                                    [dictionaryCopy objectForKeyedSubscript:@"isContainedInChildActivity"];
                                                                                                    v594 = v7;
                                                                                                    v580 = v10;
                                                                                                    v478 = v617 = v383;
                                                                                                    if (v478)
                                                                                                    {
                                                                                                      v384 = v620;
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v480 = v478;
                                                                                                          goto LABEL_435;
                                                                                                        }

                                                                                                        if (error)
                                                                                                        {
                                                                                                          v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v421 = *MEMORY[0x1E698F240];
                                                                                                          v625 = *MEMORY[0x1E696A578];
                                                                                                          v479 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInChildActivity"];
                                                                                                          v626 = v479;
                                                                                                          v406 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
                                                                                                          v480 = 0;
                                                                                                          selfCopy5 = 0;
                                                                                                          *error = [v420 initWithDomain:v421 code:2 userInfo:v406];
                                                                                                          goto LABEL_547;
                                                                                                        }

                                                                                                        v480 = 0;
                                                                                                        selfCopy5 = 0;
                                                                                                        v7 = v594;
LABEL_545:
                                                                                                        v11 = v611;
                                                                                                        v56 = v610;
                                                                                                        v411 = v605;
                                                                                                        v407 = v487;
                                                                                                        goto LABEL_474;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v384 = v620;
                                                                                                    }

                                                                                                    v480 = 0;
LABEL_435:
                                                                                                    v406 = [dictionaryCopy objectForKeyedSubscript:@"userLibraryAgeInDays"];
                                                                                                    v620 = v384;
                                                                                                    if (!v406 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                    {
                                                                                                      v479 = 0;
                                                                                                      goto LABEL_468;
                                                                                                    }

                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v479 = v406;
LABEL_467:

LABEL_468:
                                                                                                      v423 = [dictionaryCopy objectForKeyedSubscript:@"userisDAU"];
                                                                                                      if (!v423 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                      {
                                                                                                        v424 = v423;
                                                                                                        v425 = 0;
LABEL_471:
                                                                                                        intValue = [v559 intValue];
                                                                                                        intValue2 = [v560 intValue];
                                                                                                        intValue3 = [v557 intValue];
                                                                                                        intValue4 = [v555 intValue];
                                                                                                        v430 = v425;
                                                                                                        LODWORD(v477) = [v479 intValue];
                                                                                                        v476 = __PAIR64__(intValue4, intValue3);
                                                                                                        v475 = __PAIR64__(intValue2, intValue);
                                                                                                        v11 = v611;
                                                                                                        v411 = v605;
                                                                                                        self = [BMPhotosUserAnalytics initWithIdentifier:selfCopy userEvent:"initWithIdentifier:userEvent:containsVIP:faceCount:containsPets:capturedAtHome:capturedAtWork:capturedAtFrequentLocation:capturedOnTrip:capturedOnShortTrip:isDocument:isMeme:isScreenshot:isFavorite:isCapturedOnWeekend:isCapturedAtPrivateEvent:isCapturedOnHoliday:mediaType:importSource:assetAge:userLibrarySize:userNumTrips:userNumVIPPeople:userNumFavorites:userHasVIP:userHasHome:userHasPet:containsBaby:containsSocialGroup:containsMyPet:containsCoWorker:containsFamily:containsFriends:containsPartner:containsParent:containsSibling:containsChild:isCoupon:isRecipe:isReceipt:isRecentView:isRecentEdit:isRecentShare:isRecentFavorite:isContainedInSharedAlbum:isContainedInOnThisDay:capturedAtAOI:capturedAtPOI:capturedAtROI:capturedAtBusiness:isCapturedAtPublicEvent:isContainedInVisualTrend:isContainedInActivity:isContainedInChildActivity:userLibraryAgeInDays:userisDAU:" containsVIP:v384 faceCount:v617 containsPets:v611 capturedAtHome:v618 capturedAtWork:v612 capturedAtFrequentLocation:v605 capturedOnTrip:v606 capturedOnShortTrip:v602 isDocument:v599 isMeme:v587 isScreenshot:v588 isFavorite:v582 isCapturedOnWeekend:v575 isCapturedAtPrivateEvent:v572 isCapturedOnHoliday:v569 mediaType:v566 importSource:v563 assetAge:v475 userLibrarySize:v476 userNumTrips:v553 userNumVIPPeople:v550 userNumFavorites:v546 userHasVIP:v547 userHasHome:v543 userHasPet:v539 containsBaby:v540 containsSocialGroup:v537 containsMyPet:v535 containsCoWorker:v533 containsFamily:v531 containsFriends:v529 containsPartner:v524 containsParent:v525 containsSibling:v522 containsChild:v520 isCoupon:v519 isRecipe:v517 isReceipt:v514 isRecentView:v509 isRecentEdit:v510 isRecentShare:v512 isRecentFavorite:v506 isContainedInSharedAlbum:v597 isContainedInOnThisDay:v501 capturedAtAOI:v494 capturedAtPOI:v495 capturedAtROI:v492 capturedAtBusiness:v489 isCapturedAtPublicEvent:v485 isContainedInVisualTrend:v484 isContainedInActivity:v481 isContainedInChildActivity:v480 userLibraryAgeInDays:v477 userisDAU:v425];
                                                                                                        selfCopy5 = self;
                                                                                                        v7 = v594;
LABEL_472:

                                                                                                        v10 = v580;
                                                                                                        v56 = v610;
LABEL_473:
                                                                                                        v407 = v487;

                                                                                                        v8 = v586;
LABEL_474:

LABEL_475:
LABEL_476:

LABEL_477:
                                                                                                        v605 = v411;

                                                                                                        goto LABEL_478;
                                                                                                      }

                                                                                                      objc_opt_class();
                                                                                                      v424 = v423;
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v425 = v423;
                                                                                                        goto LABEL_471;
                                                                                                      }

                                                                                                      if (error)
                                                                                                      {
                                                                                                        v432 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                        v433 = *MEMORY[0x1E698F240];
                                                                                                        v621 = *MEMORY[0x1E696A578];
                                                                                                        v434 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userisDAU"];
                                                                                                        v622 = v434;
                                                                                                        v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
                                                                                                        *error = [v432 initWithDomain:v433 code:2 userInfo:v435];
                                                                                                      }

                                                                                                      v430 = 0;
                                                                                                      selfCopy5 = 0;
LABEL_543:
                                                                                                      self = selfCopy;
                                                                                                      v7 = v594;
                                                                                                      v11 = v611;
                                                                                                      v411 = v605;
                                                                                                      goto LABEL_472;
                                                                                                    }

                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v422 = v406;
                                                                                                      v479 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeFromString(v422)];

                                                                                                      goto LABEL_467;
                                                                                                    }

                                                                                                    if (error)
                                                                                                    {
                                                                                                      v436 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                      v437 = *MEMORY[0x1E698F240];
                                                                                                      v623 = *MEMORY[0x1E696A578];
                                                                                                      v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibraryAgeInDays"];
                                                                                                      v624 = v430;
                                                                                                      v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
                                                                                                      v479 = 0;
                                                                                                      selfCopy5 = 0;
                                                                                                      *error = [v436 initWithDomain:v437 code:2 userInfo:?];
                                                                                                      goto LABEL_543;
                                                                                                    }

                                                                                                    v479 = 0;
                                                                                                    selfCopy5 = 0;
LABEL_547:
                                                                                                    v7 = v594;
                                                                                                    v11 = v611;
                                                                                                    v56 = v610;
                                                                                                    v411 = v605;
                                                                                                    goto LABEL_473;
                                                                                                  }

                                                                                                  if (error)
                                                                                                  {
                                                                                                    v417 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v418 = *MEMORY[0x1E698F240];
                                                                                                    v627 = *MEMORY[0x1E696A578];
                                                                                                    v480 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInActivity"];
                                                                                                    v628 = v480;
                                                                                                    v478 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
                                                                                                    v419 = [v417 initWithDomain:v418 code:2 userInfo:?];
                                                                                                    v481 = 0;
                                                                                                    selfCopy5 = 0;
                                                                                                    *error = v419;
                                                                                                    goto LABEL_545;
                                                                                                  }

                                                                                                  v481 = 0;
                                                                                                  selfCopy5 = 0;
LABEL_540:
                                                                                                  self = selfCopy4;
                                                                                                  v11 = v611;
                                                                                                  v56 = v610;
                                                                                                  v411 = v605;
                                                                                                  v407 = v487;
                                                                                                  goto LABEL_475;
                                                                                                }

                                                                                                if (error)
                                                                                                {
                                                                                                  v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v415 = *MEMORY[0x1E698F240];
                                                                                                  v629 = *MEMORY[0x1E696A578];
                                                                                                  v481 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInVisualTrend"];
                                                                                                  v630 = v481;
                                                                                                  v482 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v630 forKeys:&v629 count:1];
                                                                                                  v416 = [v414 initWithDomain:v415 code:2 userInfo:?];
                                                                                                  v484 = 0;
                                                                                                  selfCopy5 = 0;
                                                                                                  *error = v416;
                                                                                                  goto LABEL_540;
                                                                                                }

                                                                                                v484 = 0;
                                                                                                selfCopy5 = 0;
LABEL_538:
                                                                                                v11 = v611;
                                                                                                v56 = v610;
                                                                                                v411 = v605;
                                                                                                v407 = v487;
                                                                                                goto LABEL_476;
                                                                                              }

                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v492 = v491;
                                                                                                goto LABEL_384;
                                                                                              }

                                                                                              selfCopy6 = self;
                                                                                              if (error)
                                                                                              {
                                                                                                v493 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v488 = *MEMORY[0x1E698F240];
                                                                                                v635 = *MEMORY[0x1E696A578];
                                                                                                v489 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtROI"];
                                                                                                v636 = v489;
                                                                                                v407 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v636 forKeys:&v635 count:1];
                                                                                                v408 = [v493 initWithDomain:v488 code:2 userInfo:v407];
                                                                                                v492 = 0;
                                                                                                selfCopy5 = 0;
                                                                                                *error = v408;
                                                                                                v56 = v610;
LABEL_478:

                                                                                                goto LABEL_479;
                                                                                              }

                                                                                              v492 = 0;
                                                                                              selfCopy5 = 0;
LABEL_464:
                                                                                              self = selfCopy6;
                                                                                              v56 = v610;
LABEL_479:
                                                                                              v318 = v528;

                                                                                              goto LABEL_480;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v237 = 0;
                                                                                              goto LABEL_378;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v237 = v237;
                                                                                              goto LABEL_378;
                                                                                            }

                                                                                            selfCopy10 = self;
                                                                                            if (error)
                                                                                            {
                                                                                              v398 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v498 = *MEMORY[0x1E698F240];
                                                                                              v639 = *MEMORY[0x1E696A578];
                                                                                              v495 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtAOI"];
                                                                                              v640 = v495;
                                                                                              v399 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v640 forKeys:&v639 count:1];
                                                                                              v400 = v498;
                                                                                              v497 = v399;
                                                                                              v401 = [v398 initWithDomain:v400 code:2 userInfo:?];
                                                                                              v394 = 0;
                                                                                              selfCopy5 = 0;
                                                                                              *error = v401;
                                                                                              v56 = v610;
                                                                                              v318 = v528;
LABEL_481:

                                                                                              goto LABEL_482;
                                                                                            }

                                                                                            v394 = 0;
                                                                                            selfCopy5 = 0;
LABEL_457:
                                                                                            self = selfCopy10;
                                                                                            v56 = v610;
                                                                                            v318 = v528;
LABEL_482:

                                                                                            goto LABEL_483;
                                                                                          }

                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v501 = v503;
                                                                                            goto LABEL_240;
                                                                                          }

                                                                                          selfCopy10 = self;
                                                                                          if (error)
                                                                                          {
                                                                                            v502 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v500 = *MEMORY[0x1E698F240];
                                                                                            v641 = *MEMORY[0x1E696A578];
                                                                                            v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInOnThisDay"];
                                                                                            v642 = v394;
                                                                                            v395 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v642 forKeys:&v641 count:1];
                                                                                            v396 = v500;
                                                                                            v499 = v395;
                                                                                            v397 = [v502 initWithDomain:v396 code:2 userInfo:?];
                                                                                            v501 = 0;
                                                                                            selfCopy5 = 0;
                                                                                            *error = v397;
                                                                                            goto LABEL_457;
                                                                                          }

                                                                                          v501 = 0;
                                                                                          selfCopy5 = 0;
LABEL_453:
                                                                                          self = selfCopy10;
                                                                                          v56 = v610;
                                                                                          v318 = v528;
LABEL_483:
                                                                                          v371 = v509;

                                                                                          goto LABEL_484;
                                                                                        }

                                                                                        selfCopy10 = self;
                                                                                        if (error)
                                                                                        {
                                                                                          v392 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v598 = *MEMORY[0x1E698F240];
                                                                                          v643 = *MEMORY[0x1E696A578];
                                                                                          v501 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInSharedAlbum"];
                                                                                          v644 = v501;
                                                                                          v503 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v644 forKeys:&v643 count:1];
                                                                                          v393 = [v392 initWithDomain:v598 code:2 userInfo:?];
                                                                                          v597 = 0;
                                                                                          selfCopy5 = 0;
                                                                                          *error = v393;
                                                                                          goto LABEL_453;
                                                                                        }

                                                                                        v597 = 0;
                                                                                        selfCopy5 = 0;
LABEL_447:
                                                                                        self = selfCopy10;
                                                                                        v56 = v610;
                                                                                        v318 = v528;
                                                                                        v371 = v509;
LABEL_484:

                                                                                        goto LABEL_485;
                                                                                      }

                                                                                      selfCopy10 = self;
                                                                                      if (error)
                                                                                      {
                                                                                        v390 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v507 = *MEMORY[0x1E698F240];
                                                                                        v645 = *MEMORY[0x1E696A578];
                                                                                        v597 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRecentFavorite"];
                                                                                        v646 = v597;
                                                                                        v504 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
                                                                                        v391 = [v390 initWithDomain:v507 code:2 userInfo:?];
                                                                                        v506 = 0;
                                                                                        selfCopy5 = 0;
                                                                                        *error = v391;
                                                                                        goto LABEL_447;
                                                                                      }

                                                                                      v506 = 0;
                                                                                      selfCopy5 = 0;
LABEL_443:
                                                                                      v56 = v610;
                                                                                      v318 = v528;
                                                                                      v371 = v509;
LABEL_485:

                                                                                      goto LABEL_486;
                                                                                    }

                                                                                    if (error)
                                                                                    {
                                                                                      v385 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v386 = *MEMORY[0x1E698F240];
                                                                                      v647 = *MEMORY[0x1E696A578];
                                                                                      v387 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                      v474 = objc_opt_class();
                                                                                      v388 = v387;
                                                                                      self = selfCopy;
                                                                                      v506 = [v388 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v474, @"isRecentShare"];
                                                                                      v648 = v506;
                                                                                      v505 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v648 forKeys:&v647 count:1];
                                                                                      v512 = 0;
                                                                                      selfCopy5 = 0;
                                                                                      *error = [v385 initWithDomain:v386 code:2 userInfo:?];
                                                                                      goto LABEL_443;
                                                                                    }

                                                                                    v512 = 0;
                                                                                    selfCopy5 = 0;
LABEL_432:
                                                                                    v56 = v610;
                                                                                    v318 = v528;
                                                                                    v371 = v509;
LABEL_486:

                                                                                    goto LABEL_487;
                                                                                  }

                                                                                  if (error)
                                                                                  {
                                                                                    v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v380 = *MEMORY[0x1E698F240];
                                                                                    v649 = *MEMORY[0x1E696A578];
                                                                                    v381 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                    v473 = objc_opt_class();
                                                                                    v382 = v381;
                                                                                    self = selfCopy;
                                                                                    v512 = [v382 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v473, @"isRecentEdit"];
                                                                                    v650 = v512;
                                                                                    v508 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v650 forKeys:&v649 count:1];
                                                                                    v510 = 0;
                                                                                    selfCopy5 = 0;
                                                                                    *error = [v379 initWithDomain:v380 code:2 userInfo:?];
                                                                                    goto LABEL_432;
                                                                                  }

                                                                                  v510 = 0;
                                                                                  selfCopy5 = 0;
                                                                                  v56 = v610;
                                                                                  v318 = v528;
                                                                                  v371 = v509;
LABEL_487:

                                                                                  goto LABEL_488;
                                                                                }

                                                                                if (error)
                                                                                {
                                                                                  v374 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v375 = *MEMORY[0x1E698F240];
                                                                                  v651 = *MEMORY[0x1E696A578];
                                                                                  v376 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                  v472 = objc_opt_class();
                                                                                  v377 = v376;
                                                                                  self = selfCopy;
                                                                                  v510 = [v377 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v472, @"isRecentView"];
                                                                                  v652 = v510;
                                                                                  v511 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v652 forKeys:&v651 count:1];
                                                                                  v378 = [v374 initWithDomain:v375 code:2 userInfo:?];
                                                                                  v371 = 0;
                                                                                  selfCopy5 = 0;
                                                                                  *error = v378;
                                                                                  v56 = v610;
                                                                                  v318 = v528;
                                                                                  goto LABEL_487;
                                                                                }

                                                                                v371 = 0;
                                                                                selfCopy5 = 0;
LABEL_421:
                                                                                v56 = v610;
                                                                                v318 = v528;
LABEL_488:

                                                                                goto LABEL_489;
                                                                              }

                                                                              if (error)
                                                                              {
                                                                                v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v368 = *MEMORY[0x1E698F240];
                                                                                v653 = *MEMORY[0x1E696A578];
                                                                                v369 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v471 = objc_opt_class();
                                                                                v370 = v369;
                                                                                self = selfCopy;
                                                                                v371 = [v370 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v471, @"isReceipt"];
                                                                                v654 = v371;
                                                                                v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
                                                                                v373 = v368;
                                                                                v11 = v611;
                                                                                v513 = v372;
                                                                                v514 = 0;
                                                                                selfCopy5 = 0;
                                                                                *error = [v367 initWithDomain:v373 code:2 userInfo:?];
                                                                                goto LABEL_421;
                                                                              }

                                                                              v514 = 0;
                                                                              selfCopy5 = 0;
LABEL_415:
                                                                              v56 = v610;
                                                                              v318 = v528;
LABEL_489:
                                                                              v331 = v524;

                                                                              v362 = v516;
                                                                              goto LABEL_490;
                                                                            }

                                                                            if (error)
                                                                            {
                                                                              v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v364 = *MEMORY[0x1E698F240];
                                                                              v655 = *MEMORY[0x1E696A578];
                                                                              v365 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                              v470 = objc_opt_class();
                                                                              v366 = v365;
                                                                              self = selfCopy;
                                                                              v514 = [v366 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v470, @"isRecipe"];
                                                                              v656 = v514;
                                                                              v515 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v656 forKeys:&v655 count:1];
                                                                              v517 = 0;
                                                                              selfCopy5 = 0;
                                                                              *error = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                                              goto LABEL_415;
                                                                            }

                                                                            v517 = 0;
                                                                            selfCopy5 = 0;
                                                                            v56 = v610;
                                                                            v318 = v528;
                                                                            v362 = v516;
LABEL_409:
                                                                            v331 = v524;
LABEL_490:

                                                                            v354 = v518;
                                                                            goto LABEL_491;
                                                                          }

                                                                          if (error)
                                                                          {
                                                                            errorCopy2 = error;
                                                                            v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v357 = *MEMORY[0x1E698F240];
                                                                            v657 = *MEMORY[0x1E696A578];
                                                                            v358 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v469 = objc_opt_class();
                                                                            v359 = v358;
                                                                            self = selfCopy;
                                                                            v517 = [v359 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v469, @"isCoupon"];
                                                                            v658 = v517;
                                                                            v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v658 forKeys:&v657 count:1];
                                                                            v361 = v357;
                                                                            v11 = v611;
                                                                            v519 = 0;
                                                                            selfCopy5 = 0;
                                                                            *errorCopy2 = [v356 initWithDomain:v361 code:2 userInfo:v360];
                                                                            v362 = v360;
                                                                            v56 = v610;
                                                                            v318 = v528;
                                                                            goto LABEL_409;
                                                                          }

                                                                          v519 = 0;
                                                                          selfCopy5 = 0;
                                                                          v56 = v610;
                                                                          v318 = v528;
                                                                          v354 = v518;
LABEL_403:
                                                                          v331 = v524;
LABEL_491:

                                                                          goto LABEL_492;
                                                                        }

                                                                        if (error)
                                                                        {
                                                                          errorCopy3 = error;
                                                                          v348 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v349 = *MEMORY[0x1E698F240];
                                                                          v659 = *MEMORY[0x1E696A578];
                                                                          v350 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v468 = objc_opt_class();
                                                                          v351 = v350;
                                                                          self = selfCopy;
                                                                          v519 = [v351 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v468, @"containsChild"];
                                                                          v660 = v519;
                                                                          v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v660 forKeys:&v659 count:1];
                                                                          v353 = v349;
                                                                          v11 = v611;
                                                                          v520 = 0;
                                                                          selfCopy5 = 0;
                                                                          *errorCopy3 = [v348 initWithDomain:v353 code:2 userInfo:v352];
                                                                          v354 = v352;
                                                                          v56 = v610;
                                                                          v318 = v528;
                                                                          goto LABEL_403;
                                                                        }

                                                                        v520 = 0;
                                                                        selfCopy5 = 0;
LABEL_375:
                                                                        v56 = v610;
                                                                        v318 = v528;
                                                                        v331 = v524;
LABEL_492:

                                                                        goto LABEL_493;
                                                                      }

                                                                      if (error)
                                                                      {
                                                                        v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v344 = *MEMORY[0x1E698F240];
                                                                        v661 = *MEMORY[0x1E696A578];
                                                                        v345 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v467 = objc_opt_class();
                                                                        v346 = v345;
                                                                        self = selfCopy;
                                                                        v520 = [v346 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v467, @"containsSibling"];
                                                                        v662 = v520;
                                                                        v521 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v662 forKeys:&v661 count:1];
                                                                        v522 = 0;
                                                                        selfCopy5 = 0;
                                                                        *error = [v343 initWithDomain:v344 code:2 userInfo:?];
                                                                        goto LABEL_375;
                                                                      }

                                                                      v522 = 0;
                                                                      selfCopy5 = 0;
LABEL_369:
                                                                      v56 = v610;
                                                                      v318 = v528;
                                                                      v331 = v524;
LABEL_493:

                                                                      goto LABEL_494;
                                                                    }

                                                                    if (error)
                                                                    {
                                                                      v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v340 = *MEMORY[0x1E698F240];
                                                                      v663 = *MEMORY[0x1E696A578];
                                                                      v341 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v466 = objc_opt_class();
                                                                      v342 = v341;
                                                                      self = selfCopy;
                                                                      v522 = [v342 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v466, @"containsParent"];
                                                                      v664 = v522;
                                                                      v523 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v664 forKeys:&v663 count:1];
                                                                      v525 = 0;
                                                                      selfCopy5 = 0;
                                                                      *error = [v339 initWithDomain:v340 code:2 userInfo:?];
                                                                      goto LABEL_369;
                                                                    }

                                                                    v525 = 0;
                                                                    selfCopy5 = 0;
                                                                    v56 = v610;
                                                                    v318 = v528;
                                                                    v331 = v524;
LABEL_494:

                                                                    goto LABEL_495;
                                                                  }

                                                                  if (error)
                                                                  {
                                                                    v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v335 = *MEMORY[0x1E698F240];
                                                                    v665 = *MEMORY[0x1E696A578];
                                                                    v336 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v465 = objc_opt_class();
                                                                    v337 = v336;
                                                                    self = selfCopy;
                                                                    v525 = [v337 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v465, @"containsPartner"];
                                                                    v666 = v525;
                                                                    v526 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v666 forKeys:&v665 count:1];
                                                                    v338 = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                                    v331 = 0;
                                                                    selfCopy5 = 0;
                                                                    *error = v338;
                                                                    v56 = v610;
                                                                    v318 = v528;
                                                                    goto LABEL_494;
                                                                  }

                                                                  v331 = 0;
                                                                  selfCopy5 = 0;
LABEL_358:
                                                                  v56 = v610;
                                                                  v318 = v528;
LABEL_495:

                                                                  goto LABEL_496;
                                                                }

                                                                if (error)
                                                                {
                                                                  v327 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v328 = *MEMORY[0x1E698F240];
                                                                  v667 = *MEMORY[0x1E696A578];
                                                                  v329 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v464 = objc_opt_class();
                                                                  v330 = v329;
                                                                  self = selfCopy;
                                                                  v331 = [v330 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v464, @"containsFriends"];
                                                                  v668 = v331;
                                                                  v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v668 forKeys:&v667 count:1];
                                                                  v333 = v328;
                                                                  v11 = v611;
                                                                  v527 = v332;
                                                                  v529 = 0;
                                                                  selfCopy5 = 0;
                                                                  *error = [v327 initWithDomain:v333 code:2 userInfo:?];
                                                                  goto LABEL_358;
                                                                }

                                                                v529 = 0;
                                                                selfCopy5 = 0;
                                                                v56 = v610;
                                                                v318 = v528;
LABEL_496:

                                                                goto LABEL_497;
                                                              }

                                                              if (error)
                                                              {
                                                                errorCopy4 = error;
                                                                v532 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v321 = *MEMORY[0x1E698F240];
                                                                v669 = *MEMORY[0x1E696A578];
                                                                v322 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v318 = v210;
                                                                v463 = objc_opt_class();
                                                                v323 = v322;
                                                                self = selfCopy;
                                                                v529 = [v323 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v463, @"containsFamily"];
                                                                v670 = v529;
                                                                v324 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
                                                                v325 = v321;
                                                                v11 = v611;
                                                                v530 = v324;
                                                                v326 = [v532 initWithDomain:v325 code:2 userInfo:?];
                                                                v531 = 0;
                                                                selfCopy5 = 0;
                                                                *errorCopy4 = v326;
                                                                v56 = v610;
                                                                goto LABEL_496;
                                                              }

                                                              v531 = 0;
                                                              selfCopy5 = 0;
                                                              v56 = v610;
                                                              v318 = v210;
LABEL_497:
                                                              v280 = v539;

                                                              error = v605;
                                                              goto LABEL_498;
                                                            }

                                                            if (error)
                                                            {
                                                              errorCopy5 = error;
                                                              v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v315 = *MEMORY[0x1E698F240];
                                                              v671 = *MEMORY[0x1E696A578];
                                                              v316 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v462 = objc_opt_class();
                                                              v317 = v316;
                                                              self = selfCopy;
                                                              v531 = [v317 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v462, @"containsCoWorker"];
                                                              v672 = v531;
                                                              v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
                                                              v319 = v315;
                                                              v11 = v611;
                                                              v533 = 0;
                                                              selfCopy5 = 0;
                                                              *errorCopy5 = [v314 initWithDomain:v319 code:2 userInfo:v318];
                                                              v56 = v610;
                                                              goto LABEL_497;
                                                            }

                                                            v533 = 0;
                                                            selfCopy5 = 0;
                                                            v56 = v610;
                                                            error = v605;
LABEL_342:
                                                            v280 = v539;
LABEL_498:

                                                            goto LABEL_499;
                                                          }

                                                          if (error)
                                                          {
                                                            errorCopy6 = error;
                                                            v307 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v308 = *MEMORY[0x1E698F240];
                                                            v673 = *MEMORY[0x1E696A578];
                                                            v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v461 = objc_opt_class();
                                                            v310 = v309;
                                                            self = selfCopy;
                                                            error = v605;
                                                            v533 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v461, @"containsMyPet"];
                                                            v674 = v533;
                                                            v311 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v674 forKeys:&v673 count:1];
                                                            v312 = v308;
                                                            v11 = v611;
                                                            v534 = v311;
                                                            v535 = 0;
                                                            selfCopy5 = 0;
                                                            *errorCopy6 = [v307 initWithDomain:v312 code:2 userInfo:?];
                                                            v56 = v610;
                                                            goto LABEL_342;
                                                          }

                                                          v535 = 0;
                                                          selfCopy5 = 0;
                                                          v56 = v610;
                                                          error = v605;
LABEL_336:
                                                          v280 = v539;
LABEL_499:

                                                          goto LABEL_500;
                                                        }

                                                        if (error)
                                                        {
                                                          errorCopy7 = error;
                                                          v300 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v301 = *MEMORY[0x1E698F240];
                                                          v675 = *MEMORY[0x1E696A578];
                                                          v302 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v460 = objc_opt_class();
                                                          v303 = v302;
                                                          self = selfCopy;
                                                          error = v605;
                                                          v535 = [v303 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v460, @"containsSocialGroup"];
                                                          v676 = v535;
                                                          v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
                                                          v305 = v301;
                                                          v11 = v611;
                                                          v536 = v304;
                                                          v537 = 0;
                                                          selfCopy5 = 0;
                                                          *errorCopy7 = [v300 initWithDomain:v305 code:2 userInfo:?];
                                                          v56 = v610;
                                                          goto LABEL_336;
                                                        }

                                                        v537 = 0;
                                                        selfCopy5 = 0;
                                                        v56 = v610;
                                                        error = v605;
LABEL_330:
                                                        v280 = v539;
LABEL_500:

                                                        goto LABEL_501;
                                                      }

                                                      if (error)
                                                      {
                                                        errorCopy8 = error;
                                                        v293 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v294 = *MEMORY[0x1E698F240];
                                                        v677 = *MEMORY[0x1E696A578];
                                                        v295 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v459 = objc_opt_class();
                                                        v296 = v295;
                                                        self = selfCopy;
                                                        error = v605;
                                                        v537 = [v296 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v459, @"containsBaby"];
                                                        v678 = v537;
                                                        v297 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
                                                        v298 = v294;
                                                        v11 = v611;
                                                        v538 = v297;
                                                        v540 = 0;
                                                        selfCopy5 = 0;
                                                        *errorCopy8 = [v293 initWithDomain:v298 code:2 userInfo:?];
                                                        v56 = v610;
                                                        goto LABEL_330;
                                                      }

                                                      v540 = 0;
                                                      selfCopy5 = 0;
                                                      v56 = v610;
                                                      error = v605;
                                                      v280 = v539;
LABEL_501:

                                                      goto LABEL_502;
                                                    }

                                                    if (error)
                                                    {
                                                      errorCopy9 = error;
                                                      v285 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v286 = *MEMORY[0x1E698F240];
                                                      v679 = *MEMORY[0x1E696A578];
                                                      v287 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v458 = objc_opt_class();
                                                      v288 = v287;
                                                      self = selfCopy;
                                                      error = v605;
                                                      v540 = [v288 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v458, @"userHasPet"];
                                                      v680 = v540;
                                                      v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
                                                      v290 = v286;
                                                      v11 = v611;
                                                      v541 = v289;
                                                      v291 = [v285 initWithDomain:v290 code:2 userInfo:?];
                                                      v280 = 0;
                                                      selfCopy5 = 0;
                                                      *errorCopy9 = v291;
                                                      v56 = v610;
                                                      goto LABEL_501;
                                                    }

                                                    v280 = 0;
                                                    selfCopy5 = 0;
                                                    v56 = v610;
                                                    error = v605;
LABEL_502:

                                                    goto LABEL_503;
                                                  }

                                                  if (error)
                                                  {
                                                    errorCopy10 = error;
                                                    v544 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v277 = *MEMORY[0x1E698F240];
                                                    v681 = *MEMORY[0x1E696A578];
                                                    v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v457 = objc_opt_class();
                                                    v279 = v278;
                                                    self = selfCopy;
                                                    error = v605;
                                                    v280 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v457, @"userHasHome"];
                                                    v682 = v280;
                                                    v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
                                                    v282 = v277;
                                                    v11 = v611;
                                                    v542 = v281;
                                                    v283 = [v544 initWithDomain:v282 code:2 userInfo:?];
                                                    v543 = 0;
                                                    selfCopy5 = 0;
                                                    *errorCopy10 = v283;
                                                    v56 = v610;
                                                    goto LABEL_502;
                                                  }

                                                  v543 = 0;
                                                  selfCopy5 = 0;
                                                  v56 = v610;
                                                  error = v605;
LABEL_503:
                                                  v249 = v546;

                                                  goto LABEL_504;
                                                }

                                                if (error)
                                                {
                                                  errorCopy11 = error;
                                                  v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v267 = *MEMORY[0x1E698F240];
                                                  v683 = *MEMORY[0x1E696A578];
                                                  v268 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v456 = objc_opt_class();
                                                  v269 = v268;
                                                  self = selfCopy;
                                                  error = v605;
                                                  v543 = [v269 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v456, @"userHasVIP"];
                                                  v684 = v543;
                                                  v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v684 forKeys:&v683 count:1];
                                                  v271 = v267;
                                                  v11 = v611;
                                                  v545 = v270;
                                                  v547 = 0;
                                                  selfCopy5 = 0;
                                                  *errorCopy11 = [v266 initWithDomain:v271 code:2 userInfo:?];
                                                  v56 = v610;
                                                  goto LABEL_503;
                                                }

                                                v547 = 0;
                                                selfCopy5 = 0;
                                                v56 = v610;
                                                error = v605;
                                                v249 = v546;
LABEL_504:

                                                goto LABEL_505;
                                              }

                                              if (error)
                                              {
                                                errorCopy12 = error;
                                                v254 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v255 = *MEMORY[0x1E698F240];
                                                v685 = *MEMORY[0x1E696A578];
                                                v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v455 = objc_opt_class();
                                                v257 = v256;
                                                self = selfCopy;
                                                error = v605;
                                                v547 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v455, @"userNumFavorites"];
                                                v686 = v547;
                                                v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v686 forKeys:&v685 count:1];
                                                v259 = v255;
                                                v11 = v611;
                                                v548 = v258;
                                                v260 = [v254 initWithDomain:v259 code:2 userInfo:?];
                                                v249 = 0;
                                                selfCopy5 = 0;
                                                *errorCopy12 = v260;
                                                v56 = v610;
                                                goto LABEL_504;
                                              }

                                              v249 = 0;
                                              selfCopy5 = 0;
                                              v56 = v610;
                                              error = v605;
LABEL_505:

                                              goto LABEL_506;
                                            }

                                            if (error)
                                            {
                                              errorCopy13 = error;
                                              v551 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v246 = *MEMORY[0x1E698F240];
                                              v687 = *MEMORY[0x1E696A578];
                                              v247 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v454 = objc_opt_class();
                                              v248 = v247;
                                              self = selfCopy;
                                              error = v605;
                                              v249 = [v248 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v454, @"userNumVIPPeople"];
                                              v688 = v249;
                                              v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v688 forKeys:&v687 count:1];
                                              v251 = v246;
                                              v11 = v611;
                                              v549 = v250;
                                              v252 = [v551 initWithDomain:v251 code:2 userInfo:?];
                                              v550 = 0;
                                              selfCopy5 = 0;
                                              *errorCopy13 = v252;
                                              v56 = v610;
                                              goto LABEL_505;
                                            }

                                            v550 = 0;
                                            selfCopy5 = 0;
                                            v56 = v610;
                                            error = v605;
LABEL_506:
                                            v173 = v559;

                                            goto LABEL_507;
                                          }

                                          if (error)
                                          {
                                            errorCopy14 = error;
                                            v239 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v240 = *MEMORY[0x1E698F240];
                                            v689 = *MEMORY[0x1E696A578];
                                            v241 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v453 = objc_opt_class();
                                            v242 = v241;
                                            self = selfCopy;
                                            error = v605;
                                            v550 = [v242 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v453, @"userNumTrips"];
                                            v690 = v550;
                                            v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v690 forKeys:&v689 count:1];
                                            v244 = v240;
                                            v11 = v611;
                                            v552 = v243;
                                            v553 = 0;
                                            selfCopy5 = 0;
                                            *errorCopy14 = [v239 initWithDomain:v244 code:2 userInfo:?];
                                            v56 = v610;
                                            goto LABEL_506;
                                          }

                                          v553 = 0;
                                          selfCopy5 = 0;
LABEL_288:
                                          v56 = v610;
                                          error = v605;
                                          v173 = v559;
LABEL_507:

                                          goto LABEL_508;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v189 = v187;
                                          v188 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsLibrarySizeTypeFromString(v189)];

                                          goto LABEL_164;
                                        }

                                        if (error)
                                        {
                                          v274 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v275 = *MEMORY[0x1E698F240];
                                          v691 = *MEMORY[0x1E696A578];
                                          v553 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibrarySize"];
                                          v692 = v553;
                                          v554 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v692 forKeys:&v691 count:1];
                                          v555 = 0;
                                          selfCopy5 = 0;
                                          *error = [v274 initWithDomain:v275 code:2 userInfo:?];
                                          v11 = v611;
                                          goto LABEL_288;
                                        }

                                        v555 = 0;
                                        selfCopy5 = 0;
LABEL_313:
                                        v11 = v611;
                                        v56 = v610;
                                        error = v605;
                                        v173 = v559;
LABEL_508:

                                        goto LABEL_509;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v185 = v183;
                                        v184 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsAssetAgeTypeFromString(v185)];

                                        goto LABEL_156;
                                      }

                                      if (error)
                                      {
                                        v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v273 = *MEMORY[0x1E698F240];
                                        v693 = *MEMORY[0x1E696A578];
                                        v555 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"assetAge"];
                                        v694 = v555;
                                        v556 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v694 forKeys:&v693 count:1];
                                        v557 = 0;
                                        selfCopy5 = 0;
                                        *error = [v272 initWithDomain:v273 code:2 userInfo:?];
                                        goto LABEL_313;
                                      }

                                      v557 = 0;
                                      selfCopy5 = 0;
LABEL_307:
                                      v11 = v611;
                                      v56 = v610;
                                      error = v605;
                                      v173 = v559;
LABEL_509:

                                      goto LABEL_510;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v181 = v179;
                                      v180 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsImportSourceTypeFromString(v181)];

                                      goto LABEL_147;
                                    }

                                    if (error)
                                    {
                                      v263 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v264 = *MEMORY[0x1E698F240];
                                      v695 = *MEMORY[0x1E696A578];
                                      v557 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"importSource"];
                                      v696 = v557;
                                      v558 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v696 forKeys:&v695 count:1];
                                      v560 = 0;
                                      selfCopy5 = 0;
                                      *error = [v263 initWithDomain:v264 code:2 userInfo:?];
                                      goto LABEL_307;
                                    }

                                    v560 = 0;
                                    selfCopy5 = 0;
                                    v56 = v610;
                                    error = v605;
                                    v173 = v559;
LABEL_510:

                                    goto LABEL_511;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v177 = v40;
                                    v147 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsMediaTypeTypeFromString(v177)];

                                    goto LABEL_139;
                                  }

                                  if (error)
                                  {
                                    v261 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v262 = *MEMORY[0x1E698F240];
                                    v697 = *MEMORY[0x1E696A578];
                                    v560 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mediaType"];
                                    v698 = v560;
                                    v561 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v698 forKeys:&v697 count:1];
                                    v173 = 0;
                                    selfCopy5 = 0;
                                    *error = [v261 initWithDomain:v262 code:2 userInfo:?];
                                    v11 = v611;
                                    v56 = v610;
                                    error = v605;
                                    goto LABEL_510;
                                  }

                                  v173 = 0;
                                  selfCopy5 = 0;
                                  v56 = v610;
                                  error = v605;
LABEL_511:

                                  goto LABEL_512;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v566 = v36;
                                  goto LABEL_49;
                                }

                                if (error)
                                {
                                  errorCopy15 = error;
                                  v567 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v163 = *MEMORY[0x1E698F240];
                                  v701 = *MEMORY[0x1E696A578];
                                  v164 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v451 = objc_opt_class();
                                  v165 = v164;
                                  self = selfCopy;
                                  error = v605;
                                  v112 = v587;
                                  v563 = [v165 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v451, @"isCapturedAtPrivateEvent"];
                                  v702 = v563;
                                  v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v702 forKeys:&v701 count:1];
                                  v167 = v163;
                                  v11 = v611;
                                  v565 = v166;
                                  v168 = [v567 initWithDomain:v167 code:2 userInfo:?];
                                  v566 = 0;
                                  selfCopy5 = 0;
                                  *errorCopy15 = v168;
                                  v56 = v610;
LABEL_513:

                                  goto LABEL_514;
                                }

                                v566 = 0;
                                selfCopy5 = 0;
                                v56 = v610;
                                error = v605;
                                v112 = v587;
LABEL_514:

                                goto LABEL_515;
                              }

                              if (error)
                              {
                                errorCopy16 = error;
                                v570 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v156 = *MEMORY[0x1E698F240];
                                v703 = *MEMORY[0x1E696A578];
                                v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v450 = objc_opt_class();
                                v158 = v157;
                                self = selfCopy;
                                error = v605;
                                v112 = v587;
                                v566 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v450, @"isCapturedOnWeekend"];
                                v704 = v566;
                                v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v704 forKeys:&v703 count:1];
                                v160 = v156;
                                v11 = v611;
                                v568 = v159;
                                v161 = [v570 initWithDomain:v160 code:2 userInfo:?];
                                v569 = 0;
                                selfCopy5 = 0;
                                *errorCopy16 = v161;
                                v56 = v610;
                                goto LABEL_514;
                              }

                              v569 = 0;
                              selfCopy5 = 0;
                              v56 = v610;
                              error = v605;
                              v112 = v587;
LABEL_515:

                              goto LABEL_516;
                            }

                            if (error)
                            {
                              errorCopy17 = error;
                              v573 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v149 = *MEMORY[0x1E698F240];
                              v705 = *MEMORY[0x1E696A578];
                              v150 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v449 = objc_opt_class();
                              v151 = v150;
                              self = selfCopy;
                              error = v605;
                              v112 = v587;
                              v569 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v449, @"isFavorite"];
                              v706 = v569;
                              v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v706 forKeys:&v705 count:1];
                              v153 = v149;
                              v11 = v611;
                              v571 = v152;
                              v154 = [v573 initWithDomain:v153 code:2 userInfo:?];
                              v572 = 0;
                              selfCopy5 = 0;
                              *errorCopy17 = v154;
                              v56 = v610;
                              goto LABEL_515;
                            }

                            v572 = 0;
                            selfCopy5 = 0;
                            v56 = v610;
                            error = v605;
                            v112 = v587;
LABEL_516:

                            goto LABEL_517;
                          }

                          if (error)
                          {
                            errorCopy18 = error;
                            v576 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v141 = *MEMORY[0x1E698F240];
                            v707 = *MEMORY[0x1E696A578];
                            v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v448 = objc_opt_class();
                            v143 = v142;
                            self = selfCopy;
                            error = v605;
                            v112 = v587;
                            v572 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v448, @"isScreenshot"];
                            v708 = v572;
                            v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v708 forKeys:&v707 count:1];
                            v145 = v141;
                            v11 = v611;
                            v574 = v144;
                            v146 = [v576 initWithDomain:v145 code:2 userInfo:?];
                            v575 = 0;
                            selfCopy5 = 0;
                            *errorCopy18 = v146;
                            v56 = v610;
                            goto LABEL_516;
                          }

                          v575 = 0;
                          selfCopy5 = 0;
                          v56 = v610;
                          error = v605;
                          v112 = v587;
LABEL_517:

                          goto LABEL_518;
                        }

                        if (error)
                        {
                          errorCopy19 = error;
                          v583 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v134 = *MEMORY[0x1E698F240];
                          v709 = *MEMORY[0x1E696A578];
                          v135 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v447 = objc_opt_class();
                          v136 = v135;
                          self = selfCopy;
                          error = v605;
                          v112 = v587;
                          v575 = [v136 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v447, @"isMeme"];
                          v710 = v575;
                          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v710 forKeys:&v709 count:1];
                          v138 = v134;
                          v11 = v611;
                          v581 = v137;
                          v139 = [v583 initWithDomain:v138 code:2 userInfo:?];
                          v582 = 0;
                          selfCopy5 = 0;
                          *errorCopy19 = v139;
                          v56 = v610;
                          goto LABEL_517;
                        }

                        v582 = 0;
                        selfCopy5 = 0;
                        v56 = v610;
                        error = v605;
                        v112 = v587;
LABEL_518:

                        goto LABEL_519;
                      }

                      if (error)
                      {
                        errorCopy20 = error;
                        v589 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v126 = *MEMORY[0x1E698F240];
                        v711 = *MEMORY[0x1E696A578];
                        v579 = v10;
                        selfCopy11 = self;
                        v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v446 = objc_opt_class();
                        v129 = v128;
                        self = selfCopy11;
                        error = v605;
                        v112 = v587;
                        v10 = v579;
                        v582 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v446, @"isDocument"];
                        v712 = v582;
                        v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v712 forKeys:&v711 count:1];
                        v131 = v126;
                        v11 = v611;
                        v584 = v130;
                        v132 = [v589 initWithDomain:v131 code:2 userInfo:?];
                        v588 = 0;
                        selfCopy5 = 0;
                        *errorCopy20 = v132;
                        v56 = v610;
                        goto LABEL_518;
                      }

                      v588 = 0;
                      selfCopy5 = 0;
                      v56 = v610;
                      error = v605;
                      v112 = v587;
LABEL_519:

                      goto LABEL_520;
                    }

                    if (error)
                    {
                      errorCopy21 = error;
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v713 = *MEMORY[0x1E696A578];
                      v578 = v10;
                      selfCopy12 = self;
                      v120 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v445 = objc_opt_class();
                      v121 = v120;
                      self = selfCopy12;
                      error = v605;
                      v10 = v578;
                      v588 = [v121 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v445, @"capturedOnShortTrip"];
                      v714 = v588;
                      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v714 forKeys:&v713 count:1];
                      v123 = v118;
                      v11 = v611;
                      v592 = v122;
                      v124 = [v117 initWithDomain:v123 code:2 userInfo:?];
                      v112 = 0;
                      selfCopy5 = 0;
                      *errorCopy21 = v124;
                      v56 = v610;
                      goto LABEL_519;
                    }

                    v112 = 0;
                    selfCopy5 = 0;
                    v56 = v610;
                    error = v605;
LABEL_520:

                    v9 = v617;
                    goto LABEL_521;
                  }

                  if (error)
                  {
                    v600 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v108 = *MEMORY[0x1E698F240];
                    v715 = *MEMORY[0x1E696A578];
                    v577 = v10;
                    selfCopy13 = self;
                    v110 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v444 = objc_opt_class();
                    v111 = v110;
                    self = selfCopy13;
                    v10 = v577;
                    v112 = [v111 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v444, @"capturedOnTrip"];
                    v716 = v112;
                    v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v716 forKeys:&v715 count:1];
                    v114 = v108;
                    v11 = v611;
                    v595 = v113;
                    v115 = [v600 initWithDomain:v114 code:2 userInfo:?];
                    v599 = 0;
                    selfCopy5 = 0;
                    *error = v115;
                    error = v605;
                    v56 = v610;
                    goto LABEL_520;
                  }

                  v599 = 0;
                  selfCopy5 = 0;
                  v56 = v610;
                  v9 = v617;
                  error = v605;
LABEL_521:

                  goto LABEL_522;
                }

                if (error)
                {
                  v603 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = *MEMORY[0x1E698F240];
                  v717 = *MEMORY[0x1E696A578];
                  v585 = v8;
                  v101 = v10;
                  selfCopy14 = self;
                  v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v443 = objc_opt_class();
                  v104 = v103;
                  self = selfCopy14;
                  v9 = v617;
                  v10 = v101;
                  v8 = v585;
                  v599 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v443, @"capturedAtFrequentLocation"];
                  v718 = v599;
                  v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v718 forKeys:&v717 count:1];
                  v106 = v100;
                  v11 = v611;
                  v601 = v105;
                  v107 = [v603 initWithDomain:v106 code:2 userInfo:?];
                  v602 = 0;
                  selfCopy5 = 0;
                  *error = v107;
                  error = v605;
                  v56 = v610;
                  goto LABEL_521;
                }

                v602 = 0;
                selfCopy5 = 0;
                v56 = v610;
                v9 = v617;
                error = v605;
LABEL_522:

                goto LABEL_523;
              }

              if (error)
              {
                v607 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = *MEMORY[0x1E698F240];
                v719 = *MEMORY[0x1E696A578];
                v593 = v7;
                v92 = v8;
                v93 = v10;
                selfCopy15 = self;
                v95 = objc_alloc(MEMORY[0x1E696AEC0]);
                v442 = objc_opt_class();
                v96 = v95;
                self = selfCopy15;
                v9 = v617;
                v10 = v93;
                v8 = v92;
                v7 = v593;
                v602 = [v96 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v442, @"capturedAtWork"];
                v720 = v602;
                v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v720 forKeys:&v719 count:1];
                v98 = v91;
                v11 = v611;
                v604 = v97;
                v99 = [v607 initWithDomain:v98 code:2 userInfo:?];
                v606 = 0;
                selfCopy5 = 0;
                *error = v99;
                error = v605;
                v56 = v610;
                goto LABEL_522;
              }

              v606 = 0;
              selfCopy5 = 0;
              v56 = v610;
              v9 = v617;
              error = v605;
LABEL_523:

              goto LABEL_524;
            }

            if (error)
            {
              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v721 = *MEMORY[0x1E696A578];
              v596 = dictionaryCopy;
              v83 = v7;
              v84 = v8;
              v85 = v10;
              selfCopy16 = self;
              v87 = objc_alloc(MEMORY[0x1E696AEC0]);
              v441 = objc_opt_class();
              v88 = v87;
              self = selfCopy16;
              v9 = v617;
              v10 = v85;
              v8 = v84;
              v7 = v83;
              dictionaryCopy = v596;
              v606 = [v88 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v441, @"capturedAtHome"];
              v722 = v606;
              v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v722 forKeys:&v721 count:1];
              v90 = v82;
              v11 = v611;
              v608 = v89;
              selfCopy5 = 0;
              *error = [v81 initWithDomain:v90 code:2 userInfo:?];
              error = 0;
              v56 = v610;
              goto LABEL_523;
            }

            selfCopy5 = 0;
            v56 = v610;
            v9 = v617;
LABEL_524:

            goto LABEL_525;
          }

          if (error)
          {
            v613 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = *MEMORY[0x1E698F240];
            v723 = *MEMORY[0x1E696A578];
            v70 = dictionaryCopy;
            v71 = v7;
            v72 = v8;
            v73 = v10;
            selfCopy17 = self;
            v75 = objc_alloc(MEMORY[0x1E696AEC0]);
            v440 = objc_opt_class();
            v76 = v75;
            self = selfCopy17;
            v9 = v617;
            v10 = v73;
            v8 = v72;
            v7 = v71;
            dictionaryCopy = v70;
            v77 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v440, @"containsPets"];
            v724 = v77;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v724 forKeys:&v723 count:1];
            v79 = v69;
            v11 = v611;
            v609 = v78;
            v80 = [v613 initWithDomain:v79 code:2 userInfo:?];
            v612 = 0;
            selfCopy5 = 0;
            *error = v80;
            error = v77;
            v56 = v610;
            goto LABEL_524;
          }

          v612 = 0;
          selfCopy5 = 0;
          v56 = v610;
          v9 = v617;
LABEL_525:

          goto LABEL_526;
        }

        v56 = v12;
        if (error)
        {
          v619 = objc_alloc(MEMORY[0x1E696ABC0]);
          v616 = *MEMORY[0x1E698F240];
          v725 = *MEMORY[0x1E696A578];
          v59 = dictionaryCopy;
          v60 = v7;
          v61 = v8;
          v62 = v10;
          selfCopy18 = self;
          v64 = objc_alloc(MEMORY[0x1E696AEC0]);
          v439 = objc_opt_class();
          v65 = v64;
          self = selfCopy18;
          v9 = v617;
          v10 = v62;
          v8 = v61;
          v7 = v60;
          dictionaryCopy = v59;
          v11 = v611;
          v612 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v439, @"faceCount"];
          v726 = v612;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v726 forKeys:&v725 count:1];
          v67 = v616;
          v614 = v66;
          v68 = [v619 initWithDomain:v67 code:2 userInfo:?];
          v618 = 0;
          selfCopy5 = 0;
          *error = v68;
          goto LABEL_525;
        }

        v618 = 0;
        selfCopy5 = 0;
        v9 = v617;
LABEL_526:

        goto LABEL_527;
      }

      if (error)
      {
        errorCopy22 = error;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy19 = self;
        v52 = *MEMORY[0x1E698F240];
        v727 = *MEMORY[0x1E696A578];
        v53 = v10;
        v615 = errorCopy22;
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v438 = objc_opt_class();
        v55 = v54;
        v10 = v53;
        v618 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v438, @"containsVIP"];
        v728 = v618;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v728 forKeys:&v727 count:1];
        v57 = v52;
        self = selfCopy19;
        v58 = [v51 initWithDomain:v57 code:2 userInfo:v56];
        v11 = 0;
        selfCopy5 = 0;
        *v615 = v58;
        goto LABEL_526;
      }

      v11 = 0;
      selfCopy5 = 0;
LABEL_527:

      goto LABEL_528;
    }

    if (error)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = *MEMORY[0x1E698F240];
      v729 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userEvent"];
      v730 = v48;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v730 forKeys:&v729 count:1];
      v49 = v47;
      v11 = v48;
      v9 = 0;
      selfCopy5 = 0;
      *error = [v46 initWithDomain:v49 code:2 userInfo:v10];
      goto LABEL_527;
    }

    v9 = 0;
    selfCopy5 = 0;
LABEL_528:

    goto LABEL_529;
  }

  if (error)
  {
    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = *MEMORY[0x1E698F240];
    v731 = *MEMORY[0x1E696A578];
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v732[0] = v43;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v732 forKeys:&v731 count:1];
    v44 = v41;
    v9 = v43;
    v620 = 0;
    selfCopy5 = 0;
    *error = [v44 initWithDomain:v42 code:2 userInfo:v8];
    goto LABEL_528;
  }

  v620 = 0;
  selfCopy5 = 0;
LABEL_529:

  return selfCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosUserAnalytics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userEvent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasContainsVIP)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFaceCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasContainsPets)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtHome)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtWork)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtFrequentLocation)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedOnTrip)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedOnShortTrip)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDocument)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMeme)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsScreenshot)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFavorite)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedOnWeekend)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedAtPrivateEvent)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedOnHoliday)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasUserNumTrips)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserNumVIPPeople)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserNumFavorites)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserHasVIP)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUserHasHome)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUserHasPet)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsBaby)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsSocialGroup)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsMyPet)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsCoWorker)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsFamily)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsFriends)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsPartner)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsParent)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsSibling)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsChild)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCoupon)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecipe)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsReceipt)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentView)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentEdit)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentShare)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentFavorite)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInSharedAlbum)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInOnThisDay)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtAOI)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtPOI)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtROI)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtBusiness)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedAtPublicEvent)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInVisualTrend)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInActivity)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInChildActivity)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasUserisDAU)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMPhotosUserAnalytics;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMPhotosUserAnalyticsReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPhotosUserAnalytics *)self identifier];
  userEvent = [(BMPhotosUserAnalytics *)self userEvent];
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsVIP](self, "containsVIP")}];
  v61 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics faceCount](self, "faceCount")}];
  v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPets](self, "containsPets")}];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome")}];
  v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation")}];
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip")}];
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isDocument](self, "isDocument")}];
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isMeme](self, "isMeme")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot")}];
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isFavorite](self, "isFavorite")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend")}];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent")}];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday")}];
  v44 = BMPhotosUserAnalyticsMediaTypeTypeAsString([(BMPhotosUserAnalytics *)self mediaType]);
  v46 = BMPhotosUserAnalyticsImportSourceTypeAsString([(BMPhotosUserAnalytics *)self importSource]);
  v43 = BMPhotosUserAnalyticsAssetAgeTypeAsString([(BMPhotosUserAnalytics *)self assetAge]);
  v42 = BMPhotosUserAnalyticsLibrarySizeTypeAsString([(BMPhotosUserAnalytics *)self userLibrarySize]);
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips")}];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites")}];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP")}];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasHome](self, "userHasHome")}];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasPet](self, "userHasPet")}];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsBaby](self, "containsBaby")}];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup")}];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker")}];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFamily](self, "containsFamily")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFriends](self, "containsFriends")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPartner](self, "containsPartner")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsParent](self, "containsParent")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSibling](self, "containsSibling")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsChild](self, "containsChild")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCoupon](self, "isCoupon")}];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecipe](self, "isRecipe")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isReceipt](self, "isReceipt")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentView](self, "isRecentView")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity")}];
  v4 = BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeAsString([(BMPhotosUserAnalytics *)self userLibraryAgeInDays]);
  v5 = MEMORY[0x1E696AD98];
  [(BMPhotosUserAnalytics *)self userisDAU];
  v6 = [v5 numberWithDouble:?];
  v21 = [v20 initWithFormat:@"BMPhotosUserAnalytics with identifier: %@, userEvent: %@, containsVIP: %@, faceCount: %@, containsPets: %@, capturedAtHome: %@, capturedAtWork: %@, capturedAtFrequentLocation: %@, capturedOnTrip: %@, capturedOnShortTrip: %@, isDocument: %@, isMeme: %@, isScreenshot: %@, isFavorite: %@, isCapturedOnWeekend: %@, isCapturedAtPrivateEvent: %@, isCapturedOnHoliday: %@, mediaType: %@, importSource: %@, assetAge: %@, userLibrarySize: %@, userNumTrips: %@, userNumVIPPeople: %@, userNumFavorites: %@, userHasVIP: %@, userHasHome: %@, userHasPet: %@, containsBaby: %@, containsSocialGroup: %@, containsMyPet: %@, containsCoWorker: %@, containsFamily: %@, containsFriends: %@, containsPartner: %@, containsParent: %@, containsSibling: %@, containsChild: %@, isCoupon: %@, isRecipe: %@, isReceipt: %@, isRecentView: %@, isRecentEdit: %@, isRecentShare: %@, isRecentFavorite: %@, isContainedInSharedAlbum: %@, isContainedInOnThisDay: %@, capturedAtAOI: %@, capturedAtPOI: %@, capturedAtROI: %@, capturedAtBusiness: %@, isCapturedAtPublicEvent: %@, isContainedInVisualTrend: %@, isContainedInActivity: %@, isContainedInChildActivity: %@, userLibraryAgeInDays: %@, userisDAU: %@", identifier, userEvent, v62, v61, v57, v56, v58, v54, v53, v55, v51, v50, v52, v48, v47, v49, v45, v44, v46, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v6];

  return v21;
}

- (BMPhotosUserAnalytics)initWithIdentifier:(id)identifier userEvent:(id)event containsVIP:(id)p faceCount:(id)count containsPets:(id)pets capturedAtHome:(id)home capturedAtWork:(id)work capturedAtFrequentLocation:(id)self0 capturedOnTrip:(id)self1 capturedOnShortTrip:(id)self2 isDocument:(id)self3 isMeme:(id)self4 isScreenshot:(id)self5 isFavorite:(id)self6 isCapturedOnWeekend:(id)self7 isCapturedAtPrivateEvent:(id)self8 isCapturedOnHoliday:(id)self9 mediaType:(int)type importSource:(int)source assetAge:(int)age userLibrarySize:(int)size userNumTrips:(id)trips userNumVIPPeople:(id)people userNumFavorites:(id)favorites userHasVIP:(id)iP userHasHome:(id)hasHome userHasPet:(id)pet containsBaby:(id)identifier0 containsSocialGroup:(id)identifier1 containsMyPet:(id)identifier2 containsCoWorker:(id)identifier3 containsFamily:(id)identifier4 containsFriends:(id)identifier5 containsPartner:(id)identifier6 containsParent:(id)identifier7 containsSibling:(id)identifier8 containsChild:(id)identifier9 isCoupon:(id)event0 isRecipe:(id)event1 isReceipt:(id)event2 isRecentView:(id)event3 isRecentEdit:(id)event4 isRecentShare:(id)event5 isRecentFavorite:(id)event6 isContainedInSharedAlbum:(id)event7 isContainedInOnThisDay:(id)event8 capturedAtAOI:(id)event9 capturedAtPOI:(id)p0 capturedAtROI:(id)p1 capturedAtBusiness:(id)p2 isCapturedAtPublicEvent:(id)p3 isContainedInVisualTrend:(id)p4 isContainedInActivity:(id)p5 isContainedInChildActivity:(id)p6 userLibraryAgeInDays:(int)p7 userisDAU:(id)p8
{
  identifierCopy = identifier;
  eventCopy = event;
  eventCopy2 = event;
  pCopy = p;
  countCopy = count;
  petsCopy = pets;
  homeCopy = home;
  workCopy = work;
  locationCopy = location;
  tripCopy = trip;
  shortTripCopy = shortTrip;
  documentCopy = document;
  memeCopy = meme;
  screenshotCopy = screenshot;
  favoriteCopy = favorite;
  weekendCopy = weekend;
  privateEventCopy = privateEvent;
  holidayCopy = holiday;
  tripsCopy = trips;
  peopleCopy = people;
  favoritesCopy = favorites;
  iPCopy = iP;
  hasHomeCopy = hasHome;
  petCopy = pet;
  babyCopy = baby;
  groupCopy = group;
  myPetCopy = myPet;
  workerCopy = worker;
  familyCopy = family;
  friendsCopy = friends;
  partnerCopy = partner;
  parentCopy = parent;
  siblingCopy = sibling;
  childCopy = child;
  couponCopy = coupon;
  recipeCopy = recipe;
  receiptCopy = receipt;
  viewCopy = view;
  editCopy = edit;
  shareCopy = share;
  recentFavoriteCopy = recentFavorite;
  albumCopy = album;
  dayCopy = day;
  iCopy = i;
  oICopy = oI;
  rOICopy = rOI;
  businessCopy = business;
  publicEventCopy = publicEvent;
  trendCopy = trend;
  activityCopy = activity;
  childActivityCopy = childActivity;
  uCopy = u;
  v126.receiver = self;
  v126.super_class = BMPhotosUserAnalytics;
  v71 = [(BMEventBase *)&v126 init];

  if (v71)
  {
    v71->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v71->_identifier, identifier);
    objc_storeStrong(&v71->_userEvent, eventCopy);
    if (pCopy)
    {
      v71->_hasContainsVIP = 1;
      v71->_containsVIP = [pCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsVIP = 0;
      v71->_containsVIP = 0;
    }

    if (countCopy)
    {
      v71->_hasFaceCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v71->_hasFaceCount = 0;
      intValue = -1;
    }

    v71->_faceCount = intValue;
    if (petsCopy)
    {
      v71->_hasContainsPets = 1;
      v71->_containsPets = [petsCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsPets = 0;
      v71->_containsPets = 0;
    }

    if (homeCopy)
    {
      v71->_hasCapturedAtHome = 1;
      v71->_capturedAtHome = [homeCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtHome = 0;
      v71->_capturedAtHome = 0;
    }

    if (workCopy)
    {
      v71->_hasCapturedAtWork = 1;
      v71->_capturedAtWork = [workCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtWork = 0;
      v71->_capturedAtWork = 0;
    }

    if (locationCopy)
    {
      v71->_hasCapturedAtFrequentLocation = 1;
      v71->_capturedAtFrequentLocation = [locationCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtFrequentLocation = 0;
      v71->_capturedAtFrequentLocation = 0;
    }

    if (tripCopy)
    {
      v71->_hasCapturedOnTrip = 1;
      v71->_capturedOnTrip = [tripCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedOnTrip = 0;
      v71->_capturedOnTrip = 0;
    }

    if (shortTripCopy)
    {
      v71->_hasCapturedOnShortTrip = 1;
      v71->_capturedOnShortTrip = [shortTripCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedOnShortTrip = 0;
      v71->_capturedOnShortTrip = 0;
    }

    if (documentCopy)
    {
      v71->_hasIsDocument = 1;
      v71->_isDocument = [documentCopy BOOLValue];
    }

    else
    {
      v71->_hasIsDocument = 0;
      v71->_isDocument = 0;
    }

    if (memeCopy)
    {
      v71->_hasIsMeme = 1;
      v71->_isMeme = [memeCopy BOOLValue];
    }

    else
    {
      v71->_hasIsMeme = 0;
      v71->_isMeme = 0;
    }

    if (screenshotCopy)
    {
      v71->_hasIsScreenshot = 1;
      v71->_isScreenshot = [screenshotCopy BOOLValue];
    }

    else
    {
      v71->_hasIsScreenshot = 0;
      v71->_isScreenshot = 0;
    }

    if (favoriteCopy)
    {
      v71->_hasIsFavorite = 1;
      v71->_isFavorite = [favoriteCopy BOOLValue];
    }

    else
    {
      v71->_hasIsFavorite = 0;
      v71->_isFavorite = 0;
    }

    if (weekendCopy)
    {
      v71->_hasIsCapturedOnWeekend = 1;
      v71->_isCapturedOnWeekend = [weekendCopy BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedOnWeekend = 0;
      v71->_isCapturedOnWeekend = 0;
    }

    if (privateEventCopy)
    {
      v71->_hasIsCapturedAtPrivateEvent = 1;
      v71->_isCapturedAtPrivateEvent = [privateEventCopy BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedAtPrivateEvent = 0;
      v71->_isCapturedAtPrivateEvent = 0;
    }

    if (holidayCopy)
    {
      v71->_hasIsCapturedOnHoliday = 1;
      v71->_isCapturedOnHoliday = [holidayCopy BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedOnHoliday = 0;
      v71->_isCapturedOnHoliday = 0;
    }

    v71->_mediaType = type;
    v71->_importSource = source;
    v71->_assetAge = age;
    v71->_userLibrarySize = size;
    if (tripsCopy)
    {
      v71->_hasUserNumTrips = 1;
      intValue2 = [tripsCopy intValue];
    }

    else
    {
      v71->_hasUserNumTrips = 0;
      intValue2 = -1;
    }

    v71->_userNumTrips = intValue2;
    if (peopleCopy)
    {
      v71->_hasUserNumVIPPeople = 1;
      intValue3 = [peopleCopy intValue];
    }

    else
    {
      v71->_hasUserNumVIPPeople = 0;
      intValue3 = -1;
    }

    v71->_userNumVIPPeople = intValue3;
    if (favoritesCopy)
    {
      v71->_hasUserNumFavorites = 1;
      intValue4 = [favoritesCopy intValue];
    }

    else
    {
      v71->_hasUserNumFavorites = 0;
      intValue4 = -1;
    }

    v71->_userNumFavorites = intValue4;
    if (iPCopy)
    {
      v71->_hasUserHasVIP = 1;
      v71->_userHasVIP = [iPCopy BOOLValue];
    }

    else
    {
      v71->_hasUserHasVIP = 0;
      v71->_userHasVIP = 0;
    }

    if (hasHomeCopy)
    {
      v71->_hasUserHasHome = 1;
      v71->_userHasHome = [hasHomeCopy BOOLValue];
    }

    else
    {
      v71->_hasUserHasHome = 0;
      v71->_userHasHome = 0;
    }

    if (petCopy)
    {
      v71->_hasUserHasPet = 1;
      v71->_userHasPet = [petCopy BOOLValue];
    }

    else
    {
      v71->_hasUserHasPet = 0;
      v71->_userHasPet = 0;
    }

    if (babyCopy)
    {
      v71->_hasContainsBaby = 1;
      v71->_containsBaby = [babyCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsBaby = 0;
      v71->_containsBaby = 0;
    }

    if (groupCopy)
    {
      v71->_hasContainsSocialGroup = 1;
      v71->_containsSocialGroup = [groupCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsSocialGroup = 0;
      v71->_containsSocialGroup = 0;
    }

    if (myPetCopy)
    {
      v71->_hasContainsMyPet = 1;
      v71->_containsMyPet = [myPetCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsMyPet = 0;
      v71->_containsMyPet = 0;
    }

    if (workerCopy)
    {
      v71->_hasContainsCoWorker = 1;
      v71->_containsCoWorker = [workerCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsCoWorker = 0;
      v71->_containsCoWorker = 0;
    }

    if (familyCopy)
    {
      v71->_hasContainsFamily = 1;
      v71->_containsFamily = [familyCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsFamily = 0;
      v71->_containsFamily = 0;
    }

    if (friendsCopy)
    {
      v71->_hasContainsFriends = 1;
      v71->_containsFriends = [friendsCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsFriends = 0;
      v71->_containsFriends = 0;
    }

    if (partnerCopy)
    {
      v71->_hasContainsPartner = 1;
      v71->_containsPartner = [partnerCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsPartner = 0;
      v71->_containsPartner = 0;
    }

    if (parentCopy)
    {
      v71->_hasContainsParent = 1;
      v71->_containsParent = [parentCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsParent = 0;
      v71->_containsParent = 0;
    }

    if (siblingCopy)
    {
      v71->_hasContainsSibling = 1;
      v71->_containsSibling = [siblingCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsSibling = 0;
      v71->_containsSibling = 0;
    }

    if (childCopy)
    {
      v71->_hasContainsChild = 1;
      v71->_containsChild = [childCopy BOOLValue];
    }

    else
    {
      v71->_hasContainsChild = 0;
      v71->_containsChild = 0;
    }

    if (couponCopy)
    {
      v71->_hasIsCoupon = 1;
      v71->_isCoupon = [couponCopy BOOLValue];
    }

    else
    {
      v71->_hasIsCoupon = 0;
      v71->_isCoupon = 0;
    }

    if (recipeCopy)
    {
      v71->_hasIsRecipe = 1;
      v71->_isRecipe = [recipeCopy BOOLValue];
    }

    else
    {
      v71->_hasIsRecipe = 0;
      v71->_isRecipe = 0;
    }

    if (receiptCopy)
    {
      v71->_hasIsReceipt = 1;
      v71->_isReceipt = [receiptCopy BOOLValue];
    }

    else
    {
      v71->_hasIsReceipt = 0;
      v71->_isReceipt = 0;
    }

    if (viewCopy)
    {
      v71->_hasIsRecentView = 1;
      v71->_isRecentView = [viewCopy BOOLValue];
    }

    else
    {
      v71->_hasIsRecentView = 0;
      v71->_isRecentView = 0;
    }

    if (editCopy)
    {
      v71->_hasIsRecentEdit = 1;
      v71->_isRecentEdit = [editCopy BOOLValue];
    }

    else
    {
      v71->_hasIsRecentEdit = 0;
      v71->_isRecentEdit = 0;
    }

    if (shareCopy)
    {
      v71->_hasIsRecentShare = 1;
      v71->_isRecentShare = [shareCopy BOOLValue];
    }

    else
    {
      v71->_hasIsRecentShare = 0;
      v71->_isRecentShare = 0;
    }

    if (recentFavoriteCopy)
    {
      v71->_hasIsRecentFavorite = 1;
      v71->_isRecentFavorite = [recentFavoriteCopy BOOLValue];
    }

    else
    {
      v71->_hasIsRecentFavorite = 0;
      v71->_isRecentFavorite = 0;
    }

    if (albumCopy)
    {
      v71->_hasIsContainedInSharedAlbum = 1;
      v71->_isContainedInSharedAlbum = [albumCopy BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInSharedAlbum = 0;
      v71->_isContainedInSharedAlbum = 0;
    }

    if (dayCopy)
    {
      v71->_hasIsContainedInOnThisDay = 1;
      v71->_isContainedInOnThisDay = [dayCopy BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInOnThisDay = 0;
      v71->_isContainedInOnThisDay = 0;
    }

    if (iCopy)
    {
      v71->_hasCapturedAtAOI = 1;
      v71->_capturedAtAOI = [iCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtAOI = 0;
      v71->_capturedAtAOI = 0;
    }

    if (oICopy)
    {
      v71->_hasCapturedAtPOI = 1;
      v71->_capturedAtPOI = [oICopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtPOI = 0;
      v71->_capturedAtPOI = 0;
    }

    if (rOICopy)
    {
      v71->_hasCapturedAtROI = 1;
      v71->_capturedAtROI = [rOICopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtROI = 0;
      v71->_capturedAtROI = 0;
    }

    if (businessCopy)
    {
      v71->_hasCapturedAtBusiness = 1;
      v71->_capturedAtBusiness = [businessCopy BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtBusiness = 0;
      v71->_capturedAtBusiness = 0;
    }

    if (publicEventCopy)
    {
      v71->_hasIsCapturedAtPublicEvent = 1;
      v71->_isCapturedAtPublicEvent = [publicEventCopy BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedAtPublicEvent = 0;
      v71->_isCapturedAtPublicEvent = 0;
    }

    if (trendCopy)
    {
      v71->_hasIsContainedInVisualTrend = 1;
      v71->_isContainedInVisualTrend = [trendCopy BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInVisualTrend = 0;
      v71->_isContainedInVisualTrend = 0;
    }

    if (activityCopy)
    {
      v71->_hasIsContainedInActivity = 1;
      v71->_isContainedInActivity = [activityCopy BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInActivity = 0;
      v71->_isContainedInActivity = 0;
    }

    if (childActivityCopy)
    {
      v71->_hasIsContainedInChildActivity = 1;
      v71->_isContainedInChildActivity = [childActivityCopy BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInChildActivity = 0;
      v71->_isContainedInChildActivity = 0;
    }

    v71->_userLibraryAgeInDays = days;
    if (uCopy)
    {
      v71->_hasUserisDAU = 1;
      [uCopy floatValue];
      v77 = v76;
    }

    else
    {
      v71->_hasUserisDAU = 0;
      v77 = -1.0;
    }

    v71->_userisDAU = v77;
  }

  v78 = v71;

  return v78;
}

+ (id)protoFields
{
  v60[56] = *MEMORY[0x1E69E9840];
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v60[0] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userEvent" number:2 type:13 subMessageClass:0];
  v60[1] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsVIP" number:3 type:12 subMessageClass:0];
  v60[2] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"faceCount" number:4 type:2 subMessageClass:0];
  v60[3] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsPets" number:5 type:12 subMessageClass:0];
  v60[4] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtHome" number:6 type:12 subMessageClass:0];
  v60[5] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtWork" number:7 type:12 subMessageClass:0];
  v60[6] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtFrequentLocation" number:8 type:12 subMessageClass:0];
  v60[7] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedOnTrip" number:9 type:12 subMessageClass:0];
  v60[8] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedOnShortTrip" number:10 type:12 subMessageClass:0];
  v60[9] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDocument" number:11 type:12 subMessageClass:0];
  v60[10] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMeme" number:12 type:12 subMessageClass:0];
  v60[11] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isScreenshot" number:13 type:12 subMessageClass:0];
  v60[12] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFavorite" number:14 type:12 subMessageClass:0];
  v60[13] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedOnWeekend" number:15 type:12 subMessageClass:0];
  v60[14] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedAtPrivateEvent" number:16 type:12 subMessageClass:0];
  v60[15] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedOnHoliday" number:17 type:12 subMessageClass:0];
  v60[16] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:18 type:4 subMessageClass:0];
  v60[17] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"importSource" number:19 type:4 subMessageClass:0];
  v60[18] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetAge" number:20 type:4 subMessageClass:0];
  v60[19] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibrarySize" number:21 type:4 subMessageClass:0];
  v60[20] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumTrips" number:22 type:2 subMessageClass:0];
  v60[21] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumVIPPeople" number:23 type:2 subMessageClass:0];
  v60[22] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumFavorites" number:24 type:2 subMessageClass:0];
  v60[23] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasVIP" number:25 type:12 subMessageClass:0];
  v60[24] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasHome" number:26 type:12 subMessageClass:0];
  v60[25] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasPet" number:27 type:12 subMessageClass:0];
  v60[26] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsBaby" number:28 type:12 subMessageClass:0];
  v60[27] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsSocialGroup" number:29 type:12 subMessageClass:0];
  v60[28] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsMyPet" number:30 type:12 subMessageClass:0];
  v60[29] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsCoWorker" number:31 type:12 subMessageClass:0];
  v60[30] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsFamily" number:32 type:12 subMessageClass:0];
  v60[31] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsFriends" number:33 type:12 subMessageClass:0];
  v60[32] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsPartner" number:34 type:12 subMessageClass:0];
  v60[33] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsParent" number:35 type:12 subMessageClass:0];
  v60[34] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsSibling" number:36 type:12 subMessageClass:0];
  v60[35] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsChild" number:37 type:12 subMessageClass:0];
  v60[36] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoupon" number:38 type:12 subMessageClass:0];
  v60[37] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecipe" number:39 type:12 subMessageClass:0];
  v60[38] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isReceipt" number:40 type:12 subMessageClass:0];
  v60[39] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentView" number:41 type:12 subMessageClass:0];
  v60[40] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentEdit" number:42 type:12 subMessageClass:0];
  v60[41] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentShare" number:43 type:12 subMessageClass:0];
  v60[42] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentFavorite" number:44 type:12 subMessageClass:0];
  v60[43] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInSharedAlbum" number:45 type:12 subMessageClass:0];
  v60[44] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInOnThisDay" number:46 type:12 subMessageClass:0];
  v60[45] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtAOI" number:47 type:12 subMessageClass:0];
  v60[46] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtPOI" number:48 type:12 subMessageClass:0];
  v60[47] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtROI" number:49 type:12 subMessageClass:0];
  v60[48] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtBusiness" number:50 type:12 subMessageClass:0];
  v60[49] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedAtPublicEvent" number:51 type:12 subMessageClass:0];
  v60[50] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInVisualTrend" number:52 type:12 subMessageClass:0];
  v60[51] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInActivity" number:53 type:12 subMessageClass:0];
  v60[52] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInChildActivity" number:54 type:12 subMessageClass:0];
  v60[53] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibraryAgeInDays" number:55 type:4 subMessageClass:0];
  v60[54] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userisDAU" number:56 type:1 subMessageClass:0];
  v60[55] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:56];

  return v13;
}

+ (id)columns
{
  v60[56] = *MEMORY[0x1E69E9840];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userEvent" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsVIP" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsPets" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtHome" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtWork" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtFrequentLocation" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedOnTrip" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedOnShortTrip" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDocument" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMeme" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isScreenshot" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFavorite" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedOnWeekend" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedAtPrivateEvent" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedOnHoliday" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"importSource" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetAge" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibrarySize" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumTrips" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumVIPPeople" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumFavorites" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasVIP" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasHome" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasPet" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsBaby" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:12 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsSocialGroup" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsMyPet" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsCoWorker" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsFamily" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:12 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsFriends" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsPartner" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsParent" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsSibling" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsChild" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoupon" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecipe" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isReceipt" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentView" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentEdit" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentShare" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentFavorite" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInSharedAlbum" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInOnThisDay" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtAOI" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtPOI" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtROI" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtBusiness" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedAtPublicEvent" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInVisualTrend" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInActivity" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInChildActivity" dataType:0 requestOnly:0 fieldNumber:54 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibraryAgeInDays" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userisDAU" dataType:1 requestOnly:0 fieldNumber:56 protoDataType:1 convertedType:0];
  v60[0] = v59;
  v60[1] = v58;
  v60[2] = v57;
  v60[3] = v55;
  v60[4] = v56;
  v60[5] = v53;
  v60[6] = v54;
  v60[7] = v52;
  v60[8] = v51;
  v60[9] = v50;
  v60[10] = v49;
  v60[11] = v48;
  v60[12] = v47;
  v60[13] = v46;
  v60[14] = v45;
  v60[15] = v44;
  v60[16] = v43;
  v60[17] = v42;
  v60[18] = v41;
  v60[19] = v40;
  v60[20] = v39;
  v60[21] = v38;
  v60[22] = v37;
  v60[23] = v36;
  v60[24] = v35;
  v60[25] = v34;
  v60[26] = v33;
  v60[27] = v32;
  v60[28] = v31;
  v60[29] = v30;
  v60[30] = v29;
  v60[31] = v28;
  v60[32] = v27;
  v60[33] = v26;
  v60[34] = v25;
  v60[35] = v24;
  v60[36] = v23;
  v60[37] = v22;
  v60[38] = v21;
  v60[39] = v20;
  v60[40] = v19;
  v60[41] = v18;
  v60[42] = v17;
  v60[43] = v16;
  v60[44] = v15;
  v60[45] = v14;
  v60[46] = v2;
  v60[47] = v3;
  v60[48] = v4;
  v60[49] = v5;
  v60[50] = v6;
  v60[51] = v7;
  v60[52] = v8;
  v60[53] = v13;
  v60[54] = v12;
  v60[55] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:56];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMPhotosUserAnalytics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[28] = 0;
    }
  }

  return v4;
}

@end