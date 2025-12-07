@interface INImageFilePersistence
- (BOOL)canStoreImage:(id)image;
- (INImageFilePersistence)init;
- (NSString)serviceIdentifier;
- (id)_deleteItemAtFilePath:(id)path;
- (id)_filePathForImageWithFileName:(id)name;
- (id)filePathForImageWithIdentifier:(id)identifier error:(id *)error;
- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error;
- (void)purgeExpiredImagesInEphemeralStore:(BOOL)store;
- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation INImageFilePersistence

- (INImageFilePersistence)init
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = INImageFilePersistence;
  v2 = [(INImageFilePersistence *)&v5 init];
  if (v2)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    [(INImageFilePersistence *)v2 _setSupportedClasses:v3];
  }

  return v2;
}

- (NSString)serviceIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"com.apple.intents.%@", v4];

  return v5;
}

- (id)_deleteItemAtFilePath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[INImageFilePersistence _deleteItemAtFilePath:]";
      v16 = 2112;
      v17 = pathCopy;
      _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Successfully deleted image data at file path %@", buf, 0x16u);
    }
  }

  else if (!v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13 = @"Could not find image";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [v8 errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v9];
  }

  return v6;
}

- (id)_filePathForImageWithFileName:(id)name
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = nameCopy;
  v6 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(1);
  v7 = [v6 stringByAppendingPathComponent:v5];

  if (v7)
  {
    [v4 addObject:v7];
  }

  v8 = v5;
  v9 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(2);
  v10 = [v9 stringByAppendingPathComponent:v8];

  if (v10)
  {
    [v4 addObject:v10];
  }

  if (![v4 count])
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[INImageFilePersistence _filePathForImageWithFileName:]";
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s No possible file paths for image with file name %@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v23 = v7;
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [defaultManager fileExistsAtPath:v17];

        if (v19)
        {
          v21 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v29 = "[INImageFilePersistence _filePathForImageWithFileName:]";
            v30 = 2112;
            v31 = v8;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Found image data for file name %@ at file path %@", buf, 0x20u);
          }

          v20 = v17;
          goto LABEL_20;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v20 = 0;
LABEL_20:
    v7 = v23;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [identifier stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
  v8 = [v7 stringByReplacingOccurrencesOfString:@".." withString:&stru_1F01E0850];

  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[INImageFilePersistence purgeImageWithIdentifier:completion:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Attempting to purge image with identifier %@ from file persistence", &v12, 0x16u);
  }

  v10 = [(INImageFilePersistence *)self _filePathForImageWithFileName:v8];
  v11 = [(INImageFilePersistence *)self _deleteItemAtFilePath:v10];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [identifierCopy stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F01E0850];
    v9 = [v8 stringByReplacingOccurrencesOfString:@".." withString:&stru_1F01E0850];

    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Attempting to retrieve image with identifier %@ using file persistence", buf, 0x16u);
    }

    v11 = [(INImageFilePersistence *)self _filePathForImageWithFileName:v9];
    if (v11)
    {
      v34 = 0;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v11 options:1 error:&v34];
      v13 = v34;
      if (v13)
      {
        v14 = v13;
        v15 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v36 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
          v37 = 2112;
          v38 = v14;
          v39 = 2112;
          v40 = v9;
          v41 = 2112;
          v42 = v11;
          _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Encountered error %@ when reading image data for identifier %@ at file path %@", buf, 0x2Au);
        }

        v16 = 0;
        v17 = 1;
      }

      else if (v12)
      {
        pathExtension = [v9 pathExtension];
        v24 = [pathExtension isEqualToString:@"png"];

        if (v24)
        {
          v22 = [INImage imageWithImageData:v12];
          v25 = _INImageSizeProviderClass();
          if (v25)
          {
            [v25 imageSizeForImage:v22];
            [v22 _setImageSize:?];
          }

          v16 = 0;
        }

        else
        {
          v26 = MEMORY[0x1E696ACD0];
          v27 = MEMORY[0x1E695DFD8];
          v28 = +[INImage _classesInCluster];
          v29 = [v27 setWithArray:v28];
          v33 = 0;
          v30 = [v26 unarchivedObjectOfClasses:v29 fromData:v12 error:&v33];
          v16 = v33;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          v22 = v31;
          if (v16)
          {
            v32 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v36 = "[INImageFilePersistence retrieveImageWithIdentifier:completion:]";
              v37 = 2112;
              v38 = v16;
              v39 = 2112;
              v40 = v9;
              v41 = 2112;
              v42 = v11;
              _os_log_error_impl(&dword_18E991000, v32, OS_LOG_TYPE_ERROR, "%s Encountered error %@ when unarchiving image data for identifier %@ at file path %@", buf, 0x2Au);
            }
          }
        }

        v14 = 0;
        if (v22)
        {
          v21 = 0;
LABEL_18:
          completionCopy[2](completionCopy, v22, v21);

          goto LABEL_19;
        }

        v17 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v14 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v12 = 0;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image with identifier %@ from storage service %@", v9, self];
    [dictionary setObject:v19 forKey:*MEMORY[0x1E696A578]];

    if ((v17 & 1) != 0 || v16)
    {
      if (v17)
      {
        v20 = v14;
      }

      else
      {
        v20 = v16;
      }

      [dictionary setObject:v20 forKey:*MEMORY[0x1E696AA08]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:dictionary];

    v22 = 0;
    goto LABEL_18;
  }

  v9 = identifierCopy;
