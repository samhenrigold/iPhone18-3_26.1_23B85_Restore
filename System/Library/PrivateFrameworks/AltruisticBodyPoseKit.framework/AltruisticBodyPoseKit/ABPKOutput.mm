@interface ABPKOutput
- (ABPKOutput)init;
- (BOOL)convertToStreamingDictionary:(id)dictionary withSkeletonType:(id)type referenceFrame:(id)frame includeFingerRotation:(BOOL)rotation yOffset:(float)offset;
- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix;
- (int)saveOnlyPoseDataToDir:(id)dir withFileNamePrefix:(id)prefix;
- (uint64_t)overlayResultsOnImage:(__n128)image withCameraIntrinsics:(__n128)intrinsics withConfig:(uint64_t)config;
- (void)dealloc;
@end

@implementation ABPKOutput

- (ABPKOutput)init
{
  v10.receiver = self;
  v10.super_class = ABPKOutput;
  v2 = [(ABPKOutput *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rawDetection2dSkeletonABPKArray = v2->_rawDetection2dSkeletonABPKArray;
    v2->_rawDetection2dSkeletonABPKArray = v3;

    if (!VTPixelTransferSessionCreate(0, &v2->_vtPixelTransferSession))
    {
      v7 = v2;
      goto LABEL_8;
    }

    CFRelease(v2->_vtPixelTransferSession);
    v2->_vtPixelTransferSession = 0;
    v6 = __ABPKLogSharedInstance(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " Unable to create pixel transfer session for image downscaling ", v9, 2u);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    CFRelease(vtPixelTransferSession);
  }

  if ([(ABPKOutput *)self mlOverlayImage])
  {
    CVPixelBufferRelease([(ABPKOutput *)self mlOverlayImage]);
  }

  v4.receiver = self;
  v4.super_class = ABPKOutput;
  [(ABPKOutput *)&v4 dealloc];
}

- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix
{
  dirCopy = dir;
  prefixCopy = prefix;
  [(ABPKOutput *)self timestamp];
  v9 = v8;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"mlimage", v8];
  v11 = [dirCopy stringByAppendingPathComponent:v10];
  writeImage([(ABPKOutput *)self mlImage], v11);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"mloverlayimage", v9];
  v13 = [dirCopy stringByAppendingPathComponent:v12];
  if ([(ABPKOutput *)self mlOverlayImage])
  {
    writeImage([(ABPKOutput *)self mlOverlayImage], v13);
  }

  [(ABPKOutput *)self saveOnlyPoseDataToDir:dirCopy withFileNamePrefix:prefixCopy];

  return 0;
}

- (int)saveOnlyPoseDataToDir:(id)dir withFileNamePrefix:(id)prefix
{
  v52 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  prefixCopy = prefix;
  [(ABPKOutput *)self timestamp];
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%f.plist", prefixCopy, v6];
  v45 = [dirCopy stringByAppendingPathComponent:?];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = MEMORY[0x277CCABB0];
  [(ABPKOutput *)self timestamp];
  v9 = [v8 numberWithDouble:?];
  [v7 setObject:v9 forKey:@"timestamp"];

  algorithmParams = [(ABPKOutput *)self algorithmParams];

  if (algorithmParams)
  {
    algorithmParams2 = [(ABPKOutput *)self algorithmParams];
    toDict = [algorithmParams2 toDict];
    [v7 setObject:toDict forKey:@"algorithm_params"];
  }

  else
  {
    [v7 setObject:@"nil" forKey:@"algorithm_params"];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  algState = [(ABPKOutput *)self algState];
  detection2d = [algState detection2d];

  if (detection2d)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = self->_rawDetection2dSkeletonABPKArray;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v18)
    {
      v19 = *v48;
      do
      {
        v20 = 0;
        do
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v17);
          }

          toDictionary = [*(*(&v47 + 1) + 8 * v20) toDictionary];
          [v16 addObject:toDictionary];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v18);
    }

    [v13 setObject:v16 forKey:@"raw_detection_2d_array"];
    rawDetection2dSkeletonABPK = [(ABPKOutput *)self rawDetection2dSkeletonABPK];
    toDictionary2 = [rawDetection2dSkeletonABPK toDictionary];
    [v13 setObject:toDictionary2 forKey:@"raw_detection_2d"];

    detection2dSkeletonABPK = [(ABPKOutput *)self detection2dSkeletonABPK];
    toDictionary3 = [detection2dSkeletonABPK toDictionary];
    [v13 setObject:toDictionary3 forKey:@"detection_2d"];

    algState2 = [(ABPKOutput *)self algState];
    if ([algState2 lifting3d])
    {
      algState3 = [(ABPKOutput *)self algState];
      registration = [algState3 registration];

      if (!registration)
      {
        goto LABEL_16;
      }

      algState2 = [(ABPKOutput *)self liftingSkeletonABPK];
      toDictionary4 = [algState2 toDictionary];
      [v13 setObject:toDictionary4 forKey:@"lifting"];
    }

