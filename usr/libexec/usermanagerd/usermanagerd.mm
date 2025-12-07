uint64_t sub_1000011A8(int a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  if ((byte_1000EB601 & 1) == 0)
  {
    v1 = 2;
  }

  if (byte_1000EB600)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000011DC(uint64_t a1)
{
  v2 = sub_1000013A0(qword_1000EB2E8);

  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = sub_1000013AC(qword_1000EB608);
  v14 = 0;
  v4 = [v3 infoForProcessWithPID:a1 error:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = sub_100001440(v4);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v15[0] = 67109378;
        v15[1] = a1;
        v16 = 2112;
        v17 = v5;
        v10 = _os_log_send_and_compose_impl(v9, &v13, 0, 0, &_mh_execute_header, v7, 0, "Failed to look up persona for pid %u: %@", v15, 18);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v6 = 0xFFFFFFFFLL;
  }

  return v6;
}

uint64_t sub_1000013A0(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_1000013AC(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_100001434(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_100001440(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

__CFString *sub_100001458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000013A0(qword_1000EB2E8);

  if (v4)
  {
    v5 = sub_1000013AC(qword_1000EB608);
    v18 = 0;
    v6 = [v5 infoForPersonaWithID:a3 error:&v18];
    v7 = v18;

    if (v6)
    {
      if (sub_100001660(v6) == -1)
      {
        v10 = @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF";
      }

      else
      {
        v8 = qword_1000EB2E0;
        v9 = sub_100001660(v6);
        v10 = sub_10008A4DC(v8, v9);
      }
    }

    else
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v11 = qword_1000EB328;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = 0;
        v12 = sub_1000011A8(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v19[0] = 67109378;
          v19[1] = a3;
          v20 = 2112;
          v21 = v7;
          v14 = _os_log_send_and_compose_impl(v13, &v17, 0, 0, &_mh_execute_header, v11, 16, "Failed to look up user UID for current persona %u: failed to retrieve kernel persona: %@", v19, 18);
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100001660(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL sub_100001748(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1000017A4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_1000017C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

id sub_100001824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return a12;
}

uint64_t sub_10000183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void *sub_100001884()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t sub_100001950(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

void sub_100001998()
{
  *(v1 - 180) = v0;
  *(v1 - 176) = v0;
  *(v1 - 168) = v0;
  *(v1 - 188) = v0;
  *(v1 - 184) = v0;
}

void sub_100001A18()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t sub_100001AF4(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v8 = a3;
  v11 = a4;
  v62 = 0;
  if (!a5)
  {
    sub_100089E78(v11, v12);
LABEL_99:
    sub_100089E64();
LABEL_15:
    v18 = v6[101];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_42:
      v34 = 2;
      goto LABEL_46;
    }

    v67 = 0;
    v23 = sub_1000011A8(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      *v63 = 138543618;
      *&v63[4] = a1;
      *&v63[12] = 2114;
      *v64 = v5;
      v25 = _os_log_send_and_compose_impl(v24, &v67, 0, 0, &_mh_execute_header, v18, 16, "Failed to set up voucher for persona %{public}@: no personas found for user %{public}@", v63, 22);
      goto LABEL_29;
    }

LABEL_40:
    v28 = 0;
LABEL_41:
    free(v28);
    goto LABEL_42;
  }

  v5 = v11;
  v13 = sub_100056BC8(qword_1000EB2E8, v11);
  v6 = &off_1000EB000;
  if (!v13)
  {
    if (qword_1000EB330 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_99;
  }

  v14 = v13;
  v15 = sub_100056854(qword_1000EB2E8, a1, v13);
  CFRelease(v14);
  if (!v15)
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v18 = qword_1000EB328;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    v67 = 0;
    v26 = sub_1000011A8(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      *v63 = 138543618;
      *&v63[4] = a1;
      *&v63[12] = 2114;
      *v64 = v5;
      v25 = _os_log_send_and_compose_impl(v27, &v67, 0, 0, &_mh_execute_header, v18, 16, "Failed to set up voucher for persona %{public}@: persona not found on user %{public}@", v63, 22);
LABEL_29:
      v28 = v25;
      if (v25)
      {
        sub_100002A8C(v25);
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v16 = sub_1000023E8(v15, kUMUserPersonaIDKey);
  v17 = sub_100002454(v15, kUMUserPersonaDisabledKey);
  CFRelease(v15);
  if (v17)
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v18 = qword_1000EB328;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v67 = 0;
      v19 = sub_1000011A8(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        *v63 = 138543362;
        *&v63[4] = a1;
        v21 = _os_log_send_and_compose_impl(v20, &v67, 0, 0, &_mh_execute_header, v18, 0, "Failed to adopt persona %{public}@: persona is disabled", v63, 12);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v34 = 36;
  }

  else
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v29 = qword_1000EB328;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v67 = 0;
      v30 = sub_1000011A8(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        *v63 = 138543874;
        *&v63[4] = a1;
        *&v63[12] = 1024;
        *v64 = v16;
        *&v64[4] = 1024;
        *&v64[6] = a2;
        v32 = _os_log_send_and_compose_impl(v31, &v67, 0, 0, &_mh_execute_header, v29, 0, "Adopting persona %{public}@ (%d) for PID %d", v63, 24);
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v36 = sub_1000024A8(qword_1000EB608);
    v61 = 0;
    v37 = [v36 uniquePIDForPID:a2 error:&v61];
    v18 = v61;

    if (v37)
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v38 = qword_1000EB328;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v67 = 0;
        v39 = sub_1000011A8(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          *v63 = 67109632;
          *&v63[4] = v16;
          *&v63[8] = 1024;
          *&v63[10] = v8;
          *v64 = 2048;
          *&v64[2] = v37;
          v41 = _os_log_send_and_compose_impl(v40, &v67, 0, 0, &_mh_execute_header, v38, 2, "mach_voucher_persona_for_originator(%d, %d, %lld)", v63, 24, v61);
          v42 = v41;
          if (v41)
          {
            sub_100002A8C(v41);
          }
        }

        else
        {
          v42 = 0;
        }

        free(v42);
      }

      v48 = mach_voucher_persona_for_originator();
      if (v48)
      {
        v49 = v48;
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v50 = qword_1000EB328;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v67 = 0;
          v51 = sub_1000011A8(0);
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
            *v63 = 67109888;
            *&v63[4] = v16;
            *&v63[8] = 1024;
            *&v63[10] = v8;
            *v64 = 2048;
            *&v64[2] = v37;
            v65 = 1024;
            v66 = v49;
            LODWORD(v60) = 30;
            v53 = _os_log_send_and_compose_impl(v52, &v67, 0, 0, &_mh_execute_header, v50, 16, "mach_voucher_persona_for_originator(%d, %d, %lld) failed: %{mach.errno}d", v63, v60);
            v54 = v53;
            if (v53)
            {
              sub_100002A8C(v53);
            }
          }

          else
          {
            v54 = 0;
          }

          free(v54);
        }

        v34 = 22;
      }

      else
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v55 = qword_1000EB328;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 0;
          v56 = sub_1000011A8(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v56;
          }

          else
          {
            v57 = v56 & 0xFFFFFFFE;
          }

          if (v57)
          {
            LODWORD(v67) = 67109120;
            HIDWORD(v67) = v62;
            v58 = _os_log_send_and_compose_impl(v57, v63, 0, 0, &_mh_execute_header, v55, 0, "mach_voucher_persona_for_originator successful; replacement port is: %d", &v67);
            v59 = v58;
            if (v58)
            {
              sub_100002A8C(v58);
            }
          }

          else
          {
            v59 = 0;
          }

          free(v59);
        }

        v34 = 0;
        *a5 = v62;
      }
    }

    else
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v43 = qword_1000EB328;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v67 = 0;
        v44 = sub_1000011A8(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 & 0xFFFFFFFE;
        }

        if (v45)
        {
          *v63 = 138543618;
          *&v63[4] = a1;
          *&v63[12] = 1024;
          *v64 = a2;
          LODWORD(v60) = 18;
          v46 = _os_log_send_and_compose_impl(v45, &v67, 0, 0, &_mh_execute_header, v43, 16, "Failed to adopt persona %{public}@ for pid %d: failed to get unique pid", v63, v60);
          v47 = v46;
          if (v46)
          {
            sub_100002A8C(v46);
          }
        }

        else
        {
          v47 = 0;
        }

        free(v47);
      }

      v34 = [v18 code];
    }
  }

LABEL_46:

  return v34;
}

uint64_t sub_10000230C(int a1)
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

uint64_t sub_100002330(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t sub_100002348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return sub_10007BAE4(a2, a3, &a11);
}

uint64_t sub_1000023AC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_1000023E8(const __CFDictionary *a1, const void *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

const __CFBoolean *sub_100002454(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000024A8(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

const void *sub_1000024C0(const __CFDictionary *a1, _DWORD *a2)
{
  v3 = sub_100002700(a1);
  if (!v3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v18[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, v19, 0, 0, &_mh_execute_header, v10, 0, "getUserSessionKeybagData: could not find the requested session", v18, 2);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    if (a2)
    {
      v16 = 0;
      *a2 = 2;
      return v16;
    }

    return 0;
  }

  v4 = v3;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      *v19 = 138412290;
      *&v19[4] = v4;
      v8 = _os_log_send_and_compose_impl(v7, v18, 0, 0, &_mh_execute_header, v5, 0, "getUserSessionKeybagData: found session %@", v19, 12);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (!CFDictionaryContainsKey(v4, kUMUserSessionKeybagOpaqueDataKey))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, kUMUserSessionKeybagOpaqueDataKey);
  v16 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v16;
}

CFTypeRef sub_100002700(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, kUMUserSessionIDKey))
  {
    v2 = sub_1000023E8(a1, kUMUserSessionIDKey);
    if (v2 != -1)
    {
      sub_10008A2F4(qword_1000EB2E0, v2);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v18 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v17) = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v18, 0, 0, &_mh_execute_header, v5, 0, "Error: USESSION_SET_UID was set but no UserSessionID was given!", &v17, 2, v17);
      goto LABEL_47;
    }

LABEL_49:
    v16 = 0;
LABEL_50:
    free(v16);
LABEL_51:

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionAlternateDSIDKey))
  {
    v4 = sub_100079590(a1, kUMUserSessionAlternateDSIDKey);
    if (v4)
    {
      sub_10008A05C(qword_1000EB2E0, v4);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v18 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_25:
    LOWORD(v17) = 0;
    v8 = _os_log_send_and_compose_impl(v11, &v18, 0, 0, &_mh_execute_header, v5, 0, "Error: USESESSION_SET_UUID was set but no UserSessionUUID was given!", &v17, 2, v17);
    goto LABEL_47;
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionUUIDKey))
  {
    v9 = sub_100079590(a1, kUMUserSessionUUIDKey);
    if (v9)
    {
      sub_10008A1A8(qword_1000EB2E0, v9);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v18 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v13;
    }

    else
    {
      v11 = v13 & 0xFFFFFFFE;
    }

    if (!v11)
    {
      goto LABEL_49;
    }

    goto LABEL_25;
  }

  if (!CFDictionaryContainsKey(a1, kUMUserSessionNameKey))
  {
    return 0;
  }

  v12 = sub_100079590(a1, kUMUserSessionNameKey);
  if (!v12)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v18 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (!v15)
    {
      goto LABEL_49;
    }

    LOWORD(v17) = 0;
    v8 = _os_log_send_and_compose_impl(v15, &v18, 0, 0, &_mh_execute_header, v5, 0, "Error: USESSION_SET_NAME was set but no UserSessionName was given!", &v17, 2, v17);
LABEL_47:
    v16 = v8;
    if (v8)
    {
      sub_100002A8C(v8);
    }

    goto LABEL_50;
  }

  return sub_100018808(v12);
}

void sub_100002A8C(const char *a1)
{
  if (byte_1000EB600 == 1)
  {
    fprintf(__stdoutp, "UMD_INIT: %s\n", a1);
  }

  v2 = qword_1000EB368;

  sub_100095D30(v2, a1);
}

uint64_t sub_100002AFC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1000013A0(*(result + 24));
    v3 = [v2 sizeOfFileWithDescriptor:*(v1 + 12) error:0];

    return (v3 & 0x8000000000000000) == 0 && v3 >= *(v1 + 48);
  }

  return result;
}

uint64_t sub_100002B7C()
{

  return sub_1000011A8(1);
}

id sub_100002BC4()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t sub_100002BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

id sub_100003034(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000EB228;
  qword_1000EB228 = v1;

  v3 = qword_1000EB228;

  return [v3 setSwitchState:0];
}

void sub_1000030C4(id a1)
{
  qword_1000EB238 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDServer];

  _objc_release_x1();
}

