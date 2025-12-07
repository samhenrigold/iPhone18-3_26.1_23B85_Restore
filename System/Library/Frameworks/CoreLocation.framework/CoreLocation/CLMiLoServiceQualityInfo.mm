@interface CLMiLoServiceQualityInfo
- (CLMiLoServiceQualityInfo)initWithCoder:(id)coder;
- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)quality andReasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceQualityInfo

- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)quality andReasons:(id)reasons
{
  v12.receiver = self;
  v12.super_class = CLMiLoServiceQualityInfo;
  v6 = [(CLMiLoServiceQualityInfo *)&v12 init];
  v10 = v6;
  if (v6)
  {
    v6->_serviceQuality = quality;
    v6->_serviceQualityReasons = objc_msgSend_copy(reasons, v7, v8, v9);
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceQualityInfo;
  [(CLMiLoServiceQualityInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  serviceQuality = self->_serviceQuality;
  serviceQualityReasons = self->_serviceQualityReasons;

  return MEMORY[0x1EEE66B58](v8, sel_initWithQuality_andReasons_, serviceQuality, serviceQualityReasons);
}

- (CLMiLoServiceQualityInfo)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyServiceQuality", v3);
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v7, v10, v8, v11, v9, 0);
  v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v12, @"kCLMiLoConnectionCodingKeyServiceQualityReasons");

  return MEMORY[0x1EEE66B58](self, sel_initWithQuality_andReasons_, v6, v14);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_serviceQuality, @"kCLMiLoConnectionCodingKeyServiceQuality");
  serviceQualityReasons = self->_serviceQualityReasons;

  objc_msgSend_encodeObject_forKey_(coder, v5, serviceQualityReasons, @"kCLMiLoConnectionCodingKeyServiceQualityReasons");
}

@end