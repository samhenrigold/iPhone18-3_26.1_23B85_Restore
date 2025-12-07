void sub_1BA9A6A18(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

const __CFDictionary *NEKeychainCopyValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  Query = __NEKeychainCreateQuery(a1, a2, a3, a4);
  v5 = Query;
  if (Query)
  {
    CFDictionaryAddValue(Query, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    v6 = SecItemCopyMatching(v5, &result);
    CFRelease(v5);
    v7 = result;
    if (result)
    {
      if (v6)
      {
        v5 = 0;
      }

      else
      {
        v5 = CFStringCreateFromExternalRepresentation(*MEMORY[0x1E695E480], result, 0x8000100u);
        v7 = result;
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

__CFDictionary *__NEKeychainCreateQuery(CFStringRef theString, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  if (theString)
  {
    v8 = CFStringGetLength(theString) == 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 1;
    if (a2)
    {
LABEL_3:
      v9 = CFStringGetLength(a2) == 0;
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v9 = 1;
  if (a3)
  {
LABEL_4:
    v10 = CFStringGetLength(a3) == 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 1;
    if (v8)
    {
      return 0;
    }

LABEL_11:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    v12 = Mutable;
    if (!Mutable)
    {
      return v12;
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(v12, *MEMORY[0x1E697AE88], theString);
    if (v9)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      CFDictionaryAddValue(v12, *MEMORY[0x1E697AC30], a2);
      if (v10)
      {
LABEL_14:
        if (v11)
        {
          return v12;
        }

LABEL_15:
        CFDictionaryAddValue(v12, *MEMORY[0x1E697ACE0], a4);
        return v12;
      }
    }

    CFDictionaryAddValue(v12, *MEMORY[0x1E697ADC8], a3);
    if (v11)
    {
      return v12;
    }

    goto LABEL_15;
  }

LABEL_9:
  v10 = 1;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v11 = CFStringGetLength(a4) == 0;
  if (!v8)
  {
    goto LABEL_11;
  }

  return 0;
}

__CFDictionary *NEKeychainCopyPersistentRef(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  Query = __NEKeychainCreateQuery(a1, a2, a3, a4);
  if (Query)
  {
    v5 = Query;
    CFDictionaryAddValue(Query, *MEMORY[0x1E697B320], *MEMORY[0x1E695E4D0]);
    v6 = SecItemCopyMatching(v5, &result);
    CFRelease(v5);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = result == 0;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return Query;
}

const __CFDictionary *NEKeychainSetValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFStringRef theString)
{
  result = 0;
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (Length)
  {
    Length = __NEKeychainCreateQuery(a1, a2, a3, a4);
    if (Length)
    {
      v11 = Length;
      v12 = *MEMORY[0x1E695E480];
      ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], theString, 0x8000100u, 0);
      v14 = NEKeychainCopyValue(a1, a2, a3, a4);
      if (v14)
      {
        v15 = v14;
        if (CFStringCompare(theString, v14, 0))
        {
          Mutable = CFDictionaryCreateMutable(v12, 0, 0, 0);
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], ExternalRepresentation);
          SecItemUpdate(v11, Mutable);
          CFRelease(Mutable);
        }

        CFRelease(v11);
        v17 = v15;
      }

      else
      {
        CFDictionaryAddValue(v11, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
        CFDictionaryAddValue(v11, *MEMORY[0x1E697B3C0], ExternalRepresentation);
        if (SecItemAdd(v11, &result))
        {
          result = 0;
        }

        v17 = v11;
      }

      CFRelease(v17);
      if (ExternalRepresentation)
      {
        CFRelease(ExternalRepresentation);
      }

      return result;
    }
  }

  return Length;
}

void NEKeychainRemoveValue(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  Query = __NEKeychainCreateQuery(a1, a2, a3, a4);
  if (Query)
  {
    v5 = Query;
    SecItemDelete(Query);

    CFRelease(v5);
  }
}

__CFArray *NEKeychainSetPKCS12Container(const __CFData *a1, void *a2)
{
  values = a2;
  if (!a2)
  {
    return 0;
  }

  items = 0;
  v3 = CFDictionaryCreate(0, MEMORY[0x1E697B0B0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (SecPKCS12Import(a1, v3, &items))
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable || v7 == 0)
  {
    return 0;
  }

  v9 = v7;
  if (!CFArrayGetCount(items))
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
  trust = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0C0]);
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount >= 1)
  {
    v12 = CertificateCount;
    v13 = 0;
    v14 = *MEMORY[0x1E697B3D0];
    v15 = *MEMORY[0x1E697B320];
    v16 = *MEMORY[0x1E695E4D0];
    v17 = *MEMORY[0x1E697ABD8];
    v18 = *MEMORY[0x1E697ABE0];
    do
    {
      result = 0;
      CertificateAtIndex = Value;
      if (v13)
      {
        CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v13);
      }

      CFDictionarySetValue(Mutable, v14, CertificateAtIndex);
      CFDictionarySetValue(Mutable, v15, v16);
      CFDictionarySetValue(Mutable, v17, v18);
      v20 = SecItemAdd(Mutable, &result);
      if (v20 == -25299)
      {
        CFDictionaryRemoveValue(Mutable, v17);
        v20 = SecItemCopyMatching(Mutable, &result);
      }

      if (!v20)
      {
        CFArrayAppendValue(v9, result);
        CFRelease(result);
      }

      ++v13;
    }

    while (v12 != v13);
  }

  CFRelease(Mutable);
  CFRelease(items);
  CFRelease(v4);
  return v9;
}

BOOL NEKeychainRemoveWithPersistentID(void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E697B3C8];
  values = a1;
  keys[0] = v1;
  v2 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecItemDelete(v2) == 0;
  CFRelease(v3);
  return v4;
}

void sub_1BA9ABA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9B2930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA9B3EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9B48A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9B67B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_1BA9B6D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9B9014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_nexus_flow_finalize_output_frames(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*(result + 24) + 96))();
  }

  return result;
}

uint64_t nw_nexus_flow_get_output_frames(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*(result + 24) + 88))();
  }

  return result;
}

uint64_t nw_nexus_flow_get_input_frames(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*(result + 24) + 80))();
  }

  return result;
}

uint64_t nw_nexus_flow_output_available(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(*(result + 24) + 72))();
  }

  return result;
}

uint64_t nw_nexus_flow_input_available(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(*(result + 24) + 64))();
  }

  return result;
}

BOOL nw_nexus_flow_add_input_handler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    *(a1 + 48) = a2;
    *(a2 + 32) = a1;
  }

  return v2 == 0;
}

void sub_1BA9BE658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 40));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1BA9BEAAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 40));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sendDataOnRing(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!os_channel_get_next_slot())
  {
    if (os_channel_sync())
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = "EGRESS";
        if (!a3)
        {
          v12 = "INGRESS";
        }

        *buf = 138412802;
        v16 = v5;
        v17 = 2080;
        v18 = v12;
        v19 = 2112;
        v20 = @"failed to sync channel TX";
        goto LABEL_28;
      }

LABEL_9:

      if (!*&v5[4]._os_unfair_lock_opaque)
      {
        goto LABEL_24;
      }

      os_channel_packet_free();
      goto LABEL_11;
    }

    if (!os_channel_get_next_slot())
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = "EGRESS";
        if (!a3)
        {
          v11 = "INGRESS";
        }

        *buf = 138412802;
        v16 = v5;
        v17 = 2080;
        v18 = v11;
        v19 = 2112;
        v20 = @"bad next slot";
        goto LABEL_28;
      }

      goto LABEL_9;
    }
  }

  if (os_channel_slot_attach_packet())
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "EGRESS";
      if (!a3)
      {
        v7 = "INGRESS";
      }

      *buf = 138412802;
      v16 = v5;
      v17 = 2080;
      v18 = v7;
      v19 = 2112;
      v20 = @"bad attach";
LABEL_28:
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v8 = os_channel_advance_slot();
  v9 = ne_log_obj();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = "EGRESS";
      if (!a3)
      {
        v13 = "INGRESS";
      }

      *buf = 138412802;
      v16 = v5;
      v17 = 2080;
      v18 = v13;
      v19 = 2112;
      v20 = @"Failed to advance slot";
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
    }

    if (*&v5[4]._os_unfair_lock_opaque)
    {
LABEL_11:
      if (os_channel_is_defunct())
      {
        os_unfair_lock_lock(v5 + 2);
        [(NEFilterPacketInterpose *)v5 close_nolock:?];
        os_unfair_lock_unlock(v5 + 2);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = "EGRESS";
      if (!a3)
      {
        v14 = "INGRESS";
      }

      *buf = 138412546;
      v16 = v5;
      v17 = 2080;
      v18 = v14;
      _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ sendDataOnRing: sent packet on %s tx ring", buf, 0x16u);
    }
  }

LABEL_24:
}

void sub_1BA9C2A4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t _NE_DNSMessageExtractDomainNameString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (_NE_DNSMessageExtractDomainNameString_onceToken != -1)
  {
    dispatch_once(&_NE_DNSMessageExtractDomainNameString_onceToken, &__block_literal_global_19439);
  }

  v10 = _NE_DNSMessageExtractDomainNameString__mdns_DNSMessageExtractDomainNameString;
  if (!_NE_DNSMessageExtractDomainNameString__mdns_DNSMessageExtractDomainNameString)
  {
    return 0xFFFFFFFFLL;
  }

  return v10(a1, a2, a3, a4, a5);
}

BOOL NEPFKeySendGetSPI(NSObject *a1, uint8_t a2, uint8_t a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned int a6, unsigned int a7, int a8, char a9, uint64_t a10, int a11, uint8_t a12, __int128 a13)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    v37 = ne_log_obj();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v34 = "pfkey get spi, source/destination is NULL";
    v35 = v37;
    v36 = 2;
    goto LABEL_32;
  }

  v15 = a4[1];
  if (v15 != a5[1])
  {
    v38 = ne_log_obj();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v39 = a4[1];
    v40 = a5[1];
    *buf = 67109376;
    *&buf[4] = v39;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = v40;
    v34 = "pfkey get spi, source IP family(%d) does not match destination IP family(%d)";
    v35 = v38;
    v36 = 14;
    goto LABEL_32;
  }

  v18 = 0;
  if (a6 > a7 || a6 - 1 < 0xFF)
  {
    return v18;
  }

  if (v15 != 2)
  {
    if (v15 == 30)
    {
      v44 = a2;
      v22 = 0x80;
      goto LABEL_10;
    }

    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v33 = a4[1];
    *buf = 67109120;
    *&buf[4] = v33;
    v34 = "pfkey get spi, invalid source IP family %d";
    v35 = v31;
    v36 = 8;
LABEL_32:
    _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    return 0;
  }

  v44 = a2;
  v22 = 32;
LABEL_10:
  v45 = v22;
  if (a13 == 0)
  {
    v23 = 50;
  }

  else
  {
    v23 = 130;
  }

  v24 = ((*a4 - 1) | 7) + ((*a5 - 1) | 7) + v23;
  if (a9)
  {
    v24 += 32;
  }

  v46 = a6 > 0xFF && a7 != -1;
  if (v46)
  {
    v24 += 16;
  }

  v25 = v24;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v24);
  if (!Mutable)
  {
    return 0;
  }

  v27 = Mutable;
  v43 = a7;
  v28 = v25;
  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "Sending PFKey get new SPI", buf, 2u);
  }

  *buf = 258;
  buf[3] = v44;
  *&buf[4] = (v28 >> 3);
  LODWORD(v48) = a11;
  DWORD1(v48) = getpid();
  CFDataAppendBytes(v27, buf, 16);
  *buf = 1245186;
  buf[4] = a3;
  LODWORD(v48) = 0;
  DWORD1(v48) = a8;
  buf[5] = a12;
  *&buf[6] = 1;
  CFDataAppendBytes(v27, buf, 16);
  NEPFKeyAddSADBAddr(v27, 5, a4, v45, 0xFFu);
  NEPFKeyAddSADBAddr(v27, 6, a5, v45, 0xFFu);
  if (a13 != 0)
  {
    NEPFKeyAddSADBIPSecIF(v27, 22, 0, *(&a13 + 1), a13, 0);
  }

  if (a9)
  {
    *buf = 196612;
    *&v48 = 0;
    *(&v48 + 1) = a10;
    v49 = 0;
    CFDataAppendBytes(v27, buf, 32);
  }

  v30 = v28;
  if (v46)
  {
    *buf = 1048578;
    *&buf[4] = a6;
    *&v48 = v43;
    CFDataAppendBytes(v27, buf, 16);
  }

  v18 = NEPFKeySend(a1, v27);
  if (CFDataGetLength(v27) != v28)
  {
    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v27);
      *buf = 67109376;
      *&buf[4] = v30;
      LOWORD(v48) = 2048;
      *(&v48 + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_FAULT, "NEPFKeySendGetSPI: calculated message length (%u) != final message len (%zd)", buf, 0x12u);
    }
  }

  CFRelease(v27);
  return v18;
}

void NEPFKeyAddSADBAddr(__CFData *a1, __int16 a2, const UInt8 *a3, UInt8 a4, UInt8 a5)
{
  v7 = ((*a3 - 1) | 7) + 9;
  *bytes = (((*a3 - 1) | 7) + 9) >> 3;
  *&bytes[2] = a2;
  bytes[4] = a5;
  bytes[5] = a4;
  CFDataAppendBytes(a1, bytes, 8);
  CFDataAppendBytes(a1, a3, *a3);
  if (v7 != *a3 + 8)
  {
    CFDataIncreaseLength(a1, (v7 - (*a3 + 8)));
  }
}

void NEPFKeyAddSADBIPSecIF(CFMutableDataRef theData, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  strcpy(bytes, "\n");
  v11 = a2;
  if (a3)
  {
    __strlcpy_chk();
  }

  if (a4)
  {
    __strlcpy_chk();
  }

  if (a5)
  {
    __strlcpy_chk();
  }

  LOWORD(v15[6]) = a6;
  CFDataAppendBytes(theData, bytes, 80);
}

BOOL NEPFKeySendUpdate(NSObject *a1, int a2, char a3, const UInt8 *a4, const UInt8 *a5, unsigned int a6, int a7, unsigned __int8 a8, const UInt8 *a9, char a10, unsigned __int16 argA, const UInt8 *a11, char a12, unsigned __int16 arg1A, int a13, unsigned __int16 a14, int a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, int a20, char a21, unint64_t a22)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v35 = bswap32(a6);
    _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_INFO, "Sending PFKey update SPI %08X", buf, 8u);
  }

  return pfkey_send_x1(a1, 2, a2, a3, a4, a5, a6, a7, a8, a9, a10, argA, a11, a12, arg1A, a13, a14, a15, a16, a17, a18, a19, WORD2(a19), HIWORD(a19), a20, SHIWORD(a20), a21, a22);
}

BOOL pfkey_send_x1(NSObject *a1, int a2, int a3, char a4, const UInt8 *a5, const UInt8 *a6, int a7, int a8, unsigned __int8 a9, const UInt8 *a10, char a11, unsigned __int16 a12, const UInt8 *a13, char a14, unsigned __int16 a15, int a16, unsigned __int16 a17, int a18, uint64_t a19, uint64_t a20, unint64_t a21, int a22, unsigned __int16 a23, unsigned __int16 a24, unsigned __int16 a25, __int16 a26, char a27, __int128 a28)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a5 || !a6)
  {
    v53 = ne_log_obj();
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v54 = "sadb update";
    if (a2 == 3)
    {
      v54 = "sadb add";
    }

    bytes = 136315138;
    *bytes_4 = v54;
    v50 = "pfkey %s, source/destination is NULL";
    v51 = v53;
    v52 = 12;
    goto LABEL_40;
  }

  v31 = a5[1];
  if (v31 != a6[1])
  {
    v55 = ne_log_obj();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v56 = "sadb update";
    v57 = a5[1];
    v58 = a6[1];
    if (a2 == 3)
    {
      v56 = "sadb add";
    }

    bytes = 136315650;
    *bytes_4 = v56;
    *&bytes_4[8] = 1024;
    *&bytes_4[10] = v57;
    *&bytes_4[14] = 1024;
    *&bytes_4[16] = v58;
    v50 = "pfkey %s, source IP family(%d) does not match destination IP family(%d)";
    v51 = v55;
    v52 = 24;
    goto LABEL_40;
  }

  v32 = a3;
  if (v31 != 2)
  {
    if (v31 == 30)
    {
      v34 = 0x80;
      goto LABEL_8;
    }

    v35 = ne_log_obj();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v48 = "sadb update";
    v49 = a5[1];
    if (a2 == 3)
    {
      v48 = "sadb add";
    }

    bytes = 136315394;
    *bytes_4 = v48;
    *&bytes_4[8] = 1024;
    *&bytes_4[10] = v49;
    v50 = "pfkey %s, invalid source IP family %d";
    v51 = v35;
    v52 = 18;
LABEL_40:
    _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, v50, &bytes, v52);
    return 0;
  }

  v34 = 32;
LABEL_8:
  if (a3 == 2)
  {
    v36 = 0;
    if (a11 || !a14)
    {
      return v36;
    }
  }

  else if (a3 == 9)
  {
    v36 = 0;
    if (!a11 || a14)
    {
      return v36;
    }
  }

  else if (a3 != 3 || !a11)
  {
    return 0;
  }

  v63 = v34;
  v37 = a11 != 0;
  v38 = a3 != 9;
  v39 = ((a15 - 1) | 7) + 9;
  if (!a14)
  {
    v39 = 0;
  }

  v61 = v38 && v37;
  if (v38 && v37)
  {
    v40 = ((a12 - 1) | 7) + 83;
  }

  else
  {
    v40 = 74;
  }

  v41 = v40 + v39 + ((*a5 - 1) | 7) + ((*a6 - 1) | 7);
  if (a28 != 0)
  {
    v41 += 80;
  }

  v42 = v41 + 64;
  v43 = SecCFAllocatorZeroize();
  v44 = v42;
  Mutable = CFDataCreateMutable(v43, v42);
  if (!Mutable)
  {
    return 0;
  }

  v46 = Mutable;
  bytes = 2;
  BYTE1(bytes) = a2;
  HIBYTE(bytes) = v32;
  *bytes_4 = (v44 >> 3);
  *&bytes_4[4] = a22;
  *&bytes_4[8] = getpid();
  CFDataAppendBytes(v46, &bytes, 16);
  bytes = 65539;
  *bytes_4 = a7;
  *&bytes_4[4] = a9;
  bytes_4[6] = a14;
  bytes_4[7] = a11;
  *&bytes_4[8] = a16;
  *&bytes_4[18] = __rev16(a23);
  *&bytes_4[12] = __PAIR32__(a25, a24);
  *&bytes_4[16] = a26;
  CFDataAppendBytes(v46, &bytes, 24);
  bytes = 1245186;
  bytes_4[0] = a4;
  *&bytes_4[6] = 0;
  *&bytes_4[8] = a8;
  bytes_4[1] = a27;
  *&bytes_4[2] = a17 | 1;
  CFDataAppendBytes(v46, &bytes, 16);
  NEPFKeyAddSADBAddr(v46, 5, a5, v63, 0xFFu);
  NEPFKeyAddSADBAddr(v46, 6, a6, v63, 0xFFu);
  if (v61)
  {
    NEPFKeyAddSADBKey(v46, 9, a10, a12);
  }

  if (a14)
  {
    NEPFKeyAddSADBKey(v46, 8, a13, a15);
  }

  if (a28 != 0)
  {
    NEPFKeyAddSADBIPSecIF(v46, 22, 0, *(&a28 + 1), a28, 0);
  }

  bytes = 196612;
  *bytes_4 = a18;
  *&bytes_4[4] = a19;
  *&bytes_4[12] = a20;
  v68 = a21;
  CFDataAppendBytes(v46, &bytes, 32);
  bytes = 262148;
  *bytes_4 = 80 * a18 / 0x64u;
  *&bytes_4[4] = ((4 * ((5 * a19) & 0xFFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
  *&bytes_4[12] = ((4 * ((5 * a20) & 0xFFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
  v68 = ((4 * ((5 * a21) & 0xFFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
  CFDataAppendBytes(v46, &bytes, 32);
  v36 = NEPFKeySend(a1, v46);
  if (CFDataGetLength(v46) != v44)
  {
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v46);
      bytes = 67109376;
      *bytes_4 = v44;
      *&bytes_4[4] = 2048;
      *&bytes_4[6] = Length;
      _os_log_fault_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_FAULT, "pfkey_send_x1: calculated message length (%u) != final message len (%zd)", &bytes, 0x12u);
    }
  }

  CFRelease(v46);
  return v36;
}

void NEPFKeyAddSADBKey(__CFData *a1, __int16 a2, const UInt8 *a3, unsigned int a4)
{
  v7 = ((a4 - 1) | 7) + 9;
  *bytes = v7 >> 3;
  *&bytes[2] = a2;
  *&bytes[4] = (8 * a4);
  CFDataAppendBytes(a1, bytes, 8);
  CFDataAppendBytes(a1, a3, a4);
  if ((v7 & 0xFFF8) != (a4 + 8))
  {
    CFDataIncreaseLength(a1, (v7 - (a4 + 8)));
  }
}

BOOL NEPFKeySendAdd(NSObject *a1, int a2, char a3, const UInt8 *a4, const UInt8 *a5, unsigned int a6, int a7, unsigned __int8 a8, const UInt8 *a9, char a10, unsigned __int16 a11, const UInt8 *a12, char a13, unsigned __int16 a14, int a15, unsigned __int16 a16, int a17, uint64_t a18, uint64_t a19, unint64_t a20, int a21, unsigned __int16 a22, unsigned __int16 a23, unsigned __int16 a24, __int16 a25, char a26, __int128 a27)
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v38 = bswap32(a6);
    _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_INFO, "Sending PFKey add SPI %08X", buf, 8u);
  }

  return pfkey_send_x1(a1, 3, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

BOOL NEPFKeySendMigrate(NSObject *a1, char a2, unsigned int a3, int a4, unsigned int a5, __int16 a6, __int16 a7, __int16 a8, const UInt8 *a9, const UInt8 *a10, uint64_t a11, const UInt8 *a12, const UInt8 *a13, __int128 a14)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v14 = a10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || a12 == 0 || a13 == 0)
  {
    return 0;
  }

  v17 = a9[1];
  if (v17 != a10[1])
  {
    return 0;
  }

  v18 = a12[1];
  if (v18 != a13[1])
  {
    return 0;
  }

  if (v17 == 2)
  {
    v23 = 32;
  }

  else
  {
    if (v17 != 30)
    {
      return 0;
    }

    v23 = 0x80;
  }

  if (v18 != 2)
  {
    if (v18 == 30)
    {
      v35 = v23;
      v36 = a6;
      v37 = a7;
      v38 = a8;
      v40 = a1;
      v24 = 0x80;
      goto LABEL_21;
    }

    return 0;
  }

  v35 = v23;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v40 = a1;
  v24 = 32;
LABEL_21:
  v34 = v24;
  if (a11)
  {
    v25 = 156;
  }

  else
  {
    v25 = 76;
  }

  v26 = ((*a9 - 1) | 7) + v25 + ((*a10 - 1) | 7) + ((*a12 - 1) | 7) + ((*a13 - 1) | 7);
  if (a14 != 0)
  {
    v26 += 80;
  }

  v39 = v26;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v26);
  if (!Mutable)
  {
    return 0;
  }

  v28 = Mutable;
  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    buf = 67109120;
    *buf_4 = bswap32(a3);
    _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "Sending PFKey migrate SPI %08X", &buf, 8u);
  }

  buf = 6658;
  HIBYTE(buf) = a2;
  *buf_4 = (v39 >> 3);
  *&buf_4[8] = getpid();
  CFDataAppendBytes(v28, &buf, 16);
  buf = 65539;
  *buf_4 = a3;
  *&buf_4[8] = a4;
  WORD1(v43) = __rev16(a5);
  *&buf_4[12] = v36;
  *&buf_4[14] = v37;
  LOWORD(v43) = v38;
  CFDataAppendBytes(v28, &buf, 24);
  NEPFKeyAddSADBAddr(v28, 5, a9, v35, 0xFFu);
  NEPFKeyAddSADBAddr(v28, 6, a10, v35, 0xFFu);
  NEPFKeyAddSADBAddr(v28, 27, a12, v34, 0xFFu);
  NEPFKeyAddSADBAddr(v28, 28, a13, v34, 0xFFu);
  if (a11)
  {
    memset(v45, 0, sizeof(v45));
    v44 = 0u;
    v43 = 0u;
    *buf_4 = 0u;
    buf = 1441802;
    __strlcpy_chk();
    LOWORD(v45[6]) = 0;
    CFDataAppendBytes(v28, &buf, 80);
  }

  if (a14 != 0)
  {
    NEPFKeyAddSADBIPSecIF(v28, 29, 0, *(&a14 + 1), a14, 0);
  }

  v30 = NEPFKeySend(v40, v28);
  if (CFDataGetLength(v28) != v39)
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v28);
      buf = 67109376;
      *buf_4 = v39;
      *&buf_4[4] = 2048;
      *&buf_4[6] = Length;
      _os_log_fault_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_FAULT, "NEPFKeySendMigrate: calculated message length (%u) != final message len (%zd)", &buf, 0x12u);
    }
  }

  CFRelease(v28);
  return v30;
}

