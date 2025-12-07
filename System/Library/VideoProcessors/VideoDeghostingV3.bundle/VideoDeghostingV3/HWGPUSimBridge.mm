@interface HWGPUSimBridge
- (BOOL)pixelIsGhostWithDilationWithDilation:(int)dilation location:(float)location[3][16][4] curGGCoord:(int)coord GGCount:(int)count posInx:;
- (HWGPUSimBridge)init;
- (float)avgPixelFromPixelMemory:(id)memory locX:(int)x locY:(int)y;
- (float)getBlockTexturednessWithPixelMemory:(id)memory x:(int)x y:(int)y width:(int)width height:(int)height;
- (float)getDistWithGGCoord:(float)coord[3][16][4] GGCount:(int)count location:(int)location ggIdx:;
- (float)getWSpatialUsingGhostMotion_HWGPU:(id *)u ref0Meta:(id *)meta ref1Meta:(float)ref1Meta metaTPlusOrMinus1_HW:metaTPlusOrMinus2_HW:lowLight:ghostSize:;
- (float)gradientWithInput:(id)input width:(int)width height:(int)height fixedPosition:(int)position start:(int)start end:(int)end direction:(int)direction GGCoord:(float)self0[3][16][4] GGCount:(int)self1;
- (void)dealloc;
- (void)getWSpatialUsingTempAlignQualityLowLight_HWGPUWithGGCoord:(float)coord[3][16][4] GGCount:(int)count GGCountRef0:(int)ref0 GGCountRef1:(int)ref1 ggIndex:(int)index input:(id)input ref0:(id)a9 ref1:(id)self0 diffMax:(int *)self1;
- (void)getWStrongRepairInSpatialUsingBgTexturednessWithInput:(id)input curGGCoord:(float)coord[3][16][4] GGCount:(int)count dilation:(int)dilation gradMax:(int *)max curIdx:(int)idx;
- (void)hwMitigationFromVT:(double)t homography1:(double)homography1 BBoxCur:(double)cur warpedBBox0:(double)box0 warpedMeta1:(double)meta1 inputBuf:(uint64_t)buf ref0Buf:(void *)ref0Buf ref1Buf:(uint64_t)self0 borderPixels:(uint64_t)self1 outputBuf:(__CVBuffer *)self2 boundingBoxWeights:(uint64_t)self3 outputStruct:(uint64_t)self4;
- (void)hwStatisticsFromVT:(__n128)t homography1:(__n128)homography1 BBoxCur:(__n128)cur warpedBBox0:(__n128)box0 warpedMeta1:(__n128)meta1 inputBuf:(uint64_t)buf ref0Buf:(void *)ref0Buf ref1Buf:(void *)self0 borderPixels:(void *)self1 outputStruct:(uint64_t)self2;
- (void)setWSpatialWithGGCoord:(float)coord[3][16][4] GGCount:(int)count GGCountRef0:(int)ref0 GGCountRef1:(int)ref1 downscaledInputY:(__CVBuffer *)y downscaledwarpedRef0Y:(__CVBuffer *)ref0Y downscaledwarpedRef1Y:(__CVBuffer *)ref1Y diffMax:(int *)self0;
- (void)spatialHMERCWithInputBuf:(double)buf ref0Buf:(double)ref0Buf ref1Buf:(double)ref1Buf GGCount:(double)count GGCountRef0:(double)ref0 GGCountRef1:(uint64_t)ref1 GGCoord:(__CVBuffer *)coord hmgrphy0:(uint64_t)self0 hmgrphy1:(uint64_t)self1 diffMax:(unsigned int)self2;
- (void)strongSpatialHMEFSWithInputBuf:(__CVBuffer *)buf GGCount:(int)count GGCoord:(float)coord[3][16][4] gradMax:(int *)max;
@end

@implementation HWGPUSimBridge

