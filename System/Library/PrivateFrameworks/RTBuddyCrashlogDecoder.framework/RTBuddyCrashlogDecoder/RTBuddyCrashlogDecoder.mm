uint64_t RTK_scrlg_decode(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, int a5)
{
  if (a3 < 0x20)
  {
    return 1;
  }

  v8 = *(a2 + 2);
  if (v8 <= 0x1F)
  {
    RTK_scrlg_section_writer_add_error_string(a1, "Crash with invalid (short) log length.  Log %u bytes, Minimum valid length is %lu");
    return 1;
  }

  if (*a2 != 1129072709)
  {
    RTK_scrlg_section_writer_add_error_string(a1, "Crash with invalid header signature: 0x%x, should be 0x%x");
    return 1;
  }

  if (*(a2 + 5) != 3)
  {
    RTK_scrlg_section_writer_add_error_string(a1, "Crash with unsupported log (major version: %u, should be %u)");
    return 1;
  }

  RTK_scrlg_section_writer_add_string(a1, @"crashlog-version", "%02u.%02u", 3, 3);
  if (*(a2 + 2) > a3)
  {
    RTK_scrlg_section_writer_add_error_string(a1, "Crash with invalid log length.  Log %u bytes, buffer is %lu", *(a2 + 2), a3);
    v8 = a3;
  }

  v12 = v8 - 32;
  v13 = *(a2 + 3);
  if ((v13 & 0x100) != 0)
  {
    RTK_scrlg_section_writer_add_error_string(a1, "Incomplete crash log, IOP crashed during logging (%x)", *(a2 + 3));
  }

  else if (v12 <= a3)
  {
    v14 = *a2 == *(a2 + v12) && a2[1] == *(a2 + v12 + 8);
    v15 = v14 && a2[2] == *(a2 + v12 + 16);
    if (!v15 || a2[3] != *(a2 + v12 + 24))
    {
      RTK_scrlg_section_writer_add_error_string(a1, "End header does not match log header, log might be corrupted (logSize=%zd %p %p)", v8 - 32, a2, a2 + v12);
      v12 = v8;
    }
  }

  v17 = 0;
  v18 = exception_name_table;
  do
  {
    v19 = *v18;
    v18 += 4;
    if (v13 == v19)
    {
      break;
    }

    ++v17;
  }

  while (v17 != 16);
  if (*&exception_name_table[4 * v17 + 2])
  {
    RTK_scrlg_section_writer_add_panic_string(a1, "%s");
  }

  else
  {
    RTK_scrlg_section_writer_add_panic_string(a1, "crash of unknown type 0x%0x");
  }

  RTK_scrlg_section_writer_add_string(a1, @"exception", "0x%x", v13);
  if ((v13 & 0x200) != 0)
  {
    v20 = 0;
    v21 = exception_name_table;
    do
    {
      v22 = *v21;
      v21 += 4;
      if (*(a2 + 6) == v22)
      {
        break;
      }

      ++v20;
    }

    while (v20 != 16);
    if (*&exception_name_table[4 * v20 + 2])
    {
      RTK_scrlg_section_writer_add_panic_string(a1, " nested %s @ 0x%08llx");
    }

    else
    {
      RTK_scrlg_section_writer_add_panic_string(a1, " nested unknown 0x%x @ 0x%08llx");
    }

    RTK_scrlg_section_writer_add_string(a1, @"nested-exception", "0x%x", *(a2 + 6));
  }

  if (v12 >= 0x21)
  {
    v23 = (a2 + 4);
    for (i = 32; i < v12; i += v31)
    {
      if (i + 16 > v12)
      {
        RTK_scrlg_section_writer_add_error_string(a1, "Section size error.  Section Header (%zu bytes) larger than remaining buffer (%lu bytes)");
        break;
      }

      v25 = v23[3];
      if (i + v25 > v12)
      {
        RTK_scrlg_section_writer_add_error_string(a1, "Section size error.  Signature %#0x, version %#0x, section (%u bytes) larger than remaining buffer (%lu bytes)");
        break;
      }

      if (v25 < 0x10)
      {
        RTK_scrlg_section_writer_add_error_string(a1, "Section size too small.  Signature %#0x, version %#0x, section (%u bytes) should be at least %lu bytes");
        break;
      }

      if (a5 >= 1)
      {
        v26 = v12;
        v27 = 1;
        v28 = a4;
        do
        {
          v29 = *v28++;
          v30 = RTK_scrlg_decoder_decode(v29, a1, *v23, v23[2], i + 16, (v23 + 4), v23[3] - 16);
          if (v27 >= a5)
          {
            break;
          }

          ++v27;
        }

        while ((v30 & 1) == 0);
        v12 = v26;
        if (v30)
        {
          goto LABEL_52;
        }

        v25 = v23[3];
      }

      RTK_scrlg_decoder_decode(&rtkit_unknown_section_decoder, a1, *v23, v23[2], i + 16, (v23 + 4), v25 - 16);
LABEL_52:
      v31 = v23[3];
      v23 = (v23 + v31);
    }
  }

  RTK_scrlg_section_writer_add_string_object(a1, @"panic", *(a1 + 24));
  return 0;
}

