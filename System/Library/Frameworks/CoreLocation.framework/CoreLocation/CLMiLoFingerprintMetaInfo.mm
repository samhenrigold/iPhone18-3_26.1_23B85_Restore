@interface CLMiLoFingerprintMetaInfo
- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)coder;
- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier errors:(id)errors;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoFingerprintMetaInfo

- (CLMiLoFingerprintMetaInfo)initWithNumWiFiAccessPoints:(id)points numBLESources:(id)sources numUWBSources:(id)bSources requestIdentifier:(id)identifier errors:(id)errors
{
  v26.receiver = self;
  v26.super_class = CLMiLoFingerprintMetaInfo;
  v15 = [(CLMiLoFingerprintMetaInfo *)&v26 init];
  if (v15)
  {
    v15->_numberOfWiFiAccessPoints = objc_msgSend_copy(points, v12, v13, v14);
    v15->_numberOfBLESources = objc_msgSend_copy(sources, v16, v17, v18);
    v15->_numberOfUWBSources = objc_msgSend_copy(bSources, v19, v20, v21);
    v15->_requestIdentifier = objc_msgSend_copy(identifier, v22, v23, v24);
    v15->_errors = errors;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoFingerprintMetaInfo;
  [(CLMiLoFingerprintMetaInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  numberOfWiFiAccessPoints = self->_numberOfWiFiAccessPoints;
  numberOfBLESources = self->_numberOfBLESources;

  return MEMORY[0x1EEE66B58](v8, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_, numberOfWiFiAccessPoints, numberOfBLESources);
}

- (CLMiLoFingerprintMetaInfo)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyNumberOfBLESources");
  v11 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLMiLoConnectionCodingKeyNumberOfUWBSources");
  v13 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier");
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v20 = objc_msgSend_setWithObjects_(v15, v18, v16, v19, v17, 0);
  objc_msgSend_decodeObjectOfClasses_forKey_(coder, v21, v20, @"kCLMiLoConnectionCodingKeyFingerprintErrors");

  return MEMORY[0x1EEE66B58](self, sel_initWithNumWiFiAccessPoints_numBLESources_numUWBSources_requestIdentifier_errors_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_numberOfWiFiAccessPoints, @"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_numberOfBLESources, @"kCLMiLoConnectionCodingKeyNumberOfBLESources");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_numberOfUWBSources, @"kCLMiLoConnectionCodingKeyNumberOfUWBSources");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_requestIdentifier, @"kCLMiLoConnectionCodingKeyObservationMetaInfoRequestIdentifier");
  errors = self->_errors;

  objc_msgSend_encodeObject_forKey_(coder, v8, errors, @"kCLMiLoConnectionCodingKeyFingerprintErrors");
}

@end