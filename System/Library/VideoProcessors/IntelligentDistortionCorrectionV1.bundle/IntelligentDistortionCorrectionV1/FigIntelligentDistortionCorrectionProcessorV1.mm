@interface FigIntelligentDistortionCorrectionProcessorV1
- (CGPoint)opticalCenterOffset;
- (CGRect)inputImageCropRect;
- (CGRect)outputValidBufferRect;
- (FigIntelligentDistortionCorrectionProcessorV1)init;
- (NSString)description;
- (__n128)setStereoRectificationInverseHomography:(__n128)homography;
- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset inputCrop:(CGRect)crop primaryImageDimensions:(id)dimensions inputHorizontalSecondaryToPrimaryScaleFactor:(float)factor inputVerticalSecondaryToPrimaryScaleFactor:(float)scaleFactor inputHorizontalSecondaryToPrimaryShift:(float)shift inputVerticalSecondaryToPrimaryShift:(float)primaryShift outputPixelBuffer:(__CVBuffer *)self0 outputHorizontalAdditionalScaleFactor:(float)self1 outputVerticalAdditionalScaleFactor:(float)self2;
- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset outputPixelBuffer:(__CVBuffer *)buffer primaryImageDimensions:(id)dimensions;
- (int)compilerShaders;
- (int)computeCorrectionType;
- (int)determineWorkingBufferRequirements:(id *)requirements maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight;
- (int)getAdjustedGDCInformation:(id *)information;
- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMetalBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size;
- (int)prepareInputImagePixelBuffer:(id *)buffer;
- (int)prepareOutputImagePixelBuffer:(id *)buffer;
- (int)prepareSegmentationMaskPixelBuffer:(id *)buffer;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size;
- (int)setup;
- (int)subProcessIntelligentDistortion:(id)distortion cpwProcessingErrors:(id *)errors;
- (int)translateError:(int)error;
- (int)undistortSegmentationMask;
- (void)buildMakernoteEntry:(int)entry cpwProcessingErrors:(id *)errors idcApplied:(BOOL)applied;
- (void)dealloc;
@end

@implementation FigIntelligentDistortionCorrectionProcessorV1

- (FigIntelligentDistortionCorrectionProcessorV1)init
{
  v3.receiver = self;
  v3.super_class = FigIntelligentDistortionCorrectionProcessorV1;
  return [(FigIntelligentDistortionCorrectionProcessorV1 *)&v3 init];
}

- (int)setup
{
  self->_defaultWrites.disableStationaryDeviceDetection = FigGetCFPreferenceNumberWithDefault() != 0;
  self->_defaultWrites.disableGating = FigGetCFPreferenceNumberWithDefault() != 0;
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC0A40]) initWithbundle:v3 andOptionalCommandQueue:self->_metalCommandQueue];
    metalContext = self->_metalContext;
    self->_metalContext = v4;

    if (self->_metalContext)
    {
      self->_areAllShadersCompiled = 0;
      v6 = [[IntelligentDistortionCorrection_Utilities alloc] initWithMetalContext:self->_metalContext];
      processor = self->_idcUtilities.processor;
      self->_idcUtilities.processor = v6;

      if (self->_idcUtilities.processor)
      {
        v8 = [[EdgeDrawingLineDetector alloc] initWithFigMetalContext:self->_metalContext idcUtilities:self->_idcUtilities.processor];
        v9 = self->_edgeDrawingLineDetector.processor;
        self->_edgeDrawingLineDetector.processor = v8;

        if (self->_edgeDrawingLineDetector.processor)
        {
          v10 = [[IdcContentPreservingWarping alloc] initWithMetalContext:self->_metalContext idcUtilities:self->_idcUtilities.processor];
          v11 = self->_contentPreservingWarping.processor;
          self->_contentPreservingWarping.processor = v10;

          if (self->_contentPreservingWarping.processor)
          {
            device = [(FigMetalContext *)self->_metalContext device];
            v13 = [device newBufferWithLength:16 options:0];
            buffer = self->_contentPreservingWarping.executionErrorInformation.buffer;
            self->_contentPreservingWarping.executionErrorInformation.buffer = v13;

            if (!self->_contentPreservingWarping.executionErrorInformation.buffer)
            {
              sub_2957C47F4();
            }
          }

          else
          {
            sub_2957C486C();
          }
        }

        else
        {
          sub_2957C48E4();
        }
      }

      else
      {
        sub_2957C495C();
      }
    }

    else
    {
      sub_2957C49D4();
    }
  }

  else
  {
    sub_2957C4A4C();
  }

  return 0;
}

- (void)dealloc
{
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = FigIntelligentDistortionCorrectionProcessorV1;
  [(FigIntelligentDistortionCorrectionProcessorV1 *)&v3 dealloc];
}

- (int)determineWorkingBufferRequirements:(id *)requirements maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight
{
  if (!requirements)
  {
    sub_2957C4CAC(self, a2, 0, *&width, *&height, *&maskWidth, *&maskHeight);
    LODWORD(v17) = -2;
    goto LABEL_19;
  }

  requirements->var0 = 0;
  *self->_anon_48 = __PAIR64__(height, width);
  *&self->_anon_48[8] = __PAIR64__(maskHeight, maskWidth);
  v9 = vcltz_s32(vshl_n_s32(vdup_n_s32(width > height), 0x1FuLL));
  v23 = 0;
  *&self->_anon_48[16] = vbsl_s8(v9, 0x90000000CLL, 0xC00000009);
  *&self->_anon_48[24] = vbsl_s8(v9, 0x4800000060, 0x6000000048);
  *&self->_anon_48[32] = vbsl_s8(v9, 0xA0000000DLL, 0xD0000000ALL);
  bzero(self->_anon_e0, 0x360uLL);
  [EdgeDrawingLineDetector getDefaultConfigurationParameters:self->_anon_e0];
  [IdcContentPreservingWarping getDefaultConfigurationParameters:self->_anon_e0];
  v10 = *&self->_anon_48[8];
  v21 = *&self->_anon_48[16];
  v22 = v10;
  v11 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self memoryAllocationHandler:requirements memoryAllocationParameters:&v21 sharedMetalBuffer:0 sharedMetalBufferOffset:0 sharedMetalBufferSize:0];
  if (v11)
  {
    LODWORD(v17) = v11;
    sub_2957C4AC4();
    goto LABEL_19;
  }

  self->_sharedMetalBuffer.subModuleOffset = (LODWORD(requirements->var0) + 63) & 0xFFFFFFC0;
  v23 = 0;
  v12 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor determineWorkingBufferRequirements:&v23];
  if (v12)
  {
    v17 = v12;
    sub_2957C4B38();
    goto LABEL_18;
  }

  v13 = v23;
  v23 = 0;
  v14 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor determineWorkingBufferRequirements:&v23 bundleConfiguration:self->_anon_e0 maximumInputImageWidth:*self->_anon_48 maximumInputImageHeight:HIDWORD(*self->_anon_48) maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8])];
  if (v14)
  {
    v17 = v14;
    sub_2957C4BB4();
    goto LABEL_18;
  }

  v15 = v23;
  v23 = 0;
  LODWORD(v20) = HIDWORD(*&self->_anon_48[32]);
  v16 = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor computeSizeOfSharedMetalBuffer:&v23 maximumInputImageWidth:*self->_anon_48 maximumInputImageHeight:HIDWORD(*self->_anon_48) maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8]) meshWidth:*&self->_anon_48[16] meshHeight:vext_s8(*&self->_anon_48[16] paddedMeshWidth:*&self->_anon_48[32] paddedMeshHeight:4uLL), v20];
  v17 = v16;
  if (v16)
  {
    sub_2957C4C30(v16);
LABEL_18:
    LODWORD(v17) = [(FigIntelligentDistortionCorrectionProcessorV1 *)self translateError:v17];
    if (!v17)
    {
      return v17;
    }

LABEL_19:
    *&self->_anon_48[8] = 0;
    return v17;
  }

  if (v13 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v13;
  }

  if (v18 <= v23)
  {
    v18 = v23;
  }

  self->_sharedMetalBuffer.subModuleSize = v18;
  requirements->var0 += v18;
  return v17;
}

- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size
{
  bufferCopy = buffer;
  if (bufferCopy)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, buffer);
    self->_sharedMetalBuffer.offset = offset;
    self->_sharedMetalBuffer.size = size;
    subModuleOffset = self->_sharedMetalBuffer.subModuleOffset;
    if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4D24();
      v11 = v13;
    }

    else if ([(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4DB0();
      v11 = v14;
    }

    else if ([(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4E3C();
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_2957C4EC8();
    v11 = -2;
  }

  return v11;
}

- (int)purgeResources
{
  v3 = MEMORY[0x29EDCA928];
  v4 = *(MEMORY[0x29EDCA928] + 16);
  *&self[1].super.isa = *MEMORY[0x29EDCA928];
  *&self[1]._sharedMetalBuffer.buffer = v4;
  *&self[1]._sharedMetalBuffer.size = *(v3 + 32);
  self->_globalTransformIsValid = 0;
  buffer = self->_sharedMetalBuffer.buffer;
  self->_sharedMetalBuffer.buffer = 0;

  *&self->_anon_48[8] = 0;
  *&self->_sharedMetalBuffer.offset = 0u;
  *&self->_sharedMetalBuffer.subModuleOffset = 0u;
  processor = self->_idcUtilities.processor;
  self->_idcUtilities.processor = 0;

  v7 = self->_edgeDrawingLineDetector.results.buffer;
  self->_edgeDrawingLineDetector.results.buffer = 0;

  *&self->_edgeDrawingLineDetector.results.capacity = 0;
  self->_edgeDrawingLineDetector.results.offset = 0;
  v8 = self->_edgeDrawingLineDetector.processor;
  self->_edgeDrawingLineDetector.processor = 0;

  v9 = self->_contentPreservingWarping.processor;
  self->_contentPreservingWarping.processor = 0;

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  return 0;
}

- (int)prepareToProcess:(unsigned int)process
{
  if (process)
  {
    sub_2957C4F40(self, a2);
    return -2;
  }

  else
  {

    return MEMORY[0x2A1C70FE8](self, sel_compilerShaders);
  }
}

- (int)process
{
  v3 = &self->_anon_e0[364];
  v4 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  *self->_contentPreservingWarping.executionErrorInformation.commandStatus = 0;
  *&self->_contentPreservingWarping.executionErrorInformation.commandStatus[2] = 0;
  memset(v59, 0, 24);
  *&self->_rt.cpwDataValid = 0;
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  self->_rt.processedSegmentationMaskTexture = 0;

  *&self->_rt.subProcessIntelligentDistortionErrorCode = 0;
  self->_globalTransformIsValid = 0;
  v6 = MEMORY[0x29EDCA928];
  v7 = *(MEMORY[0x29EDCA928] + 16);
  *&self[1].super.isa = *MEMORY[0x29EDCA928];
  *&self[1]._sharedMetalBuffer.buffer = v7;
  *&self[1]._sharedMetalBuffer.size = *(v6 + 32);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  self->_outputValidBufferRect.origin = *MEMORY[0x29EDB90D8];
  self->_outputValidBufferRect.size = v8;
  self->_zoomWasApplied = self->_applyZoom;
  *(v3 + 73) = 0;
  self->_minDistanceToEdge = 3.4028e38;
  *self->_transformCenterMeshDimensions = FigGetCFPreferenceNumberWithDefault();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v10 = *self->_transformCenterMeshDimensions;
  v10.i32[1] = CFPreferenceNumberWithDefault;
  v11 = *&self->_anon_48[16];
  v12 = vmax_u32(vmin_u32(v10, v11), 0x200000002);
  *self->_transformCenterMeshDimensions = v12;
  if (vsub_s32(v11, v12).u32[0])
  {
    sub_2957C4FB8(self, &self->_anon_48[20], v52, &v53);
    v13 = v52[0];
    v14 = v53;
  }

  else
  {
    v13 = v11.i32[1];
    v14 = v12.i32[1];
  }

  if ((v13 - v14))
  {
    sub_2957C505C();
  }

  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C57DC();
    v35 = 0;
    v50 = 4294967292;
    goto LABEL_45;
  }

  if (self->_inputImage)
  {
    if (self->_outputImage)
    {
      if (self->_applyZoom)
      {
        bzero(self->_anon_e0, 0x360uLL);
        [EdgeDrawingLineDetector getDefaultConfigurationParameters:self->_anon_e0];
        [IdcContentPreservingWarping getDefaultConfigurationParameters:self->_anon_e0];
        self->_anon_e0[856] = self->_useDeepTransferAccommodations;
        *self->_anon_e0 = self->_finalImageDimensions;
        self->_anon_e0[8] = self->_replicatePixelsOutsideOfFinalImageDimensions;
        *&self->_anon_e0[176] = *&self->_applyStereoRectificationHomography;
        v15 = *&self->_anon_560[16];
        *&self->_anon_e0[128] = *self->_anon_560;
        *&self->_anon_e0[144] = v15;
        *&self->_anon_e0[160] = *&self->_anon_560[32];
        *&v15 = *self->_inputImageAppliedOffsets;
        *&self->_anon_e0[16] = *self->_inputImageAppliedScalingFactors;
        *&self->_anon_e0[24] = v15;
        if (!self->_usePrecomputedPolynomialsAndOpticalCenterOffset)
        {
          goto LABEL_16;
        }

        gdcForwardPolynomial = self->_gdcForwardPolynomial;
        if (gdcForwardPolynomial)
        {
          if (self->_gdcInversePolynomial)
          {
            bytes = [(NSData *)gdcForwardPolynomial bytes];
            if (bytes)
            {
              *&self->_anon_e0[56] = *bytes;
              *&self->_anon_e0[60] = bytes[1];
              *&self->_anon_e0[64] = bytes[2];
              *&self->_anon_e0[68] = bytes[3];
              *&self->_anon_e0[72] = bytes[4];
              *&self->_anon_e0[76] = bytes[5];
              *&self->_anon_e0[80] = bytes[6];
              *&self->_anon_e0[84] = bytes[7];
              bytes2 = [(NSData *)self->_gdcInversePolynomial bytes];
              *&self->_anon_e0[88] = *bytes2;
              *&self->_anon_e0[92] = bytes2[1];
              *&self->_anon_e0[96] = bytes2[2];
              *&self->_anon_e0[100] = bytes2[3];
              *&self->_anon_e0[104] = bytes2[4];
              *&self->_anon_e0[108] = bytes2[5];
              *&self->_anon_e0[112] = bytes2[6];
              *&self->_anon_e0[116] = bytes2[7];
              *&self->_anon_e0[40] = vcvt_f32_f64(*(v3 + 700));
              self->_anon_e0[178] = 1;
LABEL_16:
              if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor extractBundleConfigurationParameters:self->_anon_e0 cameraInfo:self->_cameraInfoByPortType tuningParameters:self->_tuningParameters imageInfo:self->_inputImageMetadataDictionary])
              {
                sub_2957C5148();
                goto LABEL_61;
              }

              self->_rt.bundleConfigurationParametersValid = 1;
              if (!self->_processGeometricDistortionCorrection)
              {
                self->_anon_e0[120] = 0;
              }

              v19 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:*MEMORY[0x29EDC00D8]];
              intValue = [v19 intValue];

              if (intValue)
              {
                if (self->_anon_e0[120])
                {
                  sub_2957C51D4();
                  v35 = 0;
LABEL_44:
                  v50 = 0;
                  goto LABEL_45;
                }

                if (intValue == 3)
                {
                  v21 = 3;
                }

                else
                {
                  if (intValue != 1)
                  {
                    goto LABEL_29;
                  }

                  v21 = 1;
                }
              }

              else
              {
                if (!self->_anon_e0[120])
                {
                  self->_gdcSource = 0;
LABEL_29:
                  if ([(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareInputImagePixelBuffer:&self->_anon_e0[228]])
                  {
                    sub_2957C524C();
                  }

                  else if (self->_lowResSegmentationMask && [(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareSegmentationMaskPixelBuffer:&self->_anon_e0[348]])
                  {
                    sub_2957C52D8();
                  }

                  else
                  {
                    if (![(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareOutputImagePixelBuffer:&self->_anon_e0[324]])
                    {
                      v22 = [IDC_RegionOfInterestTracker alloc];
                      buffer = self->_sharedMetalBuffer.buffer;
                      roiDataOffset = self->_sharedMetalBuffer.roiDataOffset;
                      v53 = *&self->_anon_e0[300];
                      *&v54 = *&self->_anon_e0[316];
                      v25 = [(IDC_RegionOfInterestTracker *)v22 init:buffer metalBufferOffset:roiDataOffset initialIdcRoi:&v53];
                      if (!v25)
                      {
                        sub_2957C5518();
                        v35 = 0;
                        v50 = 0xFFFFFFFFLL;
                        goto LABEL_45;
                      }

                      v26 = v25;
                      v27 = self->_sharedMetalBuffer.buffer;
                      offset = self->_sharedMetalBuffer.offset;
                      size = self->_sharedMetalBuffer.size;
                      v53 = *&self->_anon_48[16];
                      *&v54 = *v3;
                      v30 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self memoryAllocationHandler:0 memoryAllocationParameters:&v53 sharedMetalBuffer:v27 sharedMetalBufferOffset:offset sharedMetalBufferSize:size];
                      if (v30)
                      {
                        v50 = v30;
                        sub_2957C53F0(v26);
                        v35 = 0;
                        goto LABEL_45;
                      }

                      computeCorrectionType = [(FigIntelligentDistortionCorrectionProcessorV1 *)self computeCorrectionType];
                      self->_correctionType = computeCorrectionType;
                      if (computeCorrectionType)
                      {
                        v32 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self subProcessIntelligentDistortion:v26 cpwProcessingErrors:v59];
                        processor = self->_idcUtilities.processor;
                        inputImageTexture = self->_rt.inputImageTexture;
                        if (v32)
                        {
                          v35 = 0;
                          invertedMesh = 0;
                        }

                        else
                        {
                          invertedMesh = self->_textures.invertedMesh;
                          v35 = 1;
                        }
                      }

                      else
                      {
                        v35 = 0;
                        invertedMesh = 0;
                        processor = self->_idcUtilities.processor;
                        inputImageTexture = self->_rt.inputImageTexture;
                      }

                      v37 = [(IntelligentDistortionCorrection_Utilities *)processor warpAndOrUndistortPrimaryAsset:self->_anon_e0 inputImageTexture:inputImageTexture inputMeshTexture:invertedMesh outputImageTexture:self->_rt.outputImageTexture roiTracker:v26 inputImageMetadataDictionary:self->_inputImageMetadataDictionary];
                      if (!v37)
                      {
                        self->_outputValidBufferRect.origin.x = 0.0;
                        self->_outputValidBufferRect.origin.y = 0.0;
                        finalImageDimensions = self->_finalImageDimensions;
                        v39.i64[0] = finalImageDimensions.width;
                        v39.i64[1] = finalImageDimensions.height;
                        *(v3 + 764) = vcvtq_f64_s64(v39);
                        if (v35)
                        {
                          objc_msgSend_idcRoi(v26);
                          v40 = *(&v53 + 1);
                          v41 = vand_s8(*&v53, 0x100000001);
                          v42 = vadd_s32(v41, *&v53);
                          v43 = *&vsub_s32(*&v54, v41) & 0xFFFFFFFEFFFFFFFELL;
                          extendedMesh = self->_textures.extendedMesh;
                          v45.n128_u64[0] = *&self->_anon_48[16];
                          v46.n128_u64[0] = *self->_transformCenterMeshDimensions;
                          v47 = *&self->_anon_e0[276];
                          v55 = *&self->_anon_e0[260];
                          v56 = v47;
                          v48 = *&self->_anon_e0[308];
                          v57 = *&self->_anon_e0[292];
                          v58 = v48;
                          v49 = *&self->_anon_e0[244];
                          v53 = *&self->_anon_e0[228];
                          v54 = v49;
                          v52[0] = v42;
                          v52[1] = v40;
                          v52[2] = v43;
                          self->_globalTransformIsValid = idcComputeGlobalTransform(&v53, v52, extendedMesh, &self[1], v45, v46) == 0;

                          v50 = 0;
                          v35 = 1;
                          goto LABEL_45;
                        }

                        self->_globalTransformIsValid = 1;

                        goto LABEL_44;
                      }

                      sub_2957C546C(v37, self, v26, &v53);
                      goto LABEL_62;
                    }

                    sub_2957C5364();
                  }

LABEL_61:
                  v35 = 0;
LABEL_62:
                  v50 = v53;
                  goto LABEL_45;
                }

                v21 = 2;
              }

              self->_gdcSource = v21;
              goto LABEL_29;
            }

            sub_2957C5590();
          }

          else
          {
            sub_2957C5604();
          }
        }

        else
        {
          sub_2957C5678();
        }
      }

      else
      {
        sub_2957C50D0();
      }
    }

    else
    {
      sub_2957C56EC();
    }
  }

  else
  {
    sub_2957C5764();
  }

  v35 = 0;
  v50 = 4294967294;
LABEL_45:
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self buildMakernoteEntry:v50 cpwProcessingErrors:v59 idcApplied:v35];
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  return v50;
}

- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset outputPixelBuffer:(__CVBuffer *)buffer primaryImageDimensions:(id)dimensions
{
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1.0;
  return [(FigIntelligentDistortionCorrectionProcessorV1 *)self applyExistingCorrectionToSecondaryAsset:asset inputCrop:dimensions primaryImageDimensions:buffer inputHorizontalSecondaryToPrimaryScaleFactor:*MEMORY[0x29EDB90D8] inputVerticalSecondaryToPrimaryScaleFactor:*(MEMORY[0x29EDB90D8] + 8) inputHorizontalSecondaryToPrimaryShift:*(MEMORY[0x29EDB90D8] + 16) inputVerticalSecondaryToPrimaryShift:*(MEMORY[0x29EDB90D8] + 24) outputPixelBuffer:v5 outputHorizontalAdditionalScaleFactor:v6 outputVerticalAdditionalScaleFactor:0.0, 0.0, 0x3F8000003F800000];
}

- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset inputCrop:(CGRect)crop primaryImageDimensions:(id)dimensions inputHorizontalSecondaryToPrimaryScaleFactor:(float)factor inputVerticalSecondaryToPrimaryScaleFactor:(float)scaleFactor inputHorizontalSecondaryToPrimaryShift:(float)shift inputVerticalSecondaryToPrimaryShift:(float)primaryShift outputPixelBuffer:(__CVBuffer *)self0 outputHorizontalAdditionalScaleFactor:(float)self1 outputVerticalAdditionalScaleFactor:(float)self2
{
  *&v64 = shift;
  *(&v64 + 1) = primaryShift;
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v23 = memcpy(__dst, self->_anon_e0, 0x360uLL);
  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C5E1C(v23);
LABEL_52:
    commandBuffer = 0;
    buffer = 0;
    v33 = 0;
    v56 = -4;
    goto LABEL_49;
  }

  if (!self->_rt.bundleConfigurationParametersValid)
  {
    sub_2957C5854(v23);
    goto LABEL_52;
  }

  if (!asset)
  {
    sub_2957C5DA4(v23);
    goto LABEL_47;
  }

  if (!buffer)
  {
    sub_2957C5D2C(v23);
    commandBuffer = 0;
    goto LABEL_48;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(asset);
  v25 = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType != 1278226536 && PixelFormatType != 1751411059)
    {
      v26 = 1751527984;
      goto LABEL_12;
    }
  }

  else if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
  {
    v26 = 1278226488;
LABEL_12:
    if (PixelFormatType == v26)
    {
      goto LABEL_13;
    }

    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v12, v60, v61, v62, v64, v65, DWORD2(v65));
LABEL_47:
    commandBuffer = 0;
    buffer = 0;
LABEL_48:
    v33 = 0;
    v56 = -2;
    goto LABEL_49;
  }

