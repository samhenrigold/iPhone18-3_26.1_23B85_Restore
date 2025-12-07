@interface ARImageDistortionCorrectionTechnique
- (ARImageDistortionCorrectionTechnique)initWithImageSize:(CGSize)size;
- (CGPoint)lensDistortionPointForPoint:(CGPoint)point lookupTable:(id)table distortionOpticalCenter:(CGPoint)center imageSize:(CGSize)size;
- (CGSize)imageSize;
- (id).cxx_construct;
- (id)processData:(id)data;
- (void)buildUVMapFromHardcodedCalibrationParameters;
- (void)buildUVMapWithCameraCalibrationData:(id)data;
- (void)buildUVMapWithDistortedPixelProviderBlock:(id)block;
- (void)dealloc;
- (void)undistortImage:(__CVBuffer *)image toTargetImage:(__CVBuffer *)targetImage imageRotationAngle:(int64_t)angle;
@end

@implementation ARImageDistortionCorrectionTechnique

- (ARImageDistortionCorrectionTechnique)initWithImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v17.receiver = self;
  v17.super_class = ARImageDistortionCorrectionTechnique;
  v5 = [(ARTechnique *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_imageSize.width = width;
    v5->_imageSize.height = height;
    v7 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.distortionCorrection.computeCoefficientsForEveryFrame"];
    v6->_computeUndistortionCoefficientsForEveryFrame = v7;
    if (v7)
    {
      v12 = vcvtq_u64_f64(v6->_imageSize);
      std::vector<float>::vector[abi:ne200100](__p, v12.i64[1] * v12.i64[0]);
      std::vector<float>::vector[abi:ne200100](&v15, v12.i64[1] * v12.i64[0]);
      engaged = v6->_undistorter.__engaged_;
      *&v6->_undistorter.var0.__null_state_ = v12;
      if (engaged)
      {
        begin = v6->_undistorter.var0.__val_.m_mappingU.__begin_;
        if (begin)
        {
          v6->_undistorter.var0.__val_.m_mappingU.__end_ = begin;
          operator delete(begin);
          v6->_undistorter.var0.__val_.m_mappingU.__begin_ = 0;
          v6->_undistorter.var0.__val_.m_mappingU.__end_ = 0;
          v6->_undistorter.var0.__val_.m_mappingU.__cap_ = 0;
        }

        *&v6->_undistorter.var0.__val_.m_mappingU.__begin_ = *__p;
        v6->_undistorter.var0.__val_.m_mappingU.__cap_ = v14;
        __p[0] = 0;
        __p[1] = 0;
        v14 = 0;
        v10 = v6->_undistorter.var0.__val_.m_mappingV.__begin_;
        if (v10)
        {
          v6->_undistorter.var0.__val_.m_mappingV.__end_ = v10;
          operator delete(v10);
          v6->_undistorter.var0.__val_.m_mappingV.__begin_ = 0;
          v6->_undistorter.var0.__val_.m_mappingV.__end_ = 0;
          v6->_undistorter.var0.__val_.m_mappingV.__cap_ = 0;
          v10 = __p[0];
        }

        *&v6->_undistorter.var0.__val_.m_mappingV.__begin_ = v15;
        v6->_undistorter.var0.__val_.m_mappingV.__cap_ = v16;
        v15 = 0uLL;
        v16 = 0;
        if (v10)
        {
          __p[1] = v10;
          operator delete(v10);
        }
      }

      else
      {
        *&v6->_undistorter.var0.__val_.m_mappingU.__begin_ = *__p;
        v6->_undistorter.var0.__val_.m_mappingU.__cap_ = v14;
        __p[1] = 0;
        v14 = 0;
        __p[0] = 0;
        *&v6->_undistorter.var0.__val_.m_mappingV.__begin_ = v15;
        v6->_undistorter.var0.__val_.m_mappingV.__cap_ = v16;
        v6->_undistorter.__engaged_ = 1;
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_undistortedImageBufferPool);
  v3.receiver = self;
  v3.super_class = ARImageDistortionCorrectionTechnique;
  [(ARImageDistortionCorrectionTechnique *)&v3 dealloc];
}

- (id)processData:(id)data
{
  v194 = *MEMORY[0x1E69E9840];
  v186.receiver = self;
  v186.super_class = ARImageDistortionCorrectionTechnique;
  dataCopy = data;
  v4 = [(ARTechnique *)&v186 processData:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResizedUltraWideImageData = [dataCopy latestResizedUltraWideImageData];
    if (!latestResizedUltraWideImageData)
    {
      originalImageData = [dataCopy originalImageData];
      cameraType = [originalImageData cameraType];
      v12 = [cameraType isEqualToString:*MEMORY[0x1E6986948]];

      if ((v12 & 1) == 0 || (latestResizedUltraWideImageData = dataCopy) == 0)
      {
        v13 = 0;
LABEL_119:

        goto LABEL_120;
      }
    }

    downScalingResults = [latestResizedUltraWideImageData downScalingResults];
    v168 = latestResizedUltraWideImageData;
    v7 = [downScalingResults count] == 0;

    if (v7)
    {
LABEL_118:
      v13 = v168;
      goto LABEL_119;
    }

    rotationOfResultTensor = [v168 rotationOfResultTensor];
    v9 = rotationOfResultTensor;
    if (rotationOfResultTensor > 89)
    {
      if (rotationOfResultTensor == 90)
      {
        v9 = -90;
      }

      else if (rotationOfResultTensor == 180)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (rotationOfResultTensor != -90)
      {
        if (rotationOfResultTensor)
        {
          goto LABEL_16;
        }

LABEL_13:
        p_imageSize = &self->_imageSize;
        p_height = &self->_imageSize.height;
LABEL_17:
        width = p_height->width;
        v17 = p_imageSize->width;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        downScalingResults2 = [v168 downScalingResults];
        v19 = [downScalingResults2 countByEnumeratingWithState:&v182 objects:v191 count:16];
        if (!v19)
        {
LABEL_117:

          goto LABEL_118;
        }

        v20 = 0;
        v21 = *v183;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v183 != v21)
            {
              objc_enumerationMutation(downScalingResults2);
            }

            v23 = *(*(&v182 + 1) + 8 * i);
            [v23 imageResolution];
            if (v25 == v17 && v24 == width)
            {
              v27 = v23;

              v20 = v27;
            }
          }

          v19 = [downScalingResults2 countByEnumeratingWithState:&v182 objects:v191 count:16];
        }

        while (v19);

        if (!v20)
        {
          goto LABEL_118;
        }

        v28 = MEMORY[0x1E6986948];
        if (!self->_computeUndistortionCoefficientsForEveryFrame && !self->_undistortionMappingsForRotations)
        {
          originalImageData2 = [v168 originalImageData];
          objc_msgSend_timestamp(v168);
          cameraType2 = [originalImageData2 cameraType];
          [cameraType2 isEqualToString:*v28];
          calibrationData = [originalImageData2 calibrationData];
          [calibrationData isEqual:0];
          kdebug_trace();

          calibrationData2 = [originalImageData2 calibrationData];
          v32 = calibrationData2 == 0;

          if (v32)
          {
            [(ARImageDistortionCorrectionTechnique *)self buildUVMapFromHardcodedCalibrationParameters];
          }

          else
          {
            calibrationData3 = [originalImageData2 calibrationData];
            [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithCameraCalibrationData:calibrationData3];
          }

          kdebug_trace();
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType([v20 pixelBuffer]);
        v35 = ARCreateCVPixelBufferFromPool(&self->_undistortedImageBufferPool, PixelFormatType, self, @"undistorted image", v17, width);
        objc_msgSend_timestamp(v168);
        originalImageData3 = [v168 originalImageData];
        cameraType3 = [originalImageData3 cameraType];
        [cameraType3 isEqualToString:*v28];
        [v20 imageResolution];
        [v20 imageResolution];
        kdebug_trace();

        if (!self->_computeUndistortionCoefficientsForEveryFrame)
        {
          -[ARImageDistortionCorrectionTechnique undistortImage:toTargetImage:imageRotationAngle:](self, "undistortImage:toTargetImage:imageRotationAngle:", [v20 pixelBuffer], v35, v9);
          goto LABEL_116;
        }

        originalImageData4 = [v168 originalImageData];
        calibrationData4 = [originalImageData4 calibrationData];
        v40 = kdebug_trace();
        p_undistorter = &self->_undistorter;
        if (calibrationData4)
        {
          lensDistortionCenter = [calibrationData4 lensDistortionCenter];
          v44 = v43;
          v46 = v45;
          v48 = *MEMORY[0x1E695EFF8];
          v47 = *(MEMORY[0x1E695EFF8] + 8);
          v49 = _ARLogTechnique(lensDistortionCenter);
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG);
          if (v44 == v48 && v46 == v47)
          {
            if (v50)
            {
              *buf = 0;
              _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEBUG, "lensDistortionCenter is set to CGPointZero, skipping creating UV map for distortion correction", buf, 2u);
            }

            goto LABEL_115;
          }

          if (v50)
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEBUG, "Building distortion correction UV map from calibration data", buf, 2u);
          }

          m_unrotatedImageWidth = p_undistorter->var0.__val_.m_unrotatedImageWidth;
          [calibrationData4 intrinsicMatrixReferenceDimensions];
          v100 = v99;
          m_unrotatedImageHeight = p_undistorter->var0.__val_.m_unrotatedImageHeight;
          [calibrationData4 intrinsicMatrixReferenceDimensions];
          v103 = v102;
          kdebug_trace();
          lensDistortionLookupTable = [calibrationData4 lensDistortionLookupTable];
          v105 = lensDistortionLookupTable;
          bytes = [lensDistortionLookupTable bytes];
          v107 = [lensDistortionLookupTable length];
          v108 = p_undistorter->var0.__val_.m_unrotatedImageWidth;
          if (p_undistorter->var0.__val_.m_unrotatedImageWidth)
          {
            v109 = 0;
            v110 = v100;
            v111 = m_unrotatedImageWidth / v110;
            v112 = v103;
            v113 = v44;
            v115.f32[0] = v111 * v113;
            v114 = v46;
            v115.f32[1] = (m_unrotatedImageHeight / v112) * v114;
            v116 = v108;
            v117 = p_undistorter->var0.__val_.m_unrotatedImageHeight;
            v118 = v117;
            v119.f32[0] = v108;
            v119.f32[1] = v117;
            v120 = bytes + 4 * (v107 >> 2);
            v121 = ((v107 >> 2) - 1);
            v122 = 4 * v117;
            v123 = vmaxnm_f32(v115, vsub_f32(v119, v115));
            v124 = vmul_f32(v123, v123);
            while (!v117)
            {
              v130 = v109 + 1;
LABEL_91:
              v109 = v130;
              if (v130 == v108)
              {
                goto LABEL_92;
              }
            }

            v125 = 0;
            v126 = v109;
            v127 = ~v109;
            v128 = v108 + ~v109;
            v129 = v128 * v117;
            v130 = v109 + 1;
            v131 = (v109 + 1) * v117;
            v132 = v122 * (v109 + 1) - 4;
            v133 = v117 * v108 - 1 - v109;
            v134 = v122 * v128;
            v135 = v117;
            v136 = sqrtf(vaddv_f32(v124));
            while (1)
            {
              v137.f32[0] = v126;
              v137.f32[1] = v125;
              v138 = vsub_f32(v137, v115);
              v139 = sqrtf(vaddv_f32(vmul_f32(v138, v138)));
              if (v139 >= v136)
              {
                v141 = *(v120 - 4);
              }

              else
              {
                v140 = (v139 * v121) / v136;
                v141 = ((v140 - v140) * *(bytes + 4 * v140 + 4)) + ((1.0 - (v140 - v140)) * *(bytes + 4 * v140));
              }

              v142 = vadd_f32(v115, vmla_n_f32(v138, v138, v141));
              if (v9 > 89)
              {
                if (v9 == 90)
                {
                  v143 = v131 + ~v125;
                  *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v132) = v118 - v142.f32[1];
                  goto LABEL_87;
                }

                if (v9 == 180)
                {
                  v143 = v127 + (v117 - v125) * v108;
                  p_undistorter->var0.__val_.m_mappingU.__begin_[v133] = v116 - v142.f32[0];
                  v142.f32[0] = v118 - v142.f32[1];
                  goto LABEL_87;
                }
              }

              else
              {
                if (v9 == -90)
                {
                  v143 = v125 + v129;
                  *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v134) = v142.i32[1];
                  v142.f32[0] = v116 - v142.f32[0];
                  goto LABEL_87;
                }

                if (!v9)
                {
                  LODWORD(p_undistorter->var0.__val_.m_mappingU.__begin_[v109]) = v142.i32[0];
                  v142.i32[0] = v142.i32[1];
                  v143 = v109;
LABEL_87:
                  LODWORD(p_undistorter->var0.__val_.m_mappingV.__begin_[v143]) = v142.i32[0];
                }
              }

              ++v125;
              v109 += v108;
              v132 -= 4;
              v133 -= v108;
              v134 += 4;
              if (!--v135)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_92:

LABEL_93:
          kdebug_trace();

          pixelBuffer = [v20 pixelBuffer];
          CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
          *buf = 0u;
          v190 = 0u;
          ARWrapCVPixelBufferVImage(pixelBuffer, buf);
          CVPixelBufferLockBaseAddress(v35, 0);
          memset(v188, 0, sizeof(v188));
          ARWrapCVPixelBufferVImage(v35, v188);
          kdebug_trace();
          v187 = 0;
          v145 = vImageMapping_CreateFromMap_Image8U();
          v146 = kdebug_trace();
          if (v145)
          {
            kdebug_trace();
            v147 = vImageRemap_Image8U();
            v187 = v147;
            if (!v147)
            {
LABEL_109:
              kdebug_trace();
              vImageMapping_Release();
              goto LABEL_114;
            }

            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARImageDistortionCorrectionTechnique processData:];
            }

            v148 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v149 = _ARLogTechnique(v147);
            v150 = v149;
            if (v148 == 1)
            {
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                *v192 = 134217984;
                v193 = v187;
                v151 = "Image undistortion failed with error code : %ld";
                v152 = v150;
                v153 = OS_LOG_TYPE_ERROR;
LABEL_107:
                _os_log_impl(&dword_1C241C000, v152, v153, v151, v192, 0xCu);
              }
            }

            else if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
            {
              *v192 = 134217984;
              v193 = v187;
              v151 = "Error: Image undistortion failed with error code : %ld";
              v152 = v150;
              v153 = OS_LOG_TYPE_INFO;
              goto LABEL_107;
            }

            goto LABEL_109;
          }

          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            [ARImageDistortionCorrectionTechnique processData:];
          }

          v154 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v155 = _ARLogTechnique(v146);
          v156 = v155;
          if (v154 == 1)
          {
            if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
            {
              *v192 = 134217984;
              v193 = v187;
              v157 = "Image mapping creation failed with error code : %ld";
              v158 = v156;
              v159 = OS_LOG_TYPE_ERROR;
LABEL_112:
              _os_log_impl(&dword_1C241C000, v158, v159, v157, v192, 0xCu);
            }
          }

          else if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
          {
            *v192 = 134217984;
            v193 = v187;
            v157 = "Error: Image mapping creation failed with error code : %ld";
            v158 = v156;
            v159 = OS_LOG_TYPE_INFO;
            goto LABEL_112;
          }

