void sub_2999EC5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F27E890, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t OSLogCopyFormattedString(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = OSLogCopyFormattedStringImpl(a1, a2, a3);
  v4 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v3];

  return v4;
}

__CFString *OSLogCopyFormattedStringImpl(uint64_t a1, void *a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v6 = objc_autoreleasePoolPush();
  if (OSLogCopyFormattedStringImpl_onceToken != -1)
  {
    OSLogCopyFormattedStringImpl_cold_1();
  }

  v26 = 0;
  v7 = [OSLogCopyFormattedStringImpl_sEncryptedLocationTypes objectForKeyedSubscript:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", a1)}];
  if (!v7)
  {
    v13 = [OSLogCopyFormattedStringImpl_sFormatter JSONObjectWithType:a1 value:a2 info:a3];
    v14 = v13;
    if (v13)
    {
      v11 = stringWithJSONObject(v13, &v26);
      if (v11)
      {
        goto LABEL_21;
      }

      v13 = v26;
    }

    v28[0] = @"decode failure";
    v27[0] = @"type";
    v27[1] = @"error";
    v15 = [v13 description];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"nil";
    }

    v28[1] = v16;
    v27[2] = @"fake JSON";
    v17 = [v14 description];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"nil";
    }

    v28[2] = v18;
    v27[3] = @"raw value";
    v19 = [a2 description];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = @"nil";
    }

    v28[3] = v20;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
    goto LABEL_20;
  }

  v8 = v7;
  v24 = 0;
  v25 = 0;
  v9 = extractEncryptedData(a2, &v24, &v25);
  v10 = v25;
  if (v25 || (v11 = (*(v8 + 16))(v8, v9, v24, &v25), (v10 = v25) != 0))
  {
    v12 = v10;
LABEL_20:
    v11 = stringWithJSONObject(v12, &v26);
  }

LABEL_21:
  v21 = @"{error:complete decode failure}";
  if (v11)
  {
    v21 = v11;
  }

  v22 = v21;
  objc_autoreleasePoolPop(v6);
  return v22;
}

__CFString *OSStateCreateStringWithData(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = 1;
  v4 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:a3 length:a2 freeWhenDone:0];
  v5 = OSLogCopyFormattedStringImpl(a1, v4, &v7);

  return v5;
}

id __OSLogCopyFormattedStringImpl_block_invoke()
{
  v2[2] = *MEMORY[0x29EDCA608];
  OSLogCopyFormattedStringImpl_sFormatter = objc_alloc_init(CLLogFormatter);
  v1[0] = @"Location";
  v1[1] = @"Coordinate";
  v2[0] = &__block_literal_global_6;
  v2[1] = &__block_literal_global_25;
  result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v2 forKeys:v1 count:2];
  OSLogCopyFormattedStringImpl_sEncryptedLocationTypes = result;
  return result;
}

void *__OSLogCopyFormattedStringImpl_block_invoke_2(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (a3 < 0x9C)
  {
    return &unk_2A2001118;
  }

  v21 = v3;
  v22 = v4;
  v6 = a2[7];
  v18 = a2[6];
  v19 = v6;
  v20[0] = a2[8];
  *(v20 + 12) = *(a2 + 140);
  v7 = a2[3];
  v14 = a2[2];
  v15 = v7;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  v10[6] = v18;
  v10[7] = v19;
  v11[0] = v20[0];
  *(v11 + 12) = *(v20 + 12);
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;
  v10[0] = v12;
  v10[1] = v9;
  return [objc_msgSend(objc_alloc(MEMORY[0x29EDBD238]) initWithClientLocation:{v10), "description"}];
}

void *__OSLogCopyFormattedStringImpl_block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 0x10)
  {
    return [MEMORY[0x29EDBA0F8] stringWithFormat:@"<%+.8f, %+.8f>", *a2, a2[1], v3, v4];
  }

  else
  {
    return &unk_2A2001140;
  }
}

id stringWithJSONObject(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  v3 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:a1 options:4 error:&v5];
  if (v3)
  {
    return [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v3 encoding:4];
  }

  result = 0;
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