LABEL_13:
  if (v25 != PixelFormatType)
  {
    sub_2957C58CC();
    goto LABEL_47;
  }

  v27 = 0;
  v28 = 0;
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType == 1278226536 || PixelFormatType == 1751411059 || PixelFormatType == 1751527984)
    {
      v28 = 0;
      v27 = 25;
    }
  }

  else if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
  {
    v28 = 1;
    v27 = 20;
  }

  else if (PixelFormatType == 1278226488)
  {
    v28 = 0;
    v27 = 10;
  }

  v29 = CVPixelBufferGetWidth(asset);
  if (!v29)
  {
    sub_2957C5CB4();
    goto LABEL_47;
  }

  v30 = v29;
  v31 = CVPixelBufferGetHeight(asset);
  if (!v31)
  {
    sub_2957C5C3C();
    goto LABEL_47;
  }

  v32 = v31;
  v33 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:asset pixelFormat:v27 usage:17 plane:0];
  if (!v33)
  {
    sub_2957C5BC4();
    commandBuffer = 0;
    buffer = 0;
LABEL_62:
    v56 = -1;
    goto LABEL_49;
  }

  bufferCopy = buffer;
  buffer = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:buffer pixelFormat:v27 usage:23 plane:0];
  if (!buffer)
  {
    sub_2957C5B4C();
    commandBuffer = 0;
    goto LABEL_62;
  }

  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  if (CGRectIsNull(v70))
  {
    v35 = *MEMORY[0x29EDB90D8];
    v34 = *(MEMORY[0x29EDB90D8] + 8);
    v37 = *(MEMORY[0x29EDB90D8] + 16);
    v36 = *(MEMORY[0x29EDB90D8] + 24);
  }

  else
  {
    v35 = x / v30;
    v34 = y / v32;
    v37 = width / v30;
    v36 = height / v32;
  }

  dimensionsCopy = dimensions;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  v67 = *&self->_anon_e0[300];
  v68 = *&self->_anon_e0[316];
  processor = self->_idcUtilities.processor;
  if (self->_rt.cpwDataValid)
  {
    invertedMesh = self->_textures.invertedMesh;
  }

  else
  {
    invertedMesh = 0;
  }

  v47 = v28;
  v65 = *&self->_anon_e0[300];
  v66 = *&self->_anon_e0[316];
  LOBYTE(v58) = v28;
  *&v41 = factor;
  *&v42 = scaleFactor;
  LODWORD(v44) = HIDWORD(v64);
  LODWORD(v43) = v64;
  if ([(IntelligentDistortionCorrection_Utilities *)processor warpAndOrUndistortSecondaryAsset:__dst inputImageTexture:v33 inputMeshTexture:invertedMesh normalizedInputCrop:dimensionsCopy primaryImageDimensions:buffer inputHorizontalSecondaryToPrimaryScaleFactor:0 inputVerticalSecondaryToPrimaryScaleFactor:v35 inputHorizontalSecondaryToPrimaryShift:v34 inputVerticalSecondaryToPrimaryShift:v37 outputImageTexture:v36 outputHorizontalAdditionalScaleFactor:v41 outputVerticalAdditionalScaleFactor:v42 roiTracker:v43 isDepthData:v44 commandBuffer:__PAIR64__(LODWORD(verticalAdditionalScaleFactor) sensorInputCropRect:LODWORD(additionalScaleFactor)), v58, commandBuffer, &v65])
  {
    sub_2957C5944();
    v56 = v65;
    goto LABEL_49;
  }

  if (PixelFormatType != 1751527984)
  {
    v56 = 0;
    goto LABEL_49;
  }

  v48 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:asset pixelFormat:65 usage:17 plane:1];

  if (!v48)
  {
    sub_2957C5AD4();
    v33 = 0;
    goto LABEL_62;
  }

  v49 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:bufferCopy pixelFormat:65 usage:23 plane:1];

  if (v49)
  {
    v54 = self->_idcUtilities.processor;
    if (self->_rt.cpwDataValid)
    {
      v55 = self->_textures.invertedMesh;
    }

    else
    {
      v55 = 0;
    }

    v65 = v67;
    v66 = v68;
    LOBYTE(v59) = v47;
    *&v50 = factor;
    *&v51 = scaleFactor;
    LODWORD(v53) = HIDWORD(v64);
    LODWORD(v52) = v64;
    if ([(IntelligentDistortionCorrection_Utilities *)v54 warpAndOrUndistortSecondaryAsset:__dst inputImageTexture:v48 inputMeshTexture:v55 normalizedInputCrop:dimensionsCopy primaryImageDimensions:v49 inputHorizontalSecondaryToPrimaryScaleFactor:0 inputVerticalSecondaryToPrimaryScaleFactor:v35 inputHorizontalSecondaryToPrimaryShift:v34 inputVerticalSecondaryToPrimaryShift:v37 outputImageTexture:v36 outputHorizontalAdditionalScaleFactor:v50 outputVerticalAdditionalScaleFactor:v51 roiTracker:v52 isDepthData:v53 commandBuffer:__PAIR64__(LODWORD(verticalAdditionalScaleFactor) sensorInputCropRect:LODWORD(additionalScaleFactor)), v59, commandBuffer, &v65])
    {
      sub_2957C59D0();
      v56 = v65;
    }

    else
    {
      v56 = 0;
    }

    buffer = v49;
  }

  else
  {
    sub_2957C5A5C();
    buffer = 0;
    v56 = -1;
  }

  v33 = v48;
LABEL_49:
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v56;
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (int)subProcessIntelligentDistortion:(id)distortion cpwProcessingErrors:(id *)errors
{
  distortionCopy = distortion;
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  if (!processedSegmentationMaskTexture)
  {
    undistortSegmentationMask = [(FigIntelligentDistortionCorrectionProcessorV1 *)self undistortSegmentationMask];
    if (undistortSegmentationMask)
    {
      v25 = undistortSegmentationMask;
      self->_rt.subProcessIntelligentDistortionErrorCode = 256;
      emitter = fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", "[undistortSegmentationMask] failed", "IntelligentDistortionCorrectionProcessorV1.m", 1059, v25);
      goto LABEL_18;
    }

    processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  }

  v9 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor detectLinesPart1:self->_anon_e0 inputImageTexture:self->_rt.inputImageTexture inputSegmentationMaskTexture:processedSegmentationMaskTexture];
  if (v9)
  {
    v25 = v9;
    self->_rt.subProcessIntelligentDistortionErrorCode = 512;
    v26 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", 0, "IntelligentDistortionCorrectionProcessorV1.m", 1073, v25);
LABEL_18:
    [(FigMetalContext *)self->_metalContext waitForIdle];
    goto LABEL_19;
  }

  v10 = self + 12 * self->_correctionType;
  v11 = *(v10 + 239);
  v12 = *(v10 + 240);
  v47[0] = *&self->_anon_e0[28 * v11 + 444];
  *(v47 + 12) = *&self->_anon_e0[28 * v11 + 456];
  v13 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:@"PortType"];
  v14 = [v13 isEqualToString:*MEMORY[0x29EDBFF50]];

  if (v14)
  {
    v15 = fmaxf(fminf(*&self->_anon_e0[848], self->_minDistanceToEdge), 0.0) - *&self->_anon_e0[848];
    v12 = roundf(fminf(v12 * expf(-((v15 / *&self->_anon_e0[852]) * (v15 / *&self->_anon_e0[852]))), v12 / 3.0));
  }

  v16 = *&self->_anon_e0[32];
  v45 = *&self->_anon_e0[252];
  v46 = *&self->_anon_e0[268];
  v17 = idcComputeInverseDistortionPolynomial(v47, &v45, &self->_anon_e0[204], v12, v16);
  if (v17)
  {
    v25 = v17;
    self->_rt.subProcessIntelligentDistortionErrorCode = 768;
    v27 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", 0, "IntelligentDistortionCorrectionProcessorV1.m", 1125, v25);
    goto LABEL_18;
  }

  [(FigMetalContext *)self->_metalContext waitForIdle];
  v18 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor detectLinesPart2:self->_anon_e0 results:&self->_edgeDrawingLineDetector.results];
  if (v18)
  {
    v25 = v18;
    self->_rt.subProcessIntelligentDistortionErrorCode = 1024;
    v29 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v29, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", 0, "IntelligentDistortionCorrectionProcessorV1.m", 1141, v25);
    goto LABEL_18;
  }

  self->_anon_e0[436] = 1;
  v19 = *self->_anon_48;
  v20 = HIDWORD(v19);
  v21 = v19;
  v22 = *&self->_anon_48[16];
  v23 = v22.u32[0];
  LODWORD(v44) = HIDWORD(*&self->_anon_48[32]);
  v22.i32[0] = vdup_lane_s32(v22, 1).u32[0];
  v22.i32[1] = *&self->_anon_48[32];
  v24 = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor process:self->_anon_e0 maximumInputImageWidth:v21 maximumInputImageHeight:v20 maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8]) meshWidth:v23 meshHeight:*&v22 paddedMeshWidth:v44 paddedMeshHeight:self->_rt.processedSegmentationMaskTexture segmentationMaskTex:self->_textures.extendedMesh extendedMeshTex:self->_textures.invertedMesh invertedMeshTex:&self->_edgeDrawingLineDetector.results detectedLines:&self->_contentPreservingWarping.executionErrorInformation executionErrorInformation:?];
  if (v24)
  {
    v25 = v24;
    self->_rt.subProcessIntelligentDistortionErrorCode = 1280;
    v30 = fig_log_get_emitter();
    LODWORD(v43) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", 0, "IntelligentDistortionCorrectionProcessorV1.m", 1172, v43);
    goto LABEL_18;
  }

  v25 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeMeshROI:self->_anon_e0 invertedMeshTexture:self->_textures.invertedMesh roiTracker:distortionCopy];
  if (v25)
  {
    self->_rt.subProcessIntelligentDistortionErrorCode = 1536;
    v31 = fig_log_get_emitter();
    LODWORD(v43) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v31, "[Intelligent Distortion Correction Processor] Fig", "err == 0 ", "bail", 0, "IntelligentDistortionCorrectionProcessorV1.m", 1185, v43);
    goto LABEL_18;
  }

  [(FigMetalContext *)self->_metalContext waitForIdle];
  self->_rt.cpwDataValid = 1;
  [distortionCopy synchronizeData];
