@interface SYDocumentAttributes(Writing)
@end

@implementation SYDocumentAttributes(Writing)

- (void)saveToFileURL:()Writing additionalAttributes:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize document attributes, error: %@", &v2, 0xCu);
}

@end