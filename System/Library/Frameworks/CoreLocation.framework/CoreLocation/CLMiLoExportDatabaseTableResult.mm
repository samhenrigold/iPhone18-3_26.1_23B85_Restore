@interface CLMiLoExportDatabaseTableResult
- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)coder;
- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)dir fileName:(id)name sandboxExtensionTok:(id)tok;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoExportDatabaseTableResult

- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)dir fileName:(id)name sandboxExtensionTok:(id)tok
{
  v10.receiver = self;
  v10.super_class = CLMiLoExportDatabaseTableResult;
  v8 = [(CLMiLoExportDatabaseTableResult *)&v10 init];
  if (v8)
  {
    v8->_exportDir = dir;
    v8->_fileName = name;
    v8->_sandboxExtensionTok = tok;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoExportDatabaseTableResult;
  [(CLMiLoExportDatabaseTableResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  exportDir = self->_exportDir;
  fileName = self->_fileName;

  return MEMORY[0x1EEE66B58](v8, sel_initWithExportDir_fileName_sandboxExtensionTok_, exportDir, fileName);
}

- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName");
  v11 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok");

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDir_fileName_sandboxExtensionTok_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_exportDir, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_fileName, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName");
  sandboxExtensionTok = self->_sandboxExtensionTok;

  objc_msgSend_encodeObject_forKey_(coder, v6, sandboxExtensionTok, @"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok");
}

@end