LABEL_114:
          CVPixelBufferUnlockBaseAddress(v35, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          v160 = v187 == 0;

          if (!v160)
          {
LABEL_115:
            CVPixelBufferRelease(v35);
            v35 = CVPixelBufferRetain([v20 pixelBuffer]);
          }

LABEL_116:
          [v20 setUndistortedPixelBuffer:v35];
          objc_msgSend_timestamp(v168);
          CVPixelBufferGetWidth(v35);
          CVPixelBufferGetHeight(v35);
          kdebug_trace();
          CVPixelBufferRelease(v35);
          downScalingResults2 = v20;
          goto LABEL_117;
        }

        v51 = _ARLogTechnique(v40);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_DEBUG, "Building distortion correction UV map from hardcoded parameters", buf, 2u);
        }

        v54 = ARFixedIntrinsicsForBackUltraWideCamera640x480(v52, v53);
        v57 = ARAdjustIntrinsicsForViewportSize(*&v54, v55, v56, 640.0, 480.0, p_undistorter->var0.__val_.m_unrotatedImageWidth, p_undistorter->var0.__val_.m_unrotatedImageHeight);
        v178 = v58;
        v179 = v57;
        v181 = v59;
        *v62.i64 = ARRadialDistortionForUltraWideCamera(v60, v61);
        v63 = p_undistorter->var0.__val_.m_unrotatedImageWidth;
        if (!p_undistorter->var0.__val_.m_unrotatedImageWidth)
        {
          goto LABEL_93;
        }

        v162 = originalImageData4;
        v64 = 0;
        v65 = v63;
        v66 = p_undistorter->var0.__val_.m_unrotatedImageHeight;
        v67 = v66;
        _S11 = v178;
        v173 = vcvtq_f64_f32(*v62.f32);
        v174 = vcvt_hight_f64_f32(v62);
        v164 = v66 * v63 - 1;
        v165 = 4 * v66;
        __asm { FMOV            V0.4S, #1.0 }

        v163 = _Q0;
        v166 = v35;
        v172 = v66;
        while (!v66)
        {
          v97 = v64 + 1;
LABEL_67:
          v64 = v97;
          if (v97 == v63)
          {
            calibrationData4 = 0;
            originalImageData4 = v162;
            goto LABEL_93;
          }
        }

        v73 = 0;
        v171 = ~v64;
        v74 = v63 + ~v64;
        v75 = v163;
        v75.f32[0] = (v64 - *&v181) / v179;
        v169 = (v64 + 1) * v66;
        v170 = v74 * v66;
        v167 = v64 + 1;
        v76 = v165 * (v64 + 1) - 4;
        v77 = v66;
        v78 = v164 - v64;
        v79 = v165 * v74;
        v175 = v75;
        while (1)
        {
          v80 = v75;
          v80.f32[1] = (v73 - *(&v181 + 1)) / _S11;
          *&v81 = *&vcvt_hight_f64_f32(v80);
          _Q2 = vcvtq_f64_f32(*v80.f32);
          v83 = vmuld_lane_f64(*&_Q2.i64[1], _Q2, 1) + *_Q2.i64 * *_Q2.i64;
          if (v83 >= 0.00000001)
          {
            v85 = sqrt(v83);
            v177 = _Q2;
            v86 = atan2(v85, v81);
            v87 = v86 * (v86 * v86);
            v88 = v86 * v86 * v87;
            v89 = v86 * v86 * v88;
            v90 = v86 * v86 * v89;
            v91 = v86 + v173.f64[0] * v87 + v173.f64[1] * v88;
            v75 = v175;
            _Q2 = v177;
            *&v91 = v91 + v174.f64[0] * v89 + v174.f64[1] * v90;
            v84 = *&v91 / v85;
          }

          else
          {
            v84 = 1.0 / v81;
          }

          _Q2.i64[1] = vextq_s8(_Q2, _Q2, 8uLL).u64[0];
          *_Q2.i8 = vcvt_f32_f64(vmulq_n_f64(_Q2, v84));
          v93 = *&v181 + (v179 * *_Q2.i32);
          __asm { FMLA            S0, S11, V2.S[1] }

          if (v9 > 89)
          {
            if (v9 == 90)
            {
              v96 = v169 + ~v73;
              v95 = p_undistorter;
              *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v76) = v67 - _S0;
              _S0 = *&v181 + (v179 * *_Q2.i32);
              goto LABEL_63;
            }

            if (v9 == 180)
            {
              v96 = v171 + (v172 - v73) * v63;
              v95 = p_undistorter;
              p_undistorter->var0.__val_.m_mappingU.__begin_[v78] = v65 - v93;
              _S0 = v67 - _S0;
              goto LABEL_63;
            }
          }

          else
          {
            if (v9 == -90)
            {
              v96 = v73 + v170;
              v95 = p_undistorter;
              *(p_undistorter->var0.__val_.m_mappingU.__begin_ + v79) = _S0;
              _S0 = v65 - v93;
              goto LABEL_63;
            }

            if (!v9)
            {
              v95 = p_undistorter;
              p_undistorter->var0.__val_.m_mappingU.__begin_[v64] = v93;
              v96 = v64;
LABEL_63:
              v95->var0.__val_.m_mappingV.__begin_[v96] = _S0;
            }
          }

          ++v73;
          v64 += v63;
          v76 -= 4;
          v78 -= v63;
          v79 += 4;
          if (!--v77)
          {
            v35 = v166;
            v97 = v167;
            v66 = v172;
            goto LABEL_67;
          }
        }
      }

      v9 = 90;
    }

