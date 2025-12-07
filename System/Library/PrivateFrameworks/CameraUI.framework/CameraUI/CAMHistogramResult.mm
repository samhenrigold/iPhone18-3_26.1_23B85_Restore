@interface CAMHistogramResult
- (CAMHistogramResult)initWithHistogramObject:(id)object forDeviceFormat:(id)format;
- (NSString)metadataType;
@end

@implementation CAMHistogramResult

- (CAMHistogramResult)initWithHistogramObject:(id)object forDeviceFormat:(id)format
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  formatCopy = format;
  v39.receiver = self;
  v39.super_class = CAMHistogramResult;
  v9 = [(CAMHistogramResult *)&v39 init];
  if (v9)
  {
    lumaHistogramData = [objectCopy lumaHistogramData];
    lumaHistogramBinCount = [objectCopy lumaHistogramBinCount];
    if (lumaHistogramBinCount)
    {
      if ([lumaHistogramData length])
      {
        objc_storeStrong(&v9->__metadataHistogramObject, object);
        type = [objectCopy type];
        uniqueIdentifier = v9->_uniqueIdentifier;
        v9->_uniqueIdentifier = type;

        *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
        v17 = block - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        [lumaHistogramData getBytes:v17 length:{objc_msgSend(lumaHistogramData, "length", v15)}];
        v18 = 0;
        v19 = 0;
        do
        {
          v19 += *&v17[4 * v18++];
        }

        while (lumaHistogramBinCount != v18);
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v21 = vcvtmd_u64_f64(lumaHistogramBinCount * 0.0390625);
        MediaSubType = CMFormatDescriptionGetMediaSubType([formatCopy formatDescription]);
        v23 = 0;
        if (MediaSubType <= 875704437)
        {
          if (MediaSubType <= 645424687)
          {
            v25 = 0;
            if (MediaSubType == 641230384)
            {
              goto LABEL_28;
            }

            if (MediaSubType != 641234480)
            {
LABEL_40:
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke;
              block[3] = &__block_descriptor_36_e5_v8__0l;
              v38 = MediaSubType;
              if (initWithHistogramObject_forDeviceFormat__onceToken != -1)
              {
                dispatch_once(&initWithHistogramObject_forDeviceFormat__onceToken, block);
              }

              v23 = 0;
              v25 = 0;
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          if (MediaSubType == 645424688)
          {
            v25 = 0;
            goto LABEL_28;
          }

          if (MediaSubType == 645428784)
          {
            goto LABEL_27;
          }

          v24 = 875704422;
        }

        else
        {
          if (MediaSubType <= 2016686639)
          {
            if (MediaSubType != 875704438 && MediaSubType != 1882468912)
            {
              v24 = 1885745712;
              goto LABEL_23;
            }

LABEL_27:
            v25 = 10;
            v23 = 8;
            goto LABEL_28;
          }

          if (MediaSubType == 2016686640 || MediaSubType == 2016686642)
          {
            goto LABEL_27;
          }

          v24 = 2019963440;
        }

LABEL_23:
        v25 = 0;
        if (MediaSubType != v24)
        {
          goto LABEL_40;
        }

LABEL_28:
        v26 = 0.0;
        v27 = 0.0;
        v28 = v23 + v21;
        if (v28)
        {
          v29 = 0;
          v30 = v17;
          do
          {
            v31 = *v30;
            v30 += 4;
            v29 += v31;
            --v28;
          }

          while (v28);
          v27 = v29;
        }

        v32 = v25 + v21;
        if (v25 + v21)
        {
          v33 = 0;
          v34 = &v17[4 * lumaHistogramBinCount - 4];
          do
          {
            v35 = *v34;
            v34 -= 4;
            v33 += v35;
            --v32;
          }

          while (v32);
          v26 = v33;
        }

        v9->_shadowClipping = v27 / v20;
        v9->_highlightClipping = v26 / v20;
        lumaHistogramBinCount = v9;
        goto LABEL_37;
      }

      lumaHistogramBinCount = 0;
    }

LABEL_37:

    goto LABEL_38;
  }

  lumaHistogramBinCount = 0;
LABEL_38:

  return lumaHistogramBinCount;
}

void __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke_cold_1(a1, v2);
  }
}

- (NSString)metadataType
{
  _metadataHistogramObject = [(CAMHistogramResult *)self _metadataHistogramObject];
  type = [_metadataHistogramObject type];

  return type;
}

void __62__CAMHistogramResult_initWithHistogramObject_forDeviceFormat___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "CAMHistogramResult received with unsupported pixel format type: %d", v3, 8u);
}

@end