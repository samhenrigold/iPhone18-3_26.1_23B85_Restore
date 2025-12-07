@interface CKSubscription
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKRecordZoneID)zoneID;
- (CKSubscription)init;
- (CKSubscription)initWithCoder:(id)coder;
- (CKSubscription)initWithRecordType:(id)type predicate:(id)predicate options:(unint64_t)options;
- (CKSubscription)initWithRecordType:(id)type predicate:(id)predicate subscriptionID:(id)d options:(unint64_t)options;
- (CKSubscription)initWithZoneID:(id)d options:(unint64_t)options;
- (CKSubscription)initWithZoneID:(id)d subscriptionID:(id)iD options:(unint64_t)options;
- (id)_initWithSubscriptionID:(id)d subscriptionType:(int64_t)type recordType:(id)recordType zoneID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)predicate;
- (unint64_t)hash;
- (unint64_t)subscriptionOptions;
- (void)encodeWithCoder:(id)coder;
- (void)setSubscriptionID_modelMutation:(id)mutation;
@end

@implementation CKSubscription

+ (void)initialize
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v6, 3);
  sub_1886CEE50(self, v3, v5, 0, 0);
}

- (id)_initWithSubscriptionID:(id)d subscriptionType:(int64_t)type recordType:(id)recordType zoneID:(id)iD
{
  dCopy = d;
  recordTypeCopy = recordType;
  iDCopy = iD;
  v41 = 0;
  v13 = _CKCheckArgument("subscriptionID", dCopy, 0, 1, 0, &v41);
  v14 = v41;
  if ((v13 & 1) == 0)
  {
    v29 = v14;
    v30 = [CKException alloc];
    v33 = objc_msgSend_code(v29, v31, v32);
    v36 = objc_msgSend_localizedDescription(v29, v34, v35);
    v38 = objc_msgSend_initWithCode_format_(v30, v37, v33, @"%@", v36);
    v39 = v38;

    objc_exception_throw(v38);
  }

  v40.receiver = self;
  v40.super_class = CKSubscription;
  v17 = [(CKSubscription *)&v40 init];
  if (v17)
  {
    v18 = objc_msgSend_copy(dCopy, v15, v16);
    subscriptionID = v17->_subscriptionID;
    v17->_subscriptionID = v18;

    v17->_subscriptionType = type;
    v22 = objc_msgSend_copy(recordTypeCopy, v20, v21);
    recordType = v17->_recordType;
    v17->_recordType = v22;

    v26 = objc_msgSend_copy(iDCopy, v24, v25);
    zoneID = v17->_zoneID;
    v17->_zoneID = v26;
  }

  return v17;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_msgSend_description(self, a2, v2);
  v7 = objc_msgSend_stringWithString_(v4, v6, v5);

  v11 = objc_msgSend_notificationInfo(self, v8, v9);
  if (v11)
  {
    objc_msgSend_appendString_(v7, v10, @"\n{\n");
    v14 = objc_msgSend_debugDescription(v11, v12, v13);
    objc_msgSend_appendString_(v7, v15, v14);

    objc_msgSend_appendString_(v7, v16, @"\n}");
  }

  return v7;
}

- (CKSubscription)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"You must instantiate one of the CKSubscription subclasses");
  objc_exception_throw(v4);
}

