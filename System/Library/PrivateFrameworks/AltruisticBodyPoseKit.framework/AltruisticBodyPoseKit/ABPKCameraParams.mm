@interface ABPKCameraParams
- (ABPKCameraParams)initWithDictionary:(id)dictionary;
- (ABPKCameraParams)initWithIntrinsics:(__n128)intrinsics andExtrinsics:(__n128)extrinsics andDistortion:(__n128)distortion;
- (ABPKCameraParams)initWithIntrinsics:(__n128)intrinsics andExtrinsics:(__n128)extrinsics andDistortion:(__n128)distortion andInputResolution:(__n128)resolution;
- (CGSize)inputRes;
- (id)toDict;
- (uint64_t)isMatrixIdentity:(int8x16_t)identity;
- (void)checkAndSetApproximateIntrinsics;
- (void)setExtrinsics:(__n128)extrinsics;
- (void)setIntrinsics:(__n128)intrinsics;
@end

@implementation ABPKCameraParams

- (uint64_t)isMatrixIdentity:(int8x16_t)identity
{
  self.i32[3] = a2.i32[0];
  v3 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_f32(self, xmmword_23EE28180), vceqq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), identity, 8uLL), xmmword_23EE28180))));
  v3.i8[0] = vmaxv_u8(v3);
  return (*&identity.i32[2] == 1.0) & ~v3.i32[0];
}

- (void)checkAndSetApproximateIntrinsics
{
  v3 = [(ABPKCameraParams *)self isMatrixIdentity:*self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32]];
  if (v3)
  {
    inputRes = self->_inputRes;
    *&v5 = vmuld_lane_f64(1462.18103, inputRes, 1) / 1920.0;
    LODWORD(v6) = 0;
    v7 = v5;
    HIDWORD(v6) = v5;
    __asm { FMOV            V1.2D, #0.5 }

    *&self->_anon_40[8] = 0;
    *self->_anon_40 = v7;
    *&self->_anon_40[24] = 0;
    *&self->_anon_40[16] = v6;
    *&self->_anon_40[40] = 1065353216;
    *&self->_anon_40[32] = vcvt_f32_f64(vmulq_f64(inputRes, _Q1));
    v13 = __ABPKLogSharedInstance(v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Input intrinsics is identity. Approximate intrinsics: ", v15, 2u);
    }

    printSimd3x3(v14, *self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32]);
  }
}

- (ABPKCameraParams)initWithIntrinsics:(__n128)intrinsics andExtrinsics:(__n128)extrinsics andDistortion:(__n128)distortion
{
  v20.receiver = self;
  v20.super_class = ABPKCameraParams;
  v9 = [(ABPKCameraParams *)&v20 init];
  v10 = v9;
  if (v9)
  {
    *v9->_anon_40 = a2;
    *&v9->_anon_40[16] = intrinsics;
    *&v9->_anon_40[32] = extrinsics;
    *&v9[1].super.isa = distortion;
    *&v9[1]._deviceType = a6;
    *v9[1]._distortion = a7;
    v9[1]._inputRes = a8;
    *v9->_distortion = a9;
    v9->_isImageRectified = 0;
    v9->_deviceOrientation = 3;
    [(ABPKCameraParams *)v9 checkAndSetApproximateIntrinsics];
  }

  return v10;
}

- (ABPKCameraParams)initWithIntrinsics:(__n128)intrinsics andExtrinsics:(__n128)extrinsics andDistortion:(__n128)distortion andInputResolution:(__n128)resolution
{
  v22.receiver = self;
  v22.super_class = ABPKCameraParams;
  v11 = [(ABPKCameraParams *)&v22 init];
  v12 = v11;
  if (v11)
  {
    *v11->_anon_40 = a2;
    *&v11->_anon_40[16] = intrinsics;
    *&v11->_anon_40[32] = extrinsics;
    *&v11[1].super.isa = distortion;
    *&v11[1]._deviceType = resolution;
    *v11[1]._distortion = a7;
    v11[1]._inputRes = a8;
    *v11->_distortion = a9;
    v11->_inputRes.width = a10;
    v11->_inputRes.height = a11;
    v11->_isImageRectified = 0;
    v11->_deviceOrientation = 3;
    [(ABPKCameraParams *)v11 checkAndSetApproximateIntrinsics];
  }

  return v12;
}

