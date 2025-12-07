@interface CVACMMotionTypeDeviceMotionData
- (CVACMMotionTypeDeviceMotionData)init;
- (CVACMMotionTypeDeviceMotionData)initWithFastPathData:(id)data;
- (id)debugDescription;
- (id)dictionary;
@end

@implementation CVACMMotionTypeDeviceMotionData

- (CVACMMotionTypeDeviceMotionData)init
{
  v14.receiver = self;
  v14.super_class = CVACMMotionTypeDeviceMotionData;
  v2 = [(CVACMMotionTypeDeviceMotionData *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    quaternion = v2->_quaternion;
    v2->_quaternion = v3;

    v5 = objc_opt_new();
    userAcceleration = v2->_userAcceleration;
    v2->_userAcceleration = v5;

    v7 = objc_opt_new();
    gravity = v2->_gravity;
    v2->_gravity = v7;

    v9 = objc_opt_new();
    rotationRate = v2->_rotationRate;
    v2->_rotationRate = v9;

    v11 = objc_opt_new();
    magneticField = v2->_magneticField;
    v2->_magneticField = v11;
  }

  return v2;
}

- (CVACMMotionTypeDeviceMotionData)initWithFastPathData:(id)data
{
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = CVACMMotionTypeDeviceMotionData;
  v5 = [(CVACMMotionTypeDeviceMotionData *)&v21 init];
  if (v5)
  {
    bytes = [dataCopy bytes];
    if (*bytes != 3)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v7 = bytes;
    v8 = [[CVACLMotionTypeDoubleVector4 alloc] initWithFastPathXYZWDataV3:*(v7 + 15), *(v7 + 16), *(v7 + 17), *(v7 + 18)];
    quaternion = v5->_quaternion;
    v5->_quaternion = v8;

    v10 = [[CVACLMotionTypeVector3 alloc] initWithFastPathXYZDataV3:*(v7 + 25), *(v7 + 26), *(v7 + 27)];
    userAcceleration = v5->_userAcceleration;
    v5->_userAcceleration = v10;

    v12 = [[CVACLMotionTypeVector3 alloc] initWithFastPathXYZDataV3:*(v7 + 22), *(v7 + 23), *(v7 + 24)];
    gravity = v5->_gravity;
    v5->_gravity = v12;

    v14 = [[CVACLMotionTypeVector3 alloc] initWithFastPathXYZDataV3:*(v7 + 19), *(v7 + 20), *(v7 + 21)];
    rotationRate = v5->_rotationRate;
    v5->_rotationRate = v14;

    v16 = [[CVACLMotionTypeVector3 alloc] initWithFastPathXYZDataV3:*(v7 + 28), *(v7 + 29), *(v7 + 30)];
    magneticField = v5->_magneticField;
    v5->_magneticField = v16;

    v5->_magneticFieldCalibrationLevel = *(v7 + 69);
    v18 = *(v7 + 272);
    v5->_doingYawCorrection = (v18 & 2) != 0;
    v5->_doingBiasEstimation = (v18 & 4) != 0;
    v5->_fusedWithVision = (v18 & 8) != 0;
  }

  v19 = v5;
LABEL_6:

  return v19;
}

- (id)dictionary
{
  v42[20] = *MEMORY[0x277D85DE8];
  v41[0] = @"qx";
  v3 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  v40 = [v3 numberWithDouble:?];
  v42[0] = v40;
  v41[1] = @"qy";
  v4 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  v39 = [v4 numberWithDouble:?];
  v42[1] = v39;
  v41[2] = @"qz";
  v5 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  v38 = [v5 numberWithDouble:?];
  v42[2] = v38;
  v41[3] = @"qw";
  v6 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  v37 = [v6 numberWithDouble:?];
  v42[3] = v37;
  v41[4] = @"ax";
  v7 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_userAcceleration x];
  v36 = [v7 numberWithFloat:?];
  v42[4] = v36;
  v41[5] = @"ay";
  v8 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_userAcceleration y];
  v35 = [v8 numberWithFloat:?];
  v42[5] = v35;
  v41[6] = @"az";
  v9 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_userAcceleration z];
  v34 = [v9 numberWithFloat:?];
  v42[6] = v34;
  v41[7] = @"gx";
  v10 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_gravity x];
  v33 = [v10 numberWithFloat:?];
  v42[7] = v33;
  v41[8] = @"gy";
  v11 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_gravity y];
  v32 = [v11 numberWithFloat:?];
  v42[8] = v32;
  v41[9] = @"gz";
  v12 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_gravity z];
  v31 = [v12 numberWithFloat:?];
  v42[9] = v31;
  v41[10] = @"rx";
  v13 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  v30 = [v13 numberWithFloat:?];
  v42[10] = v30;
  v41[11] = @"ry";
  v14 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  v15 = [v14 numberWithFloat:?];
  v42[11] = v15;
  v41[12] = @"rz";
  v16 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  v17 = [v16 numberWithFloat:?];
  v42[12] = v17;
  v41[13] = @"mx";
  v18 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_magneticField x];
  v19 = [v18 numberWithFloat:?];
  v42[13] = v19;
  v41[14] = @"my";
  v20 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_magneticField y];
  v21 = [v20 numberWithFloat:?];
  v42[14] = v21;
  v41[15] = @"mz";
  v22 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_magneticField z];
  v23 = [v22 numberWithFloat:?];
  v42[15] = v23;
  v41[16] = @"mc";
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_magneticFieldCalibrationLevel];
  v42[16] = v24;
  v41[17] = @"yc";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_doingYawCorrection];
  v42[17] = v25;
  v41[18] = @"be";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_doingBiasEstimation];
  v42[18] = v26;
  v41[19] = @"fv";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_fusedWithVision];
  v42[19] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:20];

  return v28;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMMotionTypeDeviceMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end