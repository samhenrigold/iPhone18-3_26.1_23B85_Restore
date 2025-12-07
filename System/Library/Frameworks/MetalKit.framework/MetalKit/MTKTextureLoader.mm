@interface MTKTextureLoader
- (BOOL)validateGenerateMipmapsForPixelFormat:(unint64_t)format options:(id)options error:(id *)error;
- (MTKTextureLoader)initWithDevice:(id)device;
- (NSArray)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options error:(NSError *)error;
- (id)_newSyncTexturesFromTXRTextures:(id)textures labels:(id)labels options:(id)options error:(id *)error;
- (id)newTextureFromTXRTexture:(id)texture options:(id)options error:(id *)error;
- (id)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error;
- (id)newTexturesFromTXRTextures:(id)textures options:(id)options error:(id *)error;
- (id)newUploaderForOptions:(id)options;
- (unint64_t)_determineFileType:(id)type;
- (void)_loadCGImage:(CGImage *)image options:(id)options completionHandler:(id)handler;
- (void)_loadData:(id)data options:(id)options completionHandler:(id)handler;
- (void)_loadData:(id)data options:(id)options uploader:(id)uploader label:(id)label completionHandler:(id)handler;
- (void)_loadMDLTexture:(id)texture options:(id)options completionHandler:(id)handler;
- (void)_newAsyncTextureWithNames:(id)names scaleFactor:(double)factor displayGamut:(int64_t)gamut bundle:(id)bundle options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithData:(NSData *)data options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
@end

@implementation MTKTextureLoader

- (void)dealloc
{
  self->_device = 0;
  dispatch_release(self->_notifyQueue);
  self->_notifyQueue = 0;
  dispatch_release(self->_uploadQueue);
  self->_uploadQueue = 0;
  dispatch_release(self->_loadQueue);
  self->_loadQueue = 0;
  dispatch_release(self->_loadSemaphore);
  self->_loadSemaphore = 0;

  self->_blitQueue = 0;
  self->_bufferAllocator = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoader;
  [(MTKTextureLoader *)&v3 dealloc];
}

- (MTKTextureLoader)initWithDevice:(id)device
{
  v11.receiver = self;
  v11.super_class = MTKTextureLoader;
  v4 = [(MTKTextureLoader *)&v11 init];
  if (v4)
  {
    *(v4 + 7) = device;
    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UNSPECIFIED, 0);
    initially_inactive = dispatch_queue_attr_make_initially_inactive(v5);
    v7 = dispatch_queue_create("com.apple.mtktextureloaderload", initially_inactive);
    *(v4 + 1) = v7;
    dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 1));
    v8 = dispatch_queue_create("com.apple.mtktextureloaderupload", initially_inactive);
    *(v4 + 2) = v8;
    dispatch_set_qos_class_floor(v8, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 2));
    v9 = dispatch_queue_create("com.apple.mtktextureloadernotify", initially_inactive);
    *(v4 + 3) = v9;
    dispatch_set_qos_class_floor(v9, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 3));
    *(v4 + 4) = dispatch_semaphore_create(3);
    *(v4 + 5) = 0;
    *(v4 + 6) = [[MTKTextureIOBufferAllocator alloc] initWithDevice:*(v4 + 7)];
  }

  return v4;
}

- (void)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (URL)
  {
    v11[0] = URL;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__MTKTextureLoader_newTextureWithContentsOfURL_options_completionHandler___block_invoke;
    v10[3] = &unk_1E8580AE8;
    v10[4] = completionHandler;
    [(MTKTextureLoader *)self newTexturesWithContentsOfURLs:v8 options:options completionHandler:v10];
  }

  else
  {
    v9 = _newMTKTextureErrorWithCodeAndErrorString(0, @"URL is nil");
    (*(completionHandler + 2))(completionHandler, 0);
  }
}

