uint64_t sub_22EE63E10()
{
  qword_2810B8870 = os_log_create(off_27DA9CC58, "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE63E74(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_22EE63E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_22EE63EA4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_22EE63ED0(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

BOOL sub_22EE63F00(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_22EE63F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return a12;
}

uint64_t sub_22EE63F3C(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t sub_22EE63F54()
{

  return sub_22EE69AE8();
}

uint64_t sub_22EE65FE0()
{
  qword_2810B8880 = os_log_create(off_27DA9CC58, "sideeffect");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE66028()
{
  qword_2810B8890 = os_log_create(off_27DA9CC58, "legacy");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE66090(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_22EE660A0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_22EE660F0()
{

  return sub_22EE69AE8();
}

id sub_22EE6611C()
{

  return sub_22EE75E98(v1, v0);
}

BOOL sub_22EE6613C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_22EE66154(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

id sub_22EE661B4(uint64_t a1, const __CFUUID *a2)
{
  objc_opt_self();
  if (a2)
  {
    v3 = CFUUIDCreateString(*MEMORY[0x277CBECE8], a2);
    if (!v3)
    {
      sub_22EE770C0();
    }

    v4 = v3;
    v5 = sub_22EE66154(MEMORY[0x277CCAD78], v3);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFUUIDRef sub_22EE66238(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x277CBECE8];
  v2 = [a1 UUIDString];
  v3 = CFUUIDCreateFromString(v1, v2);

  if (!v3)
  {
    sub_22EE770C0();
  }

  return v3;
}

id sub_22EE66298(uint64_t a1)
{
  objc_opt_self();
  if (qword_27DA9CC68 != -1)
  {
    sub_22EE770DC();
  }

  v1 = qword_27DA9CC60;

  return v1;
}

uint64_t sub_22EE662E0()
{
  qword_27DA9CC60 = objc_alloc_init(UMLProviderSideEffects);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE67BB0(_removefile_state *a1, const char *a2, _DWORD *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    v5 = *__error();
    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v6 = qword_2810B88A0;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *&v40.st_dev = 0;
    v7 = sub_22EE69AE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v37 = 67109120;
      *&v37[4] = v5;
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v11 = dst;
  if (dst == 1)
  {
    memset(&v40, 0, sizeof(v40));
    if (lstat(a2, &v40))
    {
      v15 = *__error();
      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v16 = qword_2810B88A0;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      v17 = sub_22EE69AE8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    if ((v40.st_flags & 2) != 0)
    {
      if (lchflags(a2, v40.st_flags & 0xFFFFFFFD))
      {
        v15 = *__error();
        if (qword_2810B88A8 != -1)
        {
          sub_22EE775F0();
        }

        v16 = qword_2810B88A0;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }

        v21 = sub_22EE69AE8();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
LABEL_34:
          *v37 = 136446466;
          *&v37[4] = a2;
          v38 = 1024;
          v39 = v15;
          goto LABEL_35;
        }

LABEL_69:
        v20 = 0;
LABEL_70:
        free(v20);
LABEL_71:

        goto LABEL_72;
      }

      if (qword_2810B88A8 != -1)
      {
        sub_22EE775F0();
      }

      v23 = qword_2810B88A0;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = sub_22EE69AE8();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *v37 = 136446210;
          *&v37[4] = a2;
          v26 = _os_log_send_and_compose_impl();
          v27 = v26;
          if (v26)
          {
            sub_22EE69B10(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      if (unlink(a2))
      {
        v28 = *__error();
        if (v28 != 2)
        {
          if (qword_2810B88A8 != -1)
          {
            sub_22EE775F0();
          }

          v16 = qword_2810B88A0;
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_71;
          }

          v29 = sub_22EE69AE8();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            *v37 = 136446466;
            *&v37[4] = a2;
            v38 = 1024;
            v39 = v28;
LABEL_35:
            v19 = _os_log_send_and_compose_impl();
            v20 = v19;
            if (v19)
            {
              sub_22EE69B10(v19);
            }

            goto LABEL_70;
          }

          goto LABEL_69;
        }
      }

      dst = 0;
    }

LABEL_72:
    v11 = dst;
    goto LABEL_73;
  }

  if (dst == 2)
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v6 = qword_2810B88A0;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    *v37 = 0;
    v12 = sub_22EE69AE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v40.st_dev = 136446210;
      *&v40.st_mode = a2;
LABEL_10:
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_22EE69B10(v9);
      }

      goto LABEL_23;
    }

LABEL_22:
    v10 = 0;
LABEL_23:
    free(v10);
LABEL_24:

    return 0;
  }

LABEL_73:
  if (v11)
  {
    if (qword_2810B88A8 != -1)
    {
      sub_22EE775F0();
    }

    v31 = qword_2810B88A0;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      v32 = sub_22EE69AE8();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v40.st_dev = 136446466;
        *&v40.st_mode = a2;
        WORD2(v40.st_ino) = 1024;
        *(&v40.st_ino + 6) = dst;
        v34 = _os_log_send_and_compose_impl();
        v35 = v34;
        if (v34)
        {
          sub_22EE69B10(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    if (!*a3)
    {
      *a3 = dst;
    }
  }

  return 0;
}

uint64_t sub_22EE68C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
  v12 = MEMORY[0x2318F8AF0](a6);
  v13 = (v12)[2](v12, a1, a2, v10, v11);

  return v13;
}

uint64_t sub_22EE68D0C()
{
  qword_2810B88A0 = os_log_create(off_27DA9CC58, "sideeffect");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE68DAC()
{

  return sub_22EE69AE8();
}

uint64_t UMLCreatePrimaryUserLayout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = +[UMLManager sharedManager];
  v13 = 0;
  v9 = [v8 createUserLayoutForUserwithUserID:501 withAKSSetup:a3 onUserVolumePath:a2 fromSystemVolumePath:a1 withError:&v13];
  v10 = v13;
  v11 = v10;
  if (a4 && (v9 & 1) == 0 && v10)
  {
    *a4 = v10;
  }

  return v9;
}

uint64_t sub_22EE69A58()
{
  qword_27DA9CC70 = os_log_create(off_27DA9CC58, "userlayout");

  return MEMORY[0x2821F96F8]();
}

uint64_t UMLSetLogHandler()
{
  qword_27DA9CC80 = MEMORY[0x2318F8AF0]();

  return MEMORY[0x2821F96F8]();
}

uint64_t (*UMLSetInternalLogHandlers(uint64_t (*result)(void), void *a2))(void)
{
  off_2810B8860 = result;
  off_2810B8868 = a2;
  return result;
}

uint64_t sub_22EE69AE8()
{
  if (off_2810B8860)
  {
    return off_2810B8860();
  }

  else
  {
    return 2 * (qword_27DA9CC80 != 0);
  }
}

uint64_t sub_22EE69B10(uint64_t a1)
{
  v2 = off_2810B8868;
  if (off_2810B8868)
  {

    return v2(a1, a1);
  }

  else
  {
    if (!qword_27DA9CC80)
    {
      sub_22EE77668();
    }

    v4 = *(qword_27DA9CC80 + 16);

    return v4();
  }
}

void sub_22EE69BAC()
{
  v0 = [UMLManager alloc];
  v3 = sub_22EE663AC();
  v1 = sub_22EE69C1C(v0, v3);
  v2 = qword_27DA9CC88;
  qword_27DA9CC88 = v1;
}

void *sub_22EE69C1C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = UMLManager;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (!v4)
    {
      sub_22EE770C0();
    }

    a1 = v4;
    sub_22EE78594(v4, v3);
  }

  return a1;
}

uint64_t sub_22EE6DF5C(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  if (a3 == 2)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v10 = qword_2810B88B0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_22EE69AE8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = v16[1];
    }

    v17 = v16;
    v18 = sub_22EE7710C(v17);
    v19 = [v18 chownPath:v9 toUser:*(a1 + 40) group:*(a1 + 40) error:0];

    if (v19)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v20 = qword_2810B88B0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = sub_22EE69AE8();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v23 = _os_log_send_and_compose_impl();
          v24 = v23;
          if (v23)
          {
            sub_22EE69B10(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      v15 = 0;
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v20 = qword_2810B88B0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_22EE69AE8();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = _os_log_send_and_compose_impl();
          v28 = v27;
          if (v27)
          {
            sub_22EE69B10(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v15 = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_22EE7038C()
{
  qword_2810B88B0 = os_log_create(off_27DA9CC58, "userlayout");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE70420()
{

  return sub_22EE69AE8();
}

uint64_t sub_22EE70450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_22EE70468(const char *a1, char *a2, CFIndex a3, uint64_t a4, char *a5)
{
  v7 = sub_22EE704EC(a1, a4, 1, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v7, @"MKBUserSessionVolumeDeviceNode");
  v10 = Value != 0;
  if (Value)
  {
    CFStringGetCString(Value, a2, a3, 0x8000100u);
  }

  CFRelease(v8);
  return v10;
}

__CFDictionary *sub_22EE704EC(const char *a1, int a2, int a3, char *a4)
{
  v111 = *MEMORY[0x277D85DE8];
  *existing = 0;
  prefix = 0;
  v95 = 0;
  properties = 0;
  theDict = 0;
  parent = 0;
  valuePtr = 0;
  *__s2 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v6 = 0x27DA9C000uLL;
  v110 = 0u;
  if (a3)
  {
    BootDevice = APFSContainerGetBootDevice();
    if (BootDevice)
    {
      v8 = BootDevice;
      if (qword_27DA9CCA0 != -1)
      {
        sub_22EE7861C();
      }

      v9 = qword_27DA9CC98;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_143;
      }

      *v99 = 0;
      v10 = sub_22EE69AE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LODWORD(v102) = 67109120;
        HIDWORD(v102) = v8;
        goto LABEL_32;
      }

      goto LABEL_141;
    }

    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v12 = qword_27DA9CC98;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v13 = sub_22EE69AE8();
      v14 = v12;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *v99 = 138412290;
        *&v99[4] = prefix;
        v16 = _os_log_send_and_compose_impl();

        if (v16)
        {
          sub_22EE69B10(v16);
        }
      }

      else
      {

        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = *MEMORY[0x277CD2898];
  v18 = IOServiceMatching("AppleAPFSContainer");
  if (IOServiceGetMatchingServices(v17, v18, &existing[1]))
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v9 = qword_27DA9CC98;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_143;
    }

    *v99 = 0;
    v19 = sub_22EE69AE8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      LOWORD(v102) = 0;
LABEL_32:
      v21 = _os_log_send_and_compose_impl();
      v22 = v21;
      if (v21)
      {
        sub_22EE69B10(v21);
      }

      goto LABEL_142;
    }

LABEL_141:
    v22 = 0;
LABEL_142:
    free(v22);
LABEL_143:
    LODWORD(v30) = 0;
    LODWORD(v27) = 0;
    v23 = 0;
    goto LABEL_144;
  }

  v87 = a3;
  v23 = 0;
  v24 = 0;
  v25 = *MEMORY[0x277CBECE8];
  v86 = *MEMORY[0x277CBED10];
  v88 = a2;
  do
  {
    v26 = IOIteratorNext(existing[1]);
    if (!v26)
    {
      goto LABEL_137;
    }

    v27 = v26;
    parent = 0;
    existing[0] = 0;
    if (IORegistryEntryGetParentEntry(v26, "IOService", &parent) || MEMORY[0x2318F86C0](v27, "IOService", existing))
    {
      if (*(v6 + 3232) != -1)
      {
        sub_22EE7861C();
      }

      v9 = qword_27DA9CC98;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v99 = 0;
      v72 = sub_22EE69AE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        LOWORD(v102) = 0;
        goto LABEL_187;
      }

LABEL_191:
      v77 = 0;
LABEL_192:
      free(v77);
LABEL_193:
      LODWORD(v30) = 0;
      goto LABEL_144;
    }

    v95 = 0;
    properties = 0;
    if (IORegistryEntryCreateCFProperties(parent, &properties, v25, 0) || IORegistryEntryCreateCFProperties(v27, &v95, v25, 0))
    {
      if (*(v6 + 3232) != -1)
      {
        sub_22EE7861C();
      }

      v9 = qword_27DA9CC98;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v99 = 0;
      v74 = sub_22EE69AE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        LOWORD(v102) = 0;
LABEL_187:
        v76 = _os_log_send_and_compose_impl();
        v77 = v76;
        if (v76)
        {
          sub_22EE69B10(v76);
        }

        goto LABEL_192;
      }

      goto LABEL_191;
    }

    if (v95)
    {
      CFRelease(v95);
      v95 = 0;
    }

    if (properties)
    {
      CFRelease(properties);
      properties = 0;
    }

    v89 = v24;
    if (parent)
    {
      IOObjectRelease(parent);
      parent = 0;
    }

    v28 = IOIteratorNext(existing[0]);
    v29 = v28 == 0;
    if (v28)
    {
      v30 = v28;
      while (!IOObjectConformsTo(v30, "AppleAPFSVolume"))
      {
        v32 = 0;
LABEL_127:
        IOObjectRelease(v30);
        if ((v32 & 1) == 0)
        {
          v30 = IOIteratorNext(existing[0]);
          v29 = v30 == 0;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_133;
      }

      if (IORegistryEntryCreateCFProperties(v30, &theDict, v25, 0))
      {
        if (*(v6 + 3232) != -1)
        {
          sub_22EE7861C();
        }

        v9 = qword_27DA9CC98;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 0;
          v68 = sub_22EE69AE8();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v69 = v68;
          }

          else
          {
            v69 = v68 & 0xFFFFFFFE;
          }

          if (v69)
          {
            LOWORD(v102) = 0;
            v70 = _os_log_send_and_compose_impl();
            v71 = v70;
            if (v70)
            {
              sub_22EE69B10(v70);
            }
          }

          else
          {
            v71 = 0;
          }

          free(v71);
        }

LABEL_144:

        goto LABEL_145;
      }

      if (a2 && (Value = CFDictionaryGetValue(theDict, @"RoleValue")) != 0 && (CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr), valuePtr != a2) || (v109 = 0u, v110 = 0u, v107 = 0u, v108 = 0u, v106 = 0u, v104 = 0u, v105 = 0u, *__s2 = 0u, MEMORY[0x2318F86D0](v30, __s2), strncmp(a1, __s2, 0x80uLL)))
      {
        v32 = 0;
        goto LABEL_125;
      }

      v33 = CFDictionaryGetValue(theDict, @"BSD Name");
      if (v33 && v87 && prefix)
      {
        if (*(v6 + 3232) != -1)
        {
          sub_22EE7861C();
        }

        v34 = qword_27DA9CC98;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v102 = 0;
          v35 = sub_22EE69AE8();
          v36 = v34;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v35;
          }

          else
          {
            v37 = v35 & 0xFFFFFFFE;
          }

          if (v37)
          {
            *v99 = 138412546;
            *&v99[4] = prefix;
            v100 = 2112;
            v101 = v33;
            v38 = _os_log_send_and_compose_impl();

            if (v38)
            {
              sub_22EE69B10(v38);
            }
          }

          else
          {

            v38 = 0;
          }

          v6 = 0x27DA9C000uLL;
          free(v38);
        }

        HasPrefix = CFStringHasPrefix(v33, prefix);
        v40 = *(v6 + 3232);
        if (HasPrefix)
        {
          if (v40 != -1)
          {
            sub_22EE7861C();
          }

          v41 = qword_27DA9CC98;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v102 = 0;
            v42 = sub_22EE69AE8();
            v43 = v41;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v42;
            }

            else
            {
              v44 = v42 & 0xFFFFFFFE;
            }

            if (v44)
            {
              *v99 = 138412290;
              *&v99[4] = v33;
              v45 = _os_log_send_and_compose_impl();

              if (v45)
              {
                sub_22EE69B10(v45);
              }
            }

            else
            {

              v45 = 0;
            }

            free(v45);
            v6 = 0x27DA9C000uLL;
          }

          goto LABEL_92;
        }

        if (v40 != -1)
        {
          sub_22EE7861C();
        }

        v46 = qword_27DA9CC98;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v102 = 0;
          v47 = sub_22EE69AE8();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            *v99 = 138412290;
            *&v99[4] = v33;
            v49 = _os_log_send_and_compose_impl();
            v50 = v49;
            if (v49)
            {
              sub_22EE69B10(v49);
            }
          }

          else
          {
            v50 = 0;
          }

          free(v50);
          v6 = 0x27DA9C000;
        }

        v32 = 0;
      }

      else
      {
LABEL_92:
        Mutable = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          if (*(v6 + 3232) != -1)
          {
            sub_22EE7861C();
          }

          v81 = qword_27DA9CC98;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *v99 = 0;
            v82 = sub_22EE69AE8();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v83 = v82;
            }

            else
            {
              v83 = v82 & 0xFFFFFFFE;
            }

            if (v83)
            {
              LOWORD(v102) = 0;
              v85 = _os_log_send_and_compose_impl();
              v84 = v85;
              if (v85)
              {
                sub_22EE69B10(v85);
              }
            }

            else
            {
              v84 = 0;
            }

            free(v84);
          }

          exit(-1);
        }

        v23 = Mutable;
        CFDictionarySetValue(Mutable, @"MKBUserSessionVolumeDeviceNode", v33);
        v52 = CFDictionaryGetValue(theDict, @"UUID");
        CFDictionarySetValue(v23, @"MKBUserSessionVolumeUUID", v52);
        if (a4)
        {
          v53 = CFDictionaryGetValue(theDict, @"Encrypted");
          if (!v53 || (v54 = v53, v55 = CFGetTypeID(v53), v56 = v55 == CFBooleanGetTypeID(), v6 = 0x27DA9C000uLL, v56) && v54 == v86)
          {
            if (*(v6 + 3232) != -1)
            {
              sub_22EE7861C();
            }

            v57 = qword_27DA9CC98;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *v99 = 0;
              v58 = sub_22EE69AE8();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v59 = v58;
              }

              else
              {
                v59 = v58 & 0xFFFFFFFE;
              }

              if (v59)
              {
                LOWORD(v102) = 0;
                v60 = _os_log_send_and_compose_impl();
                v61 = v60;
                if (v60)
                {
                  sub_22EE69B10(v60);
                }
              }

              else
              {
                v61 = 0;
              }

              free(v61);
            }

            v66 = 0;
          }

          else
          {
            if (qword_27DA9CCA0 != -1)
            {
              sub_22EE7861C();
            }

            v57 = qword_27DA9CC98;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *v99 = 0;
              v62 = sub_22EE69AE8();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v63 = v62;
              }

              else
              {
                v63 = v62 & 0xFFFFFFFE;
              }

              if (v63)
              {
                LOWORD(v102) = 0;
                v64 = _os_log_send_and_compose_impl();
                v65 = v64;
                if (v64)
                {
                  sub_22EE69B10(v64);
                }
              }

              else
              {
                v65 = 0;
              }

              free(v65);
            }

            v66 = 1;
          }

          *a4 = v66;
        }

        v32 = 1;
      }

      a2 = v88;
