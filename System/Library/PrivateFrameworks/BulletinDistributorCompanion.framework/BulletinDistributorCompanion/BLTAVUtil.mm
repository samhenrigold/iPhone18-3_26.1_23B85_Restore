@interface BLTAVUtil
+ (void)_transcodeVideoAsync:(id)async outURL:(id)l maxBytes:(unint64_t)bytes completionHandler:(id)handler;
+ (void)transcodeURL:(id)l outURL:(id)rL maxBytes:(unint64_t)bytes completion:(id)completion;
@end

@implementation BLTAVUtil

+ (void)transcodeURL:(id)l outURL:(id)rL maxBytes:(unint64_t)bytes completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6240]];
  v14 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:lCopy options:v13];
  v15 = [v14 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v16 = [v15 count];

  v17 = [v14 tracksWithMediaType:*MEMORY[0x277CE5E48]];
  v18 = [v17 count];

  v20 = blt_general_log(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = v14;
    v28 = 2112;
    v29 = lCopy;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v18;
    _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_DEFAULT, "Transcoding: created asset %@ from URL: %@ with %d video tracks, %d audio tracks", buf, 0x22u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__BLTAVUtil_transcodeURL_outURL_maxBytes_completion___block_invoke;
  v23[3] = &unk_278D31D98;
  v24 = rLCopy;
  v25 = completionCopy;
  v21 = completionCopy;
  v22 = rLCopy;
  [self _transcodeVideoAsync:v14 outURL:v22 maxBytes:bytes completionHandler:v23];
}

void __53__BLTAVUtil_transcodeURL_outURL_maxBytes_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [*(a1 + 32) absoluteURL];
  v6 = [v5 path];
  v14 = 0;
  v7 = [v4 attributesOfItemAtPath:v6 error:&v14];
  v8 = v14;
  v9 = [v7 fileSize];

  v11 = blt_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138412802;
    v16 = v12;
    v17 = 2048;
    v18 = v9;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Transcoding: File %@ has size %llu with error %@", buf, 0x20u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

+ (void)_transcodeVideoAsync:(id)async outURL:(id)l maxBytes:(unint64_t)bytes completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  asyncCopy = async;
  lCopy = l;
  handlerCopy = handler;
  v12 = [asyncCopy tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v13 = [v12 count];

  v14 = [asyncCopy tracksWithMediaType:*MEMORY[0x277CE5E48]];
  v15 = [v14 count];

  v16 = *MEMORY[0x277CE5C60];
  if (v13)
  {
    goto LABEL_4;
  }

  if (v15)
  {
    v17 = *MEMORY[0x277CE5C68];

    v16 = v17;
LABEL_4:
    v18 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:asyncCopy presetName:v16];
    v19 = blt_general_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        supportedFileTypes = [v18 supportedFileTypes];
        *buf = 138412290;
        v35 = supportedFileTypes;
        _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "Transcoding: Supported file types: %@", buf, 0xCu);
      }

      supportedFileTypes2 = [v18 supportedFileTypes];
      v23 = [supportedFileTypes2 objectAtIndex:0];

      v25 = blt_general_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v23;
        _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_DEFAULT, "Transcoding:   outputFileType: %@", buf, 0xCu);
      }

      if (v23)
      {
        [v18 setOutputFileType:v23];
        [v18 setFileLengthLimit:bytes];
        v27 = blt_general_log([v18 setOutputURL:lCopy]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          outputURL = [v18 outputURL];
          *buf = 138412546;
          v35 = v16;
          v36 = 2112;
          v37 = outputURL;
          _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_DEFAULT, "Transcoding:     Preset name: %@, outputURL: %@", buf, 0x16u);
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __68__BLTAVUtil__transcodeVideoAsync_outURL_maxBytes_completionHandler___block_invoke;
        v31[3] = &unk_278D31980;
        v32 = v18;
        v33 = handlerCopy;
        [v32 exportAsynchronouslyWithCompletionHandler:v31];

        v29 = v32;
      }

      else
      {
        v30 = blt_general_log(v26);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241FB3000, v30, OS_LOG_TYPE_DEFAULT, "Transcoding: Could not find a valid outputType for Message presets", buf, 2u);
        }

        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.avutil" code:3 userInfo:0];
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v29);
        }
      }
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_DEFAULT, "Transcoding: Could not create export session with Message presets", buf, 2u);
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.avutil" code:3 userInfo:0];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, v23);
      }
    }

    goto LABEL_23;
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.avutil" code:1 userInfo:0];
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v18);
  }

LABEL_23:
}

void __68__BLTAVUtil__transcodeVideoAsync_outURL_maxBytes_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) status];
  v3 = blt_general_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 5)
  {
    if (v4)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Transcoding: Export canceled", &v10, 2u);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = 2;
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) error];
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Transcoding: Export failed: %@", &v10, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = 3;
LABEL_9:
    v8 = [v6 errorWithDomain:@"com.apple.bulletindistributor.avutil" code:v7 userInfo:0];
    goto LABEL_13;
  }

  if (v4)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Transcoding: Export succeeded!", &v10, 2u);
  }

  [*(a1 + 32) outputURL];
  v8 = 0;
LABEL_13:
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

@end