__CFDictionary *RTK_scrlg_section_writer_create@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  v2 = *MEMORY[0x277CBECE8];
  *a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = MEMORY[0x277CBF128];
  a1[1] = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  a1[2] = CFArrayCreateMutable(v2, 0, v3);
  result = RTK_crashlog_string_create(&unk_261723382);
  a1[3] = result;
  return result;
}

void RTK_scrlg_section_writer_destroy(uint64_t a1)
{
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 8);

  CFRelease(v2);
}

uint64_t RTK_scrlg_section_writer_finalize(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 16)) >= 1)
  {
    CFDictionaryAddValue(*a1, @"errors", *(a1 + 16));
  }

  if (CFArrayGetCount(*(a1 + 8)) >= 1)
  {
    CFDictionaryAddValue(*a1, @"sections", *(a1 + 8));
  }

  return *a1;
}

void RTK_scrlg_section_writer_add_to_array(uint64_t a1, __CFArray *a2)
{
  v3 = RTK_scrlg_section_writer_finalize(a1);

  CFArrayAppendValue(a2, v3);
}

void RTK_scrlg_section_writer_add_to_dictionary(uint64_t a1, __CFDictionary *a2, const void *a3)
{
  v5 = RTK_scrlg_section_writer_finalize(a1);

  CFDictionaryAddValue(a2, a3, v5);
}

void RTK_scrlg_section_writer_add_error_string(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v = RTK_crashlog_string_create_v(__format, va);
  CFArrayAppendValue(*(a1 + 16), v);
  CFRelease(v);
}

void RTK_scrlg_section_writer_add_panic_string(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v = RTK_crashlog_string_create_v(__format, va);
  RTK_crashlog_string_append_object(*(a1 + 24), v);
  CFRelease(v);
}

void RTK_scrlg_section_writer_add_string(CFMutableDictionaryRef *a1, const void *a2, char *__format, ...)
{
  va_start(va, __format);
  v = RTK_crashlog_string_create_v(__format, va);
  CFDictionaryAddValue(*a1, a2, v);
  CFRelease(v);
}

void RTK_scrlg_section_writer_add_string_n(CFMutableDictionaryRef *a1, const void *a2, const char *a3, size_t a4)
{
  n = RTK_crashlog_string_create_n(a3, a4);
  CFDictionaryAddValue(*a1, a2, n);

  CFRelease(n);
}

void RTK_scrlg_section_writer_add_number(CFMutableDictionaryRef *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(*a1, a2, v5);
  CFRelease(v5);
}

uint64_t RTK_scrlg_decoder_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v14 = (*(a1 + 16))(a1, a3, a4);
  if (v14)
  {
    v17 = 0u;
    *appendedString = 0u;
    RTK_scrlg_section_writer_create(&v17);
    RTK_scrlg_section_writer_add_string(&v17, kRTBuddyCrashlogSectionName, "%s", *a1);
    RTK_scrlg_section_writer_add_number(&v17, kRTBuddyCrashlogSectionOffset, a5);
    RTK_scrlg_section_writer_add_number(&v17, kRTBuddyCrashlogSectionSize, a7);
    RTK_scrlg_section_writer_add_string(&v17, kRTBuddyCrashlogSectionSignature, "%c%c%c%c", HIBYTE(v11), BYTE2(v11), BYTE1(v11), v11);
    RTK_scrlg_section_writer_add_string(&v17, kRTBuddyCrashlogSectionVersion, "%08x", v10);
    (*(a1 + 24))(a1, &v17, a6, a7);
    v15 = RTK_scrlg_section_writer_finalize(&v17);
    CFArrayAppendValue(*(a2 + 8), v15);
    RTK_crashlog_string_append_object(*(a2 + 24), appendedString[1]);
    RTK_scrlg_section_writer_destroy(&v17);
  }

  return v14;
}

void _rtk_version_section_decode(uint64_t a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 13) << 8 == 512)
  {
    RTK_scrlg_section_writer_add_string_n(a2, @"version", (a3 + 16), a4 - 16);
    v6 = 0;
    *uu = *a3;
  }

  else
  {
    RTK_scrlg_section_writer_add_string_n(a2, @"version", (a3 + 24), a4 - 24);
    *uu = *a3;
    v6 = *(a3 + 16);
  }

  memset(out, 0, 37);
  uuid_unparse_lower(uu, out);
  RTK_scrlg_section_writer_add_string(a2, @"uuid", "%s", out);
  RTK_scrlg_section_writer_add_string(a2, @"slide", "0x%llx", v6);
}

