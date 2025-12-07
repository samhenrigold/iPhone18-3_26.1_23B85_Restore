const void *SOSPeerInfoCopyWithV2DictionaryUpdate(uint64_t a1, uint64_t a2, const __CFDictionary *a3, __SecKey *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Copy = SOSPeerInfoCreateCopy(*MEMORY[0x1E695E480], a2, a5, a4, a5, a6, a7, a8);
  v12 = Copy;
  if (Copy)
  {
    if ((SOSPeerInfoExpandV2Data(Copy, a5) & 1) == 0 || (context[0] = MEMORY[0x1E69E9820], context[1] = 3221225472, context[2] = __SOSPeerInfoCopyWithV2DictionaryUpdate_block_invoke, context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l, context[4] = v12, CFDictionaryApplyFunction(a3, apply_block_2_7874, context), SOSPeerInfoPackV2Data(v12, v13, v14, v15, v16, v17, v18, v19), (SOSPeerInfoSign(a4, v12, a5) & 1) == 0))
    {
      CFRelease(v12);
      return 0;
    }
  }

  return v12;
}

CFMutableSetRef SOSViewCopyViewSet(unsigned int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v4 = Mutable;
  if ((a1 | 4) == 4)
  {
    CFSetAddValue(Mutable, @"WiFi");
    CFSetAddValue(v4, @"Passwords");
    CFSetAddValue(v4, @"CreditCards");
  }

  if (a1 > 5 || a1 == 2 || (CFSetAddValue(v4, @"iCloudIdentity"), a1 > 4))
  {
LABEL_12:
    if (a1 >= 2 && a1 != 3)
    {
      if (a1 == 6)
      {
        CFSetAddValue(v4, @"Engram");
        CFSetAddValue(v4, @"Manatee");
        CFSetAddValue(v4, @"AutoUnlock");
        CFSetAddValue(v4, @"Health");
        CFSetAddValue(v4, @"ApplePay");
        CFSetAddValue(v4, @"Home");
        CFSetAddValue(v4, @"LimitedPeersAllowed");
        CFSetAddValue(v4, @"MFi");
        CFSetAddValue(v4, @"Mail");
        CFSetAddValue(v4, @"Contacts");
        CFSetAddValue(v4, @"Photos");
        CFSetAddValue(v4, @"Groups");
        v7 = @"FindMy";
        goto LABEL_30;
      }

      if (a1 != 5)
      {
        goto LABEL_18;
      }
    }

    CFSetAddValue(v4, @"PCS-Escrow");
    if (a1 != 5)
    {
      CFSetAddValue(v4, @"PCS-FDE");
      CFSetAddValue(v4, @"PCS-Feldspar");
      CFSetAddValue(v4, @"PCS-Maildrop");
      CFSetAddValue(v4, @"PCS-MasterKey");
      CFSetAddValue(v4, @"PCS-Notes");
      CFSetAddValue(v4, @"PCS-Photos");
      CFSetAddValue(v4, @"PCS-Sharing");
      CFSetAddValue(v4, @"PCS-Backup");
      CFSetAddValue(v4, @"PCS-iCloudDrive");
      CFSetAddValue(v4, @"PCS-iMessage");
      CFSetAddValue(v4, @"NanoRegistry");
      CFSetAddValue(v4, @"WatchMigration");
      goto LABEL_18;
    }

    v7 = @"PCS-MasterKey";
LABEL_30:
    CFSetAddValue(v4, v7);
    return v4;
  }

  CFSetAddValue(v4, @"BackupBagV0");
  if (a1 > 2)
  {
    if (a1 == 3)
    {
LABEL_11:
      CFSetAddValue(v4, @"ContinuityUnlock");
      CFSetAddValue(v4, @"AppleTV");
      CFSetAddValue(v4, @"HomeKit");
      CFSetAddValue(v4, @"AccessoryPairing");
      CFSetAddValue(v4, @"PCS-CloudKit");
      goto LABEL_12;
    }
  }

  else if (a1)
  {
    goto LABEL_11;
  }

  CFSetAddValue(v4, @"OtherSyncable");
  if (a1 <= 3)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (a1 != 3 || !sTestViewSet)
  {
    if (!a1 && sTestViewSet)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __CFSetUnion_block_invoke_8015;
      context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
      context[4] = v4;
      CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
    }

    return v4;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E9F8];

  return CFSetCreateMutable(v2, 0, v5);
}

uint64_t SOSViewInSOSSystem(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"KeychainV0") || CFEqual(v1, @"WiFi") || CFEqual(v1, @"Passwords") || CFEqual(v1, @"CreditCards") || CFEqual(v1, @"iCloudIdentity") || CFEqual(v1, @"BackupBagV0") || CFEqual(v1, @"OtherSyncable") || CFEqual(v1, @"ContinuityUnlock") || CFEqual(v1, @"AppleTV") || CFEqual(v1, @"HomeKit") || CFEqual(v1, @"AccessoryPairing") || CFEqual(v1, @"PCS-CloudKit") || CFEqual(v1, @"PCS-Escrow") || CFEqual(v1, @"PCS-FDE") || CFEqual(v1, @"PCS-Feldspar") || CFEqual(v1, @"PCS-Maildrop") || CFEqual(v1, @"PCS-MasterKey") || CFEqual(v1, @"PCS-Notes") || CFEqual(v1, @"PCS-Photos") || CFEqual(v1, @"PCS-Sharing") || CFEqual(v1, @"PCS-Backup") || CFEqual(v1, @"PCS-iCloudDrive") || CFEqual(v1, @"PCS-iMessage") || CFEqual(v1, @"NanoRegistry") || CFEqual(v1, @"WatchMigration"))
    {
      return 1;
    }

    else
    {
      if (!CFEqual(v1, @"Engram") && !CFEqual(v1, @"Manatee") && !CFEqual(v1, @"AutoUnlock") && !CFEqual(v1, @"Health") && !CFEqual(v1, @"ApplePay") && !CFEqual(v1, @"Home") && !CFEqual(v1, @"LimitedPeersAllowed") && !CFEqual(v1, @"MFi") && !CFEqual(v1, @"Mail") && !CFEqual(v1, @"Contacts") && !CFEqual(v1, @"Photos") && !CFEqual(v1, @"Groups"))
      {
        CFEqual(v1, @"FindMy");
      }

      return 0;
    }
  }

  return result;
}

uint64_t SOSViewHintInSOSSystem(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"ContinuityUnlock") || CFEqual(v1, @"AppleTV") || CFEqual(v1, @"HomeKit") || CFEqual(v1, @"AccessoryPairing") || CFEqual(v1, @"PCS-CloudKit") || CFEqual(v1, @"PCS-Escrow") || CFEqual(v1, @"PCS-FDE") || CFEqual(v1, @"PCS-Feldspar") || CFEqual(v1, @"PCS-Maildrop") || CFEqual(v1, @"PCS-MasterKey") || CFEqual(v1, @"PCS-Notes") || CFEqual(v1, @"PCS-Photos") || CFEqual(v1, @"PCS-Sharing") || CFEqual(v1, @"PCS-Backup") || CFEqual(v1, @"PCS-iCloudDrive") || CFEqual(v1, @"PCS-iMessage") || CFEqual(v1, @"NanoRegistry") || CFEqual(v1, @"WatchMigration"))
    {
      return 1;
    }

    else
    {
      if (!CFEqual(v1, @"Engram") && !CFEqual(v1, @"Manatee") && !CFEqual(v1, @"AutoUnlock") && !CFEqual(v1, @"Health") && !CFEqual(v1, @"ApplePay") && !CFEqual(v1, @"Home") && !CFEqual(v1, @"LimitedPeersAllowed") && !CFEqual(v1, @"MFi") && !CFEqual(v1, @"Mail") && !CFEqual(v1, @"Contacts") && !CFEqual(v1, @"Photos") && !CFEqual(v1, @"Groups"))
      {
        CFEqual(v1, @"FindMy");
      }

      return 0;
    }
  }

  return result;
}

unint64_t SOSViewHintInCKKSSystem(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"Engram") || CFEqual(v1, @"Manatee") || CFEqual(v1, @"AutoUnlock") || CFEqual(v1, @"Health") || CFEqual(v1, @"ApplePay") || CFEqual(v1, @"Home") || CFEqual(v1, @"LimitedPeersAllowed") || CFEqual(v1, @"MFi") || CFEqual(v1, @"Mail") || CFEqual(v1, @"Contacts") || CFEqual(v1, @"Photos") || CFEqual(v1, @"Groups") || CFEqual(v1, @"FindMy") != 0;
  }

  return result;
}

uint64_t SOSViewsGetV0ViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0ViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetSingleton;
  if (SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetOnce, block);
  }

  return SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetSingleton;
}

CFSetRef __SOSViewsGetV0ViewSet_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"KeychainV0";
  result = CFSetCreate(*MEMORY[0x1E695E480], v3, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSViewsGetV0SubviewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0SubviewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetSingleton;
  if (SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetOnce, block);
  }

  return SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetSingleton;
}

CFMutableSetRef __SOSViewsGetV0SubviewSet_block_invoke(uint64_t a1)
{
  result = SOSViewCopyViewSet(4u);
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSViewsGetUserVisibleSet()
{
  if (SOSViewsGetUserVisibleSet_onceToken != -1)
  {
    dispatch_once(&SOSViewsGetUserVisibleSet_onceToken, &__block_literal_global_8018);
  }

  return SOSViewsGetUserVisibleSet_subViewSet;
}

void __SOSViewsGetUserVisibleSet_block_invoke()
{
  SOSViewsGetUserVisibleSet_subViewSet = SOSViewCopyViewSet(4u);
  CFSetRemoveValue(SOSViewsGetUserVisibleSet_subViewSet, @"iCloudIdentity");
  v0 = SOSViewsGetUserVisibleSet_subViewSet;

  CFSetRemoveValue(v0, @"BackupBagV0");
}

uint64_t SOSViewsGetV0BackupViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0BackupViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetSingleton;
  if (SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetOnce, block);
  }

  return SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetSingleton;
}

CFSetRef __SOSViewsGetV0BackupViewSet_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"KeychainV0-tomb";
  result = CFSetCreate(*MEMORY[0x1E695E480], v3, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSViewsGetV0BackupBagViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0BackupBagViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetSingleton;
  if (SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetOnce, block);
  }

  return SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetSingleton;
}

CFSetRef __SOSViewsGetV0BackupBagViewSet_block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"BackupBagV0-tomb";
  result = CFSetCreate(*MEMORY[0x1E695E480], v3, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  return result;
}

void SOSViewsSetTestViewsSet(CFTypeRef cf)
{
  v2 = sTestViewSet;
  if (sTestViewSet)
  {
    sTestViewSet = 0;
    CFRelease(v2);
  }

  if (cf)
  {
    sTestViewSet = CFRetain(cf);
  }

  v3 = sosAllViews;
  if (sosAllViews)
  {
    sosAllViews = 0;
    CFRelease(v3);
  }

  sosAllViews = SOSViewCopyViewSet(0);
  CFSetAddValue(sosAllViews, @"KeychainV0");
  if (sTestViewSet)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __CFSetUnion_block_invoke_8015;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = sosAllViews;
    CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
  }
}

uint64_t SOSViewsGetAllCurrent()
{
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  return sosAllViews;
}

void __SOSViewsGetAllCurrent_block_invoke()
{
  sosAllViews = SOSViewCopyViewSet(0);
  CFSetAddValue(sosAllViews, @"KeychainV0");
  if (sTestViewSet)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __CFSetUnion_block_invoke_8015;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = sosAllViews;
    CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
  }
}

const __CFSet *SOSViewBitmaskFromSet(CFSetRef theSet)
{
  v1 = theSet;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (theSet)
  {
    if (SOSViewsGetBitmasks_once != -1)
    {
      dispatch_once(&SOSViewsGetBitmasks_once, &__block_literal_global_156);
    }

    if (SOSViewsGetBitmasks_masks)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __SOSViewBitmaskFromSet_block_invoke;
      v3[3] = &unk_1E70DB2E0;
      v3[4] = &v4;
      v3[5] = SOSViewsGetBitmasks_masks;
      CFSetApplyFunction(v1, apply_block_1_8017, v3);
    }

    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1888A5660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t __SOSViewBitmaskFromSet_block_invoke(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

void __SOSViewsGetBitmasks_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  v0 = sosAllViews;
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __SOSViewsGetBitmasks_block_invoke_2;
  context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
  context[4] = Mutable;
  CFSetApplyFunction(v0, apply_block_1_8017, context);
  Count = CFArrayGetCount(Mutable);
  if (Count < 33)
  {
    *buf = 0;
    v9 = buf;
    v10 = 0x2020000000;
    v11 = 1;
    v13.location = 0;
    v13.length = Count;
    CFArraySortValues(Mutable, v13, BitMaskCompare, 0);
    SOSViewsGetBitmasks_masks = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E528], 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __SOSViewsGetBitmasks_block_invoke_157;
    v6[3] = &unk_1E70DB370;
    v6[4] = buf;
    v5 = v6;
    v14.length = CFArrayGetCount(Mutable);
    v14.location = 0;
    CFArrayApplyFunction(Mutable, v14, apply_block_1_8017, v5);

    _Block_object_dispose(buf, 8);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_9;
  }

  v4 = secLogObjForScope("views");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Count;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Too many views defined, can't make bitmask (%d)", buf, 8u);
  }

  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }
}

void sub_1888A5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFMutableSetRef SOSPeerInfoViewBitMask(uint64_t a1)
{
  result = SOSPeerInfoCopyEnabledViews(a1);
  if (result)
  {
    v2 = result;
    v3 = SOSViewBitmaskFromSet(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

CFMutableSetRef SOSPeerInfoCopyEnabledViews(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) > 1)
  {
    result = SOSPeerInfoV2DictionaryCopySet(a1, sViewsKey);
    if (!result)
    {
      v7 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "%@ v2 peer has no views", &v9, 0xCu);
      }

      return CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    }
  }

  else
  {
    V0ViewSet = SOSViewsGetV0ViewSet();
    Count = CFSetGetCount(V0ViewSet);
    v3 = SOSViewsGetV0ViewSet();
    v4 = *MEMORY[0x1E695E480];

    return CFSetCreateMutableCopy(v4, Count, v3);
  }

  return result;
}

CFMutableSetRef SOSViewCreateSetFromBitmask(uint64_t a1)
{
  if (SOSViewsGetBitmasks_once != -1)
  {
    dispatch_once(&SOSViewsGetBitmasks_once, &__block_literal_global_156);
  }

  v2 = SOSViewsGetBitmasks_masks;
  if (!SOSViewsGetBitmasks_masks)
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SOSViewCreateSetFromBitmask_block_invoke;
  v5[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
  v5[4] = a1;
  v5[5] = Mutable;
  CFDictionaryApplyFunction(v2, apply_block_2_8032, v5);
  return Mutable;
}

void __SOSViewCreateSetFromBitmask_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if ((*(a1 + 32) & a3) != 0)
  {
    CFSetAddValue(*(a1 + 40), a2);
  }
}

BOOL SOSPeerInfoSupportsCKKSForAll(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SOSPeerInfoV2DictionaryCopyBoolean(a1, sCKKSForAll);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFBooleanGetValue(v1) != 0;
  CFRelease(v2);
  return v3;
}

void SOSPeerInfoSetSupportsCKKSForAll(uint64_t a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  SOSPeerInfoV2DictionarySetValue(a1, sCKKSForAll, *v2);
}

const char *SOSViewsXlateAction(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "unknownViewAction";
  }

  else
  {
    return off_1E70DB390[a1 - 1];
  }
}

void SOSViewsForEachDefaultEnabledViewName(void *a1)
{
  v1 = a1;
  v2 = SOSViewCopyViewSet(1u);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __SOSViewsForEachDefaultEnabledViewName_block_invoke;
  context[3] = &unk_1E70DD8F8;
  v3 = v1;
  v5 = v3;
  CFSetApplyFunction(v2, apply_block_1_8017, context);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t __SOSViewsForEachDefaultEnabledViewName_block_invoke(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v3 == result)
    {
      v4 = *(*(v2 + 32) + 16);

      return v4();
    }
  }

  return result;
}

const __CFSet *SOSPeerInfoIsEnabledView(uint64_t a1, const void *a2)
{
  if (*(a1 + 56) > 1)
  {
    v5 = sViewsKey;

    return SOSPeerInfoV2DictionaryHasSetContaining(a1, v5, a2);
  }

  else
  {
    V0ViewSet = SOSViewsGetV0ViewSet();
    return (CFSetContainsValue(V0ViewSet, a2) != 0);
  }
}

void SOSPeerInfoWithEnabledViewSet(uint64_t a1, void (**a2)(void, void))
{
  if (*(a1 + 56) > 1)
  {
    SOSPeerInfoV2DictionaryWithSet(a1, sViewsKey, a2);
  }

  else
  {
    v2 = a2;
    V0ViewSet = SOSViewsGetV0ViewSet();
    a2[2](v2, V0ViewSet);
  }
}

uint64_t SOSPeerInfoGetPermittedViews()
{
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  return sosAllViews;
}

uint64_t SOSViewsEnable(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = SOSPeerInfoCopyEnabledViews(a1);
  if (v6)
  {
    v7 = v6;
    if (SOSViewsRequireIsKnownView(a2, a3))
    {
      V0SubviewSet = SOSViewsGetV0SubviewSet();
      if (!CFSetContainsValue(V0SubviewSet, a2) || !SOSVisibleKeychainNotAllowed(v9))
      {
        CFSetAddValue(v7, a2);
        SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v7);
        CFRelease(v7);
        return 1;
      }

      v10 = 3;
      SOSCreateErrorWithFormat(1026, 0, a3, 0, @"Peer is invalid for this view(%@) (ViewResultCode=%d)", a2, 3);
    }

    else
    {
      v10 = 4;
    }

    CFRelease(v7);
  }

  else
  {
    SOSCreateErrorWithFormat(1024, 0, a3, 0, @"%@", @"Failed to get memory for views in PeerInfo");
    v10 = 0;
  }

  v11 = secLogObjForScope("views");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v12 = *a3;
    }

    else
    {
      v12 = 0;
    }

    *buf = 138412546;
    v15 = a2;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enable view(%@): %@", buf, 0x16u);
  }

  return v10;
}

uint64_t SOSViewsRequireIsKnownView(void *a1, CFErrorRef *a2)
{
  IsKnownView = SOSViewsIsKnownView(a1);
  if ((IsKnownView & 1) == 0)
  {
    SOSCreateErrorWithFormat(1026, 0, a2, 0, @"Unknown view(%@) (ViewResultCode=%d)", a1, 4);
  }

  return IsKnownView;
}

uint64_t SOSViewsIsKnownView(uint64_t value)
{
  if (value)
  {
    v1 = value;
    if (SOSViewsGetAllCurrent_dot != -1)
    {
      dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
    }

    if (CFSetContainsValue(sosAllViews, v1))
    {
      return 1;
    }

    else
    {
      v2 = secLogObjForScope("views");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Not a known view", v3, 2u);
      }

      return 0;
    }
  }

  return value;
}

uint64_t SOSViewSetEnable(uint64_t a1, const __CFSet *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = SOSPeerInfoCopyEnabledViews(a1);
  v5 = v4;
  if (v4)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSViewSetEnable_block_invoke;
    context[3] = &unk_1E70DB328;
    context[5] = a1;
    context[6] = v4;
    context[4] = &v11;
    CFSetApplyFunction(a2, apply_block_1_8017, context);
    if (*(v12 + 24) == 1)
    {
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v5);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = secLogObjForScope("views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "failed to copy enabled views", buf, 2u);
    }
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __SOSViewSetEnable_block_invoke(uint64_t a1, void *value)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!SOSViewsIsKnownView(value) || (V0SubviewSet = SOSViewsGetV0SubviewSet(), CFSetContainsValue(V0SubviewSet, value)) && (SOSVisibleKeychainNotAllowed(v5) & 1) != 0)
  {
    v6 = secLogObjForScope("views");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = value;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "couldn't add view %@", &v8, 0xCu);
    }
  }

  else if (!CFSetContainsValue(*(a1 + 48), value))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v7 = *(a1 + 48);

    CFSetAddValue(v7, value);
  }
}

uint64_t SOSViewsDisable(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = SOSPeerInfoCopyEnabledViews(a1);
  if (v6)
  {
    if (SOSViewsRequireIsKnownView(a2, a3))
    {
      CFSetRemoveValue(v6, a2);
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v6);
      CFRelease(v6);
      return 2;
    }

    CFRelease(v6);
    v6 = 4;
  }

  else
  {
    SOSCreateErrorWithFormat(1024, 0, a3, 0, @"%@", @"Failed to get memory for views in PeerInfo");
  }

  v8 = secLogObjForScope("views");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v9 = *a3;
    }

    else
    {
      v9 = 0;
    }

    *buf = 138412546;
    v11 = a2;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Failed to disable view(%@): %@", buf, 0x16u);
  }

  return v6;
}

uint64_t SOSViewSetDisable(uint64_t a1, const __CFSet *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = SOSPeerInfoCopyEnabledViews(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SOSViewSetDisable_block_invoke;
    v9[3] = &unk_1E70DB2E0;
    v9[4] = &v11;
    v9[5] = v4;
    CFSetApplyFunction(a2, apply_block_1_8017, v9);
    if (*(v12 + 24) == 1)
    {
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v5);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = secLogObjForScope("views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "failed to copy enabled views", buf, 2u);
    }
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1888A67A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SOSViewSetDisable_block_invoke(uint64_t a1, void *value)
{
  v8 = *MEMORY[0x1E69E9840];
  if (SOSViewsIsKnownView(value) && CFSetContainsValue(*(a1 + 40), value))
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;

    CFSetRemoveValue(v4, value);
  }

  else
  {
    v5 = secLogObjForScope("views");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = value;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "couldn't delete view %@", &v6, 0xCu);
    }
  }
}

