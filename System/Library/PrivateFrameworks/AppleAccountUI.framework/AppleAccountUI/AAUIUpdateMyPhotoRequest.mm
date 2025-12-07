@interface AAUIUpdateMyPhotoRequest
+ (id)_downsampleImage:(id)image fromStartingQuality:(double)quality toEndingQuality:(double)endingQuality increment:(double)increment maxLength:(unint64_t)length;
+ (id)_fullScreen2ImageFromImage:(id)image cropRect:(id)rect fullScreenCropRect:(id *)cropRect;
- (AAUIUpdateMyPhotoRequest)initWithAccount:(id)account photo:(id)photo cropRect:(id)rect;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAUIUpdateMyPhotoRequest

- (AAUIUpdateMyPhotoRequest)initWithAccount:(id)account photo:(id)photo cropRect:(id)rect
{
  accountCopy = account;
  photoCopy = photo;
  rectCopy = rect;
  v15.receiver = self;
  v15.super_class = AAUIUpdateMyPhotoRequest;
  v12 = [(AAUIUpdateMyPhotoRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_photo, photo);
    objc_storeStrong(&v13->_cropRect, rect);
  }

  return v13;
}

- (id)urlString
{
  urlConfiguration = [MEMORY[0x1E698B9C0] urlConfiguration];
  updateMyPhotoURL = [urlConfiguration updateMyPhotoURL];

  return updateMyPhotoURL;
}

- (id)urlRequest
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AAUIUpdateMyPhotoRequest;
  urlRequest = [(AARequest *)&v27 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  [v4 setValue:@"text/plain" forHTTPHeaderField:@"Content-Type"];
  v5 = self->_cropRect;
  v6 = [AAUIUpdateMyPhotoRequest _downsampleImage:self->_photo fromStartingQuality:86016 toEndingQuality:1.0 increment:0.59 maxLength:0.2];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (v5)
    {
      photo = self->_photo;
      v26 = 0;
      monogramForCurrentAccount = [AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage:photo cropRect:v5 fullScreenCropRect:&v26];
      v10 = v26;
      v11 = v10;
      if (v10)
      {
        v11 = v10;

        v5 = v11;
      }
    }

    else
    {
      v12 = _AAUILogSystem(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest: Both photoData and cropRect are nil i.e photo is nil. Setting the picture as the default monogram.", buf, 2u);
      }

      v11 = objc_alloc_init(AAUIProfilePictureStore);
      monogramForCurrentAccount = [(AAUIProfilePictureStore *)v11 monogramForCurrentAccount];
      v5 = 0;
    }

    v7 = [AAUIUpdateMyPhotoRequest _downsampleImage:monogramForCurrentAccount fromStartingQuality:86016 toEndingQuality:1.0 increment:0.19 maxLength:0.2];
  }

  v13 = [v7 base64EncodedDataWithOptions:0];
  v14 = _AAUILogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
    *buf = 138412546;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest setting HTTPBody to base64 data of length %@ from photo data of length %@", buf, 0x16u);
  }

  [v4 setHTTPBody:v13];
  v17 = MEMORY[0x1E696AEC0];
  hTTPBody = [v4 HTTPBody];
  v19 = [v17 stringWithFormat:@"%lu", objc_msgSend(hTTPBody, "length")];

  [v4 setValue:v19 forHTTPHeaderField:@"Content-Length"];
  if (v7 && v5)
  {
    [(NSValue *)v5 CGRectValue];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu, %lu, %lu, %lu", v22, v23, v20, v21];
    [v4 setValue:v24 forHTTPHeaderField:@"X-MMe-Setup-Family-Photo"];
  }

  return v4;
}