LABEL_19:
}

- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error
{
  scaledCopy = scaled;
  v99[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (![(INImageFilePersistence *)self canStoreImage:imageCopy])
  {
    if (!error)
    {
      v30 = 0;
      goto LABEL_54;
    }

    v21 = MEMORY[0x1E696ABC0];
    v98 = *MEMORY[0x1E696A578];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    _uri = NSStringFromClass(v23);
    v24 = [v22 stringWithFormat:@"Image class %@ not supported by store", _uri];
    v99[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    *error = [v21 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v25];

    goto LABEL_32;
  }

  [(INImageFilePersistence *)self purgeExpiredImagesInEphemeralStore:0];
  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
    v96 = 2112;
    v97 = imageCopy;
    _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Attempting to store image %@ using file persistence", buf, 0x16u);
  }

  _imageData = [(_INDataImage *)imageCopy _imageData];

  if (_imageData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = imageCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    if (v15)
    {
      v16 = v15;
      v17 = [_INDataImage alloc];
      _imageData2 = [(_INDataImage *)imageCopy _imageData];
      _uri = [(_INDataImage *)v17 initWithImageData:_imageData2];

      [(INImage *)imageCopy _preferredScaledSize];
      [(INImage *)_uri _setPreferredScaledSize:?];
      if (scaledCopy)
      {
LABEL_10:
        _in_downscaledImageForFilePersistence = [(INImage *)_uri _in_downscaledImageForFilePersistence];
LABEL_35:
        v51 = _in_downscaledImageForFilePersistence;
        _imageData3 = [(_INDataImage *)_in_downscaledImageForFilePersistence _imageData];
        if (!_imageData3 && scaledCopy)
        {
          v53 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
            v96 = 2112;
            v97 = _uri;
            _os_log_error_impl(&dword_18E991000, v53, OS_LOG_TYPE_ERROR, "%s No scaled image data, falling back to unscaled data image: %@", buf, 0x16u);
          }

          _imageData3 = [(_INDataImage *)_uri _imageData];
        }

        if (_imageData3)
        {
          v89 = 0;
          v54 = [_imageData3 _in_writeDataToPathForImage:_uri storeType:type error:&v89];
          v55 = v89;
          if (v54)
          {
            v56 = v54;
            v30 = v56;
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          errorCopy = error;
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v64 = MEMORY[0x1E696AEC0];
          v65 = [(_INDataImage *)imageCopy description];
          v66 = [v64 stringWithFormat:@"Failed to store image %@ in service %@", v65, self];
          [dictionary setObject:v66 forKey:*MEMORY[0x1E696A578]];

          if (v55)
          {
            [dictionary setObject:v55 forKey:*MEMORY[0x1E696AA08]];
          }

          if (errorCopy)
          {
            *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:dictionary];
          }

          v56 = 0;
        }

        else
        {
          if (!error)
          {
            v30 = 0;
            goto LABEL_52;
          }

          v57 = MEMORY[0x1E696ABC0];
          v92 = *MEMORY[0x1E696A578];
          errorCopy2 = error;
          v59 = MEMORY[0x1E696AEC0];
          v55 = [(_INDataImage *)imageCopy description];
          v56 = [v59 stringWithFormat:@"Failed to store image %@ in service %@", v55, self];
          v93 = v56;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v61 = [v57 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v60];
          *errorCopy2 = v61;
        }

        v30 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      _uri = 0;
      if (scaledCopy)
      {
        goto LABEL_10;
      }
    }

    _in_downscaledImageForFilePersistence = _uri;
    goto LABEL_35;
  }

  _uri = [(INImage *)imageCopy _uri];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _sandboxExtensionData = [(INImage *)imageCopy _sandboxExtensionData];
    if (_sandboxExtensionData)
    {
      v27 = _sandboxExtensionData;
      startAccessingSecurityScopedResource = [(_INDataImage *)_uri startAccessingSecurityScopedResource];

      v29 = 1;
      if (!_uri)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  v29 = 0;
  startAccessingSecurityScopedResource = 1;
  if (_uri)
  {
LABEL_19:
    if (([(_INDataImage *)_uri isFileURL]& startAccessingSecurityScopedResource) != 1)
    {
      goto LABEL_28;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [(_INDataImage *)_uri path];
    v32 = v86 = error;
    v33 = [defaultManager fileExistsAtPath:v32];

    error = v86;
    if (!v33)
    {
      goto LABEL_28;
    }

    v34 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
      v96 = 2112;
      v97 = imageCopy;
      _os_log_impl(&dword_18E991000, v34, OS_LOG_TYPE_INFO, "%s Copying file URL image to intents directory: %@", buf, 0x16u);
    }

    v35 = [(INImage *)imageCopy _in_writeableFilePersistenceConfigurationForStoreType:type];
    filePath = [v35 filePath];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v38 = [defaultManager2 fileExistsAtPath:filePath];

    if (!v38)
    {
      goto LABEL_63;
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    filePathURL = [(_INDataImage *)_uri filePathURL];
    absoluteString = [filePathURL absoluteString];
    v42 = [defaultManager3 contentsEqualAtPath:filePath andPath:absoluteString];

    v43 = INSiriLogContextIntents;
    v44 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
    if (v42)
    {
      if (v44)
      {
        *buf = 136315394;
        v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v96 = 2112;
        v97 = imageCopy;
        _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is the same at destination path: %@, not copying (but updating modified date)", buf, 0x16u);
      }

      v45 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(filePath);
LABEL_71:
      v70 = v86;
LABEL_74:
      v82 = INSiriLogContextIntents;
      v73 = 1;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v96 = 2112;
        v97 = filePath;
        _os_log_impl(&dword_18E991000, v82, OS_LOG_TYPE_INFO, "%s URL image now available at file path: %@", buf, 0x16u);
      }

      v72 = 0;
      goto LABEL_77;
    }

    if (v44)
    {
      *buf = 136315394;
      v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
      v96 = 2112;
      v97 = imageCopy;
      _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s URL image already exists and is different at destination path: %@, removing the old one and copying", buf, 0x16u);
    }

    defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
    v69 = [defaultManager4 isDeletableFileAtPath:filePath];

    v70 = v86;
    if ((v69 & 1) == 0)
    {
      v81 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
        v96 = 2112;
        v97 = imageCopy;
        _os_log_error_impl(&dword_18E991000, v81, OS_LOG_TYPE_ERROR, "%s URL image at destination path is not deleteable: %@", buf, 0x16u);
      }

      goto LABEL_74;
    }

    defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
    v88 = 0;
    [defaultManager5 removeItemAtPath:filePath error:&v88];
    v72 = v88;

    if (v72)
    {
      v73 = 0;
    }

    else
    {
LABEL_63:
      v74 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath];
      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      v87 = 0;
      [defaultManager6 copyItemAtURL:_uri toURL:v74 error:&v87];
      v72 = v87;

      if (!v72)
      {
        if (scaledCopy)
        {
          v76 = [INImage imageWithURL:v74];
          [(INImage *)imageCopy _preferredScaledSize];
          [v76 _setPreferredScaledSize:?];
          _in_downscaledImageForFilePersistence2 = [v76 _in_downscaledImageForFilePersistence];
          _uri2 = [_in_downscaledImageForFilePersistence2 _uri];
          if (!_uri2)
          {
            v79 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v95 = "[INImageFilePersistence storeImage:scaled:qualityOfService:storeType:error:]";
              v96 = 2112;
              v97 = v74;
              _os_log_error_impl(&dword_18E991000, v79, OS_LOG_TYPE_ERROR, "%s Failed to scale image at URL %@", buf, 0x16u);
            }
          }
        }

        v80 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(filePath);

        goto LABEL_71;
      }

      v73 = 0;
      v70 = v86;
    }

LABEL_77:
    identifier = [v35 identifier];
    if (v70)
    {
      v84 = v72;
      *v70 = v72;
    }

    if (v73)
    {
      v85 = identifier;
    }

    else
    {
      v85 = 0;
    }

    v30 = v85;

    goto LABEL_53;
  }