uint64_t __74__MTKTextureLoader_newTextureWithContentsOfURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [a2 objectAtIndexedSubscript:0];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = options;
  v6[6] = URLs;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v16 = [*(a1 + 32) newUploaderForOptions:*(a1 + 40)];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v2 = 0;
  v46 = [MEMORY[0x1E695DF70] array];
  while (v2 < [*(a1 + 48) count])
  {
    [v42[5] addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    ++v2;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v47 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 checkResourceIsReachableAndReturnError:0])
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 8);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_66;
          block[3] = &unk_1E8580B38;
          block[4] = v9;
          block[5] = v8;
          block[8] = &v23;
          block[9] = &v29;
          block[6] = *(a1 + 40);
          block[7] = v16;
          block[10] = &v35;
          block[11] = &v41;
          block[12] = v5;
          dispatch_async(v10, block);
        }

        else
        {
          [v24[5] lock];
          if (!v30[5])
          {
            v11 = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(v8, "lastPathComponent")]);
            v30[5] = v11;
          }

          [v24[5] unlock];
          dispatch_semaphore_signal(v36[5]);
        }

        ++v5;
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v47 count:16];
    }

    while (v4);
  }

  for (j = 0; ; ++j)
  {
    v13 = [*(a1 + 48) count];
    v14 = v36[5];
    if (j >= v13)
    {
      break;
    }

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  dispatch_release(v14);

  v15 = v42[5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_3;
  v17[3] = &unk_1E8580B60;
  v17[4] = *(a1 + 56);
  v17[5] = &v41;
  v17[6] = &v29;
  [v16 finishWithCompletionHandler:v17];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
}

intptr_t __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_66(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  v15 = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:*(a1 + 40) options:1 error:&v15];
  v3 = v2;
  if (v15)
  {
    if (v2)
    {
    }

    [*(*(*(a1 + 64) + 8) + 40) lock];
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 40) = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid NSData, %@", objc_msgSend(v15, "localizedDescription")]);
    }

    [*(*(*(a1 + 64) + 8) + 40) unlock];
    dispatch_semaphore_signal(*(*(*(a1 + 80) + 8) + 40));
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) lastPathComponent];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_2;
    v11[3] = &unk_1E8580B10;
    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    v14 = v8;
    v11[4] = v3;
    v11[5] = v9;
    [v6 _loadData:v3 options:v4 uploader:v5 label:v7 completionHandler:v11];
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 32));
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = *(*(a1[5] + 8) + 40);
    objc_sync_enter(v5);
    [*(*(a1[5] + 8) + 40) setObject:a2 atIndexedSubscript:a1[9]];
    objc_sync_exit(v5);
  }

  else
  {
    [*(*(a1[6] + 8) + 40) lock];
    if (!*(*(a1[7] + 8) + 40))
    {
      *(*(a1[7] + 8) + 40) = a3;
    }

    [*(*(a1[6] + 8) + 40) unlock];
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
  v7 = a1[4];
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_3(void *a1)
{
  (*(a1[4] + 16))();

  v2 = *(*(a1[6] + 8) + 40);
}

- (void)newTextureWithData:(NSData *)data options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MTKTextureLoader_newTextureWithData_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = data;
  v6[6] = options;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

intptr_t __65__MTKTextureLoader_newTextureWithData_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadData:*(a1 + 40) options:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  CGImageRetain(cgImage);
  loadQueue = self->_loadQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__MTKTextureLoader_newTextureWithCGImage_options_completionHandler___block_invoke;
  v10[3] = &unk_1E8580BB0;
  v10[4] = self;
  v10[5] = options;
  v10[6] = completionHandler;
  v10[7] = cgImage;
  dispatch_async(loadQueue, v10);
}

intptr_t __68__MTKTextureLoader_newTextureWithCGImage_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadCGImage:*(a1 + 56) options:*(a1 + 40) completionHandler:*(a1 + 48)];
  CGImageRelease(*(a1 + 56));
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MTKTextureLoader_newTextureWithMDLTexture_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = texture;
  v6[6] = options;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

