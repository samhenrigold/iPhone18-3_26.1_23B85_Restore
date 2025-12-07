@interface VCPMADPersonIdentificationTaskResource
+ (id)sharedResource;
- (VCPMADPersonIdentificationTaskResource)init;
- (id)gallery;
- (id)personsModel;
- (id)petsModel;
- (void)_loadVIPModels;
- (void)_loadVUGallery;
- (void)purge;
@end

@implementation VCPMADPersonIdentificationTaskResource

- (VCPMADPersonIdentificationTaskResource)init
{
  v6.receiver = self;
  v6.super_class = VCPMADPersonIdentificationTaskResource;
  v2 = [(VCPMADVisionResource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VCPMADPersonIdentificationTaskResource", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_44];

  return v5;
}

VCPMADPersonIdentificationTaskResource *__56__VCPMADPersonIdentificationTaskResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADPersonIdentificationTaskResource);

  return v0;
}

- (void)_loadVIPModels
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->_personsModel && self->_petsModel)
  {
    return;
  }

  v3 = VCPSignPostLog(self);
  v4 = os_signpost_id_generate(v3);

  v6 = VCPSignPostLog(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADLoadVIPModels", "", buf, 2u);
  }

  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    v9 = +[VCPDefaultPhotoLibraryManager sharedManager];
    defaultPhotoLibrary = [v9 defaultPhotoLibrary];
    v11 = self->_photoLibrary;
    self->_photoLibrary = defaultPhotoLibrary;

    photoLibrary = self->_photoLibrary;
  }

  if (!self->_faceProcessingContext)
  {
    v12 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];
    faceProcessingContext = self->_faceProcessingContext;
    self->_faceProcessingContext = v12;

    photoLibrary = self->_photoLibrary;
  }

  v14 = [(PHPhotoLibrary *)photoLibrary vcp_vipModelFilepathForVIPType:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager fileExistsAtPath:v14];

  if (!v16)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Persons Model does not exist - %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v37 = 0;
  v17 = [VCPFaceIDModel loadVIPModelAtPath:v14 withVIPType:0 error:&v37];
  v18 = v37;
  personsModel = self->_personsModel;
  self->_personsModel = v17;

  v20 = self->_personsModel;
  if (v20)
  {
    configuration = [(VNPersonsModel *)v20 configuration];
    faceprintRequestRevision = [configuration faceprintRequestRevision];

    if (faceprintRequestRevision == 3737841669)
    {
      v23 = 15;
    }

    else
    {
      v23 = 11;
    }

    [(VCPPhotosFaceProcessingContext *)self->_faceProcessingContext setProcessingVersion:v23];
    if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 134217984;
    v39 = faceprintRequestRevision;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "VIP Model uses faceprint with revision %lu";
    v26 = OS_LOG_TYPE_INFO;
  }

  else
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    v39 = v18;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "Failed to load Person Identity Model - %@";
    v26 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C9B70000, v24, v26, v25, buf, 0xCu);
LABEL_25:

LABEL_26:
  v27 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v29 = [defaultManager2 fileExistsAtPath:v27];

  if (v29)
  {
    v36 = 0;
    v30 = [VCPFaceIDModel loadVIPModelAtPath:v27 withVIPType:1 error:&v36];
    v31 = v36;
    petsModel = self->_petsModel;
    self->_petsModel = v30;

    if (!self->_petsModel && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load Pets Model - %@", buf, 0xCu);
    }
  }

  else
  {
    v33 = MediaAnalysisLogLevel();
    if (v33 >= 5)
    {
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v33)
      {
        *buf = 138412290;
        v39 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Pets Model does not exist - %@", buf, 0xCu);
      }
    }
  }

  v34 = VCPSignPostLog(v33);
  v35 = v34;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v4, "MADLoadVIPModels", "", buf, 2u);
  }
}

- (void)_loadVUGallery
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_gallery)
  {
    v3 = VCPSignPostLog(self);
    v4 = os_signpost_id_generate(v3);

    v6 = VCPSignPostLog(v5);
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADLoadVUIndex", "", buf, 2u);
    }

    photoLibrary = self->_photoLibrary;
    if (!photoLibrary)
    {
      v9 = +[VCPDefaultPhotoLibraryManager sharedManager];
      defaultPhotoLibrary = [v9 defaultPhotoLibrary];
      v11 = self->_photoLibrary;
      self->_photoLibrary = defaultPhotoLibrary;

      photoLibrary = self->_photoLibrary;
    }

    if (!self->_faceProcessingContext)
    {
      v12 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];
      faceProcessingContext = self->_faceProcessingContext;
      self->_faceProcessingContext = v12;

      photoLibrary = self->_photoLibrary;
    }

    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)photoLibrary vcp_visionCacheStorageDirectoryURL];
    v21 = 0;
    v15 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v21];
    v16 = v21;
    gallery = self->_gallery;
    self->_gallery = v15;

    if (!self->_gallery && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load VUWGallery - %@", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      faceprintRevision = [(VUWGallery *)self->_gallery faceprintRevision];
      *buf = 134217984;
      v23 = faceprintRevision;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Gallery uses faceprint with revision %ld", buf, 0xCu);
    }

    v19 = VCPSignPostLog([(VCPPhotosFaceProcessingContext *)self->_faceProcessingContext setProcessingVersion:15]);
    v20 = v19;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v4, "MADLoadVUIndex", "", buf, 2u);
    }
  }
}

- (id)personsModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__VCPMADPersonIdentificationTaskResource_personsModel__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__VCPMADPersonIdentificationTaskResource_personsModel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVIPModels];
  v2 = *(*(a1 + 32) + 56);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)petsModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCPMADPersonIdentificationTaskResource_petsModel__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__VCPMADPersonIdentificationTaskResource_petsModel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVIPModels];
  v2 = *(*(a1 + 32) + 64);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)gallery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCPMADPersonIdentificationTaskResource_gallery__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__VCPMADPersonIdentificationTaskResource_gallery__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVUGallery];
  v2 = *(*(a1 + 32) + 48);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCPMADPersonIdentificationTaskResource_purge__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(queue, block);
}

id __47__VCPMADPersonIdentificationTaskResource_purge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v13.receiver = *(a1 + 32);
  v13.super_class = VCPMADPersonIdentificationTaskResource;
  return objc_msgSendSuper2(&v13, sel_purge);
}

@end