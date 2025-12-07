@interface IMMultiFrameImage
- (BOOL)finalizeASTCWithError:(id *)error;
- (BOOL)writeASTCImage:(CGImage *)image duration:(double)duration error:(id *)error;
- (id)initForWritingWithFileURL:(id)l scale:(float)scale;
- (void)deleteStream;
@end

@implementation IMMultiFrameImage

- (id)initForWritingWithFileURL:(id)l scale:(float)scale
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v16.receiver = self;
  v16.super_class = IMMultiFrameImage;
  v8 = [(IMMultiFrameImage *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputURL, l);
    scaleCopy = 1.0;
    if (scale > 0.0)
    {
      scaleCopy = scale;
    }

    v9->_scale = scaleCopy;
    v11 = [MEMORY[0x277CBEB78] outputStreamWithURL:lCopy append:0];
    outputStream = v9->_outputStream;
    v9->_outputStream = v11;

    [(NSOutputStream *)v9->_outputStream open];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    durations = v9->_durations;
    v9->_durations = v13;
  }

  return v9;
}

- (void)deleteStream
{
  v10[1] = *MEMORY[0x277D85DE8];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  [outputStream close];

  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  outputURL = [(IMMultiFrameImage *)self outputURL];
  v10[0] = 0;
  v6 = [v4 removeItemAtURL:outputURL error:v10];
  v7 = v10[0];

  if ((v6 & 1) == 0)
  {
    v9 = IMMultiFrameImageLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(OptimizedBitmap_Persistence) deleteStream];
    }
  }
}

- (BOOL)writeASTCImage:(CGImage *)image duration:(double)duration error:(id *)error
{
  v46[3] = *MEMORY[0x277D85DE8];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  v10 = outputStream;
  if (!image || duration == 0.0)
  {
    v14 = IMMultiFrameImageLogHandle(outputStream);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) writeASTCImage:image duration:v14 error:duration];
    }

    v20 = 0;
  }

  else
  {
    durations = [(IMMultiFrameImage *)self durations];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    [durations addObject:v12];

    v13 = *MEMORY[0x277CD2DD0];
    v45[0] = *MEMORY[0x277CD2F40];
    v45[1] = v13;
    v46[0] = *MEMORY[0x277CD2DD8];
    v46[1] = &unk_286A12090;
    v45[2] = *MEMORY[0x277CD2DE0];
    v46[2] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
    v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v16 = CGImageDestinationCreateWithData(v15, @"org.khronos.ktx", 1uLL, 0);
    CGImageDestinationAddImage(v16, image, v14);
    v17 = CGImageDestinationFinalize(v16);
    CFRelease(v16);
    if (v17)
    {
      v43 = 0;
      v44 = [(__CFData *)v15 length];
      v41 = 0;
      v42[0] = &v41;
      v42[1] = 0x3032000000;
      v42[2] = __Block_byref_object_copy_;
      v42[3] = __Block_byref_object_dispose_;
      if ([v10 write:&v44 maxLength:8] == 8)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke;
        v33[3] = &unk_2798C3D60;
        v34 = v10;
        v35 = &v41;
        v36 = &v37;
        [(__CFData *)v15 enumerateByteRangesUsingBlock:v33];
        v19 = *(v38 + 24);
        if (error && (v38[3] & 1) != 0)
        {
          *error = *(v42[0] + 40);
        }

        v20 = v19 ^ 1;
        _Block_object_dispose(&v37, 8);
      }

      else
      {
        streamError = [v10 streamError];
        v23 = *(v42[0] + 40);
        *(v42[0] + 40) = streamError;

        v25 = IMMultiFrameImageLogHandle(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(IMMultiFrameImage(ASTC_Persistence) *)v42 writeASTCImage:v25 duration:v26 error:v27, v28, v29, v30, v31];
        }

        v20 = 0;
        if (error)
        {
          *error = *(v42[0] + 40);
        }
      }

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v21 = IMMultiFrameImageLogHandle(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [IMMultiFrameImage(ASTC_Persistence) writeASTCImage:v21 duration:? error:?];
      }

      v20 = 0;
    }
  }

  return v20 & 1;
}

void __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if ([*(a1 + 32) write:a2 maxLength:?] != a4)
  {
    v7 = [*(a1 + 32) streamError];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11 = IMMultiFrameImageLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke_cold_1(a1 + 40, v11, v12, v13, v14, v15, v16, v17);
    }

    *a5 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)finalizeASTCWithError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCABB0];
  [(IMMultiFrameImage *)self scale];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"CKAnimatedImageScale"];

  durations = [(IMMultiFrameImage *)self durations];

  if (durations)
  {
    durations2 = [(IMMultiFrameImage *)self durations];
    [v5 setObject:durations2 forKeyedSubscript:@"CKAnimatedImageDurations"];
  }

  v10 = [v5 copy];
  outputStream = [(IMMultiFrameImage *)self outputStream];
  v27[0] = 0;
  v12 = [MEMORY[0x277CCAC58] writePropertyList:v10 toStream:outputStream format:200 options:0 error:v27];
  v13 = v27[0];
  v14 = v13;
  if (v12 <= 0)
  {
    v19 = IMMultiFrameImageLogHandle(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

    streamError = v14;
    goto LABEL_17;
  }

  v26 = v12;
  if ([outputStream write:&v26 maxLength:8] != 8)
  {
    streamError = [outputStream streamError];
    v20 = IMMultiFrameImageLogHandle(streamError);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

    goto LABEL_16;
  }

  durations3 = [(IMMultiFrameImage *)self durations];
  v16 = [durations3 count];

  v26 = v16;
  if ([outputStream write:&v26 maxLength:8] != 8)
  {
    streamError = [outputStream streamError];
    v20 = IMMultiFrameImageLogHandle(streamError);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }

LABEL_16:

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  LODWORD(v26) = 1129005385;
  v17 = [outputStream write:&v26 maxLength:4];
  v18 = v17 == 4;
  if (v17 == 4)
  {
    streamError = 0;
  }

  else
  {
    streamError = [outputStream streamError];
    v24 = IMMultiFrameImageLogHandle(streamError);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [IMMultiFrameImage(ASTC_Persistence) finalizeASTCWithError:];
    }
  }

LABEL_18:
  [outputStream close];
  if (error)
  {
    v21 = streamError;
    *error = streamError;
  }

  return v18;
}

void __69__IMMultiFrameImage_ASTC_Persistence__writeASTCImage_duration_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0(&dword_258CD3000, a2, a3, "Failed to write image data to stream with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end