LABEL_28:
  if (error)
  {
    v46 = MEMORY[0x1E696ABC0];
    v90 = *MEMORY[0x1E696A578];
    v47 = MEMORY[0x1E696AEC0];
    v48 = [(_INDataImage *)imageCopy description];
    v49 = [v47 stringWithFormat:@"No valid data to store for image %@ in service %@", v48, self];
    v91 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    *error = [v46 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v50];
  }

  if ((v29 & startAccessingSecurityScopedResource) == 1)
  {
    [(_INDataImage *)_uri stopAccessingSecurityScopedResource];
  }

LABEL_32:
  v30 = 0;
LABEL_53:

LABEL_54:

  return v30;
}

- (id)filePathForImageWithIdentifier:(id)identifier error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(INImageFilePersistence *)self _filePathForImageWithFileName:identifierCopy];
  if (v7)
  {
    error = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    goto LABEL_6;
  }

  v8 = INSiriLogContextIntents;
  if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *buf = 136315394;
  v15 = "[INImageFilePersistence filePathForImageWithIdentifier:error:]";
  v16 = 2112;
  v17 = identifierCopy;
  _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Failed to retrieve file path for image: %@", buf, 0x16u);
  if (error)
  {
LABEL_5:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve image file path with identifier %@ from storage service %@", identifierCopy, self, *MEMORY[0x1E696A578]];
    v13 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:v10];

    error = 0;
  }

