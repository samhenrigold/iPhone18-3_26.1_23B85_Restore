@interface CVNLPCaptionEncoder
- (void)_fill_blob_data:(id *)_fill_blob_data with:(float)with;
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs;
@end

@implementation CVNLPCaptionEncoder

- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)_fill_blob_data:(id *)_fill_blob_data with:(float)with
{
  v17 = *&with;
  var0 = _fill_blob_data->var0;
  v6 = *&_fill_blob_data->var12;
  v18[8] = *&_fill_blob_data->var10;
  v18[9] = v6;
  v19 = *&_fill_blob_data->var14;
  v7 = *&_fill_blob_data->var4;
  v18[4] = *&_fill_blob_data->var3[2];
  v18[5] = v7;
  v8 = *&_fill_blob_data->var8;
  v18[6] = *&_fill_blob_data->var6;
  v18[7] = v8;
  v9 = *_fill_blob_data->var2;
  v18[0] = *&_fill_blob_data->var0;
  v18[1] = v9;
  v10 = *_fill_blob_data->var3;
  v18[2] = *&_fill_blob_data->var2[2];
  v18[3] = v10;
  v11 = objc_msgSend__blob_size_(self, a2, v18, v4);
  if (v11 >= 1)
  {
    if (v11 >= 8)
    {
      v12 = &var0->i8[4 * (v11 & 0x7FFFFFFFFFFFFFF8)];
      v13 = v11 & 7;
      v14 = vdupq_lane_s32(v17, 0);
      v15 = var0 + 1;
      v16 = v11 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v11 == (v11 & 0x7FFFFFFFFFFFFFF8))
      {
        return;
      }
    }

    else
    {
      v12 = var0;
      v13 = v11;
    }

    *v12 = v17.i32[0];
    if (v13 >= 2)
    {
      *(v12 + 1) = v17.i32[0];
      if (v13 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(v12 + 2) = v17.i32[0];
        if ((v13 & 6) != 2)
        {
          *(v12 + 3) = v17.i32[0];
          if (v13 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *(v12 + 4) = v17.i32[0];
            if ((v13 & 6) != 4)
            {
              *(v12 + 5) = v17.i32[0];
              if (v13 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *(v12 + 6) = v17.i32[0];
              }
            }
          }
        }
      }
    }
  }
}

@end