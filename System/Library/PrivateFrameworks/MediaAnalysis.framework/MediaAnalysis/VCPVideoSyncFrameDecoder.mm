@interface VCPVideoSyncFrameDecoder
+ (BOOL)isSyncFrameForCMSampleBuffer:(opaqueCMSampleBuffer *)buffer;
+ (BOOL)readBigEndianInt:(int *)int fromBlockBuffer:(OpaqueCMBlockBuffer *)buffer forNumBytes:(int)bytes atOffset:(unint64_t)offset;
- (BOOL)decodeCMSampleBuffer:(opaqueCMSampleBuffer *)buffer toCMSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer error:(id *)error;
- (VCPVideoSyncFrameDecoder)initWithDecoderSettings:(id)settings formatDescription:(opaqueCMFormatDescription *)description rotationAngle:(int)angle;
- (void)dealloc;
@end

@implementation VCPVideoSyncFrameDecoder

- (VCPVideoSyncFrameDecoder)initWithDecoderSettings:(id)settings formatDescription:(opaqueCMFormatDescription *)description rotationAngle:(int)angle
{
  v53 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v48.receiver = self;
  v48.super_class = VCPVideoSyncFrameDecoder;
  v9 = [(VCPVideoSyncFrameDecoder *)&v48 init];
  if (v9)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = *MEMORY[0x1E6966208];
    v12 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    [dictionary setObject:v12 forKeyedSubscript:v11];

    v13 = *MEMORY[0x1E69660B8];
    v14 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    [dictionary setObject:v14 forKeyedSubscript:v13];

    v15 = *MEMORY[0x1E6966130];
    v16 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x1E6966130]];
    [dictionary setObject:v16 forKeyedSubscript:v15];

    v17 = MediaAnalysisLogLevel();
    if (v17 >= 6)
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v17)
      {
        v18 = objc_opt_class();
        *buf = 138412546;
        v50 = v18;
        v51 = 2112;
        v52 = dictionary;
        v19 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Creating VTDecompressionSession with pixelBufferAttributes %@", buf, 0x16u);
      }
    }

    v20 = VCPSignPostLog(v17);
    v21 = os_signpost_id_generate(v20);

    v23 = VCPSignPostLog(v22);
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VTDecompressionSession_Create", "", buf, 2u);
    }

    value = v9->_decompressionSession.value_;
    if (value)
    {
      CFRelease(value);
      v9->_decompressionSession.value_ = 0;
    }

    v26 = VTDecompressionSessionCreate(*MEMORY[0x1E695E480], description, 0, dictionary, 0, &v9->_decompressionSession.value_);
    if (v26)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        *buf = 138412290;
        v50 = v27;
        v28 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create VTDecompressionSession", buf, 0xCu);
      }

LABEL_34:

      v44 = 0;
      goto LABEL_35;
    }

    v29 = VCPSignPostLog(v26);
    v30 = v29;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v21, "VTDecompressionSession_Create", "", buf, 2u);
    }

    v9->_requiresRotation = angle != 0;
    if (angle)
    {
      v31 = MediaAnalysisLogLevel();
      if (v31 >= 6)
      {
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
        if (v31)
        {
          v32 = objc_opt_class();
          *buf = 138412546;
          v50 = v32;
          v51 = 1024;
          LODWORD(v52) = angle;
          v33 = v32;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Creating ma::Rotator with rotation angle %d", buf, 0x12u);
        }
      }

      v34 = VCPSignPostLog(v31);
      v35 = os_signpost_id_generate(v34);

      v37 = VCPSignPostLog(v36);
      v38 = v37;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "MARotator_Create", "", buf, 2u);
      }

      v39 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
      if (!v39)
      {
        v9->_rotator = 0;
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          *buf = 138412290;
          v50 = v45;
          v46 = v45;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create ma::Rotator", buf, 0xCu);
        }

        goto LABEL_34;
      }

      v40 = v39;
      v41 = ma::Rotator::Rotator(v39, angle);
      v9->_rotator = v40;
      v42 = VCPSignPostLog(v41);
      v43 = v42;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v35, "MARotator_Create", "", buf, 2u);
      }
    }
  }

  v44 = v9;
LABEL_35:

  return v44;
}

- (void)dealloc
{
  rotator = self->_rotator;
  if (rotator)
  {
    ma::Rotator::~Rotator(rotator);
    MEMORY[0x1CCA95C50]();
  }

  v4.receiver = self;
  v4.super_class = VCPVideoSyncFrameDecoder;
  [(VCPVideoSyncFrameDecoder *)&v4 dealloc];
}