uint64_t SOSViewsQuery(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (SOSViewsRequireIsKnownView(a2, a3))
  {
    v6 = SOSPeerInfoCopyEnabledViews(a1);
    if (v6)
    {
      v7 = v6;
      if (CFSetContainsValue(v6, @"KeychainV0") && (V0SubviewSet = SOSViewsGetV0SubviewSet(), CFSetContainsValue(V0SubviewSet, a2)))
      {
        v9 = 1;
      }

      else if (CFSetContainsValue(v7, a2))
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      CFRelease(v7);
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v11 = secLogObjForScope("views");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = *a3;
      }

      else
      {
        v12 = 0;
      }

      v13 = 138412546;
      v14 = a2;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Failed to query view(%@): %@", &v13, 0x16u);
    }

    return 4;
  }

  return v9;
}

uint64_t SOSViewSetIntersectsV0(const __CFSet *a1)
{
  V0ViewSet = SOSViewsGetV0ViewSet();
  v3 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  if (a1 && V0ViewSet)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __CFSetIntersectionIsEmpty_block_invoke;
    v5[3] = &unk_1E70DB2E0;
    v5[4] = &v6;
    v5[5] = V0ViewSet;
    CFSetApplyFunction(a1, apply_block_1_8017, v5);
    v3 = *(v7 + 24) ^ 1;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void sub_1888A6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CFSetIntersectionIsEmpty_block_invoke(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 40), a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  return result;
}

uint64_t SOSPeerInfoV0ViewsEnabled(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SOSPeerInfoCopyEnabledViews(a1);
  v2 = SOSViewSetIntersectsV0(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t SOSPeerInfoHasUserVisibleViewsEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = SOSPeerInfoCopyEnabledViews(a1);
    if (SOSViewsGetUserVisibleSet_onceToken != -1)
    {
      dispatch_once(&SOSViewsGetUserVisibleSet_onceToken, &__block_literal_global_8018);
    }

    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 1;
    if (v1 && SOSViewsGetUserVisibleSet_subViewSet)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __CFSetIntersectionIsEmpty_block_invoke;
      v5[3] = &unk_1E70DB2E0;
      v5[4] = &v6;
      v5[5] = SOSViewsGetUserVisibleSet_subViewSet;
      CFSetApplyFunction(v1, apply_block_1_8017, v5);
      v2 = *(v7 + 24) ^ 1;
      _Block_object_dispose(&v6, 8);
LABEL_9:
      CFRelease(v1);
      v3 = v2;
      return v3 & 1;
    }

    _Block_object_dispose(&v6, 8);
    v2 = 0;
    v3 = 0;
    if (v1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1888A6D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CreateXPCObjectWithCFSetRef(const __CFSet *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = der_sizeof_set(a1, a2);
    if (v10)
    {
      v11 = v10;
      v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
      if (v12)
      {
        v13 = v12;
        der_encode_set_repair(a1, a2, 0, v12, v12 + v11);
        v14 = xpc_data_create(v13, v11);
        free(v13);
        goto LABEL_5;
      }
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(2, sSecXPCErrorDomain, 0, a2, a5, @"Unexpected Null Set to encode", a7, a8);
  }

  v14 = 0;
LABEL_5:

  return v14;
}

uint64_t __CFSecRecoveryKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void CFSecRecoveryKeyDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }
}

id SecRKCreateRecoveryKeyString(void *a1)
{
  v7 = 0;
  v2 = SecPasswordGenerate(4, &v7, 0);
  if (v2)
  {
    v3 = v2;
    if (ValidateRecoveryKey(v2, a1))
    {
      v4 = v3;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v3 = v7;
  if (a1)
  {
    v5 = v7;
    v4 = 0;
    *a1 = v3;
    goto LABEL_10;
  }

  if (v7)
  {
    v7 = 0;
LABEL_8:
    CFRelease(v3);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t ValidateRecoveryKey(CFStringRef theString, void *a2)
{
  v6 = 0;
  v3 = SecPasswordValidatePasswordFormat(4, theString, &v6);
  if ((v3 & 1) == 0)
  {
    v4 = v6;
    if (a2)
    {
      *a2 = v6;
    }

    else if (v6)
    {
      v6 = 0;
      CFRelease(v4);
    }
  }

  return v3;
}

void *SecRKCreateRecoveryKeyWithError(void *a1, void *a2)
{
  v3 = a1;
  if (!ValidateRecoveryKey(v3, a2))
  {
    goto LABEL_9;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CFSecRecoveryKeyGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDSingleton;
  if (CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDOnce != -1)
  {
    dispatch_once(&CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDOnce, block);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    ExternalRepresentation = CFStringCreateExternalRepresentation(SecCFAllocatorZeroize_sAllocator, v3, 0x8000100u, 0);
    Instance[2] = ExternalRepresentation;
    if (!ExternalRepresentation)
    {
      CFRelease(Instance);
LABEL_9:
      Instance = 0;
    }
  }

  return Instance;
}

__CFString *SecRKCopyAccountRecoveryPassword(uint64_t a1)
{
  v1 = SecRKCreateDerivedSecret(a1, 32, &passwordInfoKey);
  if (v1)
  {
    v2 = v1;
    CFDataGetBytePtr(v1);
    v3 = (2 * (((CFDataGetLength(v2) + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
    if (v3 >= 0x400)
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 0x53C0000Eu);
    }

    v4 = malloc_type_malloc(v3, 0xF2DADC5FuLL);
    if (v4)
    {
      v5 = v4;
      BytePtr = CFDataGetBytePtr(v2);
      Length = CFDataGetLength(v2);
      SecBase64Encode_(BytePtr, Length, v5, v3, 0, &v10);
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v8 = CFStringCreateWithBytes(SecCFAllocatorZeroize_sAllocator, v5, v3, 0x8000100u, 0);
      cc_clear();
      free(v5);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFData *SecRKCreateDerivedSecret(uint64_t a1, CFIndex a2, uint64_t a3)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, a2);
  if (Mutable)
  {
    ccsha256_di();
    CFDataGetLength(*(a1 + 16));
    CFDataGetBytePtr(*(a1 + 16));
    CFDataGetLength(Mutable);
    CFDataGetMutableBytePtr(Mutable);
    if (cchkdf())
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

id SecRKCopyAccountRecoveryVerifier(void *a1, void *a2)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v17 = 0;
  if (connectAppleIDFrameworkSymbols_onceToken != -1)
  {
    dispatch_once(&connectAppleIDFrameworkSymbols_onceToken, &__block_literal_global_8102);
  }

  if (connectAppleIDFrameworkSymbols_framework)
  {
    v4 = localProtocolSRPGROUP == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || localAppleIDauthSupportCreateVerifierPtr == 0)
  {
    SOSCreateErrorWithFormat(1041, 0, &v17, 0, @"%@", @"Recovery Key Creation Not Supported on this platform");
    v6 = 0;
    if (a2)
    {
      *a2 = v17;
    }
  }

  else
  {
    v7 = CFDataCreateWithRandomBytes(0x20uLL);
    v8 = localProtocolSRPGROUP;
    v9 = localAppleIDauthSupportCreateVerifierPtr(localProtocolSRPGROUP, @"foo", v7, &unk_1EFAAC730, v3, &v17);
    v10 = SecRKCreateRecoveryKeyWithError(v3, 0);
    v11 = SecRKCreateDerivedSecret(v10, 32, &masterkeyIDSalt);
    v12 = v11;
    if (v9 && v11)
    {
      v18[0] = @"s";
      v18[1] = @"i";
      v19[0] = v7;
      v19[1] = &unk_1EFAAC730;
      v18[2] = @"p";
      v18[3] = @"v";
      v19[2] = v8;
      v19[3] = v9;
      v18[4] = @"mkid";
      v19[4] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
    }

    else
    {
      v13 = 0;
      if (a2)
      {
        v14 = v17;
        if (v17)
        {
          v15 = v17;
          v13 = 0;
          *a2 = v14;
        }
      }
    }

    v6 = v13;
  }

  return v6;
}

void *__connectAppleIDFrameworkSymbols_block_invoke()
{
  localAppleIDauthSupportCreateVerifierPtr = 0;
  localProtocolSRPGROUP = 0;
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDAuthSupport.framework/AppleIDAuthSupport", 2);
  connectAppleIDFrameworkSymbols_framework = result;
  if (result)
  {
    v1 = dlsym(result, "kAppleIDAuthSupportProtocolSRPGROUP2048SHA256PBKDF");
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    localProtocolSRPGROUP = v2;
    result = dlsym(connectAppleIDFrameworkSymbols_framework, "AppleIDAuthSupportCreateVerifier");
    localAppleIDauthSupportCreateVerifierPtr = result;
  }

  return result;
}

__CFData *RKBackupCreateECKey(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x18CFD9EA0]();
  MEMORY[0x1EEE9AC00](v4);
  v6 = 0;
  do
  {
    v7 = (&v14[v6 / 8] - v5);
    *v7 = 0xAAAAAAAAAAAAAAAALL;
    v7[1] = 0xAAAAAAAAAAAAAAAALL;
    v6 += 16;
  }

  while (v5 != v6);
  v8 = SecRKCreateDerivedSecret(a1, 128, backupPublicKey);
  if (v8)
  {
    v9 = v8;
    CFDataGetLength(v8);
    CFDataGetBytePtr(v9);
    ccrng();
    if (ccec_generate_key_deterministic())
    {
      Mutable = 0;
    }

    else
    {
      v10 = (cczp_bitlen() + 7) >> 3 << v2;
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
      CFDataSetLength(Mutable, v10);
      if (Mutable)
      {
        CFDataGetMutableBytePtr(Mutable);
        ccec_compact_export();
      }
    }

    CFRelease(v9);
  }

  else
  {
    Mutable = 0;
  }

  v12 = Mutable;

  return v12;
}

uint64_t SecRKRegisterBackupPublicKey(uint64_t a1, CFTypeRef *a2)
{
  ECKey = RKBackupCreateECKey(a1, 0);
  if (ECKey)
  {
    v4 = ECKey;
    v5 = SOSCCRegisterRecoveryPublicKey(ECKey, a2);
    CFRelease(v4);
    return v5;
  }

  else
  {
    SOSCreateErrorWithFormat(1034, 0, a2, 0, @"%@", @"Failed to create key from rk");
    return 0;
  }
}

const SecAsn1Template *NSS_TimeChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
  }

  else
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
  }

  if (v5 == 24)
  {
    return kSecAsn1GeneralizedTimeTemplate;
  }

LABEL_9:
  v7 = &off_1E70DB640;
  result = kSecAsn1GeneralizedTimeTemplate;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v7 - 8);
    v7 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

void *PR_getThreadErrInfo(int a1, int *a2)
{
  if ((PR_threadKeyInitFlag & 1) == 0)
  {
    pthread_mutex_lock(&PR_threadKeyLock);
    if (!a1 && PR_threadKeyErrorFlag)
    {
      pthread_mutex_unlock(&PR_threadKeyLock);
      v4 = 0;
      v5 = -5991;
LABEL_15:
      *a2 = v5;
      return v4;
    }

    if ((PR_threadKeyInitFlag & 1) == 0)
    {
      v6 = pthread_key_create(&PR_threadKey, MEMORY[0x1E69E9B38]);
      if (v6)
      {
        v7 = v6;
        PR_threadKeyErrorFlag = 1;
        pthread_mutex_unlock(&PR_threadKeyLock);
        v4 = 0;
        *a2 = v7;
        return v4;
      }

      PR_threadKeyErrorFlag = 0;
      PR_threadKeyInitFlag = 1;
    }

    pthread_mutex_unlock(&PR_threadKeyLock);
  }

  *a2 = 0;
  v8 = pthread_getspecific(PR_threadKey);
  v4 = v8;
  if (a1 && !v8)
  {
    v9 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    v4 = v9;
    if (!v9)
    {
      v5 = -6000;
      goto LABEL_15;
    }

    *v9 = 0;
    pthread_setspecific(PR_threadKey, v9);
  }

  return v4;
}

const SecAsn1Template *NSS_ATVChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
  }

  else
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
  }

  if (v5 == 19)
  {
    return kSecAsn1PrintableStringTemplate;
  }

LABEL_9:
  v7 = &off_1E70DBBE0;
  result = kSecAsn1PrintableStringTemplate;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v7 - 8);
    v7 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

void *NSS_genNameChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
    if (!*(a5 + 16))
    {
      return &kSecAsn1OtherNameTemplate;
    }
  }

  else
  {
    if (!a4)
    {
      return &kSecAsn1OtherNameTemplate;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
    if (!v5)
    {
      return &kSecAsn1OtherNameTemplate;
    }
  }

  v6 = &off_1E70DBC50;
  result = &kSecAsn1OtherNameTemplate;
  while (1)
  {
    v8 = *v6;
    if (!*v6)
    {
      break;
    }

    v9 = *(v6 - 8);
    v6 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

uint64_t SecAsn1TaggedTemplateChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (a2)
  {
    v6 = *(a5 + 16);
  }

  else if (a4)
  {
    v6 = *a3 & 0x1F;
    *(a5 + 16) = v6;
  }

  else
  {
    v6 = 0;
  }

  result = *(a6 + 1);
  if (result && v6 != *a6)
  {
    for (i = a6 + 24; ; i += 16)
    {
      v9 = *i;
      if (!*i)
      {
        break;
      }

      v10 = *(i - 8);
      if (v6 == v10)
      {
        return v9;
      }
    }
  }

  return result;
}

const SecAsn1Template *NSS_P7_ContentInfoChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_Data))
  {
    v4 = 1;
    v5 = kSecAsn1PointerToOctetStringTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_EncryptedData))
  {
    v4 = 6;
    v5 = &NSS_P7_PtrToEncryptedDataTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_SignedData))
  {
    v4 = 2;
LABEL_9:
    v5 = kSecAsn1PointerToAnyTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_EnvelopedData))
  {
    v4 = 3;
    goto LABEL_9;
  }

  v5 = kSecAsn1PointerToAnyTemplate;
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_SignedAndEnvelopedData))
  {
    v4 = 4;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_DigestedData))
  {
    v4 = 5;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

LABEL_10:
  if (!a2)
  {
    *(a1 + 16) = v4;
  }

  return v5;
}

unint64_t PL_ArenaAllocate(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 48);
  v3 = (v2 + a2) & ~v2;
  if (v3 < a2)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = v3;
  do
  {
    result = v6[3];
    if (v3 <= v6[2] - result)
    {
      *(a1 + 32) = v6;
      v6[3] = result + v3;
      return result;
    }

    v6 = *v6;
  }

  while (v6);
  if (*(a1 + 40) > v3)
  {
    v3 = *(a1 + 40);
  }

  v8 = v2 + 32;
  if (v8 > ~v3)
  {
    return 0;
  }

  v9 = v3 + v8;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3 + v8;
  }

  v11 = malloc_type_malloc(v10, 0x64033449uLL);
  result = (v11 + *(a1 + 48) + 32) & ~*(a1 + 48);
  v12 = __CFADD__(result, v7);
  if (v11)
  {
    v13 = !v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v11);
    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v11[2] = v11 + v9;
  v11[3] = result + v7;
  v14 = *(a1 + 32);
  *v11 = *v14;
  v11[1] = result;
  *v14 = v11;
  *(a1 + 32) = v11;
  if (!*a1)
  {
    *a1 = v11;
  }

  return result;
}

char *PL_ArenaGrow(uint64_t a1, char *a2, unsigned int a3, unsigned int a4)
{
  if (a3 > 0x7FFFFFFE || a4 > 0x7FFFFFFE)
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 48);
  v8 = (v7 + a3) & ~v7;
  if (v8 > 0x7FFFFFFE)
  {
    return 0;
  }

  v10 = ~v7;
  v11 = v8 + a4;
  if (v8 + a4 <= 2 * v8)
  {
    v11 = 2 * v8;
  }

  v12 = (v7 + v11) & v10;
  if (v12 > 0x7FFFFFFE)
  {
    return 0;
  }

  v14 = (v12 + v7) & v10;
  if (v14 < v12)
  {
    return 0;
  }

  v17 = *(a1 + 32);
  v15 = *(v17 + 24);
  if (v14 <= *(v17 + 16) - v15)
  {
    *(v17 + 24) = &v15[v14];
  }

  else
  {
    v15 = PL_ArenaAllocate(a1, v14);
  }

  if (v15)
  {
    *(*(v6 + 32) + 24) = &v15[~*(v6 + 48) & (*(v6 + 48) + a4 + a3)];
    memcpy(v15, a2, a3);
    v18 = *v6;
    if (*v6)
    {
      while (1)
      {
        v19 = v18;
        if (v18[1] == a2 && &a2[v8 & 0x7FFFFFFF] == v18[3])
        {
          break;
        }

        v18 = *v18;
        v6 = v19;
        if (!*v19)
        {
          return v15;
        }
      }

      *v6 = *v18;
      free(v18);
    }
  }

  return v15;
}

uint64_t SEC_ASN1EncoderUpdate(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v94 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    v6 = 2;
    *(a1 + 16) = 2;
  }

  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = a3 + 1;
  while (v6 == 2)
  {
    v10 = *(a1 + 8);
    v11 = *(v10 + 10);
    if (v11 > 2)
    {
      if ((v11 - 5) < 4)
      {
        goto LABEL_20;
      }

      if (v11 != 3)
      {
        if (v11 != 4)
        {
LABEL_151:
          *(a1 + 16) = 1;
          return 0xFFFFFFFFLL;
        }

        if (*(v10 + 16))
        {
          LOWORD(v92) = 0;
          (*(*v10 + 56))(*(*v10 + 64), &v92, 2, *(v10 + 14), 3);
        }

        v12 = v10[3];
LABEL_38:
        *(*v10 + 8) = v12;
        goto LABEL_102;
      }

      v28 = v10[4];
      v29 = *v10;
      v30 = *(*v10 + 32);
      if (v30)
      {
        v31 = *(v28 + 56);
        v32 = *(v28 + 16);
        *(v29 + 48) = 1;
        v30(*(v29 + 40), 0, v32, v31);
        *(v29 + 48) = 0;
      }

      v33 = *(v28 + 8);
      v34 = *(v33 + 24);
      *(v28 + 8) = v33 + 24;
      if (!v34)
      {
        *(v28 + 40) = 9;
        goto LABEL_20;
      }

      *(v28 + 16) = v10[2] + *(v33 + 28);
      v35 = *v10;
      v36 = *(*v10 + 32);
      if (v36)
      {
        *(v35 + 48) = 1;
        v36(*(v35 + 40), 1);
        *(v35 + 48) = 0;
        v35 = *v10;
      }

      *(v35 + 8) = v28;
      goto LABEL_50;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_151;
        }

        v12 = v10[4];
        v13 = *v10[2];
        v14 = *(*(v12 + 8) + 4);
        do
        {
          v15 = *v13++;
        }

        while (v15 != *(v12 + 16) - v14);
        v16 = *v13;
        if (!v16)
        {
          *(v12 + 40) = 9;
          goto LABEL_20;
        }

        *(v12 + 16) = v16 + v14;
        *(v12 + 40) = 0;
        *(v12 + 64) = 0;
        goto LABEL_38;
      }

      if (!*(a1 + 24))
      {
        v37 = v10[6];
        if (v37 > 15)
        {
          if ((v37 - 16) < 2)
          {
LABEL_20:
            *(v10 + 10) = 4;
            goto LABEL_102;
          }

          if (v37 == 28)
          {
            v38 = v10[2];
            v39 = *v38;
            if ((*v38 & 3) != 0)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (v37 == 30)
            {
              v38 = v10[2];
              v39 = *v38;
              if ((*v38 & 1) == 0)
              {
                goto LABEL_94;
              }

LABEL_93:
              *(*v10 + 16) = 1;
              goto LABEL_20;
            }

LABEL_88:
            v38 = v10[2];
            v39 = *v38;
          }

LABEL_94:
          (*(*v10 + 56))(*(*v10 + 64), v38[1], v39, *(v10 + 14), 2);
          goto LABEL_20;
        }

        if (v37 == 2)
        {
          v68 = v10[2];
          v69 = *v68;
          if (*v68)
          {
            v70 = v68[1];
            v71 = *(v10 + 21);
            v72 = *v70;
            if ((*v70 & 0x80000000) == 0)
            {
              v73 = v70;
              v74 = v69;
              goto LABEL_140;
            }

LABEL_145:
            v73 = v70;
            v74 = v69;
            if (v71)
            {
LABEL_140:
              while (!v72)
              {
                v69 = v74 - 1;
                if (v74 == 1)
                {
                  break;
                }

                v70 = v73 + 1;
                if (v73[1] < 0)
                {
                  if (v71)
                  {
                    break;
                  }
                }

                v72 = *++v73;
                --v74;
                if ((v72 & 0x80) != 0)
                {
                  goto LABEL_145;
                }
              }

              (*(*v10 + 56))(*(*v10 + 64), v73, v74, *(v10 + 14), 2);
            }

            else
            {
              LOBYTE(v92) = 0;
              (*(*v10 + 56))(*(*v10 + 64), &v92, 1, *(v10 + 14), 2);
              (*(*v10 + 56))(*(*v10 + 64), v70, v69, *(v10 + 14), 2);
            }
          }

          goto LABEL_20;
        }

        if (v37 == 3)
        {
          v49 = v10[2];
          v50 = *v49 + 7;
          v51 = v50 >> 3;
          LOBYTE(v92) = (v50 & 0xF8) - *v49;
          (*(*v10 + 56))(*(*v10 + 64), &v92, 1, *(v10 + 14), 2);
          (*(*v10 + 56))(*(*v10 + 64), v49[1], v51, *(v10 + 14), 2);
          goto LABEL_20;
        }

        goto LABEL_88;
      }

      if ((v8 & 1) == 0)
      {
        if (v10[6] != 1024)
        {
          LOBYTE(v92) = v10[6];
          (*(*v10 + 56))(*(*v10 + 64), &v92, 1, *(v10 + 14), 0);
          if (v10[6] == 3)
          {
            v93 = -86;
            v92 = 0xAAAAAAAAAAAAAAAALL;
            if (v9 < 0x80)
            {
              LOBYTE(v92) = v9;
              v21 = 1;
            }

            else
            {
              v17 = 0;
              v18 = v9;
              do
              {
                v19 = v17++;
                v20 = v18 >= 0x100;
                v18 >>= 8;
              }

              while (v20);
              v21 = v19 + 2;
              LOBYTE(v92) = v17 | 0x80;
              v22 = v9;
              do
              {
                *(&v92 + v17) = v22;
                v22 >>= 8;
                --v17;
              }

              while (v17);
            }

            (*(*v10 + 56))(*(*v10 + 64), &v92, v21, *(v10 + 14), 1);
            LOBYTE(v92) = 0;
            (*(*v10 + 56))(*(*v10 + 64), &v92, 1, *(v10 + 14), 2);
          }

          else
          {
            v92 = 0xAAAAAAAAAAAAAAAALL;
            v93 = -86;
            if (a3 < 0x80)
            {
              LOBYTE(v92) = a3;
              v66 = 1;
            }

            else
            {
              v63 = 0;
              v64 = a3;
              do
              {
                v65 = v63++;
                v20 = v64 >= 0x100;
                v64 >>= 8;
              }

              while (v20);
              v66 = v65 + 2;
              LOBYTE(v92) = v63 | 0x80;
              v67 = a3;
              do
              {
                *(&v92 + v63) = v67;
                v67 >>= 8;
                --v63;
              }

              while (v63);
            }

            (*(*v10 + 56))(*(*v10 + 64), &v92, v66, *(v10 + 14), 1);
          }
        }

        (*(*v10 + 56))(*(*v10 + 64), v4, a3, *(v10 + 14), 2);
      }

      v48 = *v10;