- (CKRecordZoneID)zoneID
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v6 = [CKException alloc];
    v8 = objc_msgSend_initWithName_format_(v6, v7, *MEMORY[0x1E695D940], @"You may not call -zoneID on a CKSubscription");
    objc_exception_throw(v8);
  }

  zoneID = self->_zoneID;

  return zoneID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_recordType(self, v6, v7);
      v11 = objc_msgSend_recordType(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12 && (objc_msgSend_subscriptionID(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_subscriptionID(v5, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(v15, v18), v18, v15, v19))
      {
        v22 = objc_msgSend_notificationInfo(self, v20, v21);
        v25 = objc_msgSend_notificationInfo(v5, v23, v24);
        v26 = CKObjectsAreBothNilOrEqual(v22, v25);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_subscriptionID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_subscriptionID(self, v5, v6);
  v10 = objc_msgSend_subscriptionType(self, v8, v9);
  v13 = objc_msgSend_recordType(self, v11, v12);
  v16 = objc_msgSend_zoneID(self, v14, v15);
  v18 = objc_msgSend__initWithSubscriptionID_subscriptionType_recordType_zoneID_(v4, v17, v7, v10, v13, v16);

  v21 = objc_msgSend_notificationInfo(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v25 = v18[3];
  v18[3] = v24;

  v28 = objc_msgSend_zoneID(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  v32 = v18[5];
  v18[5] = v31;

  return v18;
}

- (CKSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CKSubscription;
  v5 = [(CKSubscription *)&v25 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"serverID");
    subscriptionID = v5->_subscriptionID;
    v5->_subscriptionID = v9;

    v5->_subscriptionType = objc_msgSend_decodeInt64ForKey_(coderCopy, v11, @"subscriptionType");
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"recordType");
    recordType = v5->_recordType;
    v5->_recordType = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"notificationInfo");
    notificationInfo = v5->_notificationInfo;
    v5->_notificationInfo = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"ZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v22;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_subscriptionID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"serverID");

  v11 = objc_msgSend_subscriptionType(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"subscriptionType");
  v15 = objc_msgSend_recordType(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"recordType");

  v19 = objc_msgSend_notificationInfo(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"notificationInfo");

  objc_autoreleasePoolPop(v4);
}

- (void)setSubscriptionID_modelMutation:(id)mutation
{
  v4 = objc_msgSend_copy(mutation, a2, mutation);
  subscriptionID = self->_subscriptionID;
  self->_subscriptionID = v4;

  MEMORY[0x1EEE66BB8](v4, subscriptionID);
}

- (CKSubscription)initWithZoneID:(id)d options:(unint64_t)options
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v13 = v7;
    v14 = NSStringFromSelector(a2);
    v15 = 138543362;
    v16 = v14;
    _os_log_fault_impl(&dword_1883EA000, v13, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKRecordZoneSubscription", &v15, 0xCu);
  }

  v8 = [CKRecordZoneSubscription alloc];
  v9 = CKCreateGUID();
  v11 = objc_msgSend_initWithZoneID_subscriptionID_(v8, v10, dCopy, v9);

  return v11;
}

- (CKSubscription)initWithZoneID:(id)d subscriptionID:(id)iD options:(unint64_t)options
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v15 = v10;
    v16 = NSStringFromSelector(a2);
    v17 = 138543362;
    v18 = v16;
    _os_log_fault_impl(&dword_1883EA000, v15, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKRecordZoneSubscription", &v17, 0xCu);
  }

  v11 = [CKRecordZoneSubscription alloc];
  v13 = objc_msgSend_initWithZoneID_subscriptionID_(v11, v12, dCopy, iDCopy);

  return v13;
}

- (CKSubscription)initWithRecordType:(id)type predicate:(id)predicate options:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  predicateCopy = predicate;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v17 = v11;
    v18 = NSStringFromSelector(a2);
    v19 = 138543362;
    v20 = v18;
    _os_log_fault_impl(&dword_1883EA000, v17, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKQuerySubscription", &v19, 0xCu);
  }

  v12 = [CKQuerySubscription alloc];
  v13 = CKCreateGUID();
  v15 = objc_msgSend_initWithRecordType_predicate_subscriptionID_options_(v12, v14, typeCopy, predicateCopy, v13, options);

  return v15;
}

- (CKSubscription)initWithRecordType:(id)type predicate:(id)predicate subscriptionID:(id)d options:(unint64_t)options
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  predicateCopy = predicate;
  dCopy = d;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v19 = v14;
    v20 = NSStringFromSelector(a2);
    v21 = 138543362;
    v22 = v20;
    _os_log_fault_impl(&dword_1883EA000, v19, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKQuerySubscription", &v21, 0xCu);
  }

  v15 = [CKQuerySubscription alloc];
  v17 = objc_msgSend_initWithRecordType_predicate_subscriptionID_options_(v15, v16, typeCopy, predicateCopy, dCopy, options);

  return v17;
}

- (unint64_t)subscriptionOptions
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v8 = v4;
    v9 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v9;
    _os_log_fault_impl(&dword_1883EA000, v8, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to querySubscriptionOptions", &v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objc_msgSend_querySubscriptionOptions(self, v5, v6);
  }

  else
  {
    return 0;
  }
}

- (id)predicate
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v9 = v4;
    v10 = NSStringFromSelector(a2);
    v11 = 138543362;
    v12 = v10;
    _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.  Please move to CKQuerySubscription", &v11, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_predicate(self, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end