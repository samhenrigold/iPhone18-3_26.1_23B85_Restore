@interface ISConcreteIcon
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIcon:(id)icon;
- (ISConcreteIcon)initWithCoder:(id)coder;
- (ISConcreteIcon)initWithDigest:(id)digest;
- (id)_cachedImageForDescriptor:(id)descriptor;
- (id)_imageForSymbolImageDescriptor:(id)descriptor;
- (id)_imageFromStoreForDescriptor:(id)descriptor;
- (id)_placeholderImageForError:(id)error descriptor:(id)descriptor;
- (id)generateImageWithDescriptor:(id)descriptor;
- (id)imageForDescriptor:(id)descriptor;
- (id)makeResourceProvider;
- (id)symbol;
- (unint64_t)assessValidationToken:(id)token;
- (unint64_t)hash;
- (void)_prepareImagesForImageDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)generateImageWithDescriptor:(id)descriptor completion:(id)completion;
- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation ISConcreteIcon

- (unint64_t)hash
{
  digest = [(ISConcreteIcon *)self digest];
  v3 = [digest hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (ISConcreteIcon)initWithDigest:(id)digest
{
  digestCopy = digest;
  v10.receiver = self;
  v10.super_class = ISConcreteIcon;
  _init = [(ISCodableIcon *)&v10 _init];
  if (_init)
  {
    v7 = objc_alloc_init(ISImageCache);
    imageCache = _init->_imageCache;
    _init->_imageCache = v7;

    objc_storeStrong(&_init->_digest, digest);
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  digest = [(ISConcreteIcon *)self digest];
  [coderCopy encodeObject:digest forKey:@"digest"];
}

- (ISConcreteIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ISConcreteIcon;
  v5 = [(ISCodableIcon *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = objc_alloc_init(ISImageCache);
    imageCache = v5->_imageCache;
    v5->_imageCache = v8;
  }

  return v5;
}

- (BOOL)isEqualToIcon:(id)icon
{
  iconCopy = icon;
  digest = [(ISConcreteIcon *)self digest];
  digest2 = [iconCopy digest];

  LOBYTE(iconCopy) = [digest isEqual:digest2];
  return iconCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ISConcreteIcon *)self isEqualToIcon:equalCopy];
  }

  return v5;
}

- (id)makeResourceProvider
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Abstract method called." reason:0 userInfo:0];
  objc_exception_throw(v2);
}

- (id)_imageFromStoreForDescriptor:(id)descriptor
{
  v64 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  manager = [(ISIcon *)self manager];
  iconCache = [manager iconCache];
  v51 = 0;
  v52 = 0;
  v7 = [iconCache findStoreUnitForIcon:self descriptor:descriptorCopy UUID:&v52 validationToken:&v51];
  v8 = v52;
  v9 = v51;

  v10 = 0;
  if (v7)
  {
    manager2 = [(ISIcon *)self manager];
    iconCache2 = [manager2 iconCache];
    v13 = [iconCache2 storeUnitForUUID:v8];

    data = [v13 data];
    if (data && (v15 = data, [v13 UUID], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = objc_alloc(MEMORY[0x1E69A8988]);
      data2 = [v13 data];
      uUID = [v13 UUID];
      v10 = [v17 initWithData:data2 uuid:uUID validationToken:v9];

      if (descriptorCopy)
      {
        v21 = _ISPrepareISIconSignpostLog(cGImage);
        v22 = os_signpost_enabled(v21);

        if (v22)
        {
          v43 = v13;
          v44 = v9;
          v45 = v8;
          v46 = descriptorCopy;
          v23 = [(ISIcon *)self _activeSignpostsForDescriptor:descriptorCopy];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v48;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v47 + 1) + 8 * i);
                unsignedLongLongValue = [v28 unsignedLongLongValue];
                if (unsignedLongLongValue)
                {
                  v30 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
                  v31 = os_signpost_enabled(v30);

                  if (v31)
                  {
                    v33 = _ISPrepareISIconSignpostLog(v32);
                    unsignedLongLongValue2 = [v28 unsignedLongLongValue];
                    if ((unsignedLongLongValue2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v35 = unsignedLongLongValue2;
                      if (os_signpost_enabled(v33))
                      {
                        uuid = [v10 uuid];
                        *buf = 138412290;
                        selfCopy = uuid;
                        _os_signpost_emit_with_name_impl(&dword_1A77B8000, v33, OS_SIGNPOST_EVENT, v35, "PrepareISIcon", "SATISFIED_PERSISTENT_CACHE: %@", buf, 0xCu);
                      }
                    }
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v47 objects:v63 count:16];
            }

            while (v25);
          }

          v8 = v45;
          descriptorCopy = v46;
          v13 = v43;
          v9 = v44;
        }
      }

      if (v10)
      {
        cGImage = [v10 CGImage];
        if (cGImage)
        {
          goto LABEL_28;
        }
      }

      v37 = _ISDefaultLog(cGImage);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        uUID2 = [v13 UUID];
        uUIDString = [uUID2 UUIDString];
        cGImage2 = [v10 CGImage];
        *buf = 138413314;
        selfCopy = self;
        v55 = 2112;
        v56 = descriptorCopy;
        v57 = 2112;
        v58 = uUIDString;
        v59 = 2112;
        v60 = v10;
        v61 = 2112;
        v62 = cGImage2;
        _os_log_fault_impl(&dword_1A77B8000, v37, OS_LOG_TYPE_FAULT, "Failed to retrieve persistent cache entry. %@ - %@ with unitUUID: %@. Image: %@. Backing: %@", buf, 0x34u);
      }
    }

    else
    {
      v37 = _ISDefaultLog(data);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v8;
        _os_log_impl(&dword_1A77B8000, v37, OS_LOG_TYPE_DEFAULT, "Store Unit: %@ not found.", buf, 0xCu);
      }

      v10 = 0;
    }