+ (BOOL)readBigEndianInt:(int *)int fromBlockBuffer:(OpaqueCMBlockBuffer *)buffer forNumBytes:(int)bytes atOffset:(unint64_t)offset
{
  v25 = *MEMORY[0x1E69E9840];
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(buffer, offset, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
  {
    if (MediaAnalysisLogLevel() < 3)
    {
LABEL_19:
      LOBYTE(v9) = 0;
      return v9;
    }

    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      v10 = objc_opt_class();
      *buf = 138412290;
      v22 = v10;
      v11 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to obtain raw data pointer from the given block buffer", buf, 0xCu);

      goto LABEL_19;
    }
  }

  else
  {
    if (lengthAtOffsetOut + offset == totalLengthOut)
    {
      switch(bytes)
      {
        case 4:
          v12 = bswap32(*dataPointerOut);
          break;
        case 2:
          v12 = bswap32(*dataPointerOut) >> 16;
          break;
        case 1:
          v12 = *dataPointerOut;
          break;
        default:
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_19;
          }

          v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v9)
          {
            v15 = objc_opt_class();
            *buf = 138412546;
            v22 = v15;
            v23 = 1024;
            bytesCopy = bytes;
            v16 = v15;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid parameter for numBytes: %d", buf, 0x12u);

            goto LABEL_19;
          }

          return v9;
      }

      *int = v12;
      LOBYTE(v9) = 1;
      return v9;
    }

    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_19;
    }

    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      v13 = objc_opt_class();
      *buf = 138412290;
      v22 = v13;
      v14 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] The input block buffer is not contiguous", buf, 0xCu);

      goto LABEL_19;
    }
  }

  return v9;
}

