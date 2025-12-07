@interface CVACMMotionData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMMotionData)init;
- (CVACMMotionData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMMotionData

+ (id)classes
{
  if (qword_27E3C85D8 == -1)
  {
    v3 = qword_27E3C85D0;
  }

  else
  {
    sub_24019CBC8();
    v3 = qword_27E3C85D0;
  }

  return v3;
}

- (CVACMMotionData)init
{
  v10.receiver = self;
  v10.super_class = CVACMMotionData;
  v2 = [(CVACMMotionData *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    quaternion = v2->_quaternion;
    v2->_quaternion = v3;

    v5 = objc_opt_new();
    acceleration = v2->_acceleration;
    v2->_acceleration = v5;

    v7 = objc_opt_new();
    rotationRate = v2->_rotationRate;
    v2->_rotationRate = v7;
  }

  return v2;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMMotionData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CVACMMotionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVACMMotionData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [coderCopy decodeDoubleForKey:@"qx"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setX:?];
    [coderCopy decodeDoubleForKey:@"qy"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setY:?];
    [coderCopy decodeDoubleForKey:@"qz"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setZ:?];
    [coderCopy decodeDoubleForKey:@"qw"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setW:?];
    [coderCopy decodeFloatForKey:@"ax"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setX:?];
    [coderCopy decodeFloatForKey:@"ay"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setY:?];
    [coderCopy decodeFloatForKey:@"az"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setZ:?];
    [coderCopy decodeFloatForKey:@"rx"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setX:?];
    [coderCopy decodeFloatForKey:@"ry"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setY:?];
    [coderCopy decodeFloatForKey:@"rz"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setZ:?];
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    v5->_sequenceNumber = [coderCopy decodeInt64ForKey:@"sn"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  [coderCopy encodeDouble:@"qx" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  [coderCopy encodeDouble:@"qy" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  [coderCopy encodeDouble:@"qz" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  [coderCopy encodeDouble:@"qw" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration x];
  [coderCopy encodeFloat:@"ax" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration y];
  [coderCopy encodeFloat:@"ay" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration z];
  [coderCopy encodeFloat:@"az" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  [coderCopy encodeFloat:@"rx" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  [coderCopy encodeFloat:@"ry" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  [coderCopy encodeFloat:@"rz" forKey:?];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_sequenceNumber forKey:@"sn"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v30[14] = *MEMORY[0x277D85DE8];
  v29[0] = @"qx";
  v3 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  v28 = [v3 numberWithDouble:?];
  v30[0] = v28;
  v29[1] = @"qy";
  v4 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  v27 = [v4 numberWithDouble:?];
  v30[1] = v27;
  v29[2] = @"qz";
  v5 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  v26 = [v5 numberWithDouble:?];
  v30[2] = v26;
  v29[3] = @"qw";
  v6 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  v25 = [v6 numberWithDouble:?];
  v30[3] = v25;
  v29[4] = @"ax";
  v7 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration x];
  v24 = [v7 numberWithFloat:?];
  v30[4] = v24;
  v29[5] = @"ay";
  v8 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration y];
  v9 = [v8 numberWithFloat:?];
  v30[5] = v9;
  v29[6] = @"az";
  v10 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration z];
  v11 = [v10 numberWithFloat:?];
  v30[6] = v11;
  v29[7] = @"rx";
  v12 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  v13 = [v12 numberWithFloat:?];
  v30[7] = v13;
  v29[8] = @"ry";
  v14 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  v15 = [v14 numberWithFloat:?];
  v30[8] = v15;
  v29[9] = @"rz";
  v16 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  v17 = [v16 numberWithFloat:?];
  v30[9] = v17;
  v29[10] = @"t";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v30[10] = v18;
  v29[11] = @"st";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v30[11] = v19;
  v29[12] = @"sn";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
  v30[12] = v20;
  v29[13] = @"fi";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v30[13] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:14];

  return v22;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end