void _rtk_product_version_section_decode(uint64_t a1, CFMutableDictionaryRef *a2, const char *a3, uint64_t a4)
{
  v8 = a3 + 16;
  v7 = *a3;
  v9 = "Other";
  if (v7 == 2)
  {
    v9 = "Debug";
  }

  if (v7 == 1)
  {
    v10 = "Release";
  }

  else
  {
    v10 = v9;
  }

  if (v7 == 1)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  RTK_scrlg_section_writer_add_string_n(a2, @"Build", v10, v11);
  RTK_scrlg_section_writer_add_string_n(a2, @"Machine", a3 + 1, 0xFuLL);

  RTK_scrlg_section_writer_add_string_n(a2, @"OS version", v8, a4 - 16);
}

void _rtk_callstack_section_decode(int a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 7) & 0x10) != 0)
  {
    RTK_scrlg_section_writer_add_string(a2, @"stack-description", "Faulting Int Call Stack:");
  }

  else
  {
    RTK_scrlg_section_writer_add_string(a2, @"stack-description", "Faulting task %u Call Stack:");
  }

  _rtk_callstack_decode(a2, (a3 + 8), (a4 + 0x7FFFFFFF8) >> 3);
}

void _rtk_string_section_decode(uint64_t a1, CFMutableDictionaryRef *a2, _BYTE *a3, uint64_t a4)
{
  n = RTK_crashlog_string_create_n(a3 + 4, a4 - 4);
  RTK_scrlg_section_writer_add_string_object(a2, @"contents", n);
  if (*a3)
  {
    CStringPtr = CFStringGetCStringPtr(n, 0x8000100u);
    RTK_scrlg_section_writer_add_panic_string(a2, " - %s", CStringPtr);
  }

  CFRelease(n);
}

void _rtk_tasks_section_decode(uint64_t a1, CFMutableDictionaryRef *a2, uint64_t a3, unint64_t a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a4 >= 0x49)
  {
    v18 = (a4 - 72) >> 3;
    do
    {
      memset(v19, 0, sizeof(v19));
      RTK_scrlg_section_writer_create(v19);
      n = RTK_crashlog_string_create_n((a3 + 44), 0x1CuLL);
      v8 = n;
      if (*a3 < 0)
      {
        v9 = "*";
      }

      else
      {
        v9 = " ";
      }

      v10 = *a3 & 0x7FFFFFFF;
      CStringPtr = CFStringGetCStringPtr(n, 0x8000100u);
      v12 = *(a3 + 8);
      if (!v12)
      {
        v12 = *(a3 + 4);
      }

      v13 = *(a3 + 12);
      if (v13 >= 6)
      {
        v13 = 6;
      }

      RTK_scrlg_section_writer_add_string(v19, @"description", "%s%2lu %s | %03d/%03d | %5llu/%-5llu | %s | %#llx", v9, v10, CStringPtr, *(a3 + 4), v12, *(a3 + 32), *(a3 + 24), _rtk_tasks_decode_status::status_map[v13], *(a3 + 16));
      CFRelease(v8);
      v14 = *(a3 + 40);
      v15 = 8 * v14 + 72;
      if (a4 >= v15)
      {
        if (v14)
        {
          if (v18 < v14)
          {
            RTK_scrlg_section_writer_add_error_string(v19, "warning: stack truncated, may indicate corruption.");
            LODWORD(v14) = v18;
          }

          _rtk_callstack_decode(v19, (a3 + 72), v14);
        }
      }

      else
      {
        RTK_scrlg_section_writer_add_error_string(v19, " - Invalid call stack, Depth of %u (%lu bytes) with %zu bytes remaining", v14, 4 * v14, a4);
      }

      if (v15 >= a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = v15;
      }

      a4 -= v16;
      a3 += v16;
      RTK_scrlg_section_writer_add_to_array(v19, Mutable);
      RTK_scrlg_section_writer_destroy(v19);
    }

    while (a4 > 0x48);
  }

  CFDictionaryAddValue(*a2, @"tasks", Mutable);
  CFRelease(Mutable);
}

