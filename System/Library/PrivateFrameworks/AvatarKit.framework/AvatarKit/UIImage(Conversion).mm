@interface UIImage(Conversion)
+ (CGImageSource)avt_animatedImageWithDataRepresentation:()Conversion ofType:;
+ (id)animatedImageWithAPNGRepresentation:()Conversion;
+ (id)animatedImageWithHEICRepresentation:()Conversion;
- (__CFData)avt_dataRepresentationForTypeIdentifier:()Conversion;
- (float)frameDelayInSeconds;
- (id)APNGRepresentation;
- (id)HEICRepresentation;
- (uint64_t)copyByReorderingImagesWithFirstImageAtTime:()Conversion;
@end

@implementation UIImage(Conversion)

+ (id)animatedImageWithHEICRepresentation:()Conversion
{
  v4 = *MEMORY[0x1E6982E00];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self avt_animatedImageWithDataRepresentation:? ofType:?];

  return v7;
}

+ (id)animatedImageWithAPNGRepresentation:()Conversion
{
  v4 = *MEMORY[0x1E6982F28];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self avt_animatedImageWithDataRepresentation:? ofType:?];

  return v7;
}

+ (CGImageSource)avt_animatedImageWithDataRepresentation:()Conversion ofType:
{
  v5 = a4;
  v6 = CGImageSourceCreateWithData(a3, 0);
  v7 = v6;
  if (v6)
  {
    Count = CGImageSourceGetCount(v6);
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, i, 0);
        if (ImageAtIndex)
        {
          v12 = ImageAtIndex;
          v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:?];
          [v9 addObject:?];

          CGImageRelease(v12);
        }

        else
        {
          NSLog(&cfstr_AvatarkitAnima.isa, i);
        }
      }
    }

    valuePtr = 1015580809;
    v14 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    identifier = [*MEMORY[0x1E6982F28] identifier];
    v17 = [v5 isEqualToString:?];

    if (v17)
    {
      Value = CFDictionaryGetValue(v15, *MEMORY[0x1E696DEB0]);
      v19 = *MEMORY[0x1E696D3D0];
      goto LABEL_11;
    }

    identifier2 = [*MEMORY[0x1E6982E00] identifier];
    v22 = [v5 isEqualToString:?];

    if (v22)
    {
      valuePtr = 1032358025;
    }

    else if ([v5 isEqualToString:?])
    {
      v23 = CGImageSourceCopyProperties(v7, 0);
      v24 = CFDictionaryGetValue(v23, *MEMORY[0x1E696DD20]);
      CFRelease(v23);
      v19 = *MEMORY[0x1E696DD30];
      Value = v24;
LABEL_11:
      v20 = CFDictionaryGetValue(Value, v19);
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
      }
    }

    CFRelease(v15);
LABEL_18:
    CFRelease(v7);
    [v9 count];
    v7 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:? duration:?];
  }

  return v7;
}

- (float)frameDelayInSeconds
{
  images = [self images];
  v2 = [images count];
  [v3 duration];
  v5 = v2 / v4;

  return 1.0 / v5;
}

- (id)HEICRepresentation
{
  identifier = [*MEMORY[0x1E6982E00] identifier];
  v3 = [self avt_dataRepresentationForTypeIdentifier:?];

  return v3;
}

- (id)APNGRepresentation
{
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v3 = [self avt_dataRepresentationForTypeIdentifier:?];

  return v3;
}

- (__CFData)avt_dataRepresentationForTypeIdentifier:()Conversion
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Mutable = CFDataCreateMutable(0, 0);
  [self frameDelayInSeconds];
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v7 = [(__CFString *)v4 isEqualToString:?];

  if (v7)
  {
    v31 = Mutable;
    v60 = *MEMORY[0x1E696DEB0];
    v8 = *MEMORY[0x1E696D3D0];
    v56 = *MEMORY[0x1E696D3C8];
    v57 = v8;
    v58 = &unk_1F39D9368;
    v59 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v61 = *MEMORY[0x1E696D888];
    v9 = MEMORY[0x1E696AD98];
    [self scale];
    v64 = [v9 numberWithDouble:?];
    v62 = *MEMORY[0x1E696D880];
    v10 = MEMORY[0x1E696AD98];
    [self scale];
    v65 = [v10 numberWithDouble:?];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

    v54 = v60;
    v50 = *MEMORY[0x1E696D3C0];
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v52 = v12;
    v51 = *MEMORY[0x1E696D338];
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v53 = v13;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

LABEL_5:
    Mutable = v31;
    goto LABEL_7;
  }

  if ([(__CFString *)v4 isEqualToString:?])
  {
    v31 = Mutable;
    [self size];
    v44 = *MEMORY[0x1E696DD20];
    v42 = *MEMORY[0x1E696DD30];
    v43 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v45 = *MEMORY[0x1E696DD10];
    v15 = MEMORY[0x1E696AD98];
    [self scale];
    v48 = [v15 numberWithDouble:?];
    v46 = *MEMORY[0x1E696DD08];
    v16 = MEMORY[0x1E696AD98];
    [self scale];
    v49 = [v16 numberWithDouble:?];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

    v40 = v44;
    v38 = *MEMORY[0x1E696DD18];
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v39 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v41 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695E0F8];
  v11 = MEMORY[0x1E695E0F8];
LABEL_7:
  images = [self images];
  v18 = [images count];
  v19 = v18;
  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18;
  }

  v21 = CGImageDestinationCreateWithData(Mutable, v4, v20, 0);
  CGImageDestinationSetProperties(v21, v11);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __63__UIImage_Conversion__avt_dataRepresentationForTypeIdentifier___block_invoke;
  v35 = &unk_1E7F484C0;
  v37 = v21;
  v22 = v14;
  v36 = v22;
  if (v19)
  {
    v32 = v11;
    v23 = v4;
    v24 = Mutable;
    v25 = images;
    v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
    if (v26)
    {
      v27 = v26;
      v28 = MEMORY[0];
      do
      {
        for (i = 0; i != v27; i = (i + 1))
        {
          if (MEMORY[0] != v28)
          {
            objc_enumerationMutation(v25);
          }

          v34(v33, *(8 * i));
        }

        v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v27);
    }

    Mutable = v24;
    v4 = v23;
    v11 = v32;
  }

  else
  {
    v34(v33, self);
  }

  CGImageDestinationFinalize(v21);
  if (v21)
  {
    CFRelease(v21);
  }

  return Mutable;
}

- (uint64_t)copyByReorderingImagesWithFirstImageAtTime:()Conversion
{
  images = [self images];
  if (a2 > 0.0)
  {
    [self frameDelayInSeconds];
    v5 = [images subarrayWithRange:?];
    [images count];
    v6 = [images subarrayWithRange:?];
    v7 = [v6 arrayByAddingObjectsFromArray:?];

    images = v7;
  }

  v8 = MEMORY[0x1E69DCAB8];
  [0x1E69DC000 duration];
  v9 = [v8 animatedImageWithImages:? duration:?];

  return v9;
}

@end