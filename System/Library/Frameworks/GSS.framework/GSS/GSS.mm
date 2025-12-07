uint64_t GSSItemGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  return gssitemid;
}

const __CFURL *GSSItemAdd(const __CFDictionary *a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
LABEL_3:
      if (a2)
      {
        *a2 = 0;
      }

      v4 = copyConfiguration(1, a2);
      if (!v4)
      {
        return 0;
      }

      v5 = v4;
      v6 = searchCopyResult(v4, a1);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v8 = GSSCreateItem(0);
        if (!v8)
        {
          goto LABEL_10;
        }

        v10 = CFUUIDCreate(0);
        if (v10 && (v11 = v10, v7 = CFUUIDCreateString(0, v10), CFRelease(v11), v7))
        {
          CFDictionarySetValue(v8[2], @"kGSSAttrUUID", v7);
          if (modifyItem(v8, a1, a2) & 1) != 0 && (applyClassItems(v8, v8[2], validateAttributes, a2))
          {
            updateTransientValues(v8);
            CFDictionarySetValue(v5, v7, v8);
            storeConfiguration(v5);
            goto LABEL_9;
          }

          CFRelease(v8);
        }

        else
        {
          v7 = v8;
        }
      }

      v8 = 0;
LABEL_9:
      CFRelease(v7);
LABEL_10:
      CFRelease(v5);
      return v8;
    }
  }

  v12 = GSSItemAdd_cold_2();
  return copyConfiguration(v12, v13);
}

const __CFURL *copyConfiguration(int a1, CFErrorRef *a2)
{
  v12 = 0;
  cf = 0;
  result = copyConfigurationURL();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], result);
  CFRelease(v5);
  if (v7)
  {
    if (CFReadStreamOpen(v7))
    {
      v8 = CFPropertyListCreateWithStream(v6, v7, 0, 0, 0, a2);
      CFRelease(v7);
      if (v8 && (v9 = CFGetTypeID(v8), v9 == CFDictionaryGetTypeID()))
      {
        initCreateContext(&v12);
        Value = CFDictionaryGetValue(v8, @"kGSSConfKeys");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, createItem, &v12);
          v11 = v12;
          if (!a1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          CFRelease(v12);
          v11 = 0;
          v12 = 0;
          if (!a1)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v11 = 0;
        if (!a1)
        {
          goto LABEL_15;
        }
      }

LABEL_13:
      if (!v11)
      {
        initCreateContext(&v12);
        v11 = v12;
      }

      goto LABEL_15;
    }

    CFRelease(v7);
  }

  v11 = 0;
  v8 = 0;
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v11)
  {
    min_stat = 0;
    useriter[0] = MEMORY[0x277D85DD0];
    useriter[1] = 0x40000000;
    useriter[2] = __addTransientKeys_block_invoke;
    useriter[3] = &__block_descriptor_tmp_89;
    useriter[4] = &v12;
    gss_iter_creds(&min_stat, 0, &__gss_krb5_mechanism_oid_desc, useriter);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

CFMutableArrayRef searchCopyResult(const __CFDictionary *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = Mutable;
  if (Mutable)
  {
    v7[0] = a2;
    v7[1] = Mutable;
    CFDictionaryApplyFunction(a1, searchFunction, v7);
    if (!CFArrayGetCount(v5))
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t GSSCreateItem(const __CFDictionary *a1)
{
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    *(Instance + 16) = MutableCopy;
    *(Instance + 24) = 0;
  }

  return Instance;
}

uint64_t modifyItem(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v4 = applyClassItems(a1, a2, modifyAttributes, a3);
  if (v4)
  {
    Value = CFDictionaryGetValue(a2, @"kGSSAttrCredentialPassword");
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      if (v6 == CFStringGetTypeID())
      {
        v7 = CFDictionaryGetValue(a2, @"kGSSAttrCredentialStore");
        if (v7)
        {
          v8 = v7;
          v9 = CFGetTypeID(v7);
          if (v9 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v8);
          }
        }
      }
    }
  }

  return v4;
}

gss_buffer_set_desc_struct *updateTransientValues(uint64_t a1)
{
  minor_status = 0;
  v13 = 0;
  v2 = itemToGSSCred(a1, &v13, 0);
  buffer.length = 0;
  buffer.value = 0;
  v3 = *(a1 + 16);
  if (v2)
  {
    v4 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v3, @"kGSSAttrCredentialExists", *MEMORY[0x277CBED28]);
    if (!__ApplePrivate_gss_cred_label_get(&minor_status, v2, "kcm-status", &buffer))
    {
      v5 = CFDataCreate(0, buffer.value, buffer.length);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(*(a1 + 16), @"kGSSAttrStatusAutoAcquireStatus", v5);
        CFRelease(v6);
      }

      gss_release_buffer(&minor_status, &buffer);
    }

    if (v13)
    {
      v7 = time(0) + -978307200.0 + (v13 | 0xC1CD27E400000000);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = CFDateCreate(0, v7);
    CFDictionarySetValue(*(a1 + 16), @"kGSSAttrTransientExpire", v8);
    CFRelease(v8);
    data_set = 0;
    LODWORD(v8) = gss_inquire_cred_by_oid(&minor_status, v2, &__gss_c_cred_get_default_oid_desc, &data_set);
    gss_release_buffer_set(&minor_status, &data_set);
    if (!v8)
    {
      CFDictionarySetValue(*(a1 + 16), @"kGSSAttrTransientDefaultInClass", v4);
    }

    CFRelease(v2);
  }

  else
  {
    CFDictionaryRemoveValue(v3, @"kGSSAttrTransientExpire");
  }

  result = itemCopyGSSName(a1);
  data_set = result;
  if (result)
  {
    if (!gss_display_name(&minor_status, result, &buffer, 0))
    {
      v10 = CFStringCreateWithFormat(0, 0, @"%.*s", buffer.length, buffer.value, data_set);
      gss_release_buffer(&minor_status, &buffer);
      if (v10)
      {
        CFDictionarySetValue(*(a1 + 16), @"kGSSAttrNameDisplay", v10);
        CFRelease(v10);
      }
    }

    return gss_release_name(&minor_status, &data_set);
  }

  return result;
}

void storeConfiguration(const __CFDictionary *a1)
{
  v2 = copyConfigurationURL();
  if (v2)
  {
    v3 = v2;
    v4 = CFWriteStreamCreateWithFile(0, v2);
    CFRelease(v3);
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        CFDictionaryApplyFunction(a1, storeItem, Mutable);
        v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetValue(v7, @"kGSSConfKeys", v6);
          CFRelease(v6);
          if (CFWriteStreamOpen(v4))
          {
            CFPropertyListWrite(v8, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
            CFWriteStreamClose(v4);
          }

          v6 = v4;
        }

        else
        {
          v8 = v4;
        }

        CFRelease(v6);
        v4 = v8;
      }

      CFRelease(v4);
    }
  }
}

uint64_t GSSItemUpdate(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    updated = GSSItemUpdate_cold_2();
    return GSSItemDeleteItem(updated, v17);
  }

  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (a3)
  {
    *a3 = 0;
  }

  v6 = copyConfiguration(1, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = searchCopyResult(v6, a1);
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (modifyItem(ValueAtIndex, a2, a3))
        {
          break;
        }

        if (v11 == ++v12)
        {
          CFRelease(v9);
          goto LABEL_12;
        }
      }
    }

    CFRelease(v9);
    storeConfiguration(v7);
    v14 = 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  CFRelease(v7);
  return v14;
}

uint64_t GSSItemDeleteItem(uint64_t a1, CFErrorRef *a2)
{
  v3 = copyConfiguration(0, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = ItemDeleteItem(v3, a1);
  if (v5)
  {
    storeConfiguration(v4);
  }

  CFRelease(v4);
  return v5;
}

uint64_t ItemDeleteItem(__CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(*(a2 + 16), @"kGSSAttrUUID");
  if (result)
  {
    v5 = result;
    cred_handle = itemToGSSCred(a2, 0, 0);
    if (cred_handle)
    {
      min_stat = 0;
      gss_destroy_cred(&min_stat, &cred_handle);
    }

    CFDictionaryRemoveValue(a1, v5);
    return 1;
  }

  return result;
}

const __CFArray *GSSItemDelete(uint64_t a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    GSSItemGetTypeID_cold_1();
    if (a1)
    {
LABEL_3:
      if (a2)
      {
        *a2 = 0;
      }

      v4 = copyConfiguration(0, a2);
      if (!v4)
      {
        LOBYTE(v10) = 0;
        return v10;
      }

      v5 = v4;
      v6 = searchCopyResult(v4, a1);
      if (v6)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          v10 = 0;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (ItemDeleteItem(v5, ValueAtIndex))
            {
              v10 = 1;
            }
          }

          CFRelease(v7);
          if (v10)
          {
            storeConfiguration(v5);
          }

          goto LABEL_17;
        }

        CFRelease(v7);
      }

      LOBYTE(v10) = 0;
LABEL_17:
      CFRelease(v5);
      return v10;
    }
  }

  v14 = GSSItemDelete_cold_2();
  return GSSItemCopyMatching(v14, v15);
}

const __CFArray *GSSItemCopyMatching(uint64_t a1, CFErrorRef *a2)
{
  if (gss_init_once == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  GSSItemGetTypeID_cold_1();
  if (a2)
  {
LABEL_3:
    *a2 = 0;
  }

LABEL_4:
  v4 = copyConfiguration(1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = searchCopyResult(v4, a1);
  CFRelease(v5);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        updateTransientValues(ValueAtIndex);
      }
    }
  }

  return v6;
}

void itemAcquire(uint64_t a1, const __CFDictionary *a2, NSObject *a3, uint64_t a4)
{
  output_cred_handle = 0;
  error = 0;
  minor_status = 0;
  v8 = itemCopyGSSName(a1);
  input_name = v8;
  if (v8)
  {
    v9 = v8;
    v10 = itemToMechOID(a1);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_19;
    }

    v13 = Mutable;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"kGSSAttrCredentialPassword");
      if (Value)
      {
        v15 = Value;
        v16 = @"kGSSICPassword";
      }

      else
      {
        v17 = CFDictionaryGetValue(a2, @"kGSSAttrCredentialSecIdentity");
        if (!v17)
        {
          goto LABEL_10;
        }

        v15 = v17;
        v16 = @"kGSSICCertificate";
      }

      CFDictionarySetValue(v13, v16, v15);
    }

LABEL_10:
    v18 = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrUUID");
    if (v18)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"API:%@", v18);
      if (!v19)
      {
LABEL_18:
        CFRelease(v13);
LABEL_19:
        gss_release_name(&minor_status, &input_name);
        goto LABEL_20;
      }

      v20 = v19;
      CFDictionarySetValue(v13, @"kGSSICKerberosCacheName", v19);
      CFRelease(v20);
    }

    gss_aapl_initial_cred(v9, v11, v13, &output_cred_handle, &error);
    v21 = *(a1 + 24);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 24) = 0;
    }

    if (output_cred_handle)
    {
      *(a1 + 24) = GSSCredentialCopyUUID(output_cred_handle);
    }

    updateTransientValues(a1);
    goto LABEL_18;
  }

LABEL_20:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemAcquire_block_invoke;
  block[3] = &unk_278A59FA0;
  block[4] = a4;
  block[5] = output_cred_handle;
  block[6] = error;
  dispatch_async(a3, block);
}

void itemDestroyTransient(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v11 = 0;
  min_stat = 0;
  cred_handle = itemToGSSCred(a1, 0, &v11);
  if (cred_handle)
  {
    gss_destroy_cred(&min_stat, &cred_handle);
    v6 = MEMORY[0x277CBED28];
  }

  else
  {
    v6 = MEMORY[0x277CBED10];
  }

  v7 = *v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __itemDestroyTransient_block_invoke;
  v8[3] = &unk_278A59FC8;
  v8[4] = a4;
  v8[5] = v7;
  v8[6] = v11;
  dispatch_async(a3, v8);
}

void itemGetGSSCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = 0;
  v6 = itemToGSSCred(a1, 0, &v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __itemGetGSSCredential_block_invoke;
  v7[3] = &unk_278A59FF0;
  v7[4] = a4;
  v7[5] = v6;
  v7[6] = v8;
  dispatch_async(a3, v7);
}

void itemCredentialDiagnostics(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v18 = 0;
  minor_status = 0;
  v6 = itemToGSSCred(a1, 0, &v18);
  if (v6 && (v7 = v6, data_set = 0, !gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_diag_oid_desc, &data_set)) && data_set->count)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v9 = data_set;
      if (data_set->count)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = CFDataCreate(0, v9->elements[v10].value, v9->elements[v10].length);
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(Mutable, v12);
            CFRelease(v13);
          }

          v10 = v11;
          v9 = data_set;
        }

        while (data_set->count > v11++);
      }

      gss_release_buffer_set(&minor_status, &data_set);
      CFRelease(v7);
    }
  }

  else
  {
    Mutable = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = __itemCredentialDiagnostics_block_invoke;
  v15[3] = &unk_278A5A018;
  v15[4] = a4;
  v15[5] = Mutable;
  v15[6] = v18;
  dispatch_async(a3, v15);
}

void itemChangePassword(uint64_t a1, CFDictionaryRef theDict, NSObject *a3, uint64_t a4)
{
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"kGSSOperationChangePasswordOldPassword");
  v9 = CFDictionaryGetValue(theDict, @"kGSSOperationChangePasswordNewPassword");
  if (Value)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v11 = v9, (v12 = itemToMechOID(a1)) != 0) && (v13 = v12, (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0) && (v15 = Mutable, (v16 = itemCopyGSSName(a1)) != 0))
  {
    v17 = v16;
    CFDictionaryAddValue(v15, @"kGSSChangePasswordOldPassword", Value);
    CFDictionaryAddValue(v15, @"kGSSChangePasswordNewPassword", v11);
    gss_aapl_change_password(v17, v13, v15, &error);
    CFRelease(v17);
    v18 = error;
  }

  else
  {
    v18 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemChangePassword_block_invoke;
  block[3] = &unk_278A5A040;
  block[4] = a4;
  block[5] = v18;
  dispatch_async(a3, block);
}

void itemSetDefault(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  cferror = 0;
  v6 = itemToGSSCred(a1, 0, &cferror);
  if (v6)
  {
    v7 = v6;
    data_set = 0;
    minor_status = 0;
    v10 = 0;
    v8 = gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_set_default_oid_desc, &data_set);
    gss_release_buffer_set(&v10, &data_set);
    CFRelease(v7);
    if (v8)
    {
      cferror = _gss_mg_create_cferror(v8, minor_status, 0);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemSetDefault_block_invoke;
  block[3] = &unk_278A5A068;
  block[4] = a4;
  block[5] = cferror;
  dispatch_async(a3, block);
}

void itemRenewCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  cferror = 0;
  minor_status = 0;
  v6 = itemToGSSCred(a1, 0, &cferror);
  if (v6)
  {
    v7 = v6;
    data_set = 0;
    v8 = gss_inquire_cred_by_oid(&minor_status, v6, &__gss_c_cred_renew_oid_desc, &data_set);
    gss_release_buffer_set(&minor_status, &data_set);
    CFRelease(v7);
    if (v8)
    {
      cferror = _gss_mg_create_cferror(v8, minor_status, 0);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __itemRenewCredential_block_invoke;
  block[3] = &unk_278A5A090;
  block[4] = a4;
  block[5] = cferror;
  dispatch_async(a3, block);
}

void itemRemoveBackingCredential(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrUUID");
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v10 = Mutable;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDC188], kGSSSecPasswordType);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDBF20], v7);
        CFDictionaryAddValue(v10, *MEMORY[0x277CDC120], @"GSS");
        SecItemDelete(v10);
        CFRelease(v10);
      }
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __itemRemoveBackingCredential_block_invoke;
  v11[3] = &unk_278A5A0B8;
  v11[4] = a4;
  v11[5] = 0;
  dispatch_async(a3, v11);
}

uint64_t GSSItemOperation(const void *a1, uint64_t a2, const void *a3, uint64_t a4, void *aBlock)
{
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  v10 = _Block_copy(aBlock);
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __GSSItemOperation_block_invoke;
  block[3] = &unk_278A59F58;
  block[6] = a1;
  block[7] = a3;
  block[8] = a4;
  block[4] = v10;
  block[5] = a2;
  dispatch_async(bgq, block);
  return 1;
}

void __GSSItemOperation_block_invoke(uint64_t a1)
{
  (**(a1 + 40))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 32));
  _Block_release(*(a1 + 32));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

const void *GSSItemGetValue(uint64_t a1, const void *a2)
{
  check = 0;
  if (CFDictionaryGetValue(transient_types, a2))
  {
    if (notify_check(notify_token, &check))
    {
      v4 = 1;
    }

    else
    {
      v4 = check == 0;
    }

    if (!v4)
    {
      updateTransientValues(a1);
    }
  }

  return CFDictionaryGetValue(*(a1 + 16), a2);
}

void create_tables()
{
  bgq = dispatch_queue_create("org.h5l.gss.item", MEMORY[0x277D85CD8]);
  if (bgq)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v1 = Mutable;
      v2 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v3 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(v2, @"kGSSAttrClass", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v2, @"kGSSAttrNameType", v3);
      CFDictionarySetValue(v2, @"kGSSAttrName", v3);
      CFDictionarySetValue(v2, @"kGSSAttrUUID", v3);
      v4 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v2, @"kGSSAttrCredentialPassword", *MEMORY[0x277CBED10]);
      CFDictionarySetValue(v2, @"kGSSAttrCredentialSecIdentity", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusPersistant", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusAutoAcquire", v4);
      CFDictionarySetValue(v2, @"kGSSAttrStatusTransient", v4);
      CFDictionarySetValue(v1, @"kGSSAttrClassKerberos", v2);
      CFRelease(v2);
      v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v5, @"kGSSAttrClass", v3);
      CFDictionarySetValue(v5, @"kGSSAttrNameType", v3);
      CFDictionarySetValue(v5, @"kGSSAttrName", v3);
      CFDictionarySetValue(v5, @"kGSSAttrUUID", v3);
      CFDictionarySetValue(v5, @"kGSSAttrCredentialPassword", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusPersistant", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusAutoAcquire", v4);
      CFDictionarySetValue(v5, @"kGSSAttrStatusTransient", v4);
      CFDictionarySetValue(v1, @"kGSSAttrClassNTLM", v5);
      CFRelease(v5);
      valid_set_types = v1;
      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v6, @"kGSSAttrTransientExpire", v3);
      transient_types = v6;
      valuePtr = 1196643152;
      kGSSSecPasswordType = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      notify_register_check("com.apple.Kerberos.cache.changed", &notify_token);
      gssitemid = _CFRuntimeRegisterClass();
      return;
    }
  }

  else
  {
    create_tables_cold_2();
  }

  tables_cold_1 = create_tables_cold_1();
  _gssitem_release(tables_cold_1);
}

