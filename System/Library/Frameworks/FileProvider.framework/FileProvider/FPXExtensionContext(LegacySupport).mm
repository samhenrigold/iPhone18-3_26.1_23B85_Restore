@interface FPXExtensionContext(LegacySupport)
@end

@implementation FPXExtensionContext(LegacySupport)

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] couldn't import filename %@; %@", &v6, 0x16u);
}

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fixed up filename to %@", &v4, 0xCu);
}

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] importing item -> import document %@ in %@", &v3, 0x16u);
}

@end