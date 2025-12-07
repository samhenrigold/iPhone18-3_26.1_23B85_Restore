@interface CIQRCodeDescriptor
+ (CIQRCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel;
- (BOOL)isValid;
- (CIQRCodeDescriptor)initWithCoder:(id)coder;
- (CIQRCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)isValid;
@end

@implementation CIQRCodeDescriptor

- (BOOL)isValid
{
  if ((self->symbolVersion - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v3 = ci_logger_api(self, a2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    [(CIQRCodeDescriptor *)self isValid];
    goto LABEL_10;
  }

  v5 = self->errorCorrectionLevel - 72;
  if (v5 >= 0xA || ((0x231u >> v5) & 1) == 0)
  {
    v6 = ci_logger_api(self, a2);
    v4 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    [(CIQRCodeDescriptor *)self isValid];
LABEL_10:
    LOBYTE(v4) = 0;
    return v4;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (CIQRCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel
{
  v12.receiver = self;
  v12.super_class = CIQRCodeDescriptor;
  v10 = [(CIBarcodeDescriptor *)&v12 init];
  if (v10)
  {
    v10->errorCorrectedPayload = errorCorrectedPayload;
    v10->symbolVersion = symbolVersion;
    v10->maskPattern = maskPattern;
    v10->errorCorrectionLevel = errorCorrectionLevel;
  }

  if (![(CIQRCodeDescriptor *)v10 isValid])
  {

    return 0;
  }

  return v10;
}

+ (CIQRCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel
{
  v6 = [[CIQRCodeDescriptor alloc] initWithPayload:errorCorrectedPayload symbolVersion:symbolVersion maskPattern:maskPattern errorCorrectionLevel:errorCorrectionLevel];

  return v6;
}

- (void)dealloc
{
  errorCorrectedPayload = self->errorCorrectedPayload;
  if (errorCorrectedPayload)
  {
  }

  v4.receiver = self;
  v4.super_class = CIQRCodeDescriptor;
  [(CIQRCodeDescriptor *)&v4 dealloc];
}

- (CIQRCodeDescriptor)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CIQRCodeDescriptor;
  v4 = [(CIBarcodeDescriptor *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->errorCorrectedPayload = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorCorrectedPayload"];
    v4->symbolVersion = [coder decodeIntegerForKey:@"symbolVersion"];
    v4->maskPattern = [coder decodeIntegerForKey:@"maskPattern"];
    v4->errorCorrectionLevel = [coder decodeIntegerForKey:@"errorCorrectionLevel"];
  }

  if (![(CIQRCodeDescriptor *)v4 isValid])
  {

    return 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CIQRCodeDescriptor;
  [(CIBarcodeDescriptor *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->errorCorrectedPayload forKey:@"errorCorrectedPayload"];
  [coder encodeInteger:self->symbolVersion forKey:@"symbolVersion"];
  [coder encodeInteger:self->maskPattern forKey:@"maskPattern"];
  [coder encodeInteger:self->errorCorrectionLevel forKey:@"errorCorrectionLevel"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CIQRCodeDescriptor allocWithZone:?];
  v6 = [(NSData *)self->errorCorrectedPayload copyWithZone:zone];
  v7 = [(CIQRCodeDescriptor *)v5 initWithPayload:v6 symbolVersion:self->symbolVersion maskPattern:self->maskPattern errorCorrectionLevel:self->errorCorrectionLevel];

  return v7;
}

- (void)isValid
{
  objc_opt_class();
  v8 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v2, v3, "%{public}s %{public}@: symbolVersion must be in the range of [1,40]", v4, v5, v6, v7, v8);
}

@end