LABEL_16:
    p_height = &self->_imageSize;
    p_imageSize = &self->_imageSize.height;
    goto LABEL_17;
  }

LABEL_120:

  return dataCopy;
}

- (void)buildUVMapWithDistortedPixelProviderBlock:(id)block
{
  v35[4] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  p_imageSize = &self->_imageSize;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  height = [[ARUndistortionMapping alloc] initWithImageSize:width, height];
  width = [[ARUndistortionMapping alloc] initWithImageSize:height, width];
  v10 = [[ARUndistortionMapping alloc] initWithImageSize:self->_imageSize.width, self->_imageSize.height];
  selfCopy = self;
  width2 = [[ARUndistortionMapping alloc] initWithImageSize:height, width];
  v12 = p_imageSize->width;
  if (p_imageSize->width > 0.0)
  {
    v13 = 0;
    v14 = width + -1.0;
    v15 = p_imageSize->height;
    v16 = 0.0;
    do
    {
      if (v15 > 0.0)
      {
        v17 = 0.0;
        v18 = 1;
        do
        {
          v19 = objc_autoreleasePoolPush();
          v20 = blockCopy[2](blockCopy, v16, v17);
          v21 = p_imageSize->width;
          v22 = p_imageSize->height;
          v23 = (v16 + v17 * p_imageSize->width);
          v24 = v20;
          height->_mappingU.__begin_[v23] = v24;
          v25 = (height + v16 * height + -1.0 - v17);
          v27 = v26;
          height->_mappingV.__begin_[v23] = v27;
          *&v26 = v22 - v26;
          width->_mappingU.__begin_[v25] = *&v26;
          width->_mappingV.__begin_[v25] = v24;
          v28 = (v21 + (v22 + -1.0 - v17) * v21 + -1.0 - v16);
          *&v20 = v21 - v20;
          v10->_mappingU.__begin_[v28] = *&v20;
          v10->_mappingV.__begin_[v28] = *&v26;
          v29 = (v17 + (v14 - v16) * height);
          width2->_mappingU.__begin_[v29] = v27;
          width2->_mappingV.__begin_[v29] = *&v20;
          objc_autoreleasePoolPop(v19);
          v17 = v18;
          v15 = p_imageSize->height;
          ++v18;
        }

        while (v15 > v17);
        v12 = p_imageSize->width;
      }

      v16 = ++v13;
    }

    while (v12 > v13);
  }

  v34[0] = &unk_1F4256E38;
  v34[1] = &unk_1F4256E50;
  v35[0] = height;
  v35[1] = width;
  v34[2] = &unk_1F4256E68;
  v34[3] = &unk_1F4256E80;
  v35[2] = v10;
  v35[3] = width2;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:{4, v12, selfCopy}];
  v31 = *(v33 + 64);
  *(v33 + 64) = v30;
}