void _rtk_mailbox_section_decode(int a1, CFMutableDictionaryRef *a2, uint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  RTK_scrlg_section_writer_add_string(a2, @"route-number", "%d", *(a3 + 24));
  RTK_scrlg_section_writer_add_string(a2, @"mailbox-error", "%d", *(a3 + 16));
  *__str = 0u;
  v22 = 0u;
  RTK_scrlg_section_writer_create(__str);
  RTK_scrlg_section_writer_add_string(__str, @"AKF_KIC_INBOX_CTRL", "0x%08x", *a3);
  RTK_scrlg_section_writer_add_string(__str, @"AKF_KIC_MAILBOX_SET", "0x%08x", *(a3 + 4));
  RTK_scrlg_section_writer_add_string(__str, @"AKF_AP_OUTBOX_CTRL", "0x%08x", *(a3 + 8));
  if ((*(a3 + 16) & 4) == 0)
  {
    RTK_scrlg_section_writer_add_string(__str, @"AKF_AP_MAILBOX_SET", "0x%08x", *(a3 + 12));
  }

  RTK_scrlg_section_writer_add_to_dictionary(__str, *a2, @"registers");
  RTK_scrlg_section_writer_destroy(__str);
  v7 = *(a3 + 16);
  if (v7)
  {
    if (v7)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "INBOX not ready");
    }

    if ((v7 & 2) != 0)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "OUTBOX not ready");
    }

    if ((*(a3 + 2) & 8) != 0)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "INBOX overflow");
      if ((*(a3 + 2) & 8) != 0)
      {
        RTK_scrlg_section_writer_add_error_string(a2, "INBOX underflow");
      }
    }

    v8 = *(a3 + 8);
    if ((v8 & 0x40000) != 0)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "OUTBOX overflow");
      v8 = *(a3 + 8);
    }

    if ((v8 & 0x80000) != 0)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "OUTBOX under");
    }
  }

  if (a4 > 0x1B)
  {
    v20 = a2;
    v9 = a4 - 28;
    v10 = RTK_crashlog_string_create("    dir   endpoint      epnum timestamp           msg\n    ====  ============  ===== ==================  ==================");
    if ((v9 / 0x18))
    {
      v11 = 0;
      do
      {
        v12 = a3 + 28 + 24 * v11;
        v13 = *v12;
        v15 = *(v12 + 8);
        v14 = *(v12 + 16);
        if (v14)
        {
          v16 = "[RX]";
        }

        else
        {
          v16 = "[TX]";
        }

        if ((v13 - 32) >= 0xDF)
        {
          v17 = &off_279AE4380;
          v18 = 13;
          while (*(v17 - 4) != v13)
          {
            v17 += 2;
            if (!--v18)
            {
              snprintf(__str, 0xCuLL, "unknown%02d");
              goto LABEL_30;
            }
          }

          strlcpy(__str, *v17, 0xCuLL);
        }

        else
        {
          snprintf(__str, 0xCuLL, "user%02d");
        }

LABEL_30:
        v19 = RTK_crashlog_string_create("\n    %4s %12s %7u 0x%016llx  0x%016llx", v16, __str, v13, v14 & 0xFFFFFFFFFFFFFFFCLL, v15);
        RTK_crashlog_string_append_object(v10, v19);
        CFRelease(v19);
        ++v11;
      }

      while (v11 != (v9 / 0x18));
    }

    RTK_scrlg_section_writer_add_string_object(v20, @"log", v10);
    CFRelease(v10);
  }

  else
  {
    RTK_scrlg_section_writer_add_error_string(a2, "Section size too small.  Got %zu, expected >= %zu", a4, 0x1CuLL);
  }
}

void _rtk_armv8_registers_section_decode(int a1, CFMutableDictionaryRef *a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 7)
  {
    if (*(a3 + 4) == 828)
    {
      if (a4 > 0x343)
      {
        if ((*a3 & 0x10000) == 0)
        {
          v6 = *a3;
          v7 = *(a3 + 832) >> 26;
          v8 = RTK_crashlog_string_create(&unk_261723382);
          v9 = v8;
          v11 = v6 == 4 && v7 == 47 || v6 == 10;
          v12 = v11;
          if (v11 || (RTK_crashlog_string_append(v8, " pc=%#018llx", *(a3 + 264)), v6 <= 0x1F))
          {
            v13 = &off_279AE4450;
            v14 = 224;
            while (1)
            {
              v15 = *(v13 - 2);
              if (v15 == v7 || v15 == -1)
              {
                break;
              }

              v13 += 2;
              v14 -= 16;
              if (!v14)
              {
                v17 = 0;
                goto LABEL_28;
              }
            }

            v17 = *v13;
LABEL_28:
            RTK_crashlog_string_append(v9, " Exception class=%#04x (%s), IL=%u, iss=%#x", v7, v17, (*(a3 + 832) >> 25) & 1, *(a3 + 832) & 0x1FFFFFF);
            if ((v12 & 1) == 0)
            {
              RTK_crashlog_string_append(v9, " far=%#018llx", *(a3 + 816));
              if (*(a3 + 824) != -1)
              {
                RTK_crashlog_string_append(v9, " far_physical=%#018llx", *(a3 + 824));
              }
            }
          }

          RTK_scrlg_section_writer_add_panic_string_object(a2, v9);
          RTK_crashlog_string_append(v9, "\n");
          for (i = 0; i != 30; ++i)
          {
            RTK_crashlog_string_append(v9, "  r%02d=%#018llx", i, *(a3 + 8 + 8 * i));
            if ((~i & 3) == 0)
            {
              RTK_crashlog_string_append(v9, "\n");
            }
          }

          RTK_crashlog_string_append(v9, "\n   sp=%#018llx   lr=%#018llx   pc=%#018llx  psr=%#08x\n", *(a3 + 256), *(a3 + 248), *(a3 + 264), *(a3 + 272));
          RTK_crashlog_string_append(v9, "  psr=%#08x        cpacr=%#08x           fpsr=%#08x           fpcr=%#08x", *(a3 + 272), *(a3 + 280), *(a3 + 288), *(a3 + 296));
          RTK_scrlg_section_writer_add_string_object(a2, @"registers", v9);

          CFRelease(v9);
        }
      }

      else
      {
        RTK_scrlg_section_writer_add_error_string(a2, "Not enough data in section for a frame Got %zu bytes, expected %zu\n", a3);
      }
    }

    else
    {
      RTK_scrlg_section_writer_add_error_string(a2, "Wrong frame size for %s. Got %u bytes, expected %lu\n", a3);
    }
  }

  else
  {
    RTK_scrlg_section_writer_add_error_string(a2, "Invalid section size.  Expected >%zu, Got %zu\n", a3);
  }
}