LABEL_101:
      *(v48 + 16) = 3;
      goto LABEL_102;
    }

    v91 = 0;
    v23 = v10[6];
    if (v23 == 1024)
    {
      goto LABEL_32;
    }

    if ((v23 & 0x100000) != 0)
    {
      v40 = v10[1];
      if (!v40[6])
      {
LABEL_62:
        *(*v10 + 16) = 1;
        goto LABEL_102;
      }

      v41 = v10[2];
      v42 = (v40 + 12);
      v43 = 1;
      while (*v41 != *(v42 - 2))
      {
        ++v43;
        v44 = *v42;
        v42 += 6;
        if (!v44)
        {
          goto LABEL_62;
        }
      }

      *(v10 + 10) = 8;
      v55 = *v10;
      v56 = &v40[6 * v43];
      v57 = v41 - v40[1];
LABEL_79:
      v58 = sec_asn1e_push_state(v55, v56, v57, 1);
      if (v58)
      {
        v28 = v58;
        v59 = *v58;
        v60 = *(*v58 + 32);
        if (v60)
        {
          v61 = *(v58 + 56);
          v62 = *(v58 + 16);
          *(v59 + 48) = 1;
          v60(*(v59 + 40), 1, v62, v61);
          *(v59 + 48) = 0;
        }

LABEL_50:
        sec_asn1e_init_state_based_on_template(v28);
        goto LABEL_102;
      }

      goto LABEL_102;
    }

    if (*(*v10 + 20) && *(v10 + 18))
    {
      v24 = v4;
      v25 = v9;
      v26 = v8;
      if (*(*v10 + 24))
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v10 + 17) == 0;
      }
    }

    else
    {
      v25 = v9;
      v24 = v4;
      v26 = v8;
      v27 = 0;
    }

    v45 = *(v10 + 45);
    v46 = *(v10 + 44);
    v47 = sec_asn1e_contents_length(v10[1], v10[2], *(v10 + 20), v27, &v91);
    if (!v91)
    {
      v52 = v47;
      if (v47 || !*(v10 + 19))
      {
        if (v27)
        {
          v52 = 0;
          *(v10 + 16) = 1;
          v46 |= 0x20u;
        }

        LOBYTE(v92) = v46 | v45;
        (*(*v10 + 56))(*(*v10 + 64), &v92, 1, *(v10 + 14), 0);
        v53 = *(v10 + 16);
        v93 = -86;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (v53)
        {
          LOBYTE(v92) = 0x80;
          v54 = 1;
          v8 = v26;
          v4 = v24;
          v9 = v25;
        }

        else
        {
          v8 = v26;
          v9 = v25;
          if (v52 < 0x80)
          {
            LOBYTE(v92) = v52;
            v54 = 1;
            v4 = v24;
          }

          else
          {
            v75 = 0;
            v76 = v52;
            v4 = v24;
            do
            {
              v77 = v75++;
              v20 = v76 >= 0x100;
              v76 >>= 8;
            }

            while (v20);
            v54 = v77 + 2;
            LOBYTE(v92) = v75 | 0x80;
            v78 = v52;
            do
            {
              *(&v92 + v75) = v78;
              v78 >>= 8;
              --v75;
            }

            while (v75);
          }
        }

        (*(*v10 + 56))(*(*v10 + 64), &v92, v54, *(v10 + 14), 1);
        if (!v52 && !*(v10 + 16))
        {
          goto LABEL_20;
        }

        if (*(v10 + 15))
        {
          *(v10 + 10) = 4;
          v80 = v10[1];
          v79 = v10[2];
          v81 = *(v80 + 8);
          if (v81 && (*(v80 + 1) & 0x40) != 0)
          {
            if (*v81)
            {
              if (v79)
              {
                v82 = v79 - *(v80 + 4);
              }

              else
              {
                v82 = 0;
              }

              v81 = (*v81)(v82, 1, 0, 0);
              v79 = v10[2];
            }

            else
            {
              v81 = 0;
            }
          }

          v88 = *v10;
          v86 = v79;
LABEL_136:
          v89 = sec_asn1e_push_state(v88, v81, v86, 1);
          if (v89)
          {
            sec_asn1e_init_state_based_on_template(v89);
          }

          goto LABEL_102;
        }

        v83 = v10[6];
        if ((v83 - 16) >= 2)
        {
          if ((v83 - 8208) > 1)
          {
LABEL_32:
            *(v10 + 10) = 1;
            goto LABEL_102;
          }

          v84 = v10[2];
          v85 = *v84;
          if (!*v84)
          {
            goto LABEL_20;
          }

          v86 = *v85;
          if (!*v85)
          {
            goto LABEL_20;
          }

          *(v10 + 10) = 2;
          v87 = v10[1];
          v81 = *(v87 + 8);
          if (v81 && (*(v87 + 1) & 0x40) != 0)
          {
            if (*v81)
            {
              v81 = (*v81)(v84 - *(v87 + 4), 1, 0, 0);
              v86 = *v85;
            }

            else
            {
              v81 = 0;
            }
          }

          v88 = *v10;
          goto LABEL_136;
        }

        *(v10 + 10) = 3;
        v55 = *v10;
        v57 = v10[2];
        v56 = v10[1] + 24;
        goto LABEL_79;
      }
    }

    *(v10 + 10) = 4;
    v48 = *v10;
    v8 = v26;
    v4 = v24;
    v9 = v25;
    if (*(*v10 + 20) && *(v10 + 18) && *(v48 + 24))
    {
      goto LABEL_101;
    }

LABEL_102:
    v6 = *(a1 + 16);
    if (v6 == 1)
    {
      break;
    }

    if (!*(a1 + 8))
    {
      result = 0;
      *(a1 + 16) = 0;
      return result;
    }
  }

  if (v6 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

unint64_t sec_asn1e_push_state(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 8);
  result = PORT_ArenaAlloc(*a1, 0x58uLL);
  if (result)
  {
    *(result + 16) = 0u;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 32) = 0u;
    *(result + 24) = v8;
    *result = a1;
    *(result + 8) = a2;
    *(result + 40) = 9;
    if (a3)
    {
      *(result + 16) = a3 + *(a2 + 4);
    }

    if (v8)
    {
      v10 = *(v8 + 56);
      if (a4)
      {
        ++v10;
      }

      *(result + 56) = v10;
      *(v8 + 32) = result;
    }

    *(a1 + 8) = result;
  }

  else
  {
    *(a1 + 16) = 1;
  }

  return result;
}

unint64_t sec_asn1e_init_state_based_on_template(unint64_t a1)
{
  do
  {
    v2 = *(a1 + 8);
    v3 = *v2;
    v4 = v3 & 0x200;
    v5 = (v3 >> 8) & 1;
    if ((v3 & 0x100000) != 0)
    {
      v14 = (v3 >> 18) & 1;
      LODWORD(v15) = (v3 >> 21) & 1;
      v18 = 0x100000;
LABEL_39:
      LODWORD(v16) = v3;
      goto LABEL_40;
    }

    v6 = (v3 & 0xC0) != 0 && v4 == 0;
    v7 = !v6;
    if (v3 & 0x1800) == 0 && (v7)
    {
      v14 = (v3 >> 18) & 1;
      LODWORD(v15) = (v3 >> 21) & 1;
      v18 = v3 & 0xFF4BA4FF;
      goto LABEL_39;
    }

    *(a1 + 64) = 0;
    v8 = *(a1 + 16);
    if ((v3 & 0x1000) != 0)
    {
      v9 = *v8;
      *(a1 + 40) = 7;
      if ((v3 & 0x100) != 0 && v9 == 0)
      {
        return a1;
      }
    }

    else
    {
      if ((v3 & 0x800) != 0)
      {
        *(a1 + 40) = 6;
      }

      else
      {
        *(a1 + 44) = v3 & 0xE0;
        *(a1 + 45) = v3 & 0x1F;
        *(a1 + 40) = 5;
        *(a1 + 76) = v5;
      }

      v9 = v8;
    }

    v11 = *(v2 + 1);
    if (v11 && (v3 & 0x4000) != 0)
    {
      if (*v11)
      {
        if (v8)
        {
          v12 = v8 - v2[1];
        }

        else
        {
          v12 = 0;
        }

        v11 = (*v11)(v12, 1, 0, 0);
      }

      else
      {
        v11 = 0;
      }
    }

    v13 = sec_asn1e_push_state(*a1, v11, v9, 0);
    a1 = v13;
    if (!v13)
    {
      return a1;
    }
  }

  while ((v3 & 0xC0) == 0);
  v14 = (v3 >> 18) & 1;
  v15 = (v3 & 0x200000) >> 21;
  v16 = **(v13 + 8);
  if ((v3 & 0x200000) != 0)
  {
    v17 = (v3 >> 18) & 1;
  }

  else
  {
    v17 = 1;
  }

  if ((v16 & 0x40000) != 0)
  {
    v14 = v17;
    v18 = v16 & 0xFFFFFFFFFFFBFFFFLL;
  }

  else
  {
    v18 = **(v13 + 8);
  }

LABEL_40:
  v19 = v4 >> 9;
  if ((v3 & 0x400) != 0)
  {
    v30 = 0;
    v24 = 0;
    v29 = 1;
  }

  else
  {
    v20 = v16 & 0x1F;
    v21 = (v16 >> 9) & 1;
    v22 = v16 & 0x20 | v3 & 0xE0;
    if ((v3 & 0x4000) != 0)
    {
      LODWORD(v19) = v21;
      v23 = v22;
    }

    else
    {
      v23 = v3 & 0xE0;
    }

    if ((v3 & 0x4000) != 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v3 & 0x1F;
    }

    v25 = 1 << (v18 & 0x1F);
    v26 = v23 | 0x20;
    if ((v25 & 0x30000) == 0)
    {
      v26 = v23;
    }

    v6 = (v25 & 0x55D81018) == 0;
    v27 = (v25 & 0x55D81018) != 0;
    if (v6)
    {
      v28 = v26;
    }

    else
    {
      v28 = v23;
    }

    v29 = (v18 & 0x1F) != 0x1F && v27;
    if ((v18 & 0x1F) == 0x1F)
    {
      v30 = v23;
    }

    else
    {
      v30 = v28;
    }
  }

  *(a1 + 44) = v30;
  *(a1 + 45) = v24;
  *(a1 + 48) = v18;
  *(a1 + 68) = v29;
  *(a1 + 72) = v14;
  *(a1 + 76) = v5;
  *(a1 + 80) = v15;
  *(a1 + 84) = (v3 >> 23) & 1;
  *(a1 + 40) = 0;
  *(a1 + 60) = v19;
  *(a1 + 64) = 0;
  return a1;
}

unint64_t sec_asn1e_contents_length(_DWORD *a1, unint64_t *a2, unsigned int a3, uint64_t a4, int *a5)
{
  v8 = a1;
  v9 = *a1;
  if ((*a1 & 0x200000) != 0)
  {
    a3 = 1;
  }

  if ((v9 & 0x100000) != 0)
  {
    while (v8[6])
    {
      v14 = v8 + 12;
      v15 = 1;
      while (*a2 != *(v14 - 2))
      {
        ++v15;
        v16 = *v14;
        v14 += 6;
        if (!v16)
        {
          return 0;
        }
      }

      v17 = a2 - v8[1];
      v8 += 6 * v15;
      v9 = *v8;
      a2 = &v17[v8[1]];
      if ((*v8 & 0x200000) != 0)
      {
        a3 = 1;
      }

      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  if ((v9 & 0x18C0) == 0)
  {
    if ((v9 & 0x20000) != 0)
    {
      result = 0;
      v24 = 2;
LABEL_102:
      *a5 = v24;
      return result;
    }

    v19 = v9 & 0xFFDBBCFF;
    if ((v9 & 0xFFDBBCFF) > 8207)
    {
      if ((v19 - 8208) > 1)
      {
LABEL_62:
        v23 = *a2;
        goto LABEL_87;
      }

      v25 = *a2;
      if (*a2)
      {
        v26 = *(v8 + 1);
        if (v26 && (v9 & 0x4000) != 0)
        {
          if (*v26)
          {
            v26 = (*v26)(a2 - v8[1], 1, 0, 0, a2);
          }

          else
          {
            v26 = 0;
          }
        }

        v39 = *v25;
        if (*v25)
        {
          v23 = 0;
          do
          {
            v40 = sec_asn1e_contents_length(v26, (v39 + v26[1]), a3, a4, a5);
            v23 += v40;
            if (!*a5)
            {
              v41 = 1;
              if (v40 >= 0x80)
              {
                do
                {
                  ++v41;
                  v31 = v40 > 0xFF;
                  v40 >>= 8;
                }

                while (v31);
              }

              v23 += v41 + 1;
            }

            v42 = v25[1];
            ++v25;
            v39 = v42;
          }

          while (v42);
          goto LABEL_87;
        }
      }
    }

    else
    {
      if ((v19 - 16) >= 2)
      {
        if (v19 != 2)
        {
          if (v19 == 3)
          {
            v20 = *a2 + 7;
            v21 = v20 >= 8;
            v22 = v20 >> 3;
            if (v21)
            {
              v23 = v22 + 1;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_87;
          }

          goto LABEL_62;
        }

        v23 = *a2;
        if (*a2)
        {
          v34 = a2[1];
          LOBYTE(v35) = *v34;
          if (*v34)
          {
            v36 = *a2;
LABEL_66:
            if ((*&v9 & 0x800000) == 0 && (v35 & 0x80u) != 0)
            {
              v23 = v36 + 1;
            }

            else
            {
              v23 = v36;
            }
          }

          else
          {
            v38 = v34 + 1;
            while (1)
            {
              v36 = v23 - 1;
              if (v23 == 1)
              {
                break;
              }

              v35 = *v38;
              if (v35 < 0)
              {
                break;
              }

              ++v38;
              --v23;
              if (v35)
              {
                goto LABEL_66;
              }
            }
          }
        }

LABEL_87:
        if (v23)
        {
          v43 = 1;
        }

        else
        {
          v43 = (*&v9 & 0x40000) == 0;
        }

        if (!v43 && a4 != 0 && a3 == 0)
        {
          result = 1;
        }

        else
        {
          result = v23;
        }

        if ((v9 & 0x100) == 0 || result)
        {
          if (v19 != 1024)
          {
            goto LABEL_106;
          }

          v24 = 1;
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      v27 = v8 + 6;
      if (v8[6])
      {
        v23 = 0;
        do
        {
          v28 = v8[7];
          v8 = v27;
          v29 = sec_asn1e_contents_length(v27, (a2 + v28), a3, a4, a5);
          v23 += v29;
          if (!*a5)
          {
            v30 = 1;
            if (v29 >= 0x80)
            {
              do
              {
                ++v30;
                v31 = v29 > 0xFF;
                v29 >>= 8;
              }

              while (v31);
            }

            v23 += v30 + 1;
          }

          v27 = v8 + 6;
        }

        while (v8[6]);
        goto LABEL_87;
      }
    }

    v23 = 0;
    goto LABEL_87;
  }

  v11 = *(v8 + 1);
  if (v11 && (v9 & 0x4000) != 0)
  {
    v12 = *v11;
    if (*v11)
    {
      if (a2)
      {
        v13 = a2 - v8[1];
      }

      else
      {
        v13 = 0;
      }

      v11 = v12(v13, 1, 0, 0, a2);
      if ((v9 & 0x1000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_32;
    }

    v11 = 0;
  }

  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

LABEL_32:
  a2 = *a2;
  if (!a2)
  {
    result = 0;
    if ((v9 & 0x100) != 0)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_102;
  }

LABEL_52:
  result = sec_asn1e_contents_length(v11, (a2 + v11[1]), a3, a4, a5);
  if ((v9 & 0x100) != 0 && !result)
  {
LABEL_101:
    v24 = 3;
    goto LABEL_102;
  }

  if ((v9 & 0x200) != 0)
  {
    if (*a5)
    {
      if (*a5 != 1)
      {
        return result;
      }

LABEL_106:
      *a5 = 0;
      return result;
    }

    v32 = 1;
    if (result >= 0x80)
    {
      v33 = result;
      do
      {
        ++v32;
        v31 = v33 > 0xFF;
        v33 >>= 8;
      }

      while (v31);
    }

    result += v32 + 1;
  }

  return result;
}

unint64_t SEC_ASN1EncoderStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PORT_NewArena(2048);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = PORT_ArenaAlloc(v8, 0x48uLL);
  if (!v10 || (v11 = v10, *(v10 + 8) = 0u, v12 = (v10 + 8), *(v10 + 40) = 0u, *(v10 + 24) = 0u, *v10 = v9, *(v10 + 56) = a3, *(v10 + 64) = a4, *(v10 + 16) = 2, !sec_asn1e_push_state(v10, a2, a1, 0)) || !sec_asn1e_init_state_based_on_template(*v12))
  {
    PORT_FreeArena(v9, 0);
    return 0;
  }

  return v11;
}

uint64_t SEC_ASN1Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = SEC_ASN1EncoderStart(a1, a2, a3, a4);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = SEC_ASN1EncoderUpdate(v4, 0, 0);
  PORT_FreeArena(*v5, 0);
  return v6;
}

void *sec_asn1e_encode_item_store(void *result, const void *a2, size_t a3)
{
  if (a3)
  {
    v4 = result;
    result = memcpy((result[1] + *result), a2, a3);
    *v4 += a3;
  }

  return result;
}

void *sec_asn1e_allocate_item(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  if (a1)
  {
    if (a2 || (result = PORT_ArenaAlloc(a1, 0x10uLL), (v4 = result) != 0))
    {
      v7 = PORT_ArenaAlloc(a1, a3);
      *(v4 + 8) = v7;
      if (v7)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v8 = a2;
    if (a2 || (result = PORT_Alloc(0x10uLL), (v8 = result) != 0))
    {
      v9 = PORT_Alloc(a3);
      v8[1] = v9;
      result = v9 ? v8 : 0;
      if (!(v4 | v9))
      {
        free(v8);
        return 0;
      }
    }
  }

  return result;
}

void *SEC_ASN1EncodeItem(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (!SEC_ASN1Encode(a3, a4, sec_asn1e_encode_item_count, &v11))
  {
    item = sec_asn1e_allocate_item(a1, a2, v11);
    v8 = item;
    if (!item)
    {
      return v8;
    }

    if (item[1])
    {
      *item = 0;
      SEC_ASN1Encode(a3, a4, sec_asn1e_encode_item_store, item);
      return v8;
    }
  }

  return 0;
}

void *SEC_ASN1EncodeInteger(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v4 = -1;
  v5 = a3;
  do
  {
    v6 = v4++;
    v7 = v5 > 0xFF;
    v5 >>= 8;
  }

  while (v7);
  v8 = v6 + 2;
  result = sec_asn1e_allocate_item(a1, a2, v6 + 2);
  if (result)
  {
    *result = v8;
    do
    {
      *(result[1] + v4) = v3;
      v3 = 0;
      --v4;
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t SecAsn1DecodeTime(unint64_t *a1, double *a2)
{
  err = 0;
  v4 = PORT_NewArena(1024);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  memset(v10, 170, sizeof(v10));
  Code = SEC_ASN1Decode(v4, v10, &kSecAsn1TimeTemplate, a1[1], *a1);
  if (!Code)
  {
    v8 = SecAbsoluteTimeFromDateContentWithError(LOBYTE(v10[2]), v10[1], v10[0], &err);
    if (err)
    {
      Code = CFErrorGetCode(err);
      v9 = err;
      if (err)
      {
        err = 0;
        CFRelease(v9);
      }
    }

    else
    {
      Code = 0;
      if (a2)
      {
        *a2 = v8;
      }
    }
  }

  PORT_FreeArena(v5, 0);
  return Code;
}

uint64_t SecAsn1EncodeTime(uint64_t a1, uint64_t a2, CFAbsoluteTime a3)
{
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(0, 0);
  if (ISO8601Formatter)
  {
    v7 = ISO8601Formatter;
    v8 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
    CFDateFormatterSetProperty(v7, *MEMORY[0x1E695E5D8], v8);
    CFDateFormatterSetFormat(v7, @"yyyyMMddHHmmss'Z'");
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v7, a3);
    CFRelease(v8);
    CFRelease(v7);
  }

  else
  {
    v19 = (*MEMORY[0x1E695E468] + a3);
    memset(&v18, 0, sizeof(v18));
    StringWithAbsoluteTime = 0;
    if (gmtime_r(&v19, &v18) == &v18)
    {
      StringWithAbsoluteTime = CFStringCreateWithFormat(0, 0, @"%04d%02d%02d%02d%02d%02dZ", (v18.tm_year + 1900), (v18.tm_mon + 1), v18.tm_mday, v18.tm_hour, v18.tm_min, v18.tm_sec);
    }
  }

  Length = CFStringGetLength(StringWithAbsoluteTime);
  if (!StringWithAbsoluteTime)
  {
    return 4294967188;
  }

  if (a3 < -1609459200.0 || a3 > 1546300800.0)
  {
    v11 = CFRetain(StringWithAbsoluteTime);
    v12 = 24;
  }

  else
  {
    v21.length = Length - 2;
    v21.location = 2;
    v11 = CFStringCreateWithSubstring(0, StringWithAbsoluteTime, v21);
    v12 = 23;
  }

  *(a2 + 16) = v12;
  v14 = CFStringGetLength(v11);
  if (v14 < 0)
  {
    v13 = 4294967188;
  }

  else
  {
    v15 = v14;
    *a2 = v14;
    v16 = PORT_ArenaAlloc(a1, v14);
    *(a2 + 8) = v16;
    v13 = 4294967188;
    if (v16)
    {
      v20.location = 0;
      v20.length = v15;
      if (v15 == CFStringGetBytes(v11, v20, 0x8000100u, 0, 0, v16, v15, 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = 4294967188;
      }
    }
  }

  CFRelease(StringWithAbsoluteTime);
  if (v11)
  {
    CFRelease(v11);
  }

  return v13;
}

void *PORT_Alloc(size_t a1)
{
  if (a1 >> 31)
  {
    goto LABEL_5;
  }

  if (a1 <= 1)
  {
    a1 = 1;
  }

  result = malloc_type_malloc(a1, 0x64033449uLL);
  if (!result)
  {
LABEL_5:
    ++port_allocFailures;
    ThreadErrInfo = PR_getThreadErrInfo(1, &v3);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE01300000000;
    }

    return 0;
  }

  return result;
}

_DWORD *PORT_SetError(int a1)
{
  result = PR_getThreadErrInfo(1, &v3);
  if (result)
  {
    *result = 0;
    result[1] = a1;
  }

  return result;
}

void *PORT_ZAlloc(size_t a1)
{
  if (a1 >> 31 || (a1 <= 1 ? (v1 = 1) : (v1 = a1), (result = malloc_type_calloc(1uLL, v1, 0x65A6D64EuLL)) == 0))
  {
    ++port_allocFailures;
    ThreadErrInfo = PR_getThreadErrInfo(1, &v4);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE01300000000;
    }

    return 0;
  }

  return result;
}

uint64_t PORT_GetError()
{
  v2 = -1431655766;
  ThreadErrInfo = PR_getThreadErrInfo(0, &v2);
  if (ThreadErrInfo)
  {
    return *(ThreadErrInfo + 1);
  }

  if (v2)
  {
    return 4294961322;
  }

  return 0;
}

_DWORD *PORT_NewArena(int a1)
{
  result = PORT_ZAlloc(0x40uLL);
  if (result)
  {
    result[14] = -1196647457;
    *(result + 6) = 7;
    v3 = (result + 39) & 0xFFFFFFFFFFFFFFF8;
    *(result + 2) = v3;
    *(result + 3) = v3;
    *result = 0;
    *(result + 1) = v3;
    *(result + 4) = result;
    result[10] = a1;
  }

  return result;
}

unint64_t PORT_ArenaAlloc(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 31))
  {
    v3 = a2 <= 1 ? 1 : a2;
    v4 = *(a1 + 32);
    v5 = (*(a1 + 48) + v3) & ~*(a1 + 48);
    result = *(v4 + 24);
    if (v5 >= v3)
    {
      if (v5 <= *(v4 + 16) - result)
      {
        *(v4 + 24) = v5 + result;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = PL_ArenaAllocate(a1, v5);
        if (result)
        {
          return result;
        }
      }
    }
  }

  ++port_allocFailures;
  ThreadErrInfo = PR_getThreadErrInfo(1, &v8);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE01300000000;
  }

  return 0;
}

void PORT_FreeArena(void *a1, int a2)
{
  if (a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      goto LABEL_7;
    }

    do
    {
      v4 = v3[1];
      v5 = v3[2];
      v3[3] = v4;
      bzero(v4, v5 - v4);
      v3 = *v3;
    }

    while (v3);
  }

  while (1)
  {
    v6 = *a1;
    if (!*a1)
    {
      break;
    }

    *a1 = *v6;
    free(v6);
  }

LABEL_7:

  free(a1);
}

char *PORT_ArenaGrow(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  if (a4 >> 31)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v16);
    if (ThreadErrInfo)
    {
      v5 = 0xFFFFE01300000000;
LABEL_7:
      *ThreadErrInfo = v5;
      return 0;
    }

    return 0;
  }

  v6 = a4 >= a3;
  v7 = a4 - a3;
  if (!v6)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v17);
    if (ThreadErrInfo)
    {
      v5 = 0xFFFFE00100000000;
      goto LABEL_7;
    }

    return 0;
  }

  v9 = *(a1 + 32);
  v10 = &a2[a3 + v7];
  if (v10 > a2 && v10 > &a2[a3])
  {
    v13 = *(a1 + 48);
    v14 = &v10[v13] & ~v13;
    v15 = *(v9 + 24) != &a2[~v13 & (v13 + a3)] || v10 > v14;
    if (!v15 && *(v9 + 16) >= v14)
    {
      *(v9 + 24) = v14;
      return a2;
    }
  }

  return PL_ArenaGrow(a1, a2, a3, v7);
}