BOOL NEPFKeySendDelete(NSObject *a1, uint64_t a2, const UInt8 *a3, const UInt8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v10 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109120;
    v14[1] = bswap32(v7);
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "Sending PFKey delete SPI %08X", v14, 8u);
  }

  return pfkey_send_x2(a1, 4, v10, a3, a4, v7, a6);
}

BOOL pfkey_send_x2(NSObject *a1, int a2, char a3, const UInt8 *a4, const UInt8 *a5, int a6, uint64_t a7)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    v28 = ne_log_obj();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v29 = "sadb get";
    if (a2 == 4)
    {
      v29 = "sadb delete";
    }

    v36[0] = 136315138;
    *&v36[1] = v29;
    v25 = "pfkey %s, source/destination is NULL";
    v26 = v28;
    v27 = 12;
    goto LABEL_22;
  }

  v10 = a4[1];
  if (v10 != a5[1])
  {
    v30 = ne_log_obj();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v31 = "sadb get";
    v32 = a4[1];
    v33 = a5[1];
    if (a2 == 4)
    {
      v31 = "sadb delete";
    }

    v36[0] = 136315650;
    *&v36[1] = v31;
    LOWORD(v36[3]) = 1024;
    *(&v36[3] + 2) = v32;
    HIWORD(v36[4]) = 1024;
    v36[5] = v33;
    v25 = "pfkey %s, source IP family(%d) does not match destination IP family(%d)";
    v26 = v30;
    v27 = 24;
    goto LABEL_22;
  }

  if (v10 != 2)
  {
    if (v10 == 30)
    {
      v15 = 0x80;
      goto LABEL_8;
    }

    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v23 = "sadb get";
    v24 = a4[1];
    if (a2 == 4)
    {
      v23 = "sadb delete";
    }

    v36[0] = 136315394;
    *&v36[1] = v23;
    LOWORD(v36[3]) = 1024;
    *(&v36[3] + 2) = v24;
    v25 = "pfkey %s, invalid source IP family %d";
    v26 = v21;
    v27 = 18;
LABEL_22:
    _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v25, v36, v27);
    return 0;
  }

  v15 = 32;
LABEL_8:
  if (a7)
  {
    v16 = 138;
  }

  else
  {
    v16 = 58;
  }

  v17 = (((*a4 - 1) | 7) + v16 + ((*a5 - 1) | 7)) & 0xFFF8;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
  if (!Mutable)
  {
    return 0;
  }

  v19 = Mutable;
  v36[0] = 2;
  BYTE1(v36[0]) = a2;
  HIBYTE(v36[0]) = a3;
  *&v36[1] = (v17 >> 3);
  v36[3] = getpid();
  CFDataAppendBytes(v19, v36, 16);
  v36[0] = 65539;
  v36[1] = a6;
  *&v36[2] = 0;
  *&v36[4] = 0;
  CFDataAppendBytes(v19, v36, 24);
  NEPFKeyAddSADBAddr(v19, 5, a4, v15, 0xFFu);
  NEPFKeyAddSADBAddr(v19, 6, a5, v15, 0xFFu);
  if (a7)
  {
    memset(v38, 0, sizeof(v38));
    v37 = 0u;
    memset(&v36[1], 0, 32);
    v36[0] = 1441802;
    __strlcpy_chk();
    LOWORD(v38[6]) = 0;
    CFDataAppendBytes(v19, v36, 80);
  }

  v20 = NEPFKeySend(a1, v19);
  if (CFDataGetLength(v19) != v17)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v19);
      v36[0] = 67109376;
      v36[1] = v17;
      LOWORD(v36[2]) = 2048;
      *(&v36[2] + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_FAULT, "pfkey_send_x2: calculated message length (%u) != final message len (%zd)", v36, 0x12u);
    }
  }

  CFRelease(v19);
  return v20;
}

BOOL NEPFKeySendDeleteAll(NSObject *a1, char a2, const UInt8 *a3, const UInt8 *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(v27) = 0;
    v18 = "pfkey delete all, source/destination is NULL";
    v19 = v21;
    v20 = 2;
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v6 != a4[1])
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v23 = a3[1];
    v24 = a4[1];
    v27 = 67109376;
    v28 = v23;
    LOWORD(v29[0]) = 1024;
    *(v29 + 2) = v24;
    v18 = "pfkey delete all, source IP family(%d) does not match destination IP family(%d)";
    v19 = v22;
    v20 = 14;
    goto LABEL_17;
  }

  if (v6 != 2)
  {
    if (v6 == 30)
    {
      v9 = 0x80;
      goto LABEL_8;
    }

    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v17 = a3[1];
    v27 = 67109120;
    v28 = v17;
    v18 = "pfkey delete all, invalid source IP family %d";
    v19 = v15;
    v20 = 8;
LABEL_17:
    _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, v18, &v27, v20);
    return 0;
  }

  v9 = 32;
LABEL_8:
  v10 = (((*a3 - 1) | 7) + ((*a4 - 1) | 7) + 34) & 0xFFF8;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v10);
  if (!Mutable)
  {
    return 0;
  }

  v12 = Mutable;
  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_INFO, "Sending PFKey delete all", &v27, 2u);
  }

  v27 = 1026;
  HIBYTE(v27) = a2;
  v28 = (v10 >> 3);
  v29[0] = 0;
  v29[1] = getpid();
  CFDataAppendBytes(v12, &v27, 16);
  NEPFKeyAddSADBAddr(v12, 5, a3, v9, 0xFFu);
  NEPFKeyAddSADBAddr(v12, 6, a4, v9, 0xFFu);
  v14 = NEPFKeySend(a1, v12);
  if (CFDataGetLength(v12) != v10)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v12);
      v27 = 67109376;
      v28 = v10;
      LOWORD(v29[0]) = 2048;
      *(v29 + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "NEPFKeySendDeleteAll: calculated message length (%u) != final message len (%zd)", &v27, 0x12u);
    }
  }

  CFRelease(v12);
  return v14;
}

BOOL NEPFKeySendGet(NSObject *a1, char a2, const UInt8 *a3, const UInt8 *a4, unsigned int a5, uint64_t a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109120;
    v14[1] = bswap32(a5);
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "Sending PFKey get for SPI %08X", v14, 8u);
  }

  return pfkey_send_x2(a1, 5, a2, a3, a4, a5, a6);
}

BOOL pfkey_send_x3(NSObject *a1, int a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 11)
  {
    if (a3 >= 2)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v17) = 67109120;
        HIDWORD(v17) = a3;
        v7 = "pfkey sadb promisc failed, satype %u";
        v8 = v6;
        v9 = 8;
LABEL_14:
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v7, &v17, v9);
        return 0;
      }

      return 0;
    }
  }

  else if (a3 > 9 || ((1 << a3) & 0x20D) == 0)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17) = 67109376;
      HIDWORD(v17) = a2;
      LOWORD(v18[0]) = 1024;
      *(v18 + 2) = a3;
      v7 = "pfkey %d, sa type %u";
      v8 = v13;
      v9 = 14;
      goto LABEL_14;
    }

    return 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 16);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  v17 = 0x200000002;
  BYTE1(v17) = a2;
  BYTE3(v17) = a3;
  v18[0] = 0;
  v18[1] = getpid();
  CFDataAppendBytes(v11, &v17, 16);
  v12 = NEPFKeySend(a1, v11);
  if (CFDataGetLength(v11) != 16)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v11);
      v17 = 0x1004000200;
      LOWORD(v18[0]) = 2048;
      *(v18 + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "pfkey_send_x3: calculated message length (%u) != final message len (%zd)", &v17, 0x12u);
    }
  }

  CFRelease(v11);
  return v12;
}

BOOL NEPFKeySendSPDAdd(NSObject *a1, const UInt8 *a2, const UInt8 *a3, unsigned int a4, const UInt8 *a5, const UInt8 *a6, unsigned int a7, UInt8 a8, unsigned __int16 a9, char a10, __int16 a11, UInt8 a12, UInt8 a13, __int16 a14, unsigned __int8 *a15, unsigned __int8 *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a2 || !a5)
  {
    v62 = ne_log_obj();
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(bytes[0]) = 0;
    v59 = "pfkey spd add, source/destination is NULL";
    v60 = v62;
    v61 = 2;
    goto LABEL_56;
  }

  v23 = a2[1];
  if (v23 != a5[1])
  {
    v63 = ne_log_obj();
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v64 = a2[1];
    v65 = a5[1];
    bytes[0] = 67109376;
    bytes[1] = v64;
    LOWORD(bytes[2]) = 1024;
    *(&bytes[2] + 2) = v65;
    v59 = "pfkey spd add, source IP family(%d) does not match destination IP family(%d)";
    v60 = v63;
    v61 = 14;
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    v29 = 32;
  }

  else
  {
    if (v23 != 30)
    {
      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v58 = a2[1];
      bytes[0] = 67109120;
      bytes[1] = v58;
      v59 = "pfkey spd add, invalid source IP family %d";
      v60 = v33;
      v61 = 8;
LABEL_56:
      _os_log_error_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_ERROR, v59, bytes, v61);
      return 0;
    }

    v29 = 128;
  }

  if (v29 < a4 || v29 < a7)
  {
    v66 = ne_log_obj();
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    bytes[0] = 67109632;
    bytes[1] = v29;
    LOWORD(bytes[2]) = 1024;
    *(&bytes[2] + 2) = a4;
    HIWORD(bytes[3]) = 1024;
    bytes[4] = a7;
    v59 = "pfkey spd add, plen %u prefs len %u prefd len %u";
    v60 = v66;
    v61 = 20;
    goto LABEL_56;
  }

  if (a18 | a19 | a20)
  {
    v30 = 1;
  }

  else
  {
    v30 = a21;
  }

  v31 = (*a2 - 1) | 7;
  if (a3)
  {
    v32 = v31 + ((*a3 - 1) | 7) + 34;
  }

  else
  {
    v32 = v31 + 25;
  }

  v35 = v32 + ((*a5 - 1) | 7) + 9;
  if (a6)
  {
    v35 += ((*a6 - 1) | 7) + 9;
  }

  if (v30)
  {
    v35 += 80;
  }

  v36 = v35 + 32;
  if (a9 == 2)
  {
    v37 = 24;
    v38 = a7;
    if (a15 && a16)
    {
      v37 = ((*a15 + *a16 - 1) | 7) + 25;
    }
  }

  else
  {
    v38 = a7;
    v37 = 16;
  }

  v39 = (v36 + v37);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v39);
  if (!Mutable)
  {
    return 0;
  }

  v41 = Mutable;
  bytes[0] = 3586;
  bytes[1] = (v39 >> 3);
  bytes[2] = a17;
  bytes[3] = getpid();
  CFDataAppendBytes(v41, bytes, 16);
  v42 = v41;
  if (a3)
  {
    NEPFKeyAddSADBAddr(v41, 23, a2, a4, a8);
    v42 = v41;
    v43 = 24;
    v44 = a3;
  }

  else
  {
    v43 = 5;
    v44 = a2;
  }

  NEPFKeyAddSADBAddr(v42, v43, v44, a4, a8);
  v45 = v41;
  if (a6)
  {
    NEPFKeyAddSADBAddr(v41, 25, a5, v38, a8);
    v45 = v41;
    v46 = 26;
    v47 = a6;
  }

  else
  {
    v46 = 6;
    v47 = a5;
  }

  NEPFKeyAddSADBAddr(v45, v46, v47, v38, a8);
  if (v30)
  {
    NEPFKeyAddSADBIPSecIF(v41, 22, a19, a20, a18, a21);
  }

  bytes[0] = 196612;
  *&bytes[1] = 0;
  v74 = 0;
  *&bytes[3] = 0;
  v75 = 0;
  CFDataAppendBytes(v41, bytes, 32);
  *v71 = a16;
  *v72 = a15;
  if (a9 == 2)
  {
    if (a15)
    {
      v48 = a16 == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    if (v48)
    {
      v50 = 3;
    }

    else
    {
      v50 = (((*a15 + *a16 - 1) | 7) + 25) >> 3;
    }

    bytes[3] = 0;
    LOWORD(bytes[0]) = v50;
    HIWORD(bytes[0]) = 18;
    *&bytes[1] = 2;
    BYTE2(bytes[1]) = a10;
    CFDataAppendBytes(v41, bytes, 16);
    strcpy(v70, "\b");
    *&v70[2] = a11;
    v70[4] = a12;
    v70[5] = a13;
    *&v70[6] = a14;
    if (v49)
    {
      v54 = *a16 + *a15;
      *v70 = v54 + 8;
      CFDataAppendBytes(v41, v70, 8);
      CFDataAppendBytes(v41, v72, *a15);
      CFDataAppendBytes(v41, v71, *a16);
      v55 = (((v54 - 1) | 7) - v54 + 1);
      v48 = (((v54 - 1) | 7) - v54 + 1) == 0;
      v56 = a1;
      if (!v48)
      {
        CFDataIncreaseLength(v41, v55);
      }

      goto LABEL_52;
    }

    v51 = v70;
    v52 = v41;
    v53 = 8;
  }

  else
  {
    bytes[3] = 0;
    bytes[0] = 1179650;
    *&bytes[1] = a9;
    BYTE2(bytes[1]) = a10;
    v51 = bytes;
    v52 = v41;
    v53 = 16;
  }

  CFDataAppendBytes(v52, v51, v53);
  v56 = a1;
LABEL_52:
  v34 = NEPFKeySend(v56, v41);
  if (CFDataGetLength(v41) != v39)
  {
    v67 = ne_log_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v41);
      bytes[0] = 67109376;
      bytes[1] = v39;
      LOWORD(bytes[2]) = 2048;
      *(&bytes[2] + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_FAULT, "pfkey_send_x4: calculated message length (%u) != final message len (%zd)", bytes, 0x12u);
    }
  }

  CFRelease(v41);
  return v34;
}

BOOL pfkey_send_x5(NSObject *a1, char a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 32);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  v12 = 0x400000002;
  BYTE1(v12) = a2;
  v13[0] = 0;
  v13[1] = getpid();
  CFDataAppendBytes(v7, &v12, 16);
  v12 = 1179650;
  v13[0] = a3;
  v13[1] = 0;
  CFDataAppendBytes(v7, &v12, 16);
  v8 = NEPFKeySend(a1, v7);
  if (CFDataGetLength(v7) != 32)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      Length = CFDataGetLength(v7);
      v12 = 0x2004000200;
      LOWORD(v13[0]) = 2048;
      *(v13 + 2) = Length;
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "pfkey_send_x5: calculated message length (%u) != final message len (%zd)", &v12, 0x12u);
    }
  }

  CFRelease(v7);
  return v8;
}

