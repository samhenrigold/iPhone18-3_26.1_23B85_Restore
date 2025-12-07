@interface CKContextExtractionUtil
+ (id)_renderImageToSurfaceWithImage:(id)image;
+ (void)renderLeadImage:(id)image toDonationItem:(id)item;
+ (void)renderSnapshot:(id)snapshot toDonationItem:(id)item;
@end

@implementation CKContextExtractionUtil

+ (id)_renderImageToSurfaceWithImage:(id)image
{
  v29[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy)
  {
    ioSurface = [imageCopy ioSurface];
    v6 = ioSurface;
    if (ioSurface)
    {
      v7 = ioSurface;
    }

    else
    {
      [v4 size];
      v9 = v8;
      v11 = v10;
      [v4 scale];
      v13 = v12;
      v28[0] = *MEMORY[0x1E696CDE0];
      v14 = v9 * v12;
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      v29[0] = v15;
      v28[1] = *MEMORY[0x1E696CD90];
      v16 = v11 * v13;
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v18 = *MEMORY[0x1E696CD78];
      v29[1] = v17;
      v29[2] = &unk_1F305C7A8;
      v19 = *MEMORY[0x1E696CDA0];
      v28[2] = v18;
      v28[3] = v19;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1111970369];
      v29[3] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

      v22 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:v21];
      [v22 lockWithOptions:1 seed:0];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v24 = CGIOSurfaceContextCreate();
      if (v24)
      {
        v25 = v24;
        cGImage = [v4 CGImage];
        v31.origin.x = 0.0;
        v31.origin.y = 0.0;
        v31.size.width = v14;
        v31.size.height = v16;
        CGContextDrawImage(v25, v31, cGImage);
        CGColorSpaceRelease(DeviceRGB);
        CGContextFlush(v25);
        CFRelease(v25);
        v7 = v22;
      }

      else
      {
        CGColorSpaceRelease(DeviceRGB);
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)renderLeadImage:(id)image toDonationItem:(id)item
{
  if (image)
  {
    itemCopy = item;
    itemCopy2 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:image];
    [itemCopy setLeadImage:?];
  }

  else
  {
    itemCopy2 = item;
    [itemCopy2 setLeadImage:0];
  }
}

+ (void)renderSnapshot:(id)snapshot toDonationItem:(id)item
{
  if (snapshot)
  {
    itemCopy = item;
    itemCopy2 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:snapshot];
    [itemCopy setSnapshot:?];
  }

  else
  {
    itemCopy2 = item;
    [itemCopy2 setSnapshot:0];
  }
}

@end