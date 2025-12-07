void sub_100000888(int a1)
{
  os_release(qword_1000103E8);
  qword_1000103E8 = 0;
  if (dword_1000103B0 != -1)
  {
    close(dword_1000103B0);
    dword_1000103B0 = -1;
  }

  if (qword_1000103D0)
  {
    xpc_connection_cancel(qword_1000103D0);
  }

  if (qword_1000103D8)
  {
    CFRelease(qword_1000103D8);
  }

  if (qword_1000103E0)
  {
    CFRelease(qword_1000103E0);
  }

  exit(a1);
}

uint64_t sub_1000009CC(const char *a1)
{
  Count = CFArrayGetCount(qword_1000103D8);
  if (Count < 1)
  {
LABEL_5:
    LOWORD(v4) = -1;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000103D8, v4);
      if (!strncmp(a1, ValueAtIndex, 0x40uLL))
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v4;
}

uint64_t sub_100000A44(uint64_t a1, const char *a2)
{
  v3 = qword_1000103E0;
  Count = CFArrayGetCount(qword_1000103E0);
  if (Count < 1)
  {
LABEL_5:
    LOWORD(v6) = -1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (!strncmp(a2, ValueAtIndex, 0x40uLL))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  return v6;
}

const char *sub_100000ACC(uint64_t a1)
{
  if (a1 > 3222291537)
  {
    if (a1 <= 3295691826)
    {
      if (a1 <= 3223864408)
      {
        if (a1 == 3222291538)
        {
          return "DIOCXCOMMIT";
        }

        if (a1 == 3222291539)
        {
          return "DIOCXROLLBACK";
        }
      }

      else
      {
        switch(a1)
        {
          case 3223864409:
            return "DIOCSETIFFLAG";
          case 3223864410:
            return "DIOCCLRIFFLAG";
          case 3235398674:
            return "DIOCCLRSTATES";
        }
      }
    }

    else if (a1 > 3424666629)
    {
      switch(a1)
      {
        case 3424666630:
          return "DIOCGETRULES";
        case 3424666651:
          return "DIOCINSERTRULE";
        case 3424666652:
          return "DIOCDELETERULE";
      }
    }

    else
    {
      switch(a1)
      {
        case 3295691827:
          return "DIOCBEGINADDRS";
        case 3295691828:
          return "DIOCADDADDR";
        case 3424666628:
          return "DIOCADDRULE";
      }
    }
  }

  else if (a1 <= 3221505047)
  {
    if (a1 <= 536888341)
    {
      if (a1 == 536888321)
      {
        return "DIOCSTART";
      }

      if (a1 == 536888322)
      {
        return "DIOCSTOP";
      }
    }

    else
    {
      switch(a1)
      {
        case 536888342:
          return "DIOCCLRSTATUS";
        case 536888405:
          return "DIOCCLRSRCNODES";
        case 1074283528:
          return "DIOCSTARTREF";
      }
    }
  }

  else if (a1 > 3222291460)
  {
    switch(a1)
    {
      case 3222291461:
        return "DIOCGETSTARTERS";
      case 3222291465:
        return "DIOCSTOPREF";
      case 3222291537:
        return "DIOCXBEGIN";
    }
  }

  else
  {
    switch(a1)
    {
      case 3221505048:
        return "DIOCSETDEBUG";
      case 3221767197:
        return "DIOCSETTIMEOUT";
      case 3221767208:
        return "DIOCSETLIMIT";
    }
  }

  return "UNKNOWN";
}

void start(int a1, const char **a2)
{
  v4 = *a2;
  errorbuf = 0;
  if (sandbox_init("pfd", 1uLL, &errorbuf) == -1)
  {
    fprintf(__stderrp, "sandbox_init: %s\n", errorbuf);
    sandbox_free_error(errorbuf);
  }

  while (1)
  {
    v5 = getopt(a1, a2, "D");
    if (v5 != 68)
    {
      break;
    }

    dword_1000103B8 = 1;
  }

  if (v5 == -1)
  {
    sub_100000EE0();
    sub_100000F30();
    sub_100001424();
    sub_100001528();
    sub_1000016CC();
    sub_100001740();
    dispatch_main();
  }

  sub_100000E84(v4);
  exit(1);
}

uint64_t sub_100000E84(const char *a1)
{
  printf("Usage: %s ", a1);
  puts("[-D]");
  puts("\noptions:");

  return puts("\t-D\tEnable PF debugging");
}

void sub_100000EE0()
{
  qword_1000103E8 = os_log_create(off_100010000[0], "daemon");
  if (!qword_1000103E8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007190();
  }
}

void sub_100000F30()
{
  if (dword_1000103B0 != -1)
  {
    sub_100000888(22);
  }

  v0 = open("/dev/pfm", 2);
  dword_1000103B0 = v0;
  if (v0 == -1)
  {
    sub_100000900("%s: %m", v1, v2, v3, v4, v5, v6, v7, "__PFDInitPFSetup");
    goto LABEL_60;
  }

  if (fcntl(v0, 2, 1) == -1)
  {
    sub_100000900("%s: fcntl(FD_CLOEXEC): %m", v8, v9, v10, v11, v12, v13, v14, "__PFDInitPFSetup");
LABEL_60:
    v87 = __error();
    sub_100000888(*v87);
  }

  xmmword_1000103F0 = xmmword_100008260;
  unk_100010400 = xmmword_100008270;
  xmmword_100010410 = xmmword_100008280;
  unk_100010420 = xmmword_100008290;
  xmmword_100010430 = xmmword_1000082A0;
  unk_100010440 = xmmword_1000082B0;
  qword_100010450 = 0x9600000000;
  if (dword_1000103B8)
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  LODWORD(v91[0]) = v15;
  if (ioctl(dword_1000103B0, 0xC0044418uLL, v91))
  {
    sub_100000900("%s: %m", v16, v17, v18, v19, v20, v21, v22, "DIOCSETDEBUG");
  }

  if (LODWORD(v91[0]) > 3)
  {
    v23 = "<invalid>";
  }

  else
  {
    v23 = off_10000C4A0[LODWORD(v91[0])];
  }

  sub_100000988("pf debug level set to '%s'", v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = 0;
  *&v91[0] = 0;
  do
  {
    LODWORD(v91[0]) = v24;
    v25 = ioctl(dword_1000103B0, 0xC0084427uLL, v91, v89, v90);
    if (v25)
    {
      v41 = v25;
      sub_100000900("%s: DIOCGETLIMIT index %d", v26, v27, v28, v29, v30, v31, v32, "__PFDSetLimits");
      goto LABEL_56;
    }

    v33 = dword_1000082C8[v24];
    if (DWORD1(v91[0]) <= v33 && (DWORD1(v91[0]) = dword_1000082C8[v24], ioctl(dword_1000103B0, 0xC0084428uLL)))
    {
      v41 = *__error();
      if (v41 == 16)
      {
        sub_100000900("Current pool size exceeds requested hard limit", v34, v35, v36, v37, v38, v39, v40, v91);
        goto LABEL_56;
      }

      v89 = v24;
      v90 = v33;
      sub_100000900("%s[%d,%d]: %m", v34, v35, v36, v37, v38, v39, v40, "DIOCSETLIMIT");
    }

    else
    {
      v41 = 0;
    }

    if (v24 > 4)
    {
      break;
    }

    ++v24;
  }

  while (!v41);
  if (v41)
  {
    goto LABEL_56;
  }

  v42 = 0;
  do
  {
    *&v91[0] = __PAIR64__(*(&xmmword_1000103F0 + v42), v42);
    if (ioctl(dword_1000103B0, 0xC008441DuLL, v91, v89, v90))
    {
      v41 = *__error();
      v89 = v42;
      v90 = *(&xmmword_1000103F0 + v42);
      sub_100000900("%s[%d,%d]: %m", v43, v44, v45, v46, v47, v48, v49, "DIOCSETTIMEOUT");
    }

    else
    {
      v41 = 0;
    }

    if (v42 > 0x18)
    {
      break;
    }

    ++v42;
  }

  while (!v41);
  if (v41)
  {
LABEL_56:
    sub_100000888(v41);
  }

  v92 = 0x10000000000;
  memset(v91, 0, sizeof(v91));
  if (__strlcpy_chk() >= 0x10)
  {
    sub_100000900("%s: strlcpy", v50, v51, v52, v53, v54, v55, v56, "__PFDSetInterfaceFlags");
  }

  if (ioctl(dword_1000103B0, 0xC0284459uLL, v91))
  {
    v57 = *__error();
    sub_100000900("%s: %m", v58, v59, v60, v61, v62, v63, v64, "DIOCSETIFFLAG");
    if (v57)
    {
      v86 = v57;
      goto LABEL_62;
    }
  }

  v91[0] = 0uLL;
  if (ioctl(dword_1000103B0, 0xC0104405uLL, v91) < 0)
  {
    if (*__error() == 2)
    {
      v84 = "no pf starter references held";
LABEL_46:
      sub_100000944(v84, v66, v67, v68, v69, v70, v71, v72, v88);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v65 = malloc_type_malloc(2 * SLODWORD(v91[0]), 0xA3D50ABFuLL);
  if (!v65)
  {
    v85 = "malloc failed";
LABEL_48:
    sub_100000900(v85, v66, v67, v68, v69, v70, v71, v72, v88);
LABEL_49:
    v86 = *__error();
    if ((v86 & 0xFFFFFFFD) == 0)
    {
      return;
    }

LABEL_62:
    sub_100000888(v86);
  }

  v73 = v65;
  *(&v91[0] + 1) = v65;
  v88 = v91;
  if (ioctl(dword_1000103B0, 0xC0104405uLL) < 0)
  {
    free(v73);
    if (*__error() == 2)
    {
      v84 = "no pf enabled references";
      goto LABEL_46;
    }

LABEL_47:
    v88 = "DIOCGETSTARTERS";
    v85 = "%s: %m";
    goto LABEL_48;
  }

  v74 = v91[0];
  if (SLODWORD(v91[0]) >= 1)
  {
    v75 = 0;
    v76 = (*(&v91[0] + 1) + 20);
    while (strncmp(v76, "pfd", 0x40uLL))
    {
      v75 += 84;
      v76 += 84;
      if (v75 >= v74)
      {
        goto LABEL_52;
      }
    }

    sub_100000988("token found %llu", v77, v78, v79, v80, v81, v82, v83, *(v76 - 20));
    qword_1000103C0 = *(v76 - 20);
  }

LABEL_52:
  free(v73);
}

void sub_100001424()
{
  memset(&v8, 0, sizeof(v8));
  v0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &v8);
  qword_1000103D8 = v0;
  if (!v0)
  {
    sub_100000900("unable to create an array for anchor priority", v1, v2, v3, v4, v5, v6, v7, v8.version);
    sub_100000888(12);
  }

  CFArrayAppendValue(v0, off_1000100E0[0]);
  CFArrayAppendValue(qword_1000103D8, kPFThreadBR[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010108[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010110[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100E8[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100F0[0]);
  CFArrayAppendValue(qword_1000103D8, off_1000100F8[0]);
  CFArrayAppendValue(qword_1000103D8, off_100010100[0]);
}

void sub_100001528()
{
  memset(&v8, 0, sizeof(v8));
  v0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &v8);
  qword_1000103E0 = v0;
  if (!v0)
  {
    sub_100000900("unable to create an array for default priority", v1, v2, v3, v4, v5, v6, v7, v8.version);
    sub_100000888(12);
  }

  CFArrayAppendValue(v0, off_100010170[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010120[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010128[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010130[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010138[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010140[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010148[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010150[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010158[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010160[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010168[0]);
  CFArrayAppendValue(qword_1000103E0, kPFThreadBR_nat64[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010178[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010180[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010188[0]);
  CFArrayAppendValue(qword_1000103E0, off_100010190[0]);
}

void sub_1000016CC()
{
  mach_service = xpc_connection_create_mach_service(off_100010008[0], &_dispatch_main_q, 1uLL);
  qword_1000103D0 = mach_service;
  if (!mach_service)
  {
    sub_100000900("could not start xpc listener", v1, v2, v3, v4, v5, v6, v7, v9);
    sub_100000888(12);
  }

  xpc_connection_set_event_handler(mach_service, &stru_10000C420);
  v8 = qword_1000103D0;

  xpc_connection_resume(v8);
}

void sub_100001740()
{
  v5.__sigaction_u.__sa_handler = 1;
  *&v5.sa_mask = 0x200000000;
  sigaction(1, &v5, 0);
  sigaction(13, &v5, 0);
  sigaction(14, &v5, 0);
  sigaction(24, &v5, 0);
  sigaction(25, &v5, 0);
  sigaction(26, &v5, 0);
  sigaction(27, &v5, 0);
  sigaction(18, &v5, 0);
  sigaction(21, &v5, 0);
  sigaction(22, &v5, 0);
  sigaction(30, &v5, 0);
  sigaction(31, &v5, 0);
  sigaction(29, &v5, 0);
  sigaction(15, &v5, 0);
  sigaction(2, &v5, 0);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, &_dispatch_main_q);
  v1 = v0;
  if (v0)
  {
    dispatch_source_set_event_handler(v0, &stru_10000C460);
    dispatch_resume(v1);
  }

  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  if (v2)
  {
    v3 = v2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_1000019E8;
    v4[3] = &unk_10000C480;
    v4[4] = v1;
    v4[5] = v2;
    dispatch_source_set_event_handler(v2, v4);
    dispatch_resume(v3);
  }
}

void sub_10000191C(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    sub_100000988("new peer %p", v4, v5, v6, v7, v8, v9, v10, a2);

    sub_100001A24(a2);
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
      sub_100000900("xpc connection error: %s", v12, v13, v14, v15, v16, v17, v18, string);
      sub_100000888(22);
    }

    sub_100000900("unknown message type", v4, v5, v6, v7, v8, v9, v10, v20);
  }
}

void sub_1000019E8(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  dispatch_source_cancel(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  sub_100000888(0);
}

void sub_100001A24(_xpc_connection_s *a1)
{
  if (__CFADD__(dword_100010458++, 1))
  {
    sub_1000071D8();
  }

  xpc_connection_set_target_queue(a1, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100001ACC;
  handler[3] = &unk_10000C4C0;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100001ACC(uint64_t a1, xpc_object_t object, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (type != &_xpc_type_error)
    {

      sub_100000900("unknown message type", v12, v13, v14, v15, v16, v17, v18, a9);
      return;
    }

    goto LABEL_36;
  }

  *size = 0u;
  v491 = 0u;
  error = 0;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v19 = SecTaskCreateWithAuditToken(0, &token);
  if (!v19)
  {
LABEL_30:
    name = xpc_connection_get_name(*(a1 + 32));
    xpc_connection_get_pid(*(a1 + 32));
    sub_100000900("%s[%d] does not have entitlements ", v57, v58, v59, v60, v61, v62, v63, name);
    if (&_xpc_type_dictionary == &_xpc_type_error)
    {
LABEL_36:
      v75 = *(a1 + 32);
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      sub_100000944("%p: %s", v76, v77, v78, v79, v80, v81, v82, v75);
      xpc_connection_cancel(*(a1 + 32));
      if (!dword_100010458)
      {
        sub_100007204();
      }

      --dword_100010458;
      return;
    }

    reply = xpc_dictionary_create_reply(object);
    if (reply)
    {
      v72 = reply;
      xpc_dictionary_set_uint64(reply, off_100010010[0], 0x7D2uLL);
      v73 = *(a1 + 32);
LABEL_33:
      sub_10000320C(v73, v72);
LABEL_34:
      v74 = v72;
      goto LABEL_35;
    }

    goto LABEL_105;
  }

  v20 = v19;
  v21 = SecTaskCopyValueForEntitlement(v19, @"com.apple.pf.allow", &error);
  v22 = error;
  if (!error && v21)
  {
    TypeID = CFBooleanGetTypeID();
    v24 = TypeID == CFGetTypeID(v21) && CFEqual(v21, kCFBooleanTrue) != 0;
    goto LABEL_14;
  }

  v24 = 0;
  if (v21)
  {
LABEL_14:
    CFRelease(v21);
    v22 = error;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  CFRelease(v20);
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(object, off_100010010[0]);
  if (uint64 <= 1005)
  {
    if (uint64 > 1002)
    {
      if (uint64 != 1003)
      {
        if (uint64 != 1004)
        {
          size[0] = 0;
          *token.val = 0;
          v83 = sub_10000327C(object, size, &token);
          v34 = 0;
          v84 = 0;
          LOBYTE(error) = v83;
          if (v83)
          {
            v34 = sub_100003808(size[0], *token.val);
            v84 = sub_100004BC0();
          }

          v85 = xpc_dictionary_create_reply(object);
          if (v85)
          {
            v93 = v85;
            if (error)
            {
              xpc_dictionary_set_uint64(v85, off_100010010[0], 0x7D1uLL);
              if (v84)
              {
                xpc_dictionary_set_value(v93, off_100010028[0], v84);
              }
            }

            else
            {
              xpc_dictionary_set_uint64(v85, off_100010010[0], 0x7D0uLL);
            }

            sub_10000320C(v25, v93);
            xpc_release(v93);
          }

          else
          {
            sub_100000900("xpc_dictionary_create_reply failed", v86, v87, v88, v89, v90, v91, v92, v480);
          }

          if (!v84)
          {
LABEL_216:
            if (!v34)
            {
              return;
            }

            goto LABEL_217;
          }

          v55 = v84;
LABEL_215:
          xpc_release(v55);
          goto LABEL_216;
        }

        size[0] = 0;
        *token.val = 0;
        if (sub_10000327C(object, size, &token))
        {
          v137 = sub_100007874(size[0], *token.val, v131, v132, v133, v134, v135, v136);
          goto LABEL_74;
        }

LABEL_77:
        v72 = xpc_dictionary_create_reply(object);
        if (v72)
        {
          goto LABEL_103;
        }

        goto LABEL_105;
      }

      *token.val = 0;
      error = 0;
      v34 = 0;
      if (!sub_10000327C(object, &token, &error))
      {
        goto LABEL_211;
      }

      value = xpc_dictionary_get_value(object, off_100010020[0]);
      if (!value || xpc_get_type(value) != &_xpc_type_string)
      {
        v130 = "Incorrect type for sub app";
        goto LABEL_210;
      }

      v116 = *token.val;
      v335 = sub_1000009CC(*token.val);
      v118 = error;
      v336 = sub_100000A44(v116, error);
      v337 = xpc_dictionary_get_value(object, off_100010028[0]);
      if (!v337 || xpc_get_type(v337) != &_xpc_type_array)
      {
        v130 = "Incorrect type for rule array";
        goto LABEL_210;
      }

      xpc_dictionary_get_value(object, off_100010028[0]);
      *size = 0u;
      v491 = 0u;
      v492 = 0u;
      v493 = 0u;
      v494 = 0u;
      v34 = sub_100007398(v116, v118, v335, v336, size);
      if (v34)
      {
        v368 = sub_1000076B0();
        if (v368)
        {
          if (sub_100004B14(v368, v369, v370, v371, v372, v373, v374, v375))
          {
            v382 = xpc_dictionary_create_reply(object);
            if (!v382)
            {
              sub_100000900("xpc_dictionary_create_reply failed", v383, v384, v385, v386, v387, v388, v389, v480);
              sub_100007874(v116, v118, v412, v413, v414, v415, v416, v417);
              goto LABEL_217;
            }

            v115 = v382;
            goto LABEL_109;
          }

          sub_100007874(v116, v118, v376, v377, v378, v379, v380, v381);
LABEL_211:
          v338 = xpc_dictionary_create_reply(object);
          if (v338)
          {
            v115 = v338;
            goto LABEL_213;
          }

LABEL_218:
          sub_100000900("xpc_dictionary_create_reply failed", v108, v109, v110, v111, v112, v113, v114, v480);
          if (!v34)
          {
            return;
          }

LABEL_217:
          CFRelease(v34);
          return;
        }

LABEL_248:
        sub_100003564(v116, v118, size, v371, v372, v373, v374, v375, v480);
        goto LABEL_211;
      }

      goto LABEL_239;
    }

    if (uint64 == 1001)
    {
      *token.val = 0;
      *v488 = 0;
      error = 0;
      v34 = 0;
      if (!sub_10000327C(object, &token, &error))
      {
        goto LABEL_211;
      }

      v116 = *token.val;
      v117 = sub_1000009CC(*token.val);
      v118 = error;
      v119 = sub_100000A44(v116, error);
      v120 = xpc_dictionary_get_value(object, off_100010030[0]);
      if (!v120)
      {
        v130 = "no rule to insert";
        goto LABEL_210;
      }

      v128 = v120;
      v129 = xpc_dictionary_get_value(object, off_100010048[0]);
      if (!v129 || xpc_get_type(v129) != &_xpc_type_uint64)
      {
        v130 = "incorrect type for priority";
LABEL_210:
        sub_100000900(v130, v121, v122, v123, v124, v125, v126, v127, v480);
        v34 = 0;
        goto LABEL_211;
      }

      v344 = xpc_dictionary_get_uint64(object, off_100010048[0]);
      *size = 0u;
      v491 = 0u;
      v492 = 0u;
      v493 = 0u;
      v494 = 0u;
      v34 = sub_100007398(v116, v118, v117, v119, size);
      if (v34)
      {
        v352 = sub_100007964(v116, v118, v34, v344, v128, v488, v350, v351);
        if (!v352)
        {
          sub_100003564(v116, v118, size, v355, v356, v357, v358, v359, v480);
        }

        if (sub_100004B14(v352, v353, v354, v355, v356, v357, v358, v359))
        {
          v360 = xpc_dictionary_create_reply(object);
          if (!v360)
          {
            sub_100000900("xpc_dictionary_create_reply failed", v361, v362, v363, v364, v365, v366, v367, v480);
            sub_100007230(v116, v118, *v488, v34);
            sub_100003564(v116, v118, size, v407, v408, v409, v410, v411, v483);
            goto LABEL_217;
          }

          v115 = v360;
          xpc_dictionary_set_uint64(v360, off_100010010[0], 0x7D1uLL);
          v182 = off_100010050[0];
          v184 = *v488;
          v183 = v115;
          goto LABEL_214;
        }

        sub_100007230(v116, v118, *v488, v34);
        goto LABEL_248;
      }

LABEL_239:
      sub_100000900("unable to create anchors", v345, v346, v347, v348, v349, v350, v351, v480);
      goto LABEL_211;
    }

    if (uint64 != 1002)
    {
LABEL_101:
      sub_100000900("incorrect xpc request type", v27, v28, v29, v30, v31, v32, v33, v480);
      v179 = xpc_dictionary_create_reply(object);
      if (v179)
      {
        v72 = v179;
        goto LABEL_103;
      }

      goto LABEL_105;
    }

    size[0] = 0;
    *token.val = 0;
    LODWORD(error) = 0;
    if (sub_10000327C(object, size, &token))
    {
      v100 = xpc_dictionary_get_value(object, off_100010050[0]);
      if (!v100 || xpc_get_type(v100) != &_xpc_type_uint64)
      {
        sub_100000900("Incorrect type for insertion id", v101, v102, v103, v104, v105, v106, v107, v480);
        v115 = xpc_dictionary_create_reply(object);
        v34 = 0;
        if (!v115)
        {
          goto LABEL_218;
        }

LABEL_213:
        v182 = off_100010010[0];
        v183 = v115;
        v184 = 2000;
        goto LABEL_214;
      }

      v317 = xpc_dictionary_get_uint64(object, off_100010050[0]);
      v318 = size[0];
      v319 = *token.val;
      v34 = sub_100003808(size[0], *token.val);
      if (sub_100007230(v318, v319, v317, v34))
      {
        v320 = sub_1000049C8(v34, &error);
        v180 = v320;
        if (v320 && !error)
        {
          CStringPtr = CFStringGetCStringPtr(v34, 0);
          sub_100000988("no rules exist in the anchor %s after deleting a single rule", v322, v323, v324, v325, v326, v327, v328, CStringPtr);
          sub_100007874(v318, v319, v329, v330, v331, v332, v333, v334);
          v115 = xpc_dictionary_create_reply(object);
          if (!v115)
          {
            goto LABEL_218;
          }

          goto LABEL_109;
        }
      }

      else
      {
        v180 = 0;
      }
    }

    else
    {
      v180 = 0;
      v34 = 0;
    }

    v181 = xpc_dictionary_create_reply(object);
    if (!v181)
    {
      goto LABEL_218;
    }

    v115 = v181;
    if ((v180 & 1) == 0)
    {
      goto LABEL_213;
    }

LABEL_109:
    v182 = off_100010010[0];
    v183 = v115;
    v184 = 2001;
LABEL_214:
    xpc_dictionary_set_uint64(v183, v182, v184);
    sub_10000320C(v25, v115);
    v55 = v115;
    goto LABEL_215;
  }

  if (uint64 <= 1008)
  {
    if (uint64 == 1006)
    {
      v160 = xpc_dictionary_get_value(object, off_100010030[0]);
      if (v160)
      {
        v168 = xpc_dictionary_create(0, 0, 0);
        if (v168)
        {
          LOBYTE(v160) = sub_100005868(v160, v168);
        }

        else
        {
          sub_100000900("xpc_dictionary_create failed %m", v161, v162, v163, v164, v165, v166, v167, v480);
          LOBYTE(v160) = 0;
        }
      }

      else
      {
        sub_100000900("no nat rule to check", v153, v154, v155, v156, v157, v158, v159, v480);
        v168 = 0;
      }

      v308 = xpc_dictionary_create_reply(object);
      if (v308)
      {
        v316 = v308;
        if (v160)
        {
          xpc_dictionary_set_uint64(v308, off_100010010[0], 0x7D1uLL);
          xpc_dictionary_set_value(v316, off_100010030[0], v168);
        }

        else
        {
          xpc_dictionary_set_uint64(v308, off_100010010[0], 0x7D0uLL);
        }

        sub_10000320C(v25, v316);
        xpc_release(v316);
      }

      else
      {
        sub_100000900("xpc_dictionary_create_reply failed", v309, v310, v311, v312, v313, v314, v315, v480);
      }

      if (!v168)
      {
        return;
      }

      v74 = v168;
LABEL_35:
      xpc_release(v74);
      return;
    }

    if (uint64 != 1007)
    {
      *token.val = 0;
      error = 0;
      v34 = 0;
      if (sub_10000327C(object, &token, &error))
      {
        v35 = xpc_dictionary_get_value(object, off_100010020[0]);
        if (!v35 || xpc_get_type(v35) != &_xpc_type_string)
        {
          v43 = "Incorrect type for sub app";
LABEL_26:
          sub_100000900(v43, v36, v37, v38, v39, v40, v41, v42, v480);
          v34 = 0;
          goto LABEL_27;
        }

        v185 = *token.val;
        v339 = sub_1000009CC(*token.val);
        v186 = error;
        v340 = sub_100000A44(v185, error);
        v341 = xpc_dictionary_get_value(object, off_100010040[0]);
        if (!v341 || xpc_get_type(v341) != &_xpc_type_array)
        {
          v43 = "Incorrect type for rule array";
          goto LABEL_26;
        }

        v390 = xpc_dictionary_get_value(object, off_100010040[0]);
        *size = 0u;
        v491 = 0u;
        v492 = 0u;
        v493 = 0u;
        v494 = 0u;
        v34 = sub_100007398(v185, v186, v339, v340, size);
        if (v34)
        {
          string = xpc_dictionary_get_string(object, off_100010038[0]);
          if (sub_100005F28(v185, v186, string, v390))
          {
            v44 = xpc_dictionary_create_reply(object);
            if (v44)
            {
              v52 = v44;
              v53 = off_100010010[0];
              v54 = 2001;
              goto LABEL_29;
            }

            goto LABEL_113;
          }

          sub_100003564(v185, v186, size, v399, v400, v401, v402, v403, v480);
        }

        else
        {
          sub_100000900("unable to create anchors", v391, v392, v393, v394, v395, v396, v397, v480);
        }
      }

LABEL_27:
      v44 = xpc_dictionary_create_reply(object);
      if (v44)
      {
        v52 = v44;
        v53 = off_100010010[0];
        v54 = 2000;
LABEL_29:
        xpc_dictionary_set_uint64(v44, v53, v54);
        sub_10000320C(v25, v52);
        v55 = v52;
        goto LABEL_215;
      }

      v185 = *token.val;
      v186 = error;
LABEL_113:
      sub_100000900("xpc_dictionary_create_reply failed", v45, v46, v47, v48, v49, v50, v51, v480);
      v187 = xpc_dictionary_get_string(object, off_100010038[0]);
      sub_100006304(v185, v186, v187);
      if (!v34)
      {
        return;
      }

      goto LABEL_217;
    }

    size[0] = 0;
    *token.val = 0;
    if (sub_10000327C(object, size, &token))
    {
      v137 = sub_100007A40(size[0], *token.val);
LABEL_74:
      v138 = v137;
      v139 = xpc_dictionary_create_reply(object);
      if (v139)
      {
        v72 = v139;
        if (v138)
        {
          v140 = off_100010010[0];
          v141 = 2001;
LABEL_104:
          xpc_dictionary_set_uint64(v139, v140, v141);
          v73 = v25;
          goto LABEL_33;
        }

LABEL_103:
        v140 = off_100010010[0];
        v139 = v72;
        v141 = 2000;
        goto LABEL_104;
      }

LABEL_105:
      sub_100000900("xpc_dictionary_create_reply failed", v65, v66, v67, v68, v69, v70, v71, v480);
      return;
    }

    goto LABEL_77;
  }

  if (uint64 == 1009)
  {
    size[0] = 0;
    *token.val = 0;
    if (sub_10000327C(object, size, &token))
    {
      v169 = xpc_dictionary_get_value(object, off_100010020[0]);
      if (v169 && xpc_get_type(v169) == &_xpc_type_string)
      {
        v342 = xpc_dictionary_get_value(object, off_100010038[0]);
        if (v342)
        {
          v343 = v342;
          if (xpc_get_type(v342) == &_xpc_type_string)
          {
            v404 = size[0];
            sub_1000009CC(size[0]);
            v405 = *token.val;
            sub_100000A44(v404, *token.val);
            string_ptr = xpc_string_get_string_ptr(v343);
            if (sub_100006304(v404, v405, string_ptr))
            {
              v178 = 2001;
            }

            else
            {
              v178 = 2000;
            }

LABEL_99:
            v139 = xpc_dictionary_create_reply(object);
            if (v139)
            {
              v72 = v139;
              v140 = off_100010010[0];
              v141 = v178;
              goto LABEL_104;
            }

            goto LABEL_105;
          }
        }

        v177 = "Invalid table name";
      }

      else
      {
        v177 = "Incorrect type for sub app";
      }

      sub_100000900(v177, v170, v171, v172, v173, v174, v175, v176, v480);
    }

    v178 = 2000;
    goto LABEL_99;
  }

  if (uint64 == 3000)
  {
    if (object && xpc_get_type(object) == &_xpc_type_dictionary && (v188 = xpc_dictionary_get_value(object, off_100010058[0])) != 0 && (v189 = v188, xpc_get_type(v188) == &_xpc_type_dictionary) && (v190 = xpc_dictionary_get_value(v189, off_100010068[0])) != 0 && (v191 = v190, xpc_get_type(v190) == &_xpc_type_array))
    {
      v192 = sub_100000AC0();
      size[0] = 0;
      size[1] = 0;
      if ((ioctl(v192, 0xC0104419uLL, size) & 0x80000000) == 0)
      {
        sub_100000944("required buffer length is %d. sizeof pfsync_state is %u", v193, v194, v195, v196, v197, v198, v199, LODWORD(size[0]));
        v200 = (SLODWORD(size[0]) & 0xFFFFFFFFFFFFFFF8) + 8;
        v201 = v200 + 40 * xpc_array_get_count(v191) + 8 * (v200 / 0x129) + 96;
        v202 = malloc_type_malloc(v201, 0x7F8243ADuLL);
        v142 = v202;
        if (!v202)
        {
          sub_100000900("%s: malloc %zu", v203, v204, v205, v206, v207, v208, v209, "__PFDQueryStatesByDescriptor");
          goto LABEL_83;
        }

        size[1] = v202;
        bzero(v202, v201);
        v482 = size;
        if (ioctl(v192, 0xC0104419uLL) < 0)
        {
          sub_100000900("%s: ioctl DIOCGETSTATES (second), err %d", v210, v211, v212, v213, v214, v215, v216, "__PFDQueryStatesByDescriptor");
          goto LABEL_83;
        }

        v217 = size[0];
        v484 = SLODWORD(size[0]) & 0xFFFFFFFFFFFFFFF8;
        v218 = &v142[v484];
        *(v218 + 8) = 529;
        *(v218 + 20) = 7697;
        *(v218 + 32) = 518;
        *(v218 + 44) = 7686;
        v485 = &v142[v484 + 104];
        v219 = size[1];
        if (v217 >= 1)
        {
          v220 = 0;
          v221 = (size[1] + 284);
          while (1)
          {
            v222 = *(v221 - 2);
            if (v222 == 30)
            {
              break;
            }

            if (v222 == 2)
            {
              v223 = *v221;
              v224 = v218 + 56;
              if (v223 != 6)
              {
                v224 = &v142[v484 + 8];
LABEL_134:
                if (v223 != 17)
                {
                  goto LABEL_138;
                }
              }

              goto LABEL_137;
            }

LABEL_138:
            v220 += 297;
            v221 += 297;
            if (v220 >= v217)
            {
              v219 = size[1];
              goto LABEL_140;
            }
          }

          v223 = *v221;
          if (v223 != 6)
          {
            v224 = v218 + 32;
            goto LABEL_134;
          }

          v224 = &v142[v484 + 80];
LABEL_137:
          ++*v224;
          goto LABEL_138;
        }

LABEL_140:
        *(v218 + 3) = v485;
        v225 = v485 + 8 * *(v218 + 2);
        *(v218 + 6) = v225;
        v226 = v225 + 8 * *(v218 + 8);
        *(v218 + 9) = v226;
        *(v218 + 12) = v226 + 8 * *(v218 + 14);
        *token.val = &v142[v484 + 8];
        if (v217 >= 1)
        {
          v227 = 0;
          while (1)
          {
            v228 = v219[282];
            if (v228 == v219[283])
            {
              break;
            }

LABEL_153:
            v219 += 297;
            v227 += 297;
            if (v227 >= v217)
            {
              goto LABEL_154;
            }
          }

          v229 = v219[284];
          if (v228 == 30)
          {
            if (v229 == 6)
            {
              v230 = &v142[v484 + 80];
LABEL_152:
              v231 = *(v230 + 4);
              *(*(v230 + 16) + 8 * v231) = v219;
              *(v230 + 4) = v231 + 1;
              goto LABEL_153;
            }

            v230 = &v142[v484 + 32];
          }

          else
          {
            if (v228 != 2)
            {
LABEL_150:
              sub_100000944("skipping state that is using IP Version %hhu and IP protocol %hhu.", v210, v211, v212, v213, v214, v215, v216, v219[282]);
              v217 = size[0];
              goto LABEL_153;
            }

            v230 = &v142[v484 + 56];
            if (v229 == 6)
            {
              goto LABEL_152;
            }

            v230 = &v142[v484 + 8];
          }

          if (v229 == 17)
          {
            goto LABEL_152;
          }

          goto LABEL_150;
        }

LABEL_154:
        sub_100000944("finished adding states to dictionary", v210, v211, v212, v213, v214, v215, v216, v482);
        v486 = (((((size[0] & 0xFFFFFFF8) + 8) * 0xDCA8F158C7F91AB9) >> 64) >> 5) & 0x7FFFFFFFFFFFFF8;
        if (xpc_array_get_count(v191))
        {
          v232 = 0;
          v233 = v485 + v486;
          while (1)
          {
            v234 = v232;
            v235 = xpc_array_get_value(v191, v232);
            if (!v235 || (v243 = v235, xpc_get_type(v235) != &_xpc_type_dictionary))
            {
              sub_100000900("input descriptor array index %u is not dictionary type", v236, v237, v238, v239, v240, v241, v242, v234);
              goto LABEL_83;
            }

            v244 = xpc_dictionary_get_value(v243, off_100010070[0]);
            if (!v244 || (v252 = v244, xpc_get_type(v244) != &_xpc_type_data))
            {
              sub_100000900("input descriptor array index %u does not or has wrong type of descriptor", v245, v246, v247, v248, v249, v250, v251, v234);
              goto LABEL_83;
            }

            bytes_ptr = xpc_data_get_bytes_ptr(v252);
            length = xpc_data_get_length(v252);
            v255 = xpc_dictionary_get_value(v243, off_100010078[0]);
            if (!v255 || (v263 = v255, xpc_get_type(v255) != &_xpc_type_uuid))
            {
              sub_100000900("input descriptor array index %u does not or has wrong type of descriptor id", v256, v257, v258, v259, v260, v261, v262, v234);
              goto LABEL_83;
            }

            if (length != 48)
            {
              sub_100000900("invalid input array element %u: incorrect length", v256, v257, v258, v259, v260, v261, v262, v234);
              goto LABEL_83;
            }

            if (*bytes_ptr != 2)
            {
              break;
            }

            bytes = xpc_uuid_get_bytes(v263);
            uuid_copy((v233 + 16), bytes);
            v270 = sub_10000333C(&token, bytes_ptr, v233, v265, v266, v267, v268, v269);
            v271 = *xpc_uuid_get_bytes(v263);
            xpc_uuid_get_bytes(v263);
            if (v270)
            {
              v279 = "some states matched with descriptor %llu %llu";
            }

            else
            {
              v279 = "no states matched with descriptor %llu %llu";
            }

            sub_100000944(v279, v272, v273, v274, v275, v276, v277, v278, v271);
            count = xpc_array_get_count(v191);
            v232 = v234 + 1;
            v233 += 40;
            if (v234 + 1 >= count)
            {
              goto LABEL_168;
            }
          }

          v481 = v234;
          v479 = "invalid input array element %u: incorrect object type";
LABEL_299:
          sub_100000900(v479, v256, v257, v258, v259, v260, v261, v262, v481);
LABEL_83:
          v143 = xpc_dictionary_create_reply(object);
          if (v143)
          {
            v72 = v143;
            xpc_dictionary_set_uint64(v143, off_100010010[0], 0x7D0uLL);
LABEL_85:
            sub_10000320C(v25, v72);
            v151 = 0;
            goto LABEL_175;
          }
        }

        else
        {
LABEL_168:
          empty = xpc_array_create_empty();
          if (!empty)
          {
            v479 = "xpc_array_create_empty failed";
            goto LABEL_299;
          }

          v282 = empty;
          v283 = xpc_dictionary_create_reply(object);
          if (v283)
          {
            v72 = v283;
            xpc_dictionary_set_uint64(v283, off_100010010[0], 0x7D1uLL);
            if (xpc_array_get_count(v191))
            {
              v284 = 0;
              v285 = &v142[v486 + 136 + v484];
              do
              {
                v286 = xpc_dictionary_create_empty();
                xpc_dictionary_set_uint64(v286, off_100010098[0], *(v285 - 4));
                xpc_dictionary_set_uint64(v286, off_1000100A0[0], *(v285 - 3));
                xpc_dictionary_set_uuid(v286, off_100010088[0], v285 - 16);
                v287 = *v285;
                v285 += 40;
                xpc_dictionary_set_BOOL(v286, off_100010090[0], v287);
                xpc_array_append_value(v282, v286);
                xpc_release(v286);
                ++v284;
              }

              while (v284 < xpc_array_get_count(v191));
            }

            xpc_dictionary_set_value(v72, off_100010080[0], v282);
            xpc_release(v282);
            goto LABEL_85;
          }
        }

        sub_100000900("xpc_dictionary_create_reply failed", v144, v145, v146, v147, v148, v149, v150, v481);
        v72 = 0;
        v151 = 1;
LABEL_175:
        if (v142)
        {
          free(v142);
        }

        if (v151)
        {
          return;
        }

        goto LABEL_34;
      }

      sub_100000900("%s: ioctl DIOCGETSTATES (first), err %d", v193, v194, v195, v196, v197, v198, v199, "__PFDQueryStatesByDescriptor");
    }

    else
    {
      sub_100000900("%s: invalid param", v27, v28, v29, v30, v31, v32, v33, "__PFDQueryStatesByDescriptor");
    }

    v142 = 0;
    goto LABEL_83;
  }

  if (uint64 != 3001)
  {
    goto LABEL_101;
  }

  size[0] = 0;
  size[1] = 0;
  token.val[0] = 0;
  LODWORD(error) = 0;
  if (!object || xpc_get_type(object) != &_xpc_type_dictionary || (v288 = xpc_dictionary_get_value(object, off_100010060[0])) == 0 || (v289 = v288, xpc_get_type(v288) != &_xpc_type_dictionary))
  {
    sub_100000900("%s: invalid param query_obj", v27, v28, v29, v30, v31, v32, v33, "__PFDQueryGatewayAddrAndPortForDescriptor");
LABEL_54:
    v94 = 0;
    v95 = 0;
    goto LABEL_55;
  }

  token.val[0] = 0;
  v290 = xpc_dictionary_get_value(v289, off_1000100B8[0]);
  if (!v290 || (v298 = v290, xpc_get_type(v290) != &_xpc_type_data) || xpc_data_get_bytes(v298, &token, 0, 4uLL) != 4)
  {
    sub_100000900("%s: invalid param lan addr", v291, v292, v293, v294, v295, v296, v297, "__PFDQueryGatewayAddrAndPortForDescriptor");
    goto LABEL_54;
  }

  v299 = xpc_dictionary_get_value(v289, off_1000100C0[0]);
  if (!v299 || (v307 = v299, xpc_get_type(v299) != &_xpc_type_uint64) || xpc_uint64_get_value(v307) >= 0x10000)
  {
    sub_100000900("%s: invalid param lan port", v300, v301, v302, v303, v304, v305, v306, "__PFDQueryGatewayAddrAndPortForDescriptor");
    goto LABEL_54;
  }

  v418 = xpc_uint64_get_value(v307);
  v419 = xpc_dictionary_get_value(v289, off_1000100D8[0]);
  if (v419 && (v24 = v419, xpc_get_type(v419) == &_xpc_type_uint64) && xpc_uint64_get_value(v24) < 0x100)
  {
    v427 = xpc_uint64_get_value(v24);
  }

  else
  {
    sub_100000900("%s: invalid param ip proto", v420, v421, v422, v423, v424, v425, v426, "__PFDQueryGatewayAddrAndPortForDescriptor");
    v427 = 0;
  }

  LODWORD(error) = 0;
  v428 = xpc_dictionary_get_value(v289, off_1000100C8[0]);
  if (v428 && (v24 = v428, xpc_get_type(v428) == &_xpc_type_data) && xpc_data_get_bytes(v24, &error, 0, 4uLL) == 4)
  {
    v436 = 1;
  }

  else
  {
    sub_100000900("%s: invalid param ext lan addr", v429, v430, v431, v432, v433, v434, v435, "__PFDQueryGatewayAddrAndPortForDescriptor");
    v436 = 0;
  }

  v437 = xpc_dictionary_get_value(v289, off_1000100D0[0]);
  if (v437 && (v445 = v437, xpc_get_type(v437) == &_xpc_type_uint64) && xpc_uint64_get_value(v445) < 0x10000)
  {
    v446 = xpc_uint64_get_value(v445);
  }

  else
  {
    sub_100000900("%s: invalid param ext lan port", v438, v439, v440, v441, v442, v443, v444, "__PFDQueryGatewayAddrAndPortForDescriptor");
    v446 = 0;
  }

  v447 = sub_100000AC0();
  if ((v447 & 0x80000000) != 0)
  {
    sub_100000900("%s: dev", v448, v449, v450, v451, v452, v453, v454, "__PFDQueryGatewayAddrAndPortForDescriptor");
    goto LABEL_54;
  }

  v24 = v447;
  if (ioctl(v447, 0xC0104419uLL, size) < 0)
  {
    sub_100000900("%s: ioctl DIOCGETSTATES (first), err %d", v455, v456, v457, v458, v459, v460, v461, "__PFDQueryGatewayAddrAndPortForDescriptor");
    goto LABEL_54;
  }

  v462 = malloc_type_malloc(SLODWORD(size[0]), 0x81BD4D42uLL);
  v95 = v462;
  if (!v462)
  {
    sub_100000900("%s: malloc %zu", v463, v464, v465, v466, v467, v468, v469, "__PFDQueryGatewayAddrAndPortForDescriptor");
LABEL_305:
    v94 = 0;
    goto LABEL_55;
  }

  size[1] = v462;
  bzero(v462, SLODWORD(size[0]));
  if (ioctl(v24, 0xC0104419uLL, size) < 0)
  {
    sub_100000900("%s: ioctl DIOCGETSTATES (second), err %d", v470, v471, v472, v473, v474, v475, v476, "__PFDQueryGatewayAddrAndPortForDescriptor");
    goto LABEL_305;
  }

  if (SLODWORD(size[0]) < 1)
  {
    v94 = 0;
    v24 = 0;
    goto LABEL_55;
  }

  v477 = 0;
  v24 = 0;
  v94 = 0;
  while (1)
  {
    v478 = size[1] + v477;
    if (*(size[1] + v477 + 282) != 2 || *(v478 + 24) == *(v478 + 48) && *(size[1] + v477 + 40) == *(size[1] + v477 + 64) || *(v478 + 24) != token.val[0] || *(size[1] + v477 + 40) != v418)
    {
      goto LABEL_290;
    }

    if (v436 && *(size[1] + v477 + 72) != error || v446 && v446 != *(size[1] + v477 + 88) || v427 && v427 != *(size[1] + v477 + 284))
    {
      goto LABEL_55;
    }

    if (v94)
    {
      break;
    }

    v94 = 1;
    v24 = size[1] + v477;
LABEL_290:
    v477 += 297;
    if (v477 >= SLODWORD(size[0]))
    {
      goto LABEL_55;
    }
  }

  sub_100000900("%s: found multiple nat states, aborting", v470, v471, v472, v473, v474, v475, v476, "__PFDQueryGatewayAddrAndPortForDescriptor");
  v94 = 0;
LABEL_55:
  v96 = xpc_dictionary_create_reply(object);
  if (v96)
  {
    v97 = v96;
    v98 = off_100010010[0];
    if (v94)
    {
      xpc_dictionary_set_uint64(v96, off_100010010[0], 0x7D1uLL);
      xpc_dictionary_set_data(v97, off_1000100A8[0], (v24 + 48), 4uLL);
      v98 = off_1000100B0[0];
      v99 = *(v24 + 64);
      v96 = v97;
    }

    else
    {
      v99 = 2000;
    }

    xpc_dictionary_set_uint64(v96, v98, v99);
    sub_10000320C(v25, v97);
  }

  if (v95)
  {
    free(v95);
  }
}

void sub_10000320C(_xpc_connection_s *a1, xpc_object_t object)
{
  v11 = xpc_copy_description(object);
  sub_100000988("%p:\n%s", v4, v5, v6, v7, v8, v9, v10, a1);
  free(v11);

  xpc_connection_send_message(a1, object);
}

uint64_t sub_10000327C(void *a1, const char **a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, off_100010018[0]);
  if (!value || xpc_get_type(value) != &_xpc_type_string)
  {
    v14 = "Incorrect type for app";
LABEL_4:
    sub_100000900(v14, v7, v8, v9, v10, v11, v12, v13, v17);
    return 0;
  }

  v16 = xpc_dictionary_get_value(a1, off_100010020[0]);
  if (!v16 || xpc_get_type(v16) != &_xpc_type_string)
  {
    v14 = "Incorrect type for sub app";
    goto LABEL_4;
  }

  *a2 = xpc_dictionary_get_string(a1, off_100010018[0]);
  *a3 = xpc_dictionary_get_string(a1, off_100010020[0]);
  return 1;
}

uint64_t sub_10000333C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; i != 4; ++i)
  {
    if (*(a2 + 8))
    {
      v12 = (i & 1) != 0 ? 4 : 96;
      if (*(a2 + 9) == v12)
      {
        continue;
      }
    }

    if ((*(a2 + 8) & 2) != 0)
    {
      v22 = *(a2 + 10);
      if (i <= 1 && v22 == 6)
      {
        continue;
      }

      if (i >= 2 && v22 == 17)
      {
        continue;
      }
    }

    v13 = *a1 + 24 * i;
    *(a3 + 32) = 0;
    *a3 = 0;
    v14 = *(v13 + 4);
    if (v14)
    {
      for (j = 0; j < v14; ++j)
      {
        v16 = *(*(v13 + 16) + 8 * j);
        if (((*(a2 + 8) & 0x10) == 0 || *(a2 + 44) == *(v16 + 40)) && ((*(a2 + 8) & 0x20) == 0 || *(a2 + 46) == *(v16 + 88)) && ((*(a2 + 8) & 2) == 0 || *(a2 + 10) == *(v16 + 284)))
        {
          if ((*(a2 + 8) & 1) == 0)
          {
            goto LABEL_38;
          }

          v17 = *(a2 + 9);
          if (v17 == 96)
          {
            if (*(v16 + 282) != 2)
            {
              if ((*(a2 + 8) & 4) == 0 || (*(a2 + 12) == *(v16 + 24) ? (v18 = *(a2 + 20) == *(v16 + 32)) : (v18 = 0), v18))
              {
                if ((*(a2 + 8) & 8) == 0 || (*(a2 + 28) == *(v16 + 72) ? (v19 = *(a2 + 36) == *(v16 + 80)) : (v19 = 0), v19))
                {
LABEL_38:
                  *(a3 + 32) = 1;
                  v20 = (*(v16 + 256) | (*(v16 + 252) << 32)) + *a3;
                  v21 = (*(v16 + 248) | (*(v16 + 244) << 32)) + *(a3 + 8);
                  *a3 = v20;
                  *(a3 + 8) = v21;
                  continue;
                }
              }
            }
          }

          else if (v17 != 4 || *(v16 + 282) != 30 && ((*(a2 + 8) & 4) == 0 || *(a2 + 24) == *(v16 + 48)) && ((*(a2 + 8) & 8) == 0 || *(a2 + 40) == *(v16 + 72)))
          {
            goto LABEL_38;
          }
        }

        sub_100000944("state did not match filter", a2, a3, a4, a5, a6, a7, a8, v25);
        v14 = *(v13 + 4);
      }
    }
  }

  if (*(a3 + 32))
  {
    v23 = "found";
  }

  else
  {
    v23 = "did not find";
  }

  sub_100000988("%s matching states for the descriptor", a2, a3, a4, a5, a6, a7, a8, v23);
  return *(a3 + 32);
}

void sub_100003564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  while (!*(a3 + 8 * v12))
  {
LABEL_8:
    if (++v12 == 10)
    {
      return;
    }
  }

  if (v12 > 4)
  {
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s", a4, a5, a6, a7, a8, "com.apple", a1);
  }

  else
  {
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", a4, a5, a6, a7, a8, "/", v22);
  }

  v21 = v13;
  if (v13)
  {
    sub_100007230(a1, a2, *(a3 + 8 * v12), v13);
    CFRelease(v21);
    goto LABEL_8;
  }

  sub_100000900("PFDRuleDeleteAnchorIDs failed creating anchor strings.", v14, v15, v16, v17, v18, v19, v20, a9);
}

uint64_t sub_100003684(uint64_t a1, uint64_t a2, const char *a3, int a4, unsigned int a5, void *a6)
{
  bzero(v29, 0xC20uLL);
  __strlcpy_chk();
  __strlcpy_chk();
  if (a5 <= 5 && ((0x37u >> a5) & 1) != 0)
  {
    v33 = 0xB0800040002uLL >> (8 * a5);
  }

  v32 = a4;
  if (a3)
  {
    strncpy(v31, a3, 0x40uLL);
  }

  if (ioctl(dword_1000103B0, 0xCC20441BuLL, v29))
  {
    v18 = 0;
    v19 = *__error();
    if (v19 && v19 != 17)
    {
      v18 = v19;
      v20 = sub_100000ACC(3424666651);
      sub_100000900("%s - anchor %s(%s): %m", v21, v22, v23, v24, v25, v26, v27, v20);
    }
  }

  else
  {
    if (a6)
    {
      *a6 = v30;
    }

    sub_100000988("inserted - anchor %s-%s", v11, v12, v13, v14, v15, v16, v17, a2);
    return 0;
  }

  return v18;
}

CFStringRef sub_100003808(const char *a1, const char *a2)
{
  snprintf(__str, 0x40uLL, "%s%s/%s", "com.apple.", a1, a2);
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(kCFAllocatorDefault, __str, SystemEncoding);
}

uint64_t sub_10000389C(unint64_t a1, uint64_t a2)
{
  v13[0] = 0x40800000008;
  v13[1] = a2;
  if (!ioctl(dword_1000103B0, a1, v13))
  {
    return 0;
  }

  v3 = *__error();
  v4 = sub_100000ACC(a1);
  sub_100000900("%s: %m", v5, v6, v7, v8, v9, v10, v11, v4);
  return v3;
}

uint64_t sub_10000391C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  memset(v118, 0, 496);
  v117 = 0u;
  bzero(v112, 0x470uLL);
  snprintf(v115, 0x400uLL, "%s", v10);
  v109 = v112;
  if (!ioctl(dword_1000103B0, 0xC4704433uLL) || (v12 = *__error(), v13 = sub_100000ACC(3295691827), sub_100000900("%s: %m", v14, v15, v16, v17, v18, v19, v20, v13), !v12))
  {
    value = xpc_dictionary_get_value(v11, off_1000101A0[0]);
    if (!value || xpc_get_type(value) != &_xpc_type_uint64)
    {
      sub_100000900("incorrect action value", v22, v23, v24, v25, v26, v27, v28, v109);
      return 22;
    }

    bzero(&v117, 0xC20uLL);
    LOBYTE(v30) = xpc_dictionary_get_uint64(v11, off_1000101A0[0]);
    v150 = v30;
    v110 = v2;
    if (v30 >= 2uLL)
    {
      if ((v30 & 0xFE) == 2)
      {
        v38 = 0;
      }

      else if ((v30 & 0xFE) == 4)
      {
        v38 = 2;
      }

      else
      {
        v39 = v30 - 8;
        if (v30 - 8) < 7u && ((0x63u >> v39))
        {
          v30 = 0xE0D0E0E0E0908uLL >> (8 * (v39 & 0x1Fu));
          v38 = 4;
        }

        else if (v30 - 11 >= 2)
        {
          sub_100000900("incorrect type of action", v31, v32, v33, v34, v35, v36, v37, v109);
          v38 = 22;
          LOBYTE(v30) = v150;
        }

        else
        {
          v38 = 5;
        }
      }
    }

    else
    {
      v38 = 1;
    }

    if (v30 <= 0xDu && ((1 << v30) & 0x2110) != 0)
    {
      v40 = sub_10000641C(v116, v11, off_1000101F8[0]);
      if (v40)
      {
        return v40;
      }

      if (v150 == 13)
      {
        uint64 = 2;
      }

      else
      {
        uint64 = xpc_dictionary_get_uint64(v11, off_1000101C0[0]);
      }

      v114 = uint64;
      if (ioctl(dword_1000103B0, 0xC4704434uLL, v112))
      {
        v12 = *__error();
        v42 = sub_100000ACC(3295691828);
        sub_100000900("%s: %m", v43, v44, v45, v46, v47, v48, v49, v42);
        return v12;
      }
    }

    if (v8)
    {
      DWORD1(v117) = *(v8 + 1032 * v38 + 1028);
    }

    v138 = v6;
    DWORD2(v117) = v113;
    snprintf(v118, 0x40uLL, "%s", v10);
    strncpy(v137, v4, 0x40uLL);
    string = xpc_dictionary_get_string(v11, off_1000101B8[0]);
    if (string)
    {
      snprintf(v129, 0x10uLL, "%s", string);
    }

    v51 = xpc_dictionary_get_value(v11, off_1000101B0[0]);
    if (v51 && xpc_get_type(v51) == &_xpc_type_uint64)
    {
      v151 = xpc_dictionary_get_uint64(v11, off_1000101B0[0]);
    }

    v52 = xpc_dictionary_get_value(v11, off_100010328[0]);
    if (v52 && xpc_get_type(v52) == &_xpc_type_uint64)
    {
      v152 = xpc_dictionary_get_uint64(v11, off_100010328[0]);
    }

    v53 = xpc_dictionary_get_value(v11, off_100010330[0]);
    if (v53 && xpc_get_type(v53) == &_xpc_type_uint64)
    {
      v153 = xpc_dictionary_get_uint64(v11, off_100010330[0]);
    }

    v54 = xpc_dictionary_get_value(v11, off_1000101D0[0]);
    if (v54 && xpc_get_type(v54) == &_xpc_type_BOOL)
    {
      v154 = xpc_dictionary_get_BOOL(v11, off_1000101D0[0]);
    }

    v55 = xpc_dictionary_get_value(v11, off_1000101C0[0]);
    if (v55 && xpc_get_type(v55) == &_xpc_type_uint64)
    {
      v158 = xpc_dictionary_get_uint64(v11, off_1000101C0[0]);
    }

    v56 = xpc_dictionary_get_value(v11, off_100010338[0]);
    if (v56 && xpc_get_type(v56) == &_xpc_type_uint64)
    {
      v160 = xpc_dictionary_get_uint64(v11, off_100010338[0]) + 1;
    }

    v57 = xpc_dictionary_get_value(v11, off_100010340[0]);
    if (v57 && xpc_get_type(v57) == &_xpc_type_uint64)
    {
      v161 = xpc_dictionary_get_uint64(v11, off_100010340[0]) + 1;
    }

    v58 = xpc_dictionary_get_value(v11, off_1000101C8[0]);
    if (v58 && xpc_get_type(v58) == &_xpc_type_uint64)
    {
      v159 = xpc_dictionary_get_uint64(v11, off_1000101C8[0]);
    }

    v59 = xpc_dictionary_get_value(v11, off_100010390[0]);
    if (v59 && xpc_get_type(v59) == &_xpc_type_uint64)
    {
      v142 = xpc_dictionary_get_uint64(v11, off_100010390[0]);
    }

    v60 = xpc_dictionary_get_value(v11, off_100010388[0]);
    if (v60 && xpc_get_type(v60) == &_xpc_type_uint64)
    {
      v164 = xpc_dictionary_get_uint64(v11, off_100010388[0]);
    }

    v61 = xpc_dictionary_get_value(v11, off_100010380[0]);
    if (v61 && xpc_get_type(v61) == &_xpc_type_uint64)
    {
      v62 = xpc_dictionary_get_uint64(v11, off_100010380[0]);
      v149 |= v62;
    }

    v63 = xpc_dictionary_get_value(v11, off_100010348[0]);
    if (v63)
    {
      if (xpc_get_type(v63) == &_xpc_type_uint64)
      {
        v64 = xpc_dictionary_get_uint64(v11, off_100010348[0]);
        v149 |= v64;
        if ((v149 & 8) != 0)
        {
          v141 = 17040131;
        }
      }
    }

    v65 = xpc_dictionary_get_value(v11, off_100010350[0]);
    if (v65 && xpc_get_type(v65) == &_xpc_type_uint64)
    {
      v166 = xpc_dictionary_get_uint64(v11, off_100010350[0]);
    }

    v66 = xpc_dictionary_get_value(v11, off_100010358[0]);
    if (v66 && xpc_get_type(v66) == &_xpc_type_uint64)
    {
      LOWORD(v141) = xpc_dictionary_get_uint64(v11, off_100010358[0]) | 0x300;
      HIWORD(v141) = 260;
    }

    v67 = xpc_dictionary_get_value(v11, off_100010360[0]);
    if (v67)
    {
      if (xpc_get_type(v67) == &_xpc_type_uint64)
      {
        HIWORD(v141) = xpc_dictionary_get_uint64(v11, off_100010360[0]) | 0x100;
        if (!v141)
        {
          LOWORD(v141) = 771;
        }
      }
    }

    v68 = xpc_dictionary_get_value(v11, off_100010300[0]);
    if (v68 && xpc_get_type(v68) == &_xpc_type_uint64)
    {
      v145 = xpc_dictionary_get_uint64(v11, off_100010300[0]);
    }

    v69 = xpc_dictionary_get_value(v11, off_1000102F0[0]);
    if (v69 && xpc_get_type(v69) == &_xpc_type_uint64)
    {
      v143 = xpc_dictionary_get_uint64(v11, off_1000102F0[0]);
    }

    v70 = xpc_dictionary_get_value(v11, off_1000102F8[0]);
    if (v70 && xpc_get_type(v70) == &_xpc_type_uint64)
    {
      v144 = xpc_dictionary_get_uint64(v11, off_1000102F8[0]);
    }

    v71 = xpc_dictionary_get_value(v11, off_100010320[0]);
    if (v71 && xpc_get_type(v71) == &_xpc_type_uint64)
    {
      v148 = xpc_dictionary_get_uint64(v11, off_100010320[0]);
    }

    v72 = xpc_dictionary_get_value(v11, off_100010310[0]);
    if (v72 && xpc_get_type(v72) == &_xpc_type_uint64)
    {
      v146 = xpc_dictionary_get_uint64(v11, off_100010310[0]);
    }

    v73 = xpc_dictionary_get_value(v11, off_100010318[0]);
    if (v73 && xpc_get_type(v73) == &_xpc_type_uint64)
    {
      v147 = xpc_dictionary_get_uint64(v11, off_100010318[0]);
    }

    v74 = xpc_dictionary_get_value(v11, off_100010200[0]);
    if (v74 && xpc_get_type(v74) == &_xpc_type_uint64)
    {
      v162 = xpc_dictionary_get_uint64(v11, off_100010200[0]);
    }

    v75 = xpc_dictionary_get_value(v11, off_100010208[0]);
    if (v75 && xpc_get_type(v75) == &_xpc_type_uint64)
    {
      v163 = xpc_dictionary_get_uint64(v11, off_100010208[0]);
    }

    v76 = xpc_dictionary_get_value(v11, off_100010238[0]);
    if (v76 && xpc_get_type(v76) == &_xpc_type_uint64)
    {
      v157 = xpc_dictionary_get_uint64(v11, off_100010238[0]);
    }

    v77 = xpc_dictionary_get_value(v11, off_100010240[0]);
    if (v77 && xpc_get_type(v77) == &_xpc_type_BOOL)
    {
      v165 = xpc_dictionary_get_BOOL(v11, off_100010240[0]);
    }

    v78 = xpc_dictionary_get_string(v11, off_100010368[0]);
    if (v78)
    {
      snprintf(v130, 0x40uLL, "%s", v78);
    }

    v79 = xpc_dictionary_get_string(v11, off_100010370[0]);
    if (v79)
    {
      snprintf(v131, 0x40uLL, "%s", v79);
    }

    v80 = xpc_dictionary_get_value(v11, off_100010378[0]);
    if (v80 && xpc_get_type(v80) == &_xpc_type_BOOL)
    {
      v155 = xpc_dictionary_get_BOOL(v11, off_100010378[0]);
    }

    v81 = xpc_dictionary_get_value(v11, off_100010260[0]);
    if (v81 && xpc_get_type(v81) == &_xpc_type_uint64)
    {
      v168 = xpc_dictionary_get_uint64(v11, off_100010260[0]);
    }

    v82 = xpc_dictionary_get_value(v11, off_100010258[0]);
    if (v82 && xpc_get_type(v82) == &_xpc_type_uint64)
    {
      v167 = xpc_dictionary_get_uint64(v11, off_100010258[0]);
    }

    v83 = xpc_dictionary_get_value(v11, off_100010268[0]);
    if (v83 && xpc_get_type(v83) == &_xpc_type_uint64)
    {
      v139 = xpc_dictionary_get_uint64(v11, off_100010268[0]);
    }

    v84 = xpc_dictionary_get_value(v11, off_100010270[0]);
    if (v84 && xpc_get_type(v84) == &_xpc_type_BOOL)
    {
      v156 = xpc_dictionary_get_BOOL(v11, off_100010270[0]);
    }

    v85 = xpc_dictionary_get_value(v11, off_100010278[0]);
    if (v85 && xpc_get_type(v85) == &_xpc_type_uint64)
    {
      v140 = xpc_dictionary_get_uint64(v11, off_100010278[0]);
    }

    v86 = xpc_dictionary_get_value(v11, off_1000103A0[0]);
    if (v86 && xpc_get_type(v86) == &_xpc_type_uint64)
    {
      v170 = xpc_dictionary_get_uint64(v11, off_1000103A0[0]);
    }

    v87 = xpc_dictionary_get_value(v11, off_100010398[0]);
    if (v87 && xpc_get_type(v87) == &_xpc_type_uint64)
    {
      v169 = xpc_dictionary_get_uint64(v11, off_100010398[0]);
    }

    v40 = sub_10000641C(v119, v11, off_1000101D8[0]);
    if (v40)
    {
      return v40;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C0[0]);
    v88 = xpc_dictionary_get_value(v11, __str);
    if (v88 && xpc_get_type(v88) == &_xpc_type_BOOL)
    {
      v123 = xpc_dictionary_get_BOOL(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102D8[0]);
    v89 = xpc_dictionary_get_value(v11, __str);
    if (v89 && xpc_get_type(v89) == &_xpc_type_uint64)
    {
      v122 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
    v90 = xpc_dictionary_get_value(v11, __str);
    if (v90 && xpc_get_type(v90) == &_xpc_type_uint64)
    {
      v120 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102D0[0]);
    v91 = xpc_dictionary_get_value(v11, __str);
    if (v91 && xpc_get_type(v91) == &_xpc_type_uint64)
    {
      v121 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    v40 = sub_10000641C(v124, v11, "to");
    if (v40)
    {
      return v40;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C0[0]);
    v92 = xpc_dictionary_get_value(v11, __str);
    if (v92 && xpc_get_type(v92) == &_xpc_type_BOOL)
    {
      v128 = xpc_dictionary_get_BOOL(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102D8[0]);
    v93 = xpc_dictionary_get_value(v11, __str);
    if (v93 && xpc_get_type(v93) == &_xpc_type_uint64)
    {
      v127 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C8[0]);
    v94 = xpc_dictionary_get_value(v11, __str);
    if (v94 && xpc_get_type(v94) == &_xpc_type_uint64)
    {
      v125 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102D0[0]);
    v95 = xpc_dictionary_get_value(v11, __str);
    if (v95 && xpc_get_type(v95) == &_xpc_type_uint64)
    {
      v126 = bswap32(xpc_dictionary_get_uint64(v11, __str)) >> 16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102D8[0]);
    v96 = xpc_dictionary_get_value(v11, __str);
    if (v96 && xpc_get_type(v96) == &_xpc_type_uint64)
    {
      v134 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102C8[0]);
    v97 = xpc_dictionary_get_value(v11, __str);
    if (v97 && xpc_get_type(v97) == &_xpc_type_uint64)
    {
      v132 = xpc_dictionary_get_uint64(v11, __str);
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101F8[0], off_1000102D0[0]);
    v98 = xpc_dictionary_get_value(v11, __str);
    if (v98 && xpc_get_type(v98) == &_xpc_type_uint64)
    {
      v133 = xpc_dictionary_get_uint64(v11, __str);
    }

    if (v150 == 13)
    {
      v158 = 30;
      v135 = 2;
    }

    if (v8)
    {
      v99 = 3424666628;
      v100 = ioctl(dword_1000103B0, 0xCC204404uLL, &v117);
    }

    else
    {
      v99 = 3424666651;
      v100 = ioctl(dword_1000103B0, 0xCC20441BuLL, &v117);
    }

    if (v100)
    {
      v12 = *__error();
      v101 = sub_100000ACC(v99);
      sub_100000900("%s: %m", v102, v103, v104, v105, v106, v107, v108, v101);
    }

    else
    {
      v12 = 0;
    }

    if (v110)
    {
      *v110 = v136;
    }
  }

  return v12;
}

uint64_t sub_1000048D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1000103C0)
  {
    v26 = qword_1000103C0;
    v27 = 0;
    v25 = &v26;
    if (ioctl(dword_1000103B0, 0xC0104409uLL, a3, a4, a5, a6, a7, a8))
    {
      if (*__error() == 2)
      {
        v23 = "pf not enabled";
      }

      else
      {
        v25 = sub_100000ACC(3222291465);
        v23 = "%s: %m";
      }

      return sub_100000900(v23, v16, v17, v18, v19, v20, v21, v22, v25);
    }

    else
    {
      if (v27)
      {
        result = sub_100000988("pf still enabled with %llu other reference%s", v9, v10, v11, v12, v13, v14, v15, v27);
      }

      else
      {
        result = sub_100000988("pf disabled", v9, v10, v11, v12, v13, v14, v15, &v26);
      }

      qword_1000103C0 = 0;
    }
  }

  else
  {

    return sub_100000988("pf is already disabled", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1000049C8(const __CFString *a1, _DWORD *a2)
{
  bzero(v24, 0xC20uLL);
  v27[1] = v27;
  if (CFStringGetCString(a1, v26, 1024, 0x8000100u))
  {
    v11 = 0;
    *a2 = 0;
    while (1)
    {
      if ((v11 & 0xB) != 0xA && v11 != 12 && v11 != 9 && (v11 & 9) != 1)
      {
        v28 = v11;
        if (ioctl(dword_1000103B0, 0xCC204406uLL, v24))
        {
          v23 = sub_100000ACC(3424666630);
          sub_100000900("%s: %m", v16, v17, v18, v19, v20, v21, v22, v23);
          return 0;
        }

        *a2 += v25;
      }

      if (++v11 == 15)
      {
        return 1;
      }
    }
  }

  sub_100000900("%s: anchor name too long", v4, v5, v6, v7, v8, v9, v10, "PFDRuleGetNumberOfRules");
  return 0;
}

BOOL sub_100004B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1000103C0)
  {
    sub_100000988("pf is already enabled", a2, a3, a4, a5, a6, a7, a8, v25);
    return 1;
  }

  if (!ioctl(dword_1000103B0, 0x40084408uLL, a3, a4, a5, a6, a7, a8))
  {
    return 1;
  }

  v16 = *__error();
  if (v16 == 17)
  {
    sub_100000900("pf already enabled", v9, v10, v11, v12, v13, v14, v15, &qword_1000103C0);
    return 1;
  }

  v17 = sub_100000ACC(1074283528);
  sub_100000900("%s: %m", v18, v19, v20, v21, v22, v23, v24, v17);
  return v16 == 0;
}

xpc_object_t sub_100004BC0()
{
  v0 = __chkstk_darwin();
  v117 = v1;
  v2 = v0;
  bzero(v118, 0xC20uLL);
  __src = CFStringGetCStringPtr(v2, 0);
  snprintf(v121, 0x40uLL, "%s", __src);
  v3 = xpc_array_create(0, 0);
  v4 = 0;
  while (1)
  {
    v5 = (v4 & 0xB) == 0xA || v4 == 12;
    v6 = v5 || v4 == 9;
    if (!v6 && (v4 & 9) != 1)
    {
      value = v4;
      if (ioctl(dword_1000103B0, 0xCC204406uLL, v118))
      {
        v96 = 3424666630;
LABEL_174:
        v105 = sub_100000ACC(v96);
        sub_100000900("%s: %m", v106, v107, v108, v109, v110, v111, v112, v105);
        xpc_release(v3);
        v3 = 0;
        *v117 = 0;
        return v3;
      }

      v116 = v120;
      if (v120 >= 1)
      {
        break;
      }
    }

LABEL_163:
    if (++v4 == 15)
    {
      if (!xpc_array_get_count(v3))
      {
        sub_100000988("no rules in the anchor %s", v88, v89, v90, v91, v92, v93, v94, __src);
        xpc_release(v3);
        v3 = 0;
      }

      *v117 = 1;
      return v3;
    }
  }

  v8 = 0;
  while (1)
  {
    v120 = v8;
    if (ioctl(dword_1000103B0, 0xCC204407uLL, v118))
    {
      v96 = 3424666631;
      goto LABEL_174;
    }

    v9 = v119;
    v10 = xpc_dictionary_create(0, 0, 0);
    if (!v10)
    {
      goto LABEL_177;
    }

    v18 = v10;
    xpc_dictionary_set_uint64(v10, off_1000101A0[0], value);
    if (value > 0xEu || ((1 << value) & 0x6330) == 0)
    {
      xpc_dictionary_set_uint64(v18, off_1000101B0[0], value_1);
    }

    if (v132[0])
    {
      xpc_dictionary_set_string(v18, off_1000101B8[0], v132);
    }

    if (v161)
    {
      xpc_dictionary_set_uint64(v18, off_1000101C0[0], v161);
    }

    if (value == 1 && (v152 & 0xD) != 0)
    {
      break;
    }

LABEL_42:
    if (v162)
    {
      v25 = getprotobynumber(v162);
      if (v25)
      {
        xpc_dictionary_set_string(v18, off_1000101C8[0], v25->p_name);
      }

      else
      {
        xpc_dictionary_set_uint64(v18, off_1000101C8[0], v162);
      }
    }

    if (value_4)
    {
      xpc_dictionary_set_BOOL(v18, off_1000101D0[0], 1);
    }

    if (v170 - 1 <= 2)
    {
      xpc_dictionary_set_uint64(v18, off_100010258[0], v170);
    }

    if (v171 - 1 <= 2)
    {
      xpc_dictionary_set_uint64(v18, off_100010260[0], v171);
    }

    if (!value && v160)
    {
      xpc_dictionary_set_uint64(v18, off_100010238[0], v160);
    }

    if (v168)
    {
      xpc_dictionary_set_BOOL(v18, off_100010240[0], 1);
    }

    if (v145)
    {
      xpc_dictionary_set_uint64(v18, off_100010268[0], v145);
    }

    if (value_7)
    {
      xpc_dictionary_set_BOOL(v18, off_100010270[0], 1);
    }

    if (v146)
    {
      xpc_dictionary_set_uint64(v18, off_100010278[0], v146);
    }

    if (v140)
    {
      xpc_dictionary_set_uint64(v18, off_100010280[0], v140);
    }

    if (v141)
    {
      xpc_dictionary_set_uint64(v18, off_100010288[0], v141);
    }

    if (v142)
    {
      xpc_dictionary_set_uint64(v18, off_100010290[0], v142);
    }

    if (v143)
    {
      xpc_dictionary_set_uint64(v18, off_100010298[0], v143);
    }

    if (v144)
    {
      xpc_dictionary_set_uint64(v18, off_1000102A0[0], v144);
    }

    if (v165)
    {
      v26 = 0;
      *v176 = 0u;
      string = 0u;
      p_string = &string;
      v28 = 70;
      do
      {
        if ((v165 >> v26))
        {
          *p_string++ = v28;
        }

        v28 = aFsrpauew[++v26];
      }

      while (v26 != 8);
      if (!v166)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (!v166)
      {
        goto LABEL_87;
      }

      *v176 = 0u;
      string = 0u;
      p_string = &string;
    }

    v29 = 0;
    *p_string = 47;
    v30 = p_string + 1;
    v31 = 70;
    do
    {
      if ((v166 >> v29))
      {
        *v30++ = v31;
      }

      v31 = aFsrpauew[++v29];
    }

    while (v29 != 8);
LABEL_86:
    xpc_dictionary_set_string(v18, off_100010200[0], &string);
LABEL_87:
    if (v149 && !sub_100006AD0(v149, *&v147[6], v148, off_100010210[0], v18) || v151 && !sub_100006AD0(v151, v150, v150, off_100010218[0], v18))
    {
      goto LABEL_172;
    }

    v32 = value;
    if (value == 2)
    {
      if (!v152 && !v167 && !v147[2])
      {
        goto LABEL_107;
      }

      v33 = xpc_dictionary_create(0, 0, 0);
      if (!v33)
      {
        goto LABEL_167;
      }

      v34 = v33;
      if (v152)
      {
        xpc_dictionary_set_uint64(v33, off_100010380[0], v152);
      }

      if (v167)
      {
        xpc_dictionary_set_uint64(v34, off_100010388[0], v167);
      }

      if (v147[2])
      {
        xpc_dictionary_set_uint64(v34, off_100010390[0], v147[2]);
      }

      xpc_dictionary_set_value(v18, off_100010230[0], v34);
      xpc_release(v34);
      v32 = value;
    }

    if (v32 == 11 && v172)
    {
      v35 = xpc_dictionary_create(0, 0, 0);
      if (!v35)
      {
        goto LABEL_167;
      }

      v36 = v35;
      xpc_dictionary_set_uint64(v35, off_1000103A0[0], v173);
      xpc_dictionary_set_uint64(v36, off_100010398[0], v172);
      xpc_dictionary_set_value(v18, off_100010250[0], v36);
      xpc_release(v36);
    }

LABEL_107:
    if (value_2)
    {
      v37 = xpc_dictionary_create(0, 0, 0);
      if (!v37)
      {
        goto LABEL_167;
      }

      v38 = v37;
      if (value_2)
      {
        xpc_dictionary_set_uint64(v37, off_100010328[0], value_2);
      }

      if (value_3)
      {
        snprintf(__str, 0x40uLL, "pflog%d", value_3);
        xpc_dictionary_set_string(v38, off_100010330[0], __str);
      }

      xpc_dictionary_set_value(v18, off_100010220[0], v38);
      xpc_release(v38);
    }

    if ((v162 == 58 || v162 == 1) && v163)
    {
      v39 = xpc_dictionary_create(0, 0, 0);
      if (!v39)
      {
        xpc_release(v18);
        v95 = "subrule xpc_dictionary_create() failed %m";
        goto LABEL_178;
      }

      v40 = v39;
      xpc_dictionary_set_uint64(v39, off_100010338[0], v163 - 1);
      if (v164)
      {
        xpc_dictionary_set_uint64(v40, off_100010340[0], v164 - 1);
      }

      xpc_dictionary_set_value(v18, off_100010228[0], v40);
      xpc_release(v40);
    }

    if (v133[0] | v134[0])
    {
      v41 = xpc_dictionary_create(0, 0, 0);
      if (!v41)
      {
LABEL_167:
        xpc_release(v18);
        v95 = "subrule xpc_dictionary_create failed %m";
        goto LABEL_178;
      }

      v42 = v41;
      if (v133[0])
      {
        xpc_dictionary_set_string(v41, off_100010368[0], v133);
      }

      if (v134[0])
      {
        xpc_dictionary_set_string(v42, off_100010370[0], v134);
      }

      if (value_6)
      {
        xpc_dictionary_set_BOOL(v42, off_100010378[0], 1);
      }

      xpc_dictionary_set_value(v18, off_100010248[0], v42);
      xpc_release(v42);
    }

    if (v123 || v128 | v126 || ((v69 = vbicq_s8(xmmword_100008300, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v122[0]), vceqzq_s32(v122[1])), vuzp1q_s16(vceqzq_s32(v127[0]), vceqzq_s32(v127[1])))), v70 = vzip1q_s8(v69, vextq_s8(v69, v69, 8uLL)), v70.i16[0] = vaddvq_s16(v70), !v70.i32[0]) ? (v71 = v131 == 0) : (v71 = 0), !v71))
    {
      if (!sub_100006D04(v122, v161, v126, v124, v125, v162, v18, off_1000101D8[0]))
      {
        v97 = "get source address/port failed";
LABEL_171:
        sub_100000900(v97, v43, v44, v45, v46, v47, v48, v49, v114);
LABEL_172:
        xpc_release(v18);
        goto LABEL_179;
      }

      if ((sub_100006D04(v127, v161, v131, v129, v130, v162, v18, off_1000101F0[0]) & 1) == 0)
      {
        v97 = "get destination address/port failed";
        goto LABEL_171;
      }
    }

    v50 = value;
    if (value <= 0xDu && ((1 << value) & 0x2110) != 0)
    {
      bzero(&string, 0x470uLL);
      memcpy(&v176[3], __src, 0x400uLL);
      v176[0] = v50;
      HIDWORD(string) = v8;
      DWORD1(string) = v9;
      if (ioctl(dword_1000103B0, 0xC4704435uLL))
      {
        sub_100000900("DIOCGETADDRS %m", v51, v52, v53, v54, v55, v56, v57, &string);
LABEL_137:
        v65 = "get pool for nat/rdr failed";
LABEL_138:
        sub_100000900(v65, v58, v59, v60, v61, v62, v63, v64, v114);
        v66 = 0;
LABEL_139:
        v67 = v135;
        if (v135)
        {
          do
          {
            v68 = v67[6];
            free(v67);
            v67 = v68;
          }

          while (v68);
        }

        if ((v66 & 1) == 0)
        {
          goto LABEL_172;
        }
      }

      else
      {
        v135 = 0;
        v136 = &v135;
        v72 = DWORD2(string);
        if (DWORD2(string))
        {
          v73 = 0;
          while (1)
          {
            DWORD2(string) = v73;
            if (ioctl(dword_1000103B0, 0xC4704436uLL, &string))
            {
              break;
            }

            v81 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
            if (!v81)
            {
              v85 = "calloc failed %m";
LABEL_160:
              sub_100000900(v85, v74, v75, v76, v77, v78, v79, v80, v114);
              v86 = v135;
              if (v135)
              {
                do
                {
                  v87 = v86[6];
                  free(v86);
                  v86 = v87;
                }

                while (v87);
              }

              goto LABEL_137;
            }

            v82 = v81;
            memmove(v81, &v177, 0x58uLL);
            v82[6] = 0;
            v83 = v136;
            v82[7] = v136;
            *v83 = v82;
            v136 = v82 + 6;
            if (v72 == ++v73)
            {
              if (!v135)
              {
                goto LABEL_142;
              }

              v84 = sub_100006D04(v135, v161, v139, v137, v138, v162, v18, off_1000101F8[0]);
              v65 = "get nat/rdr failed";
              if (v84)
              {
                v66 = 1;
                goto LABEL_139;
              }

              goto LABEL_138;
            }
          }

          v85 = "DIOCGETADDR %m";
          goto LABEL_160;
        }
      }
    }

LABEL_142:
    xpc_array_append_value(v3, v18);
    xpc_release(v18);
    *v117 = 1;
    if (++v8 == v116)
    {
      goto LABEL_163;
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  if (v20)
  {
    v21 = v20;
    if ((v152 & 8) != 0)
    {
      v24 = off_100010348[0];
      v22 = 8;
    }

    else
    {
      if (v152)
      {
        xpc_dictionary_set_uint64(v20, off_100010348[0], 1uLL);
        v22 = v169;
        if (!v169)
        {
LABEL_41:
          xpc_dictionary_set_value(v18, off_1000101A8[0], v21);
          xpc_release(v21);
          goto LABEL_42;
        }

        v23 = off_100010350;
      }

      else
      {
        if ((v152 & 4) == 0)
        {
          goto LABEL_41;
        }

        xpc_dictionary_set_uint64(v20, off_100010348[0], 4uLL);
        if (v147[0])
        {
          xpc_dictionary_set_uint64(v21, off_100010358[0], v147[0]);
        }

        v22 = v147[1];
        if (!v147[1])
        {
          goto LABEL_41;
        }

        v23 = off_100010360;
      }

      v24 = *v23;
      v20 = v21;
    }

    xpc_dictionary_set_uint64(v20, v24, v22);
    goto LABEL_41;
  }

  xpc_release(v18);
LABEL_177:
  v95 = "xpc_dictionary_create failed %m";
LABEL_178:
  sub_100000900(v95, v11, v12, v13, v14, v15, v16, v17, v114);
LABEL_179:
  *v117 = 0;
  sub_100000900("creating xpc from pf rule failed", v98, v99, v100, v101, v102, v103, v104, v114);
  xpc_release(v3);
  return 0;
}

uint64_t sub_100005868(void *a1, void *a2)
{
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  value = xpc_dictionary_get_value(a1, off_1000101B0[0]);
  if (value && xpc_get_type(value) == &_xpc_type_uint64)
  {
    HIBYTE(v73) = xpc_dictionary_get_uint64(a1, off_1000101B0[0]);
    xpc_dictionary_set_uint64(a2, off_1000101B0[0], HIBYTE(v73));
  }

  v5 = xpc_dictionary_get_value(a1, off_1000101C0[0]);
  if (v5 && xpc_get_type(v5) == &_xpc_type_uint64)
  {
    LOBYTE(v73) = xpc_dictionary_get_uint64(a1, off_1000101C0[0]);
    xpc_dictionary_set_uint64(a2, off_1000101C0[0], v73);
  }

  v6 = xpc_dictionary_get_value(a1, off_1000101C8[0]);
  if (v6 && xpc_get_type(v6) == &_xpc_type_uint64)
  {
    BYTE1(v73) = xpc_dictionary_get_uint64(a1, off_1000101C8[0]);
    xpc_dictionary_set_uint64(a2, off_1000101C8[0], BYTE1(v73));
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v15 = v7;
    if (sub_100005D18(&v68, a1, off_1000101D8[0], v7))
    {
LABEL_12:
      v16 = 0;
LABEL_37:
      xpc_release(v15);
      return v16;
    }

    snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
    v17 = xpc_dictionary_get_value(a1, __str);
    if (v17 && xpc_get_type(v17) == &_xpc_type_uint64)
    {
      uint64 = xpc_dictionary_get_uint64(a1, __str);
      LOWORD(v72) = bswap32(uint64) >> 16;
      xpc_dictionary_set_uint64(v15, off_1000102C8[0], uint64);
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    if (!v19)
    {
      sub_100000900("xpc_dictionary_create failed", v20, v21, v22, v23, v24, v25, v26, v66);
      goto LABEL_12;
    }

    v27 = v19;
    if (!sub_100005D18(&v69, a1, off_1000101F0[0], v19))
    {
      snprintf(__str, 0x40uLL, "%s%s", off_1000101F0[0], off_1000102C8[0]);
      v28 = xpc_dictionary_get_value(a1, __str);
      if (v28 && xpc_get_type(v28) == &_xpc_type_uint64)
      {
        v29 = xpc_dictionary_get_uint64(a1, __str);
        WORD2(v72) = bswap32(v29) >> 16;
        xpc_dictionary_set_uint64(v27, off_1000102C8[0], v29);
      }

      if (ioctl(dword_1000103B0, 0xC0544417uLL, &v68) == -1)
      {
        snprintf(__str, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102B0[0]);
        snprintf(key, 0x40uLL, "%s%s", off_1000101D8[0], off_1000102C8[0]);
        string = xpc_dictionary_get_string(a1, __str);
        xpc_dictionary_get_uint64(a1, key);
        sub_100000900("pf nat lookup failed %s:%hu (%m)", v56, v57, v58, v59, v60, v61, v62, string);
      }

      else
      {
        v30 = xpc_dictionary_create(0, 0, 0);
        if (v30)
        {
          v38 = v30;
          if (sub_100005E5C(&v70, v73, v30))
          {
            if (WORD4(v72))
            {
              xpc_dictionary_set_uint64(v38, off_1000102C8[0], __rev16(WORD4(v72)));
            }

            v46 = xpc_dictionary_create(0, 0, 0);
            if (v46)
            {
              v47 = v46;
              v16 = sub_100005E5C(&v71, v73, v46);
              if (v16)
              {
                if (WORD6(v72))
                {
                  xpc_dictionary_set_uint64(v47, off_1000102C8[0], __rev16(WORD6(v72)));
                }

                xpc_dictionary_set_value(a2, off_1000101D8[0], v15);
                xpc_dictionary_set_value(a2, off_1000101F0[0], v27);
                xpc_dictionary_set_value(a2, off_1000101E0[0], v38);
                xpc_dictionary_set_value(a2, off_1000101E8[0], v47);
              }

              else
              {
                sub_100000900("natlook getting internal destination address failed", v48, v49, v50, v51, v52, v53, v54, v67);
              }

              xpc_release(v47);
              goto LABEL_44;
            }

            v64 = "xpc_dictionary_create failed";
          }

          else
          {
            v64 = "natlook getting internal source address failed";
          }

          sub_100000900(v64, v39, v40, v41, v42, v43, v44, v45, v67);
          v16 = 0;
LABEL_44:
          xpc_release(v38);
          goto LABEL_36;
        }

        sub_100000900("xpc_dictionary_create failed", v31, v32, v33, v34, v35, v36, v37, v67);
      }
    }

    v16 = 0;
LABEL_36:
    xpc_release(v27);
    goto LABEL_37;
  }

  sub_100000900("xpc_dictionary_create failed", v8, v9, v10, v11, v12, v13, v14, v65);
  return 0;
}

uint64_t sub_100005D18(_DWORD *a1, void *a2, const char *a3, void *a4)
{
  v11 = 0;
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B0[0]) < 1)
  {
    return 22;
  }

  string = xpc_dictionary_get_string(a2, __str);
  if (!string)
  {
    return 22;
  }

  v8 = string;
  v13 = 0;
  xpc_dictionary_set_string(a4, off_1000102B0[0], string);
  if (inet_pton(2, v8, &v13) == 1)
  {
    result = 0;
    *a1 = v13;
    return result;
  }

  memset(&v12.ai_socktype, 0, 40);
  v12.ai_socktype = 2;
  *&v12.ai_flags = 0x1E00000004;
  if (getaddrinfo(v8, "0", &v12, &v11))
  {
    return 22;
  }

  v10 = v11;
  *a1 = *&v11->ai_addr->sa_data[6];
  freeaddrinfo(v10);
  return 0;
}

uint64_t sub_100005E5C(_DWORD *a1, int a2, void *a3)
{
  if (!*a1 && !a1[2] && !a1[3])
  {
    return 1;
  }

  memset(v12, 0, 46);
  if (inet_ntop(a2, a1, v12, 0x2Eu))
  {
    xpc_dictionary_set_string(a3, off_1000102B0[0], v12);
    return 1;
  }

  sub_100000900("inet_ntop failed %m", v4, v5, v6, v7, v8, v9, v10, *&v12[0]);
  return 0;
}

uint64_t sub_100005F28(const char *a1, const char *a2, uint64_t a3, void *a4)
{
  bzero(__str, 0x428uLL);
  __strcpy_chk();
  snprintf(__str, 0x400uLL, "com.apple.%s/%s", a1, a2);
  bzero(__dst, 0x450uLL);
  LODWORD(v58) = 1;
  v55 = __str;
  v56 = 0x100000428;
  if (ioctl(dword_1000103B0, 0xC450443DuLL, __dst))
  {
    v7 = sub_100000ACC(3293594685);
    v8 = __error();
    strerror(*v8);
    sub_100000900("%s: %s", v9, v10, v11, v12, v13, v14, v15, v7);
    return 0;
  }

  else
  {
    count = xpc_array_get_count(a4);
    v19 = count;
    if (count)
    {
      v20 = count;
      v21 = malloc_type_malloc(20 * count, 0x1000040A86A77D5uLL);
      v22 = 0;
      v23 = "inet_net_pton failed for %s with %s";
      v24 = v21;
      do
      {
        string = xpc_array_get_string(a4, v22);
        if (sub_10000620C(string, v24, 2))
        {
          v52 = 0uLL;
          if (strrchr(string, 47))
          {
            v26 = inet_net_pton(30, string, &v52, 0x10uLL);
            if (v26 < 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (inet_pton(30, string, &v52) != -1)
            {
              v23 = "inet_pton failed for %s with %s";
LABEL_19:
              v36 = __error();
              strerror(*v36);
              sub_100000900(v23, v37, v38, v39, v40, v41, v42, v43, string);
              v44 = __error();
              strerror(*v44);
              sub_100000900("cannot parse addr %s, errno %s", v45, v46, v47, v48, v49, v50, v51, 22);
              goto LABEL_20;
            }

            LOBYTE(v26) = 0x80;
          }

          *v24 = v52;
          v24[1].i8[1] = v26;
          v24[1].i8[0] = 30;
        }

        ++v22;
        v24 = (v24 + 20);
      }

      while (v20 != v22);
      v57 = 0u;
      v58 = 0;
      memcpy(__dst, __str, sizeof(__dst));
      v55 = v21;
      HIDWORD(v56) = v19;
      LODWORD(v56) = 20;
      if (ioctl(dword_1000103B0, 0xC4504443uLL, __dst))
      {
        v27 = sub_100000ACC(3293594691);
        v28 = __error();
        strerror(*v28);
        sub_100000900("%s: %s", v29, v30, v31, v32, v33, v34, v35, v27);
        v16 = 0;
        if (!v21)
        {
          return v16;
        }

        goto LABEL_21;
      }

LABEL_20:
      v16 = 1;
      if (!v21)
      {
        return v16;
      }

LABEL_21:
      free(v21);
    }

    else
    {
      return 1;
    }
  }

  return v16;
}

uint64_t sub_10000620C(char *a1, int8x16_t *a2, int a3)
{
  v27 = 0;
  if (strrchr(a1, 47))
  {
    v6 = inet_net_pton(2, a1, &v27, 4uLL);
    if (v6 == -1)
    {
      v9 = __error();
      strerror(*v9);
      sub_100000988("inet_net_pton failed for %s with %s", v10, v11, v12, v13, v14, v15, v16, a1);
      return 22;
    }
  }

  else
  {
    if (inet_pton(2, a1, &v27) != 1)
    {
      v18 = __error();
      strerror(*v18);
      sub_100000988("inet_pton failed for %s with %s", v19, v20, v21, v22, v23, v24, v25, a1);
      return 22;
    }

    LOBYTE(v6) = 32;
  }

  a2->i32[0] = v27;
  if (a3 == 1)
  {
    a2[2].i8[8] = 0;
    sub_100006950(a2, v6, v7, v8);
    return 0;
  }

  else
  {
    v17 = 0;
    a2[1].i8[1] = v6;
    a2[1].i8[0] = 2;
  }

  return v17;
}

BOOL sub_100006304(const char *a1, const char *a2, uint64_t a3)
{
  bzero(__str, 0x428uLL);
  __strcpy_chk();
  snprintf(__str, 0x400uLL, "com.apple.%s/%s", a1, a2);
  bzero(v17, 0x450uLL);
  v18 = __str;
  v19 = 0x100000428;
  v5 = ioctl(dword_1000103B0, 0xC450443EuLL, v17);
  if (v5)
  {
    v6 = sub_100000ACC(3293594686);
    v7 = __error();
    strerror(*v7);
    sub_100000900("%s: %s", v8, v9, v10, v11, v12, v13, v14, v6);
  }

  return v5 == 0;
}

uint64_t sub_10000641C(int8x16_t *a1, void *a2, const char *a3)
{
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102A8[0]) >= 1)
  {
    string = xpc_dictionary_get_string(a2, __str);
    if (string)
    {
      if (!strncmp(string, off_1000103A8, 0x40uLL))
      {
        return 0;
      }

      return 22;
    }
  }

  __endptr = 0;
  if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B0[0]) >= 1 && (v7 = xpc_dictionary_get_string(a2, __str)) != 0)
  {
    v8 = v7;
    v9 = strrchr(v7, 47);
    if (!v9)
    {
      v57 = strdup(v8);
      if (v57)
      {
        v31 = v57;
        v20 = 0x80;
        goto LABEL_37;
      }

      v74 = "address: strdup";
LABEL_57:
      sub_100000900(v74, v24, v25, v26, v27, v28, v29, v30, v94);
      return 12;
    }

    v10 = v9;
    v11 = v9 + 1;
    v12 = strtol(v9 + 1, &__endptr, 0);
    if (__endptr)
    {
      if (__endptr != v11 && !*__endptr)
      {
        v20 = v12;
        if (v12 < 129)
        {
          v21 = strlen(v8);
          v22 = strlen(v10);
          v23 = malloc_type_malloc(v21 - v22 + 1, 0x7AAA25DCuLL);
          if (v23)
          {
            v31 = v23;
            v32 = strlen(v8);
            v33 = strlen(v10);
            strlcpy(v31, v8, v32 - v33 + 1);
LABEL_37:
            if (sub_10000620C(v8, a1, 1))
            {
              v96 = 0;
              memset(&v97.ai_socktype, 0, 40);
              v97.ai_socktype = 2;
              *&v97.ai_flags = 0x1E00000004;
              v58 = getaddrinfo(v31, "0", &v97, &v96);
              if (v58)
              {
                gai_strerror(v58);
                sub_100000988("getaddrinfo failed for %s with %s", v60, v61, v62, v63, v64, v65, v66, v31);
                free(v31);
                sub_100000900("no IP address found for %s", v67, v68, v69, v70, v71, v72, v73, v8);
                return 22;
              }

              v82 = v96;
              v83 = *&v96->ai_addr->sa_data[6];
              *a1 = v83;
              sub_100006950(a1, v20, v83, v59);
              freeaddrinfo(v82);
            }

            free(v31);
            return 0;
          }

          v74 = "address: malloc";
          goto LABEL_57;
        }
      }
    }

    sub_100000900("invalid netmask '%s'\n", v13, v14, v15, v16, v17, v18, v19, v10);
  }

  else
  {
    if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102B8[0]) >= 1)
    {
      v34 = xpc_dictionary_get_string(a2, __str);
      if (v34)
      {
        v35 = strdup(v34);
        if (v35)
        {
          v36 = v35;
          v37 = strrchr(v35, 58);
          if (v37)
          {
            v45 = v37;
            v46 = 0;
            while (1)
            {
              if (!strcmp(v45 + 1, "network"))
              {
                v47 = 1;
              }

              else if (!strcmp(v45 + 1, "broadcast"))
              {
                v47 = 2;
              }

              else if (!strcmp(v45 + 1, "peer"))
              {
                v47 = 4;
              }

              else
              {
                if (v45[1] != 48 || v45[2])
                {
                  goto LABEL_62;
                }

                v47 = 8;
              }

              v46 |= v47;
              *v45 = 0;
              v45 = strrchr(v36, 58);
              if (!v45)
              {
                goto LABEL_43;
              }
            }
          }

          v46 = 0;
LABEL_43:
          if ((v46 & (v46 - 1) & 6) != 0)
          {
            v75 = "illegal combination of interface modifiers\n";
          }

          else
          {
            *&v97.ai_flags = 0;
            if ((getifaddrs(&v97) & 0x80000000) == 0)
            {
              v76 = &v97;
              do
              {
                v76 = *&v76->ai_flags;
                if (!v76)
                {
                  freeifaddrs(*&v97.ai_flags);
                  goto LABEL_60;
                }
              }

              while (strncmp(*&v76->ai_socktype, v36, 0x10uLL));
              freeifaddrs(*&v97.ai_flags);
              a1[2].i8[8] = 2;
              a1[2].i8[9] = v46;
              snprintf(a1->i8, 0x10uLL, "%s", v36);
              uint64 = xpc_dictionary_get_uint64(a2, off_1000101C0[0]);
              if (uint64 == 30)
              {
                v80 = a1;
                v81 = 128;
              }

              else
              {
                if (uint64 != 2)
                {
                  return 0;
                }

                v80 = a1;
                v81 = 32;
              }

              sub_100006950(v80, v81, v78, v79);
              return 0;
            }

            v85 = __error();
            v86 = strerror(*v85);
            sub_100000900("getifaddrs failed %s", v87, v88, v89, v90, v91, v92, v93, v86);
LABEL_60:
            v94 = v36;
            v75 = "invalid interface name %s";
          }

          sub_100000900(v75, v38, v39, v40, v41, v42, v43, v44, v94);
LABEL_62:
          free(v36);
          return 22;
        }

        v74 = "dynamic address: strdup";
        goto LABEL_57;
      }
    }

    if (snprintf(__str, 0x40uLL, "%s%s", a3, off_1000102E0[0]) < 1)
    {
      return 0;
    }

    v48 = xpc_dictionary_get_string(a2, __str);
    if (!v48)
    {
      return 0;
    }

    v49 = v48;
    if (strlen(v48) < 0x21)
    {
      a1[2].i8[8] = 3;
      snprintf(a1->i8, 0x20uLL, "%s", v49);
      return 0;
    }

    sub_100000900("table name %s too long, max size is %u", v50, v51, v52, v53, v54, v55, v56, v49);
  }

  return 22;
}

int8x16_t sub_100006950(int8x16_t *a1, unsigned int a2, int8x16_t result, int8x16_t a4)
{
  v4 = a2;
  a1[1] = 0uLL;
  v6 = a1 + 1;
  v7 = a2 - 32;
  if (a2 < 0x20)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7 >> 5;
    memset(&a1[1], 255, (4 * v8 + 4));
    v9 = (v8 + 1);
    v10 = vdupq_n_s64(v8);
    a4 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(xmmword_100008340, v10), vcgtq_u64(xmmword_100008330, v10)), vuzp1q_s32(vcgtq_u64(xmmword_100008320, v10), vcgtq_u64(xmmword_100008310, v10)));
    *a4.i8 = vmovn_s16(a4);
    v11.i8[1] = -32;
    v11.i16[1] = -7968;
    v11.i32[1] = -522133280;
    v11.i8[0] = v7;
    *result.i8 = vbsl_s8(*a4.i8, v4, v11);
    result.i8[0] = vaddv_s8(*result.i8);
    v4 = result.i8[0];
  }

  if (v4)
  {
    v12 = v4 ^ 0x1F;
    if (v12 >= 0x1E)
    {
      v12 = 30;
    }

    v13 = v12 ^ 0x1F;
    v14 = ((v12 ^ 0x1F) + 3) & 0x3C;
    v15 = vdupq_n_s32(v13 - 1);
    a4.i32[0] = v6->i32[v9];
    v16 = xmmword_100008350;
    v17 = 4;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    v19.i64[0] = 0x300000003;
    v19.i64[1] = 0x300000003;
    do
    {
      v20 = a4;
      a4 = vorrq_s8(a4, vshlq_u32(v18, v16));
      v16 = vaddq_s32(v16, v19);
      v17 -= 4;
    }

    while (v14 + v17 != 4);
    result = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v17), xmmword_100008360), v15), v20, a4);
    *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
    v6->i32[v9] = bswap32(result.i32[0] | result.i32[1]);
  }

  if (!a1[2].i8[8])
  {
    result = vandq_s8(a1[1], *a1);
    *a1 = result;
  }

  return result;
}

BOOL sub_100006AD0(unsigned int a1, unsigned int a2, int a3, const char *a4, void *a5)
{
  LODWORD(v7) = a3;
  v17 = xpc_dictionary_create(0, 0, 0);
  if (v17)
  {
    v18 = off_100010210[0];
    v19 = strnlen(off_100010210[0], 0x40uLL);
    v20 = strncmp(a4, v18, v19);
    if (a2 == 0x7FFFFFFF && (a1 & 0xFE) == 2)
    {
      v7 = a1;
      if (v20)
      {
        xpc_dictionary_set_string(v17, off_100010308[0], "unknown");
        v21 = off_100010320;
LABEL_10:
        xpc_dictionary_set_uint64(v17, *v21, v7);
        v22 = off_100010218;
LABEL_16:
        xpc_dictionary_set_value(a5, *v22, v17);
        xpc_release(v17);
        return v17 != 0;
      }

      xpc_dictionary_set_string(v17, off_1000102E8[0], "unknown");
      v23 = off_100010300[0];
      v25 = v17;
      v24 = a1;
    }

    else
    {
      if (v20)
      {
        xpc_dictionary_set_uint64(v17, off_100010310[0], a2);
        v21 = off_100010318;
        v7 = v7;
        xpc_dictionary_set_uint64(v17, off_100010318[0], v7);
        xpc_dictionary_set_uint64(v17, off_100010320[0], a1);
        v22 = off_100010218;
        if (a1 > 9 || ((1 << a1) & 0x302) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      xpc_dictionary_set_uint64(v17, off_1000102F0[0], a2);
      xpc_dictionary_set_uint64(v17, off_100010300[0], a1);
      v22 = off_100010210;
      if (a1 > 9 || ((1 << a1) & 0x302) == 0)
      {
        goto LABEL_16;
      }

      v23 = off_1000102F8[0];
      v24 = v7;
      v25 = v17;
    }

    xpc_dictionary_set_uint64(v25, v23, v24);
    v22 = off_100010210;
    goto LABEL_16;
  }

  sub_100000900("unable to create subrule dictionary for ugid %m", v10, v11, v12, v13, v14, v15, v16, v27);
  return v17 != 0;
}

uint64_t sub_100006D04(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, void *a7, char *a8)
{
  LODWORD(v11) = a5;
  LODWORD(v12) = a4;
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v24 = v16;
    if (*(a1 + 40))
    {
      if (*(a1 + 40) == 2)
      {
        v50 = 0u;
        v51 = 0u;
        *__str = 0u;
        v49 = 0u;
        v25 = *(a1 + 41);
        if (v25)
        {
          snprintf(__str, 0x40uLL, "%s:network", a1);
          v25 = *(a1 + 41);
          if ((v25 & 2) == 0)
          {
LABEL_6:
            if ((v25 & 4) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_31;
          }
        }

        else if ((*(a1 + 41) & 2) == 0)
        {
          goto LABEL_6;
        }

        snprintf(__str, 0x40uLL, "%s:broadcast", a1);
        v25 = *(a1 + 41);
        if ((v25 & 4) == 0)
        {
LABEL_7:
          if ((v25 & 8) == 0)
          {
LABEL_9:
            v26 = off_1000102B8[0];
            v27 = __str;
            goto LABEL_46;
          }

LABEL_8:
          snprintf(__str, 0x40uLL, "%s:0", a1);
          goto LABEL_9;
        }

LABEL_31:
        snprintf(__str, 0x40uLL, "%s:peer", a1);
        if ((*(a1 + 41) & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v32 = "not supported address type";
LABEL_34:
      sub_100000900(v32, v17, v18, v19, v20, v21, v22, v23, v46);
      v28 = 0;
LABEL_64:
      xpc_release(v24);
      return v28;
    }

    if (*a1 || *(a1 + 4) || *(a1 + 8) || *(a1 + 12) || *(a1 + 16) || *(a1 + 20) || *(a1 + 24) || *(a1 + 28))
    {
      v50 = 0u;
      v51 = 0u;
      *__str = 0u;
      v49 = 0u;
      if (!inet_ntop(a2, a1, __str, 0x40u))
      {
        v32 = "inet_ntop failed %m";
        goto LABEL_34;
      }

      if (!*(a1 + 16) && !*(a1 + 20) && !*(a1 + 24) && !*(a1 + 28))
      {
        goto LABEL_44;
      }

      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = *(a1 + 16 + v29);
        if (v31 != -1)
        {
          break;
        }

        v30 += 32;
        v29 += 4;
        if (v29 == 16)
        {
          v30 = 128;
          goto LABEL_39;
        }
      }

      v33 = bswap32(v31);
      if ((v33 & 0x80000000) != 0)
      {
        v34 = 0;
        do
        {
          v35 = v34-- + 30;
        }

        while (((v33 >> v35) & 1) != 0);
        v30 -= v34;
      }

LABEL_39:
      v36 = a2 == 2 ? 32 : 128;
      if (v30 == v36)
      {
        snprintf(string, 0x40uLL, "%s");
      }

      else
      {
LABEL_44:
        snprintf(string, 0x40uLL, "%s/%d");
      }

      v26 = off_1000102B0[0];
      v27 = string;
    }

    else
    {
      v26 = off_1000102A8[0];
      v27 = off_1000103A8;
    }

LABEL_46:
    xpc_dictionary_set_string(v24, v26, v27);
    if (a6 == 6)
    {
      v37 = "tcp";
    }

    else
    {
      v37 = "udp";
    }

    v38 = getservbyport(v12, v37);
    v39 = __rev16(v12);
    v40 = __rev16(v11);
    if (off_1000101F8[0] == a8)
    {
      v11 = v11;
    }

    else
    {
      v11 = v40;
    }

    if (off_1000101F8[0] == a8)
    {
      v12 = v12;
    }

    else
    {
      v12 = v39;
    }

    if (v38 && ((p_s_name = &v38->s_name, a3 - 2 < 6) || !a3))
    {
      xpc_dictionary_set_uint64(v24, off_1000102D8[0], a3);
      xpc_dictionary_set_string(v24, off_1000102C8[0], *p_s_name);
    }

    else if (v12)
    {
      if (a3 - 2 >= 6 && a3)
      {
        if (!v11 || v12 == v11 || a3 > 9 || ((1 << a3) & 0x302) == 0)
        {
          goto LABEL_63;
        }

        xpc_dictionary_set_uint64(v24, off_1000102D8[0], a3);
        xpc_dictionary_set_uint64(v24, off_1000102C8[0], v12);
        v42 = off_1000102D0[0];
        v43 = v24;
        v44 = v11;
      }

      else
      {
        xpc_dictionary_set_uint64(v24, off_1000102D8[0], a3);
        v42 = off_1000102C8[0];
        v43 = v24;
        v44 = v12;
      }

      xpc_dictionary_set_uint64(v43, v42, v44);
    }

LABEL_63:
    xpc_dictionary_set_value(a7, a8, v24);
    v28 = 1;
    goto LABEL_64;
  }

  sub_100000900("subrule xpc_dictionary_create failed %m", v17, v18, v19, v20, v21, v22, v23, v46);
  return 0;
}

uint64_t sub_10000716C(uint64_t a1, const char *a2)
{

  return strncmp(v2, a2, 0x40uLL);
}

BOOL sub_100007230(uint64_t a1, uint64_t a2, uint64_t a3, CFStringRef theString)
{
  result = 0;
  if (a1 && a2 && theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0);
    if (CStringPtr)
    {
      v16 = CStringPtr;
      bzero(v47, 0xC20uLL);
      if (*v16 != 47 || v16[1])
      {
        v24 = sub_100007184(v17, v18, "%s%s", v19, v20, v21, v22, v23, a1, a2, v45, __src[0]);
        snprintf(v24, v25, v26);
        strncpy(v51, __src, 0x40uLL);
      }

      snprintf(v49, 0x40uLL, "%s", v16);
      v50 = a3;
      v27 = ioctl(dword_1000103B0, 0xCC20441CuLL);
      if (v27)
      {
        v35 = *__error();
        v36 = sub_100000ACC(3424666652);
        sub_100000900("%s: %m", v37, v38, v39, v40, v41, v42, v43, v36);
        return v35 == 0;
      }

      else
      {
        if (!v48)
        {
          sub_1000048D0(v27, v28, v29, v30, v31, v32, v33, v34, v47);
        }

        return 1;
      }
    }

    else
    {
      sub_100000900("CFStringGetCStringPtr failed", v9, v10, v11, v12, v13, v14, v15, v44);
      return 0;
    }
  }

  return result;
}

CFStringRef sub_100007398(const char *a1, const char *a2, uint64_t a3, int a4, void *a5)
{
  v5 = 0;
  if (!a1 || !a2)
  {
    return v5;
  }

  snprintf(__str, 0x40uLL, "%s%s", "com.apple.", a1);
  v10 = snprintf(v122, 0x40uLL, "%s", a2);
  v18 = sub_100007184(v10, v11, v12, v13, v14, v15, v16, v17, a1, a2, v102, v105);
  snprintf(v18, v19, "%s%s", v97, v99);
  v100 = "/";
  v103 = v122;
  v98 = __str;
  v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%s%s");
  v5 = v20;
  if (!v20)
  {
    sub_100000900("CFStringCreateWithFormat failed in anchor create", v21, v22, v23, v24, v25, v26, v27, __str);
    return v5;
  }

  v28 = sub_10000716C(v20, off_1000100E0[0]);
  if (v28)
  {
    v29 = sub_10000716C(v28, kPFThreadBR[0]);
    v30 = v29;
    v31 = sub_10000716C(v29, off_1000100F8[0]);
    v32 = v31;
    v33 = sub_10000716C(v31, off_1000100E8[0]);
    v34 = v33 == 0;
    if (v32 && v30)
    {
      v35 = 0;
      v36 = 0;
      v34 = 0;
      if (v33)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v30)
    {
      v36 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v34 = sub_10000716C(v28, off_1000100E8[0]) == 0;
  }

  sub_100007160();
  if (sub_100003684(v37, v38, v39, v40, 2u, a5))
  {
LABEL_21:
    CFRelease(v5);
    sub_100003564(a1, a2, a5, v69, v70, v71, v72, v73, v98);
    return 0;
  }

  v36 = 1;
LABEL_15:
  sub_100007160();
  if (sub_100003684(v41, v42, v43, v44, 4u, v45))
  {
    goto LABEL_21;
  }

  v35 = 1;
  if (!v34)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_100007160();
  if (sub_100003684(v46, v47, v48, v49, 5u, v50))
  {
    goto LABEL_21;
  }

  v34 = 1;
LABEL_19:
  sub_100007160();
  if (sub_100003684(v51, v52, v53, v54, 0, v55))
  {
    goto LABEL_21;
  }

  sub_100007160();
  v61 = sub_100003684(v56, v57, v58, v59, 1u, v60);
  if (v61)
  {
    goto LABEL_21;
  }

  if (v36)
  {
    v75 = sub_100007150(0, v62, v63, v64, v65, v66, v67, v68, __str, "/", v122, v106, v108, v110, v112, v114, v116, v118, v120, v122[0]);
    v61 = sub_100003684(v75, v76, v77, a4, 2u, a5 + 5);
    if (v61)
    {
      goto LABEL_21;
    }
  }

  if (v35)
  {
    v78 = sub_100007150(v61, v62, v63, v64, v65, v66, v67, v68, v98, v100, v103, v106, v108, v110, v112, v114, v116, v118, v120, v122[0]);
    v61 = sub_100003684(v78, v79, v80, a4, 4u, a5 + 6);
    if (v61)
    {
      goto LABEL_21;
    }
  }

  if (v34)
  {
    v81 = sub_100007150(v61, v62, v63, v64, v65, v66, v67, v68, v98, v100, v103, v106, v108, v110, v112, v114, v116, v118, v120, v122[0]);
    v61 = sub_100003684(v81, v82, v83, a4, 5u, a5 + 7);
    if (v61)
    {
      goto LABEL_21;
    }
  }

  v84 = sub_100007150(v61, v62, v63, v64, v65, v66, v67, v68, v98, v100, v103, v106, v108, v110, v112, v114, v116, v118, v120, v122[0]);
  if (sub_100003684(v84, v85, v86, a4, 0, a5 + 8))
  {
    goto LABEL_21;
  }

  v94 = sub_100007150(0, v87, v88, v89, v90, v91, v92, v93, v98, v101, v104, v107, v109, v111, v113, v115, v117, v119, v121, v122[0]);
  if (sub_100003684(v94, v95, v96, a4, 1u, a5 + 9))
  {
    goto LABEL_21;
  }

  return v5;
}

BOOL sub_1000076B0()
{
  v3 = __chkstk_darwin();
  result = 1;
  if (v0)
  {
    if (v3)
    {
      if (v1)
      {
        v5 = v2;
        if (v2)
        {
          v6 = v0;
          if (CFStringGetCStringPtr(v1, 0))
          {
            snprintf(__str, 0x40uLL, "%s%s", v3, v6);
            memcpy(__dst, &unk_100008370, sizeof(__dst));
            v14 = &__dst[4];
            v15 = 8;
            do
            {
              if (v15 != 2)
              {
                __strlcpy_chk();
              }

              v14 += 1032;
              --v15;
            }

            while (v15);
            if (!sub_10000389C(0xC0104451uLL, __dst))
            {
              count = xpc_array_get_count(v5);
              if (count < 1)
              {
                return sub_10000389C(0xC0104452uLL, __dst) == 0;
              }

              v17 = count;
              v18 = 0;
              while (1)
              {
                xpc_array_get_value(v5, v18);
                if (sub_10000391C())
                {
                  break;
                }

                if (v17 == ++v18)
                {
                  return sub_10000389C(0xC0104452uLL, __dst) == 0;
                }
              }

              sub_100000900("rule %d failed during commit", v19, v20, v21, v22, v23, v24, v25, v18);
            }

            sub_10000389C(0xC0104453uLL, __dst);
          }

          else
          {
            sub_100000900("CFStringGetCStringPtr failed", v7, v8, v9, v10, v11, v12, v13, v26);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_100007874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2)
  {
    v10 = sub_100007184(0, a2, "%s%s", a4, a5, a6, a7, a8, a1, a2, v30, __src[0]);
    snprintf(v10, v11, v12);
    bzero(v32, 0xC20uLL);
    strncpy(v34, __src, 0x40uLL);
    v13 = ioctl(dword_1000103B0, 0xCC20441CuLL);
    if (v13)
    {
      v21 = *__error();
      v22 = sub_100000ACC(3424666652);
      sub_100000900("%s: %m", v23, v24, v25, v26, v27, v28, v29, v22);
      return v21 == 0;
    }

    else
    {
      if (!v33)
      {
        sub_1000048D0(v13, v14, v15, v16, v17, v18, v19, v20, v32);
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_100007964(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2 && a3 && a5)
  {
    v11 = sub_100007184(0, a2, "%s%s", a4, a5, a6, a7, a8, a1, a2, v22, v23);
    snprintf(v11, v12, v13);
    if (CFStringGetCStringPtr(a3, 0))
    {
      return sub_10000391C() == 0;
    }

    else
    {
      sub_100000900("CFStringGetCStringPtr failed", v14, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100007A40(const char *a1, const char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    bzero(v28, 0xD8uLL);
    snprintf(v29, 0x40uLL, "%s%s", a1, a2);
    sub_100000900("clearing states for %s", v5, v6, v7, v8, v9, v10, v11, v29);
    if (ioctl(dword_1000103B0, 0xC0D84412uLL, v28) && (v19 = *__error(), v20 = sub_100000ACC(3235398674), sub_100000900("%s: %m", v21, v22, v23, v24, v25, v26, v27, v20), v19))
    {
      return 0;
    }

    else
    {
      sub_100000988("pf states cleared for %s(%s)", v12, v13, v14, v15, v16, v17, v18, a1);
      return 1;
    }
  }

  return result;
}