NSObject *NEPFKeyOpen(NSObject *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  PFKeySocket = a4;
  if ((a4 & 0x80000000) != 0)
  {
    PFKeySocket = NEHelperGetPFKeySocket();
    if ((PFKeySocket & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v9 = fcntl(PFKeySocket, 3, 0);
  if (v9 < 0)
  {
    v13 = *__error();
    if (strerror_r(v13, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_20:
      if ((a4 & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_21:
      close(PFKeySocket);
      return 0;
    }

    *buf = 67109634;
    v36 = PFKeySocket;
    v37 = 1024;
    *v38 = v13;
    *&v38[4] = 2080;
    *&v38[6] = __strerrbuf;
    v15 = "fcntl(%d, F_GETFL) failed: [%d] %s";
LABEL_47:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v15, buf, 0x18u);
    if ((a4 & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (fcntl(PFKeySocket, 4, v9 | 4u) < 0)
  {
    v16 = *__error();
    if (strerror_r(v16, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109634;
    v36 = PFKeySocket;
    v37 = 1024;
    *v38 = v16;
    *&v38[4] = 2080;
    *&v38[6] = __strerrbuf;
    v15 = "fcntl(%d, F_SETFL) failed: [%d] %s";
    goto LABEL_47;
  }

  v34 = 0;
  v33 = 4;
  if (sysctlbyname("kern.ipc.maxsockbuf", &v34, &v33, 0, 0))
  {
    v17 = *__error();
    if (strerror_r(v17, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v31 = 1572864;
    v32 = 1769472;
    if (HIWORD(v34) <= 0x1Au)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *__strerrbuf = 67109376;
        v40 = v34;
        v41 = 1024;
        v42 = 1769472;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Setting kern.ipc.maxsockbuf %u -> %u", __strerrbuf, 0xEu);
      }

      if (sysctlbyname("kern.ipc.maxsockbuf", 0, 0, &v32, 4uLL))
      {
        v25 = *__error();
        if (strerror_r(v25, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109378;
          v36 = v25;
          v37 = 2080;
          *v38 = __strerrbuf;
          _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "sysctlbyname(kern.ipc.maxsockbuf) failed: [%d] %s", buf, 0x12u);
        }

        v10 = 0;
        v31 = v34;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (setsockopt(PFKeySocket, 0xFFFF, 4097, &v31, 4u))
    {
      v20 = *__error();
      if (strerror_r(v20, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109890;
        v36 = PFKeySocket;
        v37 = 1024;
        *v38 = v31;
        *&v38[4] = 1024;
        *&v38[6] = v20;
        *&v38[10] = 2080;
        *&v38[12] = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "setsockopt(%d, SO_SNDBUF, %d) failed: [%d] %s", buf, 0x1Eu);
      }
    }

    if (setsockopt(PFKeySocket, 0xFFFF, 4098, &v31, 4u))
    {
      v22 = *__error();
      if (strerror_r(v22, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109890;
        v36 = PFKeySocket;
        v37 = 1024;
        *v38 = v31;
        *&v38[4] = 1024;
        *&v38[6] = v22;
        *&v38[10] = 2080;
        *&v38[12] = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "setsockopt(%d, SO_RCVBUF, %d) failed: [%d] %s", buf, 0x1Eu);
      }
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *__strerrbuf = 67109376;
      v40 = v32;
      v41 = 1024;
      v42 = v34;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "Resetting kern.ipc.maxsockbuf %u -> %u", __strerrbuf, 0xEu);
    }

    if (!sysctlbyname("kern.ipc.maxsockbuf", 0, 0, &v34, v33))
    {
      goto LABEL_11;
    }

    v17 = *__error();
    if (strerror_r(v17, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }
  }

  *buf = 67109378;
  v36 = v17;
  v37 = 2080;
  *v38 = __strerrbuf;
  _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "sysctlbyname(kern.ipc.maxsockbuf) failed: [%d] %s", buf, 0x12u);
LABEL_11:
  v11 = dispatch_source_create(MEMORY[0x1E69E96F8], PFKeySocket, 0, a1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __NEPFKeyOpen_block_invoke;
  handler[3] = &__block_descriptor_tmp_19530;
  v30 = PFKeySocket;
  dispatch_source_set_cancel_handler(v11, handler);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = __NEPFKeyOpen_block_invoke_2;
  v27[3] = &__block_descriptor_tmp_2;
  v28 = PFKeySocket;
  v27[4] = a2;
  v27[5] = a3;
  dispatch_source_set_event_handler(v11, v27);
  dispatch_resume(v11);
  return v11;
}

void NEPFKeyClose(NSObject *a1)
{
  if (a1)
  {
    dispatch_source_cancel(a1);

    dispatch_release(a1);
  }
}

__CFString *NEPolicyGetStringForLegacyNECPLevel(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return kNEPolicySessionNECPLegacyLevelsMapping[a1];
  }
}

NEPolicySession *NEPolicyCreateSessionWithSocket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NEPolicySession alloc];

  return [(NEPolicySession *)v4 initWithSocket:a3];
}

const void **NEPolicySetSessionPriority(void *a1, const void *a2)
{
  result = NEMapStringToInteger(&kNEPolicySessionPrioritiesMapping, a2);
  if (result)
  {
    v4 = result;
    v5 = result;
    v6 = a1;
    [v6 setPriority:v5];
    v7 = [v6 priority];

    return (v7 == v4);
  }

  return result;
}

uint64_t NEPolicySetDropPriorityLevel(CFTypeRef cf1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (cf1)
  {
    v4 = &kNEPolicySessionNECPPrioritiesMapping;
    v5 = @"Unknown";
    while (!CFEqual(cf1, v5))
    {
      v6 = v4[2];
      v4 += 2;
      v5 = v6;
      if (!v6)
      {
        v18 = 0;
        goto LABEL_7;
      }
    }

    v18 = *(v4 + 2);
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!CFEqual(cf1, @"Unknown"))
    {
      return 0;
    }
  }

LABEL_8:
  if (sysctlbyname("net.necp.drop_all_level", 0, 0, &v18, 4uLL))
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = v18;
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315650;
      v20 = "net.necp.drop_all_level";
      v21 = 1024;
      v22 = v15;
      v23 = 2080;
      v24 = v17;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to set %s to %d: %s", buf, 0x1Cu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      return 1;
    }

    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Library/Preferences/com.apple.networkextension.necp.plist" isDirectory:1];
    if (v18)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v7];
      v11 = [v10 mutableCopy];
      [v11 setObject:cf1 forKeyedSubscript:@"drop_all_level"];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v11 setObject:@"Unknown" forKeyedSubscript:@"drop_all_level"];
    }

    v12 = [v11 writeToURL:v7 atomically:1];
    v13 = ne_log_obj();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Saved NECP drop level to <%@>", buf, 0xCu);
      }

      v8 = 1;
      goto LABEL_12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Failed to save NECP drop level to <%@>", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

uint64_t NEPolicyPersistDropAllFeature(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Library/Preferences/com.apple.networkextension.necp.plist" isDirectory:1];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v4];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (a2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a2];
    [v7 setObject:v8 forKeyedSubscript:a1];
  }

  else
  {
    [v6 removeObjectForKey:a1];
  }

  v9 = [v7 writeToURL:v4 atomically:1];
  v10 = ne_log_obj();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Saved drop-all feature to <%@>", &v14, 0xCu);
    }

    v12 = 1;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to save drop-all feature to <%@>", &v14, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

BOOL NEPolicySetLayer2DefaultDrop(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a1 != 0;
  v1 = sysctlbyname("kern.skywalk.netif.default_drop", 0, 0, &v7, 4uLL);
  if (v1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = v7;
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315650;
      v9 = "kern.skywalk.netif.default_drop";
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v6;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to set %s to %d: %s", buf, 0x1Cu);
    }
  }

  return v1 == 0;
}

const __CFAllocator *NEPolicyAdd(void *a1, unsigned int a2, const __CFArray *a3, const __CFDictionary *a4)
{
  v4 = 0;
  if (a1 && a3 && a4)
  {
    v7 = a1;
    v8 = [MEMORY[0x1E695DF70] array];
    Value = CFDictionaryGetValue(a4, @"Result");
    v4 = 0;
    switch(NEMapStringToInteger(&kNEPolicyResultsMapping, Value))
    {
      case 1u:
        v10 = +[NEPolicyResult pass];
        goto LABEL_56;
      case 2u:
        HIDWORD(valuePtr) = 0;
        v23 = CFDictionaryGetValue(a4, @"SkipOrder");
        if (v23)
        {
          CFNumberGetValue(v23, kCFNumberIntType, &valuePtr + 4);
          v24 = HIDWORD(valuePtr);
        }

        else
        {
          v24 = 0;
        }

        v10 = [NEPolicyResult skipWithOrder:v24];
        goto LABEL_56;
      case 3u:
        v10 = +[NEPolicyResult drop];
        goto LABEL_56;
      case 4u:
        v22 = CFDictionaryGetValue(a4, @"FlowDivertControlUnit");
        if (!v22)
        {
          goto LABEL_201;
        }

        HIDWORD(valuePtr) = 0;
        if (!CFNumberGetValue(v22, kCFNumberIntType, &valuePtr + 4))
        {
          goto LABEL_49;
        }

        v10 = [NEPolicyResult divertSocketToControlUnit:HIDWORD(valuePtr)];
        goto LABEL_56;
      case 5u:
        v15 = CFDictionaryGetValue(a4, @"ScopedInterface");
        if (!v15)
        {
          goto LABEL_201;
        }

        v10 = [NEPolicyResult scopeSocketToInterfaceName:v15];
        goto LABEL_56;
      case 6u:
        v16 = CFDictionaryGetValue(a4, @"TunnelSecondaryResult");
        if (v16)
        {
          v17 = v16;
          v18 = &kNEPolicySecondaryResultsMapping;
          v19 = @"Pass";
          while (!CFEqual(v17, v19))
          {
            v20 = v18[2];
            v18 += 2;
            v19 = v20;
            if (!v20)
            {
              v21 = 0;
              goto LABEL_54;
            }
          }

          v21 = *(v18 + 2);
        }

        else
        {
          v21 = 2;
        }

LABEL_54:
        v53 = CFDictionaryGetValue(a4, @"TunnelInterface");
        if (v53)
        {
          v10 = [NEPolicyResult tunnelIPToInterfaceName:v53 secondaryResultType:v21];
LABEL_56:
          v4 = v10;
LABEL_57:
          if (v4)
          {
            alloca = v4;
            v128 = a2;
            v130 = v7;
            v54 = a3;
            Count = CFArrayGetCount(a3);
            if (Count >= 1)
            {
              v56 = Count;
              v57 = 0;
              v132 = *MEMORY[0x1E695E480];
              v124 = v8;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v54, v57);
                if (ValueAtIndex)
                {
                  v59 = ValueAtIndex;
                  v60 = CFDictionaryGetValue(ValueAtIndex, @"ConditionType");
                  v61 = NEMapStringToInteger(&kNEPolicyConditionsMapping, v60);
                  v62 = 0;
                  switch(v61)
                  {
                    case 1u:
                      v94 = CFDictionaryGetValue(v59, @"ApplicationUUID");
                      if (v94)
                      {
                        v95 = CFUUIDCreateString(v132, v94);
                        v90 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v95];

                        v91 = [NEPolicyCondition effectiveApplication:v90];
                        goto LABEL_105;
                      }

                      break;
                    case 2u:
                      v88 = CFDictionaryGetValue(v59, @"RealApplicationUUID");
                      if (v88)
                      {
                        v89 = CFUUIDCreateString(v132, v88);
                        v90 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v89];

                        v91 = [NEPolicyCondition realApplication:v90];
LABEL_105:
                        v62 = v91;

                        if (v62)
                        {
                          goto LABEL_192;
                        }
                      }

                      break;
                    case 3u:
                      HIDWORD(valuePtr) = 0;
                      v92 = CFDictionaryGetValue(v59, @"PID");
                      if (!v92 || !CFNumberGetValue(v92, kCFNumberIntType, &valuePtr + 4))
                      {
                        goto LABEL_180;
                      }

                      v76 = [NEPolicyCondition effectivePID:HIDWORD(valuePtr)];
                      goto LABEL_191;
                    case 4u:
                      HIDWORD(valuePtr) = 0;
                      v101 = CFDictionaryGetValue(v59, @"UID");
                      if (!v101 || !CFNumberGetValue(v101, kCFNumberIntType, &valuePtr + 4))
                      {
                        goto LABEL_180;
                      }

                      v76 = [NEPolicyCondition uid:HIDWORD(valuePtr)];
                      goto LABEL_191;
                    case 5u:
                      v93 = CFDictionaryGetValue(v59, @"AccountID");
                      if (!v93)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition accountIdentifier:v93];
                      goto LABEL_191;
                    case 6u:
                      v98 = CFDictionaryGetValue(v59, @"Domain");
                      if (!v98)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition domain:v98];
                      goto LABEL_191;
                    case 7u:
                      v76 = +[NEPolicyCondition allInterfaces];
                      goto LABEL_191;
                    case 8u:
                      v103 = CFDictionaryGetValue(v59, @"InterfaceName");
                      if (!v103)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition scopedInterface:v103];
                      goto LABEL_191;
                    case 9u:
                      v96 = NEGetIntFromDictionary(v59, @"StartTrafficClass", 0);
                      v97 = NEGetIntFromDictionary(v59, @"EndTrafficClass", 0);
                      if (CFDictionaryContainsKey(v59, @"StartTrafficClass") && CFDictionaryContainsKey(v59, @"EndTrafficClass"))
                      {
                        v62 = [NEPolicyCondition trafficClassStart:v96 end:v97];
                      }

                      else
                      {
                        v62 = 0;
                      }

                      goto LABEL_161;
                    case 0xAu:
                    case 0x13u:
LABEL_161:
                      v112 = NEGetIntFromDictionary(v59, @"ProtocolIndex", 0);
                      if (!v112)
                      {
                        goto LABEL_181;
                      }

                      if (v61 == 10)
                      {
                        [NEPolicyCondition ipProtocol:v112];
                      }

                      else
                      {
                        [NEPolicyCondition flowIPProtocol:v112];
                      }
                      v113 = ;

                      v62 = v113;
                      if (!v113)
                      {
                        break;
                      }

                      goto LABEL_192;
                    case 0xBu:
                    case 0xDu:
                    case 0x14u:
                    case 0x16u:
                      v63 = CFDictionaryGetValue(v59, @"Address");
                      v64 = CFDictionaryGetValue(v59, @"Port");
                      v65 = CFDictionaryGetValue(v59, @"SubnetPrefix");
                      if (!v63)
                      {
                        break;
                      }

                      if (v65)
                      {
                        HIDWORD(valuePtr) = 0;
                        if (CFNumberGetValue(v65, kCFNumberIntType, &valuePtr + 4))
                        {
                          v66 = BYTE4(valuePtr);
                        }

                        else
                        {
                          v66 = -1;
                        }

                        if (v64)
                        {
LABEL_68:
                          v67 = CFStringCreateWithFormat(v132, 0, @"%@", v64);
                          goto LABEL_131;
                        }
                      }

                      else
                      {
                        v66 = -1;
                        if (v64)
                        {
                          goto LABEL_68;
                        }
                      }

                      v67 = @"0";
LABEL_131:
                      v104 = [MEMORY[0x1E6977E08] endpointWithHostname:v63 port:v67];
                      v62 = 0;
                      if (v61 > 0x13u)
                      {
                        if (v61 == 20)
                        {
                          v105 = [NEPolicyCondition flowLocalAddress:v104 prefix:v66];
                        }

                        else
                        {
                          if (v61 != 22)
                          {
                            goto LABEL_170;
                          }

                          v105 = [NEPolicyCondition flowRemoteAddress:v104 prefix:v66];
                        }
                      }

                      else if (v61 == 11)
                      {
                        v105 = [NEPolicyCondition localAddress:v104 prefix:v66];
                      }

                      else
                      {
                        if (v61 != 13)
                        {
                          goto LABEL_170;
                        }

                        v105 = [NEPolicyCondition remoteAddress:v104 prefix:v66];
                      }

                      v62 = v105;
LABEL_170:
                      if (v67)
                      {
                        CFRelease(v67);
                      }

                      if (!v62)
                      {
                        break;
                      }

                      goto LABEL_192;
                    case 0xCu:
                    case 0xEu:
                    case 0x15u:
                    case 0x17u:
                      v68 = CFDictionaryGetValue(v59, @"StartAddress");
                      v69 = CFDictionaryGetValue(v59, @"StartPort");
                      v70 = CFDictionaryGetValue(v59, @"EndAddress");
                      v71 = CFDictionaryGetValue(v59, @"EndPort");
                      if (!v68 || !v70)
                      {
                        break;
                      }

                      v72 = v71;
                      if (v69)
                      {
                        v73 = CFStringCreateWithFormat(v132, 0, @"%@", v69);
                        if (v72)
                        {
                          goto LABEL_73;
                        }
                      }

                      else
                      {
                        v73 = @"0";
                        if (v71)
                        {
LABEL_73:
                          v74 = CFStringCreateWithFormat(v132, 0, @"%@", v72);
                          goto LABEL_140;
                        }
                      }

                      v74 = @"0";
LABEL_140:
                      v106 = [MEMORY[0x1E6977E08] endpointWithHostname:v68 port:v73];
                      v107 = [MEMORY[0x1E6977E08] endpointWithHostname:v70 port:v74];
                      v62 = 0;
                      if (v61 > 0x14u)
                      {
                        if (v61 != 21)
                        {
                          v54 = a3;
                          if (v61 == 23)
                          {
                            v108 = [NEPolicyCondition flowRemoteAddressStart:v106 end:v107];
LABEL_147:
                            v62 = v108;
                          }

LABEL_148:
                          if (!v73)
                          {
                            goto LABEL_150;
                          }

LABEL_149:
                          CFRelease(v73);
                          goto LABEL_150;
                        }

                        v114 = [NEPolicyCondition flowLocalAddressStart:v106 end:v107];
                      }

                      else
                      {
                        if (v61 != 12)
                        {
                          v54 = a3;
                          if (v61 == 14)
                          {
                            v108 = [NEPolicyCondition remoteAddressStart:v106 end:v107];
                            goto LABEL_147;
                          }

                          goto LABEL_148;
                        }

                        v114 = [NEPolicyCondition localAddressStart:v106 end:v107];
                      }

                      v62 = v114;
                      v54 = a3;
                      if (v73)
                      {
                        goto LABEL_149;
                      }

LABEL_150:
                      if (v74)
                      {
                        CFRelease(v74);
                      }

                      v8 = v124;
                      if (v62)
                      {
LABEL_192:
                        v119 = CFDictionaryGetValue(v59, @"IsNegative");
                        if (v119 && CFBooleanGetValue(v119))
                        {
                          [v62 setNegative:1];
                        }

                        v120 = CFDictionaryGetValue(v59, @"ExactMatch");
                        if (v120 && CFBooleanGetValue(v120))
                        {
                          [v62 setExactMatch:1];
                        }

                        [v8 addObject:v62];
                      }

                      break;
                    case 0xFu:
                      v76 = +[NEPolicyCondition entitlement];
                      goto LABEL_191;
                    case 0x10u:
                      v82 = CFDictionaryGetValue(v59, @"NetAgentDomain");
                      v83 = CFDictionaryGetValue(v59, @"NetAgentType");
                      if (!v82 || !v83)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition requiredAgentDomain:v82 agentType:v83];
                      goto LABEL_191;
                    case 0x11u:
                      v76 = +[NEPolicyCondition usesModernNetworkAPI];
                      goto LABEL_191;
                    case 0x18u:
                      v102 = NEGetIntFromDictionary(v59, @"ClientFlags", 0);
                      if (!v102)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition clientFlags:v102];
                      goto LABEL_191;
                    case 0x19u:
                      v76 = +[NEPolicyCondition flowLocalAddressEmpty];
                      goto LABEL_191;
                    case 0x1Au:
                      v76 = +[NEPolicyCondition flowRemoteAddressEmpty];
                      goto LABEL_191;
                    case 0x1Bu:
                      v76 = +[NEPolicyCondition platformBinary];
                      goto LABEL_191;
                    case 0x1Cu:
                      v78 = CFDictionaryGetValue(v59, @"Platform");
                      if (v78 && (v79 = v78, v80 = CFNUMBER_TYPE, CFGetTypeID(v78) == v80))
                      {
                        HIDWORD(valuePtr) = 0;
                        if (CFNumberGetValue(v79, kCFNumberIntType, &valuePtr + 4))
                        {
                          v81 = HIDWORD(valuePtr);
                        }

                        else
                        {
                          v81 = 0;
                        }
                      }

                      else
                      {
                        v81 = 0;
                      }

                      v109 = CFDictionaryGetValue(v59, @"SDKVersion");
                      v110 = v109;
                      if (v109)
                      {
                        v111 = CFNUMBER_TYPE;
                        if (CFGetTypeID(v109) == v111)
                        {
                          HIDWORD(valuePtr) = 0;
                          if (CFNumberGetValue(v110, kCFNumberIntType, &valuePtr + 4))
                          {
                            v110 = HIDWORD(valuePtr);
                          }

                          else
                          {
                            v110 = 0;
                          }
                        }

                        else
                        {
                          v110 = 0;
                        }
                      }

                      v115 = CFDictionaryGetValue(v59, @"MinSDKVersion");
                      if (v115 && (v116 = v115, v117 = CFNUMBER_TYPE, CFGetTypeID(v115) == v117))
                      {
                        HIDWORD(valuePtr) = 0;
                        if (CFNumberGetValue(v116, kCFNumberIntType, &valuePtr + 4))
                        {
                          v118 = HIDWORD(valuePtr);
                        }

                        else
                        {
                          v118 = 0;
                        }
                      }

                      else
                      {
                        v118 = 0;
                      }

                      v54 = a3;
                      v76 = [NEPolicyCondition sdkVersion:v110 minSDKVersion:v118 platform:v81];
                      goto LABEL_191;
                    case 0x1Du:
                      v77 = CFDictionaryGetValue(v59, @"SigningIdentifier");
                      if (!v77)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition signingIdentifier:v77];
                      goto LABEL_191;
                    case 0x1Eu:
                      v87 = NEGetIntFromDictionary(v59, @"PacketFilterTags", 0);
                      if (!v87)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition packetFilterTags:v87];
                      goto LABEL_191;
                    case 0x25u:
                      v99 = NEGetIntFromDictionary(v59, @"Port", 0);
                      if (!v99)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition schemeUsingPort:v99];
                      goto LABEL_191;
                    case 0x27u:
                      v76 = +[NEPolicyCondition hasSignedResult];
                      goto LABEL_191;
                    case 0x28u:
                      HIDWORD(valuePtr) = 0;
                      v100 = CFDictionaryGetValue(v59, @"UID");
                      if (!v100 || !CFNumberGetValue(v100, kCFNumberIntType, &valuePtr + 4))
                      {
                        goto LABEL_180;
                      }

                      v76 = [NEPolicyCondition realUID:HIDWORD(valuePtr)];
                      goto LABEL_191;
                    case 0x2Au:
                      v75 = CFDictionaryGetValue(v59, @"URL");
                      if (!v75)
                      {
                        break;
                      }

                      v76 = [NEPolicyCondition url:v75];
                      goto LABEL_191;
                    case 0x2Bu:
                      valuePtr = 0;
                      v134 = 0;
                      v84 = CFDictionaryGetValue(v59, @"InterfaceFlags");
                      v85 = CFDictionaryGetValue(v59, @"InterfaceEflags");
                      v86 = CFDictionaryGetValue(v59, @"InterfaceXflags");
                      if (v84)
                      {
                        CFNumberGetValue(v84, kCFNumberSInt32Type, &valuePtr + 4);
                      }

                      if (v85)
                      {
                        CFNumberGetValue(v85, kCFNumberSInt32Type, &valuePtr);
                      }

                      if (v86)
                      {
                        CFNumberGetValue(v86, kCFNumberSInt32Type, &v134);
                      }

                      else if (!(v84 | v85))
                      {
LABEL_180:
                        v62 = 0;
LABEL_181:
                        if (v62)
                        {
                          goto LABEL_192;
                        }

                        break;
                      }

                      v76 = [NEPolicyCondition scopedInterfaceFlags:HIDWORD(valuePtr) eflags:valuePtr xflags:v134];