LABEL_19:
  for (i = 0; i != 4; ++i)
  {
    if (self->_contentPreservingWarping.executionErrorInformation.commandStatus[i] != 4)
    {
      ++errors->var5;
      v25 = -12782;
    }
  }

  contents = [(MTLBuffer *)self->_contentPreservingWarping.executionErrorInformation.buffer contents];
  v34 = -12782;
  if (contents)
  {
    v35 = *contents;
    errors->var0 = *contents;
    v36 = contents[1];
    errors->var3 = v36;
    errors->var1 = HIWORD(v36);
    v37 = v36 >= 0x10000;
    v38 = contents[3];
    errors->var4 = v38;
    v39 = contents[2];
    errors->var2 = v39;
    v40 = v39 | v38 | v35;
    if (!v37 && v40 == 0)
    {
      v34 = v25;
    }

    else
    {
      v34 = -12782;
    }
  }

  return v34;
}

- (int)undistortSegmentationMask
{
  objc_storeStrong(&self->_rt.processedSegmentationMaskTexture, self->_rt.inputSegmentationMaskTexture);
  if (self->_anon_e0[120] == 1)
  {
    if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor undistortSingleChannelTexture:self->_anon_e0 inputTexture:self->_rt.inputSegmentationMaskTexture outputTexture:self->_textures.undistortedSegmentationMask])
    {
      return -12782;
    }

    objc_storeStrong(&self->_rt.processedSegmentationMaskTexture, self->_textures.undistortedSegmentationMask);
  }

  return 0;
}

- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMetalBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size
{
  bufferCopy = buffer;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  if (bufferCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = handler == 0;
  }

  if ((handler == 0) != (bufferCopy != 0))
  {
    v15 = -3;
    goto LABEL_35;
  }

  if (parameters->var4 && (var5 = parameters->var5, var5))
  {
    *&v40 = parameters->var4;
    *(&v40 + 1) = var5;
    v41 = xmmword_2957C7D90;
    v17 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v40];
    if (v14)
    {
      if (*(&v42 + 1) > size)
      {
        sub_2957C5F0C(v17);
        goto LABEL_44;
      }

      v18 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:offset textureDescriptor:&v40];
      undistortedSegmentationMask = self->_textures.undistortedSegmentationMask;
      self->_textures.undistortedSegmentationMask = v18;

      if (!self->_textures.undistortedSegmentationMask)
      {
        sub_2957C5E94();
        goto LABEL_46;
      }
    }

    v20 = *(&v42 + 1);
  }

  else
  {
    if (v14)
    {
      v21 = self->_textures.undistortedSegmentationMask;
      self->_textures.undistortedSegmentationMask = 0;
    }

    v20 = 0;
  }

  v22 = vadd_s32(*&parameters->var0, 0x200000002);
  *&v23 = v22.u32[0];
  *(&v23 + 1) = v22.u32[1];
  v40 = v23;
  v41 = xmmword_2957C7E10;
  v24 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v40, 105, 3];
  if (v14)
  {
    if (*(&v42 + 1) + v20 > size)
    {
      sub_2957C6254(v24);
LABEL_44:
      v15 = -2;
      goto LABEL_35;
    }

    v25 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:v20 + offset textureDescriptor:&v40];
    extendedMesh = self->_textures.extendedMesh;
    self->_textures.extendedMesh = v25;

    if (!self->_textures.extendedMesh)
    {
      sub_2957C61DC();
LABEL_46:
      v15 = -1;
      goto LABEL_35;
    }
  }

  v27 = *(&v42 + 1) + v20;
  v28 = *&parameters->var2;
  *&v29 = v28;
  *(&v29 + 1) = HIDWORD(v28);
  v40 = v29;
  v41 = v39;
  v30 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v40];
  if (!v14)
  {
    goto LABEL_21;
  }

  if (*(&v42 + 1) + v27 > size)
  {
    sub_2957C6164(v30);
    goto LABEL_44;
  }

  v31 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:v27 + offset textureDescriptor:&v40];
  invertedMesh = self->_textures.invertedMesh;
  self->_textures.invertedMesh = v31;

  if (!self->_textures.invertedMesh)
  {
    sub_2957C60EC();
    goto LABEL_46;
  }

LABEL_21:
  v33 = (v27 + DWORD2(v42) + 63) & 0xFFFFFFC0;
  self->_edgeDrawingLineDetector.results.capacity = 2048;
  objc_storeStrong(&self->_edgeDrawingLineDetector.results.buffer, buffer);
  self->_edgeDrawingLineDetector.results.offset = v33 + offset;
  if (v33 + 32772 > size && v14)
  {
    sub_2957C6074();
    goto LABEL_44;
  }

  v35 = (v33 + 32835) & 0xFFFFFFC0;
  self->_sharedMetalBuffer.roiDataOffset = v35 + offset;
  if ((v35 | 0x20uLL) > size && v14)
  {
    sub_2957C5FFC();
    goto LABEL_44;
  }

  self->_sharedMetalBuffer.gatingCounters = (v35 | 0x20) + offset;
  if ((v35 | 0x28uLL) > size && v14)
  {
    sub_2957C5F84();
    goto LABEL_44;
  }

  v15 = 0;
  if (handler)
  {
    handler->var0 = (v35 + 103) & 0xFFFFFFC0;
  }

LABEL_35:

  return v15;
}

