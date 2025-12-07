@interface RPAudioMixUtility
+ (id)exportPresetForAVAsset:(id)asset;
+ (id)tempFileURL;
+ (id)videoCodecTypeForAVAsset:(id)asset;
+ (void)mixAudioForMovie:(id)movie finalMovieURL:(id)l outputFileType:(id)type withCompletionHandler:(id)handler;
+ (void)mixAudioForMovie:(id)movie withCompletionHandler:(id)handler;
@end

@implementation RPAudioMixUtility

+ (void)mixAudioForMovie:(id)movie withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  movieCopy = movie;
  v7 = +[RPAudioMixUtility tempFileURL];
  v8 = *MEMORY[0x277CE5D98];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__RPAudioMixUtility_mixAudioForMovie_withCompletionHandler___block_invoke;
  v11[3] = &unk_278B62378;
  v12 = v7;
  v13 = handlerCopy;
  v9 = v7;
  v10 = handlerCopy;
  [RPAudioMixUtility mixAudioForMovie:movieCopy finalMovieURL:v9 outputFileType:v8 withCompletionHandler:v11];
}

uint64_t __60__RPAudioMixUtility_mixAudioForMovie_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

+ (void)mixAudioForMovie:(id)movie finalMovieURL:(id)l outputFileType:(id)type withCompletionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  movieCopy = movie;
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  if (movieCopy)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 33;
        v42 = 2112;
        v43 = movieCopy;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d movieURL  %@", buf, 0x1Cu);
      }

      if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
        v40 = 1024;
        v41 = 34;
        v42 = 2112;
        v43 = lCopy;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d finalMovieURL %@", buf, 0x1Cu);
      }
    }

    v29 = movieCopy;
    v13 = [MEMORY[0x277CE63D8] assetWithURL:movieCopy];
    v26 = [RPAudioMixUtility exportPresetForAVAsset:v13];
    v14 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:v13 presetName:v26];
    v28 = lCopy;
    [v14 setOutputURL:lCopy];
    v27 = typeCopy;
    [v14 setOutputFileType:typeCopy];
    v15 = [v13 tracksWithMediaType:*MEMORY[0x277CE5E48]];
    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          audioMixInputParameters = [MEMORY[0x277CE6540] audioMixInputParameters];
          [audioMixInputParameters setTrackID:{objc_msgSend(v22, "trackID")}];
          [array addObject:audioMixInputParameters];
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    audioMix = [MEMORY[0x277CE6538] audioMix];
    [audioMix setInputParameters:array];
    [v14 setAudioMix:audioMix];
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v39 = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]";
      v40 = 1024;
      v41 = 63;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d starting export session", buf, 0x12u);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __89__RPAudioMixUtility_mixAudioForMovie_finalMovieURL_outputFileType_withCompletionHandler___block_invoke;
    v30[3] = &unk_278B61D70;
    v31 = v14;
    v32 = handlerCopy;
    v25 = v14;
    [v25 exportAsynchronouslyWithCompletionHandler:v30];

    lCopy = v28;
    movieCopy = v29;
    typeCopy = v27;
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:];
    }

    v13 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5818 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

void __89__RPAudioMixUtility_mixAudioForMovie_finalMovieURL_outputFileType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v7 = 136446466;
    *&v7[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v7[12] = 1024;
    *&v7[14] = 72;
    v3 = MEMORY[0x277D86220];
    v4 = " [INFO] %{public}s:%d AVAssetExportSessionStatusCancelled";
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v7 = 136446466;
    *&v7[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v7[12] = 1024;
    *&v7[14] = 67;
    v3 = MEMORY[0x277D86220];
    v4 = " [INFO] %{public}s:%d AVAssetExportSessionFailed";
LABEL_9:
    _os_log_impl(&dword_23A863000, v3, OS_LOG_TYPE_DEFAULT, v4, v7, 0x12u);
LABEL_10:
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5818 userInfo:{0, *v7, *&v7[8]}];
    (*(v5 + 16))(v5, v6);

    return;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136446466;
    *&v7[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v7[12] = 1024;
    *&v7[14] = 77;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportSession returned with no errors", v7, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)tempFileURL
{
  v2 = MEMORY[0x277CCACA8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _srTempPath = [defaultManager _srTempPath];
  v5 = [v2 stringWithFormat:@"%@/RPReplay_Final", _srTempPath];

  v6 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v9 = [v6 stringWithFormat:@"%ld", v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v9, @".mp4"];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];

  return v11;
}

+ (id)videoCodecTypeForAVAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [asset tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v3 count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility videoCodecTypeForAVAsset:];
    }

    formatDescriptions = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  formatDescriptions = [v4 formatDescriptions];
  if ([formatDescriptions count] != 1)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RPAudioMixUtility videoCodecTypeForAVAsset:];
    }

LABEL_14:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = [formatDescriptions objectAtIndexedSubscript:0];
  MediaSubType = CMFormatDescriptionGetMediaSubType(v6);

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:RPStringUtility_FourccToCStr(MediaSubType)];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "+[RPAudioMixUtility videoCodecTypeForAVAsset:]";
    v13 = 1024;
    v14 = 111;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d videoCodecType=%@", &v11, 0x1Cu);
  }

LABEL_6:
  v9 = v8;

  return v8;
}

+ (id)exportPresetForAVAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE5C00];
  v5 = [RPAudioMixUtility videoCodecTypeForAVAsset:asset];
  v6 = v5;
  if (!v5)
  {
    [(RPAudioMixUtility *)v4 exportPresetForAVAsset:v12];
    v4 = *v12;
    goto LABEL_7;
  }

  if (![v5 isEqualToString:*MEMORY[0x277CE6300]])
  {
    if ([v6 isEqualToString:*MEMORY[0x277CE62F8]])
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v12 = 136446466;
      *&v12[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v13 = 1024;
      v14 = 124;
      v9 = MEMORY[0x277D86220];
      v10 = " [INFO] %{public}s:%d AVAssetExportPresetHighestQuality for H264";
      v11 = 18;
    }

    else
    {
      if (__RPLogLevel > 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v12 = 136446722;
      *&v12[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
      v13 = 1024;
      v14 = 127;
      v15 = 2112;
      v16 = v6;
      v9 = MEMORY[0x277D86220];
      v10 = " [INFO] %{public}s:%d videoCodecType=%@, use default preset";
      v11 = 28;
    }

    _os_log_impl(&dword_23A863000, v9, OS_LOG_TYPE_DEFAULT, v10, v12, v11);
    goto LABEL_7;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136446466;
    *&v12[4] = "+[RPAudioMixUtility exportPresetForAVAsset:]";
    v13 = 1024;
    v14 = 121;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportPresetHEVCHighestQuality for HEVC", v12, 0x12u);
  }

  v7 = *MEMORY[0x277CE5BF8];

  v4 = v7;
LABEL_7:

  return v4;
}

+ (void)exportPresetForAVAsset:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v4, " [ERROR] %{public}s:%d Failed to get videoCodecType for asset", v5, v6, v7, v8);
  }

  *a2 = a1;
}

@end