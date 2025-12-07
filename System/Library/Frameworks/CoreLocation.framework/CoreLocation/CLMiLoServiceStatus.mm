@interface CLMiLoServiceStatus
- (CLMiLoServiceStatus)initWithCoder:(id)coder;
- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)state suspendReasons:(id)reasons serviceDescriptor:(id)descriptor currentLocationOfInterestUuid:(id)uuid currentLocationOfInterestType:(id)type error:(id)error serviceQualityInfo:(id)info places:(id)self0 metaInfo:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceStatus

- (CLMiLoServiceStatus)initWithServiceState:(unint64_t)state suspendReasons:(id)reasons serviceDescriptor:(id)descriptor currentLocationOfInterestUuid:(id)uuid currentLocationOfInterestType:(id)type error:(id)error serviceQualityInfo:(id)info places:(id)self0 metaInfo:(id)self1
{
  v23.receiver = self;
  v23.super_class = CLMiLoServiceStatus;
  v17 = [(CLMiLoServiceStatus *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_serviceState = state;
    v17->_serviceSuspendReasons = reasons;
    v18->_serviceDescriptor = descriptor;
    v18->_currentLocationOfInterestUuid = objc_msgSend_copy(uuid, v19, v20, v21);
    v18->_currentLocationOfInterestType = type;
    v18->_error = error;
    v18->_serviceQualityInfo = info;
    v18->_places = places;
    v18->_metaInfo = metaInfo;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceStatus;
  [(CLMiLoServiceStatus *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  return objc_msgSend_initWithServiceState_suspendReasons_serviceDescriptor_currentLocationOfInterestUuid_currentLocationOfInterestType_error_serviceQualityInfo_places_metaInfo_(v8, v9, self->_serviceState, self->_serviceSuspendReasons, self->_serviceDescriptor, self->_currentLocationOfInterestUuid, self->_currentLocationOfInterestType, self->_error, self->_serviceQualityInfo, self->_places, self->_metaInfo);
}

- (CLMiLoServiceStatus)initWithCoder:(id)coder
{
  v41 = objc_msgSend_decodeIntegerForKey_(coder, a2, @"kCLMiLoConnectionCodingKeyServiceState", v3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v9, v7, 0);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"kCLMiLoConnectionCodingKeyServiceSuspendReasons");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"kCLMiLoConnectionCodingKeyServiceDescriptor");
  v16 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid");
  v19 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType");
  v22 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"kCLMiLoConnectionCodingKeyServiceError");
  v25 = objc_opt_class();
  v27 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"kCLMiLoConnectionCodingKeyServiceQualityInfo");
  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v33 = objc_msgSend_setWithObjects_(v28, v31, v29, v32, v30, 0);
  v35 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v34, v33, @"kCLMiLoConnectionCodingKeyPlaces");
  v36 = objc_opt_class();
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"kCLMiLoConnectionCodingKeyServiceMetaInfo");
  return objc_msgSend_initWithServiceState_suspendReasons_serviceDescriptor_currentLocationOfInterestUuid_currentLocationOfInterestType_error_serviceQualityInfo_places_metaInfo_(self, v39, v41, v12, v15, v18, v21, v24, v27, v35, v38);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_serviceState, @"kCLMiLoConnectionCodingKeyServiceState");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_serviceSuspendReasons, @"kCLMiLoConnectionCodingKeyServiceSuspendReasons");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_serviceDescriptor, @"kCLMiLoConnectionCodingKeyServiceDescriptor");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_currentLocationOfInterestUuid, @"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestUuid");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_currentLocationOfInterestType, @"kCLMiLoConnectionCodingKeyCurrentLocationOfInterestType");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_error, @"kCLMiLoConnectionCodingKeyServiceError");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_serviceQualityInfo, @"kCLMiLoConnectionCodingKeyServiceQualityInfo");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_places, @"kCLMiLoConnectionCodingKeyPlaces");
  metaInfo = self->_metaInfo;

  objc_msgSend_encodeObject_forKey_(coder, v12, metaInfo, @"kCLMiLoConnectionCodingKeyServiceMetaInfo");
}

@end