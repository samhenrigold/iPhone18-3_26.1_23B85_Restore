@interface NSPConfigurationSignatureInfo
+ (void)removeFromPreferences;
- (BOOL)saveToPreferences;
- (NSPConfigurationSignatureInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromPreferences;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPConfigurationSignatureInfo

- (NSPConfigurationSignatureInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NSPConfigurationSignatureInfo;
  v5 = [(NSPConfigurationSignatureInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v8;

    v5->_signatureAlgorithm = [coderCopy decodeIntForKey:@"signatureAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  certificates = [(NSPConfigurationSignatureInfo *)self certificates];
  [coderCopy encodeObject:certificates forKey:@"certificates"];

  signature = [(NSPConfigurationSignatureInfo *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  [coderCopy encodeInt:-[NSPConfigurationSignatureInfo signatureAlgorithm](self forKey:{"signatureAlgorithm"), @"signatureAlgorithm"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPConfigurationSignatureInfo allocWithZone:?]];
  certificates = [(NSPConfigurationSignatureInfo *)self certificates];
  [(NSPConfigurationSignatureInfo *)v4 setCertificates:certificates];

  signature = [(NSPConfigurationSignatureInfo *)self signature];
  [(NSPConfigurationSignatureInfo *)v4 setSignature:signature];

  [(NSPConfigurationSignatureInfo *)v4 setSignatureAlgorithm:[(NSPConfigurationSignatureInfo *)self signatureAlgorithm]];
  return v4;
}

- (BOOL)saveToPreferences
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (!v3)
  {
    v7 = nplog_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    v14 = 0;
    v9 = "NSKeyedArchiver initialize failed";
    v10 = &v14;
LABEL_11:
    _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_8;
  }

  [(NSPConfigurationSignatureInfo *)self encodeWithCoder:v3];
  v4 = *MEMORY[0x1E695E8A8];
  _CFPreferencesSetFileProtectionClass();
  encodedData = [v3 encodedData];
  CFPreferencesSetAppValue(@"NSPSignatureInfo", encodedData, v4);

  LODWORD(encodedData) = CFPreferencesAppSynchronize(v4);
  v6 = nplog_obj();
  v7 = v6;
  if (!encodedData)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v9 = "Failed to write nsp signature info to preference file";
    v10 = buf;
    goto LABEL_11;
  }

  v8 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "Saved signature info to preference file", v12, 2u);
  }

LABEL_9:

  return v8;
}

+ (void)removeFromPreferences
{
  v2 = *MEMORY[0x1E695E8A8];
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"NSPSignatureInfo", 0, v2);
  v3 = CFPreferencesAppSynchronize(v2);
  v4 = nplog_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEFAULT, "Removed signature info to preference file", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Failed to remove signature info from preference file", buf, 2u);
  }
}

- (id)initFromPreferences
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"NSPSignatureInfo", *MEMORY[0x1E695E8A8]);
  if (v3)
  {
    v4 = v3;
    v15 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v15];
    v6 = v15;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      CFRelease(v4);
      v14.receiver = self;
      v14.super_class = NSPConfigurationSignatureInfo;
      v11 = [(NSPConfigurationSignatureInfo *)&v14 init];
      if (!v11 || (v11 = [(NSPConfigurationSignatureInfo *)v11 initWithCoder:v5]) != 0)
      {
        self = v11;
        selfCopy = self;
        goto LABEL_16;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to decode NSP signature info", buf, 2u);
      }

      self = 0;
    }

    else
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the NSP signature info: %@", buf, 0xCu);
      }

      CFRelease(v4);
    }

    selfCopy = 0;
LABEL_16:

    goto LABEL_17;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "no saved signature info", buf, 2u);
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

@end