- (HWGPUSimBridge)init
{
  v14.receiver = self;
  v14.super_class = HWGPUSimBridge;
  v2 = [(HWGPUSimBridge *)&v14 init];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [[FigMetalContext alloc] initWithbundle:v3 andOptionalCommandQueue:0];
  metalContext = v2->_metalContext;
  v2->_metalContext = v4;

  v6 = [[GGMMetalToolBoxHWSim alloc] initWithMetalContext:v2->_metalContext tuningParamDict:0];
  metalToolBox = v2->_metalToolBox;
  v2->_metalToolBox = v6;

  device = [(FigMetalContext *)v2->_metalContext device];
  device = v2->_device;
  v2->_device = device;

  commandQueue = [(FigMetalContext *)v2->_metalContext commandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = commandQueue;

  v2->_forceWaitForComplete = 1;
  v2->_frameNum = 0;
  if (VTPixelTransferSessionCreate(kCFAllocatorDefault, &v2->_pixelTransferSession))
  {
    [HWGPUSimBridge init];
    v12 = 0;
  }

  else
  {
    v12 = v2;
  }

  return v12;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    v4 = self->_pixelTransferSession;
    if (v4)
    {
      CFRelease(v4);
      self->_pixelTransferSession = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = HWGPUSimBridge;
  [(HWGPUSimBridge *)&v5 dealloc];
}

- (float)getBlockTexturednessWithPixelMemory:(id)memory x:(int)x y:(int)y width:(int)width height:(int)height
{
  if (x <= 2)
  {
    xCopy = 2;
  }

  else
  {
    xCopy = x;
  }

  if (y <= 2)
  {
    yCopy = 2;
  }

  else
  {
    yCopy = y;
  }

  if (width - 3 >= xCopy)
  {
    v9 = xCopy;
  }

  else
  {
    v9 = (width - 3);
  }

  if (height - 3 >= yCopy)
  {
    v10 = yCopy;
  }

  else
  {
    v10 = (height - 3);
  }

  memoryCopy = memory;
  [memoryCopy ReadYValue8AtX:(v9 - 1) Y:(v10 - 2)];
  v54 = v12;
  [memoryCopy ReadYValue8AtX:(v9 - 1) Y:(v10 - 1)];
  v53 = v13;
  [memoryCopy ReadYValue8AtX:(v9 - 1) Y:v10];
  v52 = v14;
  [memoryCopy ReadYValue8AtX:(v9 - 1) Y:(v10 + 1)];
  v51 = v15;
  [memoryCopy ReadYValue8AtX:(v9 - 1) Y:(v10 + 2)];
  v50 = v16;
  [memoryCopy ReadYValue8AtX:v9 Y:(v10 - 2)];
  v49 = v17;
  [memoryCopy ReadYValue8AtX:v9 Y:(v10 - 1)];
  v19 = v18;
  [memoryCopy ReadYValue8AtX:v9 Y:v10];
  v21 = v20;
  [memoryCopy ReadYValue8AtX:v9 Y:(v10 + 1)];
  v23 = v22;
  [memoryCopy ReadYValue8AtX:v9 Y:(v10 + 2)];
  v48 = v24;
  [memoryCopy ReadYValue8AtX:(v9 + 1) Y:(v10 - 2)];
  v47 = v25;
  [memoryCopy ReadYValue8AtX:(v9 + 1) Y:(v10 - 1)];
  v27 = v26;
  [memoryCopy ReadYValue8AtX:(v9 + 1) Y:v10];
  v29 = v28;
  [memoryCopy ReadYValue8AtX:(v9 + 1) Y:(v10 + 1)];
  v31 = v30;
  [memoryCopy ReadYValue8AtX:(v9 + 1) Y:(v10 + 2)];
  v46 = v32;
  [memoryCopy ReadYValue8AtX:(v9 - 2) Y:(v10 - 1)];
  v44 = v33;
  [memoryCopy ReadYValue8AtX:(v9 - 2) Y:v10];
  v45 = v34;
  [memoryCopy ReadYValue8AtX:(v9 - 2) Y:(v10 + 1)];
  v43 = v35;
  [memoryCopy ReadYValue8AtX:(v9 + 2) Y:(v10 - 1)];
  v37 = v36;
  [memoryCopy ReadYValue8AtX:(v9 + 2) Y:v10];
  v39 = v38;
  [memoryCopy ReadYValue8AtX:(v9 + 2) Y:(v10 + 1)];
  v42 = v40;

  return (vabds_f32(v31, v42) + (vabds_f32(v23, v31) + (vabds_f32(v51, v23) + (vabds_f32(v43, v51) + (vabds_f32(v29, v39) + (vabds_f32(v21, v29) + (vabds_f32(v52, v21) + (vabds_f32(v45, v52) + ((vabds_f32(v19, v27) + (vabds_f32(v53, v19) + ((((((((((((vabds_f32(v54, v53) + vabds_f32(v53, v52)) + vabds_f32(v52, v51)) + vabds_f32(v51, v50)) + vabds_f32(v49, v19)) + vabds_f32(v19, v21)) + vabds_f32(v21, v23)) + vabds_f32(v23, v48)) + vabds_f32(v47, v27)) + vabds_f32(v27, v29)) + vabds_f32(v29, v31)) + vabds_f32(v31, v46)) + vabds_f32(v44, v53)))) + vabds_f32(v27, v37)))))))))) / 24.0;
}

- (BOOL)pixelIsGhostWithDilationWithDilation:(int)dilation location:(float)location[3][16][4] curGGCoord:(int)coord GGCount:(int)count posInx:
{
  if (coord < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = &(*location)[16 * count][4 * v7];
    if (v6 >= *v8 - dilation)
    {
      v9 = v8[2];
      v10 = v8[3] + dilation;
      v11 = v8[1] - dilation;
      v12 = v6 > v9 + dilation || SHIDWORD(v6) < v11;
      if (!v12 && SHIDWORD(v6) <= v10)
      {
        break;
      }
    }

    if (coord <= ++v7)
    {
      return 0;
    }
  }

  return 1;
}

- (float)gradientWithInput:(id)input width:(int)width height:(int)height fixedPosition:(int)position start:(int)start end:(int)end direction:(int)direction GGCoord:(float)self0[3][16][4] GGCount:(int)self1
{
  inputCopy = input;
  v16 = 0.0;
  if (start <= end)
  {
    v17 = end + 1;
    do
    {
      if (direction)
      {
        positionCopy = start;
      }

      else
      {
        positionCopy = position;
      }

      if (direction)
      {
        startCopy2 = position;
      }

      else
      {
        startCopy2 = start;
      }

      LODWORD(v20) = 2 * positionCopy;
      HIDWORD(v20) = 2 * startCopy2;
      if (![(HWGPUSimBridge *)self pixelIsGhostWithDilationWithDilation:0 location:coord curGGCoord:count GGCount:0 posInx:v20])
      {
        [(HWGPUSimBridge *)self getBlockTexturednessWithPixelMemory:inputCopy x:positionCopy y:startCopy2 width:width height:height];
        if (v21 > v16)
        {
          v16 = v21;
        }
      }

      ++start;
    }

    while (v17 != start);
  }

  return v16;
}

- (void)getWStrongRepairInSpatialUsingBgTexturednessWithInput:(id)input curGGCoord:(float)coord[3][16][4] GGCount:(int)count dilation:(int)dilation gradMax:(int *)max curIdx:(int)idx
{
  HIDWORD(v37) = idx;
  inputCopy = input;
  height = [inputCopy height];
  width = [inputCopy width];
  v16 = (*coord)[idx];
  v17 = v16[3];
  v18 = (*v16 / 2 - dilation) & ~((*v16 / 2 - dilation) >> 31);
  v19 = (v16[1] / 2 - dilation) & ~((v16[1] / 2 - dilation) >> 31);
  v20 = dilation + v16[2] / 2;
  if (width - 1 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = (width - 1);
  }

  v22 = dilation + v17 / 2;
  if (height - 1 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = (height - 1);
  }

  LODWORD(v37) = count;
  LODWORD(v33) = 0;
  [(HWGPUSimBridge *)self gradientWithInput:inputCopy width:width height:height fixedPosition:v18 start:v19 end:v23 direction:v33 GGCoord:coord GGCount:v37];
  v25 = fmaxf(v24, 0.0);
  LODWORD(v38) = count;
  LODWORD(v34) = 0;
  [(HWGPUSimBridge *)self gradientWithInput:inputCopy width:width height:height fixedPosition:v21 start:v19 end:v23 direction:v34 GGCoord:coord GGCount:v38];
  if (v25 < v26)
  {
    v25 = v26;
  }

  v27 = (v21 - 1);
  LODWORD(v39) = count;
  LODWORD(v35) = 1;
  [(HWGPUSimBridge *)self gradientWithInput:inputCopy width:width height:height fixedPosition:v19 start:(v18 + 1) end:v27 direction:v35 GGCoord:coord GGCount:v39];
  if (v25 >= v28)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  LODWORD(v40) = count;
  LODWORD(v36) = 1;
  [(HWGPUSimBridge *)self gradientWithInput:inputCopy width:width height:height fixedPosition:v23 start:(v18 + 1) end:v27 direction:v36 GGCoord:coord GGCount:v40];
  v31 = v30;

  if (v29 >= v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  max[v41] = (v32 * 255.0 * 24.0);
}

- (void)strongSpatialHMEFSWithInputBuf:(__CVBuffer *)buf GGCount:(int)count GGCoord:(float)coord[3][16][4] gradMax:(int *)max
{
  v8 = *&count;
  v11 = (CVPixelBufferGetWidth(buf) / 2);
  Height = CVPixelBufferGetHeight(buf);
  PixelBufferFromInputWithDifferentRes = createPixelBufferFromInputWithDifferentRes(buf, v11, (Height / 2));
  VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buf, PixelBufferFromInputWithDifferentRes);
  v15 = [[PixelMemory alloc] initWithCvPixelBuffer:PixelBufferFromInputWithDifferentRes skipClamp:1 readOnly:0];
  if (v8 >= 1)
  {
    v14 = 0;
    do
    {
      [(HWGPUSimBridge *)self getWStrongRepairInSpatialUsingBgTexturednessWithInput:v15 curGGCoord:coord GGCount:v8 dilation:5 gradMax:max curIdx:v14];
      v14 = (v14 + 1);
    }

    while (v8 != v14);
  }

  CVBufferRelease(PixelBufferFromInputWithDifferentRes);
}

- (float)getWSpatialUsingGhostMotion_HWGPU:(id *)u ref0Meta:(id *)meta ref1Meta:(float)ref1Meta metaTPlusOrMinus1_HW:metaTPlusOrMinus2_HW:lowLight:ghostSize:
{
  v9 = v8;
  v10 = v7;
  v11 = v5;
  v12 = 0.0;
  v13 = fmaxf((ref1Meta + -450.0) / 2150.0, 0.0);
  var1 = u->var1;
  r1 = u->var0;
  v15 = var1;
  v16 = u->var2 - u->var0;
  v17 = v16;
  v18 = u->var3 - var1;
  v19 = v18;
  v20 = v16 * v18;
  v48 = v20;
  v49 = v13;
  if (meta->var0 < 1)
  {
    v23 = 0;
    v28 = 0.0;
    v27 = 0.0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = v20;
    v25 = v6 + 2436;
    p_var5 = &meta->var9[0].var5;
    v27 = 0.0;
    v28 = 0.0;
    do
    {
      v29 = *(p_var5 - 3);
      v30 = *(p_var5 - 2);
      v56.origin.x = v29;
      v56.origin.y = v30;
      v56.size.width = (*(p_var5 - 1) - v29);
      v56.size.height = (*p_var5 - v30);
      v52.origin.x = r1;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = v19;
      v53 = CGRectIntersection(v52, v56);
      v31 = v53.size.height * v53.size.width;
      v32 = v53.size.height * v53.size.width / v24;
      if (v32 > v28)
      {
        v28 = v32;
      }

      if (!CGRectIsNull(v53))
      {
        v33 = v31 * *(v25 + 4 * v22) / v24;
        if (v27 < v33)
        {
          v27 = v31 * *(v25 + 4 * v22) / v24;
        }

        v23 = 1;
      }

      ++v22;
      p_var5 += 8;
    }

    while (v22 < meta->var0);
  }

  v50 = fminf(v49, 1.0);
  if (*v11 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = v48;
    v37 = v10 + 2436;
    v38 = (v11 + 26);
    v12 = 0.0;
    do
    {
      v39 = *(v38 - 3);
      v40 = *(v38 - 2);
      v57.origin.x = v39;
      v57.origin.y = v40;
      v57.size.width = (*(v38 - 1) - v39);
      v57.size.height = (*v38 - v40);
      v54.origin.x = r1;
      v54.origin.y = v15;
      v54.size.width = v17;
      v54.size.height = v19;
      v55 = CGRectIntersection(v54, v57);
      v41 = v55.size.height * v55.size.width;
      v42 = v55.size.height * v55.size.width / v36;
      if (v42 > v12)
      {
        v12 = v42;
      }

      if (!CGRectIsNull(v55))
      {
        v43 = v41 * *(v37 + 4 * v34) / v36;
        if (v27 < v43)
        {
          v27 = v41 * *(v37 + 4 * v34) / v36;
        }

        v35 = 1;
      }

      ++v34;
      v38 += 8;
    }

    while (v34 < *v11);
  }

  if (v50 > 0.5 && v28 <= 0.9 && v12 <= 0.8)
  {
    v27 = (v50 * fminf(fmaxf((v28 + v12) + -0.5, 0.0), 1.0)) / 5.0 + v27;
  }

  v44 = 0.005;
  if (v9)
  {
    v44 = 0.01;
  }

  v45 = v44 + v27;
  if ((v23 & 1) == 0)
  {
    v45 = v27;
  }

  v46 = v44 + v45;
  if ((v35 & 1) == 0)
  {
    v46 = v45;
  }

  return fminf(v46, 1.0);
}

- (float)getDistWithGGCoord:(float)coord[3][16][4] GGCount:(int)count location:(int)location ggIdx:
{
  if (count < 1)
  {
    LODWORD(countCopy3) = 0;
    v6 = 0;
    v13 = 0x7FFFFFFF;
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v6 = 0;
    countCopy = count;
    v8 = &(*coord)[0][2];
    countCopy2 = count;
    do
    {
      v10 = v6;
      v11 = *v8;
      v8 += 4;
      v12 = v11;
      if (v11 >= v6)
      {
        v10 = v12;
      }

      v6 = v10;
      --countCopy2;
    }

    while (countCopy2);
    v13 = 0x7FFFFFFF;
    countCopy3 = count;
    coordCopy = coord;
    do
    {
      v16 = v13;
      v17 = *coordCopy;
      coordCopy = (coordCopy + 16);
      v18 = v17;
      if (v17 <= v13)
      {
        v16 = v18;
      }

      v13 = v16;
      --countCopy3;
    }

    while (countCopy3);
    v19 = &(*coord)[0][3];
    countCopy4 = count;
    do
    {
      v21 = countCopy3;
      v22 = *v19;
      v19 += 4;
      v23 = v22;
      if (v22 >= countCopy3)
      {
        v21 = v23;
      }

      LODWORD(countCopy3) = v21;
      --countCopy4;
    }

    while (countCopy4);
    v24 = &(*coord)[0][1];
    v25 = 0x7FFFFFFF;
    do
    {
      v26 = v25;
      v27 = *v24;
      v24 += 4;
      v28 = v27;
      if (v27 <= v25)
      {
        v26 = v28;
      }

      v25 = v26;
      --countCopy;
    }

    while (countCopy);
  }

  v29 = 255.0;
  if (v5.i32[0] - v6 > 64 || v13 - v5.i32[0] > 64 || v5.i32[1] - countCopy3 > 64 || v25 - v5.i32[1] > 64)
  {
    return v29;
  }

  if (count < 1)
  {
LABEL_35:
    v37 = (*coord)[location];
    v38 = vcvt_s32_f32(*v37);
    v39 = vcvt_s32_f32(v37[1]);
    if (v38.i32[0] <= v5.i32[0] && v5.i32[0] <= v39.i32[0])
    {
      v43 = v5.i32[1] - v39.i32[1];
      if (v5.i32[1] >= v39.i32[1])
      {
        return v43;
      }

      v43 = v38.i32[1] - v5.i32[1];
      if (v38.i32[1] >= v5.i32[1])
      {
        return v43;
      }

      return 255.0;
    }

    v41 = vcgt_s32(v38, v5).i32[1];
    v42 = vcgt_s32(v5, v39).i32[1];
    if ((v41 & 1) == 0 && (v42 & 1) == 0)
    {
      if (v5.i32[0] >= v39.i32[0])
      {
        return (v5.i32[0] - v39.i32[0]);
      }

      v43 = v38.i32[0] - v5.i32[0];
      if (v38.i32[0] >= v5.i32[0])
      {
        return v43;
      }

      return 255.0;
    }

    if (v38.i32[0] <= v5.i32[0] || (v41 & 1) == 0)
    {
      if (((v38.i32[0] > v5.i32[0]) & v42) != 1)
      {
        if (v5.i32[0] <= v39.i32[0] || (v41 & 1) == 0)
        {
          if (((v5.i32[0] > v39.i32[0]) & v42) != 1)
          {
            return 255.0;
          }

          v44 = vcvt_f32_s32(v5);
        }

        else
        {
          v44 = vcvt_f32_s32(v5);
          v39.i32[1] = v38.i32[1];
        }

        v45 = vcvt_f32_s32(v39);
        return vaddv_f32(vabd_f32(v44, v45));
      }

      v44 = vcvt_f32_s32(v5);
      v38.i32[1] = v39.i32[1];
    }

    else
    {
      v44 = vcvt_f32_s32(v5);
    }

    v45 = vcvt_f32_s32(v38);
    return vaddv_f32(vabd_f32(v44, v45));
  }

  v30 = 0;
  while (1)
  {
    v31 = (*coord)[v30];
    if (v5.i32[0] >= *v31)
    {
      v32 = v31[2];
      v33 = v31[3];
      v34 = v31[1];
      v35 = v5.i32[0] > v32 || v5.i32[1] < v34;
      if (!v35 && v5.i32[1] <= v33)
      {
        return 0.0;
      }
    }

    if (count <= ++v30)
    {
      goto LABEL_35;
    }
  }
}

- (float)avgPixelFromPixelMemory:(id)memory locX:(int)x locY:(int)y
{
  v7 = 0;
  v8 = 0;
  if (y <= 0)
  {
    v9 = -(-y & 3);
  }

  else
  {
    v9 = y & 3;
  }

  if (x <= 0)
  {
    v10 = -(-x & 3);
  }

  else
  {
    v10 = x & 3;
  }

  v23 = x - 1;
  for (i = -1; i != 2; ++i)
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = i == -1;
    }

    v13 = v12;
    if (v9 == 3 && i == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = 2;
    v17 = v23;
    do
    {
      if (v10)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16 == 2;
      }

      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = v15;
      }

      v21 = v10 == 3 && v16 == 0;
      if ((v19 & 1) == 0 && !v21)
      {
        v7 += [memory readOneChannelAtX:v17 Y:(i + y) Channel:0];
        ++v8;
      }

      --v16;
      v17 = (v17 + 1);
    }

    while (v16 != -1);
  }

  return v7 / v8;
}

