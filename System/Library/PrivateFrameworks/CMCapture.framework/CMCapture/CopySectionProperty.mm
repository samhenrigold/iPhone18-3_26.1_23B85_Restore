@interface CopySectionProperty
@end

@implementation CopySectionProperty

uint64_t __captureSession_CopySectionProperty_block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 40) + 784) movieFileSinkPipelineWithSinkID:*(a1 + 48)];
  v4 = [*(*(a1 + 40) + 784) audioFileSinkPipelineWithSinkID:*(a1 + 48)];
  v5 = [*(*(a1 + 40) + 784) videoDataSinkPipelineWithSinkID:*(a1 + 48)];
  [v3 sinkID];
  if (FigCFEqual())
  {
    v6 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v3) objectAtIndexedSubscript:0];
    v5 = 0;
    v7 = 0;
    v8 = v6;
  }

  else if (v4)
  {
    v8 = [(FigCaptureAudioFileSinkPipeline *)v4 audioFileSinkNode];
    v5 = 0;
    v7 = 0;
    v6 = 0;
  }

  else
  {
    [objc_msgSend(*(*(a1 + 40) + 784) "micSourcePipeline")];
    if (FigCFEqual())
    {
      v7 = -[FigCaptureMicSourcePipeline sourceNode]([*(*(a1 + 40) + 784) micSourcePipeline]);
      v5 = 0;
    }

    else
    {
      if (v5)
      {
        v5 = [v5 sinkNode];
      }

      v7 = 0;
    }

    v6 = 0;
    v8 = 0;
  }

  if (CFEqual(*(a1 + 56), @"CaptureSessionFileSink_RecordedDuration"))
  {
    v9 = [*(*(a1 + 40) + 880) objectForKeyedSubscript:*(a1 + 48)];
    if (v9)
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, v9);
LABEL_19:
      v14 = *(a1 + 72);
      time = valuePtr;
      result = CMTimeCopyAsDictionary(&time, v14);
LABEL_33:
      **(a1 + 64) = result;
      return result;
    }

    if (v8)
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      objc_msgSend_lastFileDuration(v8);
      goto LABEL_19;
    }

    v17 = qword_1ED844048;
    v18 = v1;
    v19 = 24223;
    goto LABEL_45;
  }

  if (CFEqual(*(a1 + 56), @"CaptureSessionFileSink_RecordedSize"))
  {
    v12 = [*(*(a1 + 40) + 888) objectForKeyedSubscript:*(a1 + 48)];
    if (v12)
    {
      v13 = [v12 unsignedLongLongValue];
    }

    else
    {
      if (!v8)
      {
        v17 = qword_1ED844048;
        v18 = v1;
        v19 = 24237;
LABEL_45:
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE10, "<<<< FigCaptureSession >>>>", v19, v18, v10, v11, v31);
        *(*(*(a1 + 32) + 8) + 24) = result;
        return result;
      }

      v13 = [v8 lastFileSize];
    }

    valuePtr.value = v13;
    result = CFNumberCreate(*(a1 + 72), kCFNumberSInt64Type, &valuePtr);
    goto LABEL_33;
  }

  if (v6 && CFEqual(*(a1 + 56), @"CaptureSessionMovieFileSink_MovieLevelMetadata"))
  {
    v16 = v6;
    goto LABEL_23;
  }

  if (v7 && CFEqual(*(a1 + 56), @"CaptureSessionAudioSource_AudioMeteringLevels"))
  {
    result = [v7 audioLevels];
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_32:
    result = CFRetain(result);
    goto LABEL_33;
  }

  result = CFEqual(*(a1 + 56), @"CaptureSessionMetadataSource_MetadataFormatDescription");
  if (result)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [*(*(a1 + 40) + 784) metadataSourcePipelines];
    v21 = [v20 countByEnumeratingWithState:&v32 objects:&v31 count:16];
    if (v21)
    {
      v24 = v21;
      v25 = *v33;
LABEL_37:
      v26 = 0;
      while (1)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v32 + 1) + 8 * v26);
        if (objc_msgSend_isEqualToString_([v27 sourceID]))
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v20 countByEnumeratingWithState:&v32 objects:&v31 count:16];
          if (v24)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }

      v30 = [(FigCaptureMetadataSourcePipeline *)v27 sourceFormatDescription];
      if (!v30 || (result = CFRetain(v30), (v29 = result) == 0))
      {
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE10, "<<<< FigCaptureSession >>>>", 0x5EC2, v1, v22, v23, v31);
        v29 = 0;
        *(*(*(a1 + 32) + 8) + 24) = result;
      }

      if (v27)
      {
        goto LABEL_51;
      }
    }

    else
    {
LABEL_43:
      v29 = 0;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE10, "<<<< FigCaptureSession >>>>", 0x5EC8, v1, v22, v23, v31);
    *(*(*(a1 + 32) + 8) + 24) = result;
LABEL_51:
    **(a1 + 64) = v29;
  }

  else
  {
    if (v5)
    {
      result = CFEqual(*(a1 + 56), @"CaptureSessionVideoDataSinkProperty_MovieLevelMetadata");
      if (result)
      {
        v16 = v5;
LABEL_23:
        result = [v16 movieLevelMetadata];
        if (!result)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }

  return result;
}

@end