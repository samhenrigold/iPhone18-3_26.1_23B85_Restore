void *copyQuotedTokenList(const UInt8 **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 >= a1[1] || **a1 != 34)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = a1[1];
  v4 = *a1 + 1;
  *a1 = v4;
  if (v4 < v3)
  {
    while (1)
    {
      v5 = copyToken(a1);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      [v2 addObject:v5];

      v7 = 0;
      v8 = *a1;
LABEL_15:
      if (v8 >= a1[1] || v7 != 0)
      {
        return v2;
      }
    }

    if (*a1 >= a1[1])
    {
      v9 = 0;
    }

    else
    {
      v9 = **a1;
      if (v9 == 44)
      {
LABEL_13:
        v7 = 0;
        goto LABEL_14;
      }

      if (v9 == 34)
      {
        v7 = 1;
LABEL_14:
        v8 = *a1 + 1;
        *a1 = v8;
        goto LABEL_15;
      }
    }

    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "*** Parse failure(unexpected character '%c'). Ignoring", buf, 8u);
    }

    goto LABEL_13;
  }

  return v2;
}

void *_createResponseData(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  data = 58;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.data[13] = v6;
  *&c.data[6] = v6;
  *&c.data[10] = v6;
  *&c.Nl = v6;
  *&c.data[2] = v6;
  *&c.A = v6;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:32];
  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:32];
  memset(v28, 170, sizeof(v28));
  CC_MD5_Init(&c);
  if (a3)
  {
    CC_MD5_Update(&c, "AUTHENTICATE", 0xCu);
  }

  CC_MD5_Update(&c, &data, 1u);
  v9 = *(a2 + 40);
  if (v9)
  {
    CC_MD5_Update(&c, [*(a2 + 40) bytes], objc_msgSend(v9, "length"));
  }

  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v10 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v11 = v10 + 1;
    snprintf(__str, 3uLL, "%02x", md[v10]);
    [v8 appendBytes:__str length:2];
    v10 = v11;
  }

  while (v11 != 16);
  CC_MD5_Init(&c);
  v12 = *(a2 + 24);
  if (v12)
  {
    CC_MD5_Update(&c, [*(a2 + 24) bytes], objc_msgSend(v12, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v13 = *(a2 + 48);
  if (v13)
  {
    CC_MD5_Update(&c, [*(a2 + 48) bytes], objc_msgSend(v13, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v14 = *(a2 + 32);
  if (v14)
  {
    CC_MD5_Update(&c, [*(a2 + 32) bytes], objc_msgSend(v14, "length"));
  }

  CC_MD5_Final(v28, &c);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, v28, 0x10u);
  CC_MD5_Update(&c, &data, 1u);
  v15 = *(a1 + 8);
  if (v15)
  {
    CC_MD5_Update(&c, [*(a1 + 8) bytes], objc_msgSend(v15, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a2)
  {
    CC_MD5_Update(&c, [*a2 bytes], objc_msgSend(*a2, "length"));
  }

  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v16 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v17 = v16 + 1;
    snprintf(__str, 3uLL, "%02x", md[v16]);
    [v7 appendBytes:__str length:2];
    v16 = v17;
  }

  while (v17 != 16);
  CC_MD5_Init(&c);
  if (v7)
  {
    CC_MD5_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v18 = *(a1 + 8);
  if (v18)
  {
    CC_MD5_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v19 = *(a2 + 8);
  if (v19)
  {
    CC_MD5_Update(&c, [*(a2 + 8) bytes], objc_msgSend(v19, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a2)
  {
    CC_MD5_Update(&c, [*a2 bytes], objc_msgSend(*a2, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v20 = *(a2 + 16);
  if (v20)
  {
    CC_MD5_Update(&c, [v20 bytes], objc_msgSend(v20, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (v8)
  {
    CC_MD5_Update(&c, [v8 bytes], objc_msgSend(v8, "length"));
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:32];
  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v22 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v23 = v22 + 1;
    snprintf(__str, 3uLL, "%02x", md[v22]);
    [v21 appendBytes:__str length:2];
    v22 = v23;
  }

  while (v23 != 16);

  return v21;
}

uint64_t _GetTextBreakLocale()
{
  v0 = _GetTextBreakLocale___TextBreakLocale;
  if (!_GetTextBreakLocale___TextBreakLocale)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 objectForKey:@"AppleTextBreakLocale"];
    v3 = [v2 objectAtIndex:0];

    if (v3)
    {
      v4 = v3;
      v5 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF58] currentLocale];
      v6 = [v5 localeIdentifier];
      v7 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v6;
    }

    v0 = _GetTextBreakLocale___TextBreakLocale;
  }

  return [v0 UTF8String];
}

void _appendParagraphToOutput(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = v9;
  if (v10)
  {
    if (a3 > 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = a3;
      do
      {
        [(__CFString *)v12 appendString:@"<BLOCKQUOTE type=cite>"];
        --v14;
      }

      while (v14);
    }

    if (a5)
    {
      [(__CFString *)v12 appendString:@"<SPAN>"];
      v15 = [v10 length];
      v16 = v15;
      if (v15)
      {
        v17 = malloc_type_malloc(2 * v15 + 2, 0x1000040BDFB0063uLL);
        if (v17)
        {
          [v10 getCharacters:v17];
          v26 = v13;
          v18 = 0;
          v19 = 1;
          while (1)
          {
            v20 = v17[v18];
            chars = v20;
            if (v20 == 9)
            {
              v21 = @" &nbsp; &nbsp;";
            }

            else
            {
              v21 = 0;
            }

            if (v19 == 1 || v20 != 32)
            {
              v22 = v21;
            }

            else
            {
              v22 = @"&nbsp;";
              if (v17[v19 - 2] != 32)
              {
                if (!v21)
                {
                  goto LABEL_29;
                }

                goto LABEL_28;
              }
            }

            v23 = chars;
            if (v20 == 60)
            {
              v20 = chars;
              v22 = @"&lt;";
            }

            if (v20 == 62)
            {
              v24 = @"&gt;";
            }

            else
            {
              v23 = v20;
              v24 = v22;
            }

            if (v23 != 38 && !v24)
            {
LABEL_29:
              CFStringAppendCharacters(v12, &chars, 1);
              goto LABEL_30;
            }

LABEL_28:
            [(__CFString *)v12 appendString:?];
LABEL_30:
            v18 = v19;
            if (v16 <= v19++)
            {
              free(v17);
              v13 = v26;
              break;
            }
          }
        }
      }

      if (v11)
      {
        [(__CFString *)v12 appendString:@"</SPAN><BR>"];
      }

      if (v13)
      {
        do
        {
          [(__CFString *)v12 appendString:@"</BLOCKQUOTE>"];
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      [(__CFString *)v12 appendString:v10];
      if (v11)
      {
        [(__CFString *)v12 appendString:v11];
      }
    }
  }
}

void ___weakDDURLifierClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore"];
  if (!dlopen([v0 fileSystemRepresentation], 1))
  {
    v1 = MFLogGeneral();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = dlerror();
      v2 = "#Warning Failed to load DataDetectorsCore.framework (%s)";
      v3 = v1;
      v4 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  _weakDDURLifierClass_sDDURLifierClass = NSClassFromString(&cfstr_Ddurlifier.isa);
  if (!_weakDDURLifierClass_sDDURLifierClass)
  {
    v1 = MFLogGeneral();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v2 = "#Warning NSClassFromString(@DDURLifier) returned Nil";
      v3 = v1;
      v4 = 2;
LABEL_7:
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, v2, &v5, v4);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void sub_1B052FD20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0530678(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t __RegisterGmailAuthSchemes_block_invoke(uint64_t a1, uint64_t a2)
{
  [MEMORY[0x1E699B208] registerSchemeClass:objc_opt_class()];
  v2 = MEMORY[0x1E699B208];
  v3 = objc_opt_class();

  return [v2 registerSchemeClass:v3];
}

uint64_t __RegisterHotmailAuthSchemes_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E699B208];
  v3 = objc_opt_class();

  return [v2 registerSchemeClass:v3];
}

void sub_1B0531C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAPAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void unlockedReleaseNetworkAssertion(void *a1)
{
  v1 = a1;
  v2 = v1[37];
  if (v2)
  {
    v5 = v1;
    v1[37] = 0;

    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = +[MFNetworkController sharedInstance];
    [v3 removeObserver:v5 name:@"NetworkConfigurationDidChangeNotification" object:v4];

    v1 = v5;
  }
}

void sub_1B0531D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _mailboxDictionaryWithName(void *a1, void *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 count];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = [v5 objectAtIndex:i];
      v10 = [v9 objectForKey:@"MailboxName"];
      v11 = [v10 isEqual:v6];

      if (v11)
      {
        v12 = v9;
        if (a3)
        {
          *a3 = i;
        }
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1B053ABB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t IMAPNextUidFromSet(UniChar *buffer)
{
  v2 = *(buffer + 51);
  if (v2)
  {
    v3 = *(buffer + 50);
    if (v3 > v2)
    {
      v4 = v3 - 1;
LABEL_6:
      *(buffer + 50) = v4;
      return v4;
    }

    if (v3 < v2)
    {
      v4 = v3 + 1;
      goto LABEL_6;
    }

    *(buffer + 51) = 0;
    v6 = *(buffer + 23);
    v5 = *(buffer + 24);
    if (v5 < 1)
    {
      goto LABEL_24;
    }

    if (v6 < 0)
    {
      goto LABEL_24;
    }

    v7 = *(buffer + 20);
    if (v7 <= v6)
    {
      goto LABEL_24;
    }

    v8 = *(buffer + 17);
    if (v8)
    {
      v9 = *(v8 + 2 * *(buffer + 19) + 2 * v6);
    }

    else
    {
      v10 = *(buffer + 18);
      if (v10)
      {
        v9 = *(v10 + *(buffer + 19) + v6);
      }

      else
      {
        if (*(buffer + 22) <= v6 || (v11 = *(buffer + 21), v12 = *(buffer + 23), v11 > v6))
        {
          v13 = v6 - 4;
          if (v6 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v7)
          {
            v7 = v13 + 64;
          }

          *(buffer + 21) = v13;
          *(buffer + 22) = v7;
          v24.length = v7 - v13;
          v24.location = *(buffer + 19) + v13;
          CFStringGetCharacters(*(buffer + 16), v24, buffer);
          v11 = *(buffer + 21);
          v12 = *(buffer + 23);
          v5 = *(buffer + 24);
        }

        v9 = buffer[v6 - v11];
        v6 = v12;
      }
    }

    if (v9 != 44)
    {
LABEL_24:
      v14 = 0;
      *(buffer + 23) = v6 + v5;
    }

    else
    {
      *(buffer + 23) = v6 + 1;
      v14 = v5 - 1;
    }

    *(buffer + 24) = v14;
  }

  v4 = IMAPScanUid(buffer);
  *(buffer + 50) = v4;
  if (v4)
  {
    v15 = *(buffer + 24);
    if (v15 >= 1)
    {
      v16 = *(buffer + 23);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(buffer + 20);
        if (v17 > v16)
        {
          v18 = *(buffer + 17);
          if (v18)
          {
            v19 = *(v18 + 2 * *(buffer + 19) + 2 * v16);
          }

          else
          {
            v20 = *(buffer + 18);
            if (v20)
            {
              v19 = *(v20 + *(buffer + 19) + v16);
            }

            else
            {
              if (*(buffer + 22) <= v16 || (v21 = *(buffer + 21), v21 > v16))
              {
                v22 = v16 - 4;
                if (v16 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(buffer + 21) = v22;
                *(buffer + 22) = v17;
                v25.length = v17 - v22;
                v25.location = *(buffer + 19) + v22;
                CFStringGetCharacters(*(buffer + 16), v25, buffer);
                v21 = *(buffer + 21);
              }

              v19 = buffer[v16 - v21];
            }
          }

          if (v19 == 44)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_1B0E97570);
            return v4;
          }

          if (v19 == 58)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_1B0E97570);
            *(buffer + 51) = IMAPScanUid(buffer);
            return v4;
          }

          v16 = *(buffer + 23);
          v15 = *(buffer + 24);
        }
      }

      *(buffer + 23) = v16 + v15;
      *(buffer + 24) = 0;
    }
  }

  return v4;
}

uint64_t IMAPScanUid(UniChar *buffer)
{
  if (*(buffer + 24) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(buffer + 23);
  v4 = xmmword_1B0E97570;
  do
  {
    if (v3 < 0)
    {
      break;
    }

    v5 = *(buffer + 20);
    if (v5 <= v3)
    {
      break;
    }

    v6 = *(buffer + 17);
    if (v6)
    {
      v7 = *(v6 + 2 * *(buffer + 19) + 2 * v3);
    }

    else
    {
      v8 = *(buffer + 18);
      if (v8)
      {
        v7 = *(v8 + *(buffer + 19) + v3);
      }

      else
      {
        if (*(buffer + 22) <= v3 || (v9 = *(buffer + 21), v9 > v3))
        {
          v10 = v3 - 4;
          if (v3 < 4)
          {
            v10 = 0;
          }

          if (v10 + 64 < v5)
          {
            v5 = v10 + 64;
          }

          *(buffer + 21) = v10;
          *(buffer + 22) = v5;
          v16.length = v5 - v10;
          v16.location = *(buffer + 19) + v10;
          v15 = v4;
          CFStringGetCharacters(*(buffer + 16), v16, buffer);
          v4 = v15;
          v9 = *(buffer + 21);
        }

        v7 = buffer[v3 - v9];
      }
    }

    v11 = v7 - 48;
    if (v11 > 9)
    {
      break;
    }

    v2 = v11 + 10 * v2;
    v12 = *(buffer + 92);
    v13 = vaddq_s64(v12, v4);
    *(buffer + 92) = v13;
    v3 = v13.i64[0];
  }

  while (v12.i64[1] > 1);
  return v2;
}

id MFIMAPDateSearchStringForDate(void *a1)
{
  v1 = a1;
  if (MFIMAPDateSearchStringForDate_onceToken != -1)
  {
    MFIMAPDateSearchStringForDate_cold_1();
  }

  v2 = [MFIMAPDateSearchStringForDate_formatter stringFromDate:v1];

  return v2;
}

uint64_t __MFIMAPDateSearchStringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MFIMAPDateSearchStringForDate_formatter;
  MFIMAPDateSearchStringForDate_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] ef_posixLocale];
  [MFIMAPDateSearchStringForDate_formatter setLocale:v2];

  v3 = MFIMAPDateSearchStringForDate_formatter;

  return [v3 setDateFormat:@"d-MMM-yyyy"];
}

id MFUIDPlusInfoFromResponse(void *a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 responseType] == 2 && objc_msgSend(v1, "responseCode") == 16)
  {
    v2 = [v1 responseInfo];
    v3 = v2;
    if (v2 && [v2 count] >= 3)
    {
      v9[0] = @"UIDVALIDITY";
      v4 = [v3 objectAtIndexedSubscript:0];
      v10[0] = v4;
      v9[1] = @"Source UIDS";
      v5 = [v3 objectAtIndexedSubscript:1];
      v10[1] = v5;
      v9[2] = @"Destination UIDS";
      v6 = [v3 objectAtIndexedSubscript:2];
      v10[2] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1B053DD98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFIMAPConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B053DEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t locked_supportsCapability(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((((v3[64] | (*(v3 + 130) << 16)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (a2 > 14)
  {
    if (a2 == 16)
    {
      v4 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5 = [v4 BOOLForKey:@"DisableCONDSTORE"];
    }

    else
    {
      if (a2 != 15)
      {
        goto LABEL_13;
      }

      v4 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5 = [v4 BOOLForKey:@"DisableESEARCH"];
    }

    goto LABEL_11;
  }

  if (a2 != 5)
  {
    if (a2 != 14)
    {
      goto LABEL_13;
    }

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 BOOLForKey:@"DisableCOMPRESS"];
LABEL_11:
    v9 = v5;

    if (v9)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E699B7B0] currentDevice];
  v7 = [v6 isPlatform:2];

  v8 = v7 ^ 1;
LABEL_14:

  return v8 & 1;
}

void sub_1B053E060(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *MFIMAPStringFromMailboxName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = _IMAPCreateQuotedString(v1);
  }

  else
  {
    v2 = @"";
  }

  return v2;
}

__CFString *_IMAPCreateQuotedString(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v3 = v2;
  if (!v2)
  {
    v6 = @"";
    goto LABEL_65;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v4;
  v48 = v4;
  v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  *buffer = v4;
  v42 = v4;
  chars = -21846;
  v49 = v1;
  v52 = 0;
  v53 = v2;
  v38 = v1;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  v51 = CStringPtr;
  v10 = v3 + 2;
  v11 = 64;
  v54 = 0;
  v55 = 0;
  do
  {
    if (v9 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v9;
    }

    if (v9 < 0 || (v13 = v53, v53 <= v9))
    {
      v15 = 0;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (CharactersPtr)
      {
        v14 = &CharactersPtr[v52];
        goto LABEL_14;
      }

      if (!v51)
      {
        if (v55 <= v9 || (v16 = v54, v54 > v9))
        {
          v17 = -v12;
          v18 = v12 + v7;
          v19 = v11 - v12;
          v20 = v9 + v17;
          v21 = v20 + 64;
          if (v20 + 64 >= v53)
          {
            v21 = v53;
          }

          v54 = v20;
          v55 = v21;
          if (v53 >= v19)
          {
            v13 = v19;
          }

          v57.location = v20 + v52;
          v57.length = v13 + v18;
          CFStringGetCharacters(v49, v57, buffer);
          v16 = v54;
        }

        v14 = &buffer[-v16];
LABEL_14:
        v15 = v14[v9];
        if (!v8)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v15 = v51[v52 + v9];
      if (!v8)
      {
LABEL_20:
        v8 = CFCharacterSetIsCharacterMember(sIMAPNeedsQuoteCharacterSet, v15) != 0;
        goto LABEL_21;
      }
    }

LABEL_17:
    v8 = 1;
LABEL_21:
    if (v15 == 92 || v15 == 34)
    {
      ++v10;
    }

    ++v9;
    --v7;
    ++v11;
  }

  while (v3 != v9);
  v1 = v38;
  if (v8)
  {
    Mutable = CFStringCreateMutable(0, v10);
    chars = 34;
    CFStringAppendCharacters(Mutable, &chars, 1);
    v23 = 0;
    v24 = 0;
    v25 = 64;
    while (1)
    {
      v26 = v24 >= 4 ? 4 : v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        v27 = v53;
        if (v53 > v24)
        {
          break;
        }
      }

      chars = 0;
LABEL_50:
      CFStringAppendCharacters(Mutable, &chars, 1);
      ++v24;
      --v23;
      ++v25;
      if (v3 == v24)
      {
        chars = 34;
        v1 = v38;
        CFStringAppendCharacters(Mutable, &chars, 1);
        goto LABEL_61;
      }
    }

    if (CharactersPtr)
    {
      v28 = &CharactersPtr[v52];
      goto LABEL_43;
    }

    if (v51)
    {
      v29 = v51[v52 + v24];
    }

    else
    {
      if (v55 <= v24 || (v30 = v54, v54 > v24))
      {
        v31 = -v26;
        v32 = v26 + v23;
        v33 = v25 - v26;
        v34 = v24 + v31;
        v35 = v34 + 64;
        if (v34 + 64 >= v53)
        {
          v35 = v53;
        }

        v54 = v34;
        v55 = v35;
        if (v53 >= v33)
        {
          v27 = v33;
        }

        v58.location = v34 + v52;
        v58.length = v27 + v32;
        CFStringGetCharacters(v49, v58, buffer);
        v30 = v54;
      }

      v28 = &buffer[-v30];
LABEL_43:
      v29 = v28[v24];
    }

    chars = v29;
    if (v29 == 92 || v29 == 34)
    {
      v39 = 92;
      CFStringAppendCharacters(Mutable, &v39, 1);
    }

    goto LABEL_50;
  }

  Mutable = 0;
LABEL_61:
  if (Mutable)
  {
    v36 = Mutable;
  }

  else
  {
    v36 = v1;
  }

  v6 = v36;

LABEL_65:

  return v6;
}

void sub_1B0541A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_messageFromResponse(void *a1)
{
  v1 = a1;
  if (([v1 responseType] - 1) >= 6)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v2 = [v1 userString];
  v3 = v2;
  if (!v2)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:&stru_1F273A5E0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

LABEL_8:
  v5 = v4;

  return v4;
}

void sub_1B0545C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0545E68(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t _processSelectCommand(void *a1, uint64_t a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v27 = a3;
  v6 = [_MFIMAPCommandParameters alloc];
  v7 = MFIMAPStringFromMailboxName(v27);
  v35[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v9 = [(_MFIMAPCommandParameters *)v6 initWithCommand:a2 arguments:v8];

  [v5 mf_lock];
  v34 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v11 = [v5 _responseFromSendingCommands:v10];

  v12 = [v11 responseType];
  if (v12 == 2)
  {
    v16 = [v27 copy];
    v17 = *(v5 + 22);
    *(v5 + 22) = v16;

    *(v5 + 152) = *(v5 + 152) & 0xF8 | 3;
    *(v5 + 240) &= ~1u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(_MFIMAPCommandParameters *)v9 untaggedResponses];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v19)
    {
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          if ([v22 responseType] == 2 && objc_msgSend(v22, "responseCode") == 13)
          {
            *(v5 + 240) |= 1u;
          }

          if ([v22 responseType] == 2 && objc_msgSend(v22, "responseCode") == 5)
          {
            v23 = [v22 responseInfo];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count])
            {
              v24 = IMAPPermanentFlagsFromArray(v23);
            }

            else
            {
              v24 = 1;
            }

            [v5 setPermanentFlags:v24];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v19);
    }

    if (![v5 permanentFlags])
    {
      [v5 setPermanentFlags:2147483774];
    }

    v15 = 1;
  }

  else
  {
    if (v12 == 4 && (32 * *(v5 + 152)) >= 65)
    {
      v13 = *(v5 + 22);
      *(v5 + 22) = 0;

      *(v5 + 152) = *(v5 + 152) & 0xF8 | 2;
      *(v5 + 240) &= ~1u;
    }

    v14 = [v5 _errorForResponse:v11 commandParams:v9];
    v15 = 0;
  }

  [v5 mf_unlock];
  v32 = v9;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v5 didFinishCommands:v25];

  return v15;
}

uint64_t _doUidSearch(void *a1, void *a2, void *a3, void *a4, BOOL *a5, char a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v35 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count", v12) + 2 * (v11 != 0)}];
  v14 = [[_MFIMAPCommandParameters alloc] initWithCommand:24 arguments:v13];
  if (v11)
  {
    if ((a6 & 1) == 0)
    {
      [v13 addObject:@"UID"];
    }

    [v13 addObject:v11];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [v10 copyArgumentForSearchTerm:*(*(&v38 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v16);
  }

  v43 = v14;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v36 = [v10 _responseFromSendingCommands:v20];

  v21 = [v36 responseType];
  if (a5)
  {
    *a5 = v21 == 2;
  }

  if (v21 == 2 && (-[_MFIMAPCommandParameters untaggedResponses](v14, "untaggedResponses"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 count], v22, v23))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = [(_MFIMAPCommandParameters *)v14 untaggedResponses];
      v28 = [v27 objectAtIndex:v26];

      if ([v28 responseType] == 14)
      {
        v29 = [v28 searchResults];
        v30 = v29;
        if (a4)
        {
          if (v25)
          {
            [v25 addObjectsFromArray:v29];
          }

          else
          {
            v25 = [v29 mutableCopyWithZone:0];
          }
        }

        v31 = [(_MFIMAPCommandParameters *)v14 untaggedResponses];
        [v31 removeObjectAtIndex:v26];

        --v23;
        v24 = 1;
      }

      else
      {
        ++v26;
      }
    }

    while (v26 < v23);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v42 = v14;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [v10 didFinishCommands:v32];

  if (a4)
  {
    [v25 sortUsingSelector:sel_compare_];
    v33 = v25;
    *a4 = v25;
  }

  return v24 & 1;
}

void sub_1B05492C8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id uidSetForUIDArray(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD50] indexSet];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) integerValue];
        if ((v7 - 1) <= 0xFFFFFFFE)
        {
          [v2 addIndex:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

void sub_1B054AA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Block_object_dispose((v26 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B054ECE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFInvocationQueue;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B054FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0550B98(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0550F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B055337C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05534A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05535CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05536F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0553830(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B055396C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0555AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void initializeSharedInstance()
{
  v0 = objc_alloc_init(MFLibraryStore);
  v1 = sSharedInstance;
  sSharedInstance = v0;

  v2 = sSharedInstance;
  v3 = +[MFMailMessageLibrary defaultInstance];
  [v2 setLibrary:?];
}

id partDataFromFullBodyDataWithUnixLineEndings(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = [v9 range];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v12 = v10;
  v13 = v11 + v10;
  if (v11 + v10 > [v7 length])
  {
    if (!v11)
    {
      v14 = [v7 mf_dataByConvertingUnixNewlinesToNetwork];
      v15 = [v14 length];

      if (v15 == v13)
      {
        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v8 messageID];
          v18 = [v9 partNumber];
          v22 = 138543618;
          v23 = v17;
          v24 = 2114;
          v25 = v18;
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "#CacheLoads part data matches full body data with network line endings, returning full body data %{public}@:%{public}@", &v22, 0x16u);
        }

        v19 = v7;
        goto LABEL_10;
      }
    }

LABEL_8:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = [v7 mf_subdataWithRange:{v11, v12}];
LABEL_10:
  v20 = v19;
  if (a4)
  {
    *a4 = 1;
  }

LABEL_12:

  return v20;
}

id partDataFromFullBodyData(void *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v18 = 0;
  v14 = [v11 fullBodyDataForMessage:v12 andHeaderDataIfReadilyAvailable:0 isComplete:&v18 downloadIfNecessary:a5 usePartDatas:0 didDownload:a6];
  v15 = v14;
  if (v14 && v18 == 1)
  {
    v16 = partDataFromFullBodyDataWithUnixLineEndings(v14, v12, v13, a4);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1B055AD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B055C47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1B055FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id accountWithPathTryResolvingSymlinks(void *a1, int a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = [MailAccount _accountWithPath:v3];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      v6 = [v3 mf_betterStringByResolvingSymlinksInPath];

      v4 = [MailAccount _accountWithPath:v6];
      v3 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B05612A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailAccount;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id mailAccountQueue(uint64_t a1)
{
  if (mailAccountQueue_predicate != -1)
  {
    mailAccountQueue_cold_1();
  }

  v2 = mailAccountQueue_queue;

  return v2;
}

void sub_1B0561784(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0561A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v17;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0561B30(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void *encodedURLComponent(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] ef_accountAllowedCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _invalidateMailboxCache(void *a1)
{
  v2 = a1;
  [v2 setCacheHasBeenRead:0];
  [v2[13] invalidate];
  [v2 mf_lock];
  v1 = v2[13];
  v2[13] = 0;

  [v2 mf_unlock];
}

void sub_1B05650FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B056553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0568088(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B05684EC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void _recurseIntoFileSystem(void *a1, id *a2)
{
  v9 = [a1 objectForKey:@"MailboxName"];
  v4 = [a1 objectForKey:@"MailboxAttributes"];
  v5 = [v4 unsignedIntValue];

  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v7 = [a2[1] length];
    v8 = [a2[2] childWithName:v9];
    if (!v8)
    {
      v8 = [*a2 _copyMailboxWithParent:a2[2] name:v9 attributes:v6 dictionary:0];
    }

    [a2[1] appendString:@"/"];
    [a2[1] appendString:v9];
    [*a2 _loadEntriesFromFileSystemPath:a2[1] parent:v8];
    [a2[1] deleteCharactersInRange:{v7, objc_msgSend(a2[1], "length") - v7}];
  }
}

void sub_1B056B3D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (v10)
    {
      v10[2](v10);
    }

    objc_end_catch();
    JUMPOUT(0x1B056B34CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B056B768(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B056C278(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B056CD38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

CFComparisonResult _MFCompareMailboxDictionariesByName(void *a1, void *a2)
{
  v2 = kCFCompareEqualTo;
  if (a1 && a2)
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    if (v4)
    {
      v5 = [a2 objectForKey:@"MailboxName"];
      if (v5)
      {
        v2 = CFStringCompare(v4, v5, 0);
      }

      else
      {
        v2 = kCFCompareEqualTo;
      }
    }

    else
    {
      v2 = kCFCompareEqualTo;
    }
  }

  return v2;
}

CFComparisonResult _compareNameWithMailboxDictionary(void *a1, void *a2, void *a3)
{
  if (a1 == a3)
  {
    v6 = a1;
    v5 = [a2 objectForKey:@"MailboxName"];
  }

  else
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    v5 = a2;
    v6 = v4;
  }

  v7 = kCFCompareEqualTo;
  if (v6 && v5)
  {
    v7 = CFStringCompare(v6, v5, 0);
  }

  return v7;
}

void __mailAccountQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.email.MailAccount", v2);
  v1 = mailAccountQueue_queue;
  mailAccountQueue_queue = v0;
}

void sub_1B056E240(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056EB00(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056EB9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056FC08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMailboxUid;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B056FEC8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id accountForHeaders(void *a1)
{
  v1 = [a1 firstSenderAddress];
  v2 = [MailAccount accountContainingEmailAddress:v1];
  v3 = [v2 deliveryAccount];

  return v3;
}

void sub_1B05715D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0571BB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFMailDelivery;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0572C90(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_1B05731C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0574404(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0574BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t _MFFlagsBySettingValueForKey(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 BOOLValue];
  if ([v5 isEqual:@"MessageIsRead"])
  {
    if ((a1 & 1) != v7)
    {
      a1 = a1 & 0xFFFFFFFFFFFFFFFELL | v7;
    }

    goto LABEL_16;
  }

  if ([v5 isEqual:@"MessageIsDeleted"])
  {
    v8 = (a1 >> 1) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    v10 = v7 == 0;
    v11 = 2;
LABEL_11:
    if (v10)
    {
      v11 = 0;
    }

    v12 = v11 | v9;
    if (v8 != v7)
    {
      a1 = v12;
    }

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageWasRepliedTo"])
  {
    v8 = (a1 >> 2) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v10 = v7 == 0;
    v11 = 4;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasForwarded"])
  {
    v8 = (a1 >> 8) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v10 = v7 == 0;
    v11 = 256;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasRedirected"])
  {
    if (((a1 >> 9) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v15 = v7 == 0;
    v16 = 512;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsJunk"])
  {
    if (((a1 >> 21) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x200000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsNotJunk"])
  {
    if (((a1 & 0x80000000) != 0) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x80000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsFlagged"])
  {
    if (((a1 >> 4) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFFEFLL;
    v15 = v7 == 0;
    v16 = 16;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageFlagColor"])
  {
    v17 = [v6 unsignedIntegerValue];
    if (((a1 >> 41) & 7) != v17)
    {
      a1 = a1 & 0xFFFFF1FFFFFFFFFFLL | ((v17 & 7) << 41);
    }

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MFMessageIsTouchedByCleanup"])
  {
    if (((a1 >> 47) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFF7FFFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x800000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsServerSearchResult"])
  {
    if (((a1 >> 7) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFF7FLL;
    v15 = v7 == 0;
    v16 = 128;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsThreadSearchResult"])
  {
    if (((a1 >> 20) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFEFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x100000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageSenderIsVIP"])
  {
    if (((a1 >> 24) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFEFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x1000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"EMMessageDeliveryStatusInProgress"])
  {
    if (((a1 >> 37) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFDFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x2000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageQueuedForDelivery"])
  {
    if (((a1 >> 38) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFBFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x4000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageToContainsAccountAddress"])
  {
    if (((a1 >> 39) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFF7FFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x8000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageCcContainsAccountAddress"])
  {
    if (((a1 >> 40) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFEFFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x10000000000;
LABEL_29:
    if (v15)
    {
      v16 = 0;
    }

    a1 = v16 | v14;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageToOrCcContainsAccountAddress"])
  {
    v18 = 0x8000000000;
    if (!v7)
    {
      v18 = 0;
    }

    v19 = v18 | a1 & 0xFFFFFE7FFFFFFFFFLL;
    v20 = 0x10000000000;
    if (!v7)
    {
      v20 = 0;
    }

    a1 = v19 | v20;
  }

  else if (([v5 isEqualToString:@"_Encoding"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"MessageChangeReason") & 1) == 0)
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      _MFFlagsBySettingValueForKey_cold_1(v5, v21);
    }
  }

LABEL_16:

  return a1;
}

unint64_t MFMessageFlagsByApplyingDictionary(unint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        a1 = _MFFlagsBySettingValueForKey(a1, v8, v9);
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return a1;
}

unint64_t _MFFlagsBySettingNumberOfAttachments(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 63;
  }

  if (a2 > 0x3E)
  {
    v4 = 62;
  }

  v5 = 8;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = 0x800000;
  if (!a3)
  {
    v6 = 0;
  }

  return v6 & 0xFFFFFFFFFFFF03FFLL | a1 & 0xFFFFFFFFFF7F03F7 | v5 & 0xFFFFFFFFFFFF03FFLL | ((v4 & 0x3F) << 10);
}

void sub_1B0576644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMailMessageLibrary;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t setFlagsForMessage(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [@"UPDATE messages SET flags = :flags read = :{flagged = :flagged, flag_color = :flag_color, deleted = :deleted, sender_vip = :sender_vip, encoding = :encoding, remote_id = :uid", "stringByAppendingString:", @" WHERE ROWID = :rowid"}read];
  v8 = [v5 preparedStatementForQueryString:v7];
  v9 = [v8 compiled];

  if (v9)
  {
    v10 = sqlite3_bind_parameter_index(v9, ":flags");
    sqlite3_bind_int64(v9, v10, a3);
    v11 = sqlite3_bind_parameter_index(v9, ":read");
    if (a3)
    {
      v12 = "1";
    }

    else
    {
      v12 = "0";
    }

    sqlite3_bind_text(v9, v11, v12, 1, 0);
    v13 = sqlite3_bind_parameter_index(v9, ":flagged");
    if ((a3 & 0x10) != 0)
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }

    sqlite3_bind_text(v9, v13, v14, 1, 0);
    v15 = sqlite3_bind_parameter_index(v9, ":flag_color");
    if ((a3 & 0x10) != 0)
    {
      sqlite3_bind_int64(v9, v15, (a3 >> 41) & 7);
    }

    else
    {
      sqlite3_bind_null(v9, v15);
    }

    v17 = sqlite3_bind_parameter_index(v9, ":deleted");
    if ((a3 & 2) != 0)
    {
      v18 = "1";
    }

    else
    {
      v18 = "0";
    }

    sqlite3_bind_text(v9, v17, v18, 1, 0);
    v19 = sqlite3_bind_parameter_index(v9, ":sender_vip");
    if ((a3 & 0x1000000) != 0)
    {
      v20 = "1";
    }

    else
    {
      v20 = "0";
    }

    sqlite3_bind_text(v9, v19, v20, 1, 0);
    v21 = [v6 remoteID];
    v22 = [v21 UTF8String];

    if (v22)
    {
      v23 = sqlite3_bind_parameter_index(v9, ":uid");
      v24 = strlen(v22);
      sqlite3_bind_text(v9, v23, v22, v24, 0);
    }

    else
    {
      v25 = sqlite3_bind_parameter_index(v9, ":uid");
      sqlite3_bind_null(v9, v25);
    }

    v26 = [v6 preferredEncoding];
    v27 = sqlite3_bind_parameter_index(v9, ":encoding");
    if (v26 == -1)
    {
      sqlite3_bind_null(v9, v27);
    }

    else
    {
      sqlite3_bind_int(v9, v27, v26);
    }

    v28 = sqlite3_bind_parameter_index(v9, ":rowid");
    sqlite3_bind_int64(v9, v28, [v6 libraryID]);
    v29 = sqlite3_step(v9);
    sqlite3_reset(v9);
    [v5 checkForConnectionErrorWithMessage:@"setting flags"];
    if (v29 == 101)
    {
      v16 = 0;
    }

    else
    {
      v16 = v29;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void sub_1B0578C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0579064(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05796C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0579C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id unlockedMailboxUidForMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 mailboxUidForMessage:v4];
  }

  else
  {
    [v4 mailbox];
  }
  v5 = ;

  return v5;
}

void sub_1B057B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1B057CEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  _Block_object_dispose((v23 - 232), 8);

  _Block_object_dispose((v23 - 200), 8);
  _Block_object_dispose((v23 - 168), 8);

  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B0580308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  STACK[0x3A8] = a1;

  _Block_object_dispose(&STACK[0x548], 8);
  _Block_object_dispose(&STACK[0x578], 8);

  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5C8], 8);
  _Block_object_dispose(&STACK[0x5E8], 8);
  _Block_object_dispose(&STACK[0x608], 8);
  _Block_object_dispose(&STACK[0x628], 8);

  _Block_object_dispose(&STACK[0x658], 8);
  _Block_object_dispose(&STACK[0x688], 8);

  _Block_object_dispose(&STACK[0x6B8], 8);
  _Block_object_dispose(&STACK[0x6E8], 8);

  _Block_object_dispose(&STACK[0x718], 8);
  _Block_object_dispose(&STACK[0x748], 8);

  _Unwind_Resume(STACK[0x3A8]);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

sqlite3_int64 createRowidForMailbox(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v10 sqlDB];
  v15 = [v12 objectForKey:v11];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    insert_rowid = [v9 mailboxIDForURLString:v11];
    v17 = *MEMORY[0x1E699A728];
    if (insert_rowid == *MEMORY[0x1E699A728])
    {
      v19 = sqlite3_exec_printf(v14, "INSERT INTO mailboxes (url) values ('%q')", 0, 0, 0, [v11 UTF8String]);
      [v10 checkForConnectionErrorWithMessage:@"inserting mailbox URL"];
      if (!v19)
      {
        insert_rowid = sqlite3_last_insert_rowid(v14);
        _MFLockGlobalLock();
        v26 = [MEMORY[0x1E696AD98] numberWithLongLong:insert_rowid];
        [v9[4] setObject:v11 forKeyedSubscript:?];
        [v9[5] setObject:v26 forKeyedSubscript:v11];
        _MFUnlockGlobalLock();
        v25 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
        v20 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v25];
        v21 = EDLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v28 = insert_rowid;
          v29 = 2114;
          v30 = v20;
          _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Created rowid %lld from mailbox: %{public}@", buf, 0x16u);
        }

        v22 = [v9 hookRegistry];
        [v22 persistenceIsAddingMailboxWithDatabaseID:insert_rowid objectID:v20 generationWindow:v13];
      }
    }

    if (insert_rowid != v17)
    {
      v23 = EFStringWithInt64();
      [v12 setObject:v23 forKey:v11];

      v17 = insert_rowid;
    }
  }

  return v17;
}

uint64_t _writeDataHolderForMessageAndPart(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v44 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a2;
  v33 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = [v20 data];
  if ([v19 isEqualToString:@"summary"])
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
    v24 = [v17 _setSummary:v23 forMessageWithRowID:a3 connection:v18];

    goto LABEL_17;
  }

  if (_shouldStoreInDatabase(v19, a9))
  {
    v25 = [v17 _setMessageData:v22 libraryID:a3 part:v19 partial:a8 complete:a9 ^ 1u connection:v18];
LABEL_16:
    v24 = v25;
    goto LABEL_17;
  }

  if (!v33)
  {
    __assert_rtn("_writeDataHolderForMessageAndPart", "MailMessageLibrary.m", 8523, "directory");
  }

  v26 = MFPersistenceLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134350082;
    v35 = a3;
    v36 = 2048;
    v37 = a4;
    v38 = 1026;
    v39 = a8;
    v40 = 2114;
    v41 = v19;
    v42 = 2048;
    v43 = [v20 length];
    _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Writing body data for message database ID: %{public}lld (globalID %lld), partial: %{public}d, part: %{public}@ of length %lu", buf, 0x30u);
  }

  if (_os_feature_enabled_impl())
  {
    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  if (!v19)
  {
    v25 = [v17 _writeEmlxFileOfType:a8 forAccount:v21 toDirectory:v33 withData:v20 protectionClass:v27];
    goto LABEL_16;
  }

  if (a8)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _writeDataHolderForMessageAndPart(MFMailMessageLibrary *__strong, EDPersistenceDatabaseConnection *__strong, EMDatabaseID, EMGlobalMessageID, NSString *__strong, NSString *__strong, MFDataHolder *__strong, BOOL, BOOL, MailAccount *__strong)"}];
    [v31 handleFailureInFunction:v32 file:@"MailMessageLibrary.m" lineNumber:8527 description:@"cannot write partial MIME parts."];
  }

  v28 = [v19 stringByAppendingPathExtension:@"emlxpart"];
  v29 = [v33 stringByAppendingPathComponent:v28];

  v24 = [v17 _writeEmlxFile:v29 withData:v20 protectionClass:v27 purgeable:{objc_msgSend(v21, "supportsPurge")}];
LABEL_17:

  return v24;
}

uint64_t _protectionClassForMailbox(void *a1)
{
  v1 = a1;
  if ((_os_feature_enabled_impl() & 1) != 0 || [v1 mailboxType] == 6 || objc_msgSend(v1, "mailboxType") == 106)
  {
    v2 = 3;
  }

  else if ([v1 isSendLaterMailbox])
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_1B0581F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 54);

  _Unwind_Resume(a1);
}

void sub_1B05820A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1B05826F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v35 - 128), 8);
  _Block_object_dispose((v35 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1B0582CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v26 = v24;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0583494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16)
{
  _Block_object_dispose((v24 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1B0583CE4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0584690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  _Block_object_dispose((v16 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1B0585160(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t progressHandler(uint64_t a1)
{
  if ([*(a1 + 8) shouldCancel])
  {
    sqlite3_interrupt(*a1);
  }

  return 0;
}

void sub_1B05856F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  __destructor_8_s0_s8_s16_s72(va);
  _Unwind_Resume(a1);
}

uint64_t handleMessageRow(void *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:v9];
  [*(a2 + 8) addObject:v11];
  v12 = [*(a2 + 8) count];
  v13 = *(a2 + 24);
  if (v12 >= v13)
  {
    *(a2 + 24) = 2 * v13;
    v15 = *(a2 + 28) + *(a2 + 28);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v14 = *(a2 + 28);
    if (Current - *(a2 + 40) <= v14)
    {
      goto LABEL_15;
    }

    v15 = v14 + ((v14 * v12) / v13);
  }

  *(a2 + 28) = v15;
  v16 = MFLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a2 + 48);

    if (!v17)
    {
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a2 + 40);
        v20 = [*(a2 + 8) count];
        v25 = 134218240;
        v26 = Current - v19;
        v27 = 2048;
        v28 = v20;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#SQLite #Performance %.3f seconds to load first batch of %lu messages", &v25, 0x16u);
      }
    }
  }

  else
  {
  }

  if (*(a2 + 28) > 16.0)
  {
    *(a2 + 28) = 1098907648;
  }

  v21 = *(a2 + 8);
  [*(a2 + 16) newMessagesAvailable:v21];
  *(a2 + 48) += [v21 count];
  *(a2 + 40) = Current;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(a2 + 8);
  *(a2 + 8) = v22;

LABEL_15:
  return 1;
}

void sub_1B0585C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05866E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1B0586CE0(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1B0587180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

id mimePartFromFilename(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 pathExtension], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"emlxpart"), v3, (v4 & 1) != 0))
  {
    v5 = [v2 stringByDeletingPathExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B05879E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05888D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0588CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B05899A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0589BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058A99C(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1B058AB7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B058B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B058B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B058C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B058CA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B058F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058FB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0590804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0590C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05916B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1B0593894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B0593958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B05943CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0594830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05950A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 160), 8);

  _Unwind_Resume(a1);
}

id filenameForMIMEPart(void *a1)
{
  v1 = [a1 stringByAppendingPathExtension:@"emlxpart"];

  return v1;
}

id _dataPathForMessageAndPart(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 bodyMigrator];
  [v8 migrateBodyForMessageIfNecessary:v6];

  v9 = [v6 globalMessageID];
  v10 = [v6 account];
  if (v7)
  {
    v11 = [v7 stringByAppendingPathExtension:@"emlxpart"];
  }

  else
  {
    v11 = @"full.emlx";
  }

  v12 = [v5 messageBasePathForAccount:v10];
  v13 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:v9 basePath:v12 purgeable:{objc_msgSend(v10, "supportsPurge")}];
  v14 = [v13 URLByAppendingPathComponent:v11 isDirectory:0];

  v15 = [v14 path];

  return v15;
}

void sub_1B0596614(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

dispatch_data_t mappedDispatchDataFromFileURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v15 = 0;
    v3 = [v1 getResourceValue:&v15 forKey:*MEMORY[0x1E695DB50] error:0];
    v4 = v15;
    v5 = v4;
    if ((v3 & 1) != 0 && (v6 = [v4 unsignedLongLongValue]) != 0)
    {
      v7 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v1 error:0];
      v8 = v7;
      if (v7 && (v9 = mmap(0, v6, 1, 1, [v7 fileDescriptor], 0), (v10 = v9) != 0))
      {
        v11 = dispatch_data_create(v9, v6, 0, *MEMORY[0x1E69E9650]);
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          munmap(v10, v6);
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1B059779C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05987F0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id _bodyDataFromData(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  v5 = [v3 mf_rangeOfRFC822HeaderData];
  v7 = v6;
  if (v6 == v4)
  {
    if (v4)
    {
      v8 = [MEMORY[0x1E695DEF0] data];
      if (a2)
      {
        v9 = v3;
        *a2 = v3;
      }
    }

    else
    {
      v11 = EDLibraryLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13[0] = 0;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "Empty message data", v13, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v10 = v5;
    v8 = [v3 mf_subdataWithRange:{v5 + v6, v4 - (v5 + v6)}];
    if (a2)
    {
      *a2 = [v3 mf_subdataWithRange:{v10, v7}];
    }
  }

  return v8;
}

void sub_1B0598EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v17 = v16;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0599540(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id _dataForMessageAndPart(void *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if ([v11 isEqualToString:@"summary"])
  {
    __assert_rtn("_dataForMessageAndPart", "MailMessageLibrary.m", 6282, "![part isEqualToString:MFMessagePartNameSummary]");
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = 0;
  v12 = [v9 database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_dataForMessageAndPart"];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___dataForMessageAndPart_block_invoke;
  v26 = &unk_1E7AA44F8;
  v14 = v9;
  v27 = v14;
  v31 = a5;
  v15 = v11;
  v28 = v15;
  v32 = a4;
  v16 = v10;
  v29 = v16;
  v30 = &v33;
  [v12 __performReadWithCaller:v13 usingBlock:&v23];

  v17 = v34[5];
  if (v17)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v34[5] length];
      v20 = [v16 ef_publicDescription];
      *buf = 134218498;
      v40 = v19;
      v41 = 2114;
      v42 = v20;
      v43 = 2114;
      v44 = v15;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#CacheLoads data from database of length %lu for message %{public}@ part %{public}@", buf, 0x20u);
    }

    v17 = v34[5];
  }

  v21 = v17;

  _Block_object_dispose(&v33, 8);

  return v21;
}

void sub_1B0599CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B059A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B059A8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B059AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_1B059BA00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t handleIterativeSearchRow(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = *(a2 + 72);
  if (v10)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      __assert_rtn("handleIterativeSearchRow", "MailMessageLibrary.m", 3074, "c->handlerWantsMessageObjects");
    }

    v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:v9];
    v12 = [v11 account];
    v13 = [*a2 urlForMailboxID:{objc_msgSend(v11, "mailboxID")}];
    v14 = [v12 mailboxUidForURL:v13];

    v15 = [v11 account];
    v16 = [v15 storeForMailboxUid:v14];

    [v11 setMessageStore:v16];
    v17 = [v10 handleMessage:v11];
  }

  else
  {
    v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:0];
    [*(a2 + 8) addObject:v11];
    v17 = 1;
  }

  return v17;
}

id POPUIDsForQuery(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v7 = [a1 database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"POPUIDsForQuery"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __POPUIDsForQuery_block_invoke;
  v13[3] = &unk_1E7AA3528;
  v9 = v5;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [v7 __performReadWithCaller:v8 usingBlock:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_1B059D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B059D7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059DF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B059E388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B059F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059F6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05A10E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1B05A3918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1B05A49A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1B05A5304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t _shouldStoreInDatabase(void *a1, unsigned int a2)
{
  v3 = a1;
  if (_shouldStoreInDatabase_onceToken != -1)
  {
    _shouldStoreInDatabase_cold_1();
  }

  v4 = [_shouldStoreInDatabase_partsAlwaysStoredInDatabase containsObject:v3];

  return v4 | a2;
}

void __tableNamesForTableOptions_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699B7E0]);
  v1 = tableNamesForTableOptions_cachedSets;
  tableNamesForTableOptions_cachedSets = v0;
}

id __tableNamesForTableOptions_block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(a1 + 32);
  if ((v3 & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E699B5C0] messagesTableName];
    [v2 addObject:v4];

    v3 = *(a1 + 32);
  }

  if ((v3 & 4) != 0)
  {
    [v2 addObject:@"subjects"];
    v3 = *(a1 + 32);
  }

  if ((v3 & 8) != 0)
  {
    [v2 addObject:@"addresses"];
    v3 = *(a1 + 32);
  }

  if ((v3 & 0x1000) != 0)
  {
    [v2 addObject:@"summaries"];
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        [v2 addObject:@"generated_summaries"];
      }
    }
  }

  v5 = *(a1 + 32);
  if ((v5 & 0x100) != 0)
  {
    [v2 addObject:@"protected_message_data"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x400) != 0)
  {
    [v2 addObject:@"conversations"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x8000) != 0)
  {
    [v2 addObject:@"message_global_data"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x10000) != 0)
  {
    [v2 addObject:@"senders"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x20000) != 0)
  {
    [v2 addObject:@"brand_indicators"];
  }

  if (_os_feature_enabled_impl())
  {
    v6 = *(a1 + 32);
    if ((v6 & 0x80000) != 0)
    {
      v7 = [MEMORY[0x1E699B510] businessAddressesTableName];
      [v2 addObject:v7];

      v6 = *(a1 + 32);
    }

    if ((v6 & 0x100000) != 0)
    {
      v8 = [MEMORY[0x1E699B510] businessesTableName];
      [v2 addObject:v8];
    }
  }

  return v2;
}

id __readMailboxURLStringsFromDatabase_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v2, "longLongValue")];

  return v3;
}

uint64_t __readMailboxURLStringsFromDatabase_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ppStmt = 0;
  sqlite3_prepare_v2([v3 sqlDB], objc_msgSend(*(a1 + 32), "UTF8String"), -1, &ppStmt, 0);
  [v3 checkForConnectionErrorWithMessage:@"preparing statement for fetching mailbox URLs"];
  v4 = ppStmt;
  if (ppStmt)
  {
    while (sqlite3_step(v4) == 100)
    {
      v5 = sqlite3_column_int64(ppStmt, 0);
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [v7 setObject:v6 forKeyedSubscript:v8];

      v4 = ppStmt;
    }

    [v3 checkForConnectionErrorWithMessage:@"iterating results for mailbox URLs"];
    sqlite3_finalize(ppStmt);
  }

  return 1;
}

uint64_t ___dataForMessageAndPart_block_invoke(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isProtectedDataAvailable:v3])
  {
    v4 = @"part = ? AND complete IS NOT NULL";
    v5 = *(a1 + 40);
    v6 = v5 == 0;
    if (!v5)
    {
      v4 = @"part IS NULL AND complete IS NOT NULL";
    }

    v7 = @"part = ?";
    if (v6)
    {
      v7 = @"part IS NULL";
    }

    if (*(a1 + 64))
    {
      v4 = v7;
      v8 = @"b.data, a.complete";
    }

    else
    {
      v8 = @"b.data";
    }

    v9 = v4;
    if ((*(a1 + 72) & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ AND partial IS NULL", v9];

      v9 = v10;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM message_data AS a JOIN protected_message_data AS b ON a.rowid = b.rowid AND a.message_id = ? AND %@", v8, v9];
    v12 = [v3 preparedStatementForQueryString:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "libraryID")}];
    v24[0] = v13;
    v14 = *(a1 + 40);
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v24[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v21 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___dataForMessageAndPart_block_invoke_2;
    v22[3] = &unk_1E7AA3A90;
    v23 = *(a1 + 56);
    v17 = [v12 executeWithIndexedBindings:v16 usingBlock:v22 error:&v21];
    v18 = v14 == 0;
    v19 = v21;

    if (v18)
    {
    }

    if ((v17 & 1) == 0)
    {
      [v3 handleError:v19 message:@"Fetching data for message part"];
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void ___dataForMessageAndPart_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 dataValue];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithData:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (*(a1 + 40))
  {
    v8 = [v9 objectAtIndexedSubscript:1];
    **(a1 + 40) = [v8 BOOLValue];
  }
}

uint64_t __POPUIDsForQuery_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 40) UTF8String], -1, 0);
    while (sqlite3_step(v5) == 100)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
      v7 = *(*(*(a1 + 48) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v7 addObject:v6];
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"loading UIDs to delete"];
  }

  return 1;
}

void ___shouldStoreInDatabase_block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"meeting";
  v2[1] = @"meeting data";
  v2[2] = @"meeting metadata";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = _shouldStoreInDatabase_partsAlwaysStoredInDatabase;
  _shouldStoreInDatabase_partsAlwaysStoredInDatabase = v0;
}

void sub_1B05AA6B4(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05AEC5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05B00A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05B0170(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05B07C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MFDescriptionForMessageFlags(unint64_t a1)
{
  v2 = "read";
  if ((a1 & 1) == 0)
  {
    v2 = "unread";
  }

  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"0x%llx (%s"), a1, v2;
  v4 = v3;
  if ((a1 & 0x200000) != 0)
  {
    [v3 appendFormat:@", junk"];
  }

  if ((a1 & 0x80000000) != 0)
  {
    [v4 appendFormat:@", not-junk"];
  }

  if ((a1 & 2) != 0)
  {
    [v4 appendFormat:@", deleted"];
  }

  if ((a1 & 4) != 0)
  {
    [v4 appendFormat:@", answered"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v4 appendFormat:@", forwarded"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v4 appendFormat:@", redirected"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v4 appendFormat:@", flagged"];
    [v4 appendFormat:@", flagColor=%lu", (a1 >> 41) & 7];
  }

  if ((a1 & 0x1000000) != 0)
  {
    [v4 appendFormat:@", VIP"];
  }

  if ((a1 & 8) != 0)
  {
    [v4 appendFormat:@", encrypted"];
  }

  if ((a1 & 0x800000) != 0)
  {
    [v4 appendFormat:@", signed"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v4 appendFormat:@", recent"];
  }

  if ((a1 & 0x40) != 0)
  {
    [v4 appendFormat:@", draft"];
    [v4 appendFormat:@", touchedByCleanup"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v4 appendFormat:@", server search result"];
  }

  if ((a1 & 0x100000) != 0)
  {
    [v4 appendFormat:@", thread search result"];
  }

  if ((WORD1(a1) & 7) != 3)
  {
    [v4 appendFormat:@", priority=%x", WORD1(a1) & 7];
  }

  if ((a1 & 0x400000000) != 0)
  {
    [v4 appendFormat:@", partial"];
  }

  if ((a1 & 0x2000000000) != 0)
  {
    [v4 appendFormat:@", delivery"];
  }

  if ((a1 & 0x100000000) != 0)
  {
    [v4 appendFormat:@", temp UID"];
  }

  [v4 appendFormat:@""]);

  return v4;
}

unint64_t _junkLevelForFlags(unint64_t a1)
{
  if ((a1 & 0x200000) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 30) & 2;
  }
}

id MFFlagsObjectForFlags(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E699B308]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MFFlagsObjectForFlags_block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0___ECMessageFlagsBuilder__8l;
  v5[4] = a1;
  v3 = [v2 initWithBuilder:v5];

  return v3;
}

void __MFFlagsObjectForFlags_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRead:*(a1 + 32) & 1];
  [v5 setDeleted:(*(a1 + 32) >> 1) & 1];
  [v5 setReplied:(*(a1 + 32) >> 2) & 1];
  [v5 setFlagged:(*(a1 + 32) >> 4) & 1];
  [v5 setFlagColor:(*(a1 + 32) >> 41) & 7];
  [v5 setDraft:(*(a1 + 32) >> 6) & 1];
  [v5 setForwarded:(*(a1 + 32) >> 8) & 1];
  [v5 setRedirected:(*(a1 + 32) >> 9) & 1];
  v3 = *(a1 + 32);
  if ((v3 & 0x200000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 >> 30) & 2;
  }

  [v5 setJunkLevel:v4];
  [v5 setTouchedByCleanup:(*(a1 + 32) >> 47) & 1];
}

uint64_t MFMessageFlagsForECMessageFlags(void *a1)
{
  v1 = a1;
  v2 = [v1 read];
  v3 = [v1 deleted];
  v4 = [v1 replied];
  v5 = [v1 flagged];
  v6 = v2;
  if (v3)
  {
    v6 = v2 | 2;
  }

  if (v4)
  {
    v6 |= 4uLL;
  }

  if (v5)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  if ([v1 flagColor])
  {
    v7 = v7 & 0xFFFFF1FFFFFFFFFFLL | (([v1 flagColor] & 7) << 41);
  }

  v8 = [v1 draft];
  v9 = [v1 forwarded];
  v10 = [v1 redirected];
  v11 = [v1 junkLevel];
  v12 = [v1 junkLevel];
  v13 = [v1 touchedByCleanup];
  v14 = v7 | 0x40;
  if (!v8)
  {
    v14 = v7;
  }

  if (v9)
  {
    v14 |= 0x100uLL;
  }

  if (v10)
  {
    v14 |= 0x200uLL;
  }

  if (v11 == 1)
  {
    v14 |= 0x200000uLL;
  }

  if (v12 == 2)
  {
    v14 |= 0x80000000uLL;
  }

  if (v13)
  {
    v15 = v14 | 0x800000000000;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

id MFFlagChangeObjectForFlagChangeDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E699B300]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MFFlagChangeObjectForFlagChangeDictionary_block_invoke;
  v6[3] = &unk_1E7AA4950;
  v3 = v1;
  v7 = v3;
  v4 = [v2 initWithBuilder:v6];

  return v4;
}

void __MFFlagChangeObjectForFlagChangeDictionary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MFFlagChangeObjectForFlagChangeDictionary_block_invoke_2;
  v6[3] = &unk_1E7AA4928;
  v7 = v3;
  v8 = v9;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void sub_1B05B1840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MFFlagChangeObjectForFlagChangeDictionary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:@"MessageIsRead"])
  {
    [*(a1 + 32) changesReadTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsDeleted"])
  {
    [*(a1 + 32) changesDeletedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasRepliedTo"])
  {
    [*(a1 + 32) changesRepliedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsFlagged"])
  {
    [*(a1 + 32) changesFlaggedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageFlagColor"])
  {
    [*(a1 + 32) changesFlagColorTo:{objc_msgSend(v5, "unsignedIntegerValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasForwarded"])
  {
    [*(a1 + 32) changesForwardedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasRedirected"])
  {
    [*(a1 + 32) changesRedirectedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsJunk"])
  {
    if ([v5 BOOLValue])
    {
      v6 = 1;
LABEL_21:
      [*(a1 + 32) changesJunkLevelTo:v6];
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_28;
    }

LABEL_22:
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) changesJunkLevelTo:0];
    }

    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsNotJunk"])
  {
    if ([v5 BOOLValue])
    {
      v6 = 2;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"MFMessageIsTouchedByCleanup"])
  {
    [*(a1 + 32) changesTouchedByCleanupTo:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if ([v7 isEqualToString:@"MessageChangeReason"])
  {
    [*(a1 + 32) setReason:{objc_msgSend(v5, "integerValue")}];
  }

LABEL_28:
}

id MFFlagChangeDictionaryForFlagChange(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 readChanged])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "read")}];
    [v2 setObject:v3 forKeyedSubscript:@"MessageIsRead"];
  }

  if ([v1 deletedChanged])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "deleted")}];
    [v2 setObject:v4 forKeyedSubscript:@"MessageIsDeleted"];
  }

  if ([v1 repliedChanged])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "replied")}];
    [v2 setObject:v5 forKeyedSubscript:@"MessageWasRepliedTo"];
  }

  if ([v1 flaggedChanged])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "flagged")}];
    [v2 setObject:v6 forKeyedSubscript:@"MessageIsFlagged"];
  }

  if ([v1 flagColorChanged])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "flagColor")}];
    [v2 setObject:v7 forKeyedSubscript:@"MessageFlagColor"];
  }

  if ([v1 forwardedChanged])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "forwarded")}];
    [v2 setObject:v8 forKeyedSubscript:@"MessageWasForwarded"];
  }

  if ([v1 redirectedChanged])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "redirected")}];
    [v2 setObject:v9 forKeyedSubscript:@"MessageWasRedirected"];
  }

  if ([v1 junkLevelChanged])
  {
    v10 = [v1 junkLevel];
    if (v10 == 2)
    {
      [v2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"MessageIsJunk"];
      v12 = MEMORY[0x1E695E118];
    }

    else
    {
      if (v10 == 1)
      {
        v11 = MEMORY[0x1E695E118];
      }

      else
      {
        v11 = MEMORY[0x1E695E110];
      }

      [v2 setObject:v11 forKeyedSubscript:@"MessageIsJunk"];
      v12 = MEMORY[0x1E695E110];
    }

    [v2 setObject:v12 forKeyedSubscript:@"MessageIsNotJunk"];
  }

  if ([v1 touchedByCleanupChanged])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "touchedByCleanup")}];
    [v2 setObject:v13 forKeyedSubscript:@"MFMessageIsTouchedByCleanup"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "reason")}];
  [v2 setObject:v14 forKeyedSubscript:@"MessageChangeReason"];

  return v2;
}

