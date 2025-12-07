@interface MRUImageUtilities
+ (BOOL)imageIsEfficientFormat:(id)format;
+ (BOOL)imageIsJPEG:(id)g;
+ (BOOL)shouldResizeImage:(id)image forFittingSize:(CGSize)size;
+ (CGSize)sizeFromSource:(CGImageSource *)source;
+ (MSVLRUDictionary)cache;
+ (id)derivedSourceImageForImage:(id)image;
+ (id)formatImage:(id)image withIdentifier:(id)identifier forDisplayAtSize:(CGSize)size useCache:(BOOL)cache;
+ (id)formattedImageForIdentifier:(id)identifier size:(CGSize)size;
+ (id)jpegDataForImage:(id)image;
+ (id)resizedImage:(id)image forFittingSize:(CGSize)size;
+ (id)sourceDataForImage:(id)image;
+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize;
+ (void)clearCache;
@end

@implementation MRUImageUtilities

+ (MSVLRUDictionary)cache
{
  if (cache_onceToken != -1)
  {
    +[MRUImageUtilities cache];
  }

  v3 = cache___cache;

  return v3;
}

void __26__MRUImageUtilities_cache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:5];
  v1 = cache___cache;
  cache___cache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:0x1F1446768 object:0 queue:0 usingBlock:&__block_literal_global_40_0];
}