LABEL_6:

  return error;
}

- (BOOL)canStoreImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    _supportedClasses = [(INImageFilePersistence *)self _supportedClasses];
    if ([_supportedClasses containsObject:objc_opt_class()])
    {
      v6 = [imageCopy _in_writeableFilePersistenceConfigurationForStoreType:0];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)purgeExpiredImagesInEphemeralStore:(BOOL)store
{
  v65[2] = *MEMORY[0x1E69E9840];
  p_info = &OBJC_METACLASS___INCodableAttributeDialog.info;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Looking for images that have expired in the ephemeral store", buf, 0xCu);
  }

  lastEphemeralStorePurgingDate = [objc_opt_class() lastEphemeralStorePurgingDate];
  v6 = lastEphemeralStorePurgingDate;
  if (!lastEphemeralStorePurgingDate || ([lastEphemeralStorePurgingDate timeIntervalSinceNow], v7 <= -180.0))
  {
    v45 = v6;
    v44 = _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(1);
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *MEMORY[0x1E695DB78];
    v11 = *MEMORY[0x1E695DA98];
    v65[0] = *MEMORY[0x1E695DB78];
    v65[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v54 = 0;
    v43 = v8;
    v13 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v12 options:5 error:&v54];
    v14 = v54;

    if (!v13)
    {
      v15 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
        v57 = 2112;
        v58 = v14;
        _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Failed to purge ephemeral images with error: %@", buf, 0x16u);
      }
    }

    v42 = v14;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v16)
    {
      v17 = v16;
      v48 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v50 + 1) + 8 * i);
          v63[0] = v10;
          v63[1] = v11;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:{2, v42}];
          v49 = 0;
          v21 = [v19 resourceValuesForKeys:v20 error:&v49];
          v22 = v49;

          if (v21)
          {
            v23 = [v21 objectForKeyedSubscript:v10];
            bOOLValue = [v23 BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              path = [v19 path];
              v26 = [v21 objectForKeyedSubscript:v11];
              v27 = v26;
              if (v26)
              {
                [v26 timeIntervalSinceNow];
                v29 = fabs(v28);
                if (v29 > 7776000.0)
                {
                  v30 = p_info[350];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    v31 = MEMORY[0x1E696AD98];
                    v32 = v30;
                    v33 = [v31 numberWithDouble:v29];
                    *buf = 136315906;
                    v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                    v57 = 2112;
                    v58 = path;
                    v59 = 2112;
                    v60 = &unk_1F02D8468;
                    v61 = 2112;
                    v62 = v33;
                    _os_log_impl(&dword_18E991000, v32, OS_LOG_TYPE_INFO, "%s Deleting item at path %@ as it has exceeded the expiration duration interval of %@ with an interval of %@", buf, 0x2Au);
                  }

                  v34 = [(INImageFilePersistence *)self _deleteItemAtFilePath:path];
                  if (v34)
                  {
                    v35 = INSiriLogContextIntents;
                    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                      v57 = 2112;
                      v58 = path;
                      v59 = 2112;
                      v60 = v34;
                      _os_log_error_impl(&dword_18E991000, v35, OS_LOG_TYPE_ERROR, "%s Failed to delete file at path %@: %@", buf, 0x20u);
                    }
                  }

                  p_info = (&OBJC_METACLASS___INCodableAttributeDialog + 32);
                }
              }

              else
              {
                v39 = p_info[350];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
                  v57 = 2112;
                  v58 = path;
                  _os_log_error_impl(&dword_18E991000, v39, OS_LOG_TYPE_ERROR, "%s Item %@ has no creation date", buf, 0x16u);
                }
              }
            }
          }

          else
          {
            v36 = p_info[350];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = v36;
              path2 = [v19 path];
              *buf = 136315650;
              v56 = "[INImageFilePersistence purgeExpiredImagesInEphemeralStore:]";
              v57 = 2112;
              v58 = path2;
              v59 = 2112;
              v60 = v22;
              _os_log_error_impl(&dword_18E991000, v37, OS_LOG_TYPE_ERROR, "%s Attributes for path %@ could not be gathered: %@", buf, 0x20u);
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
      }

      while (v17);
    }

    v40 = objc_opt_class();
    date = [MEMORY[0x1E695DF00] date];
    [v40 setLastEphemeralStorePurgingDate:date];

    v6 = v45;
  }
}

@end