- (int)prepareInputImagePixelBuffer:(id *)buffer
{
  v5 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self mapPixelFormat:self->_inputImage format:&self->_rt.inputImagePixelFormat];
  if (v5)
  {
    v25 = v5;
    sub_2957C62CC();
    return v25;
  }

  v6 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_inputImage pixelFormat:self->_rt.inputImagePixelFormat usage:23 plane:0];
  inputImageTexture = self->_rt.inputImageTexture;
  self->_rt.inputImageTexture = v6;

  if (!self->_rt.inputImageTexture)
  {
    sub_2957C6438();
    return -12786;
  }

  Width = CVPixelBufferGetWidth(self->_inputImage);
  Height = CVPixelBufferGetHeight(self->_inputImage);
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)self->_rt.inputImageTexture width] height:[(MTLTexture *)self->_rt.inputImageTexture height]];
  if (!buffer->var1.var4 || !buffer->var1.var5 || self->_gdcSource == 1 && buffer->var2.var4 == Width && buffer->var2.var5 == Height)
  {
    *&buffer->var1.var0 = *&buffer->var0.var0;
    *&buffer->var1.var4 = *&buffer->var0.var4;
  }

  var4 = buffer->var2.var4;
  if (var4 && (var5 = buffer->var2.var5) != 0 && var4 != var5)
  {
    v12 = llroundf(var4 * COERCE_FLOAT(*&self->_anon_e0[16]));
    buffer->var2.var4 = v12;
    v13 = llroundf(*&self->_anon_e0[20] * var5);
    buffer->var2.var5 = v13;
    v14 = buffer->var0.var4 - v12;
    v15 = buffer->var0.var5 - v13;
    buffer->var2.var0 = v14 / 2;
    buffer->var2.var1 = v15 / 2;
    buffer->var2.var2 = v12 + v14 / 2 - 1;
    buffer->var2.var3 = v13 + v15 / 2 - 1;
  }

  else
  {
    *&buffer->var2.var0 = *&buffer->var1.var0;
    *&buffer->var2.var4 = *&buffer->var1.var4;
  }

  if (CGRectEqualToRect(self->_inputImageCropRect, *MEMORY[0x29EDB90D8]) || CGRectEqualToRect(self->_inputImageCropRect, *MEMORY[0x29EDB90E0]))
  {
    *&buffer->var3.var0 = 0;
    v16 = *&buffer->var0.var4;
    *&buffer->var3.var2 = vadd_s32(v16, -1);
    buffer->var3.var4 = v16.i32[0];
    v17 = v16.i32[1];
  }

  else
  {
    v18 = self->_inputImageCropRect.size.width;
    if (v18 <= 0.0)
    {
      sub_2957C63C0();
      return -12780;
    }

    v19 = self->_inputImageCropRect.size.height;
    if (v19 <= 0.0)
    {
      sub_2957C6348();
      return -12780;
    }

    __asm { FMOV            V4.2D, #-1.0 }

    *&buffer->var3.var0 = vuzp1q_s32(vcvtq_s64_f64(self->_inputImageCropRect.origin), vcvtq_s64_f64(vaddq_f64(vaddq_f64(self->_inputImageCropRect.size, self->_inputImageCropRect.origin), _Q4)));
    buffer->var3.var4 = v18;
    v17 = v19;
  }

  buffer->var3.var5 = v17;
  if (buffer->var1.var0 >= buffer->var0.var0 && buffer->var1.var1 >= buffer->var0.var1 && buffer->var1.var2 <= buffer->var0.var2 && buffer->var1.var3 <= buffer->var0.var3)
  {
    return 0;
  }

  return -12780;
}

- (int)prepareSegmentationMaskPixelBuffer:(id *)buffer
{
  if (!self->_processIntelligentDistortionCorrection)
  {
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:0 height:0];
    return 0;
  }

  lowResSegmentationMask = self->_lowResSegmentationMask;
  if (!lowResSegmentationMask)
  {
    sub_2957C6610(0, a2);
    return -12780;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(lowResSegmentationMask);
  if (PixelFormatType != 642527336 && PixelFormatType != 1278226536)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v13, v14, v15, v16, vars0, vars8);
    return -12780;
  }

  v9 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_lowResSegmentationMask pixelFormat:25 usage:23 plane:0];
  inputSegmentationMaskTexture = self->_rt.inputSegmentationMaskTexture;
  self->_rt.inputSegmentationMaskTexture = v9;

  v11 = self->_rt.inputSegmentationMaskTexture;
  if (v11)
  {
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)v11 width] height:[(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]];
    if ([(MTLTexture *)self->_rt.inputSegmentationMaskTexture width]< 0x10 || [(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]<= 0xF)
    {
      sub_2957C6524();
      return -12780;
    }

    if ([(MTLTexture *)self->_rt.inputSegmentationMaskTexture width]> *&self->_anon_48[8] || [(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]> *&self->_anon_48[12])
    {
      sub_2957C64B0();
      return -12780;
    }

    return 0;
  }

  sub_2957C6598();
  return -1;
}

- (int)prepareOutputImagePixelBuffer:(id *)buffer
{
  v5 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self mapPixelFormat:self->_outputImage format:&self->_rt.outputImagePixelFormat];
  if (v5)
  {
    v9 = v5;
    sub_2957C6688();
  }

  else
  {
    v6 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_outputImage pixelFormat:self->_rt.outputImagePixelFormat usage:23 plane:0];
    outputImageTexture = self->_rt.outputImageTexture;
    self->_rt.outputImageTexture = v6;

    v8 = self->_rt.outputImageTexture;
    if (v8)
    {
      [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)v8 width] height:[(MTLTexture *)self->_rt.outputImageTexture height]];
      return 0;
    }

    else
    {
      sub_2957C6704();
      return -12786;
    }
  }

  return v9;
}

- (void)buildMakernoteEntry:(int)entry cpwProcessingErrors:(id *)errors idcApplied:(BOOL)applied
{
  v5 = -entry & 0xF | (16 * (self->_correctionType & 0xF)) | ((self->_gdcSource & 3) << 15);
  if (applied)
  {
    v5 |= 0x200000u;
  }

  if (self->_processIntelligentDistortionCorrection)
  {
    v5 |= 0x400000u;
  }

  if (self->_processGeometricDistortionCorrection)
  {
    v5 |= 0x800000u;
  }

  if (self->_deviceWasStationaryDuringCapture)
  {
    v5 |= 0x1000000u;
  }

  if (self->_globalTransformIsValid)
  {
    v5 |= 0x2000000u;
  }

  if (errors->var0)
  {
    v5 |= 0x4000000u;
  }

  if (errors->var1)
  {
    v5 |= 0x8000000u;
  }

  if (errors->var3)
  {
    v5 |= 0x10000000u;
  }

  if (errors->var4)
  {
    v5 |= 0x20000000u;
  }

  if (errors->var2)
  {
    v5 |= 0x40000000u;
  }

  if (errors->var5)
  {
    v5 |= 0x80000000;
  }

  self->_makernoteEntry = self->_rt.correctionTypeSelectionCode | self->_rt.subProcessIntelligentDistortionErrorCode | v5;
}

- (int)compilerShaders
{
  if (self->_areAllShadersCompiled)
  {
    return 0;
  }

  if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor compileShaders:self->_isShaderHarvesting])
  {
    sub_2957C677C();
    return v4;
  }

  else if ([(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor compileShaders:self->_isShaderHarvesting])
  {
    sub_2957C6808();
    return v5;
  }

  else
  {
    result = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor compileShaders:self->_isShaderHarvesting];
    if (result)
    {
      sub_2957C6894();
      return v6;
    }

    else
    {
      self->_areAllShadersCompiled = 1;
    }
  }

  return result;
}