- (void)buildUVMapWithCameraCalibrationData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lensDistortionCenter = [dataCopy lensDistortionCenter];
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  v12 = _ARLogTechnique(lensDistortionCenter);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v7 == v10 && v9 == v11)
  {
    if (v13)
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543618;
      v34 = v28;
      v35 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: lensDistortionCenter is set to CGPointZero, skipping creating UV map for distortion correction", buf, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v34 = v16;
      v35 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Building distortion correction UV map from calibration data", buf, 0x16u);
    }

    width = self->_imageSize.width;
    [dataCopy intrinsicMatrixReferenceDimensions];
    v19 = v18;
    height = self->_imageSize.height;
    [dataCopy intrinsicMatrixReferenceDimensions];
    v22 = v21;
    [dataCopy lensDistortionCenter];
    v24 = v23;
    [dataCopy lensDistortionCenter];
    v26 = height / v22 * v25;
    kdebug_trace();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __76__ARImageDistortionCorrectionTechnique_buildUVMapWithCameraCalibrationData___block_invoke;
    v29[3] = &unk_1E817C420;
    v29[4] = self;
    v30 = dataCopy;
    v31 = width / v19 * v24;
    v32 = v26;
    [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithDistortedPixelProviderBlock:v29];
  }
}

double __76__ARImageDistortionCorrectionTechnique_buildUVMapWithCameraCalibrationData___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) lensDistortionLookupTable];
  [v6 lensDistortionPointForPoint:v7 lookupTable:a2 distortionOpticalCenter:a3 imageSize:{*(a1 + 48), *(a1 + 56), *(*(a1 + 32) + 152), *(*(a1 + 32) + 160)}];
  v9 = v8;

  return v9;
}