LABEL_191:
                      v62 = v76;
                      if (!v76)
                      {
                        break;
                      }

                      goto LABEL_192;
                    default:
                      break;
                  }
                }

                ++v57;
              }

              while (v56 != v57);
            }

            v121 = [[NEPolicy alloc] initWithOrder:v128 result:alloca conditions:v8];
            v4 = [v130 addPolicy:v121 storeLocally:1];
          }
        }

        else
        {
LABEL_201:
          v4 = 0;
        }

LABEL_202:

        break;
      case 7u:
        v25 = CFDictionaryGetValue(a4, @"FilterControlUnit");
        if (!v25)
        {
          goto LABEL_201;
        }

        HIDWORD(valuePtr) = 0;
        if (CFNumberGetValue(v25, kCFNumberIntType, &valuePtr + 4))
        {
          v10 = [NEPolicyResult filterWithControlUnit:HIDWORD(valuePtr)];
          goto LABEL_56;
        }

LABEL_49:
        v4 = 0;
        goto LABEL_57;
      case 8u:
        v26 = CFDictionaryGetValue(a4, @"NetAgentUUID");
        if (!v26)
        {
          goto LABEL_201;
        }

        v27 = CFUUIDCreateString(*MEMORY[0x1E695E480], v26);
        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];

        v14 = [NEPolicyResult netAgentUUID:v13];
        goto LABEL_31;
      case 9u:
        v127 = a2;
        v129 = v7;
        v123 = v8;
        v30 = [MEMORY[0x1E695DF70] array];
        v31 = CFDictionaryGetValue(a4, @"RouteRules");
        if (v31)
        {
          v32 = v31;
          v33 = CFArrayGetCount(v31);
          if (v33 >= 1)
          {
            v34 = v33;
            v35 = 0;
            v36 = @"Action";
            alloc = *MEMORY[0x1E695E480];
            v131 = v32;
            do
            {
              v37 = CFArrayGetValueAtIndex(v32, v35);
              if (v37)
              {
                v38 = v37;
                v39 = CFDictionaryGetValue(v37, v36);
                v40 = NEMapStringToInteger(&kNEPolicyRouteRuleActionMapping, v39);
                v41 = CFDictionaryGetValue(v38, @"Type");
                v42 = NEMapStringToInteger(&kNEPolicyRouteRuleTypeMapping, v41);
                v43 = CFDictionaryGetValue(v38, @"Interface");
                if (v40)
                {
                  v44 = v43;
                  if (v40 - 5 <= 1 && (v45 = CFDictionaryGetValue(a4, @"NetAgentUUID")) != 0)
                  {
                    v46 = v34;
                    v47 = v36;
                    v48 = v30;
                    v49 = CFUUIDCreateString(alloc, v45);
                    v50 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v49];

                    v30 = v48;
                    v36 = v47;
                    v34 = v46;
                    v32 = v131;
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if (v44)
                  {
                    [NEPolicyRouteRule routeRuleWithAction:v40 forInterfaceName:v44];
                  }

                  else
                  {
                    [NEPolicyRouteRule routeRuleWithAction:v40 forType:v42];
                  }
                  v51 = ;
                  v52 = v51;
                  if (v51)
                  {
                    [v51 setNetworkAgentUUID:v50];
                    [v30 addObject:v52];
                  }
                }
              }

              ++v35;
            }

            while (v34 != v35);
          }
        }

        v4 = [NEPolicyResult routeRules:v30];

        v8 = v123;
        v7 = v129;
        a2 = v127;
        goto LABEL_57;
      case 0xBu:
        v28 = CFDictionaryGetValue(a4, @"NetAgentUUID");
        if (!v28)
        {
          goto LABEL_201;
        }

        v29 = CFUUIDCreateString(*MEMORY[0x1E695E480], v28);
        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v29];

        v14 = [NEPolicyResult scopedNetworkAgent:v13];
        goto LABEL_31;
      case 0xCu:
        v10 = +[NEPolicyResult scopeToDirectInterface];
        goto LABEL_56;
      case 0xDu:
        v10 = +[NEPolicyResult allowUnentitled];
        goto LABEL_56;
      case 0xEu:
        v10 = +[NEPolicyResult prohibitFilters];
        goto LABEL_56;
      case 0xFu:
        v11 = CFDictionaryGetValue(a4, @"NetAgentUUID");
        if (!v11)
        {
          goto LABEL_201;
        }

        v12 = CFUUIDCreateString(*MEMORY[0x1E695E480], v11);
        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];

        v14 = [NEPolicyResult removeNetworkAgentUUID:v13];
LABEL_31:
        v4 = v14;

        goto LABEL_57;
      default:
        goto LABEL_202;
    }
  }

  return v4;
}

void sub_1BA9CC708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9CCA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20481(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA9D08DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9D1204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9D186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9D2960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9D4214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9D4DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9DC8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA9DEF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *convert_error_to_string(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  if (isEqualToString)
  {
    v4 = @"configuration is corrupted";
    switch([v1 code])
    {
      case 1:
        break;
      case 2:
        v5 = MEMORY[0x1E696AEC0];
        v6 = [v1 localizedDescription];
        v4 = [v5 stringWithFormat:@"configuration is invalid: %@", v6];

        break;
      case 3:
        v4 = @"configuration type is wrong";
        break;
      case 4:
        v4 = @"configuration owner application is wrong";
        break;
      case 5:
        v4 = @"configuration is stale";
        break;
      case 6:
        v4 = @"failed to write configuration to disk";
        break;
      case 7:
        v4 = @"configuration does not exist";
        break;
      case 8:
        v4 = @"invalid configuration operation request";
        break;
      case 9:
        v4 = @"configuration is unchanged";
        break;
      case 10:
        v4 = @"permission denied";
        break;
      case 11:
        v4 = @"IPC failed";
        break;
      case 18:
        v4 = @"file not found";
        break;
      case 21:
        v4 = @"MDM required";
        break;
      default:
        v4 = @"<unknown>";
        break;
    }
  }

  else
  {
    v4 = [v1 localizedDescription];
  }

  return v4;
}

void sub_1BA9E1E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA9E4810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA9EA694(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22795(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA9EE9F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void NEResourcesSetPreferredLanguages(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&languageLock);
  v2 = g_preferredLanguages;
  g_preferredLanguages = v1;

  os_unfair_lock_unlock(&languageLock);
}

id NEResourcesCopyPreferredLanguages()
{
  os_unfair_lock_lock(&languageLock);
  v0 = [g_preferredLanguages copy];
  os_unfair_lock_unlock(&languageLock);

  return v0;
}

id NEResourcesCopyDevicePreferredLocalizations()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  if (v0 || (NEResourcesCopyPreferredLanguages(), (v0 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v1 = v0;
    v2 = get_nsbundle();
    v3 = MEMORY[0x1E696AAE8];
    v4 = [v2 localizations];
    v5 = [v3 preferredLocalizationsFromArray:v4 forPreferences:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id get_nsbundle()
{
  if (get_nsbundle_onceToken != -1)
  {
    dispatch_once(&get_nsbundle_onceToken, &__block_literal_global_23402);
  }

  v1 = get_nsbundle_bundle;

  return v1;
}

uint64_t __get_nsbundle_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/Frameworks/NetworkExtension.framework"];
  v1 = get_nsbundle_bundle;
  get_nsbundle_bundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

CFTypeRef NEResourcesCopyTrustedApplicationPaths()
{
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  result = CFBundleGetValueForInfoDictionaryKey(get_bundle_bundle, @"TrustedExecutables");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __get_bundle_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], "/System/Library/Frameworks/NetworkExtension.framework", 53, 0);
  get_bundle_bundle = CFBundleCreate(v0, v1);

  CFRelease(v1);
}

CFURLRef NEResourcesCopyVPNIconURL()
{
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  v1 = get_bundle_bundle;

  return CFBundleCopyResourceURL(v1, @"NetworkConnect.icns", 0, 0);
}

CFURLRef NEResourcesCopyNetworkPrivacyIconURL()
{
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  v1 = get_bundle_bundle;

  return CFBundleCopyResourceURL(v1, @"LocalNetworkPrivacy.png", 0, 0);
}

CFURLRef NEResourcesCopyNetworkPrivacyiOSIconURL(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LocalNetworkPrivacyiOS@%dx.png", a1];
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  v2 = CFBundleCopyResourceURL(get_bundle_bundle, v1, 0, 0);

  return v2;
}

CFTypeRef NEResourcesCopyContentFilterExclusionList()
{
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  result = CFBundleGetValueForInfoDictionaryKey(get_bundle_bundle, @"ContentFilterExclusionList");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef NEResourcesCopyContentFilterDefaultDropExclusionList()
{
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  result = CFBundleGetValueForInfoDictionaryKey(get_bundle_bundle, @"ContentFilterDefaultDropExclusionList");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

id NEResourcesCopyLocalizedNSString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = get_nsbundle();
  v6 = NEResourcesCopyPreferredLanguages();
  v7 = MEMORY[0x1E696AAE8];
  v8 = [v5 localizations];
  v9 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v6];

  [v9 firstObject];
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  v10 = CFBundleCopyLocalizedStringForLocalization();

  return v10;
}

id NEResourcesCopyDeviceLocalizedNSString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = get_nsbundle();
  v6 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  v7 = MEMORY[0x1E696AAE8];
  v8 = [v5 localizations];
  v9 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v6];

  [v9 firstObject];
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  v10 = CFBundleCopyLocalizedStringForLocalization();

  return v10;
}

const __CFURL *NEResourcesCopyAppTrackingDomainsPath()
{
  v4 = *MEMORY[0x1E69E9840];
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  result = CFBundleCopyResourceURL(get_bundle_bundle, @"apptrackingdomains.json", 0, 0);
  if (result)
  {
    v1 = result;
    v2 = CFURLGetFileSystemRepresentation(result, 1u, buffer, 1024);
    CFRelease(v1);
    if (v2)
    {
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x600u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFURL *NEResourcesCopyTestAppTrackingDomainsPath()
{
  v4 = *MEMORY[0x1E69E9840];
  if (get_bundle_initialized != -1)
  {
    dispatch_once(&get_bundle_initialized, &__block_literal_global_34);
  }

  result = CFBundleCopyResourceURL(get_bundle_bundle, @"testapptrackingdomains.json", 0, 0);
  if (result)
  {
    v1 = result;
    v2 = CFURLGetFileSystemRepresentation(result, 1u, buffer, 1024);
    CFRelease(v1);
    if (v2)
    {
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x600u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BA9F33E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9F379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t symptomReporterSuccessfullyLoaded()
{
  if (symptomReporterSuccessfullyLoaded_symbolLoadOnce != -1)
  {
    dispatch_once(&symptomReporterSuccessfullyLoaded_symbolLoadOnce, &__block_literal_global_23486);
  }

  return symptomReporterSuccessfullyLoaded_symbolsLoaded;
}

void __symptomReporterSuccessfullyLoaded_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/System/Library/PrivateFrameworks/SymptomReporter.framework/SymptomReporter", 6);
  v1 = getenv("DYLD_IMAGE_SUFFIX");
  v2 = v1;
  v3 = "out";
  if (!v0 && v1)
  {
    *__path = 0;
    v4 = asprintf(__path, "%s%s", "/System/Library/PrivateFrameworks/SymptomReporter.framework/SymptomReporter", v1);
    v0 = 0;
    v5 = *__path;
    if (v4 >= 1 && *__path)
    {
      v0 = dlopen(*__path, 6);
      v3 = "";
      v5 = *__path;
    }

    if (v5)
    {
      free(v5);
    }
  }

  if (v0)
  {
    symptomReporterSuccessfullyLoaded_symbolsLoaded = 1;
    symptom_create = dlsym(v0, "symptom_create");
    if (symptom_create)
    {
      symptom_set_qualifier = dlsym(v0, "symptom_set_qualifier");
      if (symptom_set_qualifier)
      {
        symptom_send = dlsym(v0, "symptom_send");
        if (symptom_send)
        {
          symptom_set_additional_qualifier = dlsym(v0, "symptom_set_additional_qualifier");
          if (symptom_set_additional_qualifier)
          {
            if (symptomReporterSuccessfullyLoaded_symbolsLoaded == 1)
            {
              v6 = ne_log_obj();
              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
              {
                v7 = "[null]";
                if (v2)
                {
                  v7 = v2;
                }

                *__path = 136315394;
                *&__path[4] = v3;
                v12 = 2080;
                v13 = v7;
                _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Successfully loaded SymptomReporter framework with%s suffix %s", __path, 0x16u);
              }

              return;
            }

LABEL_30:
            dlclose(v0);
            return;
          }

          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *__path = 0;
            v10 = "Failed to load SymptomReporter symbol symptom_set_additional_qualifier";
            goto LABEL_28;
          }

LABEL_29:
          symptomReporterSuccessfullyLoaded_symbolsLoaded = 0;
          goto LABEL_30;
        }

        v9 = ne_log_obj();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *__path = 0;
        v10 = "Failed to load SymptomReporter symbol symptom_send";
      }

      else
      {
        v9 = ne_log_obj();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *__path = 0;
        v10 = "Failed to load SymptomReporter symbol symptom_set_qualifier";
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *__path = 0;
      v10 = "Failed to load SymptomReporter symbol symptom_create";
    }

LABEL_28:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, __path, 2u);
    goto LABEL_29;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *__path = 0;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to load SymptomReporter framework", __path, 2u);
  }
}

void sub_1BA9F662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23935(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA9F8828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1BA9FBC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void authCallback(__CFUserNotification *a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&g_currentNotificationLock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = g_currentNotifications;
  v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (v9)
        {
          Property = objc_getProperty(*(*(&v25 + 1) + 8 * v8), v5, 16, 1);
        }

        else
        {
          Property = 0;
        }

        if (Property == a1)
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v11;
    }

    while (v11);
  }

LABEL_15:

  os_unfair_lock_unlock(&g_currentNotificationLock);
  if (v6)
  {
    v13 = a2 & 3;
    if (v13 == 1)
    {
      v14 = 0;
    }

    else if (v13 == 3)
    {
      v14 = 0;
      v13 = 2;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = 0;
      v16 = *MEMORY[0x1E695EEA8];
      do
      {
        ResponseValue = CFUserNotificationGetResponseValue(a1, v16, v15);
        if (!ResponseValue)
        {
          break;
        }

        [v14 addObject:ResponseValue];
        ++v15;
      }

      while (v15 != 10);
      v13 = 0;
    }

    v18 = objc_getProperty(v6, v12, 32, 1);
    v19 = v6[5];
    [v6 cancel];
    if (v18 && v19)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __authCallback_block_invoke;
      block[3] = &unk_1E7F0AB90;
      v23 = v19;
      v24 = v13;
      v22 = v14;
      dispatch_async(v18, block);
    }
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Failed to find current notification on auth callback", v20, 2u);
    }
  }
}

void alertCallback(id a1, char a2)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&g_currentNotificationLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = g_currentNotifications;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (v10)
        {
          Property = objc_getProperty(*(*(&v22 + 1) + 8 * v9), v6, 16, 1);
        }

        else
        {
          Property = 0;
        }

        if (Property == a1)
        {
          v13 = v10;
          goto LABEL_15;
        }

        ++v9;
      }

      while (v7 != v9);
      v12 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v13 = 0;
LABEL_15:

  os_unfair_lock_unlock(&g_currentNotificationLock);
  if (v13)
  {
    v15 = objc_getProperty(v13, v14, 32, 1);
    v16 = v13[5];
    [v13 cancel];
    if (v15 && v16)
    {
      if ((a2 & 3) == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * ((a2 & 3) == 3);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __alertCallback_block_invoke;
      block[3] = &unk_1E7F0AB18;
      v20 = v16;
      v21 = v17;
      dispatch_async(v15, block);
    }
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 0;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to find current notification on alert callback", v18, 2u);
    }
  }
}

void __getDisplayScale_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    v0 = v2;
    *&sMaxDisplayScale = v1;
  }
}

__CFString *convert_error_to_string_24635(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  if (isEqualToString)
  {
    v4 = @"configuration is corrupted";
    switch([v1 code])
    {
      case 1:
        break;
      case 2:
        v5 = MEMORY[0x1E696AEC0];
        v6 = [v1 localizedDescription];
        v4 = [v5 stringWithFormat:@"configuration is invalid: %@", v6];

        break;
      case 3:
        v4 = @"configuration type is wrong";
        break;
      case 4:
        v4 = @"configuration owner application is wrong";
        break;
      case 5:
        v4 = @"configuration is stale";
        break;
      case 6:
        v4 = @"failed to write configuration to disk";
        break;
      case 7:
        v4 = @"configuration does not exist";
        break;
      case 8:
        v4 = @"invalid configuration operation request";
        break;
      case 9:
        v4 = @"configuration is unchanged";
        break;
      case 10:
        v4 = @"permission denied";
        break;
      case 11:
        v4 = @"IPC failed";
        break;
      case 12:
        v4 = @"failed to make the change in SCPreferences";
        break;
      case 13:
        v4 = @"failed to copy keychain items";
        break;
      case 14:
        v4 = @"failed into import certificates into keychain";
        break;
      case 15:
        v4 = @"unknown certificate format";
        break;
      case 16:
        v4 = @"failed to import certificate";
        break;
      case 17:
        v4 = @"internal failure with certificate installation";
        break;
      case 18:
        v4 = @"file not found";
        break;
      case 21:
        v4 = @"MDM required";
        break;
      default:
        v4 = @"<unknown>";
        break;
    }
  }

  else
  {
    v4 = [v1 localizedDescription];
  }

  return v4;
}

id find_config_by_name(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 name];
          isEqualToString = objc_msgSend_isEqualToString_(v10);

          if (isEqualToString)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __Block_byref_object_copy__24640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAA0BC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void myCFRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

CFTypeRef myCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void myCFReplace(CFTypeRef *a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v3 = CFRetain(cf);
    }

    else
    {
      v3 = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v3;
  }
}

uint64_t myCFEqual(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

void myCFDataReleaseReset(CFDataRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(v2);
      if (MutableBytePtr)
      {
        v4 = MutableBytePtr;
        Length = CFDataGetLength(*a1);
        v6 = CFDataGetLength(*a1);
        memset_s(v4, Length, 0, v6);
      }

      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

__CFData *myCFDataCreateMutableCopy(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      Mutable = CFDataCreateMutable(a1, 0);
      v3 = Mutable;
      if (Mutable)
      {
        CFDataAppendBytes(Mutable, a2, a3);
      }
    }
  }

  return v3;
}

const __CFData *myCFDataCreateMutableCopyOfData(const __CFData *theData)
{
  if (theData)
  {
    theData = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, theData);
    if (!theData)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
      {
        *v2 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v1, OS_LOG_TYPE_FAULT, "CFDataCreateMutableCopy failed", v2, 2u);
      }

      return 0;
    }
  }

  return theData;
}

void myCFDataResetReplace(CFDataRef *a1, CFDataRef theData)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MutableCopyOfData = myCFDataCreateMutableCopyOfData(theData);
    myCFDataReleaseReset(a1);
    *a1 = MutableCopyOfData;
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315138;
      v6 = "myCFDataResetReplace";
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "%s called with null oldP", &v5, 0xCu);
    }
  }
}

__CFData *myCFDataCreateMutableFromString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x2F40A8E7uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u);
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringGetLength(a1);
  MutableCopy = myCFDataCreateMutableCopy(v6, v5, v7);
  memset_s(v5, MaximumSizeForEncoding + 1, 0, MaximumSizeForEncoding + 1);
  free(v5);
  return MutableCopy;
}

void myCFDataResetReplaceFromString(CFDataRef *a1, CFStringRef theString)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MutableCopy = theString;
    if (theString)
    {
      if (CFStringGetLength(theString) >= 1)
      {
        Length = CFStringGetLength(MutableCopy);
        v5 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
        v6 = malloc_type_malloc(v5, 0xA1538C9BuLL);
        if (v6)
        {
          v7 = v6;
          CFStringGetCString(MutableCopy, v6, v5, 0x8000100u);
          v8 = *MEMORY[0x1E695E480];
          v9 = CFStringGetLength(MutableCopy);
          MutableCopy = myCFDataCreateMutableCopy(v8, v7, v9);
          memset_s(v7, v5, 0, v5);
          free(v7);
          goto LABEL_9;
        }

        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v12 = 67109120;
          LODWORD(v13) = v5;
          _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "malloc(%u) failed", &v12, 8u);
        }
      }

      MutableCopy = 0;
    }

