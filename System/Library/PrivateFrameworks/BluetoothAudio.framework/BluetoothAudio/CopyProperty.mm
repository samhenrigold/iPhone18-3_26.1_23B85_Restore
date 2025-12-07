@interface CopyProperty
@end

@implementation CopyProperty

uint64_t __manager_CopyProperty_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C50]))
  {
    v2 = MEMORY[0x277CC0C70];
LABEL_3:
    result = CFRetain(*v2);
LABEL_9:
    **(a1 + 40) = result;
    return result;
  }

  if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C60]))
  {
    v4 = 2;
LABEL_6:
    *v11 = v4;
    result = CFNumberCreate(*(a1 + 48), kCFNumberSInt64Type, v11);
    goto LABEL_9;
  }

  if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C30]))
  {
    result = BluetoothEndpointCollectionCopyAsCFArray(*(*(a1 + 56) + 32), *(a1 + 48));
    goto LABEL_9;
  }

  if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C40]))
  {
    v5 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 56) + 32);
      v7 = v5;
      Count = BluetoothEndpointCollectionGetCount(v6);
      v9 = "endpoints present";
      if (!Count)
      {
        v9 = "no endpoints";
      }

      *v11 = 136446210;
      *&v11[4] = v9;
      _os_log_impl(&dword_241BB7000, v7, OS_LOG_TYPE_INFO, "We have %{public}s", v11, 0xCu);
    }

    v10 = BluetoothEndpointCollectionGetCount(*(*(a1 + 56) + 32));
    v2 = MEMORY[0x277CBED28];
    if (!v10)
    {
      v2 = MEMORY[0x277CBED10];
    }

    goto LABEL_3;
  }

  result = CFEqual(*(a1 + 32), *MEMORY[0x277CC0C58]);
  if (result)
  {
    v4 = 7;
    goto LABEL_6;
  }

  return result;
}

void __endpoint_CopyProperty_block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v2, *MEMORY[0x277CC1568]))
  {
    *v4 = *MEMORY[0x277CC1A28];
LABEL_17:
    v12 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
    {
      __endpoint_CopyProperty_block_invoke_cold_1(v2, v4, v12);
    }

    v13 = 0;
    goto LABEL_20;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1368]))
  {
    Copy = *(DerivedStorage + 40);
    if (!Copy)
    {
LABEL_6:
      *v4 = Copy;
      goto LABEL_17;
    }

LABEL_5:
    Copy = CFRetain(Copy);
    goto LABEL_6;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1440]))
  {
    v7 = CFRetain(*(DerivedStorage + 56));
    *v4 = v7;
    v8 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v7;
    v9 = "modelID=%@";
LABEL_16:
    _os_log_impl(&dword_241BB7000, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
    goto LABEL_17;
  }

  if (CFEqual(v2, *MEMORY[0x277CC14A0]))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(DerivedStorage + 48)];
    *v4 = v10;
    v8 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v10;
    v9 = "pid=%@";
    goto LABEL_16;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1598]))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(DerivedStorage + 50)];
    *v4 = v11;
    v8 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v11;
    v9 = "vid=%@";
    goto LABEL_16;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1450]))
  {
    Copy = *(DerivedStorage + 32);
    if (!Copy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (CFEqual(v2, *MEMORY[0x277CC14F8]))
  {
    *buf = 2;
    v14 = buf;
    v15 = v3;
    v16 = kCFNumberSInt64Type;
LABEL_26:
    Copy = CFNumberCreate(v15, v16, v14);
    goto LABEL_6;
  }

  if (CFEqual(v2, *MEMORY[0x277CC14E0]))
  {
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
    v18 = 0;
    v19 = DerivedStorage + 16;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *(v19 + 8 * v18);
      if (v22)
      {
        CFArrayAppendValue(Mutable, v22);
      }

      v20 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
    *v4 = Mutable;
    goto LABEL_17;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1370]) || CFEqual(v2, *MEMORY[0x277CC1398]))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 64);
    goto LABEL_36;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1280]))
  {
    v25 = *(DerivedStorage + 72);
    if (v25)
    {
      Copy = CFDictionaryCreateCopy(v3, v25);
      goto LABEL_6;
    }

    Copy = CFDictionaryGetEmpty();
    goto LABEL_5;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1380]))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 97);
    goto LABEL_36;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1420]))
  {
    v14 = (DerivedStorage + 104);
LABEL_49:
    v15 = v3;
    v16 = kCFNumberIntType;
    goto LABEL_26;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1500]))
  {
    v14 = (DerivedStorage + 100);
    goto LABEL_49;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1528]))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 109);
    goto LABEL_36;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1248]))
  {
    v23 = MEMORY[0x277CBED28];
    if (*(DerivedStorage + 110) != 1)
    {
      v23 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(v2, *MEMORY[0x277CC1358]))
  {
    v14 = (DerivedStorage + 108);
    v15 = v3;
    v16 = kCFNumberCharType;
    goto LABEL_26;
  }

  if (CFEqual(v2, @"SupportsSmartRouting"))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 112);
    goto LABEL_36;
  }

  if (CFEqual(v2, @"SmartRoutingEnabled"))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 113);
    goto LABEL_36;
  }

  if (CFEqual(v2, @"SupportsConversationDetect"))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 115);
    goto LABEL_36;
  }

  if (CFEqual(v2, @"ConversationDetectEnable"))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 116);
    goto LABEL_36;
  }

  if (CFEqual(v2, *MEMORY[0x277CC13A8]))
  {
    v23 = MEMORY[0x277CBED28];
    v24 = *(DerivedStorage + 114);
LABEL_36:
    if (!v24)
    {
      v23 = MEMORY[0x277CBED10];
    }

LABEL_38:
    Copy = *v23;
    goto LABEL_5;
  }

  v26 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __endpoint_CopyProperty_block_invoke_cold_2(v2, v26);
  }

  v13 = -12787;
LABEL_20:
  *(*(a1[4] + 8) + 24) = v13;
}

CFTypeRef __audioStream_CopyProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), *MEMORY[0x277CC1900]))
  {
    v2 = MEMORY[0x277CC1960];
LABEL_5:
    v3 = *v2;
LABEL_6:
    result = CFRetain(v3);
    **(a1 + 48) = result;
    return result;
  }

  if (CFEqual(*(a1 + 40), *MEMORY[0x277CC18B0]))
  {
    v2 = MEMORY[0x277CC1930];
    goto LABEL_5;
  }

  result = CFEqual(*(a1 + 40), *MEMORY[0x277CC1878]);
  if (result)
  {
    v3 = *(*(a1 + 56) + 24);
    goto LABEL_6;
  }

  *(*(*(a1 + 32) + 8) + 24) = -12784;
  return result;
}

void __endpoint_CopyProperty_block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_241BB7000, log, OS_LOG_TYPE_DEBUG, "Copy property %@ returns %@", &v4, 0x16u);
}

void __endpoint_CopyProperty_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_241BB7000, a2, OS_LOG_TYPE_DEBUG, "Copy property %@ not supported", &v2, 0xCu);
}

@end