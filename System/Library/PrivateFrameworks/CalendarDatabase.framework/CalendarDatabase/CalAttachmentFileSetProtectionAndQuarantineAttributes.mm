@interface CalAttachmentFileSetProtectionAndQuarantineAttributes
@end

@implementation CalAttachmentFileSetProtectionAndQuarantineAttributes

uint64_t ___CalAttachmentFileSetProtectionAndQuarantineAttributes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Encountered an error setting protection/quarantine attributes with %@: %@", &v8, 0x16u);
  }

  return 1;
}

@end