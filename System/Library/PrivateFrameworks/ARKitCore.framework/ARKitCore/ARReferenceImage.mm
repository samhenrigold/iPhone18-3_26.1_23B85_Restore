@interface ARReferenceImage
+ (NSSet)referenceImagesInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle;
+ (id)referenceImagesInGroupNamed:(id)named catalog:(id)catalog;
+ (id)referenceImagesInGroupNamed:(id)named catalogName:(id)name bundle:(id)bundle;
+ (id)referenceImagesInGroupNamed:(id)named catalogURL:(id)l;
- (ARReferenceImage)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation physicalWidth:(double)width addPadding:(BOOL)padding;
- (ARReferenceImage)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth;
- (ARReferenceImage)initWithCIImage:(id)image orientation:(unsigned int)orientation physicalWidth:(double)width alphaInfo:(unsigned int *)info addPadding:(BOOL)padding;
- (ARReferenceImage)initWithCoder:(id)coder;
- (ARReferenceImage)initWithIdentifier:(id)identifier;
- (ARReferenceImage)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth;
- (ARReferenceImage)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation physicalWidth:(double)width addPadding:(BOOL)padding;
- (BOOL)isEqual:(id)equal;
- (CGSize)imageSize;
- (CGSize)physicalSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDebugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)estimateQualityWithCompletionHandler:(id)handler;
- (void)validateWithCompletionHandler:(void *)completionHandler;
@end

@implementation ARReferenceImage

- (ARReferenceImage)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation physicalWidth:(double)width addPadding:(BOOL)padding
{
  paddingCopy = padding;
  v8 = *&orientation;
  AlphaInfo = CGImageGetAlphaInfo(image);
  v11 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:image];
  v12 = [(ARReferenceImage *)self initWithCIImage:v11 orientation:v8 physicalWidth:&AlphaInfo alphaInfo:paddingCopy addPadding:width];

  return v12;
}

- (ARReferenceImage)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation physicalWidth:(double)width addPadding:(BOOL)padding
{
  paddingCopy = padding;
  v8 = *&orientation;
  v10 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:buffer];
  v11 = [(ARReferenceImage *)self initWithCIImage:v10 orientation:v8 physicalWidth:0 alphaInfo:paddingCopy addPadding:width];

  return v11;
}

- (ARReferenceImage)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth
{
  v6 = *&orientation;
  AlphaInfo = CGImageGetAlphaInfo(image);
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:image];
  v10 = [(ARReferenceImage *)self initWithCIImage:v9 orientation:v6 physicalWidth:&AlphaInfo alphaInfo:0 addPadding:physicalWidth];

  return v10;
}

- (ARReferenceImage)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation physicalWidth:(CGFloat)physicalWidth
{
  v6 = *&orientation;
  v8 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:pixelBuffer];
  v9 = [(ARReferenceImage *)self initWithCIImage:v8 orientation:v6 physicalWidth:0 alphaInfo:0 addPadding:physicalWidth];

  return v9;
}