LABEL_9:
    myCFDataReleaseReset(a1);
    *a1 = MutableCopy;
    return;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = 136315138;
    v13 = "myCFDataResetReplaceFromString";
    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null oldP", &v12, 0xCu);
  }
}

const void *NEIsValidCFType(const void *result, uint64_t a2)
{
  if (result)
  {
    return (CFGetTypeID(result) == a2);
  }

  return result;
}

const void *NEGetValueWithType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (!Value)
      {
        return 0;
      }

      v3 = Value;
      if (CFGetTypeID(Value) != a3)
      {
        return 0;
      }
    }
  }

  return v3;
}

void NEInitCFTypes()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }
}

CFTypeID __NEInitCFTypes_block_invoke()
{
  CFSTRING_TYPE = CFStringGetTypeID();
  CFNUMBER_TYPE = CFNumberGetTypeID();
  CFBOOLEAN_TYPE = CFBooleanGetTypeID();
  CFARRAY_TYPE = CFArrayGetTypeID();
  CFDICTIONARY_TYPE = CFDictionaryGetTypeID();
  result = CFDataGetTypeID();
  CFDATA_TYPE = result;
  return result;
}

void *NEMapIntegerToString(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v3 = (v2 + 2);
      do
      {
        if (*(v3 - 2) == a2)
        {
          break;
        }

        v4 = *v3;
        v3 += 2;
        result = v4;
      }

      while (v4);
    }
  }

  return result;
}

const void **NEMapStringToInteger(const void **result, CFTypeRef cf1)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result)
    {
      while (!cf1 || !CFEqual(cf1, v4))
      {
        v5 = v3[2];
        v3 += 2;
        v4 = v5;
        if (!v5)
        {
          return 0;
        }
      }

      return *(v3 + 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NEInChecksum(unsigned __int16 *a1, int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      a2 = v3 - 2;
      v5 = v3 > 3;
      v3 -= 2;
    }

    while (v5);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

void *NECreateAddressStructFromString(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0xB892E1CAuLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  v8 = *MEMORY[0x1E695E480];
  if (a2)
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"%@", a2);
  }

  else
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"%d", a3);
  }

  v11 = v9;
  v12 = CFStringGetLength(v9);
  v13 = malloc_type_malloc(v12 + 1, 0x4E69D3C6uLL);
  CFStringGetCString(v11, v13, v12 + 1, 0x600u);
  CFRelease(v11);
  memset(&v17, 0, sizeof(v17));
  v17.ai_socktype = 2;
  v17.ai_flags = 4;
  if (getaddrinfo(v7, v13, &v17, &v16))
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
    v15 = v16;
    if (v10)
    {
      __memcpy_chk();
    }

    freeaddrinfo(v15);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  free(v7);
LABEL_9:
  if (v13)
  {
    free(v13);
  }

  return v10;
}

const __CFString *NEGetAddressFamilyFromString(CFStringRef theString)
{
  v1 = theString;
  v16 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (theString)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    Length = CFStringGetLength(theString);
    v3 = malloc_type_malloc(Length + 1, 0xBC187EFEuLL);
    CFStringGetCString(v1, v3, Length + 1, 0x600u);
    memset(&v7, 0, sizeof(v7));
    v7.ai_socktype = 2;
    v7.ai_flags = 4;
    if (!getaddrinfo(v3, 0, &v7, &v6))
    {
      v5 = v6;
      __memcpy_chk();
      freeaddrinfo(v5);
      v1 = BYTE1(v8);
      if (!v3)
      {
        return v1;
      }

      goto LABEL_4;
    }

    v1 = 0;
    if (v3)
    {
LABEL_4:
      free(v3);
    }
  }

  return v1;
}

CFDataRef NECreateAddressDataFromString(const __CFString *a1, const __CFString *a2, int *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!a1)
  {
    return 0;
  }

  memset(v16, 0, sizeof(v16));
  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0x7B63A1B4uLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  if (a2)
  {
    v8 = CFStringGetLength(a2);
    v9 = malloc_type_malloc(v8 + 1, 0xAAF799E2uLL);
    CFStringGetCString(a2, v9, v8 + 1, 0x600u);
  }

  else
  {
    v9 = 0;
  }

  memset(&v15, 0, sizeof(v15));
  v15.ai_socktype = 2;
  v15.ai_flags = 4;
  if (getaddrinfo(v7, v9, &v15, &v14))
  {
    goto LABEL_7;
  }

  v12 = v14;
  __memcpy_chk();
  freeaddrinfo(v12);
  if (BYTE1(v16[0]) == 30)
  {
    v10 = CFDataCreate(*MEMORY[0x1E695E480], v16 + 8, 16);
    if (!a3)
    {
      goto LABEL_8;
    }

    v13 = 30;
    goto LABEL_19;
  }

  if (BYTE1(v16[0]) == 2)
  {
    v10 = CFDataCreate(*MEMORY[0x1E695E480], v16 + 4, 4);
    if (!a3)
    {
      goto LABEL_8;
    }

    v13 = 2;
LABEL_19:
    *a3 = v13;
    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  return v10;
}

CFDataRef NECreateAddressStructDataFromString(const __CFString *a1, const __CFString *a2, int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!a1)
  {
    return 0;
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *bytes = 0u;
  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0x23183FE5uLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  if (a2)
  {
    v8 = CFStringGetLength(a2);
    v9 = malloc_type_malloc(v8 + 1, 0x41DA455uLL);
    CFStringGetCString(a2, v9, v8 + 1, 0x600u);
  }

  else
  {
    v9 = 0;
  }

  memset(&v15, 0, sizeof(v15));
  v15.ai_socktype = 2;
  v15.ai_flags = 4;
  if (!getaddrinfo(v7, v9, &v15, &v14))
  {
    v11 = v14;
    __memcpy_chk();
    freeaddrinfo(v11);
    v10 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 128);
    v12 = bytes[1];
    if (bytes[1] == 2)
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      v12 = 2;
    }

    else if (!a3 || bytes[1] != 30)
    {
      goto LABEL_14;
    }

    *a3 = v12;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  return v10;
}

CFStringRef NECreateAddressString(CFStringRef result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = BYTE1(result->isa);
    if (v1 == 30)
    {
      if (LOBYTE(result->isa) >= 0x1Cu)
      {
        v2 = 30;
        v3 = 8;
        goto LABEL_8;
      }
    }

    else if (v1 == 2 && LOBYTE(result->isa) > 0xFu)
    {
      v2 = 2;
      v3 = 4;
LABEL_8:
      inet_ntop(v2, result + v3, cStr, 0x40u);
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }

    return 0;
  }

  return result;
}

__CFString *NECreateAddressStringWithPort(uint64_t a1)
{
  v2 = NECreateAddressString(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  CFRelease(v3);
  v5 = *(a1 + 1);
  if (v5 == 2)
  {
    v6 = @":%u";
    goto LABEL_7;
  }

  if (v5 == 30)
  {
    v6 = @".%u";
LABEL_7:
    CFStringAppendFormat(MutableCopy, 0, v6, bswap32(*(a1 + 2)) >> 16);
  }

  return MutableCopy;
}

uint64_t NEGetPortFromAddress(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30 || v1 == 2)
    {
      v3 = *(result + 2);
    }

    else
    {
      v3 = 0;
    }

    return __rev16(v3);
  }

  return result;
}

CFStringRef NECreateAddressStringFromBuffer(CFStringRef result, unint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 >= 4 && a3 == 2)
    {
      v4 = 2;
LABEL_8:
      inet_ntop(v4, v3, cStr, 0x40u);
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }

    result = 0;
    if (a2 >= 0x10 && a3 == 30)
    {
      v4 = 30;
      goto LABEL_8;
    }
  }

  return result;
}

CFStringRef NECreateIPv4AddressMaskStringFromPrefix(unsigned int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 > 0x20)
  {
    return 0;
  }

  v2 = bswap32(-1 << (32 - a1));
  inet_ntop(2, &v2, cStr, 0x40u);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
}

CFStringRef NECreateIPv6AddressMaskStringFromPrefix(unsigned int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 > 0x80)
  {
    return 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  if (a1)
  {
    v1 = a1 >> 3;
    v2 = a1 & 7;
    __memset_chk();
    if (v2)
    {
      *(v4 + v1) = -1 << (8 - v2);
    }
  }

  inet_ntop(30, v4, cStr, 0x40u);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
}

CFStringRef NECreateIPv6SubnetAddressWithPrefix(const __CFString *a1, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NECreateIPv6AddressMaskStringFromPrefix(a2);
  v4 = NECreateAddressStructFromString(v3, 0, 0);
  v5 = NECreateAddressStructFromString(a1, 0, 0);
  v6 = v5;
  if (v4 && v5)
  {
    if (v4[1] == 30 && *(v5 + 1) == 30)
    {
      v7 = 0;
      v10[0] = 0;
      v10[1] = 0;
      do
      {
        *(v10 + v7) = v4[v7 + 8] & *(v5 + v7 + 8);
        ++v7;
      }

      while (v7 != 16);
      inet_ntop(30, v10, cStr, 0x40u);
      v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  free(v4);
  if (v6)
  {
LABEL_10:
    free(v6);
  }

LABEL_11:
  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

void NESetValueIfPresent(const __CFDictionary *a1, __CFDictionary *a2, void *key)
{
  if (a1 && a2 && key && CFDictionaryContainsKey(a1, key))
  {
    Value = CFDictionaryGetValue(a1, key);

    CFDictionarySetValue(a2, key, Value);
  }
}

void NEAddDateToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = CFDateCreate(*MEMORY[0x1E695E480], a3 - *MEMORY[0x1E695E468]);
      if (v5)
      {
        v6 = v5;
        CFDictionaryAddValue(a1, a2, v5);

        CFRelease(v6);
      }
    }
  }
}

void NEAddIntToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void NEAddIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

uint64_t NEGetIntFromDictionary(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

uint64_t NEGetIntFromArray(const __CFArray *a1, CFIndex a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

void NEAddAddressToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v5 = *(a3 + 1);
    if (v5 == 2)
    {
      v6 = 4;
    }

    else
    {
      if (v5 != 30)
      {
        return;
      }

      v6 = 8;
    }

    inet_ntop(v5, (a3 + v6), cStr, 0x40u);
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    if (v7)
    {
      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      CFRelease(v8);
    }
  }
}

void NEAddPortToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    v3 = *(a3 + 1);
    if (v3 == 30 || v3 == 2)
    {
      NEAddIntToDictionary(a1, a2, bswap32(*(a3 + 2)) >> 16);
    }
  }
}

unint64_t NEGetPrefixForAddressRange(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 1);
  if (v4 != *(a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 == 30)
  {
    v11 = 0;
    v12 = *(a1 + 8);
    v52 = *(a2 + 8);
    v53 = v12;
    result = 32;
    while (1)
    {
      v13 = *(&v53 + v11);
      v14 = *(&v52 + v11);
      if (v13 != v14)
      {
        break;
      }

      v11 += 4;
      result += 32;
      if (v11 == 16)
      {
        result = 128;
        goto LABEL_15;
      }
    }

    v15 = bswap32(v14);
    v16 = bswap32(v13);
    do
    {
      v16 >>= 1;
      v17 = v16 == v15 >> 1;
      v15 >>= 1;
      --result;
    }

    while (!v17);
LABEL_15:
    v18 = 0;
    v19 = *(a1 + 8);
    v52 = *(a2 + 8);
    v53 = v19;
    v20 = 32 - result;
    for (i = result; ; i -= 32)
    {
      if (!i)
      {
        if (*(&v53 + v18) || *(&v52 + v18) != -1)
        {
          return 0xFFFFFFFFLL;
        }

        return result;
      }

      if (i <= 0x1F)
      {
        break;
      }

      ++v18;
      v20 += 32;
      if (v18 == 4)
      {
        return result;
      }
    }

    if (v20 <= 1)
    {
      v20 = 1;
    }

    v26 = v20 - 1;
    v27 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = xmmword_1BAA4E5C0;
    v29 = xmmword_1BAA4E5D0;
    v30 = xmmword_1BAA4E5E0;
    v31 = 0uLL;
    v32.i64[0] = 0x100000001;
    v32.i64[1] = 0x100000001;
    v33 = vdupq_n_s64(4uLL);
    v34.i64[0] = 0x400000004;
    v34.i64[1] = 0x400000004;
    do
    {
      v35 = v31;
      v36 = v28;
      v37 = v29;
      v31 = vaddq_s32(vshlq_u32(v32, v30), v31);
      v28 = vaddq_s64(v28, v33);
      v29 = vaddq_s64(v29, v33);
      v30 = vaddq_s32(v30, v34);
      v27 -= 4;
    }

    while (v27);
    v38 = vdupq_lane_s64(v26, 0);
    v39 = vaddvq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v37, v38), vcgtq_u64(v36, v38)), v35, v31));
    if ((bswap32(*(&v53 + v18)) & v39) == 0 && (v39 & ~bswap32(*(&v52 + v18))) == 0)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 4);
  v6 = bswap32(v5);
  v7 = *(a2 + 4);
  v8 = bswap32(v7);
  if (v5 == v7)
  {
    v9 = 0;
    v10 = 32;
  }

  else
  {
    v22 = -3;
    v23 = v8;
    v24 = v6;
    do
    {
      v25 = v22;
      v24 >>= 1;
      v17 = v24 == v23 >> 1;
      v23 >>= 1;
      --v22;
    }

    while (!v17);
    v10 = v25 + 34;
    if (v25 == -2)
    {
      v9 = 0;
    }

    else
    {
      v40 = xmmword_1BAA4E5C0;
      v41 = xmmword_1BAA4E5D0;
      v42 = xmmword_1BAA4E5E0;
      v43 = -v22 & 0xFFFFFFFFFFFFFFFCLL;
      v44 = 0uLL;
      v45.i64[0] = 0x100000001;
      v45.i64[1] = 0x100000001;
      v46 = vdupq_n_s64(4uLL);
      v47.i64[0] = 0x400000004;
      v47.i64[1] = 0x400000004;
      do
      {
        v48 = v44;
        v49 = v40;
        v50 = v41;
        v44 = vaddq_s32(vshlq_u32(v45, v42), v44);
        v40 = vaddq_s64(v40, v46);
        v41 = vaddq_s64(v41, v46);
        v42 = vaddq_s32(v42, v47);
        v43 -= 4;
      }

      while (v43);
      v51 = vdupq_lane_s64(-3 - v25, 0);
      v9 = vaddvq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v50, v51), vcgtq_u64(v49, v51)), v48, v44));
    }
  }

  if (((v6 | ~v8) & v9) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

unint64_t NEGetPrefixForAddressRangeStrings(const __CFString *a1, const __CFString *a2)
{
  v3 = NECreateAddressStructFromString(a1, 0, 0);
  v4 = NECreateAddressStructFromString(a2, 0, 0);
  v5 = NEGetPrefixForAddressRange(v3, v4);
  if (v3)
  {
    free(v3);
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

unint64_t NEGetPrefixForIPv4NetmaskString(const __CFString *a1)
{
  v1 = NECreateAddressStructFromString(a1, 0, 0);
  v2 = NECreateAddressStructFromString(@"255.255.255.255", 0, 0);
  v3 = NEGetPrefixForAddressRange(v1, v2);
  if (v1)
  {
    free(v1);
  }

  if (v2)
  {
    free(v2);
  }

  return v3;
}

unint64_t NEGetPrefixForIPv6NetmaskString(const __CFString *a1)
{
  v1 = NECreateAddressStructFromString(a1, 0, 0);
  v2 = NECreateAddressStructFromString(@"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff", 0, 0);
  v3 = NEGetPrefixForAddressRange(v1, v2);
  if (v1)
  {
    free(v1);
  }

  if (v2)
  {
    free(v2);
  }

  return v3;
}

uint64_t NECompareAddresses(const __CFString *a1, const __CFString *a2)
{
  v2 = 4294967294;
  if (a1 && a2)
  {
    v13 = 0;
    v4 = NECreateAddressDataFromString(a1, 0, &v13 + 1);
    v5 = v4;
    if (v4 && HIDWORD(v13))
    {
      v6 = NECreateAddressDataFromString(a2, 0, &v13);
      if (v6)
      {
        v7 = v6;
        if (v13 == HIDWORD(v13))
        {
          BytePtr = CFDataGetBytePtr(v5);
          v9 = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v5);
          v11 = memcmp(BytePtr, v9, Length);
          if (v11 >= 0)
          {
            v2 = v11 != 0;
          }

          else
          {
            v2 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v5);
        v5 = v7;
      }

      goto LABEL_12;
    }

    if (v4)
    {
LABEL_12:
      CFRelease(v5);
    }
  }

  return v2;
}

BOOL NEAddressRangeIsContainedInAddressRange(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = NECompareAddresses(a1, a3);
  v7 = NECompareAddresses(a2, a4);
  return (v6 + 1) < 2 && v7 < 2;
}

void NEAddDataToDictionary(__CFDictionary *a1, const void *a2, UInt8 *bytes, int a4)
{
  if (a1)
  {
    if (a2)
    {
      if (bytes)
      {
        v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, a4);
        if (v6)
        {
          v7 = v6;
          CFDictionaryAddValue(a1, a2, v6);

          CFRelease(v7);
        }
      }
    }
  }
}

void NEAddSensitiveDataToDictionary(__CFDictionary *a1, const void *a2, const UInt8 *a3, int a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v8 = SecCFAllocatorZeroize();
        v9 = CFDataCreate(v8, a3, a4);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(a1, a2, v9);

          CFRelease(v10);
        }
      }
    }
  }
}

void NEAppendIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

const __CFNumber *NEGetValueFromIntArray(const __CFNumber *result, CFIndex a2)
{
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      result = CFArrayGetValueAtIndex(v3, a2);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return result;
}

CFDataRef NECreateDataFromString(const __CFString *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = malloc_type_malloc(Length + 1, 0xBA4F71FDuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFStringGetCString(a1, v6, v5 + 1, 0x600u))
  {
    if (a2)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = v5;
    }

    v9 = CFDataCreate(*MEMORY[0x1E695E480], v7, v8);
  }

  else
  {
    v9 = 0;
  }

  free(v7);
  return v9;
}

CFStringRef NECreateStringFromData(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    Length = CFDataGetLength(result);
    BytePtr = CFDataGetBytePtr(v1);
    bytes = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = CFDataCreate(*MEMORY[0x1E695E480], &bytes, 1);
    if (!v5 || (v6 = v5, v10.location = 0, v10.length = Length, location = CFDataFind(v1, v5, v10, 0).location, CFRelease(v6), location == -1))
    {
      v8 = CFDataGetLength(v1);
      return CFStringCreateWithBytes(v4, BytePtr, v8, 0x600u, 0);
    }

    else
    {
      return CFStringCreateWithCString(v4, BytePtr, 0x600u);
    }
  }

  return result;
}

void *NECreateCStringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v3 = Length;
  v4 = malloc_type_calloc(1uLL, Length + 1, 0xAE4AE253uLL);
  if (v4 && !CFStringGetCString(a1, v4, v3 + 1, 0x600u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

void NEAddValueToIntKeyedDictionary(__CFDictionary *a1, int a2, const void *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, v5, a3);
      CFRelease(v6);
    }
  }
}

void NERemoveValueFromIntKeyedDictionary(__CFDictionary *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionaryRemoveValue(a1, v3);
      CFRelease(v4);
    }
  }
}

NSObject *NERepeatingEventCreate(NSObject *a1, dispatch_time_t a2, uintptr_t a3, uint64_t a4, uint64_t a5, int a6, const void *a7, const void *a8)
{
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040AA036A7FuLL);
  *v16 = a4;
  v16[2] = a6;
  if (a7)
  {
    *(v16 + 2) = _Block_copy(a7);
  }

  if (a8)
  {
    *(v16 + 3) = _Block_copy(a8);
  }

  v16[3] = 0;
  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, a3, a1);
  v18 = v17;
  if (v17)
  {
    dispatch_set_context(v17, v16);
    dispatch_set_finalizer_f(v18, repeatingEventFinalizer);
    dispatch_source_set_timer(v18, a2, 1000000 * a4, 1000000 * a5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __NERepeatingEventCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_17;
    handler[4] = v18;
    dispatch_source_set_event_handler(v18, handler);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __NERepeatingEventCreate_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_18;
    v20[4] = v18;
    dispatch_source_set_cancel_handler(v18, v20);
    dispatch_resume(v18);
  }

  else
  {
    free(v16);
  }

  return v18;
}

void __NERepeatingEventCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void repeatingEventFinalizer(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      _Block_release(v3);
    }

    free(a1);
  }
}