void _rtk_armvxm_registers_section_decode(int a1, CFMutableDictionaryRef *a2, unsigned int *a3)
{
  v5 = a3[1];
  if (v5 == 232)
  {
    v15 = a3[4];
    v16 = a3[5];
    v17 = a3[6];
    v18 = a3[7];
    v19 = a3[2];
    v20 = a3[3];
    v21 = ipsr_to_string(v16);
    v13 = RTK_crashlog_string_create("ipsr=0x%08x(%s)", v16, v21);
    format_exception_string(v13, v16, v20, v19, v18, v17, v15);
    v14 = RTK_crashlog_string_create("\n                  Faulting pc=0x%08x            \n  r00=0x%08x  r01=0x%08x  r02=0x%08x  r03=0x%08x\n  r04=0x%08x  r05=0x%08x  r06=0x%08x  r07=0x%08x\n  r08=0x%08x  r09=0x%08x  r10=0x%08x  r11=0x%08x\n  r12=0x%08x   sp=0x%08x   lr=0x%08x xpsr=0x%08x\nexret=0x%08x            fpscr=0x%08x", a3[40], a3[34], a3[35], a3[36], a3[37], a3[26]);
  }

  else
  {
    if (v5 != 96)
    {
      RTK_scrlg_section_writer_add_error_string(a2, "Wrong frame size for ARMv7m. Got %U bytes, expected %lu or %lu\n", v5, 96, 232);
      return;
    }

    v6 = a3[4];
    v7 = a3[5];
    v8 = a3[6];
    v9 = a3[7];
    v10 = a3[2];
    v11 = a3[3];
    v12 = ipsr_to_string(v7);
    v13 = RTK_crashlog_string_create("ipsr=0x%08x(%s)", v7, v12);
    format_exception_string(v13, v6, v7, v11, v10, v9, v8);
    v14 = RTK_crashlog_string_create("\n                  Faulting pc=0x%08x            \n  r00=0x%08x  r01=0x%08x  r02=0x%08x  r03=0x%08x\n  r04=0x%08x  r05=0x%08x  r06=0x%08x  r07=0x%08x\n  r08=0x%08x  r09=0x%08x  r10=0x%08x  r11=0x%08x\n  r12=0x%08x   sp=0x%08x   lr=0x%08x xpsr=0x%08x\nexret=0x%08x", a3[24], a3[18], a3[19], a3[20], a3[21], a3[10]);
  }

  v22 = v14;
  RTK_crashlog_string_append_object(v13, v14);
  RTK_scrlg_section_writer_add_string_object(a2, @"registers", v13);
  CFRelease(v13);

  CFRelease(v22);
}

