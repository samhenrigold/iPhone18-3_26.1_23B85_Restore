@interface CVASpuFastPathComboAxisData
+ (id)classes;
+ (id)withData:(id)data;
- (CVASpuFastPathComboAxisData)initWithCoder:(id)coder;
- (CVASpuFastPathComboAxisData)initWithFastPathIMUData:(id)data;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVASpuFastPathComboAxisData

+ (id)classes
{
  if (qword_27E3C85A8 == -1)
  {
    v3 = qword_27E3C85A0;
  }

  else
  {
    sub_24019CB8C();
    v3 = qword_27E3C85A0;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVASpuFastPathComboAxisData classes];
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

- (CVASpuFastPathComboAxisData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CVASpuFastPathComboAxisData;
  v5 = [(CVASpuFastPathComboAxisData *)&v9 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_packetType = [coderCopy decodeInt32ForKey:@"pt"];
    v5->_sample_id = [coderCopy decodeInt32ForKey:@"si"];
    v5->_valid_data = [coderCopy decodeInt32ForKey:@"vd"];
    v5->_ax = [coderCopy decodeInt32ForKey:@"ax"];
    v5->_ay = [coderCopy decodeInt32ForKey:@"ay"];
    v5->_az = [coderCopy decodeInt32ForKey:@"az"];
    v5->_unfiltered_ax = [coderCopy decodeInt32ForKey:@"uax"];
    v5->_unfiltered_ay = [coderCopy decodeInt32ForKey:@"uay"];
    v5->_unfiltered_az = [coderCopy decodeInt32ForKey:@"uaz"];
    v5->_gx = [coderCopy decodeInt32ForKey:@"gx"];
    v5->_gy = [coderCopy decodeInt32ForKey:@"gy"];
    v5->_gz = [coderCopy decodeInt32ForKey:@"gz"];
    v5->_temperature = [coderCopy decodeInt32ForKey:@"p"];
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CVASpuFastPathComboAxisData)initWithFastPathIMUData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = CVASpuFastPathComboAxisData;
  v5 = [(CVASpuFastPathComboAxisData *)&v18 init];
  if (v5)
  {
    bytes = [dataCopy bytes];
    v7 = *bytes;
    if (v7 == 3)
    {
      v11 = bytes;
      CMClockMakeHostTimeFromSystemUnits(&time, *(bytes + 1));
      *(v5 + 8) = CMTimeGetSeconds(&time);
      *(v5 + 10) = -1;
      v12 = *(v11 + 4);
      *(v5 + 9) = *(v11 + 1);
      v13 = v11[10];
      *(v5 + 2) = v12;
      *(v5 + 3) = v13;
      *(v5 + 14) = vcvtd_n_s64_f64(*(v11 + 3), 0x10uLL);
      *(v5 + 4) = *(v11 + 8);
      *(v5 + 5) = vcvtd_n_s64_f64(*(v11 + 5), 0x10uLL);
      *(v5 + 3) = vmovn_s64(vcvtq_n_s64_f64(*(v11 + 3), 0x10uLL));
      *(v5 + 8) = vcvtd_n_s64_f64(*(v11 + 8), 0x10uLL);
      *(v5 + 36) = vmovn_s64(vcvtq_n_s64_f64(*(v11 + 36), 0x10uLL));
      *(v5 + 11) = vcvtd_n_s64_f64(*(v11 + 11), 0x10uLL);
      v14 = *(v11 + 13);
      *(v5 + 12) = vcvtd_n_s64_f64(*(v11 + 12), 0x10uLL);
      v10 = vcvtd_n_s64_f64(v14, 0x10uLL);
    }

    else
    {
      if (v7 != 1)
      {
        v15 = 0;
        goto LABEL_9;
      }

      *(v5 + 8) = *(bytes + 1);
      *(v5 + 10) = *(bytes + 2);
      v8 = *(bytes + 6);
      *(v5 + 9) = *(bytes + 14);
      v9 = bytes[18];
      *(v5 + 2) = v8;
      *(v5 + 3) = v9;
      *(v5 + 14) = *(bytes + 19);
      *(v5 + 4) = *(bytes + 21);
      *(v5 + 5) = *(bytes + 23);
      *(v5 + 6) = *(bytes + 25);
      *(v5 + 7) = *(bytes + 27);
      *(v5 + 8) = *(bytes + 29);
      *(v5 + 9) = *(bytes + 31);
      *(v5 + 10) = *(bytes + 33);
      *(v5 + 11) = *(bytes + 35);
      *(v5 + 12) = *(bytes + 37);
      v10 = *(bytes + 39);
    }

    *(v5 + 13) = v10;
  }

  v15 = v5;
LABEL_9:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInt32:self->_packetType forKey:@"pt"];
  [coderCopy encodeInt32:self->_sample_id forKey:@"si"];
  [coderCopy encodeInt32:self->_valid_data forKey:@"vd"];
  [coderCopy encodeInt32:self->_ax forKey:@"ax"];
  [coderCopy encodeInt32:self->_ay forKey:@"ay"];
  [coderCopy encodeInt32:self->_az forKey:@"az"];
  [coderCopy encodeInt32:self->_unfiltered_ax forKey:@"uax"];
  [coderCopy encodeInt32:self->_unfiltered_ay forKey:@"uay"];
  [coderCopy encodeInt32:self->_unfiltered_az forKey:@"uaz"];
  [coderCopy encodeInt32:self->_gx forKey:@"gx"];
  [coderCopy encodeInt32:self->_gy forKey:@"gy"];
  [coderCopy encodeInt32:self->_gz forKey:@"gz"];
  [coderCopy encodeInt32:self->_temperature forKey:@"p"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21[0] = @"pt";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_packetType];
  v22[0] = v20;
  v21[1] = @"si";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sample_id];
  v22[1] = v19;
  v21[2] = @"vd";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_valid_data];
  v22[2] = v18;
  v21[3] = @"ax";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_ax];
  v22[3] = v17;
  v21[4] = @"ay";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_ay];
  v22[4] = v16;
  v21[5] = @"az";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_az];
  v22[5] = v15;
  v21[6] = @"uax";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_unfiltered_ax];
  v22[6] = v14;
  v21[7] = @"uay";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_unfiltered_ay];
  v22[7] = v3;
  v21[8] = @"uaz";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_unfiltered_az];
  v22[8] = v4;
  v21[9] = @"gx";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_gx];
  v22[9] = v5;
  v21[10] = @"gy";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_gy];
  v22[10] = v6;
  v21[11] = @"gz";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_gz];
  v22[11] = v7;
  v21[12] = @"p";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_temperature];
  v22[12] = v8;
  v21[13] = @"t";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v22[13] = v9;
  v21[14] = @"st";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v22[14] = v10;
  v21[15] = @"fi";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v22[15] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:16];

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVASpuFastPathComboAxisData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end