uint64_t NERepeatingEventGetTimesFired(NSObject *a1)
{
  if (a1)
  {
    return *(dispatch_get_context(a1) + 3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

NSObject *NERepeatingEventGetIntervalInMilliseconds(NSObject *result)
{
  if (result)
  {
    return *dispatch_get_context(result);
  }

  return result;
}

void NERepeatingEventRelease(NSObject *a1)
{
  if (a1 && !dispatch_source_testcancel(a1))
  {

    dispatch_source_cancel(a1);
  }
}

NSObject *NECreateTimerSource(dispatch_queue_t queue, uint64_t a2, void *a3)
{
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  if (v5)
  {
    v6 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v5, a3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __NECreateTimerSource_block_invoke;
    handler[3] = &__block_descriptor_tmp_19;
    handler[4] = v5;
    dispatch_source_set_cancel_handler(v5, handler);
    dispatch_resume(v5);
  }

  return v5;
}

void __NECreateTimerSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

CFDataRef NECreateDataWithEncodedCString(_BYTE *a1, int a2)
{
  LOBYTE(v2) = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    if ((v2 & 0x80) != 0)
    {
      if (!__maskrune(v2, 0x4000uLL))
      {
        return 0;
      }
    }

    else
    {
      v8 = *(v7 + 4 * v2 + 60);
      if ((v8 & 0x10000) != 0)
      {
        ++v5;
      }

      else if ((v8 & 0x4000) == 0)
      {
        return 0;
      }
    }

    v2 = a1[v6++];
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  if (v5)
  {
    return 0;
  }

  v9 = malloc_type_malloc(v5 >> 1, 0x6E45737BuLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *a1;
  if (*a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = a1 + 1;
    v15 = v9;
    do
    {
      if ((v11 & 0x80) == 0 && (*(v7 + 4 * v11 + 60) & 0x10000) != 0)
      {
        if (v13)
        {
          __str[1] = v11;
          __str[2] = 0;
          v16 = strtol(__str, 0, a2);
          v13 = 0;
          *v15++ = v16;
          ++v12;
        }

        else
        {
          __str[0] = v11;
          v13 = 1;
        }
      }

      v17 = *v14++;
      v11 = v17;
    }

    while (v17);
  }

  else
  {
    v12 = 0;
  }

  v19 = CFDataCreate(*MEMORY[0x1E695E480], v10, v12);
  free(v10);
  return v19;
}

const char *NECertificateStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7F0ADC8[a1 - 1];
  }
}

uint64_t NECertificateDateIsValid(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  SecCertificateNotValidBefore();
  v2 = v1;
  if (v1 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = CFDateCreate(*MEMORY[0x1E695E480], v1);
  }

  SecCertificateNotValidAfter();
  v6 = v5;
  if (v5 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFDateCreate(*MEMORY[0x1E695E480], v5);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current == 0.0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = CFDateCreate(0, Current);
  v10 = v9;
  if (!v3 || !v9)
  {
LABEL_19:
    v4 = 1;
    if (!v3)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

  if (CFDateCompare(v9, v3, 0) == kCFCompareLessThan)
  {
    v13 = ne_log_obj();
    v4 = 2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "Current time before valid time", buf, 2u);
    }
  }

  else
  {
    if (!v7 || CFDateCompare(v10, v7, 0) != kCFCompareGreaterThan)
    {
      v4 = 1;
      goto LABEL_35;
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Current time after valid time", buf, 2u);
    }

    v4 = 3;
  }

  if (nelog_is_info_logging_enabled())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v14 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (v14)
    {
      v15 = v14;
      CFCalendarDecomposeAbsoluteTime(v14, v2, "yMdHm", &v20 + 4, &v20, &v19 + 4, &v19, &v18);
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v22 = HIDWORD(v20);
        v23 = 1024;
        v24 = v20;
        v25 = 1024;
        v26 = HIDWORD(v19);
        v27 = 1024;
        v28 = v19;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFCalendarDecomposeAbsoluteTime(v15, v6, "yMdHm", &v20 + 4, &v20, &v19 + 4, &v19, &v18);
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v22 = HIDWORD(v20);
        v23 = 1024;
        v24 = v20;
        v25 = 1024;
        v26 = HIDWORD(v19);
        v27 = 1024;
        v28 = v19;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFRelease(v15);
    }
  }

LABEL_35:
  CFRelease(v3);
  if (v7)
  {
LABEL_21:
    CFRelease(v7);
  }

LABEL_22:
  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

BOOL NEIsInterfaceWIFI(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = socket(2, 2, 0);
  if (v1 < 0)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LODWORD(v8[0]) = 136315138;
    *(v8 + 4) = "NEIsInterfaceWIFI";
    v4 = "%s: Failed to open socket";
    v5 = v8;
LABEL_10:
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
    goto LABEL_7;
  }

  memset(v8, 0, 44);
  __strlcpy_chk();
  if (ioctl(v1, 0xC02C6938uLL, v8) != -1)
  {
    close(v1);
    return (v8[1] & 0xE0) == 128;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v7 = "NEIsInterfaceWIFI";
    v4 = "%s: Failed to get media";
    v5 = buf;
    goto LABEL_10;
  }

LABEL_7:
  close(v1);
  return 0;
}

ifaddrs *NEGetInterfaceType(const char *a1, _BYTE *a2, BOOL *a3)
{
  v10 = 0;
  *a2 = 0;
  *a3 = 0;
  v6 = 0;
  if (!getifaddrs(&v10))
  {
    v7 = v10;
    if (v10)
    {
      v6 = v10;
      while (1)
      {
        ifa_name = v6->ifa_name;
        if (ifa_name)
        {
          if (!strcmp(ifa_name, a1))
          {
            break;
          }
        }

        v6 = v6->ifa_next;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      v6 = v6->ifa_addr->sa_data[2];
      if (v6 == 255)
      {
        *a2 = 0;
      }

      else if (v6 == 6)
      {
        *a2 = 1;
        *a3 = NEIsInterfaceWIFI(a1);
        v7 = v10;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_13:
    MEMORY[0x1BFAFA830](v7);
  }

  return v6;
}

void *NECopyInterfaceAddress(const char *a1, int a2)
{
  v11 = 0;
  p_ifa_next = 0;
  if (getifaddrs(&v11))
  {
    return p_ifa_next;
  }

  v5 = v11;
  if (!v11)
  {
    p_ifa_next = 0;
    goto LABEL_15;
  }

  p_ifa_next = &v11->ifa_next;
  while (1)
  {
    v6 = p_ifa_next[1];
    if (!v6)
    {
      goto LABEL_9;
    }

    if (strcmp(v6, a1))
    {
      goto LABEL_9;
    }

    v7 = p_ifa_next[3];
    if (v7[1] != a2)
    {
      goto LABEL_9;
    }

    if (a2 == 2)
    {
      break;
    }

    if (a2 == 30)
    {
      v8 = 30;
      v9 = 8;
      goto LABEL_14;
    }

LABEL_9:
    p_ifa_next = *p_ifa_next;
    if (!p_ifa_next)
    {
      goto LABEL_15;
    }
  }

  v8 = 2;
  v9 = 4;
LABEL_14:
  p_ifa_next = NECreateAddressStringFromBuffer(&v7[v9], *v7, v8);
  v5 = v11;
LABEL_15:
  MEMORY[0x1BFAFA830](v5);
  return p_ifa_next;
}

uint64_t NEGetInterfaceForAddress(unsigned __int8 *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2 == 30)
  {
    if (*a1 <= 0x1Bu)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 2 && *a1 < 0x10u)
  {
LABEL_4:
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Address passed to NEGetInterfaceForAddress is too short", buf, 2u);
    }

    return 0;
  }

  v17 = 0;
  if (getifaddrs(&v17) < 0)
  {
    v11 = *__error();
    if (strerror_r(v11, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v18 = 67109378;
      *v19 = v11;
      *&v19[4] = 2080;
      *&v19[6] = buf;
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "getifaddrs failed: [%d] %s", v18, 0x12u);
    }

    return 0;
  }

  v4 = v17;
  if (!v17)
  {
    return 0;
  }

  v5 = a1[1];
  while (1)
  {
    ifa_addr = v4->ifa_addr;
    if (v5 != ifa_addr->sa_family)
    {
      goto LABEL_19;
    }

    if (v5 == 30)
    {
      break;
    }

    if (v5 == 2 && *(a1 + 1) == *&ifa_addr->sa_data[2])
    {
      goto LABEL_29;
    }

LABEL_19:
    v4 = v4->ifa_next;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v8 = *&ifa_addr->sa_data[6];
  v7 = *&ifa_addr[1].sa_len;
  if (*(a1 + 1) != v8 || *(a1 + 2) != v7)
  {
    goto LABEL_19;
  }

LABEL_29:
  v10 = if_nametoindex(v4->ifa_name);
  if (!v10)
  {
    v14 = *__error();
    if (strerror_r(v14, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      ifa_name = v4->ifa_name;
      *v18 = 136315650;
      *v19 = ifa_name;
      *&v19[8] = 1024;
      *&v19[10] = v14;
      v20 = 2080;
      v21 = buf;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "Failed to get an interface index for interface %s: [%d] %s", v18, 0x1Cu);
    }

LABEL_20:
    v10 = 0;
  }

  if (v17)
  {
    MEMORY[0x1BFAFA830]();
  }

  return v10;
}

uint64_t NEIsValidInterface(const char *a1)
{
  v7 = 0;
  if (getifaddrs(&v7))
  {
    return 0;
  }

  v3 = v7;
  if (v7)
  {
    v4 = v7;
    while (1)
    {
      ifa_name = v4->ifa_name;
      if (ifa_name)
      {
        if (!strcmp(ifa_name, a1))
        {
          break;
        }
      }

      v4 = v4->ifa_next;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v2 = 1;
  }

  else
  {
LABEL_8:
    v2 = 0;
  }

  MEMORY[0x1BFAFA830](v3);
  return v2;
}

BOOL NEIsWildcardAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 20;
      return *&a1[v2] == 0;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 4;
    return *&a1[v2] == 0;
  }

  return 0;
}

BOOL NEIsLoopbackAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 0x1000000;
      v3 = 20;
      return *&a1[v3] == v2;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 16777343;
    v3 = 4;
    return *&a1[v3] == v2;
  }

  return 0;
}

uint64_t NEGetEntitlement(void *a1)
{
  if (a1)
  {
    if (MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(a1);
      if (count)
      {
        v5 = count;
        v2 = 0;
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(a1, v6);
          if (string)
          {
            v8 = string;
            v9 = strlen(string);
            if (strncmp(v8, "packet-tunnel-provider", v9))
            {
              if (!strncmp(v8, "app-proxy-provider", v9))
              {
                goto LABEL_24;
              }

              if (!strncmp(v8, "content-filter-provider", v9))
              {
                goto LABEL_25;
              }

              if (!strncmp(v8, "dns-proxy", v9))
              {
                goto LABEL_26;
              }

              if (!strncmp(v8, "dns-settings", v9))
              {
                v2 = v2 | 0x40;
                goto LABEL_29;
              }

              if (!strncmp(v8, "relay", v9))
              {
                v2 = v2 | 0x80;
                goto LABEL_29;
              }

              if (strncmp(v8, "packet-tunnel-provider-systemextension", v9))
              {
                if (strncmp(v8, "app-proxy-provider-systemextension", v9))
                {
                  if (strncmp(v8, "content-filter-provider-systemextension", v9))
                  {
                    if (strncmp(v8, "dns-proxy-systemextension", v9))
                    {
                      if (!strncmp(v8, "app-push-provider", v9))
                      {
                        v2 = v2 | 0x20;
                      }

                      else if (!strncmp(v8, "hotspot-provider", v9))
                      {
                        v2 = v2 | 0x100;
                      }

                      else if (!strncmp(v8, "url-filter-provider", v9))
                      {
                        v2 = v2 | 0x200;
                      }

                      else
                      {
                        v2 = v2;
                      }

                      goto LABEL_29;
                    }

LABEL_26:
                    v2 = v2 | 0x10;
                    goto LABEL_29;
                  }

LABEL_25:
                  v2 = v2 | 4;
                  goto LABEL_29;
                }

LABEL_24:
                v2 = v2 | 2;
                goto LABEL_29;
              }
            }

            v2 = v2 | 1;
          }

LABEL_29:
          if (v5 == ++v6)
          {
            return v2;
          }
        }
      }
    }
  }

  return 0;
}

CFStringRef NECopySynthesizedIPv6Address(const __CFString *a1, int a2)
{
  v13 = 0;
  v4 = 0;
  if (NEGetAddressFamilyFromString(a1) != 30)
  {
    v12 = a2;
    v5 = nw_nat64_copy_prefixes();
    if (v5 < 1)
    {
      v4 = 0;
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = NECreateAddressStructFromString(a1, 0, 0);
      if (v7)
      {
        v8 = 0;
        v9 = 16 * v6;
        while (1)
        {
          *&v11.isa = xmmword_1BAA4FA8C;
          *(&v11.info + 4) = *(&xmmword_1BAA4FA8C + 12);
          if (nw_nat64_synthesize_v6())
          {
            break;
          }

          v8 += 16;
          if (v9 == v8)
          {
            goto LABEL_7;
          }
        }

        v4 = NECreateAddressString(&v11);
      }

      else
      {
LABEL_7:
        v4 = 0;
      }
    }

    if (v13)
    {
      free(v13);
      v13 = 0;
    }

    if (v7)
    {
      free(v7);
    }
  }

  return v4;
}

uint64_t isa_nsstring(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsarray(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsset(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsdictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsdata(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsnumber(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsnull(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsuuid(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_nsurl(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (v1)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isa_neclass(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v2 hasPrefix:@"NE"];

  return v3;
}

id NECopyUserUUIDFromEUID()
{
  v0 = geteuid();

  return NECopyUserUUIDSimple(v0);
}

id NECopyUserUUIDSimple(uid_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  mbr_uid_to_uuid(a1, uu);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];

  return v1;
}

id NECopyUserUUIDFromXPCEUID(_xpc_connection_s *a1)
{
  euid = xpc_connection_get_euid(a1);

  return NECopyUserUUIDSimple(euid);
}

uint64_t NEGetConsoleUserUID()
{
  v0 = getpwnam("mobile");
  if (v0)
  {
    return v0->pw_uid;
  }

  else
  {
    return 501;
  }
}

id NECopyConsoleUserUUID()
{
  v0 = getpwnam("mobile");
  if (v0)
  {
    pw_uid = v0->pw_uid;
  }

  else
  {
    pw_uid = 501;
  }

  return NECopyUserUUIDSimple(pw_uid);
}

BOOL NEUserUUIDIsSynthesized(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 UUIDString];
  v2 = [v1 compare:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA" options:1 range:{0, objc_msgSend(@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA", "length")}] == 0;

  return v2;
}

uint64_t NECheckConfigurationUserUUID(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = NECopyConsoleUserUUID();
  v3 = NEGetRootUUID();
  if (v1)
  {
    v4 = 0;
    if ([v1 count] && v2 && v3)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v1;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            if (([v10 isEqual:{v2, v12}] & 1) == 0 && (objc_msgSend(v10, "isEqual:", v3) & 1) == 0)
            {
              *uu = 0;
              v17 = 0;
              [v10 getUUIDBytes:uu];
              if (!uuid_is_null(uu))
              {
                continue;
              }
            }

            v4 = 1;
            goto LABEL_19;
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
          v4 = 0;
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v4 = 0;
      }

LABEL_19:
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NEGetRootUUID()
{
  if (NEGetRootUUID_onceToken != -1)
  {
    dispatch_once(&NEGetRootUUID_onceToken, &__block_literal_global_15_25761);
  }

  v1 = NEGetRootUUID_rootUUID;

  return v1;
}

uint64_t __NEGetRootUUID_block_invoke()
{
  v0 = NECopyUserUUIDSimple(0);
  v1 = NEGetRootUUID_rootUUID;
  NEGetRootUUID_rootUUID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id NEGetNullUUID()
{
  if (NEGetNullUUID_onceToken != -1)
  {
    dispatch_once(&NEGetNullUUID_onceToken, &__block_literal_global_25765);
  }

  v1 = NEGetNullUUID_nullUUID;

  return v1;
}

void __NEGetNullUUID_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  v1 = NEGetNullUUID_nullUUID;
  NEGetNullUUID_nullUUID = v0;
}

id NEGetBundleIdentifierFromAppID(void *a1)
{
  v1 = a1;
  if ([v1 length] < 0xC)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 substringWithRange:{11, objc_msgSend(v1, "length") - 11}];
  }

  return v2;
}

void neZeroOutNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v3 = v1;
    v2 = [v1 length];
    v1 = v3;
    if (v2)
    {
      memset_s([v3 bytes], v2, 0, v2);
      v1 = v3;
    }
  }
}

id trimURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 port];

    if (v3)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [v2 port];
      v6 = [v4 stringWithFormat:@":%@", v5];
    }

    else
    {
      v6 = &stru_1F3880810;
    }

    v8 = [v2 host];
    v9 = [MEMORY[0x1E6977E28] endpointWithHostname:v8 port:@"0"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 addressFamily] == 30)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%@]", v8];

      v8 = v10;
    }

    v11 = MEMORY[0x1E695DFF8];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v2 scheme];
    v14 = [v2 path];
    if (v14)
    {
      v15 = [v2 path];
    }

    else
    {
      v15 = &stru_1F3880810;
    }

    v16 = [v12 stringWithFormat:@"%@://%@%@%@", v13, v8, v6, v15];
    v7 = [v11 URLWithString:v16];

    if (v14)
    {
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id createEthernetAddressFromString(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@":"];
  if ([v2 count] == 6)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          if (![v9 length])
          {
            v12 = ne_log_obj();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
LABEL_18:

              goto LABEL_19;
            }

            *buf = 138412290;
            v22 = v1;
            v13 = "Ethernet address string %@ is missing a byte";
LABEL_24:
            _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
            goto LABEL_18;
          }

          __endptr = 0;
          v10 = strtol([v9 UTF8String], &__endptr, 16);
          if (*__endptr || v10 >= 0x100)
          {
            v12 = ne_log_obj();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 138412290;
            v22 = v1;
            v13 = "Ethernet address string %@ has an invalid byte";
            goto LABEL_24;
          }

          buf[0] = v10;
          [v3 appendBytes:buf length:1];
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v3];
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v1;
      v23 = 1024;
      v24 = 6;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Ethernet address string %@ does not have %d bytes", buf, 0x12u);
    }

LABEL_19:
    v11 = 0;
  }

  return v11;
}

id NECopyETLDPlusOne(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"."];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 componentsSeparatedByString:@"."];
  if ([v5 count] >= 2)
  {
    v7 = [v5 subarrayWithRange:{objc_msgSend(v5, "count") - 2, 2}];
    v6 = [v7 componentsJoinedByString:@"."];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id trimStars(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) stringByTrimmingCharactersInSet:{v2, v11}];
        if (!isa_nsstring(v9))
        {

          goto LABEL_14;
        }

        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v6 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_14:

  return v6;
}

void separateDomainsFromFQDNs(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (isa_nsstring(v14))
        {
          if ([v14 hasPrefix:{@"*.", v16}])
          {
            v15 = [v14 stringByTrimmingCharactersInSet:v8];
            [v6 addObject:v15];
          }

          else
          {
            [v7 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

uint64_t NEPIDByName(const char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *v19 = 0x600000001;
  v14 = 0;
  v13 = 4;
  if (sysctl(v19, 2u, &v14, &v13, 0, 0) < 0)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      buffer = 136315394;
      v16 = "NEKernMaxProc";
      v17 = 2080;
      v18 = v12;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: Failed to get max proc count (%s)", &buffer, 0x16u);
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  v2 = 4 * v14;
  v3 = malloc_type_malloc(4 * v14, 0xA806B919uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = proc_listallpids(v3, v2);
  if (v5 < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v5;
    while (!proc_name(v4[v6], &buffer, 0x64u) || strcmp(&buffer, a1))
    {
      if (v7 == ++v6)
      {
        goto LABEL_9;
      }
    }

    v8 = v4[v6];
  }

  free(v4);
  return v8;
}

CFStringRef NECopySigningIdentifierForXPCMessage(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1 || MEMORY[0x1BFAFC5E0]() != MEMORY[0x1E69E9E80])
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "NECopySigningIdentifierForXPCMessage";
    v10 = "XPC object passed to %s is NULL or is not a dictionary";
    p_cf = buf;
    v12 = v2;
    v13 = 12;
LABEL_15:
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v10, p_cf, v13);
    return 0;
  }

  *buf = 0u;
  v20 = 0u;
  xpc_dictionary_get_audit_token();
  v5 = *MEMORY[0x1E695E480];
  memset(&cf, 0, sizeof(cf));
  v6 = SecTaskCreateWithAuditToken(v5, &cf);
  if (!v6)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(cf.val[0]) = 0;
    v10 = "Failed to create a task from audit token";
    p_cf = &cf;
    v12 = v9;
    v13 = 2;
    goto LABEL_15;
  }

  v7 = v6;
  *cf.val = 0;
  v3 = SecTaskCopySigningIdentifier(v6, &cf);
  if (*cf.val)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      remote_connection = xpc_dictionary_get_remote_connection(a1);
      pid = xpc_connection_get_pid(remote_connection);
      *v17 = 67109120;
      v18 = pid;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to get the signing identifier of process %d", v17, 8u);
    }

    CFRelease(*cf.val);
  }

  CFRelease(v7);
  return v3;
}