+ (BOOL)isSyncFrameForCMSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = objc_opt_class();
      v13 = v42;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Requested CMSampleBuffer is NULL", buf, 0xCu);
    }

    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  if (!FormatDescription)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = objc_opt_class();
      v14 = v42;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No format description in the requested CMSampleBuffer", buf, 0xCu);
    }

    return 0;
  }

  v5 = FormatDescription;
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v7 = MediaSubType;
  if (MediaSubType != 1635148593 && MediaSubType != 1752589105)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = objc_opt_class();
      v43 = 1024;
      *v44 = v7;
      v15 = v42;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Unsupported codec type: %d", buf, 0x12u);
    }

    return 0;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(buffer);
  if (!DataBuffer)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = objc_opt_class();
      v16 = v42;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No block buffer in the requested CMSampleBuffer", buf, 0xCu);
    }

    return 0;
  }

  blockBufferOut = 0;
  CMBlockBufferCreateContiguous(0, DataBuffer, 0, 0, 0, 0, 0, &blockBufferOut);
  if (v7 == 1752589105)
  {
    NALUnitHeaderLengthOut = 0;
    if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(v5, 0, 0, 0, 0, &NALUnitHeaderLengthOut) || !NALUnitHeaderLengthOut)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138412290;
        v42 = v23;
        v24 = v23;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][HEVC] Failed to get NAL Unit header length", buf, 0xCu);
      }
    }

    else
    {
      DataLength = CMBlockBufferGetDataLength(blockBufferOut);
      if (DataLength > NALUnitHeaderLengthOut + 2)
      {
        v19 = 0;
        do
        {
          v38 = 0;
          if (([objc_opt_class() readBigEndianInt:&v38 fromBlockBuffer:blockBufferOut forNumBytes:NALUnitHeaderLengthOut atOffset:v19] & 1) == 0)
          {
            break;
          }

          if (v38 <= 1)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v27 = objc_opt_class();
              *buf = 138412546;
              v42 = v27;
              v43 = 1024;
              *v44 = v38;
              v28 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][HEVC] Invalid NAL Unit length %d", buf, 0x12u);
            }

            break;
          }

          if (DataLength < v38 + 4)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              *buf = 138412802;
              v42 = v31;
              v43 = 1024;
              *v44 = v38;
              v44[2] = 2048;
              *&v44[3] = DataLength;
              v32 = v31;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][HEVC] Attempting to read past end of block buffer (NAL Unit length %d, remaining block buffer length %zu)", buf, 0x1Cu);
            }

            break;
          }

          v37 = 0;
          nALUnitHeaderLengthOut = [objc_opt_class() readBigEndianInt:&v37 fromBlockBuffer:blockBufferOut forNumBytes:2 atOffset:v19 + NALUnitHeaderLengthOut];
          if ((nALUnitHeaderLengthOut & 1) == 0)
          {
            goto LABEL_55;
          }

          if ((v37 & 0x8000) != 0)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v35 = objc_opt_class();
              *buf = 138412546;
              v42 = v35;
              v43 = 2048;
              *v44 = 1;
              v36 = v35;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][HEVC] Invalid forbidden zero bit value %zu", buf, 0x16u);
            }

            break;
          }

          if ((v37 & 0x1F8) == 0 && ((v37 >> 9) & 0x3E) - 16 < 6)
          {
            goto LABEL_55;
          }

          v20 = v38 + NALUnitHeaderLengthOut;
          v19 += v20;
          DataLength -= v20;
        }

        while (DataLength > NALUnitHeaderLengthOut + 2);
      }
    }
  }

  else if (v7 == 1635148593)
  {
    NALUnitHeaderLengthOut = 0;
    if (CMVideoFormatDescriptionGetH264ParameterSetAtIndex(v5, 0, 0, 0, 0, &NALUnitHeaderLengthOut) || !NALUnitHeaderLengthOut)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138412290;
        v42 = v21;
        v22 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][H264] Failed to get NAL Unit header length", buf, 0xCu);
      }
    }

    else
    {
      v9 = CMBlockBufferGetDataLength(blockBufferOut);
      if (v9 > NALUnitHeaderLengthOut + 1)
      {
        v10 = 0;
        do
        {
          v38 = 0;
          if (([objc_opt_class() readBigEndianInt:&v38 fromBlockBuffer:blockBufferOut forNumBytes:NALUnitHeaderLengthOut atOffset:v10] & 1) == 0)
          {
            break;
          }

          if (v38 <= 0)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v25 = objc_opt_class();
              *buf = 138412546;
              v42 = v25;
              v43 = 1024;
              *v44 = v38;
              v26 = v25;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][H264] Invalid NAL Unit length %d", buf, 0x12u);
            }

            break;
          }

          if (v9 < v38 + 4)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v29 = objc_opt_class();
              *buf = 138412802;
              v42 = v29;
              v43 = 1024;
              *v44 = v38;
              v44[2] = 2048;
              *&v44[3] = v9;
              v30 = v29;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][H264] Attempting to read past end of block buffer (NAL Unit length %d, remaining block buffer length %zu)", buf, 0x1Cu);
            }

            break;
          }

          v37 = 0;
          nALUnitHeaderLengthOut = [objc_opt_class() readBigEndianInt:&v37 fromBlockBuffer:blockBufferOut forNumBytes:1 atOffset:v10 + NALUnitHeaderLengthOut];
          if ((nALUnitHeaderLengthOut & 1) == 0)
          {
            goto LABEL_55;
          }

          if ((v37 & 0x80) != 0)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              *buf = 138412546;
              v42 = v33;
              v43 = 2048;
              *v44 = 1;
              v34 = v33;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][H264] Invalid forbidden zero bit value %zu", buf, 0x16u);
            }

            break;
          }

          if ((v37 & 0x60) != 0 && (v37 & 0x1F) == 5)
          {
            goto LABEL_55;
          }

          v12 = v38 + NALUnitHeaderLengthOut;
          v10 += v12;
          v9 -= v12;
        }

        while (v9 > NALUnitHeaderLengthOut + 1);
      }
    }
  }

  nALUnitHeaderLengthOut = 0;
LABEL_55:
  CF<__CVBuffer *>::~CF(&blockBufferOut);
  return nALUnitHeaderLengthOut;
}