LABEL_28:
  }

  v41 = v10;

  return v10;
}

- (id)_cachedImageForDescriptor:(id)descriptor
{
  v69 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = [(ISImageCache *)self->_imageCache imageForDescriptor:descriptorCopy];
  defaultIconSpecification = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [defaultIconSpecification maxSize];
  v8 = v7;

  defaultIconSpecification2 = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [defaultIconSpecification2 maxScale];
  v11 = v10;

  if (!v5 || ([v5 iconSize], v13 = v12, objc_msgSend(descriptorCopy, "size"), v13 >= v14) || (objc_msgSend(v5, "iconSize"), v15 == v8) && (objc_msgSend(v5, "scale"), v16 == v11))
  {
    [v5 minimumSize];
    v33 = v32;
    [descriptorCopy size];
    if (v33 > v34)
    {
      v35 = [objc_alloc(MEMORY[0x1E69A89A0]) initWithImage:v5];

      v5 = v35;
    }

    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    iosDocumentIconSpecification = [MEMORY[0x1E69A8980] iosDocumentIconSpecification];
    [descriptorCopy size];
    v19 = v18;
    v21 = v20;
    [descriptorCopy scale];
    v23 = [iosDocumentIconSpecification imageSpecificationForSize:v19 scale:{v21, v22}];

    [v5 iconSize];
    v25 = v24;
    [v23 size];
    if (v25 == v26 && ([v5 iconSize], v28 = v27, v29 = objc_msgSend(v23, "size"), v28 == v30))
    {
      v31 = _ISDefaultLog(v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [ISConcreteIcon _cachedImageForDescriptor:];
      }
    }

    else
    {

      v5 = 0;
    }

    if (!v5)
    {
LABEL_16:
      v5 = [(ISConcreteIcon *)self _imageFromStoreForDescriptor:descriptorCopy];
      if (v5)
      {
        [(ISImageCache *)self->_imageCache setImage:v5 forDescriptor:descriptorCopy];
      }
    }
  }

  validationToken = [v5 validationToken];

  if (validationToken)
  {
    validationToken2 = [v5 validationToken];
    v39 = [(ISConcreteIcon *)self assessValidationToken:validationToken2];

    v37 = [v5 setPlaceholder:v39 == 2];
  }

  if (v5)
  {
    v40 = _ISDefaultLog(v37);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [descriptorCopy size];
      v43 = v42;
      [v5 size];
      v45 = v44;
      [descriptorCopy size];
      v47 = v46;
      [v5 size];
      v49 = v48;
      [v5 scale];
      v51 = 138414338;
      selfCopy = self;
      v53 = 2112;
      v54 = descriptorCopy;
      v55 = 2048;
      v56 = v43;
      v57 = 2048;
      v58 = v45;
      v59 = 2048;
      v60 = v47;
      v61 = 2048;
      v62 = v49;
      v63 = 2048;
      v64 = v50;
      v65 = 1024;
      placeholder = [v5 placeholder];
      v67 = 2112;
      v68 = v5;
    }
  }

  return v5;
}