LABEL_16:
    algState4 = [(ABPKOutput *)self algState];
    if ([algState4 retargeting])
    {
      algState5 = [(ABPKOutput *)self algState];
      registration2 = [algState5 registration];

      if (!registration2)
      {
LABEL_20:

        goto LABEL_21;
      }

      algState4 = [(ABPKOutput *)self retargetedSkeletonABPK];
      toDictionary5 = [algState4 toDictionary];
      [v13 setObject:toDictionary5 forKey:@"arvino"];
    }

    goto LABEL_20;
  }

LABEL_21:
  [v7 setObject:v13 forKey:@"skeleton_data"];
  algState6 = [(ABPKOutput *)self algState];
  toDict2 = [algState6 toDict];
  [v7 setObject:toDict2 forKey:@"algorithm_state"];

  v36 = [MEMORY[0x277CCABB0] numberWithInt:{-[ABPKOutput algorithmReturnCode](self, "algorithmReturnCode")}];
  [v7 setObject:v36 forKey:@"algorithm_return_code"];

  v37 = MEMORY[0x277CCABB0];
  [(ABPKOutput *)self timeABPKAlgorithmFinished];
  v39 = v38;
  [(ABPKOutput *)self timeABPKAlgorithmStart];
  v41 = [v37 numberWithDouble:(v39 - v40) * 1000.0];
  [v7 setObject:v41 forKey:@"algorithm_compute_time"];

  [v7 writeToFile:v45 atomically:0];
  return 0;
}

