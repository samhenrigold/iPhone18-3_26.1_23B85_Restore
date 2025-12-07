uint64_t sub_2400E1218()
{
  sub_2400E53FC();
  v1 = sub_2400E545C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2400E12B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _AsyncKVOSequenceProtocol<>.changes<A>(for:options:bufferingPolicy:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2400E53FC();
  v7 = sub_2400E543C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12[-v9];
  swift_checkMetadataState();
  (*(v8 + 16))(v10, a3, v7);
  v13 = v3;
  v14 = a1;
  v15 = a2;
  return sub_2400E546C();
}

uint64_t sub_2400E14BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[0] = a4;
  v6 = *a3;
  v7 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  sub_2400E53FC();
  v8 = sub_2400E545C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v18[1] = a2;
  (*(v9 + 16))(v18 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + *MEMORY[0x277D84DE8]);
  *(v13 + 16) = v14;
  *(v13 + 24) = v7;
  (*(v9 + 32))(v13 + v12, v11, v8);
  v15 = sub_2400E540C();

  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v7;
  v16[4] = v15;
  return sub_2400E542C();
}

uint64_t sub_2400E16D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2400E53FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = sub_2400E541C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_2400E545C();
  sub_2400E544C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2400E1854(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  sub_2400E53FC();
  v5 = *(sub_2400E545C() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2400E16D4(a2, v6, v4);
}

id ASFLogHandleForCategory()
{
  if (ASFLogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
  }

  v1 = ASFLogHandleForCategory_logHandles_0;

  return v1;
}

id _readStringDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCA968];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v3 setLocale:v4];
    [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v5 = [v3 dateFromString:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __ASFLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.appstorefoundation", "Default");
  v1 = ASFLogHandleForCategory_logHandles_0;
  ASFLogHandleForCategory_logHandles_0 = v0;

  ASFLogHandleForCategory_logHandles_1 = os_log_create("com.apple.appstorefoundation", "Signpost");

  return MEMORY[0x2821F96F8]();
}

void sub_2400E4E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __readIdentifier_block_invoke(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    **(result + 40) = *a2 >> 6;
    if ((~*a2 & 0x1F) != 0)
    {
      **(result + 48) = 1;
      v5 = *a2 & 0x1F;
    }

    else
    {
      v5 = 0xFFFFLL;
    }

    *(*(*(result + 32) + 8) + 24) = v5;
  }

  *a5 = 1;
  return result;
}

void __readLength_block_invoke(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      **(a1 + 40) = 1;
      v6 = *a2;
LABEL_4:
      *(*(*(a1 + 32) + 8) + 24) = v6;
      goto LABEL_18;
    }

    v7 = *a2 & 0x7F;
    if (a4 <= v7)
    {
      **(a1 + 40) = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_18;
    }

    if (v7 <= 8)
    {
      if (v7)
      {
        v8 = 0;
        v6 = 0;
        do
        {
          if (v8)
          {
            v6 <<= 8;
          }

          v6 |= a2[++v8];
        }

        while (v7 != v8);
      }

      else
      {
        v6 = 0;
      }

      **(a1 + 40) = (v7 + 1);
      goto LABEL_4;
    }

    if (ASFLogHandleForCategory_onceToken_0 != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken_0, &__block_literal_global_0);
    }

    v9 = ASFLogHandleForCategory_logHandles_0_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0_0, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_error_impl(&dword_2400E0000, v9, OS_LOG_TYPE_ERROR, "Byte count would result in overflow: %d", v10, 8u);
    }
  }

LABEL_18:
  *a5 = 1;
}

uint64_t __ASFLogHandleForCategory_block_invoke_0()
{
  v0 = os_log_create("com.apple.appstorefoundation", "Default");
  v1 = ASFLogHandleForCategory_logHandles_0_0;
  ASFLogHandleForCategory_logHandles_0_0 = v0;

  ASFLogHandleForCategory_logHandles_1_0 = os_log_create("com.apple.appstorefoundation", "Signpost");

  return MEMORY[0x2821F96F8]();
}