- (void)getWSpatialUsingTempAlignQualityLowLight_HWGPUWithGGCoord:(float)coord[3][16][4] GGCount:(int)count GGCountRef0:(int)ref0 GGCountRef1:(int)ref1 ggIndex:(int)index input:(id)input ref0:(id)a9 ref1:(id)self0 diffMax:(int *)self1
{
  v11 = *&index;
  v12 = *&ref1;
  v13 = *&ref0;
  v14 = *&count;
  inputCopy = input;
  v71 = a9;
  v17 = a10;
  height = [inputCopy height];
  width = [inputCopy width];
  v19 = 0;
  v20.i64[0] = 0x3F0000003F000000;
  v20.i64[1] = 0x3F0000003F000000;
  coordCopy = coord;
  do
  {
    for (i = 0; i != 16; ++i)
    {
      *&(*coordCopy)[i][0] = vmulq_f32(*&(*coordCopy)[i][0], v20);
    }

    ++v19;
    ++coordCopy;
  }

  while (v19 != 3);
  v23 = (*coord)[v11];
  v24 = *v23;
  v25 = v23[3];
  v26 = v23[2];
  if (v24 <= 16)
  {
    v24 = 16;
  }

  if (v23[1] <= 16)
  {
    v27 = 16;
  }

  else
  {
    v27 = v23[1];
  }

  v28 = v26 + 16;
  if (width - 1 < v26 + 16)
  {
    v28 = width - 1;
  }

  v29 = height - 1;
  v30 = v25 + 16;
  if (height - 1 < v30)
  {
    v30 = height - 1;
  }

  v31 = v24 & 0x7FFFFFFC;
  v32 = (v28 + (v28 < 0 ? 3 : 0)) & 0xFFFFFFFC;
  v33 = v30 + 3;
  if (v30 >= 0)
  {
    v33 = v30;
  }

  v69 = v31 - 16;
  v61 = v32;
  if (v31 - 16 <= v32)
  {
    v35 = (v27 & 0x7FFFFFFCu) - 16;
    v36 = v33 & 0xFFFFFFFC;
    v68 = v31 - 17;
    v65 = 0.0;
    v60 = v35;
    v63 = height - 1;
    v64 = height;
    v62 = v33 & 0xFFFFFFFC;
    do
    {
      if (v35 <= v36)
      {
        v37 = v35;
        if (width - 1 >= (v69 | 3))
        {
          v38 = v69 | 3;
        }

        else
        {
          v38 = width - 1;
        }

        do
        {
          v39 = v37 | 3;
          if (v29 < (v37 | 3))
          {
            v39 = v29;
          }

          v70 = v39;
          if (height > v37)
          {
            v40 = 0.0;
            v41 = 0.0;
            v66 = v37;
            v42 = v37;
            do
            {
              LODWORD(v43) = v68;
              if (width > v69)
              {
                do
                {
                  v43 = (v43 + 1);
                  [(HWGPUSimBridge *)self getDistWithGGCoord:coord GGCount:v14 location:v11 ggIdx:?];
                  v45 = v44;
                  if (![(HWGPUSimBridge *)self pixelIsGhostWithDilationWithDilation:2 location:coord curGGCoord:v13 GGCount:1 posInx:COERCE_DOUBLE(__PAIR64__(v42, v43))]&& ![(HWGPUSimBridge *)self pixelIsGhostWithDilationWithDilation:2 location:coord curGGCoord:v12 GGCount:2 posInx:COERCE_DOUBLE(__PAIR64__(v42, v43))]&& v45 <= 16.0 && v45 >= 8.0)
                  {
                    [(HWGPUSimBridge *)self avgPixelFromPixelMemory:v71 locX:v43 locY:v42];
                    v48 = v47 / 255.0;
                    [(HWGPUSimBridge *)self avgPixelFromPixelMemory:v17 locX:v43 locY:v42];
                    v50 = v49 / 255.0;
                    [(HWGPUSimBridge *)self avgPixelFromPixelMemory:inputCopy locX:v43 locY:v42];
                    v52 = v51 / 255.0;
                    v53 = vabds_f32(v52, v48);
                    v54 = vabds_f32(v52, v50);
                    if (v53 < v54)
                    {
                      v54 = v53;
                    }

                    v55 = (1.0 - fminf(fmaxf(v45 * 0.03125, 0.0), 1.0)) * v54;
                    v40 = v40 + v55;
                    v41 = v41 + 1.0;
                  }
                }

                while (v43 < v38);
              }

              v56 = v42 < v70;
              v42 = (v42 + 1);
            }

            while (v56);
            if (v41 >= 8.0)
            {
              v57 = v65;
              if (v65 < (v40 / v41))
              {
                v57 = v40 / v41;
              }

              v65 = v57;
            }

            v29 = v63;
            height = v64;
            v36 = v62;
            LODWORD(v37) = v66;
          }

          v37 = (v37 + 4);
        }

        while (v37 <= v36);
      }

      v68 += 4;
      v69 += 4;
      v35 = v60;
    }

    while (v69 <= v61);
    v34 = (v65 * 1024.0 * 255.0);
  }

  else
  {
    v34 = 0;
  }

  for (j = 0; j != 3; ++j)
  {
    for (k = 0; k != 16; ++k)
    {
      *&(*coord)[k][0] = vaddq_f32(*&(*coord)[k][0], *&(*coord)[k][0]);
    }

    ++coord;
  }

  printf("BBox[%d]: GPU diffMax:%d\n", v11, v34);
  max[v11] = v34;
}

