@interface MRUImageLoader
- (BOOL)vendCachedImageIfPossible;
- (BOOL)wouldLoadNewImageForCatalog:(id)catalog;
- (CGSize)deferredFittingSize;
- (CGSize)fittingSize;
- (CGSize)lastVendedScaledFittingSize;
- (CGSize)scaledFittingSize;
- (CGSize)targetFittingSizeForCurrentCatalogConfiguration;
- (MRUImageLoader)initWithDestination:(id)destination imageHandler:(id)handler;
- (UIView)destination;
- (void)configureCatalog;
- (void)dealloc;
- (void)deferredUpdateFittingSize;
- (void)setLastVendedArtworkIdentifier:(id)identifier;
- (void)setState:(int64_t)state;
- (void)updateCatalog:(id)catalog;
- (void)updateFittingSize:(CGSize)size scale:(double)scale;
- (void)withNoEscapeCheck:(id)check;
@end

@implementation MRUImageLoader

- (MRUImageLoader)initWithDestination:(id)destination imageHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = MRUImageLoader;
  v8 = [(MRUImageLoader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_destination, destinationCopy);
    v10 = [handlerCopy copy];
    imageHandler = v9->_imageHandler;
    v9->_imageHandler = v10;

    v9->_cacheImages = +[MRUFeatureFlagProvider isImageCachingEnabled];
    v9->_formatImages = 1;
    v9->_state = 1;
    v12 = *MEMORY[0x1E695F060];
    v9->_lastVendedScaledFittingSize = *MEMORY[0x1E695F060];
    v9->_fittingSize = v12;
    v9->_failedLoadingCount = 0;
    v9->_scale = 1.0;
    if (+[MRUFeatureFlagProvider isImageCachingEnabled])
    {
      v13 = +[MRUImageLoaderCoordinator sharedCoordinator];
      [v13 registerLoader:v9];
    }
  }

  return v9;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v6 = MCLogCategoryImageLoading(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> deallocating.", buf, 0x16u);
    }
  }

  v7 = +[MRUImageLoaderCoordinator sharedCoordinator];
  [v7 unregisterLoader:self];

  v8.receiver = self;
  v8.super_class = MRUImageLoader;
  [(MRUImageLoader *)&v8 dealloc];
}