intptr_t __71__MTKTextureLoader_newTextureWithMDLTexture_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadMDLTexture:*(a1 + 40) options:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MTKTextureLoader_newTextureWithContentsOfURL_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithContentsOfURL:URL options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __62__MTKTextureLoader_newTextureWithContentsOfURL_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (NSArray)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MTKTextureLoader_newTexturesWithContentsOfURLs_options_error___block_invoke;
  v12[3] = &unk_1E8580C00;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTexturesWithContentsOfURLs:URLs options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __64__MTKTextureLoader_newTexturesWithContentsOfURLs_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MTKTextureLoader_newTextureWithData_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithData:data options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __53__MTKTextureLoader_newTextureWithData_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MTKTextureLoader_newTextureWithCGImage_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithCGImage:cgImage options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __56__MTKTextureLoader_newTextureWithCGImage_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MTKTextureLoader_newTextureWithMDLTexture_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithMDLTexture:texture options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __59__MTKTextureLoader_newTextureWithMDLTexture_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (unint64_t)_determineFileType:(id)type
{
  if ([MTKTextureLoaderKTX isKTXFile:?])
  {
    return 1;
  }

  if ([MTKTextureLoaderPVR isPVRFile:type])
  {
    return 2;
  }

  if ([MTKTextureLoaderPVR3 isPVR3File:type])
  {
    return 3;
  }

  return 4;
}

- (void)_loadData:(id)data options:(id)options completionHandler:(id)handler
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke;
  v10[3] = &unk_1E8580C50;
  v10[4] = v9;
  v10[5] = handler;
  [(MTKTextureLoader *)self _loadData:data options:options uploader:v9 label:0 completionHandler:v10];
}

void __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8580C28;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10[5] = a2;
  v10[6] = v9;
  v10[4] = a3;
  [v8 finishWithCompletionHandler:v10];
}

void __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();

  v2 = *(a1 + 32);
}

- (void)_loadData:(id)data options:(id)options uploader:(id)uploader label:(id)label completionHandler:(id)handler
{
  v11 = 0;
  v22 = 0;
  v12 = [(MTKTextureLoader *)self _determineFileType:?]- 1;
  if (v12 <= 3)
  {
    v11 = [objc_alloc(*off_1E8580D58[v12]) initWithData:data options:options error:&v22];
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [v11 pixelFormat];
  MTLPixelFormatGetInfoForDevice();

  v13 = v22;
  if (!v22)
  {
    v14 = MEMORY[0x1E696AEC0];
    [0 pixelFormat];
    v15 = [v14 stringWithFormat:@"Pixel format(%s) is not valid on this device", MTLPixelFormatGetName()];
    v13 = _newMTKTextureErrorWithCodeAndErrorString(0, v15);
    v22 = v13;
  }

  notifyQueue = self->_notifyQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke;
  v17[3] = &unk_1E8580C78;
  v17[4] = v13;
  v17[5] = handler;
  dispatch_async(notifyQueue, v17);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];
  v3 = v2;
  if (*(a1 + 56))
  {
    [v2 setLabel:?];
  }

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v3];
  }

  v4 = *(*(a1 + 64) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v5 = *(a1 + 72);
  v6[4] = v3;
  v6[5] = v7;
  v6[6] = v5;
  dispatch_async(v4, v6);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();

  v2 = *(a1 + 40);
}

- (void)_loadCGImage:(CGImage *)image options:(id)options completionHandler:(id)handler
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:options];
  v17 = 0;
  v10 = [[MTKTextureLoaderImageIO alloc] initWithCGImage:image options:options error:&v17];
  if (v10)
  {
    v11 = v10;
    if ([(MTKTextureLoader *)self validateGenerateMipmapsForPixelFormat:[(MTKTextureLoaderData *)v10 pixelFormat] options:options error:&v17])
    {
      uploadQueue = self->_uploadQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_3;
      v14[3] = &unk_1E8580B88;
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = options;
      v14[7] = handler;
      v13 = v14;
    }

    else
    {

      uploadQueue = self->_notifyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_2;
      block[3] = &unk_1E8580C78;
      block[4] = v17;
      block[5] = handler;
      v13 = block;
    }
  }

  else
  {
    uploadQueue = self->_notifyQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke;
    v16[3] = &unk_1E8580C78;
    v16[4] = v17;
    v16[5] = handler;
    v13 = v16;
  }

  dispatch_async(uploadQueue, v13);
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

