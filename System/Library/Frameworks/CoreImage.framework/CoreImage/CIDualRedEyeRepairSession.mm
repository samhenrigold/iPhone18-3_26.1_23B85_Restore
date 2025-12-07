@interface CIDualRedEyeRepairSession
+ (id)_contextRGBAh;
- (BOOL)_repairPrimaryWithSecondary:(__CVBuffer *)secondary to:(__CVBuffer *)to;
- (BOOL)prepareRepair;
- (BOOL)prepareRepairWithTuningParametersByPortType:(id)type;
- (BOOL)prewarm;
- (BOOL)repairFace:(id)face filter:(id)filter;
- (BOOL)setPrimary:(__CVBuffer *)primary observations:(id)observations metadata:(id)metadata;
- (BOOL)validateRenderState;
- (CIDualRedEyeRepairSession)init;
- (id)redEyeFaceFromObservation:(id)observation exifOrientation:(int)orientation;
- (int)validateRepair;
- (int)validateSetPrimary;
- (void)cleanupState;
- (void)customizeRepairFilter:(id)filter forFace:(id)face;
- (void)dealloc;
- (void)dumpInputs;
- (void)dumpObservation:(id)observation index:(int)index;
- (void)dumpSecondary;
- (void)prewarm;
- (void)validateRepair;
@end

@implementation CIDualRedEyeRepairSession