void sub_1B05B1E34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MFFlagChangeDictionaryStrippingServerFlags(void *a1)
{
  v4[9] = *MEMORY[0x1E69E9840];
  v1 = [a1 mutableCopy];
  v4[0] = @"MessageIsRead";
  v4[1] = @"MessageIsDeleted";
  v4[2] = @"MessageWasRepliedTo";
  v4[3] = @"MessageIsFlagged";
  v4[4] = @"MessageFlagColor";
  v4[5] = @"MessageWasForwarded";
  v4[6] = @"MessageWasRedirected";
  v4[7] = @"MessageIsJunk";
  v4[8] = @"MessageIsNotJunk";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  [v1 removeObjectsForKeys:v2];

  return v1;
}

void sub_1B05B1F78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void MFGetFlagsAndMaskForFlagChange(void *a1, uint64_t *a2, uint64_t *a3)
{
  v29 = a1;
  v3 = [v29 read];
  v4 = [v29 deleted];
  v5 = [v29 replied];
  v6 = [v29 flagged];
  v7 = v3;
  if (v4)
  {
    v7 = v3 | 2;
  }

  if (v5)
  {
    v7 |= 4uLL;
  }

  if (v6)
  {
    v8 = v7 | 0x10;
  }

  else
  {
    v8 = v7;
  }

  if ([v29 flagColor])
  {
    v8 = v8 & 0xFFFFF1FFFFFFFFFFLL | (([v29 flagColor] & 7) << 41);
  }

  v26 = [v29 draft];
  v25 = [v29 forwarded];
  v24 = [v29 redirected];
  v23 = [v29 junkLevel];
  v22 = [v29 junkLevel];
  v21 = [v29 touchedByCleanup];
  v9 = [v29 readChanged];
  v10 = [v29 deletedChanged];
  v11 = [v29 repliedChanged];
  v12 = [v29 flaggedChanged];
  v13 = [v29 flagColorChanged];
  v14 = [v29 draftChanged];
  v15 = [v29 forwardedChanged];
  v16 = [v29 redirectedChanged];
  v17 = [v29 junkLevelChanged];
  v18 = [v29 touchedByCleanupChanged];
  v19 = v9;
  if (v10)
  {
    v19 = v9 | 2;
  }

  if (v11)
  {
    v19 |= 4uLL;
  }

  if (v12)
  {
    v19 |= 0x10uLL;
  }

  if (v13)
  {
    v19 |= 0xE0000000000uLL;
  }

  if (v14)
  {
    v19 |= 0x40uLL;
  }

  if (v15)
  {
    v19 |= 0x100uLL;
  }

  if (v16)
  {
    v19 |= 0x200uLL;
  }

  if (v17)
  {
    v19 |= 0x80200000uLL;
  }

  v20 = v8 | 0x40;
  if (!v26)
  {
    v20 = v8;
  }

  if (v25)
  {
    v20 |= 0x100uLL;
  }

  if (v24)
  {
    v20 |= 0x200uLL;
  }

  if (v23 == 1)
  {
    v20 |= 0x200000uLL;
  }

  if (v22 == 2)
  {
    v20 |= 0x80000000uLL;
  }

  if (v21)
  {
    v20 |= 0x800000000000uLL;
  }

  if (v18)
  {
    v19 |= 0x800000000000uLL;
  }

  *a2 = v20;
  *a3 = v19;
}

