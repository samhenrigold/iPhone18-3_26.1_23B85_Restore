@interface PFLImageDataScaler
- (CGRect)inputCrop;
- (CGSize)inputSize;
- (CGSize)outputSize;
- (PFLImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(unsigned int)orientation type:(id)type outputSize:(CGSize)outputSize;
- (void)cropAndScaleWithCompletion:(id)completion;
@end

@implementation PFLImageDataScaler

- (PFLImageDataScaler)initWithSize:(CGSize)size crop:(CGRect)crop data:(id)data orientation:(unsigned int)orientation type:(id)type outputSize:(CGSize)outputSize
{
  height = outputSize.height;
  width = outputSize.width;
  v13 = crop.size.height;
  v14 = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v17 = size.height;
  v18 = size.width;
  dataCopy = data;
  typeCopy = type;
  v34.receiver = self;
  v34.super_class = PFLImageDataScaler;
  v22 = [(PFLImageDataScaler *)&v34 init];
  v23 = v22;
  if (v22)
  {
    v22->_inputSize.width = v18;
    v22->_inputSize.height = v17;
    v22->_inputCrop.origin.x = x;
    v22->_inputCrop.origin.y = y;
    v22->_inputCrop.size.width = v14;
    v22->_inputCrop.size.height = v13;
    objc_storeStrong(&v22->_data, data);
    v23->_orientation = orientation;
    objc_storeStrong(&v23->_type, type);
    v23->_outputSize.width = width;
    v23->_outputSize.height = height;
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    identifier2 = [*MEMORY[0x277CE1D90] identifier];
    identifier3 = [(UTType *)v23->_type identifier];
    v27 = [identifier3 isEqualToString:identifier];

    if (v27)
    {
      v28 = 0x3FEB333333333333;
    }

    else
    {
      identifier4 = [(UTType *)v23->_type identifier];
      v30 = [identifier4 isEqualToString:identifier2];

      if (!v30)
      {
        v32 = pfl_layout_log(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [PFLImageDataScaler initWithSize:v32 crop:? data:? orientation:? type:? outputSize:?];
        }

        v23 = 0;
        goto LABEL_10;
      }

      v28 = 0x3FECCCCCCCCCCCCDLL;
    }

    *&v23->_compressionQuality = v28;
LABEL_10:
  }

  return v23;
}

- (void)cropAndScaleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke;
  v7[3] = &unk_27875BA10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v129 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  if (!*(v9 + 16))
  {
    a7.n128_u64[0] = *(v9 + 72);
    a2.n128_u64[0] = *(v9 + 80);
    a3.n128_u64[0] = *(v9 + 88);
    a4.n128_u64[0] = *(v9 + 96);
    a5.n128_u64[0] = *(v9 + 104);
    a6.n128_f64[0] = *(v9 + 64) / a7.n128_f64[0];
    reduceRectToAspectRatioAndCenter(a2, a3, a4, a5, a6, a7, a8);
    v13 = (v12 * v11);
    v14 = *(a1 + 32);
    v15 = v14[8] / v12;
    if (v15 < v14[9] / v11)
    {
      v15 = v14[9] / v11;
    }

    v16 = (v15 * (v14[7] * (v14[6] * v15)));
    v17 = pfl_layout_log(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = vcvtd_n_f64_s64(v13, 0x14uLL);
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = vcvtd_n_f64_s64(v16, 0x14uLL);
      _os_log_impl(&dword_22D2ED000, v17, OS_LOG_TYPE_DEFAULT, "cropThenScale ==> %.3f MP; scaleThenCrop ==> %.3f MP", &buf, 0x16u);
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = *(v19 + 96);
    if (v13 >= v16)
    {
      v61 = *(v19 + 32);
      v62 = *(v19 + 8);
      v63 = *(v19 + 48);
      v64 = *(v19 + 56);
      v65 = *(v19 + 80);
      v66 = *(v19 + 88);
      v67 = *(v19 + 104);
      v68 = *(v19 + 72);
      v119 = *(v19 + 64);
      v69 = *(v19 + 40);
      v70 = CGImageSourceCreateWithData(v61, 0);
      if (v70)
      {
        v78 = v70;
        v113 = v62;
        v75.n128_f64[0] = v119 / v68;
        v71.n128_u64[0] = v65;
        v72.n128_u64[0] = v66;
        v73.n128_u64[0] = v20;
        v74.n128_u64[0] = v67;
        v81 = reduceRectToAspectRatioAndCenter(v71, v72, v73, v74, v75, v76, v77);
        v83 = v82;
        v84 = v79;
        v85 = v80;
        if (v119 / v79 >= v68 / v80)
        {
          v86 = v119 / v79;
        }

        else
        {
          v86 = v68 / v80;
        }

        v87 = v63 * v86;
        if (v63 * v86 < v64 * v86)
        {
          v87 = v64 * v86;
        }

        v88 = *MEMORY[0x277CD3568];
        v89 = MEMORY[0x277CBEC38];
        *&v126.a = MEMORY[0x277CBEC38];
        v90 = *MEMORY[0x277CD3660];
        v122 = v88;
        v123 = v90;
        v91 = [MEMORY[0x277CCABB0] numberWithDouble:{ceil(v87), v113}];
        v124 = *MEMORY[0x277CD3578];
        *&v126.b = v91;
        v126.c = v89;
        v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v122 count:3];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v78, 0, v92);
        if (ThumbnailAtIndex)
        {
          v94 = ThumbnailAtIndex;
          v117 = v69;
          CGAffineTransformMakeScale(&buf, v86, v86);
          v132.origin.x = v81;
          v132.origin.y = v83;
          v132.size.width = v84;
          v132.size.height = v85;
          v133 = CGRectApplyAffineTransform(v132, &buf);
          v133.origin.x = rint(v133.origin.x);
          v133.origin.y = rint(v133.origin.y);
          v133.size.width = rint(v119);
          v133.size.height = rint(v68);
          v95 = CGImageCreateWithImageInRect(v94, v133);
          if (v95)
          {
            v96 = v95;
            v116 = v18;
            v52 = [MEMORY[0x277CBEB28] data];
            v97 = [v117 identifier];
            v98 = CGImageDestinationCreateWithData(v52, v97, 1uLL, 0);

            if (v98)
            {
              if (v119 >= v68)
              {
                v99 = v119;
              }

              else
              {
                v99 = v68;
              }

              v127[0] = *MEMORY[0x277CD2D48];
              v100 = [MEMORY[0x277CCABB0] numberWithDouble:v114];
              *&buf.a = v100;
              v127[1] = *MEMORY[0x277CD2D40];
              v101 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
              v127[2] = *MEMORY[0x277CD2D78];
              *&buf.b = v101;
              buf.c = v89;
              v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v127 count:3];

              CGImageDestinationAddImage(v98, v96, v102);
              CGImageDestinationFinalize(v98);
              CFRelease(v98);
            }

            else
            {

              v102 = pfl_layout_log(v109);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v52 = 0;
            }

            v18 = v116;

            CFRelease(v96);
          }

          else
          {
            v107 = pfl_layout_log(0);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v52 = 0;
          }

          v69 = v117;
          CFRelease(v94);
        }

        else
        {
          v105 = pfl_layout_log(0);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_3();
          }

          v52 = 0;
        }

        CFRelease(v78);
      }

      else
      {
        v92 = pfl_layout_log(0);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v52 = 0;
      }
    }

    else
    {
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 8);
      v24 = *(v19 + 80);
      v25 = *(v19 + 88);
      v26 = *(v19 + 104);
      v27 = *(v19 + 64);
      v28 = *(v19 + 72);
      v29 = *(v19 + 40);
      v30 = CGImageSourceCreateWithData(v22, 0);
      if (v30)
      {
        v31 = v30;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v30, 0, 0);
        if (ImageAtIndex)
        {
          v40 = ImageAtIndex;
          v37.n128_f64[0] = v27 / v28;
          v33.n128_u64[0] = v24;
          v34.n128_u64[0] = v25;
          v35.n128_u64[0] = v20;
          v36.n128_u64[0] = v26;
          v41 = reduceRectToAspectRatioAndCenter(v33, v34, v35, v36, v37, v38, v39);
          v43 = v42;
          v45 = v44;
          v47 = v46;
          Width = CGImageGetWidth(v40);
          Height = CGImageGetHeight(v40);
          memset(&buf, 0, sizeof(buf));
          makePresentationTransform(v21, Width, Height, &v126);
          CGAffineTransformInvert(&buf, &v126);
          v126 = buf;
          v130.origin.x = v41;
          v130.origin.y = v43;
          v130.size.width = v45;
          v130.size.height = v47;
          v131 = CGRectApplyAffineTransform(v130, &v126);
          v50 = CGImageCreateWithImageInRect(v40, v131);
          if (v50)
          {
            v51 = v50;
            v115 = v18;
            v52 = [MEMORY[0x277CBEB28] data];
            v53 = [v29 identifier];
            v54 = CGImageDestinationCreateWithData(v52, v53, 1uLL, 0);

            if (v54)
            {
              if (v27 >= v28)
              {
                v55 = v27;
              }

              else
              {
                v55 = v28;
              }

              v122 = *MEMORY[0x277CD2D48];
              v118 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
              *&v126.a = v118;
              v123 = *MEMORY[0x277CD2D40];
              v56 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
              v57 = *MEMORY[0x277CD2D78];
              *&v126.b = v56;
              *&v126.c = MEMORY[0x277CBEC38];
              v58 = *MEMORY[0x277CD3410];
              v124 = v57;
              v125 = v58;
              v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:getImageOrientationFromSource(v31)];
              *&v126.d = v59;
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v122 count:4];

              CGImageDestinationAddImage(v54, v51, v60);
              CGImageDestinationFinalize(v54);
              CFRelease(v54);
            }

            else
            {

              v60 = pfl_layout_log(v108);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_1();
              }

              v52 = 0;
            }

            v18 = v115;

            CFRelease(v51);
          }

          else
          {
            v106 = pfl_layout_log(0);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_2();
            }

            v52 = 0;
          }

          CFRelease(v40);
        }

        else
        {
          v104 = pfl_layout_log(0);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_7();
          }

          v52 = 0;
        }

        CFRelease(v31);
      }

      else
      {
        v103 = pfl_layout_log(0);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_cold_4();
        }

        v52 = 0;
      }
    }

    v110 = *(a1 + 32);
    v111 = *(v110 + 16);
    *(v110 + 16) = v52;

    objc_autoreleasePoolPop(v18);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PFLImageDataScaler_cropAndScaleWithCompletion___block_invoke_1;
  block[3] = &unk_27875B9E8;
  v112 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v121 = v112;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)inputCrop
{
  x = self->_inputCrop.origin.x;
  y = self->_inputCrop.origin.y;
  width = self->_inputCrop.size.width;
  height = self->_inputCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithSize:(id *)a1 crop:(NSObject *)a2 data:orientation:type:outputSize:.cold.1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*a1 identifier];
  v4 = 136315394;
  v5 = "[PFLImageDataScaler initWithSize:crop:data:orientation:type:outputSize:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D2ED000, a2, OS_LOG_TYPE_ERROR, "%s only supports JPEG and HEIC; not %@", &v4, 0x16u);
}

@end