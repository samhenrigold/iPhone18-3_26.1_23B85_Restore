@interface ARImageRotationTechnique
- (ARImageRotationTechnique)initWithRotation:(int64_t)rotation mirror:(int64_t)mirror;
- (BOOL)isEqual:(id)equal;
- (id)_fullDescription;
- (id)processData:(id)data;
- (int)_rotateAccelerate:(__CVBuffer *)accelerate pOutputBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation ARImageRotationTechnique

- (ARImageRotationTechnique)initWithRotation:(int64_t)rotation mirror:(int64_t)mirror
{
  v40 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = ARImageRotationTechnique;
  v6 = [(ARTechnique *)&v33 init];
  p_isa = &v6->super.super.isa;
  if (!v6)
  {
    goto LABEL_23;
  }

  v6->_vtPixelRotationSession = 0;
  v6->_rotationAngle = rotation;
  v6->_mirrorMode = mirror;
  v8 = VTPixelRotationSessionCreate(0, &v6->_vtPixelRotationSession);
  if (v8)
  {
    v9 = v8;
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique initWithRotation:mirror:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_9;
    v11 = _ARLogTechnique_4(v8);
    dictionary = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543874;
        v35 = v14;
        v36 = 2048;
        v37 = p_isa;
        v38 = 1024;
        v39 = v9;
        v15 = "%{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d";
        v16 = dictionary;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v14 = NSStringFromClass(v19);
      *buf = 138543874;
      v35 = v14;
      v36 = 2048;
      v37 = p_isa;
      v38 = 1024;
      v39 = v9;
      v15 = "Error: %{public}@ <%p>: Creation of VTPixelRotationSession failed with error %d";
      v16 = dictionary;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

LABEL_28:

    v30 = 0;
    goto LABEL_29;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:kVTRotationFromARRotationAngle(rotation) forKeyedSubscript:*MEMORY[0x1E6983D98]];
  if (mirror == 1)
  {
    v18 = MEMORY[0x1E6983D78];
    goto LABEL_15;
  }

  if (mirror == 2)
  {
    v18 = MEMORY[0x1E6983D80];
LABEL_15:
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v18];
  }

  v20 = VTSessionSetProperties(p_isa[7], dictionary);
  if (v20)
  {
    v21 = v20;
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique initWithRotation:mirror:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_9;
    v23 = _ARLogTechnique_4(v20);
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543874;
        v35 = v26;
        v36 = 2048;
        v37 = p_isa;
        v38 = 1024;
        v39 = v21;
        v27 = "%{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d";
        v28 = v24;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_26:
        _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v26 = NSStringFromClass(v31);
      *buf = 138543874;
      v35 = v26;
      v36 = 2048;
      v37 = p_isa;
      v38 = 1024;
      v39 = v21;
      v27 = "Error: %{public}@ <%p>: Configuration of VTPixelRotationSession failed with error %d";
      v28 = v24;
      v29 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_23:
  v30 = p_isa;
LABEL_29:

  return v30;
}

- (void)dealloc
{
  vtPixelRotationSession = self->_vtPixelRotationSession;
  if (vtPixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(vtPixelRotationSession);
    CFRelease(self->_vtPixelRotationSession);
    self->_vtPixelRotationSession = 0;
  }

  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
    self->_bufferPool = 0;
  }

  v5.receiver = self;
  v5.super_class = ARImageRotationTechnique;
  [(ARImageRotationTechnique *)&v5 dealloc];
}

