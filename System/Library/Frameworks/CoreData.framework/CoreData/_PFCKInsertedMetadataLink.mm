@interface _PFCKInsertedMetadataLink
- (id)description;
- (void)dealloc;
@end

@implementation _PFCKInsertedMetadataLink

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFCKInsertedMetadataLink;
  [(_PFCKInsertedMetadataLink *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  createRecordID = [(NSCKRecordMetadata *)self->_recordMetadata createRecordID];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_msgSend_stringWithFormat_(v5, v7, self, [(NSManagedObject *)self->_insertedObject objectID], createRecordID);

  v9 = v8;
  objc_autoreleasePoolPop(v3);

  return v8;
}

@end