- (BOOL)wouldLoadNewImageForCatalog:(id)catalog
{
  catalogCopy = catalog;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  destination = [(MRUImageLoader *)self destination];
  if (destination)
  {
    if (objc_msgSend_state(self) == 2)
    {
      if (NSClassFromString(&cfstr_Mpcmrcontentit.isa) && ((objc_opt_isKindOfClass() & 1) != 0 || ([destination artworkCatalog], v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0)))
      {
        artworkCatalog = [destination artworkCatalog];
        if ([catalogCopy isArtworkVisuallyIdenticalToCatalog:artworkCatalog])
        {
          visualIdenticalityIdentifier = [catalogCopy visualIdenticalityIdentifier];
          artworkCatalog2 = [destination artworkCatalog];
          visualIdenticalityIdentifier2 = [artworkCatalog2 visualIdenticalityIdentifier];
          if (visualIdenticalityIdentifier == visualIdenticalityIdentifier2)
          {
            v12 = 1;
          }

          else
          {
            v12 = [visualIdenticalityIdentifier isEqual:visualIdenticalityIdentifier2];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        artworkCatalog = [destination artworkCatalog];
        v12 = [artworkCatalog isArtworkVisuallyIdenticalToCatalog:catalogCopy];
      }

      [(MRUImageLoader *)self scaledFittingSize];
      v25 = v24;
      v27 = v26;
      [(MRUImageLoader *)self targetFittingSizeForCurrentCatalogConfiguration];
      v29 = v12 ^ 1;
      if (v25 != v30)
      {
        v29 = 1;
      }

      if (v27 == v28)
      {
        LOBYTE(v13) = v29;
      }

      else
      {
        LOBYTE(v13) = 1;
      }
    }

    else
    {
      [(MRUImageLoader *)self scaledFittingSize];
      v15 = v14;
      v17 = v16;
      [(MRUImageLoader *)self lastVendedScaledFittingSize];
      LOBYTE(v13) = 1;
      if (v15 == v19 && v17 == v18)
      {
        visualIdenticalityIdentifier3 = [catalogCopy visualIdenticalityIdentifier];
        stringRepresentation = [visualIdenticalityIdentifier3 stringRepresentation];
        lastVendedArtworkIdentifier = [(MRUImageLoader *)self lastVendedArtworkIdentifier];
        stringRepresentation2 = [lastVendedArtworkIdentifier stringRepresentation];
        if (stringRepresentation == stringRepresentation2)
        {
          LOBYTE(v13) = 0;
        }

        else
        {
          v13 = [stringRepresentation isEqual:stringRepresentation2] ^ 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)updateCatalog:(id)catalog
{
  v17 = *MEMORY[0x1E69E9840];
  catalogCopy = catalog;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  catalog = [(MRUImageLoader *)self catalog];

  if (catalog != catalogCopy)
  {
    [(MRUImageLoader *)self setCatalog:catalogCopy];
    if ([(MRUImageLoader *)self wouldLoadNewImageForCatalog:catalogCopy])
    {
      destination = [(MRUImageLoader *)self destination];
      if (destination)
      {
        if (catalogCopy)
        {
          if (![(MRUImageLoader *)self vendCachedImageIfPossible])
          {
            [(MRUImageLoader *)self configureCatalog];
          }
        }

        else
        {
          currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
          verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

          if (verboseImageLoadingLogging)
          {
            v10 = MCLogCategoryImageLoading(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v13 = 138412546;
              v14 = objc_opt_class();
              v15 = 2048;
              selfCopy = self;
              _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update with nil catalog.", &v13, 0x16u);
            }
          }

          destination2 = [(MRUImageLoader *)self destination];
          [destination2 clearArtworkCatalogs];

          [(MRUImageLoader *)self setState:1];
          [(MRUImageLoader *)self setFailedLoadingCount:0];
          [(MRUImageLoader *)self setLastFailedArtworkIdentifier:0];
          [(MRUImageLoader *)self setLastVendedScaledFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
          [(MRUImageLoader *)self setLastVendedArtworkIdentifier:0];
          imageHandler = [(MRUImageLoader *)self imageHandler];
          imageHandler[2](imageHandler, 0, 0);
        }
      }
    }
  }
}

- (void)updateFittingSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(MRUImageLoader *)self deferredFittingSize];
  v10 = v9 == width && v8 == height;
  if (!v10 || ([(MRUImageLoader *)self deferredScale], v11 != scale))
  {
    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

    if (verboseImageLoadingLogging)
    {
      v15 = MCLogCategoryImageLoading(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v29.width = width;
        v29.height = height;
        v17 = NSStringFromCGSize(v29);
        *buf = 138413058;
        v21 = v16;
        v22 = 2048;
        selfCopy = self;
        v24 = 2112;
        v25 = v17;
        v26 = 2048;
        scaleCopy = scale;
        _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update deferred fitting size: %@, scale: %lf.", buf, 0x2Au);
      }
    }

    [(MRUImageLoader *)self setDeferredFittingSize:width, height];
    [(MRUImageLoader *)self setDeferredScale:scale];
    if (![(MRUImageLoader *)self fittingSizeUpdateScheduled])
    {
      [(MRUImageLoader *)self setFittingSizeUpdateScheduled:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__MRUImageLoader_updateFittingSize_scale___block_invoke;
      block[3] = &unk_1E7663898;
      block[4] = self;
      v18 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)deferredUpdateFittingSize
{
  v51 = *MEMORY[0x1E69E9840];
  [(MRUImageLoader *)self deferredFittingSize];
  v4 = v3;
  v6 = v5;
  [(MRUImageLoader *)self deferredScale];
  v8 = v7;
  [(MRUImageLoader *)self setFittingSizeUpdateScheduled:0];
  v9 = floor(v4);
  v10 = floor(v6);
  [(MRUImageLoader *)self fittingSize];
  v13 = v12 == v9 && v11 == v10;
  if (!v13 || ([(MRUImageLoader *)self scale], v14 != v8))
  {
    [(MRUImageLoader *)self setFittingSize:v9, v10];
    [(MRUImageLoader *)self setScale:v8];
    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

    if (verboseImageLoadingLogging)
    {
      v18 = MCLogCategoryImageLoading(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        [(MRUImageLoader *)self fittingSize];
        v20 = NSStringFromCGSize(v52);
        [(MRUImageLoader *)self scale];
        *buf = 138413058;
        v44 = v19;
        v45 = 2048;
        selfCopy2 = self;
        v47 = 2112;
        v48 = v20;
        v49 = 2048;
        v50 = v21;
        _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update fitting size: %@, scale: %lf.", buf, 0x2Au);
      }
    }

    destination = [(MRUImageLoader *)self destination];
    v23 = +[MRUImageLoaderCoordinator sharedCoordinator];
    [v23 registeredLoaderFittingSizeDidChange:self];

    if (destination && ![(MRUImageLoader *)self vendCachedImageIfPossible])
    {
      artworkCatalog = [destination artworkCatalog];
      catalog = [(MRUImageLoader *)self catalog];

      if (catalog == artworkCatalog)
      {
        if (artworkCatalog)
        {
          if (+[MRUFeatureFlagProvider isImageCachingEnabled])
          {
            v26 = +[MRUImageLoaderCoordinator sharedCoordinator];
            [v26 requestSize];
            v28 = v27;
            v30 = v29;
          }

          else
          {
            [(MRUImageLoader *)self scaledFittingSize];
            v28 = v31;
            v30 = v32;
          }

          currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
          verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

          if (verboseImageLoadingLogging2)
          {
            v36 = MCLogCategoryImageLoading(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = objc_opt_class();
              v53.width = v28;
              v53.height = v30;
              v38 = NSStringFromCGSize(v53);
              *buf = 138413058;
              v44 = v37;
              v45 = 2048;
              selfCopy2 = self;
              v47 = 2112;
              v48 = v38;
              v49 = 2048;
              v50 = artworkCatalog;
              _os_log_impl(&dword_1A20FC000, v36, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> update fitting size: %@ on associated catalog: %p", buf, 0x2Au);
            }
          }

          [(MRUImageLoader *)self scaledFittingSize];
          [(MRUImageLoader *)self setTargetFittingSizeForCurrentCatalogConfiguration:?];
          [(MRUImageLoader *)self setState:2];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __43__MRUImageLoader_deferredUpdateFittingSize__block_invoke;
          v39[3] = &unk_1E7665B38;
          v40 = artworkCatalog;
          v41 = v28;
          v42 = v30;
          [(MRUImageLoader *)self withNoEscapeCheck:v39];
        }
      }

      else
      {
        [(MRUImageLoader *)self configureCatalog];
      }
    }
  }
}

- (BOOL)vendCachedImageIfPossible
{
  v29 = *MEMORY[0x1E69E9840];
  catalog = [(MRUImageLoader *)self catalog];
  overlayDelegate = [catalog overlayDelegate];

  if (overlayDelegate)
  {
    +[MRUImageUtilities clearCache];
    LOBYTE(catalog2) = 0;
  }

  else
  {
    destination = [(MRUImageLoader *)self destination];
    catalog2 = [(MRUImageLoader *)self catalog];
    visualIdenticalityIdentifier = [catalog2 visualIdenticalityIdentifier];
    stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];

    LOBYTE(catalog2) = 0;
    if (destination)
    {
      if (stringRepresentation)
      {
        [(MRUImageLoader *)self scaledFittingSize];
        v10 = v9;
        v12 = v11;
        catalog2 = [MRUImageUtilities formattedImageForIdentifier:stringRepresentation size:?];
        if (catalog2)
        {
          [destination clearArtworkCatalogs];
          currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
          verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

          if (verboseImageLoadingLogging)
          {
            v16 = MCLogCategoryImageLoading(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v21 = 138413058;
              v22 = objc_opt_class();
              v23 = 2048;
              selfCopy = self;
              v25 = 2112;
              v26 = catalog2;
              v27 = 2112;
              v28 = destination;
              _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> Vending cached image %@ to destination %@.", &v21, 0x2Au);
            }
          }

          [(MRUImageLoader *)self setState:6];
          [(MRUImageLoader *)self setFailedLoadingCount:0];
          [(MRUImageLoader *)self setLastFailedArtworkIdentifier:0];
          catalog3 = [(MRUImageLoader *)self catalog];
          visualIdenticalityIdentifier2 = [catalog3 visualIdenticalityIdentifier];
          [(MRUImageLoader *)self setLastVendedArtworkIdentifier:visualIdenticalityIdentifier2];

          [(MRUImageLoader *)self setLastVendedScaledFittingSize:v10, v12];
          imageHandler = [(MRUImageLoader *)self imageHandler];
          (imageHandler)[2](imageHandler, catalog2, 0);

          LOBYTE(catalog2) = 1;
        }
      }
    }
  }

  return catalog2;
}

- (CGSize)scaledFittingSize
{
  [(MRUImageLoader *)self fittingSize];
  v10 = v4;
  v11 = v3;
  [(MRUImageLoader *)self scale];
  v6 = v5;
  [(MRUImageLoader *)self scale];
  CGAffineTransformMakeScale(&v12, v6, v7);
  v8 = vmlaq_n_f64(vmulq_n_f64(*&v12.c, v10), *&v12.a, v11);
  v9 = v8.f64[1];
  result.width = v8.f64[0];
  result.height = v9;
  return result;
}

- (void)setState:(int64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

  if (verboseImageLoadingLogging)
  {
    v8 = MCLogCategoryImageLoading(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = self->_state - 2;
      if (v10 > 4)
      {
        v11 = @"initial";
      }

      else
      {
        v11 = off_1E7665E68[v10];
      }

      if ((state - 2) > 4)
      {
        v12 = @"initial";
      }

      else
      {
        v12 = off_1E7665E68[state - 2];
      }

      v13 = 138413058;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> transition %@ -> %@.", &v13, 0x2Au);
    }
  }

  self->_state = state;
}

- (void)setLastVendedArtworkIdentifier:(id)identifier
{
  objc_storeStrong(&self->_lastVendedArtworkIdentifier, identifier);
  identifierCopy = identifier;
  v6 = +[MRUImageLoaderCoordinator sharedCoordinator];

  [v6 registeredLoaderArtworkIdentifierDidChange:self];
}

- (void)configureCatalog
{
  v47 = *MEMORY[0x1E69E9840];
  destination = [(MRUImageLoader *)self destination];
  catalog = [(MRUImageLoader *)self catalog];
  visualIdenticalityIdentifier = [catalog visualIdenticalityIdentifier];
  if (objc_msgSend_state(self) == 4)
  {
    stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];
    lastFailedArtworkIdentifier = [(MRUImageLoader *)self lastFailedArtworkIdentifier];
    stringRepresentation2 = [lastFailedArtworkIdentifier stringRepresentation];
    v9 = stringRepresentation2;
    if (stringRepresentation == stringRepresentation2)
    {
    }

    else
    {
      v10 = [stringRepresentation isEqual:stringRepresentation2];

      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging = [currentSettings verboseImageLoadingLogging];

    if (!verboseImageLoadingLogging)
    {
      goto LABEL_31;
    }

    v16 = MCLogCategoryImageLoading(v20);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v36 = objc_opt_class();
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2048;
      v40 = catalog;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> will not configure catalog %p vending oversized artwork.", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_4:
  lastFailedArtworkIdentifier2 = [(MRUImageLoader *)self lastFailedArtworkIdentifier];
  v12 = lastFailedArtworkIdentifier2;
  if (visualIdenticalityIdentifier == lastFailedArtworkIdentifier2)
  {
  }

  else
  {
    lastFailedArtworkIdentifier = [visualIdenticalityIdentifier isEqual:lastFailedArtworkIdentifier2];

    if ((lastFailedArtworkIdentifier & 1) == 0)
    {
      [(MRUImageLoader *)self setFailedLoadingCount:0];
      goto LABEL_14;
    }
  }

  if (objc_msgSend_state(self) == 3 && [(MRUImageLoader *)self failedLoadingCount]>= 3)
  {
    currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging2 = [currentSettings2 verboseImageLoadingLogging];

    if (!verboseImageLoadingLogging2)
    {
      goto LABEL_31;
    }

    v16 = MCLogCategoryImageLoading(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v36 = objc_opt_class();
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2048;
      v40 = catalog;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> exhausted retries, will not configure catalog %p.", buf, 0x20u);
    }

LABEL_13:

    goto LABEL_31;
  }

LABEL_14:
  if (destination && catalog)
  {
    objc_initWeak(&location, self);
    [(MRUImageLoader *)self setState:2];
    [(MRUImageLoader *)self scaledFittingSize];
    [(MRUImageLoader *)self setTargetFittingSizeForCurrentCatalogConfiguration:?];
    v17 = +[MRUFeatureFlagProvider isImageCachingEnabled];
    if (v17)
    {
      lastFailedArtworkIdentifier = +[MRUImageLoaderCoordinator sharedCoordinator];
      [lastFailedArtworkIdentifier requestSize];
    }

    else
    {
      [(MRUImageLoader *)self scaledFittingSize];
    }

    [catalog setFittingSize:?];
    if (v17)
    {
    }

    currentSettings3 = [MEMORY[0x1E69B0B08] currentSettings];
    verboseImageLoadingLogging3 = [currentSettings3 verboseImageLoadingLogging];

    if (verboseImageLoadingLogging3)
    {
      v24 = MCLogCategoryImageLoading(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        visualIdenticalityIdentifier2 = [catalog visualIdenticalityIdentifier];
        stringRepresentation3 = [visualIdenticalityIdentifier2 stringRepresentation];
        [catalog fittingSize];
        v28 = NSStringFromCGSize(v48);
        [(MRUImageLoader *)self scaledFittingSize];
        v29 = NSStringFromCGSize(v49);
        *buf = 138413570;
        v36 = v25;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2048;
        v40 = catalog;
        v41 = 2112;
        v42 = stringRepresentation3;
        v43 = 2112;
        v44 = v28;
        v45 = 2112;
        v46 = v29;
        _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> configuring catalog %p, with identifier: %@, request size: %@, scaled fitting size: %@.", buf, 0x3Eu);
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __34__MRUImageLoader_configureCatalog__block_invoke;
    v30[3] = &unk_1E7665E48;
    v31 = catalog;
    v32 = destination;
    objc_copyWeak(&v33, &location);
    [(MRUImageLoader *)self withNoEscapeCheck:v30];
    objc_destroyWeak(&v33);

    objc_destroyWeak(&location);
  }

LABEL_31:
}

void __34__MRUImageLoader_configureCatalog__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__MRUImageLoader_configureCatalog__block_invoke_2;
  v3[3] = &unk_1E7665E20;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 setDestination:v2 configurationBlock:v3];
  objc_destroyWeak(&v4);
}

void __34__MRUImageLoader_configureCatalog__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 artworkCatalog];
    if (v6)
    {
      [v6 size];
      v10 = v9;
      [v6 scale];
      v12 = v10 * v11;
      [v6 size];
      v14 = v13;
      [v6 scale];
      if (v12 <= 3000.0 && v14 * v15 <= 3000.0)
      {
        [WeakRetained scaledFittingSize];
        v17 = v16;
        v19 = v18;
        v20 = [v8 dataSource];
        NSClassFromString(&cfstr_Mpartworkcatal_1.isa);
        isKindOfClass = objc_opt_isKindOfClass();

        v22 = [v8 overlayDelegate];
        if (v22 || (isKindOfClass & 1) != 0)
        {
        }

        else if ([WeakRetained cacheImages])
        {
          if (![WeakRetained runningSynchronously])
          {
            v37 = 1;
LABEL_24:
            if ([WeakRetained formatImages])
            {
              v38 = [v8 visualIdenticalityIdentifier];
              v39 = [v38 stringRepresentation];
              v30 = [MRUImageUtilities formatImage:v6 withIdentifier:v39 forDisplayAtSize:v37 useCache:v17, v19];

              if (v30)
              {
LABEL_30:
                v43 = [MEMORY[0x1E69B0B08] currentSettings];
                v44 = [v43 verboseImageLoadingLogging];

                if (v44)
                {
                  v46 = MCLogCategoryImageLoading(v45);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = objc_opt_class();
                    v49 = 138413058;
                    v50 = v47;
                    v51 = 2048;
                    v52 = WeakRetained;
                    v53 = 2112;
                    v54 = v30;
                    v55 = 2112;
                    v56 = v5;
                    _os_log_impl(&dword_1A20FC000, v46, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> Vending formatted image %@ to destination %@.", &v49, 0x2Au);
                  }
                }

                [WeakRetained setState:5];
                [WeakRetained setFailedLoadingCount:0];
                [WeakRetained setLastFailedArtworkIdentifier:0];
                v48 = [v8 visualIdenticalityIdentifier];
                [WeakRetained setLastVendedArtworkIdentifier:v48];

                [WeakRetained setLastVendedScaledFittingSize:{v17, v19}];
                v36 = [WeakRetained imageHandler];
                (v36)[2](v36, v30, 0);
                goto LABEL_35;
              }

              v41 = MCLogCategoryImageLoading(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = objc_opt_class();
                v49 = 138412546;
                v50 = v42;
                v51 = 2048;
                v52 = WeakRetained;
                _os_log_impl(&dword_1A20FC000, v41, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Failed to format image. Will use original.", &v49, 0x16u);
              }
            }

            v30 = v6;
            goto LABEL_30;
          }

          v23 = [MEMORY[0x1E69B0B08] currentSettings];
          v24 = [v23 verboseImageLoadingLogging];

          if (v24)
          {
            v26 = MCLogCategoryImageLoading(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v49 = 138412802;
              v50 = objc_opt_class();
              v51 = 2048;
              v52 = WeakRetained;
              v53 = 2112;
              v54 = v6;
              _os_log_impl(&dword_1A20FC000, v26, OS_LOG_TYPE_DEFAULT, "[MRUImageLoader] %@<%p> skip caching for image that is already cached in catalog: %@.", &v49, 0x20u);
            }
          }
        }

        v37 = 0;
        goto LABEL_24;
      }

      [WeakRetained setLastVendedArtworkIdentifier:0];
      v34 = [v8 visualIdenticalityIdentifier];
      [WeakRetained setLastFailedArtworkIdentifier:v34];

      v35 = MCLogCategoryImageLoading([WeakRetained setState:4]);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v49 = 138412802;
        v50 = objc_opt_class();
        v51 = 2048;
        v52 = WeakRetained;
        v53 = 2048;
        v54 = v8;
        _os_log_impl(&dword_1A20FC000, v35, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Disassociating catalog %p due to oversized artwork.", &v49, 0x20u);
      }

      [v5 clearArtworkCatalogs];
      v30 = [WeakRetained imageHandler];
      v31 = MEMORY[0x1E696ABC0];
      v32 = @"Image exceeds max allowed size.";
      v33 = 200;
    }

    else
    {
      [WeakRetained setLastVendedArtworkIdentifier:0];
      v27 = [v8 visualIdenticalityIdentifier];
      [WeakRetained setLastFailedArtworkIdentifier:v27];

      [WeakRetained setState:3];
      [WeakRetained setFailedLoadingCount:{objc_msgSend(WeakRetained, "failedLoadingCount") + 1}];
      v28 = [WeakRetained failedLoadingCount];
      if (v28 >= 3)
      {
        v29 = MCLogCategoryImageLoading(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v49 = 138412802;
          v50 = objc_opt_class();
          v51 = 2048;
          v52 = WeakRetained;
          v53 = 2048;
          v54 = v8;
          _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_ERROR, "[MRUImageLoader] %@<%p> Disassociating catalog %p due to repeated failures.", &v49, 0x20u);
        }

        [v5 clearArtworkCatalogs];
      }

      v30 = [WeakRetained imageHandler];
      v31 = MEMORY[0x1E696ABC0];
      v32 = @"Catalog returned nil image.";
      v33 = 100;
    }

    v36 = [v31 msv_errorWithDomain:@"MRUImageLoaderError" code:v33 debugDescription:v32];
    (*(v30 + 2))(v30, 0, v36);
LABEL_35:
  }
}

- (void)withNoEscapeCheck:(id)check
{
  checkCopy = check;
  [(MRUImageLoader *)self setRunningSynchronously:1];
  checkCopy[2](checkCopy);

  [(MRUImageLoader *)self setRunningSynchronously:0];
}

- (UIView)destination
{
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  return WeakRetained;
}

- (CGSize)targetFittingSizeForCurrentCatalogConfiguration
{
  width = self->_targetFittingSizeForCurrentCatalogConfiguration.width;
  height = self->_targetFittingSizeForCurrentCatalogConfiguration.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastVendedScaledFittingSize
{
  width = self->_lastVendedScaledFittingSize.width;
  height = self->_lastVendedScaledFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)deferredFittingSize
{
  width = self->_deferredFittingSize.width;
  height = self->_deferredFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end