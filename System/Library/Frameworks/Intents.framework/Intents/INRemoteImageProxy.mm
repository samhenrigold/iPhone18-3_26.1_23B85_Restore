@interface INRemoteImageProxy
+ (id)proxyImageSynchronously:(id)synchronously usingService:(id)service error:(id *)error;
+ (id)requestProxyByStoringImage:(id)image qualityOfService:(unsigned int)service scaled:(BOOL)scaled storeType:(unint64_t)type error:(id *)error;
+ (void)requestProxyByStoringImage:(id)image qualityOfService:(unsigned int)service scaled:(BOOL)scaled storeType:(unint64_t)type completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (INRemoteImageProxy)initWithCoder:(id)coder;
- (id)_URLRepresentation;
- (id)_copyWithSubclass:(Class)subclass;
- (id)_dictionaryRepresentation;
- (id)_identifier;
- (id)_initWithURLRepresentation:(id)representation;
- (id)retrieveProxiedImageSynchronouslyUsingService:(id)service error:(id *)error;
- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion;
- (void)_retrieveFilePathWithCompletion:(id)completion;
- (void)_retrieveImageDataWithReply:(id)reply;
- (void)encodeWithCoder:(id)coder;
- (void)filePathFromService:(id)service reply:(id)reply;
- (void)purgeStoredImageWithCompletion:(id)completion;
- (void)unproxyImageFromService:(id)service reply:(id)reply;
@end

@implementation INRemoteImageProxy

- (id)_identifier
{
  _URLRepresentation = [(INRemoteImageProxy *)self _URLRepresentation];
  absoluteString = [_URLRepresentation absoluteString];

  return absoluteString;
}

