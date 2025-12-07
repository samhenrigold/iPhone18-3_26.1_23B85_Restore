@interface HKObjectAuthorizationRecord
- (BOOL)isEqual:(id)equal;
- (HKObjectAuthorizationRecord)init;
- (HKObjectAuthorizationRecord)initWithCoder:(id)coder;
- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)d sourceUUID:(id)iD sessionUUID:(id)uID status:(int64_t)status modificationDate:(double)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationRecord

- (HKObjectAuthorizationRecord)init
{
  v8.receiver = self;
  v8.super_class = HKObjectAuthorizationRecord;
  v2 = [(HKObjectAuthorizationRecord *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objectUUID = v2->_objectUUID;
    v2->_objectUUID = 0;

    sourceUUID = v3->_sourceUUID;
    v3->_sourceUUID = 0;

    sessionUUID = v3->_sessionUUID;
    v3->_sessionUUID = 0;

    v3->_status = 0;
    v3->_modificationDate = CFAbsoluteTimeGetCurrent();
  }

  return v3;
}

- (HKObjectAuthorizationRecord)initWithObjectUUID:(id)d sourceUUID:(id)iD sessionUUID:(id)uID status:(int64_t)status modificationDate:(double)date
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v16 = [(HKObjectAuthorizationRecord *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_objectUUID, d);
    objc_storeStrong(&v17->_sourceUUID, iD);
    objc_storeStrong(&v17->_sessionUUID, uID);
    v17->_status = status;
    v17->_modificationDate = date;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_objectUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_sourceUUID UUIDString];
  uUIDString3 = [(NSUUID *)self->_sessionUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Object: %@ Source: %@ Session: %@ Status: %ld Mod: %@>", uUIDString, uUIDString2, uUIDString3, status, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sourceUUID hash];
  v4 = [(NSUUID *)self->_objectUUID hash]^ v3;
  return v4 ^ [(NSUUID *)self->_sessionUUID hash]^ self->_status ^ self->_modificationDate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((sourceUUID = self->_sourceUUID, v6 = *(equalCopy + 2), sourceUUID == v6) || v6 && [(NSUUID *)sourceUUID isEqual:?]) && ((objectUUID = self->_objectUUID, v8 = *(equalCopy + 1), objectUUID == v8) || v8 && [(NSUUID *)objectUUID isEqual:?]) && ((sessionUUID = self->_sessionUUID, v10 = *(equalCopy + 3), sessionUUID == v10) || v10 && [(NSUUID *)sessionUUID isEqual:?]) && self->_status == *(equalCopy + 4) && self->_modificationDate == equalCopy[5];

  return v11;
}

- (HKObjectAuthorizationRecord)initWithCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = HKObjectAuthorizationRecord;
  v5 = [(HKObjectAuthorizationRecord *)&v29 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  [coderCopy decodeDoubleForKey:@"mod"];
  v5->_modificationDate = v6;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  sourceUUID = v5->_sourceUUID;
  v5->_sourceUUID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
  objectUUID = v5->_objectUUID;
  v5->_objectUUID = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionid"];
  sessionUUID = v5->_sessionUUID;
  v5->_sessionUUID = v11;

  if (!v5->_sourceUUID || !v5->_objectUUID)
  {
    _HKInitializeLogging(v13, v14);
    v20 = HKLogAuthorization(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v27 = v5->_objectUUID;
      v26 = v5->_sourceUUID;
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      v34 = 2114;
      v35 = v27;
      v28 = v25;
      _os_log_error_impl(&dword_19197B000, v20, OS_LOG_TYPE_ERROR, "Decoded %{public}@ has incomplete source and object IDs: %{public}@, %{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v15 = [coderCopy decodeIntegerForKey:@"stat"];
  v5->_status = v15;
  if (v15 >= 3)
  {
    _HKInitializeLogging(v15, v16);
    v23 = HKLogAuthorization(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(HKObjectAuthorizationRecord *)v5 initWithCoder:v23];
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v17 = v5;
LABEL_13:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  sourceUUID = self->_sourceUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sourceUUID forKey:@"sid"];
  [coderCopy encodeObject:self->_objectUUID forKey:@"oid"];
  [coderCopy encodeObject:self->_sessionUUID forKey:@"sessionid"];
  [coderCopy encodeInteger:self->_status forKey:@"stat"];
  [coderCopy encodeDouble:@"mod" forKey:self->_modificationDate];
}

- (void)initWithCoder:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = *a2;
  v8 = 138543618;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  v7 = v5;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "Decoded %{public}@ has invalid authorization status: %ld", &v8, 0x16u);
}

@end