void sub_100003150(id a1)
{
  qword_1000EB248 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDKeybagd];

  _objc_release_x1();
}

void sub_100003460(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v7 = [NSNumber numberWithInt:v2];
  v3 = [*(a1 + 40) pidsToClients];
  v4 = [v3 objectForKeyedSubscript:v7];

  if (v4)
  {
    NSLog(@"We already have a client for pid: %d", v2);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) pidsToClients];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_1000035C8(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = [*(a1 + 40) _clientForPID:v2];

  if (v3)
  {
    if ([*(a1 + 32) hasUserSwitchTasks])
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v4 = qword_1000EB268;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        LODWORD(v5) = sub_1000011A8(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v5;
        }

        else
        {
          v5 = v5 & 0xFFFFFFFE;
        }

        if (v5)
        {
          v6 = *(a1 + 32);
          v7 = v4;
          v8 = [v6 userSwitchTasks];
          v13 = 138412546;
          v14 = v8;
          v15 = 1024;
          v16 = v2;
          v9 = _os_log_send_and_compose_impl(v5, &v12, 0, 0, &_mh_execute_header, v7, 0, "Removing removeUserSwitch Tasks:%@ as Client Pid:%d is exiting", &v13, 18);

          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [*(a1 + 40) pidsToClients];
    v11 = [NSNumber numberWithInt:v2];
    [v10 setObject:0 forKeyedSubscript:v11];

    if ([*(a1 + 40) switchState] == 1)
    {
      [*(a1 + 40) _checkIfWeShouldSwitchUser:dword_1000EB5B8 == 3];
    }
  }
}

void sub_10000386C(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v7 = [NSNumber numberWithInt:v2];
  v3 = [*(a1 + 40) pidsToClients];
  v4 = [v3 objectForKeyedSubscript:v7];

  if (v4)
  {
    NSLog(@"We already have a client for pid: %d", v2);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) pidsToClients];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_1000039D4(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = [*(a1 + 40) _clientForPID:v2];

  if (v3)
  {
    v5 = [*(a1 + 40) pidsToClients];
    v4 = [NSNumber numberWithInt:v2];
    [v5 setObject:0 forKeyedSubscript:v4];
  }
}

void sub_100003FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v18) = 67109378;
      HIDWORD(v18) = v8;
      v19 = 2114;
      v20 = v4;
      v9 = _os_log_send_and_compose_impl(v7, &v21, 0, 0, &_mh_execute_header, v5, 0, "UserSwitch Stake Holder Registration for pid:(%d,%{public}@)", &v18, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (!v2)
  {
    goto LABEL_29;
  }

  if ([*(a1 + 32) switchState])
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 40) + 16))();
  if (!v11)
  {
    [v2 setStakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 48);
        LODWORD(v21) = 67109120;
        HIDWORD(v21) = v15;
        v16 = _os_log_send_and_compose_impl(v14, &v18, 0, 0, &_mh_execute_header, v12, 0, "UserSwitch Stake Holder registration(pid:%d) - DONE", &v21);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

LABEL_29:
    v11 = 0;
  }
}

void sub_100004340(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 48) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 48);
        LODWORD(v24) = 67109378;
        HIDWORD(v24) = v8;
        v25 = 2114;
        v26 = v4;
        v9 = _os_log_send_and_compose_impl(v7, &v27, 0, 0, &_mh_execute_header, v5, 0, "Critical User Switch Stake Holder registration for pid:(%d,%{public}@)", &v24, 18);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (![*(a1 + 32) switchState] || dword_1000EB5B8 == 3)
    {
      [v2 setCriticalStakeHolder:1];
      [v2 setSwitchStakeHolderKind:1];
      v17 = 0;
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        LODWORD(v12) = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v12;
        }

        else
        {
          v12 = v12 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = v11;
          v15 = [v13 switchState];
          LODWORD(v27) = 67109120;
          HIDWORD(v27) = v15;
          v16 = _os_log_send_and_compose_impl(v12, &v24, 0, 0, &_mh_execute_header, v14, 0, "FAILED TO register Critical User Switch Stake Holder: Switchstate:%d", &v27);

          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
    if (!v17)
    {
      [v2 setStakeholderIsRegistered:1];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v18 = qword_1000EB268;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = *(a1 + 48);
          LODWORD(v27) = 67109120;
          HIDWORD(v27) = v21;
          v22 = _os_log_send_and_compose_impl(v20, &v24, 0, 0, &_mh_execute_header, v18, 0, "Critical UserSwitch Stake Holder registration(pid:%d)-DONE", &v27);
          v23 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }
    }
  }
}

void sub_1000047D0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v22) = 67109378;
      HIDWORD(v22) = v8;
      v23 = 2114;
      v24 = v4;
      v9 = _os_log_send_and_compose_impl(v7, &v25, 0, 0, &_mh_execute_header, v5, 0, "BubblePop Stake Holder registration started for pid:(%d,%{public}@)", &v22, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if ([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.bubblepop"])
  {
    if (![*(a1 + 32) switchState])
    {
      v12 = 0;
      goto LABEL_18;
    }

    v11 = 16;
  }

  else
  {
    v11 = 1;
  }

  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
LABEL_18:
  (*(*(a1 + 40) + 16))();
  if (!v12)
  {
    [v2 setStakeholderIsRegistered:1];
    [v2 setBubblePopstakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:3];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v14 = sub_1000011A8(1);
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
        v16 = *(a1 + 48);
        LODWORD(v25) = 67109120;
        HIDWORD(v25) = v16;
        v17 = _os_log_send_and_compose_impl(v15, &v22, 0, 0, &_mh_execute_header, v13, 0, "BubblePop Stake Holder registration(pid:%d)", &v25);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = [*(a1 + 32) bubbleStakeHolder];

    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 bubbleStakeHolder];
      [v21 bubbleShouldPop];
    }

    else
    {
      [v20 _broadcastBubbleDidPop];
    }
  }

LABEL_35:
}

void sub_100004E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        LODWORD(v31) = 67109634;
        HIDWORD(v31) = v8;
        v32 = 2114;
        v33 = v4;
        v34 = 2114;
        v35 = v9;
        v10 = _os_log_send_and_compose_impl(v7, &v36, 0, 0, &_mh_execute_header, v5, 0, "Registering Sync Stake Holder:(%d, %{public}@) machservice is %{public}@", &v31, 28);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.sync"] & 1) == 0)
    {
      v12 = NSPOSIXErrorDomain;
      v13 = 1;
      goto LABEL_17;
    }

    if ([*(a1 + 32) switchState])
    {
LABEL_15:
      v12 = NSPOSIXErrorDomain;
      v13 = 16;
LABEL_17:
      v14 = [NSError errorWithDomain:v12 code:v13 userInfo:0];
LABEL_18:
      (*(*(a1 + 48) + 16))();

      goto LABEL_19;
    }

    v15 = sub_100088F2C(qword_1000EB608);
    if (sub_100089A48(v15))
    {
      v16 = sub_100088F2C(qword_1000EB608);
      if (sub_100089AC4(v16) == 502)
      {

LABEL_34:
        [v2 setMachServiceName:*(a1 + 40)];
        sub_100033AB0(*(a1 + 40));
        [v2 setStakeholderIsRegistered:1];
        [v2 setSwitchStakeHolderKind:2];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v24 = qword_1000EB268;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v25 = sub_1000011A8(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
          }

          else
          {
            v26 = v25 & 0xFFFFFFFE;
          }

          if (v26)
          {
            v27 = *(a1 + 56);
            LODWORD(v36) = 67109120;
            HIDWORD(v36) = v27;
            v28 = _os_log_send_and_compose_impl(v26, &v31, 0, 0, &_mh_execute_header, v24, 0, "Sync Stake Holder registration done(pid:%d)", &v36);
            v29 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }

        v14 = 0;
        goto LABEL_18;
      }

      v23 = [*(a1 + 32) inLoginSession];

      if ((v23 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = [*(a1 + 32) inLoginSession];

      if (!v17)
      {
        goto LABEL_34;
      }
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(v36) = 0;
        LODWORD(v30) = 2;
        v21 = _os_log_send_and_compose_impl(v20, &v31, 0, 0, &_mh_execute_header, v18, 0, "Denying registration since user is in Login Session", &v36, v30);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    goto LABEL_15;
  }

LABEL_19:
}

void sub_100005328(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v36) = 67109378;
      HIDWORD(v36) = v8;
      v37 = 2114;
      v38 = v4;
      v9 = _os_log_send_and_compose_impl(v7, &v39, 0, 0, &_mh_execute_header, v5, 0, "Unregister Stakeholder (Pid:%d,%{public}@)", &v36, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (v2)
  {
    v11 = [v2 machServiceName];

    if (v11)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v12 = qword_1000EB268;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          LOWORD(v39) = 0;
          LODWORD(v35) = 2;
          v15 = _os_log_send_and_compose_impl(v14, &v36, 0, 0, &_mh_execute_header, v12, 0, "Unregister Sync Stake holder", &v39, v35);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      if ((*(a1 + 40) | 2) == 2)
      {
        v17 = [v2 machServiceName];
        sub_1000344A8(v17);

        v11 = 0;
      }

      else
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v18 = qword_1000EB268;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 0;
          v19 = sub_1000011A8(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            LOWORD(v39) = 0;
            LODWORD(v35) = 2;
            v21 = _os_log_send_and_compose_impl(v20, &v36, 0, 0, &_mh_execute_header, v18, 0, "Unregister  Switch Stake holder", &v39, v35);
            v22 = v21;
            if (v21)
            {
              sub_100002A8C(v21);
            }
          }

          else
          {
            v22 = 0;
          }

          free(v22);
        }

        v23 = [v2 machServiceName];
        sub_100033AB0(v23);

        v11 = [*(a1 + 32) fetchUserSyncTaskList];
        if ([v11 count])
        {
          sub_100034A90(v11);
        }
      }
    }

    if ([v2 bubblePopstakeholderIsRegistered])
    {
      sub_10001A30C();
    }

    [v2 setStakeholderIsRegistered:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v39) = 0;
        LODWORD(v35) = 2;
        v27 = _os_log_send_and_compose_impl(v26, &v36, 0, 0, &_mh_execute_header, v24, 0, "checking if we need to switch(unregister)-> _checkIfWeShouldSwitchUser..", &v39, v35);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    [*(a1 + 32) _checkIfWeShouldSwitchUser:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = *(a1 + 48);
        LODWORD(v39) = 67109120;
        HIDWORD(v39) = v32;
        v33 = _os_log_send_and_compose_impl(v31, &v36, 0, 0, &_mh_execute_header, v29, 0, "Unregister Stakeholder(pid:%d)-DONE", &v39);
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }
  }
}

void sub_1000058A8(id a1)
{
  v1 = qword_1000EB258;
  qword_1000EB258 = &off_1000E15B8;
}