LABEL_125:
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      goto LABEL_127;
    }

LABEL_133:
    if (existing[0])
    {
      IOObjectRelease(existing[0]);
      existing[0] = 0;
    }

    IOObjectRelease(v27);
    v24 = v89 + 1;
  }

  while (v29);
  v24 = 1;
LABEL_137:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (!v24)
  {
    if (*(v6 + 3232) != -1)
    {
      sub_22EE7861C();
    }

    v9 = qword_27DA9CC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v99 = 0;
      v78 = sub_22EE69AE8();
      v9 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (v79)
      {
        LOWORD(v102) = 0;
        v80 = _os_log_send_and_compose_impl();

        if (v80)
        {
          sub_22EE69B10(v80);
        }
      }

      else
      {

        v80 = 0;
      }

      free(v80);
    }

    LODWORD(v30) = 0;
    LODWORD(v27) = 0;
    goto LABEL_144;
  }

  LODWORD(v30) = 0;
  LODWORD(v27) = 0;
LABEL_145:
  if (prefix)
  {
    CFRelease(prefix);
    prefix = 0;
  }

  if (v95)
  {
    CFRelease(v95);
    v95 = 0;
  }

  if (properties)
  {
    CFRelease(properties);
    properties = 0;
  }

  if (parent)
  {
    IOObjectRelease(parent);
    parent = 0;
  }

  if (existing[0])
  {
    IOObjectRelease(existing[0]);
    existing[0] = 0;
  }

  if (v27)
  {
    IOObjectRelease(v27);
  }

  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (v30)
  {
    IOObjectRelease(v30);
  }

  return v23;
}

