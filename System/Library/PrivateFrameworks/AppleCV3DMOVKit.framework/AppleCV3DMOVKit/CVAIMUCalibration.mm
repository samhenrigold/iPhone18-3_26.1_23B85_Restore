@interface CVAIMUCalibration
+ (id)classes;
+ (id)withData:(id)data;
- (CVAIMUCalibration)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVAIMUCalibration

+ (id)classes
{
  if (qword_27E3C8568 == -1)
  {
    v3 = qword_27E3C8560;
  }

  else
  {
    sub_24019CB3C();
    v3 = qword_27E3C8560;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVAIMUCalibration classes];
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

- (CVAIMUCalibration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CVAIMUCalibration;
  v5 = [(CVAIMUCalibration *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"nc"];
    noiseCharacteristics = v5->_noiseCharacteristics;
    v5->_noiseCharacteristics = v7;

    v9 = [coderCopy decodeObjectForKey:@"gr"];
    gravity = v5->_gravity;
    v5->_gravity = v9;

    [coderCopy decodeDoubleForKey:@"atc"];
    v5->_accelTimestampCorrection = v11;
    v12 = [coderCopy decodeObjectForKey:@"ac"];
    accelConversion = v5->_accelConversion;
    v5->_accelConversion = v12;

    v14 = [coderCopy decodeObjectForKey:@"gc"];
    gyroConversion = v5->_gyroConversion;
    v5->_gyroConversion = v14;

    v16 = [coderCopy decodeObjectForKey:@"r"];
    imuToIMURotation = v5->_imuToIMURotation;
    v5->_imuToIMURotation = v16;

    v18 = [coderCopy decodeObjectForKey:@"t"];
    imuToIMUTranslation = v5->_imuToIMUTranslation;
    v5->_imuToIMUTranslation = v18;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_noiseCharacteristics forKey:@"nc"];
  [coderCopy encodeObject:self->_gravity forKey:@"gr"];
  [coderCopy encodeDouble:@"atc" forKey:self->_accelTimestampCorrection];
  [coderCopy encodeObject:self->_accelConversion forKey:@"ac"];
  [coderCopy encodeObject:self->_gyroConversion forKey:@"gc"];
  [coderCopy encodeObject:self->_imuToIMURotation forKey:@"r"];
  [coderCopy encodeObject:self->_imuToIMUTranslation forKey:@"t"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = @"nc";
  v9[1] = @"gr";
  v8 = vdupq_n_s64(MEMORY[0x277CBEBF8]);
  v10 = vbslq_s8(vceqzq_s64(*&self->_noiseCharacteristics), v8, *&self->_noiseCharacteristics);
  v9[2] = @"atc";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_accelTimestampCorrection];
  v4 = *&self->_imuToIMURotation;
  v5 = vbslq_s8(vceqzq_s64(*&self->_accelConversion), v8, *&self->_accelConversion);
  v11 = v3;
  v9[3] = @"ac";
  v9[4] = @"gc";
  v12 = v5;
  v9[5] = @"r";
  v9[6] = @"t";
  v13 = vbslq_s8(vceqzq_s64(v4), v8, v4);
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:v9 count:7];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVAIMUCalibration *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end