BOOL NEAuditTokenForPID(int pid, integer_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  target_task = 0;
  v4 = task_for_pid(*MEMORY[0x1E69E9A60], pid, &target_task);
  if (v4)
  {
    v5 = v4;
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v8 = mach_error_string(v5);
    *buf = 67109634;
    v16 = pid;
    v17 = 1024;
    v18 = v5;
    v19 = 2080;
    v20 = v8;
    v9 = "task_for_pid(mach_task_self(), %d, &task) => %d (%s)\n";
LABEL_7:
    _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, v9, buf, 0x18u);
    return 0;
  }

  v10 = task_info(target_task, 0xFu, a2, &task_info_outCnt);
  if (v10)
  {
    v11 = v10;
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v12 = mach_error_string(v11);
    *buf = 67109634;
    v16 = pid;
    v17 = 1024;
    v18 = v11;
    v19 = 2080;
    v20 = v12;
    v9 = "task_info(mach_task_self(), %d, TASK_AUDIT_TOKEN) => %d (%s)\n";
    goto LABEL_7;
  }

  return 1;
}

__CFDictionary *NEVirtualInterfaceCopyIPStateDictionary(uint64_t a1, int a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (a1 + 265), 0x600u);
    if (a2 != 30)
    {
      if (a2 == 2)
      {
        if (*(a1 + 312))
        {
          goto LABEL_8;
        }

        v8 = *(a1 + 320);
        TypeID = CFArrayGetTypeID();
        if (!v8)
        {
          goto LABEL_26;
        }

        if (CFGetTypeID(v8) == TypeID && CFArrayGetCount(*(a1 + 320)) >= 1)
        {
LABEL_8:
          Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v8 = Mutable;
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E69823B8], v7);
            v11 = *(a1 + 320);
            v12 = CFArrayGetTypeID();
            v13 = MEMORY[0x1E69824C0];
            if (v11 && CFGetTypeID(v11) == v12 && CFArrayGetCount(*(a1 + 320)))
            {
              v14 = *MEMORY[0x1E6982478];
              v15 = *(a1 + 320);
            }

            else
            {
              v26 = CFArrayCreateMutable(v6, 1, MEMORY[0x1E695E9C0]);
              if (v26)
              {
                v27 = v26;
                CFArrayAppendValue(v26, @"127.0.0.1");
                CFDictionarySetValue(v8, *MEMORY[0x1E6982478], v27);
                CFRelease(v27);
              }

              CFDictionarySetValue(v8, @"IsNULL", *MEMORY[0x1E695E4D0]);
              v14 = *v13;
              v15 = @"127.0.0.1";
            }

            CFDictionarySetValue(v8, v14, v15);
            v28 = *(a1 + 344);
            v29 = CFArrayGetTypeID();
            if (v28 && CFGetTypeID(v28) == v29 && CFArrayGetCount(*(a1 + 344)) >= 1)
            {
              CFDictionarySetValue(v8, *MEMORY[0x1E6982470], *(a1 + 344));
            }

            if (a3)
            {
              v30 = *(a1 + 472);
              if (v30)
              {
                NEVirtualInterfaceAddIPv4Route(a1, v30, @"255.255.255.255", 0, 1);
              }
            }

            v31 = *(a1 + 352);
            v32 = CFArrayGetTypeID();
            if (v31 && CFGetTypeID(v31) == v32 && CFArrayGetCount(*(a1 + 352)) >= 1)
            {
              CFDictionarySetValue(v8, *MEMORY[0x1E6982490], *(a1 + 352));
            }

            v33 = *(a1 + 456);
            v34 = CFStringGetTypeID();
            if (v33 && CFGetTypeID(v33) == v34)
            {
              v35 = *v13;
              ValueAtIndex = *(a1 + 456);
              v37 = v8;
            }

            else
            {
              v50 = *(a1 + 320);
              v51 = CFArrayGetTypeID();
              if (!v50 || CFGetTypeID(v50) != v51 || CFArrayGetCount(*(a1 + 320)) < 1)
              {
LABEL_69:
                v53 = *(a1 + 472);
                v54 = CFStringGetTypeID();
                if (v53 && CFGetTypeID(v53) == v54)
                {
                  CFDictionarySetValue(v8, @"ServerAddress", *(a1 + 472));
                }

                goto LABEL_26;
              }

              v52 = *v13;
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 320), 0);
              v37 = v8;
              v35 = v52;
            }

            CFDictionarySetValue(v37, v35, ValueAtIndex);
            goto LABEL_69;
          }

LABEL_26:
          if (v7)
          {
            CFRelease(v7);
          }

          return v8;
        }
      }

LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    if ((*(a1 + 312) & 1) == 0)
    {
      v8 = *(a1 + 328);
      v16 = CFArrayGetTypeID();
      if (!v8)
      {
        goto LABEL_26;
      }

      if (CFGetTypeID(v8) != v16 || CFArrayGetCount(*(a1 + 328)) < 1)
      {
        goto LABEL_25;
      }
    }

    *buf = 128;
    v17 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = v17;
    if (!v17)
    {
      goto LABEL_26;
    }

    CFDictionarySetValue(v17, *MEMORY[0x1E69823B8], v7);
    v18 = *(a1 + 328);
    v19 = CFArrayGetTypeID();
    v20 = MEMORY[0x1E6982528];
    if (v18 && CFGetTypeID(v18) == v19 && CFArrayGetCount(*(a1 + 328)))
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69824D8], *(a1 + 328));
      v21 = *(a1 + 336);
      v22 = CFArrayGetTypeID();
      if (!v21)
      {
LABEL_50:
        v40 = *(a1 + 360);
        v41 = CFArrayGetTypeID();
        if (v40 && CFGetTypeID(v40) == v41 && CFArrayGetCount(*(a1 + 360)) >= 1)
        {
          CFDictionarySetValue(v8, *MEMORY[0x1E69824D0], *(a1 + 360));
        }

        if (a3 && *(a1 + 472))
        {
          v42 = CFNumberCreate(v6, kCFNumberIntType, buf);
          NEVirtualInterfaceAddIPv6Route(a1, *(a1 + 472), v42, 0, 1);
          CFRelease(v42);
        }

        v43 = *(a1 + 368);
        v44 = CFArrayGetTypeID();
        if (v43 && CFGetTypeID(v43) == v44 && CFArrayGetCount(*(a1 + 368)) >= 1)
        {
          CFDictionarySetValue(v8, *MEMORY[0x1E69824E8], *(a1 + 368));
        }

        v45 = *(a1 + 464);
        v46 = CFStringGetTypeID();
        if (v45 && CFGetTypeID(v45) == v46)
        {
          v47 = *v20;
          v48 = *(a1 + 464);
          v49 = v8;
        }

        else
        {
          v55 = CFStringGetTypeID();
          if (!v21 || CFGetTypeID(v21) != v55)
          {
            goto LABEL_76;
          }

          v47 = *v20;
          v49 = v8;
          v48 = v21;
        }

        CFDictionarySetValue(v49, v47, v48);
LABEL_76:
        v56 = *(a1 + 472);
        v57 = CFStringGetTypeID();
        if (v56 && CFGetTypeID(v56) == v57)
        {
          CFDictionarySetValue(v8, @"ServerAddress", *(a1 + 472));
        }

        if (v21)
        {
          CFRelease(v21);
        }

        goto LABEL_26;
      }

      if (CFGetTypeID(v21) == v22 && CFArrayGetCount(*(a1 + 336)) >= 1)
      {
        CFDictionarySetValue(v8, *MEMORY[0x1E6982500], *(a1 + 336));
        valuePtr = 0;
        v23 = CFArrayGetValueAtIndex(*(a1 + 336), 0);
        CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
        v24 = CFArrayGetValueAtIndex(*(a1 + 328), 0);
        v21 = NECreateIPv6SubnetAddressWithPrefix(v24, valuePtr);
        goto LABEL_50;
      }
    }

    else
    {
      v38 = CFArrayCreateMutable(v6, 1, MEMORY[0x1E695E9C0]);
      if (v38)
      {
        v39 = v38;
        CFArrayAppendValue(v38, @"::1");
        CFDictionarySetValue(v8, *MEMORY[0x1E69824D8], v39);
        CFRelease(v39);
      }

      CFDictionarySetValue(v8, @"IsNULL", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v8, *v20, @"::1");
    }

    v21 = 0;
    goto LABEL_50;
  }

  v58 = ne_log_obj();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v61 = "NEVirtualInterfaceCopyIPStateDictionary";
    _os_log_fault_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_FAULT, "%s called with null interface", buf, 0xCu);
  }

  return 0;
}

BOOL NEVirtualInterfaceAddIPv4Route(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0;
  if (!a1)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "interface is NULL";
    goto LABEL_16;
  }

  if (*(a1 + 264))
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "interface created from socket";
LABEL_16:
    _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, v8, buf, 2u);
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "address is not a CFString";
    goto LABEL_16;
  }

  v14 = NECreateAddressDataFromString(a2, 0, &v32);
  if (!v14)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "NECreateAddressDataFromString failed";
    goto LABEL_16;
  }

  v15 = v14;
  if (v32 != 2)
  {
    CFRelease(v14);
    return 0;
  }

  v16 = *CFDataGetBytePtr(v14);
  CFRelease(v15);
  if (v16 == 127)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "address is loopback";
    goto LABEL_16;
  }

  v17 = 352;
  if (!a5)
  {
    v17 = 344;
  }

  v18 = *(a1 + v17);
  v19 = CFArrayGetTypeID();
  if (!v18)
  {
    return 0;
  }

  if (CFGetTypeID(v18) != v19)
  {
    return 0;
  }

  v20 = CFStringGetTypeID();
  if (a3)
  {
    if (CFGetTypeID(a3) == v20)
    {
      v21 = v32;
      if (v21 != NEGetAddressFamilyFromString(a3))
      {
        return 0;
      }
    }
  }

  v22 = CFStringGetTypeID();
  if (a4)
  {
    if (CFGetTypeID(a4) == v22)
    {
      v23 = v32;
      if (v23 != NEGetAddressFamilyFromString(a4))
      {
        return 0;
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = CFDictionaryGetTypeID();
  if (!Mutable || CFGetTypeID(Mutable) != v25)
  {
    return 0;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E69824A0], a2);
  v26 = CFStringGetTypeID();
  if (a3 && CFGetTypeID(a3) == v26)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69824B8], a3);
  }

  v27 = CFStringGetTypeID();
  if (a4 && CFGetTypeID(a4) == v27)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69824A8], a4);
  }

  if (a5)
  {
    v28 = *(a1 + 480);
    v29 = CFStringGetTypeID();
    if (v28)
    {
      if (CFGetTypeID(v28) == v29)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69824B0], *(a1 + 480));
      }
    }
  }

  if (nelog_is_extra_vpn_logging_enabled())
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v34 = a1 + 265;
      v31 = "";
      v35 = 2080;
      if (a5)
      {
        v31 = "excluded ";
      }

      v36 = v31;
      v37 = 2112;
      v38 = a2;
      v39 = 2112;
      v40 = a3;
      v41 = 2112;
      v42 = a4;
      _os_log_debug_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_DEBUG, "%s: added %sIPv4 route to %@ netmask %@ gateway %@", buf, 0x34u);
    }
  }

  CFArrayAppendValue(v18, Mutable);
  CFRelease(Mutable);
  return 1;
}

BOOL NEVirtualInterfaceAddIPv6Route(uint64_t a1, const __CFString *a2, const void *a3, const __CFString *a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (!a1)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "interface is NULL";
    goto LABEL_16;
  }

  if (*(a1 + 264))
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "interface created from socket";
    goto LABEL_16;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "address is not a CFString";
    goto LABEL_16;
  }

  v14 = NECreateAddressDataFromString(a2, 0, &v29);
  if (!v14)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "NECreateAddressDataFromString failed";
    goto LABEL_16;
  }

  v15 = v14;
  if (v29 != 30)
  {
    CFRelease(v14);
    return 0;
  }

  v28 = 0uLL;
  if (CFDataGetLength(v14) <= 15)
  {
    CFRelease(v15);
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "NECreateAddressDataFromString result too short";
    goto LABEL_16;
  }

  v41.location = 0;
  v41.length = 16;
  CFDataGetBytes(v15, v41, &v28);
  CFRelease(v15);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v28, xmmword_1BAA4E590)))))
  {
    v16 = 368;
    if (!a5)
    {
      v16 = 360;
    }

    v17 = *(a1 + v16);
    v18 = CFArrayGetTypeID();
    if (!v17)
    {
      return 0;
    }

    if (CFGetTypeID(v17) != v18)
    {
      return 0;
    }

    v19 = CFStringGetTypeID();
    if (a4)
    {
      if (CFGetTypeID(a4) == v19)
      {
        v20 = v29;
        if (v20 != NEGetAddressFamilyFromString(a4))
        {
          return 0;
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = CFDictionaryGetTypeID();
    if (!Mutable || CFGetTypeID(Mutable) != v22)
    {
      return 0;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E6982508], a2);
    if (isA_CFNumber(a3))
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6982520], a3);
    }

    v23 = CFStringGetTypeID();
    if (a4 && CFGetTypeID(a4) == v23)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6982510], a4);
    }

    if (a5)
    {
      v24 = *(a1 + 480);
      v25 = CFStringGetTypeID();
      if (v24)
      {
        if (CFGetTypeID(v24) == v25)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6982518], *(a1 + 480));
        }
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v31 = a1 + 265;
        v27 = "";
        v32 = 2080;
        if (a5)
        {
          v27 = "excluded ";
        }

        v33 = v27;
        v34 = 2112;
        v35 = a2;
        v36 = 2112;
        v37 = a3;
        v38 = 2112;
        v39 = a4;
        _os_log_debug_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEBUG, "%s: added %sIPv6 route to %@ plen %@ gateway %@", buf, 0x34u);
      }
    }

    CFArrayAppendValue(v17, Mutable);
    CFRelease(Mutable);
    return 1;
  }

  else
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v8 = "address is loopback";
LABEL_16:
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, v8, buf, 2u);
      return 0;
    }
  }

  return result;
}

const void *isA_CFNumber(const void *a1)
{
  TypeID = CFNumberGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

CFStringRef NEVirtualInterfaceCopyName(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], &result[8].info + 1, 0x600u);
  }

  return result;
}

__CFDictionary *NEVirtualInterfaceCopyRouteCacheFromRoutes(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v6 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  v9 = CFArrayCreateMutable(v6, 0, v7);
  if (v5 >= 1)
  {
    v10 = 0;
    v37 = *MEMORY[0x1E6982520];
    key = *MEMORY[0x1E6982508];
    v35 = *MEMORY[0x1E69824B8];
    v36 = *MEMORY[0x1E69824A0];
    v33 = v5;
    v34 = v3;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v10);
      if (!ValueAtIndex)
      {
        goto LABEL_35;
      }

      v12 = ValueAtIndex;
      if (a2)
      {
        break;
      }

      Value = CFDictionaryGetValue(ValueAtIndex, v36);
      v20 = CFDictionaryGetValue(v12, v35);
      *bytes = 2;
      v42 = 2;
      v21 = NECreateAddressDataFromString(Value, 0, bytes);
      v22 = NECreateAddressDataFromString(v20, 0, &v42);
      v23 = v22;
      if (*bytes == 2 && v21)
      {
        CFArrayAppendValue(Mutable, v21);
        if (v42 == 2 && v23)
        {
          CFArrayAppendValue(v9, v23);
        }

        else
        {
          *v41 = -1;
          v29 = CFDataCreate(v6, v41, 4);
          CFArrayAppendValue(v9, v29);
          if (v29)
          {
            CFRelease(v29);
          }
        }
      }

      else if (!v21)
      {
        if (!v22)
        {
          goto LABEL_35;
        }

LABEL_33:
        v24 = v23;
LABEL_34:
        CFRelease(v24);
        goto LABEL_35;
      }

      CFRelease(v21);
      if (v23)
      {
        goto LABEL_33;
      }

LABEL_35:
      if (v5 == ++v10)
      {
        goto LABEL_36;
      }
    }

    v13 = CFDictionaryGetValue(ValueAtIndex, key);
    v14 = NEGetIntFromDictionary(v12, v37, 0);
    v15 = NECreateIPv6AddressMaskStringFromPrefix(v14);
    *v41 = 30;
    v42 = 30;
    v16 = NECreateAddressDataFromString(v13, 0, &v42);
    v17 = NECreateAddressDataFromString(v15, 0, v41);
    v18 = v17;
    if (v42 == 30 && v16)
    {
      CFArrayAppendValue(Mutable, v16);
      if (*v41 == 30 && v18)
      {
        CFArrayAppendValue(v9, v18);
      }

      else
      {
        v25 = a2;
        v26 = Mutable;
        *bytes = -1;
        v40 = -1;
        v27 = v6;
        v28 = CFDataCreate(v6, bytes, 16);
        CFArrayAppendValue(v9, v28);
        if (v28)
        {
          CFRelease(v28);
        }

        v6 = v27;
        Mutable = v26;
        a2 = v25;
        v5 = v33;
        v3 = v34;
      }
    }

    else if (!v16)
    {
      if (!v17)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    CFRelease(v16);
    if (!v18)
    {
LABEL_20:
      if (v15)
      {
        v24 = v15;
        goto LABEL_34;
      }

      goto LABEL_35;
    }

LABEL_19:
    CFRelease(v18);
    goto LABEL_20;
  }

LABEL_36:
  v30 = theDict;
  CFDictionarySetValue(theDict, @"subnet-addresses", Mutable);
  CFDictionarySetValue(theDict, @"subnet-masks", v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v30;
}

__CFDictionary *NEVirtualInterfaceUpdateAdHocServiceReturnChanges(uint64_t a1, uint64_t *a2, int a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *MEMORY[0x1E695E480];
    v88 = a1 + 265;
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (a1 + 265), 0x600u);
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    v9 = *MEMORY[0x1E69822F0];
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, *MEMORY[0x1E69822F0], *(a1 + 488), *MEMORY[0x1E6982338]);
    v11 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982340]);
    key = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982330]);
    value = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982360]);
    v89 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982368]);
    v90 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), 0);
    if (a2)
    {
      *a2 = 0;
    }

    v12 = 0;
    if (!v6 || !Mutable || !v8 || !NetworkServiceEntity || !v11)
    {
LABEL_140:
      if (!v6)
      {
LABEL_142:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (NetworkServiceEntity)
        {
          CFRelease(NetworkServiceEntity);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (key)
        {
          CFRelease(key);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v90)
        {
          CFRelease(v90);
        }

        if (v89)
        {
          CFRelease(v89);
        }

        return v12;
      }

LABEL_141:
      CFRelease(v6);
      goto LABEL_142;
    }

    if (*(a1 + 416))
    {
      v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = v13;
      if (v13)
      {
        v14 = *(a1 + 416);
        if (v14)
        {
          CFDictionarySetValue(v13, *MEMORY[0x1E69823D8], v14);
        }

        v15 = *(a1 + 432);
        if (v15)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823C8], v15);
        }

        v16 = *(a1 + 424);
        if (v16)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823D0], v16);
        }

        v17 = *(a1 + 392);
        if (v17)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823F0], v17);
        }

        v18 = *(a1 + 400);
        if (v18)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E6982400], v18);
        }

        if (*(a1 + 408))
        {
          v19 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 408));
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(v12, *MEMORY[0x1E69823F8], v19);
            CFRelease(v20);
          }
        }

        v21 = *(a1 + 444);
        if (v21 >= 1)
        {
          NEAddIntToDictionary(v12, *MEMORY[0x1E69823E0], v21);
        }

        v22 = *(a1 + 440);
        if (v22)
        {
          NEAddIntToDictionary(v12, *MEMORY[0x1E69823E8], v22);
        }

        CFDictionarySetValue(v12, *MEMORY[0x1E69823B8], v6);
        if ((*(a1 + 312) & 0x81) != 0)
        {
          goto LABEL_29;
        }

        v39 = *(a1 + 416);
        if (!v39 || CFArrayGetCount(v39) < 1)
        {
          goto LABEL_30;
        }

        v40 = *(a1 + 344);
        if (!v40 || CFArrayGetCount(v40) <= 0)
        {
          v41 = *(a1 + 360);
          if (!v41 || CFArrayGetCount(v41) < 1)
          {
            goto LABEL_30;
          }
        }

        v42 = NEVirtualInterfaceCopyRouteCacheFromRoutes(*(a1 + 344), 0);
        v43 = NEVirtualInterfaceCopyRouteCacheFromRoutes(*(a1 + 360), 1);
        v79 = v42;
        v80 = v43;
        if (v42)
        {
          v42 = _CFXPCCreateXPCObjectFromCFObject();
          v43 = v80;
        }

        if (v43)
        {
          v43 = _CFXPCCreateXPCObjectFromCFObject();
        }

        v83 = v43;
        if (v42)
        {
          v44 = xpc_dictionary_create(0, 0, 0);
          if (v44)
          {
            v82 = v44;
            xpc_dictionary_set_value(v44, "ipv4-subnets", v42);
          }

          else
          {
            v82 = 0;
          }

          v43 = v83;
        }

        else
        {
          v82 = 0;
        }

        cfa = NetworkServiceEntity;
        if (v43 && (v65 = xpc_dictionary_create(0, 0, 0)) != 0)
        {
          v81 = v65;
          xpc_dictionary_set_value(v65, "ipv6-subnets", v83);
        }

        else
        {
          v81 = 0;
        }

        object = v42;
        Count = CFArrayGetCount(*(a1 + 416));
        if (Count < 1)
        {
          v75 = 0;
          goto LABEL_184;
        }

        v67 = Count;
        v77 = v11;
        v78 = v6;
        v68 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 416), v68);
          if (ValueAtIndex)
          {
            v70 = NECreateAddressStructFromString(ValueAtIndex, 0, 0);
            if (v70)
            {
              v71 = v70;
              v72 = v70[1];
              if (object && v72 == 2)
              {
                v73 = ne_session_address_matches_subnets();
                free(v71);
                if ((v73 & 1) == 0)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (!v83 || v72 != 30)
                {
                  free(v70);
LABEL_182:
                  v75 = 1;
LABEL_183:
                  v11 = v77;
                  v6 = v78;
LABEL_184:
                  NetworkServiceEntity = cfa;
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  if (v80)
                  {
                    CFRelease(v80);
                  }

                  if (object)
                  {
                    xpc_release(object);
                  }

                  if (v83)
                  {
                    xpc_release(v83);
                  }

                  if (v82)
                  {
                    xpc_release(v82);
                  }

                  if (v81)
                  {
                    xpc_release(v81);
                  }

                  if (v75)
                  {
LABEL_30:
                    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v12, key))
                    {
                      *a2 |= 2uLL;
                    }

                    NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting DNS to dictionary with keys", v12);
                    CFDictionarySetValue(Mutable, key, v12);
                    CFRelease(v12);
                    v23 = a3;
                    goto LABEL_40;
                  }

LABEL_29:
                  CFDictionarySetValue(v12, *MEMORY[0x1E69823C0], *(a1 + 488));
                  goto LABEL_30;
                }

                v74 = ne_session_address_matches_subnets();
                free(v71);
                if (!v74)
                {
                  goto LABEL_182;
                }
              }
            }
          }

          if (v67 == ++v68)
          {
            v75 = 0;
            goto LABEL_183;
          }
        }
      }

      goto LABEL_141;
    }

    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), 0, key))
    {
      *a2 |= 2uLL;
    }

    v24 = ne_log_obj();
    v23 = a3;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v88;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%s: removing DNS", buf, 0xCu);
    }

    CFArrayAppendValue(v8, key);