id MFMailDirectoryURL(uint64_t a1)
{
  if (MFMailDirectoryURL_onceToken != -1)
  {
    MFMailDirectoryURL_cold_1();
  }

  v2 = MFMailDirectoryURL___MailDirURL;

  return v2;
}

void __MFMailDirectoryURL_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFF8]);
  v3 = MFMailDirectory();
  v1 = [v0 initFileURLWithPath:?];
  v2 = MFMailDirectoryURL___MailDirURL;
  MFMailDirectoryURL___MailDirURL = v1;
}

uint64_t MFReadLoggingDefaults()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 synchronize];

  return +[MFConnection readLoggingDefaults];
}

uint64_t (*MFComparatorFunctionForSortOrder(void *a1))()
{
  v1 = a1;
  v2 = _compareMsgsByReadStatus;
  v3 = @"readstatus";
  v4 = &off_1F269AB40;
  v5 = 4;
  while (([(__CFString *)v3 isEqualToString:v1]& 1) == 0)
  {
    if (!v5)
    {
      v2 = 0;
      break;
    }

    v3 = *(v4 - 1);
    v2 = *v4;
    --v5;
    v4 += 2;
  }

  if (!v2)
  {
    v2 = _compareMsgsByDateReceived;
  }

  return v2;
}

uint64_t _compareMsgsByReadStatus(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  if (v7 == v8)
  {
    goto LABEL_2;
  }

  v10 = *a3;
  if ((v7 & 1) != 0 && (v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((v8 & 1) != 0 && (v7 & 1) == 0 || (v13 = [v5 messageFlags], v14 = objc_msgSend(v6, "messageFlags"), (v13 & 4) != 0) && (v14 & 4) == 0)
  {
LABEL_10:
    v11 = v10 == 0;
    v12 = 1;
LABEL_11:
    if (v11)
    {
      v9 = -v12;
    }

    else
    {
      v9 = v12;
    }

    goto LABEL_14;
  }

  if ((v14 & 4) != 0 && (v13 & 4) == 0)
  {
    goto LABEL_5;
  }

  if ((v13 & 4) != 0)
  {
LABEL_2:
    v9 = _compareMsgsByDate(v5, v6, a3);
    goto LABEL_14;
  }

  v16 = [v5 messageFlags];
  v17 = [v6 messageFlags];
  if ((v16 & 0x100) != 0 && (v17 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  if ((v17 & 0x100) != 0 && (v16 & 0x100) == 0)
  {
LABEL_5:
    v11 = v10 == 0;
    v12 = -1;
    goto LABEL_11;
  }

  if ((v16 & 0x100) != 0)
  {
    goto LABEL_2;
  }

  v18 = [v5 messageFlags];
  v19 = [v6 messageFlags];
  if ((v18 & 0x200) != 0 && (v19 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  if ((v19 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v9 = v10 ? -1 : 1;
  if ((v18 & 0x200) != 0)
  {
    goto LABEL_2;
  }

LABEL_14:

  return v9;
}

uint64_t _compareMsgsBySender(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 senderAddressComment];
  v8 = [v6 senderAddressComment];
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v9 = *a3;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v10 && v11)
  {
    if (v9)
    {
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = [v11 localizedCaseInsensitiveCompare:v13];
  }

  else
  {
    v15 = -1;
    if (!v9)
    {
      v15 = 1;
    }

    v16 = 1;
    if (!v9)
    {
      v16 = -1;
    }

    if (v11)
    {
      v17 = 1;
    }

    else
    {
      v17 = v10 == 0;
    }

    if (v17)
    {
      v16 = 0;
    }

    v18 = v10 || v11 == 0;
    v14 = v18 ? v16 : v15;
  }

  if (!v14)
  {
LABEL_25:
    v14 = _compareMsgsByDate(v5, v6, a3);
  }

  return v14;
}

uint64_t _compareMsgsByFlags(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  v9 = *a3;
  if ((v7 & 0x10) != 0 || (v8 & 0x10) == 0)
  {
    if ((v8 & 0x10) != 0 || (*a3 ? (v10 = 1) : (v10 = -1), (v7 & 0x10) == 0))
    {
      v11 = [v5 priority];
      v12 = [v6 priority];
      v13 = -1;
      if (!v9)
      {
        v13 = 1;
      }

      v14 = 1;
      if (!v9)
      {
        v14 = -1;
      }

      if (v12 <= v11)
      {
        v14 = 0;
      }

      if (v12 >= v11)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }

      if (!v10)
      {
        v10 = _compareMsgsByDate(v5, v6, a3);
      }
    }
  }

  else if (*a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _compareMsgsByDate(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  if (a3[1] == 1)
  {
    [v5 dateReceivedAsTimeIntervalSince1970];
    v9 = v8;
    [v6 dateReceivedAsTimeIntervalSince1970];
  }

  else
  {
    [v5 dateSentAsTimeIntervalSince1970];
    v9 = v11;
    [v6 dateSentAsTimeIntervalSince1970];
  }

  if (v9 < v10)
  {
    goto LABEL_5;
  }

  if (v9 > v10)
  {
    v12 = v7 == 0;
    v13 = 1;
LABEL_8:
    if (v12)
    {
      v14 = -v13;
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = [v5 libraryID];
  v17 = [v6 libraryID];
  if (v16 < v17)
  {
LABEL_5:
    v12 = v7 == 0;
    v13 = -1;
    goto LABEL_8;
  }

  v18 = 1;
  if (!v7)
  {
    v18 = -1;
  }

  if (v16 <= v17)
  {
    v14 = 0;
  }

  else
  {
    v14 = v18;
  }

LABEL_11:

  return v14;
}

id _ef_log_MFMessageWriter(uint64_t a1)
{
  if (_ef_log_MFMessageWriter_onceToken != -1)
  {
    _ef_log_MFMessageWriter_cold_1();
  }

  v2 = _ef_log_MFMessageWriter_log;

  return v2;
}

void sub_1B05B3060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void _appendPartHeadersToConsumer(void *a1, void *a2, const __CFDictionary *a3, void *a4)
{
  v16 = a1;
  v7 = a2;
  v8 = a4;
  v9 = [objc_allocWithZone(MEMORY[0x1E69AD740]) init];
  v10 = CFDictionaryGetValue(a3, v7);
  v11 = [v7 type];
  if (([@"multipart" isEqualToString:v11] & 1) != 0 || objc_msgSend(v10, "length"))
  {
    goto LABEL_3;
  }

  [v7 range];
  v14 = v13;

  if (v14)
  {
    [v7 range];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 range];
      v11 = EFStringWithUnsignedInteger();
      [v9 setHeader:v11 forKey:@"x-apple-content-length"];
LABEL_3:

      goto LABEL_4;
    }

    [v9 setHeader:@"unknown" forKey:@"x-apple-content-length"];
  }

LABEL_4:
  appendHeadersToMessageHeaders(v16, v7, v9);
  v12 = [v9 encodedHeaders];
  if ([v12 length])
  {
    MFDataConsumerConsumeCompleteData();
  }
}

void _appendPartDataToConsumer(void *a1, void *a2, void *a3, const __CFDictionary *a4, uint64_t a5)
{
  v36 = a1;
  v9 = a2;
  v37 = a3;
  v10 = CFDictionaryGetValue(a4, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    v12 = CFDictionaryGetValue(a4, v11);

    v10 = v12;
    v9 = v11;
  }

  if (v10 && [v10 length])
  {
    v13 = [v9 contentTransferEncoding];
    v14 = [v13 isEqualToString:@"base64"];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E69AD680]) initWithConsumer:v37];
      [v15 setStandardLineBreak];
      [v15 setAllowSlash:1];
      [v15 setPadChar:61];
      MFDataConsumerConsumeCompleteData();
      [v15 done];
    }

    else
    {
      MFDataConsumerConsumeCompleteData();
    }
  }

  v16 = [v9 type];
  v17 = [@"multipart" isEqualToString:v16];

  v18 = [v9 firstChildPart];
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  if (v19 == 1)
  {
    v33 = v9;
    v31 = v10;
    if (v17 && ([v9 bodyParameterForKey:@"boundary"], v16 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v16, "ef_lossyDefaultCStringBytes"), v16, v20))
    {
      v35 = v20;
      v34 = strlen(v20);
      v21 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v21 = 1;
    }

    v32 = *MEMORY[0x1E69AD630];
    while (1)
    {
      if (!v18)
      {
        v9 = v33;
        v10 = v31;
        if ((v21 & 1) == 0)
        {
          v30 = objc_alloc_init(MEMORY[0x1E69AD730]);
          [v30 mf_appendCString:"\n--"];
          [v30 appendBytes:v35 length:v34];
          [v30 mf_appendCString:"--\n"];
          MFDataConsumerConsumeCompleteData();
        }

        break;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = CFDictionaryGetValue(a4, v18);
      if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v24 = v18;

        v23 = v24;
      }

      if ((a5 & 1) == 0)
      {
        if (v17 && ([v33 subtype], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(@"signed", "isEqualToString:", v16)))
        {
        }

        else
        {
          v27 = [v23 type];
          if (([v27 isEqual:@"multipart"] & 1) != 0 || objc_msgSend(CFDictionaryGetValue(a4, v23), "length"))
          {
            v28 = 1;
          }

          else
          {
            v29 = [v23 bodyParameterForKey:v32];
            v28 = v29 != 0;
          }

          if (v17)
          {

            if (!v28)
            {
              goto LABEL_25;
            }
          }

          else if (!v28)
          {
            goto LABEL_25;
          }
        }
      }

      if ((v21 & 1) == 0)
      {
        v25 = objc_alloc_init(MEMORY[0x1E69AD730]);
        [v25 mf_appendCString:"\n--"];
        [v25 appendBytes:v35 length:v34];
        [v25 appendBytes:"\n" length:1];
        MFDataConsumerConsumeCompleteData();
        _appendPartHeadersToConsumer(v36, v23, a4, v37);
      }

      _appendPartDataToConsumer(v36, v23, v37, a4, a5);
LABEL_25:
      if (v21)
      {
        v26 = 0;
      }

      else
      {
        v26 = [v18 nextSiblingPart];
      }

      objc_autoreleasePoolPop(v22);
      v18 = v26;
    }
  }
}

void sub_1B05B385C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = _ef_log_MFMessageWriter(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 reason];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v16;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Exception raised during message encoding: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05B3814);
  }

  _Unwind_Resume(a1);
}