- (unint64_t)assessValidationToken:(id)token
{
  v50 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  _is_invalidToken = [MEMORY[0x1E695DEF0] _is_invalidToken];
  v6 = [tokenCopy isEqual:_is_invalidToken];

  if (!v6)
  {
    _is_staleToken = [MEMORY[0x1E695DEF0] _is_staleToken];
    v14 = [tokenCopy isEqual:_is_staleToken];

    if (v14)
    {
      v16 = _ISTraceLog(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

      if (v17)
      {
        v12 = _ISTraceLog(v18);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        v9 = 1;
        goto LABEL_35;
      }

      v9 = 1;
      goto LABEL_36;
    }

    _is_validToken = [MEMORY[0x1E695DEF0] _is_validToken];
    v20 = [tokenCopy isEqual:_is_validToken];

    if (v20)
    {
      v22 = _ISTraceLog(v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

      if (v23)
      {
        v12 = _ISTraceLog(v24);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        v9 = 0;
        goto LABEL_35;
      }

      v9 = 0;
      goto LABEL_36;
    }

    v46 = 0;
    v47 = 0;
    [MEMORY[0x1E6963688] _is_getSequenceNumber:&v47 andUUID:&v46];
    v12 = v46;
    *uu2 = 0;
    v49 = 0;
    [v12 getUUIDBytes:uu2];
    v25 = [tokenCopy length];
    if (v25 == 40)
    {
      bytes = [tokenCopy bytes];
      if (bytes)
      {
        v27 = bytes;
        if (*(bytes + 16) == v47)
        {
          bytes = uuid_compare(bytes, uu2);
          if (!bytes)
          {
            latestValidationToken = _ISDefaultLog(bytes);
            if (os_log_type_enabled(latestValidationToken, OS_LOG_TYPE_DEBUG))
            {
              [ISConcreteIcon assessValidationToken:];
            }

            v9 = 0;
            goto LABEL_34;
          }
        }

        v28 = _ISDefaultLog(bytes);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [ISConcreteIcon assessValidationToken:];
        }

        imageCache = [(ISConcreteIcon *)self imageCache];
        latestValidationToken = [imageCache latestValidationToken];

        v31 = [latestValidationToken length];
        if (v31 == 40)
        {
          bytes2 = [latestValidationToken bytes];
          if (bytes2)
          {
            v33 = uuid_compare((bytes2 + 24), (v27 + 24));
            v34 = v33;
            v35 = _ISTraceLog(v33);
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);

            if (!v34)
            {
              if (!v36)
              {
                v9 = 1;
                goto LABEL_34;
              }

              v38 = _ISTraceLog(v37);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [ISConcreteIcon assessValidationToken:];
              }

              v9 = 1;
              goto LABEL_51;
            }

            if (v36)
            {
              v38 = _ISTraceLog(v37);
              v9 = 2;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [ISConcreteIcon assessValidationToken:];
LABEL_46:
                v9 = 2;
              }

LABEL_51:

              goto LABEL_34;
            }

            goto LABEL_33;
          }

          v43 = _ISTraceLog(0);
          v9 = 2;
          v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);

          if (!v44)
          {
            goto LABEL_34;
          }

          v38 = _ISTraceLog(v45);
          v9 = 2;
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v40 = _ISTraceLog(v31);
          v9 = 2;
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);

          if (!v41)
          {
            goto LABEL_34;
          }

          v38 = _ISTraceLog(v42);
          v9 = 2;
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_51;
          }
        }

        [ISConcreteIcon assessValidationToken:];
        goto LABEL_46;
      }

      latestValidationToken = _ISDefaultLog(0);
      if (os_log_type_enabled(latestValidationToken, OS_LOG_TYPE_FAULT))
      {
        [(ISConcreteIcon *)tokenCopy assessValidationToken:latestValidationToken];
      }
    }

    else
    {
      latestValidationToken = _ISDefaultLog(v25);
      if (os_log_type_enabled(latestValidationToken, OS_LOG_TYPE_FAULT))
      {
        [(ISConcreteIcon *)tokenCopy assessValidationToken:latestValidationToken];
      }
    }

