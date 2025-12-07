@interface CLBeaconIdentityCondition
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (CLBeaconIdentityCondition)initWithCoder:(id)coder;
- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid;
- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major;
- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor;
- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBeaconIdentityCondition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLBeaconIdentityCondition;
  [(CLCondition *)&v3 dealloc];
}

- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid
{
  if (!uuid)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLBeaconIdentityCondition.mm", 31, @"The UUID parameter is required");
  }

  return objc_msgSend__initWithUUID_major_minor_(self, a2, uuid, 0, 0);
}

- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major
{
  v4 = major;
  if (!uuid)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, major);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLBeaconIdentityCondition.mm", 37, @"The UUID parameter is required");
  }

  v8 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, v4, major);

  return objc_msgSend__initWithUUID_major_minor_(self, v7, uuid, v8, 0);
}

- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor
{
  v5 = minor;
  v6 = major;
  if (!uuid)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, major);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLBeaconIdentityCondition.mm", 43, @"The UUID parameter is required");
  }

  v9 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, v6, major);
  v13 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v10, v5, v11);

  return objc_msgSend__initWithUUID_major_minor_(self, v12, uuid, v9, v13);
}

- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor
{
  v10.receiver = self;
  v10.super_class = CLBeaconIdentityCondition;
  initCondition = [(CLCondition *)&v10 initCondition];
  if (initCondition)
  {
    initCondition[9] = d;
    initCondition[10] = major;
    initCondition[11] = minor;
  }

  return initCondition;
}

+ (id)any
{
  v2 = [CLBeaconIdentityCondition alloc];
  v4 = objc_msgSend__initWithUUID_major_minor_(v2, v3, 0, 0, 0);

  return v4;
}

- (CLBeaconIdentityCondition)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CLBeaconIdentityCondition.mm", 76, @"Invalid parameter not satisfying: %@", @"[decoder allowsKeyedCoding]");
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCLBeaconIdentityConstraintUUID");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"kCLBeaconIdentityConstraintMajor");
  v16 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"kCLBeaconIdentityConstraintMinor");

  return objc_msgSend__initWithUUID_major_minor_(self, v18, v12, v15, v19);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CLBeaconIdentityCondition.mm", 87, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  objc_msgSend_encodeObject_forKey_(coder, v7, self->_UUID, @"kCLBeaconIdentityConstraintUUID");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_major, @"kCLBeaconIdentityConstraintMajor");
  minor = self->_minor;

  objc_msgSend_encodeObject_forKey_(coder, v11, minor, @"kCLBeaconIdentityConstraintMinor");
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_UUID(self, a2, v2, v3);
  v10 = objc_msgSend_major(self, v7, v8, v9);
  v14 = objc_msgSend_minor(self, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"CLBeaconIdentityCondition (uuid:%@, major:%@, minor:%@)", v16, v6, v10, v14);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_UUID(self, v5, v6, v7) || objc_msgSend_UUID(equal, v8, v9, v10))
    {
      v11 = objc_msgSend_UUID(self, v8, v9, v10);
      v15 = objc_msgSend_UUID(equal, v12, v13, v14);
      isEqual = objc_msgSend_isEqual_(v11, v16, v15, v17);
    }

    else
    {
      isEqual = 1;
    }

    if (objc_msgSend_major(self, v8, v9, v10) || objc_msgSend_major(equal, v19, v20, v21))
    {
      v22 = objc_msgSend_major(self, v19, v20, v21);
      v26 = objc_msgSend_major(equal, v23, v24, v25);
      v29 = objc_msgSend_isEqual_(v22, v27, v26, v28);
    }

    else
    {
      v29 = 1;
    }

    if (objc_msgSend_minor(self, v19, v20, v21) || objc_msgSend_minor(equal, v30, v31, v32))
    {
      v33 = objc_msgSend_minor(self, v30, v31, v32);
      v37 = objc_msgSend_minor(equal, v34, v35, v36);
      v40 = objc_msgSend_isEqual_(v33, v38, v37, v39);
      if (isEqual)
      {
        return v29 & v40;
      }
    }

    else
    {
      v40 = 1;
      if (isEqual)
      {
        return v29 & v40;
      }
    }
  }

  return 0;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_UUID(self, a2, v2, v3);
  v9 = objc_msgSend_hash(v5, v6, v7, v8);
  v13 = objc_msgSend_major(self, v10, v11, v12);
  v17 = objc_msgSend_hash(v13, v14, v15, v16) ^ v9;
  v21 = objc_msgSend_minor(self, v18, v19, v20);
  return v17 ^ objc_msgSend_hash(v21, v22, v23, v24);
}

@end