LABEL_40:
    v25 = NEVirtualInterfaceCopyIPStateDictionary(a1, 2, v23);
    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v25, NetworkServiceEntity))
    {
      *a2 |= 1uLL;
      if (v25)
      {
        goto LABEL_43;
      }
    }

    else if (v25)
    {
LABEL_43:
      NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting IPv4 to dictionary with keys", v25);
      CFDictionarySetValue(Mutable, NetworkServiceEntity, v25);
      CFRelease(v25);
      goto LABEL_48;
    }

    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v88;
      _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEFAULT, "%s: removing IPv4", buf, 0xCu);
    }

    CFArrayAppendValue(v8, NetworkServiceEntity);
LABEL_48:
    v27 = NEVirtualInterfaceCopyIPStateDictionary(a1, 30, v23);
    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v27, v11))
    {
      *a2 |= 1uLL;
      if (v27)
      {
        goto LABEL_51;
      }
    }

    else if (v27)
    {
LABEL_51:
      NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting IPv6 to dictionary with keys", v27);
      v28 = v11;
      CFDictionarySetValue(Mutable, v11, v27);
      CFRelease(v27);
      goto LABEL_56;
    }

    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v88;
      _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEFAULT, "%s: removing IPv6", buf, 0xCu);
    }

    v28 = v11;
    CFArrayAppendValue(v8, v11);
LABEL_56:
    v30 = *(a1 + 448);
    TypeID = CFDictionaryGetTypeID();
    cf = NetworkServiceEntity;
    if ((!v30 || CFGetTypeID(v30) != TypeID) && (*(a1 + 312) & 1) == 0 && !*(a1 + 392))
    {
      if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), 0, value))
      {
        *a2 |= 4uLL;
      }

      v45 = ne_log_obj();
      v11 = v28;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v88;
        _os_log_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEFAULT, "%s: removing proxies", buf, 0xCu);
      }

      CFArrayAppendValue(v8, value);
      if (a2)
      {
        goto LABEL_74;
      }

      goto LABEL_97;
    }

    v32 = *(a1 + 448);
    v33 = CFDictionaryGetTypeID();
    if (v32 && CFGetTypeID(v32) == v33)
    {
      v34 = *(a1 + 448);
      if (v34)
      {
        Copy = CFRetain(v34);
      }

      else
      {
        Copy = 0;
      }

      if (*(a1 + 392))
      {
        v51 = *MEMORY[0x1E6982700];
        if (!CFDictionaryContainsKey(Copy, *MEMORY[0x1E6982700]))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, Copy);
          CFDictionarySetValue(MutableCopy, v51, *(a1 + 392));
          v53 = *(a1 + 400);
          if (v53)
          {
            CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6982708], v53);
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          Copy = CFDictionaryCreateCopy(v5, MutableCopy);
          v11 = v28;
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

LABEL_66:
          if (a2)
          {
            if (!NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), Copy, value))
            {
              v36 = CFDictionaryContainsKey(Copy, *MEMORY[0x1E6982700]);
              v37 = *a2;
              if (v36 || (v37 & 1) != 0)
              {
                *a2 = v37 | 4;
              }
            }
          }

          NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting proxies to dictionary with keys", Copy);
          CFDictionarySetValue(Mutable, value, Copy);
          if (Copy)
          {
            CFRelease(Copy);
          }

          if (a2)
          {
LABEL_74:
            v38 = *a2;
            if ((*a2 & 2) != 0 && (v38 & 1) == 0 && !*(a1 + 392))
            {
              *a2 = v38 & 0xFFFFFFFFFFFFFFFCLL;
            }
          }

LABEL_97:
          v46 = *(a1 + 312);
          v47 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v48 = v47;
          if (v46)
          {
            if (v47)
            {
              CFDictionarySetValue(v47, *MEMORY[0x1E6982718], *MEMORY[0x1E6982908]);
              v50 = ne_log_obj();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = v88;
                v95 = 2112;
                v96 = v48;
                _os_log_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_DEFAULT, "%s: setting primary service dictionary to %@", buf, 0x16u);
              }

              CFDictionarySetValue(Mutable, v90, v48);
              goto LABEL_130;
            }
          }

          else if (v47)
          {
            if ((*(a1 + 312) & 8) != 0)
            {
              v49 = MEMORY[0x1E6982920];
            }

            else if ((*(a1 + 312) & 4) != 0)
            {
              v49 = MEMORY[0x1E6982918];
            }

            else
            {
              if ((*(a1 + 312) & 2) == 0)
              {
LABEL_120:
                v54 = v11;
                v55 = v6;
                v56 = *(a1 + 316);
                if (v56)
                {
                  NEAddIntToDictionary(v48, *MEMORY[0x1E6982720], v56);
                }

                v57 = CFDictionaryGetCount(v48);
                v58 = ne_log_obj();
                v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                if (v57 < 1)
                {
                  v6 = v55;
                  if (v59)
                  {
                    *buf = 136315138;
                    *&buf[4] = v88;
                    _os_log_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_DEFAULT, "%s: removing service dictionary", buf, 0xCu);
                  }

                  CFArrayAppendValue(v8, v90);
                }

                else
                {
                  v6 = v55;
                  if (v59)
                  {
                    *buf = 136315394;
                    *&buf[4] = v88;
                    v95 = 2112;
                    v96 = v48;
                    _os_log_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_DEFAULT, "%s: setting non-primary service dictionary to %@", buf, 0x16u);
                  }

                  CFDictionarySetValue(Mutable, v90, v48);
                }

                v11 = v54;
LABEL_130:
                CFRelease(v48);
                if (*(a1 + 472))
                {
                  v60 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  NetworkServiceEntity = cf;
                  if (!v60)
                  {
                    v12 = 0;
                    goto LABEL_141;
                  }

                  v61 = v60;
                  NEAddIntToDictionary(v60, *MEMORY[0x1E6982858], 7);
                  CFDictionarySetValue(Mutable, v89, v61);
                  CFRelease(v61);
                }

                else
                {
                  CFArrayAppendValue(v8, v89);
                  NetworkServiceEntity = cf;
                }

                v62 = ne_log_large_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = v88;
                  v95 = 2112;
                  v96 = Mutable;
                  _os_log_debug_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_DEBUG, "%s: Setting keys: %@", buf, 0x16u);
                }

                v63 = ne_log_large_obj();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = v88;
                  v95 = 2112;
                  v96 = v8;
                  _os_log_debug_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_DEBUG, "%s: Removing keys: %@", buf, 0x16u);
                }

                v12 = SCDynamicStoreSetMultiple(*(a1 + 496), Mutable, v8, 0);
                if (v12)
                {
                  *(a1 + 312) |= 0x40u;
                }

                goto LABEL_140;
              }

              v49 = MEMORY[0x1E6982910];
            }

            CFDictionarySetValue(v47, *MEMORY[0x1E6982718], *v49);
            goto LABEL_120;
          }

          v12 = 0;
          NetworkServiceEntity = cf;
          goto LABEL_141;
        }
      }
    }

    else
    {
      *buf = *MEMORY[0x1E6982618];
      values[0] = 0;
      valuePtr = 1;
      values[0] = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
      Copy = CFDictionaryCreate(v5, buf, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(values[0]);
    }

    v11 = v28;
    goto LABEL_66;
  }

  v76 = ne_log_obj();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEVirtualInterfaceUpdateAdHocServiceReturnChanges";
    _os_log_fault_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_FAULT, "%s called with null interface", buf, 0xCu);
  }

  return 0;
}

uint64_t NEVirtualInterfaceIsStateEqualToDynamicStoreState(const __SCDynamicStore *a1, unint64_t a2, CFStringRef key)
{
  v4 = SCDynamicStoreCopyValue(a1, key);
  if (!(v4 | a2))
  {
    return 1;
  }

  v6 = v4;
  if (v4 && a2)
  {
    v7 = CFEqual(v4, a2);
  }

  else
  {
    v7 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  CFRelease(v6);
  return v7;
}

void NEVirtualInterfaceLogStateDictionaryKeys(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 136315394;
    v15 = a1 + 265;
    v16 = 2080;
    v17 = a2;
    v13 = "%s: %s: NULL";
LABEL_10:
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
    return;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 136315394;
    v15 = a1 + 265;
    v16 = 2080;
    v17 = a2;
    v13 = "%s: %s: empty";
    goto LABEL_10;
  }

  v7 = Count;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1BFAF9060](*MEMORY[0x1E695E480], 8 * Count, 0x6004044C4A2DFLL, 0);
  CFDictionaryGetKeysAndValues(theDict, v9, 0);
  v10 = CFArrayCreate(v8, v9, v7, MEMORY[0x1E695E9C0]);
  CFAllocatorDeallocate(v8, v9);
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = a1 + 265;
    v16 = 2080;
    v17 = a2;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "%s: %s: %@", &v14, 0x20u);
  }

  CFRelease(v10);
}

SCDynamicStoreRef *NEVirtualInterfaceCreateNexusExtendedWithOptions(const __CFAllocator *a1, const __SCDynamicStore *a2, NSObject *a3, const __SCDynamicStore *a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, const unsigned __int8 *a12, const void *a13)
{
  v56 = *MEMORY[0x1E69E9840];
  Base = NEVirtualInterfaceCreateBase(a1, a2, a3, a4);
  v18 = Base;
  if (!Base)
  {
    return v18;
  }

  v51 = a9;
  v52 = a8;
  v49 = a11;
  v50 = a10;
  v19 = Base[32];
  if (v19 != 2)
  {
    if (v19 != 1)
    {
      goto LABEL_64;
    }

    if (a5)
    {
      v20 = xpc_array_create(0, 0);
      bytes = 1;
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v21, "interface-option", 0x14uLL);
      xpc_dictionary_set_data(v21, "interface-option-data", &bytes, 4uLL);
      xpc_array_append_value(v20, v21);
      xpc_release(v21);
      if (a6)
      {
LABEL_6:
        bytes = 4;
        v22 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v22, "interface-option", 1uLL);
        xpc_dictionary_set_data(v22, "interface-option-data", &bytes, 4uLL);
        xpc_array_append_value(v20, v22);
        xpc_release(v22);
      }
    }

    else
    {
      if (a8 | a7 | a9 | a10 | a11)
      {
        v25 = 0;
      }

      else
      {
        v25 = a13 == 0;
      }

      if (v25 && a6 == 0)
      {
        v20 = 0;
        goto LABEL_43;
      }

      v20 = xpc_array_create(0, 0);
      if (a6)
      {
        goto LABEL_6;
      }
    }

    if (a7)
    {
      if (a12 && !uuid_is_null(a12))
      {
        v23 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uuid(v23, "interface-bind-channel-exec-uuid", a12);
      }

      else
      {
        v23 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v23, "interface-bind-channel-pid", 1);
      }

      xpc_dictionary_set_uint64(v23, "interface-type", v18[32]);
      xpc_array_append_value(v20, v23);
      xpc_release(v23);
      bytes = a7;
      v30 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v30, "interface-option", 0x11uLL);
      xpc_dictionary_set_data(v30, "interface-option-data", &bytes, 4uLL);
      xpc_array_append_value(v20, v30);
      xpc_release(v30);
    }

    if (v52)
    {
      v31 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v31, "interface-option", 0x15uLL);
      xpc_dictionary_set_data(v31, "interface-option-data", &v52, 4uLL);
      xpc_array_append_value(v20, v31);
      xpc_release(v31);
    }

    if (v51)
    {
      v32 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v32, "interface-option", 0x16uLL);
      xpc_dictionary_set_data(v32, "interface-option-data", &v51, 4uLL);
      xpc_array_append_value(v20, v32);
      xpc_release(v32);
    }

    if (v50)
    {
      v33 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v33, "interface-option", 0x19uLL);
      xpc_dictionary_set_data(v33, "interface-option-data", &v50, 4uLL);
      xpc_array_append_value(v20, v33);
      xpc_release(v33);
    }

    if (v49)
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v34, "interface-option", 0x1AuLL);
      xpc_dictionary_set_data(v34, "interface-option-data", &v49, 4uLL);
      xpc_array_append_value(v20, v34);
      xpc_release(v34);
    }

    TypeID = CFDictionaryGetTypeID();
    if (a13 && CFGetTypeID(a13) == TypeID)
    {
      v36 = _CFXPCCreateXPCObjectFromCFObject();
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __NEVirtualInterfaceConnectSocket_block_invoke;
      v54 = &__block_descriptor_tmp_60;
      v55 = v20;
      xpc_dictionary_apply(v36, applier);
      xpc_release(v36);
    }

LABEL_43:
    if (a6)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.utun_control", v20, v18 + 265, v18 + 73, v37);
    *(v18 + 74) = v24;
    *(v18 + 72) = a6;
    if (v20)
    {
      v38 = v20;
LABEL_60:
      xpc_release(v38);
      v24 = *(v18 + 74);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  if (!(a8 | a7 | a9 | a10 | a11) && (a5 & 1) == 0)
  {
    v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.ipsec_control", 0, Base + 265, Base + 73, 0);
    *(v18 + 74) = v24;
    goto LABEL_61;
  }

  v27 = xpc_array_create(0, 0);
  if (a5)
  {
    bytes = 1;
    v28 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v28, "interface-option", 0xCuLL);
    xpc_dictionary_set_data(v28, "interface-option-data", &bytes, 4uLL);
    xpc_array_append_value(v27, v28);
    xpc_release(v28);
  }

  if (a7)
  {
    if (a12 && !uuid_is_null(a12))
    {
      v29 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uuid(v29, "interface-bind-channel-exec-uuid", a12);
    }

    else
    {
      v29 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v29, "interface-bind-channel-pid", 1);
    }

    xpc_dictionary_set_uint64(v29, "interface-type", v18[32]);
    xpc_array_append_value(v27, v29);
    xpc_release(v29);
    bytes = a7;
    v39 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v39, "interface-option", 8uLL);
    xpc_dictionary_set_data(v39, "interface-option-data", &bytes, 4uLL);
    xpc_array_append_value(v27, v39);
    xpc_release(v39);
  }

  if (v52)
  {
    v40 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v40, "interface-option", 0xDuLL);
    xpc_dictionary_set_data(v40, "interface-option-data", &v52, 4uLL);
    xpc_array_append_value(v27, v40);
    xpc_release(v40);
  }

  if (v51)
  {
    v41 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v41, "interface-option", 0xEuLL);
    xpc_dictionary_set_data(v41, "interface-option-data", &v51, 4uLL);
    xpc_array_append_value(v27, v41);
    xpc_release(v41);
  }

  if (v50)
  {
    v42 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v42, "interface-option", 0x12uLL);
    xpc_dictionary_set_data(v42, "interface-option-data", &v50, 4uLL);
    xpc_array_append_value(v27, v42);
    xpc_release(v42);
  }

  if (v49)
  {
    v43 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v43, "interface-option", 0x13uLL);
    xpc_dictionary_set_data(v43, "interface-option-data", &v49, 4uLL);
    xpc_array_append_value(v27, v43);
    xpc_release(v43);
  }

  v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.ipsec_control", v27, v18 + 265, v18 + 73, 0);
  *(v18 + 74) = v24;
  if (v27)
  {
    v38 = v27;
    goto LABEL_60;
  }

LABEL_61:
  if (v24 != -1)
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v18[61];
      *applier = 136315394;
      *&applier[4] = v18 + 265;
      *&applier[12] = 2112;
      *&applier[14] = v45;
      _os_log_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s (%@)", applier, 0x16u);
    }

    return v18;
  }

LABEL_64:
  v46 = ne_log_obj();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *applier = 0;
    _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "Failed to open interface control socket\n", applier, 2u);
  }

  CFRelease(v18);
  return 0;
}

SCDynamicStoreRef *NEVirtualInterfaceCreateBase(const __CFAllocator *a1, const __SCDynamicStore *a2, NSObject *a3, const __SCDynamicStore *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (__NEVirtualInterfaceInitialize_onceToken != -1)
  {
    dispatch_once(&__NEVirtualInterfaceInitialize_onceToken, &__block_literal_global_65);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "NEVirtualInterfaceCreateBase";
      v29 = 1024;
      v30 = 1250;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", &v27, 0x12u);
    }

    return 0;
  }

  v9 = Instance;
  Instance[1] = 0u;
  v10 = Instance + 1;
  Instance[30] = 0u;
  Instance[31] = 0u;
  Instance[28] = 0u;
  Instance[29] = 0u;
  Instance[26] = 0u;
  Instance[27] = 0u;
  Instance[24] = 0u;
  Instance[25] = 0u;
  Instance[22] = 0u;
  Instance[23] = 0u;
  Instance[20] = 0u;
  Instance[21] = 0u;
  Instance[18] = 0u;
  Instance[19] = 0u;
  Instance[16] = 0u;
  Instance[17] = 0u;
  Instance[14] = 0u;
  Instance[15] = 0u;
  Instance[12] = 0u;
  Instance[13] = 0u;
  Instance[10] = 0u;
  Instance[11] = 0u;
  Instance[8] = 0u;
  Instance[9] = 0u;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  v11 = *MEMORY[0x1E695E480];
  v12 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v12)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "NEVirtualInterfaceCreateBase";
      v29 = 1024;
      v30 = 1258;
      v21 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_18:
      v22 = v20;
      v23 = 18;
LABEL_19:
      _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, v21, &v27, v23);
    }

LABEL_22:
    CFRelease(v9);
    return 0;
  }

  v13 = v12;
  *(v9 + 61) = CFUUIDCreateString(v11, v12);
  CFRelease(v13);
  if (!*(v9 + 61))
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "NEVirtualInterfaceCreateBase";
      v29 = 1024;
      v30 = 1264;
      v21 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    *v10 = a3;
    dispatch_retain(a3);
  }

  *(v9 + 77) = -1;
  *(v9 + 73) = 1;
  *(v9 + 3) = a4;
  *(v9 + 32) = a2;
  v14 = MEMORY[0x1E695E9C0];
  *(v9 + 40) = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v9 + 41) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 42) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 43) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 44) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 45) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 46) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 47) = 1;
  *(v9 + 48) = 1;
  *(v9 + 76) = 0;
  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6982310], *MEMORY[0x1E695E4D0]);
    *(v9 + 62) = SCDynamicStoreCreateWithOptions(a1, @"NEVirtualInterface Helper Session", v16, 0, 0);
    CFRelease(v16);
    if (*(v9 + 62))
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v24 = SCDynamicStoreCreateWithOptions(a1, @"NEVirtualInterface Helper Session", 0, 0, 0);
  *(v9 + 62) = v24;
  if (!v24)
  {
LABEL_21:
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    LOWORD(v27) = 0;
    v21 = "Failed to open dynamic store session\n";
    v22 = v25;
    v23 = 2;
    goto LABEL_19;
  }

LABEL_10:
  v17 = _SCNetworkServiceCopyActive();
  if (v17)
  {
    v18 = v17;
    SCNetworkServiceSetPrimaryRank();
    CFRelease(v18);
  }

  return v9;
}

uint64_t __NEVirtualInterfaceConnectSocket_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v6, a2, a3);
  xpc_array_append_value(*(a1 + 32), v6);
  xpc_release(v6);
  return 1;
}