BOOL sub_22EE71304(char *a1, CFIndex a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 1;
  v3 = sub_22EE70468("Data", a1, a2, 64, &v13);
  if (v3)
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v4 = qword_27DA9CC98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_22EE69AE8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v13)
        {
          v7 = "FALSE";
        }

        *v14 = 136315394;
        *&v14[4] = a1;
        v15 = 2080;
        v16 = v7;
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v4 = qword_27DA9CC98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v8 = sub_22EE69AE8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
LABEL_19:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_22EE69B10(v10);
        }

        goto LABEL_22;
      }

LABEL_21:
      v11 = 0;
LABEL_22:
      free(v11);
    }
  }

  return v3;
}

BOOL sub_22EE71504(char *a1, CFIndex a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 1;
  v3 = sub_22EE70468("User", a1, a2, 2, &v13);
  if (v3)
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v4 = qword_27DA9CC98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_22EE69AE8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v13)
        {
          v7 = "FALSE";
        }

        *v14 = 136315394;
        *&v14[4] = a1;
        v15 = 2080;
        v16 = v7;
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v4 = qword_27DA9CC98;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v8 = sub_22EE69AE8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
LABEL_19:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_22EE69B10(v10);
        }

        goto LABEL_22;
      }

LABEL_21:
      v11 = 0;
