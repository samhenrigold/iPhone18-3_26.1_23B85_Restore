@interface AppleIDAuthenticationCopyAppleIDsWithBlock
@end

@implementation AppleIDAuthenticationCopyAppleIDsWithBlock

void ___AppleIDAuthenticationCopyAppleIDsWithBlock_block_invoke(uint64_t a1, const void *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = AppleIDGetLogHandle(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyMyAppleID failed with error %d\n", v11, 8u);
    }

    v7 = *MEMORY[0x1E695E480];
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v8 = Mutable;
      if (a2)
      {
        CFArrayAppendValue(Mutable, a2);
      }

      (*(v4 + 16))(v4, v8, 0);
      goto LABEL_13;
    }

    v7 = v9;
  }

  v8 = CFErrorCreate(v7, @"CSIdentityErrorDomain", -11, 0);
  (*(v4 + 16))(v4, 0, v8);
  if (!v8)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_13:
  CFRelease(v8);
  if (a2)
  {
LABEL_7:
    CFRelease(a2);
  }
}

@end