+ (id)_contextRGBAh
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"working_format";
  v4[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
  return +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CIDualRedEyeRepairRGBAh", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

- (CIDualRedEyeRepairSession)init
{
  v4.receiver = self;
  v4.super_class = CIDualRedEyeRepairSession;
  v2 = [(CIDualRedEyeRepairSession *)&v4 init];
  if (v2)
  {
    [(CIDualRedEyeRepairSession *)v2 setTuning:[[CIDualRedEyeRepairTuning alloc] initWithTuning:0]];
  }

  return v2;
}

- (void)dealloc
{
  [(CIDualRedEyeRepairSession *)self cleanupState];
  v3.receiver = self;
  v3.super_class = CIDualRedEyeRepairSession;
  [(CIDualRedEyeRepairSession *)&v3 dealloc];
}

- (void)cleanupState
{
  [(CIDualRedEyeRepairSession *)self setTimestamp:0];
  [(CIDualRedEyeRepairSession *)self setObservations:0];
  [(CIDualRedEyeRepairSession *)self setDestination:0];
  [(CIDualRedEyeRepairSession *)self setPrimaryImage:0];
  [(CIDualRedEyeRepairSession *)self setSecondaryImage:0];
  [(CIDualRedEyeRepairSession *)self setMetadata:0];
  [(CIDualRedEyeRepairSession *)self setImageProperties:0];
  [(CIDualRedEyeRepairSession *)self setFaces:0];
  self->_primary = 0;
  self->_secondary = 0;
}

- (BOOL)prewarm
{
  v107 = *MEMORY[0x1E69E9840];
  if ([(CIContext *)[(CIDualRedEyeRepairSession *)self context] loadArchive:@"redeye_repair_archive"])
  {
LABEL_2:
    LOBYTE(v3) = 1;
    return v3;
  }

  v4 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor redColor]);
  v5 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor greenColor]);
  v6 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blueColor]);
  v7 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor cyanColor]);
  v8 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor magentaColor]);
  v91 = [(CIImage *)v4 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v9 = [(CIImage *)v5 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v89 = [(CIImage *)v6 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v88 = [(CIImage *)v7 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v87 = [(CIImage *)v8 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v90 = [[CIRenderDestination alloc] initWithWidth:4224 height:3024 pixelFormat:70 commandBuffer:0 mtlTextureProvider:&__block_literal_global_23];
  if (v90)
  {
    v100 = 0;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v10 = [&unk_1F10855C0 countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x1E75C0000uLL;
      v13 = *v97;
      selfCopy = self;
      v79 = *v97;
      v80 = v9;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v97 != v13)
          {
            objc_enumerationMutation(&unk_1F10855C0);
          }

          v82 = v14;
          v15 = [objc_alloc(*(v12 + 2784)) initWithTuning:{objc_msgSend(*(*(&v96 + 1) + 8 * v14), "intValue")}];
          v16 = [CIFilter filterWithName:@"CIRedEyeRaw"];
          -[CIFilter setValuesForKeysWithDictionary:](v16, "setValuesForKeysWithDictionary:", [v15 repairTuning]);
          v104[0] = @"inputPrimary";
          v104[1] = @"inputSecondary";
          v105[0] = v91;
          v105[1] = v9;
          -[CIFilter setValuesForKeysWithDictionary:](v16, "setValuesForKeysWithDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2]);
          v86 = v16;
          -[CIFilter setValue:forKey:](v16, "setValue:forKey:", [objc_msgSend(v15 "sessionTuning")], @"inputUseFaceSegmentationMask");
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v85 = [&unk_1F10855D8 countByEnumeratingWithState:&v92 objects:v103 count:16];
          if (v85)
          {
            v84 = *v93;
            v81 = v11;
LABEL_12:
            v17 = 0;
            while (1)
            {
              if (*v93 != v84)
              {
                objc_enumerationMutation(&unk_1F10855D8);
              }

              v18 = *(*(&v92 + 1) + 8 * v17);
              [(CIImage *)v91 extent];
              v20 = v19;
              [(CIImage *)v91 extent];
              v22 = v21;
              [v18 floatValue];
              v24 = v23;
              v25 = (v23 * 0.7);
              *&v22 = v22 * 0.6;
              v26 = [CIVector vectorWithX:1.0 Y:0.0];
              v27 = [CIVector vectorWithX:0.0 Y:1.0];
              v28 = v20;
              v29 = vcvtd_n_f64_u64(v24, 1uLL);
              v30 = *&v22;
              v31 = [CIVector vectorWithX:-(v29 - v28 * 0.5) - v24 Y:v30];
              v32 = [CIVector vectorWithX:v29 + v28 * 0.5 Y:v30];
              v33 = v25;
              v34 = [CIVector vectorWithX:v24 Y:v25];
              [(CIVector *)v31 X];
              v36 = v35 + v24 * 0.5;
              [(CIVector *)v31 Y];
              v38 = [CIVector vectorWithX:v36 Y:v37 + v25 * 0.5];
              [(CIVector *)v32 X];
              v40 = v39 + v24 * 0.5;
              [(CIVector *)v32 Y];
              v42 = [CIVector vectorWithX:v40 Y:v41 + v25 * 0.5];
              [(CIVector *)v31 X];
              v44 = v43;
              [(CIVector *)v31 Y];
              v46 = v45;
              [(CIVector *)v32 X];
              v48 = v47;
              [(CIVector *)v32 Y];
              v112.origin.y = v49;
              v108.origin.x = v44;
              v108.origin.y = v46;
              v108.size.width = v24;
              v108.size.height = v33;
              v112.origin.x = v48;
              v112.size.width = v24;
              v112.size.height = v33;
              v109 = CGRectUnion(v108, v112);
              v50 = [CIVector vectorWithCGRect:v109.origin.x, v109.origin.y, v109.size.width, v109.size.height];
              v51 = objc_opt_new();
              [v51 setImageOrientation:0];
              [v51 setSegmentationSkin:v89];
              [v51 setSegmentationSclera:v87];
              [v51 setSegmentationIris:v88];
              [v51 setFaceRect:v50];
              [v51 setFaceOrientation:0.0];
              v102[0] = v26;
              v102[1] = v27;
              [v51 setUvLeft:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v102, 2)}];
              v101[0] = v26;
              v101[1] = v27;
              [v51 setUvRight:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v101, 2)}];
              [v51 setRoiRenderOriginLeft:v31];
              [v51 setRoiRenderOriginRight:v32];
              [v51 setRoiRenderSize:v34];
              [v51 setPupilLeft:v38];
              [v51 setPupilRight:v42];
              [(CIDualRedEyeRepairSession *)selfCopy customizeRepairFilter:v86 forFace:v51];
              outputImage = [(CIFilter *)v86 outputImage];
              [objc_msgSend(v51 "roiRenderOriginLeft")];
              v54 = v53;
              [objc_msgSend(v51 "roiRenderOriginLeft")];
              v56 = v55;
              [objc_msgSend(v51 "roiRenderSize")];
              v58 = v57;
              [objc_msgSend(v51 "roiRenderSize")];
              v60 = v59;
              [objc_msgSend(v51 "roiRenderOriginRight")];
              v62 = v61;
              [objc_msgSend(v51 "roiRenderOriginRight")];
              v64 = v63;
              [objc_msgSend(v51 "roiRenderSize")];
              v66 = v65;
              [objc_msgSend(v51 "roiRenderSize")];
              v113.size.height = v67;
              v110.origin.x = v54;
              v110.origin.y = v56;
              v110.size.width = v58;
              v110.size.height = v60;
              v113.origin.x = v62;
              v113.origin.y = v64;
              v113.size.width = v66;
              v111 = CGRectUnion(v110, v113);
              x = v111.origin.x;
              y = v111.origin.y;
              width = v111.size.width;
              height = v111.size.height;
              if (![(CIDualRedEyeRepairSession *)selfCopy context])
              {
                v3 = CI_LOG_DUALRED();
                if (v3)
                {
                  v75 = ci_logger_api(v3, v74);
                  LODWORD(v3) = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
                  if (v3)
                  {
                    [CIDualRedEyeRepairSession prewarm];
                    goto LABEL_31;
                  }
                }

                return v3;
              }

              [(CIContext *)[(CIDualRedEyeRepairSession *)selfCopy context] prepareRender:outputImage fromRect:v90 toDestination:&v100 atPoint:x error:y, width, height, x, y];
              if (v100)
              {
                break;
              }

              if (v85 == ++v17)
              {
                v9 = v80;
                v11 = v81;
                v12 = 0x1E75C0000;
                v13 = v79;
                v85 = [&unk_1F10855D8 countByEnumeratingWithState:&v92 objects:v103 count:16];
                if (v85)
                {
                  goto LABEL_12;
                }

                goto LABEL_19;
              }
            }

            v3 = CI_LOG_DUALRED();
            if (v3)
            {
              v77 = ci_logger_api(v3, v76);
              LODWORD(v3) = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
              if (v3)
              {
                [CIDualRedEyeRepairSession prewarm];
                goto LABEL_31;
              }
            }

            return v3;
          }

LABEL_19:
          v14 = v82 + 1;
        }

        while (v82 + 1 != v11);
        v11 = [&unk_1F10855C0 countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_2;
  }

  v3 = CI_LOG_DUALRED();
  if (v3)
  {
    v73 = ci_logger_api(v3, v72);
    LODWORD(v3) = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIDualRedEyeRepairSession prewarm];
LABEL_31:
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)prepareRepair
{
  if (![(CIDualRedEyeRepairSession *)self context])
  {
    [(CIDualRedEyeRepairSession *)self setContext:+[CIDualRedEyeRepairSession _contextRGBAh]];
  }

  return 1;
}

- (BOOL)prepareRepairWithTuningParametersByPortType:(id)type
{
  [(CIDualRedEyeRepairSession *)self setTuningParametersByPortType:type];

  return [(CIDualRedEyeRepairSession *)self prepareRepair];
}

- (void)dumpInputs
{
  [objc_msgSend(self "primaryImage")];
  CVBufferGetAttachments(*a2, kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (BOOL)validateRenderState
{
  renderUsingPixelBuffers = [(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers];
  renderUsingProvidedCommandQueue = [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue];
  if (renderUsingProvidedCommandQueue && renderUsingPixelBuffers)
  {
    v5 = CI_LOG_DUALRED();
    if (v5)
    {
      v7 = ci_logger_api(v5, v6);
      LODWORD(v5) = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [CIDualRedEyeRepairSession validateRenderState];
LABEL_12:
        LOBYTE(v5) = 0;
      }
    }
  }

  else if (renderUsingProvidedCommandQueue || renderUsingPixelBuffers)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = CI_LOG_DUALRED();
    if (v5)
    {
      v9 = ci_logger_api(v5, v8);
      LODWORD(v5) = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [CIDualRedEyeRepairSession validateRenderState];
        goto LABEL_12;
      }
    }
  }

  return v5;
}

- (int)validateSetPrimary
{
  if (![(CIDualRedEyeRepairSession *)self validateRenderState])
  {
    return 3;
  }

  primary = self->_primary;
  renderUsingProvidedCommandQueue = [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue];
  if (primary && !self->_primary)
  {
    v15 = CI_LOG_DUALRED();
    if (v15)
    {
      v17 = ci_logger_api(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (!renderUsingProvidedCommandQueue)
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
    if (!primary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(CIDualRedEyeRepairSession *)self primaryTexture])
  {
    v21 = CI_LOG_DUALRED();
    if (v21)
    {
      v23 = ci_logger_api(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  Width = [(MTLTexture *)[(CIDualRedEyeRepairSession *)self primaryTexture] width];
  Height = [(MTLTexture *)[(CIDualRedEyeRepairSession *)self primaryTexture] height];
  if (primary)
  {
LABEL_9:
    Width = CVPixelBufferGetWidth(self->_primary);
    Height = CVPixelBufferGetHeight(self->_primary);
  }

LABEL_10:
  if (Width > Height)
  {
    Height = Width;
  }

  if (Height < [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")])
  {
    v7 = CI_LOG_DUALRED();
    if (v7)
    {
      v9 = ci_logger_api(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (![(CIDualRedEyeRepairSession *)self observations]|| ![(NSArray *)[(CIDualRedEyeRepairSession *)self observations] count])
  {
    v18 = CI_LOG_DUALRED();
    if (v18)
    {
      v20 = ci_logger_api(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (![(CIDualRedEyeRepairSession *)self metadata])
  {
    v24 = CI_LOG_DUALRED();
    if (v24)
    {
      v26 = ci_logger_api(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  v10 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairSession metadata](self "metadata")];
  if ([(NSDictionary *)[(CIDualRedEyeRepairSession *)self metadata] objectForKey:@"NormalizedSNR"])
  {
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairSession metadata](self "metadata")];
    v12 = v11;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if ((v12 <= v13) | v10 & 1)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v27 = CI_LOG_DUALRED();
  if (v27)
  {
    v29 = ci_logger_api(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession validateSetPrimary];
    }
  }

  return 2;
}

- (int)validateRepair
{
  if (![(CIDualRedEyeRepairSession *)self validateRenderState])
  {
    return 3;
  }

  if ([(CIDualRedEyeRepairSession *)self faces]&& [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count])
  {
    renderUsingPixelBuffers = [(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers];
    if (![(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue]|| [(CIDualRedEyeRepairSession *)self primaryTexture]&& [(CIDualRedEyeRepairSession *)self secondaryTexture]&& [(CIDualRedEyeRepairSession *)self outputTexture])
    {
      if (!renderUsingPixelBuffers || self->_primary && self->_secondary)
      {
        if ([(CIDualRedEyeRepairSession *)self context])
        {
          return 0;
        }

        v17 = CI_LOG_DUALRED();
        if (v17)
        {
          v19 = ci_logger_api(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession validateRepair];
          }
        }
      }

      else
      {
        v11 = CI_LOG_DUALRED();
        if (v11)
        {
          v13 = ci_logger_api(v11, v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession validateRepair];
          }
        }

        if (!self->_primary)
        {
          if (self->_secondary)
          {
            v14 = CI_LOG_DUALRED();
            if (v14)
            {
              v16 = ci_logger_api(v14, v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [CIDualRedEyeRepairSession validateRepair];
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = CI_LOG_DUALRED();
      if (v8)
      {
        v10 = ci_logger_api(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession validateRepair];
        }
      }
    }

    return 3;
  }

  v5 = CI_LOG_DUALRED();
  if (v5)
  {
    v7 = ci_logger_api(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession validateRepair];
    }
  }

  return 1;
}

- (id)redEyeFaceFromObservation:(id)observation exifOrientation:(int)orientation
{
  v4 = *&orientation;
  v272 = *MEMORY[0x1E69E9840];
  landmarks = [observation landmarks];
  if (!landmarks)
  {
    v30 = CI_LOG_DUALRED();
    if (v30)
    {
      v32 = ci_logger_api(v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  v8 = landmarks;
  if (![landmarks leftEye] || !objc_msgSend(v8, "rightEye"))
  {
    v27 = CI_LOG_DUALRED();
    if (v27)
    {
      v29 = ci_logger_api(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  [observation boundingBox];
  CIVNRectInOrientedImage([(CIDualRedEyeRepairSession *)self primaryImage], v9, v10, v11, v12);
  v274 = CGRectIntegral(v273);
  v13 = [CIVector vectorWithCGRect:v274.origin.x, v274.origin.y, v274.size.width, v274.size.height];
  v14 = CIVNLandmarkInOrientedImage([v8 leftEye], -[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"));
  v15 = CIVNLandmarkInOrientedImage([v8 rightEye], -[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"));
  if (CI_LOG_DUALRED())
  {
    v16 = CI_LOG_DUALRED();
    if (v16)
    {
      v18 = ci_logger_api(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    v19 = CI_LOG_DUALRED();
    if (v19)
    {
      v21 = ci_logger_api(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    v22 = CI_LOG_DUALRED();
    if (v22)
    {
      v24 = ci_logger_api(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:? exifOrientation:?];
      }
    }
  }

  if ([v14 count] == 8)
  {
    v25 = axesForEyePointsV2(v14);
    v26 = axesForEyePointsV2(v15);
  }

  else
  {
    if ([v14 count] != 6)
    {
      v63 = CI_LOG_DUALRED();
      if (v63)
      {
        v65 = ci_logger_api(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v14 exifOrientation:?];
        }
      }

      return 0;
    }

    v25 = axesForEyePointsV3(v14);
    v26 = axesForEyePointsV3(v15);
  }

  v35 = v26;
  if (!v25 || !v26)
  {
    v60 = CI_LOG_DUALRED();
    if (v60)
    {
      v62 = ci_logger_api(v60, v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  [objc_msgSend(v25 objectAtIndexedSubscript:{1), "_norm"}];
  v37 = v36;
  [objc_msgSend(v25 objectAtIndexedSubscript:{0), "_norm"}];
  v39 = v37 / v38;
  [objc_msgSend(v35 objectAtIndexedSubscript:{1), "_norm"}];
  v41 = v40;
  [objc_msgSend(v35 objectAtIndexedSubscript:{0), "_norm"}];
  v43 = v41 / v42;
  if (v39 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v39;
  }

  v45 = areaForAxes([v25 objectAtIndexedSubscript:0], objc_msgSend(v25, "objectAtIndexedSubscript:", 1));
  v46 = areaForAxes([v35 objectAtIndexedSubscript:0], objc_msgSend(v35, "objectAtIndexedSubscript:", 1));
  if (v45 <= v46)
  {
    v45 = v46;
  }

  [v8 confidence];
  v48 = v47;
  [observation faceJunkinessIndex];
  v50 = v49;
  [observation faceOrientationIndex];
  v52 = v51;
  v53 = CI_LOG_DUALRED();
  if (v53)
  {
    v55 = ci_logger_api(v53, v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "[CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:]";
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      *&buf[24] = v50;
      *v271 = 2048;
      *&v271[2] = v44;
      *&v271[10] = 2048;
      *&v271[12] = v45;
      _os_log_error_impl(&dword_19CC36000, v55, OS_LOG_TYPE_ERROR, "%{public}s Confidence=%.3f | junk=%.3f | Anisotropy=%.3f | area=%.0f", buf, 0x34u);
    }
  }

  [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  if (v48 >= v56)
  {
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v50 > v66)
    {
      v67 = CI_LOG_DUALRED();
      if (v67)
      {
        v69 = ci_logger_api(v67, v68);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v50 exifOrientation:?];
        }
      }

      return 0;
    }

    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v44 < v70)
    {
      v71 = CI_LOG_DUALRED();
      if (v71)
      {
        v73 = ci_logger_api(v71, v72);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v44 exifOrientation:?];
        }
      }

      return 0;
    }

    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v45 < v74)
    {
      v75 = CI_LOG_DUALRED();
      if (v75)
      {
        v77 = ci_logger_api(v75, v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v45 exifOrientation:?];
        }
      }

      return 0;
    }

    v256 = v52;
    v257 = v50;
    v258 = v45;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v269[0] = v78;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v269[1] = v79;
    repairROIforEyePoints(v14, v25, v269);
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    repairROIforEyePoints(v15, v35, v269);
    v259 = v91;
    v261 = v90;
    v92 = v88;
    v93 = v89;
    if (v85 <= v88)
    {
      v94 = v88;
    }

    else
    {
      v94 = v85;
    }

    if (v87 <= v89)
    {
      v95 = v89;
    }

    else
    {
      v95 = v87;
    }

    v96 = expandFromCenter(v81, v83, v85, v87, v94, v95);
    v263 = v97;
    v264 = v96;
    v99 = v98;
    v101 = v100;
    v102 = expandFromCenter(v261, v259, v92, v93, v94, v95);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v110 = (v109 + 1.0);
    if (v99 <= v106)
    {
      v111 = v106;
    }

    else
    {
      v111 = v99;
    }

    v112 = v111 * v110;
    if (v101 <= v108)
    {
      v113 = v108;
    }

    else
    {
      v113 = v101;
    }

    v114 = v113 * v110;
    v251 = v99;
    v253 = v101;
    v115 = expandFromCenter(v264, v263, v99, v101, v112, v113 * v110);
    v260 = v116;
    v262 = v115;
    v118 = v117;
    v120 = v119;
    v254 = v102;
    r2 = v104;
    v252 = v106;
    v121 = v106;
    v122 = v108;
    v123 = expandFromCenter(v102, v104, v121, v108, v112, v114);
    if (v118 != v126 || v120 != v125)
    {
      v157 = CI_LOG_DUALRED();
      if (v157)
      {
        v159 = ci_logger_api(v157, v158);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      return 0;
    }

    v127 = v123;
    v128 = v124;
    v129 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v130 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v131 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if ((v129 & 1) != 0 || (v130 & 1) != 0 || v131)
    {
      if (![observation faceSegments])
      {
        v188 = CI_LOG_DUALRED();
        if (v188)
        {
          v190 = ci_logger_api(v188, v189);
          if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }

      v160 = probabilitiesForSegment([observation faceSegments], 482, v4);
      if (!v160)
      {
        v191 = CI_LOG_DUALRED();
        if (v191)
        {
          v193 = ci_logger_api(v191, v192);
          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }

      v161 = v160;
      v162 = [v160 count];
      v163 = CI_LOG_DUALRED();
      if (v162 != 5)
      {
        if (v163)
        {
          v194 = ci_logger_api(v163, v164);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:v161 exifOrientation:?];
          }
        }

        return 0;
      }

      rect_24 = v129;
      v235 = v128;
      v240 = v120;
      if (v163)
      {
        v165 = ci_logger_api(v163, v164);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v246 = [v161 objectAtIndexedSubscript:0];
      v166 = [v161 objectAtIndexedSubscript:1];
      v167 = [v161 objectAtIndexedSubscript:2];
      v233 = [v161 objectAtIndexedSubscript:3];
      v168 = [v161 objectAtIndexedSubscript:4];
      v247 = v167;
      v249 = v166;
      v169 = v166;
      v133 = v233;
      v244 = RRmaximumRh(v169, v167);
      v231 = v168;
      v170 = RRmaximumRh(v233, v168);
      [objc_msgSend(observation "faceSegments")];
      CIVNRectInOrientedImage([(CIDualRedEyeRepairSession *)self primaryImage], v171, v172, v173, v174);
      v176 = v175;
      v178 = v177;
      v180 = v179;
      v182 = v181;
      [v246 extent];
      if (vabdd_f64(256.0, v183) > 0.00001 || ([v246 extent], vabdd_f64(256.0, v184) > 0.00001))
      {
        v185 = CI_LOG_DUALRED();
        if (v185)
        {
          v187 = ci_logger_api(v185, v186);
          if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:v246 exifOrientation:?];
          }
        }

        return 0;
      }

      *v271 = 0u;
      memset(buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(buf, v180 * 0.00390625, v182 * 0.00390625);
      memset(&v268, 0, sizeof(v268));
      CGAffineTransformMakeTranslation(&v268, v176, v178);
      *&t1.a = *buf;
      *&t1.c = *&buf[16];
      *&t1.tx = *v271;
      memset(&v267, 0, sizeof(v267));
      t2 = v268;
      CGAffineTransformConcat(&v267, &t1, &t2);
      t1 = v267;
      v245 = [v246 imageByApplyingTransform:&t1];
      t1 = v267;
      v243 = [(CIImage *)v244 imageByApplyingTransform:&t1];
      t1 = v267;
      v242 = [(CIImage *)v170 imageByApplyingTransform:&t1];
      v120 = v240;
      v128 = v235;
      LOBYTE(v129) = rect_24;
      v132 = v231;
      if (rect_24)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v132 = 0;
      v133 = 0;
      v247 = 0;
      v249 = 0;
      v242 = 0;
      v243 = 0;
      v245 = 0;
      if (v129)
      {
LABEL_76:
        v230 = v132;
        v134 = constellationRectInSegmentationRect(-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), [v8 rightEye], objc_msgSend(observation, "faceSegments"), 0x100uLL);
        rect_16 = v136;
        rect_24a = v135;
        rect_8 = v137;
        rect = constellationRectInSegmentationRect(-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), [v8 leftEye], objc_msgSend(observation, "faceSegments"), 0x100uLL);
        v234 = v128;
        v237 = v127;
        v139 = v138;
        v239 = v120;
        v141 = v140;
        v232 = v118;
        v143 = v142;
        v275.origin.x = v134;
        v275.size.width = rect_16;
        v275.origin.y = rect_24a;
        v275.size.height = rect_8;
        v276 = CGRectInset(v275, -12.8000002, -12.8000002);
        v277 = CGRectIntegral(v276);
        x = v277.origin.x;
        y = v277.origin.y;
        width = v277.size.width;
        rect_24b = v277.size.height;
        v277.origin.x = rect;
        v277.origin.y = v139;
        v277.size.width = v141;
        v277.size.height = v143;
        v278 = CGRectInset(v277, -12.8000002, -12.8000002);
        v279 = CGRectIntegral(v278);
        v147 = v279.origin.x;
        v148 = v279.origin.y;
        v149 = v279.size.width;
        height = v279.size.height;
        primaryImage = [(CIDualRedEyeRepairSession *)self primaryImage];
        v152 = x;
        v153 = width;
        v154 = v147;
        v155 = v148;
        v128 = v234;
        v127 = v237;
        v120 = v239;
        v118 = v232;
        v156 = semanticPupils(primaryImage, observation, v152, y, v153, rect_24b, v154, v155, v149, height, v4, v133, v230, v249, v247);
        v250 = [v156 objectAtIndexedSubscript:0];
        v248 = [v156 objectAtIndexedSubscript:1];
        goto LABEL_102;
      }
    }

    v248 = 0;
    v250 = 0;
LABEL_102:
    v195 = orientedPupilFromLandmarks([(CIDualRedEyeRepairSession *)self primaryImage], v8, 0);
    v196 = orientedPupilFromLandmarks([(CIDualRedEyeRepairSession *)self primaryImage], v8, 1);
    if ((v129 & 1) == 0)
    {
      v197 = v196;
      v198 = CI_LOG_DUALRED();
      if (v198)
      {
        v200 = ci_logger_api(v198, v199);
        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v248 = v197;
      v250 = v195;
    }

    [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v201 <= 0.0001 || [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      v202 = CI_LOG_DUALRED();
      v204 = 0x1E75C0000;
      if (v202)
      {
        v205 = ci_logger_api(v202, v203);
        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }
    }

    else
    {
      v236 = v128;
      v238 = v127;
      v241 = v120;
      v280.origin.y = v263;
      v280.origin.x = v264;
      v280.size.width = v251;
      v283.size.width = v252;
      v280.size.height = v253;
      v283.origin.x = v254;
      v283.origin.y = r2;
      v283.size.height = v122;
      v281 = CGRectUnion(v280, v283);
      v282 = CGRectIntegral(v281);
      v206 = v282.origin.x;
      v207 = v282.origin.y;
      v208 = v282.size.width;
      v209 = v282.size.height;
      CFAbsoluteTimeGetCurrent();
      LODWORD(v210) = focusStatsForRegion(v206, v207, v208, v209, self->_primary, [(CIDualRedEyeRepairSession *)self context], [(CIDualRedEyeRepairSession *)self primaryImage]);
      CFAbsoluteTimeGetCurrent();
      v211 = CI_LOG_DUALRED();
      v204 = 0x1E75C0000uLL;
      if (v211)
      {
        v213 = ci_logger_api(v211, v212);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v214 = CI_LOG_DUALRED();
      v127 = v238;
      v120 = v241;
      v128 = v236;
      if (v214)
      {
        v216 = ci_logger_api(v214, v215);
        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
      if (v217 > v210)
      {
        v221 = CI_LOG_DUALRED();
        if (v221)
        {
          v223 = ci_logger_api(v221, v222);
          if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }
    }

    v33 = objc_opt_new();
    [v33 setImageOrientation:v4];
    [v33 setLandmarks:v8];
    [v33 setObservation:observation];
    [v33 setSegmentationSkin:v245];
    [v33 setSegmentationSclera:v243];
    [v33 setSegmentationIris:v242];
    [v33 setFaceRect:v13];
    *&v218 = v257;
    [v33 setJunkiness:v218];
    LODWORD(v219) = v256;
    [v33 setFaceOrientation:v219];
    *&v220 = v258;
    [v33 setAreaMax:v220];
    [v33 setUvLeft:v25];
    [v33 setUvRight:v35];
    [v33 setRoiRenderOriginLeft:{objc_msgSend(*(v204 + 2960), "vectorWithCGPoint:", v262, v260)}];
    [v33 setRoiRenderOriginRight:{objc_msgSend(*(v204 + 2960), "vectorWithCGPoint:", v127, v128)}];
    [v33 setRoiRenderSize:{objc_msgSend(*(v204 + 2960), "vectorWithX:Y:", v118, v120)}];
    [v33 setPupilLeft:v250];
    [v33 setPupilRight:v248];
    return v33;
  }

  v57 = CI_LOG_DUALRED();
  if (v57)
  {
    v59 = ci_logger_api(v57, v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession redEyeFaceFromObservation:v48 exifOrientation:?];
    }
  }

  return 0;
}

- (void)customizeRepairFilter:(id)filter forFace:(id)face
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13[0] = @"inputOriginLeft";
  [objc_msgSend(face "roiRenderOriginLeft")];
  v7 = v6;
  [objc_msgSend(face "roiRenderOriginLeft")];
  v14[0] = [CIVector vectorWithX:v7 Y:v8];
  v13[1] = @"inputOriginRight";
  [objc_msgSend(face "roiRenderOriginRight")];
  v10 = v9;
  [objc_msgSend(face "roiRenderOriginRight")];
  v14[1] = [CIVector vectorWithX:v10 Y:v11];
  v13[2] = @"inputSize";
  v14[2] = [face roiRenderSize];
  v13[3] = @"inputOrientationHint";
  v12 = MEMORY[0x1E696AD98];
  [face faceOrientation];
  v14[3] = [v12 numberWithFloat:?];
  v13[4] = @"inputAxisLongLeft";
  v14[4] = [objc_msgSend(face "uvLeft")];
  v13[5] = @"inputAxisLongRight";
  v14[5] = [objc_msgSend(face "uvRight")];
  v13[6] = @"inputAxisShortLeft";
  v14[6] = [objc_msgSend(face "uvLeft")];
  v13[7] = @"inputAxisShortRight";
  v14[7] = [objc_msgSend(face "uvRight")];
  v13[8] = @"inputPupilCenterLeft";
  v14[8] = [face pupilLeft];
  v13[9] = @"inputPupilCenterRight";
  v14[9] = [face pupilRight];
  [filter setValuesForKeysWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 10)}];
  if ([face segmentationSkin])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationSkin"), @"inputSkinMask"}];
  }

  if ([face segmentationSclera])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationSclera"), @"inputScleraMask"}];
  }

  if ([face segmentationSkin])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationIris"), @"inputIrisMask"}];
  }
}

- (BOOL)repairFace:(id)face filter:(id)filter
{
  v78 = *MEMORY[0x1E69E9840];
  [objc_msgSend(face "roiRenderOriginLeft")];
  v8 = v7;
  [objc_msgSend(face "roiRenderOriginLeft")];
  v10 = v9;
  [objc_msgSend(face "roiRenderSize")];
  v12 = v11;
  [objc_msgSend(face "roiRenderSize")];
  v14 = v13;
  [objc_msgSend(face "roiRenderOriginRight")];
  v16 = v15;
  [objc_msgSend(face "roiRenderOriginRight")];
  v18 = v17;
  [objc_msgSend(face "roiRenderSize")];
  v20 = v19;
  [objc_msgSend(face "roiRenderSize")];
  v83.size.height = v21;
  v79.origin.x = v8;
  v79.origin.y = v10;
  v79.size.width = v12;
  v79.size.height = v14;
  v65 = v18;
  v67 = v16;
  v83.origin.x = v16;
  v83.origin.y = v18;
  height = v83.size.height;
  v63 = v20;
  v83.size.width = v20;
  v80 = CGRectIntersection(v79, v83);
  x = v80.origin.x;
  y = v80.origin.y;
  width = v80.size.width;
  v25 = v80.size.height;
  v26 = CI_LOG_DUALRED();
  if (v26)
  {
    v28 = ci_logger_api(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "[CIDualRedEyeRepairSession repairFace:filter:]";
      v70 = 2048;
      v71 = x;
      v72 = 2048;
      v73 = y;
      v74 = 2048;
      v75 = width;
      v76 = 2048;
      v77 = v25;
      _os_log_error_impl(&dword_19CC36000, v28, OS_LOG_TYPE_ERROR, "%{public}s Intersection: %f,%f,%f,%f", buf, 0x34u);
    }
  }

  [(CIDualRedEyeRepairSession *)self customizeRepairFilter:filter forFace:face, *&height, *&v63, *&v65, *&v67];
  CFAbsoluteTimeGetCurrent();
  outputImage = [filter outputImage];
  v30 = CI_LOG_DUALRED();
  if (v30)
  {
    v32 = ci_logger_api(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
    }
  }

  *buf = 0;
  v33 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  Current = CFAbsoluteTimeGetCurrent();
  if (v33)
  {
    v81.origin.x = v8;
    v81.origin.y = v10;
    v81.size.width = v12;
    v81.size.height = v14;
    v84.origin.y = v66;
    v84.origin.x = v68;
    v84.size.height = v62;
    v84.size.width = v64;
    v82 = CGRectUnion(v81, v84);
    v35 = -[CIContext startTaskToRender:fromRect:toDestination:atPoint:error:](self->context, "startTaskToRender:fromRect:toDestination:atPoint:error:", [outputImage imageByCompositingOverImage:{-[CIImage imageByInsertingIntermediate:](-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), "imageByInsertingIntermediate:", 0)}], -[CIDualRedEyeRepairSession destination](self, "destination"), buf, v82.origin.x, v82.origin.y, v82.size.width, v82.size.height, v82.origin.x, v82.origin.y);
    if (*buf)
    {
      v36 = CI_LOG_DUALRED();
      if (v36)
      {
        v38 = ci_logger_api(v36, v37);
        LODWORD(v36) = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
LABEL_38:
          LOBYTE(v36) = 0;
          return v36;
        }
      }

      return v36;
    }

    v45 = v35;
    if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      [(MTLCommandBuffer *)[(CIDualRedEyeRepairSession *)self commandBuffer] commit];
      v46 = 0;
    }

    else
    {
      v46 = [(CIRenderTask *)v45 waitUntilCompletedAndReturnError:buf];
    }

    v48 = *buf;
    v36 = CI_LOG_DUALRED();
    if (v48)
    {
      if (v36)
      {
        v50 = ci_logger_api(v36, v49);
        LODWORD(v36) = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
          goto LABEL_38;
        }
      }

      return v36;
    }

    if (v36)
    {
      v56 = ci_logger_api(v36, v49);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession repairFace:filter:];
        if (v46)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

LABEL_41:
    if (v46)
    {
LABEL_42:
      v57 = CI_LOG_DUALRED();
      if (v57)
      {
        v59 = ci_logger_api(v57, v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession repairFace:v46 filter:?];
        }
      }
    }

LABEL_45:
    LOBYTE(v36) = 1;
    return v36;
  }

  v39 = [(CIContext *)self->context startTaskToRender:outputImage fromRect:[(CIDualRedEyeRepairSession *)self destination] toDestination:buf atPoint:v8 error:v10, v12, v14, v8, v10];
  if (![(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    [(CIRenderTask *)v39 waitUntilCompletedAndReturnError:buf];
  }

  v40 = CI_LOG_DUALRED();
  if (v40)
  {
    v42 = ci_logger_api(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
    }
  }

  if (!*buf)
  {
    v47 = [(CIContext *)self->context startTaskToRender:outputImage fromRect:[(CIDualRedEyeRepairSession *)self destination] toDestination:buf atPoint:v68 error:v66, v64, v62, v68, v66];
    if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      [(MTLCommandBuffer *)[(CIDualRedEyeRepairSession *)self commandBuffer] commit];
      v46 = 0;
    }

    else
    {
      v46 = [(CIRenderTask *)v47 waitUntilCompletedAndReturnError:buf];
    }

    v51 = CI_LOG_DUALRED();
    if (v51)
    {
      v53 = ci_logger_api(v51, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession repairFace:filter:];
      }
    }

    if (*buf)
    {
      v36 = CI_LOG_DUALRED();
      if (v36)
      {
        v55 = ci_logger_api(v36, v54);
        LODWORD(v36) = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
          goto LABEL_38;
        }
      }

      return v36;
    }

    goto LABEL_41;
  }

  v36 = CI_LOG_DUALRED();
  if (v36)
  {
    v44 = ci_logger_api(v36, v43);
    LODWORD(v36) = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
      goto LABEL_38;
    }
  }

  return v36;
}

- (BOOL)setPrimary:(__CVBuffer *)primary observations:(id)observations metadata:(id)metadata
{
  v96 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v9 = [observations count];
  v78 = 2 * v9;
  v11 = ci_signpost_log_dualredeye(v9, v10);
  if (&self->super.isa + 1 >= 2)
  {
    v28 = v11;
    if (os_signpost_enabled(v11))
    {
      v29 = *(v76 + 6);
      *buf = 67109120;
      LODWORD(v82) = v29;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v28, OS_SIGNPOST_INTERVAL_BEGIN, self, "setPrimary", "eyeCount:%d", buf, 8u);
    }
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v12 = v74;
  v74[0] = __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke;
  v74[1] = &unk_1E75C25C0;
  v74[2] = &v75;
  v74[3] = self;
  v13 = CI_LOG_DUALRED();
  if (v13)
  {
    v15 = ci_logger_api(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      -[CIDualRedEyeRepairSession setPrimary:observations:metadata:].cold.1([observations count], v95);
    }
  }

  v16 = CI_LOG_DUALRED();
  if (v16)
  {
    v18 = ci_logger_api(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  [(CIDualRedEyeRepairSession *)self cleanupState];
  -[CIDualRedEyeRepairSession setTimestamp:](self, "setTimestamp:", [MEMORY[0x1E695DF00] date]);
  [(CIDualRedEyeRepairSession *)self setMetadata:metadata];
  [(CIDualRedEyeRepairSession *)self setObservations:observations];
  self->_primary = primary;
  [(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] setTuningParametersByPortType:[(CIDualRedEyeRepairSession *)self tuningParametersByPortType] withCameraMetadata:metadata];
  v19 = CI_LOG_DUALRED();
  if (v19)
  {
    v21 = ci_logger_api(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:v94 observations:? metadata:?];
    }
  }

  v22 = CI_LOG_DUALRED();
  if (v22)
  {
    v24 = ci_logger_api(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:v93 observations:? metadata:?];
    }
  }

  [(CIDualRedEyeRepairSession *)self setImageProperties:0];
  if (metadata && [metadata objectForKeyedSubscript:@"ExifOrientation"])
  {
    v25 = [metadata objectForKeyedSubscript:@"ExifOrientation"];
    v90 = v25;
    v91 = @"CIImageProperties";
    v89 = *MEMORY[0x1E696DE78];
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    -[CIDualRedEyeRepairSession setImageProperties:](self, "setImageProperties:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1]);
  }

  else
  {
    v25 = &unk_1F1081B60;
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    v26 = [CIImage imageWithMTLTexture:[(CIDualRedEyeRepairSession *)self secondaryTexture] options:[(CIDualRedEyeRepairSession *)self imageProperties]];
  }

  else
  {
    if (![(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers])
    {
      goto LABEL_23;
    }

    v26 = [CIImage imageWithCVPixelBuffer:self->_primary options:[(CIDualRedEyeRepairSession *)self imageProperties]];
  }

  [(CIDualRedEyeRepairSession *)self setPrimaryImage:v26];
LABEL_23:
  if (CI_LOG_DUALRED())
  {
    [(CIDualRedEyeRepairSession *)self dumpInputs];
    if ([(CIDualRedEyeRepairSession *)self primaryImage])
    {
      v27 = [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] properties]? [(NSDictionary *)[(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] properties] objectForKey:@"Orientation"]: &unk_1F1081B60;
      v30 = CI_LOG_DUALRED();
      if (v30)
      {
        v32 = ci_logger_api(v30, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          intValue = [v27 intValue];
          [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] extent];
          v69 = v68;
          [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] extent];
          *buf = 136446978;
          v82 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
          v83 = 1024;
          *v84 = intValue;
          *&v84[4] = 2048;
          *&v84[6] = v69;
          *&v84[14] = 2048;
          *&v84[16] = v70;
          _os_log_error_impl(&dword_19CC36000, v32, OS_LOG_TYPE_ERROR, "%{public}s Landmarks computed from orientation %d and size %f, %f", buf, 0x26u);
        }
      }
    }
  }

  if ([(CIDualRedEyeRepairSession *)self validateSetPrimary])
  {
    v33 = CI_LOG_DUALRED();
    if (v33)
    {
      v35 = ci_logger_api(v33, v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
      }
    }

LABEL_37:
    [(CIDualRedEyeRepairSession *)self cleanupState];
    v36 = 0;
    goto LABEL_64;
  }

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [observations count] > i; ++i)
  {
    v39 = CI_LOG_DUALRED();
    if (v39)
    {
      v41 = ci_logger_api(v39, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = [observations count];
        *buf = 136446722;
        v82 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
        v83 = 1024;
        *v84 = i + 1;
        *&v84[4] = 1024;
        *&v84[6] = v50;
        _os_log_error_impl(&dword_19CC36000, v41, OS_LOG_TYPE_ERROR, "%{public}s Processing face observation %d / %d", buf, 0x18u);
      }
    }

    v42 = [observations objectAtIndexedSubscript:i];
    if (CI_LOG_DUALRED() >= 2)
    {
      [(CIDualRedEyeRepairSession *)self dumpObservation:v42 index:i];
    }

    v43 = -[CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:](self, "redEyeFaceFromObservation:exifOrientation:", v42, [v25 intValue]);
    if (v43)
    {
      v44 = CI_LOG_DUALRED();
      if (v44)
      {
        v46 = ci_logger_api(v44, v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v72 = v12;
          roiRenderSize = [v43 roiRenderSize];
          roiRenderOriginLeft = [v43 roiRenderOriginLeft];
          uvLeft = [v43 uvLeft];
          roiRenderOriginRight = [v43 roiRenderOriginRight];
          uvRight = [v43 uvRight];
          *buf = 136447490;
          v82 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
          v83 = 2112;
          *v84 = roiRenderSize;
          *&v84[8] = 2112;
          *&v84[10] = roiRenderOriginLeft;
          *&v84[18] = 2112;
          *&v84[20] = uvLeft;
          v85 = 2112;
          v86 = roiRenderOriginRight;
          v87 = 2112;
          v88 = uvRight;
          _os_log_error_impl(&dword_19CC36000, v46, OS_LOG_TYPE_ERROR, "%{public}s Good face: size %@ | left %@ axes %@ | right %@ axes %@ ", buf, 0x3Eu);
          v12 = v72;
        }
      }

      [array addObject:v43];
    }

    else
    {
      v47 = CI_LOG_DUALRED();
      if (v47)
      {
        v49 = ci_logger_api(v47, v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession setPrimary:&v80 observations:? metadata:?];
        }
      }
    }
  }

  if (![array count])
  {
    v64 = CI_LOG_DUALRED();
    if (v64)
    {
      v66 = ci_logger_api(v64, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
      }
    }

    goto LABEL_37;
  }

  v55 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  if ([array count] > v55)
  {
    [array sortUsingComparator:&__block_literal_global_262];
    array = [array subarrayWithRange:{0, v55}];
  }

  [(CIDualRedEyeRepairSession *)self setFaces:array];
  CFAbsoluteTimeGetCurrent();
  v56 = CI_LOG_DUALRED();
  if (v56)
  {
    v58 = ci_logger_api(v56, v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  v59 = CI_LOG_DUALRED();
  if (v59)
  {
    v61 = ci_logger_api(v59, v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  v62 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
  *(v76 + 6) = 2 * v62;
  v36 = 1;
LABEL_64:
  (v74[0])(v73);
  _Block_object_dispose(&v75, 8);
  return v36;
}

void __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_dualredeye(a1, a2);
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_END, v4, "setPrimary", "eyeCount:%d", v7, 8u);
    }
  }
}

uint64_t __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  [a2 areaMax];
  v5 = [v4 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [a3 areaMax];
  v7 = [v6 numberWithFloat:?];

  return [v7 compare:v5];
}

- (BOOL)_repairPrimaryWithSecondary:(__CVBuffer *)secondary to:(__CVBuffer *)to
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
  v8 = v7;
  v10 = ci_signpost_log_dualredeye(v7, v9);
  if (&self->super.isa + 1 >= 2)
  {
    v60 = v10;
    if (os_signpost_enabled(v10))
    {
      *buf = 67109120;
      LODWORD(v80) = v8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v60, OS_SIGNPOST_INTERVAL_BEGIN, self, "repairPrimaryWithSecondary", "eyeCount:%d", buf, 8u);
    }
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v75 = __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke;
  v76 = &__block_descriptor_44_e5_v8__0l;
  selfCopy = self;
  v78 = v8;
  v11 = CI_LOG_DUALRED();
  if (v11)
  {
    v13 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:];
    }
  }

  v14 = CI_LOG_DUALRED();
  if (v14)
  {
    v16 = ci_logger_api(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:v92 to:?];
    }
  }

  v17 = CI_LOG_DUALRED();
  if (v17)
  {
    v19 = ci_logger_api(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:v91 to:?];
    }
  }

  if (![(CIDualRedEyeRepairSession *)self context]|| [(CIContext *)[(CIDualRedEyeRepairSession *)self context] workingFormat]!= 2056)
  {
    v20 = CI_LOG_DUALRED();
    if (v20)
    {
      v22 = ci_logger_api(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:];
      }
    }

    [(CIDualRedEyeRepairSession *)self setContext:+[CIDualRedEyeRepairSession _contextRGBAh]];
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers])
  {
    [(CIDualRedEyeRepairSession *)self setDestination:[[CIRenderDestination alloc] initWithPixelBuffer:to]];
    self->_secondary = secondary;
    self->_output = to;
    [(CIDualRedEyeRepairSession *)self setSecondaryImage:[CIImage imageWithCVPixelBuffer:secondary options:[(CIDualRedEyeRepairSession *)self imageProperties]]];
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    [(CIDualRedEyeRepairSession *)self setSecondaryImage:[CIImage imageWithMTLTexture:[(CIDualRedEyeRepairSession *)self secondaryTexture] options:[(CIDualRedEyeRepairSession *)self imageProperties]]];
  }

  v23 = CI_LOG_DUALRED();
  if (v23)
  {
    v25 = ci_logger_api(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(CIImage *)self->primaryImage extent];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [(CIImage *)self->primaryImage extent];
      [(CIDualRedEyeRepairSession *)v90 _repairPrimaryWithSecondary:v27 to:v29, v31];
    }
  }

  v32 = CI_LOG_DUALRED();
  if (v32)
  {
    v34 = ci_logger_api(v32, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(CIImage *)self->secondaryImage extent];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      [(CIImage *)self->secondaryImage extent];
      [(CIDualRedEyeRepairSession *)v89 _repairPrimaryWithSecondary:v36 to:v38, v40];
    }
  }

  if (CI_LOG_DUALRED() >= 2)
  {
    [(CIDualRedEyeRepairSession *)self dumpSecondary];
  }

  if ([(CIDualRedEyeRepairSession *)self validateRepair])
  {
    [(CIDualRedEyeRepairSession *)self cleanupState];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    Current = CFAbsoluteTimeGetCurrent();
    v42 = [CIFilter filterWithName:@"CIRedEyeRaw"];
    [(CIFilter *)v42 setValuesForKeysWithDictionary:[(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] repairTuning]];
    v87[0] = @"inputPrimary";
    primaryImage = [(CIDualRedEyeRepairSession *)self primaryImage];
    v87[1] = @"inputSecondary";
    v88[0] = primaryImage;
    v88[1] = [(CIDualRedEyeRepairSession *)self secondaryImage];
    -[CIFilter setValuesForKeysWithDictionary:](v42, "setValuesForKeysWithDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2]);
    [(CIFilter *)v42 setValue:[(NSDictionary *)[(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] sessionTuning] objectForKeyedSubscript:@"kUseFaceSegmentationMask"] forKey:@"inputUseFaceSegmentationMask"];
    v44 = 0;
    *&v45 = 136446722;
    v67 = v45;
    while (1)
    {
      v46 = v44;
      v47 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
      v49 = v47;
      if (v47 <= v46)
      {
        break;
      }

      v50 = ci_signpost_log_dualredeye(v47, v48);
      if (&self->super.isa + 1 >= 2)
      {
        v58 = v50;
        if (os_signpost_enabled(v50))
        {
          *buf = 67109120;
          LODWORD(v80) = v46;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v58, OS_SIGNPOST_INTERVAL_BEGIN, self, "repairFace", "face:%d", buf, 8u);
        }
      }

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v70 = __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke_264;
      v71 = &__block_descriptor_44_e5_v8__0l;
      selfCopy2 = self;
      v73 = v46;
      v51 = CI_LOG_DUALRED();
      if (v51)
      {
        v53 = ci_logger_api(v51, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v59 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
          *buf = v67;
          v80 = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
          v81 = 1024;
          v82 = v46 + 1;
          v83 = 1024;
          v84 = v59;
          _os_log_error_impl(&dword_19CC36000, v53, OS_LOG_TYPE_ERROR, "%{public}s Repair %d/%d", buf, 0x18u);
        }
      }

      if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
      {
        [(CIDualRedEyeRepairSession *)self setCommandBuffer:[(MTLCommandQueue *)[(CIDualRedEyeRepairSession *)self commandQueue] commandBuffer]];
        [(CIDualRedEyeRepairSession *)self setDestination:[[CIRenderDestination alloc] initWithMTLTexture:[(CIDualRedEyeRepairSession *)self outputTexture] commandBuffer:[(CIDualRedEyeRepairSession *)self commandBuffer]]];
      }

      v54 = [(CIDualRedEyeRepairSession *)self repairFace:[(NSArray *)[(CIDualRedEyeRepairSession *)self faces] objectAtIndexedSubscript:v46] filter:v42];
      if (!v54)
      {
        v55 = CI_LOG_DUALRED();
        if (v55)
        {
          v57 = ci_logger_api(v55, v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:v85 to:&v86];
          }
        }

        [(CIDualRedEyeRepairSession *)self cleanupState];
      }

      (v70)(v69);
      v44 = v46 + 1;
      if (!v54)
      {
        goto LABEL_55;
      }
    }

    v61 = CFAbsoluteTimeGetCurrent();
    v62 = CI_LOG_DUALRED();
    if (v62)
    {
      v64 = ci_logger_api(v62, v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [[(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count] _repairPrimaryWithSecondary:buf to:(v61 - Current) * 1000.0];
      }
    }

    if (CI_LOG_DUALRED() >= 2)
    {
      dump(+[CIImage imageWithCVPixelBuffer:options:](CIImage, "imageWithCVPixelBuffer:options:", self->_primary, [(CIDualRedEyeRepairSession *)self imageProperties]), @"-repair", +[CIDualRedEyeRepairSession _contextRGBAh], [(CIDualRedEyeRepairSession *)self timestamp]);
    }

LABEL_55:
    objc_autoreleasePoolPop(context);
    if (v49 <= v46)
    {
      [(CIDualRedEyeRepairSession *)self cleanupState];
      v65 = 1;
      goto LABEL_57;
    }
  }

  v65 = 0;
LABEL_57:
  (v75)(v74);
  return v65;
}

void __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_dualredeye(a1, a2);
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      v6 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_END, v4, "repairPrimaryWithSecondary", "eyeCount:%d", v7, 8u);
    }
  }
}

