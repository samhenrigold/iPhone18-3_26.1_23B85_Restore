@interface AppleIDAuthenticationCopyCertificateInfoWithBlock
@end

@implementation AppleIDAuthenticationCopyCertificateInfoWithBlock

void ___AppleIDAuthenticationCopyCertificateInfoWithBlock_block_invoke(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v3 = theDict;
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = AppleIDGetLogHandle(a1, theDict);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyCertificate failed with error %d\n", v10, 8u);
    }

    v7 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
    (*(v4 + 16))(v4, 0, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_12;
  }

  if (!theDict)
  {
    v9 = AppleIDGetLogHandle(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "Unexpected empty certificate info\n", v10, 2u);
    }

    v3 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -11, 0);
    (*(v4 + 16))(v4, 0, v3);
LABEL_12:
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
  (*(v4 + 16))(v4, Copy, 0);
  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_13:
  CFRelease(v3);
}

@end