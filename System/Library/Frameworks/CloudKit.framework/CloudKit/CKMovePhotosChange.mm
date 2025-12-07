@interface CKMovePhotosChange
- (CKMovePhotosChange)initWithCoder:(id)coder;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKMovePhotosChange

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  expandCopy = expand;
  privateCopy = private;
  publicCopy = public;
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_destinationRecord(self, a2, public);
  v11 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v9, v10, publicCopy, privateCopy, expandCopy);

  v18[0] = @"sourceID";
  v14 = objc_msgSend_sourceRecordID(self, v12, v13);
  v18[1] = @"dest";
  v19[0] = v14;
  v19[1] = v11;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v19, v18, 2);

  return v16;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_sourceRecordID(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"sourceRecordID");

  v10 = objc_msgSend_destinationRecord(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"destinationRecord");

  v14 = objc_msgSend_properties(v3, v12, v13);

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_sourceRecordID(self, v5, v6);
  v8 = NSStringFromSelector(sel_sourceRecordID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_sourceRecordChangeTag(self, v10, v11);
  v13 = NSStringFromSelector(sel_sourceRecordChangeTag);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  v17 = objc_msgSend_destinationRecord(self, v15, v16);
  v18 = NSStringFromSelector(sel_destinationRecord);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);

  objc_autoreleasePoolPop(v4);
}

- (CKMovePhotosChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CKMovePhotosChange;
  v5 = [(CKMovePhotosChange *)&v23 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_sourceRecordID);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v7, v8);
    sourceRecordID = v5->_sourceRecordID;
    v5->_sourceRecordID = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_sourceRecordChangeTag);
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v12, v13);
    sourceRecordChangeTag = v5->_sourceRecordChangeTag;
    v5->_sourceRecordChangeTag = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_destinationRecord);
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v17, v18);
    destinationRecord = v5->_destinationRecord;
    v5->_destinationRecord = v20;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end