- (void)setWSpatialWithGGCoord:(float)coord[3][16][4] GGCount:(int)count GGCountRef0:(int)ref0 GGCountRef1:(int)ref1 downscaledInputY:(__CVBuffer *)y downscaledwarpedRef0Y:(__CVBuffer *)ref0Y downscaledwarpedRef1Y:(__CVBuffer *)ref1Y diffMax:(int *)self0
{
  v11 = *&ref1;
  v12 = *&ref0;
  v13 = *&count;
  v19 = [[PixelMemory alloc] initWithCvPixelBuffer:y skipClamp:1 readOnly:0];
  v16 = [[PixelMemory alloc] initWithCvPixelBuffer:ref0Y skipClamp:1 readOnly:0];
  v17 = [[PixelMemory alloc] initWithCvPixelBuffer:ref1Y skipClamp:1 readOnly:0];
  if (v13 >= 1)
  {
    v18 = 0;
    do
    {
      [(HWGPUSimBridge *)self getWSpatialUsingTempAlignQualityLowLight_HWGPUWithGGCoord:coord GGCount:v13 GGCountRef0:v12 GGCountRef1:v11 ggIndex:v18 input:v19 ref0:v16 ref1:v17 diffMax:max];
      v18 = (v18 + 1);
    }

    while (v13 != v18);
  }
}