void _rtk_armv7a_registers_section_decode(int a1, CFMutableDictionaryRef *a2, unsigned __int8 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1) != 352)
  {
    RTK_scrlg_section_writer_add_error_string(a2, "Wrong frame size for %s. Got %u bytes (section), expected %lu\n", "ARMv7a", *(a3 + 1), 352);
  }

  if ((a3[2] & 1) == 0)
  {
    v5 = RTK_crashlog_string_create(&unk_261723382);
    v6 = *a3;
    v7 = v6 > 0x23;
    v8 = (1 << v6) & 0x800000018;
    if (v7 || v8 == 0)
    {
      RTK_crashlog_string_append(v5, " pc=0x%08x ");
    }

    else
    {
      v10 = *(a3 + 17);
      v11 = *(a3 + 86);
      if ((v11 & 0x200) != 0)
      {
        v12 = *(a3 + 86) & 0x3F;
        v15 = &off_279AE47A0;
        v16 = 112;
        v14 = 10;
        v13 = &fsr_long_descriptor_table;
        while ((*(a3 + 86) & 0x3C) != *(v15 - 2))
        {
          v15 += 2;
          v16 -= 16;
          if (!v16)
          {
            goto LABEL_13;
          }
        }

        v21 = __dst;
        snprintf(__dst, 0x40uLL, "%s level %u", *v15, *(a3 + 86) & 3);
      }

      else
      {
        v12 = *(a3 + 86) & 0xF | (16 * ((*(a3 + 86) >> 10) & 1));
        v13 = &fsr_short_descriptor_table;
        v14 = 23;
LABEL_13:
        v17 = (v13 + 8);
        v18 = 16 * v14;
        while (1)
        {
          v19 = *(v17 - 2);
          if (v12 == v19 || v19 == -1)
          {
            break;
          }

          v17 += 2;
          v18 -= 16;
          if (!v18)
          {
            v21 = 0;
            goto LABEL_23;
          }
        }

        v21 = __dst;
        strlcpy(__dst, *v17, 0x40uLL);
      }

LABEL_23:
      RTK_crashlog_string_append(v5, " pc=%#010x  fsr=%#010x (%s)  far=%#010x ", v10, v11, v21, *(a3 + 87));
      if (*(a3 + 44) != -1)
      {
        RTK_crashlog_string_append(v5, "  far_physical=%#018llx ");
      }
    }

    RTK_scrlg_section_writer_add_panic_string_object(a2, v5);
    RTK_crashlog_string_append(v5, "  r00=0x%08x  r01=0x%08x  r02=0x%08x  r03=0x%08x\n  r04=0x%08x  r05=0x%08x  r06=0x%08x  r07=0x%08x\n  r08=0x%08x  r09=0x%08x  r10=0x%08x  r11=0x%08x\n  r12=0x%08x   sp=0x%08x   lr=0x%08x   pc=0x%08x\n  psr=0x%08x\n", *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7), *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 12), *(a3 + 13), *(a3 + 14), *(a3 + 15), *(a3 + 16), *(a3 + 17), *(a3 + 18));
    RTK_scrlg_section_writer_add_string_object(a2, @"registers", v5);
    CFRelease(v5);
  }
}

void _rtk_asc_async_info_registers_section_decode(uint64_t a1, CFMutableDictionaryRef *a2, uint64_t *a3)
{
  v6 = *a3;
  if ((*a3 & 0x14) != 0)
  {
    v7 = ("single" & (v6 << 61 >> 63));
    v8 = "double and single";
    if ((v6 & 4) == 0)
    {
      v8 = "double";
    }

    if ((v6 & 0x10) != 0)
    {
      v7 = v8;
    }

    RTK_scrlg_section_writer_add_error_string(a2, "ASC L2C %s bit error l2c_err_sts %#018llx, l2c_err_adr %#018llx, l2c_err_inf %#018llx,", v7, v6, a3[1], a3[2]);
    v6 = *a3;
  }

  RTK_scrlg_section_writer_add_string(a2, @"description", "l2c_err_sts %#018llx, l2c_err_adr %#018llx, l2c_err_inf %#018llx\nlsu_err_sts %#018llx, fed_err_sts %#018llx, mmu_err_sts %#018llx", v6, a3[1], a3[2], a3[3], a3[4], a3[5]);
  if ((*(a1 + 12) & 0xFEFF) != 0)
  {
    RTK_scrlg_section_writer_add_string(a2, @"description", "\ndpc_err_sts %#018llx", a3[6]);
  }
}

void _rtk_autobkp_section_decode(int a1, CFMutableDictionaryRef *a2, uint64_t a3, unint64_t a4)
{
  RTK_scrlg_section_writer_add_string(a2, @"size", "%zu", a4);

  hexDataPrint(a2, a3, a4);
}