- (ABPKCameraParams)initWithDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = ABPKCameraParams;
  v5 = [(ABPKCameraParams *)&v46 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"intrinsics"];
  v7 = convertNSArrayToSimd3x3(v6);
  *&v5->_anon_40[8] = v7.n128_u32[2];
  *&v5->_anon_40[24] = v8;
  *v5->_anon_40 = v7.n128_u64[0];
  *&v5->_anon_40[16] = v9;
  *&v5->_anon_40[40] = v10;
  *&v5->_anon_40[32] = v11;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"distortion"];
  *v5->_distortion = convertNSArrayToSimd4(v12);

  v13 = [dictionaryCopy objectForKeyedSubscript:@"resolution"];
  v14 = [v13 objectAtIndexedSubscript:0];
  integerValue = [v14 integerValue];
  v16 = [dictionaryCopy objectForKeyedSubscript:@"resolution"];
  v17 = [v16 objectAtIndexedSubscript:1];
  integerValue2 = [v17 integerValue];
  v5->_inputRes.width = integerValue;
  v5->_inputRes.height = integerValue2;

  v19 = [dictionaryCopy objectForKeyedSubscript:@"extrinsics"];
  *&v5[1].super.isa = convertNSMatToSimd4x4(v19);
  *&v5[1]._deviceType = v20;
  *v5[1]._distortion = v21;
  v5[1]._inputRes = v22;

  v23 = [dictionaryCopy objectForKeyedSubscript:@"is_image_rectified"];
  LOBYTE(integerValue) = v23 == 0;

  if (integerValue)
  {
    v5->_isImageRectified = 0;
    v27 = __ABPKLogSharedInstance(v24);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v29 = " Image rectification type not specified. Setting Default to fisheye distortion ";
    v30 = v27;
    v31 = 2;
  }

  else
  {
    v25 = [dictionaryCopy objectForKeyedSubscript:@"is_image_rectified"];
    v5->_isImageRectified = [v25 BOOLValue];

    v27 = __ABPKLogSharedInstance(v26);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    isImageRectified = v5->_isImageRectified;
    *buf = 67109120;
    v48 = isImageRectified;
    v29 = " Recorded data is rectified: %d ";
    v30 = v27;
    v31 = 8;
  }

  _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_DEBUG, v29, buf, v31);
LABEL_8:

  v32 = [dictionaryCopy objectForKeyedSubscript:@"device_orientation"];
  v33 = v32 == 0;

  if (v33)
  {
    v5->_deviceOrientation = 3;
    v38 = __ABPKLogSharedInstance(v34);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v39 = " Device orientation not specified. Setting Default to landscape ";
      goto LABEL_17;
    }

LABEL_18:

    [(ABPKCameraParams *)v5 checkAndSetApproximateIntrinsics];
LABEL_19:
    v43 = v5;
    goto LABEL_20;
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:@"device_orientation"];
  v36 = [v35 isEqualToString:@"landscape"];

  if (v36)
  {
    v5->_deviceOrientation = 3;
    v38 = __ABPKLogSharedInstance(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v39 = " Recorded sequence with landscape orientation ";
LABEL_17:
      _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, v39, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v40 = [dictionaryCopy objectForKeyedSubscript:@"device_orientation"];
  v41 = [v40 isEqualToString:@"portrait"];

  if (v41)
  {
    v5->_deviceOrientation = 1;
    v38 = __ABPKLogSharedInstance(v42);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v39 = " Recorded sequence with portrait orientation ";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v45 = __ABPKLogSharedInstance(v42);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_ERROR, " Invalid device orientation type specified. Exit ", buf, 2u);
  }

  v43 = 0;
LABEL_20:

  return v43;
}

- (id)toDict
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ABPKCameraParams *)self intrinsics];
  v7 = simdMatrix3x3ToNSMat(v4, v5, v6);
  [v3 setObject:v7 forKey:@"intrinsics"];

  [(ABPKCameraParams *)self extrinsics];
  v12 = simdMatrix4x4ToNSMat(v8, v9, v10, v11);
  [v3 setObject:v12 forKey:@"extrinsics"];

  [(ABPKCameraParams *)self distortion];
  v14 = simdFloat4ToNSArray(v13);
  [v3 setObject:v14 forKey:@"distortion"];

  v15 = MEMORY[0x277CCABB0];
  [(ABPKCameraParams *)self inputRes];
  v17 = [v15 numberWithDouble:v16];
  v24[0] = v17;
  v18 = MEMORY[0x277CCABB0];
  [(ABPKCameraParams *)self inputRes];
  v19 = [v18 numberWithDouble:?];
  v24[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v3 setObject:v20 forKey:@"resolution"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[ABPKCameraParams isImageRectified](self, "isImageRectified")}];
  [v3 setObject:v21 forKey:@"is_image_rectified"];

  if ([(ABPKCameraParams *)self deviceOrientation]== 3)
  {
    v22 = @"landscape";
  }

  else if ([(ABPKCameraParams *)self deviceOrientation]== 1)
  {
    v22 = @"portrait";
  }

  else
  {
    v22 = @"invalid";
  }

  [v3 setObject:v22 forKey:@"device_orientation"];

  return v3;
}

- (void)setIntrinsics:(__n128)intrinsics
{
  v4[0] = a2;
  v4[1] = intrinsics;
  v4[2] = a4;
  objc_copyStruct((self + 64), v4, 48, 1, 0);
}

- (void)setExtrinsics:(__n128)extrinsics
{
  v5[0] = a2;
  v5[1] = extrinsics;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 112), v5, 64, 1, 0);
}

- (CGSize)inputRes
{
  objc_copyStruct(v4, &self->_inputRes, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end