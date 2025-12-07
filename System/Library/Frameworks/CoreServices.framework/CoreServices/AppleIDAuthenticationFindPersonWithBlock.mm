@interface AppleIDAuthenticationFindPersonWithBlock
@end

@implementation AppleIDAuthenticationFindPersonWithBlock

void ___AppleIDAuthenticationFindPersonWithBlock_block_invoke(uint64_t a1, const __CFArray *a2, int a3)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a3)
  {
    v6 = AppleIDGetLogHandle(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11[0]) = 67109120;
      HIDWORD(v11[0]) = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "SFAppleIDClientCopyPersonInfo failed with error %d\n", v11, 8u);
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
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = ___ZL41handleSFAppleIDClientCopyPersonInfoResultPK9__CFArrayiU13block_pointerFvS1_hP9__CFErrorE_block_invoke;
      v11[3] = &__block_descriptor_tmp_74;
      v11[4] = Mutable;
      CFArrayApplyBlock(a2, v11);
      (*(v4 + 16))(v4, v8, 1, 0);
      goto LABEL_11;
    }

    v7 = v9;
  }

  v8 = CFErrorCreate(v7, @"CSIdentityErrorDomain", -11, 0);
  (*(v4 + 16))(v4, 0, 1, v8);
  if (!v8)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  CFRelease(v8);
  if (a2)
  {
LABEL_7:
    CFRelease(a2);
  }
}

@end