- (int)_rotateAccelerate:(__CVBuffer *)accelerate pOutputBuffer:(__CVBuffer *)buffer
{
  v38 = *MEMORY[0x1E69E9840];
  if (!accelerate || !buffer)
  {
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_9;
    v12 = _ARLogTechnique_4(self);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "%{public}@ <%p>: Arguments can't be nil";
LABEL_36:
        v26 = v13;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v26, v27, v16, &buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v15 = NSStringFromClass(v17);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v15;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = self;
      v16 = "Error: %{public}@ <%p>: Arguments can't be nil";
      goto LABEL_39;
    }

LABEL_41:

    return -1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(accelerate);
  v8 = PixelFormatType;
  v9 = 1;
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        goto LABEL_25;
      }

      v10 = 1094862674;
      goto LABEL_17;
    }

    if (PixelFormatType == 1111970369)
    {
      goto LABEL_25;
    }

    v18 = 1278226488;
    goto LABEL_23;
  }

  if (PixelFormatType > 1380410944)
  {
    if (PixelFormatType != 1380410945)
    {
      v18 = 1717855600;
LABEL_23:
      if (PixelFormatType != v18)
      {
LABEL_54:
        if (ARShouldUseLogTypeError_onceToken_9 != -1)
        {
          [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
        }

        v32 = ARShouldUseLogTypeError_internalOSVersion_9;
        v33 = _ARLogTechnique_4(PixelFormatType);
        v13 = v33;
        if (v32 == 1)
        {
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          v34 = objc_opt_class();
          v15 = NSStringFromClass(v34);
          LODWORD(buf.data) = 138543618;
          *(&buf.data + 4) = v15;
          WORD2(buf.height) = 2048;
          *(&buf.height + 6) = self;
          v16 = "%{public}@ <%p>: Accelerate currently only supports kCVPixelFormatType_32BGRA, kCVPixelFormatType_32ARGB formats or kCVPixelFormatType_128RGBAFloat, kCVPixelFormatType_DepthFloat32, kCVPixelFormatType_OneComponent32Float and kCVPixelFormatType_OneComponent8";
          goto LABEL_36;
        }

        if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          goto LABEL_41;
        }

        v35 = objc_opt_class();
        v15 = NSStringFromClass(v35);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "Error: %{public}@ <%p>: Accelerate currently only supports kCVPixelFormatType_32BGRA, kCVPixelFormatType_32ARGB formats or kCVPixelFormatType_128RGBAFloat, kCVPixelFormatType_DepthFloat32, kCVPixelFormatType_OneComponent32Float and kCVPixelFormatType_OneComponent8";
LABEL_39:
        v26 = v13;
        v27 = OS_LOG_TYPE_INFO;
        goto LABEL_40;
      }
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if (PixelFormatType == 1278226534)
  {
    goto LABEL_24;
  }

  v10 = 1380401729;
LABEL_17:
  if (PixelFormatType != v10)
  {
    goto LABEL_54;
  }

LABEL_25:
  v19 = CVPixelBufferGetPixelFormatType(accelerate);
  v20 = CVPixelBufferGetPixelFormatType(*buffer);
  if (v19 != v20)
  {
    if (ARShouldUseLogTypeError_onceToken_9 != -1)
    {
      [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
    }

    v23 = ARShouldUseLogTypeError_internalOSVersion_9;
    v24 = _ARLogTechnique_4(v20);
    v13 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v15 = NSStringFromClass(v25);
        LODWORD(buf.data) = 138543618;
        *(&buf.data + 4) = v15;
        WORD2(buf.height) = 2048;
        *(&buf.height + 6) = self;
        v16 = "%{public}@ <%p>: Input and output pixel buffer format need to match.";
        goto LABEL_36;
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v15 = NSStringFromClass(v28);
      LODWORD(buf.data) = 138543618;
      *(&buf.data + 4) = v15;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = self;
      v16 = "Error: %{public}@ <%p>: Input and output pixel buffer format need to match.";
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  CVPixelBufferLockBaseAddress(accelerate, 0);
  CVPixelBufferLockBaseAddress(*buffer, 0);
  memset(&buf, 0, sizeof(buf));
  ARWrapCVPixelBufferVImage(accelerate, &buf.data);
  memset(&v36, 0, sizeof(v36));
  ARWrapCVPixelBufferVImage(*buffer, &v36.data);
  rotationAngle = [(ARImageRotationTechnique *)self rotationAngle];
  if (rotationAngle == 180)
  {
    v22 = 2;
    if (!v9)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (rotationAngle != 90)
  {
    if (rotationAngle == -90)
    {
      v22 = 1;
      if (!v9)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = 0;
      if (!v9)
      {
        goto LABEL_47;
      }
    }

LABEL_45:
    v30 = vImageRotate90_ARGB8888(&buf, &v36, v22, _rotateAccelerate_pOutputBuffer___bgColor, 0x10u);
LABEL_63:
    v31 = v30;
    goto LABEL_64;
  }

  v22 = 3;
  if (v9)
  {
    goto LABEL_45;
  }

LABEL_47:
  v31 = -21778;
  if (v8 > 1380410944)
  {
    if (v8 != 1717855600)
    {
      if (v8 != 1380410945)
      {
        goto LABEL_64;
      }

      v30 = vImageRotate90_ARGBFFFF(&buf, &v36, v22, _rotateAccelerate_pOutputBuffer___bgColor_3, 0x10u);
      goto LABEL_63;
    }

LABEL_59:
    v30 = vImageRotate90_PlanarF(&buf, &v36, v22, 0.0, 0x10u);
    goto LABEL_63;
  }

  if (v8 == 1278226488)
  {
    v30 = vImageRotate90_Planar8(&buf, &v36, v22, 0, 0x10u);
    goto LABEL_63;
  }

  if (v8 == 1278226534)
  {
    goto LABEL_59;
  }

LABEL_64:
  CVPixelBufferUnlockBaseAddress(*buffer, 0);
  CVPixelBufferUnlockBaseAddress(accelerate, 0);
  if (v31)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (id)processData:(id)data
{
  v101 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (*&self->_rotationAngle == 0)
  {
    v22 = dataCopy;
    goto LABEL_80;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v5;
  v22 = v7;
  if (isKindOfClass)
  {
    Width = CVPixelBufferGetWidth([v7 pixelBuffer]);
    Height = CVPixelBufferGetHeight([v22 pixelBuffer]);
    rotationAngle = self->_rotationAngle;
    v11 = Width;
    if (rotationAngle)
    {
      v11 = Width;
      if (rotationAngle != 180)
      {
        v11 = Height;
      }
    }

    if (rotationAngle == 180)
    {
      v12 = Height;
    }

    else
    {
      v12 = Width;
    }

    if (rotationAngle)
    {
      v13 = v12;
    }

    else
    {
      v13 = Height;
    }

    bufferPool = self->_bufferPool;
    if (bufferPool)
    {
      selfCopy = self;
      v86 = v22;
      v84 = v5;
      v16 = CVPixelBufferPoolGetPixelBufferAttributes(bufferPool);
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
      v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
      if ([v17 integerValue] == v11 && objc_msgSend(v18, "integerValue") == v13)
      {
        v19 = v13;
        v20 = 0;
      }

      else
      {
        v19 = v13;
        v20 = 1;
      }

      self = selfCopy;
      v21 = selfCopy->_bufferPool;
      if ((v20 & 1) == 0 && v21)
      {
        v13 = v19;
        v5 = v84;
        v22 = v86;
        goto LABEL_30;
      }

      v13 = v19;
      v5 = v84;
      v22 = v86;
      if (v21)
      {
        CVPixelBufferPoolRelease(selfCopy->_bufferPool);
        selfCopy->_bufferPool = 0;
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType([v22 pixelBuffer]);
    New = ar_pixelBufferPoolCreateNew(v11, v13, PixelFormatType, &self->_bufferPool);
    if (New)
    {
      v25 = New;
      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:];
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_9;
      v27 = _ARLogTechnique_4(New);
      v28 = v27;
      if (v26 == 1)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543874;
          v90 = v30;
          v91 = 2048;
          selfCopy9 = self;
          v93 = 1024;
          v94 = v25;
          v31 = "%{public}@ <%p>: Creation of CVPixelBufferPool failed with error %d";
LABEL_36:
          v37 = v28;
          v38 = OS_LOG_TYPE_ERROR;
LABEL_45:
          _os_log_impl(&dword_1C241C000, v37, v38, v31, buf, 0x1Cu);
        }

LABEL_46:

        delegate = [(ARTechnique *)self delegate];
        v45 = ARErrorWithCodeAndUserInfo(151, 0);
        [delegate technique:self didFailWithError:v45];

        v46 = v22;
LABEL_79:

        v22 = v46;
        goto LABEL_80;
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      v39 = objc_opt_class();
      v30 = NSStringFromClass(v39);
      *buf = 138543874;
      v90 = v30;
      v91 = 2048;
      selfCopy9 = self;
      v93 = 1024;
      v94 = v25;
      v31 = "Error: %{public}@ <%p>: Creation of CVPixelBufferPool failed with error %d";
LABEL_44:
      v37 = v28;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_45;
    }

    v21 = self->_bufferPool;
LABEL_30:
    pixelBufferOut = 0;
    v32 = CVPixelBufferPoolCreatePixelBuffer(0, v21, &pixelBufferOut);
    if (v32)
    {
      v33 = v32;
      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique initWithRotation:mirror:];
      }

      v34 = ARShouldUseLogTypeError_internalOSVersion_9;
      v35 = _ARLogTechnique_4(v32);
      v28 = v35;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v30 = NSStringFromClass(v36);
          *buf = 138543874;
          v90 = v30;
          v91 = 2048;
          selfCopy9 = self;
          v93 = 1024;
          v94 = v33;
          v31 = "%{public}@ <%p>: Could not create pixel buffer for rotation. (%i)";
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      v43 = objc_opt_class();
      v30 = NSStringFromClass(v43);
      *buf = 138543874;
      v90 = v30;
      v91 = 2048;
      selfCopy9 = self;
      v93 = 1024;
      v94 = v33;
      v31 = "Error: %{public}@ <%p>: Could not create pixel buffer for rotation. (%i)";
      goto LABEL_44;
    }

    v40 = CVPixelBufferGetPixelFormatType([v22 pixelBuffer]);
    v41 = v40;
    if (v40 > 1111970368)
    {
      if (v40 == 1111970369)
      {
        goto LABEL_50;
      }

      v42 = 1380401729;
    }

    else
    {
      if (v40 == 32)
      {
        goto LABEL_50;
      }

      v42 = 1094862674;
    }

    if (v40 != v42)
    {
      v50 = v22;
      if (v41 > 1380410944)
      {
        if (v41 == 1380410945)
        {
          goto LABEL_51;
        }

        v78 = 1717855600;
      }

      else
      {
        if (v41 == 1278226488)
        {
          goto LABEL_51;
        }

        v78 = 1278226534;
      }

      if (v41 != v78)
      {
        selfCopy7 = self;
        vtPixelRotationSession = self->_vtPixelRotationSession;
        goto LABEL_53;
      }

LABEL_51:
      if (!-[ARImageRotationTechnique _rotateAccelerate:pOutputBuffer:](self, "_rotateAccelerate:pOutputBuffer:", [v22 pixelBuffer], &pixelBufferOut))
      {
        goto LABEL_59;
      }

      selfCopy7 = self;
      vtPixelRotationSession = self->_vtPixelRotationSession;
      v50 = v22;
LABEL_53:
      pixelBuffer = [v50 pixelBuffer];
      v52 = VTPixelRotationSessionRotateImage(vtPixelRotationSession, pixelBuffer, pixelBufferOut);
      v53 = v52;
      self = selfCopy7;
      if (v52)
      {
        v54 = v13;
        if (ARShouldUseLogTypeError_onceToken_9 != -1)
        {
          [ARImageRotationTechnique initWithRotation:mirror:];
        }

        v55 = ARShouldUseLogTypeError_internalOSVersion_9;
        v56 = _ARLogTechnique_4(v52);
        v57 = v56;
        if (v55 == 1)
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v58 = v54;
            v59 = objc_opt_class();
            v60 = NSStringFromClass(v59);
            v61 = AROSTypeToString(v41);
            *buf = 138544642;
            v90 = v60;
            v91 = 2048;
            selfCopy9 = selfCopy7;
            v93 = 1024;
            v94 = v11;
            v95 = 1024;
            v96 = v58;
            v97 = 2112;
            v98 = v61;
            v99 = 1024;
            v100 = v53;
            v62 = "%{public}@ <%p>: Could not transform image with size %ix%i and format %@. (%i)";
            v63 = v57;
            v64 = OS_LOG_TYPE_ERROR;
LABEL_71:
            _os_log_impl(&dword_1C241C000, v63, v64, v62, buf, 0x32u);
          }
        }

        else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v79 = v54;
          v80 = objc_opt_class();
          v60 = NSStringFromClass(v80);
          v61 = AROSTypeToString(v41);
          *buf = 138544642;
          v90 = v60;
          v91 = 2048;
          selfCopy9 = selfCopy7;
          v93 = 1024;
          v94 = v11;
          v95 = 1024;
          v96 = v79;
          v97 = 2112;
          v98 = v61;
          v99 = 1024;
          v100 = v53;
          v62 = "Error: %{public}@ <%p>: Could not transform image with size %ix%i and format %@. (%i)";
          v63 = v57;
          v64 = OS_LOG_TYPE_INFO;
          goto LABEL_71;
        }

        delegate2 = [(ARTechnique *)selfCopy7 delegate];
        delegate3 = ARErrorWithCodeAndUserInfo(151, 0);
        [delegate2 technique:selfCopy7 didFailWithError:delegate3];
LABEL_77:
        v46 = v22;
        goto LABEL_78;
      }

LABEL_59:
      v65 = [[ARModifiedImageData alloc] initWithImageData:v22];
      delegate2 = v65;
      if (v65)
      {
        [(ARImageData *)v65 setPixelBuffer:pixelBufferOut];
        [v22 cameraIntrinsics];
        v85 = v68;
        v87 = v67;
        [v22 imageResolution];
        ARAdjustIntrincisForOrientation(self->_rotationAngle, v87, v85);
        [delegate2 imageResolution];
        ARAdjustIntrincisForMirroring();
        [delegate2 setCameraIntrinsics:?];
        [delegate2 setMirrored:self->_mirrorMode != 0];
        delegate2 = delegate2;
        delegate3 = v22;
        v46 = delegate2;
LABEL_78:

        CVPixelBufferRelease(pixelBufferOut);
        goto LABEL_79;
      }

      if (ARShouldUseLogTypeError_onceToken_9 != -1)
      {
        [ARImageRotationTechnique initWithRotation:mirror:];
      }

      v70 = ARShouldUseLogTypeError_internalOSVersion_9;
      v71 = _ARLogTechnique_4(v65);
      v72 = v71;
      if (v70 == 1)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v73 = objc_opt_class();
          v74 = NSStringFromClass(v73);
          *buf = 138543618;
          v90 = v74;
          v91 = 2048;
          selfCopy9 = self;
          v75 = "%{public}@ <%p>: Could not allocated image.";
          v76 = v72;
          v77 = OS_LOG_TYPE_ERROR;
LABEL_75:
          _os_log_impl(&dword_1C241C000, v76, v77, v75, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v81 = objc_opt_class();
        v74 = NSStringFromClass(v81);
        *buf = 138543618;
        v90 = v74;
        v91 = 2048;
        selfCopy9 = self;
        v75 = "Error: %{public}@ <%p>: Could not allocated image.";
        v76 = v72;
        v77 = OS_LOG_TYPE_INFO;
        goto LABEL_75;
      }

      delegate3 = [(ARTechnique *)self delegate];
      v82 = ARErrorWithCodeAndUserInfo(151, 0);
      [delegate3 technique:self didFailWithError:v82];

      goto LABEL_77;
    }

LABEL_50:
    v47 = v22;
    goto LABEL_51;
  }

LABEL_80:

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[10] == self->_mirrorMode && equalCopy[9] == self->_rotationAngle;

  return v5;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = ARImageRotationTechnique;
  _fullDescription = [(ARTechnique *)&v8 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  [v5 appendFormat:@"Rotation (%li)\n", self->_rotationAngle];
  [v5 appendFormat:@"Mirror (%ld)\n", self->_mirrorMode];
  v6 = CVPixelBufferPoolGetPixelBufferAttributes(self->_bufferPool);
  [v5 appendFormat:@"OutputPixelBufferPool attr: %@\n", v6];

  return v5;
}

@end