size_t *nssCompareSecAsn1Items(size_t *result, void *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = v2[1];
      if (v3)
      {
        v4 = a2[1];
        if (v4 && *v2 == *a2)
        {
          return (memcmp(v3, v4, *v2) == 0);
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

const SecAsn1Template *NSS_P12_CertBagChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_X509Certificate))
  {
    result = kSecAsn1OctetStringTemplate;
    v5 = 1;
    if (a2)
    {
      return result;
    }

    goto LABEL_3;
  }

  v6 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_SdsiCertificate);
  v5 = 2 * (v6 != 0);
  if (v6)
  {
    result = kSecAsn1IA5StringTemplate;
  }

  else
  {
    result = 0;
  }

  if (!a2)
  {
LABEL_3:
    *(a1 + 16) = v5;
  }

  return result;
}

const SecAsn1Template *NSS_P12_CrlBagChooser(uint64_t a1, int a2)
{
  v4 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_X509Crl);
  if (!a2)
  {
    *(a1 + 16) = v4;
  }

  if (v4)
  {
    return kSecAsn1OctetStringTemplate;
  }

  else
  {
    return 0;
  }
}

const SecAsn1Template *NSS_P12_SafeBagChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_keyBag))
  {
    v4 = kSecAsn1PointerToAnyTemplate;
    v5 = 1;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_shroudedKeyBag))
  {
    v4 = &NSS_P12_PtrToShroudedKeyBagTemplate;
    v5 = 2;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_certBag))
  {
    v4 = &NSS_P12_PtrToCertBagTemplate;
    v5 = 3;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_crlBag))
  {
    v4 = &NSS_P12_PtrToCrlBagTemplate;
    v5 = 4;
  }

  else
  {
    v4 = kSecAsn1PointerToAnyTemplate;
    if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_secretBag))
    {
      v5 = 5;
    }

    else
    {
      v6 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_safeContentsBag);
      if (v6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }

      if (!v6)
      {
        v4 = 0;
      }
    }
  }

  if (!a2)
  {
    *(a1 + 16) = v5;
  }

  return v4;
}

uint64_t SEC_ASN1DecodeInteger(unint64_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v3 = &v9;
    goto LABEL_10;
  }

  v2 = *a1;
  if (*a1 >= 9)
  {
    v3 = &v10;
LABEL_10:
    ThreadErrInfo = PR_getThreadErrInfo(1, v3);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00500000000;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  if (!v4)
  {
    v3 = &v11;
    goto LABEL_10;
  }

  for (i = *v4 >> 7; v2; --v2)
  {
    v6 = *v4++;
    i = v6 | (i << 8);
  }

  result = 0;
  *a2 = i;
  return result;
}

uint64_t SEC_ASN1DecoderUpdate(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 != 2)
  {
    if (v7 != 3)
    {
      v8 = 0;
      goto LABEL_452;
    }

    *(a1 + 24) = 2;
  }

LABEL_4:
  v8 = *(a1 + 16);
  while (2)
  {
    result = 0;
    switch(*(v8 + 48))
    {
      case 0:
        if (!a3)
        {
          goto LABEL_165;
        }

        v58 = *a2;
        v59 = *a2 & 0x1F;
        if ((*a2 & 0x1F) == 0x1F)
        {
          *(v8 + 48) = 1;
          *(v8 + 64) = 0;
          v60 = 96;
          v59 = 1;
LABEL_230:
          v15 = 0;
          v16 = 0;
          v157 = 0;
          *(v8 + v60) = v59;
          *(v8 + 52) = v58 & 0xE0;
          v13 = 1;
          v14 = 1;
          goto LABEL_431;
        }

        if (*a2 || !sec_asn1d_parent_allows_EOC(*(v8 + 32)))
        {
          *(v8 + 48) = 2;
          v60 = 64;
          goto LABEL_230;
        }

        *(v8 + 48) = 21;
        *(v8 + 96) = 2;
        *(v8 + 64) = 0;
        *(v8 + 52) = 0;
        v14 = 1;
        v15 = *(v8 + 141);
        v13 = 0;
        if (*(v8 + 141))
        {
          v15 = 0;
          v16 = 0;
          v157 = 0;
          *(v8 + 140) = 1;
        }

        else
        {
          v16 = 0;
          v157 = 0;
        }

        goto LABEL_431;
      case 1:
        if (!a3)
        {
LABEL_165:
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v157 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_166;
        }

        v13 = 0;
        v52 = *(v8 + 96) == 0;
        v53 = a3;
LABEL_66:
        v54 = &a2[v13];
        v55 = v13 + 1;
        --v53;
        while (1)
        {
          if (v52)
          {
            goto LABEL_74;
          }

          v56 = *(v8 + 64);
          if (v56 >> 57)
          {
            break;
          }

          *(v8 + 64) = v56 << 7;
          v57 = *v54;
          *(v8 + 64) = *v54 & 0x7F | (v56 << 7);
          if ((v57 & 0x80) == 0)
          {
            *(v8 + 96) = 0;
            v52 = 1;
            v13 = v55;
            if (!v53)
            {
              v13 = a3;
LABEL_74:
              v15 = 0;
              v16 = 0;
              v157 = 0;
              *(v8 + 48) = 2;
LABEL_166:
              v14 = 1;
              goto LABEL_431;
            }

            goto LABEL_66;
          }

          ++v54;
          ++v55;
          --v53;
          v14 = 1;
          if (v53 == -1)
          {
            v15 = 0;
            v16 = 0;
            v157 = 0;
            v13 = a3;
            goto LABEL_431;
          }
        }

        ThreadErrInfo = PR_getThreadErrInfo(1, &v194);
        if (ThreadErrInfo)
        {
          *ThreadErrInfo = 0xFFFFE00900000000;
        }

        v13 = 0;
        v15 = 0;
        v16 = 0;
        v157 = 0;
        v14 = 1;
        *(*v8 + 24) = 1;
        goto LABEL_431;
      case 2:
        v51 = *(v8 + 56);
        if ((v51 & *(v8 + 52)) == *(v8 + 53) && (*(v8 + 64) & v51) == *(v8 + 72))
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v8 + 48) = 3;
          goto LABEL_430;
        }

        if (!*(v8 + 141))
        {
          goto LABEL_232;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v8 + 140) = 1;
        goto LABEL_277;
      case 3:
        if (!a3)
        {
          goto LABEL_167;
        }

        *(v8 + 48) = 5;
        v103 = *a2;
        if (*a2 < 0)
        {
          v148 = v103 & 0x7F;
          *(v8 + 88) = 0;
          *(v8 + 96) = v148;
          if (v148)
          {
            *(v8 + 48) = 4;
          }

          else
          {
            *(v8 + 139) = 1;
          }
        }

        else
        {
          *(v8 + 88) = v103;
        }

        if (*(v8 + 139) || (*(v8 + 81) & 0x84) == 0)
        {
          v14 = 0;
          v16 = 0;
        }

        else
        {
          v14 = 0;
          v16 = 0;
          *(v8 + 52) &= ~0x20u;
        }

        v13 = 1;
        goto LABEL_320;
      case 4:
        if (!a3)
        {
LABEL_167:
          v13 = 0;
          v14 = 0;
          v16 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_320;
        }

        v98 = 0;
        v13 = *(v8 + 96);
        v99 = a2;
        while (1)
        {
          if (!(v13 + v98))
          {
            goto LABEL_235;
          }

          v100 = *(v8 + 88);
          if (v100 >> 55)
          {
            break;
          }

          *(v8 + 88) = v100 << 8;
          v101 = *v99++;
          *(v8 + 88) = v101 | ((v100 & 0x7FFFFFFFFFFFFFLL) << 8);
          *(v8 + 96) = v13 + v98-- - 1;
          if (!(a3 + v98))
          {
            v102 = v13 + v98;
            v13 = a3;
            if (v102)
            {
              v14 = 0;
              v16 = 0;
              v15 = 1;
              v13 = a3;
              goto LABEL_321;
            }

LABEL_235:
            v14 = 0;
            v16 = 0;
            *(v8 + 48) = 5;
LABEL_320:
            v15 = 1;
            goto LABEL_321;
          }
        }

        v154 = PR_getThreadErrInfo(1, &v194);
        if (v154)
        {
          *v154 = 0xFFFFE00900000000;
        }

        v13 = 0;
        v14 = 0;
        v16 = 0;
        v15 = 1;
        *(*v8 + 24) = 1;
LABEL_321:
        v157 = 1;
        goto LABEL_431;
      case 5:
        v61 = *(v8 + 32);
        if (!v61)
        {
          goto LABEL_88;
        }

        while (1)
        {
          v62 = *(v61 + 48);
          v63 = (v62 - 16) < 4 || v62 == 11;
          if (!v63 && v62 != 24)
          {
            break;
          }

          v61 = *(v61 + 32);
          if (!v61)
          {
            goto LABEL_88;
          }
        }