uint64_t __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v2];
  }

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v4 = *(a1 + 56);
  v6[4] = v2;
  v6[5] = v7;
  v6[6] = v4;
  return [v3 finishWithCompletionHandler:v6];
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();

  v2 = *(a1 + 40);
}

- (void)_loadMDLTexture:(id)texture options:(id)options completionHandler:(id)handler
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:options];
  v17 = 0;
  v10 = [[MTKTextureLoaderMDL alloc] initWithMDLTexture:texture options:options error:&v17];
  if (v10)
  {
    v11 = v10;
    if ([(MTKTextureLoader *)self validateGenerateMipmapsForPixelFormat:[(MTKTextureLoaderData *)v10 pixelFormat] options:options error:&v17])
    {
      uploadQueue = self->_uploadQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_3;
      v14[3] = &unk_1E8580B88;
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = options;
      v14[7] = handler;
      v13 = v14;
    }

    else
    {

      uploadQueue = self->_notifyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_2;
      block[3] = &unk_1E8580C78;
      block[4] = v17;
      block[5] = handler;
      v13 = block;
    }
  }

  else
  {
    uploadQueue = self->_notifyQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke;
    v16[3] = &unk_1E8580C78;
    v16[4] = v17;
    v16[5] = handler;
    v13 = v16;
  }

  dispatch_async(uploadQueue, v13);
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

uint64_t __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v2];
  }

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v4 = *(a1 + 56);
  v6[4] = v2;
  v6[5] = v7;
  v6[6] = v4;
  return [v3 finishWithCompletionHandler:v6];
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();

  v2 = *(a1 + 40);
}

- (BOOL)validateGenerateMipmapsForPixelFormat:(unint64_t)format options:(id)options error:(id *)error
{
  if (![objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    return 1;
  }

  MTLPixelFormatGetInfoForDevice();
  v6 = 0;
  if (error)
  {
    *error = _newMTKTextureErrorWithCodeAndErrorString(0, @"MTKTextureLoaderOptionGenerateMipmaps is only supported for color renderable and filterable pixel formats");
  }

  return v6;
}

- (id)newUploaderForOptions:(id)options
{
  v5 = [objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}];
  if (![options objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    blitQueue = 0;
    goto LABEL_8;
  }

  if (!(([objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue"}] == 2) | v5 & 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  objc_sync_enter(self);
  if (!self->_blitQueue)
  {
    self->_blitQueue = [(MTLDeviceSPI *)self->_device newCommandQueue];
  }

  objc_sync_exit(self);
  blitQueue = self->_blitQueue;
LABEL_8:
  v7 = [MTKTextureUploader alloc];
  device = self->_device;
  notifyQueue = self->_notifyQueue;

  return [(MTKTextureUploader *)v7 initWithDevice:device commandQueue:blitQueue notifyQueue:notifyQueue];
}

- (void)_newAsyncTextureWithNames:(id)names scaleFactor:(double)factor displayGamut:(int64_t)gamut bundle:(id)bundle options:(id)options completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v14 = [MEMORY[0x1E6999368] defaultUICatalogForBundle:bundle];
  if (!v14)
  {
    v39 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Could not get asset catalog from supplied bundle");
    notifyQueue = self->_notifyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
    block[3] = &unk_1E8580C78;
    block[4] = v39;
    block[5] = handler;
    v38 = block;
    v37 = notifyQueue;
    goto LABEL_32;
  }

  v15 = v14;
  handlerCopy = handler;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(names, "count")}];
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = names;
  v17 = [names countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = *v55;
  v43 = gamut == 2;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v55 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v54 + 1) + 8 * i);
      v22 = [v15 namedTextureWithName:v21 scaleFactor:factor];
      if (v22)
      {
        v23 = v22;
        v24 = objc_autoreleasePoolPush();
        v25 = [v23 textureWithBufferAllocator:self->_bufferAllocator];
        v26 = v25;
        objc_autoreleasePoolPop(v24);
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        [v25 pixelFormat];
        MTLPixelFormatGetInfoForDevice();
        if ([MEMORY[0x1E69DA0D8] isGammaEncoded:{objc_msgSend(v25, "pixelFormat")}])
        {
          v27 = 71;
        }

        else
        {
          v27 = 70;
        }

        [v25 reformat:v27 gammaDegamma:1 bufferAllocator:self->_bufferAllocator error:0];
        v28 = v16;
        goto LABEL_14;
      }

      if ([v15 imageExistsWithName:v21 scaleFactor:factor])
      {
        v25 = [v15 imageWithName:v21 scaleFactor:v43 displayGamut:5 layoutDirection:factor];
        if ([v25 image])
        {
          v29 = v25;
          v28 = v42;
LABEL_14:
          [v28 addObject:v25];
          continue;
        }
      }

      else
      {
        v59 = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find texture or image named %@ in supplied bundle", v21]);
      }
    }

    v18 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  }

  while (v18);