+ (id)_downsampleImage:(id)image fromStartingQuality:(double)quality toEndingQuality:(double)endingQuality increment:(double)increment maxLength:(unint64_t)length
{
  v27 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (quality > endingQuality)
  {
    v13 = 0;
    *&v12 = 138412546;
    v22 = v12;
    do
    {
      v14 = v13;
      v13 = UIImageJPEGRepresentation(imageCopy, quality);

      v16 = _AAUILogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:quality];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
        *buf = v22;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest compressed image to quality %@ down to length %@", buf, 0x16u);
      }

      if ([v13 length] <= length)
      {
        break;
      }

      quality = quality - increment;
    }

    while (quality > endingQuality);
    v19 = [v13 length];
    if (v19 <= length)
    {
      if (v13)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v19 = [0 length];
  v13 = 0;
  if (v19 > length)
  {
LABEL_11:
  }

LABEL_12:
  v20 = _AAUILogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [AAUIUpdateMyPhotoRequest _downsampleImage:v20 fromStartingQuality:? toEndingQuality:? increment:? maxLength:?];
  }

  v13 = 0;
LABEL_15:

  return v13;
}

+ (id)_fullScreen2ImageFromImage:(id)image cropRect:(id)rect fullScreenCropRect:(id *)cropRect
{
  v97 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  rectCopy = rect;
  v9 = _AAUILogSystem(rectCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696B098];
    [imageCopy size];
    v11 = [v10 valueWithCGSize:?];
    *buf = 138412546;
    v94 = v11;
    v95 = 2112;
    v96 = rectCopy;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage: of size %@ cropRect: %@", buf, 0x16u);
  }

  if (rectCopy)
  {
    cGRectValue = [rectCopy CGRectValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    [imageCopy size];
    v18 = v21;
    cGRectValue = [imageCopy size];
    v20 = v22;
    v14 = 0.0;
    v16 = 0.0;
  }

  v23 = _AAUILogSystem(cGRectValue);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [MEMORY[0x1E696B098] valueWithCGRect:{v14, v16, v18, v20}];
    *buf = 138412290;
    v94 = v24;
    _os_log_impl(&dword_1C5355000, v23, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using importantArea %@", buf, 0xCu);
  }

  v26 = _AAUILogSystem(v25);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  v90 = v14;
  v91 = v18;
  v88 = v16;
  v89 = v20;
  if (v18 / v20 <= 0.666666667)
  {
    if (v27)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v18 / v20];
      *buf = 138412290;
      v94 = v51;
      _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage detected narrow importantAreaAspectRatio %@", buf, 0xCu);
    }

    v92 = 960.0 / v20;
    v53 = _AAUILogSystem(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v92];
      *buf = 138412290;
      v94 = v54;
      _os_log_impl(&dword_1C5355000, v53, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using scale %@", buf, 0xCu);
    }

    v55 = [imageCopy size];
    if (v20 * 0.666666667 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v20 * 0.666666667;
    }

    v50 = v14 - floor((v57 - v18) * 0.5);
    v58 = _AAUILogSystem(v55);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [MEMORY[0x1E696B098] valueWithCGRect:{v50, v16, v57, v20}];
      *buf = 138412290;
      v94 = v59;
      _os_log_impl(&dword_1C5355000, v58, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage got preliminary sourcePortionOfBaseImage %@", buf, 0xCu);
    }

    if (v50 < 0.0)
    {
      v61 = _AAUILogSystem(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, v16, v57, v20}];
        *buf = 138412290;
        v94 = v62;
        _os_log_impl(&dword_1C5355000, v61, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage left => %@", buf, 0xCu);
      }

      v50 = 0.0;
    }

    v63 = [imageCopy size];
    if (v57 + v50 > v64)
    {
      v65 = [imageCopy size];
      v50 = v66 - v57;
      v67 = _AAUILogSystem(v65);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [MEMORY[0x1E696B098] valueWithCGRect:{v50, v16, v57, v20}];
        *buf = 138412290;
        v94 = v68;
        _os_log_impl(&dword_1C5355000, v67, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage right => %@", buf, 0xCu);
      }
    }

    v47 = 960.0;
    v46 = floor(v57 * 960.0 / v20);
    v48 = _AAUILogSystem(v63);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 960.0;
      v69 = [MEMORY[0x1E696B098] valueWithCGSize:{v46, 960.0}];
      *buf = 138412290;
      v94 = v69;
      _os_log_impl(&dword_1C5355000, v48, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using contextSize %@", buf, 0xCu);
    }
  }

  else
  {
    if (v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:v18 / v20];
      *buf = 138412290;
      v94 = v28;
      _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage detected squat importantAreaAspectRatio %@", buf, 0xCu);
    }

    v92 = 640.0 / v18;
    v30 = _AAUILogSystem(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v92];
      *buf = 138412290;
      v94 = v31;
      _os_log_impl(&dword_1C5355000, v30, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using scale %@", buf, 0xCu);
    }

    v32 = [imageCopy size];
    if (v18 / 0.666666667 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v18 / 0.666666667;
    }

    v16 = v16 - floor((v34 - v20) * 0.5);
    v35 = _AAUILogSystem(v32);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [MEMORY[0x1E696B098] valueWithCGRect:{v14, v16, v18, v34}];
      *buf = 138412290;
      v94 = v36;
      _os_log_impl(&dword_1C5355000, v35, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage got preliminary sourcePortionOfBaseImage %@", buf, 0xCu);
    }

    if (v16 < 0.0)
    {
      v38 = _AAUILogSystem(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [MEMORY[0x1E696B098] valueWithCGRect:{v14, 0.0, v18, v34}];
        *buf = 138412290;
        v94 = v39;
        _os_log_impl(&dword_1C5355000, v38, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage top => %@", buf, 0xCu);
      }

      v16 = 0.0;
    }

    v40 = [imageCopy size];
    if (v34 + v16 > v41)
    {
      v42 = [imageCopy size];
      v16 = v43 - v34;
      v44 = _AAUILogSystem(v42);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [MEMORY[0x1E696B098] valueWithCGRect:{v14, v16, v18, v34}];
        *buf = 138412290;
        v94 = v45;
        _os_log_impl(&dword_1C5355000, v44, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage constrained sourcePortionOfBaseImage bottom => %@", buf, 0xCu);
      }
    }

    v46 = 640.0;
    v47 = floor(v34 * 640.0 / v18);
    v48 = _AAUILogSystem(v40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 640.0;
      v49 = [MEMORY[0x1E696B098] valueWithCGSize:{640.0, v47}];
      *buf = 138412290;
      v94 = v49;
      _os_log_impl(&dword_1C5355000, v48, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using contextSize %@", buf, 0xCu);
    }

    v50 = v14;
  }

  v70 = -(v50 * v92);
  [imageCopy size];
  v72 = v92 * v71;
  v73 = -(v16 * v92);
  v74 = [imageCopy size];
  v76 = v92 * v75;
  v77 = _AAUILogSystem(v74);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = [MEMORY[0x1E696B098] valueWithCGRect:{v70, v73, v72, v76}];
    *buf = 138412290;
    v94 = v78;
    _os_log_impl(&dword_1C5355000, v77, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage using drawRect %@", buf, 0xCu);
  }

  v99.width = v46;
  v99.height = v47;
  UIGraphicsBeginImageContext(v99);
  [imageCopy drawInRect:{v70, v73, v72, v76}];
  v79 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v81 = _AAUILogSystem(v80);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = MEMORY[0x1E696B098];
    [v79 size];
    v83 = [v82 valueWithCGSize:?];
    *buf = 138412290;
    v94 = v83;
    _os_log_impl(&dword_1C5355000, v81, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage created fullScreen2Image with size %@", buf, 0xCu);
  }

  if (rectCopy && cropRect)
  {
    v84 = [MEMORY[0x1E696B098] valueWithCGRect:{ceil((v90 - v50) * v92), ceil((v88 - v16) * v92), floor(v91 * v92), floor(v89 * v92)}];
    *cropRect = v84;
    v85 = _AAUILogSystem(v84);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *cropRect;
      *buf = 138412290;
      v94 = v86;
      _os_log_impl(&dword_1C5355000, v85, OS_LOG_TYPE_DEFAULT, "AAUIUpdateMyPhotoRequest _fullScreen2ImageFromImage created fullScreenCropRect %@", buf, 0xCu);
    }
  }

  return v79;
}

@end