void sub_100005E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Block_object_dispose((v27 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005EAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005EC4(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 104)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = &off_1000EB000;
  v4 = qword_1000EB268;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v77 = 0;
    v5 = sub_1000011A8(1);
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
      LOWORD(v75[0]) = 0;
      v7 = _os_log_send_and_compose_impl(v6, &v77, 0, 0, &_mh_execute_header, v4, 0, "in SwitchtoUser", v75, 2);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (([v2 hasEntitlement:@"com.apple.mkb.usersession.switch"] & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if ([*(a1 + 32) inLogoutProcess])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v77 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        LOWORD(v75[0]) = 0;
        LODWORD(v70) = 2;
        v15 = _os_log_send_and_compose_impl(v14, &v77, 0, 0, &_mh_execute_header, v12, 0, "Already in SwitchtoUser, ignore current one", v75, v70);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    goto LABEL_38;
  }

  if (!sub_10001A8EC())
  {
LABEL_38:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v75[0] = 0;
      LODWORD(v26) = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v26;
      }

      else
      {
        v26 = v26 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = v25;
        v28 = sub_10001B570();
        LODWORD(v77) = 67109376;
        HIDWORD(v77) = v28;
        v78 = 1024;
        v79 = dword_1000EB5B8;
        v29 = _os_log_send_and_compose_impl(v26, v75, 0, 0, &_mh_execute_header, v27, 0, "SwitchUser: foregorundID:%d, sessionType:%d", &v77, 14);

        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v30 = sub_10001B570();
    v31 = sub_1000023E8(*(a1 + 40), kUMUserSessionIDKey);
    v32 = *(a1 + 64);
    if (v30 != v31 || dword_1000EB5B8 == 1)
    {
      (*(v32 + 16))(v32, *(*(*(a1 + 72) + 8) + 40));
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        if (*(a1 + 48))
        {
          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v33 = qword_1000EB268;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v77 = 0;
            v34 = sub_1000011A8(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
            }

            else
            {
              v35 = v34 & 0xFFFFFFFE;
            }

            if (v35)
            {
              LOWORD(v75[0]) = 0;
              LODWORD(v70) = 2;
              v36 = _os_log_send_and_compose_impl(v35, &v77, 0, 0, &_mh_execute_header, v33, 0, "Need to set user preferences", v75, v70);
              v37 = v36;
              if (v36)
              {
                sub_100002A8C(v36);
              }
            }

            else
            {
              v37 = 0;
            }

            free(v37);
          }

          v41 = objc_opt_new();
          v42 = [*(a1 + 32) _allowlistedPreferencesKeys];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v43 = *(a1 + 48);
          v44 = [v43 countByEnumeratingWithState:&v71 objects:v76 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v72;
            do
            {
              for (i = 0; i != v45; i = i + 1)
              {
                if (*v72 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v71 + 1) + 8 * i);
                if ([v42 containsObject:v48])
                {
                  v49 = [*(a1 + 48) objectForKeyedSubscript:v48];
                  [v41 setObject:v49 forKeyedSubscript:v48];
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v71 objects:v76 count:16];
            }

            while (v45);
          }

          if ([v41 count])
          {
            v50 = sub_10001FF2C(*(a1 + 40));
            if (v50)
            {
              _CFPreferencesWriteUserPreferencesWithCorrectOwner();
              CFPreferencesSetMultiple(v41, 0, kCFPreferencesAnyApplication, v50, kCFPreferencesAnyHost);
              v3 = &off_1000EB000;
            }

            else
            {
              v3 = &off_1000EB000;
              if (qword_1000EB270 != -1)
              {
                sub_100088D28();
              }

              v55 = qword_1000EB268;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v77 = 0;
                v56 = sub_1000011A8(1);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v56;
                }

                else
                {
                  v57 = v56 & 0xFFFFFFFE;
                }

                if (v57)
                {
                  LOWORD(v75[0]) = 0;
                  LODWORD(v70) = 2;
                  v58 = _os_log_send_and_compose_impl(v57, &v77, 0, 0, &_mh_execute_header, v55, 0, "Could not get name for user. Not setting preferences.", v75, v70, v71);
                  v59 = v58;
                  if (v58)
                  {
                    sub_100002A8C(v58);
                  }
                }

                else
                {
                  v59 = 0;
                }

                free(v59);
              }
            }
          }

          else
          {
            v3 = &off_1000EB000;
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v50 = qword_1000EB268;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v77 = 0;
              v51 = sub_1000011A8(1);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v52 = v51;
              }

              else
              {
                v52 = v51 & 0xFFFFFFFE;
              }

              if (v52)
              {
                LOWORD(v75[0]) = 0;
                LODWORD(v70) = 2;
                v53 = _os_log_send_and_compose_impl(v52, &v77, 0, 0, &_mh_execute_header, v50, 0, "None of the preferences were allowed. Not setting preferences.", v75, v70, v71);
                v54 = v53;
                if (v53)
                {
                  sub_100002A8C(v53);
                }
              }

              else
              {
                v54 = 0;
              }

              free(v54);
            }
          }
        }

        v60 = [NSMutableData dataWithBytes:*(*(*(a1 + 88) + 8) + 24) length:*(a1 + 96)];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v61 = v3[77];
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 0;
          v62 = sub_1000011A8(1);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v63 = v62;
          }

          else
          {
            v63 = v62 & 0xFFFFFFFE;
          }

          if (v63)
          {
            LOWORD(v75[0]) = 0;
            LODWORD(v70) = 2;
            v64 = _os_log_send_and_compose_impl(v63, &v77, 0, 0, &_mh_execute_header, v61, 0, "Moving Along with SwitchtoUser", v75, v70);
            v65 = v64;
            if (v64)
            {
              sub_100002A8C(v64);
            }
          }

          else
          {
            v65 = 0;
          }

          free(v65);
        }

        sub_10002E2B0(*(a1 + 40), v60, *(a1 + 56));
      }
    }

    else
    {
      (*(v32 + 16))(v32, 0);
    }

    goto LABEL_116;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v17 = qword_1000EB278;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v77 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(v75[0]) = 0;
      LODWORD(v70) = 2;
      v20 = _os_log_send_and_compose_impl(v19, &v77, 0, 0, &_mh_execute_header, v17, 16, "Failed to switch user: user switch already in progress", v75, v70);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
  v39 = *(*(a1 + 72) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;

LABEL_116:
  v66 = *(*(*(a1 + 80) + 8) + 24);
  if (v66)
  {
    v67 = mach_task_self_;
    v68 = vm_page_size;
    if (vm_page_size >= *(a1 + 96))
    {
      v69 = *(a1 + 96);
    }

    else
    {
      v69 = vm_page_size;
    }

    memset_s(v66, v69, 0, v69);
    vm_deallocate(v67, v66, v68);
  }
}

void sub_100006974(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v30[0]) = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v29, 0, 0, &_mh_execute_header, v3, 0, "in SwitchtoLoginUser", v30, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  if ([*(a1 + 32) inLogoutProcess] && dword_1000EB5B8 != 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v9 = qword_1000EB268;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v10 = sub_1000011A8(1);
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
        v30[0] = 67109120;
        v30[1] = dword_1000EB5B8;
        v12 = _os_log_send_and_compose_impl(v11, &v29, 0, 0, &_mh_execute_header, v9, 0, "Already in SwitchtoUser, ignore current one: session type is:%d", v30);
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];

    v8 = v19;
    goto LABEL_39;
  }

  if (!sub_10001A8EC())
  {
LABEL_39:
    v20 = sub_10001B570();
    v21 = *(*(a1 + 40) + 16);
    if (v20 == 502)
    {
      v21();
    }

    else
    {
      v21();
      if (!v8)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v22 = qword_1000EB268;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 0;
          v23 = sub_1000011A8(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            LOWORD(v30[0]) = 0;
            LODWORD(v28) = 2;
            v25 = _os_log_send_and_compose_impl(v24, &v29, 0, 0, &_mh_execute_header, v22, 0, "Moving Along with SwitchtoUser", v30, v28);
            v26 = v25;
            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {
            v26 = 0;
          }

          free(v26);
        }

        sub_10002E8EC();
        v8 = 0;
      }
    }

    goto LABEL_57;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v14 = qword_1000EB278;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v29 = 0;
    v15 = sub_1000011A8(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v30[0]) = 0;
      LODWORD(v28) = 2;
      v17 = _os_log_send_and_compose_impl(v16, &v29, 0, 0, &_mh_execute_header, v14, 16, "Failed to switch user: user switch already in progress", v30, v28);
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];

  v8 = v27;
LABEL_57:
}

void sub_100006EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v39) = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v38, 0, 0, &_mh_execute_header, v3, 0, "in logoutToLoginSessionWithPID", &v39, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (![v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v14 = 1;
    goto LABEL_38;
  }

  if (([*(a1 + 32) inLogoutProcess] & 1) != 0 || sub_10001B570() == 502)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      LODWORD(v9) = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = v8;
        v12 = [v10 inLogoutProcess];
        v39 = 67109120;
        v40 = v12;
        v13 = _os_log_send_and_compose_impl(v9, &v38, 0, 0, &_mh_execute_header, v11, 0, "Already in LoginUser or in process of logout/switch, ignore :%d", &v39);

        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v14 = 16;
LABEL_38:
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0];
    if (v20)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (!sub_10001A8EC())
  {
LABEL_39:
    if (sub_10001B570() != 502)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v39) = 0;
          LODWORD(v37) = 2;
          v25 = _os_log_send_and_compose_impl(v24, &v38, 0, 0, &_mh_execute_header, v22, 0, "Logging Out to LogoutSession", &v39, v37);
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      if (sub_10002E93C())
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v27 = qword_1000EB268;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v39 = 67109120;
            v40 = dword_1000EB5B8;
            v30 = _os_log_send_and_compose_impl(v29, &v38, 0, 0, &_mh_execute_header, v27, 0, "LOGOUT SUCCESSFUL and sessionytype is:%d", &v39);
            v31 = v30;
            if (v30)
            {
              sub_100002A8C(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v20 = 0;
      }

      else
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v32 = qword_1000EB268;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 0;
          v33 = sub_1000011A8(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v39 = 67109120;
            v40 = dword_1000EB5B8;
            v35 = _os_log_send_and_compose_impl(v34, &v38, 0, 0, &_mh_execute_header, v32, 0, "LOGOUT FAILED and sessionytype is:%d", &v39);
            v36 = v35;
            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          free(v36);
        }

        v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v21 = *(*(a1 + 40) + 16);
      goto LABEL_79;
    }

    v20 = 0;
LABEL_41:
    v21 = *(*(a1 + 40) + 16);
LABEL_79:
    v21();
    goto LABEL_80;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v15 = qword_1000EB278;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v38 = 0;
    v16 = sub_1000011A8(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      LOWORD(v39) = 0;
      LODWORD(v37) = 2;
      v18 = _os_log_send_and_compose_impl(v17, &v38, 0, 0, &_mh_execute_header, v15, 16, "Failed to switch user: user switch already in progress", &v39, v37);
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
LABEL_80:
}

void sub_10000798C(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v14 = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v15, 0, 0, &_mh_execute_header, v3, 0, "in loginComplete", &v14, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if ([*(a1 + 32) inLogoutProcess])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v14 = 0;
        LODWORD(v13) = 2;
        v11 = _os_log_send_and_compose_impl(v10, &v15, 0, 0, &_mh_execute_header, v8, 0, "Already in SwitchtoUser, ignore current one", &v14, v13);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
  }

  else
  {
    sub_10002A280();
  }
}

void sub_100007C28(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v44[0]) = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v45, 0, 0, &_mh_execute_header, v3, 0, "in loginUICheckinForPID", v44, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v8 = sub_100088F2C(qword_1000EB608);
    if (sub_100089A48(v8))
    {
      v9 = sub_100088F2C(qword_1000EB608);
      v10 = sub_100089AC4(v9);

      if (v10 == 502)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v11 = qword_1000EB268;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        v45 = 0;
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LOWORD(v44[0]) = 0;
          LODWORD(v43) = 2;
          v14 = _os_log_send_and_compose_impl(v13, &v45, 0, 0, &_mh_execute_header, v11, 0, "Booted in LoginUser  ignore, return SUCCESS", v44, v43, v44[0]);
          goto LABEL_74;
        }

LABEL_76:
        v36 = 0;
LABEL_77:
        free(v36);
        goto LABEL_78;
      }
    }

    else
    {
    }

    if ([*(a1 + 32) inLoginSession])
    {
      v20 = dword_1000EB5BC;
      dword_1000EB5BC = 1;
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v21 = qword_1000EB268;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v44[0] = 0;
        v22 = sub_1000011A8(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          LODWORD(v45) = 67109376;
          HIDWORD(v45) = v20;
          v46 = 1024;
          v47 = dword_1000EB5BC;
          v24 = _os_log_send_and_compose_impl(v23, v44, 0, 0, &_mh_execute_header, v21, 0, "In LOGINSESSION CHECKIN PrevState:%d, newState:%d", &v45, 14);
          v25 = v24;
          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }

      sub_100018C80();
      if (v20 == dword_1000EB5BC)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v29 = qword_1000EB268;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v45 = 0;
          v30 = sub_1000011A8(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            LOWORD(v44[0]) = 0;
            LODWORD(v43) = 2;
            v32 = _os_log_send_and_compose_impl(v31, &v45, 0, 0, &_mh_execute_header, v29, 0, "Already checked IN, switch to LoginUser as a recovery from LoginUI crash in DirectSwitch scenario", v44, v43);
            v33 = v32;
            if (v32)
            {
              sub_100002A8C(v32);
            }
          }

          else
          {
            v33 = 0;
          }

          free(v33);
        }

        v37 = sub_100018084(502);
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v38 = qword_1000EB268;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v45 = 0;
          v39 = sub_1000011A8(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 0xFFFFFFFE;
          }

          if (v40)
          {
            LOWORD(v44[0]) = 0;
            LODWORD(v43) = 2;
            v41 = _os_log_send_and_compose_impl(v40, &v45, 0, 0, &_mh_execute_header, v38, 0, "calling USR DIRECTLY", v44, v43);
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }

        sub_10002E9D8(v37, 0);
        goto LABEL_79;
      }

      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_78:

LABEL_79:
        v28 = 0;
        goto LABEL_80;
      }

      v45 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (!v35)
      {
        goto LABEL_76;
      }

      LOWORD(v44[0]) = 0;
      LODWORD(v43) = 2;
      v14 = _os_log_send_and_compose_impl(v35, &v45, 0, 0, &_mh_execute_header, v11, 0, "First Time CHECKIN, so NO USR", v44, v43, v44[0]);
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v45 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (!v27)
      {
        goto LABEL_76;
      }

      LOWORD(v44[0]) = 0;
      LODWORD(v43) = 2;
      v14 = _os_log_send_and_compose_impl(v27, &v45, 0, 0, &_mh_execute_header, v11, 0, "Not in LoginUISession as well so ignore, return SUCCESS", v44, v43, v44[0]);
    }