- (void)buildUVMapFromHardcodedCalibrationParameters
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v31 = v5;
    v32 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Building distortion correction UV map from hardcoded parameters", buf, 0x16u);
  }

  v8 = ARFixedIntrinsicsForBackUltraWideCamera640x480(v6, v7);
  *&v11 = ARAdjustIntrinsicsForViewportSize(*&v8, v9, v10, 640.0, 480.0, self->_imageSize.width, self->_imageSize.height);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  *&v16 = ARRadialDistortionForUltraWideCamera(v14, v15);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__ARImageDistortionCorrectionTechnique_buildUVMapFromHardcodedCalibrationParameters__block_invoke;
  v20[3] = &__block_descriptor_96_e30__CGPoint_dd_24__0_CGPoint_dd_8l;
  v21 = DWORD2(v17);
  v20[4] = v17;
  v22 = 0;
  v24 = DWORD2(v18);
  v23 = v18;
  v25 = 0;
  v27 = DWORD2(v19);
  v26 = v19;
  v28 = 0;
  v29 = v16;
  [(ARImageDistortionCorrectionTechnique *)self buildUVMapWithDistortedPixelProviderBlock:v20];
}

double __84__ARImageDistortionCorrectionTechnique_buildUVMapFromHardcodedCalibrationParameters__block_invoke(uint64_t a1, float64x2_t a2, float64_t a3)
{
  v3 = (a1 + 32);
  v5.i32[0] = vld2_f32(v3).val[0].u32[0];
  a2.f64[1] = a3;
  v4 = *(a1 + 64);
  v5.i32[1] = *(a1 + 52);
  v6 = vcvtq_f64_f32(vdiv_f32(vsub_f32(vcvt_f32_u32(vmovn_s64(vcvtq_u64_f64(a2))), v4), v5));
  v7 = COERCE_DOUBLE(*&vmulq_f64(v6, v6).f64[1]) + v6.f64[0] * v6.f64[0];
  v8 = 1.0;
  if (v7 >= 0.00000001)
  {
    v9 = *(a1 + 80);
    v23 = vcvtq_f64_f32(*v9.f32);
    v24 = vcvt_hight_f64_f32(v9);
    v10 = sqrt(v7);
    v26 = v5;
    v25 = v6;
    v11 = atan2(v10, 1.0);
    _D3 = v11 * v11 * (v11 * (v11 * v11));
    _D1 = v11 * v11 * (v11 * v11 * _D3);
    _V6.D[1] = v23.f64[1];
    __asm { FMLA            D0, D3, V6.D[1] }

    _V2.D[1] = v24.f64[1];
    v6 = v25;
    v5 = v26;
    __asm { FMLA            D0, D1, V2.D[1] }

    *&_D0 = _D0;
    v8 = *&_D0 / v10;
  }

  *&result = *&vmlaq_f64(vcvtq_f64_f32(v4), vmulq_n_f64(v6, v8), vcvtq_f64_f32(v5));
  return result;
}