LABEL_106:
        if (*(v61 + 139))
        {
          while (1)
          {
            v61 = *(v61 + 32);
            if (!v61)
            {
              break;
            }

            v73 = *(v61 + 48);
            if ((v73 - 16) >= 4 && v73 != 24 && v73 != 11)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v194 = *(v61 + 96);
          v76 = v8;
LABEL_108:
          if (!sec_asn1d_check_and_subtract_length(&v194, *(v76 + 104), *v8) || !sec_asn1d_check_and_subtract_length(&v194, *(v76 + 88), *v8) || *(v76 + 139) && !sec_asn1d_check_and_subtract_length(&v194, 2uLL, *v8))
          {
            goto LABEL_428;
          }

          while (1)
          {
            v76 = *(v76 + 32);
            if (!v76)
            {
              break;
            }

            v77 = *(v76 + 48);
            if ((v77 - 16) >= 4 && v77 != 24 && v77 != 11)
            {
              if (*(v76 + 139))
              {
                goto LABEL_108;
              }

              break;
            }
          }
        }

LABEL_88:
        if (*(v8 + 136))
        {
          v65 = sec_asn1d_zalloc(*(*v8 + 8), *(*(v8 + 8) + 16));
          if (!v65)
          {
            goto LABEL_234;
          }

          *(v8 + 16) = &v65[*(*(v8 + 8) + 4)];
          v66 = *(v8 + 32);
          if (*(v66 + 48) == 18)
          {
            **(v66 + 16) = v65;
          }
        }

        v67 = *(v8 + 88);
        *(v8 + 96) = v67;
        if (*(v8 + 138))
        {
          *(v8 + 48) = 15;
          v69 = *v8;
          v68 = *(v8 + 8);
          v70 = *(v8 + 16);
          v71 = *(v68 + 8);
          if (v71 && (*(v68 + 1) & 0x40) != 0)
          {
            if (*v71)
            {
              if (v70)
              {
                v72 = v70 - *(v68 + 4);
              }

              else
              {
                v72 = 0;
              }

              v71 = (*v71)(v72, 0, a2, a3);
              v70 = *(v8 + 16);
            }

            else
            {
              v71 = 0;
            }
          }

          v167 = sec_asn1d_push_state(v69, v71, v70, 1);
          if (!v167)
          {
LABEL_428:
            v13 = 0;
            goto LABEL_429;
          }

LABEL_427:
          sec_asn1d_init_state_based_on_template(v167, a2, a3);
          goto LABEL_428;
        }

        v138 = *(v8 + 80);
        if ((v138 & 0x2000) != 0)
        {
          if (v67 || (v14 = *(v8 + 139), *(v8 + 139)))
          {
            *(v8 + 48) = 9;
            v159 = *(v8 + 8);
            v160 = *(v159 + 8);
            if (v160 && (*(v159 + 1) & 0x40) != 0)
            {
              if (*v160)
              {
                v161 = *(v8 + 16);
                if (v161)
                {
                  v162 = v161 - *(v159 + 4);
                }

                else
                {
                  v162 = 0;
                }

                v160 = (*v160)(v162, 0, a2, a3);
              }

              else
              {
                v160 = 0;
              }
            }

            v169 = sec_asn1d_push_state(*v8, v160, 0, 1);
            v13 = v169;
            if (!v169)
            {
              goto LABEL_429;
            }

            v170 = *v169;
            if (!*(*v169 + 72))
            {
              v169[136] = 1;
            }

LABEL_359:
            v171 = *(v170 + 32);
            if (v171)
            {
              v172 = *(v13 + 112);
              v173 = *(v13 + 16);
              *(v170 + 48) = 1;
              v171(*(v170 + 40), 1, v173, v172);
              *(v170 + 48) = 0;
            }

            v167 = v13;
            goto LABEL_427;
          }

          v13 = 0;
          v15 = 0;
          v16 = 0;
LABEL_250:
          v17 = 14;
LABEL_278:
          *(v8 + 48) = v17;
          goto LABEL_430;
        }

        if (v138 > 18)
        {
          if (v138 > 1023)
          {
            if (v138 == 1024 || v138 == 0x8000 || v138 == 66560)
            {
              goto LABEL_365;
            }
          }

          else if (v138 <= 0x1E)
          {
            if (((1 << v138) & 0x4D80000) != 0)
            {
              goto LABEL_365;
            }

            if (v138 == 28)
            {
              if ((v67 & 3) != 0)
              {
                goto LABEL_232;
              }

LABEL_365:
              v175 = *(v8 + 16);
              if (!v175)
              {
                goto LABEL_370;
              }

              v176 = *v8;
              if (*(*v8 + 72))
              {
                v177 = 0;
                *v175 = 0;
                v175[1] = 0;
LABEL_371:
                if (!*(v8 + 139))
                {
                  v181 = (v8 + 120);
                  i = *(v8 + 120);
                  if (i)
                  {
                    if (!v175)
                    {
                      goto LABEL_232;
                    }

                    v67 = 0;
                    goto LABEL_396;
                  }
                }

                goto LABEL_372;
              }

              if (*(v8 + 142))
              {
                if (v175[1])
                {
LABEL_370:
                  v177 = 0;
                  goto LABEL_371;
                }
              }

              else
              {
                ++v176;
                *v175 = 0;
                v175[1] = 0;
              }

              v177 = *v176;
              if (!v67)
              {
                goto LABEL_371;
              }

              v181 = (v8 + 120);
              for (i = *(v8 + 120); i; v67 += v182)
              {
LABEL_396:
                v182 = *(i + 8);
                i = *(i + 16);
              }

              v183 = sec_asn1d_zalloc(v177, v67);
              v175[1] = v183;
              if (!v183)
              {
                goto LABEL_234;
              }

              v184 = *v181;
              if (v184)
              {
                v185 = 0;
                do
                {
                  memcpy((v175[1] + v185), *v184, *(v184 + 8));
                  v186 = *(v184 + 8);
                  v184 = *(v184 + 16);
                  v185 += v186;
                }

                while (v184);
              }

              else
              {
                v185 = 0;
              }

              *v175 = v185;
              *(v8 + 120) = 0;
              *(v8 + 128) = 0;
              v67 = *(v8 + 88);
LABEL_372:
              if (!v67)
              {
                v14 = *(v8 + 139);
                if (!*(v8 + 139))
                {
                  v13 = 0;
                  goto LABEL_276;
                }
              }

              if ((*(v8 + 52) & 0x20) == 0)
              {
                if (*(v8 + 139))
                {
                  goto LABEL_232;
                }

                if (*(v8 + 80) == 3)
                {
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 6;
                  goto LABEL_278;
                }

LABEL_440:
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 10;
                goto LABEL_278;
              }

              v178 = *(v8 + 80);
              if (v178 > 23)
              {
                if (v178 > 29)
                {
                  if (v178 >= 0x8000)
                  {
                    if (v178 == 0x8000)
                    {
                      v179 = kSecAsn1SkipTemplate;
                      goto LABEL_425;
                    }

                    v179 = kSecAsn1AnyTemplate;
                    if (v178 != 66560)
                    {
                      goto LABEL_416;
                    }
                  }

                  else
                  {
                    if (v178 == 30)
                    {
                      v179 = kSecAsn1BMPStringTemplate;
                      goto LABEL_425;
                    }

                    v179 = kSecAsn1AnyTemplate;
                    if (v178 != 1024)
                    {
                      goto LABEL_416;
                    }
                  }

LABEL_425:
                  *(v8 + 48) = 8;
                  v167 = sec_asn1d_push_state(*v8, v179, v175, 1);
                  if (!v167)
                  {
                    goto LABEL_428;
                  }

                  *(v167 + 142) = 1;
                  goto LABEL_427;
                }

                switch(v178)
                {
                  case 24:
                    v179 = kSecAsn1GeneralizedTimeTemplate;
                    goto LABEL_425;
                  case 26:
                    v179 = kSecAsn1VisibleStringTemplate;
                    goto LABEL_425;
                  case 28:
                    v179 = kSecAsn1UniversalStringTemplate;
                    goto LABEL_425;
                }
              }

              else if (v178 <= 18)
              {
                switch(v178)
                {
                  case 3:
                    v179 = kSecAsn1BitStringTemplate;
                    goto LABEL_425;
                  case 4:
                    v179 = kSecAsn1OctetStringTemplate;
                    goto LABEL_425;
                  case 12:
                    v179 = kSecAsn1UTF8StringTemplate;
                    goto LABEL_425;
                }
              }

              else
              {
                if (v178 > 21)
                {
                  if (v178 == 22)
                  {
                    v179 = kSecAsn1IA5StringTemplate;
                  }

                  else
                  {
                    v179 = kSecAsn1UTCTimeTemplate;
                  }

                  goto LABEL_425;
                }

                if (v178 == 19)
                {
                  v179 = kSecAsn1PrintableStringTemplate;
                  goto LABEL_425;
                }

                if (v178 == 20)
                {
                  v179 = kSecAsn1T61StringTemplate;
                  goto LABEL_425;
                }
              }

LABEL_416:
              v179 = 0;
              goto LABEL_425;
            }

            if (v138 == 30)
            {
              if (v67)
              {
                goto LABEL_232;
              }

              goto LABEL_365;
            }
          }

          goto LABEL_348;
        }

        if (v138 > 11)
        {
          switch(v138)
          {
            case 12:
              goto LABEL_365;
            case 16:
              *(v8 + 48) = 12;
              v174 = sec_asn1d_push_state(*v8, *(v8 + 8) + 24, *(v8 + 16), 1);
              v13 = v174;
              if (!v174)
              {
LABEL_429:
                v14 = 0;
                v15 = 0;
                v16 = 0;
                goto LABEL_430;
              }

              v170 = *v174;
              goto LABEL_359;
            case 17:
              goto LABEL_232;
          }

LABEL_348:
          if (!v67)
          {
            goto LABEL_232;
          }

          v168 = *(v8 + 16);
          if (!v168)
          {
            goto LABEL_440;
          }

          *v168 = 0;
          if (*(*v8 + 72))
          {
            v168[1] = 0;
            goto LABEL_440;
          }

          v187 = sec_asn1d_zalloc(*(*v8 + 8), v67);
          v168[1] = v187;
          if (v187)
          {
            goto LABEL_440;
          }

          goto LABEL_234;
        }

        if ((v138 - 3) < 2)
        {
          goto LABEL_365;
        }

        if (v138 != 5)
        {
          goto LABEL_348;
        }

        if (!v67 && !*(v8 + 139))
        {
          v166 = *(v8 + 16);
          if (v166)
          {
            *v166 = 0;
            v166[1] = 0;
          }

LABEL_275:
          v13 = 0;
          v14 = 0;
LABEL_276:
          v15 = 0;
          v16 = 0;
LABEL_277:
          v17 = 22;
          goto LABEL_278;
        }

LABEL_232:
        v137 = PR_getThreadErrInfo(1, &v194);
        if (v137)
        {
          *v137 = 0xFFFFE00900000000;
        }

LABEL_234:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(*v8 + 24) = 1;
LABEL_430:
        v157 = 2;
LABEL_431:
        v135 = *(a1 + 24);
LABEL_432:
        if (v135 == 1)
        {
          goto LABEL_458;
        }

        if (a3 >= v13)
        {
          v8 = *(a1 + 16);
          if (!v8 || **(v8 + 8) == 0x80000)
          {
            result = 0;
            *(a1 + 24) = 0;
            return result;
          }

          if (!v13)
          {
            if (v135 != 2)
            {
              return 0;
            }

            continue;
          }

          if (*(v8 + 80) == 1024 && (v14 | v15) == 1 && !*(a1 + 72))
          {
            sec_asn1d_record_any_header(*(a1 + 16), a2, v13);
          }

          v188 = *(*v8 + 56);
          if (v188)
          {
            v189 = *(v8 + 112);
            if (v16)
            {
              v189 = v189 - (*(v8 + 139) == 0);
            }

            v188(*(*v8 + 64), a2, v13, v189, v157);
          }

          *(v8 + 104) += v13;
          a2 += v13;
          v7 = *(a1 + 24);
          a3 -= v13;
          if (v7 != 2)
          {
LABEL_452:
            if (v7 == 1)
            {
              goto LABEL_458;
            }

            return 0;
          }

          goto LABEL_4;
        }

        v190 = PR_getThreadErrInfo(1, &v194);
        if (v190)
        {
          *v190 = 0xFFFFE00900000000;
        }

        *(a1 + 24) = 1;
LABEL_458:
        if (v8)
        {
LABEL_459:
          v191 = *(v6 + 32);
          do
          {
            if (v191 == v8)
            {
              break;
            }

            if (*(v8 + 40))
            {
              *(v8 + 40) = 0;
              *(v8 + 24) = 0;
            }

            *(v8 + 48) = 20;
            v8 = *(v8 + 32);
          }

          while (v8);
        }

        return 0xFFFFFFFFLL;
      case 6:
        v80 = *(v8 + 96);
        if (!v80)
        {
          v126 = *(v8 + 16);
          if (v126)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *v126 = 0;
            v126[1] = 0;
            v157 = 2;
            v127 = 20;
            goto LABEL_196;
          }
        }

        if (!a3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_430;
        }

        v81 = *a2;
        if (v81 >= 8)
        {
          goto LABEL_232;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v8 + 116) = v81;
        *(v8 + 48) = 7;
        *(v8 + 96) = v80 - 1;
        v157 = 2;
        v13 = 1;
        goto LABEL_431;
      case 7:
        if (*(v8 + 96))
        {
          goto LABEL_137;
        }

        v14 = *(v8 + 116);
        if (v14)
        {
          goto LABEL_232;
        }

        v13 = 0;
        goto LABEL_333;
      case 8:
        v29 = *(v8 + 40);
        v42 = *(v29 + 104);
        *(v29 + 104) = 0;
        v43 = *(v8 + 96);
        *(v8 + 104) += v42;
        if (v43)
        {
          v37 = v43 >= v42;
          v44 = v43 - v42;
          if (!v37)
          {
            goto LABEL_232;
          }

          *(v8 + 96) = v44;
          if (v44)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v118 = *(v29 + 16);
          v119 = v8;
          while (v118 == *(v119 + 16))
          {
            if (!*(v119 + 139))
            {
              break;
            }

            v120 = *(v119 + 32);
            if (!v120)
            {
              break;
            }

            while (1)
            {
              v121 = *(v120 + 48);
              v122 = (v121 - 16) < 4 || v121 == 24;
              if (!v122 && v121 != 11)
              {
                break;
              }

              v120 = *(v120 + 32);
              if (!v120)
              {
                goto LABEL_220;
              }
            }

            if (*(v120 + 80) != *(v119 + 80))
            {
              break;
            }

            v119 = v120;
            if (!*(v120 + 139))
            {
              v124 = 1;
              goto LABEL_221;
            }
          }

LABEL_220:
          v124 = 0;
LABEL_221:
          if (v118)
          {
            v136 = v118[1];
            if (!v136)
            {
              v124 = 1;
            }

            if ((v124 & 1) == 0)
            {
              sec_asn1d_add_to_subitems(v8, v136, *v118, 0);
              *v118 = 0;
              v118[1] = 0;
            }
          }

          if (!*(v29 + 137))
          {
LABEL_44:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(v29 + 48) = 0;
            *(v29 + 137) = 0;
            *(v29 + 139) = 0;
            goto LABEL_45;
          }
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v29 + 48) = 26;
        v17 = 13;
        goto LABEL_278;
      case 9:
        v29 = *(v8 + 40);
        v30 = *(v29 + 104);
        *(v29 + 104) = 0;
        *(v8 + 104) += v30;
        if (*(v29 + 137) && !*(v29 + 139))
        {
          v139 = *(v29 + 16);
          if (v139 && !*(v8 + 120))
          {
            sec_asn1d_add_to_subitems(v8, v139, 0, 0);
            *(v29 + 16) = 0;
          }

LABEL_249:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v29 + 48) = 26;
          goto LABEL_250;
        }

        v31 = *v8;
        v32 = *(*v8 + 32);
        if (v32)
        {
          v33 = *(v29 + 112);
          v34 = *(v29 + 16);
          *(v31 + 48) = 1;
          v32(*(v31 + 40), 0, v34, v33);
          *(v31 + 48) = 0;
        }

        v35 = *(v29 + 16);
        if (v35)
        {
          sec_asn1d_add_to_subitems(v8, (v35 - *(*(v29 + 8) + 4)), 0, 0);
          *(v29 + 16) = 0;
        }

        v36 = *(v8 + 96);
        if (v36)
        {
          v37 = v36 >= v30;
          v38 = v36 - v30;
          if (!v37)
          {
            goto LABEL_232;
          }

          *(v8 + 96) = v38;
          if (!v38)
          {
            goto LABEL_249;
          }
        }

        v39 = *v8;
        v40 = *(*v8 + 32);
        if (v40)
        {
          v41 = *(v29 + 112);
          *(v39 + 48) = 1;
          v40(*(v39 + 40), 1, 0, v41);
          *(v39 + 48) = 0;
        }

        *(v29 + 48) = 0;
        *(v29 + 137) = 0;
        *(v29 + 139) = 0;
        sec_asn1d_init_state_based_on_template(v29, a2, a3);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
LABEL_45:
        *(*v8 + 16) = v29;
        goto LABEL_430;
      case 0xA:
LABEL_137:
        v13 = sec_asn1d_parse_leaf(v8, a2, a3);
        goto LABEL_429;
      case 0xB:
        v104 = *(v8 + 40);
        v105 = *(v104 + 104);
        *(v104 + 104) = 0;
        v106 = *(v8 + 16);
        if (*(v104 + 40))
        {
          *(v104 + 40) = 0;
          *(v104 + 24) = 0;
        }

        *(v104 + 48) = 20;
        v107 = *v8;
        v108 = *(*v8 + 32);
        if (v108)
        {
          v109 = *(v8 + 112);
          *(v107 + 48) = 1;
          (v108)(*(v107 + 40), 0, v106, v109);
          *(v107 + 48) = 0;
          v110 = *(v8 + 16);
          v107 = *v8;
          v108 = *(*v8 + 32);
        }

        else
        {
          v110 = v106;
        }

        v132 = *(v8 + 8);
        v133 = v110 - *(v132 + 4);
        *(v8 + 8) = v132 + 24;
        v134 = &v133[*(v132 + 28)];
        *(v104 + 8) = v132 + 24;
        *(v104 + 16) = v134;
        if (v108)
        {
          *(v107 + 48) = 1;
          v108(*(v107 + 40), 1);
          *(v107 + 48) = 0;
          v107 = *v8;
        }

        *(v8 + 48) = 19;
        *(v107 + 16) = v104;
        sec_asn1d_init_state_based_on_template(v104, v106[1], *v106);
        if (!SEC_ASN1DecoderUpdate(*v8, v106[1], *v106) && *(*v8 + 24) != 3)
        {
          *(v104 + 104) = 0;
          *(v8 + 104) += v105;
          *(v104 + 48) = 26;
          *(v8 + 48) = 22;
        }

        v135 = *(a1 + 24);
        if (v135 == 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v135 == 3)
        {
          goto LABEL_465;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v157 = 2;
        goto LABEL_432;
      case 0xC:
        v82 = *(v8 + 40);
        v83 = *v8;
        v84 = *(*v8 + 32);
        if (v84)
        {
          v85 = *(v82 + 112);
          v86 = *(v82 + 16);
          *(v83 + 48) = 1;
          v84(*(v83 + 40), 0, v86, v85);
          *(v83 + 48) = 0;
        }

        v87 = *(v82 + 140);
        v88 = *(v82 + 104);
        *(v82 + 104) = 0;
        if (v87)
        {
          goto LABEL_129;
        }

        *(v8 + 104) += v88;
        if (*(v82 + 40))
        {
          *(v82 + 40) = 0;
          *(v82 + 24) = 0;
        }

        *(v82 + 48) = 20;
        v128 = *(v8 + 96);
        if (!v128)
        {
          goto LABEL_129;
        }

        v37 = v128 >= v88;
        v129 = v128 - v88;
        if (!v37)
        {
          goto LABEL_232;
        }

        *(v8 + 96) = v129;
        if (!v129)
        {
          v130 = (*(v82 + 8) + 24);
          while (1)
          {
            v131 = v130;
            v15 = *v130;
            if (!*v130)
            {
              break;
            }

            v130 += 6;
            if ((v15 & 0x100) == 0)
            {
              *(v82 + 8) = v131;
              goto LABEL_232;
            }
          }

          v13 = 0;
          v14 = 0;
          v16 = 0;
          *(v82 + 8) = v131;
          *(v82 + 48) = 26;
          v157 = 2;
          v127 = 22;
LABEL_196:
          *(v8 + 48) = v127;
          goto LABEL_431;
        }

LABEL_129:
        v89 = *(v82 + 8);
        v90 = *(v89 + 24);
        *(v82 + 8) = v89 + 24;
        if (v90)
        {
          v91 = *(v8 + 16);
          if (v91)
          {
            *(v82 + 16) = v91 + *(v89 + 28);
          }

          v92 = *v8;
          v93 = *(*v8 + 32);
          if (v93)
          {
            v94 = *(v82 + 112);
            v95 = *(v82 + 16);
            *(v92 + 48) = 1;
            v93(*(v92 + 40), 1, v95, v94);
            *(v92 + 48) = 0;
          }

          v193 = v6;
          if (v87)
          {
            v96 = *(v82 + 52);
            v97 = *(v82 + 64);
          }

          else
          {
            v96 = 0;
            v97 = 0;
          }

          *(*v8 + 16) = v82;
          inited = sec_asn1d_init_state_based_on_template(v82, a2, a3);
          v14 = 0;
          v13 = 0;
          v157 = 2;
          if (v87 && inited)
          {
            *(inited + 12) = 2;
            *(inited + 52) = v96;
            inited[8] = v97;
            inited[13] = v88;
            if (inited[10] == 1024 && !*(*inited + 72))
            {
              LOBYTE(v194) = v96 | v97;
              sec_asn1d_record_any_header(inited, &v194, 1uLL);
            }

            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          v6 = v193;
          goto LABEL_431;
        }

        *(v82 + 48) = 26;
        if (*(v8 + 96))
        {
          goto LABEL_232;
        }

        if (!v87)
        {
          v13 = 0;
          v14 = 0;
LABEL_333:
          v15 = 0;
          v16 = 0;
LABEL_12:
          v17 = 20;
          goto LABEL_278;
        }

        if (*(v8 + 139) && *(v82 + 137) && v88 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v8 + 104) += 2;
          goto LABEL_277;
        }

        goto LABEL_232;
      case 0xD:
        v23 = (v8 + 120);
        v22 = *(v8 + 120);
        if (!v22)
        {
          goto LABEL_275;
        }

        v24 = 0;
        v25 = *(v8 + 80);
        while (2)
        {
          while (1)
          {
            v26 = *(v22 + 16);
            if (v25 == 3)
            {
              break;
            }

            v24 += *(v22 + 8);
            v22 = *(v22 + 16);
            if (!v26)
            {
              v28 = v24;
              if (v25 == 1024)
              {
                if (*(v8 + 139))
                {
                  v24 += 2;
                }

                v28 = v24;
              }

              goto LABEL_268;
            }
          }

          v27 = *(v22 + 8);
          if (v26)
          {
            if ((v27 & 7) == 0)
            {
              v24 += v27;
              v22 = v26;
              continue;
            }

            goto LABEL_232;
          }

          break;
        }

        v28 = v27 + v24;
        v24 = (v27 + v24 + 7) >> 3;
LABEL_268:
        v151 = *(v8 + 16);
        v13 = sec_asn1d_zalloc(*(*v8 + 8), v24);
        v151[1] = v13;
        if (!v13)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(*v8 + 24) = 1;
          v157 = 2;
          goto LABEL_431;
        }

        *v151 = v28;
        for (j = *v23; j; j = *(j + 16))
        {
          if (v25 == 3)
          {
            v153 = (*(j + 8) + 7) >> 3;
          }

          else
          {
            v153 = *(j + 8);
          }

          memcpy(v13, *j, v153);
          v13 += v153;
        }

        *v23 = 0;
        *(v8 + 128) = 0;
        goto LABEL_275;
      case 0xE:
        v111 = *(v8 + 16);
        if (!v111)
        {
          goto LABEL_275;
        }

        v113 = (v8 + 120);
        v112 = *(v8 + 120);
        if (v112)
        {
          v114 = 0;
          do
          {
            ++v114;
            v112 = *(v112 + 16);
          }

          while (v112);
          v115 = 8 * v114 + 8;
        }

        else
        {
          v115 = 8;
        }

        v149 = sec_asn1d_zalloc(*(*v8 + 8), v115);
        if (!v149)
        {
          goto LABEL_234;
        }

        *v111 = v149;
        for (k = *v113; k; k = k[2])
        {
          *v149++ = *k;
        }

        *v149 = 0;
        *v113 = 0;
        *(v8 + 128) = 0;
        goto LABEL_275;
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
        v10 = *(v8 + 40);
        v11 = *(v10 + 140);
        *(v8 + 140) = v11;
        if (v11)
        {
          *(v8 + 64) = *(v10 + 64);
          *(v8 + 52) = *(v10 + 52);
          *(v8 + 137) = *(v10 + 137);
        }

        v12 = *(v8 + 96);
        *(v8 + 104) += *(v10 + 104);
        if (!v12)
        {
          goto LABEL_11;
        }

        if (v12 != *(v10 + 104))
        {
          goto LABEL_232;
        }

        *(v8 + 96) = 0;