LABEL_74:
    v36 = v14;
    if (v14)
    {
      sub_100002A8C(v14);
    }

    goto LABEL_77;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v15 = qword_1000EB268;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      LOWORD(v44[0]) = 0;
      LODWORD(v43) = 2;
      v18 = _os_log_send_and_compose_impl(v17, &v45, 0, 0, &_mh_execute_header, v15, 0, "No entitlement for caller of loginUICheckinForPID", v44, v43);
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_80:
  (*(*(a1 + 40) + 16))();
}

void sub_1000083C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v22) = 67109378;
      HIDWORD(v22) = v8;
      v23 = 2114;
      v24 = v4;
      v9 = _os_log_send_and_compose_impl(v7, &v25, 0, 0, &_mh_execute_header, v5, 0, "Terminate sync bubble started for pid:(%d,%{public}@)", &v22, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if ([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.bubblepop"])
  {
    if (![*(a1 + 32) switchState])
    {
      v12 = 0;
      goto LABEL_18;
    }

    v11 = 16;
  }

  else
  {
    v11 = 1;
  }

  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
LABEL_18:
  (*(*(a1 + 40) + 16))();
  if (!v12)
  {
    [v2 setBubblePopstakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:3];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v14 = sub_1000011A8(1);
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
        v16 = *(a1 + 48);
        LODWORD(v25) = 67109120;
        HIDWORD(v25) = v16;
        v17 = _os_log_send_and_compose_impl(v15, &v22, 0, 0, &_mh_execute_header, v13, 0, "Terminate sync bubble(pid:%d)", &v25);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = [*(a1 + 32) bubbleStakeHolder];

    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 bubbleStakeHolder];
      [v21 bubbleShouldPop];
    }

    else
    {
      [v20 _broadcastBubbleDidPop];
    }
  }

LABEL_35:
}

void sub_100008794(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      v12[0] = 67109378;
      v12[1] = v8;
      v13 = 2114;
      v14 = v4;
      v9 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v5, 0, "Resume sync (Pid:%d,%{public}@)", v12, 18);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (v2)
  {
    [v2 setBubblePopstakeholderIsRegistered:0];
    sub_10001A30C();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000089FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  [v2 setBubbleStakeHolder:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 52);
      LODWORD(v16) = 67109120;
      HIDWORD(v16) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v15, 0, 0, &_mh_execute_header, v3, 0, "BUBBLE REQ machservice for uid:%d", &v16);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = sub_1000308D8(*(a1 + 52));
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      *v15 = 138412290;
      *&v15[4] = v9;
      v13 = _os_log_send_and_compose_impl(v12, &v16, 0, 0, &_mh_execute_header, v10, 0, "MachServiceList %@", v15, 12);
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100008CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  [v2 setBubbleStakeHolder:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v8 = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v3, 0, "Removing machservice from bubble", &v8, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  sub_100034A2C(*(a1 + 52), *(a1 + 40));
}

void sub_100008E8C(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      v10[0] = 67109120;
      v10[1] = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v9, 0, 0, &_mh_execute_header, v3, 0, "UNLOADING SYNC BUBBLE (BUBBLE StopBubble)FOR uid %d:", v10);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  sub_10002C904(*(a1 + 48), 1);
  if (*(a1 + 40) == 1)
  {
    sub_10001BD58(*(a1 + 48));
  }

  [*(a1 + 32) _broadcastBubbleDidPop];
  sub_10001A30C();
}

void sub_100008FF0(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 bubblePopstakeholderIsRegistered])
  {
    [(RDClient *)v3 bubbleDidPop];
  }
}

void sub_100009C1C(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    LODWORD(v3) = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v6 = [v4 logoutTimer];
      *v20 = 134217984;
      *&v20[4] = v6;
      v7 = _os_log_send_and_compose_impl(v3, &v21, 0, 0, &_mh_execute_header, v5, 0, "Logout timer [switchToUser] (%p) fired", v20);

      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = [*(a1 + 32) logoutTimer];
  dispatch_source_cancel(v8);

  [*(a1 + 32) setLogoutTimer:0];
  if ([*(a1 + 32) switchState] == 1 && objc_msgSend(*(a1 + 32), "switchState") != 2)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v21) = 0;
        v18 = _os_log_send_and_compose_impl(v17, v20, 0, 0, &_mh_execute_header, v15, 0, "LOGOUT TIMEOUT, forcing _reallySwitchUser", &v21, 2);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    [*(a1 + 32) _reallySwitchUser:0];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v9 = qword_1000EB268;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      LODWORD(v10) = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v10;
      }

      else
      {
        v10 = v10 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = v9;
        v13 = [v11 switchState];
        LODWORD(v21) = 67109120;
        HIDWORD(v21) = v13;
        v14 = _os_log_send_and_compose_impl(v10, v20, 0, 0, &_mh_execute_header, v12, 0, "LOGOUT TIMEOUT; Ignoring as already in _reallySwitchUser or not in willSwitchUser to force switch:%d", &v21);

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }
}

void sub_100009F70(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 stakeholderIsRegistered])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A004;
    v5[3] = &unk_1000DCFF8;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v3 willSwitchToUser:v4 completionHandler:v5];
  }
}

void sub_10000A004(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A084;
  block[3] = &unk_1000DCFF8;
  block[4] = *(a1 + 32);
  dispatch_async(qword_1000EB610, block);
}

id sub_10000A084(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v9 = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v10, 0, 0, &_mh_execute_header, v3, 0, "switchToUser: willswitch completion handler -> _checkIfWeShouldSwitchUser", &v9, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  return [*(a1 + 32) _checkIfWeShouldSwitchUser:0];
}

void sub_10000A8F8(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 0;
    LODWORD(v3) = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v6 = [v4 logoutTimer];
      *v20 = 134217984;
      *&v20[4] = v6;
      v7 = _os_log_send_and_compose_impl(v3, v19, 0, 0, &_mh_execute_header, v5, 0, "Logout timer [LogoutToUser] (%p) fired", v20);

      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = [*(a1 + 32) logoutTimer];
  dispatch_source_cancel(v8);

  [*(a1 + 32) setLogoutTimer:0];
  if ([*(a1 + 32) switchState] == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v9 = qword_1000EB268;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v10 = sub_1000011A8(1);
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
        LOWORD(v19[0]) = 0;
        v12 = _os_log_send_and_compose_impl(v11, v20, 0, 0, &_mh_execute_header, v9, 0, "LOGOUT TIMEOUT, forcing _reallySwitchUser", v19, 2);
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    [*(a1 + 32) _reallySwitchUser:1];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v14 = qword_1000EB268;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v19[0]) = 0;
        v17 = _os_log_send_and_compose_impl(v16, v20, 0, 0, &_mh_execute_header, v14, 0, "LOGOUT TIMEOUT, ignore already in _reallySwitchUser", v19, 2);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
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

void sub_10000AC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 stakeholderIsRegistered])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000ACA0;
    v5[3] = &unk_1000DCFF8;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v3 willSwitchToUser:v4 completionHandler:v5];
  }
}

void sub_10000ACA0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD20;
  block[3] = &unk_1000DCFF8;
  block[4] = *(a1 + 32);
  dispatch_async(qword_1000EB610, block);
}

id sub_10000AD20(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v9 = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v10, 0, 0, &_mh_execute_header, v3, 0, "switchToUser: willswitch completion handler -> _checkIfWeShouldSwitchUser", &v9, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  return [*(a1 + 32) _checkIfWeShouldSwitchUser:1];
}

void sub_10000B188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B1C0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_1000024A8(qword_1000EB608);
  v7 = [v6 pathForPID:objc_msgSend(v5 error:{"pid"), 0}];

  if ([v5 stakeholderIsRegistered] && ((objc_msgSend(v5, "hasUserSwitchTasks") & 1) != 0 || (objc_msgSend(v5, "wasToldWillSwitchUser") & 1) == 0))
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v13 = qword_1000EB278;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v14 = sub_1000011A8(0);
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
        v16 = v13;
        v19 = 67110146;
        v20 = [v5 stakeholderIsRegistered];
        v21 = 1024;
        v22 = [v5 wasToldWillSwitchUser];
        v23 = 1024;
        v24 = [v5 hasUserSwitchTasks];
        v25 = 1024;
        v26 = [v5 pid];
        v27 = 2114;
        v28 = v7;
        v17 = _os_log_send_and_compose_impl(v15, &v18, 0, 0, &_mh_execute_header, v16, 0, "Client(stakeholderIsRegistered:%d) was told will switch:%d, has tasks: %d with pid(%d,%{public}@)", &v19, 36);

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  else
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v8 = qword_1000EB278;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = v8;
        v19 = 67110146;
        v20 = [v5 stakeholderIsRegistered];
        v21 = 1024;
        v22 = [v5 wasToldWillSwitchUser];
        v23 = 1024;
        v24 = [v5 hasUserSwitchTasks];
        v25 = 1024;
        v26 = [v5 pid];
        v27 = 2114;
        v28 = v7;
        v12 = _os_log_send_and_compose_impl(v10, &v18, 0, 0, &_mh_execute_header, v11, 0, "!!Client(stakeholderIsRegistered:%d) was told will switch:%d, has tasks: %d with pid(%d,%{public}@)", &v19, 36);

        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }
}