- (uint64_t)overlayResultsOnImage:(__n128)image withCameraIntrinsics:(__n128)intrinsics withConfig:(uint64_t)config
{
  v75[1] = *MEMORY[0x277D85DE8];
  v9 = a7;
  v10 = [v9 length];
  if (v10 != 5)
  {
    v22 = __ABPKLogSharedInstance(v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = " Invalid overlay code ";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_59:
      _os_log_impl(&dword_23EDDC000, v24, v25, v23, buf, 2u);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  v11 = [v9 substringWithRange:{0, 1}];
  v12 = [v11 isEqual:@"y"];

  v13 = [v9 substringWithRange:{1, 1}];
  v14 = [v13 isEqual:@"y"];

  v15 = [v9 substringWithRange:{2, 1}];
  v62 = [v15 isEqual:@"y"];

  v16 = [v9 substringWithRange:{3, 1}];
  v61 = [v16 isEqual:@"y"];

  v17 = [v9 substringWithRange:{4, 1}];
  v18 = [v17 isEqual:@"y"];

  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  if (![self mlOverlayImage])
  {
    v74 = *MEMORY[0x277CC4DE8];
    v75[0] = MEMORY[0x277CBEC10];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v26 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v22, (self + 136));
    if (v26)
    {
      v27 = __ABPKLogSharedInstance(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_ERROR, " Could not create pixelbuffer for image overlay ", buf, 2u);
      }

      goto LABEL_60;
    }
  }

  if (!*(self + 16))
  {
    v72 = *MEMORY[0x277CC4DE8];
    v73 = MEMORY[0x277CBEC10];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v28 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v22, (self + 16));
    if (v28)
    {
      v29 = __ABPKLogSharedInstance(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_ERROR, " Could not create _imageYCbCr buffer ", buf, 2u);
      }

      v30 = 4294960636;
      goto LABEL_61;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
  if (PixelFormatType == 32)
  {
LABEL_7:
    *(self + 16) = a6;
    goto LABEL_19;
  }

  if (PixelFormatType != 1278226488)
  {
    if (PixelFormatType != 1111970369)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  convertFormatGrayScaleToARGB_BGRA(a6, (self + 16));
LABEL_19:
  v31 = VTPixelTransferSessionTransferImage(*(self + 8), *(self + 16), *(self + 136));
  if (!v18)
  {
    algState = [self algState];
    detection2d = [algState detection2d];

    if ((detection2d & v12) != 0)
    {
      v38 = __ABPKLogSharedInstance(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, " Overlay raw 2d skeleton ", buf, 2u);
      }

      rawDetection2dSkeletonABPK = [self rawDetection2dSkeletonABPK];
      v31 = overlay2dResultOnImage(rawDetection2dSkeletonABPK, *(self + 136), *(self + 136), COERCE_DOUBLE(255));
    }

    algState2 = [self algState];
    detection2d2 = [algState2 detection2d];

    if ((detection2d2 & v14) != 0)
    {
      v43 = __ABPKLogSharedInstance(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " Overlay 2d skeleton ", buf, 2u);
      }

      detection2dSkeletonABPK = [self detection2dSkeletonABPK];
      v31 = overlay2dResultOnImage(detection2dSkeletonABPK, *(self + 136), *(self + 136), COERCE_DOUBLE(0xFF00000000));
    }

    algState3 = [self algState];
    if ([algState3 lifting3d])
    {
      algState4 = [self algState];
      registration = [algState4 registration];

      if ((registration & v62) == 0)
      {
LABEL_38:
        algState5 = [self algState];
        if (![algState5 retargeting])
        {
LABEL_54:

          goto LABEL_55;
        }

        algState6 = [self algState];
        registration2 = [algState6 registration];

        if ((registration2 & v61) != 0)
        {
          v53 = __ABPKLogSharedInstance(v34);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v53, OS_LOG_TYPE_DEBUG, " Overlay retargeted skeleton ", buf, 2u);
          }

          algState5 = [self retargetedSkeletonABPK];
          v31 = overlay3dResultOnImage(algState5, *(self + 136), *(self + 136), a2, image, intrinsics, Width, Height, xmmword_23EE281D0);
          goto LABEL_54;
        }

LABEL_55:
        if (!v31)
        {
          v30 = 0;
          goto LABEL_62;
        }

        v22 = __ABPKLogSharedInstance(v34);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        *buf = 0;
        v23 = " Could not overlay image ";
        goto LABEL_58;
      }

      v49 = __ABPKLogSharedInstance(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v49, OS_LOG_TYPE_DEBUG, " Overlay 3d skeleton ", buf, 2u);
      }

      algState3 = [self liftingSkeletonABPK];
      v31 = overlay3dResultOnImage(algState3, *(self + 136), *(self + 136), a2, image, intrinsics, Width, Height, xmmword_23EE281C0);
    }

    goto LABEL_38;
  }

  algState7 = [self algState];
  detection2d3 = [algState7 detection2d];

  if (!detection2d3)
  {
    goto LABEL_55;
  }

  if (((v12 | v14 | v62 | v61) & 1) == 0)
  {
    v54 = __ABPKLogSharedInstance(v34);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v54, OS_LOG_TYPE_DEBUG, " Overlay 2d face ", buf, 2u);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    algState5 = *(self + 24);
    v55 = [algState5 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v55)
    {
      v56 = *v67;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v67 != v56)
          {
            objc_enumerationMutation(algState5);
          }

          v58.n128_u64[0] = 255;
          v58.n128_u64[1] = 255;
          v59 = drawFullyVisibleFace(*(*(&v66 + 1) + 8 * i), *(self + 136), *(self + 136), v58);
        }

        v31 = v59;
        v55 = [algState5 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v55);
    }

    goto LABEL_54;
  }

  v22 = __ABPKLogSharedInstance(v34);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v23 = " Face visualization should be drawn cleanly. Please make sure the first four letters in overlay string are all 'n' when the fifth is 'y'. ";
LABEL_58:
    v24 = v22;
    v25 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_59;
  }

LABEL_60:
  v30 = 4294960630;
LABEL_61:

LABEL_62:
  return v30;
}