- (void)undistortImage:(__CVBuffer *)image toTargetImage:(__CVBuffer *)targetImage imageRotationAngle:(int64_t)angle
{
  v25 = *MEMORY[0x1E69E9840];
  CVPixelBufferLockBaseAddress(image, 0);
  v22 = 0u;
  v23 = 0u;
  ARWrapCVPixelBufferVImage(image, &v22);
  CVPixelBufferLockBaseAddress(targetImage, 0);
  memset(v21, 0, sizeof(v21));
  ARWrapCVPixelBufferVImage(targetImage, v21);
  undistortionMappingsForRotations = self->_undistortionMappingsForRotations;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:angle];
  v11 = [(NSDictionary *)undistortionMappingsForRotations objectForKeyedSubscript:v10];

  *buf = v22;
  *&buf[16] = v23;
  [v11 createVImageMappingIfNeededForImage:buf];
  kdebug_trace();
  v12 = vImageRemap_Image8U();
  v13 = v12;
  if (v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageDistortionCorrectionTechnique processData:];
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogTechnique(v12);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543874;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = v13;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Image undistortion failed with error code : %ld", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = v13;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Image undistortion failed with error code : %ld", buf, 0x20u);
    }
  }

  kdebug_trace();
  CVPixelBufferUnlockBaseAddress(image, 0);
  CVPixelBufferUnlockBaseAddress(targetImage, 0);
}