- (int)computeCorrectionType
{
  v3 = [(NSArray *)self->_faceObservations count];
  if (self->_defaultWrites.disableGating && self->_processIntelligentDistortionCorrection && self->_lowResSegmentationMask && self->_faceObservations && v3)
  {
    v4 = 0;
    self->_rt.correctionTypeSelectionCode = 0;
LABEL_7:
    v5 = 1;
    goto LABEL_48;
  }

  if (!self->_processIntelligentDistortionCorrection)
  {
    v4 = 0;
    v5 = 0;
    v79 = 4096;
LABEL_47:
    self->_rt.correctionTypeSelectionCode = v79;
    goto LABEL_48;
  }

  if (self->_deviceWasStationaryDuringCapture && !self->_defaultWrites.disableStationaryDeviceDetection)
  {
    v4 = 0;
    v5 = 0;
    v79 = 6144;
    goto LABEL_47;
  }

  if (!self->_lowResSegmentationMask)
  {
    v4 = 0;
    v5 = 0;
    v79 = 0x2000;
    goto LABEL_47;
  }

  if (!self->_faceObservations || !v3)
  {
    v4 = 0;
    v5 = 0;
    v79 = 10240;
    goto LABEL_47;
  }

  v6 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:*MEMORY[0x29EDC0000]];
  v4 = v6;
  if (!v6)
  {
    sub_2957C6A14();
    goto LABEL_7;
  }

  v104[0] = 1;
  if ((utlIntToOrientation([v6 intValue], v104) & 1) == 0)
  {
    sub_2957C6920();
    goto LABEL_7;
  }

  v7 = *&self->_anon_e0[268];
  v8 = *&self->_anon_e0[272];
  v9 = *&self->_anon_e0[252];
  v10 = *&self->_anon_e0[256];
  v84 = *&self->_anon_e0[244];
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[192]];
  v12 = v11;
  v13 = *&self->_anon_e0[196];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v14 = self->_faceObservations;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v100 objects:v99 count:16];
  if (!v15)
  {

LABEL_46:
    v5 = 0;
    v79 = 20480;
    goto LABEL_47;
  }

  v16 = v15;
  v82 = &self->_anon_e0[244];
  v17 = 0;
  v86 = 0;
  v18 = vcvt_f32_s32(v84);
  v83 = v12;
  v88 = fmaxf(v18.f32[0], v18.f32[1]) * v12;
  v85 = v88 * v13;
  v91 = v7;
  v92 = v8;
  v87 = vmul_f32(v18, 0x3F0000003F000000);
  v90 = v10;
  v19 = *v101;
  v20 = v18.f32[0];
  v21 = v18.f32[1];
  v89 = v7 * v8;
  v5 = 1;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v101 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v23 = v104[0];
      [*(*(&v100 + 1) + 8 * i) boundingBox];
      v28 = rectangleC1toC0(v23, v24, v25, v26, v27);
      v105.size.width = v29 * v20;
      v105.size.height = v30 * v21;
      v32 = vmul_f32(*&self->_anon_e0[24], *&self->_anon_e0[16]);
      v105.origin.x = v28 * v20 + v32.f32[0];
      v105.origin.y = v31 * v21 + v32.f32[1];
      v107.origin.x = v9;
      v107.origin.y = v90;
      v107.size.width = v91;
      v107.size.height = v92;
      v106 = CGRectIntersection(v105, v107);
      x = v106.origin.x;
      y = v106.origin.y;
      width = v106.size.width;
      height = v106.size.height;
      *&v106.origin.x = v106.size.width * v106.size.height;
      v37 = *&v106.origin.x / v89;
      [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[184]];
      v39 = v38;
      [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[188]];
      if (v37 > v39)
      {
        self->_rt.correctionTypeSelectionCode = 12288;

        v5 = 0;
        goto LABEL_48;
      }

      if (v37 > v40)
      {
        v41.f32[0] = x + width * 0.5;
        v42 = y + height * 0.5;
        v41.f32[1] = v42;
        v43 = vsub_f32(v41, v87);
        v44 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
        ++v17;
        if (v44 < v88)
        {
          self->_rt.correctionTypeSelectionCode = 14336;
          if (v44 < v85)
          {
            ++v86;
          }

          v5 = 3;
        }
      }

      v45 = 0;
      *&v46 = x;
      *&v47 = y;
      v48 = width;
      *&v49 = *&v46 + v48;
      v95 = __PAIR64__(v47, v46);
      v96 = __PAIR64__(v47, v49);
      v50 = height;
      *(&v46 + 1) = *&v47 + v50;
      *(&v49 + 1) = *&v47 + v50;
      v97 = v46;
      v98 = v49;
      v51 = *&self->_anon_e0[276];
      v52 = v51 + *&self->_anon_e0[292];
      v53 = *&self->_anon_e0[280];
      v54 = v53 + *&self->_anon_e0[296];
      minDistanceToEdge = self->_minDistanceToEdge;
      do
      {
        v56 = *(&v95 + v45);
        v57 = vsub_f32(v56, __PAIR64__(v56.u32[1], LODWORD(v51)));
        v58 = vsub_f32(v56, __PAIR64__(v56.u32[1], LODWORD(v52)));
        v57.f32[0] = fminf(sqrtf(vaddv_f32(vmul_f32(v57, v57))), sqrtf(vaddv_f32(vmul_f32(v58, v58))));
        v59 = vsub_f32(v56, __PAIR64__(LODWORD(v53), v56.u32[0]));
        v60 = vsub_f32(v56, __PAIR64__(LODWORD(v54), v56.u32[0]));
        v61 = fminf(fminf(v57.f32[0], sqrtf(vaddv_f32(vmul_f32(v59, v59)))), sqrtf(vaddv_f32(vmul_f32(v60, v60))));
        if (v61 < minDistanceToEdge)
        {
          self->_minDistanceToEdge = v61;
          minDistanceToEdge = v61;
        }

        v45 += 8;
      }

      while (v45 != 32);
    }

    v16 = [(NSArray *)v14 countByEnumeratingWithState:&v100 objects:v99 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  if (!v17 || v86 == v17)
  {
    goto LABEL_46;
  }

  v94 = 0;
  v62 = *(v82 + 120);
  v63 = vcvt_f32_s32(v62);
  v64 = *&self->_anon_e0[252] * v62.i32[0] / v84.i32[0];
  v65 = *&self->_anon_e0[256] * v62.i32[1] / v84.i32[1];
  v66 = *&self->_anon_e0[260] * v62.i32[0] / v84.i32[0];
  v67 = v66 - v64 + 1;
  v68 = *&self->_anon_e0[264] * v62.i32[1] / v84.i32[1];
  v69 = v68 - v65 + 1;
  v93 = 0;
  v70 = v83 * fmaxf(v67, v69);
  v71 = COERCE_DOUBLE(vmul_f32(v63, 0x3F0000003F000000));
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  if (!processedSegmentationMaskTexture)
  {
    [(FigIntelligentDistortionCorrectionProcessorV1 *)self undistortSegmentationMask];
    processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  }

  processor = self->_idcUtilities.processor;
  buffer = self->_sharedMetalBuffer.buffer;
  gatingCounters = self->_sharedMetalBuffer.gatingCounters;
  v95 = __PAIR64__(v65, v64);
  v96 = __PAIR64__(v68, v66);
  LODWORD(v97) = v66 - v64 + 1;
  HIDWORD(v97) = v68 - v65 + 1;
  v63.f32[0] = v70;
  if ([(IntelligentDistortionCorrection_Utilities *)processor gatherGatingStatistics:processedSegmentationMaskTexture area:&v95 center:buffer radiusFromCenter:gatingCounters sharedMetalBuffer:&v94 sharedMetalBufferoffset:&v93 activePixelCount:v71 centerPixelCount:*&v63])
  {
    sub_2957C6998();
  }

  else
  {
    v76 = v93;
    v77 = v94 / (v69 * v67);
    [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[180]];
    if (v77 < v78)
    {
      v5 = 0;
      v79 = 0x4000;
      goto LABEL_47;
    }

    [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[200]];
    if (v5 != 3 && (v76 / (v70 * (v70 * 3.1416))) >= v81)
    {
      self->_rt.correctionTypeSelectionCode = 18432;
      v5 = 3;
    }
  }

LABEL_48:

  return v5;
}

- (int)translateError:(int)error
{
  if ((error + 12786) > 6)
  {
    return -15;
  }

  else
  {
    return dword_2957C7E24[error + 12786];
  }
}

