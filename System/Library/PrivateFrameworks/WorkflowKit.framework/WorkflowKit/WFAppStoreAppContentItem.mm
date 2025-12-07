@interface WFAppStoreAppContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
@end

@implementation WFAppStoreAppContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"App Store Apps", @"App Store Apps");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"App Store App", @"App Store App");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E6996FD8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x1E6996D70];
  v3 = WFLocalizedString(@"Name and Store URL");
  v4 = [v2 coercingToStringWithDescription:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v86[24] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v85 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v84 = [v2 block:&__block_literal_global_6397 name:v85 class:objc_opt_class()];
  v86[0] = v84;
  v3 = MEMORY[0x1E6996D90];
  v83 = WFLocalizedContentPropertyNameMarker(@"Price");
  v82 = [v3 keyPath:@"object.price" name:v83 class:objc_opt_class()];
  v86[1] = v82;
  v4 = MEMORY[0x1E6996D90];
  v81 = WFLocalizedContentPropertyNameMarker(@"Currency Code");
  v80 = [v4 keyPath:@"object.currencyCode" name:v81 class:objc_opt_class()];
  v86[2] = v80;
  v5 = MEMORY[0x1E6996D90];
  v79 = WFLocalizedContentPropertyNameMarker(@"Formatted Price");
  v78 = [v5 keyPath:@"object.formattedPrice" name:v79 class:objc_opt_class()];
  v86[3] = v78;
  v6 = MEMORY[0x1E6996D90];
  v77 = WFLocalizedContentPropertyNameMarker(@"Release Date");
  v76 = [v6 keyPath:@"object.releaseDate" name:v77 class:objc_opt_class()];
  v86[4] = v76;
  v7 = MEMORY[0x1E6996D90];
  v75 = WFLocalizedContentPropertyNameMarker(@"Category");
  v74 = [v7 keyPath:@"object.category" name:v75 class:objc_opt_class()];
  v86[5] = v74;
  v8 = MEMORY[0x1E6996D90];
  v73 = WFLocalizedContentPropertyNameMarker(@"Description");
  v72 = [v8 keyPath:@"object.descriptionText" name:v73 class:objc_opt_class()];
  v86[6] = v72;
  v9 = MEMORY[0x1E6996D90];
  v71 = WFLocalizedContentPropertyNameMarker(@"Rating");
  v70 = [v9 keyPath:@"object.averageRating" name:v71 class:objc_opt_class()];
  v86[7] = v70;
  v10 = MEMORY[0x1E6996D90];
  v69 = WFLocalizedContentPropertyNameMarker(@"# of Ratings");
  v68 = [v10 keyPath:@"object.numberOfRatings" name:v69 class:objc_opt_class()];
  v86[8] = v68;
  v11 = MEMORY[0x1E6996D90];
  v67 = WFLocalizedContentPropertyNameMarker(@"Rating (This Version)");
  v66 = [v11 keyPath:@"object.averageRatingLatestVersion" name:v67 class:objc_opt_class()];
  v86[9] = v66;
  v12 = MEMORY[0x1E6996D90];
  v65 = WFLocalizedContentPropertyNameMarker(@"# of Ratings (This Version)");
  v64 = [v12 keyPath:@"object.numberOfRatingsLatestVersion" name:v65 class:objc_opt_class()];
  v86[10] = v64;
  v13 = MEMORY[0x1E6996D90];
  v63 = WFLocalizedContentPropertyNameMarker(@"Version");
  v62 = [v13 keyPath:@"object.version" name:v63 class:objc_opt_class()];
  v86[11] = v62;
  v14 = MEMORY[0x1E6996D90];
  v61 = WFLocalizedContentPropertyNameMarker(@"Last Updated");
  v60 = [v14 keyPath:@"object.lastUpdated" name:v61 class:objc_opt_class()];
  v86[12] = v60;
  v15 = MEMORY[0x1E6996D90];
  v59 = WFLocalizedContentPropertyNameMarker(@"Release Notes");
  v58 = [v15 keyPath:@"object.releaseNotes" name:v59 class:objc_opt_class()];
  v86[13] = v58;
  v16 = MEMORY[0x1E6996D90];
  v57 = WFLocalizedContentPropertyNameMarker(@"Content Rating");
  v56 = [v16 keyPath:@"object.contentRating" name:v57 class:objc_opt_class()];
  v86[14] = v56;
  v17 = MEMORY[0x1E6996D90];
  v55 = WFLocalizedContentPropertyNameMarker(@"Minimum OS Version");
  v54 = [v17 keyPath:@"object.minimumOSVersion" name:v55 class:objc_opt_class()];
  v86[15] = v54;
  v18 = MEMORY[0x1E6996D90];
  v52 = WFLocalizedContentPropertyNameMarker(@"Is Universal");
  v53 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v51 = [v18 keyPath:@"object.isUniversal" name:v52 class:objc_opt_class()];
  v50 = WFLocalizedContentPropertyNameMarker(@"Is Not Universal");
  v49 = [v51 negativeName:v50];
  v86[16] = v49;
  v19 = MEMORY[0x1E6996D90];
  v47 = WFLocalizedContentPropertyNameMarker(@"Supports Game Center");
  v48 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v46 = [v19 keyPath:@"object.supportsGameCenter" name:v47 class:objc_opt_class()];
  v45 = WFLocalizedContentPropertyNameMarker(@"Does Not Support Game Center");
  v44 = [v46 negativeName:v45];
  v86[17] = v44;
  v20 = MEMORY[0x1E6996D90];
  v43 = WFLocalizedContentPropertyNameMarker(@"Supported Devices");
  v42 = [v20 keyPath:@"object.supportedDevices" name:v43 class:objc_opt_class()];
  v41 = [v42 multipleValues:1];
  v86[18] = v41;
  v21 = MEMORY[0x1E6996D90];
  v40 = WFLocalizedContentPropertyNameMarker(@"Supported Languages");
  v39 = [v21 keyPath:@"object.supportedLanguages" name:v40 class:objc_opt_class()];
  v38 = [v39 multipleValues:1];
  v86[19] = v38;
  v22 = MEMORY[0x1E6996D90];
  v23 = WFLocalizedContentPropertyNameMarker(@"Screenshot URLs");
  v24 = [v22 keyPath:@"object.screenshotURLs" name:v23 class:objc_opt_class()];
  v25 = [v24 multipleValues:1];
  v86[20] = v25;
  v26 = MEMORY[0x1E6996D90];
  v27 = WFLocalizedContentPropertyNameMarker(@"iPad Screenshot URLs");
  v28 = [v26 keyPath:@"object.iPadScreenshotURLs" name:v27 class:objc_opt_class()];
  v29 = [v28 multipleValues:1];
  v86[21] = v29;
  v30 = MEMORY[0x1E6996D90];
  v31 = WFLocalizedContentPropertyNameMarker(@"Download Size");
  v32 = [v30 block:&__block_literal_global_306 name:v31 class:objc_opt_class()];
  v86[22] = v32;
  v33 = MEMORY[0x1E6996D90];
  v34 = WFLocalizedContentPropertyNameMarker(@"Bundle Identifier");
  v35 = [v33 keyPath:@"object.bundleIdentifier" name:v34 class:objc_opt_class()];
  v86[23] = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:24];

  return v37;
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = [a2 object];
  v6 = objc_alloc(MEMORY[0x1E6996E28]);
  v7 = [v9 fileSize];
  v8 = [v6 initWithByteCount:{objc_msgSend(v7, "longLongValue")}];
  v5[2](v5, v8);
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a2 softwareObject];
  v7 = objc_opt_new();
  v8 = [v6 artistID];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_2;
  v11[3] = &unk_1E837F588;
  v12 = v5;
  v10 = v5;
  [v7 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v11];
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  v8 = thumbnailCopy;
  if (thumbnailCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_1E837D710;
    v11 = thumbnailCopy;
    [(WFiTunesObjectContentItem *)self getArtworkForSize:v10 completionHandler:width, height];
  }

  return 1;
}