- (CGPoint)lensDistortionPointForPoint:(CGPoint)point lookupTable:(id)table distortionOpticalCenter:(CGPoint)center imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  x = center.x;
  y = center.y;
  v6 = point.y;
  v7 = point.x;
  tableCopy = table;
  bytes = [tableCopy bytes];
  v10 = [tableCopy length];
  v11.f64[0] = width;
  v11.f64[1] = height;
  v12.f64[0] = x;
  v12.f64[1] = y;
  v13 = vsubq_f64(v11, v12);
  *&v12.f64[0] = vcvt_f32_f64(vbslq_s8(vcgtq_f64(v13, v12), v13, v12));
  v14 = vaddv_f32(vmul_f32(*&v12.f64[0], *&v12.f64[0]));
  v15 = v7 - x;
  v16 = v6 - y;
  v17 = sqrtf(v14);
  v18 = sqrtf(vaddv_f32(vmul_f32(__PAIR64__(LODWORD(v16), LODWORD(v15)), __PAIR64__(LODWORD(v16), LODWORD(v15)))));
  v19 = v10 >> 2;
  if (v18 >= v17)
  {
    v21 = *(bytes + 4 * v19 - 4);
  }

  else
  {
    v20 = (v18 * (v19 - 1)) / v17;
    v21 = ((v20 - v20) * *(bytes + 4 * v20 + 4)) + ((1.0 - (v20 - v20)) * *(bytes + 4 * v20));
  }

  v22 = x + (v15 + (v21 * v15));
  v23 = y + (v16 + (v21 * v16));

  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 80) = 0;
  *(self + 144) = 0;
  return self;
}

@end