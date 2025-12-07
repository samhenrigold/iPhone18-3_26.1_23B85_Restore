@interface INUIImageLoader
+ (id)registeredImageLoaderWithScreenDelegate;
- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler;
- (BOOL)loadImage:(id)image withContext:(id)context completionHandler:(id)handler;
- (INUIImageLoaderDelegate)delegate;
- (NSString)serviceIdentifier;
- (void)dealloc;
- (void)deregisterWithIntents;
- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion;
- (void)registerWithIntents;
- (void)setDelegate:(id)delegate;
@end

@implementation INUIImageLoader

- (INUIImageLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion
{
  var1 = size.var1;
  var0 = size.var0;
  v67 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!loaderCopy)
    {
      loaderCopy = objc_alloc_init(MEMORY[0x277CD3F00]);
    }

    helper = [loaderCopy helper];
    v15 = MEMORY[0x277CD38C8];
    if (helper && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      delegate = [(INUIImageLoader *)self delegate];
      v17 = [delegate traitCollectionForImageLoader:self];
      [helper setTraitCollection:v17];
    }

    else
    {

      v18 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v38 = v18;
        helper2 = [loaderCopy helper];
        *buf = 136315394;
        v57 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        v58 = 2112;
        v59 = objc_opt_class();
        v40 = v59;
        _os_log_error_impl(&dword_22CA36000, v38, OS_LOG_TYPE_ERROR, "%s The helper on INPortableImageLoader was of an expected class (expected INUIPortableImageLoaderHelper, got %@)", buf, 0x16u);
      }

      helper = 0;
    }

    mEMORY[0x277CD3D28] = [MEMORY[0x277CD3D28] sharedInstance];
    imageLoaders = [mEMORY[0x277CD3D28] imageLoaders];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = imageLoaders;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v22)
    {
      v44 = helper;
      v45 = completionCopy;
      v46 = loaderCopy;
      v23 = *v51;
      v24 = &off_27872C000;
      while (2)
      {
        v25 = 0;
        v26 = v24;
        do
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v50 + 1) + 8 * v25);
          if (((objc_opt_respondsToSelector() & 1) == 0 || [(INUIImageLoader *)v27 canLoadImageDataForImage:imageCopy]) && (objc_opt_respondsToSelector() & 1) != 0 && v27 != self)
          {
            v22 = v27;
            goto LABEL_23;
          }

          v25 = (v25 + 1);
        }

        while (v22 != v25);
        v22 = [v21 countByEnumeratingWithState:&v50 objects:v66 count:16];
        v24 = v26;
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_23:
      completionCopy = v45;
      loaderCopy = v46;
      v15 = MEMORY[0x277CD38C8];
      helper = v44;
    }

    delegate2 = [(INUIImageLoader *)self delegate];

    if (!delegate2)
    {
      v29 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v57 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        _os_log_error_impl(&dword_22CA36000, v29, OS_LOG_TYPE_ERROR, "%s The delegate on INPortableImageLoader is nil", buf, 0xCu);
      }
    }

    traitCollection = [helper traitCollection];

    if (!traitCollection && (v31 = *v15, os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315138;
      v57 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
      _os_log_error_impl(&dword_22CA36000, v31, OS_LOG_TYPE_ERROR, "%s The traitCollection on INUIPortableImageLoaderHelper is nil", buf, 0xCu);
      if (v22)
      {
        goto LABEL_30;
      }
    }

    else if (v22)
    {
LABEL_30:
      v32 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        v33 = MEMORY[0x277CCABB0];
        v34 = v32;
        v35 = [v33 numberWithDouble:var0];
        v36 = [MEMORY[0x277CCABB0] numberWithDouble:var1];
        *buf = 136316162;
        v57 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]";
        v58 = 2112;
        v59 = v22;
        v60 = 2112;
        selfCopy = self;
        v62 = 2112;
        v63 = v35;
        v64 = 2112;
        v65 = v36;
        _os_log_impl(&dword_22CA36000, v34, OS_LOG_TYPE_INFO, "%s Found preferred image loader %@ for image %@, attempting load at size {%@, %@}", buf, 0x34u);
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __89__INUIImageLoader_loadDataImageFromImage_usingPortableImageLoader_scaledSize_completion___block_invoke;
      v47[3] = &unk_27872BAB8;
      v49 = completionCopy;
      v48 = imageCopy;
      [(INUIImageLoader *)v22 loadDataImageFromImage:v48 usingPortableImageLoader:loaderCopy scaledSize:v47 completion:var0, var1];

      v37 = v49;
      goto LABEL_35;
    }

    v41 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CD3848];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"No preferred image loader available for image: %@";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v43 = [v41 errorWithDomain:v42 code:6001 userInfo:v37];
    (*(completionCopy + 2))(completionCopy, 0, v43);