- (void)spatialHMERCWithInputBuf:(double)buf ref0Buf:(double)ref0Buf ref1Buf:(double)ref1Buf GGCount:(double)count GGCountRef0:(double)ref0 GGCountRef1:(uint64_t)ref1 GGCoord:(__CVBuffer *)coord hmgrphy0:(uint64_t)self0 hmgrphy1:(uint64_t)self1 diffMax:(unsigned int)self2
{
  v20 = (CVPixelBufferGetWidth(coord) / 2);
  v21 = (CVPixelBufferGetHeight(coord) / 2);
  PixelBufferFromInputWithDifferentRes = createPixelBufferFromInputWithDifferentRes(coord, v20, v21);
  [self resizeInputBuffer:coord outputBuffer:PixelBufferFromInputWithDifferentRes];
  PixelBufferFromInput = createPixelBufferFromInput(hmgrphy0);
  [self[1] backWarpYUV:hmgrphy0 warped:PixelBufferFromInput withHomography:0 waitForComplete:{a2, buf, ref0Buf}];
  v24 = createPixelBufferFromInputWithDifferentRes(coord, v20, v21);
  [self resizeInputBuffer:PixelBufferFromInput outputBuffer:v24];
  v25 = createPixelBufferFromInput(hmgrphy1);
  [self[1] backWarpYUV:hmgrphy1 warped:v25 withHomography:0 waitForComplete:{ref1Buf, count, ref0}];
  v26 = createPixelBufferFromInputWithDifferentRes(coord, v20, v21);
  [self resizeInputBuffer:v25 outputBuffer:v26];
  PixelBufferFromInputWithDifferentFormat = createPixelBufferFromInputWithDifferentFormat(PixelBufferFromInputWithDifferentRes, v20, v21, 1278226488);
  v28 = createPixelBufferFromInputWithDifferentFormat(v24, v20, v21, 1278226488);
  v29 = createPixelBufferFromInputWithDifferentFormat(v26, v20, v21, 1278226488);
  [self[1] convertYUV2Gray:PixelBufferFromInputWithDifferentRes gray:PixelBufferFromInputWithDifferentFormat waitForComplete:1];
  [self[1] convertYUV2Gray:v24 gray:v28 waitForComplete:1];
  [self[1] convertYUV2Gray:v26 gray:v29 waitForComplete:1];
  [self setWSpatialWithGGCoord:a15 GGCount:max GGCountRef0:a13 GGCountRef1:a14 downscaledInputY:PixelBufferFromInputWithDifferentFormat downscaledwarpedRef0Y:v28 downscaledwarpedRef1Y:v29 diffMax:a16];
  CVBufferRelease(PixelBufferFromInputWithDifferentRes);
  CVBufferRelease(PixelBufferFromInput);
  CVBufferRelease(v24);
  CVBufferRelease(v25);
  CVBufferRelease(v26);
  CVBufferRelease(PixelBufferFromInputWithDifferentFormat);
  CVBufferRelease(v28);

  CVBufferRelease(v29);
}