id _createPartAndDataForString(void *a1, void *a2, void *a3, void *a4, __CFDictionary *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v10)
  {
    v14 = [v12 isEqualToString:@"html"];
    if (v14)
    {
      v15 = _stringByReplacingNonBreakingSpacesWithString(v10, @"&nbsp");;

      v10 = v15;
    }

    if (v11)
    {
      [v11 cfStringEncoding];
      v16 = MFCreateDataWithString();
    }

    else
    {
      v16 = 0;
    }

    v19 = v11;
    if (!((v16 != 0) | v14 & 1))
    {
      v20 = [MEMORY[0x1E69AD718] charsetForEncoding:1536];

      [v11 cfStringEncoding];
      v16 = MFCreateDataWithString();
      v19 = v20;
    }

    if (v16)
    {
      goto LABEL_16;
    }

    if ((v14 & 1) == 0)
    {
      v21 = _stringByReplacingNonBreakingSpacesWithString(v10, @" ");

      v10 = v21;
    }

    v17 = [v10 mf_bestMimeCharsetForMessageDeliveryUsingSubtype:v13];

    [v11 cfStringEncoding];
    v16 = MFCreateDataWithString();
    if (v16)
    {
      v19 = v17;
LABEL_16:
      v18 = objc_alloc_init(MEMORY[0x1E69AD720]);
      [v18 setType:@"text"];
      [v18 setSubtype:v13];
      v22 = [v19 charsetName];
      [v18 setBodyParameter:v22 forKey:@"charset"];

      CFDictionarySetValue(a5, v18, v16);
      v17 = v19;
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = 0;
LABEL_17:
  v23 = v18;

  return v18;
}

NSObject *_createOutgoingMessageFromTopLevelMimePart(void *a1, void *a2, void *a3, __CFDictionary *a4)
{
  v6 = a1;
  v108 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v106 = v7;
  }

  else
  {
    v106 = objc_alloc_init(MEMORY[0x1E69AD740]);
  }

  v103 = _makeOutgoingMessageBody(v6);
  v9 = [v103 message];
  v104 = +[MFActivityMonitor currentMonitor];
  [v9 setMessageFlags:1];
  [v9 setMutableHeaders:v106];
  v10 = [v8 copyAddressListForResentFrom];
  if (![v10 count])
  {
    v11 = [v8 copyAddressListForSender];

    v10 = v11;
  }

  if ([v10 count])
  {
    v12 = [v10 objectAtIndex:0];
    v13 = [v12 emailAddressValue];
    v14 = [v13 simpleAddress];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v12 stringValue];
    }

    v17 = v16;

    v105 = v17;
  }

  else
  {
    v105 = &stru_1F273A5E0;
  }

  v18 = [v6[4] objectForKey:@"ShouldSign"];
  v102 = [v18 intValue];

  v19 = [v6[4] objectForKey:@"ShouldEncrypt"];
  v20 = [v19 intValue];

  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = _os_feature_enabled_impl();
  v22 = a4;
  if (v21)
  {
    v23 = [v6[4] objectForKey:{@"AddressMetadata", a4}];
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:30])
    {

      goto LABEL_16;
    }

    if ([MEMORY[0x1E699ACE8] preferenceEnabled:24])
    {
      v33 = [v23 ef_all:&__block_literal_global_347_0];

      if (v33)
      {
LABEL_16:
        v24 = *MEMORY[0x1E699B178];
        v101 = [v8 firstHeaderForKey:*MEMORY[0x1E699B178]];
        v100 = objc_alloc_init(MEMORY[0x1E69AD740]);
        [v100 setHeader:v101 forKey:v24];
        v25 = [v6 _newDataForMimePart:v108 withPartData:a4 andHeaders:v100];
        v26 = [v6 _mimePartWithType:@"message" subtype:@"rfc822" bodyData:v25 partMap:a4 subparts:0];
        [v26 setDisposition:@"attachment"];
        v27 = [v26 setDispositionParameter:@"message.eml" forKey:@"filename"];
        if (v25 && v26)
        {
          v28 = v26;

          v99 = v28;
          v29 = [MEMORY[0x1E696AAE8] mainBundle];
          v30 = [v29 localizedStringForKey:@"ENCRYPTED_SUBJECT_LINE_MESSAGE" value:&stru_1F273A5E0 table:@"Main"];
          [v8 setHeader:v30 forKey:v24];

          v32 = _ef_log_MFMessageWriter(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v32, OS_LOG_TYPE_DEFAULT, "Wrapped message as message/rfc822", buf, 2u);
          }

          v108 = v99;
        }

        else
        {
          v34 = _ef_log_MFMessageWriter(v27);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            _createOutgoingMessageFromTopLevelMimePart_cold_1();
          }

          v32 = v9;
          v9 = 0;
        }
      }
    }

    else
    {
    }