LABEL_22:
      free(v11);
    }
  }

  return v3;
}

uint64_t sub_22EE71704(const char **__argv)
{
  v18 = *MEMORY[0x277D85DE8];
  *v15 = 0;
  if (posix_spawn(&v15[1], *__argv, 0, 0, __argv, 0))
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v2 = qword_27DA9CC98;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_22EE69AE8();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = *__argv;
        v16 = 136315138;
        v17 = v5;
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_22EE69B10(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  if (waitpid(v15[1], v15, 0) == -1)
  {
    if (qword_27DA9CCA0 != -1)
    {
      sub_22EE7861C();
    }

    v8 = qword_27DA9CC98;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_22EE69AE8();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = v8;
        v11 = __error();
        v12 = strerror(*v11);
        v16 = 136315138;
        v17 = v12;
        v13 = _os_log_send_and_compose_impl();

        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }
  }

  if ((v15[0] & 0x7F) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return BYTE1(v15[0]);
  }
}

uint64_t sub_22EE71964(const char *a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a2;
  *v22 = 0;
  v3 = getmntinfo(v22, 2);
  if (v3)
  {
    v4 = v3;
    v5 = (*v22 + 2168 * v3 - 2080);
    v6 = v4 + 1;
    while (--v6 >= 1)
    {
      v7 = v5 - 2168;
      v8 = strcmp(v5, a1);
      v5 = v7;
      if (!v8)
      {
        v9 = *(v7 + 266);
        v29 = 14;
        if (sysctlnametomib("vfs.generic.ctlbyfsid", &v30, &v29) != -1)
        {
          v10 = v29;
          *(&v30 + v29) = 65538;
          v23 = 0;
          v26 = 0u;
          v27 = 0u;
          v28 = 0;
          *v22 = 1;
          *&v22[4] = v9;
          v24 = &v21;
          v25 = 4uLL;
          if ((sysctl(&v30, v10 + 1, 0, 0, v22, 0x50uLL) & 0x80000000) == 0)
          {
            return 0;
          }
        }

        v16 = *__error();
        if (qword_27DA9CCB0 != -1)
        {
          sub_22EE78644();
        }

        v13 = qword_27DA9CCA8;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *v22 = 0;
        v17 = sub_22EE69AE8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v30 = 67109120;
          v31 = v16;
          goto LABEL_24;
        }

        goto LABEL_26;
      }
    }
  }

  v12 = *__error();
  if (qword_27DA9CCB0 != -1)
  {
    sub_22EE78644();
  }

  v13 = qword_27DA9CCA8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    v14 = sub_22EE69AE8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v30 = 67109120;
      v31 = v12;