- (id)_URLRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v3 setScheme:@"intents-remote-image-proxy"];
  _proxyIdentifier = [(INRemoteImageProxy *)self _proxyIdentifier];
  if (_proxyIdentifier)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"proxyIdentifier" value:_proxyIdentifier];
    [v5 addObject:v6];
  }

  else
  {
    v5 = 0;
  }

  _storageServiceIdentifier = [(INRemoteImageProxy *)self _storageServiceIdentifier];
  if (_storageServiceIdentifier)
  {
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v8 = [MEMORY[0x1E696AF60] queryItemWithName:@"storageServiceIdentifier" value:_storageServiceIdentifier];
    [v5 addObject:v8];
  }

  [v3 setQueryItems:v5];
  v9 = [v3 URL];

  return v9;
}

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"proxyIdentifier";
  proxyIdentifier = self->_proxyIdentifier;
  null = proxyIdentifier;
  if (!proxyIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"storageServiceIdentifier";
  v10[0] = null;
  storageServiceIdentifier = self->_storageServiceIdentifier;
  null2 = storageServiceIdentifier;
  if (!storageServiceIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (storageServiceIdentifier)
  {
    if (proxyIdentifier)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (proxyIdentifier)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INRemoteImageProxy;
  coderCopy = coder;
  [(INImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_storageServiceIdentifier forKey:{@"_storageServiceIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_proxyIdentifier forKey:@"_proxyIdentifier"];
}

- (INRemoteImageProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INRemoteImageProxy;
  v5 = [(INImage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_storageServiceIdentifier"];
    [(INRemoteImageProxy *)v5 _setStorageServiceIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_proxyIdentifier"];
    [(INRemoteImageProxy *)v5 _setProxyIdentifier:v7];
  }

  return v5;
}

- (void)_retrieveImageDataWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v5 = +[INImageServiceRegistry sharedInstance];
    v6 = [v5 imageStorageServiceForServiceIdentifier:self->_storageServiceIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__INRemoteImageProxy__retrieveImageDataWithReply___block_invoke;
    v7[3] = &unk_1E72835F8;
    v8 = replyCopy;
    [(INRemoteImageProxy *)self unproxyImageFromService:v6 reply:v7];
  }
}

uint64_t __50__INRemoteImageProxy__retrieveImageDataWithReply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return (*(v3 + 16))(*(a1 + 32), 0);
  }

  else
  {
    return [a2 _retrieveImageDataWithReply:v3];
  }
}

- (id)retrieveProxiedImageSynchronouslyUsingService:(id)service error:(id *)error
{
  serviceCopy = service;
  serviceIdentifier = [serviceCopy serviceIdentifier];
  _storageServiceIdentifier = [(INRemoteImageProxy *)self _storageServiceIdentifier];
  if ([serviceIdentifier isEqualToString:_storageServiceIdentifier])
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      _proxyIdentifier = [(INRemoteImageProxy *)self _proxyIdentifier];
      v11 = [serviceCopy retrieveImageSynchronouslyForIdentifier:_proxyIdentifier error:error];

      goto LABEL_8;
    }
  }

  else
  {
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6004 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = INRemoteImageProxy, [(INImage *)&v11 isEqual:equalCopy]))
  {
    _proxyIdentifier = [(INRemoteImageProxy *)self _proxyIdentifier];
    _proxyIdentifier2 = [equalCopy _proxyIdentifier];
    if ([_proxyIdentifier isEqualToString:_proxyIdentifier2])
    {
      _storageServiceIdentifier = [(INRemoteImageProxy *)self _storageServiceIdentifier];
      _storageServiceIdentifier2 = [equalCopy _storageServiceIdentifier];
      v9 = [_storageServiceIdentifier isEqualToString:_storageServiceIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_copyWithSubclass:(Class)subclass
{
  v11.receiver = self;
  v11.super_class = INRemoteImageProxy;
  v4 = [(INImage *)&v11 _copyWithSubclass:subclass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _proxyIdentifier = [(INRemoteImageProxy *)self _proxyIdentifier];
    [v5 _setProxyIdentifier:_proxyIdentifier];

    _storageServiceIdentifier = [(INRemoteImageProxy *)self _storageServiceIdentifier];
    [v5 _setStorageServiceIdentifier:_storageServiceIdentifier];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (void)unproxyImageFromService:(id)service reply:(id)reply
{
  v34[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([(INRemoteImageProxy *)self isValid])
    {
      if (serviceCopy)
      {
        v8 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          v9 = v8;
          _description = [(INImage *)self _description];
          *buf = 136315650;
          v28 = "[INRemoteImageProxy unproxyImageFromService:reply:]";
          v29 = 2112;
          v30 = serviceCopy;
          v31 = 2112;
          v32 = _description;
          _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Attempting to retrieve image from storage service %@ for proxy %@", buf, 0x20u);
        }

        proxyIdentifier = self->_proxyIdentifier;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __52__INRemoteImageProxy_unproxyImageFromService_reply___block_invoke;
        v22[3] = &unk_1E72835A8;
        v24 = replyCopy;
        v22[4] = self;
        v23 = serviceCopy;
        [v23 retrieveImageWithIdentifier:proxyIdentifier completion:v22];

        _description2 = v24;
        goto LABEL_10;
      }

      v19 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A278];
      v20 = MEMORY[0x1E696AEC0];
      _description2 = [(INImage *)self _description];
      v15 = [v20 stringWithFormat:@"No storage service available for image proxy: %@", _description2];
      v26 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = v19;
      v18 = 6001;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A278];
      v14 = MEMORY[0x1E696AEC0];
      _description2 = [(INImage *)self _description];
      v15 = [v14 stringWithFormat:@"Image proxy %@ is invalid", _description2];
      v34[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v17 = v13;
      v18 = 6006;
    }

    v21 = [v17 errorWithDomain:@"IntentsErrorDomain" code:v18 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v21);

LABEL_10:
  }
}

void __52__INRemoteImageProxy_unproxyImageFromService_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_8:
    v7();
    goto LABEL_9;
  }

  if (![v5 isEqual:*(a1 + 32)])
  {
    [v6 _imageSize];
    v17 = v16;
    v19 = v18;
    v20 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = v20;
      v23 = [v21 numberWithDouble:v17];
      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      v25 = *(a1 + 40);
      *buf = 136316162;
      v27 = "[INRemoteImageProxy unproxyImageFromService:reply:]_block_invoke";
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_18E991000, v22, OS_LOG_TYPE_INFO, "%s Retrieved image %@ of size {%@, %@} from storage service %@", buf, 0x34u);
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 48);
  v9 = MEMORY[0x1E696ABC0];
  v36 = *MEMORY[0x1E696A278];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [*(a1 + 32) _description];
  v12 = [v6 _description];
  v13 = [v10 stringWithFormat:@"Image proxy %@ proxied itself: %@", v11, v12];
  v37[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v15 = [v9 errorWithDomain:@"IntentsErrorDomain" code:6005 userInfo:v14];
  (*(v8 + 16))(v8, 0, v15);

LABEL_9:
}

- (void)filePathFromService:(id)service reply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  replyCopy = reply;
  if (![(INRemoteImageProxy *)self isValid])
  {
    v11 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v12 = MEMORY[0x1E696AEC0];
    _description = [(INImage *)self _description];
    v9 = [v12 stringWithFormat:@"Image proxy %@ is invalid", _description];
    v23[0] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = v11;
    v15 = 6006;
LABEL_6:
    v18 = [v14 errorWithDomain:@"IntentsErrorDomain" code:v15 userInfo:v13];
    replyCopy[2](replyCopy, 0, v18);

    goto LABEL_7;
  }

  if (!serviceCopy)
  {
    v16 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v17 = MEMORY[0x1E696AEC0];
    _description = [(INImage *)self _description];
    v9 = [v17 stringWithFormat:@"No storage service available for image proxy: %@", _description];
    v21 = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = v16;
    v15 = 6001;
    goto LABEL_6;
  }

  proxyIdentifier = self->_proxyIdentifier;
  v19 = 0;
  v9 = [serviceCopy filePathForImageWithIdentifier:proxyIdentifier error:&v19];
  _description = v19;
  (replyCopy)[2](replyCopy, v9, _description);
LABEL_7:
}

- (void)purgeStoredImageWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = +[INImageServiceRegistry sharedInstance];
  v6 = [v5 imageStorageServiceForServiceIdentifier:self->_storageServiceIdentifier];

  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      _description = [(INImage *)self _description];
      *buf = 136315650;
      v15 = "[INRemoteImageProxy purgeStoredImageWithCompletion:]";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = _description;
      _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Attempting to purge image from storage service %@ for proxy %@", buf, 0x20u);
    }

    proxyIdentifier = self->_proxyIdentifier;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__INRemoteImageProxy_purgeStoredImageWithCompletion___block_invoke;
    v11[3] = &unk_1E7282858;
    v13 = completionCopy;
    v11[4] = self;
    v12 = v6;
    [v12 purgeImageWithIdentifier:proxyIdentifier completion:v11];
  }
}