LABEL_29:
    v22 = a4;
  }

  if (v8 && v9 && v102)
  {
    v35 = [v6 newDataForMimePart:v108 withPartData:v22];
    v36 = v35;
    if (v35 && (v35 = [v104 shouldCancel], (v35 & 1) == 0))
    {
      v39 = v6[4];
      v111 = 0;
      v40 = [v108 newSignedPartWithData:v36 sender:v105 compositionSpecification:v39 signatureData:&v111];
      v38 = v111;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:23] && (v41 = objc_msgSend(MEMORY[0x1E699ACE8], "preferenceEnabled:", 25), v41))
      {
        if (v38 && v40)
        {
          CFDictionarySetValue(a4, v40, v38);
        }

        v42 = _ef_log_MFMessageWriter(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v42, OS_LOG_TYPE_DEFAULT, "Signed message as application/pkcs7-mime", buf, 2u);
        }
      }

      else
      {
        v43 = [v40 firstChildPart];
        v42 = [v43 nextSiblingPart];

        if (v38 && v42)
        {
          CFDictionarySetValue(a4, v42, v38);
        }

        v45 = _ef_log_MFMessageWriter(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v45, OS_LOG_TYPE_DEFAULT, "Signed message as multipart/signed", buf, 2u);
        }
      }

      v37 = v40;
      if (!v37)
      {
        v47 = _ef_log_MFMessageWriter(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          _createOutgoingMessageFromTopLevelMimePart_cold_2();
        }

        v9 = 0;
      }

      v108 = v37;
    }

    else
    {
      v37 = _ef_log_MFMessageWriter(v35);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_3();
      }

      v38 = v9;
      v9 = 0;
    }

    v22 = a4;
  }

  v48 = 1;
  if (v9 && v20)
  {
    v49 = [v6 newDataForMimePart:v108 withPartData:v22];
    v50 = v49;
    if (v49 && (v49 = [v104 shouldCancel], (v49 & 1) == 0))
    {
      v58 = v6[4];
      v110 = 0;
      v59 = [v108 newEncryptedPartWithData:v50 compositionSpecification:v58 encryptedData:&v110];
      v53 = v110;
      v52 = v59;

      if (v53)
      {
        v61 = v52 == 0;
      }

      else
      {
        v61 = 1;
      }

      v48 = v61;
      if (!v61)
      {
        CFDictionarySetValue(a4, v52, v53);
        v51 = _ef_log_MFMessageWriter(v63);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v51, OS_LOG_TYPE_DEFAULT, "Encrypted message as application/pkcs7-mime", buf, 2u);
        }

        v108 = v52;
        goto LABEL_65;
      }

      v62 = _ef_log_MFMessageWriter(v60);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_4();
      }

      v51 = v9;
      v108 = v52;
    }

    else
    {
      v51 = _ef_log_MFMessageWriter(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_5();
      }

      v52 = v51;
      v53 = v9;
    }

    v9 = 0;
LABEL_65:
  }

  if (v9 && v102 && ((v48 | [MEMORY[0x1E699ACE8] preferenceEnabled:{31, v22}] ^ 1) & 1) == 0)
  {
    v54 = [v6 newDataForMimePart:v108 withPartData:a4];
    v55 = v54;
    if (v54 && (v54 = [v104 shouldCancel], (v54 & 1) == 0))
    {
      v65 = v6[4];
      v109 = 0;
      v66 = [v108 newSignedPartWithData:v55 sender:v105 compositionSpecification:v65 signatureData:&v109];
      v57 = v109;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:23] && (v67 = objc_msgSend(MEMORY[0x1E699ACE8], "preferenceEnabled:", 25), v67))
      {
        if (v57 && v66)
        {
          CFDictionarySetValue(a4, v66, v57);
        }

        v68 = _ef_log_MFMessageWriter(v67);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v68, OS_LOG_TYPE_DEFAULT, "Signed encrypted message as application/pkcs7-mime", buf, 2u);
        }
      }

      else
      {
        v69 = [v66 firstChildPart];
        v68 = [v69 nextSiblingPart];

        if (v57 && v68)
        {
          CFDictionarySetValue(a4, v68, v57);
        }

        v71 = _ef_log_MFMessageWriter(v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v71, OS_LOG_TYPE_DEFAULT, "Signed encrypted message as multipart/signed", buf, 2u);
        }
      }

      v56 = v66;
      if (!v56)
      {
        v73 = _ef_log_MFMessageWriter(v72);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          _createOutgoingMessageFromTopLevelMimePart_cold_6();
        }

        v9 = 0;
      }

      v108 = v56;
    }

    else
    {
      v56 = _ef_log_MFMessageWriter(v54);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_7();
      }

      v57 = v9;
      v9 = 0;
    }
  }

  if (!v8 || !v9)
  {
    if (!v9)
    {
      goto LABEL_141;
    }

    goto LABEL_132;
  }

  v74 = objc_autoreleasePoolPush();
  v75 = [v8 copyAddressListForResentFrom];

  v76 = [v75 count];
  if (v76)
  {
    v10 = v75;
  }

  else
  {
    v77 = [v8 copyAddressListForSender];

    v10 = v77;
  }

  if ([v10 count])
  {
    v78 = [v10 objectAtIndexedSubscript:0];
    v79 = [v78 emailAddressValue];
    v80 = [v79 simpleAddress];
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = [v78 stringValue];
    }

    v84 = v82;

    v85 = v84;
    v83 = v85;
    if (!v85)
    {
      v105 = 0;
      goto LABEL_123;
    }
  }

  else
  {

    v83 = &stru_1F273A5E0;
  }

  v105 = v83;
  v86 = [(__CFString *)v83 rangeOfString:@"@" options:4];
  if (v86 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_123:
    v88 = 0;
    goto LABEL_124;
  }

  v88 = [(__CFString *)v105 substringFromIndex:v86 + v87];
LABEL_124:
  v89 = [MEMORY[0x1E696AEC0] mf_messageIDStringWithDomainHint:v88];
  if ([v89 length])
  {
    v90 = *MEMORY[0x1E699B130];
    if (v76)
    {
      v91 = [v106 firstHeaderForKey:*MEMORY[0x1E699B130]];
      v92 = [v91 length];

      if (v92)
      {
        v90 = *MEMORY[0x1E699B168];
      }
    }

    [v106 setHeader:v89 forKey:v90];
  }

  v93 = *MEMORY[0x1E699B128];
  v94 = [v8 firstHeaderForKey:*MEMORY[0x1E699B128]];

  if (!v94)
  {
    v95 = [MEMORY[0x1E69AD710] versionString];
    [v8 setHeader:v95 forKey:v93];
  }

  objc_autoreleasePoolPop(v74);
LABEL_132:
  v96 = objc_autoreleasePoolPush();
  if (_makeMimeHeadersConsistent(v6, v108, a4) && ([v104 shouldCancel] & 1) == 0)
  {
    appendHeadersToMessageHeaders(v6, v108, v106);
    _appendPartDataToConsumer(v6, v108, v103, a4, 0);
    if ((![v103 count] || (objc_msgSend(v103, "isLastCharacterNewLine") & 1) == 0) && (v6[2] & 2) == 0)
    {
      v97 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"\n" length:1 freeWhenDone:0];
      MFDataConsumerConsumeCompleteData();
    }

    [v103 done];
  }

  else
  {

    v9 = 0;
  }

  objc_autoreleasePoolPop(v96);
LABEL_141:

  return v9;
}

id _createPlainTextPart(void *a1, void *a2, __CFDictionary *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 string];
  v8 = [v7 mf_bestMimeCharsetUsingHint:0xFFFFFFFFLL];

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"UseFormatFlowedForWrapping"];

  if (v10)
  {
    v22 = 0;
    v21 = 0;
    [v6 getFormatFlowedString:&v21 insertedTrailingSpaces:&v22 encoding:{objc_msgSend(v8, "cfStringEncoding")}];
    v11 = v21;
    if (v11)
    {
      v12 = _createPartAndDataForString(v5, v11, v8, @"plain", a3);
      [v12 setBodyParameter:@"flowed" forKey:@"format"];
      if (v22 == 1)
      {
        [v12 setBodyParameter:@"yes" forKey:@"delsp"];
      }
    }

    else
    {
      if (v8)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = MFLookupLocalizedString(@"BAD_CHARSET_FORMAT", @"Some characters in your message could not be converted to the “%@” text encoding. Please choose a different entry from the “Text Encoding” menu.", @"Delayed");
        v15 = [v8 displayName];
        v16 = [v13 stringWithFormat:v14, v15];
        v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1038 localizedDescription:v16];

        v18 = MFLookupLocalizedString(@"BAD_CHARSET_TITLE", @"Invalid Text Encoding", @"Delayed");
        [v17 setShortDescription:v18];

        v19 = +[MFActivityMonitor currentMonitor];
        [v19 setError:v17];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = [v6 quotedString:{objc_msgSend(v8, "cfStringEncoding")}];
    v12 = _createPartAndDataForString(v5, v11, v8, @"plain", a3);
  }

  return v12;
}