void sub_10000C24C(id a1, RDClient *a2, BOOL *a3)
{
  v4 = a2;
  v5 = [(RDClient *)v4 machServiceName];

  if (v5)
  {
    v6 = [(RDClient *)v4 userSyncTasks];
    v7 = [v6 count];

    if (v7)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v8 = qword_1000EB268;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v11 = v8;
          v12 = [(RDClient *)v4 machServiceName];
          v13 = [(RDClient *)v4 userSyncTasks];
          v30 = 138412546;
          *v31 = v12;
          *&v31[8] = 2112;
          *&v31[10] = v13;
          v14 = _os_log_send_and_compose_impl(v10, &v29, 0, 0, &_mh_execute_header, v11, 0, "Registering Bubble mach service %@, with tasks %@", &v30, 22);

          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      v20 = [(RDClient *)v4 machServiceName];
      sub_100033AB0(v20);
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v15 = qword_1000EB268;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0;
        LODWORD(v16) = sub_1000011A8(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v16;
        }

        else
        {
          v16 = v16 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v17 = v15;
          v18 = [(RDClient *)v4 machServiceName];
          v30 = 138412290;
          *v31 = v18;
          v19 = _os_log_send_and_compose_impl(v16, &v29, 0, 0, &_mh_execute_header, v17, 0, "Unregistering from Bubble mach service %@", &v30, 12);

          if (v19)
          {
            sub_100002A8C(v19);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }

      v20 = [(RDClient *)v4 machServiceName];
      sub_1000344A8(v20);
    }

    sub_10002A458();
  }

  if ([(RDClient *)v4 stakeholderIsRegistered]&& [(RDClient *)v4 hasUserSwitchTasks]&& [(RDClient *)v4 wasToldWillSwitchUser])
  {
    v21 = sub_1000024A8(qword_1000EB608);
    v22 = [v21 pathForPID:-[RDClient pid](v4 error:{"pid"), 0}];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v23 = qword_1000EB278;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      LODWORD(v24) = sub_1000011A8(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v24;
      }

      else
      {
        v24 = v24 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v25 = v23;
        v26 = [(RDClient *)v4 pid];
        v30 = 67109378;
        *v31 = v26;
        *&v31[4] = 2114;
        *&v31[6] = v22;
        LODWORD(v28) = 18;
        v27 = _os_log_send_and_compose_impl(v24, &v29, 0, 0, &_mh_execute_header, v25, 0, "PENDING BLOCKING SWITCH TASK AT SWITCH(Pid:%d):%{public}@", &v30, v28);

        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    *a3 = 0;
  }
}

void sub_10000C678(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v38[0]) = 0;
      v6 = _os_log_send_and_compose_impl(v5, v39, 0, 0, &_mh_execute_header, v3, 0, "In readyToSwitchToLoginSession-CompletionHandler", v38, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v8 = qword_1000EB268;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      LOWORD(v38[0]) = 0;
      LODWORD(v36) = 2;
      v11 = _os_log_send_and_compose_impl(v10, v39, 0, 0, &_mh_execute_header, v8, 0, "XXXX: Moving the session type from :LOGINSESSION TYPE", v38, v36);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  [*(a1 + 32) setSwitchState:0];
  dword_1000EB5B8 = 1;
  sub_100018C80();
  [*(a1 + 32) _broadcastDeviceLoginSessionStateDidUpdate];
  v13 = [*(a1 + 32) fastLogoutTimer];

  if (v13)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v14 = qword_1000EB278;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v38[0] = 0;
      LODWORD(v15) = sub_1000011A8(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v15;
      }

      else
      {
        v15 = v15 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = *(a1 + 32);
        v17 = v14;
        v18 = [v16 fastLogoutTimer];
        *v39 = 134217984;
        *&v39[4] = v18;
        v19 = _os_log_send_and_compose_impl(v15, v38, 0, 0, &_mh_execute_header, v17, 0, "Fast logout timer (%p) already running, not starting another one", v39);

        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v20 = qword_1000EB268;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      v21 = sub_1000011A8(1);
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
        LOWORD(v38[0]) = 0;
        LODWORD(v36) = 2;
        v23 = _os_log_send_and_compose_impl(v22, v39, 0, 0, &_mh_execute_header, v20, 0, "Returning back without USR, setting 5min Max Duration of LoginSession", v38, v36);
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
    [*(a1 + 32) setFastLogoutTimer:v25];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v26 = qword_1000EB278;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v38[0] = 0;
      LODWORD(v27) = sub_1000011A8(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v27;
      }

      else
      {
        v27 = v27 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = *(a1 + 32);
        v29 = v26;
        v30 = [v28 fastLogoutTimer];
        *v39 = 134217984;
        *&v39[4] = v30;
        v31 = _os_log_send_and_compose_impl(v27, v38, 0, 0, &_mh_execute_header, v29, 0, "Returning back without USR, starting 5 minute fast logout timer (%p)", v39);

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    v32 = [*(a1 + 32) fastLogoutTimer];
    v33 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);

    v34 = [*(a1 + 32) fastLogoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000CC28;
    handler[3] = &unk_1000DCFF8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v34, handler);

    v35 = [*(a1 + 32) fastLogoutTimer];
    dispatch_activate(v35);
  }
}

void sub_10000CC28(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    LODWORD(v3) = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v6 = [v4 fastLogoutTimer];
      *v26 = 134217984;
      *&v26[4] = v6;
      v7 = _os_log_send_and_compose_impl(v3, &v27, 0, 0, &_mh_execute_header, v5, 0, "Fast logout timer (%p) fired", v26);

      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = [*(a1 + 32) fastLogoutTimer];
  dispatch_source_cancel(v8);

  [*(a1 + 32) setFastLogoutTimer:0];
  if (![*(a1 + 32) switchState])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v27) = 0;
        v18 = _os_log_send_and_compose_impl(v17, v26, 0, 0, &_mh_execute_header, v15, 0, "CALLING SWITCH TO LOGINUSER as Logout Session MAX Time Duration expire", &v27, 2);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (sub_10002E8EC() == 1)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v9 = qword_1000EB268;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *v26 = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (!v21)
      {
        goto LABEL_52;
      }

      LOWORD(v27) = 0;
      LODWORD(v25) = 2;
      v22 = _os_log_send_and_compose_impl(v21, v26, 0, 0, &_mh_execute_header, v9, 0, "Call to switchToUserSessionLoginwindow returns Success", &v27, v25);
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v9 = qword_1000EB268;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *v26 = 0;
      v23 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (!v24)
      {
        goto LABEL_52;
      }

      LOWORD(v27) = 0;
      LODWORD(v25) = 2;
      v22 = _os_log_send_and_compose_impl(v24, v26, 0, 0, &_mh_execute_header, v9, 0, "Call to switchToUserSessionLoginwindow returns Failure", &v27, v25);
    }

    v14 = v22;
    if (!v22)
    {
LABEL_53:
      free(v14);
      goto LABEL_54;
    }

LABEL_51:
    sub_100002A8C(v14);
    goto LABEL_53;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v9 = qword_1000EB268;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    LODWORD(v10) = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 = v10 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = v9;
      v13 = [v11 switchState];
      LODWORD(v27) = 67109120;
      HIDWORD(v27) = v13;
      v14 = _os_log_send_and_compose_impl(v10, v26, 0, 0, &_mh_execute_header, v12, 0, "SwitchState in Log Session is set to %d, so no loginUser switch", &v27);

      if (!v14)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

LABEL_52:
    v14 = 0;
    goto LABEL_53;
  }

LABEL_54:
}

uint64_t sub_10000D074(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v18 = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v19, 0, 0, &_mh_execute_header, v3, 0, "In readyToSwitchToUser-CompletionHandler", &v18, 2);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = *(a1 + 32);
  if (CFDictionaryContainsKey(v8, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(v8, @"UserSwitchTaskOpqueData");
    v10 = CFRetain(Value);
    CFDictionaryRemoveValue(v8, @"UserSwitchTaskOpqueData");
  }

  else
  {
    v10 = 0;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v11 = qword_1000EB268;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v18 = 0;
      LODWORD(v17) = 2;
      v14 = _os_log_send_and_compose_impl(v13, &v19, 0, 0, &_mh_execute_header, v11, 0, "calling USR", &v18, v17);
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  return sub_10002E9D8(v8, v10);
}

void sub_10000D35C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        v21 = 67109634;
        v22 = v8;
        v23 = 2114;
        v24 = v4;
        v25 = 2114;
        v26 = v9;
        v10 = _os_log_send_and_compose_impl(v7, &v20, 0, 0, &_mh_execute_header, v5, 0, "Adding BlockSwitchTask(pid:%d,%{public}@) %{public}@", &v21, 28);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    [v2 addUserSwitchTask:*(a1 + 40)];
    [*(a1 + 32) _broadcastUserSwitchTaskListDidUpdate];
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v12 = qword_1000EB278;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v13 = sub_1000011A8(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 56);
        v21 = 67109378;
        v22 = v15;
        v23 = 2114;
        v24 = v4;
        LODWORD(v19) = 18;
        v16 = _os_log_send_and_compose_impl(v14, &v20, 0, 0, &_mh_execute_header, v12, 0, "Adding BlockSwitchTask(pid:%d,%{public}@) DONE", &v21, v19);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }
}

void sub_10000D6D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        LODWORD(v26) = 67109634;
        HIDWORD(v26) = v8;
        v27 = 2114;
        v28 = v4;
        v29 = 2112;
        v30 = v9;
        v10 = _os_log_send_and_compose_impl(v7, v25, 0, 0, &_mh_execute_header, v5, 0, "Removing BlockSwitchTask(pid:%d,%{public}@) %@", &v26, 28);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if ([v2 removeUserSwitchTask:*(a1 + 40)])
    {
      [*(a1 + 32) _broadcastUserSwitchTaskListDidUpdate];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v12 = qword_1000EB268;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          LOWORD(v25[0]) = 0;
          LODWORD(v24) = 2;
          v15 = _os_log_send_and_compose_impl(v14, &v26, 0, 0, &_mh_execute_header, v12, 0, "remove BlockSwitch Task checking -> _checkIfWeShouldSwitchUser", v25, v24);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      [*(a1 + 32) _checkIfWeShouldSwitchUser:dword_1000EB5B8 == 3];
      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      v17 = qword_1000EB278;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v25[0] = 0;
        v18 = sub_1000011A8(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v20 = *(a1 + 56);
          LODWORD(v26) = 67109378;
          HIDWORD(v26) = v20;
          v27 = 2114;
          v28 = v4;
          LODWORD(v24) = 18;
          v21 = _os_log_send_and_compose_impl(v19, v25, 0, 0, &_mh_execute_header, v17, 0, "Removed switch task(pid:%d, %{public}@)", &v26, v24);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }
    }
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))(v23, 0);
  }
}

void sub_10000DA68(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 stakeholderIsRegistered]&& [(RDClient *)v3 criticalStakeHolder])
  {
    [(RDClient *)v3 userSwitchTaskListDidUpdate];
  }
}

void sub_10000DAC8(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 stakeholderIsRegistered]&& [(RDClient *)v3 criticalStakeHolder])
  {
    [(RDClient *)v3 deviceLoginSessionStateDidUpdate];
  }
}

void sub_10000DBBC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DC78;
  v5[3] = &unk_1000DD160;
  v6 = v2;
  v4 = v2;
  [v3 _enumerateClientsWithBlock:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_10000DC78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSwitchTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DD7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSyncTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DE80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSwitchTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DFBC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 machServiceName];

    if (v4)
    {
      v5 = sub_1000024A8(qword_1000EB608);
      v6 = [v5 pathForPID:*(a1 + 56) error:0];

      if (qword_1000EB280 != -1)
      {
        sub_100088D14();
      }

      v7 = qword_1000EB278;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        v8 = sub_1000011A8(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = *(a1 + 56);
          v11 = *(a1 + 40);
          LODWORD(v25) = 67109634;
          HIDWORD(v25) = v10;
          v26 = 2114;
          v27 = v6;
          v28 = 2114;
          v29 = v11;
          v12 = _os_log_send_and_compose_impl(v9, v24, 0, 0, &_mh_execute_header, v7, 0, "Adding Sync Task(pid:%d,%{public}@) %{public}@", &v25, 28);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      [v3 addUserSyncTask:*(a1 + 40)];
      v14 = [v3 userSyncTasks];
      v15 = [v14 count];

      if (v15 == 1)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v16 = qword_1000EB268;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v17 = sub_1000011A8(1);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 & 0xFFFFFFFE;
          }

          if (v18)
          {
            LOWORD(v24[0]) = 0;
            LODWORD(v23) = 2;
            v19 = _os_log_send_and_compose_impl(v18, &v25, 0, 0, &_mh_execute_header, v16, 0, "Adding mach service for bubble due to arrival of first sync tasks", v24, v23);
            v20 = v19;
            if (v19)
            {
              sub_100002A8C(v19);
            }
          }

          else
          {
            v20 = 0;
          }

          free(v20);
        }

        v21 = [v3 machServiceName];
        sub_100033AB0(v21);
      }
    }
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }
}

void sub_10000E364(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        LODWORD(v23) = 67109634;
        HIDWORD(v23) = v8;
        v24 = 2114;
        v25 = v4;
        v26 = 2114;
        v27 = v9;
        v10 = _os_log_send_and_compose_impl(v7, v22, 0, 0, &_mh_execute_header, v5, 0, "Removing Sync Task(pid:%d,%{public}@) %{public}@", &v23, 28);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    [v2 removeUserSyncTask:*(a1 + 40)];
    v12 = [v2 userSyncTasks];
    v13 = [v12 count];

    if (!v13)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v14 = qword_1000EB268;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 0;
        v15 = sub_1000011A8(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          LOWORD(v22[0]) = 0;
          LODWORD(v21) = 2;
          v17 = _os_log_send_and_compose_impl(v16, &v23, 0, 0, &_mh_execute_header, v14, 0, "Removing mach service for bubble as no pending sync tasks", v22, v21);
          v18 = v17;
          if (v17)
          {
            sub_100002A8C(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }

      v19 = [v2 machServiceName];
      sub_1000344A8(v19);
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, 0);
  }
}

