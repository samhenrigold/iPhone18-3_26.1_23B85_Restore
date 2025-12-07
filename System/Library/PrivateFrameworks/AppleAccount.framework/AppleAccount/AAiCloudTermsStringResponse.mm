@interface AAiCloudTermsStringResponse
- (NSString)termsString;
@end

@implementation AAiCloudTermsStringResponse

- (NSString)termsString
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->super._responseTermsDictionary objectForKey:@"iCloud"];
  v3 = _AALogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Got terms string: %@", &v5, 0xCu);
  }

  return v2;
}

@end