@interface FigCaptureSessionParsedMovieFileSinkConfiguration
- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration;
- (char)initWithCaptureConnectionConfigurations:(void *)configurations videoConnectionConfigurations:(char *)connectionConfigurations stillImageConnectionConfiguration:(int)configuration sceneClassifierConnectionConfigurationsBySourceID:;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedMovieFileSinkConfiguration

- (FigVideoCaptureConnectionConfiguration)primaryVideoConnectionConfiguration
{
  firstObject = [(NSArray *)self->_videoConnectionConfigurations firstObject];

  return firstObject;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  [(FigCaptureSessionParsedMovieFileSinkConfiguration *)&v3 dealloc];
}

- (char)initWithCaptureConnectionConfigurations:(void *)configurations videoConnectionConfigurations:(char *)connectionConfigurations stillImageConnectionConfiguration:(int)configuration sceneClassifierConnectionConfigurationsBySourceID:
{
  if (!self)
  {
    return 0;
  }

  v47.receiver = self;
  v47.super_class = FigCaptureSessionParsedMovieFileSinkConfiguration;
  v10 = objc_msgSendSuper2(&v47, sel_init);
  if (v10)
  {
    connectionConfigurationsCopy = connectionConfigurations;
    array = [MEMORY[0x1E695DF70] array];
    configurationsCopy = configurations;
    v36 = v10;
    *(v10 + 1) = configurationsCopy;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v13 = OUTLINED_FUNCTION_1_0(configurationsCopy, v12, &v43, v42);
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = *v44;
    v38 = v10 + 24;
    v16 = (v10 + 16);
    v40 = *MEMORY[0x1E6962900];
    v41 = (v10 + 40);
LABEL_5:
    v17 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_6_30();
      if (!v18)
      {
        objc_enumerationMutation(a2);
      }

      v19 = *(*(&v43 + 1) + 8 * v17);
      mediaType = [v19 mediaType];
      if (mediaType == 1685091432)
      {
        break;
      }

      v22 = v16;
      if (mediaType == 1936684398)
      {
        goto LABEL_20;
      }

      if (mediaType == 1835365473)
      {
        mediaType = [objc_msgSend(v19 "sourceConfiguration")];
        if (mediaType == 1)
        {
          if (![v19 formatDescription])
          {
            OUTLINED_FUNCTION_9_19();
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_45();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v34, v5, connectionConfigurationsCopy, configuration, v36, v38, array);
            OUTLINED_FUNCTION_9_19();
            emitter = fig_log_get_emitter();
            v31 = 918;
            goto LABEL_30;
          }

          Identifiers = CMMetadataFormatDescriptionGetIdentifiers([v19 formatDescription]);
          if (![(__CFArray *)Identifiers count])
          {
            OUTLINED_FUNCTION_9_19();
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_45();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v34, v5, connectionConfigurationsCopy, configuration, v36, v38, array);
            OUTLINED_FUNCTION_9_19();
            emitter = fig_log_get_emitter();
            v31 = 920;
            goto LABEL_30;
          }

          if (FigMetadataItemConnectionConfigurationRequiresObjectDetection(v19))
          {
            [array addObject:v19];
          }

          mediaType = [(__CFArray *)Identifiers containsObject:v40];
          if (mediaType)
          {
            v22 = v38;
            if (*v38)
            {
              OUTLINED_FUNCTION_9_19();
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_45();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v34, v5, connectionConfigurationsCopy, configuration, v36, v38, array);
              OUTLINED_FUNCTION_9_19();
              emitter = fig_log_get_emitter();
              v31 = 928;
LABEL_30:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigCaptureSessionParsedConfiguration >>>>", v31, v15, v29, v30, v33);

              return 0;
            }

            goto LABEL_20;
          }
        }
      }

LABEL_21:
      if (v14 == ++v17)
      {
        v14 = OUTLINED_FUNCTION_1_0(mediaType, v21, &v43, v42);
        if (v14)
        {
          goto LABEL_5;
        }

LABEL_23:
        v10 = v36;
        *(v36 + 6) = connectionConfigurationsCopy;
        v24 = [array count];
        if (v24)
        {
          v24 = array;
        }

        *(v36 + 4) = v24;
        [objc_msgSend(objc_msgSend(*(v36 + 1) "firstObject")];
        v25 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
        underlyingDeviceType = [v25 underlyingDeviceType];
        if (underlyingDeviceType == [objc_msgSend(*(v36 + 1) "firstObject")])
        {
          *(v36 + 7) = v25;
        }

        return v10;
      }
    }

    v22 = v41;
LABEL_20:
    mediaType = v19;
    *v22 = mediaType;
    goto LABEL_21;
  }

  return v10;
}

@end