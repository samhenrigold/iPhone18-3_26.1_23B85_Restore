@interface CVACameraCalibration
+ (id)classes;
+ (id)withData:(id)data;
- (CVACameraCalibration)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACameraCalibration

+ (id)classes
{
  if (qword_27E3C8558 == -1)
  {
    v3 = qword_27E3C8550;
  }

  else
  {
    sub_24019CB28();
    v3 = qword_27E3C8550;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACameraCalibration classes];
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

- (CVACameraCalibration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CVACameraCalibration;
  v5 = [(CVACameraCalibration *)&v29 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"id"];
    metadataID = v5->_metadataID;
    v5->_metadataID = v7;

    v5->_imageWidth = [coderCopy decodeIntForKey:@"w"];
    v5->_imageHeight = [coderCopy decodeIntForKey:@"h"];
    [coderCopy decodeDoubleForKey:@"px"];
    v5->_principalPointX = v9;
    [coderCopy decodeDoubleForKey:@"py"];
    v5->_principalPointY = v10;
    [coderCopy decodeDoubleForKey:@"fx"];
    v5->_focalLengthX = v11;
    [coderCopy decodeDoubleForKey:@"fy"];
    v5->_focalLengthY = v12;
    v5->_lensDistortionModel = [coderCopy decodeIntegerForKey:@"dm"];
    v13 = [coderCopy decodeObjectForKey:@"rd"];
    radialDistortion = v5->_radialDistortion;
    v5->_radialDistortion = v13;

    v15 = [coderCopy decodeObjectForKey:@"td"];
    tangentialDistortion = v5->_tangentialDistortion;
    v5->_tangentialDistortion = v15;

    v17 = [coderCopy decodeObjectForKey:@"lo"];
    lensOffset = v5->_lensOffset;
    v5->_lensOffset = v17;

    v19 = [coderCopy decodeObjectForKey:@"co"];
    chipOffset = v5->_chipOffset;
    v5->_chipOffset = v19;

    [coderCopy decodeDoubleForKey:@"tc"];
    v5->_timestampCorrection = v21;
    v22 = [coderCopy decodeObjectForKey:@"rt"];
    readoutTime = v5->_readoutTime;
    v5->_readoutTime = v22;

    v24 = [coderCopy decodeObjectForKey:@"r"];
    cameraToIMURotation = v5->_cameraToIMURotation;
    v5->_cameraToIMURotation = v24;

    v26 = [coderCopy decodeObjectForKey:@"t"];
    cameraToIMUTranslation = v5->_cameraToIMUTranslation;
    v5->_cameraToIMUTranslation = v26;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_metadataID forKey:@"id"];
  [coderCopy encodeInteger:self->_imageWidth forKey:@"w"];
  [coderCopy encodeInteger:self->_imageHeight forKey:@"h"];
  [coderCopy encodeDouble:@"px" forKey:self->_principalPointX];
  [coderCopy encodeDouble:@"py" forKey:self->_principalPointY];
  [coderCopy encodeDouble:@"fx" forKey:self->_focalLengthX];
  [coderCopy encodeDouble:@"fy" forKey:self->_focalLengthY];
  [coderCopy encodeInteger:self->_lensDistortionModel forKey:@"dm"];
  [coderCopy encodeObject:self->_radialDistortion forKey:@"rd"];
  [coderCopy encodeObject:self->_tangentialDistortion forKey:@"td"];
  [coderCopy encodeObject:self->_lensOffset forKey:@"lo"];
  [coderCopy encodeObject:self->_chipOffset forKey:@"co"];
  [coderCopy encodeDouble:@"tc" forKey:self->_timestampCorrection];
  [coderCopy encodeObject:self->_readoutTime forKey:@"rt"];
  [coderCopy encodeObject:self->_cameraToIMURotation forKey:@"r"];
  [coderCopy encodeObject:self->_cameraToIMUTranslation forKey:@"t"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  metadataID = self->_metadataID;
  if (!metadataID)
  {
    metadataID = &stru_28521B010;
  }

  v20[0] = metadataID;
  v19[0] = @"id";
  v19[1] = @"w";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_imageWidth];
  v20[1] = v4;
  v19[2] = @"h";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_imageHeight];
  v20[2] = v5;
  v19[3] = @"px";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_principalPointX];
  v20[3] = v6;
  v19[4] = @"py";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_principalPointY];
  v20[4] = v7;
  v19[5] = @"fx";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_focalLengthX];
  v20[5] = v8;
  v19[6] = @"fy";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_focalLengthY];
  v20[6] = v9;
  v19[7] = @"dm";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lensDistortionModel];
  v18 = vdupq_n_s64(MEMORY[0x277CBEBF8]);
  v11 = vbslq_s8(vceqzq_s64(*&self->_radialDistortion), v18, *&self->_radialDistortion);
  v12 = vbslq_s8(vceqzq_s64(*&self->_lensOffset), v18, *&self->_lensOffset);
  v20[7] = v10;
  v19[8] = @"rd";
  v19[9] = @"td";
  v19[10] = @"lo";
  v19[11] = @"co";
  v21 = v11;
  v22 = v12;
  v19[12] = @"tc";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestampCorrection];
  v14 = v13;
  readoutTime = &unk_285225248;
  if (self->_readoutTime)
  {
    readoutTime = self->_readoutTime;
  }

  v23 = v13;
  v24 = readoutTime;
  v19[13] = @"rt";
  v19[14] = @"r";
  v19[15] = @"t";
  v25 = vbslq_s8(vceqzq_s64(*&self->_cameraToIMURotation), v18, *&self->_cameraToIMURotation);
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:16];

  return v16;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACameraCalibration *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end