LABEL_33:
    v9 = 2;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v8 = _ISTraceLog(v7);
  v9 = 2;
  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v12 = _ISTraceLog(v11);
    v9 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ISConcreteIcon assessValidationToken:];
      v9 = 2;
    }

    goto LABEL_35;
  }

LABEL_36:

  return v9;
}

- (id)_placeholderImageForError:(id)error descriptor:(id)descriptor
{
  errorCopy = error;
  descriptorCopy = descriptor;
  if (_placeholderImageForError_descriptor__once != -1)
  {
    [ISConcreteIcon _placeholderImageForError:descriptor:];
  }

  if (_placeholderImageForError_descriptor__isInternal == 1 && _ISErrorIsXPCConnectionInterrupted(errorCopy))
  {
    v8 = MEMORY[0x1E69A8988];
    _fallbackKey = [(ISConcreteIcon *)self _fallbackKey];
    v10 = [v8 _debugPlaceholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:0 fallbackTypeID:_fallbackKey referenceIcon:self];
  }

  else
  {
    v11 = MEMORY[0x1E69A8988];
    _fallbackKey = [(ISConcreteIcon *)self _fallbackKey];
    v10 = [v11 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:0 fallbackTypeID:_fallbackKey referenceIcon:self];
  }

  v12 = v10;

  return v12;
}

uint64_t __55__ISConcreteIcon__placeholderImageForError_descriptor___block_invoke()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    _placeholderImageForError_descriptor__isInternal = 1;
  }

  return result;
}

