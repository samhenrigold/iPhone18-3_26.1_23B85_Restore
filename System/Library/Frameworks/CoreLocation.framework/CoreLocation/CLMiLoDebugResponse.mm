@interface CLMiLoDebugResponse
- (CLMiLoDebugResponse)initWithCoder:(id)coder;
- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)result requestIdentifier:(id)identifier error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoDebugResponse

- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)result requestIdentifier:(id)identifier error:(id)error
{
  v10.receiver = self;
  v10.super_class = CLMiLoDebugResponse;
  v8 = [(CLMiLoDebugResponse *)&v10 init];
  if (v8)
  {
    v8->_exportDatabaseTablesResult = result;
    v8->_requestIdentifier = identifier;
    v8->_error = error;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoDebugResponse;
  [(CLMiLoDebugResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  exportDatabaseTablesResult = self->_exportDatabaseTablesResult;
  requestIdentifier = self->_requestIdentifier;

  return MEMORY[0x1EEE66B58](v8, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_, exportDatabaseTablesResult, requestIdentifier);
}

- (CLMiLoDebugResponse)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResult");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyDebugRequestIdentifier");
  v11 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLMiLoConnectionCodingKeyDebugRequestError");

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_exportDatabaseTablesResult, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResult");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_requestIdentifier, @"kCLMiLoConnectionCodingKeyDebugRequestIdentifier");
  error = self->_error;

  objc_msgSend_encodeObject_forKey_(coder, v6, error, @"kCLMiLoConnectionCodingKeyDebugRequestError");
}

@end