LABEL_35:
  }
}

void __89__INUIImageLoader_loadDataImageFromImage_usingPortableImageLoader_scaledSize_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      [v5 _imageSize];
      v9 = v8;
      v11 = v10;
      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = v12;
        v15 = [v13 numberWithDouble:v9];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v17 = *(a1 + 32);
        v20 = 136316162;
        v21 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]_block_invoke";
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_22CA36000, v14, OS_LOG_TYPE_INFO, "%s Loaded data image %@ of size {%@, %@} from input image %@", &v20, 0x34u);
      }
    }

    else
    {
      v18 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = 136315394;
        v21 = "[INUIImageLoader loadDataImageFromImage:usingPortableImageLoader:scaledSize:completion:]_block_invoke";
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_22CA36000, v18, OS_LOG_TYPE_ERROR, "%s No image was loaded for input image %@", &v20, 0x16u);
      }
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (NSString)serviceIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__INUIImageLoader_serviceIdentifier__block_invoke;
  block[3] = &unk_27872BEE0;
  block[4] = self;
  if (serviceIdentifier_onceToken != -1)
  {
    dispatch_once(&serviceIdentifier_onceToken, block);
  }

  return serviceIdentifier_sServiceIdentifier;
}

void __36__INUIImageLoader_serviceIdentifier__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:v2];
  v4 = [v8 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];
  v7 = serviceIdentifier_sServiceIdentifier;
  serviceIdentifier_sServiceIdentifier = v6;
}

- (BOOL)loadImage:(id)image withContext:(id)context completionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = imageCopy;
    intentsImage = [v8 intentsImage];
    v10 = intentsImage;
    if (intentsImage)
    {
      _imageData = [intentsImage _imageData];
      _uri = [v10 _uri];
      v13 = _uri;
      if (_imageData)
      {
        v14 = [MEMORY[0x277D4C3B0] imageWithData:_imageData];
        handlerCopy[2](handlerCopy, v14, 0);
      }

      else
      {
        if (!_uri || ![_uri isFileURL])
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke_2;
          v23[3] = &unk_27872BA90;
          v24 = handlerCopy;
          [v10 _retrieveImageDataWithReply:v23];

          goto LABEL_15;
        }

        v14 = [objc_alloc(MEMORY[0x277D4C760]) initWithFacade:v8];
        [v14 setType:52];
        v16 = objc_alloc_init(MEMORY[0x277D4C7F0]);
        v17 = objc_alloc_init(MEMORY[0x277D4C7E8]);
        absoluteString = [v13 absoluteString];
        v19 = absoluteString;
        if (absoluteString)
        {
          v20 = absoluteString;
        }

        else
        {
          v20 = &stru_283FD21E8;
        }

        [v17 setAddress:v20];

        [v16 setUrlValue:v17];
        [v14 setUrlImage:v16];
        v21 = [objc_alloc(MEMORY[0x277D4C3B0]) initWithProtobuf:v14];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke;
        v25[3] = &unk_27872BA68;
        v26 = handlerCopy;
        [v21 loadImageDataWithCompletionAndErrorHandler:v25];
      }

LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v8 = 0;
  }

LABEL_16:

  return v15;
}

void __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277D4C3B0];
    v6 = a3;
    v7 = [v5 imageWithData:a2];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void __59__INUIImageLoader_loadImage_withContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277D4C3B0];
    v6 = a3;
    v8 = [a2 _imageData];
    v7 = [v5 imageWithData:v8];
    (*(v3 + 16))(v3, v7, v6);
  }
}

- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  v8 = objc_opt_new();
  LOBYTE(self) = [(INUIImageLoader *)self loadImage:imageCopy withContext:v8 completionHandler:handlerCopy];

  return self;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)dealloc
{
  [(INUIImageLoader *)self deregisterWithIntents];
  [(INUIImageLoader *)self deregisterWithSearchFoundation];
  v3.receiver = self;
  v3.super_class = INUIImageLoader;
  [(INUIImageLoader *)&v3 dealloc];
}

- (void)deregisterWithIntents
{
  mEMORY[0x277CD3D28] = [MEMORY[0x277CD3D28] sharedInstance];
  [mEMORY[0x277CD3D28] unregisterImageService:self];
}

- (void)registerWithIntents
{
  mEMORY[0x277CD3D28] = [MEMORY[0x277CD3D28] sharedInstance];
  [mEMORY[0x277CD3D28] registerImageService:self];
}

+ (id)registeredImageLoaderWithScreenDelegate
{
  v2 = objc_alloc_init(self);
  [v2 registerWithIntents];
  [v2 registerWithSearchFoundation];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [v2 setDelegate:mainScreen];

  return v2;
}

@end