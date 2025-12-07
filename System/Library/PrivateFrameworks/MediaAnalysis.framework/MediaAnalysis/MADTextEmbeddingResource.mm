@interface MADTextEmbeddingResource
+ (id)sharedResource:(unint64_t)resource extendedContextLength:(BOOL)length;
- (BOOL)isTextEncoderWarm;
- (MADSharedTextEncoder)textEncoder;
- (MADTextEmbeddingResource)init;
- (MADTextEmbeddingSafety)safety;
- (MADTextEmbeddingThreshold)calibration;
- (VUWGallery)entityGallery;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation MADTextEmbeddingResource

- (MADTextEmbeddingResource)init
{
  v7.receiver = self;
  v7.super_class = MADTextEmbeddingResource;
  v2 = [(MADTextEmbeddingResource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MADTextEmbeddingResource", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedResource:(unint64_t)resource extendedContextLength:(BOOL)length
{
  resourceCopy = resource;
  v10 = *MEMORY[0x1E69E9840];
  if (resource > 4)
  {
    if (resource > 7)
    {
      if (resource == 8)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client requested MD7 4.9-bit which is no longer available; using MD7 6-bit", v9, 2u);
        }
      }

      else if (resource != 9)
      {
        goto LABEL_15;
      }

      if (length)
      {
        v5 = MADTextEmbeddingMD7v2ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD7v2DefaultResource;
      }

      goto LABEL_31;
    }

    if (resource == 5)
    {
      if (length)
      {
        v5 = MADTextEmbeddingMD5ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD5DefaultResource;
      }

      goto LABEL_31;
    }

    if (resource == 7)
    {
      if (length)
      {
        v5 = MADTextEmbeddingMD6ExtendedResource;
      }

      else
      {
        v5 = MADTextEmbeddingMD6DefaultResource;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (resource > 2)
    {
      if (resource == 3)
      {
        v5 = MADTextEmbeddingMD3Resource;
      }

      else
      {
        v5 = MADTextEmbeddingMD4Resource;
      }

      goto LABEL_31;
    }

    if (resource == 1)
    {
      v5 = MADTextEmbeddingMD1Resource;
      goto LABEL_31;
    }

    if (resource == 2)
    {
      v5 = MADTextEmbeddingMD2Resource;
LABEL_31:
      sharedResource = [(__objc2_class *)v5 sharedResource];
      goto LABEL_32;
    }
  }

LABEL_15:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = resourceCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported text encoder version (%d) requested", v9, 8u);
  }

  sharedResource = 0;
LABEL_32:

  return sharedResource;
}

- (int64_t)activeCost
{
  if (DeviceHasANE(self, a2))
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE(self, a2))
  {
    return 5;
  }

  else
  {
    return 100;
  }
}

- (MADSharedTextEncoder)textEncoder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MADTextEmbeddingResource_textEncoder__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MADTextEmbeddingResource_textEncoder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = +[MADSharedTextEncoder textEncoderWithVersion:extendedContextLength:](MADSharedTextEncoder, "textEncoderWithVersion:extendedContextLength:", [v2 version], objc_msgSend(objc_opt_class(), "extendedContextLength"));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (VUWGallery)entityGallery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MADTextEmbeddingResource_entityGallery__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MADTextEmbeddingResource_entityGallery__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    v4 = [v3 vcp_visionCacheStorageDirectoryURL];
    v5 = VCPSignPostLog(v4);
    v6 = os_signpost_id_generate(v5);

    v8 = VCPSignPostLog(v7);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VUWGallery_initWithPath", "", buf, 2u);
    }

    v20 = 0;
    v10 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v4 error:&v20];
    v11 = v20;
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v10;

    v15 = VCPSignPostLog(v14);
    v16 = v15;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v6, "VUWGallery_initWithPath", "", buf, 2u);
    }

    if (!*(*(a1 + 32) + 24) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v11 description];
      *buf = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create %@ (%@)", buf, 0x16u);
    }

    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (MADTextEmbeddingThreshold)calibration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MADTextEmbeddingResource_calibration__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MADTextEmbeddingResource_calibration__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 32))
  {
    v2 = MediaAnalysisLogLevel();
    if (v2 >= 5)
    {
      v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        [*(a1 + 32) version];
        v3 = MADUnifiedEmbeddingVersionToString();
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Creating calibration model (%@)", &v15, 0xCu);
      }
    }

    v4 = VCPSignPostLog(v2);
    v5 = os_signpost_id_generate(v4);

    v7 = VCPSignPostLog(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADTextEmbeddingThreshold_create", "", &v15, 2u);
    }

    v9 = +[MADTextEmbeddingThreshold createForEmbeddingVersion:](MADTextEmbeddingThreshold, "createForEmbeddingVersion:", [*(a1 + 32) version]);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    v13 = VCPSignPostLog(v12);
    v14 = v13;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v5, "MADTextEmbeddingThreshold_create", "", &v15, 2u);
    }

    if (!*(*(a1 + 32) + 32) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create embedding calibration", &v15, 2u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
}

- (MADTextEmbeddingSafety)safety
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MADTextEmbeddingResource_safety__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__MADTextEmbeddingResource_safety__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 40))
  {
    v2 = MediaAnalysisLogLevel();
    if (v2 >= 5)
    {
      v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        [*(a1 + 32) version];
        v3 = MADUnifiedEmbeddingVersionToString();
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Creating safety model (%@)", &v15, 0xCu);
      }
    }

    v4 = VCPSignPostLog(v2);
    v5 = os_signpost_id_generate(v4);

    v7 = VCPSignPostLog(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADTextEmbeddingSafety_create", "", &v15, 2u);
    }

    v9 = +[MADTextEmbeddingSafety createForEmbeddingVersion:](MADTextEmbeddingSafety, "createForEmbeddingVersion:", [*(a1 + 32) version]);
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v13 = VCPSignPostLog(v12);
    v14 = v13;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v5, "MADTextEmbeddingSafety_create", "", &v15, 2u);
    }

    if (!*(*(a1 + 32) + 40) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create embedding safety", &v15, 2u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 40));
}

- (BOOL)isTextEncoderWarm
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MADTextEmbeddingResource_isTextEncoderWarm__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__MADTextEmbeddingResource_isTextEncoderWarm__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    result = [result isWarm];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MADTextEmbeddingResource_purge__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __33__MADTextEmbeddingResource_purge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

@end