- (id)generateImageWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_alloc_init(ISGenerationRequest);
  [(ISGenerationRequest *)v5 setImageDescriptor:descriptorCopy];
  [(ISGenerationRequest *)v5 setIcon:self];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke;
  v11[3] = &unk_1E77C6940;
  v11[4] = self;
  v6 = descriptorCopy;
  v12 = v6;
  v7 = v5;
  v13 = v7;
  v14 = &v15;
  v8 = _ISRetryRequest(v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

id __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v2 = [*(a1 + 32) manager];
  v3 = [v2 connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2;
  v17[3] = &unk_1E77C68F0;
  v4 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v4;
  v19 = &v20;
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18;
  v13[3] = &unk_1E77C6918;
  v13[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 56);
  v14 = v8;
  v15 = v9;
  v16 = &v20;
  [v5 generateImageWithRequest:v7 reply:v13];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = 0;
  }

  else
  {
    v10 = v21[5];
  }

  v11 = v10;

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = _ISDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(a1, v3);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69A8988]);
    v8 = [v3 data];
    v9 = [v3 uuid];
    v10 = [v3 validationToken];
    v11 = [v7 initWithData:v8 uuid:v9 validationToken:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = [*(a1 + 32) _placeholderImageForError:*(*(*(a1 + 56) + 8) + 40) descriptor:*(a1 + 40)];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (void)_prepareImagesForImageDescriptors:(id)descriptors
{
  v93 = *MEMORY[0x1E69E9840];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = descriptors;
  v4 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v84;
    v64 = *v84;
    selfCopy = self;
    do
    {
      v7 = 0;
      v66 = v5;
      do
      {
        if (*v84 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v83 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = +[ISDefaults sharedInstance];
          [v10 prepareImageDelay];
          v12 = v11;

          if (v12 > 0.0)
          {
            if (v8)
            {
              v14 = _ISPrepareISIconSignpostLog(v13);
              v15 = os_signpost_enabled(v14);

              if (v15)
              {
                v68 = v9;
                v16 = [(ISIcon *)self _activeSignpostsForDescriptor:v8];
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v17 = [v16 countByEnumeratingWithState:&v79 objects:v91 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v80;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v80 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v79 + 1) + 8 * i);
                      unsignedLongLongValue = [v21 unsignedLongLongValue];
                      if (unsignedLongLongValue)
                      {
                        v23 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
                        v24 = os_signpost_enabled(v23);

                        if (v24)
                        {
                          v26 = _ISPrepareISIconSignpostLog(v25);
                          unsignedLongLongValue2 = [v21 unsignedLongLongValue];
                          if ((unsignedLongLongValue2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                          {
                            v28 = unsignedLongLongValue2;
                            if (os_signpost_enabled(v26))
                            {
                              *buf = 134217984;
                              v90 = v12 * 1000000.0;
                              _os_signpost_emit_with_name_impl(&dword_1A77B8000, v26, OS_SIGNPOST_EVENT, v28, "PrepareISIcon", "DELAYING_PREPARE: - delay: %lf , ", buf, 0xCu);
                            }
                          }
                        }
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v79 objects:v91 count:16];
                  }

                  while (v18);
                }

                v6 = v64;
                self = selfCopy;
                v5 = v66;
                v9 = v68;
              }
            }

            usleep((v12 * 1000000.0));
          }

          isKindOfClass = [v8 ignoreCache];
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
          {
            if (!v8)
            {
              v46 = 0;
              goto LABEL_65;
            }

            v30 = _ISPrepareISIconSignpostLog(isKindOfClass);
            v31 = os_signpost_enabled(v30);

            if (v31)
            {
              v69 = v9;
              v33 = [(ISIcon *)self _activeSignpostsForDescriptor:v8];
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v34 = [v33 countByEnumeratingWithState:&v75 objects:v88 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v76;
                do
                {
                  for (j = 0; j != v35; ++j)
                  {
                    if (*v76 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v75 + 1) + 8 * j);
                    unsignedLongLongValue3 = [v38 unsignedLongLongValue];
                    if (unsignedLongLongValue3)
                    {
                      v40 = _ISPrepareISIconSignpostLog(unsignedLongLongValue3);
                      v41 = os_signpost_enabled(v40);

                      if (v41)
                      {
                        v43 = _ISPrepareISIconSignpostLog(v42);
                        unsignedLongLongValue4 = [v38 unsignedLongLongValue];
                        if ((unsignedLongLongValue4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v45 = unsignedLongLongValue4;
                          if (os_signpost_enabled(v43))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1A77B8000, v43, OS_SIGNPOST_EVENT, v45, "PrepareISIcon", "PREPARE_IGNORING_CACHE", buf, 2u);
                          }
                        }
                      }
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v75 objects:v88 count:16];
                }

                while (v35);
              }

              v46 = 0;
              v6 = v64;
              self = selfCopy;
              v5 = v66;
              v9 = v69;
LABEL_46:
              if (!v8)
              {
LABEL_65:
                v62 = [(ISConcreteIcon *)self generateImageWithDescriptor:v8];
                [(ISImageCache *)self->_imageCache setImage:v62 forDescriptor:v8];

                goto LABEL_66;
              }
            }

            else
            {
              v46 = 0;
            }

            v70 = v9;
            v47 = _ISPrepareISIconSignpostLog(placeholder);
            v48 = os_signpost_enabled(v47);

            if (v48)
            {
              v63 = v46;
              v49 = [(ISIcon *)self _activeSignpostsForDescriptor:v8];
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v50 = [v49 countByEnumeratingWithState:&v71 objects:v87 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v72;
                do
                {
                  for (k = 0; k != v51; ++k)
                  {
                    if (*v72 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v71 + 1) + 8 * k);
                    unsignedLongLongValue5 = [v54 unsignedLongLongValue];
                    if (unsignedLongLongValue5)
                    {
                      v56 = _ISPrepareISIconSignpostLog(unsignedLongLongValue5);
                      v57 = os_signpost_enabled(v56);

                      if (v57)
                      {
                        v59 = _ISPrepareISIconSignpostLog(v58);
                        unsignedLongLongValue6 = [v54 unsignedLongLongValue];
                        if ((unsignedLongLongValue6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v61 = unsignedLongLongValue6;
                          if (os_signpost_enabled(v59))
                          {
                            *buf = 0;
                            _os_signpost_emit_with_name_impl(&dword_1A77B8000, v59, OS_SIGNPOST_EVENT, v61, "PrepareISIcon", "PREPARE_IMAGE", buf, 2u);
                          }
                        }
                      }
                    }
                  }

                  v51 = [v49 countByEnumeratingWithState:&v71 objects:v87 count:16];
                }

                while (v51);
              }

              v6 = v64;
              self = selfCopy;
              v5 = v66;
              v9 = v70;
              v46 = v63;
            }

            else
            {
              v9 = v70;
            }

            goto LABEL_65;
          }

          placeholder = [(ISConcreteIcon *)self _cachedImageForDescriptor:v8];
          v46 = placeholder;
          if (!placeholder)
          {
            goto LABEL_46;
          }

          placeholder = [placeholder placeholder];
          if (placeholder)
          {
            goto LABEL_46;
          }

LABEL_66:
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v5);
  }
}