void _gssitem_release(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

const __CFURL *copyConfigurationURL()
{
  result = CFCopyHomeDirectoryURLForUser();
  if (result)
  {
    v1 = result;
    v2 = CFURLCreateCopyAppendingPathComponent(0, result, @"Library/Preferences/com.apple.GSS.items.plist", 0);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void initCreateContext(CFMutableDictionaryRef *a1)
{
  if (*a1)
  {
    initCreateContext_cold_1();
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *a1 = Mutable;
  if (!Mutable)
  {
LABEL_6:
    initCreateContext_cold_3();
    goto LABEL_7;
  }

  v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  a1[1] = v3;
  if (!v3)
  {
LABEL_7:
    Context_cold_2 = initCreateContext_cold_2();
    createItem(Context_cold_2, v5, v6);
  }
}

void createItem(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v5 = GSSCreateItem(a2);
  if (v5)
  {
    v6 = v5;
    v7 = itemToGSSCred(v5, 0, 0);
    if (v7)
    {
      v8 = CopyTransientUUID(v7);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(a3[1], v8, *MEMORY[0x277CBED28]);
        CFRelease(v9);
      }
    }

    CFDictionarySetValue(*a3, a1, v6);

    CFRelease(v6);
  }
}

gss_cred_id_t itemToGSSCred(uint64_t a1, OM_uint32 *a2, CFErrorRef *a3)
{
  oid_set = 0;
  minor_status = 0;
  output_cred_handle = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v9 = itemToMechOID(a1);
    if (v9)
    {
      v10 = v9;
      desired_name = itemCopyGSSName(a1);
      if (desired_name)
      {
        v11 = gss_create_empty_oid_set(&minor_status, &oid_set);
        if (v11)
        {
          if (a3)
          {
            *a3 = _gss_mg_create_cferror(v11, minor_status, 0);
          }
        }

        else
        {
          v12 = gss_add_oid_set_member(&minor_status, v10, &oid_set);
          if (!v12)
          {
            v14 = gss_acquire_cred(&minor_status, desired_name, 0xFFFFFFFF, oid_set, 1, &output_cred_handle, 0, a2);
            gss_release_oid_set(&minor_status, &oid_set);
            gss_release_name(&minor_status, &desired_name);
            if (!v14)
            {
              *(a1 + 24) = GSSCredentialCopyUUID(output_cred_handle);
              return output_cred_handle;
            }

            if (a3)
            {
              v7 = 0;
              *a3 = _gss_mg_create_cferror(v14, minor_status, v10);
              return v7;
            }

            return 0;
          }

          if (a3)
          {
            *a3 = _gss_mg_create_cferror(v12, minor_status, 0);
          }

          gss_release_oid_set(&minor_status, &oid_set);
        }

        gss_release_name(&minor_status, &desired_name);
      }
    }

    return 0;
  }

  v6 = GSSCreateCredentialFromUUID(v5);
  v7 = v6;
  if (a2 && v6)
  {
    gss_inquire_cred(&minor_status, v6, 0, a2, 0, 0);
  }

  return v7;
}

const __CFUUID *CopyTransientUUID(gss_cred_id_t_desc_struct *a1)
{
  result = GSSCredentialCopyUUID(a1);
  if (result)
  {
    v2 = result;
    v3 = CFUUIDCreateString(0, result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

gss_OID_desc *itemToMechOID(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrClass");
  if (result)
  {
    v2 = result;
    if (CFEqual(result, @"kGSSAttrClassKerberos"))
    {
      return &__gss_krb5_mechanism_oid_desc;
    }

    else if (CFEqual(v2, @"kGSSAttrClassNTLM"))
    {
      return &__gss_ntlm_mechanism_oid_desc;
    }

    else if (CFEqual(v2, @"kGSSAttrClassIAKerb"))
    {
      return &__gss_iakerb_mechanism_oid_desc;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

gss_name_t itemCopyGSSName(uint64_t a1)
{
  output_name = 0;
  result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrNameType");
  if (result)
  {
    v3 = result;
    if (CFEqual(result, @"kGSSAttrNameTypeGSSUsername"))
    {
      v4 = &__gss_c_nt_user_name_oid_desc;
    }

    else if (CFEqual(v3, @"kGSSAttrNameTypeGSSHostBasedService"))
    {
      v4 = &__gss_c_nt_hostbased_service_oid_desc;
    }

    else
    {
      if (!CFEqual(v3, @"kGSSAttrNameTypeGSSExportedName"))
      {
        return 0;
      }

      v4 = &__gss_c_nt_export_name_oid_desc;
    }

    result = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrName");
    if (!result)
    {
      return result;
    }

    v5 = result;
    input_name_buffer.length = 0;
    input_name_buffer.value = 0;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      result = rk_cfstring2cstring();
      input_name_buffer.value = result;
      if (!result)
      {
        return result;
      }

      v7 = strlen(result);
LABEL_15:
      minor_status = 0;
      input_name_buffer.length = v7;
      gss_import_name(&minor_status, &input_name_buffer, v4, &output_name);
      return output_name;
    }

    if (v6 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v5);
      result = malloc_type_malloc(Length, 0x298D72A4uLL);
      input_name_buffer.value = result;
      if (!result)
      {
        return result;
      }

      v9 = result;
      BytePtr = CFDataGetBytePtr(v5);
      v11 = CFDataGetLength(v5);
      memcpy(v9, BytePtr, v11);
      v7 = CFDataGetLength(v5);
      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

void __addTransientKeys_block_invoke(uint64_t a1, uint64_t a2, gss_cred_id_t_desc_struct *a3)
{
  v5 = CopyTransientUUID(a3);
  if (v5)
  {
    v6 = v5;
    if (CFDictionaryGetValue(*(*(a1 + 32) + 8), v5) || (v7 = GSSCreateItem(0)) == 0)
    {

      CFRelease(v6);
    }

    else
    {
      v8 = v7;
      minor_status = 0;
      CFDictionarySetValue(*(v7 + 16), @"kGSSAttrUUID", v6);
      CFDictionarySetValue(*(v8 + 16), @"kGSSAttrClass", @"kGSSAttrClassKerberos");
      CFDictionarySetValue(*(v8 + 16), @"kGSSAttrNameType", @"kGSSAttrNameTypeGSSExportedName");
      v9 = _gss_cred_copy_name(&minor_status, a3, 0);
      input_name = v9;
      if (v9)
      {
        v14.length = 0;
        v14.value = 0;
        v10 = gss_export_name(&minor_status, v9, &v14);
        gss_release_name(&minor_status, &input_name);
        if (v10)
        {
          v11 = v6;
          v6 = v8;
        }

        else
        {
          v13 = CFDataCreate(0, v14.value, v14.length);
          CFDictionarySetValue(*(v8 + 16), @"kGSSAttrName", v13);
          CFRelease(v13);
          updateTransientValues(v8);
          CFDictionarySetValue(*(v8 + 16), @"kGSSAttrStatusTransient", *MEMORY[0x277CBED28]);
          CFDictionarySetValue(**(a1 + 32), v6, v8);
          *(v8 + 24) = GSSCredentialCopyUUID(a3);
          v11 = v8;
        }

        CFRelease(v11);
        v12 = v6;
      }

      else
      {
        CFRelease(v6);
        v12 = v8;
      }

      CFRelease(v12);
    }
  }
}

void searchFunction(int a1, const void *a2, CFDictionaryRef *a3)
{
  if (applyClassItems(a2, *a3, matchAttr, 0))
  {
    v5 = a3[1];

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t applyClassItems(uint64_t a1, CFDictionaryRef theDict, void (__cdecl *a3)(const void *, const void *, void *), CFTypeRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"kGSSAttrClass");
  if (!Value)
  {
    Value = CFDictionaryGetValue(*(a1 + 16), @"kGSSAttrClass");
    if (!Value)
    {
      goto LABEL_11;
    }
  }

  v9 = CFDictionaryGetValue(valid_set_types, Value);
  if (!v9)
  {
    goto LABEL_11;
  }

  v12[0] = a1;
  v12[1] = theDict;
  cf = 0;
  v14 = 1;
  CFDictionaryApplyFunction(v9, a3, v12);
  if (!cf)
  {
    v10 = v14;
    return v10 & 1;
  }

  if (!a4)
  {
    CFRelease(cf);
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v10 = 0;
  *a4 = cf;
  return v10 & 1;
}

uint64_t matchAttr(uint64_t key, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = key;
    Value = CFDictionaryGetValue(*(a3 + 8), key);
    key = CFDictionaryGetValue(*(*a3 + 16), v4);
    if (Value)
    {
      v6 = key == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      key = CFEqual(Value, key);
      if (!key)
      {
        *(a3 + 24) = 0;
      }
    }
  }

  return key;
}

void modifyAttributes(void *key, const __CFBoolean *a2, CFDictionaryRef *a3)
{
  Value = CFDictionaryGetValue(a3[1], key);
  if (CFBooleanGetValue(a2) && Value)
  {
    v7 = *(*a3 + 2);

    CFDictionarySetValue(v7, key, Value);
  }
}

uint64_t validateAttributes(uint64_t result, CFBooleanRef BOOLean, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    v4 = result;
    result = CFBooleanGetValue(BOOLean);
    if (result)
    {
      result = CFDictionaryGetValue(*(a3 + 8), v4);
      if (!result)
      {
        result = CFErrorCreate(0, @"com.apple.GSS", 22, 0);
        *(a3 + 16) = result;
      }
    }
  }

  return result;
}

void storeItem(const void *a1, CFDictionaryRef *cf, __CFDictionary *a3)
{
  v6 = CFGetTypeID(cf);
  if (gss_init_once != -1)
  {
    GSSItemGetTypeID_cold_1();
  }

  if (v6 == gssitemid)
  {
    if (!CFDictionaryGetValue(cf[2], @"kGSSAttrStatusTransient"))
    {
      v7 = cf[2];

      CFDictionarySetValue(a3, a1, v7);
    }
  }

  else
  {
    v8 = storeItem_cold_2();
    __itemAcquire_block_invoke(v8);
  }
}

void __itemAcquire_block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __itemDestroyTransient_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __itemGetGSSCredential_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __itemCredentialDiagnostics_block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __itemChangePassword_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __itemSetDefault_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __itemRenewCredential_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __itemRemoveBackingCredential_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

OM_uint32 gss_aapl_initial_cred(gss_name_t desired_name, gss_const_OID desired_mech, CFDictionaryRef attributes, gss_cred_id_t *output_cred_handle, CFErrorRef *error)
{
  v30 = 0;
  v31 = 0;
  heim_warn_blocking();
  if (error)
  {
    *error = 0;
  }

  if (!desired_mech)
  {
    return 0x10000;
  }

  if (!desired_name)
  {
    return 0x20000;
  }

  if (!output_cred_handle)
  {
    return 0x1000000;
  }

  *output_cred_handle = 0;
  Value = CFDictionaryGetValue(attributes, @"kGSSICPassword");
  v11 = CFDictionaryGetValue(attributes, @"kGSSICCertificate");
  if (!(Value | v11))
  {
    return 0x1000000;
  }

  v14 = v11;
  v15 = CFDictionaryGetValue(attributes, @"kGSSCredentialUsage");
  if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()) && CFStringCompare(v16, @"kGSS_C_INITIATE", 0))
  {
    if (CFStringCompare(v16, @"kGSS_C_ACCEPT", 0))
    {
      if (CFStringCompare(v16, @"kGSS_C_BOTH", 0))
      {
        return 851968;
      }

      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v18 = 1;
  }

  if (!gss_oid_equal(desired_mech, &__gss_krb5_mechanism_oid_desc))
  {
    if (Value)
    {
      v20 = CFGetTypeID(Value);
      if (v20 == CFStringGetTypeID())
      {
        v21 = rk_cfstring2cstring();
        if (v21)
        {
          v31 = v21;
          v30 = strlen(v21);
LABEL_32:
          attributes = &v30;
          v19 = &__gss_c_cred_password_oid_desc;
          goto LABEL_20;
        }

        return 851968;
      }

      v22 = CFGetTypeID(Value);
      if (v22 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(Value);
        v24 = malloc_type_malloc(Length, 0x95BA23C8uLL);
        v31 = v24;
        if (v24)
        {
          v25 = v24;
          v30 = CFDataGetLength(Value);
          BytePtr = CFDataGetBytePtr(Value);
          v27 = CFDataGetLength(Value);
          memcpy(v25, BytePtr, v27);
          goto LABEL_32;
        }

        return 851968;
      }
    }

    if (v14)
    {
      v28 = CFGetTypeID(v14);
      if (v28 == SecIdentityGetTypeID() || (v29 = CFGetTypeID(v14), v29 == SecCertificateGetTypeID()))
      {
        v19 = &__gss_c_cred_secidentity_oid_desc;
        attributes = v14;
        goto LABEL_20;
      }
    }

    return 851968;
  }

  v19 = &__gss_c_cred_heimbase_oid_desc;
LABEL_20:
  v32 = 0;
  v12 = __ApplePrivate_gss_acquire_cred_ext(&v32, desired_name, v19, attributes, 0xFFFFFFFF, desired_mech, v18, output_cred_handle);
  if (v30)
  {
    bzero(v31, v30);
    free(v31);
  }

  if (error && v12)
  {
    *error = _gss_mg_create_cferror(v12, v32, desired_mech);
  }

  return v12;
}

OM_uint32 gss_aapl_change_password(gss_name_t name, gss_const_OID mech, CFDictionaryRef attributes, CFErrorRef *error)
{
  v22 = 0;
  v21 = 0;
  _gss_load_mech();
  mechanism = __gss_get_mechanism(mech);
  if (!mechanism)
  {
    v12 = 0;
    v13 = 0;
    v21 = 0;
    v11 = 0x10000;
    goto LABEL_14;
  }

  v9 = mechanism;
  if (!mechanism[63])
  {
    v12 = 0;
    v13 = 0;
    v21 = 0;
    v11 = 0x100000;
    goto LABEL_14;
  }

  mn = _gss_find_mn(&v21, name, mech, &v22);
  if (mn)
  {
    v11 = mn;
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(attributes, @"kGSSChangePasswordOldPassword");
  v15 = CFDictionaryGetValue(attributes, @"kGSSChangePasswordNewPassword");
  if (!Value)
  {
    gss_aapl_change_password_cold_2();
    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_22:
    v20 = gss_aapl_change_password_cold_1();
    return GSSCredentialCopyUUID(v20);
  }

  v12 = rk_cfstring2cstring();
  v16 = rk_cfstring2cstring();
  v13 = v16;
  if (!v12 || !v16)
  {
    v21 = 0;
    v11 = 851968;
LABEL_14:
    if (error)
    {
      *error = _gss_mg_create_cferror(v11, v21, mech);
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = (v9[63])(&v21, v22[1].elements, v12, v16);
  if (v11)
  {
    _gss_mg_error(v9, v21);
    goto LABEL_14;
  }

LABEL_17:
  v17 = strlen(v12);
  bzero(v12, v17);
  free(v12);
LABEL_18:
  if (v13)
  {
    v18 = strlen(v13);
    bzero(v13, v18);
    free(v13);
  }

  return v11;
}

CFUUIDRef GSSCredentialCopyUUID(gss_cred_id_t credential)
{
  v6 = *MEMORY[0x277D85DE8];
  minor_status = 0;
  data_set = 0;
  *&v5.byte0 = 0;
  *&v5.byte8 = 0;
  if (!gss_inquire_cred_by_oid(&minor_status, credential, &__gss_c_nt_uuid_oid_desc, &data_set) && data_set->count == 1 && data_set->elements->length == 36)
  {
    v1 = krb5_string_to_uuid();
    gss_release_buffer_set(&minor_status, &data_set);
    if (!v1)
    {
      return CFUUIDCreateFromUUIDBytes(0, v5);
    }
  }

  else
  {
    gss_release_buffer_set(&minor_status, &data_set);
  }

  return 0;
}

gss_cred_id_t GSSCreateCredentialFromUUID(CFUUIDRef uuid)
{
  result = CFUUIDCreateString(0, uuid);
  if (result)
  {
    v2 = result;
    v3 = GSSCreateName(result, &__gss_c_nt_uuid_oid_desc, 0);
    input_name = v3;
    CFRelease(v2);
    if (v3)
    {
      minor_status = 0;
      output_cred_handle = 0;
      v4 = gss_acquire_cred(&minor_status, v3, 0xFFFFFFFF, 0, 1, &output_cred_handle, 0, 0);
      gss_release_name(&minor_status, &input_name);
      if (v4)
      {
        return 0;
      }

      else
      {
        return output_cred_handle;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

gss_name_t GSSCreateName(CFTypeRef name, gss_const_OID name_type, CFErrorRef *error)
{
  if (error)
  {
    *error = 0;
  }

  minor_status = 0;
  input_name_buffer.length = 0;
  input_name_buffer.value = 0;
  v10 = 0;
  v5 = CFGetTypeID(name);
  if (v5 == CFStringGetTypeID())
  {
    v6 = rk_cfstring2cstring();
    input_name_buffer.value = v6;
    if (!v6)
    {
      return 851968;
    }

    input_name_buffer.length = strlen(v6);
    v7 = gss_import_name(&minor_status, &input_name_buffer, name_type, &v10);
    free(input_name_buffer.value);
  }

  else
  {
    v8 = CFGetTypeID(name);
    if (v8 != CFDataGetTypeID())
    {
      return 0;
    }

    input_name_buffer.value = CFDataGetBytePtr(name);
    input_name_buffer.length = CFDataGetLength(name);
    v7 = gss_import_name(&minor_status, &input_name_buffer, name_type, &v10);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void GSSRuleAddMatch(const __CFDictionary *a1, const __CFString *a2, const void *a3)
{
  key = 0;
  value = 0;
  v22 = 0;
  if (FoldedHostName(a2, &value, &key, &v22))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = value;
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"scheme", value);
      v8 = v22;
      CFDictionarySetValue(v7, @"path", v22);
      CFDictionarySetValue(v7, @"value", a3);
      v9 = key;
      v10 = CFDictionaryGetValue(a1, key);
      if (v10)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v13 = MutableCopy;
      if (MutableCopy)
      {
        v20 = v9;
        v21 = a1;
        Count = CFArrayGetCount(MutableCopy);
        if (Count < 1)
        {
LABEL_14:
          CFArrayAppendValue(v13, v7);
        }

        else
        {
          v15 = Count;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            v18 = CFDictionaryGetValue(ValueAtIndex, @"path");
            v19 = CFDictionaryGetValue(ValueAtIndex, @"scheme");
            if (CFStringCompare(v19, v6, 1uLL) != kCFCompareLessThan)
            {
              if (CFStringHasPrefix(v8, v18))
              {
                break;
              }
            }

            if (v15 == ++v16)
            {
              goto LABEL_14;
            }
          }

          CFArrayInsertValueAtIndex(v13, v16, v7);
        }

        v9 = v20;
        CFDictionarySetValue(v21, v20, v13);
        CFRelease(v13);
      }

      CFRelease(v6);
      CFRelease(v9);
      CFRelease(v8);
      v12 = v7;
    }

    else
    {
      CFRelease(value);
      CFRelease(key);
      v12 = v22;
    }

    CFRelease(v12);
  }
}

uint64_t FoldedHostName(const __CFString *a1, CFTypeRef *a2, __CFString **a3, CFStringRef *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if (CFStringFind(a1, @":", 0).location == -1)
  {
    goto LABEL_16;
  }

  v8 = CFURLCreateWithString(0, a1, 0);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = CFURLCopyHostName(v8);
  if (v10)
  {
    v11 = v10;
    *a3 = CopyFoldString(v10);
    CFRelease(v11);
    if (!*a3)
    {
      CFRelease(v9);
      return 0;
    }
  }

  else
  {
    *a3 = &stru_284B4C108;
  }

  v13 = CFURLCopyScheme(v9);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_284B4C108;
  }

  *a2 = v14;
  v15 = CFURLCopyPath(v9);
  *a4 = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

  if (CFStringCompare(v15, &stru_284B4C108, 0) == kCFCompareEqualTo)
  {
    if (*a4)
    {
      CFRelease(*a4);
    }

LABEL_14:
    *a4 = @"/";
  }

  CFRelease(v9);
LABEL_16:
  if (!*a3)
  {
    *a3 = CopyFoldString(a1);
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = @"any";
    *a4 = @"/";
  }

  return 1;
}

const void *GSSRuleGetMatch(const __CFDictionary *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = 0;
  cf = 0;
  v2 = 0;
  if (FoldedHostName(a2, &cf, &v20, &v19))
  {
    v3 = v20;
    v4 = rk_cfstring2cstring();
    CFRelease(v3);
    if (v4)
    {
      v5 = cf;
      if (*v4)
      {
        v6 = v19;
        v17 = v4;
        do
        {
          v7 = CFStringCreateWithCString(0, v4, 0x8000100u);
          Value = CFDictionaryGetValue(a1, v7);
          CFRelease(v7);
          if (Value && (Count = CFArrayGetCount(Value), Count >= 1))
          {
            v10 = Count;
            v11 = 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Value, v11 - 1);
              v13 = CFDictionaryGetValue(ValueAtIndex, @"scheme");
              if (CFStringCompare(v5, v13, 1uLL) && CFStringCompare(@"any", v13, 1uLL) || (v14 = CFDictionaryGetValue(ValueAtIndex, @"path"), !CFStringHasPrefix(v6, v14)))
              {
                v2 = 0;
              }

              else
              {
                v2 = CFDictionaryGetValue(ValueAtIndex, @"value");
              }

              if (v11 >= v10)
              {
                break;
              }

              ++v11;
            }

            while (!v2);
          }

          else
          {
            v2 = 0;
          }

          v15 = strchr((v4 + 1), 46);
          if (!v15)
          {
            break;
          }

          v4 = v15;
        }

        while (!v2);
        CFRelease(v5);
        free(v17);
        goto LABEL_22;
      }

      CFRelease(cf);
      free(v4);
    }

    v2 = 0;
    v6 = v19;
LABEL_22:
    CFRelease(v6);
  }

  return v2;
}

gss_name_t GSSCredentialCopyName(gss_cred_id_t cred)
{
  minor_status = 0;
  v2 = 0;
  if (gss_inquire_cred(&minor_status, cred, &v2, 0, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

OM_uint32 GSSCredentialGetLifetime(gss_cred_id_t cred)
{
  minor_status = 0;
  lifetime = 0;
  if (gss_inquire_cred(&minor_status, cred, 0, &lifetime, 0, 0))
  {
    return 0;
  }

  else
  {
    return lifetime;
  }
}

CFStringRef GSSNameCreateDisplayString(gss_name_t name)
{
  minor_status = 0;
  output_name_buffer.length = 0;
  output_name_buffer.value = 0;
  v1 = 0;
  if (!gss_display_name(&minor_status, name, &output_name_buffer, 0))
  {
    v1 = CFStringCreateWithBytes(0, output_name_buffer.value, output_name_buffer.length, 0x8000100u, 0);
    gss_release_buffer(&minor_status, &output_name_buffer);
  }

  return v1;
}

uint64_t GSSCredGetLifetime(gss_cred_id_t cred_handle)
{
  minor_status = 0;
  lifetime = 0;
  if (gss_inquire_cred(&minor_status, cred_handle, 0, &lifetime, 0, 0))
  {
    return 0;
  }

  else
  {
    return lifetime;
  }
}

gss_name_t GSSCredCopyName(gss_cred_id_t cred_handle)
{
  minor_status = 0;
  v2 = 0;
  if (gss_inquire_cred(&minor_status, cred_handle, &v2, 0, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__CFString *CopyFoldString(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (CopyFoldString_once != -1)
  {
    CopyFoldString_cold_1();
  }

  CFStringFold(MutableCopy, 1uLL, CopyFoldString_locale);
  return MutableCopy;
}

CFLocaleRef __CopyFoldString_block_invoke()
{
  result = CFLocaleCreate(0, @"C");
  CopyFoldString_locale = result;
  return result;
}

uint64_t add_MechTypeList(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 16 * *a1 + 16, 0x8687B457uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t _gsskrb5_create_8003_checksum(int *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, void *a6, void *a7, _DWORD *a8)
{
  v11 = a5;
  v32[2] = *MEMORY[0x277D85DE8];
  minor_status = 0;
  buffer.length = 0;
  buffer.value = 0;
  v15 = krb5_storage_emem();
  if (v15)
  {
    v16 = v15;
    krb5_storage_set_byteorder();
    checksum = krb5_store_int32();
    if (checksum)
    {
LABEL_3:
      v18 = checksum;
      goto LABEL_4;
    }

    if (a4)
    {
      if (gss_mg_gen_cb(a1, a4, v32, &buffer))
      {
        v18 = *a1;
        goto LABEL_4;
      }
    }

    else
    {
      v32[0] = 0;
      v32[1] = 0;
    }

    if (krb5_storage_write() == 16)
    {
      checksum = krb5_store_int32();
      if (checksum)
      {
        goto LABEL_3;
      }

      if (v11)
      {
        checksum = store_ext(v16, 1, a6);
        if (checksum)
        {
          goto LABEL_3;
        }
      }

      if (*a7)
      {
        checksum = store_ext(v16, 2, a7);
        if (checksum)
        {
          goto LABEL_3;
        }
      }

      if (!a3 || !a4 || !buffer.length)
      {
        goto LABEL_29;
      }

      v27 = 0;
      memset(v29, 0, sizeof(v29));
      checksum = krb5_create_checksum();
      if (checksum)
      {
        goto LABEL_3;
      }

      v20 = length_Checksum(v29);
      v28[0] = v20;
      v21 = malloc_type_malloc(v20, 0xB723104AuLL);
      v28[1] = v21;
      if (v21)
      {
        v22 = v21;
        v23 = encode_Checksum(v21 + v20 - 1, v20, v29, &v27);
        if (v23)
        {
          v18 = v23;
          free(v22);
          goto LABEL_4;
        }

        if (v20 != v27)
        {
          v24 = krb5_abortx();
          return store_ext(v24, v25, v26);
        }

        v18 = store_ext(v16, 0, v28);
        krb5_data_free();
        if (v18)
        {
          goto LABEL_4;
        }

LABEL_29:
        *a8 = 32771;
        checksum = krb5_storage_to_data();
        goto LABEL_3;
      }
    }

    v18 = 12;
LABEL_4:
    gss_release_buffer(&minor_status, &buffer);
    krb5_storage_free();
    if (!v18)
    {
      return 0;
    }

    goto LABEL_7;
  }

  gss_release_buffer(&minor_status, &buffer);
  v18 = 12;
LABEL_7:
  *a1 = v18;
  return 851968;
}

uint64_t store_ext(uint64_t a1, uint64_t a2, void *a3)
{
  result = krb5_store_uint16();
  if (!result)
  {
    result = krb5_store_uint16();
    if (!result)
    {
      v5 = krb5_storage_write();
      result = 12;
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 == *a3)
        {
          return 0;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_verify_8003_checksum(krb5_error_code *a1, _krb5_context *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, _OWORD *a8)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v16 = 0uLL;
  v15 = 0;
  minor_status = 0;
  buffer.length = 0;
  buffer.value = 0;
  krb5_data_zero();
  if (*a5 == 32771 && *(a5 + 8) >= 0x18uLL)
  {
    if (!krb5_storage_from_readonly_mem())
    {
      result = 851968;
      v10 = 12;
      goto LABEL_5;
    }

    krb5_storage_set_byteorder();
    v12 = krb5_ret_uint32();
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = 12;
    }

    gss_release_buffer(&minor_status, &buffer);
    krb5_data_free();
    krb5_storage_free();
  }

  else
  {
    v10 = 0;
  }

  result = 0x40000;
LABEL_5:
  *a1 = v10;
  return result;
}

uint64_t read_ext(uint64_t a1, uint64_t a2, void *a3)
{
  result = krb5_ret_uint16();
  if (!result)
  {
    result = krb5_ret_uint16();
    if (!result)
    {
      result = krb5_data_alloc();
      if (!result)
      {
        v5 = krb5_storage_read();
        if (v5 < 0 || v5 != *a3)
        {
          krb5_data_free();
          return 2314790661;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_register_acceptor_identity(krb5_error_code *a1, const char *a2)
{
  context = 0;
  *a1 = 0;
  if (__ApplePrivate__gsskrb5_init(&context))
  {
    return 851968;
  }

  pthread_mutex_lock(&gssapi_keytab_mutex);
  if (_gsskrb5_keytab)
  {
    krb5_kt_close(context, _gsskrb5_keytab);
    _gsskrb5_keytab = 0;
  }

  if (a2)
  {
    if (!validate_keytab(context, a2))
    {
      pthread_mutex_unlock(&gssapi_keytab_mutex);
      return 0;
    }

    v6 = 0;
    if (asprintf(&v6, "FILE:%s", a2) < 0 || !v6)
    {
      pthread_mutex_unlock(&gssapi_keytab_mutex);
      return 851968;
    }

    v5 = validate_keytab(context, v6);
    free(v6);
  }

  else
  {
    v5 = krb5_kt_default(context, &_gsskrb5_keytab);
  }

  pthread_mutex_unlock(&gssapi_keytab_mutex);
  if (!v5)
  {
    return 0;
  }

  *a1 = v5;
  return 851968;
}

uint64_t validate_keytab(_krb5_context *a1, const char *a2)
{
  have_content = krb5_kt_resolve(a1, a2, &_gsskrb5_keytab);
  if (!have_content)
  {
    have_content = krb5_kt_have_content();
    if (have_content)
    {
      krb5_kt_close(a1, _gsskrb5_keytab);
      _gsskrb5_keytab = 0;
    }
  }

  return have_content;
}

uint64_t _gsskrb5i_is_cfx(_krb5_context *a1, uint64_t a2, int a3)
{
  result = krb5_auth_con_getlocalseqnumber(a1, *(a2 + 40), (a2 + 12));
  *(a2 + 16) = 0;
  v6 = *(a2 + 40);
  if (a3)
  {
    v7 = v6[5];
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = 6;
  }

  else
  {
    v7 = v6[6];
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = 5;
  }

  v7 = v6[v8];
  if (!v7)
  {
    v7 = v6[4];
    if (!v7)
    {
      return result;
    }
  }

LABEL_8:
  if (*v7 > 0x18u || ((1 << *v7) & 0x18100AE) == 0)
  {
    *(a2 + 76) |= 0x40u;
    v10 = *(a2 + 8) & 0xFFFFFDFB;
    *(a2 + 8) = v10;
    if (a3)
    {
      v11 = v10 | 1;
      *(a2 + 8) = v10 | 1;
      if (!v6[5])
      {
        goto LABEL_24;
      }

      v12 = 5;
    }

    else
    {
      if (!v6[6])
      {
        v11 = v10;
LABEL_24:
        if ((*(a2 + 73) & 0x10) != 0)
        {
          *(a2 + 8) = v11 | 0x200;
        }

        goto LABEL_12;
      }

      v12 = 4;
    }

    v11 = v10 | v12;
    *(a2 + 8) = v10 | v12;
    goto LABEL_24;
  }

LABEL_12:
  if (*a2)
  {
    krb5_crypto_destroy();
  }

  return krb5_crypto_init();
}

uint64_t _gsskrb5_error_token(krb5_error_code *a1, const void **a2, krb5_context a3, krb5_error *a4, uint64_t a5, uint64_t a6, size_t *a7)
{
  v13[0] = 0;
  v13[1] = 0;
  v10 = krb5_mk_error(a3, a4, 0);
  if (v10)
  {
    v11 = 851968;
  }

  else
  {
    v11 = _gsskrb5_encapsulate(a1, v13, a7, &word_23894DB48, a2);
    krb5_data_free();
    if (v11)
    {
      return v11;
    }

    v10 = 0;
  }

  *a1 = v10;
  return v11;
}

uint64_t accept_sec_context(krb5_error_code *a1, void **a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = 0;
  v20 = __ApplePrivate__gsskrb5_init(&v31);
  if (v20)
  {
    *a1 = v20;
    return 851968;
  }

  else
  {
    *a8 = 0;
    a8[1] = 0;
    if (a6)
    {
      *a6 = 0;
    }

    v28 = a8;
    if (a7)
    {
      *a7 = a12;
    }

    v23 = *a2;
    if (!*a2)
    {
      ctx = _gsskrb5_create_ctx(a1, a2, v31, a5, a12);
      if (ctx)
      {
        return ctx;
      }

      v23 = *a2;
      *(v23 + 2) = *(*a2 + 2) | 1;
      *(v23 + 10) = a13;
    }

    pthread_mutex_lock(v23 + 2);
    v24 = *(v23 + 10);
    while (1)
    {
      v25 = v23;
      v26 = (v24)(a1, v23, v31, a3, a4, a5, a6, a7, v28, a9, a10, a11);
      if (*v28 || v26 != 0)
      {
        break;
      }

      v24 = *(v23 + 10);
      if (v24 == step_acceptor_completed)
      {
        pthread_mutex_unlock(v23 + 2);
        return 0;
      }
    }

    ctx = v26;
    pthread_mutex_unlock(v25 + 2);
    if (ctx >= 0x10000)
    {
      v30 = 0;
      _gsskrb5_delete_sec_context(&v30, a2, 0);
    }
  }

  return ctx;
}

uint64_t pku2u_acceptor_start(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  if (!a2[28])
  {
    v12 = krb5_storage_emem();
    a2[28] = v12;
    if (!v12)
    {
      *a1 = 12;
      return 851968;
    }
  }

  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v13 = _gsskrb5_decapsulate(a1, a5, v18, "\x05\x01", a2[4]);
  if (!v13)
  {
    krb5_storage_write();
    inited = heim_ipc_init_context();
    if (inited)
    {
      *a1 = inited;
    }

    else
    {
      v14 = _gsskrb5_encapsulate(a1, v17, a9, &word_23894DB4B, a2[4]);
      heim_ipc_free_data();
      if (v14)
      {
        return v14;
      }

      krb5_storage_write();
      *a1 = 0;
    }

    return 851968;
  }

  v14 = v13;
  if (v13 == 589824)
  {
    v14 = 0;
    a2[10] = gsskrb5_acceptor_start;
  }

  return v14;
}

uint64_t gsskrb5_acceptor_start(krb5_error_code *a1, uint64_t a2, _krb5_context *a3, const krb5_principal_data **a4, unint64_t *a5, uint64_t a6, krb5_principal *a7, void *a8, size_t *a9, unsigned int *a10, int *a11, void *a12)
{
  memset(&v63.client + 4, 0, 20);
  v18 = _gsskrb5_decapsulate(a1, a5, &v63.checksum, &word_23894DB4E, *(a2 + 32));
  if (v18)
  {
    v19 = a5[1];
    v63.checksum = *a5;
    *&v63.cusec = v19;
  }

  if (!a4)
  {
    v21 = 0;
    v20 = 0;
    *&ctype.magic = 0;
    *&v62 = 0;
    goto LABEL_10;
  }

  if (!*a4)
  {
    *&ctype.magic = 0;
    *&v62 = 0;
    goto LABEL_9;
  }

  *&ctype.magic = 0;
  *&v62 = 0;
  if (!krb5_principal_is_gss_hostbased_service())
  {
LABEL_9:
    v21 = 0;
    v20 = *a4;
    goto LABEL_10;
  }

  v20 = 0;
  v21 = 1;
LABEL_10:
  v22 = krb5_rd_req_in_ctx_alloc();
  if (v22 || (v22 = krb5_rd_req_in_set_keytab()) != 0)
  {
    v23 = v22;
LABEL_13:
    *a1 = v23;
    return 851968;
  }

  v26 = a9;
  v27 = krb5_rd_req_ctx();
  krb5_rd_req_in_ctx_free();
  if (v18 && _gss_mg_log_level(5))
  {
    error_message = krb5_get_error_message(a3, v18);
    v57 = 0;
    if (v20)
    {
      krb5_unparse_name(a3, v20, &v57);
      v29 = v57;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      v29 = "<not specified>";
    }

    _gss_mg_log(5, "gss-asc: rd_req (server: %s) failed with: %u: %s", v29, v18, error_message);
    krb5_free_error_message(a3, error_message);
    if (v57)
    {
      krb5_xfree();
    }

    v26 = a9;
  }

  if (v27 <= -1765328204)
  {
    if (v27 == -1765328351 || v27 == -1765328347)
    {
      v30 = *(a2 + 32);
      p_checksum = &v63.checksum;
      v31 = a1;
      v32 = a3;
      v33 = v27;
      v34 = v20;
      return send_error_token(v31, v32, v33, v34, p_checksum, v30, v26);
    }

    if (v27 != -1765328343)
    {
      goto LABEL_45;
    }

LABEL_32:
    v30 = *(a2 + 32);
    v31 = a1;
    v32 = a3;
    v33 = 2529638953;
    v34 = v20;
    p_checksum = 0;
    return send_error_token(v31, v32, v33, v34, p_checksum, v30, v26);
  }

  if ((v27 + 1765328203) < 2)
  {
    goto LABEL_32;
  }

  if (v27)
  {
LABEL_45:
    *a1 = v27;
    return 851968;
  }

  v37 = v26;
  ap_req_options = krb5_rd_req_out_get_ap_req_options();
  if (!ap_req_options)
  {
    ap_req_options = krb5_rd_req_out_get_ticket();
    if (!ap_req_options)
    {
      ap_req_options = krb5_rd_req_out_get_keyblock();
      if (!ap_req_options)
      {
        if (krb5_rd_req_out_get_flags())
        {
          *(a2 + 76) |= 0x80u;
        }

        if (!v21)
        {
          goto LABEL_51;
        }

        v40 = *(*(a2 + 112) + 144);
        v41 = *a4;
        if (*(v40 + 8))
        {
          v42 = **(v40 + 16);
          v43 = *v41->realm.data;
          if (!strcmp(v42, v43))
          {
LABEL_51:
            v23 = 0;
            goto LABEL_41;
          }
        }

        else
        {
          v43 = *v41->realm.data;
          v42 = **(v40 + 16);
        }

        krb5_set_error_message(a3, v18, "Expecting service %s but got %s", v43, v42);
        v23 = -1765328240;
        goto LABEL_41;
      }
    }
  }

  v23 = ap_req_options;
LABEL_41:
  *(a2 + 120) = *(*(a2 + 112) + 104);
  krb5_rd_req_out_ctx_free();
  if (v23)
  {
    goto LABEL_13;
  }

  v39 = krb5_copy_principal(a3, *(*(a2 + 112) + 136), (a2 + 56));
  if (v39)
  {
    goto LABEL_44;
  }

  v39 = krb5_copy_principal(a3, *(*(a2 + 112) + 144), (a2 + 64));
  if (v39)
  {
    goto LABEL_44;
  }

  mic_compat = _gss_DES3_get_mic_compat(a1, a2, a3);
  if (mic_compat)
  {
    return mic_compat;
  }

  if (a7)
  {
    v39 = krb5_copy_principal(a3, *(*(a2 + 112) + 136), a7);
    if (v39)
    {
      goto LABEL_44;
    }
  }

  *&v63.magic = 0;
  v39 = krb5_auth_con_getauthenticator(a3, *(a2 + 40), &v63);
  if (v39)
  {
    goto LABEL_44;
  }

  v44 = *(*&v63.magic + 40);
  if (!v44)
  {
    krb5_free_authenticator(a3, &v63);
    *a1 = 0;
    return 0x40000;
  }

  if (*v44 != 32771)
  {
    *&ctype.magic = 0;
    v45 = krb5_crypto_init();
    if (v45)
    {
      v47 = v45;
      krb5_free_authenticator(a3, &v63);
LABEL_67:
      v24 = 851968;
LABEL_78:
      *a1 = v47;
      return v24;
    }

    v47 = krb5_verify_checksum(a3, ctype.magic, 0xA, 0, 0, *(*&v63.magic + 40), v46);
    krb5_free_authenticator(a3, &v63);
    krb5_crypto_destroy();
    if (!v47)
    {
      *(a2 + 72) = BYTE4(v63.client) & 2 | 0xC;
      goto LABEL_86;
    }

LABEL_77:
    v24 = 393216;
    goto LABEL_78;
  }

  v62 = 0uLL;
  *v61 = 0;
  if (*(*(a2 + 40) + 48))
  {
    v39 = krb5_crypto_init();
    if (v39)
    {
      goto LABEL_44;
    }
  }

  krb5_data_zero();
  v24 = _gsskrb5_verify_8003_checksum(a1, a3, *v61, a6, *(*&v63.magic + 40), (a2 + 72), a2 + 200, &v62);
  krb5_free_authenticator(a3, &v63);
  if (v24)
  {
    krb5_crypto_destroy();
    return v24;
  }

  if (!v62)
  {
    goto LABEL_85;
  }

  v57 = 0;
  v58 = 0;
  ctype.data = 0;
  v60 = 0;
  *&ctype.magic = 0;
  if (!*(a2 + 224))
  {
    krb5_crypto_destroy();
LABEL_76:
    krb5_data_free();
    v47 = 0;
    goto LABEL_77;
  }

  v48 = krb5_storage_to_data();
  if (v48)
  {
    v47 = v48;
    krb5_crypto_destroy();
LABEL_74:
    krb5_data_free();
    goto LABEL_67;
  }

  if (!*(*(a2 + 40) + 48))
  {
    krb5_crypto_destroy();
    krb5_data_free();
    goto LABEL_76;
  }

  v47 = decode_GSS_KRB5_FINISHED(*(&v62 + 1), v62, &ctype, 0);
  krb5_data_free();
  if (v47)
  {
    krb5_crypto_destroy();
    goto LABEL_74;
  }

  v47 = krb5_verify_checksum(a3, v61[0], 0x29, v58, v57, &ctype, v49);
  free_GSS_KRB5_FINISHED(&ctype);
  krb5_data_free();
  if (v47)
  {
    krb5_crypto_destroy();
    goto LABEL_67;
  }

LABEL_85:
  krb5_crypto_destroy();
LABEL_86:
  if (*(a2 + 200))
  {
    v39 = krb5_auth_con_init(a3, (a2 + 48));
    if (v39)
    {
      goto LABEL_44;
    }

    krb5_auth_con_setkey();
    krb5_auth_con_setremotesubkey();
  }

  if (_gss_mg_log_level(10))
  {
    *&ctype.magic = 0;
    *&v62 = 0;
    krb5_unparse_name(a3, *(a2 + 64), &ctype);
    krb5_unparse_name(a3, *(a2 + 56), &v62);
    _gss_mg_log(10, "gss-asc: krb5 (server: %s client: %s) using session enctype: %d", *&ctype.magic, v62, **(*(a2 + 40) + 32));
    if (v62)
    {
      krb5_xfree();
    }

    if (*&ctype.magic)
    {
      krb5_xfree();
    }
  }

  v50 = *(a2 + 72);
  if ((v50 & 2) == 0)
  {
    goto LABEL_95;
  }

  *&ctype.magic = 0;
  ctype.data = 0;
  _gsskrb5i_is_cfx(a3, a2, 1);
  if ((*(a2 + 76) & 0x40) != 0 || (BYTE4(v63.client) & 4) != 0 || (*&v62 = 0, !krb5_auth_con_getremotesubkey()) && (v53 = krb5_auth_con_setlocalsubkey(), krb5_free_keyblock(a3, v62), !v53))
  {
    *(a2 + 8) |= 4u;
    krb5_auth_con_addflags();
  }

  v39 = krb5_mk_rep(a3, *(a2 + 40), &ctype);
  if (v39)
  {
LABEL_44:
    *a1 = v39;
    return 851968;
  }

  v50 = *(a2 + 72);
  if ((v50 & 0x1000) != 0)
  {
    data = ctype.data;
    *v37 = *&ctype.magic;
    v37[1] = data;
  }

  else
  {
    v24 = _gsskrb5_encapsulate(a1, &ctype, v37, word_23894DB51, *(a2 + 32));
    krb5_data_free();
    if (v24)
    {
      return v24;
    }

    v50 = *(a2 + 72);
  }

LABEL_95:
  v51 = v50 | 0x100;
  *(a2 + 72) = v51;
  v52 = *(*(a2 + 112) + 104);
  *(a2 + 120) = v52;
  *(a2 + 76) |= 2u;
  if (a8)
  {
    *a8 = *(a2 + 32);
  }

  if (a11)
  {
    mic_compat = _gsskrb5_lifetime_left(a1, a3, v52, a11);
    if (mic_compat)
    {
      return mic_compat;
    }

    v51 = *(a2 + 72);
  }

  if ((v51 & 0x1000) != 0)
  {
    if (a10)
    {
      *a10 = v51 & 0xFFFFFFFE;
    }

    *(a2 + 80) = acceptor_wait_for_dcestyle;
    return 1;
  }

  else
  {
    v24 = gsskrb5_acceptor_ready(a1, a2, a3, a12);
    if (a10)
    {
      *a10 = *(a2 + 72);
    }
  }

  return v24;
}

uint64_t iakerb_acceptor_start(krb5_error_code *a1, uint64_t *a2, _krb5_context *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  if (!a2[28])
  {
    v13 = krb5_storage_emem();
    a2[28] = v13;
    if (!v13)
    {
      v17 = 12;
LABEL_12:
      *a1 = v17;
      return 851968;
    }
  }

  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v14 = _gsskrb5_iakerb_parse_header(a1, a3, a2, a5, v21);
  if (v14)
  {
    header = v14;
    if (v14 == 589824)
    {
      header = 0;
      a2[10] = gsskrb5_acceptor_start;
    }

    return header;
  }

  krb5_storage_write();
  if (!a2[34])
  {
    iakerb_acceptor_start_cold_1();
  }

  if (!krb5_realm_is_lkdc())
  {
    v17 = 22;
    goto LABEL_12;
  }

  inited = heim_ipc_init_context();
  if (inited)
  {
    *a1 = inited;
    return 851968;
  }

  v19 = heim_ipc_call();
  heim_ipc_free_context();
  if (v19)
  {
    _gsskrb5_error_token(a1, a2[4], a3, v19, 0, 0, a9);
    *a1 = v19;
    return 851968;
  }

  header = _gsskrb5_iakerb_make_header(a1, a3, a2, a2[34], v20, a9);
  heim_ipc_free_data();
  if (!header)
  {
    krb5_storage_write();
    return 1;
  }

  return header;
}

uint64_t send_error_token(krb5_error_code *a1, krb5_context a2, krb5_error *a3, krb5_principal_data *a4, uint64_t a5, const void **a6, size_t *a7)
{
  v9 = a4;
  v20 = 0;
  v19 = xmmword_278A5AFB8;
  if (!a4 && a5)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = krb5_decode_ap_req();
    if (v13)
    {
      v14 = v13;
LABEL_6:
      *a1 = v14;
      return 851968;
    }

    v14 = _krb5_principalname2krb5_principal();
    free_AP_REQ(v17);
    if (v14)
    {
      goto LABEL_6;
    }

    v9 = v20;
  }

  v15 = _gsskrb5_error_token(a1, a6, a2, a3, &v19, v9, a7);
  if (v20)
  {
    krb5_free_principal(a2, v20);
  }

  if (v15)
  {
    return 851968;
  }

  *a1 = 0;
  return 1;
}

uint64_t acceptor_wait_for_dcestyle(krb5_error_code *a1, uint64_t a2, krb5_context a3, int a4, uint64_t *a5, int a6, krb5_principal *a7, int a8, uint64_t a9, _DWORD *a10, _DWORD *a11, void *a12)
{
  v16 = *a5;
  v17 = a5[1];
  *v22 = 0;
  *&v23.magic = v16;
  v23.data = v17;
  v18 = krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), v22);
  if (v18 || (v18 = krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v22[1])) != 0 || (v18 = krb5_auth_con_setremoteseqnumber()) != 0 || (*v21 = 0, v20 = 0, krb5_auth_con_removeflags(), (v18 = krb5_rd_rep(a3, *(a2 + 40), &v23, v21)) != 0))
  {
LABEL_5:
    *a1 = v18;
    return 851968;
  }

  krb5_free_ap_rep_enc_part(a3, *v21);
  krb5_auth_con_setflags(a3, *(a2 + 40), v20);
  v21[0] = 0;
  result = _gsskrb5_lifetime_left(a1, a3, *(a2 + 120), v21);
  if (!result)
  {
    if (!v21[0])
    {
      return 786432;
    }

    if (a11)
    {
      *a11 = v21[0];
    }

    if (a10)
    {
      *a10 = *(a2 + 72);
    }

    if (!a7 || (v18 = krb5_copy_principal(a3, *(a2 + 56), a7)) == 0)
    {
      v20 = 0;
      v21[0] = 0;
      v18 = krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), v21);
      if (!v18)
      {
        v18 = krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v20);
        if (!v18)
        {
          if (v21[0] != v20)
          {
            return 8;
          }

          v18 = krb5_auth_con_setremoteseqnumber();
          if (!v18)
          {
            return gsskrb5_acceptor_ready(a1, a2, a3, a12);
          }
        }
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t gsskrb5_acceptor_ready(int *a1, uint64_t a2, krb5_context a3, void *a4)
{
  v16 = 0;
  krb5_auth_con_getremoteseqnumber(a3, *(a2 + 40), &v16);
  _gsskrb5i_is_cfx(a3, a2, 1);
  v8 = _gssapi_msg_order_f(*(a2 + 72));
  v9 = _gssapi_msg_order_create(a1, (a2 + 24), v8, v16, 0);
  if (v9)
  {
    return v9;
  }

  v10 = *(a2 + 72);
  if ((v10 & 2) == 0 && _gssapi_msg_order_f(v10))
  {
    krb5_auth_con_setlocalseqnumber();
  }

  v11 = *(a2 + 72);
  if (!*(a2 + 200) || (v11 & 1) == 0)
  {
    *(a2 + 72) = v11 & 0xFFFFFFFE;
    goto LABEL_27;
  }

  id = 0;
  *a1 = 0;
  if (!a4)
  {
    if (!krb5_cc_default(a3, &id))
    {
      goto LABEL_12;
    }

LABEL_13:
    v9 = 0;
    *(a2 + 72) &= ~1u;
    goto LABEL_14;
  }

  *a4 = 0;
  if (krb5_cc_new_unique(a3, *MEMORY[0x277D13188], 0, &id))
  {
    goto LABEL_13;
  }

LABEL_12:
  if (krb5_cc_initialize(a3, id, *(a2 + 56)))
  {
    goto LABEL_13;
  }

  v13 = krb5_rd_cred2();
  if (!v13)
  {
    v12 = id;
    if (a4)
    {
      v14 = _gsskrb5_krb5_import_cred(a1, id, 0, 0, a4);
      if (!v14)
      {
        *(*a4 + 8) |= 1u;
        krb5_cc_close(a3, id);
        goto LABEL_27;
      }

      v9 = v14;
      v12 = id;
      if (!id)
      {
        return v9;
      }

LABEL_16:
      krb5_cc_destroy(a3, v12);
      goto LABEL_26;
    }

    if (id)
    {
      v9 = 0;
      goto LABEL_25;
    }

LABEL_27:
    v9 = 0;
    *(a2 + 80) = step_acceptor_completed;
    *(a2 + 76) |= 2u;
    return v9;
  }

  *(a2 + 72) &= ~1u;
  *a1 = v13;
  v9 = 851968;
LABEL_14:
  v12 = id;
  if (!id)
  {
    goto LABEL_26;
  }

  if (a4)
  {
    goto LABEL_16;
  }

LABEL_25:
  krb5_cc_close(a3, v12);
LABEL_26:
  if (!v9)
  {
    goto LABEL_27;
  }

  return v9;
}

uint64_t __gsskrb5_ccache_lifetime(_DWORD *a1, _krb5_context *a2, _krb5_ccache *a3, uint64_t a4, void *a5)
{
  memset(&mcreds.client, 0, 112);
  v15 = 0u;
  v16 = 0;
  *&mcreds.magic = a4;
  if (!krb5_principal_get_realm())
  {
    _gsskrb5_clear_status();
    *a1 = -1765328238;
    return 851968;
  }

  v13 = 0u;
  memset(creds, 0, sizeof(creds));
  principal = krb5_make_principal();
  if (principal)
  {
    *a1 = principal;
    return 851968;
  }

  v11 = krb5_cc_retrieve_cred(a2, a3, 0, &mcreds, creds);
  krb5_free_principal(a2, mcreds.client);
  if (v11)
  {
    result = 0;
    *a1 = 0;
    *a5 = 0;
  }

  else
  {
    *a5 = *&creds[56];
    krb5_free_cred_contents(a2, creds);
    return 0;
  }

  return result;
}

uint64_t _gsskrb5_acquire_cred(krb5_error_code *a1, const krb5_principal_data *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, void **a6, gss_OID_set *a7, int *a8)
{
  v9 = a5;
  if (a5 < 3u)
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v16 = __ApplePrivate__gsskrb5_init(&v37);
    if (v16)
    {
      *a1 = v16;
      return 851968;
    }

    *a6 = 0;
    v19 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    v36 = v19;
    if (!v19)
    {
      v10 = 12;
      goto LABEL_3;
    }

    pthread_mutex_init((v19 + 48), 0);
    if (a2)
    {
      if (a2->magic == -1203)
      {
        *creds = 0;
        v20 = _acquire_uuid_name(a1, v37, a2, creds, v36);
        if (*creds)
        {
          *a1 = 0;
          v17 = 0x20000;
LABEL_36:
          v24 = &v36;
          goto LABEL_37;
        }

        v17 = v20;
        if (v20)
        {
          goto LABEL_36;
        }

LABEL_18:
        v23 = v36;
        *(v36 + 8) = v9;
        *a1 = 0;
        *a6 = v23;
        v17 = _gsskrb5_inquire_cred(a1, v23, 0, a8, 0, a7);
        if (!v17)
        {
          return v17;
        }

        v24 = a6;
LABEL_37:
        _gsskrb5_release_cred(&v35, v24);
        return v17;
      }

      v21 = krb5_copy_principal(v37, a2, v36);
      if (v21)
      {
        v22 = v21;
        _gsskrb5_release_cred(&v35, &v36);
        *a1 = v22;
        return 851968;
      }
    }

    if (v9 == 2)
    {
      goto LABEL_17;
    }

    v26 = v36;
    v25 = v37;
    opt = 0;
    principal = 0;
    id = 0;
    memset(creds, 0, sizeof(creds));
    v42 = 0u;
    if (!*v36)
    {
      goto LABEL_23;
    }

    if (!krb5_cc_cache_match(v37, *v36, &id))
    {
      goto LABEL_49;
    }

    v27 = id;
    if (!id)
    {
LABEL_23:
      default_principal = krb5_cc_default(v25, &id);
      if (default_principal)
      {
        goto LABEL_46;
      }

      v27 = id;
    }

    if (krb5_cc_get_principal(v25, v27, &principal))
    {
      krb5_cc_close(v25, id);
      principal = 0;
    }

    else
    {
      if (*v36)
      {
        if (!krb5_principal_compare(v25, *v36, principal))
        {
          krb5_free_principal(v25, principal);
          principal = 0;
          krb5_cc_close(v25, id);
          id = 0;
        }
      }

      else
      {
        default_principal = krb5_copy_principal(v25, principal, v36);
        if (default_principal)
        {
          goto LABEL_46;
        }
      }

      if (principal)
      {
        goto LABEL_49;
      }
    }

    if (!*v36)
    {
      default_principal = krb5_get_default_principal();
      if (default_principal)
      {
        goto LABEL_46;
      }
    }

    default_principal = get_keytab(v25, v36, 0);
    if (default_principal)
    {
      goto LABEL_46;
    }

    if (krb5_cc_cache_match(v25, *v36, &id))
    {
      default_principal = krb5_get_init_creds_opt_alloc(v25, &opt);
      if (!default_principal)
      {
        init_creds_keytab = krb5_get_init_creds_keytab(v25, creds, *v36, *(v36 + 2), 0, 0, opt);
        krb5_get_init_creds_opt_free(v25, opt);
        if (init_creds_keytab)
        {
LABEL_47:
          v17 = 851968;
LABEL_56:
          if (*creds)
          {
            krb5_free_cred_contents(v25, creds);
          }

          if (principal)
          {
            krb5_free_principal(v25, principal);
          }

          if (v17 && init_creds_keytab)
          {
            *a1 = init_creds_keytab;
            goto LABEL_64;
          }

          if (v17)
          {
            goto LABEL_64;
          }

LABEL_17:
          if ((a5 & 0xFFFD) != 0)
          {
            goto LABEL_18;
          }

          v32 = acquire_acceptor_cred(a1, v37, v36);
          if (!v32)
          {
            goto LABEL_18;
          }

          v17 = v32;
LABEL_64:
          pthread_mutex_destroy((v36 + 48));
          krb5_free_principal(v37, *v36);
          free(v36);
          return v17;
        }

        default_principal = krb5_cc_new_unique(v25, *MEMORY[0x277D13188], 0, &id);
        if (!default_principal)
        {
          v30 = krb5_cc_initialize(v25, id, *creds);
          v31 = id;
          if (v30)
          {
            init_creds_keytab = v30;
LABEL_53:
            krb5_cc_destroy(v25, v31);
            goto LABEL_47;
          }

          v34 = krb5_cc_store_cred(v25, id, creds);
          if (v34)
          {
            init_creds_keytab = v34;
            v31 = id;
            goto LABEL_53;
          }

          *(v36 + 3) = *&creds[56];
          v26[2] |= 1u;
LABEL_55:
          v17 = 0;
          init_creds_keytab = 0;
          *(v26 + 5) = id;
          goto LABEL_56;
        }
      }

LABEL_46:
      init_creds_keytab = default_principal;
      goto LABEL_47;
    }

LABEL_49:
    v33 = __gsskrb5_ccache_lifetime(a1, v25, id, *v36, v36 + 3);
    if (v33)
    {
      v17 = v33;
      krb5_cc_close(v25, id);
      init_creds_keytab = 0;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v10 = 35224071;
LABEL_3:
  *a1 = v10;
  return 851968;
}

uint64_t _acquire_uuid_name(krb5_error_code *a1, _krb5_context *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  if (*a3 != -1203)
  {
    return 196608;
  }

  if (*(a3 + 8) != 1)
  {
    return 0x20000;
  }

  if (strcmp(*(a3 + 24), "UUID"))
  {
    return 0x20000;
  }

  v12 = 0;
  v13 = 0;
  if (krb5_string_to_uuid())
  {
    return 0x20000;
  }

  principal = krb5_cc_resolve_by_uuid();
  if (principal || (principal = krb5_cc_get_principal(a2, *(a5 + 40), a5)) != 0)
  {
    *a1 = principal;
    return 851968;
  }

  else
  {
    *&v11.magic = 0;
    v11.data = 0;
    if (krb5_cc_get_config(a2, *(a5 + 40), 0, "iakerb", &v11))
    {
      return __gsskrb5_ccache_lifetime(a1, a2, *(a5 + 40), *a5, (a5 + 24));
    }

    else
    {
      *a4 = 1;
      *(a5 + 24) = 0x7FFFFFFFLL;
      krb5_data_free();
      return 0;
    }
  }
}

uint64_t acquire_acceptor_cred(_DWORD *a1, _krb5_context *a2, uint64_t a3)
{
  result = get_keytab(a2, a3, 0);
  if (result)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if (v8)
    {
      krb5_kt_close(a2, v8);
      *(a3 + 16) = 0;
    }

    *a1 = v7;
    return 851968;
  }

  else
  {
    *(a3 + 24) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t _gssiakerb_acquire_cred(krb5_error_code *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v24 = 0;
  v23 = 0;
  *&v21.magic = 0;
  v21.data = 0;
  v20 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v23);
  if (v10)
  {
    *a1 = v10;
    return 851968;
  }

  *a1 = 0;
  *a6 = 0;
  v11 = 851968;
  if (a2)
  {
    if (a5 <= 1)
    {
      v13 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
      v22 = v13;
      if (v13)
      {
        v14 = v13;
        pthread_mutex_init((v13 + 48), 0);
        v15 = _acquire_uuid_name(a1, v23, a2, &v20, v14);
        if (v15)
        {
          v11 = v15;
          _gsskrb5_release_cred(&v24, &v22);
          return v11;
        }

        if (!v20)
        {
          _gsskrb5_release_cred(&v24, &v22);
          return 0x20000;
        }

        if (!krb5_cc_get_config(v23, *(v14 + 40), 0, "password", &v21))
        {
          v16 = asprintf((v22 + 128), "%.*s", v21.magic, v21.data);
          bzero(v21.data, *&v21.magic);
          krb5_data_free();
          if (v16 < 1 || !*(v22 + 128))
          {
            _gsskrb5_release_cred(&v24, &v22);
            *a1 = 12;
            return v11;
          }

          goto LABEL_23;
        }

        if (krb5_cc_get_config(v23, *(v22 + 40), 0, "certificate-ref", &v21))
        {
          if (krb5_cc_get_config(v23, *(v22 + 40), 0, "iakerb", &v21))
          {
            _gsskrb5_release_cred(&v24, &v22);
LABEL_24:
            *a1 = 0;
            return v11;
          }

          *(v22 + 8) |= 4u;
          krb5_data_free();
LABEL_23:
          v11 = 0;
          v19 = v22;
          *(v22 + 32) = 1;
          *(v19 + 24) = 0x7FFFFFFFLL;
          *a6 = v19;
          goto LABEL_24;
        }

        alloc = hx509_certs_init();
        if (alloc || (alloc = hx509_query_alloc()) != 0)
        {
          cert = alloc;
          krb5_data_free();
          hx509_certs_free();
        }

        else
        {
          hx509_query_match_option();
          hx509_query_match_option();
          hx509_query_match_persistent();
          cert = _krb5_pk_find_cert();
          krb5_data_free();
          hx509_certs_free();
          hx509_query_free();
          if (!cert)
          {
            goto LABEL_23;
          }

          _gss_mg_log(1, "gss-krb5: failed to find certificate ref %d", cert);
        }

        _gsskrb5_release_cred(&v24, &v22);
        *a1 = cert;
      }
    }
  }

  return v11;
}

uint64_t _gss_iakerb_acquire_cred_ext(krb5_error_code *a1, const krb5_principal_data *a2, const gss_OID_desc *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v26 = 0;
  if (a7 > 1)
  {
    return 851968;
  }

  context = 0;
  if (__ApplePrivate__gsskrb5_init(&context))
  {
    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_c_cred_password_oid_desc))
  {
    if (*a4 == -1 || !a2)
    {
      return 851968;
    }

LABEL_11:
    v14 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    if (v14)
    {
      v15 = v14;
      pthread_mutex_init((v14 + 48), 0);
      *(v15 + 8) = 1;
      v16 = krb5_copy_principal(context, a2, v15);
      if (v16)
      {
        v17 = v16;
LABEL_32:
        pthread_mutex_destroy((v15 + 48));
        free(v15);
        goto LABEL_33;
      }

      if (a4)
      {
        v19 = malloc_type_malloc(*a4 + 1, 0x664AE47uLL);
        *(v15 + 16) = v19;
        if (!v19)
        {
          krb5_free_principal(context, *v15);
          pthread_mutex_destroy((v15 + 48));
          free(v15);
          result = 851968;
          v17 = 12;
          goto LABEL_34;
        }

        memcpy(v19, *(a4 + 8), *a4);
        *(*(v15 + 16) + *a4) = 0;
      }

      if (v26)
      {
        *(v15 + 15) = heim_retain();
      }

      *(v15 + 5) = 0;
      v20 = (v15 + 40);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0x7FFFFFFFLL;
      if (krb5_cc_cache_match(context, *v15, v15 + 5))
      {
        persistent = krb5_cc_new_unique(context, *MEMORY[0x277D13180], 0, v15 + 5);
        if (persistent)
        {
          goto LABEL_25;
        }
      }

      persistent = krb5_cc_initialize(context, *(v15 + 5), *v15);
      if (persistent)
      {
        goto LABEL_25;
      }

      *&v25.magic = 0;
      v25.data = 0;
      krb5_data_zero();
      krb5_cc_set_config(context, *(v15 + 5), 0, "iakerb", &v25);
      v24 = *(v15 + 16);
      if (v24)
      {
        v25.data = *(v15 + 16);
        *&v25.magic = strlen(v24);
        persistent = krb5_cc_set_config(context, *v20, 0, "password", &v25);
        if (persistent)
        {
          goto LABEL_25;
        }
      }

      if (!*(v15 + 15))
      {
LABEL_42:
        v17 = 0;
        result = 0;
        *a8 = v15;
        goto LABEL_34;
      }

      *&v25.magic = 0;
      v25.data = 0;
      persistent = hx509_cert_get_persistent();
      if (persistent)
      {
LABEL_25:
        v17 = persistent;
      }

      else
      {
        v17 = krb5_cc_set_config(context, *v20, 0, "certificate-ref", &v25);
        der_free_octet_string();
        if (!v17)
        {
          goto LABEL_42;
        }
      }

      krb5_free_principal(context, *v15);
      v22 = *(v15 + 16);
      if (v22)
      {
        v23 = strlen(*(v15 + 16));
        bzero(v22, v23);
        free(*(v15 + 16));
      }

      if (*(v15 + 15))
      {
        heim_release();
      }

      if (*v20)
      {
        krb5_cc_destroy(context, *v20);
      }

      goto LABEL_32;
    }

    return 851968;
  }

  if (gss_oid_equal(a3, &__gss_c_cred_certificate_oid_desc))
  {
    v26 = a4;
    goto LABEL_10;
  }

  if (!gss_oid_equal(a3, &__gss_c_cred_secidentity_oid_desc))
  {
    result = 851968;
    v17 = -1765328181;
    goto LABEL_34;
  }

  inited = hx509_cert_init_SecFramework();
  if (!inited)
  {
LABEL_10:
    a4 = 0;
    if (!a2)
    {
      return 851968;
    }

    goto LABEL_11;
  }

  v17 = inited;
LABEL_33:
  result = 851968;
LABEL_34:
  *a1 = v17;
  return result;
}

uint64_t _gss_krb5_acquire_cred_ext(int *a1, const krb5_principal_data *a2, const gss_OID_desc *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, void *a8)
{
  v89 = *MEMORY[0x277D85DE8];
  opt = 0;
  v82 = 0;
  v80 = 0;
  cache = 0;
  id = 0;
  v14 = __ApplePrivate__gsskrb5_init(&v80);
  if (v14)
  {
    *a1 = v14;
    return 851968;
  }

  v15 = a7;
  if (a7 >= 2u)
  {
    v16 = 35224071;
LABEL_5:
    *a1 = v16;
    return 851968;
  }

  if (!a2)
  {
    return 851968;
  }

  if (!gss_oid_equal(a3, &__gss_c_cred_heimbase_oid_desc))
  {
    if (!gss_oid_equal(a3, &__gss_c_cred_password_oid_desc))
    {
      goto LABEL_36;
    }

    v21 = malloc_type_malloc(*a4 + 1, 0x824DAD18uLL);
    v20 = v21;
    if (v21)
    {
      memcpy(v21, *(a4 + 8), *a4);
      v22 = 0;
      v73 = 0;
      v74 = 0;
      v23 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v24 = 0;
      v20[*a4] = 0;
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v17 = heim_dict_copy_value();
  if (v17)
  {
    v18 = v17;
    tid = heim_get_tid();
    if (tid == heim_string_get_type_id())
    {
      v20 = heim_string_copy_utf8();
      if (!v20)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v25 = heim_get_tid();
    if (v25 != heim_data_get_type_id())
    {
      v20 = 0;
      goto LABEL_21;
    }

    Length = CFDataGetLength(v18);
    v20 = malloc_type_malloc(Length + 1, 0x95993437uLL);
    if (v20)
    {
      BytePtr = CFDataGetBytePtr(v18);
      v28 = CFDataGetLength(v18);
      memcpy(v20, BytePtr, v28);
      v20[CFDataGetLength(v18)] = 0;
LABEL_21:
      heim_release();
      goto LABEL_22;
    }

LABEL_19:
    v24 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 12;
LABEL_53:
    if (opt)
    {
      krb5_get_init_creds_opt_free(v80, opt);
    }

    if (v82)
    {
      krb5_init_creds_free();
    }

    if (v24)
    {
      free(v24);
    }

    if (v29)
    {
      free(v29);
    }

    if (v20)
    {
      v42 = strlen(v20);
      bzero(v20, v42);
      free(v20);
    }

    if (cache)
    {
      krb5_cc_close(v80, cache);
    }

    if (id)
    {
      krb5_cc_destroy(v80, id);
    }

    if (v30)
    {
      if (*v30)
      {
        krb5_free_principal(v80, *v30);
      }

      pthread_mutex_destroy((v30 + 48));
      free(v30);
    }

    *a1 = v31;
    return 851968;
  }

  v20 = 0;
LABEL_22:
  if (heim_dict_copy_value())
  {
    v29 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v29 = 0;
  }

  if (heim_dict_copy_value())
  {
    v77 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v77 = 0;
  }

  v75 = heim_dict_copy_value();
  v76 = heim_dict_copy_value();
  v32 = heim_dict_copy_value();
  heim_dict_copy_value();
  if (v32)
  {
    inited = hx509_cert_init_SecFrameworkAuth();
    if (inited)
    {
      v31 = inited;
      v30 = 0;
      v24 = 0;
      goto LABEL_47;
    }

    heim_release();
    heim_release();
  }

  v74 = v29;
  if (heim_dict_copy_value())
  {
    v24 = heim_string_copy_utf8();
    heim_release();
  }

  else
  {
    v24 = 0;
  }

  v23 = heim_dict_copy_value();
  v34 = heim_dict_copy_value();
  v22 = v20 == 0;
  if (!v20)
  {
LABEL_36:
    v16 = -1765328181;
    goto LABEL_5;
  }

  v73 = v34;
LABEL_38:
  *a8 = 0;
  v35 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  v30 = v35;
  if (!v35)
  {
    init_creds_opt_alloc = krb5_enomem();
LABEL_45:
    v31 = init_creds_opt_alloc;
LABEL_46:
    v29 = v74;
LABEL_47:
    v39 = v75;
    v40 = v76;
    v41 = v77;
    if (!v77)
    {
LABEL_49:
      if (v39)
      {
        heim_release();
      }

      if (v40)
      {
        heim_release();
      }

      goto LABEL_53;
    }

LABEL_48:
    free(v41);
    goto LABEL_49;
  }

  v72 = v23;
  pthread_mutex_init((v35 + 48), 0);
  init_creds_opt_alloc = krb5_copy_principal(v80, a2, v30);
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  prefix_ops = krb5_cc_get_prefix_ops();
  if (prefix_ops == MEMORY[0x277D131A8] || prefix_ops == MEMORY[0x277D13198] || prefix_ops == MEMORY[0x277D131A0])
  {
    v38 = "XCTEMP";
  }

  else
  {
    v38 = v74;
  }

  v31 = krb5_cc_new_unique(v80, v38, 0, &id);
  if (v31)
  {
    goto LABEL_46;
  }

  init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(v80, &opt);
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  krb5_principal_get_realm();
  krb5_get_init_creds_opt_set_default_flags();
  krb5_get_init_creds_opt_set_forwardable(opt, 1);
  krb5_get_init_creds_opt_set_proxiable(opt, 1);
  krb5_get_init_creds_opt_set_renew_life(opt, 2592000);
  krb5_get_init_creds_opt_set_canonicalize(v80, opt);
  krb5_get_init_creds_opt_set_win2k();
  init_creds_opt_alloc = krb5_init_creds_init();
  if (init_creds_opt_alloc)
  {
    goto LABEL_45;
  }

  if (!v22)
  {
    v31 = krb5_init_creds_set_password();
    v44 = strlen(v20);
    bzero(v20, v44);
    free(v20);
    if (v31)
    {
      v20 = 0;
      goto LABEL_46;
    }
  }

  if (v24)
  {
    v31 = krb5_init_creds_set_kdc_hostname();
    free(v24);
    if (v31)
    {
LABEL_152:
      v20 = 0;
      v24 = 0;
      goto LABEL_46;
    }
  }

  if (v77)
  {
    v45 = krb5_init_creds_set_sitename();
    if (v45)
    {
      v31 = v45;
      v24 = 0;
      v20 = 0;
      v29 = v74;
      v39 = v75;
      v40 = v76;
      v41 = v77;
      goto LABEL_48;
    }
  }

  if (!v76 || (v46 = heim_get_tid(), v46 != heim_dict_get_type_id()))
  {
    theData = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_95;
  }

  v88 = 0uLL;
  v47 = heim_dict_copy_value();
  theData = heim_dict_copy_value();
  v48 = heim_dict_copy_value();
  if (v48)
  {
    v49 = heim_string_copy_utf8();
    if (!v47)
    {
      v50 = NEHelperCacheCopyAppUUIDMapping();
      if (v50)
      {
        v53 = v50;
        if (MEMORY[0x23EE6AD30](v50, v51, v52) == MEMORY[0x277D86440] && xpc_array_get_count(v53))
        {
          v88 = *xpc_array_get_uuid(v53, 0);
          xpc_release(v53);
          v60 = "NEHelperCacheCopyAppUUIDMapping";
          goto LABEL_107;
        }

        xpc_release(v53);
      }

      v54 = v80;
      v69 = v49;
      v55 = "Failed getting app uuid for signing identity: %s";
LABEL_110:
      v31 = 22;
      krb5_set_error_message(v54, 22, v55, v69);
      goto LABEL_144;
    }
  }

  else
  {
    if (!v47)
    {
      if (!theData)
      {
        v31 = 22;
        krb5_set_error_message(v80, 22, "No useful app source identity");
        v49 = 0;
        goto LABEL_144;
      }

      v61 = 0;
      v49 = 0;
      v70 = "unknown";
      goto LABEL_130;
    }

    v49 = 0;
  }

  v59 = heim_get_tid();
  if (v59 != heim_data_get_type_id() || CFDataGetLength(v47) != 16)
  {
    v54 = v80;
    v55 = "Failed getting app uuid";
    goto LABEL_110;
  }

  v88 = *CFDataGetBytePtr(v47);
  v60 = "passed-in";
LABEL_107:
  v70 = v60;
  if (!theData)
  {
    v68 = -1;
    goto LABEL_138;
  }

  v61 = 1;
LABEL_130:
  v64 = heim_get_tid();
  if (v64 != heim_data_get_type_id() || CFDataGetLength(theData) != 32)
  {
    krb5_set_error_message(v80, 22, "Failed getting audittoken");
    goto LABEL_136;
  }

  v65 = CFDataGetBytePtr(theData);
  v66 = *(v65 + 1);
  v86 = *v65;
  v87 = v66;
  *atoken.val = v86;
  *&atoken.val[4] = v66;
  v67 = audit_token_to_pid(&atoken);
  v68 = v67;
  if ((v61 & 1) == 0)
  {
    v85 = 0;
    v84 = 0u;
    memset(&atoken, 0, sizeof(atoken));
    if (proc_pidinfo(v67, 17, 1uLL, &atoken, 56) == 56)
    {
      v88 = *atoken.val;
      _gss_mg_log(1, "gss-krb5: setting source app: %s - %s, %d uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", "audit-token", v49, v68, LOBYTE(atoken.val[0]), BYTE1(atoken.val[0]), BYTE2(atoken.val[0]), HIBYTE(atoken.val[0]), LOBYTE(atoken.val[1]), BYTE1(atoken.val[1]), BYTE2(atoken.val[1]), HIBYTE(atoken.val[1]), LOBYTE(atoken.val[2]), BYTE1(atoken.val[2]), BYTE2(atoken.val[2]), HIBYTE(atoken.val[2]), LOBYTE(atoken.val[3]), BYTE1(atoken.val[3]), BYTE2(atoken.val[3]), HIBYTE(atoken.val[3]));
      goto LABEL_139;
    }

    krb5_set_error_message(v80, 22, "Failed getting PROC_PIDUNIQIDENTIFIERINFO");
LABEL_136:
    v31 = 22;
    goto LABEL_144;
  }

LABEL_138:
  _gss_mg_log(1, "gss-krb5: setting source app: %s - %s, %d uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v70, v49, v68, v88, BYTE1(v88), BYTE2(v88), BYTE3(v88), BYTE4(v88), BYTE5(v88), BYTE6(v88), BYTE7(v88), BYTE8(v88), BYTE9(v88), BYTE10(v88), BYTE11(v88), BYTE12(v88), BYTE13(v88), BYTE14(v88), HIBYTE(v88));
LABEL_139:
  v56 = krb5_init_creds_set_source_process();
  if (v56)
  {
    goto LABEL_96;
  }

LABEL_95:
  v56 = krb5_init_creds_get();
  if (v56)
  {
    goto LABEL_96;
  }

  *(v30 + 3) = _krb5_init_creds_get_cred_endtime();
  cred_client = _krb5_init_creds_get_cred_client();
  if (cred_client)
  {
    v58 = cred_client;
    if (!krb5_principal_compare(v80, cred_client, *v30))
    {
      krb5_free_principal(v80, *v30);
      v56 = krb5_copy_principal(v80, v58, v30);
      if (v56)
      {
        goto LABEL_96;
      }
    }
  }

  if (v74)
  {
    v56 = krb5_cc_resolve(v80, v74, &cache);
    if (v56)
    {
      goto LABEL_96;
    }
  }

  else if (!v73)
  {
    krb5_cc_cache_match(v80, *v30, &cache);
  }

  v56 = krb5_init_creds_store();
  if (v56)
  {
    goto LABEL_96;
  }

  v56 = krb5_init_creds_store_config();
  if (v56)
  {
    goto LABEL_96;
  }

  if (v75)
  {
    krb5_cc_set_acl();
  }

  if (v72)
  {
    v56 = check_credential(v80, v82, *v30, id, a4);
    if (v56)
    {
      goto LABEL_96;
    }
  }

  krb5_init_creds_free();
  v82 = 0;
  krb5_get_init_creds_opt_free(v80, opt);
  opt = 0;
  ops = krb5_cc_get_ops();
  v63 = cache;
  if (ops == MEMORY[0x277D131A8] && !cache)
  {
    v56 = krb5_cc_new_unique(v80, "XCACHE", 0, &cache);
    if (!v56)
    {
      v63 = cache;
      goto LABEL_123;
    }

LABEL_96:
    v31 = v56;
LABEL_144:
    if (v47)
    {
      heim_release();
    }

    if (theData)
    {
      heim_release();
    }

    if (v48)
    {
      heim_release();
    }

    if (v49)
    {
      free(v49);
    }

    goto LABEL_152;
  }

LABEL_123:
  if (!v63)
  {
    *(v30 + 5) = id;
    goto LABEL_155;
  }

  v56 = krb5_cc_move(v80, id, v63);
  if (v56)
  {
    goto LABEL_96;
  }

  *(v30 + 5) = cache;
  cache = 0;
  id = 0;
LABEL_155:
  *(v30 + 8) = v15;
  *a1 = 0;
  *a8 = v30;
  if (v74)
  {
    free(v74);
  }

  if (v77)
  {
    free(v77);
  }

  if (v76)
  {
    heim_release();
  }

  if (v47)
  {
    heim_release();
  }

  if (theData)
  {
    heim_release();
  }

  if (v48)
  {
    heim_release();
  }

  if (v49)
  {
    free(v49);
  }

  heim_release();
  return 0;
}

uint64_t check_credential(_krb5_context *a1, uint64_t a2, uint64_t a3, _krb5_ccache *a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  *&v17.magic = 0;
  v17.data = 0;
  memset(v22, 0, sizeof(v22));
  memset(&v23, 0, sizeof(v23));
  krb5_data_zero();
  type_id = heim_dict_get_type_id();
  if (type_id != heim_get_tid() || (v9 = heim_dict_copy_value()) == 0)
  {
LABEL_10:
    credentials = krb5_sname_to_principal(a1, 0, "host", 3, &v18);
    if (credentials)
    {
LABEL_13:
      v11 = credentials;
      goto LABEL_14;
    }

    v12 = v18;
    v19 = v18;
LABEL_12:
    *v22 = a3;
    *&v22[8] = v12;
    credentials = krb5_get_credentials(a1, 0, a4, v22, &v21);
    if (!credentials)
    {
      v11 = krb5_mk_req_extended(a1, &v20, 0, 0, v21, &v17);
      krb5_auth_con_free(a1, v20);
      v20 = 0;
      if (v11)
      {
        goto LABEL_14;
      }

      v11 = krb5_rd_req_in_ctx_alloc();
      if (v11)
      {
        return v11;
      }

      credentials = krb5_rd_req_in_set_pac_check();
      if (!credentials)
      {
        if (krb5_init_creds_get_as_reply_key() || (credentials = krb5_rd_req_in_set_as_reply_key(), !credentials))
        {
          credentials = krb5_rd_req_ctx();
          if (!credentials)
          {
            v14 = krb5_rd_req_out_copy_pac();
            if (v14)
            {
              v16[0] = 0;
              v16[1] = 0;
              if (!krb5_pac_copy_credential_package())
              {
                krb5_data_free();
              }
            }

            v11 = 0;
            goto LABEL_15;
          }
        }
      }
    }

    goto LABEL_13;
  }

  LODWORD(v16[0]) = 0;
  underlaying_mech_name = _gss_mg_get_underlaying_mech_name(v9, &__gss_krb5_mechanism_oid_desc);
  if (underlaying_mech_name)
  {
    if (_gsskrb5_canon_name(v16, a1, 0, 0, underlaying_mech_name, &v19))
    {
      if (LODWORD(v16[0]))
      {
        v11 = LODWORD(v16[0]);
      }

      else
      {
        v11 = 22;
      }

      goto LABEL_14;
    }

    v12 = v19;
    if (v19)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 22;
LABEL_14:
  v14 = 0;
LABEL_15:
  if (v21)
  {
    krb5_free_creds(a1, v21);
  }

  if (v18)
  {
    krb5_free_principal(a1, v18);
  }

  if (v24)
  {
    krb5_rd_req_in_ctx_free();
  }

  if (v25)
  {
    krb5_rd_req_out_ctx_free();
  }

  if (v14)
  {
    krb5_pac_free();
  }

  krb5_free_keyblock_contents(a1, &v23);
  krb5_auth_con_free(a1, v20);
  return v11;
}

uint64_t _gsspku2u_principal(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  *a3 = 0;
  if (!hx509_cert_find_subjectAltName_otherName())
  {
    if (v13)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        memset(v11, 0, sizeof(v11));
        if (decode_KRB5PrincipalName(*(v14 + 16 * v7 + 8), *(v14 + 16 * v7), v11, 0))
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          v10 = _krb5_principalname2krb5_principal();
          free_KRB5PrincipalName(v11);
          v9 = v10 != 0;
          if (!v9)
          {
            break;
          }
        }

        v7 = v8++;
      }

      while (v13 > v7);
      hx509_free_octet_string_list();
      if (!v9)
      {
        return 0;
      }
    }

    else
    {
      hx509_free_octet_string_list();
    }
  }

  if (hx509_cert_get_appleid() || (principal = krb5_make_principal(), MEMORY[0x23EE69B90](v12), principal))
  {
    result = krb5_make_principal();
    if (result)
    {
      return result;
    }

    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  result = 0;
  **a3 = v6;
  return result;
}

uint64_t _gsspku2u_acquire_cred(_DWORD *a1, const krb5_principal_data *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, void *a6, void *a7, _DWORD *a8)
{
  v9 = a5;
  if (a5 >= 3u)
  {
    *a1 = 35224071;
    return 851968;
  }

  context = 0;
  v15 = __ApplePrivate__gsskrb5_init(&context);
  if (v15)
  {
    *a1 = v15;
    return 851968;
  }

  *a6 = 0;
  if (a8)
  {
    *a8 = -1;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a2 && !krb5_principal_is_pku2u())
  {
    *a1 = 0;
    return 0x20000;
  }

  v17 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  if (!v17)
  {
    return 851968;
  }

  v18 = v17;
  pthread_mutex_init((v17 + 48), 0);
  *(v18 + 8) = v9;
  if (v9 != 2)
  {
    alloc = hx509_certs_init();
    if (alloc || (alloc = hx509_query_alloc()) != 0)
    {
      cert = alloc;
    }

    else
    {
      hx509_query_match_option();
      hx509_query_match_option();
      if (a2)
      {
        hx509_query_match_cmp_func();
      }

      cert = _krb5_pk_find_cert();
      hx509_query_free();
      if (!cert)
      {
        v23 = a2 ? krb5_copy_principal(context, a2, v18) : _gsspku2u_principal(context, *(v18 + 15), v18);
        cert = v23;
        if (!v23)
        {
          goto LABEL_14;
        }
      }
    }

    *a1 = cert;
LABEL_20:
    v21 = *(v18 + 2);
    if (v21)
    {
      krb5_kt_close(context, v21);
    }

    pthread_mutex_destroy((v18 + 48));
    free(v18);
    return 851968;
  }

LABEL_14:
  if ((a5 & 0xFFFD) == 0)
  {
    keytab = get_keytab(context, v18, 1);
    if (keytab)
    {
      *a1 = keytab;
      goto LABEL_20;
    }
  }

  result = 0;
  *a6 = v18;
  return result;
}

uint64_t get_keytab(_krb5_context *a1, krb5_keytab *a2, uint64_t a3)
{
  v3 = a3;
  pthread_mutex_lock(&gssapi_keytab_mutex);
  if (_gsskrb5_keytab)
  {
    *&entry.magic = 0;
    full_name = krb5_kt_get_full_name();
    if (!full_name)
    {
      full_name = krb5_kt_resolve(a1, *&entry.magic, a2 + 2);
      krb5_xfree();
    }

    if (full_name)
    {
      goto LABEL_7;
    }
  }

  else
  {
    full_name = krb5_kt_default(a1, a2 + 2);
    if (full_name)
    {
      goto LABEL_7;
    }
  }

  if (*a2)
  {
    v12 = 0;
    memset(&entry, 0, sizeof(entry));
    if (krb5_principal_is_gss_hostbased_service())
    {
      v8 = **(*a2 + 2);
      if (!check_keytab(a1, a2, v8, v3))
      {
        full_name = 2529639093;
        krb5_set_error_message(a1, -1765328203, "Didn't find service %s in keytab", v8);
        goto LABEL_7;
      }

LABEL_14:
      full_name = 0;
      goto LABEL_15;
    }

    v10 = krb5_kt_get_entry(a1, a2[2], *a2, 0, 0, &entry);
    if (v10)
    {
      full_name = v10;
    }

    else
    {
      krb5_free_principal(a1, *a2);
      full_name = krb5_copy_principal(a1, *&entry.magic, a2);
      krb5_kt_free_entry();
      if (!full_name)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (check_keytab(a1, a2, 0, v3))
    {
      goto LABEL_14;
    }

    full_name = 2529639093;
  }

LABEL_7:
  v7 = a2[2];
  if (v7)
  {
    krb5_kt_close(a1, v7);
    a2[2] = 0;
  }

LABEL_15:
  pthread_mutex_unlock(&gssapi_keytab_mutex);
  return full_name;
}

uint64_t check_keytab(_krb5_context *a1, uint64_t a2, const char *a3, int a4)
{
  v17 = 0;
  memset(&entry, 0, sizeof(entry));
  memset(cursor, 0, sizeof(cursor));
  if (krb5_kt_start_seq_get(a1, *(a2 + 16), cursor))
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      if (krb5_kt_next_entry(a1, *(a2 + 16), &entry, cursor))
      {
        v8 = 0;
        goto LABEL_20;
      }

      if (!a3)
      {
        break;
      }

      if (*(*&entry.magic + 8))
      {
        v9 = strcmp(**(*&entry.magic + 16), a3);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = a4 == 0;
        }

        if (!v10)
        {
          goto LABEL_13;
        }

        v11 = v9;
        krb5_kt_free_entry();
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        krb5_kt_free_entry();
      }
    }

    if (!a4)
    {
      break;
    }

LABEL_13:
    is_lkdc = krb5_principal_is_lkdc();
    v13 = krb5_principal_is_pku2u() | is_lkdc;
    krb5_kt_free_entry();
    if (v13)
    {
      goto LABEL_19;
    }
  }

  krb5_kt_free_entry();
LABEL_19:
  v8 = 1;
LABEL_20:
  krb5_kt_end_seq_get(a1, *(a2 + 16), cursor);
  return v8;
}

uint64_t _gsskrb5_add_cred(int *a1, uint64_t a2, const krb5_principal_data *a3, const gss_OID_desc *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, gss_OID_set *a9, _DWORD *a10, _DWORD *a11)
{
  context = 0;
  v41 = 0;
  v17 = __ApplePrivate__gsskrb5_init(&context);
  if (v17)
  {
    *a1 = v17;
    return 851968;
  }

  if (!gss_oid_equal(a4, &__gss_krb5_mechanism_oid_desc))
  {
    *a1 = 0;
    return 0x10000;
  }

  if (!(a2 | a8) || !a2)
  {
    *a1 = 0;
    return 458752;
  }

  if (a8)
  {
    pthread_mutex_lock((a2 + 48));
    v20 = *(a2 + 32);
    if (v20 != a5)
    {
      if (v20)
      {
        pthread_mutex_unlock((a2 + 48));
        v21 = 35224071;
LABEL_28:
        *a1 = v21;
        return 851968;
      }
    }
  }

  if (a3 && krb5_principal_compare(context, a3, *a2))
  {
    if (a8)
    {
      pthread_mutex_unlock((a2 + 48));
    }

    *a1 = 0;
    return 0x20000;
  }

  if (!a8)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v22 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
  if (!v22)
  {
    pthread_mutex_unlock((a2 + 48));
    v21 = 12;
    goto LABEL_28;
  }

  v23 = v22;
  *(v22 + 8) = a5;
  *(v22 + 3) = *(a2 + 24);
  *v22 = 0;
  *(v22 + 2) = 0;
  v24 = (v22 + 16);
  *(v22 + 5) = 0;
  v25 = (v22 + 40);
  pthread_mutex_init((v22 + 48), 0);
  v26 = krb5_copy_principal(context, *a2, v23);
  if (v26)
  {
    v27 = v26;
    pthread_mutex_unlock((a2 + 48));
    free(v23);
    *a1 = v27;
    return 851968;
  }

  if (*(a2 + 16))
  {
    v40 = 0;
    full_name = krb5_kt_get_full_name();
    if (full_name)
    {
      v30 = full_name;
LABEL_40:
      *a1 = v30;
      v18 = 851968;
      goto LABEL_54;
    }

    v30 = krb5_kt_resolve(context, v40, v24);
    krb5_xfree();
    if (v30)
    {
      goto LABEL_40;
    }
  }

  v31 = *(a2 + 40);
  if (v31)
  {
    v40 = 0;
    type = krb5_cc_get_type(context, v31);
    if (!type)
    {
      goto LABEL_49;
    }

    v33 = type;
    if (!strcmp(type, "MEMORY"))
    {
      v36 = krb5_cc_new_unique(context, v33, 0, v25);
      if (v36 || (v36 = krb5_cc_copy_cache(), v36))
      {
        v18 = v36;
        goto LABEL_53;
      }

      goto LABEL_24;
    }

    name = krb5_cc_get_name(context, *(a2 + 40));
    if (!name)
    {
LABEL_49:
      v18 = 851968;
      LODWORD(v36) = 12;
      goto LABEL_53;
    }

    v35 = asprintf(&v40, "%s:%s", v33, name);
    v18 = 851968;
    LODWORD(v36) = 12;
    if (v35 < 0 || !v40)
    {
      goto LABEL_53;
    }

    v37 = krb5_cc_resolve(context, v40, v25);
    free(v40);
    if (v37)
    {
      LODWORD(v36) = v37;
      v18 = 851968;
LABEL_53:
      *a1 = v36;
      goto LABEL_54;
    }
  }

LABEL_24:
  pthread_mutex_unlock((a2 + 48));
  v28 = _gsskrb5_inquire_cred(a1, a2, 0, &v41, 0, a9);
  if (v28)
  {
    v18 = v28;
    if (!v23)
    {
LABEL_61:
      if (a8)
      {
        pthread_mutex_unlock((a2 + 48));
      }

      return v18;
    }

LABEL_54:
    if (*v23)
    {
      krb5_free_principal(context, *v23);
    }

    v38 = *(v23 + 2);
    if (v38)
    {
      krb5_kt_close(context, v38);
    }

    v39 = *(v23 + 5);
    if (v39)
    {
      krb5_cc_destroy(context, v39);
    }

    free(v23);
    goto LABEL_61;
  }

  if (a10)
  {
    *a10 = v41;
  }

  if (a11)
  {
    *a11 = v41;
  }

  if (a8)
  {
    *a8 = v23;
  }

  v18 = 0;
  *a1 = 0;
  return v18;
}

uint64_t _gsskrb5i_address_to_krb5addr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && (a2 == 24 || a2 == 2) && !krb5_h_addr2sockaddr())
  {
    return krb5_sockaddr2address();
  }

  else
  {
    return 851968;
  }
}

uint64_t _gk_wrap_iov(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7)
{
  v10 = a3;
  v15 = 0;
  v13 = __ApplePrivate__gsskrb5_init(&v15);
  if (v13)
  {
    *a1 = v13;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_wrap_cfx_iov(a1, a2, v15, v10, a5, a6, a7);
  }

  return 851968;
}

uint64_t _gk_unwrap_iov(_DWORD *a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unsigned __int16 *a5, uint64_t a6)
{
  v14 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v14);
  if (v12)
  {
    *a1 = v12;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_unwrap_cfx_iov(a1, a2, v14, a3, a4, a5, a6);
  }

  return 851968;
}

uint64_t _gk_wrap_iov_length(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7)
{
  v7 = a7;
  v11 = a3;
  v16 = 0;
  v14 = __ApplePrivate__gsskrb5_init(&v16);
  if (v14)
  {
    *a1 = v14;
  }

  else if ((*(a2 + 76) & 0x40) != 0)
  {
    return _gssapi_wrap_iov_length_cfx(a1, a2, v16, v11, a4, a5, a6, v7);
  }

  return 851968;
}

uint64_t _gssapi_get_mic_arcfour(int *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, size_t *a5, size_t *a6, _DWORD *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = 0;
  size = 0;
  v20 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  _gsskrb5_encap_length(22, &v20, &size, &__gss_krb5_mechanism_oid_desc);
  v13 = size;
  *a6 = size;
  v14 = malloc_type_malloc(v13, 0x74E1585DuLL);
  a6[1] = v14;
  if (v14)
  {
    mech_header = _gssapi_make_mech_header(v14, v20, &__gss_krb5_mechanism_oid_desc);
    *mech_header = 1114369;
    *(mech_header + 1) = -1;
    v16 = arcfour_mic_cksum(a3, a7, 23, mech_header + 2, mech_header, a5[1], *a5, 0, 0);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = arcfour_mic_key(a3, a7, (mech_header + 16), 8, v33);
      if (!v17)
      {
        pthread_mutex_lock((a2 + 128));
        krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v21);
        _gss_mg_encode_be_uint32(v21++, mech_header + 2);
        krb5_auth_con_setlocalseqnumber();
        pthread_mutex_unlock((a2 + 128));
        *(mech_header + 3) = 16843009 * ((*(a2 + 76) & 1) - 1);
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
        result = 0;
        goto LABEL_7;
      }
    }

    _gsskrb5_release_buffer(a1, a6);
    result = 851968;
  }

  else
  {
    result = 851968;
    v17 = 12;
  }

LABEL_7:
  *a1 = v17;
  return result;
}

uint64_t arcfour_mic_cksum(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  v13 = malloc_type_malloc(a7 + a9 + 8, 0x6E553575uLL);
  if (!v13)
  {
    return 12;
  }

  v14 = v13;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  *v13 = *a5;
  v15 = v13 + 1;
  memcpy(v13 + 1, a6, a7);
  memcpy(v15 + a7, a8, a9);
  v16 = krb5_crypto_init();
  if (v16)
  {
    checksum = v16;
    free(v14);
  }

  else
  {
    checksum = krb5_create_checksum();
    free(v14);
    if (!checksum)
    {
      *a4 = *v21;
      free_Checksum(v20);
    }

    krb5_crypto_destroy();
  }

  return checksum;
}

uint64_t arcfour_mic_key(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 24)
  {
    result = krb5_hmac();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = krb5_hmac();
    if (result)
    {
      return result;
    }
  }

  return krb5_hmac();
}

uint64_t _gssapi_verify_mic_arcfour(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, _DWORD *a6, _DWORD *a7, unsigned __int16 *a8)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  v21 = 0;
  v13 = *a5;
  v20 = a5[1];
  v14 = _gsskrb5_verify_header(&v20, v13, a8, &__gss_krb5_mechanism_oid_desc);
  if (!v14)
  {
    v16 = v20;
    if (*v20 != 17)
    {
      return 393216;
    }

    ++v20;
    if (*(v16 + 1) != -1)
    {
      return 393216;
    }

    v20 = v16 + 3;
    v18 = arcfour_mic_cksum(a3, a7, 23, &v34, v16 - 1, *(a4 + 8), *a4, 0, 0);
    if (v18 || (v18 = arcfour_mic_key(a3, a7, &v34, 8, v33)) != 0)
    {
      v15 = 851968;
    }

    else
    {
      v18 = ct_memcmp();
      if (v18)
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
        v33[0] = 0;
        v33[1] = 0;
        _gss_mg_decode_be_uint32(v35, &v21);
        v19 = ct_memcmp();
        v35[0] = 0;
        if (!v19)
        {
          pthread_mutex_lock((a2 + 128));
          v15 = _gssapi_msg_order_check(*(a2 + 24), v21);
          pthread_mutex_unlock((a2 + 128));
          if (v15)
          {
            return v15;
          }

          v18 = 0;
          goto LABEL_12;
        }

        v18 = 0;
      }

      v15 = 393216;
    }

LABEL_12:
    *a1 = v18;
    return v15;
  }

  return v14;
}

uint64_t _gssapi_wrap_arcfour(_DWORD *a1, uint64_t a2, _krb5_context *a3, int a4, uint64_t a5, uint64_t a6, _DWORD *a7, size_t *a8, uint64_t a9)
{
  v49[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    *a7 = 0;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v16 = *a6;
  if ((*(a2 + 73) & 0x10) != 0)
  {
    v36 = 32;
    _gssapi_encap_length(32, &v36, &v35, &__gss_krb5_mechanism_oid_desc);
    v17 = v35 + v16;
    v35 += v16;
  }

  else
  {
    v36 = v16 + 33;
    _gssapi_encap_length(v16 + 33, &v36, &v35, &__gss_krb5_mechanism_oid_desc);
    v17 = v35;
    ++v16;
  }

  *a8 = v17;
  v18 = malloc_type_malloc(v17, 0x58C8E777uLL);
  a8[1] = v18;
  if (!v18)
  {
    *a1 = 12;
    return 851968;
  }

  mech_header = _gssapi_make_mech_header(v18, v36, &__gss_krb5_mechanism_oid_desc);
  v20 = mech_header;
  *mech_header = 1114370;
  if (a4)
  {
    v21 = 16;
  }

  else
  {
    v21 = -1;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  mech_header[4] = v21;
  mech_header[5] = v22;
  *(mech_header + 3) = -1;
  pthread_mutex_lock((a2 + 128));
  krb5_auth_con_getlocalseqnumber(a3, *(a2 + 40), &v31);
  _gss_mg_encode_be_uint32(v31++, v20 + 2);
  krb5_auth_con_setlocalseqnumber();
  pthread_mutex_unlock((a2 + 128));
  *(v20 + 3) = 16843009 * ((*(a2 + 76) & 1) - 1);
  krb5_generate_random_block();
  memcpy(v20 + 32, *(a6 + 8), *a6);
  if ((*(a2 + 73) & 0x10) == 0)
  {
    v20[*a6 + 32] = 1;
  }

  v23 = arcfour_mic_cksum(a3, a9, 22, v20 + 2, v20, v20 + 24, 8uLL, v20 + 32, v16);
  if (v23)
  {
    *a1 = v23;
    _gsskrb5_release_buffer(a1, a8);
    return 851968;
  }

  v24 = 0;
  LODWORD(v32) = *a9;
  v33 = 16;
  v34 = v49;
  v25 = *(a9 + 16);
  do
  {
    *(v49 + v24) = *(v25 + v24) ^ 0xF0;
    ++v24;
  }

  while (v24 != 16);
  v26 = arcfour_mic_key(a3, &v32, (v20 + 8), 4, v48);
  v49[0] = 0;
  v49[1] = 0;
  if (v26)
  {
    v27 = v26;
    _gsskrb5_release_buffer(a1, a8);
    *a1 = v27;
    return 851968;
  }

  if (a4)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    hc_EVP_CIPHER_CTX_init();
    hc_EVP_rc4();
    hc_EVP_CipherInit_ex();
    hc_EVP_Cipher();
    hc_EVP_CIPHER_CTX_cleanup();
  }

  v48[0] = 0;
  v48[1] = 0;
  v28 = arcfour_mic_key(a3, a9, (v20 + 16), 8, v48);
  if (v28)
  {
    v29 = v28;
    _gsskrb5_release_buffer(a1, a8);
    *a1 = v29;
    return 851968;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  hc_EVP_CIPHER_CTX_init();
  hc_EVP_rc4();
  hc_EVP_CipherInit_ex();
  hc_EVP_Cipher();
  hc_EVP_CIPHER_CTX_cleanup();
  if (a7)
  {
    *a7 = a4;
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t _gssapi_unwrap_arcfour(int *a1, uint64_t a2, uint64_t a3, unint64_t *a4, size_t *a5, int *a6, _DWORD *a7, uint64_t a8)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v33 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v15 = *a4;
  v34 = a4[1];
  if ((*(a2 + 73) & 0x10) != 0)
  {
    if (v15 < 0x2D)
    {
      return 0x10000;
    }

    v15 = 45;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v16 = _gssapi_verify_mech_header(&v34, v15, &__gss_krb5_mechanism_oid_desc);
  if (!v16)
  {
    v18 = v34 - a4[1] + 32;
    v19 = *a4 - v18;
    if (*a4 < v18)
    {
      return 0x10000;
    }

    if (*v34 != 258 || *(v34 + 1) != 17)
    {
      return 393216;
    }

    v21 = *(v34 + 2);
    v22 = v21 != 16;
    if (v21 == 16)
    {
      v23 = 1;
    }

    else
    {
      if (*(v34 + 2) != -1)
      {
        return 393216;
      }

      v23 = 0;
    }

    if (*(v34 + 3) != -1)
    {
      return 393216;
    }

    v24 = arcfour_mic_key(a3, a8, (v34 + 2), 8, &v52);
    if (v24)
    {
      goto LABEL_22;
    }

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    hc_EVP_CIPHER_CTX_init();
    hc_EVP_rc4();
    hc_EVP_CipherInit_ex();
    hc_EVP_Cipher();
    hc_EVP_CIPHER_CTX_cleanup();
    v52 = 0;
    v53 = 0;
    _gss_mg_decode_be_uint32(&v51, &v35);
    if (!ct_memcmp())
    {
      v25 = 0;
      LODWORD(v36) = *a8;
      v37 = 16;
      v38 = v54;
      v26 = *(a8 + 16);
      do
      {
        *(v54 + v25) = *(v26 + v25) ^ 0xF0;
        ++v25;
      }

      while (v25 != 16);
      v24 = arcfour_mic_key(a3, &v36, &v51, 4, &v52);
      v54[0] = 0;
      v54[1] = 0;
      if (v24)
      {
LABEL_22:
        v17 = 851968;
LABEL_25:
        *a1 = v24;
        return v17;
      }

      v27 = malloc_type_malloc(v19, 0xDEFCD59uLL);
      a5[1] = v27;
      if (!v27)
      {
        v17 = 851968;
        v24 = 12;
        goto LABEL_25;
      }

      *a5 = v19;
      if (v22)
      {
        v50 = v34[3];
        memcpy(v27, v34 + 4, v19);
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        hc_EVP_CIPHER_CTX_init();
        hc_EVP_rc4();
        hc_EVP_CipherInit_ex();
        hc_EVP_Cipher();
        hc_EVP_Cipher();
        hc_EVP_CIPHER_CTX_cleanup();
      }

      v52 = 0;
      v53 = 0;
      if ((*(a2 + 73) & 0x10) != 0)
      {
        v29 = 0;
        v30 = *a5;
      }

      else
      {
        v28 = _gssapi_verify_pad(a5, v19, &v33);
        if (v28)
        {
          v17 = v28;
          _gsskrb5_release_buffer(a1, a5);
          v24 = 0;
          goto LABEL_25;
        }

        v29 = v33;
        v30 = *a5 - v33;
        *a5 = v30;
      }

      v31 = arcfour_mic_cksum(a3, a8, 22, &v39, v34, &v50, 8uLL, a5[1], v29 + v30);
      if (v31)
      {
        v32 = v31;
        _gsskrb5_release_buffer(a1, a5);
        v17 = 851968;
        v24 = v32;
        goto LABEL_25;
      }

      if (ct_memcmp())
      {
        pthread_mutex_lock((a2 + 128));
        v17 = _gssapi_msg_order_check(*(a2 + 24), v35);
        pthread_mutex_unlock((a2 + 128));
        if (v17)
        {
          return v17;
        }

        v24 = 0;
        v17 = 0;
        if (a6)
        {
          *a6 = v23;
        }

        goto LABEL_25;
      }

      _gsskrb5_release_buffer(a1, a5);
    }

    v24 = 0;
    v17 = 393216;
    goto LABEL_25;
  }

  return v16;
}

uint64_t _gssapi_wrap_size_arcfour(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v12 = krb5_crypto_init();
  if (v12)
  {
    *a1 = v12;
    return 851968;
  }

  else
  {
    if ((*(a2 + 73) & 0x10) != 0)
    {
      v15 = 0;
      v16 = 32;
      _gssapi_encap_length(32, &v16, &v15, &__gss_krb5_mechanism_oid_desc);
      if (v16 <= a6)
      {
        v14 = a6 - v16;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = a6 + 48;
      _gsskrb5_encap_length(v16, &v16, &v15, &__gss_krb5_mechanism_oid_desc);
      if (v15 - a6 >= a6)
      {
        v14 = 0;
      }

      else
      {
        v14 = (a6 - (v15 - a6)) & 0xFFFFFFF8;
      }
    }

    *a7 = v14;
    krb5_crypto_destroy();
    return 0;
  }
}

uint64_t _gsskrb5_canonicalize_name(_DWORD *a1, const krb5_principal_data *a2, uint64_t a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  *a4 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v10);
  if (v7)
  {
    *a1 = v7;
    return 851968;
  }

  else
  {
    result = _gsskrb5_canon_name(a1, v10, 1, 0, a2, &v9);
    if (!result)
    {
      *a4 = v9;
    }
  }

  return result;
}

uint64_t _gsskrb5cfx_wrap_length_cfx(uint64_t a1, void *a2, int a3, unint64_t a4, unint64_t *a5, void *a6, _WORD *a7)
{
  *a5 = 16;
  *a7 = 0;
  result = krb5_crypto_get_checksum_type();
  if (!result)
  {
    result = krb5_checksumsize();
    if (!result)
    {
      if (a3)
      {
        if ((*(a2 + 9) & 2) != 0)
        {
          result = krb5_crypto_getblocksize();
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = krb5_crypto_getpadsize();
          if (result)
          {
            return result;
          }
        }

        a4 += 16;
        v13 = *a5 + krb5_get_wrapped_length();
      }

      else
      {
        v13 = *a6 + a4 + *a5;
      }

      *a5 = v13;
      if (v13 <= a4)
      {
        _gsskrb5cfx_wrap_length_cfx_cold_1();
      }

      return 0;
    }
  }

  return result;
}

uint64_t _gssapi_wrap_size_cfx(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, unsigned int *a7)
{
  *a7 = 0;
  v7 = a6 - 16;
  if (a6 < 0x10)
  {
    return 0;
  }

  if (a4)
  {
    v9 = a6 - 31;
    v10 = a6 - 15 - 1;
    do
    {
      wrapped_length = krb5_get_wrapped_length();
      --v9;
      v12 = v10-- != 0;
    }

    while (v12 && wrapped_length > v7);
    if ((v10 + 1) >= 0x10)
    {
      result = 0;
      *a7 = v9;
      return result;
    }

    return 0;
  }

  result = krb5_crypto_get_checksum_type();
  if (!result)
  {
    result = krb5_checksumsize();
    if (!result)
    {
      result = 0;
      *a7 = v7;
    }
  }

  return result;
}

uint64_t _gssapi_wrap_cfx_iov(int *a1, void *a2, uint64_t a3, int a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7)
{
  v7 = a7;
  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (!buffer)
  {
    goto LABEL_21;
  }

  v14 = buffer;
  v15 = _gss_mg_find_buffer(a6, v7, 9);
  v16 = v15;
  if (v15)
  {
    *(v15 + 1) = 0;
  }

  v17 = _gss_mg_find_buffer(a6, v7, 7);
  v18 = v17;
  if ((*(a2 + 9) & 2) != 0)
  {
    if (v16 | v17)
    {
      goto LABEL_21;
    }
  }

  else if (!v16)
  {
    goto LABEL_21;
  }

  v71 = 0;
  *a1 = 0;
  if (!a4)
  {
    if ((*(a2 + 9) & 2) == 0)
    {
      v22 = krb5_crypto_length();
      *a1 = v22;
      if (v22)
      {
        return 851968;
      }

      v23 = 0;
      v24 = 16;
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

LABEL_21:
    *a1 = 22;
    return 851968;
  }

  if (v7 >= 1)
  {
    v19 = 0;
    v20 = v7;
    v21 = a6 + 4;
    do
    {
      if (*(v21 - 4) == 1)
      {
        v19 += *v21;
      }

      v21 += 3;
      --v20;
    }

    while (v20);
  }

  v28 = krb5_crypto_length();
  *a1 = v28;
  if (v28)
  {
    return 851968;
  }

  v29 = krb5_crypto_length();
  *a1 = v29;
  if (v29)
  {
    return 851968;
  }

  v30 = krb5_crypto_length();
  *a1 = v30;
  if (v30)
  {
    return 851968;
  }

  if ((*(a2 + 9) & 2) != 0)
  {
    v32 = krb5_crypto_getblocksize();
    *a1 = v32;
    if (v32)
    {
      return 851968;
    }
  }

  v24 = 16;
  v23 = 16;
  if (!v18)
  {
LABEL_33:
    v25 = v23;
    v24 = v23 + 16;
    goto LABEL_34;
  }

LABEL_18:
  if (*(v18 + 2))
  {
    v31 = _gk_allocate_buffer(a1, v18, v23);
    if (v31)
    {
      goto LABEL_38;
    }

    v25 = 0;
    v24 = 16;
  }

  else
  {
    if (*(v18 + 8) < v23)
    {
LABEL_36:
      v33 = -1765328194;
LABEL_60:
      *a1 = v33;
LABEL_81:
      v26 = 851968;
      goto LABEL_82;
    }

    v25 = 0;
    *(v18 + 8) = v23;
  }

LABEL_34:
  if (*(v14 + 2))
  {
    v70 = v25;
    v31 = _gk_allocate_buffer(a1, v14, v24);
    if (!v31)
    {
      goto LABEL_40;
    }

LABEL_38:
    v26 = v31;
LABEL_82:
    __ApplePrivate_gss_release_iov_buffer(&v71, a6, v7);
    return v26;
  }

  if (*(v14 + 8) < v24)
  {
    goto LABEL_36;
  }

  v70 = v25;
  *(v14 + 8) = v24;
LABEL_40:
  v34 = *(v14 + 16);
  *v34 = -16776187;
  v35 = a2[1] & 5;
  if (v35)
  {
    *(v34 + 2) = v35;
  }

  if (a4)
  {
    *(v34 + 2) = v35 | 2;
  }

  v69 = v34;
  *(v34 + 5) = 0;
  v36 = v34 + 5;
  *(v34 + 4) = 0;
  *(v34 + 6) = 0;
  _gss_mg_encode_be_uint32(*(a2 + 4), (v34 + 8));
  v68 = v36;
  _gss_mg_encode_be_uint32(*(a2 + 3), (v36 + 7));
  v37 = *(a2 + 3);
  *(a2 + 3) = v37 + 1;
  if (v37 == -1)
  {
    ++*(a2 + 4);
  }

  v38 = malloc_type_calloc(v7 + 3, 0x18uLL, 0x10800404ACF7207uLL);
  if (!v38)
  {
    v33 = 12;
    goto LABEL_60;
  }

  v39 = v38;
  if (!a4)
  {
    if (v7 < 1)
    {
      v60 = 0;
    }

    else
    {
      v53 = v38 + 2;
      v54 = (a6 + 8);
      v55 = v7;
      do
      {
        v56 = *(v54 - 8);
        if (v56 == 11)
        {
          v57 = 3;
        }

        else
        {
          v57 = 0;
        }

        if (v56 == 1)
        {
          v58 = 2;
        }

        else
        {
          v58 = v57;
        }

        *(v53 - 4) = v58;
        v59 = *v54;
        *(v53 - 1) = *(v54 - 1);
        *v53 = v59;
        v53 += 3;
        v54 += 3;
        --v55;
      }

      while (v55);
      v60 = v7;
    }

    v65 = &v38[3 * v60];
    *v65 = 2;
    v66 = *(v14 + 16);
    *(v65 + 1) = 16;
    *(v65 + 2) = v66;
    *(v65 + 6) = 6;
    if (v18)
    {
      v67 = *(v18 + 16);
    }

    else
    {
      v67 = v66 + 16;
    }

    *(v65 + 4) = 0;
    *(v65 + 5) = v67;
    checksum_iov = krb5_create_checksum_iov();
    if (!checksum_iov)
    {
      if (v70)
      {
        *(v69 + 6) = bswap32(v70) >> 16;
      }

      *(v69 + 4) = 0;
      v63 = 0;
      v64 = v68;
      goto LABEL_86;
    }

LABEL_80:
    *a1 = checksum_iov;
    free(v39);
    goto LABEL_81;
  }

  v40 = 1;
  *v38 = 1;
  v41 = *(v14 + 16);
  v42 = v41 + *(v14 + 8);
  v38[1] = 0;
  v38[2] = v42;
  if (v7 >= 1)
  {
    v43 = 0;
    v40 = v7 + 1;
    do
    {
      v44 = &a6[v43 / 2];
      v45 = a6[v43 / 2];
      v46 = &v38[v43 / 8];
      if (v45 == 11)
      {
        v47 = 3;
      }

      else
      {
        v47 = 0;
      }

      if (v45 == 1)
      {
        v48 = 2;
      }

      else
      {
        v48 = v47;
      }

      *(v46 + 6) = v48;
      v50 = *(v44 + 1);
      v49 = *(v44 + 2);
      *(v46 + 4) = v50;
      *(v46 + 5) = v49;
      v43 += 24;
    }

    while (24 * (v7 + 1) - 24 != v43);
  }

  v51 = &v38[3 * v40];
  *v51 = 2;
  if (v18)
  {
    v52 = *(v18 + 16);
  }

  else
  {
    v52 = v41 + 16;
  }

  *(v51 + 1) = 16;
  *(v51 + 2) = v52;
  **(v51 + 2) = *v69;
  *(v51 + 6) = 5;
  v61 = *(v51 + 2) + 16;
  *(v51 + 4) = 0;
  *(v51 + 5) = v61;
  checksum_iov = krb5_encrypt_iov_ivec();
  if (checksum_iov)
  {
    goto LABEL_80;
  }

  v63 = v70;
  if (v70)
  {
    v64 = v68 + 2;
    *(v69 + 6) = BYTE1(v70);
LABEL_86:
    *v64 = v63;
  }

  if (a5)
  {
    *a5 = a4;
  }

  free(v39);
  v26 = 0;
  *a1 = 0;
  return v26;
}

uint64_t _gk_allocate_buffer(_DWORD *a1, uint64_t a2, size_t size)
{
  if ((*(a2 + 2) & 2) != 0)
  {
    if (*(a2 + 8) == size)
    {
      return 0;
    }

    free(*(a2 + 16));
  }

  v7 = malloc_type_malloc(size, 0x3770A649uLL);
  *(a2 + 8) = size;
  *(a2 + 16) = v7;
  if (v7)
  {
    result = 0;
    *a2 |= 0x20000u;
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return result;
}

uint64_t _gssapi_unwrap_cfx_iov(_DWORD *a1, void *a2, uint64_t a3, unsigned int *a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7)
{
  v7 = a7;
  *a1 = 0;
  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (!buffer)
  {
    goto LABEL_18;
  }

  v14 = buffer;
  if (*(buffer + 1) <= 0xFuLL)
  {
    _gss_mg_log(5, "cfxunwrap-iov token too short: %lu", *(buffer + 1));
    return 589824;
  }

  v16 = _gss_mg_find_buffer(a6, v7, 9);
  v17 = v16;
  if (v16)
  {
    if (*(v16 + 1))
    {
      goto LABEL_18;
    }
  }

  v18 = _gss_mg_find_buffer(a6, v7, 7);
  if ((*(a2 + 9) & 2) == 0)
  {
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_18:
    *a1 = 22;
    return 851968;
  }

  if (v17 | v18)
  {
    goto LABEL_18;
  }

LABEL_9:
  v59 = 0;
  v58 = 0;
  *a1 = 0;
  v19 = *(v14 + 2);
  if (*v19 == 5 && *(v19 + 1) == 4)
  {
    v55 = v18;
    v56 = *(v19 + 2);
    v15 = verify_flags(a2, v56 & 7, "unwrap-iov");
    if (v15)
    {
      return v15;
    }

    if (*(v19 + 3) == 255)
    {
      if (a4)
      {
        *a4 = (v56 >> 1) & 1;
      }

      v20 = *(v19 + 4);
      v21 = *(v19 + 6);
      _gss_mg_decode_be_uint32((v19 + 8), &v59);
      _gss_mg_decode_be_uint32((v19 + 12), &v59 + 1);
      if (v59)
      {
        *a1 = 34;
        return 8;
      }

      v23 = _gssapi_msg_order_check(a2[3], HIDWORD(v59));
      if (v23)
      {
        v15 = v23;
LABEL_22:
        *a1 = 0;
        return v15;
      }

      v24 = malloc_type_calloc(v7 + 3, 0x18uLL, 0x10800404ACF7207uLL);
      if (!v24)
      {
        *a1 = 12;
        v15 = 851968;
LABEL_81:
        __ApplePrivate_gss_release_iov_buffer(&v58, a6, v7);
        return v15;
      }

      v25 = __rev16(v20);
      v26 = __rev16(v21);
      if ((v56 & 2) == 0)
      {
        if (!v55)
        {
          v57 = v24;
          if (v26 == v25)
          {
            v27 = v25 + 16;
LABEL_38:
            if (*(v14 + 1) == v27)
            {
              if (v7 < 1)
              {
                v36 = 0;
              }

              else
              {
                v29 = v57 + 2;
                v30 = (a6 + 8);
                v31 = v7;
                do
                {
                  v32 = *(v30 - 8);
                  if (v32 == 11)
                  {
                    v33 = 3;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (v32 == 1)
                  {
                    v34 = 2;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  *(v29 - 4) = v34;
                  v35 = *v30;
                  *(v29 - 1) = *(v30 - 1);
                  *v29 = v35;
                  v29 += 3;
                  v30 += 3;
                  --v31;
                }

                while (v31);
                v36 = v7;
              }

              v52 = &v57[3 * v36];
              *v52 = 2;
              v53 = *(v14 + 2);
              *(v52 + 1) = 16;
              *(v52 + 2) = v53;
              *(v52 + 6) = 6;
              if (v55)
              {
                v54 = *(v55 + 2);
              }

              else
              {
                v54 = v53 + 16;
              }

              *(v52 + 4) = v25;
              *(v52 + 5) = v54;
              *(v53 + 4) = 0;
              v51 = krb5_verify_checksum_iov();
              if (v51)
              {
LABEL_77:
                *a1 = v51;
                goto LABEL_78;
              }

              goto LABEL_82;
            }

            goto LABEL_66;
          }

LABEL_49:
          *a1 = 22;
LABEL_78:
          v15 = 851968;
          goto LABEL_79;
        }

        if (*(v55 + 1) == v25)
        {
          v57 = v24;
          if (!v26)
          {
            v27 = 16;
            goto LABEL_38;
          }

          goto LABEL_49;
        }

        v15 = 589824;
LABEL_80:
        free(v24);
        goto LABEL_81;
      }

      v57 = v24;
      krb5_crypto_length();
      krb5_crypto_length();
      if (v55)
      {
        if (*(v55 + 1) == 16)
        {
          v28 = *(v14 + 1);
          if (v28 == 16)
          {
            if (v26)
            {
              v15 = unrotate_iov(a1, v26, a6, v7);
              v24 = v57;
              if (v15)
              {
                goto LABEL_80;
              }

              v28 = *(v14 + 1);
            }

LABEL_55:
            v38 = 1;
            *v57 = 1;
            v39 = *(v14 + 2) + v28;
            v57[1] = 0;
            v57[2] = v39;
            if (v7 >= 1)
            {
              v40 = 0;
              v38 = v7 + 1;
              do
              {
                v41 = &a6[v40 / 2];
                v42 = a6[v40 / 2];
                v43 = &v57[v40 / 8];
                if (v42 == 11)
                {
                  v44 = 3;
                }

                else
                {
                  v44 = 0;
                }

                if (v42 == 1)
                {
                  v45 = 2;
                }

                else
                {
                  v45 = v44;
                }

                *(v43 + 6) = v45;
                v47 = *(v41 + 1);
                v46 = *(v41 + 2);
                *(v43 + 4) = v47;
                *(v43 + 5) = v46;
                v40 += 24;
              }

              while (24 * v7 != v40);
            }

            v48 = &v57[3 * v38];
            *v48 = 2;
            if (v55)
            {
              v49 = *(v55 + 2);
            }

            else
            {
              v49 = v39 - v25 - 16;
            }

            *(v48 + 1) = v25 + 16;
            *(v48 + 2) = v49;
            *(v48 + 6) = 5;
            v50 = v49 + v25;
            *(v48 + 4) = 0;
            *(v48 + 5) = v49 + v25 + 16;
            v51 = krb5_decrypt_iov_ivec();
            if (v51)
            {
              goto LABEL_77;
            }

            *(v50 + 6) = *(v19 + 6);
            *(v50 + 7) = *(v19 + 7);
            if (!ct_memcmp())
            {
LABEL_82:
              if (a5)
              {
                *a5 = 0;
              }

              free(v57);
              v15 = 0;
              goto LABEL_22;
            }

            v15 = 393216;
LABEL_79:
            v24 = v57;
            goto LABEL_80;
          }
        }
      }

      else if (v26 == 16)
      {
        v37 = (*(a2 + 9) & 2) != 0 ? v25 : 0;
        v28 = v37 + 32;
        if (*(v14 + 1) == v28)
        {
          goto LABEL_55;
        }
      }

LABEL_66:
      v15 = 589824;
      goto LABEL_79;
    }
  }

  return 589824;
}

uint64_t verify_flags(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {
      _gss_mg_log(5, "cfx%s acceptor token set by initiator");
      return 589824;
    }
  }

  else if ((v3 & 1) == 0)
  {
    _gss_mg_log(5, "cfx%s !acceptor token set by acceptor");
    return 589824;
  }

  if ((v3 & 4) != 0)
  {
    if ((a2 & 4) == 0)
    {
      _gss_mg_log(5, "cfx%s no subkey");
      return 589824;
    }
  }

  else if ((a2 & 4) != 0)
  {
    heim_base_once_f();
  }

  return 0;
}

uint64_t unrotate_iov(_DWORD *a1, size_t a2, uint64_t a3, unsigned int a4)
{
  v8 = a4;
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = (a3 + 8);
    v11 = a4;
    do
    {
      v12 = *(v10 - 4);
      v13 = v12 > 9;
      v14 = (1 << v12) & 0x282;
      if (!v13 && v14 != 0)
      {
        v9 += *v10;
      }

      v10 += 3;
      --v11;
    }

    while (v11);
    v16 = malloc_type_malloc(v9, 0x7E3C42C6uLL);
    if (v16)
    {
      v17 = a3 + 8;
      v18 = v16;
      v19 = v8;
      __dst = v16;
      do
      {
        v20 = *(v17 - 8);
        v13 = v20 > 9;
        v21 = (1 << v20) & 0x282;
        if (!v13 && v21 != 0)
        {
          memcpy(v18, *(v17 + 8), *v17);
          v18 += *v17;
        }

        v17 += 24;
        --v19;
      }

      while (v19);
      v23 = __dst;
      goto LABEL_20;
    }

LABEL_44:
    *a1 = 12;
    return 851968;
  }

  v24 = malloc_type_malloc(0, 0x7E3C42C6uLL);
  if (!v24)
  {
    goto LABEL_44;
  }

  v23 = v24;
  v9 = 0;
  v18 = v24;
LABEL_20:
  if (v18 - v23 != v9)
  {
    unrotate_iov_cold_1();
  }

  if (a4 >= 1)
  {
    v25 = &v23[a2];
    v26 = (a3 + 8);
    v27 = v8;
    v28 = a2;
    do
    {
      v29 = *(v26 - 4);
      v13 = v29 > 9;
      v30 = (1 << v29) & 0x282;
      if (!v13 && v30 != 0)
      {
        if (*v26 <= v28)
        {
          v28 -= *v26;
        }

        else
        {
          memcpy((v26[1] + v28), v25, *v26 - v28);
          v32 = *v26 - v28;
          v28 = 0;
          v25 += v32;
        }
      }

      v26 += 3;
      --v27;
    }

    while (v27);
    v33 = a3 + 8;
    v34 = v23;
    do
    {
      v35 = *(v33 - 8);
      v13 = v35 > 9;
      v36 = (1 << v35) & 0x282;
      if (!v13 && v36 != 0)
      {
        if (*v33 >= a2)
        {
          v38 = a2;
        }

        else
        {
          v38 = *v33;
        }

        memcpy(v34, *(v33 + 8), v38);
        v39 = a2 >= *v33;
        a2 -= *v33;
        if (!v39)
        {
          break;
        }

        v34 += *v33;
      }

      v33 += 24;
      --v8;
    }

    while (v8);
  }

  free(v23);
  return 0;
}

uint64_t _gssapi_wrap_iov_length_cfx(_DWORD *a1, void *a2, _krb5_context *a3, int a4, uint64_t a5, _DWORD *a6, unsigned __int16 *a7, unsigned int a8)
{
  v32 = a3;
  v14 = __ApplePrivate__gsskrb5_init(&v32);
  if (v14)
  {
    *a1 = v14;
    return 851968;
  }

  *a1 = 0;
  if (a8 < 1)
  {
    goto LABEL_31;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a8;
  do
  {
    v20 = v17;
    v21 = v16;
    v22 = v15;
    v23 = *a7;
    if (v23 > 6)
    {
      switch(v23)
      {
        case 7u:
          v15 = a7;
          if (v22)
          {
            return 851968;
          }

          break;
        case 9u:
          v16 = a7;
          if (v21)
          {
            return 851968;
          }

          break;
        case 0xBu:
          break;
        default:
          goto LABEL_31;
      }
    }

    else if (*a7)
    {
      if (v23 == 1)
      {
        v18 += *(a7 + 1);
      }

      else
      {
        if (v23 != 2)
        {
          goto LABEL_31;
        }

        v17 = a7;
        if (v20)
        {
          return 851968;
        }
      }
    }

    a7 += 12;
    --v19;
  }

  while (v19);
  if (!v17)
  {
    goto LABEL_31;
  }

  if ((*(a2 + 9) & 2) == 0)
  {
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_31:
    *a1 = 22;
    return 851968;
  }

  if (v16 | v15)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (a4)
  {
    v24 = krb5_crypto_length();
    *a1 = v24;
    if (v24)
    {
      return 851968;
    }

    v25 = krb5_crypto_length();
    *a1 = v25;
    if (v25)
    {
      return 851968;
    }

    v26 = krb5_crypto_length();
    *a1 = v26;
    if (v26)
    {
      return 851968;
    }

    if ((*(a2 + 9) & 2) != 0)
    {
      v31 = krb5_crypto_getblocksize();
      *a1 = v31;
      if (v31)
      {
        return 851968;
      }
    }

    v30 = 16;
    v29 = 16;
    if (!v15)
    {
LABEL_39:
      v30 = v29 + 16;
      goto LABEL_40;
    }
  }

  else
  {
    v28 = krb5_crypto_length();
    *a1 = v28;
    if (v28)
    {
      return 851968;
    }

    v29 = 0;
    v30 = 16;
    if (!v15)
    {
      goto LABEL_39;
    }
  }

  *(v15 + 8) = v29;
LABEL_40:
  *(v17 + 1) = v30;
  if (v16)
  {
    *(v16 + 8) = 0;
  }

  result = 0;
  if (a6)
  {
    *a6 = a4;
  }

  return result;
}

uint64_t _gssapi_wrap_cfx(krb5_error_code *a1, void *a2, _krb5_context *a3, int a4, uint64_t a5, int *a6, size_t *a7)
{
  ivec = 0;
  v47 = 0;
  size = 0;
  memset(__len, 0, sizeof(__len));
  v14 = _gsskrb5cfx_wrap_length_cfx(a3, a2, a4, *a5, &size, &__len[1], __len);
  if (v14)
  {
    *a1 = v14;
    return 851968;
  }

  v39 = a6;
  v15 = *(a2 + 2);
  v16 = *&__len[1];
  v17 = size;
  *a7 = size;
  v18 = malloc_type_malloc(v17, 0x2259FD42uLL);
  v40 = a7;
  a7[1] = v18;
  if (!v18)
  {
    *a1 = 12;
    return 851968;
  }

  v19 = v18;
  *v18 = -16776187;
  v20 = a2[1] & 5;
  if (v20)
  {
    v18[2] = v20;
  }

  if (a4)
  {
    v18[2] = v20 | 2;
    v21 = __len[0];
    v22 = HIBYTE(__len[0]);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = v15 << 22;
  v24 = v16 + 16 * (a4 != 0);
  v18[4] = v22;
  v18[5] = v21;
  *(v18 + 3) = 0;
  _gss_mg_encode_be_uint32(*(a2 + 4), v18 + 2);
  _gss_mg_encode_be_uint32(*(a2 + 3), v19 + 3);
  v25 = *(a2 + 3);
  *(a2 + 3) = v25 + 1;
  if (v25 == -1)
  {
    ++*(a2 + 4);
  }

  v26 = v24 & (v23 >> 31);
  if (a2[1])
  {
    v27 = 22;
  }

  else
  {
    v27 = 24;
  }

  if (a4)
  {
    v38 = v26;
    memcpy(v19 + 16, *(a5 + 8), *a5);
    v28 = v27;
    v29 = __len[0];
    memset(&v19[*a5 + 16], 255, __len[0]);
    *&v19[*a5 + 16 + v29] = *v19;
    v30 = krb5_encrypt(a3, *a2, v28, (v19 + 16), (v29 + *a5 + 16), &ivec);
    if (v30)
    {
      goto LABEL_19;
    }

    v31 = ivec;
    if (ivec + 16 != v17)
    {
      _gssapi_wrap_cfx_cold_1();
    }

    *(v19 + 3) = bswap32(v38) >> 16;
    v30 = rrc_rotate(v47, v31, (v38 + (v29 & ((*(a2 + 4) << 6) >> 15))), 0);
    if (v30)
    {
LABEL_19:
      *a1 = v30;
LABEL_24:
      _gsskrb5_release_buffer(a1, v40);
      return 851968;
    }

    memcpy(v19 + 16, v47, ivec);
    krb5_data_free();
  }

  else
  {
    v41 = 0;
    v42 = 0;
    __src = 0;
    v32 = malloc_type_malloc(*a5 + 16, 0x1000040451B5BE8uLL);
    if (!v32)
    {
      *a1 = 12;
      goto LABEL_24;
    }

    v33 = v32;
    memcpy(v32, *(a5 + 8), *a5);
    *&v33[*a5] = *v19;
    checksum = krb5_create_checksum();
    if (checksum)
    {
      *a1 = checksum;
      _gsskrb5_release_buffer(a1, v40);
      free(v33);
      return 851968;
    }

    free(v33);
    v36 = v42;
    if (v42 != *&__len[1])
    {
      _gssapi_wrap_cfx_cold_2();
    }

    v19[4] = BYTE1(v42);
    v19[5] = v36;
    v19[6] = BYTE1(v26);
    v19[7] = v26;
    memcpy(v19 + 16, *(a5 + 8), *a5);
    memcpy(&v19[*a5 + 16], __src, v36);
    v37 = rrc_rotate(v19 + 16, v36 + *a5, v26, 0);
    if (v37)
    {
      *a1 = v37;
      _gsskrb5_release_buffer(a1, v40);
      free_Checksum(&v41);
      return 851968;
    }

    free_Checksum(&v41);
  }

  if (v39)
  {
    *v39 = a4;
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t rrc_rotate(char *__src, unint64_t a2, unsigned int a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a3 % a2;
    if (v5)
    {
      if (v5 >= 0x101)
      {
        p_dst = malloc_type_malloc(a3 % a2, 0xB0800436uLL);
        if (!p_dst)
        {
          return 12;
        }
      }

      else
      {
        p_dst = &__dst;
      }

      v9 = a2 - v5;
      if (a4)
      {
        memcpy(p_dst, __src, v5);
        memmove(__src, &__src[v5], v9);
        __src += v9;
      }

      else
      {
        memcpy(p_dst, &__src[v9], v5);
        memmove(&__src[v5], __src, v9);
      }

      memcpy(__src, p_dst, v5);
      if (v5 >= 0x101)
      {
        free(p_dst);
      }
    }
  }

  return 0;
}

uint64_t _gssapi_unwrap_cfx(krb5_error_code *a1, void *a2, _krb5_context *a3, unint64_t *a4, uint64_t a5, int *a6, _DWORD *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*a4 <= 0xF)
  {
    _gss_mg_log(5, "cfxunwrap token too short: %lu", a3);
    return 589824;
  }

  v47 = 0uLL;
  ivec = 0;
  v46 = 0;
  v8 = a4[1];
  v47 = *v8;
  if (v47 != 5 || BYTE1(v47) != 4)
  {
    _gss_mg_log(5, "cfxunwrap not a WRAP token: 0x%02x%02x", a3);
    return 589824;
  }

  v15 = BYTE2(v47);
  v17 = verify_flags(a2, BYTE2(v47) & 7, "unwrap");
  if (!v17)
  {
    if (BYTE3(v47) != 255)
    {
      _gss_mg_log(5, "cfxunwrap filler bad: 0x%02x", v16);
      return 589824;
    }

    if (a6)
    {
      *a6 = (BYTE2(v47) >> 1) & 1;
    }

    v44 = 0;
    v40 = WORD2(v47);
    v19 = WORD3(v47);
    _gss_mg_decode_be_uint32(&v47 + 2, &v44);
    _gss_mg_decode_be_uint32((&v47 | 0xC), &v44 + 1);
    if (v44)
    {
      *a1 = 34;
      return 8;
    }

    v20 = _gssapi_msg_order_check(a2[3], HIDWORD(v44));
    if (v20)
    {
      v17 = v20;
      *a1 = 0;
      _gsskrb5_release_buffer(a1, a5);
      return v17;
    }

    v21 = *(a2 + 2);
    if (v21)
    {
      v22 = 24;
    }

    else
    {
      v22 = 22;
    }

    v23 = (v8 + 1);
    v24 = *a4;
    v25 = (a4[1] - v23 + *a4);
    if (v25 > v24)
    {
      return 589824;
    }

    v26 = __rev16(v40);
    v27 = bswap32(v19) >> 16;
    if ((v15 & 2) != 0)
    {
      v31 = v26;
      v32 = rrc_rotate(v23, v25, (v27 + (v26 & ((v21 << 6) >> 15))), 1);
      *a1 = v32;
      if (v32)
      {
        return 851968;
      }

      v33 = krb5_decrypt(a3, *a2, v22, v23, v25, &ivec);
      if (v33)
      {
        *a1 = v33;
        return 393216;
      }

      if (ivec < v31 + 16)
      {
        krb5_data_free();
        _gss_mg_log(5, "cfxunwrap pad and token not fitting: %lu", v34);
        return 589824;
      }

      WORD3(v47) = *(v46 + ivec - 10);
      if (ct_memcmp())
      {
        krb5_data_free();
        return 393216;
      }

      v39 = v46;
      *a5 = ivec - v31 - 16;
      *(a5 + 8) = v39;
    }

    else
    {
      v28 = v26;
      seed = 0;
      v42 = 0;
      v43 = 0;
      v29 = rrc_rotate(v23, v25, v27, 1);
      *a1 = v29;
      if (v29)
      {
        return 851968;
      }

      checksum_type = krb5_crypto_get_checksum_type();
      if (checksum_type)
      {
        *a1 = checksum_type;
        return 851968;
      }

      v42 = v28;
      if (v25 < v28)
      {
        *a1 = 34;
        return 393216;
      }

      v35 = v25 - v28;
      v43 = &v23[v35];
      *a5 = v35;
      v36 = malloc_type_malloc(v35 + 16, 0x1000040451B5BE8uLL);
      *(a5 + 8) = v36;
      if (!v36)
      {
        *a1 = 12;
        return 851968;
      }

      memcpy(v36, v23, v35);
      *(*(a5 + 8) + v35) = v47;
      *(*(a5 + 8) + v35 + 4) = 0;
      v38 = krb5_verify_checksum(a3, *a2, v22, *(a5 + 8), v35 + 16, &seed, v37);
      if (v38)
      {
        *a1 = v38;
        _gsskrb5_release_buffer(a1, a5);
        return 393216;
      }
    }

    if (a7)
    {
      *a7 = 0;
    }

    v17 = 0;
    *a1 = 0;
  }

  return v17;
}

uint64_t _gssapi_mic_cfx(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = malloc_type_malloc(*a5 + 16, 0xB09E47C8uLL);
  if (!v10)
  {
    *a1 = 12;
    return 851968;
  }

  v11 = v10;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *(&v20 + 1) = 0;
  LOWORD(v20) = 1028;
  BYTE2(v20) = *(a2 + 8) & 5;
  *(&v20 + 3) = -1;
  BYTE7(v20) = -1;
  _gss_mg_encode_be_uint32(*(a2 + 16), &v20 + 2);
  _gss_mg_encode_be_uint32(*(a2 + 12), &v20 + 3);
  memcpy(v11, *(a5 + 8), *a5);
  *&v11[*a5] = v20;
  v12 = *(a2 + 12);
  *(a2 + 12) = v12 + 1;
  if (v12 == -1)
  {
    ++*(a2 + 16);
  }

  checksum = krb5_create_checksum();
  if (checksum)
  {
    *a1 = checksum;
LABEL_6:
    free(v11);
    return 851968;
  }

  v15 = v18 + 16;
  *a6 = v18 + 16;
  v16 = malloc_type_malloc(v15, 0x405013F4uLL);
  a6[1] = v16;
  if (!v16)
  {
    *a1 = 12;
    free_Checksum(&v17);
    goto LABEL_6;
  }

  *v16 = v20;
  memcpy((a6[1] + 16), v19, v18);
  free_Checksum(&v17);
  free(v11);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t _gssapi_verify_mic_cfx(krb5_error_code *a1, uint64_t a2, _krb5_context *a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*a5 <= 0xFuLL)
  {
    _gss_mg_log(5, "cfxverifymic token too short: %lu", a3);
    return 589824;
  }

  seed = 0;
  v22 = 0;
  v23 = 0;
  v8 = a5[1];
  v25 = *v8;
  if (v25 != 4 || BYTE1(v25) != 4)
  {
    _gss_mg_log(5, "cfxverifymic not a MIC token: 0x%02x%02x", a3);
    return 589824;
  }

  result = verify_flags(a2, BYTE2(v25) & 5, "mic");
  if (result)
  {
    return result;
  }

  v24 = 0;
  if (ct_memcmp())
  {
    _gss_mg_log(5, "cfxmic filler bad");
    return 589824;
  }

  _gss_mg_decode_be_uint32(&v25 + 2, &v24);
  _gss_mg_decode_be_uint32((&v25 | 0xC), &v24 + 1);
  if (v24)
  {
    *a1 = 34;
    return 8;
  }

  result = _gssapi_msg_order_check(*(a2 + 24), HIDWORD(v24));
  if (result)
  {
    *a1 = 0;
    return result;
  }

  checksum_type = krb5_crypto_get_checksum_type();
  if (checksum_type)
  {
    *a1 = checksum_type;
    return 851968;
  }

  v22 = *a5 - 16;
  v23 = v8 + 1;
  v15 = *(a2 + 8);
  v16 = malloc_type_malloc(*a4 + 16, 0x1000040451B5BE8uLL);
  if (!v16)
  {
    *a1 = 12;
    return 851968;
  }

  v17 = v16;
  if (v15)
  {
    v18 = 25;
  }

  else
  {
    v18 = 23;
  }

  memcpy(v16, *(a4 + 8), *a4);
  *&v17[*a4] = v25;
  v20 = krb5_verify_checksum(a3, *a2, v18, v17, *a4 + 16, &seed, v19);
  if (v20)
  {
    *a1 = v20;
    free(v17);
    return 393216;
  }

  else
  {
    free(v17);
    result = 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  return result;
}

uint64_t _gsskrb5_compare_name(_DWORD *a1, const krb5_principal_data *a2, const krb5_principal_data *a3, krb5_BOOLean *a4)
{
  v11 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v11);
  if (v8)
  {
    result = 851968;
  }

  else
  {
    v10 = krb5_principal_compare(v11, a2, a3);
    result = 0;
    *a4 = v10;
  }

  *a1 = v8;
  return result;
}

uint64_t _gss_DES3_get_mic_compat(krb5_error_code *a1, uint64_t a2, _krb5_context *a3)
{
  result = 0;
  v8 = 0;
  if ((*(a2 + 76) & 8) == 0)
  {
    result = check_compat(a1, a3, *(a2 + 64), "broken_des3_mic", &v8, 1);
    if (!result)
    {
      result = check_compat(a1, a3, *(a2 + 64), "correct_des3_mic", &v8, 0);
      if (!result)
      {
        if (v8)
        {
          v7 = *(a2 + 76) | 4;
        }

        else
        {
          v7 = *(a2 + 76);
        }

        *(a2 + 76) = v7 | 8;
      }
    }
  }

  return result;
}

uint64_t check_compat(krb5_error_code *a1, _krb5_context *a2, uint64_t a3, uint64_t a4, _DWORD *a5, int a6)
{
  result = krb5_config_get_strings();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v15 = 0;
  v12 = *result;
  if (!*result)
  {
LABEL_7:
    krb5_config_free_strings();
    return 0;
  }

  v13 = 8;
  while (1)
  {
    v14 = krb5_parse_name(a2, v12, &v15);
    if (v14)
    {
      break;
    }

    if (krb5_principal_match())
    {
      *a5 = a6;
      break;
    }

    krb5_free_principal(a2, v15);
    v15 = 0;
    v12 = *(v11 + v13);
    v13 += 8;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  if (v15)
  {
    krb5_free_principal(a2, v15);
  }

  krb5_config_free_strings();
  if (!v14)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = v14;
  }

  return 851968;
}

uint64_t _gsskrb5_lifetime_left(_DWORD *a1, krb5_context a2, uint64_t a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    result = 0;
    v6 = -1;
  }

  else
  {
    *v9 = 0;
    result = krb5_timeofday(a2, v9);
    if (result)
    {
      *a1 = result;
      return 851968;
    }

    if (a3 >= *v9)
    {
      v6 = a3 - v9[0];
    }

    else
    {
      v6 = 0;
    }
  }

  *a4 = v6;
  return result;
}

uint64_t _gsskrb5_context_time(_DWORD *a1, uint64_t a2, int *a3)
{
  v9 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v9);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  else
  {
    pthread_mutex_lock((a2 + 128));
    v8 = *(a2 + 120);
    pthread_mutex_unlock((a2 + 128));
    result = _gsskrb5_lifetime_left(a1, v9, v8, a3);
    if (!result)
    {
      *a1 = 0;
      if (*a3)
      {
        return 0;
      }

      else
      {
        return 786432;
      }
    }
  }

  return result;
}

uint64_t _gsskrb5_krb5_import_cred(krb5_error_code *a1, _krb5_ccache *a2, const krb5_principal_data *a3, uint64_t a4, void *a5)
{
  context = 0;
  *a5 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&context);
  if (!v10)
  {
    v13 = malloc_type_calloc(1uLL, 0x88uLL, 0x1030040BE4FC7E4uLL);
    if (v13)
    {
      v14 = v13;
      pthread_mutex_init((v13 + 48), 0);
      *(v14 + 8) = 0;
      if (!a2)
      {
        goto LABEL_17;
      }

      *(v14 + 8) = 1;
      principal = krb5_cc_get_principal(context, a2, v14);
      if (principal)
      {
        v16 = principal;
        free(v14);
        *a1 = v16;
        return 851968;
      }

      if (!a3 || krb5_principal_compare(context, *v14, a3))
      {
        v11 = __gsskrb5_ccache_lifetime(a1, context, a2, *v14, v14 + 3);
        if (v11)
        {
          krb5_free_principal(context, *v14);
          free(v14);
          return v11;
        }

        full_name = krb5_cc_get_full_name();
        if (full_name)
        {
          goto LABEL_24;
        }

        v19 = krb5_cc_resolve(context, 0, v14 + 5);
        free(0);
        if (v19)
        {
          goto LABEL_25;
        }

LABEL_17:
        if (!a4)
        {
LABEL_22:
          v11 = 0;
          *a1 = 0;
          *a5 = v14;
          return v11;
        }

        *(v14 + 8) |= 2u;
        if (!a3 || *v14 || (full_name = krb5_copy_principal(context, a3, v14)) == 0)
        {
          full_name = krb5_kt_get_full_name();
          if (!full_name)
          {
            v19 = krb5_kt_resolve(context, 0, v14 + 2);
            free(0);
            if (!v19)
            {
              goto LABEL_22;
            }

LABEL_25:
            v20 = *(v14 + 5);
            if (v20)
            {
              krb5_cc_close(context, v20);
            }

            v21 = *(v14 + 2);
            if (v21)
            {
              krb5_kt_close(context, v21);
            }

            if (*v14)
            {
              krb5_free_principal(context, *v14);
            }

            pthread_mutex_destroy((v14 + 48));
            free(v14);
            *a1 = v19;
            return 851968;
          }
        }

LABEL_24:
        v19 = full_name;
        goto LABEL_25;
      }

      krb5_free_principal(context, *v14);
      free(v14);
      _gsskrb5_clear_status();
      v17 = 22;
    }

    else
    {
      _gsskrb5_clear_status();
      v17 = 12;
    }

    *a1 = v17;
    return 851968;
  }

  *a1 = v10;
  return 851968;
}

uint64_t _gsskrb5_get_mech(_BYTE *a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return -1;
  }

  if (*a1 == 96 && !der_get_length())
  {
    return -1;
  }

  return -1;
}

uint64_t _gssapi_verify_mech_header(_BYTE **a1, unint64_t a2, uint64_t a3)
{
  __s1 = 0;
  mech = _gsskrb5_get_mech(*a1, a2, &__s1);
  if ((mech & 0x8000000000000000) != 0)
  {
    return 589824;
  }

  v7 = mech;
  v8 = a2 - mech;
  if (a2 < mech || mech != *a3)
  {
    return 0x10000;
  }

  v10 = __s1;
  if (__s1 - *a1 > v8)
  {
    return 0x10000;
  }

  result = memcmp(__s1, *(a3 + 8), mech);
  if (result)
  {
    return 0x10000;
  }

  *a1 = &v10[v7];
  return result;
}

uint64_t _gsskrb5_verify_header(unsigned __int16 **a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v7 = *a1;
  result = _gssapi_verify_mech_header(a1, a2, a4);
  if (!result)
  {
    v9 = *a1;
    if ((v7 + a2 - *a1) >= 2 && *v9 == *a3)
    {
      result = 0;
      *a1 = v9 + 1;
    }

    else
    {
      return 589824;
    }
  }

  return result;
}

uint64_t _gssapi_decapsulate(_DWORD *a1, unint64_t *a2, _WORD *a3, void *a4, uint64_t a5)
{
  v9 = *a2;
  v14 = a2[1];
  result = _gssapi_verify_mech_header(&v14, v9, a5);
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    v12 = a2[1] - v14 + *a2;
    if (v12 > 1)
    {
      result = 0;
      v13 = v14 + 2;
      *a3 = *v14;
      *a4 = v12 - 2;
      a4[1] = v13;
    }

    else
    {
      *a1 = 0;
      return 589824;
    }
  }

  return result;
}

uint64_t _gsskrb5_decapsulate(_DWORD *a1, unint64_t *a2, void *a3, unsigned __int16 *a4, uint64_t a5)
{
  v8 = *a2;
  v12 = a2[1];
  result = _gsskrb5_verify_header(&v12, v8, a4, a5);
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    v11 = v12;
    *a3 = *a2 - v12 + a2[1];
    a3[1] = v11;
  }

  return result;
}

uint64_t _gssapi_verify_pad(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1] + *a1;
  v6 = *(v3 - 1);
  v5 = (v3 - 1);
  v4 = v6;
  if (v6 > a2)
  {
    return 0x10000;
  }

  if (v4)
  {
    v8 = v4;
    while (1)
    {
      v9 = *v5--;
      if (v9 != v4)
      {
        return 393216;
      }

      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    *a3 = v4;
  }

  return result;
}

uint64_t _gsskrb5_delete_sec_context(_DWORD *a1, void **a2, void *a3)
{
  context = 0;
  v6 = __ApplePrivate__gsskrb5_init(&context);
  if (v6)
  {
    *a1 = v6;
    return 851968;
  }

  else
  {
    *a1 = 0;
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v8 = *a2;
    if (*a2)
    {
      *a2 = 0;
      pthread_mutex_lock(v8 + 2);
      v9 = *(v8 + 13);
      if (v9)
      {
        v10 = *(v8 + 19);
        if ((v10 & 0x10) != 0)
        {
          krb5_cc_close(context, v9);
        }

        else if ((v10 & 0x20) != 0)
        {
          krb5_cc_destroy(context, v9);
        }
      }

      krb5_auth_con_free(context, *(v8 + 5));
      krb5_auth_con_free(context, *(v8 + 6));
      v11 = *(v8 + 12);
      if (v11)
      {
        krb5_free_creds(context, v11);
      }

      v12 = *(v8 + 7);
      if (v12)
      {
        krb5_free_principal(context, v12);
      }

      v13 = *(v8 + 8);
      if (v13)
      {
        krb5_free_principal(context, v13);
      }

      v14 = *(v8 + 14);
      if (v14)
      {
        krb5_free_ticket(context, v14);
      }

      if (*(v8 + 3))
      {
        _gssapi_msg_order_destroy(v8 + 3);
      }

      v15 = *(v8 + 24);
      if (v15)
      {
        krb5_free_keyblock(context, v15);
      }

      krb5_data_free();
      if (*v8)
      {
        krb5_crypto_destroy();
      }

      if (*(v8 + 31))
      {
        krb5_tkt_creds_free();
      }

      if (*(v8 + 27))
      {
        heim_release();
      }

      v16 = *(v8 + 29);
      if (v16)
      {
        krb5_get_init_creds_opt_free(context, v16);
      }

      if (*(v8 + 30))
      {
        krb5_init_creds_free();
      }

      v17 = *(v8 + 33);
      if (v17)
      {
        v18 = strlen(*(v8 + 33));
        bzero(v17, v18);
        free(*(v8 + 33));
      }

      v19 = *(v8 + 32);
      if (v19)
      {
        krb5_free_data(context, v19);
      }

      v20 = *(v8 + 34);
      if (v20)
      {
        free(v20);
      }

      if (*(v8 + 28))
      {
        krb5_storage_free();
      }

      if (*(v8 + 35))
      {
        krb5_data_free();
      }

      if (*(v8 + 37))
      {
        krb5_data_free();
      }

      pthread_mutex_unlock(v8 + 2);
      pthread_mutex_destroy(v8 + 2);
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 4) = 0u;
      *(v8 + 5) = 0u;
      *(v8 + 6) = 0u;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 10) = 0u;
      *(v8 + 11) = 0u;
      *(v8 + 12) = 0u;
      *(v8 + 13) = 0u;
      *(v8 + 14) = 0u;
      *(v8 + 15) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 18) = 0u;
      *(v8 + 38) = 0;
      free(v8);
    }

    return 0;
  }
}

uint64_t _gsskrb5_display_name(krb5_error_code *a1, const krb5_principal_data *a2, size_t *a3, gss_OID_desc **a4)
{
  __s = 0;
  v13 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v13);
  if (v8 || (v8 = krb5_unparse_name_flags(v13, a2, 4, &__s)) != 0)
  {
    v9 = 851968;
  }

  else
  {
    v11 = __s;
    *a3 = strlen(__s);
    a3[1] = v11;
    v8 = 0;
    v9 = 0;
    if (a4)
    {
      *a4 = &__gss_krb5_nt_principal_name_oid_desc;
    }
  }

  *a1 = v8;
  return v9;
}

void _gsskrb5_clear_status()
{
  v0 = 0;
  if (!__ApplePrivate__gsskrb5_init(&v0))
  {
    krb5_clear_error_message(v0);
  }
}

void _gsskrb5_set_status(krb5_error_code a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (!__ApplePrivate__gsskrb5_init(&v12))
  {
    va_copy(v11, va);
    if ((vasprintf(&v10, a2, va) & 0x80000000) == 0)
    {
      if (v10)
      {
        krb5_set_error_message(v12, a1, "%s", v10);
        free(v10);
      }
    }
  }
}

uint64_t _gsskrb5_display_status(_DWORD *a1, krb5_error_code a2, int a3, const gss_OID_desc *a4, _DWORD *a5, size_t *a6)
{
  __s = 0;
  v20 = 0;
  v12 = __ApplePrivate__gsskrb5_init(&v20);
  if (v12)
  {
    *a1 = v12;
    return 851968;
  }

  *a6 = 0;
  a6[1] = 0;
  if (!gss_oid_equal(a4, 0) && !gss_oid_equal(a4, &__gss_krb5_mechanism_oid_desc))
  {
    *a1 = 0;
    return 1;
  }

  if (a3 == 2)
  {
    error_message = krb5_get_error_message(v20, a2);
    if (error_message)
    {
      v15 = error_message;
      __s = strdup(error_message);
      krb5_free_error_message(v20, v15);
      goto LABEL_17;
    }

    v16 = asprintf(&__s, "unknown mech error-code %u");
  }

  else
  {
    if (a3 != 1)
    {
      *a1 = 22;
      return 327680;
    }

    if (a2)
    {
      v16 = asprintf(&__s, "%s");
    }

    else
    {
      v16 = asprintf(&__s, "%s %s");
    }
  }

  if (v16 < 0)
  {
LABEL_19:
    *a1 = 12;
    return 851968;
  }

LABEL_17:
  v17 = __s;
  if (!__s)
  {
    goto LABEL_19;
  }

  *a5 = 0;
  *a1 = 0;
  v18 = strlen(v17);
  result = 0;
  *a6 = v18;
  a6[1] = v17;
  return result;
}

uint64_t _gsskrb5_duplicate_name(krb5_error_code *a1, const krb5_principal_data *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v6 = __ApplePrivate__gsskrb5_init(&v10);
  if (v6 || (v6 = krb5_copy_principal(v10, a2, &v9)) != 0)
  {
    v7 = 851968;
  }

  else
  {
    v7 = 0;
    *a3 = v9;
  }

  *a1 = v6;
  return v7;
}

uint64_t _gssapi_encap_length(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  *a2 = (*a4 + 2) + a1;
  result = der_length_len();
  *a3 = result + *a2 + 1;
  return result;
}

uint64_t _gsskrb5_encap_length(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  *a2 = a1 + (*a4 + 2) + 2;
  result = der_length_len();
  *a3 = result + *a2 + 1;
  return result;
}

char *_gsskrb5_make_header(_BYTE *a1, uint64_t a2, _WORD *a3, const void **a4)
{
  mech_header = _gssapi_make_mech_header(a1, a2, a4);
  *mech_header = *a3;
  return mech_header + 2;
}

char *_gssapi_make_mech_header(_BYTE *a1, uint64_t a2, const void **a3)
{
  *a1 = 96;
  v5 = der_length_len();
  v6 = &a1[v5];
  if (der_put_length())
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    abort();
  }

  v8 = v6 + 1;
  v6[1] = 6;
  v9 = v6 + 3;
  v8[1] = *a3;
  memcpy(v9, a3[1], *a3);
  return &v9[*a3];
}

uint64_t _gsskrb5_encapsulate(_DWORD *a1, uint64_t a2, size_t *a3, _WORD *a4, const void **a5)
{
  v10 = *a2 + (*a5 + 2) + 2;
  v11 = der_length_len() + v10 + 1;
  *a3 = v11;
  v12 = malloc_type_malloc(v11, 0xFBD7476FuLL);
  a3[1] = v12;
  if (v12)
  {
    mech_header = _gssapi_make_mech_header(v12, v10, a5);
    *mech_header = *a4;
    memcpy(mech_header + 2, *(a2 + 8), *a2);
    return 0;
  }

  else
  {
    *a1 = 12;
    return 851968;
  }
}

uint64_t export_name_common(krb5_error_code *a1, const void **a2, const krb5_principal_data *a3, size_t *a4)
{
  __s = 0;
  v13 = 0;
  v8 = __ApplePrivate__gsskrb5_init(&v13);
  if (v8 || (v8 = krb5_unparse_name(v13, a3, &__s)) != 0)
  {
    *a1 = v8;
    return 851968;
  }

  else
  {
    v11 = strlen(__s);
    v9 = gss_mg_export_name(a1, a2, __s, v11, a4);
    krb5_xfree();
  }

  return v9;
}

uint64_t _gsskrb5_export_sec_context(krb5_error_code *a1, void **a2, size_t *a3)
{
  v25 = 0;
  v6 = *a2;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v7 = __ApplePrivate__gsskrb5_init(&v25);
  if (v7)
  {
    *a1 = v7;
    return 851968;
  }

  pthread_mutex_lock(v6 + 2);
  if ((*(v6 + 73) & 1) == 0)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = 0;
    return 0x100000;
  }

  v9 = krb5_storage_emem();
  if (!v9)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = 12;
    return 851968;
  }

  v10 = v9;
  v11 = *(v6 + 5);
  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  if (v11[1])
  {
    v12 = krb5_store_address();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (v11[2])
  {
    v12 = krb5_store_address();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v12 = krb5_store_int16();
  if (v12)
  {
    goto LABEL_9;
  }

  v12 = krb5_store_int16();
  if (v12)
  {
    goto LABEL_9;
  }

  if (v11[4])
  {
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (v11[5])
  {
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (v11[6])
  {
    v12 = krb5_store_keyblock();
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_9;
  }

  v14 = _gsskrb5_export_name(a1, *(v6 + 7), &v21);
  if (v14)
  {
LABEL_31:
    v8 = v14;
    goto LABEL_11;
  }

  v15 = krb5_store_data();
  _gsskrb5_release_buffer(&v20, &v21);
  if (v15)
  {
    v12 = v15;
LABEL_9:
    v8 = 0;
LABEL_10:
    *a1 = v12;
LABEL_11:
    pthread_mutex_unlock(v6 + 2);
    krb5_storage_free();
    return v8;
  }

  v14 = _gsskrb5_export_name(a1, *(v6 + 8), &v21);
  if (v14)
  {
    goto LABEL_31;
  }

  v23 = v21;
  v24 = v22;
  v16 = krb5_store_data();
  _gsskrb5_release_buffer(&v20, &v21);
  if (v16)
  {
    v12 = v16;
LABEL_41:
    v8 = 851968;
    goto LABEL_10;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v12 = krb5_store_int32();
  if (v12)
  {
    goto LABEL_41;
  }

  v12 = _gssapi_msg_order_export(v10, *(v6 + 3));
  if (v12)
  {
    goto LABEL_41;
  }

  v17 = krb5_storage_to_data();
  krb5_storage_free();
  if (v17)
  {
    pthread_mutex_unlock(v6 + 2);
    *a1 = v17;
    return 851968;
  }

  v18 = v24;
  *a3 = v23;
  a3[1] = v18;
  pthread_mutex_unlock(v6 + 2);
  v19 = _gsskrb5_delete_sec_context(a1, a2, 0);
  if (v19)
  {
    _gsskrb5_release_buffer(0, a3);
  }

  *a1 = 0;
  return v19;
}

uint64_t _gsskrb5_get_mic(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v28);
  if (!v10)
  {
    if ((*(a2 + 76) & 0x40) != 0)
    {
      return _gssapi_mic_cfx(a1, a2, v28, a3, a4, a5);
    }

    pthread_mutex_lock((a2 + 128));
    token_key = _gsskrb5i_get_token_key(a2, v28, &v27);
    pthread_mutex_unlock((a2 + 128));
    if (token_key)
    {
      *a1 = token_key;
      return 851968;
    }

    magic = v27->magic;
    if ((v27->magic - 23) < 2)
    {
      mic_arcfour = _gssapi_get_mic_arcfour(a1, a2, v28, a3, a4, a5, v27);
      goto LABEL_31;
    }

    if (magic != 16 && magic != 5)
    {
      mic_arcfour = 851968;
LABEL_31:
      krb5_free_keyblock(v28, v27);
      return mic_arcfour;
    }

    v15 = v28;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    size = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    _gsskrb5_encap_length(36, &v33, &size, &__gss_krb5_mechanism_oid_desc);
    v16 = size;
    *a5 = size;
    v17 = malloc_type_malloc(v16, 0x9335B53AuLL);
    *(a5 + 8) = v17;
    if (v17)
    {
      header = _gsskrb5_make_header(v17, v33, "\x01\x01", &__gss_krb5_mechanism_oid_desc);
      *header = 4;
      *(header + 2) = -1;
      v19 = malloc_type_malloc(*a4 + 8, 0xE7E8F177uLL);
      if (v19)
      {
        v20 = v19;
        *v19 = *(header - 2);
        memcpy(v19 + 1, *(a4 + 8), *a4);
        v21 = krb5_crypto_init();
        if (v21)
        {
          checksum = v21;
          free(*(a5 + 8));
          *a5 = 0;
          *(a5 + 8) = 0;
          free(v20);
        }

        else
        {
          checksum = krb5_create_checksum();
          free(v20);
          krb5_crypto_destroy();
          if (!checksum)
          {
            memcpy(header + 14, v37, v36);
            pthread_mutex_lock((a2 + 128));
            krb5_auth_con_getlocalseqnumber(v15, *(a2 + 40), &v34);
            v23 = 16843009 * ((*(a2 + 76) & 1) - 1);
            v39 = v34;
            v40 = v23;
            v24 = krb5_crypto_init();
            if (v24)
            {
              checksum = v24;
            }

            else
            {
              if ((*(a2 + 76) & 4) != 0)
              {
                v25 = 0;
              }

              else
              {
                v25 = *(header + 14);
              }

              v38 = v25;
              checksum = krb5_encrypt_ivec();
              krb5_crypto_destroy();
              if (!checksum)
              {
                if (v29 != 8)
                {
                  _gsskrb5_get_mic_cold_1();
                }

                *(header + 6) = *v30;
                krb5_data_free();
                ++v34;
                krb5_auth_con_setlocalseqnumber();
                pthread_mutex_unlock((a2 + 128));
                free_Checksum(&v35);
                checksum = 0;
                mic_arcfour = 0;
                goto LABEL_30;
              }
            }
          }

          free(*(a5 + 8));
          *a5 = 0;
          *(a5 + 8) = 0;
        }

        mic_arcfour = 851968;
LABEL_30:
        *a1 = checksum;
        goto LABEL_31;
      }

      free(*(a5 + 8));
      *(a5 + 8) = 0;
    }

    *a5 = 0;
    mic_arcfour = 851968;
    checksum = 12;
    goto LABEL_30;
  }

  *a1 = v10;
  return 851968;
}

uint64_t _gsskrb5_canon_name(_DWORD *a1, _krb5_context *a2, int a3, uint64_t a4, const krb5_principal_data *a5, krb5_principal *a6)
{
  *a1 = 0;
  if (krb5_principal_get_type() != -1202)
  {
    result = krb5_copy_principal(a2, a5, a6);
    goto LABEL_13;
  }

  if (a3)
  {
    magic = a5->realm.magic;
    if (!magic)
    {
      return 0x20000;
    }

    if (magic == 1)
    {
      v13 = 0;
      data = a5->realm.data;
    }

    else
    {
      data = a5->realm.data;
      v13 = *(data + 1);
    }

    result = krb5_sname_to_principal(a2, v13, *data, 3, a6);
    goto LABEL_13;
  }

  LODWORD(result) = krb5_copy_principal(a2, a5, a6);
  if (!result)
  {
    krb5_principal_set_type();
    if (!a4)
    {
      return 0;
    }

    result = krb5_principal_set_realm();
LABEL_13:
    if (!result)
    {
      return result;
    }
  }

  *a1 = result;
  return 851968;
}

uint64_t import_hostbased_name(_DWORD *a1, gss_const_OID a, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  gss_oid_equal(a, &__gss_pku2u_mechanism_oid_desc);
  v8 = __ApplePrivate__gsskrb5_init(&v16);
  if (v8)
  {
    *a1 = v8;
    return 851968;
  }

  v10 = malloc_type_malloc(*a3 + 1, 0x9ACF89B2uLL);
  if (!v10)
  {
    *a1 = 12;
    return 851968;
  }

  v11 = v10;
  memcpy(v10, *(a3 + 8), *a3);
  v11[*a3] = 0;
  v12 = strchr(v11, 64);
  if (v12)
  {
    v13 = v12;
    if (v12[1])
    {
      *v12 = 0;
      v14 = strlen(v12 + 1);
      if (v14)
      {
        if (v13[v14] == 46)
        {
          v13[v14] = 0;
        }
      }
    }
  }

  principal = krb5_make_principal();
  free(v11);
  *a1 = principal;
  if ((principal + 1765328251) < 2)
  {
    return 0x20000;
  }

  if (principal)
  {
    return 851968;
  }

  krb5_principal_set_type();
  result = 0;
  *a5 = 0;
  return result;
}

uint64_t import_krb5_principal(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = 0;
  v10 = 0;
  LODWORD(result) = __ApplePrivate__gsskrb5_init(&v10);
  if (result || (result = krb5_copy_principal(v10, **(a3 + 8), &v9), result))
  {
    *a1 = result;
    return 851968;
  }

  else
  {
    *a5 = v9;
  }

  return result;
}

uint64_t import_krb5_name(krb5_error_code *a1, const gss_OID_desc *a2, uint64_t a3, const gss_OID_desc *a4, krb5_principal *a5)
{
  v21 = 0;
  v22 = 0;
  v10 = __ApplePrivate__gsskrb5_init(&v22);
  if (v10)
  {
    *a1 = v10;
    return 851968;
  }

  v11 = malloc_type_malloc(*a3 + 1, 0xB3F6961FuLL);
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11;
  memcpy(v11, *(a3 + 8), *a3);
  v12[*a3] = 0;
  if (*v12 == 64)
  {
    v13 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
    v21 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = strdup(v12 + 1);
      v14->data = v15;
      if (!v15)
      {
        free(v12);
        free(v14);
        return 851968;
      }

      goto LABEL_12;
    }

    free(v12);
LABEL_21:
    *a1 = 12;
    return 851968;
  }

  v16 = krb5_parse_name(v22, v12, &v21);
  if (v16)
  {
    v17 = v16;
    free(v12);
    *a1 = v17;
    if ((v17 + 1765328251) >= 2)
    {
      return 851968;
    }

    else
    {
      return 0x20000;
    }
  }

LABEL_12:
  if (a2 && gss_oid_equal(a2, &__gss_pku2u_mechanism_oid_desc) && !strchr(v12, 64))
  {
    krb5_principal_set_realm();
  }

  free(v12);
  v19 = v21;
  if (v21->realm.magic == 2)
  {
    v20 = gss_oid_equal(a4, &__gss_krb5_nt_principal_name_referral_oid_desc);
    v19 = v21;
    if (v20)
    {
      krb5_principal_set_type();
      v19 = v21;
    }
  }

  result = 0;
  *a5 = v19;
  return result;
}

uint64_t import_uuid_name(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  principal = __ApplePrivate__gsskrb5_init(&v14);
  if (principal)
  {
    goto LABEL_2;
  }

  if (*a3 < 0x24uLL || (v10 = a3[1], v11 = *(v10 + 32), v12 = *(v10 + 16), *__s = *v10, v16 = v12, v17 = v11, v18 = 0, strspn(__s, "0123456789abcdefABCDEF-") != 36))
  {
    principal = 0;
    v9 = 0x20000;
    goto LABEL_8;
  }

  principal = krb5_make_principal();
  if (principal)
  {
LABEL_2:
    v9 = 851968;
  }

  else
  {
    krb5_principal_set_type();
    principal = 0;
    v9 = 0;
    *a5 = 0;
  }

LABEL_8:
  *a1 = principal;
  return v9;
}

uint64_t import_dn_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  *a1 = 0;
  return 851968;
}

uint64_t import_pku2u_export_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  *a1 = 0;
  return 851968;
}

uint64_t _gsskrb5_import_sec_context(krb5_error_code *a1, void *a2, uint64_t *a3)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  memset(&v23, 0, sizeof(v23));
  v21 = 0;
  v22 = 0;
  v5 = __ApplePrivate__gsskrb5_init(&v30);
  if (v5)
  {
    *a1 = v5;
    return 851968;
  }

  *a3 = 0;
  v8 = krb5_storage_from_mem();
  if (!v8)
  {
    *a1 = 12;
    return 851968;
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B00402E3E967EuLL);
  if (!v10)
  {
    *a1 = 12;
    krb5_storage_free();
    return 851968;
  }

  v11 = v10;
  pthread_mutex_init(v10 + 2, 0);
  v12 = krb5_auth_con_init(v30, (v11 + 40));
  if (!v12)
  {
    *a1 = 0;
    if (!krb5_ret_int32())
    {
      v15 = *(v11 + 40);
      if (!krb5_ret_int32())
      {
        *v15 = v22;
        v18 = BYTE4(v22);
        if ((v22 & 0x100000000) != 0)
        {
          v13 = v29;
          if (krb5_ret_address())
          {
            goto LABEL_14;
          }

          v13 = v29;
          v18 = BYTE4(v22);
        }

        else
        {
          v13 = 0;
        }

        if ((v18 & 2) != 0)
        {
          v14 = v28;
          if (krb5_ret_address())
          {
            goto LABEL_15;
          }
        }

        else
        {
          v14 = 0;
        }

        krb5_auth_con_setaddrs(v30, v15, v13, v14);
        if (v13)
        {
          krb5_free_address();
        }

        if (v14)
        {
          krb5_free_address();
        }

        if (!krb5_ret_int16() && !krb5_ret_int16())
        {
          v19 = BYTE4(v22);
          if ((v22 & 0x400000000) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setkey();
            krb5_free_keyblock_contents(v30, &v23);
            v19 = BYTE4(v22);
          }

          if ((v19 & 8) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setlocalsubkey();
            krb5_free_keyblock_contents(v30, &v23);
            v19 = BYTE4(v22);
          }

          if ((v19 & 0x10) != 0)
          {
            if (krb5_ret_keyblock())
            {
              goto LABEL_13;
            }

            krb5_auth_con_setremotesubkey();
            krb5_free_keyblock_contents(v30, &v23);
          }

          if (!krb5_ret_uint32() && !krb5_ret_uint32() && !krb5_ret_int32())
          {
            *(v15 + 22) = v22;
            if (!krb5_ret_int32())
            {
              *(v15 + 23) = v22;
              if (!krb5_ret_data())
              {
                v24 = v26;
                v25 = v27;
                if (_gsskrb5_import_name(a1, &v24, &__gss_c_nt_export_name_oid_desc, &v21))
                {
                  v20 = _gsskrb5_import_name(a1, &v24, 0, &v21);
                  if (v20)
                  {
                    goto LABEL_56;
                  }
                }

                *(v11 + 56) = v21;
                krb5_data_free();
                if (!krb5_ret_data())
                {
                  v24 = v26;
                  v25 = v27;
                  if (_gsskrb5_import_name(a1, &v24, &__gss_c_nt_export_name_oid_desc, &v21))
                  {
                    v20 = _gsskrb5_import_name(a1, &v24, 0, &v21);
                    if (v20)
                    {
LABEL_56:
                      v6 = v20;
                      krb5_data_free();
LABEL_59:
                      v13 = 0;
                      v14 = 0;
                      goto LABEL_16;
                    }
                  }

                  *(v11 + 64) = v21;
                  krb5_data_free();
                  if (!krb5_ret_int32())
                  {
                    *(v11 + 72) = v22;
                    if (!krb5_ret_int32())
                    {
                      *(v11 + 76) = v22;
                      if (!krb5_ret_int32())
                      {
                        *(v11 + 120) = v22;
                        v6 = _gssapi_msg_order_import(a1, v9, (v11 + 24));
                        if (!v6)
                        {
                          krb5_storage_free();
                          _gsskrb5i_is_cfx(v30, v11, (*(v11 + 76) & 1) == 0);
                          *a3 = v11;
                          return v6;
                        }

                        goto LABEL_59;
                      }
                    }
                  }
                }

                v6 = 0;
                goto LABEL_59;
              }
            }
          }
        }
      }
    }

LABEL_13:
    v13 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  v14 = 0;
  *a1 = v12;
LABEL_15:
  v6 = 851968;
LABEL_16:
  krb5_auth_con_free(v30, *(v11 + 40));
  v16 = *(v11 + 56);
  if (v16)
  {
    krb5_free_principal(v30, v16);
  }

  v17 = *(v11 + 64);
  if (v17)
  {
    krb5_free_principal(v30, v17);
  }

  if (v13)
  {
    krb5_free_address();
  }

  if (v14)
  {
    krb5_free_address();
  }

  if (*(v11 + 24))
  {
    _gssapi_msg_order_destroy((v11 + 24));
  }

  pthread_mutex_destroy((v11 + 128));
  krb5_storage_free();
  free(v11);
  *a3 = 0;
  return v6;
}