- (int)getAdjustedGDCInformation:(id *)information
{
  if (information)
  {
    v5 = &self->_anon_e0[228];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v6 = *&self->_anon_e0[300];
    v7 = *&self->_anon_e0[304];
    information->var0.origin.x = v6;
    information->var0.origin.y = v7;
    v8 = *&self->_anon_e0[316];
    v9.i64[0] = v8;
    v9.i64[1] = SHIDWORD(v8);
    information->var0.size = vcvtq_f64_s64(v9);
    v10 = *&self->_anon_e0[308];
    v11 = *&self->_anon_e0[312];
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor buildParameters:&v80 bundleConfiguration:self->_anon_e0];
    v69 = v5;
    v12 = vcvt_f32_s32(v5[6]);
    *&v80 = vdiv_f32(vcvt_f32_s32(v5[2]), vcvt_f32_s32(v5[8]));
    *&v81 = v12;
    v13 = &self->_anon_e0[12];
    v14 = vld1_dup_f32(v13);
    *&v85 = v14;
    *&v15 = inverseDistort(v6, v7, &v80);
    LODWORD(v15) = DWORD1(v15);
    v16 = v10 - v6;
    if (v10 <= v6)
    {
      v76 = *(&v15 + 1);
      LODWORD(v72) = inverseDistort(v6, v11, &v80).i32[1];
    }

    else
    {
      v17 = v6 + 1;
      v18 = v6 + 1;
      do
      {
        v75 = v15;
        v19 = inverseDistort(v18, v7, &v80);
        v20 = v75;
        *&v20 = fminf(*&v75, v19.f32[1]);
        LODWORD(v76) = v20;
        v15 = v20;
        ++v18;
        --v16;
      }

      while (v16);
      LODWORD(v21) = inverseDistort(v6, v11, &v80).i32[1];
      v22 = v10 - v6;
      if (v10 <= v6)
      {
        LODWORD(v72) = v21;
        v16 = v10 - v6;
      }

      else
      {
        v16 = v10 - v6;
        do
        {
          v71 = v21;
          v23 = inverseDistort(v17, v11, &v80);
          v21 = v71;
          *&v21 = fmaxf(*&v71, v23.f32[1]);
          ++v17;
          --v22;
        }

        while (v22);
        LODWORD(v72) = v21;
      }
    }

    *&v24 = inverseDistort(v6, v7, &v80);
    v25 = v11 - v7;
    if (v11 <= v7)
    {
      LODWORD(v74) = v24;
      LODWORD(v31) = inverseDistort(v10, v7, &v80).u32[0];
    }

    else
    {
      v68 = v16;
      v26 = v7 + 1;
      v27 = v11 - v7;
      v28 = v7 + 1;
      do
      {
        v73 = v24;
        LODWORD(v29) = inverseDistort(v6, v28, &v80).u32[0];
        v30 = v73;
        *&v30 = fminf(*&v73, v29);
        LODWORD(v74) = v30;
        v24 = v30;
        ++v28;
        --v27;
      }

      while (v27);
      *&v31 = inverseDistort(v10, v7, &v80);
      v32 = __OFSUB__(v11, v7);
      v33 = v11 - v7;
      v16 = v68;
      if (!((v33 < 0) ^ v32 | (v33 == 0)))
      {
        do
        {
          v70 = v31;
          LODWORD(v34) = inverseDistort(v10, v26, &v80).u32[0];
          v31 = v70;
          *&v31 = fmaxf(*&v70, v34);
          ++v26;
          --v33;
        }

        while (v33);
      }
    }

    v35 = v16 / v25;
    v36.f32[0] = v74;
    v37 = (*&v31 - v74) / (v72 - v76);
    if (v37 <= v35)
    {
      v40 = __PAIR64__(LODWORD(v72), v31);
      v41 = __PAIR64__(LODWORD(v76), LODWORD(v74));
      if (v37 < v35)
      {
        v42 = v35 * (v72 - v76);
        v43 = (v74 + *&v31) * 0.5;
        v40.f32[0] = v43 + (v42 * 0.5);
        v41.f32[0] = v43 - (v42 * 0.5);
      }
    }

    else
    {
      v38 = (*&v31 - v74) / v35;
      v39 = (v76 + v72) * 0.5;
      *(&v31 + 1) = v39 + (v38 * 0.5);
      v36.f32[1] = v39 - (v38 * 0.5);
      v40 = v31;
      v41 = v36;
    }

    v44 = 0;
    v45 = v69[2];
    v46 = vmax_s32(v69[3], vcvt_s32_f32(vrndp_f32(v41)));
    v47 = vmin_s32(v69[4], vcvt_s32_f32(vrndm_f32(v40)));
    v48 = v46.i32[1];
    v49 = vmvn_s8(v46);
    v50 = v46.i32[0];
    v51 = vadd_s32(vsub_s32(v47, v46), 0x100000001);
    v52.i64[0] = v51.i32[0];
    v52.i64[1] = v51.i32[1];
    information->var0.origin.x = v46.i32[0];
    information->var0.origin.y = v46.i32[1];
    information->var0.size = vcvtq_f64_s64(v52);
    v53 = *&self->_anon_e0[316] / v51.i32[0];
    v54 = vadd_f32(*&self->_anon_e0[40], vmla_f32(vcvt_f32_s32(*v69), 0x3F0000003F000000, vcvt_f32_s32(v45)));
    v55 = vcvt_f32_s32(vsub_s32(v47, v49));
    *v45.i32 = v50 - v54.f32[0];
    v49.i32[0] = v54.i32[1];
    v56 = v47.i32[0] - v54.f32[0];
    information->var4 = vcvtq_f64_f32(vmls_f32(v54, 0x3F0000003F000000, v55));
    v54.f32[0] = (v48 - *v49.i32) * (v48 - *v49.i32);
    *v47.i32 = (v47.i32[1] - *v49.i32) * (v47.i32[1] - *v49.i32);
    v77 = v53;
    v57 = v53 * fmaxf(fmaxf(fmaxf(sqrtf(v54.f32[0] + (*v45.i32 * *v45.i32)), sqrtf(v54.f32[0] + (v56 * v56))), sqrtf(*v47.i32 + (*v45.i32 * *v45.i32))), sqrtf(*v47.i32 + (v56 * v56)));
    v58 = *(&v86 + 2);
    v59 = v87;
    v60 = v88;
    do
    {
      v61 = v44 / 100.0;
      v79[v44] = v61 * v61;
      v62 = ((v57 * v61) * (v57 * v61)) * v58;
      v63 = v62 < 1.0;
      v64 = *&v59 + ((*(&v59 + 1) + ((*(&v59 + 2) + ((*(&v59 + 3) + ((*&v60 + ((*(&v60 + 1) + ((*(&v60 + 2) + (*(&v60 + 3) * v62)) * v62)) * v62)) * v62)) * v62)) * v62)) * v62);
      v65 = v62 * v62;
      v66 = ((((((*&v59 + (*(&v59 + 1) * v62)) + (*(&v59 + 2) * (v62 * v62))) + (*(&v59 + 3) * (v62 * (v62 * v62)))) + (*&v60 * (v65 * v65))) + (((v65 * v65) * *(&v60 + 1)) * v62)) + (((v65 * v65) * *(&v60 + 2)) * v65)) + (((v65 * v65) * *(&v60 + 3)) * (v62 * (v62 * v62)));
      if (v63)
      {
        v66 = v64;
      }

      v78[v44++] = 1.0 / ((v66 * 0.01) + 1.0);
    }

    while (v44 != 101);
    if (cubicRegression(v79))
    {
      result = 0;
      *&information->var2 = v69[8];
      *information->var1 = vmulq_n_f32(*information->var1, v77);
    }

    else
    {
      sub_2957C6A8C();
      return -3;
    }
  }

  else
  {
    sub_2957C6B04(self, a2);
    return -2;
  }

  return result;
}

- (__n128)setStereoRectificationInverseHomography:(__n128)homography
{
  result[86] = a2;
  result[87] = homography;
  result[88] = a4;
  return result;
}

- (CGPoint)opticalCenterOffset
{
  x = self->_opticalCenterOffset.x;
  y = self->_opticalCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)inputImageCropRect
{
  x = self->_inputImageCropRect.origin.x;
  y = self->_inputImageCropRect.origin.y;
  width = self->_inputImageCropRect.size.width;
  height = self->_inputImageCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outputValidBufferRect
{
  x = self->_outputValidBufferRect.origin.x;
  y = self->_outputValidBufferRect.origin.y;
  width = self->_outputValidBufferRect.size.width;
  height = self->_outputValidBufferRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end