void _rtk_spi_flash_section_decode(int a1, CFMutableDictionaryRef *a2, __int128 *a3, unint64_t a4)
{
  if (a4 >= 0x28)
  {
    v15 = v4;
    v16 = v5;
    v11 = *a3;
    v12 = a3[1];
    v7 = a3[3];
    v13 = a3[2];
    v14 = v7;
    v8 = BYTE3(v11) & 1;
    if ((BYTE3(v11) & 2) != 0)
    {
      v8 = 2;
    }

    if ((BYTE3(v11) & 4) != 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    RTK_scrlg_section_writer_add_string(a2, @"manufacturer", "%02x", v11);
    RTK_scrlg_section_writer_add_string(a2, @"device", "%04x", *(&v11 + 1));
    RTK_scrlg_section_writer_add_number(a2, @"size", SDWORD1(v11));
    if ((BYTE3(v11) & 8) != 0)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    RTK_scrlg_section_writer_add_number(a2, @"address-length", v10);
    RTK_scrlg_section_writer_add_number(a2, @"bus-width", v9);
    RTK_scrlg_section_writer_add_number(a2, @"awake", BYTE8(v11) & 1);
    RTK_scrlg_section_writer_add_number(a2, @"busy", (DWORD2(v11) >> 1) & 1);
    RTK_scrlg_section_writer_add_number(a2, @"polling", (DWORD2(v11) >> 2) & 1);
    _rtk_spi_flash_operation_decode(a2, @"last-transaction", &v12);
    _rtk_spi_flash_operation_decode(a2, @"current-transaction", &v13);
    _rtk_spi_flash_operation_decode(a2, @"suspended-transaction", &v14);
  }
}

void _rtk_hex_section_decode(int a1, CFMutableDictionaryRef *a2, const char *a3, uint64_t a4)
{
  RTK_scrlg_section_writer_add_string(a2, @"title", "%.*s", 8, a3);

  hexDataPrint(a2, (a3 + 8), a4 - 8);
}

void _rtk_callstack_decode(CFMutableDictionaryRef *a1, _BYTE *a2, int a3)
{
  for (i = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]); a3; --a3)
  {
    if (*a2 == 0xFF)
    {
      v7 = RTK_crashlog_string_create("%s");
    }

    else
    {
      v7 = RTK_crashlog_string_create("%#018llx");
    }

    v8 = v7;
    CFArrayAppendValue(i, v7);
    CFRelease(v8);
    a2 += 8;
  }

  if (CFArrayGetCount(i) > 0)
  {
    CFDictionaryAddValue(*a1, @"stack", i);
  }

  CFRelease(i);
}

const char *ipsr_to_string(unsigned int a1)
{
  v1 = a1 - 11;
  if (a1 - 11 < 6 && ((0x3Bu >> v1) & 1) != 0)
  {
    v2 = &(&off_279AE4808)[v1];
    return *v2;
  }

  if (a1 <= 6)
  {
    v2 = &ipsr_dict[a1];
    return *v2;
  }

  return "Unknown";
}

void format_exception_string(__CFString *a1, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7)
{
  if (a3 <= 4)
  {
    if (a3 == 3)
    {
      if (a7 != -559039827)
      {
        v10 = a5;
        RTK_crashlog_string_append(a1, " hfsr=%#010x cfsr=%#010x", a7, a5);
        if ((v10 & 0xFF00) != 0)
        {
          RTK_crashlog_string_append(a1, " bfar=%#010x");
        }

        else if (v10)
        {
          RTK_crashlog_string_append(a1, " mmfar=%#010x");
        }

        goto LABEL_18;
      }
    }

    else if (a3 == 4)
    {
      RTK_crashlog_string_append(a1, " cfsr=%#010x mmfar=%#010x");
    }
  }

  else if (a3 == 5)
  {
    RTK_crashlog_string_append(a1, " cfsr=%#010x bfar=%#010x");
  }

  else if (a3 == 6 || a3 == 12)
  {
    RTK_crashlog_string_append(a1, " cfsr=%#010x");
  }

  if (a6 == -559039827 && a7 == -559039827)
  {
    RTK_crashlog_string_append(a1, " control=0x%08x primask=0x%08x");
    return;
  }

LABEL_18:
  RTK_crashlog_string_append(a1, " control=0x%08x primask=0x%08x basepri=0x%08x fltmsk=0x%08x");
}

void hexDataPrint(CFMutableDictionaryRef *a1, uint64_t a2, unint64_t a3)
{
  v36[0] = *MEMORY[0x277D85DE8];
  v6 = RTK_crashlog_string_create(&unk_261723382);
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    v9 = 0uLL;
    cf = v6;
    v26 = a1;
LABEL_3:
    v34 = v9;
    v35 = v9;
    v32 = v9;
    v33 = v9;
    v30 = v9;
    v31 = v9;
    *__str = v9;
    v29 = v9;
    v27 = v8;
    v10 = snprintf(__str, 0x80uLL, "%08x", v8);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v12 = &__str[v10];
      while (1)
      {
        v13 = (__str - v12);
        v14 = a3 <= v11 ? snprintf(v12, (v13 + 128), "%s   ") : snprintf(v12, (v13 + 128), "%s %02x");
        if ((v14 & 0x80000000) != 0)
        {
          break;
        }

        v12 += v14;
        if (++v11 == 16)
        {
          v15 = snprintf(v12, v36 - v12, "  |");
          if ((v15 & 0x80000000) != 0)
          {
            break;
          }

          v16 = 0;
          v17 = &v12[v15];
          v18 = v27;
          do
          {
            if (a3 > v16)
            {
              v19 = *(a2 + v18);
              if (*(a2 + v18) < 0)
              {
                v20 = __maskrune(*(a2 + v18), 0x40000uLL);
              }

              else
              {
                v20 = *(MEMORY[0x277D85DE0] + 4 * *(a2 + v18) + 60) & 0x40000;
              }

              if (v20)
              {
                v21 = v19;
              }

              else
              {
                v21 = 46;
              }

              v22 = snprintf(v17, v36 - v17, "%c", v21);
              if ((v22 & 0x80000000) != 0)
              {
                goto LABEL_28;
              }

              v17 += v22;
            }

            ++v16;
            ++v18;
          }

          while (v16 != 16);
          v23 = 16;
          if (a3 < 0x10)
          {
            v23 = a3;
          }

          v8 = v27 + v23;
          a3 -= v23;
          v24 = "\n";
          if (!a3)
          {
            v24 = &unk_261723382;
          }

          v7 = cf;
          RTK_crashlog_string_append(cf, "%s|%s", __str, v24);
          a1 = v26;
          v9 = 0uLL;
          if (a3)
          {
            goto LABEL_3;
          }

          goto LABEL_27;
        }
      }
    }