- (void)hwStatisticsFromVT:(__n128)t homography1:(__n128)homography1 BBoxCur:(__n128)cur warpedBBox0:(__n128)box0 warpedMeta1:(__n128)meta1 inputBuf:(uint64_t)buf ref0Buf:(void *)ref0Buf ref1Buf:(void *)self0 borderPixels:(void *)self1 outputStruct:(uint64_t)self2
{
  v41 = a16;
  v22 = [ref0Buf count];
  v23 = [ref1Buf count];
  v24 = [pixels count];
  HomographyToBuffer(v52, a2, t, homography1, cur, box0, meta1);
  BoundingBoxToBuffer(ref0Buf, ref1Buf, pixels, v51);
  v50 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  v25 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  v40 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  v26 = objc_alloc_init(NSMutableArray);
  v47 = v25;
  [self strongSpatialHMEFSWithInputBuf:struct GGCount:v22 GGCoord:v51 gradMax:v25];
  if (self[14] > 1)
  {
    [self spatialHMERCWithInputBuf:struct ref0Buf:a13 ref1Buf:a14 GGCount:v22 GGCountRef0:v23 GGCountRef1:v24 GGCoord:a2.n128_f64[0] hmgrphy0:t.n128_f64[0] hmgrphy1:homography1.n128_f64[0] diffMax:{cur.n128_f64[0], box0.n128_f64[0], meta1.n128_f64[0], v51, v50}];
  }

  selfCopy = self;
  if (v22 >= 1)
  {
    v27 = 0;
    v28 = v22 & 0x7FFFFFFF;
    v29 = v25;
    do
    {
      printf("BBox[%d]: GradMax: %d\n", v27, *(v25 + v27));
      ++v27;
    }

    while (v28 != v27);
    v30 = 0;
    do
    {
      if (selfCopy[14] >= 2)
      {
        printf("BBox[%d]: diffMax:%d\n", v30, v50[v30]);
      }

      ++v30;
    }

    while (v28 != v30);
    v31 = kVTDeghostingBoundingBoxStatisticsKey_MaximumGradient;
    v32 = kVTDeghostingBoundingBoxStatisticsKey_MaximumTemporalDifference;
    v33 = v50;
    do
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = *v29++;
      v36 = [NSNumber numberWithInt:v35];
      [v34 setValue:v36 forKey:v31];

      v37 = *v33++;
      v38 = [NSNumber numberWithInt:v37];
      [v34 setValue:v38 forKey:v32];

      [v26 addObject:v34];
      --v28;
    }

    while (v28);
  }

  (*(v41 + 2))(v41, 0, 0, 0, v26);
  ++selfCopy[14];
  free(v50);
  free(v47);
  free(v40);
}

