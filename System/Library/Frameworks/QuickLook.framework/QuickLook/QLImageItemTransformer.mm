@interface QLImageItemTransformer
+ (id)allowedOutputClasses;
+ (id)animatableContentTypes;
- (double)_maximumDimension;
- (id)_contentsFromCGImageSource:(CGImageSource *)source context:(id)context scale:(double)scale;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLImageItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = CGImageSourceCreateWithURL(l, 0);
  if (v8)
  {
    v9 = v8;
    v10 = [(QLImageItemTransformer *)self _contentsFromCGImageSource:v8 context:contextCopy scale:1.0];
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  bitmapFormat = [contextCopy bitmapFormat];

  if (bitmapFormat)
  {
    bitmapFormat2 = [contextCopy bitmapFormat];
    colorSpace = [bitmapFormat2 colorSpace];
    if (colorSpace)
    {
      v12 = colorSpace;
      v13 = CGDataProviderCreateWithCFData(dataCopy);
      v14 = CGImageCreate([bitmapFormat2 width], objc_msgSend(bitmapFormat2, "height"), objc_msgSend(bitmapFormat2, "bitsPerComponent"), objc_msgSend(bitmapFormat2, "bitsPerPixel"), objc_msgSend(bitmapFormat2, "bytesPerRow"), v12, objc_msgSend(bitmapFormat2, "bitmapInfo"), v13, 0, 0, kCGRenderingIntentDefault);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    v17 = [MEMORY[0x277D755B8] imageWithCGImage:v14 scale:0 orientation:1.0];
    CGImageRelease(v14);
  }

  else
  {
    v15 = CGImageSourceCreateWithData(dataCopy, 0);
    if (v15)
    {
      v16 = v15;
      v17 = [(QLImageItemTransformer *)self _contentsFromCGImageSource:v15 context:contextCopy scale:1.0];
      CFRelease(v16);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_contentsFromCGImageSource:(CGImageSource *)source context:(id)context scale:(double)scale
{
  v54[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  Count = CGImageSourceGetCount(source);
  contentType = [contextCopy contentType];

  if (contentType)
  {
    contentType = MEMORY[0x277CE1CB8];
    contentType2 = [contextCopy contentType];
    v13 = [contentType typeWithIdentifier:contentType2];

    animatableContentTypes = [objc_opt_class() animatableContentTypes];
    LODWORD(contentType) = _QLContentTypeConformsToContentTypeInSet();
  }

  if (Count >= 2 && (Helper_x8__OBJC_CLASS___PFImageMetadata = gotLoadHelper_x8__OBJC_CLASS___PFImageMetadata(v11), (contentType & ([*(v16 + 1032) imageSourceIsMonoski:{source, Helper_x8__OBJC_CLASS___PFImageMetadata}] ^ 1)) == 1))
  {
    v17 = [[QLAnimatedImage alloc] initWithImageSource:source];
  }

  else
  {
    v53 = *MEMORY[0x277CD3648];
    v18 = MEMORY[0x277CBEC38];
    v54[0] = MEMORY[0x277CBEC38];
    unsignedIntValue = 1;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v21 = CGImageSourceCopyPropertiesAtIndex(source, 0, v20);
    v22 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
    [v22 floatValue];
    v24 = v23;

    v25 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
    [v25 floatValue];
    v27 = v26;

    v28 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v29 = v28;
    if (v28)
    {
      unsignedIntValue = [v28 unsignedIntValue];
    }

    if (v24 >= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v24;
    }

    v31 = v30;
    [(QLImageItemTransformer *)self _maximumDimension];
    v33 = v32;
    viewDynamicRange = [contextCopy viewDynamicRange];
    if (v33 <= v31 * 0.5)
    {
      [(QLImageItemTransformer *)self _maximumDimension];
      v42 = QLScaledPlatformImageFromImageSource();
      v43 = MEMORY[0x277D755B8];
      cGImage = [v42 CGImage];
      [v42 scale];
      v17 = [v43 imageWithCGImage:cGImage scale:UIImageOrientationFromCGImageOrientation(objc_msgSend(v42 orientation:{"orientation")), v45}];

      v46 = v20;
    }

    else
    {
      v35 = viewDynamicRange;
      if (_os_feature_enabled_impl() && v35)
      {
        v36 = *MEMORY[0x277CD3580];
        v51[0] = *MEMORY[0x277CD3678];
        v51[1] = v36;
        v37 = *MEMORY[0x277CD3590];
        v52[0] = v18;
        v52[1] = v37;
        v51[2] = *MEMORY[0x277CD3588];
        v52[2] = &unk_284D73138;
        v38 = MEMORY[0x277CBEAC0];
        v39 = v52;
        v40 = v51;
        v41 = 3;
      }

      else
      {
        v49 = *MEMORY[0x277CD3678];
        v50 = v18;
        v38 = MEMORY[0x277CBEAC0];
        v39 = &v50;
        v40 = &v49;
        v41 = 1;
      }

      v46 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];

      ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, v46);
      v17 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex scale:UIImageOrientationFromCGImageOrientation(unsignedIntValue) orientation:scale];
      if (ImageAtIndex)
      {
        CFRelease(ImageAtIndex);
      }
    }
  }

  return v17;
}

- (double)_maximumDimension
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v9 = v8;

  if (v4 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  return v10 * v9 * 3.0;
}

+ (id)animatableContentTypes
{
  if (animatableContentTypes_onceToken != -1)
  {
    +[QLImageItemTransformer animatableContentTypes];
  }

  v3 = animatableContentTypes_animatableContentTypes;

  return v3;
}

void __48__QLImageItemTransformer_animatableContentTypes__block_invoke()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.heics"];
  v1 = *MEMORY[0x277CE1D88];
  v2 = *MEMORY[0x277CE1E10];
  v3 = *MEMORY[0x277CE1EE0];
  v4 = *MEMORY[0x277CE1D90];
  v8 = v0;
  if (v0)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v1, v2, v3, v4, v0, 0}];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v1, v2, v3, v4, 0, v7}];
  }
  v5 = ;
  v6 = animatableContentTypes_animatableContentTypes;
  animatableContentTypes_animatableContentTypes = v5;
}

@end