LABEL_11:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v10 + 104) = 0;
        goto LABEL_12;
      case 0x13:
        return result;
      case 0x14:
        if (*(v8 + 139))
        {
          *(v8 + 96) = 2;
          v17 = 21;
        }

        else
        {
          v17 = 22;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_278;
      case 0x15:
        if (!a3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v157 = 3;
          *(*v8 + 24) = 3;
          v16 = 1;
          goto LABEL_431;
        }

        v46 = *(v8 + 96);
        if (v46 >= a3)
        {
          v13 = a3;
        }

        else
        {
          v13 = *(v8 + 96);
        }

        if (!v46)
        {
          goto LABEL_55;
        }

        v47 = 0;
        v48 = 1;
        while (!a2[v47])
        {
          v47 = v48;
          if (v13 <= v48++)
          {
LABEL_55:
            *(v8 + 96) = v46 - v13;
            v16 = 1;
            if (v46 <= a3)
            {
              v14 = 0;
              v15 = 0;
              *(v8 + 48) = 22;
              *(v8 + 137) = 1;
            }

            else
            {
              v14 = 0;
              v15 = 0;
            }

            goto LABEL_288;
          }
        }

        v156 = PR_getThreadErrInfo(1, &v194);
        if (v156)
        {
          *v156 = 0xFFFFE00900000000;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 1;
        *(*v8 + 24) = 1;
LABEL_288:
        v157 = 3;
        goto LABEL_431;
      case 0x16:
        if (*(v8 + 40))
        {
          *(v8 + 40) = 0;
          *(v8 + 24) = 0;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_162;
      case 0x17:
        if (*(v8 + 136))
        {
          v18 = sec_asn1d_zalloc(*(*v8 + 8), *(*(v8 + 8) + 16));
          if (!v18)
          {
            goto LABEL_258;
          }

          v19 = *(v8 + 8);
          v20 = *(v19 + 4);
          v21 = &v18[v20];
          *(v8 + 16) = &v18[v20];
        }

        else
        {
          v19 = *(v8 + 8);
          v21 = *(v8 + 16);
          v20 = *(v19 + 4);
        }

        v116 = sec_asn1d_push_state(*v8, v19 + 24, &v21[-v20], 0);
        if (v116)
        {
          *(v116 + 12) = 0;
          *(v116 + 137) = 0;
          *(v116 + 139) = 0;
          v117 = sec_asn1d_init_state_based_on_template(v116, a2, a3);
          if (v117)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(v117 + 141) = 1;
            *(v8 + 48) = 24;
            v157 = 2;
            v8 = v117;
            goto LABEL_431;
          }
        }

        v8 = 0;
        goto LABEL_428;
      case 0x18:
        v50 = *(v8 + 40);
        if (!*(v50 + 140))
        {
          v125 = *(v8 + 16);
          if (v125)
          {
            *v125 = *(*(v50 + 8) + 16);
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v50 + 48) = 26;
          v17 = 25;
          goto LABEL_278;
        }

        *(v8 + 104) += *(v50 + 104);
        if (*(v50 + 137))
        {
          *(v50 + 48) = 26;
          *(v8 + 48) = 25;
          *(v8 + 137) = 1;
          if (sec_asn1d_parent_allows_EOC(*(v8 + 32)))
          {
            goto LABEL_428;
          }
        }

        else
        {
          v141 = *(v50 + 8);
          v140 = *(v50 + 16);
          v142 = v141[1];
          v143 = v141[6];
          *(v50 + 8) = v141 + 6;
          if (v143)
          {
            *(v50 + 16) = v140 - v142 + v141[7];
            v144 = *(v8 + 96);
            if (!v144 || (v145 = *(v50 + 104), v37 = v144 >= v145, v146 = v144 - v145, v37) && (*(v8 + 96) = v146) != 0)
            {
              *(v50 + 104) = 0;
              *(v50 + 48) = 0;
              *(v50 + 137) = 0;
              *(v50 + 139) = 0;
              *(*v8 + 16) = v50;
              v163 = *(v50 + 52);
              v164 = *(v50 + 64);
              v165 = sec_asn1d_init_state_based_on_template(v50, a2, a3);
              v8 = v165;
              v157 = 2;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              if (v165)
              {
                *(v165 + 52) = v163;
                v165[8] = v164;
                *(v165 + 141) = 1;
                *(v165 + 12) = 2;
              }

              goto LABEL_431;
            }
          }
        }

        v147 = PR_getThreadErrInfo(1, &v194);
        if (v147)
        {
          *v147 = 0xFFFFE00900000000;
        }

LABEL_258:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(*v8 + 24) = 1;
        v157 = 2;
        v8 = 0;
        goto LABEL_431;
      case 0x19:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v45 = *(v8 + 40);
        *(v8 + 104) += *(v45 + 104);
        *(v45 + 104) = 0;
        *(v8 + 40) = 0;
        *(v8 + 24) = 0;
LABEL_162:
        *(v8 + 48) = 20;
        *(*v8 + 16) = *(v8 + 32);
        goto LABEL_430;
      default:
LABEL_465:
        v192 = PR_getThreadErrInfo(1, &v194);
        if (v192)
        {
          *v192 = 0xFFFFE00900000000;
        }

        *(a1 + 24) = 1;
        goto LABEL_459;
    }
  }
}

uint64_t sec_asn1d_parent_allows_EOC(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 48);
      v2 = (v1 - 16) < 4 || v1 == 24;
      if (!v2 && v1 != 11)
      {
        break;
      }

      result = *(result + 32);
      if (!result)
      {
        return result;
      }
    }

    v4 = (v1 & 0xFFFFFFFE) == 8 || *(*(result + 40) + 141) != 0;
    return (*(result + 139) != 0) & v4;
  }

  return result;
}

uint64_t sec_asn1d_check_and_subtract_length(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    if (*a1 >= a2)
    {
      *a1 -= a2;
      return 1;
    }

    else
    {
      ThreadErrInfo = PR_getThreadErrInfo(1, &v8);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE00900000000;
      }

      result = 0;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    v6 = PR_getThreadErrInfo(1, &v7);
    if (v6)
    {
      *v6 = 0xFFFFE00500000000;
    }

    result = 0;
    if (a3)
    {
      *(a3 + 24) = 1;
    }
  }

  return result;
}

void *sec_asn1d_zalloc(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = PORT_ArenaAlloc(a1, a2);
  }

  else
  {
    v3 = PORT_Alloc(a2);
  }

  v4 = v3;
  if (v3)
  {
    bzero(v3, a2);
  }

  return v4;
}

void *sec_asn1d_push_state(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    if (v5)
    {
      *(v5 + 24) = -1;
    }

    result = sec_asn1d_zalloc(*a1, 0x90uLL);
    if (result)
    {
      result[4] = v5;
      *result = a1;
      result[1] = a2;
      *(result + 12) = 26;
      if (a3)
      {
        result[2] = a3 + *(a2 + 4);
      }

      if (v5)
      {
        v10 = *(v5 + 112);
        *(result + 28) = v10;
        if (a4)
        {
          *(result + 28) = v10 + 1;
          if (v10 >= 32)
          {
            ThreadErrInfo = PR_getThreadErrInfo(1, &v14);
            if (ThreadErrInfo)
            {
              *ThreadErrInfo = 0xFFFFE00900000000;
            }

            *(a1 + 24) = 1;
            goto LABEL_16;
          }
        }

        *(v5 + 40) = result;
      }

      *(a1 + 16) = result;
      return result;
    }
  }

  else
  {
    v12 = PR_getThreadErrInfo(1, &v13);
    if (v12)
    {
      *v12 = 0xFFFFE08800000000;
    }
  }

  *(a1 + 24) = 1;
  if (v5)
  {
LABEL_16:
    result = 0;
    *(v5 + 24) = 0;
    return result;
  }

  return 0;
}

void *sec_asn1d_init_state_based_on_template(void *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    if (!a1)
    {
      return a1;
    }

    v6 = *a1;
    if (*(*a1 + 24) == 1)
    {
      return a1;
    }

    v7 = a1[1];
    if (!v7)
    {
      return a1;
    }

    v8 = *v7;
    if ((*v7 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    if (*(v6 + 72))
    {
      break;
    }

    *(a1 + 137) = 0;
    *(a1 + 139) = 0;
    *(a1 + 12) = 11;
    a1 = sec_asn1d_push_state(v6, kSecAsn1AnyTemplate, a1[2], 0);
    if (!a1)
    {
      return a1;
    }
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = *(a1 + 28);
    v11 = a1[2];
    *(v6 + 48) = 1;
    v9(*(v6 + 40), 0, v11, v10);
    *(v6 + 48) = 0;
  }

  v12 = a1[2];
  if (v12)
  {
    v13 = a1[1];
    v14 = v12 - v13[1];
  }

  else
  {
    v14 = *(a1[4] + 16);
    v13 = a1[1];
  }

  v7 = v13 + 6;
  a1[1] = v13 + 6;
  a1[2] = v14;
  if (v14)
  {
    v15 = v14 + v13[7];
    a1[2] = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = *a1;
  v17 = *(*a1 + 32);
  if (v17)
  {
    v18 = *(a1 + 28);
    *(v16 + 48) = 1;
    v17(*(v16 + 40), 1, v15, v18);
    *(v16 + 48) = 0;
    v7 = a1[1];
  }

  v8 = *v7;
LABEL_19:
  if ((v8 & 0x100000) != 0)
  {
    *(a1 + 12) = 23;
    return a1;
  }

  v19 = v8 & 0x200;
  v20 = (v8 >> 8) & 1;
  v22 = (v8 & 0xC0) == 0 || v19 != 0;
  if ((v8 & 0x1800) == 0 && v22)
  {
    v23 = v8 & 0xFFFBBCFF;
    if ((v8 & 0x200) != 0)
    {
      v23 = 0;
    }

    goto LABEL_54;
  }

  *(a1 + 12) = 0;
  *(a1 + 137) = 0;
  *(a1 + 139) = 0;
  if ((v8 & 0x1000) != 0)
  {
    v25 = 0;
    v24 = *(*a1 + 72) == 0;
    v26 = 18;
  }

  else
  {
    v24 = 0;
    v25 = a1[2];
    if ((v8 & 0x800) != 0)
    {
      v26 = 17;
    }

    else
    {
      v26 = 16;
    }
  }

  *(a1 + 12) = v26;
  *(a1 + 141) = v20;
  v27 = a1;
  while (1)
  {
    v28 = v27[2];
    if (v28)
    {
      break;
    }

    v27 = v27[4];
    if (!v27)
    {
      v29 = *(v7 + 1);
      if (v29 && (v8 & 0x4000) != 0)
      {
        if (*v29)
        {
          v30 = (*v29)(0, 0, a2, a3, 0);
LABEL_48:
          v29 = v30;
          goto LABEL_50;
        }

LABEL_49:
        v29 = 0;
        goto LABEL_50;
      }

      goto LABEL_50;
    }
  }

  v29 = *(v7 + 1);
  if (v29 && (v8 & 0x4000) != 0)
  {
    if (*v29)
    {
      v30 = (*v29)(v28 - v7[1], 0, a2, a3);
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_50:
  v31 = sec_asn1d_push_state(*a1, v29, v25, 0);
  a1 = v31;
  if (v31)
  {
    *(v31 + 136) = v24;
    if ((v8 & 0xC0) != 0 && (v8 & 0x4000) == 0)
    {
      v23 = *v31[1] & 0xFFFBFFFF;
LABEL_54:
      if ((v8 & 0x8400) != 0)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        if ((v8 & 0x8000) != 0)
        {
          a1[2] = 0;
        }
      }

      else
      {
        v32 = v8 & 0xE0;
        v34 = v8 & 0x1F;
        v35 = 1 << (v23 & 0x1F);
        v36 = v8 & 0xC0 | 0x20;
        if ((v35 & 0x30000) == 0)
        {
          v36 = v8 & 0xE0;
        }

        v37 = (v35 & 0x55D81018) == 0;
        if ((v35 & 0x55D81018) != 0)
        {
          v38 = v8 & 0xE0;
        }

        else
        {
          v38 = v36;
        }

        if (v37)
        {
          v39 = 255;
        }

        else
        {
          v39 = 223;
        }

        if ((v23 & 0x1F) == 0x1F)
        {
          v33 = 255;
        }

        else
        {
          v32 = v38;
          v33 = v39;
        }
      }

      a1[7] = v33;
      *(a1 + 53) = v32;
      a1[9] = v34;
      a1[10] = v23;
      *(a1 + 138) = v19 >> 9;
      *(a1 + 141) = v20;
      *(a1 + 12) = 0;
      *(a1 + 137) = 0;
      *(a1 + 139) = 0;
      return a1;
    }

    inited = sec_asn1d_init_state_based_on_template(v31, a2, a3);
    a1 = inited;
    if (inited)
    {
      *(inited + 141) = v20;
    }
  }

  return a1;
}

unint64_t sec_asn1d_parse_leaf(uint64_t a1, char *__src, unint64_t a3)
{
  if (!a3)
  {
    v5 = 0;
    *(*a1 + 24) = 3;
    return v5;
  }

  v4 = *(a1 + 96);
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 96);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6[1];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = __src;
  v9 = *(a1 + 80);
  v10 = *v6;
  if (v9 == 2)
  {
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v5 >= 2;
    }

    if (!v11)
    {
      v12 = v5;
      goto LABEL_25;
    }

    __src = &__src[v5 - 1];
    v12 = v5;
    while (!*v8)
    {
      ++v8;
      if (--v12 <= 1)
      {
        v12 = 1;
        goto LABEL_20;
      }
    }

    __src = v8;
  }

  else
  {
    v12 = v5;
  }

LABEL_20:
  if (v9 != 3)
  {
LABEL_25:
    v13 = v12;
    v14 = *v6;
    if (0xFFFFFFFF - v10 < v12)
    {
LABEL_26:
      ThreadErrInfo = PR_getThreadErrInfo(1, &v17);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE00900000000;
      }

      v5 = 0;
      *(*a1 + 24) = 1;
      return v5;
    }

    goto LABEL_29;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_26;
  }

  if (v12 >> 61)
  {
    goto LABEL_26;
  }

  v13 = 8 * v12 - *(a1 + 116);
  if (0xFFFFFFFF - v10 < v13)
  {
    goto LABEL_26;
  }

  v14 = v10 >> 3;
LABEL_29:
  *v6 = v13 + v10;
  memcpy((v7 + v14), __src, v12);
  v4 = *(a1 + 96);
LABEL_30:
  *(a1 + 96) = v4 - v5;
  if (v4 == v5)
  {
    *(a1 + 48) = 20;
  }

  return v5;
}

void sec_asn1d_add_to_subitems(uint64_t **a1, void *a2, unint64_t a3, int a4)
{
  v8 = sec_asn1d_zalloc(**a1, 0x18uLL);
  if (!v8)
  {
    *(*a1 + 6) = 1;
    return;
  }

  v9 = v8;
  if (!a4)
  {
    v12 = a2;
LABEL_10:
    *v9 = v12;
    v9[1] = a3;
    v9[2] = 0;
    if (a1[15])
    {
      a1[16][2] = v9;
    }

    else
    {
      a1[15] = v9;
    }

    a1[16] = v9;
    return;
  }

  v10 = **a1;
  if (v10)
  {
    v11 = PORT_ArenaAlloc(v10, a3);
  }

  else
  {
    v11 = PORT_Alloc(a3);
  }

  v12 = v11;
  if (v11)
  {
    memcpy(v11, a2, a3);
    goto LABEL_10;
  }

  v13 = *a1;
  *(v13 + 6) = 1;
  if (!*v13)
  {

    free(v9);
  }
}

void sec_asn1d_record_any_header(uint64_t **a1, void *a2, unint64_t a3)
{
  v4 = a1[2];
  if (v4 && v4[1])
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v6);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00100000000;
    }

    *(*a1 + 6) = 1;
  }

  else
  {

    sec_asn1d_add_to_subitems(a1, a2, a3, 1);
  }
}

uint64_t SEC_ASN1DecoderFinish(uint64_t a1)
{
  if (*(a1 + 24) != 3)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 16);
  if (!*(v2 + 48))
  {
    v5 = *(v2 + 8);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5 + 6;
      while ((v6 & 0x100) != 0)
      {
        v8 = *v7;
        v7 += 6;
        LOWORD(v6) = v8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_3;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

LABEL_3:
  ThreadErrInfo = PR_getThreadErrInfo(1, &v10);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE00900000000;
  }

  v4 = 0xFFFFFFFFLL;
LABEL_11:
  PORT_FreeArena(*a1, 0);
  return v4;
}

unint64_t SEC_ASN1DecoderStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = PORT_NewArena(2048);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = PORT_ArenaAlloc(v10, 0x50uLL);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  *(v12 + 8) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = v11;
  if (a1)
  {
    *(v12 + 8) = a1;
  }

  *(v12 + 24) = 3;
  if (!sec_asn1d_push_state(v12, a3, a2, 0) || !sec_asn1d_init_state_based_on_template(*(v13 + 16), a4, a5))
  {
LABEL_7:
    PORT_FreeArena(v11, 0);
    return 0;
  }

  return v13;
}

uint64_t SEC_ASN1Decode(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v7 = SEC_ASN1DecoderStart(a1, a2, a3, a4, a5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = SEC_ASN1DecoderUpdate(v7, a4, a5);
  LODWORD(result) = SEC_ASN1DecoderFinish(v8);
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

OSStatus SecAsn1CoderCreate(SecAsn1CoderRef *coder)
{
  if (!coder)
  {
    return -50;
  }

  v2 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  v3 = PORT_NewArena(1024);
  *v2 = v3;
  if (v3)
  {
    result = 0;
    *coder = v2;
  }

  else
  {
    free(v2);
    return -108;
  }

  return result;
}

OSStatus SecAsn1CoderRelease(SecAsn1CoderRef coder)
{
  if (!coder)
  {
    return -50;
  }

  v2 = *coder;
  if (v2)
  {
    PORT_FreeArena(v2, 1);
  }

  free(coder);
  return 0;
}

OSStatus SecAsn1Decode(SecAsn1CoderRef coder, const void *src, size_t len, const SecAsn1Template *templates, void *dest)
{
  result = -50;
  if (coder && src && templates && dest)
  {
    if (SEC_ASN1Decode(*coder, dest, templates, src, len))
    {
      return -26275;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSStatus SecAsn1EncodeItem(SecAsn1CoderRef coder, const void *src, const SecAsn1Template *templates, SecAsn1Item *dest)
{
  result = -50;
  if (coder && src && templates && dest)
  {
    dest->Length = 0;
    dest->Data = 0;
    if (SEC_ASN1EncodeItem(*coder, dest, src, templates))
    {
      return 0;
    }

    else
    {
      return -50;
    }
  }

  return result;
}

void *__cdecl SecAsn1Malloc(void *coder, size_t len)
{
  if (coder)
  {
    return PORT_ArenaAlloc(*coder, len);
  }

  return coder;
}

OSStatus SecAsn1AllocItem(SecAsn1CoderRef coder, SecAsn1Item *item, size_t len)
{
  result = -50;
  if (coder && item)
  {
    v7 = PORT_ArenaAlloc(*coder, len);
    item->Data = v7;
    if (v7)
    {
      result = 0;
      item->Length = len;
    }

    else
    {
      return -108;
    }
  }

  return result;
}

OSStatus SecAsn1AllocCopy(SecAsn1CoderRef coder, const void *src, size_t len, SecAsn1Item *dest)
{
  if (!src)
  {
    return -50;
  }

  result = -50;
  if (coder && dest)
  {
    v9 = PORT_ArenaAlloc(*coder, len);
    dest->Data = v9;
    if (v9)
    {
      dest->Length = len;
      memmove(v9, src, len);
      return 0;
    }

    else
    {
      return -108;
    }
  }

  return result;
}

uint64_t __SSLContextGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SSLContextCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();
  if (a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SSLContext(%p) { ... }>", a1);
  }

  else
  {
    return 0;
  }
}

CFStringRef SSLContextCopyFormatDescription(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SSLContext(%p) { ... }>", result);
  }

  return result;
}

OSStatus SSLSetSessionConfig(SSLContextRef context, CFStringRef config)
{
  if (!CFEqual(config, @"ATSv1") && !CFEqual(config, @"ATSv1_noPFS") && !CFEqual(config, @"standard") && !CFEqual(config, @"TLSv1_fallback") && !CFEqual(config, @"TLSv1_RC4_fallback") && !CFEqual(config, @"RC4_fallback") && !CFEqual(config, @"3DES_fallback") && !CFEqual(config, @"TLSv1_3DES_fallback") && !CFEqual(config, @"legacy") && !CFEqual(config, @"legacy_DHE") && !CFEqual(config, @"anonymous") && !CFEqual(config, @"default"))
  {
    return -50;
  }

  return tls_handshake_set_config();
}

uint64_t __SSLCreateContextWithRecordFuncs_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/Library/Managed Preferences/mobile/.GlobalPreferences.plist", kCFURLPOSIXPathStyle, 0);
  if (v1)
  {
    v2 = v1;
    v3 = CFReadStreamCreateWithFile(v0, v1);
    if (v3)
    {
      v4 = v3;
      if (CFReadStreamOpen(v3))
      {
        v5 = CFPropertyListCreateWithStream(v0, v4, 0, 0, 0, 0);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = SSLPreferencesCopyValue(@"SSLDisableRecordSplitting", v5);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v7);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v7);
  }

  else
  {
    Value = 0;
  }

  kSSLDisableRecordSplittingDefaultValue = Value;
  kMinDhGroupSizeDefaultValue = SSLPreferencesGetInteger(@"SSLMinDhGroupSize", v5);
  kMinProtocolVersionDefaultValue = SSLPreferencesGetInteger(@"SSLMinProtocolVersion", v5);
  v10 = SSLPreferencesCopyValue(@"SSLSessionConfig", v5);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    if (v12 != CFStringGetTypeID())
    {
      CFRelease(v11);
      v11 = 0;
    }
  }

  kSSLSessionConfigDefaultValue = v11;
  if (v5)
  {
    CFRelease(v5);
  }

  result = tls_cache_create();
  g_session_cache = result;
  return result;
}

CFPropertyListRef SSLPreferencesCopyValue(const void *a1, const __CFDictionary *a2)
{
  v4 = CFPreferencesCopyAppValue(@"SSLSessionConfig", *MEMORY[0x1E695E8A8]);
  v5 = v4;
  if (a2)
  {
    if (!v4)
    {
      Value = CFDictionaryGetValue(a2, a1);
      v5 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }
  }

  return v5;
}

const __CFNumber *SSLPreferencesGetInteger(const void *a1, const __CFDictionary *a2)
{
  result = SSLPreferencesCopyValue(a1, a2);
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

uint64_t SSLSetRecordContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t _SSLNewDatagramContext(int a1, SSLContextRef *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = SSLCreateContext(*MEMORY[0x1E695E480], (a1 == 0), kSSLDatagramType);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

OSStatus SSLGetSessionState(SSLContextRef context, SSLSessionState *state)
{
  if (!context)
  {
    return -50;
  }

  v2 = kSSLIdle;
  *state = kSSLIdle;
  v3 = *(context + 20) - 1;
  if (v3 <= 5)
  {
    v2 = dword_1889605A0[v3];
  }

  result = 0;
  *state = v2;
  return result;
}

OSStatus SSLGetSessionOption(SSLContextRef context, SSLSessionOption option, Boolean *value)
{
  result = -50;
  if (context && value)
  {
    if (option <= kSSLSessionOptionBreakOnClientAuth)
    {
      switch(option)
      {
        case kSSLSessionOptionBreakOnServerAuth:
          result = 0;
          v5 = *(context + 353);
          goto LABEL_19;
        case kSSLSessionOptionBreakOnCertRequested:
          result = 0;
          v5 = *(context + 354);
          goto LABEL_19;
        case kSSLSessionOptionBreakOnClientAuth:
          result = 0;
          v5 = *(context + 355);
LABEL_19:
          *value = v5;
          break;
      }
    }

    else
    {
      if (option <= kSSLSessionOptionSendOneByteRecord)
      {
        result = 0;
        if (option == kSSLSessionOptionFalseStart)
        {
          v5 = *(context + 512);
        }

        else
        {
          v5 = *(context + 315);
        }

        goto LABEL_19;
      }

      if (option == kSSLSessionOptionAllowServerIdentityChange)
      {
        tls_handshake_get_server_identity_change();
        return 0;
      }

      else if (option == kSSLSessionOptionBreakOnClientHello)
      {
        result = 0;
        v5 = *(context + 359);
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t SSLSetNPNFunc(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + 80);
    v4 = v3 > 6;
    v5 = (1 << v3) & 0x59;
    if (!v4 && v5 != 0)
    {
      *(result + 520) = a2;
      *(result + 528) = a3;
      if (*(result + 108) == 1)
      {
        return MEMORY[0x1EEE64A38](*(result + 56), a2 != 0);
      }
    }
  }

  return result;
}

uint64_t SSLSetNPNData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 256) >= 0xFFFFFFFFFFFFFF01)
  {
    return MEMORY[0x1EEE64A30](*(a1 + 56), a3, a2);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t *SSLGetNPNData(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = tls_handshake_get_peer_npn_data();
    if (result)
    {
      v5 = *result;
      result = result[1];
      *a2 = v5;
    }
  }

  return result;
}

uint64_t SSLSetALPNFunc(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + 80);
    v4 = v3 > 6;
    v5 = (1 << v3) & 0x59;
    if (!v4 && v5 != 0)
    {
      *(result + 536) = a2;
      *(result + 544) = a3;
    }
  }

  return result;
}

uint64_t SSLSetALPNData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 256) >= 0xFFFFFFFFFFFFFF01)
  {
    return tls_handshake_set_alpn_data();
  }

  else
  {
    return 4294967246;
  }
}