- (void)hwMitigationFromVT:(double)t homography1:(double)homography1 BBoxCur:(double)cur warpedBBox0:(double)box0 warpedMeta1:(double)meta1 inputBuf:(uint64_t)buf ref0Buf:(void *)ref0Buf ref1Buf:(uint64_t)self0 borderPixels:(uint64_t)self1 outputBuf:(__CVBuffer *)self2 boundingBoxWeights:(uint64_t)self3 outputStruct:(uint64_t)self4
{
  v75 = a18;
  v22 = [NSMutableData dataWithLength:10192];
  getDevice = [*(self + 8) getDevice];
  v73 = [getDevice newBufferWithBytesNoCopy:objc_msgSend(v22 length:"mutableBytes") options:10192 deallocator:{0, 0}];

  v74 = v22;
  mutableBytes = [v22 mutableBytes];
  bzero(mutableBytes, 0x27D0uLL);
  *mutableBytes = [ref0Buf count];
  ref0BufCopy = ref0Buf;
  if (*mutableBytes < 1)
  {
    *&v27 = vneg_f32(0x80000000800000);
    *&v26 = 0;
  }

  else
  {
    v28 = 0;
    *&v27 = vneg_f32(0x80000000800000);
    v29 = (mutableBytes + 32);
    *&v26 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *buffer = _Q0;
    do
    {
      v79 = v26;
      v81 = v27;
      memset(&rect, 0, sizeof(rect));
      v35 = [ref0BufCopy objectAtIndexedSubscript:v28];
      CGRectMakeWithDictionaryRepresentation(v35, &rect);

      *(&v27 + 1) = *(&v81 + 1);
      size = rect.size;
      v37 = vcvt_f32_f64(rect.origin);
      v38 = vaddq_f64(rect.origin, rect.size);
      v39 = vcvt_f32_f64(v38);
      *&v27 = vbsl_s8(vcgt_f32(*&v81, v37), v37, *&v81);
      *v29[-3].f32 = vcvt_hight_f32_f64(v37, v38);
      *(&v26 + 1) = *(&v79 + 1);
      v29[-1] = vmul_f32(vcvt_f32_s32(vadd_s32(vcvt_s32_f32(v39), vcvt_s32_f32(v37))), 0x3F0000003F000000);
      *v29 = vcvt_f32_f64(vmulq_f64(size, *buffer));
      *&v26 = vbsl_s8(vcgt_f32(v39, *&v79), v39, *&v79);
      ++v28;
      v29 += 4;
    }

    while (v28 < *mutableBytes);
  }

  v80 = ref0BufCopy;
  v40.i64[0] = v27;
  v40.i64[1] = v26;
  *(mutableBytes + 4) = vuzp1q_s32(v40, vrev64q_s32(v40));
  v41 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v27), vdupq_n_s64(0xC050000000000000)), 0)));
  *(mutableBytes + 3) = vcvt_u32_f32(vsub_f32(*&v26, *&v27));
  *(mutableBytes + 4) = *&vsra_n_u32(v41, vcltz_s32(v41), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
  v42 = a17;
  if (*mutableBytes >= 1)
  {
    buffera = struct;
    outputBufCopy = outputBuf;
    v43 = 0;
    v44 = kVTDeghostingBoundingBoxRepairOptionKey_SpatioTemporalFilterWeight;
    v45 = kVTDeghostingBoundingBoxRepairOptionKey_SpatialFilterWeight;
    v46 = (mutableBytes + 2772);
    v47 = mutableBytes + 2772;
    do
    {
      v48 = [(__CFArray *)v42 objectAtIndexedSubscript:v43];
      v49 = [v48 objectForKeyedSubscript:v44];
      [v49 floatValue];
      v51 = v50;

      *(v47 + 896) = 1.0 - v51;
      v52 = [(__CFArray *)v42 objectAtIndexedSubscript:v43];
      v53 = [v52 objectForKeyedSubscript:v45];
      [v53 floatValue];
      *v47 = v54;
      v47 += 2;

      ++v43;
      v55 = *mutableBytes;
    }

    while (v43 < v55);
    outputBuf = outputBufCopy;
    struct = buffera;
    if (v55 >= 1)
    {
      v56 = 0;
      do
      {
        printf("Main frame #: %d SPA_HW: %.4f, Orig: %.4f \n", *(self + 56), *v46, v46[896]);
        ++v56;
        ++v46;
      }

      while (v56 < *mutableBytes);
    }
  }

  v57 = createSingleCachedTextureFromPixelBuffer(outputBuf, [*(self + 8) cvMetalTextureCacheRef], *(self + 16), 0, 0);
  v83 = createSingleCachedTextureFromPixelBuffer(weights, [*(self + 8) cvMetalTextureCacheRef], *(self + 16), 0, 0);
  v58 = createSingleCachedTextureFromPixelBuffer(struct, [*(self + 8) cvMetalTextureCacheRef], *(self + 16), 0, 0);
  Width = CVPixelBufferGetWidth(outputBuf);
  Height = CVPixelBufferGetHeight(outputBuf);
  bufferb = createPixelBufferWithDifferentFormat(Width, Height, 645428784);
  v61 = createSingleTextureFromYuvBuffer(bufferb, *(self + 16), 0, 0);
  PixelBufferWithDifferentFormat = createPixelBufferWithDifferentFormat(Width, Height, 645428784);
  v63 = createSingleTextureFromYuvBuffer(PixelBufferWithDifferentFormat, *(self + 16), 0, 0);
  commandBuffer = [*(self + 32) commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [*(self + 8) encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:computeCommandEncoder input:v57 frRef0:v83 frRef1:v58 hmgrphy0:v61 hmgrphy1:v63 temporalOutput:a2 inputCopy:t metaBuf:{homography1, cur, box0, meta1, v73}];
  [*(self + 8) encodeHwSimFuseYUVToCommandEncoder:computeCommandEncoder input:v63 temporalMit:v61 output:v57 metaBuf:v73];
  [computeCommandEncoder endEncoding];
  [self _commitCmdBuffer:commandBuffer waitForComplete:1];
  (*(v75 + 2))(v75, 0, 0, 0);
  ++*(self + 56);
  CVBufferRelease(bufferb);
  CVBufferRelease(PixelBufferWithDifferentFormat);
}

@end