- (BOOL)decodeCMSampleBuffer:(opaqueCMSampleBuffer *)buffer toCMSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer error:(id *)error
{
  v85[1] = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] No CMSampleBuffer", objc_opt_class()];
      v85[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
      *error = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v23];
    }

    return 0;
  }

  if (!self->_decompressionSession.value_)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v82 = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] No VTDecompressionSession", objc_opt_class()];
      v83 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      *error = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v26];
    }

    return 0;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3812000000;
  v65 = __Block_byref_object_copy__33;
  v66 = __Block_byref_object_dispose__33;
  v67 = &unk_1CA01F5A2;
  v68 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__VCPVideoSyncFrameDecoder_decodeCMSampleBuffer_toCMSampleBuffer_error___block_invoke;
  aBlock[3] = &unk_1E834E548;
  aBlock[4] = &v62;
  v9 = _Block_copy(aBlock);
  v10 = VCPSignPostLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf.duration.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VTDecompressionSession_Decode", "", &buf, 2u);
  }

  v15 = VTDecompressionSessionDecodeFrameWithOutputHandler(self->_decompressionSession.value_, buffer, 0, 0, v9);
  v16 = v15;
  if (!v15)
  {
    v28 = VCPSignPostLog(v15);
    v29 = v28;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      LOWORD(buf.duration.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v11, "VTDecompressionSession_Decode", "", &buf, 2u);
    }

    if (!v63[6])
    {
      if (error)
      {
        v43 = MEMORY[0x1E696ABC0];
        v78 = *MEMORY[0x1E696A578];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to decode sync frame", objc_opt_class()];
        v79 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        *error = [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v45];
      }

      goto LABEL_9;
    }

    if (self->_requiresRotation)
    {
      if (!self->_rotator)
      {
        if (error)
        {
          v46 = MEMORY[0x1E696ABC0];
          v76 = *MEMORY[0x1E696A578];
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] No ma::Rotator", objc_opt_class()];
          v77 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          *error = [v46 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v48];
        }

        goto LABEL_9;
      }

      buf.duration.value = 0;
      v31 = VCPSignPostLog(v30);
      v32 = os_signpost_id_generate(v31);

      v34 = VCPSignPostLog(v33);
      v35 = v34;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        LOWORD(v60.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v32, "MARotator_Rotate", "", &v60, 2u);
      }

      rotator = self->_rotator;
      v37 = v63[6];
      if (buf.duration.value)
      {
        CFRelease(buf.duration.value);
        buf.duration.value = 0;
      }

      v38 = ma::Rotator::Rotate(rotator, v37, &buf);
      v39 = v38;
      if (v38)
      {
        if (error)
        {
          v40 = MEMORY[0x1E696ABC0];
          v74 = *MEMORY[0x1E696A578];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to perform rotation", objc_opt_class()];
          v75 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          *error = [v40 errorWithDomain:*MEMORY[0x1E696A768] code:v39 userInfo:v42];
        }

        CF<__CVBuffer *>::~CF(&buf);
        goto LABEL_9;
      }

      v49 = VCPSignPostLog(v38);
      v50 = v49;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        LOWORD(v60.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_END, v32, "MARotator_Rotate", "", &v60, 2u);
      }

      CF<__CVBuffer *>::operator=(v63 + 6, &buf);
      CF<__CVBuffer *>::~CF(&buf);
    }

    memset(&v60, 0, sizeof(v60));
    CMSampleBufferGetPresentationTimeStamp(&v60, buffer);
    v51 = v63[6];
    v59 = v60;
    formatDescriptionOut = 0;
    v52 = CMVideoFormatDescriptionCreateForImageBuffer(0, v51, &formatDescriptionOut);
    if (v52)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.duration.value) = 0;
        v53 = MEMORY[0x1E69E9C10];
        v54 = "[CVPixelBuffer->CMSampleBuffer] Failed to create format description";
        p_buf = &buf;
LABEL_48:
        _os_log_impl(&dword_1C9B70000, v53, OS_LOG_TYPE_ERROR, v54, p_buf, 2u);
      }
    }

    else
    {
      *&buf.duration.value = *MEMORY[0x1E6960C70];
      buf.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      buf.presentationTimeStamp = v59;
      buf.decodeTimeStamp = buf.duration;
      v52 = CMSampleBufferCreateReadyWithImageBuffer(*MEMORY[0x1E695E480], v51, formatDescriptionOut, &buf, sampleBuffer);
      if (v52 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v69 = 0;
        v53 = MEMORY[0x1E69E9C10];
        v54 = "[CVPixelBuffer->CMSampleBuffer] Failed to create CMSampleBuffer";
        p_buf = v69;
        goto LABEL_48;
      }
    }

    CF<__CVBuffer *>::~CF(&formatDescriptionOut);
    v20 = v52 == 0;
    if (error && v52)
    {
      v56 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A578];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to perform CMSampleBuffer_CreateWithCVPixelBuffer", objc_opt_class()];
      v73 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      *error = [v56 errorWithDomain:*MEMORY[0x1E696A768] code:v52 userInfo:v58];
    }

    goto LABEL_10;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to perform VTDecompressionSessionDecodeFrameWithOutputHandler", objc_opt_class()];
    v81 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    *error = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:v16 userInfo:v19];
  }

LABEL_9:
  v20 = 0;
LABEL_10:

  _Block_object_dispose(&v62, 8);
  CF<__CVBuffer *>::~CF(&v68);
  return v20;
}

void __72__VCPVideoSyncFrameDecoder_decodeCMSampleBuffer_toCMSampleBuffer_error___block_invoke(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v6[0] = CFRetain(cf);
    CF<__CVBuffer *>::operator=((*(*(a1 + 32) + 8) + 48), v6);
    CF<__CVBuffer *>::~CF(v6);
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(v6[0]) = 67109120;
    HIDWORD(v6[0]) = a2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to decode CMSampleBuffer via VTDecompressionSession (%d)", v6, 8u);
  }
}

@end