LABEL_21:
  v30 = [(MTKTextureLoader *)self _newSyncTexturesFromTXRTextures:v16 labels:obj options:options error:&v59];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = [v42 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v42);
        }

        v35 = *(*(&v46 + 1) + 8 * j);
        v36 = -[MTKTextureLoader newTextureWithCGImage:options:error:](self, "newTextureWithCGImage:options:error:", [v35 image], options, &v59);

        if (v36)
        {
          [v30 addObject:v36];
        }
      }

      v32 = [v42 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v32);
  }

  v37 = self->_notifyQueue;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke_2;
  v45[3] = &unk_1E8580CA0;
  v45[4] = v30;
  v45[5] = v59;
  v45[6] = handlerCopy;
  v38 = v45;
LABEL_32:
  dispatch_async(v37, v38);
}

void __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  (*(*(a1 + 40) + 16))();
}

void __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 48) + 16))();
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)newTexturesFromTXRTextures:(id)textures options:(id)options error:(id *)error
{
  [textures enumerateObjectsUsingBlock:&__block_literal_global];

  return [(MTKTextureLoader *)self _newSyncTexturesFromTXRTextures:textures labels:0 options:options error:error];
}

- (id)newTextureFromTXRTexture:(id)texture options:(id)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  v14[0] = texture;
  v10 = -[MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:](self, "_newSyncTexturesFromTXRTextures:labels:options:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1], 0, options, error);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (![v10 count])
  {
    return 0;
  }

  v12 = [v11 objectAtIndexedSubscript:0];
  if (v12)
  {
  }

  return v12;
}