- (id)_imageForSymbolImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  makeSymbolResourceProvider = [(ISConcreteIcon *)self makeSymbolResourceProvider];
  symbol = [makeSymbolResourceProvider symbol];
  v7 = [symbol imageForDescriptor:descriptorCopy];

  return v7;
}

- (id)symbol
{
  v9 = *MEMORY[0x1E69E9840];
  makeSymbolResourceProvider = [(ISConcreteIcon *)self makeSymbolResourceProvider];
  symbol = [makeSymbolResourceProvider symbol];
  if (!symbol)
  {
    v5 = _ISDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_INFO, "Failed to get symbol for %@", &v7, 0xCu);
    }
  }

  return symbol;
}

- (id)imageForDescriptor:(id)descriptor
{
  v78 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = [descriptorCopy copy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [(ISConcreteIcon *)self _imageForSymbolImageDescriptor:v5];
      goto LABEL_60;
    }

    goto LABEL_23;
  }

  ignoreCache = [v5 ignoreCache];
  if (!ignoreCache)
  {
    v22 = [(ISConcreteIcon *)self _cachedImageForDescriptor:v5];
    goto LABEL_25;
  }

  if (!v5)
  {
    if (([0 placeholder] & 1) == 0)
    {
LABEL_59:
      v54 = MEMORY[0x1E69A8988];
      _fallbackKey = [(ISConcreteIcon *)self _fallbackKey];
      v22 = [v54 _placeholderImageWithImageDescriptor:descriptorCopy markAsPlaceholder:1 fallbackTypeID:_fallbackKey referenceIcon:self];

      goto LABEL_60;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_60;
  }

  v7 = _ISPrepareISIconSignpostLog(ignoreCache);
  v8 = os_signpost_enabled(v7);

  if (v8)
  {
    v59 = descriptorCopy;
    v9 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v72;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v72 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v71 + 1) + 8 * i);
          unsignedLongLongValue = [v14 unsignedLongLongValue];
          if (unsignedLongLongValue)
          {
            v16 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
            v17 = os_signpost_enabled(v16);

            if (v17)
            {
              v19 = _ISPrepareISIconSignpostLog(v18);
              unsignedLongLongValue2 = [v14 unsignedLongLongValue];
              if ((unsignedLongLongValue2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v21 = unsignedLongLongValue2;
                if (os_signpost_enabled(v19))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v19, OS_SIGNPOST_EVENT, v21, "PrepareISIcon", "IGNORING_CACHE", buf, 2u);
                }
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v11);
    }

    v22 = 0;
    descriptorCopy = v59;
  }

  else
  {
    v22 = 0;
  }

LABEL_25:
  placeholder = [v22 placeholder];
  if ((placeholder & 1) == 0)
  {
    if (v22)
    {
      goto LABEL_60;
    }

    if (v5)
    {
      v39 = _ISPrepareISIconSignpostLog(placeholder);
      v40 = os_signpost_enabled(v39);

      if (v40)
      {
        v58 = v5;
        v61 = descriptorCopy;
        v41 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v42 = [v41 countByEnumeratingWithState:&v62 objects:v75 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v63;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v63 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v62 + 1) + 8 * j);
              unsignedLongLongValue3 = [v46 unsignedLongLongValue];
              if (unsignedLongLongValue3)
              {
                v48 = _ISPrepareISIconSignpostLog(unsignedLongLongValue3);
                v49 = os_signpost_enabled(v48);

                if (v49)
                {
                  v51 = _ISPrepareISIconSignpostLog(v50);
                  unsignedLongLongValue4 = [v46 unsignedLongLongValue];
                  if ((unsignedLongLongValue4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v53 = unsignedLongLongValue4;
                    if (os_signpost_enabled(v51))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v51, OS_SIGNPOST_EVENT, v53, "PrepareISIcon", "RETURNING_PLACEHOLDER", buf, 2u);
                    }
                  }
                }
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v62 objects:v75 count:16];
          }

          while (v43);
        }

        v5 = v58;
        descriptorCopy = v61;
      }
    }

    goto LABEL_59;
  }

  if (v5)
  {
    v24 = _ISPrepareISIconSignpostLog(placeholder);
    v25 = os_signpost_enabled(v24);

    if (v25)
    {
      v57 = v22;
      v60 = descriptorCopy;
      v26 = [(ISIcon *)self _activeSignpostsForDescriptor:v5];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v67;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v67 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v66 + 1) + 8 * k);
            unsignedLongLongValue5 = [v31 unsignedLongLongValue];
            if (unsignedLongLongValue5)
            {
              v33 = _ISPrepareISIconSignpostLog(unsignedLongLongValue5);
              v34 = os_signpost_enabled(v33);

              if (v34)
              {
                v36 = _ISPrepareISIconSignpostLog(v35);
                unsignedLongLongValue6 = [v31 unsignedLongLongValue];
                if ((unsignedLongLongValue6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v38 = unsignedLongLongValue6;
                  if (os_signpost_enabled(v36))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v36, OS_SIGNPOST_EVENT, v38, "PrepareISIcon", "RETURNING_STALE_PLACEHOLDER", buf, 2u);
                  }
                }
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v28);
      }

      descriptorCopy = v60;
      v22 = v57;
    }
  }