LABEL_28:
    CFRelease(cf);
    RTK_scrlg_section_writer_add_error_string(v26, "Error encountered while formatting hex data");
  }

  else
  {
LABEL_27:
    RTK_scrlg_section_writer_add_string_object(a1, @"contents", v7);
    CFRelease(v7);
  }
}

void _rtk_spi_flash_operation_decode(__CFDictionary **a1, const void *a2, uint64_t a3)
{
  memset(v6, 0, sizeof(v6));
  RTK_scrlg_section_writer_create(v6);
  RTK_scrlg_section_writer_add_string(v6, @"type", "%s", (&off_279AE4838)[*(a3 + 12) & 3]);
  RTK_scrlg_section_writer_add_string(v6, @"started", "0x%llx", *a3);
  RTK_scrlg_section_writer_add_string(v6, @"address", "0x%x", *(a3 + 8));
  RTK_scrlg_section_writer_add_string(v6, @"size", "0x%x", *(a3 + 12) >> 2);
  RTK_scrlg_section_writer_add_to_dictionary(v6, *a1, a2);
  RTK_scrlg_section_writer_destroy(v6);
}

const void *RTBuddyCrashlogDecodeWithDecoders(const __CFData *a1, uint64_t *a2, int a3)
{
  memset(v10, 0, sizeof(v10));
  RTK_scrlg_section_writer_create(v10);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  RTK_scrlg_decode(v10, BytePtr, Length, a2, a3);
  v8 = RTK_scrlg_section_writer_finalize(v10);
  CFRetain(v8);
  RTK_scrlg_section_writer_destroy(v10);
  return v8;
}

const __CFDictionary *RTBuddyCrashlogDecodeFindSectionBySignature(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, @"sections");
  if (CFArrayGetCount(Value) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v4);
    v7 = CFDictionaryGetValue(ValueAtIndex, @"section-signature");
    if (CFStringCompare(a2, v7, 0) == kCFCompareEqualTo)
    {
      break;
    }

    v4 = v5;
    if (CFArrayGetCount(Value) <= v5++)
    {
      return 0;
    }
  }

  CFRetain(ValueAtIndex);
  return ValueAtIndex;
}

CFMutableStringRef RTK_crashlog_string_create_v(char *__format, va_list a2)
{
  v3 = vsnprintf(0, 0, __format, a2) + 1;
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  vsnprintf(v4, v3, __format, a2);
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v4, 0x8000100u, *MEMORY[0x277CBECF0]);
  if (!v6)
  {
    v6 = @"<undecodable>";
    CFRetain(@"<undecodable>");
  }

  MutableCopy = CFStringCreateMutableCopy(v5, 0, v6);
  CFRelease(v6);
  return MutableCopy;
}

CFMutableStringRef RTK_crashlog_string_create_n(const char *a1, size_t a2)
{
  v2 = strndup(a1, a2);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v2, 0x8000100u, *MEMORY[0x277CBECF0]);
  if (!v4)
  {
    v4 = @"<undecodable>";
    CFRetain(@"<undecodable>");
  }

  MutableCopy = CFStringCreateMutableCopy(v3, 0, v4);
  CFRelease(v4);
  return MutableCopy;
}

void RTK_crashlog_string_append_v(__CFString *a1, char *__format, va_list a3)
{
  v = RTK_crashlog_string_create_v(__format, a3);
  CFStringAppend(a1, v);

  CFRelease(v);
}

void RTK_crashlog_string_append(__CFString *a1, char *__format, ...)
{
  va_start(va, __format);
  v = RTK_crashlog_string_create_v(__format, va);
  CFStringAppend(a1, v);
  CFRelease(v);
}