void __53__INRemoteImageProxy_purgeStoredImageWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_8:
      v5();
    }
  }

  else
  {
    [*(a1 + 32) _setProxyIdentifier:0];
    [*(a1 + 32) _setStorageServiceIdentifier:0];
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = v6;
      v10 = [v7 _description];
      v12 = 136315650;
      v13 = "[INRemoteImageProxy purgeStoredImageWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Purged stored image from storage service %@ for remote image proxy %@", &v12, 0x20u);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v5 = *(v11 + 16);
      goto LABEL_8;
    }
  }
}

- (id)_initWithURLRepresentation:(id)representation
{
  v31 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (!representationCopy)
  {
    v6 = 0;
LABEL_20:
    selfCopy = 0;
    goto LABEL_21;
  }

  v5 = [MEMORY[0x1E696AF20] componentsWithURL:representationCopy resolvingAgainstBaseURL:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  scheme = [v5 scheme];
  v8 = [scheme isEqualToString:@"intents-remote-image-proxy"];

  if (!v8)
  {
    goto LABEL_20;
  }

  v29.receiver = self;
  v29.super_class = INRemoteImageProxy;
  v9 = [(INImage *)&v29 _initWithIdentifier:0];
  if (!v9)
  {
    goto LABEL_18;
  }

  v23 = v6;
  v24 = representationCopy;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  queryItems = [v6 queryItems];
  v11 = [queryItems countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *v26;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(queryItems);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      name = [v15 name];
      v17 = [name isEqualToString:@"proxyIdentifier"];

      if (v17)
      {
        value = [v15 value];
        [v9 _setProxyIdentifier:value];
      }

      else
      {
        name2 = [v15 name];
        v20 = [name2 isEqualToString:@"storageServiceIdentifier"];

        if (!v20)
        {
          continue;
        }

        value = [v15 value];
        [v9 _setStorageServiceIdentifier:value];
      }
    }

    v12 = [queryItems countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v12);
LABEL_17:

  v6 = v23;
  representationCopy = v24;
LABEL_18:
  self = v9;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

+ (id)proxyImageSynchronously:(id)synchronously usingService:(id)service error:(id *)error
{
  synchronouslyCopy = synchronously;
  serviceCopy = service;
  if (objc_opt_respondsToSelector())
  {
    v9 = [serviceCopy storeImageSynchronously:synchronouslyCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  if (![v9 length])
  {
    if (!error || !*error)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:0];
      *error = v10;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_13;
  }

  if (error && *error)
  {
    goto LABEL_11;
  }

LABEL_12:
  v12 = [INRemoteImageProxy alloc];
  _identifier = [synchronouslyCopy _identifier];
  v11 = [(INImage *)v12 _initWithIdentifier:_identifier];

  [v11 _setProxyIdentifier:v9];
  serviceIdentifier = [serviceCopy serviceIdentifier];
  [v11 _setStorageServiceIdentifier:serviceIdentifier];

LABEL_13:

  return v11;
}

+ (id)requestProxyByStoringImage:(id)image qualityOfService:(unsigned int)service scaled:(BOOL)scaled storeType:(unint64_t)type error:(id *)error
{
  scaledCopy = scaled;
  v63 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    v45 = scaledCopy;
    serviceCopy = service;
    errorCopy = error;
    v12 = +[INImageServiceRegistry sharedInstance];
    imageStorageServices = [v12 imageStorageServices];

    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [imageCopy description];
      *buf = 136315650;
      v58 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:error:]";
      v59 = 2112;
      v60 = imageStorageServices;
      v61 = 2112;
      v62 = v16;
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s Evaluating storage services %@ for image %@", buf, 0x20u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = imageStorageServices;
    v17 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v50 + 1) + 8 * v20);
        v22 = [v21 canStoreImage:imageCopy];
        v23 = INSiriLogContextIntents;
        v24 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
        if (v22)
        {
          break;
        }

        if (v24)
        {
          v25 = v23;
          v26 = [imageCopy description];
          *buf = 136315394;
          v58 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:error:]";
          v59 = 2112;
          v60 = v26;
          _os_log_impl(&dword_18E991000, v25, OS_LOG_TYPE_INFO, "%s Storage service cannot store image %@", buf, 0x16u);
        }

        if (v18 == ++v20)
        {
          v18 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
          if (v18)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      if (v24)
      {
        v28 = v23;
        v29 = [imageCopy description];
        *buf = 136315650;
        v58 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:error:]";
        v59 = 2112;
        v60 = v21;
        v61 = 2112;
        v62 = v29;
        _os_log_impl(&dword_18E991000, v28, OS_LOG_TYPE_INFO, "%s Found preferred storage service %@ for image %@", buf, 0x20u);
      }

      imageCopy = v21;

      v27 = errorCopy;
      if (imageCopy)
      {
        v31 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          v33 = [imageCopy description];
          *buf = 136315650;
          v58 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:error:]";
          v59 = 2112;
          v60 = v33;
          v61 = 2112;
          v62 = imageCopy;
          _os_log_impl(&dword_18E991000, v32, OS_LOG_TYPE_INFO, "%s Attempting to store image %@ with storage service %@", buf, 0x20u);
        }

        v49 = 0;
        v34 = [imageCopy storeImage:imageCopy scaled:v45 qualityOfService:serviceCopy storeType:type error:&v49];
        v35 = v49;
        v36 = v35;
        if (v35)
        {
          if (errorCopy)
          {
            v37 = v35;
            v38 = 0;
            *errorCopy = v36;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v40 = [INRemoteImageProxy alloc];
          _identifier = [imageCopy _identifier];
          v38 = [(INImage *)v40 _initWithIdentifier:_identifier];

          [v38 _setProxyIdentifier:v34];
          serviceIdentifier = [imageCopy serviceIdentifier];
          [v38 _setStorageServiceIdentifier:serviceIdentifier];

          [v38 _setRenderingMode:{objc_msgSend(imageCopy, "_renderingMode")}];
          v43 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v58 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:error:]";
            v59 = 2112;
            v60 = v38;
            v61 = 2112;
            v62 = imageCopy;
            _os_log_impl(&dword_18E991000, v43, OS_LOG_TYPE_INFO, "%s Created remote image proxy %@ for image %@", buf, 0x20u);
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
LABEL_14:

      v27 = errorCopy;
    }

    if (v27)
    {
      v39 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      imageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage service was able to store image %@", imageCopy];
      v55 = imageCopy;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [v39 errorWithDomain:@"IntentsErrorDomain" code:6001 userInfo:v36];
      *v27 = v38 = 0;
LABEL_31:
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

+ (void)requestProxyByStoringImage:(id)image qualityOfService:(unsigned int)service scaled:(BOOL)scaled storeType:(unint64_t)type completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v14 = completionCopy;
  if (imageCopy)
  {
    v15 = 0.5;
    v16 = INImageProxyInjectionQueue();
    v17 = 5.0;
    if (((1 << service) & 0x220200) == 0)
    {
      v17 = 0.5;
    }

    if (service <= 0x15)
    {
      v15 = v17;
    }

    v18 = [INWatchdogTimer alloc];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __94__INRemoteImageProxy_requestProxyByStoringImage_qualityOfService_scaled_storeType_completion___block_invoke;
    v35[3] = &unk_1E72818B8;
    v38 = v15;
    v19 = imageCopy;
    v36 = v19;
    v20 = v14;
    v37 = v20;
    v21 = [(INWatchdogTimer *)v18 initWithTimeoutInterval:v16 onQueue:v35 timeoutHandler:v15];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __94__INRemoteImageProxy_requestProxyByStoringImage_qualityOfService_scaled_storeType_completion___block_invoke_18;
    v27 = &unk_1E72818E0;
    selfCopy = self;
    serviceCopy = service;
    scaledCopy = scaled;
    typeCopy = type;
    v28 = v19;
    v29 = v21;
    v30 = v20;
    v22 = v21;
    v23 = dispatch_block_create_with_qos_class(0, service, 0, &v24);
    dispatch_async(v16, v23);

    [(INWatchdogTimer *)v22 start:v24];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __94__INRemoteImageProxy_requestProxyByStoringImage_qualityOfService_scaled_storeType_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v4 = [v2 stringWithFormat:@"Timing out after %@ seconds during proxy request for image %@", v3, *(a1 + 32)];

  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "+[INRemoteImageProxy requestProxyByStoringImage:qualityOfService:scaled:storeType:completion:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11 = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [v7 errorWithDomain:@"IntentsErrorDomain" code:6007 userInfo:v8];
  (*(v6 + 16))(v6, 0, v9);
}

void __94__INRemoteImageProxy_requestProxyByStoringImage_qualityOfService_scaled_storeType_completion___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v10 = 0;
  v7 = [v5 requestProxyByStoringImage:v2 qualityOfService:v3 scaled:v4 storeType:v6 error:&v10];
  v8 = v10;
  if ([*(a1 + 40) cancelIfNotAlreadyCanceled])
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v7, v8);
    }
  }
}

- (void)_retrieveFilePathWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(INImageFilePersistence);
  [(INRemoteImageProxy *)self filePathFromService:v5 reply:completionCopy];
}

- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion
{
  helperCopy = helper;
  specifierCopy = specifier;
  completionCopy = completion;
  v11 = objc_alloc_init(INImageFilePersistence);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__INRemoteImageProxy_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke;
  v15[3] = &unk_1E72835A8;
  v17 = specifierCopy;
  v18 = completionCopy;
  v16 = helperCopy;
  v12 = specifierCopy;
  v13 = helperCopy;
  v14 = completionCopy;
  [(INRemoteImageProxy *)self unproxyImageFromService:v11 reply:v15];
}

uint64_t __104__INRemoteImageProxy_INPortableImageLoader___loadImageDataAndSizeWithHelper_accessSpecifier_completion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a1[6] + 16))(0.0, 0.0);
  }

  else
  {
    return [a2 _loadImageDataAndSizeWithHelper:a1[4] accessSpecifier:a1[5] completion:a1[6]];
  }
}

@end