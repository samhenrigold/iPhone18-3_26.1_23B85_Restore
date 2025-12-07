@interface ILClassificationUIExtensionViewController
- (ILClassificationResponse)classificationResponseForRequest:(ILClassificationRequest *)request;
- (void)prepareForClassificationRequest:(ILClassificationRequest *)request;
@end

@implementation ILClassificationUIExtensionViewController

- (void)prepareForClassificationRequest:(ILClassificationRequest *)request
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ILClassificationUIExtensionViewController prepareForClassificationRequest:]";
    _os_log_impl(&dword_238A6C000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Client did not override %s", &v4, 0xCu);
  }
}

- (ILClassificationResponse)classificationResponseForRequest:(ILClassificationRequest *)request
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CD2C28]) initWithClassificationAction:0];
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ILClassificationUIExtensionViewController classificationResponseForRequest:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_238A6C000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Client did not override %s, returning empty response: %@", &v6, 0x16u);
  }

  return v3;
}

@end