id _createPartForMFAttachment(void *a1, void *a2, int a3, __CFDictionary *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = a1;
  v6 = a2;
  if (([v6 isImageFile] & 1) != 0 || (objc_msgSend(v6, "metadataValueForKey:", @"MFAttachmentIsSinglePagePDFKey"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
  {
    v9 = @"inline";
  }

  else
  {
    v9 = @"attachment";
  }

  v10 = [v6 fileName];
  if (v10)
  {
    v51 = v10;
    if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
    {
      v11 = MFCreateDataWithString();
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:1];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];

        v51 = v13;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
  v15 = [v6 mailDropMetadata];
  v16 = [v15 flags];

  if ((v16 & 8) != 0)
  {
    [v14 setDispositionParameter:v51 forKey:@"remote-image"];
  }

  v17 = [v6 fileName];
  [v14 setDispositionParameter:v17 forKey:@"filename"];

  [v14 setDisposition:v9];
  if ([v50 shouldWriteAttachmentPlaceholders] && objc_msgSend(v6, "isPlaceholder"))
  {
    v18 = [v6 fetchPlaceholderData];
  }

  else
  {
    v18 = [v6 fetchDataSynchronously:0 stripPrivateMetadata:1];
  }

  value = v18;
  if (![v18 length])
  {
    v39 = _ef_log_MFMessageWriter(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v6 fileName];
      *buf = 138412290;
      v54 = v40;
      _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
    }

    CFDictionarySetValue(a4, v14, [MEMORY[0x1E695DEF0] data]);
    if (v14)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  if ((v50[16] & 4) != 0)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", objc_msgSend(value, "length")];
    [v14 setDispositionParameter:v19 forKey:@"size"];
  }

  v20 = [v6 fileAttributes];
  v49 = [v20 objectForKey:*MEMORY[0x1E696A370]];

  CFDictionarySetValue(a4, v14, value);
  v21 = v14;
  v22 = v6;
  v47 = [v22 fileName];
  v23 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v24 = [v22 mimeType];
  [v23 setMimeType:v24];

  v25 = [v47 pathExtension];
  [v23 setPathExtension:v25];

  [v23 setFilename:v47];
  if ([v23 osType] == 1061109567)
  {
    [v23 setOsType:0];
  }

  v26 = [v23 mimeType];

  v27 = [v23 pathExtension];
  v28 = [&stru_1F273A5E0 isEqualToString:v27];

  if (v28)
  {
    [v23 setPathExtension:0];
  }

  v29 = [v23 pathExtension];

  if (v29)
  {
    v30 = v26 == 0;
  }

  else
  {
    v30 = (v26 == 0) | 2;
  }

  if (v30)
  {
    MFGetTypeInfo();
    if (!v29 || v26)
    {
      v31 = [v23 pathExtension];

      if (v31)
      {
        v32 = [v23 pathExtension];
        v33 = [v47 stringByAppendingPathExtension:v32];

        v47 = v33;
        [v22 setFileName:v33];
      }
    }
  }

  v34 = [v23 mimeType];

  if (v34)
  {
    v35 = [v23 mimeType];
    v36 = [v35 componentsSeparatedByString:@"/"];

    if (v36 && [v36 count] == 2)
    {
      v37 = [v36 objectAtIndex:0];
      v38 = [v36 objectAtIndex:1];

      if (v37)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  v38 = 0;
LABEL_43:

  v37 = @"application";
  v38 = @"octet-stream";
LABEL_44:
  [v21 setType:v37];
  [v21 setSubtype:v38];

  if (v49)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#o", objc_msgSend(v49, "intValue")];
    [v21 setBodyParameter:v41 forKey:@"x-unix-mode"];
  }

  v42 = [v22 contentID];
  if (v42)
  {
    [v21 setBodyParameter:v42 forKey:*MEMORY[0x1E69AD630]];
  }

  if ([v22 shouldPreserveFidelity])
  {
    [v21 setBodyParameter:@"yes" forKey:@"x-mac-preserve-fidelity"];
  }

  [v21 setBodyParameter:v51 forKey:@"name"];

  if (v14)
  {
LABEL_51:
    if (a3)
    {
      v43 = [v14 type];
      v44 = [v43 isEqualToString:@"multipart"];

      if ((v44 & 1) == 0)
      {
        v45 = [v6 contentID];
        [v14 setContentID:v45];
      }
    }
  }

LABEL_54:

  return v14;
}

id _createPartForFileWrapper(void *a1, void *a2, __CFDictionary *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v6 preferredFilename];
  if (!v7)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v8 = [v6 isImageFile];
  v9 = @"attachment";
  if (v8)
  {
    v9 = @"inline";
  }

  v10 = v9;
  v7 = v7;
  v11 = v7;
  if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
  {
    v12 = MFCreateDataWithString();
    v11 = v7;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:1];
      v11 = [v13 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
  [v14 setDispositionParameter:v7 forKey:@"filename"];
  [v14 setDisposition:v10];
  if ([v6 isSymbolicLink])
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
    v16 = objc_opt_new();
    v26 = v7;
    _setMimeTypeFromWrapper(v15, &v26, v6);
    v17 = v26;

    appendHeadersToMessageHeaders(v5, v15, v16);
    CFDictionarySetValue(a3, v14, [v16 encodedHeaders]);
    [v14 setType:@"message"];
    [v14 setSubtype:@"external-body"];
    [v14 setBodyParameter:@"local-file" forKey:@"access-type"];
    v18 = [v6 symbolicLinkDestination];
    [v14 setBodyParameter:v18 forKey:@"name"];
  }

  else
  {
    v19 = [v6 isRegularFile];
    if (!v19)
    {
      v23 = _ef_log_MFMessageWriter(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
      }

      CFDictionarySetValue(a3, v14, [MEMORY[0x1E695DEF0] data]);
      goto LABEL_25;
    }

    v15 = [v6 regularFileContents];
    if (!v15)
    {
      v15 = [MEMORY[0x1E695DEF0] data];
    }

    if ((v5[16] & 4) != 0)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", objc_msgSend(v15, "length")];
      [v14 setDispositionParameter:v20 forKey:@"size"];
    }

    v21 = [v6 fileAttributes];
    v16 = [v21 objectForKey:*MEMORY[0x1E696A370]];

    CFDictionarySetValue(a3, v14, v15);
    v25 = v7;
    _setMimeTypeFromWrapper(v14, &v25, v6);
    v17 = v25;

    if (v16)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#o", objc_msgSend(v16, "intValue")];
      [v14 setBodyParameter:v22 forKey:@"x-unix-mode"];
    }

    v18 = [v6 URL];
    if (v18)
    {
      [v14 setBodyParameter:v18 forKey:*MEMORY[0x1E69AD630]];
    }

    [v14 setBodyParameter:v11 forKey:@"name"];
  }

  v7 = v17;
LABEL_25:

LABEL_26:

  return v14;
}

void appendHeadersToMessageHeaders(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v56 = v5;
  v57 = a3;
  WeakRetained = objc_loadWeakRetained(v5 + 3);
  LOBYTE(a2) = objc_opt_respondsToSelector();

  if (a2)
  {
    v8 = objc_loadWeakRetained(v5 + 3);
    [v8 messageWriter:v5 willGenerateHeadersForMimePart:v6];
  }

  v9 = [v6 type];
  v10 = [v9 isEqualToString:@"multipart"];

  if (v10)
  {
    v11 = [v6 bodyParameterForKey:@"boundary"];
    if (!v11)
    {
      v11 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
      [v6 setBodyParameter:v11 forKey:@"boundary"];
    }
  }

  v53 = [v6 type];
  v54 = [v6 subtype];
  v12 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v13 = &stru_1F273A5E0;
  v14 = v53;
  if (!v53)
  {
    v14 = &stru_1F273A5E0;
  }

  if (v54)
  {
    v13 = v54;
  }

  v55 = [v12 initWithFormat:@"%@/%@", v14, v13];
  v15 = v6;
  v16 = [v15 dispositionParameterForKey:@"filename"];
  if (v16 && ([v15 bodyParameterForKey:@"name"], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v19 = [v16 mutableCopyWithZone:0];
    [v19 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v19, "length")}];
    [v19 replaceOccurrencesOfString:@"" withString:@"\ options:0 range:{0, objc_msgSend(v19, "length"")}];
    [v19 insertString:@"" atIndex:0];
    [v19 appendString:@""];
    v20 = MFCreateDataWithString();
    if (v20 || (v20 = MFCreateDataWithString()) != 0 || (CFStringGetSystemEncoding(), (v20 = MFCreateDataWithString()) != 0) || (CFStringGetSystemEncoding(), (v20 = MFCreateDataWithString()) != 0))
    {
      strcpy(v68, ";\n\tname=");
      v18 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v20, "length") + 8}];
      [v18 appendBytes:v68 length:8];
      [v18 appendData:v20];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = [v15 bodyParameterKeys];
  if ([v21 count] || v18)
  {
    v22 = [v55 dataUsingEncoding:1 allowLossyConversion:1];
    v23 = [v22 mutableCopyWithZone:0];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v24 = v21;
    v25 = [v24 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v25)
    {
      v26 = *v63;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          v29 = [v15 bodyParameterForKey:v28];
          [v23 mf_appendRFC2231CompliantValue:v29 forKey:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v25);
    }

    if (v18)
    {
      [v23 appendData:v18];
    }

    [v57 setHeader:v23 forKey:*MEMORY[0x1E699B0D0]];
  }

  else
  {
    [v57 setHeader:v55 forKey:*MEMORY[0x1E699B0D0]];
  }

  v30 = [v15 disposition];
  v31 = [v15 dispositionParameterKeys];
  v32 = [v31 count];
  if (v30 || v32)
  {
    if (v32)
    {
      v33 = [objc_allocWithZone(MEMORY[0x1E69AD730]) init];
      if ([v30 length])
      {
        v34 = [v30 dataUsingEncoding:1 allowLossyConversion:1];
        [v33 appendData:v34];
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v35 = v31;
      v36 = [v35 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v36)
      {
        v37 = *v59;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = *(*(&v58 + 1) + 8 * j);
            v40 = [v15 dispositionParameterForKey:v39];
            [v33 mf_appendRFC2231CompliantValue:v40 forKey:v39];
          }

          v36 = [v35 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v36);
      }

      [v57 setHeader:v33 forKey:*MEMORY[0x1E699B0A8]];
    }

    else
    {
      [v57 setHeader:v30 forKey:*MEMORY[0x1E699B0A8]];
    }
  }

  v41 = [v15 contentTransferEncoding];
  if (v41)
  {
    [v57 setHeader:v41 forKey:*MEMORY[0x1E699B0C8]];
  }

  v42 = [v15 contentDescription];
  if (v42)
  {
    [v57 setHeader:v42 forKey:*MEMORY[0x1E699B0A0]];
  }

  v43 = [v15 contentID];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 mutableCopyWithZone:0];
    [v57 setHeader:v45 forKey:*MEMORY[0x1E699B0B0]];
  }

  v46 = [v15 languages];
  v47 = v46;
  if (v46 && [v46 count])
  {
    v48 = [v47 componentsJoinedByString:@" "];
    [v57 setHeader:v48 forKey:*MEMORY[0x1E699B0B8]];
  }

  v49 = [v15 contentLocation];
  if (v49)
  {
    [v57 setHeader:v49 forKey:*MEMORY[0x1E699B0C0]];
  }

  v50 = objc_loadWeakRetained(v56 + 3);
  v51 = objc_opt_respondsToSelector();

  if (v51)
  {
    v52 = objc_loadWeakRetained(v56 + 3);
    [v52 messageWriter:v56 willEncodeHeaders:v57 forMimePart:v15];
  }
}

_MFOutgoingMessageBody *_makeOutgoingMessageBody(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_MFOutgoingMessageBody);
  v3 = objc_alloc_init(v1[1]);
  [(MFMessageBody *)v2 setMessage:v3];
  [v3 setMessageBody:v2];

  return v2;
}

uint64_t _makeMimeHeadersConsistent(void *a1, void *a2, const __CFDictionary *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = a1;
  key = a2;
  v58 = CFDictionaryGetValue(a3, key);
  v59 = [key type];
  if ([@"multipart" isEqualToString:?])
  {
    [key subparts];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v5 = v65 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v65;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v65 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v64 + 1) + 8 * v9);
          if ((_makeMimeHeadersConsistent(v62, v11, a3) & 1) == 0)
          {

            goto LABEL_26;
          }

          v12 = [v11 contentTransferEncoding];
          v7 = @"binary";
          if (([v12 isEqualToString:@"binary"] & 1) == 0)
          {
            if ([v12 isEqualToString:@"8bit"])
            {
              if ([(__CFString *)v10 isEqualToString:@"binary"])
              {
                v7 = v10;
              }

              else
              {
                v7 = @"8bit";
              }
            }

            else
            {
              v7 = v10;
            }
          }

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      if (v7)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v7 = @"7bit";
LABEL_30:
    [key setContentTransferEncoding:v7];

    goto LABEL_129;
  }

  if (!v58)
  {
    [key setContentTransferEncoding:@"7bit"];
    goto LABEL_129;
  }

  v13 = [key contentTransferEncoding];

  if (v13)
  {
LABEL_129:
    v19 = 1;
    goto LABEL_130;
  }

  v14 = [key isReadableText];
  strcpy(__s1, "From ");
  v15 = [v58 length];
  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 6;
  }

  v56 = v16;
  v17 = [v58 bytes];
  v57 = v14;
  if ([v59 isEqualToString:@"message"])
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v18 = (v62[16] >> 1) & 1;
  }

  v20 = +[MFActivityMonitor currentMonitor];
  if (([v20 canBeCancelled] & 1) == 0)
  {

    v20 = 0;
  }

  v60 = v20;
  if (v15 < 1)
  {
    v37 = 0;
    goto LABEL_93;
  }

  v55 = 0;
  v21 = 0;
  v22 = 0;
  v54 = v15;
  v23 = &v17[v15];
  v24 = 1;
  v25 = 1;
  v26 = v17;
  do
  {
    v27 = *v17;
    if (v27 <= 0xD && ((1 << v27) & 0x2401) != 0)
    {
      v25 = 0;
    }

    if (v27 == 10)
    {
      v29 = 0;
      v30 = &v17[~v26];
      if (v21 > v30)
      {
        v30 = v21;
      }

      if (v17 > v26)
      {
        v21 = v30;
      }

      v26 = v17 + 1;
    }

    else
    {
      v31 = v57;
      if (v27 != 27)
      {
        v31 = 0;
      }

      if (v27 == 9 || v27 > 0x1F)
      {
        v33 = (v27 & 0x80u) == 0;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        v29 = 0;
        if (v17 == v26 && (v17 + 5) < v23)
        {
          if (!strncmp(__s1, v17, 5uLL))
          {
            LOBYTE(v18) = 0;
            v29 = 0;
            v55 = 1;
            v26 = v17;
            v21 = 998;
          }

          else
          {
            v29 = 0;
            v26 = v17;
          }
        }
      }

      else
      {
        v34 = v22 + v56;
        v35 = v62[16];
        if ((v35 & 3) != 0)
        {
          v22 += v56;
          v29 = 0;
        }

        else
        {
          if (v18)
          {
            v22 += v56;
            v29 = 0;
            ++v17;
            LOBYTE(v18) = 1;
            goto LABEL_77;
          }

          LOBYTE(v18) = 0;
          v22 += v56;
          if (((v54 > v34) & (v35 >> 3)) != 0)
          {
            v29 = 0;
          }

          else
          {
            v29 = @"base64";
          }
        }
      }
    }

    v36 = ++v17 - v26 < 999 && v21 < 999;
    if (!v36 && (v18 & 1) == 0)
    {
      if (v62[16] & 8) != 0 && ([v59 isEqualToString:@"text"])
      {
        LOBYTE(v18) = 0;
      }

      else
      {
        LOBYTE(v18) = 0;
        v29 = @"base64";
      }
    }

LABEL_77:
    if (v60)
    {
      v24 &= [v60 shouldCancel] ^ 1;
    }
  }

  while (!v29 && v17 < v23 && (v24 & 1) != 0);
  if ((v24 & 1) == 0)
  {

    goto LABEL_26;
  }

  v37 = ~v26 + v23;
  if (v21 > v37)
  {
    v37 = v21;
  }

  if (v23 <= v26)
  {
    v37 = v21;
  }

  v20 = v60;
  if (v29)
  {
    goto LABEL_106;
  }

  if (v55 & 1 | (v37 > 997))
  {
    goto LABEL_99;
  }

  if (!v22)
  {
LABEL_93:
    if (v37 >= 77)
    {
      v38 = [key type];
      if ([v38 isEqualToString:@"text"])
      {
        v39 = [key subtype];
        if ([v39 isEqualToString:@"plain"])
        {
          v40 = [MEMORY[0x1E695E000] standardUserDefaults];
          v41 = [v40 BOOLForKey:@"UseFormatFlowedForWrapping"];

          if ((v41 & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_105;
        }
      }
    }

LABEL_105:
    v29 = @"7bit";
    goto LABEL_106;
  }

  if ((((v62[16] & 3) != 0) & v25) != 0)
  {
    v29 = @"8bit";
    goto LABEL_106;
  }

LABEL_99:
  if (v55 & 1 | ((v18 & 1) == 0))
  {
    if ((v62[16] & 8) != 0 && [v58 length] > v22)
    {
LABEL_102:
      v29 = @"quoted-printable";
    }

    else
    {
      v29 = @"base64";
    }
  }

  else
  {
    v29 = @"binary";
  }

LABEL_106:
  [key setContentTransferEncoding:v29];
  if ([@"base64" isEqualToString:v29])
  {
    if (v57)
    {
      v42 = [key disposition];
      if ([v42 isEqual:@"attachment"])
      {
        v43 = 0;
        goto LABEL_119;
      }

      v52 = [v58 length];

      if (v52)
      {
        v43 = [v58 mf_dataByConvertingUnixNewlinesToNetwork];
        goto LABEL_123;
      }
    }

LABEL_122:
    v43 = 0;
    goto LABEL_123;
  }

  if (![@"quoted-printable" isEqualToString:v29])
  {
    goto LABEL_122;
  }

  v42 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v44 = [objc_alloc(MEMORY[0x1E69AD760]) initWithConsumer:v42];
  [v44 setForTextPart:v57];
  v45 = [v58 length];
  v46 = [v58 bytes];
  v47 = 0;
  v48 = 0;
  if (v20)
  {
LABEL_112:
    if (([v20 shouldCancel] & 1) == 0)
    {
      goto LABEL_113;
    }
  }

  else
  {
LABEL_113:
    while (1)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v46 + v47 length:v45 - v47 freeWhenDone:0];
      v50 = [v44 appendData:v49];
      if (v50 < 0)
      {
        break;
      }

      v51 = v50 == 0;
      if (v48 && v51)
      {
        break;
      }

      v47 += v50;

      v48 = v51;
      v20 = v60;
      if (v60)
      {
        goto LABEL_112;
      }
    }

    v20 = v60;
  }

  [v44 done];
  [v42 done];
  v43 = [v42 data];

LABEL_119:
LABEL_123:
  if (!v20 || ([v20 shouldCancel] & 1) == 0)
  {
    if (v43)
    {
      CFDictionarySetValue(a3, key, v43);
    }

    goto LABEL_129;
  }

LABEL_26:
  v19 = 0;
LABEL_130:

  return v19;
}

