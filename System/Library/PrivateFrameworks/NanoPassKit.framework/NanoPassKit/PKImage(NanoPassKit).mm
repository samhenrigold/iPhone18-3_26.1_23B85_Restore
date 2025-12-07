@interface PKImage(NanoPassKit)
- (id)_npkMemoryMappedImageWithPath:()NanoPassKit;
- (id)npkImageByMemoryMappingDataWithTemporaryFilePrefix:()NanoPassKit;
- (id)resizedImageWithSize:()NanoPassKit shouldCover:;
@end

@implementation PKImage(NanoPassKit)

- (id)npkImageByMemoryMappingDataWithTemporaryFilePrefix:()NanoPassKit
{
  values[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  imageHash = [self imageHash];
  fileSafeBase64Encoding = [imageHash fileSafeBase64Encoding];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v4, fileSafeBase64Encoding];

  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:v7];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:v9];

  v13 = pk_General_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (!v11)
  {
    if (v14)
    {
      v18 = pk_General_log(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: couldn't find existing CPBitmap image on disk at %@", buf, 0xCu);
      }
    }

LABEL_12:
    imageRef = [self imageRef];
    if (!imageRef)
    {
LABEL_21:
      v27 = pk_Payment_log(imageRef);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        v30 = pk_Payment_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v9;
          _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Failed to generate mapped image at:%@", buf, 0xCu);
        }
      }

      selfCopy = self;
      goto LABEL_26;
    }

    values[0] = imageRef;
    Default = CFAllocatorGetDefault();
    v21 = CFArrayCreate(Default, values, 1, MEMORY[0x277CBF128]);
    v22 = CPBitmapWriteImagesToPath();
    if (v22)
    {
      v23 = pk_General_log(v22);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v26 = pk_General_log(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v9;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Successfully wrote CPBitmap to %@", buf, 0xCu);
        }
      }

      imageRef = [self _npkMemoryMappedImageWithPath:v9];
      selfCopy = imageRef;
      if (v21)
      {
LABEL_19:
        CFRelease(v21);
      }
    }

    else
    {
      v32 = pk_Payment_log(0);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = pk_Payment_log(imageRef);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v36 = v9;
          v37 = 2112;
          v38 = 0;
          _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Unable to write CPBitmap to %@: %@", buf, 0x16u);
        }
      }

      selfCopy = 0;
      if (v21)
      {
        goto LABEL_19;
      }
    }

    if (selfCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Found existing CPBitmap image on disk at %@", buf, 0xCu);
    }
  }

  selfCopy = [self _npkMemoryMappedImageWithPath:v9];
  if (!selfCopy)
  {
    goto LABEL_12;
  }

LABEL_26:

  return selfCopy;
}

- (id)_npkMemoryMappedImageWithPath:()NanoPassKit
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ImagesFromPath = CPBitmapCreateImagesFromPath();
  if (ImagesFromPath)
  {
    v6 = ImagesFromPath;
    Count = CFArrayGetCount(ImagesFromPath);
    if (Count == 1)
    {
      v8 = pk_General_log(1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v11 = pk_General_log(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v4;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: ImageMemoryMap: Successfully read CPBitmap from %@", buf, 0xCu);
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v13 = objc_alloc(MEMORY[0x277D37F10]);
      [self scale];
      v15 = [v13 initWithCGImage:ValueAtIndex scale:objc_msgSend(self orientation:{"orientation"), v14}];
    }

    else
    {
      v20 = pk_Payment_log(Count);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v23 = pk_Payment_log(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v4;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Array of bitmaps read from %@ is not of size 1", buf, 0xCu);
        }
      }

      v15 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v16 = pk_Payment_log(0);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: ImageMemoryMap: Unable to read CPBitmap from %@: %@", buf, 0x16u);
      }
    }

    v15 = 0;
  }

  return v15;
}

- (id)resizedImageWithSize:()NanoPassKit shouldCover:
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  [self size];
  if (a5)
  {
    PKSizeAspectFitToCover();
  }

  else
  {
    PKSizeAspectFit();
  }

  v12 = v10;
  v13 = v11;
  v14 = [self size];
  if (v12 >= v15 || (v14 = [self size], v13 >= v16))
  {
    v26 = pk_General_log(v14);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      v29 = pk_General_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        [self size];
        v31 = v30;
        [self size];
        v34 = 138413314;
        selfCopy3 = self;
        v36 = 2048;
        v37 = v31;
        v38 = 2048;
        v39 = v32;
        v40 = 2048;
        v41 = a2;
        v42 = 2048;
        v43 = a3;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Resizing image %@ from %f x %f to fit/cover %f x %f would upscale, ignoring", &v34, 0x34u);
      }
    }

    selfCopy2 = self;
  }

  else
  {
    v17 = [MEMORY[0x277D37F20] constraintsWithMaxSize:{v12, v13}];
    v18 = pk_General_log(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v21 = pk_General_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [self size];
        v23 = v22;
        [self size];
        v34 = 138413826;
        selfCopy3 = self;
        v36 = 2048;
        v37 = v23;
        v38 = 2048;
        v39 = v24;
        v40 = 2048;
        v41 = v12;
        v42 = 2048;
        v43 = v13;
        v44 = 2048;
        v45 = a2;
        v46 = 2048;
        v47 = a3;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Resizing image %@ from %f x %f to %f x %f to fit/cover %f x %f", &v34, 0x48u);
      }
    }

    selfCopy2 = [v17 resizedImage:self];
  }

  objc_autoreleasePoolPop(v9);

  return selfCopy2;
}

@end