@interface CKException
- (CKException)initWithCode:(int)code format:(id)format args:(char *)args;
- (CKException)initWithName:(id)name format:(id)format args:(char *)args;
- (id)error;
- (int)errorCode;
@end

@implementation CKException

- (CKException)initWithCode:(int)code format:(id)format args:(char *)args
{
  v6 = *&code;
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v10 = [v8 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, formatCopy, args);

  v20 = @"CKErrorCode";
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, v6);
  v21[0] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v21, &v20, 1);

  v19.receiver = self;
  v19.super_class = CKException;
  v17 = [(CKException *)&v19 initWithName:@"CKException" reason:v12 userInfo:v16];

  return v17;
}

- (CKException)initWithName:(id)name format:(id)format args:(char *)args
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  nameCopy = name;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, args);

  v16.receiver = self;
  v16.super_class = CKException;
  v14 = [(CKException *)&v16 initWithName:nameCopy reason:v13 userInfo:0];

  return v14;
}

- (int)errorCode
{
  v3 = objc_msgSend_userInfo(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"CKErrorCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

- (id)error
{
  v4 = objc_msgSend_errorCode(self, a2, v2);
  v7 = objc_msgSend_reason(self, v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKInternalErrorDomain", v4, @"%@", v7);

  return v9;
}

@end