uint64_t sub_10000E6B8(uint64_t a1)
{
  [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

uint64_t sub_10000E7D0(uint64_t a1)
{
  [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

void sub_10000EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000EF28(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v100 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 88);
      LODWORD(v110) = 67109120;
      HIDWORD(v110) = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v100, 0, 0, &_mh_execute_header, v3, 0, "In RDServer: createPersona from pid:%d", &v110);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = [*(a1 + 32) _clientForPID:*(a1 + 88)];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hasEntitlement:@"com.apple.usermanagerd.persona.create"];
  }

  else
  {
    v11 = [*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.create"];
  }

  if (v11)
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 80) < 2uLL)
      {
        v110 = 0;
        v111 = &v110;
        v112 = 0x2020000000;
        v113 = 0;
        v100 = 0;
        v101 = &v100;
        v102 = 0x3032000000;
        v103 = sub_100005EAC;
        v104 = sub_100005EBC;
        v105 = 0;
        if (*(a1 + 72))
        {
          v12 = [NSMutableData dataWithBytes:*(*(*(a1 + 64) + 8) + 24) length:?];
        }

        else
        {
          v12 = 0;
        }

        v35 = *(*(*(a1 + 56) + 8) + 24);
        if (v35)
        {
          v36 = mach_task_self_;
          v37 = vm_page_size;
          if (vm_page_size >= *(a1 + 72))
          {
            v38 = *(a1 + 72);
          }

          else
          {
            v38 = vm_page_size;
          }

          memset_s(v35, v38, 0, v38);
          vm_deallocate(v36, v35, v37);
        }

        if (*(a1 + 80) == 1)
        {
          *v108 = 0;
          *&v108[8] = v108;
          *&v108[16] = 0x2020000000;
          v109 = 0;
          v39 = v12;
          v40 = ACMContextCreateWithExternalForm([v12 bytes], objc_msgSend(v12, "length"));
          v41 = v40;
          if (!v40)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v52 = qword_1000EB268;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v99[0] = 0;
              v53 = sub_1000011A8(1);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v54 = v53;
              }

              else
              {
                v54 = v53 & 0xFFFFFFFE;
              }

              if (v54)
              {
                LOWORD(v106) = 0;
                v55 = _os_log_send_and_compose_impl(v54, v99, 0, 0, &_mh_execute_header, v52, 0, "In RDServer: entitlement OK, but failed to import externalized context data", &v106, 2);
                v56 = v55;
                if (v55)
                {
                  sub_100002A8C(v55);
                }
              }

              else
              {
                v56 = 0;
              }

              free(v56);
            }

            v94 = *(a1 + 48);
            if (v94)
            {
              v95 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              (*(v94 + 16))(v94, 0, v95);
            }

            if (v12)
            {
              [v12 resetBytesInRange:{0, objc_msgSend(v12, "length")}];
            }

            goto LABEL_185;
          }

          v98[0] = _NSConcreteStackBlock;
          v98[1] = 3221225472;
          v98[2] = sub_10000FEE8;
          v98[3] = &unk_1000DD1D8;
          v98[4] = v108;
          v98[5] = &v100;
          v98[6] = &v110;
          ACMContextCredentialGetProperty(v40, 13, 701, v98);
          v42 = ACMContextDelete(v41, 0);
          if (v42)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v43 = qword_1000EB268;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v99[0] = 0;
              v44 = sub_1000011A8(1);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v45 = v44;
              }

              else
              {
                v45 = v44 & 0xFFFFFFFE;
              }

              if (v45)
              {
                v106 = 67109120;
                v107 = v42;
                v46 = _os_log_send_and_compose_impl(v45, v99, 0, 0, &_mh_execute_header, v43, 0, "In RDServer: Failed to delete ACM context: %d", &v106);
                v47 = v46;
                if (v46)
                {
                  sub_100002A8C(v46);
                }
              }

              else
              {
                v47 = 0;
              }

              free(v47);
            }
          }

          if (*(*&v108[8] + 24))
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v57 = qword_1000EB268;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v99[0] = 0;
              v58 = sub_1000011A8(1);
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
                v60 = *(*&v108[8] + 24);
                v106 = 67109120;
                v107 = v60;
                v61 = _os_log_send_and_compose_impl(v59, v99, 0, 0, &_mh_execute_header, v57, 0, "In RDServer: entitlement OK, but failed to extract plaintext password from context: %d", &v106);
                v62 = v61;
                if (v61)
                {
                  sub_100002A8C(v61);
                }
              }

              else
              {
                v62 = 0;
              }

              free(v62);
            }

            v91 = *(a1 + 48);
            if (v91)
            {
              v92 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              (*(v91 + 16))(v91, 0, v92);
            }

            if (v12)
            {
              [v12 resetBytesInRange:{0, objc_msgSend(v12, "length")}];
            }

LABEL_185:
            _Block_object_dispose(v108, 8);
LABEL_186:
            _Block_object_dispose(&v100, 8);

            _Block_object_dispose(&v110, 8);
            goto LABEL_187;
          }

          _Block_object_dispose(v108, 8);
        }

        v106 = 0;
        v97 = -1;
        v63 = [*(a1 + 32) asidForClient:v10 withAuid:&v97 withPid:*(a1 + 88)];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v64 = qword_1000EB268;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v99[0] = 0;
          v65 = sub_1000011A8(1);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
          }

          else
          {
            v66 = v65 & 0xFFFFFFFE;
          }

          if (v66)
          {
            v67 = *(a1 + 40);
            v68 = *(a1 + 88);
            *v108 = 138412802;
            *&v108[4] = v67;
            *&v108[12] = 1024;
            *&v108[14] = v68;
            *&v108[18] = 1024;
            *&v108[20] = v63;
            v69 = _os_log_send_and_compose_impl(v66, v99, 0, 0, &_mh_execute_header, v64, 0, "In RDServer: entitlement OK, calling createpersonasession with profileInfo:%@ for pid:%d for asid:%d", v108, 24);
            v70 = v69;
            if (v69)
            {
              sub_100002A8C(v69);
            }
          }

          else
          {
            v70 = 0;
          }

          free(v70);
        }

        v71 = sub_100001458(v63, v97, *(a1 + 92));
        v72 = v12;
        if (*(v111 + 24) == 1)
        {
          v72 = v101[5];
        }

        v73 = sub_100044AA8(*(a1 + 40), v72, v71, 1, &v106);
        if (*(v111 + 24) == 1)
        {
          [v101[5] resetBytesInRange:{0, objc_msgSend(v101[5], "length")}];
        }

        if (v12)
        {
          [v12 resetBytesInRange:{0, objc_msgSend(v12, "length")}];
        }

        if (v73 || !v106)
        {
          if (v73)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v79 = qword_1000EB268;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v99[0] = 0;
              v80 = sub_1000011A8(1);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v81 = v80;
              }

              else
              {
                v81 = v80 & 0xFFFFFFFE;
              }

              if (v81)
              {
                *v108 = 138412290;
                *&v108[4] = v73;
                LODWORD(v96) = 12;
                v82 = _os_log_send_and_compose_impl(v81, v99, 0, 0, &_mh_execute_header, v79, 0, "Persona Created Successfully:%@", v108, v96);
                v83 = v82;
                if (v82)
                {
                  sub_100002A8C(v82);
                }
              }

              else
              {
                v83 = 0;
              }

              free(v83);
            }

            [*(a1 + 32) _broadcastPersonaUpdates:v71 withAuid:v97];
          }

          v93 = *(a1 + 48);
          if (v93)
          {
            (*(v93 + 16))(v93, v73, 0);
          }
        }

        else
        {
          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v74 = qword_1000EB268;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *v108 = 0;
            v75 = sub_1000011A8(1);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              LOWORD(v99[0]) = 0;
              LODWORD(v96) = 2;
              v77 = _os_log_send_and_compose_impl(v76, v108, 0, 0, &_mh_execute_header, v74, 0, "FAILEd to create persona session", v99, v96);
              v78 = v77;
              if (v77)
              {
                sub_100002A8C(v77);
              }
            }

            else
            {
              v78 = 0;
            }

            free(v78);
          }

          v84 = *(a1 + 48);
          if (v84)
          {
            v85 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v106 userInfo:0];
            (*(v84 + 16))(v84, 0, v85);
          }

          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v86 = qword_1000EB268;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *v108 = 0;
            v87 = sub_1000011A8(1);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v88 = v87;
            }

            else
            {
              v88 = v87 & 0xFFFFFFFE;
            }

            if (v88)
            {
              LOWORD(v99[0]) = 0;
              LODWORD(v96) = 2;
              v89 = _os_log_send_and_compose_impl(v88, v108, 0, 0, &_mh_execute_header, v86, 0, "Returning after failing to create persona session", v99, v96);
              v90 = v89;
              if (v89)
              {
                sub_100002A8C(v89);
              }
            }

            else
            {
              v90 = 0;
            }

            free(v90);
          }
        }

        goto LABEL_186;
      }

      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v24 = qword_1000EB268;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v100 = 0;
        v25 = sub_1000011A8(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          LOWORD(v110) = 0;
          v27 = _os_log_send_and_compose_impl(v26, &v100, 0, 0, &_mh_execute_header, v24, 0, "In RDServer: entitlement OK, but invalid passcode data type", &v110, 2);
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v50 = *(a1 + 48);
      if (v50)
      {
        v51 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (*(v50 + 16))(v50, 0, v51);
      }

      v31 = *(*(*(a1 + 56) + 8) + 24);
      if (v31)
      {
        v32 = mach_task_self_;
        v33 = vm_page_size;
        if (vm_page_size >= *(a1 + 72))
        {
          v34 = *(a1 + 72);
        }

        else
        {
          v34 = vm_page_size;
        }

LABEL_89:
        memset_s(v31, v34, 0, v34);
        vm_deallocate(v32, v31, v33);
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v19 = qword_1000EB268;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v100 = 0;
        v20 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          LOWORD(v110) = 0;
          v22 = _os_log_send_and_compose_impl(v21, &v100, 0, 0, &_mh_execute_header, v19, 0, "In RDServer: entitlement OK, but invalid profileInfo", &v110, 2);
          v23 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }

      v48 = *(a1 + 48);
      if (v48)
      {
        v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (*(v48 + 16))(v48, 0, v49);
      }

      v31 = *(*(*(a1 + 56) + 8) + 24);
      if (v31)
      {
        v32 = mach_task_self_;
        v33 = vm_page_size;
        if (vm_page_size >= *(a1 + 72))
        {
          v34 = *(a1 + 72);
        }

        else
        {
          v34 = vm_page_size;
        }

        goto LABEL_89;
      }
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v100 = 0;
      v14 = sub_1000011A8(1);
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
        v16 = *(a1 + 88);
        LODWORD(v110) = 67109120;
        HIDWORD(v110) = v16;
        v17 = _os_log_send_and_compose_impl(v15, &v100, 0, 0, &_mh_execute_header, v13, 0, "In RDServer: createPersona No entitlement pid:%d", &v110);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v29 = *(a1 + 48);
    if (v29)
    {
      v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      (*(v29 + 16))(v29, 0, v30);
    }

    v31 = *(*(*(a1 + 56) + 8) + 24);
    if (v31)
    {
      v32 = mach_task_self_;
      v33 = vm_page_size;
      if (vm_page_size >= *(a1 + 72))
      {
        v34 = *(a1 + 72);
      }

      else
      {
        v34 = vm_page_size;
      }

      goto LABEL_89;
    }
  }

LABEL_187:
}

void sub_10000FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10000FEE8(void *a1, int a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  if (!*(*(a1[4] + 8) + 24))
  {
    v3 = [NSMutableData dataWithBytes:"dataWithBytes:length:" length:?];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100010194(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v39 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v40 = 67109120;
      v41 = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v38, 0, 0, &_mh_execute_header, v3, 0, "In RDServer: deletePersona from pid:%d", &v40);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.delete"])
    {
      goto LABEL_14;
    }

LABEL_26:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(a1 + 56);
        v40 = 67109120;
        v41 = v21;
        v22 = _os_log_send_and_compose_impl(v20, &v38, 0, 0, &_mh_execute_header, v18, 0, "In RDServer: deletePersona No entitlement pid:%d", &v40);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 1;
    goto LABEL_62;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.delete"] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v40) = 0;
        v27 = _os_log_send_and_compose_impl(v26, &v38, 0, 0, &_mh_execute_header, v24, 0, "In RDServer: entitlement OK, but invalid profileInfo", &v40, 2);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 22;
LABEL_62:
    v36 = [NSError errorWithDomain:v34 code:v35 userInfo:0];
    goto LABEL_67;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v39 withPid:*(a1 + 56)];
  v10 = sub_100001458(v9, v39, *(a1 + 60));
  v11 = sub_100044EE0(*(a1 + 40), v10);
  if (v11)
  {
    v12 = v11;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v14 = sub_1000011A8(1);
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
        v40 = 67109120;
        v41 = v12;
        v16 = _os_log_send_and_compose_impl(v15, &v38, 0, 0, &_mh_execute_header, v13, 0, "FAILEd to delete persona session with error:%d", &v40);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v10 withAuid:v39];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LOWORD(v40) = 0;
        v32 = _os_log_send_and_compose_impl(v31, &v38, 0, 0, &_mh_execute_header, v29, 0, "Delete Persona SUCCESS", &v40, 2);
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v36 = 0;
  }

LABEL_67:
  v37 = *(a1 + 48);
  if (v37)
  {
    (*(v37 + 16))(v37, v36);
  }
}

void sub_100010930(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v39 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v40 = 67109120;
      v41 = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v38, 0, 0, &_mh_execute_header, v3, 0, "In RDServer: disablePersona from pid:%d", &v40);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.delete"])
    {
      goto LABEL_14;
    }

LABEL_26:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(a1 + 56);
        v40 = 67109120;
        v41 = v21;
        v22 = _os_log_send_and_compose_impl(v20, &v38, 0, 0, &_mh_execute_header, v18, 0, "In RDServer: disablePersona No entitlement pid:%d", &v40);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 1;
    goto LABEL_62;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.delete"] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v40) = 0;
        v27 = _os_log_send_and_compose_impl(v26, &v38, 0, 0, &_mh_execute_header, v24, 0, "In RDServer: entitlement OK, but invalid profileInfo", &v40, 2);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 22;