uint64_t *SSLGetALPNData(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = tls_handshake_get_peer_alpn_data();
    if (result)
    {
      v5 = *result;
      result = result[1];
      *a2 = v5;
    }
  }

  return result;
}

OSStatus SSLSetALPNProtocols(SSLContextRef context, CFArrayRef protocols)
{
  v2 = -50;
  if (context && protocols && CFArrayGetCount(protocols))
  {
    Mutable = CFDataCreateMutable(0, 0);
    contexta[0] = MEMORY[0x1E69E9820];
    contexta[1] = 0x40000000;
    contexta[2] = __SSLSetALPNProtocols_block_invoke;
    contexta[3] = &__block_descriptor_tmp_4_8339;
    contexta[4] = Mutable;
    v7.length = CFArrayGetCount(protocols);
    v7.location = 0;
    CFArrayApplyFunction(protocols, v7, apply_block_1_8341, contexta);
    if (CFDataGetLength(Mutable) <= 255)
    {
      CFDataGetBytePtr(Mutable);
      CFDataGetLength(Mutable);
      v2 = tls_handshake_set_alpn_data();
    }

    CFRelease(Mutable);
  }

  return v2;
}

void __SSLSetALPNProtocols_block_invoke(uint64_t a1, CFStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  bytes = CFStringGetLength(theString);
  if (bytes <= 0x20uLL)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buffer = v4;
    v7 = v4;
    if (CFStringGetCString(theString, buffer, 32, 0x600u))
    {
      CFDataAppendBytes(*(a1 + 32), &bytes, 1);
      CFDataAppendBytes(*(a1 + 32), buffer, bytes);
    }
  }
}

OSStatus SSLCopyALPNProtocols(SSLContextRef context, CFArrayRef *protocols)
{
  result = -50;
  if (context && protocols)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    peer_alpn_data = tls_handshake_get_peer_alpn_data();
    if (peer_alpn_data)
    {
      v7 = peer_alpn_data;
      v8 = 0;
      v9 = *peer_alpn_data;
      while (v8 < v9)
      {
        v10 = v7[1];
        v11 = *(v10 + v8);
        v12 = v8 + 1;
        v8 += 1 + v11;
        if (v8 <= v9)
        {
          v13 = CFStringCreateWithBytes(0, (v10 + v12), v11, 0x600u, 0);
          CFArrayAppendValue(Mutable, v13);
          if (v13)
          {
            CFRelease(v13);
          }

          v9 = *v7;
          if (v8 <= *v7)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      result = 0;
    }

    else
    {
LABEL_10:
      if (Mutable)
      {
        CFRelease(Mutable);
        Mutable = 0;
      }

      result = -50;
    }

    *protocols = Mutable;
  }

  return result;
}

OSStatus SSLSetOCSPResponse(SSLContextRef context, CFDataRef response)
{
  result = -50;
  if (context)
  {
    if (response)
    {
      CFDataGetBytePtr(response);
      CFDataGetLength(response);
      return tls_handshake_set_ocsp_response();
    }
  }

  return result;
}

OSStatus SSLGetConnection(SSLContextRef context, SSLConnectionRef *connection)
{
  result = -50;
  if (context)
  {
    if (connection)
    {
      result = 0;
      *connection = *(context + 4);
    }
  }

  return result;
}

OSStatus SSLSetPeerDomainName(SSLContextRef context, const char *peerName, size_t peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return -909;
  }

  if (*(context + 27) == 1)
  {
    return MEMORY[0x1EEE64A50](*(context + 7), peerName, peerNameLen);
  }

  return 0;
}

OSStatus SSLGetPeerDomainNameLength(SSLContextRef context, size_t *peerNameLen)
{
  if (context)
  {
    return tls_handshake_get_peer_hostname();
  }

  else
  {
    return -50;
  }
}

OSStatus SSLGetPeerDomainName(SSLContextRef context, char *peerName, size_t *peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  result = tls_handshake_get_peer_hostname();
  if (!result)
  {
    if (*peerNameLen >= 0xAAAAAAAAAAAAAAAALL)
    {
      memcpy(peerName, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
      result = 0;
      *peerNameLen = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      return -9817;
    }
  }

  return result;
}

OSStatus SSLCopyRequestedPeerNameLength(SSLContextRef ctx, size_t *peerNameLen)
{
  if (!ctx)
  {
    return -50;
  }

  sni_hostname = tls_handshake_get_sni_hostname();
  if (!sni_hostname)
  {
    return -50;
  }

  v4 = sni_hostname;
  result = 0;
  *peerNameLen = *v4;
  return result;
}

OSStatus SSLCopyRequestedPeerName(SSLContextRef context, char *peerName, size_t *peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  sni_hostname = tls_handshake_get_sni_hostname();
  if (!sni_hostname)
  {
    return -50;
  }

  v6 = sni_hostname;
  if (*peerNameLen < *sni_hostname)
  {
    return -9817;
  }

  memcpy(peerName, *(sni_hostname + 8), *sni_hostname);
  result = 0;
  *peerNameLen = *v6;
  return result;
}

OSStatus SSLSetDatagramHelloCookie(SSLContextRef dtlsContext, const void *cookie, size_t cookieLen)
{
  if (!dtlsContext)
  {
    return -50;
  }

  result = -50;
  if (cookieLen <= 0x20 && *(dtlsContext + 104))
  {
    v6 = *(dtlsContext + 20);
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x59;
    if (v7 || v8 == 0)
    {
      return -909;
    }

    else
    {
      v11 = *(dtlsContext + 15);
      if (v11)
      {
        free(v11);
        *(dtlsContext + 14) = 0;
        *(dtlsContext + 15) = 0;
      }

      v12 = malloc_type_malloc(cookieLen, 0x7BE92BBDuLL);
      v13 = v12;
      if (v12)
      {
        v14 = cookieLen;
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        result = 0;
      }

      else
      {
        result = -1;
      }

      *(dtlsContext + 14) = v14;
      *(dtlsContext + 15) = v13;
      if (v13)
      {
        memmove(v13, cookie, cookieLen);
        return 0;
      }
    }
  }

  return result;
}

OSStatus SSLSetMaxDatagramRecordSize(SSLContextRef dtlsContext, size_t maxSize)
{
  if (!dtlsContext || !*(dtlsContext + 104))
  {
    return -50;
  }

  tls_handshake_set_mtu();
  return 0;
}

OSStatus SSLGetMaxDatagramRecordSize(SSLContextRef dtlsContext, size_t *maxSize)
{
  if (!dtlsContext || !*(dtlsContext + 104))
  {
    return -50;
  }

  result = 0;
  *maxSize = *(dtlsContext + 54);
  return result;
}

OSStatus SSLGetDatagramWriteSize(SSLContextRef dtlsContext, size_t *bufSize)
{
  if (!dtlsContext)
  {
    return -50;
  }

  result = -50;
  if (bufSize)
  {
    if (*(dtlsContext + 104))
    {
      result = 0;
      *bufSize = ((*(dtlsContext + 54) - 13) & 0xFFFFFFFFFFFFFFF0) - 49;
    }
  }

  return result;
}

OSStatus SSLGetProtocolVersionMin(SSLContextRef context, SSLProtocol *minVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 24);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *minVersion = v3;
  return result;
}

OSStatus SSLSetProtocolVersionMax(SSLContextRef context, SSLProtocol maxVersion)
{
  if (!context)
  {
    return -50;
  }

  if ((maxVersion - 1) > 8)
  {
    return -9830;
  }

  v2 = dword_1889605B8[maxVersion - 1];
  if (!*(context + 104))
  {
    if (v2 - 772 >= 0xFFFFFFFC)
    {
      if (v2 < *(context + 24))
      {
        *(context + 24) = v2;
      }

      goto LABEL_13;
    }

    return -9830;
  }

  if (maxVersion != kDTLSProtocol1)
  {
    return -9830;
  }

  if (*(context + 24) <= 0xFEFEu)
  {
    *(context + 24) = 65279;
  }

LABEL_13:
  *(context + 25) = v2;
  tls_handshake_set_min_protocol_version();
  tls_handshake_set_max_protocol_version();
  return 0;
}

OSStatus SSLGetProtocolVersionMax(SSLContextRef context, SSLProtocol *maxVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 25);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *maxVersion = v3;
  return result;
}

uint64_t _SSLProtocolVersionToWireFormatValue(uint64_t result)
{
  if (result <= 6)
  {
    if (result > 2)
    {
      if ((result - 5) >= 2 && result == 4)
      {
        return 769;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      if (result == 2)
      {
        return 768;
      }
    }

    return 0;
  }

  if (result > 9)
  {
    switch(result)
    {
      case 0xA:
        return 772;
      case 0xB:
        return 65277;
      case 0x3E7:
        return 772;
    }

    return 0;
  }

  if (result == 7)
  {
    return 770;
  }

  if (result == 8)
  {
    return 771;
  }

  return 65279;
}

uint64_t _SSLSetProtocolVersionEnabled(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  v6 = v4 || v5 == 0;
  if (v6 || *(a1 + 104))
  {
    return 4294966387;
  }

  if (a2 != 6)
  {
    if ((a2 - 1) > 8)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1889605B8[a2 - 1];
    }

    v9 = v8 - 772;
    if (a3)
    {
      if (v9 >= 0xFFFFFFFC)
      {
        if (v8 <= *(a1 + 100))
        {
          v10 = *(a1 + 96);
        }

        else
        {
          *(a1 + 100) = v8;
          v10 = *(a1 + 96);
          if (!v10)
          {
            goto LABEL_28;
          }
        }

        if (v8 >= v10)
        {
          goto LABEL_40;
        }

LABEL_28:
        *(a1 + 96) = v8;
        goto LABEL_40;
      }

      return 4294967246;
    }

    if (v9 < 0xFFFFFCFE)
    {
      return 4294967246;
    }

    if (v8 > 768)
    {
      if (v8 != 769)
      {
        if (v8 == 770)
        {
          v11 = 771;
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v11 = 770;
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 == 768)
        {
          v11 = 769;
          goto LABEL_35;
        }

LABEL_32:
        v11 = 0;
        goto LABEL_35;
      }

      v11 = 768;
    }

LABEL_35:
    v12 = *(a1 + 100);
    if (*(a1 + 96) <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = *(a1 + 96);
    }

    *(a1 + 96) = v13;
    if (v13 <= v12)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_39:
    *(a1 + 96) = 0;
    goto LABEL_40;
  }

  *(a1 + 96) = 0x30300000300;
LABEL_40:
  tls_handshake_set_min_protocol_version();
  tls_handshake_set_max_protocol_version();
  return 0;
}

uint64_t _SSLGetProtocolVersionEnabled(uint64_t a1, unsigned int a2, BOOL *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (!*(a1 + 104))
  {
    v3 = 4294967246;
    if (a2 > 8)
    {
      return v3;
    }

    if (((1 << a2) & 0x196) != 0)
    {
      v4 = dword_1889605B8[a2 - 1];
      if (*(a1 + 96) <= v4)
      {
        v5 = *(a1 + 100) >= v4;
        goto LABEL_10;
      }
    }

    else
    {
      if (a2 != 6)
      {
        return v3;
      }

      if (*(a1 + 96) <= 0x300u)
      {
        v5 = *(a1 + 100) > 0x302u;
        goto LABEL_10;
      }
    }

    v5 = 0;
LABEL_10:
    v3 = 0;
    *a3 = v5;
    return v3;
  }

  return 4294966387;
}

uint64_t _SSLSetProtocolVersion(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = *(a1 + 80);
  v3 = v2 > 6;
  v4 = (1 << v2) & 0x59;
  v5 = v3 || v4 == 0;
  if (v5 || *(a1 + 104))
  {
    return 4294966387;
  }

  if (a2 > 8 || ((0x1FDu >> a2) & 1) == 0)
  {
    return 4294967246;
  }

  v7 = dword_188960600[a2];
  *(a1 + 96) = dword_1889605DC[a2];
  *(a1 + 100) = v7;
  tls_handshake_set_min_protocol_version();
  tls_handshake_set_max_protocol_version();
  return 0;
}

uint64_t _SSLGetProtocolVersion(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 100);
  result = 4294967246;
  if (v3 <= 769)
  {
    if (v3 == 768)
    {
      if (*(a1 + 96) != 768)
      {
        return result;
      }

      result = 0;
      v6 = 2;
    }

    else
    {
      if (v3 != 769)
      {
        return result;
      }

      v5 = *(a1 + 96);
      if (v5 == 768)
      {
        result = 0;
        v6 = 4;
      }

      else
      {
        if (v5 != 769)
        {
          return result;
        }

        v6 = 5;
      }
    }

    goto LABEL_18;
  }

  if (v3 == 770)
  {
    if (*(a1 + 96) != 768)
    {
      return result;
    }

    result = 0;
    v6 = 7;
    goto LABEL_18;
  }

  if (v3 == 771 && *(a1 + 96) == 768)
  {
    result = 0;
    v6 = 6;
LABEL_18:
    *a2 = v6;
  }

  return result;
}

OSStatus SSLGetNegotiatedProtocolVersion(SSLContextRef context, SSLProtocol *protocol)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 22);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *protocol = v3;
  return result;
}

uint64_t _SSLGetEnableCertVerify(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 187);
  return result;
}

uint64_t _SSLSetAllowsAnyRoot(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 312) = a2;
  return result;
}

uint64_t _SSLGetAllowsAnyRoot(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 312);
  return result;
}

uint64_t _SSLSetTrustedRoots(uint64_t a1, CFArrayRef theArray, int a3)
{
  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  if (a3)
  {
    *(a1 + 184) = 1;
    v9 = *(a1 + 176);
    if (v9)
    {
      *(a1 + 176) = 0;
      CFRelease(v9);
    }
  }

  if (*(a1 + 176))
  {
    v12.length = CFArrayGetCount(theArray);
    v12.location = 0;
    CFArrayAppendArray(*(a1 + 176), theArray, v12);
  }

  else
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    *(a1 + 176) = MutableCopy;
    if (!MutableCopy)
    {
      return 4294967188;
    }
  }

  return 0;
}

uint64_t _SSLCopyTrustedRoots(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      *a2 = v4;
      CFRetain(*(a1 + 176));
      return 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t SSLGetClientSideAuthenticate(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 252);
    }
  }

  return result;
}

OSStatus SSLGetClientCertificateState(SSLContextRef context, SSLClientCertificateState *clientState)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 64);
  if (*(context + 27) == 1)
  {
    if (v2 == kSSLClientCertNone)
    {
LABEL_16:
      result = 0;
      *clientState = v2;
      return result;
    }

    if (v2 == kSSLClientCertRequested)
    {
      v3 = 152;
      goto LABEL_13;
    }
  }

  else
  {
    if (v2)
    {
      v5 = v2 == kSSLClientCertRejected;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_16;
    }

    if (v2 == kSSLClientCertRequested)
    {
      v3 = 168;
LABEL_13:
      if (*(context + v3))
      {
        v2 = kSSLClientCertSent;
      }

      else
      {
        v2 = kSSLClientCertRequested;
      }

      goto LABEL_16;
    }
  }

  return -9810;
}

OSStatus SSLSetEncryptionCertificate(SSLContextRef context, CFArrayRef certRefs)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return -909;
  }

  v8 = *(context + 20);
  if (v8)
  {
    *(context + 20) = 0;
    CFRelease(v8);
  }

  *(context + 20) = certRefs;
  CFRetain(certRefs);
  return 0;
}

uint64_t SSLGetCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 152);
  return result;
}

uint64_t SSLGetEncryptionCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 160);
  return result;
}

OSStatus SSLSetPeerID(SSLContextRef context, const void *peerID, size_t peerIDLen)
{
  result = -50;
  if (context && peerID && peerIDLen)
  {
    v7 = *(context + 20);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x59;
    v10 = v8 || v9 == 0;
    if (!v10 || *(context + 64) == 1)
    {
      v11 = *(context + 27);
      if (v11)
      {
        free(v11);
      }

      *(context + 26) = 0;
      *(context + 27) = 0;
      v12 = malloc_type_malloc(peerIDLen, 0x7BE92BBDuLL);
      if (v12)
      {
        v13 = peerIDLen;
      }

      else
      {
        v13 = 0;
      }

      *(context + 26) = v13;
      *(context + 27) = v12;
      if (v12)
      {
        tls_handshake_set_resumption();
        memmove(*(context + 27), peerID, peerIDLen);
        return 0;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -909;
    }
  }

  return result;
}

OSStatus SSLGetPeerID(SSLContextRef context, const void **peerID, size_t *peerIDLen)
{
  v3 = *(context + 26);
  *peerID = *(context + 27);
  *peerIDLen = v3;
  return 0;
}

OSStatus SSLGetNegotiatedCipher(SSLContextRef context, SSLCipherSuite *cipherSuite)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  if (v3 < 7 && ((0x59u >> v3) & 1) != 0)
  {
    return -909;
  }

  negotiated_cipherspec = tls_handshake_get_negotiated_cipherspec();
  result = 0;
  *cipherSuite = negotiated_cipherspec;
  return result;
}

OSStatus SSLAddDistinguishedName(SSLContextRef context, const void *derDN, size_t derDNLen)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  v10 = malloc_type_malloc(0x18uLL, 0x7BE92BBDuLL);
  if (!v10)
  {
    return -108;
  }

  v11 = v10;
  v12 = malloc_type_malloc(derDNLen, 0x7BE92BBDuLL);
  if (v12)
  {
    v13 = derDNLen;
  }

  else
  {
    v13 = 0;
  }

  v11[1] = v13;
  v11[2] = v12;
  if (v12)
  {
    memcpy(v12, derDN, derDNLen);
    *v11 = *(context + 33);
    *(context + 33) = v11;
    tls_handshake_set_acceptable_dn_list();
    return 0;
  }

  else
  {
    free(v11);
    return -1;
  }
}

uint64_t _SSLSetCertificateAuthorities(uint64_t a1, CFTypeRef cf, int a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  v7 = v5 || v6 == 0;
  if (v7 || *(a1 + 108))
  {
    return 4294967246;
  }

  if (a3)
  {
    sslFreeDnList(a1);
    v10 = *(a1 + 272);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 272) = 0;
    }
  }

  v11 = CFGetTypeID(cf);
  if (v11 != SecCertificateGetTypeID())
  {
    if (v11 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count < 1)
      {
        return 0;
      }

      v13 = Count;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != SecCertificateGetTypeID())
        {
          break;
        }

        result = sslAddCA(a1, ValueAtIndex);
        if (!result && v13 != ++v14)
        {
          continue;
        }

        return result;
      }
    }

    return 4294967246;
  }

  return sslAddCA(a1, cf);
}