id _stringByReplacingNonBreakingSpacesWithString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([v5 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _setMimeTypeFromWrapper(void *a1, id *a2, void *a3)
{
  v23 = a1;
  v5 = a3;
  v6 = *a2;
  v7 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v8 = [v5 mimeType];
  [v7 setMimeType:v8];

  v9 = [v6 pathExtension];
  [v7 setPathExtension:v9];

  [v7 setFilename:v6];
  if ([v7 osType] == 1061109567)
  {
    [v7 setOsType:0];
  }

  v10 = [v7 mimeType];

  v11 = [v7 pathExtension];
  v12 = [&stru_1F273A5E0 isEqualToString:v11];

  if (v12)
  {
    [v7 setPathExtension:0];
  }

  v13 = [v7 pathExtension];

  if (v13)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = (v10 == 0) | 2;
  }

  if (v14)
  {
    MFGetTypeInfo();
    if (!v13 || v10)
    {
      v15 = [v7 pathExtension];

      if (v15)
      {
        v16 = *a2;
        v17 = [v7 pathExtension];
        *a2 = [v16 stringByAppendingPathExtension:v17];

        [v5 setPreferredFilename:*a2];
        [v5 setFilename:*a2];
      }
    }
  }

  v18 = [v7 mimeType];

  if (v18)
  {
    v19 = [v7 mimeType];
    v20 = [v19 componentsSeparatedByString:@"/"];

    if (v20 && [v20 count] == 2)
    {
      v21 = [v20 objectAtIndex:0];
      v22 = [v20 objectAtIndex:1];

      if (v21)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_20:

  v21 = @"application";
  v22 = @"octet-stream";
LABEL_21:
  [v23 setType:v21];
  [v23 setSubtype:v22];
}

id _ef_log_MFAccountAutoFetchController(uint64_t a1)
{
  if (_ef_log_MFAccountAutoFetchController_onceToken != -1)
  {
    _ef_log_MFAccountAutoFetchController_cold_1();
  }

  v2 = _ef_log_MFAccountAutoFetchController_log;

  return v2;
}

void sub_1B05B9798(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1B05B9F14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAccountStore;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05BB544(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFActivityCondition;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05BB778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1B05BB914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05BBBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B05BC7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05BC9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));

  _Unwind_Resume(a1);
}

void sub_1B05BD7B8(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_1B05BD9CC(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void sub_1B05BDD18(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

id EFPromiseAttachmentDataHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __EFPromiseAttachmentDataHandler_block_invoke;
  v9[3] = &unk_1E7AA4C38;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = _Block_copy(v9);

  return v7;
}

__CFData *_stripPrivateFileMetadata(void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  v3 = v2;
  v4 = v1;
  if (v2)
  {
    v5 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
    v6 = v5;
    v4 = v1;
    if (v5)
    {
      MutableCopy = CGImageMetadataCreateMutableCopy(v5);
      v8 = MutableCopy;
      v4 = v1;
      if (MutableCopy)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = ___stripPrivateFileMetadata_block_invoke;
        v15[3] = &unk_1E7AA4C60;
        v17 = &v19;
        v18 = MutableCopy;
        v16 = &unk_1F2776150;
        CGImageMetadataEnumerateTagsUsingBlock(v6, 0, 0, v15);
        v4 = v1;
        if (*(v20 + 24) == 1)
        {
          v9 = [MEMORY[0x1E695DF88] data];
          Type = CGImageSourceGetType(v3);
          Count = CGImageSourceGetCount(v3);
          v12 = CGImageDestinationCreateWithData(v9, Type, Count, 0);
          v4 = v1;
          if (v12)
          {
            keys[0] = *MEMORY[0x1E696D348];
            values = v8;
            v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
            v4 = v1;
            if (v13)
            {
              v4 = v1;
              if (CGImageDestinationCopyImageSource(v12, v3, v13, 0))
              {
                v4 = v9;
              }

              CFRelease(v13);
            }

            CFRelease(v12);
          }
        }

        CFRelease(v8);

        _Block_object_dispose(&v19, 8);
      }

      CFRelease(v6);
    }

    CFRelease(v3);
  }

  return v4;
}

void sub_1B05BF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05C0990(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C1E08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __EFPromiseAttachmentDataHandler_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    v6 = [*(a1 + 32) data];
    [*(a1 + 40) finishWithResult:v6];
  }

  else
  {
    [*(a1 + 40) finishWithError:v5];
  }
}

uint64_t ___stripPrivateFileMetadata_block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v6 = CGImageMetadataTagCopyPrefix(tag);
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = CGImageMetadataTagCopyName(tag);
      if (v8 && [v7 containsObject:v8])
      {
        CGImageMetadataRemoveTagWithPath(*(a1 + 48), 0, a2);
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  return 1;
}

void sub_1B05C4C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1B05C511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05C572C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1B05C6B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFAttachmentCompositionContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05C7350(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C839C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B05C9018(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05C926C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v11 + 6);

  _Unwind_Resume(a1);
}

void sub_1B05C9360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 6);

  _Unwind_Resume(a1);
}

void sub_1B05C9434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B05CB530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05CBA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a41, 8);

  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1B05CCFF8(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B05CD200(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B05CE5B0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B05CFD68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05D0794(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAttachmentSecurityScope;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05D0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05D13CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05D4120(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05D44E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1B05D470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = MFCategorySubsystem_iOS;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05D4A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_1B05D4F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v28 + 40));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);

  _Unwind_Resume(a1);
}

void sub_1B05D5670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);

  objc_destroyWeak((v13 - 40));
  _Unwind_Resume(a1);
}

void sub_1B05D5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);

  objc_destroyWeak((v13 - 40));
  _Unwind_Resume(a1);
}

void sub_1B05D6028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, id location)
{
  objc_destroyWeak((v24 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05D67AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);

  _Unwind_Resume(a1);
}

void sub_1B05D6DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B05D72AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFCertificateTrustInfo;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05D84C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

dispatch_source_t MFCreateDiskSpaceObserverSource(NSObject *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_source_create(MEMORY[0x1E69E9718], 0, 0xC204uLL, a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MFCreateDiskSpaceObserverSource_block_invoke;
    v9[3] = &unk_1E7AA4EE0;
    v6 = v4;
    v10 = v6;
    v11 = v3;
    dispatch_source_set_event_handler(v6, v9);
    v7 = v6;
  }

  return v5;
}

uint64_t __MFCreateDiskSpaceObserverSource_block_invoke(uint64_t a1)
{
  dispatch_source_get_data(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1B05D92F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05D9FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MFCreateExternalConversationID(void *a1)
{
  v1 = [a1 conversationId];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mf_encodeBase64];
    v4 = MFCreateStringWithData();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B05DB774(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05DC7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05DD048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  _Block_object_dispose((v20 - 144), 8);

  _Unwind_Resume(a1);
}

id copyRFC822DataForPlainTextMessage(void *a1, int a2, char a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v4 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
  v47 = v40;
  v44 = v4;
  v5 = objc_alloc_init(MEMORY[0x1E69AD740]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multipart/alternative boundary=%@", v44];;
  [v5 setHeader:v6 forKey:*MEMORY[0x1E699B0D0]];

  v7 = [v47 subject];
  v8 = v5;
  v9 = v7;
  if (v9)
  {
    [v8 setHeader:v9 forKey:*MEMORY[0x1E699B178]];
  }

  v10 = [v47 from];
  [v8 setAddressListForSender:v10];

  v11 = [v47 to];
  [v8 setAddressListForTo:v11];

  v12 = [v47 cc];
  [v8 setAddressListForCc:v12];

  v13 = [v47 bcc];
  [v8 setAddressListForBcc:v13];

  v14 = [v8 encodedHeaders];

  v43 = [v14 mutableCopy];
  v45 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v45 setType:@"multipart"];
  [(MFMailMimePart *)v45 setSubtype:@"alternative"];
  [(MFMailMimePart *)v45 setBodyParameter:v44 forKey:@"boundary"];
  v50 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v50 setType:@"multipart"];
  [(MFMailMimePart *)v50 setSubtype:@"mixed"];
  v42 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
  [MFMailMimePart setBodyParameter:v50 forKey:"setBodyParameter:forKey:"];
  [(MFMailMimePart *)v45 addSubpart:v50];
  v46 = objc_alloc_init(MFMailMimePart);
  [(MFMailMimePart *)v46 setType:@"text"];
  [(MFMailMimePart *)v46 setSubtype:@"plain"];
  if (a3)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = [v47 bodySize];
  }

  [(MFMailMimePart *)v46 setRange:0, v15];
  [(MFMailMimePart *)v50 addSubpart:v46];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = [v47 attachments];
  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v17)
  {
    v49 = *v53;
    do
    {
      v51 = v17;
      for (i = 0; i != v51; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        v20 = objc_alloc_init(MFMailMimePart);
        v21 = objc_alloc_init(MEMORY[0x1E69AD778]);
        v22 = [v19 displayName];
        [v21 setFilename:v22];

        if (MFGetTypeInfo() && ([v21 mimeType], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "rangeOfString:", @"/"), v23, v24 != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend(v21, "mimeType"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "length") > (v24 + 1), v25, v26))
        {
          v27 = [v21 mimeType];
          v28 = [v27 substringToIndex:v24];

          v29 = [v21 mimeType];
          v30 = [v29 substringFromIndex:v24 + 1];
        }

        else
        {
          v30 = @"octet-stream";
          v28 = @"application";
        }

        [(MFMailMimePart *)v20 setType:v28];
        [(MFMailMimePart *)v20 setSubtype:v30];
        v31 = [v19 name];
        [(MFMailMimePart *)v20 setContentID:v31];

        [(MFMailMimePart *)v20 setDisposition:@"attachment"];
        v32 = [v19 displayName];
        [(MFMailMimePart *)v20 setDispositionParameter:v32 forKey:@"filename"];

        v33 = [v19 size];
        -[MFMailMimePart setRange:](v20, "setRange:", 0, [v33 integerValue]);

        if ([v19 isMostDefinitelyBase64ed])
        {
          [(MFMailMimePart *)v20 setContentTransferEncoding:@"base64"];
        }

        [(MFMailMimePart *)v50 addSubpart:v20];
      }

      v16 = obj;
      v17 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v17);
  }

  v34 = [v47 meetingRequestUUID];

  if (v34)
  {
    v35 = objc_alloc_init(MFMailMimePart);
    [(MFMailMimePart *)v35 setType:@"text"];
    [(MFMailMimePart *)v35 setSubtype:@"calendar"];
    [(MFMailMimePart *)v35 setContentID:@"191AF69B-0088-47D2-AD66-6C9D08949C46"];
    [(MFMailMimePart *)v35 setDisposition:@"attachment"];
    [(MFMailMimePart *)v35 setDispositionParameter:@"meeting.ics" forKey:@"filename"];
    [(MFMailMimePart *)v35 setRange:0, 0];
    [(MFMailMimePart *)v50 addSubpart:v35];
  }

  if (a2)
  {
    v36 = objc_alloc_init(MFMailMimePart);
    [(MFMailMimePart *)v36 setType:@"message"];
    [(MFMailMimePart *)v36 setSubtype:@"rfc822"];
    [(MFMailMimePart *)v36 setRange:0, 0x7FFFFFFFFFFFFFFFLL];
    [(MFMailMimePart *)v36 setIsGenerated:1];
    [(MFMailMimePart *)v45 addSubpart:v36];
  }

  v37 = objc_alloc_init(MFMessageWriter);
  v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  [(MFMessageWriter *)v37 appendDataForMimePart:v45 toData:v43 withPartData:v38];

  return v43;
}

void sub_1B05E0EDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _MFDAMSBasicConsumer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05E1934(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    v26 = MFLogGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *(v22 - 256) = 138412290;
      *(v22 - 252) = v25;
      _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Caught exception %@", (v22 - 256), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05E18F0);
  }

  _Unwind_Resume(a1);
}

uint64_t insertDAMessages(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v62 = a2;
  v60 = a3;
  v56 = a4;
  v57 = [MEMORY[0x1E695DF90] dictionary];
  v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v69 = [v60 fetchLimits];
  v9 = [v62 persistence];
  v59 = [v9 hookRegistry];

  if (a5)
  {
    v61 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v61 = 0;
  }

  if ([v58 count])
  {
    [v59 persistenceWillAddNewMessages:v58];
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v58;
  v10 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (!v10)
  {

    v35 = 128;
    goto LABEL_49;
  }

  v64 = 0;
  v65 = *v79;
  do
  {
    v68 = v10;
    for (i = 0; i != v68; ++i)
    {
      if (*v79 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v78 + 1) + 8 * i);
      v13 = [v12 DAMailMessage];
      v14 = v13;
      if (a5)
      {
        v15 = [v13 longID];
        if (v15)
        {
          v64 = 1;
        }

        else
        {
          v16 = [v14 serverID];
          if (v16)
          {
            v15 = v16;
          }

          else
          {
            v15 = @"Unknown remote identifier. No valid longID or serverID found";
          }

          v64 |= v16 == 0;
        }

        [v61 addObject:v15];
      }

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v66 setObject:v17 forKeyedSubscript:v12];
      v70 = [v14 body];
      if (v70 && [v14 smimeType] != 2)
      {
        v18 = objc_alloc_init(MFBasicMessageDataSection);
        v19 = MFCreateStringByCondensingWhitespace(v70);
        [(MFBasicMessageDataSection *)v18 setPartName:@"summary"];
        v20 = [(__CFString *)v19 dataUsingEncoding:4];
        [(MFBasicMessageDataSection *)v18 setData:v20];

        [(MFBasicMessageDataSection *)v18 setComplete:1];
        [(MFBasicMessageDataSection *)v18 setPartial:0];
        [v17 addObject:v18];
      }

      v21 = [v14 meetingRequestUUID];
      if (v21)
      {
        v22 = objc_alloc_init(MFBasicMessageDataSection);
        [(MFBasicMessageDataSection *)v22 setPartName:@"meeting"];
        v23 = [v21 dataUsingEncoding:4];
        [(MFBasicMessageDataSection *)v22 setData:v23];

        [(MFBasicMessageDataSection *)v22 setComplete:1];
        [(MFBasicMessageDataSection *)v22 setPartial:0];
        [v17 addObject:v22];
        v24 = [v14 meetingRequestMetaData];
        if (v24)
        {
          v25 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v25 setPartName:@"meeting data"];
          [(MFBasicMessageDataSection *)v25 setData:v24];
          [(MFBasicMessageDataSection *)v25 setComplete:1];
          [(MFBasicMessageDataSection *)v25 setPartial:0];
          [v17 addObject:v25];
        }

        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (([v14 meetingRequestIsActionable] & 1) == 0)
        {
          [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shouldUseICSRepresentation"];
        }

        if ([v26 count])
        {
          v27 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v27 setPartName:@"meeting metadata"];
          v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
          [(MFBasicMessageDataSection *)v27 setData:v28];

          [(MFBasicMessageDataSection *)v27 setComplete:1];
          [(MFBasicMessageDataSection *)v27 setPartial:0];
          [v17 addObject:v27];
        }

        if (a6)
        {
          if (([v14 read] & 1) == 0)
          {
            *a6 |= 1uLL;
            v29 = [v60 meetingStorePersistentID];
            v30 = v29 == 0;

            if (v30)
            {
              *a6 |= 8uLL;
            }
          }
        }

        v31 = MFLogGeneral();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v84 = v26;
          v85 = 2112;
          v86 = v12;
          _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "Inserting Exchange Calendar meeting Data %@ for message : %@", buf, 0x16u);
        }

LABEL_40:
        v33 = copyRFC822DataForPlainTextMessage(v14, v21 == 0, 0);
        if (v33)
        {
          v34 = objc_alloc_init(MFBasicMessageDataSection);
          [(MFBasicMessageDataSection *)v34 setPartName:0];
          [(MFBasicMessageDataSection *)v34 setData:v33];
          [(MFBasicMessageDataSection *)v34 setComplete:1];
          [(MFBasicMessageDataSection *)v34 setPartial:1];
          [v17 addObject:v34];
        }

        goto LABEL_43;
      }

      if (a6 && ([v14 read] & 1) == 0)
      {
        *a6 |= 9uLL;
      }

      v32 = [v12 messageSize];
      if (v32 > [v69 fetchMaxBytes])
      {
        goto LABEL_40;
      }

LABEL_43:
    }

    v10 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  }

  while (v10);

  v35 = 128;
  if (v64)
  {
    v35 = 0x100000080;
  }

LABEL_49:
  if (a5)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_alloc_init(MEMORY[0x1E699B608]);
  [v59 persistenceWillBeginUpdates];
  v38 = [v62 addMessages:obj withMailbox:v56 newMessagesByOldMessage:v57 remoteIDs:v61 setFlags:v36 addPOPUIDs:0 dataSectionsByMessage:v66 generationWindow:v37];
  if ([v38 count])
  {
    v39 = objc_opt_new();
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __insertDAMessages_block_invoke;
    v76[3] = &unk_1E7AA5468;
    v40 = v39;
    v77 = v40;
    [v57 enumerateKeysAndObjectsUsingBlock:v76];
    [v62 willStartPersistenceDidAddMessages:v40];
    [v59 persistenceDidAddMessages:v38 generationWindow:v37];
    [v62 didFinishPersistenceDidAddMessages:v40];
    v41 = [v62 persistence];
    v42 = [v41 messageChangeManager];
    [v42 didReflectNewMessages:v38];
  }

  [v59 persistenceDidFinishUpdates];
  v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
  [v43 timeIntervalSince1970];
  v45 = v44;

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = v38;
  v47 = [v46 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v47)
  {
    v48 = *v73;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v73 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v72 + 1) + 8 * j);
        v51 = [v50 messageSize];
        if (v51 > [v69 fetchMaxBytes])
        {
          v52 = [v50 headersIfAvailable];
          [v62 updateThreadingInfoForMessage:v50 fromHeaders:v52];
        }

        if (a6)
        {
          [v50 dateReceivedAsTimeIntervalSince1970];
          if (v53 > v45)
          {
            if ([v50 conversationFlags])
            {
              *a6 |= 4uLL;
            }

            if (([v50 messageFlags] & 0x1000000) != 0)
            {
              *a6 |= 2uLL;
            }
          }
        }
      }

      v47 = [v46 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v47);
  }

  v54 = [v46 count];
  return v54;
}

void sub_1B05E38C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v14;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Caught exception %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05E3848);
  }

  _Unwind_Resume(a1);
}

void sub_1B05E3B70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___nextClientID_block_invoke()
{
  v0 = _nextClientID___clientID;
  _nextClientID___clientID = &unk_1F2775988;
}

