@interface WFiTunesProductContentItem
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (id)mediaTrackObject;
@end

@implementation WFiTunesProductContentItem

+ (id)outputTypes
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFiTunesProductContentItem;
  v2 = objc_msgSendSuper2(&v6, sel_outputTypes);
  v3 = [MEMORY[0x1E6996ED0] typeWithClassName:@"MPMediaItem" frameworkName:@"MediaPlayer" location:2];
  v4 = [v2 orderedSetByAddingObject:v3];

  return v4;
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
  v42[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v41 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v40 = [v2 block:&__block_literal_global_5420 name:v41 class:objc_opt_class()];
  v42[0] = v40;
  v3 = MEMORY[0x1E6996D90];
  v39 = WFLocalizedContentPropertyNameMarker(@"Price");
  v38 = [v3 keyPath:@"object.price" name:v39 class:objc_opt_class()];
  v42[1] = v38;
  v4 = MEMORY[0x1E6996D90];
  v37 = WFLocalizedContentPropertyNameMarker(@"Currency Code");
  v36 = [v4 keyPath:@"object.currencyCode" name:v37 class:objc_opt_class()];
  v42[2] = v36;
  v5 = MEMORY[0x1E6996D90];
  v35 = WFLocalizedContentPropertyNameMarker(@"Formatted Price");
  v34 = [v5 keyPath:@"object.formattedPrice" name:v35 class:objc_opt_class()];
  v42[3] = v34;
  v6 = MEMORY[0x1E6996D90];
  v33 = WFLocalizedContentPropertyNameMarker(@"Release Date");
  v32 = [v6 keyPath:@"object.releaseDate" name:v33 class:objc_opt_class()];
  v42[4] = v32;
  v7 = MEMORY[0x1E6996D90];
  v31 = WFLocalizedContentPropertyNameMarker(@"Genre");
  v30 = [v7 keyPath:@"mediaTrackObject.genre" name:v31 class:objc_opt_class()];
  v42[5] = v30;
  v8 = MEMORY[0x1E6996D90];
  v29 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v28 = [v8 keyPath:@"mediaTrackObject.duration" name:v29 class:objc_opt_class()];
  v42[6] = v28;
  v9 = MEMORY[0x1E6996D90];
  v26 = WFLocalizedContentPropertyNameMarker(@"Streamable");
  v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v25 = [v9 keyPath:@"mediaTrackObject.streamable" name:v26 class:objc_opt_class()];
  v24 = WFLocalizedContentPropertyNameMarker(@"Is Streamable");
  v10 = [v25 displayName:v24];
  v11 = WFLocalizedContentPropertyNameMarker(@"Is Not Streamable");
  v12 = [v10 negativeName:v11];
  v42[7] = v12;
  v13 = MEMORY[0x1E6996D90];
  v14 = WFLocalizedContentPropertyNameMarker(@"Is Explicit");
  v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v16 = [v13 keyPath:@"mediaTrackObject.explicit" name:v14 class:objc_opt_class()];
  v17 = WFLocalizedContentPropertyNameMarker(@"Is Not Explicit");
  v18 = [v16 negativeName:v17];
  v42[8] = v18;
  v19 = MEMORY[0x1E6996D90];
  v20 = WFLocalizedContentPropertyNameMarker(@"Description");
  v21 = [v19 keyPath:@"object.descriptionText" name:v20 class:objc_opt_class()];
  v42[9] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:10];

  return v23;
}

void __46__WFiTunesProductContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a2 object];
  v7 = objc_opt_new();
  v8 = [v6 artistID];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__WFiTunesProductContentItem_propertyBuilders__block_invoke_2;
  v11[3] = &unk_1E837F588;
  v12 = v5;
  v10 = v5;
  [v7 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v11];
}

void __46__WFiTunesProductContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
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
    v10[2] = __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_1E837D710;
    v11 = thumbnailCopy;
    [(WFiTunesObjectContentItem *)self getArtworkForSize:v10 completionHandler:width, height];
  }

  return 1;
}

void __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)getListAltText:(id)text
{
  if (text)
  {
    textCopy = text;
    storeObject = [(WFiTunesProductContentItem *)self storeObject];
    formattedPrice = [storeObject formattedPrice];
    (*(text + 2))(textCopy, formattedPrice);
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    storeObject = [(WFiTunesProductContentItem *)self storeObject];
    artistName = [storeObject artistName];
    (*(subtitle + 2))(subtitleCopy, artistName);
  }

  return 1;
}

- (id)mediaTrackObject
{
  object = [(WFiTunesObjectContentItem *)self object];
  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = object;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end