void __26__MRUImageUtilities_cache__block_invoke_2()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = +[MRUImageLoaderCoordinator sharedCoordinator];
  v1 = [v0 registeredLoaderArtworkIdentifiers];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [cache___cache allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v1 containsObject:v8];

        if (v9)
        {
          [v7 cancelEvictionTimer];
        }

        else
        {
          v10 = [v7 evictionTimer];

          if (!v10)
          {
            [v7 startEvictionTimer];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

+ (void)clearCache
{
  v2 = +[MRUImageUtilities cache];
  [v2 removeAllObjects];
}

+ (id)sourceDataForImage:(id)image
{
  [image CGImage];
  v3 = CGImageCopySourceData();

  return v3;
}

+ (BOOL)imageIsJPEG:(id)g
{
  gCopy = g;
  v4 = gCopy;
  if (gCopy && [gCopy CGImage])
  {
    [v4 CGImage];
    v5 = MSVImageUtilitiesCopyUTTypeForImage();
    v6 = [v5 isEqualToString:@"public.jpeg"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)imageIsEfficientFormat:(id)format
{
  formatCopy = format;
  v4 = formatCopy;
  if (formatCopy && [formatCopy CGImage])
  {
    [v4 CGImage];
    v5 = MSVImageUtilitiesCopyUTTypeForImage();
    if ([v5 isEqualToString:@"public.jpeg"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"public.heic"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 isEqualToString:@"public.heif"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)jpegDataForImage:(id)image
{
  v10 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if ([MRUImageUtilities imageIsJPEG:imageCopy]&& ([MRUImageUtilities sourceDataForImage:imageCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (UIImageJPEGRepresentation(imageCopy, 0.9), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = MCLogCategoryDefault(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = imageCopy;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] Failed to produce JPEG data for image %@.", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)formatImage:(id)image withIdentifier:(id)identifier forDisplayAtSize:(CGSize)size useCache:(BOOL)cache
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  v93 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v17 = MCLogCategoryDefault(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v95.width = width;
      v95.height = height;
      v18 = NSStringFromCGSize(v95);
      *buf = 138412802;
      v88 = uUIDString;
      v89 = 2112;
      v90 = imageCopy;
      v91 = 2112;
      v92 = v18;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> %@ at size: %@", buf, 0x20u);
    }
  }

  if (imageCopy)
  {
    if (!cacheCopy)
    {
      v28 = imageCopy;
      v21 = 0;
      goto LABEL_47;
    }

    v19 = [identifierCopy copy];
    if (!v19)
    {
      currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging2)
      {
        v32 = MCLogCategoryDefault(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v88 = uUIDString;
          _os_log_impl(&dword_1A20FC000, v32, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> cannot generate derived image for nil identifier. Will format original.", buf, 0xCu);
        }
      }

      v28 = imageCopy;
      v21 = 0;
      goto LABEL_46;
    }

    v20 = +[MRUImageUtilities cache];
    v21 = [v20 objectForKey:v19];

    image = [v21 image];
    if (image)
    {
      v23 = image;
    }

    else
    {
      v33 = [MRUImageUtilities derivedSourceImageForImage:imageCopy];
      if (!v33)
      {
        v85 = MCLogCategoryDefault(0);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v88 = uUIDString;
          _os_log_impl(&dword_1A20FC000, v85, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil because unable to create derived image.", buf, 0xCu);
        }

        v23 = 0;
        goto LABEL_82;
      }

      v23 = v33;
      currentSettings3 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging3 = [currentSettings3 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging3)
      {
        v37 = MCLogCategoryDefault(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          [v23 size];
          v38 = NSStringFromCGSize(v96);
          *buf = 138412802;
          v88 = uUIDString;
          v89 = 2112;
          v90 = v38;
          v91 = 2112;
          v92 = v19;
          _os_log_impl(&dword_1A20FC000, v37, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> setting derived image of size %@ for identifier %@.", buf, 0x20u);
        }
      }

      v39 = objc_opt_new();

      [v39 setImage:v23];
      [v39 setIdentifier:v19];
      [v39 setFittingSize:width, height];
      [v39 startEvictionTimer];
      v40 = +[MRUImageUtilities cache];
      [v40 setObject:v39 forKey:v19];

      v21 = v39;
    }

    [v23 size];
    if (v41 >= width && ([v23 size], v42 >= height) || (objc_msgSend(v23, "size"), v44 = v43, objc_msgSend(imageCopy, "size"), v44 >= v45) && (objc_msgSend(v23, "size"), v47 = v46, objc_msgSend(imageCopy, "size"), v47 >= v48))
    {
      v28 = v23;
LABEL_42:
      if (v21)
      {
        [v21 fittingSize];
        if (v61 < width || ([v21 fittingSize], v62 < height))
        {
          [v21 setFittingSize:width, height];
        }
      }

LABEL_46:

LABEL_47:
      [v28 size];
      v64 = v63;
      [imageCopy size];
      if (v64 > v65 || ([v28 size], v67 = v66, objc_msgSend(imageCopy, "size"), v67 > v68))
      {
        [imageCopy size];
        if (v69 >= width || ([imageCopy size], v70 >= height))
        {
          if (![MRUImageUtilities shouldTranscodeImage:imageCopy])
          {
            v71 = imageCopy;

            v28 = v71;
          }
        }
      }

      height = [MRUImageUtilities shouldResizeImage:v28 forFittingSize:width, height];
      v73 = [MRUImageUtilities shouldTranscodeImage:v28];
      currentSettings4 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging4 = [currentSettings4 verboseImageLoadingLogging];

      if (height)
      {
        if (verboseImageLoadingLogging4)
        {
          v77 = MCLogCategoryDefault(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v88 = uUIDString;
            _os_log_impl(&dword_1A20FC000, v77, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> resizing image.", buf, 0xCu);
          }
        }

        height2 = [MRUImageUtilities resizedImage:v28 forFittingSize:width, height];
      }

      else
      {
        if (v73)
        {
          if (verboseImageLoadingLogging4)
          {
            v79 = MCLogCategoryDefault(v76);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v88 = uUIDString;
              _os_log_impl(&dword_1A20FC000, v79, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> transcoding image.", buf, 0xCu);
            }
          }

          v80 = [MRUImageUtilities jpegDataForImage:v28];
          if (v80)
          {
            v27 = [MEMORY[0x1E69DCAB8] imageWithData:v80];
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_74;
        }

        if (verboseImageLoadingLogging4)
        {
          v81 = MCLogCategoryDefault(v76);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v88 = uUIDString;
            _os_log_impl(&dword_1A20FC000, v81, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> derived image is appropriate for display.", buf, 0xCu);
          }
        }

        height2 = v28;
      }

      v27 = height2;
LABEL_74:
      currentSettings5 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging5 = [currentSettings5 verboseImageLoadingLogging];

      if (!verboseImageLoadingLogging5)
      {
LABEL_84:

        goto LABEL_85;
      }

      v19 = MCLogCategoryDefault(v84);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v88 = uUIDString;
        v89 = 2112;
        v90 = v27;
        _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> Result: %@", buf, 0x16u);
      }

LABEL_83:

      goto LABEL_84;
    }

    currentSettings6 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging6 = [currentSettings6 verboseImageLoadingLogging];

    if (verboseImageLoadingLogging6)
    {
      v52 = MCLogCategoryDefault(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v88 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v52, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> regenerating derived image.", buf, 0xCu);
      }
    }

    v53 = [MRUImageUtilities derivedSourceImageForImage:imageCopy];
    if (v53)
    {
      v28 = v53;
      currentSettings7 = [MEMORY[0x1E69B0B08] currentSettings];
      verboseImageLoadingLogging7 = [currentSettings7 verboseImageLoadingLogging];

      if (verboseImageLoadingLogging7)
      {
        v57 = MCLogCategoryDefault(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          [v28 size];
          v58 = NSStringFromCGSize(v97);
          *buf = 138412802;
          v88 = uUIDString;
          v89 = 2112;
          v90 = v58;
          v91 = 2112;
          v92 = v19;
          _os_log_impl(&dword_1A20FC000, v57, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> setting regenerated derived image of size %@ for identifier %@.", buf, 0x20u);
        }
      }

      v59 = objc_opt_new();

      [v59 setImage:v28];
      [v59 setIdentifier:v19];
      [v59 setFittingSize:width, height];
      [v59 startEvictionTimer];
      v60 = +[MRUImageUtilities cache];
      [v60 setObject:v59 forKey:v19];

      v21 = v59;
      goto LABEL_42;
    }

    v85 = MCLogCategoryDefault(0);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v85, OS_LOG_TYPE_ERROR, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil due to error in regenerating derived image", buf, 0xCu);
    }

LABEL_82:

    v27 = 0;
    v28 = v23;
    goto LABEL_83;
  }

  currentSettings8 = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging8 = [currentSettings8 verboseImageLoadingLogging];

  if (!verboseImageLoadingLogging8)
  {
    v27 = 0;
    goto LABEL_86;
  }

  v21 = MCLogCategoryDefault(v26);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = uUIDString;
    _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] formatImageForDisplay<%@> returning nil for nil image.", buf, 0xCu);
  }

  v27 = 0;
LABEL_85:

LABEL_86:

  return v27;
}

+ (id)formattedImageForIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [identifier copy];
  v7 = +[MRUImageUtilities cache];
  v8 = [v7 objectForKey:v6];

  image = [v8 image];
  [image size];
  if (width >= height)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  if (v11 <= 180.0)
  {
    v12 = 4.0;
  }

  else
  {
    v12 = 6.0;
  }

  if (v10 >= width - v12)
  {
    v14 = 1;
  }

  else
  {
    [image size];
    v14 = v13 >= height - v12;
  }

  [v8 fittingSize];
  if (v15 >= width)
  {
    v17 = 1;
  }

  else
  {
    [v8 fittingSize];
    v17 = v16 >= height;
  }

  height = 0;
  if (image && (v14 || v17))
  {
    height = [MRUImageUtilities formatImage:image withIdentifier:v6 forDisplayAtSize:0 useCache:width, height];
  }

  return height;
}

+ (id)derivedSourceImageForImage:(id)image
{
  v26 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v6 requestSize];
  v8 = v7;

  v9 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v9 requestSize];
  v11 = v10;

  if (v8 < v11)
  {
    v8 = v11;
  }

  v12 = [MRUImageUtilities shouldResizeImage:imageCopy forFittingSize:v8, v8];
  v13 = [MRUImageUtilities shouldTranscodeImage:imageCopy];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (v12)
  {
    if (verboseImageLoadingLogging)
    {
      v17 = MCLogCategoryDefault(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> resizing image.", &v24, 0xCu);
      }
    }

    v18 = [MRUImageUtilities resizedImage:imageCopy forFittingSize:v8, v8];
LABEL_21:
    v21 = v18;
    goto LABEL_24;
  }

  if (!v13)
  {
    if (verboseImageLoadingLogging)
    {
      v22 = MCLogCategoryDefault(v16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = uUIDString;
        _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> returning original.", &v24, 0xCu);
      }
    }

    v18 = imageCopy;
    goto LABEL_21;
  }

  if (verboseImageLoadingLogging)
  {
    v19 = MCLogCategoryDefault(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] derivedSourceImageForImage<%@> transcoding image.", &v24, 0xCu);
    }
  }

  v20 = [MRUImageUtilities jpegDataForImage:imageCopy];
  if (v20)
  {
    v21 = [MEMORY[0x1E69DCAB8] imageWithData:v20];
  }

  else
  {
    v21 = 0;
  }

LABEL_24:

  return v21;
}

+ (BOOL)shouldResizeImage:(id)image forFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [image size];
  v8 = v6 / width;
  if (v6 / width < v7 / height)
  {
    v8 = v7 / height;
  }

  v9 = v6 - width;
  v10 = v7 - height;
  if (v9 < v10)
  {
    v9 = v10;
  }

  return v8 > 1.25 && v9 > 100.0;
}

+ (id)resizedImage:(id)image forFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v46 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v12 = MCLogCategoryDefault(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v48.width = width;
      v48.height = height;
      v13 = NSStringFromCGSize(v48);
      *buf = 138412802;
      v41 = uUIDString;
      v42 = 2112;
      v43 = imageCopy;
      v44 = 2112;
      v45 = v13;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] resizedImage<%@> %@ to fitting size %@", buf, 0x20u);
    }
  }

  [imageCopy size];
  MSVImageUtilitiesMakeBoundingBoxSize();
  v15 = v14;
  v17 = v16;
  v18 = [MRUImageUtilities sourceDataForImage:imageCopy];
  if (v18)
  {
    v19 = *MEMORY[0x1E696E0A8];
    v38 = *MEMORY[0x1E696E0A8];
    v20 = MEMORY[0x1E695E110];
    v39 = MEMORY[0x1E695E110];
    v21 = CGImageSourceCreateWithData(v18, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1]);
    [MRUImageUtilities sizeFromSource:v21];
    if (v15 >= v17)
    {
      v22 = v15;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22;
    v24 = [MRUImageUtilities subsampleFactorForMaxPixelSize:v22 imageSize:?];
    v37[0] = v20;
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{v24, v19, *MEMORY[0x1E696E0F8]}];
    v37[1] = v25;
    v36[2] = *MEMORY[0x1E696D328];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
    v36[3] = *MEMORY[0x1E696D338];
    v37[2] = v26;
    v37[3] = &unk_1F148B4B0;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];

    v28 = objc_opt_new();
    v29 = CGImageDestinationCreateWithData(v28, @"public.jpeg", 1uLL, v27);
    CGImageDestinationAddImageFromSource(v29, v21, 0, v27);
    CGImageDestinationFinalize(v29);
    v30 = [MEMORY[0x1E69DCAB8] imageWithData:v28];
    currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

    if (verboseImageLoadingLogging2)
    {
      v34 = MCLogCategoryDefault(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = uUIDString;
        v42 = 2112;
        v43 = v30;
        _os_log_impl(&dword_1A20FC000, v34, OS_LOG_TYPE_DEFAULT, "[MRUImageUtilities] resizedImage<%@> Result: %@", buf, 0x16u);
      }
    }

    CFRelease(v21);
    CFRelease(v29);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (CGSize)sizeFromSource:(CGImageSource *)source
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696E0A8];
  v11[0] = MEMORY[0x1E695E110];
  v3 = CGImageSourceCopyPropertiesAtIndex(source, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  integerValue = [v4 integerValue];
  integerValue2 = [v5 integerValue];

  v8 = integerValue;
  v9 = integerValue2;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize
{
  if (imageSize.width < imageSize.height)
  {
    imageSize.width = imageSize.height;
  }

  return vcvtmd_s64_f64(imageSize.width / size);
}

@end