void __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke_264(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_dualredeye(a1, a2);
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      v6 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_END, v4, "repairFace", "face:%d", v7, 8u);
    }
  }
}

- (void)dumpSecondary
{
  [-[CVBufferRef primaryImage](self "primaryImage")];
  CVBufferGetAttachments(self[1], kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)dumpObservation:(id)observation index:(int)index
{
  v4 = *&index;
  v10 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:observation requiringSecureCoding:1 error:&v10];
  if (v10)
  {
    v7 = CI_LOG_DUALRED();
    if (v7)
    {
      v9 = ci_logger_api(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession dumpObservation:index:];
      }
    }
  }

  else
  {
    [v6 writeToFile:dumpfilepathWithTag(objc_msgSend(MEMORY[0x1E696AEC0] atomically:{"stringWithFormat:", @"%@-%d", @"-observation", v4), @".archive", -[CIDualRedEyeRepairSession timestamp](self, "timestamp")), 0}];
  }
}

- (void)prewarm
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateRepair
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.3(void *a1)
{
  [objc_msgSend(a1 "primaryImage")];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.7(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.14(void *a1)
{
  [a1 extent];
  [a1 extent];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x24u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.17(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.18(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.19(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.20(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)repairFace:filter:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.2()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.4()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.5()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.6()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.7()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.8()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:(void *)a1 filter:.cold.9(void *a1)
{
  [a1 kernelExecutionTime];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)setPrimary:(int)a1 observations:(uint64_t)a2 metadata:.cold.1(int a1, uint64_t a2)
{
  *a2 = 136446466;
  *(a2 + 4) = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
  *(a2 + 12) = 1024;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)setPrimary:observations:metadata:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPrimary:(uint64_t)a1 observations:(_DWORD *)a2 metadata:.cold.3(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setPrimary:(uint64_t)a1 observations:(_DWORD *)a2 metadata:.cold.4(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setPrimary:observations:metadata:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPrimary:(_DWORD *)a1 observations:(void *)a2 metadata:.cold.9(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_repairPrimaryWithSecondary:(uint64_t)a1 to:(_DWORD *)a2 .cold.2(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_repairPrimaryWithSecondary:(uint64_t)a1 to:(_DWORD *)a2 .cold.3(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:(double)a4 .cold.5(_DWORD *a1, double a2, double a3, double a4)
{
  *a1 = 136446722;
  OUTLINED_FUNCTION_9_0(a1, a4);
  _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "%{public}s CVPixelBuffer size (primary) = %d, %d", v5, 0x18u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:(double)a4 .cold.6(_DWORD *a1, double a2, double a3, double a4)
{
  *a1 = 136446722;
  OUTLINED_FUNCTION_9_0(a1, a4);
  _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "%{public}s CVPixelBuffer size (secondary) = %d, %d", v5, 0x18u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:.cold.7(uint64_t a1, uint64_t a2, double a3)
{
  *a2 = 136446722;
  *(a2 + 4) = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  *(a2 + 22) = 2048;
  *(a2 + 24) = a3 / (2 * a1);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_repairPrimaryWithSecondary:(_DWORD *)a1 to:(void *)a2 .cold.8(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dumpObservation:index:.cold.1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end