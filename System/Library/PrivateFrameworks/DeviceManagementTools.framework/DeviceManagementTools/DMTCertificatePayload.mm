@interface DMTCertificatePayload
- (DMTCertificatePayload)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTCertificatePayload

- (DMTCertificatePayload)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = DMTCertificatePayload;
  v7 = [(DMTConfigurationPrimitive *)&v18 initWithDictionary:dictionaryCopy error:error];
  if (!v7 || (DMTValidateProfileString(dictionaryCopy, @"PayloadCertificateFileName", 1, error), v8 = objc_claimAutoreleasedReturnValue(), certificateFileName = v7->_certificateFileName, v7->_certificateFileName = v8, certificateFileName, DMTValidateProfileData(dictionaryCopy, @"PayloadContent", 0, error), v10 = objc_claimAutoreleasedReturnValue(), content = v7->_content, v7->_content = v10, content, *error) || (-[DMTConfigurationPrimitive type](v7, "type"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqualToString:@"com.apple.security.pkcs12"], v14, v15) && (DMTValidateProfileString(dictionaryCopy, @"Password", 0, error), v16 = objc_claimAutoreleasedReturnValue(), password = v7->_password, v7->_password = v16, password, *error))
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

@end