LABEL_60:

  return v22;
}

- (void)generateImageWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v8 = objc_alloc_init(ISGenerationRequest);
  v9 = [descriptorCopy copy];
  [(ISGenerationRequest *)v8 setImageDescriptor:v9];

  [(ISGenerationRequest *)v8 setIcon:self];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v27 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke;
  v22[3] = &unk_1E77C6968;
  v22[4] = self;
  v10 = descriptorCopy;
  v23 = v10;
  v25 = v26;
  v11 = completionCopy;
  v24 = v11;
  v12 = MEMORY[0x1AC55B6D0](v22);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_25;
  v17[3] = &unk_1E77C69B8;
  v21 = v26;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v12;
  v20 = v14;
  v15 = v8;
  v19 = v15;
  v16 = _ISRetryRequest(v17);

  _Block_object_dispose(v26, 8);
}

void __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = _ISDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(a1, v3);
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69A8988]);
    v9 = [v3 data];
    v10 = [v3 uuid];
    v11 = [v3 validationToken];
    v7 = [v8 initWithData:v9 uuid:v10 validationToken:v11];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v7 = [*(a1 + 32) _placeholderImageForError:*(*(*(a1 + 56) + 8) + 40) descriptor:*(a1 + 40)];
LABEL_7:
  (*(*(a1 + 48) + 16))();
}

void *__57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_25(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) manager];
  v5 = [v4 connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2;
  v13[3] = &unk_1E77C6990;
  v6 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v6;
  v12 = *(a1 + 56);
  v7 = v12;
  v15 = v12;
  v8 = [v5 remoteObjectProxyWithErrorHandler:v13];

  [v8 generateImageWithRequest:*(a1 + 48) reply:*(a1 + 56)];
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v10 = v9;

  return v9;
}

void __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__ISConcreteIcon_generateImageWithDescriptor_completion___block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1 + 48);
  v9 = [[ISGenerationResponse alloc] initWithError:v7];
  (*(v8 + 16))(v8, v9);
}

- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v8 = [(ISConcreteIcon *)self imageForDescriptor:descriptorCopy];
  v9 = v8;
  if ((v8 && ![v8 placeholder] || (-[ISConcreteIcon _imageFromStoreForDescriptor:](self, "_imageFromStoreForDescriptor:", descriptorCopy), v10 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v10) != 0)) && !objc_msgSend(v9, "placeholder"))
  {
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__ISConcreteIcon_getImageForImageDescriptor_completion___block_invoke;
    v11[3] = &unk_1E77C69E0;
    v11[4] = self;
    v12 = descriptorCopy;
    v13 = completionCopy;
    [(ISConcreteIcon *)self generateImageWithDescriptor:v12 completion:v11];
  }
}

void __56__ISConcreteIcon_getImageForImageDescriptor_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 imageCache];
  [v4 setImage:v5 forDescriptor:a1[5]];

  (*(a1[6] + 16))();
}

- (void)assessValidationToken:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Invalid validation token data size: %@", &v2, 0xCu);
}

- (void)assessValidationToken:(uint64_t)a1 .cold.8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Invalid validation token data: %@", &v2, 0xCu);
}

void __46__ISConcreteIcon_generateImageWithDescriptor___block_invoke_18_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_0(&dword_1A77B8000, v3, v4, "Error returned from iconservicesagent image request: %@ - %@ error: %@", v5, v6, v7, v8);
}

@end