- (id)_newSyncTexturesFromTXRTextures:(id)textures labels:(id)labels options:(id)options error:(id *)error
{
  texturesCopy = textures;
  v133 = *MEMORY[0x1E69E9840];
  v127 = 0uLL;
  v128 = 0;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(textures, "count")}];
  newCommandQueue = [(MTLDeviceSPI *)self->_device newCommandQueue];
  [newCommandQueue setLabel:@"com.apple.MTKTextureLoader"];
  v82 = newCommandQueue;
  commandBuffer = [newCommandQueue commandBuffer];
  blitCommandEncoder = [commandBuffer blitCommandEncoder];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v12 = [texturesCopy countByEnumeratingWithState:&v123 objects:v132 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v91 = *v124;
    do
    {
      v15 = 0;
      v87 = v13;
      do
      {
        if (*v124 != v91)
        {
          objc_enumerationMutation(texturesCopy);
        }

        v16 = *(*(&v123 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
        }

        else
        {
          v94 = v15;
          v17 = objc_alloc_init(MEMORY[0x1E69741C0]);
          [v16 dimensions];
          [v17 setWidth:v18];
          [v16 dimensions];
          [v17 setHeight:v19];
          [v16 dimensions];
          [v17 setDepth:v20];
          [v17 setArrayLength:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v16, "mipmapLevels"), "objectAtIndexedSubscript:", 0), "elements"), "count")}];
          if ([v16 pixelFormat] >> 31)
          {
            [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
          }

          [v17 setPixelFormat:objc_msgSend(v16, "pixelFormat")];
          arrayLength = [v17 arrayLength];
          v106 = v16;
          if ([v16 cubemap])
          {
            v21 = texturesCopy;
            v22 = v10;
            v23 = v14;
            if ([v17 arrayLength] < 2)
            {
              labelsCopy2 = labels;
              v25 = 5;
            }

            else
            {
              supportsTextureCubeArray = [(MTLDeviceSPI *)self->_device supportsTextureCubeArray];
              if (supportsTextureCubeArray)
              {
                v25 = 6;
              }

              else
              {
                v25 = 5;
              }

              v26 = arrayLength;
              if (!supportsTextureCubeArray)
              {
                v26 = 1;
              }

              arrayLength = v26;
              labelsCopy2 = labels;
              if ((supportsTextureCubeArray & 1) == 0 && error)
              {
                *error = _newMTKTextureErrorWithCodeAndErrorString(0, @"Attempt to load a cubemap array on platform that does not support cubemap arrays");
                v25 = 5;
                arrayLength = 1;
              }
            }

            [v17 setTextureType:v25];
            [v16 dimensions];
            if (v30 != 1)
            {
              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
            }

            [v16 dimensions];
            v32 = v31;
            [v106 dimensions];
            labels = labelsCopy2;
            v14 = v23;
            v10 = v22;
            texturesCopy = v21;
            v13 = v87;
            if (v32 != v33)
            {
              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
            }
          }

          else
          {
            [v16 dimensions];
            if (v28 <= 1)
            {
              [v16 dimensions];
              v35 = v34;
              arrayLength2 = [v17 arrayLength];
              if (v35 < 2)
              {
                v29 = arrayLength2 > 1;
              }

              else if (arrayLength2 <= 1)
              {
                v29 = 2;
              }

              else
              {
                v29 = 3;
              }
            }

            else
            {
              v29 = 7;
            }

            [v17 setTextureType:v29];
          }

          if ([options objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
          {
            [v17 setStorageMode:{objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue")}];
          }

          if ([options objectForKey:@"MTKTextureLoaderOptionTextureUsage"])
          {
            [v17 setUsage:{objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionTextureUsage", "unsignedIntegerValue")}];
          }

          if ([options objectForKey:@"MTKTextureLoaderOptionTextureCPUCacheMode"])
          {
            [v17 setCpuCacheMode:{objc_msgSend(objc_msgSend(options, "objectForKey:", @"MTKTextureLoaderOptionTextureCPUCacheMode", "unsignedIntegerValue")}];
          }

          if ([objc_msgSend(options objectForKey:{@"MTKTextureLoaderOptionAllocateMipmaps", "BOOLValue"}])
          {
            width = [v17 width];
            height = [v17 height];
            if (width <= height)
            {
              v39 = height;
            }

            else
            {
              v39 = width;
            }

            v40 = (floor(log2(v39)) + 1.0);
          }

          else
          {
            v40 = [objc_msgSend(v106 "mipmapLevels")];
          }

          [v17 setMipmapLevelCount:v40];
          v41 = [options objectForKeyedSubscript:@"MTKTextureLoaderOptionLoadAsArray"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 BOOLValue])
          {
            textureType = [v17 textureType];
            [v17 setTextureType:{arrayTextureTypeFromTextureType(textureType, v43)}];
          }

          v44 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];

          if (v44)
          {
            v97 = v44;
            [v10 addObject:v44];
            [v106 dimensions];
            v104 = v45;
            [v106 dimensions];
            v101 = v46;
            [v106 dimensions];
            v103 = v47;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            obj = [v106 mipmapLevels];
            v15 = v94;
            v84 = [obj countByEnumeratingWithState:&v119 objects:v131 count:16];
            if (v84)
            {
              v99 = 0;
              v102 = v103;
              v48.i64[0] = v104;
              v48.i64[1] = v101;
              v100 = v48;
              v49 = *v120;
              labelsCopy3 = labels;
              optionsCopy = options;
              v76 = texturesCopy;
              v77 = v10;
              v74 = v14;
              selfCopy = self;
              v80 = *v120;
              do
              {
                v50 = 0;
                do
                {
                  if (*v120 != v49)
                  {
                    v51 = v50;
                    objc_enumerationMutation(obj);
                    v50 = v51;
                  }

                  v86 = v50;
                  v52 = *(*(&v119 + 1) + 8 * v50);
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  elements = [v52 elements];
                  v53 = v106;
                  v89 = [elements countByEnumeratingWithState:&v115 objects:v130 count:16];
                  if (v89)
                  {
                    v105 = 0;
                    v90 = *v116;
                    v95 = COERCE_DOUBLE(vmovn_s64(v100));
LABEL_54:
                    v54 = 0;
                    while (1)
                    {
                      if (*v116 != v90)
                      {
                        objc_enumerationMutation(elements);
                      }

                      v93 = v54;
                      v55 = *(*(&v115 + 1) + 8 * v54);
                      v111 = 0u;
                      v112 = 0u;
                      v113 = 0u;
                      v114 = 0u;
                      faces = [v55 faces];
                      v56 = [faces countByEnumeratingWithState:&v111 objects:v129 count:16];
                      if (v56)
                      {
                        v57 = v56;
                        v58 = 0;
                        v59 = *v112;
                        do
                        {
                          for (i = 0; i != v57; ++i)
                          {
                            if (*v112 != v59)
                            {
                              objc_enumerationMutation(faces);
                            }

                            v61 = *(*(&v111 + 1) + 8 * i);
                            bytesPerRow = [v61 bytesPerRow];
                            bytesPerImage = [v61 bytesPerImage];
                            if (!bytesPerRow)
                            {
                              bytesPerRow = [MEMORY[0x1E69DA0D8] packedMemoryLayoutForFormat:objc_msgSend(v53 dimensions:"pixelFormat"), v95];
                            }

                            cubemap = [v53 cubemap];
                            [v61 buffer];
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
                            }

                            if (!bytesPerImage)
                            {
                              bytesPerImage = bytesPerRow * v100.i64[1];
                            }

                            v65 = 6;
                            if (!cubemap)
                            {
                              v65 = 1;
                            }

                            v66 = v58 + v105 * v65;
                            v67 = [objc_msgSend(v61 "buffer")];
                            offset = [v61 offset];
                            v109 = v100;
                            v110 = v102;
                            v107 = v127;
                            v108 = v128;
                            [blitCommandEncoder copyFromBuffer:v67 sourceOffset:offset sourceBytesPerRow:bytesPerRow sourceBytesPerImage:bytesPerImage sourceSize:&v109 toTexture:v97 destinationSlice:v66 destinationLevel:v99 destinationOrigin:&v107];
                            ++v58;
                            v53 = v106;
                          }

                          v57 = [faces countByEnumeratingWithState:&v111 objects:v129 count:16];
                        }

                        while (v57);
                      }

                      v15 = v94;
                      if (arrayLength == 1)
                      {
                        break;
                      }

                      ++v105;
                      v54 = v93 + 1;
                      if (v93 + 1 == v89)
                      {
                        v89 = [elements countByEnumeratingWithState:&v115 objects:v130 count:16];
                        if (v89)
                        {
                          goto LABEL_54;
                        }

                        break;
                      }
                    }
                  }

                  ++v99;
                  v69 = vcgtq_u64(v100, vdupq_n_s64(1uLL));
                  v100 = vsubq_s64(vandq_s8(vshrq_n_u64(v100, 1uLL), v69), vmvnq_s8(v69));
                  v70 = v102 >> 1;
                  if (v102 <= 1)
                  {
                    v70 = 1;
                  }

                  v102 = v70;
                  v13 = v87;
                  v50 = v86 + 1;
                  labels = labelsCopy3;
                  options = optionsCopy;
                  texturesCopy = v76;
                  v10 = v77;
                  v14 = v74;
                  self = selfCopy;
                  v49 = v80;
                }

                while (v86 + 1 != v84);
                v71 = [obj countByEnumeratingWithState:&v119 objects:v131 count:16];
                v49 = v80;
                v84 = v71;
              }

              while (v71);
            }

            if (labels)
            {
              v72 = [labels objectAtIndexedSubscript:v14];
              if (v72 != [MEMORY[0x1E695DFB0] null])
              {
                [v97 setLabel:{objc_msgSend(labels, "objectAtIndexedSubscript:", v14)}];
              }
            }

            ++v14;
          }

          else
          {
            [v10 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            v15 = v94;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [texturesCopy countByEnumeratingWithState:&v123 objects:v132 count:16];
    }

    while (v13);
  }

  [blitCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v10;
}

- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__MTKTextureLoader_newTexturesWithNames_scaleFactor_bundle_options_completionHandler___block_invoke;
  v8[3] = &unk_1E8580D10;
  v8[4] = self;
  v8[5] = names;
  *&v8[9] = scaleFactor;
  v8[6] = bundle;
  v8[7] = options;
  v8[8] = completionHandler;
  dispatch_async(loadQueue, v8);
}

- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__MTKTextureLoader_newTexturesWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
  block[3] = &unk_1E8580D38;
  block[4] = self;
  block[5] = names;
  *&block[9] = scaleFactor;
  block[10] = displayGamut;
  block[6] = bundle;
  block[7] = options;
  block[8] = completionHandler;
  dispatch_async(loadQueue, block);
}

- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = name;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_completionHandler___block_invoke;
  v13[3] = &unk_1E8580AE8;
  v13[4] = completionHandler;
  [(MTKTextureLoader *)self newTexturesWithNames:v12 scaleFactor:bundle bundle:options options:v13 completionHandler:scaleFactor];
}

uint64_t __84__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count] == 1)
  {
    [a2 objectAtIndexedSubscript:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = name;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
  v15[3] = &unk_1E8580AE8;
  v15[4] = completionHandler;
  [(MTKTextureLoader *)self newTexturesWithNames:v14 scaleFactor:displayGamut displayGamut:bundle bundle:options options:v15 completionHandler:scaleFactor];
}

uint64_t __97__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count] == 1)
  {
    [a2 objectAtIndexedSubscript:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error
{
  v13 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_error___block_invoke;
  v16[3] = &unk_1E8580BD8;
  v16[5] = &v23;
  v16[6] = &v17;
  v16[4] = v13;
  [(MTKTextureLoader *)self newTextureWithName:name scaleFactor:bundle bundle:options options:v16 completionHandler:scaleFactor];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v13);
  if (error)
  {
    *error = v18[5];
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v14;
}

intptr_t __72__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error
{
  v15 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_error___block_invoke;
  v18[3] = &unk_1E8580BD8;
  v18[5] = &v25;
  v18[6] = &v19;
  v18[4] = v15;
  [(MTKTextureLoader *)self newTextureWithName:name scaleFactor:displayGamut displayGamut:bundle bundle:options options:v18 completionHandler:scaleFactor];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v15);
  if (error)
  {
    *error = v20[5];
  }

  v16 = v26[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v16;
}

intptr_t __85__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

@end