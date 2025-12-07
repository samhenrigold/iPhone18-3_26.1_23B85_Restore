void wifidDidBecomeAlive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __wifidDidBecomeAlive_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a3;
  v3[5] = a2;
  if (wifidDidBecomeAlive_onceToken != -1)
  {
    dispatch_once(&wifidDidBecomeAlive_onceToken, v3);
  }
}

void sub_1B86A001C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWiFiManagerClientCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileWiFiLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MobileWiFiLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7D071A0;
    v5 = 0;
    MobileWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileWiFiLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MobileWiFiLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileWiFiLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWiFiManagerClientScheduleWithRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientScheduleWithRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientRegisterDeviceAttachmentCallback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientCopyDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCopyDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiDeviceClientGetTypeIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiDeviceClientGetTypeID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiDeviceClientGetTypeIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiDeviceClientScanAsyncSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiDeviceClientScanAsync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiDeviceClientScanAsyncSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiNetworkGet11dCountryCodeFromIe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientUnscheduleFromRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ISEnumerateKnownUrduSequencesInString(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (GetKnownUrduWordsSet___onceToken != -1)
  {
    ISEnumerateKnownUrduSequencesInString_cold_1();
  }

  v8 = GetKnownUrduWordsSet___knownWords;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __ISEnumerateKnownUrduSequencesInString_block_invoke;
  v11[3] = &unk_1E7D07288;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  [a1 enumerateSubstringsInRange:a2 options:a3 usingBlock:{3, v11}];
}

void *__ISEnumerateKnownUrduSequencesInString_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t __GetKnownUrduWordsSet_block_invoke()
{
  GetKnownUrduWordsSet___knownWords = [MEMORY[0x1E695DFD8] setWithArray:0x1F373C0C8];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B86A63C0()
{
  v47 = 0;
  v0 = sub_1B86A6D64(MEMORY[0x1E69E7CC0]);
  v1 = sub_1B86A7004();
  v3 = v2;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_40:

    v3 = 0;
    v5 = 0;
    v30 = 0;
    v31 = 1 << *(v0 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v0 + 64);
    while (v33)
    {
LABEL_48:
      v35 = __clz(__rbit64(v33)) | (v30 << 6);
      v36 = *(*(v0 + 48) + 4 * v35);
      v37 = *(*(v0 + 56) + 8 * v35);
      v38 = v36 - 17 > 0x39 || ((1 << (v36 - 17)) & 0x300002000000023) == 0;
      if (!v38 || v36 == 105 || v36 == 172)
      {
        if (v37 < 0)
        {
          goto LABEL_74;
        }

        v37 *= 2;
      }

      v33 &= v33 - 1;
      if (v36)
      {
        v39 = v36 > 0x19;
        v40 = (1 << v36) & 0x2004100;
        if (v39 || v40 == 0)
        {
          v42 = __CFADD__(v3, v37);
          v3 += v37;
          if (v42)
          {
            __break(1u);
            goto LABEL_68;
          }
        }

        else
        {
          v42 = __CFADD__(v5, v37);
          v5 += v37;
          if (v42)
          {
            goto LABEL_75;
          }
        }
      }
    }

    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= ((v31 + 63) >> 6))
      {
        goto LABEL_71;
      }

      v33 = *(v0 + 64 + 8 * v34);
      ++v30;
      if (v33)
      {
        v30 = v34;
        goto LABEL_48;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    type metadata accessor for UScriptCode();
    result = sub_1B86A7064();
    __break(1u);
    return result;
  }

  v5 = v1;
  v6 = 0;
  v44 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v45 = v2 & 0xFFFFFFFFFFFFFFLL;
  while ((v3 & 0x1000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v46[0] = v5;
      v46[1] = v45;
      v8 = v46 + v6;
    }

    else
    {
      v7 = v44;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v7 = sub_1B86A7024();
      }

      v8 = (v7 + v6);
    }

    if ((*v8 & 0x80000000) == 0)
    {
LABEL_17:
      v10 = 1;
      goto LABEL_18;
    }

    v28 = (__clz(*v8 ^ 0xFF) - 24);
    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }
    }

    else
    {
      if (v28 == 1)
      {
        goto LABEL_17;
      }

      v10 = 2;
    }

LABEL_18:
    Script = uscript_getScript();
    v12 = Script;
    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = sub_1B86A68C0(Script);
      if ((v15 & 1) == 0)
      {
        v16 = 1;
        goto LABEL_24;
      }

      v13 = *(*(v0 + 56) + 8 * v14);
    }

    v16 = v13 + 1;
    if (v13 == -1)
    {
      goto LABEL_69;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v0;
    v18 = sub_1B86A68C0(v12);
    v20 = *(v0 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_70;
    }

    v24 = v19;
    if (*(v0 + 24) < v23)
    {
      sub_1B86A692C(v23, isUniquelyReferenced_nonNull_native);
      v0 = v46[0];
      v18 = sub_1B86A68C0(v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_76;
      }

LABEL_29:
      if (v24)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v29 = v18;
    sub_1B86A6C18();
    v18 = v29;
    v0 = v46[0];
    if (v24)
    {
LABEL_6:
      *(*(v0 + 56) + 8 * v18) = v16;
      goto LABEL_7;
    }

LABEL_30:
    *(v0 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(*(v0 + 48) + 4 * v18) = v12;
    *(*(v0 + 56) + 8 * v18) = v16;
    v26 = *(v0 + 16);
    v22 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v22)
    {
      __break(1u);
      goto LABEL_73;
    }

    *(v0 + 16) = v27;
LABEL_7:
    v6 += v10;
    if (v6 >= v4)
    {
      goto LABEL_40;
    }
  }

  if ((sub_1B86A7014() & 0x80000000) == 0)
  {
    v10 = v9;
    goto LABEL_18;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

  return v5 >= v3;
}

uint64_t sub_1B86A67A4(void *a1)
{
  v1 = a1;
  v2 = sub_1B86A63C0();

  return v2 & 1;
}

uint64_t sub_1B86A67D8()
{
  sub_1B86A7074();
  sub_1B86A7084();
  return sub_1B86A7094();
}

uint64_t sub_1B86A684C(uint64_t a1)
{
  sub_1B86A7074();
  sub_1B86A7084();
  return sub_1B86A7094();
}

_DWORD *sub_1B86A68A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_1B86A68C0(uint64_t a1)
{
  v1 = a1;
  sub_1B86A7074();
  sub_1B86A7084();
  v2 = sub_1B86A7094();

  return sub_1B86A6BAC(v1, v2);
}

uint64_t sub_1B86A692C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
  result = sub_1B86A7044();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B86A7074();
      sub_1B86A7084();
      result = sub_1B86A7094();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t sub_1B86A6BAC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B86A6C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
  v2 = *v0;
  v3 = sub_1B86A7034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B86A6D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
    v3 = sub_1B86A7054();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1B86A68C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for UScriptCode()
{
  if (!qword_1EBA90EA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA90EA0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B86A6EE0()
{
  result = qword_1EBA90EB0;
  if (!qword_1EBA90EB0)
  {
    type metadata accessor for UScriptCode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA90EB0);
  }

  return result;
}