- (ARReferenceImage)initWithCIImage:(id)image orientation:(unsigned int)orientation physicalWidth:(double)width alphaInfo:(unsigned int *)info addPadding:(BOOL)padding
{
  paddingCopy = padding;
  v113 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v108.receiver = self;
  v108.super_class = ARReferenceImage;
  v13 = [(ARReferenceImage *)&v108 init];
  if (v13)
  {
    p_pixelBufferOut = &pixelBufferOut;
    if (info)
    {
      v15 = *info;
      if (*info == 6)
      {
        v16 = 0;
      }

      else
      {
        v16 = &pixelBufferOut;
      }

      if (v15 == 5)
      {
        v16 = 0;
      }

      if (v15)
      {
        p_pixelBufferOut = v16;
      }

      else
      {
        p_pixelBufferOut = 0;
      }
    }

    pixelBufferOut = 0;
    pixelBuffer = 0;
    v17 = ARCreateDownScaledGrayscaleImageAndMask(imageCopy, 0x280uLL, @"ARReferenceImage", &pixelBuffer, p_pixelBufferOut);
    if (v17)
    {
      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v18 = ARShouldUseLogTypeError_internalOSVersion_35;
      v19 = _ARLogGeneral_26(v17);
      v20 = v19;
      if (v18 == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v22;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v23 = "%{public}@ <%p>: Could not create pixelbuffer and alpha mask";
          v24 = v20;
          v25 = OS_LOG_TYPE_ERROR;
LABEL_21:
          _os_log_impl(&dword_1C241C000, v24, v25, v23, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v22 = NSStringFromClass(v27);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v22;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v23 = "Error: %{public}@ <%p>: Could not create pixelbuffer and alpha mask";
        v24 = v20;
        v25 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

      goto LABEL_98;
    }

    v26 = CVPixelBufferGetWidth(pixelBuffer) < 0x64 || CVPixelBufferGetHeight(pixelBuffer) < 0x64;
    [imageCopy extent];
    if (v28 == CVPixelBufferGetWidth(pixelBuffer))
    {
      [imageCopy extent];
      v30 = v29 != CVPixelBufferGetHeight(pixelBuffer) || paddingCopy;
      if ((v30 & v26 & 1) == 0)
      {
LABEL_76:
        v74 = ARCorrectCVPixelBufferOrientation(pixelBuffer, orientation, &v13->_pixelBuffer);
        if (!v74)
        {
LABEL_86:
          if (!pixelBufferOut)
          {
            goto LABEL_97;
          }

          v84 = ARCorrectCVPixelBufferOrientation(pixelBufferOut, orientation, &v13->_alphaMask);
          if (!v84)
          {
            goto LABEL_97;
          }

          if (ARShouldUseLogTypeError_onceToken_35 != -1)
          {
            [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
          }

          v85 = ARShouldUseLogTypeError_internalOSVersion_35;
          v86 = _ARLogGeneral_26(v84);
          v87 = v86;
          if (v85 == 1)
          {
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v88 = objc_opt_class();
              v89 = NSStringFromClass(v88);
              LODWORD(buf.data) = 138543618;
              *(&buf.data + 4) = v89;
              WORD2(buf.height) = 2048;
              *(&buf.height + 6) = v13;
              v90 = "%{public}@ <%p>: Could not correct orientation of alpha mask";
              v91 = v87;
              v92 = OS_LOG_TYPE_ERROR;
LABEL_95:
              _os_log_impl(&dword_1C241C000, v91, v92, v90, &buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v93 = objc_opt_class();
            v89 = NSStringFromClass(v93);
            LODWORD(buf.data) = 138543618;
            *(&buf.data + 4) = v89;
            WORD2(buf.height) = 2048;
            *(&buf.height + 6) = v13;
            v90 = "Error: %{public}@ <%p>: Could not correct orientation of alpha mask";
            v91 = v87;
            v92 = OS_LOG_TYPE_INFO;
            goto LABEL_95;
          }

LABEL_97:
          CVPixelBufferRelease(pixelBuffer);
          CVPixelBufferRelease(pixelBufferOut);
          [imageCopy extent];
          v13->_physicalSize.width = width;
          v13->_physicalSize.height = v95 / v94 * width;
          v96 = [objc_opt_class() referenceImageUUIDForPixelBuffer:{-[ARReferenceImage pixelBuffer](v13, "pixelBuffer")}];
          identifier = v13->_identifier;
          v13->_identifier = v96;

          v13->_estimatedQuality = -1.0;
          v98 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v99 = dispatch_queue_create("com.apple.arkit.arreference.verificationqueue", v98);
          verificationQueue = v13->_verificationQueue;
          v13->_verificationQueue = v99;

          v101 = dispatch_semaphore_create(1);
          verificationQueueSemaphore = v13->_verificationQueueSemaphore;
          v13->_verificationQueueSemaphore = v101;

          resourceGroupName = v13->_resourceGroupName;
          v13->_resourceGroupName = 0;

          goto LABEL_98;
        }

        if (ARShouldUseLogTypeError_onceToken_35 != -1)
        {
          [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
        }

        v75 = ARShouldUseLogTypeError_internalOSVersion_35;
        v76 = _ARLogGeneral_26(v74);
        v77 = v76;
        if (v75 == 1)
        {
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            LODWORD(buf.data) = 138543618;
            *(&buf.data + 4) = v79;
            WORD2(buf.height) = 2048;
            *(&buf.height + 6) = v13;
            v80 = "%{public}@ <%p>: Could not correct orientation of pixelbuffer";
            v81 = v77;
            v82 = OS_LOG_TYPE_ERROR;
LABEL_84:
            _os_log_impl(&dword_1C241C000, v81, v82, v80, &buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v83 = objc_opt_class();
          v79 = NSStringFromClass(v83);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v79;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v80 = "Error: %{public}@ <%p>: Could not correct orientation of pixelbuffer";
          v81 = v77;
          v82 = OS_LOG_TYPE_INFO;
          goto LABEL_84;
        }

        goto LABEL_86;
      }
    }

    else if (!v26)
    {
      goto LABEL_76;
    }

    if (pixelBufferOut)
    {
LABEL_53:
      *v109 = 0;
      v54 = ARCreatePixelBufferWithPaddingToFillMinimumDimension(pixelBuffer, 0x64uLL, 0, v109);
      if (!v54)
      {
        CVPixelBufferRelease(pixelBuffer);
        pixelBuffer = *v109;
        goto LABEL_64;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v55 = ARShouldUseLogTypeError_internalOSVersion_35;
      v56 = _ARLogGeneral_26(v54);
      v57 = v56;
      if (v55 == 1)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v59;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v60 = "%{public}@ <%p>: Could not add padding to pixel buffer";
          v61 = v57;
          v62 = OS_LOG_TYPE_ERROR;
LABEL_62:
          _os_log_impl(&dword_1C241C000, v61, v62, v60, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v59 = NSStringFromClass(v63);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v59;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v60 = "Error: %{public}@ <%p>: Could not add padding to pixel buffer";
        v61 = v57;
        v62 = OS_LOG_TYPE_INFO;
        goto LABEL_62;
      }

LABEL_64:
      if (!pixelBufferOut)
      {
        goto LABEL_76;
      }

      v105 = 0;
      v64 = ARCreatePixelBufferWithPaddingToFillMinimumDimension(pixelBufferOut, 0x64uLL, 0, &v105);
      if (!v64)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = v105;
        goto LABEL_76;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v65 = ARShouldUseLogTypeError_internalOSVersion_35;
      v66 = _ARLogGeneral_26(v64);
      v67 = v66;
      if (v65 == 1)
      {
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v69;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = v13;
          v70 = "%{public}@ <%p>: Could not add padding to alpha mask";
          v71 = v67;
          v72 = OS_LOG_TYPE_ERROR;
LABEL_74:
          _os_log_impl(&dword_1C241C000, v71, v72, v70, &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v69 = NSStringFromClass(v73);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v69;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v70 = "Error: %{public}@ <%p>: Could not add padding to alpha mask";
        v71 = v67;
        v72 = OS_LOG_TYPE_INFO;
        goto LABEL_74;
      }

      goto LABEL_76;
    }

    v31 = *MEMORY[0x1E695E480];
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v34 = CVPixelBufferCreate(v31, Width, Height, 0x4C303038u, 0, &pixelBufferOut);
    if (!v34)
    {
LABEL_42:
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      memset(&buf, 0, sizeof(buf));
      buf.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
      buf.height = CVPixelBufferGetHeight(pixelBufferOut);
      buf.width = CVPixelBufferGetWidth(pixelBufferOut);
      buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v44 = vImageOverwriteChannelsWithScalar_Planar8(0xFFu, &buf, 0);
      if (!v44)
      {
LABEL_52:
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        goto LABEL_53;
      }

      if (ARShouldUseLogTypeError_onceToken_35 != -1)
      {
        [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
      }

      v45 = ARShouldUseLogTypeError_internalOSVersion_35;
      v46 = _ARLogGeneral_26(v44);
      v47 = v46;
      if (v45 == 1)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          *v109 = 138543618;
          *&v109[4] = v49;
          v110 = 2048;
          v111 = v13;
          v50 = "%{public}@ <%p>: Could not fill buffer";
          v51 = v47;
          v52 = OS_LOG_TYPE_ERROR;
LABEL_50:
          _os_log_impl(&dword_1C241C000, v51, v52, v50, v109, 0x16u);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v49 = NSStringFromClass(v53);
        *v109 = 138543618;
        *&v109[4] = v49;
        v110 = 2048;
        v111 = v13;
        v50 = "Error: %{public}@ <%p>: Could not fill buffer";
        v51 = v47;
        v52 = OS_LOG_TYPE_INFO;
        goto LABEL_50;
      }

      goto LABEL_52;
    }

    if (ARShouldUseLogTypeError_onceToken_35 != -1)
    {
      [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_35;
    v36 = _ARLogGeneral_26(v34);
    v37 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v39;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = v13;
        v40 = "%{public}@ <%p>: Could not create pixelbuffer";
        v41 = v37;
        v42 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v41, v42, v40, &buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v39 = NSStringFromClass(v43);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v39;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = v13;
      v40 = "Error: %{public}@ <%p>: Could not create pixelbuffer";
      v41 = v37;
      v42 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_98:

  return v13;
}

- (ARReferenceImage)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ARReferenceImage;
  v6 = [(ARReferenceImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

+ (id)referenceImagesInGroupNamed:(id)named catalog:(id)catalog
{
  v41 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v5 = [catalog namedRecognitionGroupWithName:?];
  v6 = v5;
  if (!v5)
  {
    if (ARShouldUseLogTypeError_onceToken_35 != -1)
    {
      +[ARReferenceImage referenceImagesInGroupNamed:catalog:];
    }

    v26 = ARShouldUseLogTypeError_internalOSVersion_35;
    v27 = _ARLogGeneral_26(v5);
    namedRecognitionImageImageList = v27;
    if (v26 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = namedCopy;
        v28 = "No resource group with name %{public}@ found";
        v29 = namedRecognitionImageImageList;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v40 = namedCopy;
      v28 = "Error: No resource group with name %{public}@ found";
      v29 = namedRecognitionImageImageList;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v32 = 0;
    goto LABEL_35;
  }

  v32 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  namedRecognitionImageImageList = [v6 namedRecognitionImageImageList];
  v8 = [namedRecognitionImageImageList countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = v8;
  v10 = *v35;
  do
  {
    v11 = 0;
    do
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(namedRecognitionImageImageList);
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        image = [v6 recognitionImageWithName:v12];
        v14 = image;
        if (image)
        {
          image = [image image];
          if (image)
          {
            if (objc_opt_respondsToSelector())
            {
              v15 = [v14 valueForKey:@"exifOrientation"];
              intValue = [v15 intValue];
            }

            else
            {
              intValue = 1;
            }

            v23 = [ARReferenceImage alloc];
            image2 = [v14 image];
            [v14 physicalSizeInMeters];
            v19 = [(ARReferenceImage *)v23 initWithCGImage:image2 orientation:intValue physicalWidth:1 addPadding:?];
            name = [v14 name];
            [(ARReferenceImage *)v19 setName:name];

            [(ARReferenceImage *)v19 setResourceGroupName:namedCopy];
            [v32 addObject:v19];
            goto LABEL_22;
          }
        }

        if (ARShouldUseLogTypeError_onceToken_35 != -1)
        {
          [ARReferenceImage initWithCIImage:orientation:physicalWidth:alphaInfo:addPadding:];
        }

        v17 = ARShouldUseLogTypeError_internalOSVersion_35;
        v18 = _ARLogGeneral_26(image);
        v19 = v18;
        if (v17 == 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            p_super = &v19->super;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = "Invalid reference image in catalog";
            goto LABEL_19;
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          p_super = &v19->super;
          v21 = OS_LOG_TYPE_INFO;
          v22 = "Error: Invalid reference image in catalog";
LABEL_19:
          _os_log_impl(&dword_1C241C000, p_super, v21, v22, buf, 2u);
        }

LABEL_22:
      }

      ++v11;
    }

    while (v9 != v11);
    v9 = [namedRecognitionImageImageList countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v9);
LABEL_35:

  return v32;
}

+ (NSSet)referenceImagesInGroupNamed:(NSString *)name bundle:(NSBundle *)bundle
{
  v5 = bundle;
  v6 = name;
  v7 = [objc_opt_class() referenceImagesInGroupNamed:v6 catalogName:@"Assets" bundle:v5];

  return v7;
}

+ (id)referenceImagesInGroupNamed:(id)named catalogName:(id)name bundle:(id)bundle
{
  v23 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  nameCopy = name;
  bundleCopy = bundle;
  v16 = 0;
  v10 = [objc_alloc(MEMORY[0x1E6999368]) initWithName:nameCopy fromBundle:bundleCopy error:&v16];
  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = _ARLogGeneral_26(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v18 = nameCopy;
      v19 = 2114;
      v20 = bundleCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "Error while opening catalog named %{public}@ in bundle %{public}@: %@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [objc_opt_class() referenceImagesInGroupNamed:namedCopy catalog:v10];
  }

  return v14;
}

+ (id)referenceImagesInGroupNamed:(id)named catalogURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  lCopy = l;
  v13 = 0;
  v7 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:lCopy error:&v13];
  v8 = v13;
  v9 = v8;
  if (v8)
  {
    v10 = _ARLogGeneral_26(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v15 = namedCopy;
      v16 = 2114;
      v17 = lCopy;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "Error while opening catalog named %{public}@ from URL %{public}@: %@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v11 = [objc_opt_class() referenceImagesInGroupNamed:namedCopy catalog:v7];
  }

  return v11;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CVPixelBufferRelease(self->_alphaMask);
  v3.receiver = self;
  v3.super_class = ARReferenceImage;
  [(ARReferenceImage *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(ARReferenceImage *)self name];
  [(ARReferenceImage *)self physicalSize];
  v8 = v7;
  [(ARReferenceImage *)self physicalSize];
  v10 = [v3 stringWithFormat:@"<%@: %p name=%@ physicalSize=(%.03f, %.03f)>", v5, self, name, v8, v9];

  return v10;
}

- (id)shortDebugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(ARReferenceImage *)self name];
  [(ARReferenceImage *)self physicalSize];
  v6 = v5;
  [(ARReferenceImage *)self physicalSize];
  v8 = [v3 stringWithFormat:@"<name=%@, physicalSize=(%.03f, %.03f)>", name, v6, v7];

  return v8;
}

- (CGSize)imageSize
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    identifier2 = [(ARReferenceImage *)self identifier];
    if ([identifier isEqual:identifier2])
    {
      [v5 physicalSize];
      v9 = v8;
      v11 = v10;
      [(ARReferenceImage *)self physicalSize];
      v14 = v11 == v13 && v9 == v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  [(ARReferenceImage *)self physicalSize];
  v5[10] = v6;
  v5[11] = v7;
  name = [(ARReferenceImage *)self name];
  v9 = [name copyWithZone:zone];
  v10 = v5[3];
  v5[3] = v9;

  v5[7] = CVPixelBufferRetain(self->_pixelBuffer);
  v5[8] = CVPixelBufferRetain(self->_alphaMask);
  identifier = [(ARReferenceImage *)self identifier];
  v12 = [identifier copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  [(ARReferenceImage *)self estimatedQuality];
  v5[5] = v14;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(ARReferenceImage *)self physicalSize];
  [coderCopy encodeSize:@"physicalSize" forKey:?];
  name = [(ARReferenceImage *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(ARReferenceImage *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [(ARReferenceImage *)self estimatedQuality];
  [coderCopy encodeDouble:@"estimatedQuality" forKey:?];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[ARReferenceImage pixelBuffer](self, "pixelBuffer")}];
  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"pixelbuffer"];
  }
}

- (ARReferenceImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ARReferenceImage;
  v5 = [(ARReferenceImage *)&v15 init];
  if (v5)
  {
    [coderCopy decodeSizeForKey:@"physicalSize"];
    v5->_physicalSize.width = v6;
    v5->_physicalSize.height = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    [coderCopy decodeDoubleForKey:@"estimatedQuality"];
    v5->_estimatedQuality = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelbuffer"];
    v5->_pixelBuffer = ARPixelBufferWithCIImage(v13);
  }

  return v5;
}

- (void)validateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  cachedVerificationError = [(ARReferenceImage *)self cachedVerificationError];

  if (cachedVerificationError)
  {
    if (v4)
    {
      cachedVerificationError2 = [(ARReferenceImage *)self cachedVerificationError];
      error = [cachedVerificationError2 error];
      v4[2](v4, error);
    }
  }

  else
  {
    dispatch_semaphore_wait(self->_verificationQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    verificationQueue = self->_verificationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__ARReferenceImage_validateWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E817CCA0;
    v9[4] = self;
    v10 = v4;
    dispatch_async(verificationQueue, v9);
  }
}

void __50__ARReferenceImage_validateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [ARODTHandleManager verifyReferenceImage:*(a1 + 32)];
  v15 = v2;
  v16 = 0;
  v5 = *(a1 + 32);
  v14 = v3;
  [ARODTHandleManager accumulateReferenceImageErrorsForResult:v4 refImage:v5 objectID:0 pReferenceImageMap:&v15 pFailedReferenceImageNames:&v14 pUserErrorType:&v16];
  v6 = v15;

  v7 = v14;
  v8 = objc_opt_new();
  [*(a1 + 32) setCachedVerificationError:v8];

  v9 = [ARODTHandleManager handleAccumulatedErrorType:v16 failedReferenceImageNames:v7];
  v10 = [*(a1 + 32) cachedVerificationError];
  [v10 setError:v9];

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [*(a1 + 32) cachedVerificationError];
    v13 = [v12 error];
    (*(v11 + 16))(v11, v13);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
}

- (void)estimateQualityWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v8 = objc_opt_new();
    v4 = ARKitCoreBundle(v8);
    v5 = [v4 localizedStringForKey:@"Image detection quality estimation could not be performed" value:&stru_1F4208A80 table:@"Localizable"];
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SPI has been deprecated."];
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.arkit.error" code:1003 userInfo:v8];
    handlerCopy[2](handlerCopy, v7, -1.0);
  }
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end