char *extractEncryptedData(void *a1, void *a2, void *a3)
{
  v34[3] = *MEMORY[0x29EDCA608];
  if (extractEncryptedData_onceToken != -1)
  {
    extractEncryptedData_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33[0] = @"type";
    v33[1] = @"expected type";
    v34[0] = @"decode failure";
    v34[1] = @"NSData";
    v33[2] = @"raw value";
    v34[2] = a1;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v34;
    v13 = v33;
LABEL_12:
    v14 = 3;
    goto LABEL_13;
  }

  v6 = [a1 bytes];
  v7 = [a1 length];
  if (!v6 || (v8 = v7, v7 <= 7))
  {
    v31[0] = @"type";
    v31[1] = @"expected type";
    v32[0] = @"decode failure";
    v32[1] = @"NSData";
    v31[2] = @"raw value";
    v32[2] = a1;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v32;
    v13 = v31;
    goto LABEL_12;
  }

  v22 = *v6;
  if (!v22)
  {
    result = 0;
    v15 = &unk_2A2001168;
    goto LABEL_15;
  }

  v9 = v7 - 8;
  if (v7 == 8)
  {
    result = 0;
    v15 = &unk_2A2001190;
    goto LABEL_15;
  }

  if (*(v6 + 8) == 1668050021)
  {
LABEL_9:
    result = (v6 + 12);
    *a2 = v8 - 12;
    return result;
  }

  ccaes_ecb_decrypt_mode();
  if (v9 % ccecb_block_size())
  {
    v29[0] = @"type";
    v29[1] = @"expected type";
    v30[0] = @"decode failure";
    v30[1] = @"encrypted data";
    v29[2] = @"raw value";
    v30[2] = a1;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v30;
    v13 = v29;
    goto LABEL_12;
  }

  memset(&v27, 0, sizeof(v27));
  localtime_r(&v22, &v27);
  if (v27.tm_hour <= 0)
  {
    v16 = -(-v27.tm_hour & 3);
  }

  else
  {
    v16 = v27.tm_hour & 3;
  }

  snprintf(__str, 0x20uLL, "logkey_%04d_%03d_%02d", v27.tm_year, v27.tm_yday, v27.tm_hour - v16);
  v17 = [extractEncryptedData_keyPath stringByAppendingFormat:@"/%s", __str];
  if (([objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")] & 1) == 0)
  {
    v18 = localtime(&v22);
    snprintf(&v27, 0x20uLL, "%04d_%03d", v18->tm_year, v18->tm_yday);
    v17 = [objc_msgSend(extractEncryptedData_keyPath stringByAppendingFormat:@"/%s", &v27), "stringByAppendingFormat:", @"/%s", __str];
    if (([objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")] & 1) == 0)
    {
      v25[0] = @"type";
      v25[1] = @"reason";
      v26[0] = @"decrypt failure";
      v26[1] = @"missing key";
      v25[2] = @"expected key";
      v26[2] = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v26;
      v13 = v25;
      goto LABEL_12;
    }
  }

  *&v27.tm_sec = 0;
  v19 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v17 options:1 error:&v27];
  if (!*&v27.tm_sec)
  {
    v21 = v19;
    ccaes_ecb_decrypt_mode();
    [v21 length];
    [v21 bytes];
    if (ccecb_one_shot())
    {
      v15 = &unk_2A20011B8;
    }

    else
    {
      if (*(v6 + 8) == 1668050021)
      {
        goto LABEL_9;
      }

      v15 = &unk_2A20011E0;
    }

    goto LABEL_14;
  }

  v23[0] = @"type";
  v23[1] = @"reason";
  v24[0] = @"decrypt failure";
  v24[1] = @"can't load key";
  v23[2] = @"keypath";
  v20 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__str];
  v23[3] = @"error";
  v24[2] = v20;
  v24[3] = *&v27.tm_sec;
  v11 = MEMORY[0x29EDB8DC0];
  v12 = v24;
  v13 = v23;
  v14 = 4;
LABEL_13:
  v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
LABEL_14:
  result = 0;
LABEL_15:
  *a3 = v15;
  return result;
}

id __extractEncryptedData_block_invoke()
{
  v0 = getenv("CLLOG_ENCRYPTION_KEY_PATH");
  if (v0)
  {
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v0];
  }

  else
  {
    v1 = [objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")];
  }

  result = v1;
  extractEncryptedData_keyPath = result;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}