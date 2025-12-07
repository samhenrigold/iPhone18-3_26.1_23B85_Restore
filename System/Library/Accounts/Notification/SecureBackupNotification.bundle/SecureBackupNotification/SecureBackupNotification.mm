uint64_t sub_29C910200()
{
  if (qword_2A1A11F68 != -1)
  {
    sub_29C910B38();
  }

  if (byte_2A1A11F58 != 1)
  {
    return 0;
  }

  v0 = [qword_2A1A11F60 currentUser];
  v1 = [v0 isLoginUser] ^ 1;

  return v1;
}

uint64_t sub_29C910270(void *a1)
{
  v1 = a1;
  v2 = [v1 accountType];
  v3 = [v2 identifier];
  if ([v3 compare:*MEMORY[0x29EDB81C8] options:4])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 aa_isManagedAppleID];
  }

  return v4;
}

void sub_29C9102F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_29C910B4C();
  }
}

void sub_29C9107AC(uint64_t a1, void *a2, void *a3)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C910BB4();
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:*MEMORY[0x29EDBFB00]];
    v7 = [v6 objectForKeyedSubscript:@"com.apple.idms.config.KCKey"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x29EDC0B58]) initWithUserActivityLabel:@"EMCS credential change"];
      v9 = *MEMORY[0x29EDC0B78];
      v17[0] = *MEMORY[0x29EDC0B60];
      v17[1] = v9;
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v18[0] = MEMORY[0x29EDB8EB0];
      v18[1] = v10;
      v12 = *MEMORY[0x29EDC0B68];
      v17[2] = *MEMORY[0x29EDC0B70];
      v17[3] = v12;
      v18[2] = v11;
      v18[3] = v7;
      v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = sub_29C9109C4;
      v14[3] = &unk_29F332D98;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      [v8 enableWithInfo:v13 completionBlock:v14];
    }

    else
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_29C910C1C(v8);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_29C9109C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_29C910B4C();
  }

  if (!v3)
  {
    [*(a1 + 32) _aa_clearRawPassword];
    v5 = [*(a1 + 32) credential];
    [v5 setCredentialItem:0 forKey:@"old-password"];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_29C910A5C()
{
  v0 = [MEMORY[0x29EDC82A8] sharedManager];
  v1 = qword_2A1A11F60;
  qword_2A1A11F60 = v0;

  result = [qword_2A1A11F60 isMultiUser];
  byte_2A1A11F58 = result;
  return result;
}

void sub_29C910AA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}