uint64_t sslAddCA(SSLContext *a1, const void *a2)
{
  v4 = SecDERItemCopySequence(a2 + 184);
  if (!v4)
  {
    return 4294967246;
  }

  v5 = v4;
  Mutable = *(a1 + 34);
  if (Mutable || (Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(a1 + 34) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    v9 = SSLAddDistinguishedName(a1, BytePtr, Length);
  }

  else
  {
    v9 = 4294967246;
  }

  CFRelease(v5);
  return v9;
}

uint64_t _SSLCopyCertificateAuthorities(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v4 = *(a1 + 272);
    if (v4)
    {
      *a2 = v4;
      CFRetain(*(a1 + 272));
      return 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

OSStatus SSLCopyDistinguishedNames(SSLContextRef context, CFArrayRef *names)
{
  result = -50;
  if (context && names)
  {
    if (*(context + 27))
    {
      peer_acceptable_dn_list = tls_handshake_get_peer_acceptable_dn_list();
      if (peer_acceptable_dn_list)
      {
        goto LABEL_5;
      }
    }

    else
    {
      peer_acceptable_dn_list = *(context + 33);
      if (peer_acceptable_dn_list)
      {
LABEL_5:
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        do
        {
          v7 = CFDataCreate(0, *(peer_acceptable_dn_list + 16), *(peer_acceptable_dn_list + 8));
          CFArrayAppendValue(Mutable, v7);
          CFRelease(v7);
          peer_acceptable_dn_list = *peer_acceptable_dn_list;
        }

        while (peer_acceptable_dn_list);
        goto LABEL_10;
      }
    }

    Mutable = 0;
LABEL_10:
    result = 0;
    *names = Mutable;
  }

  return result;
}

uint64_t _SSLSetDiffieHellmanParams(uint64_t a1, const void *a2, size_t size)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return 4294966387;
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v11 = malloc_type_malloc(size, 0x7BE92BBDuLL);
  if (v11)
  {
    v12 = v11;
    memmove(v11, a2, size);
    *(a1 + 136) = size;
    *(a1 + 144) = v12;
    v13 = *(a1 + 56);

    return MEMORY[0x1EEE649F8](v13, a1 + 136);
  }

  else
  {
    *(a1 + 144) = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t _SSLGetDiffieHellmanParams(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  v6 = a1 + 136;
  v5 = *(a1 + 136);
  *a2 = *(v6 + 8);
  *a3 = v5;
  return result;
}

uint64_t SSLSetDHEEnabled(uint64_t a1, char a2)
{
  *(a1 + 552) = a2;
  tls_handshake_get_min_protocol_version();
  tls_handshake_get_max_protocol_version();
  tls_handshake_get_min_dh_group_size();
  tls_handshake_set_config();
  tls_handshake_set_min_protocol_version();
  tls_handshake_set_max_protocol_version();
  tls_handshake_set_min_dh_group_size();
  return 0;
}

uint64_t _SSLSetRsaBlinding(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 314) = a2;
  return result;
}

uint64_t _SSLGetRsaBlinding(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 314);
  return result;
}

OSStatus SSLCopyPeerTrust(SSLContextRef context, SecTrustRef *trust)
{
  SecTrust = -50;
  if (context && trust)
  {
    v6 = (context + 168);
    v5 = *(context + 21);
    if (v5)
    {
      SecTrust = 0;
    }

    else
    {
      SecTrust = sslCreateSecTrust(context, context + 21);
      v5 = *(context + 21);
    }

    *trust = v5;
    if (*v6)
    {
      CFRetain(*v6);
    }
  }

  return SecTrust;
}

uint64_t SSLGetPeerSecTrust(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v5 = *(a1 + 168);
    if (v5)
    {
      result = 0;
    }

    else
    {
      result = sslCreateSecTrust(a1, (a1 + 168));
      v5 = *(a1 + 168);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t SSLInternalMasterSecret(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64970](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLInternalServerRandom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64980](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLInternalClientRandom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64968](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLGetCipherSizes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      tls_handshake_get_negotiated_cipherspec();
      *a2 = sslCipherSuiteGetMacSize();
      *a3 = sslCipherSuiteGetSymmetricCipherKeySize();
      SymmetricCipherBlockIvSize = sslCipherSuiteGetSymmetricCipherBlockIvSize();
      result = 0;
      *a4 = SymmetricCipherBlockIvSize;
    }
  }

  return result;
}

uint64_t SSLGetResumableSessionInfo(uint64_t a1, _BYTE *a2, void *a3, size_t *a4)
{
  result = 4294967246;
  if (a1 && a2 && a3 && a4)
  {
    if (*a4 < 0x20)
    {
      return 4294967246;
    }

    if (tls_handshake_get_session_match())
    {
      *a2 = 1;
      v9 = 0xAAAAAAAAAAAAAAAALL;
      if (*a4 < 0xAAAAAAAAAAAAAAAALL)
      {
        return 4294967246;
      }

      memmove(a3, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
    }

    else
    {
      v9 = 0;
      *a2 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  return result;
}

uint64_t SSLSetSessionCacheTimeout(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 316) = a2;
  return result;
}

uint64_t SSLInternalSetMasterSecretFunction(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  a1[42] = a2;
  a1[43] = a3;
  return MEMORY[0x1EEE64988](a1[7], tls_handshake_master_secret_function, a1);
}

uint64_t SSLInternalSetSessionTicket(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  v1 = *(a1 + 80);
  v2 = v1 > 6;
  v3 = (1 << v1) & 0x59;
  if (v2 || v3 == 0)
  {
    return 4294966387;
  }

  else
  {
    return MEMORY[0x1EEE64990](*(a1 + 56));
  }
}

uint64_t SSLGetNegotiatedCurve(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      negotiated_curve = tls_handshake_get_negotiated_curve();
      result = 0;
      *a2 = negotiated_curve;
    }
  }

  return result;
}

uint64_t SSLGetNumberOfECDSACurves(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 248);
    }
  }

  return result;
}

uint64_t SSLGetECDSACurves(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 4294967246;
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 248);
    if (*a3 >= v4)
    {
      if (v4)
      {
        v5 = 0;
        v6 = *(a1 + 240);
        do
        {
          *(a2 + 4 * v5) = *(v6 + 2 * v5);
          ++v5;
          v7 = *(a1 + 248);
        }

        while (v5 < v7);
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v3 = 0;
      *a3 = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return v3;
}

uint64_t SSLSetECDSACurves(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        v7 = *(a1 + 80);
        v8 = v7 > 6;
        v9 = (1 << v7) & 0x59;
        if (v8 || v9 == 0)
        {
          return 4294966387;
        }

        else
        {
          v11 = malloc_type_malloc(2 * a3, 0x7BE92BBDuLL);
          *(a1 + 240) = v11;
          if (v11)
          {
            v12 = 0;
            do
            {
              v13 = *(a2 + 4 * v12);
              if (v13 > 65534)
              {
                LOWORD(v13) = -1;
              }

              v11[v12++] = v13;
            }

            while (v6 != v12);
            *(a1 + 248) = v6;
            tls_handshake_set_curves();
            return 0;
          }

          else
          {
            *(a1 + 248) = 0;
            return 4294967188;
          }
        }
      }
    }
  }

  return result;
}

uint64_t SSLGetNumberOfClientAuthTypes(uint64_t a1, _DWORD *a2)
{
  if (!a1 || !*(a1 + 256))
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 400);
  return result;
}

uint64_t SSLGetClientAuthTypes(uint64_t a1, void *__dst, _DWORD *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (!*(a1 + 256))
  {
    return 4294967246;
  }

  memmove(__dst, *(a1 + 408), 4 * *(a1 + 400));
  result = 0;
  *a3 = *(a1 + 400);
  return result;
}

uint64_t SSLGetNumberOfSignatureAlgorithms(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  tls_handshake_get_peer_signature_algorithms();
  return 0;
}

uint64_t SSLGetSignatureAlgorithms(uint64_t a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  peer_signature_algorithms = tls_handshake_get_peer_signature_algorithms();
  memmove(a2, peer_signature_algorithms, 0x555555550uLL);
  result = 0;
  *a3 = -1431655766;
  return result;
}

uint64_t SSLSetPSKSharedSecret(void *a1, const void *a2, size_t size)
{
  if (!a1)
  {
    return 4294967246;
  }

  v6 = a1[61];
  if (v6)
  {
    free(v6);
    a1[60] = 0;
    a1[61] = 0;
  }

  v7 = malloc_type_malloc(size, 0x7BE92BBDuLL);
  if (v7)
  {
    v8 = v7;
    memmove(v7, a2, size);
    a1[60] = size;
    a1[61] = v8;
    tls_handshake_set_psk_secret();
    return 0;
  }

  else
  {
    a1[61] = 0;
    return 4294967188;
  }
}

uint64_t SSLSetPSKIdentity(void *a1, const void *a2, size_t size)
{
  result = 4294967246;
  if (a1 && a2 && size)
  {
    v7 = a1[63];
    if (v7)
    {
      free(v7);
      a1[62] = 0;
      a1[63] = 0;
    }

    v8 = malloc_type_malloc(size, 0x7BE92BBDuLL);
    if (v8)
    {
      v9 = v8;
      memmove(v8, a2, size);
      a1[62] = size;
      a1[63] = v9;
      tls_handshake_set_psk_identity();
      return 0;
    }

    else
    {
      a1[63] = 0;
      return 4294967188;
    }
  }

  return result;
}

uint64_t SSLGetPSKIdentity(uint64_t a1, void *a2, void *a3)
{
  result = 4294967246;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      v6 = a1 + 496;
      v5 = *(a1 + 496);
      *a2 = *(v6 + 8);
      *a3 = v5;
    }
  }

  return result;
}

uint64_t tls_handshake_delete_all_sessions_callback(uint64_t a1)
{
  if (*(a1 + 64))
  {
    tls_cache_empty();
  }

  return 0;
}

uint64_t tls_handshake_delete_session_data_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    return tls_cache_delete_session_data();
  }

  else
  {
    return 4294957492;
  }
}

uint64_t tls_handshake_load_session_data_callback(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = a1[29];
  if (v6)
  {
    free(v6);
  }

  a1[28] = 0;
  a1[29] = 0;
  if (!a1[8])
  {
    return 4294957492;
  }

  v9 = 0;
  v10 = 0;
  session_data = _buildConfigurationSpecificSessionCacheKey(a1, v11, &v9);
  if (!session_data)
  {
    session_data = tls_cache_load_session_data();
    *a4 = *(a1 + 14);
    free(v10);
  }

  return session_data;
}

uint64_t _buildConfigurationSpecificSessionCacheKey(uint64_t a1, uint64_t a2, size_t *a3)
{
  if (!*(a1 + 376))
  {
    v9 = malloc_type_malloc(0xAuLL, 0x682C6729uLL);
    if (v9)
    {
      v8 = v9;
      *v9 = *(a1 + 353);
      v9[1] = *(a1 + 354);
      v9[2] = *(a1 + 355);
      v9[3] = *(a1 + 356);
      v9[4] = *(a1 + 357);
      v9[5] = *(a1 + 358);
      v9[6] = *(a1 + 359);
      v9[7] = *(a1 + 360);
      v9[8] = *(a1 + 361);
      v9[9] = *(a1 + 362);
      v6 = 10;
      *(a1 + 368) = 10;
      v10 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
      *(a1 + 376) = v10;
      v11 = v8[4];
      *v10 = *v8;
      v10[4] = v11;
      goto LABEL_6;
    }

    return 4294967188;
  }

  v6 = *(a1 + 368);
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 4294967188;
  }

  v8 = v7;
  memcpy(v7, *(a1 + 376), v6);
LABEL_6:
  v12 = *a2 + v6;
  *a3 = v12;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  a3[1] = v13;
  if (v13)
  {
    memcpy(v13, v8, v6);
    memcpy((a3[1] + v6), *(a2 + 8), *a2);
    v14 = 0;
  }

  else
  {
    v14 = 4294967188;
  }

  free(v8);
  return v14;
}

uint64_t tls_handshake_save_session_data_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = a4;
  v10 = a5;
  if (!*(a1 + 64))
  {
    return 4294957492;
  }

  v7 = 0;
  v8 = 0;
  v5 = _buildConfigurationSpecificSessionCacheKey(a1, v11, &v7);
  if (!v5)
  {
    v5 = tls_cache_save_session_data();
    free(v8);
  }

  return v5;
}

uint64_t tls_handshake_set_retransmit_timer_callback(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = CFAbsoluteTimeGetCurrent() + (1 << (a2 - 1)) * *(a1 + 424);
  }

  else
  {
    v3 = 0.0;
  }

  *(a1 + 416) = v3;
  return 0;
}

void log_SecureTransport_early_fail(uint64_t a1)
{
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.SecureTransport.early_fail.%ld", a1);
  if (v1)
  {
    v2 = v1;
    SecCoreAnalyticsSendValue(v1, 1);

    CFRelease(v2);
  }
}

OSStatus SSLReHandshake(SSLContextRef context)
{
  if (!context)
  {
    return -50;
  }

  v1 = *(context + 20) - 1;
  if (v1 < 6 && ((0x2Du >> v1) & 1) != 0)
  {
    return dword_188960624[v1];
  }

  if (*(context + 27) == 1)
  {
    return SSLHandshakeStart(context);
  }

  return MEMORY[0x1EEE649A8](*(context + 7));
}

uint64_t SSLHandshakeStart(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md = v2;
  v15 = v2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x8000000000;
  *v13.count = v2;
  *&v13.hash[2] = v2;
  *&v13.hash[6] = v2;
  *&v13.wbuf[2] = v2;
  *&v13.wbuf[6] = v2;
  *&v13.wbuf[10] = v2;
  *&v13.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  CC_SHA256_Init(&v13);
  CC_SHA256_Update((v11 + 3), (a1 + 312), 1u);
  CC_SHA256_Update((v11 + 3), (a1 + 184), 1u);
  v3 = *(a1 + 176);
  if (v3)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __get_extended_peer_id_block_invoke;
    context[3] = &unk_1E70DD810;
    context[4] = &v10;
    v17.length = CFArrayGetCount(v3);
    v17.location = 0;
    CFArrayApplyFunction(v3, v17, apply_block_1_8368, context);
  }

  CC_SHA256_Final(&md, (v11 + 3));
  v8 = malloc_type_malloc(*(a1 + 208) + 32, 0x7BE92BBDuLL);
  memcpy(v8, *(a1 + 216), *(a1 + 208));
  v4 = &v8[*(a1 + 208)];
  v5 = v15;
  *v4 = md;
  *(v4 + 1) = v5;
  _Block_object_dispose(&v10, 8);
  v6 = tls_handshake_negotiate();
  free(v8);
  if (!v6)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
  }

  return v6;
}

OSStatus SSLSetError(SSLContextRef context, OSStatus status)
{
  *(context + 20) = 6;
  *(context + 21) = status;
  return 0;
}

OSStatus SSLGetBufferedReadSize(SSLContextRef context, size_t *bufferSize)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 37);
  if (v2)
  {
    v2 = *(context + 36) - *(context + 38);
  }

  result = 0;
  *bufferSize = v2;
  return result;
}

BOOL SSLIsSessionNegotiatedWithUnsafeDH(_BOOL8 result)
{
  if (result)
  {
    return tls_handshake_get_session_warning() == -49;
  }

  return result;
}

uint64_t SSLCiphersuiteGroupToCiphersuiteList(int a1, void *a2)
{
  if ((a1 - 1) >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  if (!a2)
  {
    return 0;
  }

  if (v2 > 4u)
  {
    v4 = 0;
    result = 0;
  }

  else
  {
    v3 = v2;
    v4 = qword_18895ED40[v2];
    result = *(&off_1E70D6910 + v3);
  }

  *a2 = v4;
  return result;
}

BOOL SSLCiphersuiteGroupContainsCiphersuite(int a1, int a2)
{
  result = 0;
  if ((a1 - 1) >= 4)
  {
    LOWORD(a1) = 0;
  }

  if (a1 <= 4u)
  {
    v4 = qword_18895ED40[a1];
    v5 = *(&off_1E70D6910 + a1);
    v6 = v4 - 1;
    do
    {
      v7 = *v5++;
      result = v7 == a2;
    }

    while (v7 != a2 && v6-- != 0);
  }

  return result;
}

uint64_t SSLProtocolGetVersionCodepoint(int a1)
{
  v1 = &ssl_protocol_version_map;
  v2 = 8;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 + 2);
}

uint64_t SSLProtocolFromVersionCodepoint(int a1)
{
  v1 = &ssl_protocol_version_map;
  v2 = 8;
  while (v1[2] != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t SSLCiphersuiteMinimumTLSVersion(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[1];
LABEL_6:
  v4 = &ssl_protocol_version_map;
  v5 = 8;
  while (v4[2] != v3)
  {
    v4 += 4;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t SSLCiphersuiteMaximumTLSVersion(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[2];
LABEL_6:
  v4 = &ssl_protocol_version_map;
  v5 = 8;
  while (v4[2] != v3)
  {
    v4 += 4;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

OSStatus SSLGetNumberSupportedCiphers(SSLContextRef context, size_t *numCiphers)
{
  result = -50;
  if (context)
  {
    if (numCiphers)
    {
      result = 0;
      *numCiphers = 67;
    }
  }

  return result;
}

OSStatus SSLGetSupportedCiphers(SSLContextRef context, SSLCipherSuite *ciphers, size_t *numCiphers)
{
  result = -50;
  if (context && ciphers && numCiphers)
  {
    if (*numCiphers >= 0x43)
    {
      for (i = 0; i != 67; ++i)
      {
        ciphers[i] = STKnownCipherSuites[i];
      }

      result = 0;
      *numCiphers = 67;
    }

    else
    {
      return -9817;
    }
  }

  return result;
}

OSStatus SSLSetEnabledCiphers(SSLContextRef context, const SSLCipherSuite *ciphers, size_t numCiphers)
{
  result = -50;
  if (context && ciphers && numCiphers)
  {
    v7 = *(context + 20);
    v8 = v7 > 6;
    v9 = (0x10000010100uLL >> (8 * v7));
    if (!v8 && v9 == 0)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = 0;
        while (STKnownCipherSuites[v13] != ciphers[v11])
        {
          if (++v13 == 67)
          {
            goto LABEL_15;
          }
        }

        ++v12;
LABEL_15:
        ++v11;
      }

      while (v11 != numCiphers);
      if (v12)
      {
        v14 = malloc_type_malloc(2 * v12, 0x7BE92BBDuLL);
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = 0;
            v19 = ciphers[v16];
            while (STKnownCipherSuites[v18] != v19)
            {
              if (++v18 == 67)
              {
                goto LABEL_24;
              }
            }

            *(v14 + v17++) = v19;
LABEL_24:
            ++v16;
          }

          while (v16 != numCiphers);
          v20 = tls_handshake_set_ciphersuites();
          free(v15);
          return v20;
        }

        else
        {
          return -108;
        }
      }

      else
      {
        return -50;
      }
    }

    else
    {
      return -909;
    }
  }

  return result;
}

OSStatus SSLGetNumberEnabledCiphers(SSLContextRef context, size_t *numCiphers)
{
  result = -50;
  if (context && numCiphers)
  {
    result = tls_handshake_get_ciphersuites();
    if (!result)
    {
      *numCiphers = 2863311530;
    }
  }

  return result;
}

OSStatus SSLGetEnabledCiphers(SSLContextRef context, SSLCipherSuite *ciphers, size_t *numCiphers)
{
  result = -50;
  if (context)
  {
    v5 = ciphers;
    if (ciphers)
    {
      if (numCiphers)
      {
        result = tls_handshake_get_ciphersuites();
        if (!result)
        {
          if (*numCiphers >= 0xAAAAAAAA)
          {
            v7 = 0xAAAAAAAAAAAAAAAALL;
            v8 = 2863311530;
            do
            {
              v9 = *v7++;
              *v5++ = v9;
              --v8;
            }

            while (v8);
            result = 0;
            *numCiphers = 2863311530;
          }

          else
          {
            return -9817;
          }
        }
      }
    }
  }

  return result;
}

OSStatus SSLSetSessionTicketsEnabled(SSLContextRef context, Boolean enabled)
{
  if (context)
  {
    return tls_handshake_set_session_ticket_enabled();
  }

  else
  {
    return -50;
  }
}

uint64_t SOSCCSetSOSDisabledError(CFTypeRef *a1)
{
  if (a1)
  {
    if (staticSOSDisabledError_onceToken != -1)
    {
      dispatch_once(&staticSOSDisabledError_onceToken, &__block_literal_global_277);
    }

    *a1 = CFRetain(staticSOSDisabledError_sosIsDisabledError);
  }

  return 1;
}

int64_t SOSCCThisDeviceIsInCircle(CFErrorRef *a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    result = SOSGetCachedCircleStatus(a1);
    if (result == -99)
    {

      return SOSCCThisDeviceIsInCircleNonCached(a1);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SOSCCIsSOSTrustAndSyncingEnabled()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEBUG, "enter SOSCCIsSOSTrustAndSyncingEnabled", buf, 2u);
  }

  if (!OctagonIsSOSFeatureEnabled() || !SOSCompatibilityModeEnabled())
  {
    return OctagonIsSOSFeatureEnabled();
  }

  v1 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v1, OS_LOG_TYPE_DEFAULT, "SOS Compatibility Mode feature flag enabled, checking platform availability and sos compat mode", buf, 2u);
  }

  cf = 0;
  v2 = SOSCCFetchCompatibilityMode(&cf);
  v3 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"disabled";
    if (v2)
    {
      v4 = @"enabled";
    }

    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sos trust and syncing is %@", buf, 0xCu);
  }

  if (cf)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "sos-compatibility-mode: fetching compatibility mode error: %@", buf, 0xCu);
    }

    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }
  }

  return v2;
}

int64_t SOSCCThisDeviceIsInCircleNonCached(CFTypeRef *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCThisDeviceIsInCircleNonCached", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __SOSCCThisDeviceIsInCircleNonCached_block_invoke;
    v18[3] = &__block_descriptor_40_e5_i8__0l;
    v18[4] = a1;
    v9 = __SOSCCThisDeviceIsInCircleNonCached_block_invoke(v18);
    v15 = SecLogAPICreate(0, "SOSCCThisDeviceIsInCircleNonCached", @"SOSCCStatus=%d", v10, v11, v12, v13, v14, v9);
    v16 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v15;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    return 0xFFFFFFFFLL;
  }

  return v9;
}