- (BOOL)convertToStreamingDictionary:(id)dictionary withSkeletonType:(id)type referenceFrame:(id)frame includeFingerRotation:(BOOL)rotation yOffset:(float)offset
{
  v77[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  typeCopy = type;
  frameCopy = frame;
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  liftingSkeletonABPK = [(ABPKOutput *)self liftingSkeletonABPK];
  if ([typeCopy isEqual:@"Arvino"])
  {
    retargetedSkeletonABPK = [(ABPKOutput *)self retargetedSkeletonABPK];
  }

  else
  {
    retargetedSkeletonABPK = liftingSkeletonABPK;
  }

  liftingSkeletonABPK = retargetedSkeletonABPK;
  [retargetedSkeletonABPK cameraRootTransform];
  v64 = v12;
  v63 = v13;
  v62 = v14;
  v61 = v15;
  [retargetedSkeletonABPK deviceRootTransform];
  v59 = v16;
  v58 = v17;
  v57 = v18;
  v60 = v19;
  skeletonDefinition = [retargetedSkeletonABPK skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];

  v56[1] = v56;
  v22 = v56 - ((4 * jointCount + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = &v56[-2 * jointCount];
  v70 = jointCount;
  v71 = v72;
  for (i = 0; ; ++i)
  {
    skeletonDefinition2 = [liftingSkeletonABPK skeletonDefinition];
    jointCount2 = [skeletonDefinition2 jointCount];

    if (i >= jointCount2)
    {
      break;
    }

    *&v22[4 * i] = 1056964608;
  }

  if ([frameCopy isEqual:@"Global"])
  {
    [liftingSkeletonABPK getGlobalJointDataForSkeletonWithPosition:v72 withOrientation:v71];
  }

  else
  {
    [liftingSkeletonABPK getLocalJointDataForSkeletonWithPosition:v72 withOrientation:v71];
  }

  selfCopy = self;
  v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v70 >= 1)
  {
    for (j = 0; j != v70; ++j)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      skeletonDefinition3 = [liftingSkeletonABPK skeletonDefinition];
      v29 = [skeletonDefinition3 jointName:j];

      LODWORD(v30) = *&v22[4 * j];
      v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
      [v27 setObject:v31 forKey:@"confidence"];

      v75 = *&v72[2 * j];
      v32 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      v77[0] = v32;
      HIDWORD(v33) = DWORD1(v75);
      LODWORD(v33) = DWORD1(v75);
      v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
      v77[1] = v34;
      v35 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v75), DWORD2(v75)))}];
      v77[2] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
      [v27 setObject:v36 forKey:@"translation"];

      v75 = *&v71[2 * j];
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      v76[0] = v37;
      HIDWORD(v38) = DWORD1(v75);
      LODWORD(v38) = DWORD1(v75);
      v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
      v76[1] = v39;
      v40 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v75), HIDWORD(v75)))}];
      v76[2] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v75), DWORD2(v75)))}];
      v76[3] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
      [v27 setObject:v42 forKey:@"orientation"];

      [v73 setObject:v27 forKey:v29];
    }
  }

  [v69 setObject:v73 forKey:@"body_joints"];
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = simdMatrix4x4ToNSArray(v64, v63, v62, v61);
  [v43 setObject:v44 forKey:@"camera_root_pose"];

  v45 = v60;
  v45.n128_f32[1] = v60.n128_f32[1] + offset;
  v46 = simdMatrix4x4ToNSArray(v59, v58, v57, v45);
  [v43 setObject:v46 forKey:@"device_root_pose"];

  [(ABPKOutput *)selfCopy timestamp];
  *&v47 = v47;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  [v43 setObject:v48 forKey:@"timestamp"];

  if (![typeCopy isEqual:@"Lifting"])
  {
    algState = [(ABPKOutput *)selfCopy algState];
    if ([algState retargeting])
    {
      algState2 = [(ABPKOutput *)selfCopy algState];
      registration = [algState2 registration];

      if (registration)
      {
        v52 = MEMORY[0x277CBEC38];
        goto LABEL_23;
      }

LABEL_22:
      v52 = MEMORY[0x277CBEC28];
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

  algState = [(ABPKOutput *)selfCopy algState];
  if (([algState lifting3d] & 1) == 0)
  {
    goto LABEL_21;
  }

  algState3 = [(ABPKOutput *)selfCopy algState];
  registration2 = [algState3 registration];

  if (registration2)
  {
    v52 = MEMORY[0x277CBEC38];
  }

  else
  {
    v52 = MEMORY[0x277CBEC28];
  }

LABEL_23:
  [v43 setObject:v52 forKey:@"pose_validity"];
  [v69 setObject:v43 forKey:@"result_context"];
  [v69 setObject:frameCopy forKey:@"joint_transform_type"];
  [v69 setObject:typeCopy forKey:@"skeleton_type"];
  [dictionaryCopy setObject:v69 forKey:@"result_abpk"];

  return 1;
}

@end