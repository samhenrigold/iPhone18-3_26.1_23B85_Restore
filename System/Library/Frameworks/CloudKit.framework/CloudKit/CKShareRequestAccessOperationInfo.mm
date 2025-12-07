@interface CKShareRequestAccessOperationInfo
- (CKShareRequestAccessOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKShareRequestAccessOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_shareURLsToRequestAccessFor(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"ShareURLsToRequestAccessFor");

  v10.receiver = self;
  v10.super_class = CKShareRequestAccessOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);
}

- (CKShareRequestAccessOperationInfo)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKShareRequestAccessOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v17, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"ShareURLsToRequestAccessFor");
    shareURLsToRequestAccessFor = v5->_shareURLsToRequestAccessFor;
    v5->_shareURLsToRequestAccessFor = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end