void sub_1B05E5034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    NSLog(&cfstr_SDCaughtExcept.isa);
    objc_end_catch();
    JUMPOUT(0x1B05E4F3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B05E588C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05E5988(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05E6C1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *MFDBJournalMergeResultString(uint64_t a1)
{
  if (a1)
  {
    v1 = &stru_1F273A5E0;
    v2 = a1;
    if ((a1 & 2) != 0)
    {
      v1 = [&stru_1F273A5E0 stringByAppendingString:@"Failures "];
    }

    if (v2)
    {
      v3 = [(__CFString *)v1 stringByAppendingString:@"Interrupted"];

      v1 = v3;
    }
  }

  else
  {
    v1 = @"Success";
  }

  return v1;
}

void sub_1B05E7328(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFDbJournal;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B05E7410(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1B05E7510(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *MFMessageDeliveryStatusString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"EMMessageDeliveryStatusFatalError";
  }

  else
  {
    return off_1E7AA5580[a1];
  }
}

uint64_t _intersectsFunction(uint64_t value, uint64_t a2)
{
  if ((*a2 & 1) == 0)
  {
    value = CFSetContainsValue(*(a2 + 8), value);
    *a2 = value != 0;
  }

  return value;
}

uint64_t _subsetFunction(uint64_t value, uint64_t a2)
{
  if (*a2 == 1)
  {
    value = CFSetContainsValue(*(a2 + 8), value);
    *a2 = value != 0;
  }

  return value;
}

uint64_t _intersectFunction(void *value, uint64_t a2)
{
  result = CFSetContainsValue(*(a2 + 8), value);
  if (!result)
  {
    v5 = *a2;

    return [v5 addObject:value];
  }

  return result;
}

id _copyEmailDescription(void *a1)
{
  v1 = [a1 description];

  return v1;
}

uint64_t _emailEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
    if (!a1 || !a2)
    {
      return result;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    _emailEqual_cold_2();
  }

  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _emailEqual_cold_1();
  }

  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqualToEmail:a2];
  }
}

void sub_1B05EACB8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void _setUserInfoObjectForKey(void *a1, void *a2, void *a3)
{
  v10 = a1;
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock(v10 + 10);
  v7 = *&v10[12]._os_unfair_lock_opaque;
  if (v5)
  {
    if (!v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
      v9 = *&v10[12]._os_unfair_lock_opaque;
      *&v10[12]._os_unfair_lock_opaque = v8;

      v7 = *&v10[12]._os_unfair_lock_opaque;
    }

    [v7 setObject:v5 forKey:v6];
  }

  else if (v7)
  {
    [v7 removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(v10 + 10);
}

void sub_1B05EAE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  v13 = v12;
  os_unfair_lock_unlock(&a10[v13]);

  _Unwind_Resume(a1);
}

void sub_1B05EAF70(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v3));

  _Unwind_Resume(a1);
}

void sub_1B05EB894(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B05EC750(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFFileArchive;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t _archive_write_callback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 readerBlock];
  if (v7)
  {
    v8 = [v6 writerBlock];

    if (v8)
    {
      v9 = [v6 outputData];
      v10 = [v9 length];

      if (v10)
      {
        v11 = [v6 writerBlock];
        v12 = [v6 outputData];
        (v11)[2](v11, 0, v12);

        v13 = [v6 outputData];
        [v13 setLength:0];
      }
    }
  }

  v14 = [v6 outputData];
  [v14 appendBytes:a3 length:a4];

  return a4;
}

uint64_t _archive_close_callback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 outputData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 outputData];
    v6 = [MFFileArchiveDirectory rangeOfCentralDirectoryInData:v5];
    v8 = v7;

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 4294967266;
      archive_set_error();
    }

    else
    {
      v9 = [v2 outputData];
      [v9 setLength:v6 + v8];

      v4 = 0;
    }

    v10 = [v2 readerBlock];
    if (v10)
    {
      v11 = [v2 writerBlock];

      if (v11)
      {
        v12 = [v2 writerBlock];
        v13 = [v2 outputData];
        (v12)[2](v12, 0, v13);

        v14 = [v2 outputData];
        [v14 setLength:0];

        v15 = [v2 writerBlock];
        v15[2](v15, 0, 0);
      }
    }
  }

  return v4;
}

void sub_1B05F0AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = v11;

  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _comparePartialFetchResults(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 startOffset];
  v5 = [v3 startOffset];
  if (v4 < v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5 != v4;
  }

  return v6;
}

unint64_t _lockedFindRangeOfDownloadsWithUid(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3[1];
  if (v4)
  {
    v5 = [(__CFArray *)v4 count];
    v19.location = 0;
    v19.length = v5;
    v6 = CFArrayBSearchValues(v3[1], v19, a2, _compareDownloadsByUid, a2);
    v7 = v6;
    v8 = v5 - v6;
    if (v5 > v6)
    {
      v9 = 0;
      v10 = v6 - v5;
      while (1)
      {
        v11 = [(__CFArray *)v3[1] objectAtIndex:v7 + v9];
        v12 = [v11 uid];

        if (v12 != a2)
        {
          break;
        }

        ++v9;
        if (!(v10 + v9))
        {
          v9 = v8;
          break;
        }
      }

      if (v9 && v7)
      {
        do
        {
          v13 = v7 - 1;
          v14 = [(__CFArray *)v3[1] objectAtIndex:v7 - 1];
          v15 = [v14 uid];

          if (v15 != a2)
          {
            break;
          }

          ++v9;
          --v7;
        }

        while (v13);
      }
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v3[1];
    v3[1] = v16;

    v7 = 0;
  }

  return v7;
}

MFIMAPSimpleDownload *_getDownload(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = a1;
  v14 = a3;
  v15 = a8;
  [v13 mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(v13, a2);
  v18 = RangeOfDownloadsWithUid;
  v19 = v17;
  if (a7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 range:a6 consumer:a7, v15];
    goto LABEL_17;
  }

  if (RangeOfDownloadsWithUid >= v17)
  {
    goto LABEL_13;
  }

  v30 = RangeOfDownloadsWithUid;
  v20 = RangeOfDownloadsWithUid;
  do
  {
    v21 = [v13[1] objectAtIndex:v20];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v21 section], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v14), v22, v23) && (!v15 || (objc_msgSend(v21, "mainConsumer"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "consumers"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "containsObject:", v15), v25, v24, v26)))
    {
      v27 = v21;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      break;
    }

    ++v20;
  }

  while (v20 < v19);
  v18 = v30;
  a2 = a2;
  if (!v27)
  {
LABEL_13:
    if (a4 == 0xFFFFFFFFLL)
    {
      v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 estimatedLength:a5 consumer:v15];
    }

    else
    {
      v28 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v14 length:a4 consumer:v15];
    }

LABEL_17:
    v27 = v28;
    if (v28)
    {
      [v13[1] insertObject:v28 atIndex:v18 + v19];
    }
  }

  [v13 mf_unlock];

  return v27;
}

void _lockedUpdateDownloadsInRange(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v19 = a3;
  if (a3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = a2 + a3;
      v11 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 type] != 8 && a2 < v10)
          {
            v15 = v19;
            v16 = a2;
            do
            {
              v17 = [v7[1] objectAtIndex:v16];
              [v17 handleFetchResult:v13];

              ++v16;
              --v15;
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v8 = v18;
  }
}

uint64_t _compareDownloadsByUid(void *a1, void *a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  if (a1 != a3)
  {
    v5 = [a1 uid];
  }

  if (a2 != v3)
  {
    LODWORD(v3) = [a2 uid];
  }

  if (v5 < v3)
  {
    return -1;
  }

  else
  {
    return v5 != v3;
  }
}

id _ef_log_MFIMAPMessageDownload(uint64_t a1)
{
  if (_ef_log_MFIMAPMessageDownload_onceToken != -1)
  {
    _ef_log_MFIMAPMessageDownload_cold_1();
  }

  v2 = _ef_log_MFIMAPMessageDownload_log;

  return v2;
}

void *IMAPCreateArrayForMessageFlags(uint64_t a1, int a2, int a3)
{
  v6 = objc_opt_new();
  v7 = 0;
  do
  {
    v8 = &sMessageFlagsTable + v7;
    if ((*(&sMessageFlagsTable + v7 + 20) & ~a2) == 0 || (v8[16] == 1 ? (v9 = a3 == 0) : (v9 = 1), !v9))
    {
      if ((*(v8 + 1) & a1) != 0)
      {
        [v6 addObject:*v8];
      }
    }

    v10 = v7 >= 0x168;
    v7 += 24;
  }

  while (!v10);
  return v6;
}

uint64_t IMAPMessageFlagsFromArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          while (![v6 ef_caseInsensitiveIsEqualToString:{*(&sMessageFlagsTable + v7), v10}])
          {
            v8 = v7 >= 0x168;
            v7 += 24;
            if (v8)
            {
              goto LABEL_13;
            }
          }

          v2 |= *(&sMessageFlagsTable + v7 + 8);
        }

LABEL_13:
        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  return v2;
}

uint64_t IMAPPermanentFlagsFromArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 0;
          while (![v6 ef_caseInsensitiveIsEqualToString:{*(&sMessageFlagsTable + v7), v10}])
          {
            v8 = v7 > 0x167;
            v7 += 24;
            if (v8)
            {
              goto LABEL_13;
            }
          }

          v2 = *(&sMessageFlagsTable + v7 + 20) | v2;
        }

LABEL_13:
        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  return v2;
}

uint64_t mf_isIMAPAtom(unsigned int a1)
{
  if ((a1 & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return (mf_isIMAPAtom_atomicMask[a1 >> 5] >> a1) & 1;
  }
}

id _nullOrCFTypeRetain(uint64_t a1, void *a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void _nullOrCFTypeRelease(uint64_t a1, void *a2)
{
  if (a2)
  {
  }
}

__CFString *_nullOrCFTypeCopyDescription(uint64_t a1)
{
  if (a1)
  {
    return (*(MEMORY[0x1E695E9C0] + 24))();
  }

  else
  {
    return @"NIL";
  }
}

uint64_t _nullOrCFTypeEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 != 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFMutableArrayRef createFixedMutableArray(void *a1)
{
  v2 = [a1 count];
  if (v2)
  {

    return CFArrayCreateMutableCopy(0, v2, a1);
  }

  else if (a1)
  {
    v4 = [MEMORY[0x1E695DEC8] array];

    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1B05F91E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 name];
      v14 = [v11 reason];
      LODWORD(buf) = 138412546;
      *(&buf + 4) = v13;
      WORD6(buf) = 2112;
      *(&buf + 14) = v14;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Warning caught %@: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x1B05F9190);
  }

  _Unwind_Resume(a1);
}

void *response(void *a1)
{
  v2 = [a1 lookAhead];
  if (v2 == 42)
  {
    [a1 increment];
LABEL_7:
    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    response_without_tag(a1);
    goto LABEL_10;
  }

  if (v2 == 43)
  {
    [a1 increment];
    [objc_msgSend(a1 "response")];
    resp_text(a1);
    goto LABEL_10;
  }

  v3 = [a1 copyAtom];
  if (v3)
  {
    v4 = v3;
    [objc_msgSend(a1 "response")];

    goto LABEL_7;
  }

LABEL_10:
  if (*([a1 response] + 8))
  {
    result = [a1 lookAhead];
    if (result)
    {

      return [a1 emitWarning:@"Junk at end of response"];
    }
  }

  else
  {

    return [a1 emitError:@"Incomplete response"];
  }

  return result;
}

uint64_t MFCreateArrayForMessageFlags(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = &(&IMAPMessageFlagsTable)[v5];
    if (((&IMAPMessageFlagsTable)[v5 + 1] & a1) != 0 && (*(v6 + 16) != 1 || a2 != 0))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:*v6 encoding:1];
      if (v4)
      {
        [v4 addObject:v8];
      }

      else
      {
        v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      }
    }

    v9 = v5 >= 45;
    v5 += 3;
  }

  while (!v9);
  if (v4)
  {
    return v4;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E695DEC8]);

  return [v11 init];
}

uint64_t MFMessageFlagsFromArray(void *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  v10[0] = 0;
  v10[1] = 0;
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    while (1)
    {
      v5 = [objc_msgSend(a1 objectAtIndex:{--v3), "dataUsingEncoding:allowLossyConversion:", 1, 1}];
      v6 = [v5 bytes];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_8:
      if (!v3)
      {
        return v4;
      }
    }

    v7 = 0;
    v8 = &qword_1E7AA5AC0;
    while ((*(v10 + v7) & 1) != 0 || strncasecmp(v6, *(v8 - 1), [v5 length]))
    {
      ++v7;
      v8 += 3;
      if (v7 == 16)
      {
        goto LABEL_8;
      }
    }

    *(v10 + v7) = 1;
    v4 |= *v8;
  }

  while (v3);
  return v4;
}

void resp_text(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (![a1 match:"["])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_50;
  }

  v2 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
  v3 = [a1 start];
  v4 = v2;
  if (!v2)
  {
    v4 = [a1 end];
  }

  v5 = memchr(v3, 32, v4 - [a1 start]);
  if ([a1 match:"ALERT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_47;
  }

  if ([a1 match:"UNAVAILABLE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 17;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHENTICATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 18;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHORIZATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 19;
    goto LABEL_47;
  }

  if ([a1 match:"EXPIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 20;
    goto LABEL_47;
  }

  if ([a1 match:"PRIVACYREQUIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 21;
    goto LABEL_47;
  }

  if ([a1 match:"CONTACTADMIN" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 22;
    goto LABEL_47;
  }

  if ([a1 match:"NOPERM" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 23;
    goto LABEL_47;
  }

  if ([a1 match:"INUSE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 24;
    goto LABEL_47;
  }

  if ([a1 match:"EXPUNGEISSUED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 25;
    goto LABEL_47;
  }

  if ([a1 match:"CORRUPTION" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 26;
    goto LABEL_47;
  }

  if ([a1 match:"SERVERBUG" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 27;
    goto LABEL_47;
  }

  if ([a1 match:"CANNOT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 29;
    goto LABEL_47;
  }

  if ([a1 match:"LIMIT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 30;
    goto LABEL_47;
  }

  if ([a1 match:"OVERQUOTA" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 31;
    goto LABEL_47;
  }

  if ([a1 match:"ALREADYEXISTS" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 32;
    goto LABEL_47;
  }

  if ([a1 match:"NONEXISTENT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 33;
    goto LABEL_47;
  }

  if (([a1 match:"BADCHARSET" upToSpecial:v5] & 1) == 0 && !objc_msgSend(a1, "match:upToSpecial:", "BADCHARSET", v2))
  {
    if ([a1 match:"NEWNAME" upToSpecial:v5])
    {
      [a1 parseSpace];
      v9 = mailbox(a1);
      values = v9;
      [a1 parseSpace];
      v10 = mailbox(a1);
      v6 = 0;
      v27 = v10;
      if (v9 && v10)
      {
        v6 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
        v9 = values;
      }

      v7 = 3;
      goto LABEL_47;
    }

    if ([a1 match:"PARSE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 4;
      goto LABEL_47;
    }

    if ([a1 match:"READ-ONLY" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 6;
      goto LABEL_47;
    }

    if ([a1 match:"READ-WRITE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 7;
      goto LABEL_47;
    }

    if ([a1 match:"TRYCREATE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 8;
      goto LABEL_47;
    }

    if ([a1 match:"UIDNEXT" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 9;
      goto LABEL_47;
    }

    if ([a1 match:"HIGHESTMODSEQ" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 12;
      goto LABEL_47;
    }

    if ([a1 match:"UIDVALIDITY" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 10;
      goto LABEL_47;
    }

    if ([a1 match:"NOMODSEQ" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 13;
      goto LABEL_47;
    }

    if ([a1 match:"UNSEEN" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 11;
      goto LABEL_47;
    }

    if ([a1 match:"PERMANENTFLAGS" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = flags_array(a1);
      v7 = 5;
      goto LABEL_47;
    }

    if ([a1 match:"CAPABILITY" upToSpecial:v5])
    {
      v11 = [a1 end];
      if (v2)
      {
        [a1 setEnd:v2];
      }

      v12 = capability_array(a1);
      [a1 setEnd:v11];
      if (!v2)
      {
        v2 = [a1 end];
      }

      [a1 setStart:v2];
      v7 = 14;
      v6 = v12;
      goto LABEL_47;
    }

    if ([a1 match:"APPENDUID" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v13 = [a1 copyNumber];
      if (v13)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v14 = [a1 copyNumber];
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{v13, v14, 0}];
          v7 = 15;
LABEL_117:

          v6 = v15;
          goto LABEL_47;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = 0;
      v7 = 0;
      goto LABEL_117;
    }

    if (![a1 match:"COPYUID" upToSpecial:v5])
    {
      if ([a1 match:"CLIENTBUG" upToSpecial:v2])
      {
        v19 = MFLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(values) = 0;
          _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, "We did something bad: we just got back a CLIENTBUG from the server.", &values, 2u);
        }

        v6 = 0;
        v7 = 0;
      }

      else
      {
        if (!v2)
        {
          v2 = [a1 end];
        }

        v20 = [a1 start];
        if (v5)
        {
          v21 = [a1 copyStringFrom:v20 to:v5 withCaseOption:1];
          v5 = [a1 copyStringFrom:&v5->isa + 1 to:v2 withCaseOption:0];
        }

        else
        {
          v21 = [a1 copyStringFrom:v20 to:v2 withCaseOption:1];
        }

        v22 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
        v23 = &stru_1F273A5E0;
        if (v5)
        {
          v23 = v5;
        }

        v24 = [v22 initWithObjects:{v21, v23, 0}];

        v25 = v2;
        v6 = v24;
        [a1 setStart:v25];
        v7 = 34;
      }

      goto LABEL_47;
    }

    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    v16 = [a1 copyNumber];
    if (v16)
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v17 = [a1 copyMessageSet];
      if (v17)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v18 = [a1 copyMessageSet];
        if (v18)
        {
          v6 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) initWithObjects:{v16, v17, v18, 0}];
          v7 = 16;
LABEL_125:

          goto LABEL_47;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_125;
  }

  if ([a1 parseSpace])
  {
    v6 = [a1 copyArray];
  }

  else
  {
    v6 = 0;
  }

  v7 = 2;
LABEL_47:
  if (([a1 match:"]"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected ]"];
  }

  [a1 parseSpace];
LABEL_50:
  v8 = [objc_allocWithZone(MEMORY[0x1E69AD6B0]) initWithBytes:objc_msgSend(a1 length:{"start"), objc_msgSend(a1, "end") - objc_msgSend(a1, "start")}];
  [a1 setEnd:{objc_msgSend(a1, "start")}];
  [objc_msgSend(a1 "response")];
}