LABEL_62:
    v36 = [NSError errorWithDomain:v34 code:v35 userInfo:0];
    goto LABEL_67;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v39 withPid:*(a1 + 56)];
  v10 = sub_100001458(v9, v39, *(a1 + 60));
  v11 = sub_10004740C(*(a1 + 40), v10);
  if (v11)
  {
    v12 = v11;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v14 = sub_1000011A8(1);
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
        v40 = 67109120;
        v41 = v12;
        v16 = _os_log_send_and_compose_impl(v15, &v38, 0, 0, &_mh_execute_header, v13, 0, "FAILEd to disable persona session with error:%d", &v40);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v10 withAuid:v39];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LOWORD(v40) = 0;
        v32 = _os_log_send_and_compose_impl(v31, &v38, 0, 0, &_mh_execute_header, v29, 0, "Disable Persona SUCCESS", &v40, 2);
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v36 = 0;
  }

LABEL_67:
  v37 = *(a1 + 48);
  if (v37)
  {
    (*(v37 + 16))(v37, v36);
  }
}

void sub_100010F78(uint64_t a1)
{
  v39 = -1;
  v40 = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB290 != -1)
  {
    sub_100088D8C();
  }

  v3 = qword_1000EB288;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v41 = 0;
    v4 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v48) = 67109120;
      HIDWORD(v48) = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v41, 0, 0, &_mh_execute_header, v3, 2, "Received fetchPersonaListforPid (async, pid: %d)", &v48);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (*(a1 + 40))
  {
    if (v2)
    {
      if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
      {
LABEL_15:
        v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v39 withPid:*(a1 + 48)];
        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v10 = qword_1000EB288;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v48 = 0;
          v11 = sub_1000011A8(0);
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
            v13 = *(a1 + 48);
            LODWORD(v41) = 67109376;
            HIDWORD(v41) = v13;
            v42 = 1024;
            v43 = v9;
            v14 = _os_log_send_and_compose_impl(v12, &v48, 0, 0, &_mh_execute_header, v10, 2, "fetchPersonaListforPid (async, pid: %d, asid: %d): entitlement OK", &v41, 14);
            v15 = v14;
            if (v14)
            {
              sub_100002A8C(v14);
            }
          }

          else
          {
            v15 = 0;
          }

          free(v15);
        }

        v28 = sub_100001458(v9, v39, *(a1 + 52));
        v16 = sub_100002B68(v28, &v40);
        if (v16)
        {
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          if (qword_1000EB290 != -1)
          {
            sub_100088DA0();
          }

          v29 = qword_1000EB288;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v48 = 0;
            v30 = sub_1000011A8(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v32 = *(a1 + 48);
              LODWORD(v41) = 67109890;
              HIDWORD(v41) = v32;
              v42 = 1024;
              v43 = v9;
              v44 = 2114;
              v45 = v28;
              v46 = 1024;
              v47 = v40;
              LODWORD(v38) = 30;
              v33 = _os_log_send_and_compose_impl(v31, &v48, 0, 0, &_mh_execute_header, v29, 0, "fetchPersonaListforPid (async, pid: %d, asid :%d): failed to fetch persona array for session %{public}@: %{darwin.errno}d", &v41, v38);
              v34 = v33;
              if (v33)
              {
                sub_100002A8C(v33);
              }
            }

            else
            {
              v34 = 0;
            }

            free(v34);
          }

          v36 = *(a1 + 40);
          v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v40 userInfo:0];
          (*(v36 + 16))(v36, 0, v37);
        }

        goto LABEL_65;
      }
    }

    else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_15;
    }

    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v22 = qword_1000EB288;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v41 = 0;
      v23 = sub_1000011A8(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v25 = *(a1 + 48);
        LODWORD(v48) = 67109120;
        HIDWORD(v48) = v25;
        v26 = _os_log_send_and_compose_impl(v24, &v41, 0, 0, &_mh_execute_header, v22, 16, "fetchPersonaListforPid (async, pid: %d): entitlement failure", &v48);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v35 = *(a1 + 40);
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    (*(v35 + 16))(v35, 0, v16);
  }

  else
  {
    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v16 = qword_1000EB288;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v41 = 0;
      v17 = sub_1000011A8(0);
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
        v19 = *(a1 + 48);
        LODWORD(v48) = 67109120;
        HIDWORD(v48) = v19;
        v20 = _os_log_send_and_compose_impl(v18, &v41, 0, 0, &_mh_execute_header, v16, 16, "fetchPersonaListforPid (async, pid: %d): no completion handler", &v48);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

LABEL_65:
}

void sub_100011600(uint64_t a1)
{
  HIDWORD(v38) = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v42) = 67109120;
      HIDWORD(v42) = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v39, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: fetchAllUsersPersonaListforPid from pid:%d", &v42);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (*(a1 + 40))
  {
    if (v2)
    {
      if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
      {
LABEL_15:
        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v9 = qword_1000EB288;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v39 = 0;
          v10 = sub_1000011A8(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v12 = *(a1 + 48);
            LODWORD(v42) = 67109120;
            HIDWORD(v42) = v12;
            v13 = _os_log_send_and_compose_impl(v11, &v39, 0, 0, &_mh_execute_header, v9, 2, "fetchAllUsersPersonaListforPid (async, pid: %d): entitlement OK", &v42);
            v14 = v13;
            if (v13)
            {
              sub_100002A8C(v13);
            }
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        v27 = sub_100047940(&v38 + 1);
        if (v27)
        {
          v15 = v27;
          v28 = *(*(a1 + 40) + 16);
LABEL_65:
          v28();
          goto LABEL_66;
        }

        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v29 = qword_1000EB288;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v42 = 0;
          v30 = sub_1000011A8(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v32 = *(a1 + 48);
            LODWORD(v39) = 67109376;
            HIDWORD(v39) = v32;
            v40 = 1024;
            v41 = HIDWORD(v38);
            LODWORD(v38) = 14;
            v33 = _os_log_send_and_compose_impl(v31, &v42, 0, 0, &_mh_execute_header, v29, 0, "fetchAllUsersPersonaListforPid (async, pid: %d) failed to fetch all user persona array: %{darwin.errno}d", &v39, v38);
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v35 = *(a1 + 40);
        v36 = NSPOSIXErrorDomain;
        v37 = SHIDWORD(v38);
LABEL_64:
        v15 = [NSError errorWithDomain:v36 code:v37 userInfo:0];
        v28 = *(v35 + 16);
        goto LABEL_65;
      }
    }

    else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_15;
    }

    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v21 = qword_1000EB288;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v39 = 0;
      v22 = sub_1000011A8(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = *(a1 + 48);
        LODWORD(v42) = 67109120;
        HIDWORD(v42) = v24;
        v25 = _os_log_send_and_compose_impl(v23, &v39, 0, 0, &_mh_execute_header, v21, 16, "fetchAllUsersPersonaListforPid (async, pid: %d): entitlement failure", &v42);
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    v35 = *(a1 + 40);
    v36 = NSPOSIXErrorDomain;
    v37 = 1;
    goto LABEL_64;
  }

  if (qword_1000EB290 != -1)
  {
    sub_100088DA0();
  }

  v15 = qword_1000EB288;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v39 = 0;
    v16 = sub_1000011A8(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = *(a1 + 48);
      LODWORD(v42) = 67109120;
      HIDWORD(v42) = v18;
      v19 = _os_log_send_and_compose_impl(v17, &v39, 0, 0, &_mh_execute_header, v15, 16, "fetchAllUsersPersonaListforPid (async, pid: %d): no completion handler", &v42);
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

LABEL_66:
}

void sub_100011C10(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      v23 = 67109120;
      v24 = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v22, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: fetchAsidMapforPid from pid:%d", &v23);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
LABEL_14:
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v9 = qword_1000EB268;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v22 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          LOWORD(v23) = 0;
          v12 = _os_log_send_and_compose_impl(v11, &v22, 0, 0, &_mh_execute_header, v9, 2, "In RDServer: ASID Map not supported on this platform", &v23, 2);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      v19 = 45;
      goto LABEL_39;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v9 = qword_1000EB268;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = *(a1 + 48);
      v23 = 67109120;
      v24 = v16;
      v17 = _os_log_send_and_compose_impl(v15, &v22, 0, 0, &_mh_execute_header, v9, 0, "In RDServer: fetchAsidMapforPid entitlement failure:%d", &v23);
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v19 = 1;
LABEL_39:

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, 0, v20);
  }
}

void sub_10001205C(uint64_t a1)
{
  v46 = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v45 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v47 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v52) = 67109120;
      HIDWORD(v52) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v47, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: fetchPersona from pid:%d", &v52);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v52) = 67109120;
        HIDWORD(v52) = v20;
        v21 = _os_log_send_and_compose_impl(v19, v47, 0, 0, &_mh_execute_header, v17, 0, "In RDServer: fetchPersona entitlement failure:%d", &v52);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_73;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v47 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v52) = 0;
        v26 = _os_log_send_and_compose_impl(v25, v47, 0, 0, &_mh_execute_header, v23, 2, "In RDServer: entitlement OK, but invalid profileInfo", &v52, 2);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_73:
    v37 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    v31 = 0;
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v45 withPid:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v52 = 0;
    v11 = sub_1000011A8(1);
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
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      *v47 = 138412802;
      *&v47[4] = v13;
      v48 = 1024;
      v49 = v14;
      v50 = 1024;
      v51 = v9;
      v15 = _os_log_send_and_compose_impl(v12, &v52, 0, 0, &_mh_execute_header, v10, 2, "In RDServer: entitlement OK, calling fetchPersonaSession with profileInfo:%@ for pid:%d with asid:%d", v47, 24);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, v45, *(a1 + 60));
  v31 = sub_100002B94(*(a1 + 40), v30, &v46);
  if (v31)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v52 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v47 = 138412290;
        *&v47[4] = v31;
        LODWORD(v44) = 12;
        v35 = _os_log_send_and_compose_impl(v34, &v52, 0, 0, &_mh_execute_header, v32, 2, "fetchpersona:%@", v47, v44);
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v37 = 0;
  }

  else
  {
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v46 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v52 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v40 = *(a1 + 56);
        *v47 = 138412802;
        *&v47[4] = v37;
        v48 = 1024;
        v49 = v40;
        v50 = 1024;
        v51 = v9;
        LODWORD(v44) = 24;
        v41 = _os_log_send_and_compose_impl(v39, &v52, 0, 0, &_mh_execute_header, v32, 2, "Fetch persona failed with error:%@, pid:%d, asid:%d", v47, v44);
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {
        v42 = 0;
      }

      free(v42);
    }
  }

LABEL_77:
  v43 = *(a1 + 48);
  if (v43)
  {
    (*(v43 + 16))(v43, v31, v37);
  }
}

void sub_100012938(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 64)];
  HIDWORD(v43) = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v44 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 64);
      LODWORD(v47) = 67109120;
      HIDWORD(v47) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v44, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: setSinglePersonaBundlesIdentifiers from pid:%d", &v47);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 64);
        LODWORD(v47) = 67109120;
        HIDWORD(v47) = v20;
        v21 = _os_log_send_and_compose_impl(v19, v44, 0, 0, &_mh_execute_header, v17, 0, "Entitlement Failure for pid:%d", &v47);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_72;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v47) = 0;
        LODWORD(v43) = 2;
        v26 = _os_log_send_and_compose_impl(v25, v44, 0, 0, &_mh_execute_header, v23, 0, "Entitlement Okay, but invalid profileInfo", &v47, v43);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_72:
    v32 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v43 + 4 withPid:*(a1 + 64)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v47 = 0;
    v11 = sub_1000011A8(1);
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
      v13 = *(a1 + 64);
      v14 = *(a1 + 48);
      *v44 = 67109634;
      *&v44[4] = v13;
      *&v44[8] = 2112;
      *&v44[10] = v14;
      v45 = 1024;
      v46 = v9;
      LODWORD(v43) = 24;
      v15 = _os_log_send_and_compose_impl(v12, &v47, 0, 0, &_mh_execute_header, v10, 2, "Entitlement Okay for pid:%d, setSinglePersonaBundlesIdentifiers bundleIDS list:%@ with asid:%d", v44, v43);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, HIDWORD(v43), *(a1 + 68));
  v31 = sub_1000479A8(*(a1 + 40), *(a1 + 48), v30);
  if (v31)
  {
    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v31 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        *v44 = 138412290;
        *&v44[4] = v32;
        LODWORD(v43) = 12;
        v36 = _os_log_send_and_compose_impl(v35, &v47, 0, 0, &_mh_execute_header, v33, 0, "Update bundle failed with error:%@", v44, v43);
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v30 withAuid:HIDWORD(v43)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v44 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        LOWORD(v47) = 0;
        LODWORD(v43) = 2;
        v40 = _os_log_send_and_compose_impl(v39, v44, 0, 0, &_mh_execute_header, v33, 2, "Update BundleIDS success", &v47, v43);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v32 = 0;
  }