void __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E0FE8];
  v4[0] = &unk_1F4A9A198;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (subtitleCopy)
  {
    softwareObject = [(WFAppStoreAppContentItem *)self softwareObject];
    artistName = [softwareObject artistName];
    if (artistName)
    {
      v7 = artistName;
      softwareObject2 = [(WFAppStoreAppContentItem *)self softwareObject];
      formattedPrice = [softwareObject2 formattedPrice];

      if (formattedPrice)
      {
        v10 = MEMORY[0x1E696AEC0];
        softwareObject3 = [(WFAppStoreAppContentItem *)self softwareObject];
        artistName2 = [softwareObject3 artistName];
        softwareObject4 = [(WFAppStoreAppContentItem *)self softwareObject];
        formattedPrice2 = [softwareObject4 formattedPrice];
        v15 = [v10 stringWithFormat:@"%@ • %@", artistName2, formattedPrice2];
        subtitleCopy[2](subtitleCopy, v15);

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
    }

    softwareObject5 = [(WFAppStoreAppContentItem *)self softwareObject];
    artistName3 = [softwareObject5 artistName];

    if (artistName3)
    {
      softwareObject3 = [(WFAppStoreAppContentItem *)self softwareObject];
      artistName2 = [softwareObject3 artistName];
      subtitleCopy[2](subtitleCopy, artistName2);
      goto LABEL_8;
    }
  }

LABEL_9:

  return 1;
}

@end