LABEL_24:
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_22EE69B10(v19);
      }
    }

    else
    {
LABEL_26:
      v20 = 0;
    }

    free(v20);
  }

LABEL_28:

  return 0xFFFFFFFFLL;
}

uint64_t sub_22EE71C18()
{
  qword_27DA9CC98 = os_log_create(off_27DA9CC58, "userlayout");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE71C60()
{
  qword_27DA9CCA8 = os_log_create(off_27DA9CC58, "legacy");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22EE7513C()
{
  qword_27DA9CCB8 = os_log_create(off_27DA9CC58, "userlayout");

  return MEMORY[0x2821F96F8]();
}

id sub_22EE75184(void *a1)
{
  if (a1)
  {
    v1 = sub_22EE66154(MEMORY[0x277CCAD78], a1);
    v2 = [v1 UUIDString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22EE751E8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 objectForKey:a2];
  v3 = objc_opt_class();
  if (sub_22EE63ED0(v3))
  {
    v4 = [v2 BOOLValue];
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 2;
  }

  *__error() = v5;

  return v4;
}

uint64_t sub_22EE75268(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_22EE63F3C(v5))
  {
    a3 = [v4 intValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

uint64_t sub_22EE752E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_22EE63F3C(v5))
  {
    a3 = [v4 unsignedIntValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

uint64_t sub_22EE75368(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_22EE63F3C(v5))
  {
    a3 = [v4 longLongValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

uint64_t sub_22EE753E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  v5 = objc_opt_class();
  if (sub_22EE63F3C(v5))
  {
    a3 = [v4 unsignedLongLongValue];
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *__error() = v6;

  return a3;
}

id sub_22EE75468(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_22EE63ED0(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_22EE63EC0(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_22EE754E8(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    if (sub_22EE63ED0(v3))
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *__error() = 2;

              v9 = 0;
              goto LABEL_14;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v9 = [MEMORY[0x277CBEB98] setWithArray:{v4, v11}];
      *__error() = 0;
LABEL_14:
    }

    else
    {
      v9 = 0;
      *__error() = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_22EE7568C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    if (sub_22EE63ED0(v3))
    {
      v4 = sub_22EE66154(MEMORY[0x277CCAD78], v2);
      v5 = 2 * (v4 == 0);
    }

    else
    {
      v4 = 0;
      v5 = 2;
    }

    *__error() = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_22EE75730(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_22EE63ED0(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_22EE63EC0(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_22EE757B0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    v3 = objc_opt_class();
    v4 = sub_22EE63ED0(v3);
    v5 = __error();
    if (v4)
    {
      *v5 = 0;
      v4 = v2;
    }

    else
    {
      sub_22EE63EC0(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_22EE75830(uint64_t a1)
{
  v22[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_22EE63F18();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_22EE63F24(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22[0], v22[1]);
    if (!v1)
    {
      if (qword_2810B8878 != -1)
      {
        dispatch_once(&qword_2810B8878, &unk_2843A70F8);
      }

      if (sub_22EE63F00(qword_2810B8870))
      {
        sub_22EE63F54();
        v13 = sub_22EE63EA4();
        if (sub_22EE63E74(v13))
        {
          sub_22EE63E58();
          v17 = sub_22EE63E84(v14, v22, v15, v16, &dword_22EE63000);
          v18 = v17;
          if (v17)
          {
            sub_22EE69B10(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_22EE7596C(uint64_t a1)
{
  v22[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_22EE63F18();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_22EE63F24(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22[0], v22[1]);
    if (!v1)
    {
      if (qword_2810B8878 != -1)
      {
        dispatch_once(&qword_2810B8878, &unk_2843A70F8);
      }

      if (sub_22EE63F00(qword_2810B8870))
      {
        sub_22EE63F54();
        v13 = sub_22EE63EA4();
        if (sub_22EE63E74(v13))
        {
          sub_22EE63E58();
          v17 = sub_22EE63E84(v14, v22, v15, v16, &dword_22EE63000);
          v18 = v17;
          if (v17)
          {
            sub_22EE69B10(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_22EE75AA8(uint64_t a1)
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_22EE63F18();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_22EE63F24(v4, v5, v6, v7, v8, v9, v10, v11, v28, v29, v30[0], v30[1]);
    if (v1)
    {
      v13 = objc_opt_class();
      if ((sub_22EE63ED0(v13) & 1) == 0)
      {
        if (qword_2810B8878 != -1)
        {
          dispatch_once(&qword_2810B8878, &unk_2843A70F8);
        }

        if (sub_22EE63F00(qword_2810B8870))
        {
          v31[0] = 0;
          sub_22EE69AE8();
          v14 = sub_22EE63EA4();
          if (sub_22EE63E74(v14))
          {
            sub_22EE63EE8();
            v18 = sub_22EE63E84(v15, v31, v16, v17, &dword_22EE63000);
            v19 = v18;
            if (v18)
            {
              sub_22EE69B10(v18);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }

        v26 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2810B8878 != -1)
      {
        dispatch_once(&qword_2810B8878, &unk_2843A70F8);
      }

      if (sub_22EE63F00(qword_2810B8870))
      {
        sub_22EE63F54();
        v20 = sub_22EE63EA4();
        if (sub_22EE63E74(v20))
        {
          sub_22EE63E58();
          v24 = sub_22EE63E84(v21, v30, v22, v23, &dword_22EE63000);
          v25 = v24;
          if (v24)
          {
            sub_22EE69B10(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }
    }

    v26 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v26 = 0;
LABEL_24:

  return v26;
}

id sub_22EE75CA0(uint64_t a1)
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_22EE63F18();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_22EE63F24(v4, v5, v6, v7, v8, v9, v10, v11, v28, v29, v30[0], v30[1]);
    if (v1)
    {
      v13 = objc_opt_class();
      if ((sub_22EE63ED0(v13) & 1) == 0)
      {
        if (qword_2810B8878 != -1)
        {
          dispatch_once(&qword_2810B8878, &unk_2843A70F8);
        }

        if (sub_22EE63F00(qword_2810B8870))
        {
          v31[0] = 0;
          sub_22EE69AE8();
          v14 = sub_22EE63EA4();
          if (sub_22EE63E74(v14))
          {
            sub_22EE63EE8();
            v18 = sub_22EE63E84(v15, v31, v16, v17, &dword_22EE63000);
            v19 = v18;
            if (v18)
            {
              sub_22EE69B10(v18);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }

        v26 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2810B8878 != -1)
      {
        dispatch_once(&qword_2810B8878, &unk_2843A70F8);
      }

      if (sub_22EE63F00(qword_2810B8870))
      {
        sub_22EE63F54();
        v20 = sub_22EE63EA4();
        if (sub_22EE63E74(v20))
        {
          sub_22EE63E58();
          v24 = sub_22EE63E84(v21, v30, v22, v23, &dword_22EE63000);
          v25 = v24;
          if (v24)
          {
            sub_22EE69B10(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }
    }

    v26 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v26 = 0;
LABEL_24:

  return v26;
}

id sub_22EE75E98(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      v3 = [&stru_2843A7258 dataUsingEncoding:4];
    }

    v3 = v3;
    a1 = v3;
  }

  return a1;
}

void sub_22EE770C0()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_22EE770F0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_22EE770FC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_22EE7710C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_22EE77118(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_22EE77128(uint64_t a1, void *a2, NSObject *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (a4)
  {
    *a4 = 0;
  }

  value = 0;
  if (removefile_state_set(a3, 3u, sub_22EE67BB0))
  {
    v8 = *__error();
    value = v8;
    if (qword_2810B88A8 != -1)
    {
      dispatch_once(&qword_2810B88A8, &unk_2843A7178);
    }

    if (sub_22EE63F00(qword_2810B88A0))
    {
      v26 = 0;
      sub_22EE69AE8();
      v9 = sub_22EE63EA4();
      if (sub_22EE63E74(v9))
      {
        v27 = 67109120;
        v28 = v8;
        sub_22EE68D98();
        goto LABEL_16;
      }

LABEL_40:
      v12 = 0;
LABEL_41:
      free(v12);
    }

LABEL_42:

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:value userInfo:0];
      *a4 = v18 = 0;
      goto LABEL_45;
    }

LABEL_44:
    v18 = 0;
    goto LABEL_45;
  }

  if (removefile_state_set(a3, 4u, &value))
  {
    value = *__error();
    if (qword_2810B88A8 != -1)
    {
      dispatch_once(&qword_2810B88A8, &unk_2843A7178);
    }

    if (!sub_22EE63F00(qword_2810B88A0))
    {
      goto LABEL_42;
    }

    v26 = 0;
    sub_22EE69AE8();
    v10 = sub_22EE63EA4();
    if (!sub_22EE63E74(v10))
    {
      goto LABEL_40;
    }

    v27 = 67109120;
    v28 = value;
    sub_22EE68D98();
LABEL_16:
    v11 = _os_log_send_and_compose_impl();
    v12 = v11;
    if (v11)
    {
      sub_22EE69B10(v11);
    }

    goto LABEL_41;
  }

  if (removefile([v7 UTF8String], a3, 1u))
  {
    value = *__error();
    if (value != 2)
    {
      if (qword_2810B88A8 != -1)
      {
        dispatch_once(&qword_2810B88A8, &unk_2843A7178);
      }

      if (!sub_22EE63F00(qword_2810B88A0))
      {
        goto LABEL_42;
      }

      sub_22EE68DAC();
      v16 = sub_22EE63EA4();
      if (!sub_22EE63E74(v16))
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (qword_2810B88A8 != -1)
    {
      dispatch_once(&qword_2810B88A8, &unk_2843A7178);
    }

    a3 = qword_2810B88A0;
    if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
    {
      sub_22EE68DAC();
      v13 = os_log_type_enabled(a3, OS_LOG_TYPE_INFO);
      if (sub_22EE63E74(v13))
      {
        sub_22EE68D7C();
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_22EE69B10(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }

  if ((value & 0xFFFFFFFD) != 0)
  {
    if (qword_2810B88A8 != -1)
    {
      dispatch_once(&qword_2810B88A8, &unk_2843A7178);
    }

    if (!sub_22EE63F00(qword_2810B88A0))
    {
      goto LABEL_42;
    }

    sub_22EE68DAC();
    v17 = sub_22EE63EA4();
    if (!sub_22EE63E74(v17))
    {
      goto LABEL_40;
    }

LABEL_39:
    sub_22EE68D54();
    goto LABEL_16;
  }

  if (qword_2810B88A8 != -1)
  {
    dispatch_once(&qword_2810B88A8, &unk_2843A7178);
  }

  v20 = qword_2810B88A0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_22EE68DAC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      sub_22EE68D7C();
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_22EE69B10(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  v18 = 1;
LABEL_45:

  return v18;
}

uint64_t *sub_22EE778DC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v123 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v118 = a3;
  if (a1)
  {
    if ([a1 inDeviceRecoveryEnvironment])
    {
      v12 = sub_22EE770F0(*(a1 + 8));
      v13 = [v12 isIdentityLoadedIntoSession:501];

      if (v13)
      {
        bzero(v122, 0x100uLL);
        if (sub_22EE71504(v122, 256))
        {
          v6 = 0x277CCA000;
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v122];
          v15 = [a1 primaryUserOnSharedDataVolumePath:v11 withError:a5];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 userUUID];
            if (v17)
            {
              v18 = v17;
              v117 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
              if (!v117)
              {
                v64 = v11;
                if (qword_2810B88B8 != -1)
                {
                  dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                }

                v24 = 0;
                v65 = qword_2810B88B0;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v66 = sub_22EE70420();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    v67 = v66;
                  }

                  else
                  {
                    v67 = v66 & 0xFFFFFFFE;
                  }

                  if (v67)
                  {
                    sub_22EE703D4();
                    sub_22EE703EC();
                    v68 = _os_log_send_and_compose_impl();
                    v69 = v68;
                    if (v68)
                    {
                      sub_22EE69B10(v68);
                    }
                  }

                  else
                  {
                    v69 = 0;
                  }

                  free(v69);
                }

                if (a5)
                {
                  sub_22EE70444();
                  [v89 errorWithDomain:? code:? userInfo:?];
                  *a5 = a1 = 0;
                }

                else
                {
                  a1 = 0;
                }

                v11 = v64;
                goto LABEL_161;
              }

              v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/mobile", v11];
              if (([a1 mountVolumeAtPath:? fromDevice:? forUserUID:? userGID:? withMode:? withError:?] & 1) == 0)
              {
                sub_22EE70408();
                if (!v90)
                {
                  dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                }

                v23 = v116;
                v24 = v117;
                v70 = qword_2810B88B0;
                if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_159;
                }

                v71 = sub_22EE70420();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  v72 = v71;
                }

                else
                {
                  v72 = v71 & 0xFFFFFFFE;
                }

                if (v72)
                {
                  sub_22EE703D4();
                  sub_22EE703EC();
                  v73 = _os_log_send_and_compose_impl();
                  v74 = v73;
                  if (v73)
                  {
                    sub_22EE69B10(v73);
                  }
                }

                else
                {
                  v74 = 0;
                }

                goto LABEL_130;
              }

              v115 = v11;
              v19 = sub_22EE770F0(*(a1 + 8));
              v20 = [v19 mapVolume:v14 toSession:501 withPersona:0 error:a5];

              if (v20)
              {
                v21 = sub_22EE770F0(*(a1 + 8));
                v22 = [v21 unlockIdentity:501 passcode:v118 isACMCredential:a4 error:a5];

                if (v22)
                {
                  a1 = 1;
                  v11 = v115;
                  v23 = v116;
                  v24 = v117;
LABEL_160:

LABEL_161:
                  v6 = 0;
                  goto LABEL_64;
                }

                sub_22EE70408();
                if (!v90)
                {
                  dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                }

                v84 = qword_2810B88B0;
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  sub_22EE70420();
                  v85 = sub_22EE70438();
                  v86 = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);
                  if (sub_22EE66090(v86))
                  {
                    sub_22EE703D4();
                    sub_22EE703EC();
                    v87 = _os_log_send_and_compose_impl();
                    v88 = v87;
                    if (v87)
                    {
                      sub_22EE69B10(v87);
                    }
                  }

                  else
                  {
                    v88 = 0;
                  }

                  free(v88);
                }

                v97 = *(a1 + 8);
                v98 = sub_22EE770F0(v97);
                v119 = 0;
                v99 = [v98 unmapVolume:v14 error:&v119];
                v70 = v119;

                v11 = v115;
                if ((v99 & 1) == 0)
                {
                  sub_22EE70408();
                  if (!v90)
                  {
                    dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                  }

                  v100 = qword_2810B88B0;
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    sub_22EE69AE8();
                    v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
                    if (sub_22EE66090(v101))
                    {
                      v120 = 138412290;
                      v121 = v70;
                      LODWORD(v114) = 12;
                      v113 = &v120;
                      sub_22EE703FC();
                      v102 = v100;
                      v103 = _os_log_send_and_compose_impl();
                      v104 = v103;
                      if (v103)
                      {
                        sub_22EE69B10(v103);
                      }
                    }

                    else
                    {
                      v102 = v100;
                      v104 = 0;
                    }

                    free(v104);
                    v100 = v102;
                  }
                }

                v23 = v116;
                [a1 unMountVolumeAt:v116 withError:{0, v113, v114}];
                sub_22EE70408();
                if (v106)
                {
                  if (!v105)
                  {
                    dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                  }

                  v107 = qword_2810B88B0;
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_22EE70420();
                    v108 = os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT);
                    if (sub_22EE66090(v108))
                    {
LABEL_153:
                      sub_22EE703D4();
                      sub_22EE703EC();
                      v110 = _os_log_send_and_compose_impl();
                      v111 = v110;
                      if (v110)
                      {
                        sub_22EE69B10(v110);
                      }

                      goto LABEL_157;
                    }

LABEL_156:
                    v111 = 0;
LABEL_157:
                    v24 = v117;
                    free(v111);
                    v23 = v116;
                    goto LABEL_158;
                  }
                }

                else
                {
                  if (!v105)
                  {
                    dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                  }

                  v107 = qword_2810B88B0;
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_22EE70420();
                    v109 = os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT);
                    if (sub_22EE66090(v109))
                    {
                      goto LABEL_153;
                    }

                    goto LABEL_156;
                  }
                }

                v24 = v117;
LABEL_158:

                goto LABEL_159;
              }

              sub_22EE70408();
              if (!v90)
              {
                dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
              }

              v11 = v115;
              v23 = v116;
              v77 = qword_2810B88B0;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                sub_22EE70420();
                v78 = sub_22EE70438();
                v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
                if (sub_22EE66090(v79))
                {
                  sub_22EE703D4();
                  sub_22EE703EC();
                  v80 = _os_log_send_and_compose_impl();
                  v81 = v80;
                  if (v80)
                  {
                    sub_22EE69B10(v80);
                  }
                }

                else
                {
                  v81 = 0;
                }

                free(v81);
                v23 = v116;
              }

              [a1 unMountVolumeAt:v23 withError:0];
              sub_22EE70408();
              if (v91)
              {
                if (!v90)
                {
                  dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                }

                v70 = qword_2810B88B0;
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  sub_22EE70420();
                  v92 = sub_22EE70438();
                  v93 = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
                  if (sub_22EE66090(v93))
                  {
LABEL_125:
                    sub_22EE703D4();
                    sub_22EE703EC();
                    v96 = _os_log_send_and_compose_impl();
                    v74 = v96;
                    if (v96)
                    {
                      sub_22EE69B10(v96);
                    }

                    goto LABEL_129;
                  }

LABEL_128:
                  v74 = 0;
LABEL_129:
                  v24 = v117;
LABEL_130:
                  free(v74);
                  goto LABEL_159;
                }
              }

              else
              {
                if (!v90)
                {
                  dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
                }

                v70 = qword_2810B88B0;
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  sub_22EE70420();
                  v94 = sub_22EE70438();
                  v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
                  if (sub_22EE66090(v95))
                  {
                    goto LABEL_125;
                  }

                  goto LABEL_128;
                }
              }

              v24 = v117;
LABEL_159:

              a1 = 0;
              goto LABEL_160;
            }

            sub_22EE70408();
            if (!v90)
            {
              dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
            }

            v58 = qword_2810B88B0;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              sub_22EE70420();
              v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
              if (sub_22EE66090(v59))
              {
                sub_22EE703D4();
                sub_22EE703EC();
                v60 = _os_log_send_and_compose_impl();
                v6 = v60;
                if (v60)
                {
                  sub_22EE69B10(v60);
                }
              }

              else
              {
                v6 = 0;
              }

              free(v6);
            }

            if (!a5)
            {
              sub_22EE70414();
              v18 = 0;
              goto LABEL_64;
            }

            sub_22EE70444();
            v83 = [v82 errorWithDomain:? code:? userInfo:?];
            sub_22EE70414();
            v18 = 0;
            goto LABEL_60;
          }

          sub_22EE70408();
          if (!v90)
          {
            dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
          }

          v50 = qword_2810B88B0;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = sub_22EE70420();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v52 = v51;
            }

            else
            {
              v52 = v51 & 0xFFFFFFFE;
            }

            if (v52)
            {
              sub_22EE703D4();
              sub_22EE703EC();
              v53 = _os_log_send_and_compose_impl();
              v54 = v53;
              if (v53)
              {
                sub_22EE69B10(v53);
              }
            }

            else
            {
              v54 = 0;
            }

            free(v54);
          }

          if (a5)
          {
            sub_22EE70444();
            v76 = [v75 errorWithDomain:? code:? userInfo:?];
            sub_22EE70414();
            goto LABEL_59;
          }

          sub_22EE70414();
LABEL_63:
          v18 = 0;
          v16 = 0;
          goto LABEL_64;
        }

        sub_22EE70408();
        if (!v90)
        {
          dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
        }

        if (sub_22EE63F00(qword_2810B88B0))
        {
          sub_22EE70420();
          v41 = sub_22EE63EA4();
          if (sub_22EE63E74(v41))
          {
            sub_22EE703D4();
            sub_22EE703EC();
            v47 = sub_22EE70450(v42, v43, v44, v45, v46);
            v48 = v47;
            if (v47)
            {
              sub_22EE69B10(v47);
            }
          }

          else
          {
            v48 = 0;
          }

          free(v48);
        }

        if (a5)
        {
          v55 = MEMORY[0x277CCA9B8];
          v56 = *MEMORY[0x277CCA5B8];
          v57 = 2;
          goto LABEL_58;
        }
      }

      else
      {
        sub_22EE70408();
        if (!v90)
        {
          dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
        }

        if (sub_22EE63F00(qword_2810B88B0))
        {
          *v122 = 0;
          sub_22EE69AE8();
          v33 = sub_22EE63EA4();
          if (sub_22EE63E74(v33))
          {
            LOWORD(v120) = 0;
            LODWORD(v114) = 2;
            v112 = &v120;
            sub_22EE703FC();
            v39 = sub_22EE70450(v34, v35, v36, v37, v38);
            v40 = v39;
            if (v39)
            {
              sub_22EE69B10(v39);
            }
          }

          else
          {
            v40 = 0;
          }

          free(v40);
        }

        if (a5)
        {
          v55 = MEMORY[0x277CCA9B8];
          v56 = *MEMORY[0x277CCA5B8];
          v57 = 16;
LABEL_58:
          v61 = [v55 errorWithDomain:v56 code:v57 userInfo:{0, v112, v114}];
          sub_22EE70414();
          v14 = 0;
LABEL_59:
          v18 = 0;
          v16 = 0;
LABEL_60:
          *a5 = v62;
          goto LABEL_64;
        }
      }

      sub_22EE70414();
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      sub_22EE70408();
      if (!v90)
      {
        dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
      }

      if (sub_22EE63F00(qword_2810B88B0))
      {
        sub_22EE70420();
        v25 = sub_22EE63EA4();
        if (sub_22EE63E74(v25))
        {
          *v122 = 138412290;
          *&v122[4] = v6;
          sub_22EE703EC();
          v31 = sub_22EE70450(v26, v27, v28, v29, v30);
          v32 = v31;
          if (v31)
          {
            sub_22EE69B10(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }

      if (a5)
      {
        v49 = v6;
        a1 = 0;
        v14 = 0;
        v18 = 0;
        v16 = 0;
        *a5 = v6;
LABEL_64:

        goto LABEL_65;
      }

      a1 = 0;
    }

    v14 = 0;
    goto LABEL_63;
  }

LABEL_65:

  return a1;
}

void sub_22EE78594(uint64_t a1, void *a2)
{
  objc_storeStrong((a1 + 8), a2);
  v4 = objc_opt_new();
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
}