LABEL_77:
  v42 = *(a1 + 56);
  if (v42)
  {
    (*(v42 + 16))(v42, v32);
  }
}

void sub_100013094(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v44 = -1;
  v45 = 2;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v46 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v51) = 67109120;
      HIDWORD(v51) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v46, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: fetchBundleIdentifiersForPersona from pid:%d", &v51);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v51) = 67109120;
        HIDWORD(v51) = v20;
        v21 = _os_log_send_and_compose_impl(v19, v46, 0, 0, &_mh_execute_header, v17, 0, "Entitlement Failure for pid:%d", &v51);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_73;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v51) = 0;
        v26 = _os_log_send_and_compose_impl(v25, v46, 0, 0, &_mh_execute_header, v23, 0, "In RDServer: entitlement OK, but invalid profileInfo", &v51, 2);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_73:
    v37 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    v31 = 0;
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v44 withPid:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0;
    v11 = sub_1000011A8(1);
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
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      *v46 = 138412802;
      *&v46[4] = v13;
      v47 = 1024;
      v48 = v14;
      v49 = 1024;
      v50 = v9;
      v15 = _os_log_send_and_compose_impl(v12, &v51, 0, 0, &_mh_execute_header, v10, 2, "In RDServer: entitlement OK, calling fetchBundleIdentifiersForPersona for profileInfo:%@ for pid:%d with asid:%d", v46, 24);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, v44, *(a1 + 60));
  v31 = sub_1000480DC(*(a1 + 40), v30, &v45);
  if (v31)
  {
    v45 = 0;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v51 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v46 = 138412290;
        *&v46[4] = v31;
        LODWORD(v43) = 12;
        v35 = _os_log_send_and_compose_impl(v34, &v51, 0, 0, &_mh_execute_header, v32, 2, "fetchBundleIdentifiersForPersona Success with array %@", v46, v43);
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v37 = 0;
  }

  else
  {
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v45 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        *v46 = 138412290;
        *&v46[4] = v37;
        LODWORD(v43) = 12;
        v40 = _os_log_send_and_compose_impl(v39, &v51, 0, 0, &_mh_execute_header, v32, 0, "fetchBundleIdentifiersForPersona failed with %@", v46, v43);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }
  }

LABEL_77:
  v42 = *(a1 + 48);
  if (v42)
  {
    (*(v42 + 16))(v42, v31, v37);
  }
}

void sub_100013934(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  HIDWORD(v36) = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v37 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v37, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: setMultiPersonaBundlesIdentifiers from pid:%d", &v40);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
    {
LABEL_14:
      v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v36 + 4 withPid:*(a1 + 56)];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v10 = qword_1000EB268;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v40 = 0;
        v11 = sub_1000011A8(1);
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
          v13 = *(a1 + 56);
          v14 = *(a1 + 40);
          *v37 = 67109634;
          *&v37[4] = v13;
          *&v37[8] = 2112;
          *&v37[10] = v14;
          v38 = 1024;
          v39 = v9;
          LODWORD(v36) = 24;
          v15 = _os_log_send_and_compose_impl(v12, &v40, 0, 0, &_mh_execute_header, v10, 2, "Entitlement Okay for pid:%d, set bundleIDS list:%@ with asid:%d", v37, v36);
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v23 = sub_100001458(v9, HIDWORD(v36), *(a1 + 60));
      v24 = sub_1000480F4(*(a1 + 40), v23);
      if (v24)
      {
        v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v26 = qword_1000EB268;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v27 = sub_1000011A8(1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
          }

          else
          {
            v28 = v27 & 0xFFFFFFFE;
          }

          if (v28)
          {
            *v37 = 138412290;
            *&v37[4] = v25;
            LODWORD(v36) = 12;
            v29 = _os_log_send_and_compose_impl(v28, &v40, 0, 0, &_mh_execute_header, v26, 0, "Update bundle failed with error:%@", v37, v36);
            v30 = v29;
            if (v29)
            {
              sub_100002A8C(v29);
            }
          }

          else
          {
            v30 = 0;
          }

          free(v30);
        }
      }

      else
      {
        [*(a1 + 32) _broadcastPersonaUpdates:v23 withAuid:HIDWORD(v36)];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v26 = qword_1000EB268;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *v37 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            LOWORD(v40) = 0;
            LODWORD(v36) = 2;
            v33 = _os_log_send_and_compose_impl(v32, v37, 0, 0, &_mh_execute_header, v26, 2, "Update BundleIDS success", &v40, v36);
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v25 = 0;
      }

      goto LABEL_63;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v17 = qword_1000EB268;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(a1 + 56);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v20;
      v21 = _os_log_send_and_compose_impl(v19, v37, 0, 0, &_mh_execute_header, v17, 0, "Entitlement Failure for pid:%d", &v40);
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_63:
  v35 = *(a1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v25);
  }
}

void sub_100013F90(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v37 = 2;
  v38 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v6;
      v7 = _os_log_send_and_compose_impl(v5, v39, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: fetchMultiPersonaBundleIdentifiersforPid from pid:%d", &v40);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
    {
LABEL_14:
      v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v38 withPid:*(a1 + 48)];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v10 = qword_1000EB268;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v40 = 0;
        v11 = sub_1000011A8(1);
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
          v13 = *(a1 + 48);
          *v39 = 67109376;
          *&v39[4] = v13;
          *&v39[8] = 1024;
          *&v39[10] = v9;
          v14 = _os_log_send_and_compose_impl(v12, &v40, 0, 0, &_mh_execute_header, v10, 2, "In RDServer: entitlement OK, calling fetchMultiPersonaBundleIDsList for pid:%d with asid:%d", v39, 14);
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v22 = sub_100001458(v9, v38, *(a1 + 52));
      v23 = sub_1000487DC(v22, &v37);
      if (v23)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v24 = qword_1000EB268;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v40 = 0;
          v25 = sub_1000011A8(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v26 = v25;
          }

          else
          {
            v26 = v25 & 0xFFFFFFFE;
          }

          if (v26)
          {
            *v39 = 138412290;
            *&v39[4] = v23;
            LODWORD(v36) = 12;
            v27 = _os_log_send_and_compose_impl(v26, &v40, 0, 0, &_mh_execute_header, v24, 2, "fetchMultiPersonaBundleIDsList Success with array %@", v39, v36);
            v28 = v27;
            if (v27)
            {
              sub_100002A8C(v27);
            }
          }

          else
          {
            v28 = 0;
          }

          free(v28);
        }

        v29 = 0;
        v37 = 0;
      }

      else
      {
        v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v37 userInfo:0];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v30 = qword_1000EB268;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            *v39 = 138412290;
            *&v39[4] = v29;
            LODWORD(v36) = 12;
            v33 = _os_log_send_and_compose_impl(v32, &v40, 0, 0, &_mh_execute_header, v30, 0, "fetchMultiPersonaBundleIDsList failed with %@", v39, v36);
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }
      }

      goto LABEL_64;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v16 = qword_1000EB268;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(a1 + 48);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v19;
      v20 = _os_log_send_and_compose_impl(v18, v39, 0, 0, &_mh_execute_header, v16, 0, "Entitlement Failure for pid:%d", &v40);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v23 = 0;
LABEL_64:
  v35 = *(a1 + 40);
  if (v35)
  {
    (*(v35 + 16))(v35, v23, v29);
  }
}

void sub_1000147B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) notifyNextPersonaObserver:v3 withUser:*(a1 + 40)])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v4 = qword_1000EB268;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v5 = sub_1000011A8(1);
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
        v12 = 138412290;
        v13 = v3;
        v7 = _os_log_send_and_compose_impl(v6, &v11, 0, 0, &_mh_execute_header, v4, 0, "Successfully notified personaObserver:%@", &v12, 12);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v4 = qword_1000EB268;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = sub_1000011A8(1);
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
        v12 = 138412290;
        v13 = v3;
        v7 = _os_log_send_and_compose_impl(v9, &v11, 0, 0, &_mh_execute_header, v4, 0, "Failed to notify persona personaObserver:%@", &v12, 12);
LABEL_18:
        v10 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_21;
      }

LABEL_20:
      v10 = 0;
LABEL_21:
      free(v10);
    }
  }
}

void sub_100014D6C(id a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v1 = qword_1000EB268;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v6 = 0;
      v4 = _os_log_send_and_compose_impl(v3, &v7, 0, 0, &_mh_execute_header, v1, 0, "interruptionHandler  notifyNextPersonaObserver", &v6, 2);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }
}

void sub_100014E50(id a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v1 = qword_1000EB268;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v6 = 0;
      v4 = _os_log_send_and_compose_impl(v3, &v7, 0, 0, &_mh_execute_header, v1, 0, "Invalidation notifyNextPersonaObserver", &v6, 2);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }
}

id sub_100014F34(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v3 = sub_1000011A8(1);
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
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      v6 = _os_log_send_and_compose_impl(v4, &v9, 0, 0, &_mh_execute_header, v2, 0, "personaListDidUpdateCompletionHandler completion handler from machService:%@", &v10, 12);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  return [*(a1 + 40) invalidate];
}

void sub_100015118(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v29 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      v30 = 67109120;
      v31 = v6;
      v7 = _os_log_send_and_compose_impl(v5, &v28, 0, 0, &_mh_execute_header, v3, 0, "In RDServer: registerUserPersonaStakeholderForPID from pid:%d", &v30);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.observer"])
  {
    v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v29 withPid:*(a1 + 48)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v10 = qword_1000EB268;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v30 = 67109120;
        v31 = v9;
        v13 = _os_log_send_and_compose_impl(v12, &v28, 0, 0, &_mh_execute_header, v10, 0, "Registering PersonaStakeholder for asid:%d", &v30);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    [v2 setPersonaStakeHolderIsRegistered:1];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v21 = qword_1000EB268;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v30) = 0;
        v24 = _os_log_send_and_compose_impl(v23, &v28, 0, 0, &_mh_execute_header, v21, 0, "registerUserPersonaStakeholderForPID Success", &v30, 2);
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    v26 = 0;
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(a1 + 48);
        v30 = 67109120;
        v31 = v18;
        v19 = _os_log_send_and_compose_impl(v17, &v28, 0, 0, &_mh_execute_header, v15, 0, "Entitlement Failure for pid:%d", &v30);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v26);
  }
}

void sub_100015640(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  HIDWORD(v37) = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 40);
      *v38 = 67109378;
      *&v38[4] = v6;
      *&v38[8] = 2112;
      *&v38[10] = v7;
      LODWORD(v37) = 18;
      v8 = _os_log_send_and_compose_impl(v5, &v39, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: registerUserPersonaObserverForPID from pid:%d; machservice:%@", v38, v37);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.observer"])
  {
    v10 = [*(a1 + 32) asidForClient:v2 withAuid:&v37 + 4 withPid:*(a1 + 56)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v11 = qword_1000EB268;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(a1 + 40);
        *v38 = 138412546;
        *&v38[4] = v14;
        *&v38[12] = 1024;
        *&v38[14] = v10;
        LODWORD(v37) = 18;
        v15 = _os_log_send_and_compose_impl(v13, &v39, 0, 0, &_mh_execute_header, v11, 0, "Registering PersonaObserver with machService:%@ with asid:%d", v38, v37);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v23 = sub_100001458(v10, HIDWORD(v37), *(a1 + 60));
    if (sub_10004A188(*(a1 + 40), v23))
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v24 = qword_1000EB268;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        v25 = sub_1000011A8(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          LOWORD(v39) = 0;
          LODWORD(v37) = 2;
          v27 = _os_log_send_and_compose_impl(v26, v38, 0, 0, &_mh_execute_header, v24, 0, "Successful Persona Observer registration of machServiceName", &v39, v37);
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v35 = 0;
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v29 = qword_1000EB268;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 0;
        v30 = sub_1000011A8(1);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v32 = *(a1 + 40);
          *v38 = 138412290;
          *&v38[4] = v32;
          LODWORD(v37) = 12;
          v33 = _os_log_send_and_compose_impl(v31, &v39, 0, 0, &_mh_execute_header, v29, 0, "Failed to register Persona Observer:%@", v38, v37);
          v34 = v33;
          if (v33)
          {
            sub_100002A8C(v33);
          }
        }

        else
        {
          v34 = 0;
        }

        free(v34);
      }

      v35 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v39) = 67109120;
        HIDWORD(v39) = v20;
        v21 = _os_log_send_and_compose_impl(v19, v38, 0, 0, &_mh_execute_header, v17, 0, "Entitlement Failure for pid:%d", &v39);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v35 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    (*(v36 + 16))(v36, v35);
  }
}