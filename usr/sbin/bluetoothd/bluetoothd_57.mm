void sub_1003CD420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD444(uint64_t a1, uint64_t a2, UInt8 **a3, _DWORD *a4, const __CFString *a5, int a6)
{
  cf = 0;
  v6 = sub_1003CD1BC(a1, a2, a3, a4, a5, a6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1003CD488(uint64_t result, uint64_t a2, UInt8 **a3, _DWORD *a4, _DWORD *a5, int a6, const __CFDictionary **a7)
{
  v10 = 0;
  if (a3)
  {
    if (a6)
    {
      v9 = @"BluetoothLESync";
    }

    else
    {
      v9 = @"BluetoothLE";
    }

    result = sub_1003CD1BC(result, a2, a3, &v10, v9, a6, a7);
    *a4 = v10;
    *a5 = result;
  }

  return result;
}

void sub_1003CD4E8(uint64_t a1, uint64_t a2, UInt8 **a3, _DWORD *a4, _DWORD *a5, UInt8 **a6, _DWORD *a7, _DWORD *a8)
{
  v19 = 0;
  if (a3 && a4)
  {
    v16 = sub_1003CD444(a1, a2, a3, &v19, @"BluetoothLE", 0);
LABEL_9:
    *a4 = v19;
    goto LABEL_10;
  }

  if (a6 && a7 || !os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_100825F2C();
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v16 = sub_1003CD444(a1, a2, a3, &v19, @"BluetoothLE", 0);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a5)
  {
    *a5 = v16;
  }

LABEL_12:
  if (a6)
  {
    v17 = sub_1003CD444(a1, a2, a6, &v19, @"BluetoothLESync", 1);
    v18 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTKCCopyLEData is calling _BTKCCopyLEData, returned %d", buf, 8u);
    }

    if (a7)
    {
      *a7 = v19;
    }

    if (a8)
    {
      *a8 = v17;
    }
  }
}

uint64_t sub_1003CD6A0(uint64_t a1, uint64_t a2, int a3)
{
  sub_10004D9B0(a1);
  if (v12 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = sub_1003CBF64(v5, @"BluetoothLE", 0);
  v7 = v6;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100825FAC();
  }

LABEL_10:
  if (a3)
  {
    sub_10004D9B0(a1);
    if (v12 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v7 = sub_1003CBF64(v8, @"BluetoothLESync", 1);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      v9 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not erase LE Data from synced keychain with result %d", __p, 8u);
      }
    }
  }

  return v7;
}

void sub_1003CD814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD83C(int a1, UInt8 *a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  if ((a1 - 4) >= 0xE)
  {
    switch(a1)
    {
      case 1:
        v6 = "Encryption Root";
        break;
      case 2:
        v6 = "Identity Root";
        break;
      case 19:
        v6 = "Non Connectable identity address";
        break;
      default:
        return 4294902295;
    }
  }

  else
  {
    v6 = off_100AF0EB8[a1 - 4];
  }

  v7 = sub_1003CAD4C(&v15, v6, @"BluetoothGlobal", 0);
  v8 = v15;
  if (v15)
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_BTKCGetDataCopy returned %d", buf, 8u);
      v8 = v15;
    }

    if (v8 == -34019)
    {
      if (!v7)
      {
        return 4294933277;
      }

      goto LABEL_19;
    }
  }

  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"KEY");
    if (Value && (v12 = Value, TypeID = CFDataGetTypeID(), TypeID == CFGetTypeID(v12)))
    {
      Length = CFDataGetLength(v12);
      *a4 = Length;
      if (Length)
      {
        v18.length = Length;
        v18.location = 0;
        CFDataGetBytes(v12, v18, a2);
      }
    }

    else
    {
      v15 = -65004;
    }

LABEL_19:
    CFRelease(v7);
    return v15;
  }

  return 4294902292;
}

uint64_t sub_1003CDA10(unsigned int a1, const UInt8 *a2, unsigned int a3)
{
  if (a1 - 4 < 0xE || (v6 = 4294902295, a1 <= 0x13) && ((1 << a1) & 0x80006) != 0)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFDataCreate(kCFAllocatorDefault, a2, a3);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v8, @"KEY", v9);
        v6 = 0;
        switch(a1)
        {
          case 1u:
            v11 = "Encryption Root";
            goto LABEL_23;
          case 2u:
            v11 = "Identity Root";
            goto LABEL_23;
          case 4u:
            v11 = "Cloud Master Key Root";
            goto LABEL_23;
          case 5u:
            v11 = "Cloud Private Key Root";
            goto LABEL_23;
          case 6u:
            v11 = "Cloud Public Key Root";
            goto LABEL_23;
          case 7u:
            v11 = "Cloud Nonce Root";
            goto LABEL_23;
          case 8u:
            v11 = "Identity Root Key";
            goto LABEL_23;
          case 9u:
            v11 = "Cloud FC Address";
LABEL_23:
            v12 = v8;
            v13 = 1;
            goto LABEL_27;
          case 0xAu:
            v11 = "CT TTK BUFF";
            goto LABEL_26;
          case 0xBu:
            v11 = "CT TKPeriod";
            goto LABEL_26;
          case 0xCu:
            v11 = "CT Last RPI And Address";
            goto LABEL_26;
          case 0xDu:
            v11 = "CT TEK BUFF V2 LEN";
            goto LABEL_26;
          case 0xEu:
            v11 = "CT TEK BUFF V2";
            goto LABEL_26;
          case 0xFu:
            v11 = "Local Device Identifier";
            goto LABEL_26;
          case 0x11u:
            v11 = "Non Connectable identity root";
            goto LABEL_26;
          case 0x13u:
            v11 = "Non Connectable identity address";
LABEL_26:
            v12 = v8;
            v13 = 0;
LABEL_27:
            v6 = sub_1003CB454(v11, 0, v12, @"BluetoothGlobal", 0, 0, v13);
            break;
          default:
            break;
        }

        CFRelease(v10);
      }

      else
      {
        v6 = 4;
      }

      CFRelease(v8);
    }

    else
    {
      return 4;
    }
  }

  return v6;
}

uint64_t sub_1003CDC24(int a1)
{
  if (a1 == 4)
  {
    return sub_1003CBF64("Cloud Master Key Root", @"BluetoothGlobal", 0);
  }

  else
  {
    return 4294902295;
  }
}

uint64_t sub_1003CDC4C(const void *a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleting all keychain data for service:%@", &v8, 0xCu);
  }

  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
      CFDictionaryAddValue(v4, kSecAttrService, a1);
      CFDictionaryAddValue(v4, kSecAttrSynchronizable, kCFBooleanFalse);
      CFDictionaryAddValue(v4, kSecUseSystemKeychain, kCFBooleanTrue);
      CFDictionaryAddValue(v4, kSecAttrAccessGroup, @"com.apple.bluetooth");
      do
      {
        v5 = SecItemDelete(v4);
      }

      while (!v5);
      v6 = v5;
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10082601C();
    }

    return 3;
  }

  return v6;
}

uint64_t sub_1003CDE04()
{
  sub_1003CDC4C(@"BluetoothGlobal");
  sub_1003CDC4C(@"BluetoothLE");
  sub_1003CDC4C(@"MobileBluetooth");
  return 0;
}

uint64_t sub_1003CDEA8(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  v15 = 0;
  cryptorRef = 0;
  if (CCCryptorCreate(0, 0, 0, key, keyLength, 0, &cryptorRef))
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_10082605C();
    }

    return 1041;
  }

  else
  {
    v11 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &v15);
    if (v11)
    {
      v12 = v11;
      v13 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "AES128Encrypt";
        v19 = 1024;
        v20 = v12;
        v21 = 1024;
        v22 = a6;
        v23 = 2048;
        v24 = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to encrypt : %d (need %d, got %zu)\n", buf, 0x22u);
      }

      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      v14 = qword_100BCEA70;
      if (v15 == a6)
      {
        result = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          sub_100826178();
          return 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
        {
          sub_1008260D4(&v15, a6, v14);
        }

        return 1043;
      }
    }
  }

  return result;
}

uint64_t sub_1003CE098(__int128 *a1, __int16 *a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  v8 = 0;
  v9 = 0;
  if (a1 && a2)
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    key = *a1;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_100826278();
    }

    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_1008262F4();
    }

    v4 = sub_1003CDEA8(&key, 0x10uLL, v11, 0x10u, &v8, 0x10u);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_100826370();
      }
    }

    else
    {
      *a3 = *(&v9 + 5);
      *(a3 + 2) = HIBYTE(v9);
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
      {
        sub_1008263E8();
      }

      return 0;
    }
  }

  else
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008261F4(v6);
    }

    return 4828;
  }

  return v5;
}

uint64_t sub_1003CE22C(__int128 *a1, __int128 *a2, void *a3)
{
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100826498();
  }

  v6 = 0;
  key = *a1;
  v7 = 15;
  do
  {
    v8 = *(&key + v6);
    *(&key + v6) = *(&key + v7);
    *(&key + v7) = v8;
    ++v6;
    --v7;
  }

  while (v6 != 8);
  v9 = 0;
  v14 = *a2;
  v10 = 15;
  do
  {
    v11 = *(&v14 + v9);
    *(&v14 + v9) = *(&v14 + v10);
    *(&v14 + v10) = v11;
    ++v9;
    --v10;
  }

  while (v9 != 8);
  v12 = sub_1003CDEA8(&key, 0x10uLL, &v14, 0x10u, a3, 0x10u);
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100826514();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_10082658C();
  }

  return v12;
}

uint64_t sub_1003CE39C(__int128 *a1, __int128 *a2, void *a3)
{
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_10082660C();
  }

  v6 = *a1;
  v9 = *a2;
  key = v6;
  v7 = sub_1003CDEA8(&key, 0x10uLL, &v9, 0x10u, a3, 0x10u);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100826688();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100826700();
  }

  return v7;
}

void sub_1003CE4D4(void *a1, uint64_t a2, __int16 a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v10 = sub_100375F94(a1, "HFPSendThread");
  *v10 = off_100AF0F38;
  *(v10 + 168) = a2;
  *(v10 + 184) = a3;
  *(v10 + 192) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[26] = 0;
  operator new[]();
}

uint64_t sub_1003CE8AC(uint64_t a1)
{
  *a1 = off_100AF0F38;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, *(a1 + 168) + 760);
  v2 = sub_1005D0048(*(a1 + 168), *(a1 + 184));
  if (v2)
  {
    sub_10069C0F0(v2);
  }

  *(a1 + 192) = 0;
  sub_1000088CC(v4);
  if (*(a1 + 200))
  {
    operator delete[]();
  }

  return sub_100375A90(a1);
}

void sub_1003CE94C(_Unwind_Exception *a1)
{
  if (*(v1 + 200))
  {
    operator delete[]();
  }

  sub_100375A90(v1);
  _Unwind_Resume(a1);
}

void sub_1003CE990(uint64_t a1)
{
  sub_1003CE8AC(a1);

  operator delete();
}

unint64_t sub_1003CE9C8(uint64_t a1)
{
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 232);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "calculateSleepIntervalInUs codec type:%d", v6, 8u);
  }

  v4 = *(a1 + 232);
  result = 7500;
  if (v4 > 129)
  {
    if (v4 == 130)
    {
      return 10000;
    }

    if (v4 != 255)
    {
      if (v4 == 256)
      {
        return result;
      }

      return (((*(a1 + 240) / 16000.0) * 1000.0) * 1000.0);
    }

    return 15000;
  }

  if ((v4 - 128) < 2)
  {
    return 15000;
  }

  if (v4 != 2)
  {
    if (v4 == 127)
    {
      return result;
    }

    return (((*(a1 + 240) / 16000.0) * 1000.0) * 1000.0);
  }

  return (*(a1 + 240) / 32000.0 * 1000.0 * 1000.0);
}

BOOL sub_1003CEB20(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (!v1)
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008268E8();
    return 0;
  }

  v2 = *(a1 + 232);
  if (v2 == 129)
  {
    return 1;
  }

  if (v2 != 128)
  {
    return 0;
  }

  v3 = sub_100320D9C(v1 + 400);
  if (!v3)
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100826870();
    return 0;
  }

  return sub_1000E2140(v3, 0x29u);
}

uint64_t sub_1003CEBE8(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  v2 = (a1 + 168);
  sub_100007F88(v13, *(a1 + 168) + 760);
  v3 = sub_1005D0048(*v2, *(a1 + 184));
  if (v3 && *(v3 + 600) == a1)
  {
    v5 = *(a1 + 258);
    if (!*(a1 + 258))
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 240);
    v7 = qword_100BCE8F8;
    if (v6 > v5 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v15 = "fAudioBytesOutstanding >= fAudioBufferSize";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v6 = *(a1 + 240);
      LOWORD(v5) = *(a1 + 258);
      v7 = qword_100BCE8F8;
    }

    v8 = v5 - v6;
    *(a1 + 258) = v8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v15) = v8;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Draining controller voice to %d bytes", buf, 8u);
      v8 = *(a1 + 258);
    }

    if (!v8)
    {
LABEL_11:
      sub_1003CEE28(a1, 1u);
    }

    if (*(a1 + 312) != 2)
    {
      goto LABEL_22;
    }

    if (*(a1 + 316) == 1)
    {
      v9 = 576 - *(a1 + 258);
      v10 = *(a1 + 240);
      *(a1 + 316) = 0;
      v11 = v9 / v10;
    }

    else
    {
      v11 = 1;
    }

    if (sub_1003CEB20(a1))
    {
      if (!sub_1003A2C1C(*(a1 + 176)))
      {
        goto LABEL_22;
      }

      if (sub_1003A2C1C(*(a1 + 176)) >= 4 && !*(a1 + 258))
      {
        v11 = 2;
        do
        {
LABEL_21:
          sub_1003CF0D8(a1);
          --v11;
        }

        while (v11);
        goto LABEL_22;
      }
    }

    if (v11)
    {
      goto LABEL_21;
    }

LABEL_22:
    v4 = 1;
    goto LABEL_23;
  }

  v4 = 0;
LABEL_23:
  sub_1000088CC(v13);
  return v4;
}

uint64_t sub_1003CEE28(uint64_t a1, unsigned int a2)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, *(a1 + 168) + 760);
  v4 = *(a1 + 312);
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (!v4)
      {
        if (!(*(*a1 + 24))(a1))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (v4 == 2)
      {
        if (sub_1003CEB20(a1))
        {
          if (sub_1003A2C1C(*(a1 + 176)) > 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = *(a1 + 208);
          if (sub_1003A2C14(*(a1 + 176)) + v23 >= *(a1 + 240) * *(a1 + 320))
          {
            goto LABEL_26;
          }
        }

        v22 = 1;
        goto LABEL_25;
      }
    }

    else if (a2)
    {
      v13 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_1008267F8(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else if (v4 == 1)
    {
      if (*(a1 + 258))
      {
        v5 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          sub_100826924(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      if (sub_1003CEB20(a1))
      {
        if (sub_1003A2C1C(*(a1 + 176)) < 2)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v21 = *(a1 + 208);
      if (sub_1003A2C14(*(a1 + 176)) + v21 >= *(a1 + 240) * *(a1 + 320))
      {
LABEL_21:
        *(a1 + 316) = 1;
LABEL_22:
        v22 = 2;
LABEL_25:
        *(a1 + 312) = v22;
      }
    }
  }

LABEL_26:
  v24 = *(a1 + 312);
  if (v4 != v24)
  {
    v25 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 8 * a2 + 288);
      v27 = *(a1 + 264 + 8 * v4);
      v28 = *(a1 + 264 + 8 * v24);
      v29 = *(a1 + 8 * *(a1 + 352) + 328);
      v30 = sub_1003A2C1C(*(a1 + 176));
      v31 = *(a1 + 258);
      *buf = 136447490;
      v35 = v26;
      v36 = 2082;
      v37 = v27;
      v38 = 2082;
      v39 = v28;
      v40 = 2082;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      v44 = 1024;
      v45 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Input: %{public}s. State: %{public}s -> %{public}s. SendState %{public}s, %zu, %hu", buf, 0x3Au);
    }
  }

  return sub_1000088CC(v33);
}

uint64_t sub_1003CF0D8(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, *(a1 + 168) + 760);
  v2 = *(a1 + 352);
  switch(v2)
  {
    case 2:
      goto LABEL_7;
    case 1:
LABEL_6:
      sub_1003CF1CC(a1);
      *(a1 + 352) = 2;
LABEL_7:
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      *(a1 + 352) = 0;
      return sub_1000088CC(v12);
    case 0:
      if (!(*(*a1 + 112))(a1))
      {
        sub_1003CEE28(a1, 2u);
        return sub_1000088CC(v12);
      }

      *(a1 + 352) = 1;
      goto LABEL_6;
  }

  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
  {
    sub_1008267F8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_1003CF1CC(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  if (!v2)
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_10082699C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  for (; v3; v3 -= v12)
  {
    if (v3 >= *(a1 + 240))
    {
      v12 = *(a1 + 240);
    }

    else
    {
      v12 = v3;
    }

    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 258);
      *buf = 134218752;
      v24 = v12;
      v25 = 2048;
      v26 = v3;
      v27 = 1024;
      v28 = v17;
      v29 = 2048;
      v30 = v12 + v17;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, ">> Sending, %zu bytes of total %zu. Oustanding %d -> %lu", buf, 0x26u);
    }

    if (*(a1 + 192))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10024891C(*(a1 + 192), v2, v12, 1);
      sub_100022214(buf);
      sub_10002249C(buf);
    }

    else
    {
      v14 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_100826A14(&v19, v20, v14);
      }
    }

    v15 = (*(a1 + 258) + v12);
    *(a1 + 258) += v12;
    if (v15 >= 0x2D1)
    {
      v16 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826A54(v21, &v22, v16);
      }
    }

    v2 += v12;
  }

  return 1;
}

size_t sub_1003CF3D8(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = sub_1003A2C14(*(a1 + 176));
  v4 = *(a1 + 240);
  if (v3 >= v4)
  {
    result = sub_1003A2C24(*(a1 + 176), v2, v4 * *(a1 + 236));
    if (result)
    {
      v9 = result;
      *(a1 + 208) = result;
      v10 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
      {
        v11 = sub_1003A2C14(*(a1 + 176));
        v12 = *(a1 + 258);
        v13 = 134218496;
        v14 = v9;
        v15 = 2048;
        v16 = v11;
        v17 = 1024;
        v18 = v12;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Filling, read %zu bytes, shared %zu, oustanding %d", &v13, 0x1Cu);
      }

      return 1;
    }
  }

  else
  {
    v5 = qword_100BCE8F8;
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = sub_1003A2C14(*(a1 + 176));
      v8 = *(a1 + 208);
      v13 = 134218240;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Filling done, not enough data.  shared %zu, fill %zu", &v13, 0x16u);
      return 0;
    }
  }

  return result;
}

BOOL sub_1003CF570(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = sub_100320FC4(*(a1 + 200) + 400);
  if (_os_feature_enabled_impl() && v3 == 130)
  {
    if (*(a1 + 349) == 1)
    {
      if (sub_1003CFAD0(a1))
      {
LABEL_5:
        *(a1 + 248) = 0;
        *(a1 + 232) = *(a1 + 264);
LABEL_6:
        sub_10069BC4C(*(a1 + 200));
        return 1;
      }

      return 0;
    }

    goto LABEL_9;
  }

  if ((v3 - 128) < 3 || v3 == 255)
  {
LABEL_9:
    if (*(a1 + 232))
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826AA4(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    if (*(a1 + 264) <= 1uLL)
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      goto LABEL_14;
    }

    v13 = sub_1003A2C1C(*(a1 + 200));
    if (v13 < sub_1003CFC68(a1))
    {
      return 0;
    }

    v14 = sub_1003A2C94(*(a1 + 200), v2 + 2, *(a1 + 264) - 2);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 280);
      *(a1 + 280) = v16 + 1;
      *v2 = v16;
      v2[1] = v14;
      v17 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 264);
        v18 = v15 + 4;
        v50 = 134218240;
        *v51 = v47;
        *&v51[8] = 2048;
        *&v51[10] = v15 + 4;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Buffer Length: %zu, offset: %lu", &v50, 0x16u);
      }

      else
      {
        v18 = v15 + 4;
      }

      v19 = *(a1 + 264);
      if (v19 < v18)
      {
        v20 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          v50 = 67109120;
          *v51 = v19;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Byte offset exceeds data buffer length, buffer length: %d", &v50, 8u);
          v19 = *(a1 + 264);
        }
      }

      if (v19 >= v18)
      {
        v30 = sub_1003A2C94(*(a1 + 200), &v2[v15 + 4], v19 - v18);
        v31 = qword_100BCE8F8;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
          {
            v33 = *(a1 + 280);
            v34 = *(a1 + 264);
            v35 = *(a1 + 282);
            v50 = 67110400;
            *v51 = v33;
            *&v51[4] = 2048;
            *&v51[6] = v15;
            *&v51[14] = 2048;
            *&v51[16] = v32;
            v52 = 2048;
            v53 = v34;
            v54 = 1024;
            v55 = v35;
            v56 = 1024;
            v57 = v35 + 1;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "HF Seq:%hhu, Sending %zu+%zu of %zu filled. Outstanding %d -> %d", &v50, 0x32u);
          }

          v36 = *(a1 + 280);
          *(a1 + 280) = v36 + 1;
          v37 = &v2[v15];
          v37[2] = v36;
          v37[3] = v32;
          v38 = &v2[-*(a1 + 224)];
          v39 = *(a1 + 264);
          if (v38 > v39)
          {
            v40 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
            {
              sub_100826BC4(v38, v39, v40);
            }
          }

          goto LABEL_5;
        }

        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          sub_100826C4C();
          return 0;
        }
      }

      else
      {
        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_100826B50();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        sub_100826C80();
        return 0;
      }
    }

    return result;
  }

  if (*(a1 + 232))
  {
    v21 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_100826AA4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 264);
  if (v29 > 1)
  {
    v41 = sub_1003A2C94(*(a1 + 200), v2 + 2, v29 - 2);
    v42 = qword_100BCE8F8;
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
    if (v41)
    {
      if (result)
      {
        v48 = *(a1 + 264);
        v49 = *(a1 + 282);
        v50 = 134218752;
        *v51 = v41;
        *&v51[8] = 2048;
        *&v51[10] = v48;
        *&v51[18] = 1024;
        *&v51[20] = v49;
        v52 = 1024;
        LODWORD(v53) = v49 + 1;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "HF Sending %zu of %zu filled. Oustanding %d -> %d ", &v50, 0x22u);
      }

      v43 = *(a1 + 280);
      *(a1 + 280) = v43 + 1;
      *v2 = v43;
      v2[1] = v41;
      v44 = &v2[-*(a1 + 224)];
      v45 = *(a1 + 264);
      if (v44 > v45)
      {
        v46 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          v50 = 134218240;
          *v51 = v44;
          *&v51[8] = 2048;
          *&v51[10] = v45;
          _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "wrote %ld bytes to audio buffer when max size is %zu", &v50, 0x16u);
          v45 = *(a1 + 264);
        }
      }

      *(a1 + 248) = 0;
      *(a1 + 232) = v45;
      goto LABEL_6;
    }

    if (result)
    {
      sub_100826B1C();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_14:
      sub_100826B50();
      return 0;
    }
  }

  return result;
}

BOOL sub_1003CFAD0(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (*(a1 + 232))
  {
    v3 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_100826AA4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1003A2C94(*(a1 + 200), v2, *(a1 + 264));
  v12 = v11;
  if (v11)
  {
    bzero(&v2[v11], *(a1 + 264) - v11);
    v13 = mach_absolute_time();
    v14 = *(a1 + 200);
    if (*(a1 + 284) == 1)
    {
      v15 = *(v14 + 584);
      if (v15)
      {
        sub_1003CFF3C(a1, v2);
        v16 = *(a1 + 200);
        *(v16 + 580) += sub_100375A9C(a1, v13 - v15) / (10 * *(a1 + 260));
        sub_1003CFF3C(a1, v2);
        v14 = *(a1 + 200);
      }

      *(a1 + 284) = 0;
    }

    v17 = *(v14 + 580);
    v2[5] = (v17 >> 15) | 0xF8;
    v2[6] = v17 >> 7;
    v2[7] = v17 & 0x7F;
    v18 = *(a1 + 200);
    ++*(v18 + 580);
    if (*(v18 + 396) == 1)
    {
      sub_1003CFF3C(a1, v2);
      v18 = *(a1 + 200);
    }

    *(a1 + 248) = 0;
    *(a1 + 232) = *(a1 + 264);
    sub_10069BC4C(v18);
    *(*(a1 + 200) + 584) = v13;
  }

  else
  {
    ++*(*(a1 + 200) + 580);
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_100826CB4();
    }
  }

  return v12 != 0;
}

uint64_t sub_1003CFC68(uint64_t a1)
{
  v1 = *(a1 + 256);
  result = 2;
  if (v1 <= 129)
  {
    if ((v1 - 128) < 2)
    {
      return result;
    }

    if (v1 == 127)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (v1 != 256)
  {
    if (v1 == 255)
    {
      return result;
    }

    if (v1 != 130)
    {
LABEL_8:
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_100826D2C();
      }
    }
  }

  return 1;
}

uint64_t sub_1003CFCF4(uint64_t a1, unsigned int a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v4 = (a1 + 192);
  sub_100007F88(v16, *(a1 + 192) + 760);
  v5 = sub_1005D0048(*v4, *(a1 + 208));
  if (v5 && *(v5 + 600) == a1)
  {
    if (*(a1 + 256) == 130)
    {
      if (a2 >= 0xE)
      {
        v6 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          v7 = sub_1003A2C1C(*(a1 + 200));
          sub_100826DA0(v29, a2, v7, v6);
        }
      }

      if (!sub_1003A2C1C(*(a1 + 200)))
      {
        if (a2 % 0xA)
        {
          v8 = 10 * (a2 / 0xA) + 10;
        }

        else
        {
          v8 = a2;
        }

        v9 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 200);
          v12 = *(v11 + 580);
          v13 = *(a1 + 260);
          v14 = *(a1 + 104);
          v15 = sub_1003A2C1C(v11);
          *buf = 67110400;
          v18 = a2;
          v19 = 1024;
          v20 = v8;
          v21 = 1024;
          v22 = v12;
          v23 = 1024;
          v24 = v8 / (10 * v13);
          v25 = 2048;
          v26 = v14;
          v27 = 2048;
          v28 = v15;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Overwaited HAL %u(%u) seq %d+%d, %zu->%zu", buf, 0x2Eu);
        }

        *(*(a1 + 200) + 580) += v8 / (10 * *(a1 + 260));
      }
    }

    *(a1 + 104) = sub_1003A2C1C(*(a1 + 200));
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_100826DF8();
  }

  return sub_1000088CC(v16);
}

void sub_1003CFF3C(uint64_t a1, _BYTE *a2)
{
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2[9] | ((a2[8] & 0xF) << 8);
    v6 = (a2[3] << 7) & 0x7F80 | ((a2[2] & 7) << 15) | a2[4] & 0x7F;
    v7 = a2[1] | ((*a2 & 7) << 8);
    v8 = (a2[6] << 7) & 0x7F80 | ((a2[5] & 1) << 15) | a2[7] & 0x7F;
    v9 = *(a1 + 200);
    v10 = *(v9 + 580);
    v11 = *(a1 + 284);
    v12 = *(v9 + 584);
    v13[0] = 67110912;
    v13[1] = v7;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = mach_absolute_time();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "bluetoothd: FrameNumber: %d; HostTime(ms): %d; FrameLength: %d sequenceNumberDecoded %d, newSequenceNumber %d fInterIOSessionSeqCompensation %d anchortimestamp %llu currentTimestamp %llu", v13, 0x3Au);
  }
}

void sub_1003D0098(void *a1, uint64_t a2, __int16 a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7, int a8)
{
  v11 = sub_1003761B0(a1, "HFPSendThreadHostCodec", a8);
  *v11 = off_100AF0FC0;
  *(v11 + 192) = a2;
  *(v11 + 208) = a3;
  *(v11 + 216) = 0;
  a1[30] = 0;
  a1[31] = 0;
  a1[29] = 0;
  operator new[]();
}

uint64_t sub_1003D0514(uint64_t a1)
{
  *a1 = off_100AF0FC0;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, *(a1 + 192) + 760);
  v2 = sub_1005D0048(*(a1 + 192), *(a1 + 208));
  if (v2)
  {
    sub_10069C0F0(v2);
  }

  *(a1 + 216) = 0;
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SendThread fShouldRunOverwaitDetection false", v5, 2u);
  }

  *(a1 + 112) = 0;
  sub_1000088CC(v6);
  if (*(a1 + 224))
  {
    operator delete[]();
  }

  return sub_100376218(a1);
}

void sub_1003D05FC(_Unwind_Exception *a1)
{
  if (*(v1 + 224))
  {
    operator delete[]();
  }

  sub_100376218(v1);
  _Unwind_Resume(a1);
}

void sub_1003D0640(uint64_t a1)
{
  sub_1003D0514(a1);

  operator delete();
}

unint64_t sub_1003D0678(uint64_t a1)
{
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 256);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "calculateSleepIntervalInUs codec type:%d", v6, 8u);
  }

  v4 = *(a1 + 256);
  result = 7500;
  if (v4 > 129)
  {
    if (v4 == 130)
    {
      return 10000;
    }

    if (v4 != 255)
    {
      if (v4 == 256)
      {
        return result;
      }

      return (((*(a1 + 264) / 16000.0) * 1000.0) * 1000.0);
    }

    return 15000;
  }

  if ((v4 - 128) < 2)
  {
    return 15000;
  }

  if (v4 != 2)
  {
    if (v4 == 127)
    {
      return result;
    }

    return (((*(a1 + 264) / 16000.0) * 1000.0) * 1000.0);
  }

  return (*(a1 + 264) / 32000.0 * 1000.0 * 1000.0);
}

uint64_t sub_1003D07D0(uint64_t a1)
{
  if (*(a1 + 256) == 130)
  {
    return 4;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_100826E34();
  }

  return 1;
}

uint64_t sub_1003D0830(uint64_t a1)
{
  v23[0] = 0;
  v23[1] = 0;
  v2 = (a1 + 192);
  sub_100007F88(v23, *(a1 + 192) + 760);
  v3 = sub_1005D0048(*v2, *(a1 + 208));
  if (!v3 || *(v3 + 600) != a1 || (*(a1 + 113) & 1) != 0)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (!*(a1 + 282))
  {
    goto LABEL_17;
  }

  v6 = sub_100376210(a1);
  v7 = *(a1 + 282);
  v8 = *(a1 + 264);
  if (v6)
  {
    if (v8 > v7)
    {
      v9 = 0;
      goto LABEL_14;
    }
  }

  else if (v8 > v7)
  {
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v25[0] = "fAudioBytesOutstanding >= fAudioBufferSize";
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v8 = *(a1 + 264);
      LOWORD(v7) = *(a1 + 282);
    }
  }

  v9 = v7 - v8;
LABEL_14:
  *(a1 + 282) = v9;
  v11 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
  {
    v21 = sub_1003A2C1C(*(a1 + 200));
    *buf = 67109376;
    LODWORD(v25[0]) = v9;
    WORD2(v25[0]) = 2048;
    *(v25 + 6) = v21;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Draining controller voice to %d bytes, frame available %zu", buf, 0x12u);
    v9 = *(a1 + 282);
  }

  if (!v9)
  {
LABEL_17:
    sub_1003D0B58(a1, 1u);
  }

  v12 = sub_1003A2C1C(*(a1 + 200));
  if (v12 >= sub_1003CFC68(a1) && *(a1 + 336) == 1)
  {
    sub_1003D0B58(a1, 0);
  }

  if (*(a1 + 336) != 2)
  {
    goto LABEL_31;
  }

  if (*(a1 + 340) == 1)
  {
    v13 = 576 - *(a1 + 282);
    v14 = *(a1 + 264);
    *(a1 + 340) = 0;
    v15 = v13 / v14;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(a1 + 256);
  if ((v16 - 127) < 4 || v16 == 256)
  {
    if (!sub_1003A2C1C(*(a1 + 200)))
    {
LABEL_31:
      v4 = 1;
      goto LABEL_5;
    }

    v17 = sub_100376210(a1);
    v18 = *(a1 + 200);
    if (v17)
    {
      v19 = sub_1003A2C1C(v18);
      v15 = v19 / sub_1003CFC68(a1);
    }

    else
    {
      v20 = sub_1003A2C1C(v18);
      if (v20 <= sub_1003CFC68(a1) || *(a1 + 256) == 130)
      {
        v15 = 1;
        goto LABEL_35;
      }

      v22 = sub_1003A2C1C(*(a1 + 200));
      if (v22 >= 2 * (sub_1003CFC68(a1) & 0x7FuLL) && !*(a1 + 282))
      {
        v15 = 2;
        goto LABEL_35;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_31;
  }

  do
  {
LABEL_35:
    sub_1003D0FAC(a1);
    v4 = 1;
    --v15;
  }

  while (v15);
LABEL_5:
  sub_1000088CC(v23);
  return v4;
}

uint64_t sub_1003D0B58(uint64_t a1, unsigned int a2)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, *(a1 + 192) + 760);
  v4 = *(a1 + 336);
  if (a2 == 2)
  {
    goto LABEL_26;
  }

  if (a2 == 1)
  {
    if (v4)
    {
      if (v4 == 2)
      {
        v15 = *(a1 + 256);
        if ((v15 - 127) < 4 || v15 == 256)
        {
          v16 = sub_1003A2C1C(*(a1 + 200));
          if (v16 >= sub_1003CFC68(a1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v36 = *(a1 + 232);
          if (sub_1003A2C14(*(a1 + 200)) + v36 >= *(a1 + 264) * *(a1 + 344))
          {
            goto LABEL_26;
          }
        }

        v17 = 1;
LABEL_25:
        *(a1 + 336) = v17;
      }
    }

    else if ((*(*a1 + 24))(a1))
    {
      goto LABEL_24;
    }
  }

  else if (a2)
  {
    v18 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_1008267F8(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_26;
    }

    if (*(a1 + 282))
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826924(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v13 = *(a1 + 256);
    if ((v13 - 127) >= 3 && v13 != 256)
    {
      if (v13 != 130)
      {
        v35 = *(a1 + 232);
        if (sub_1003A2C14(*(a1 + 200)) + v35 < *(a1 + 264) * *(a1 + 344))
        {
          goto LABEL_26;
        }

        goto LABEL_14;
      }

      if (sub_100320184(*(a1 + 200) + 400) == 1 && (sub_100320F74(*(a1 + 200) + 400) & 1) == 0)
      {
        v37 = sub_1003A2C1C(*(a1 + 200));
        if (v37 < sub_1003D07D0(a1))
        {
          v38 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            v39 = sub_1003A2C1C(*(a1 + 200));
            v40 = *(a1 + 200);
            v41 = *(v40 + 580);
            *buf = 134218752;
            v48 = v39;
            v49 = 2048;
            v50 = v40;
            v51 = 2048;
            v52 = v40 + 400;
            v53 = 1024;
            LODWORD(v54) = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "building SendThread jitter %zu frm in Q, %p, %p, %d", buf, 0x26u);
          }

          goto LABEL_26;
        }

        sub_100320F7C(*(a1 + 200) + 400, 1);
        v42 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v43 = sub_1003A2C1C(*(a1 + 200));
          v44 = *(a1 + 200);
          v45 = *(v44 + 580);
          *buf = 134218752;
          v48 = v43;
          v49 = 2048;
          v50 = v44;
          v51 = 2048;
          v52 = v44 + 400;
          v53 = 1024;
          LODWORD(v54) = v45;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "SendThread jitter ready %zu frm in Q, %p, %p, %d", buf, 0x26u);
        }
      }
    }

    v14 = sub_1003A2C1C(*(a1 + 200));
    if (v14 >= sub_1003CFC68(a1))
    {
LABEL_14:
      *(a1 + 340) = 1;
LABEL_24:
      v17 = 2;
      goto LABEL_25;
    }
  }

LABEL_26:
  v26 = *(a1 + 336);
  if (v4 != v26)
  {
    v27 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 8 * a2 + 312);
      v29 = *(a1 + 288 + 8 * v4);
      v30 = *(a1 + 288 + 8 * v26);
      v31 = *(a1 + 8 * *(a1 + 376) + 352);
      v32 = sub_1003A2C1C(*(a1 + 200));
      v33 = *(a1 + 282);
      *buf = 136447490;
      v48 = v28;
      v49 = 2082;
      v50 = v29;
      v51 = 2082;
      v52 = v30;
      v53 = 2082;
      v54 = v31;
      v55 = 2048;
      v56 = v32;
      v57 = 1024;
      v58 = v33;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Input: %{public}s. State: %{public}s -> %{public}s. SendState %{public}s, %zu, %hu", buf, 0x3Au);
    }
  }

  return sub_1000088CC(v46);
}

uint64_t sub_1003D0FAC(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, *(a1 + 192) + 760);
  v2 = *(a1 + 376);
  switch(v2)
  {
    case 2:
      goto LABEL_7;
    case 1:
LABEL_6:
      sub_1003D1080(a1);
      *(a1 + 376) = 2;
LABEL_7:
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      *(a1 + 376) = 0;
      return sub_1000088CC(v12);
    case 0:
      if (!sub_1003CF570(a1))
      {
        sub_1003D0B58(a1, 2u);
        return sub_1000088CC(v12);
      }

      *(a1 + 376) = 1;
      goto LABEL_6;
  }

  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
  {
    sub_1008267F8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_1003D1080(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  if (!v2)
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_10082699C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  for (; v3; v3 -= v12)
  {
    if (v3 >= *(a1 + 264))
    {
      v12 = *(a1 + 264);
    }

    else
    {
      v12 = v3;
    }

    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 282);
      *buf = 134218752;
      v24 = v12;
      v25 = 2048;
      v26 = v3;
      v27 = 1024;
      v28 = v17;
      v29 = 2048;
      v30 = v12 + v17;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, ">> Sending, %zu bytes of total %zu. Oustanding %d -> %lu", buf, 0x26u);
    }

    if (*(a1 + 216))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      if (*(a1 + 348) == 1)
      {
        v14 = sub_100320D9C(*(a1 + 200) + 400);
        sub_100308A8C(v14 + 128, v2, v12);
      }

      else
      {
        sub_10024891C(*(a1 + 216), v2, v12, 1);
      }

      sub_100022214(buf);
      sub_10002249C(buf);
    }

    else
    {
      v15 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_100826A14(&v19, v20, v15);
      }
    }

    *(a1 + 282) += v12;
    if ((sub_100376210(a1) & 1) == 0 && *(a1 + 282) >= 0x2D1u)
    {
      v16 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826A54(v21, &v22, v16);
      }
    }

    v2 += v12;
  }

  return 1;
}

void sub_1003D12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

intptr_t sub_1003D12CC(uint64_t a1)
{
  sub_1003D0B58(a1, 0);
  result = sub_100376210(a1);
  if (result)
  {

    return sub_1003764E4(a1);
  }

  return result;
}

_BYTE *sub_1003D1330(_BYTE *a1, int a2)
{
  v4 = sub_1003D1ED8(a1, a2);
  *v4 = off_100AF1088;
  *(v4 + 1352) = 0u;
  *(v4 + 1344) = v4 + 1352;
  *(v4 + 1368) = 0;
  *(v4 + 1372) = 4135;
  *(v4 + 1376) = vneg_f32(0x700000007);
  *(v4 + 1384) = 0;
  *(v4 + 1408) = 0;
  *(v4 + 1622) = 0;
  *(v4 + 1632) = 0;
  *(v4 + 1636) = 0;
  *(v4 + 1395) = 0;
  *(v4 + 1399) = 0;
  if ((a2 - 2000) < 0x7D0 || ((a2 - 1) < 0x7CF ? (v5 = a2 == 9) : (v5 = 1), !v5 || (a2 - 5000) <= 0x3E8))
  {
    a1[160] = 1;
  }

  v51 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "SupportsMultipleAdvertising");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v51);
  v9 = v7;
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
  }

  if (v9)
  {
    v10 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v51)
      {
        v11 = "enabled";
      }

      else
      {
        v11 = "disabled";
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Overriding Multiple Advertising support - %{public}s", buf, 0xCu);
    }

    a1[160] = v51;
  }

  v12 = sub_10000C798(v7, v8);
  v13 = (*(*v12 + 392))(v12);
  if ((v13 & 1) == 0)
  {
    v15 = sub_10000C798(v13, v14);
    if (!(((a2 - 2000) < 0xFFFFF837) | (*(*v15 + 360))(v15) & 1))
    {
      LOBYTE(v47) = 0;
      v16 = sub_10000E92C();
      sub_100007E30(buf, "CATT");
      sub_100007E30(__p, "AllowAppleDevices");
      (*(*v16 + 72))(v16, buf, __p, &v47);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }

      if (v53 < 0)
      {
        operator delete(*buf);
      }

      v17 = v47;
      v18 = qword_100BCE8D8;
      v19 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v17 == 1)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Allowing CATT between Apple Devices, transport switch will be turned off", buf, 2u);
        }
      }

      else
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Enable transport switch on non-iPad devices", buf, 2u);
        }

        *(a1 + 343) |= 0x100000u;
      }
    }
  }

  if (a2 == 19)
  {
    *(a1 + 343) |= 0x200000u;
  }

  else if ((a2 - 19) >= 0x7BD && (*(a1 + 200) - 2001) > 0x7CE)
  {
    goto LABEL_56;
  }

  LOBYTE(v47) = 0;
  *(a1 + 343) |= 0x40000u;
  v20 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DisableSensorTrack");
  (*(*v20 + 72))(v20, buf, __p, &v47);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
  }

  if (v47 == 1)
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Force Disable SensorTrack", buf, 2u);
    }
  }

  else
  {
    *(a1 + 343) |= 8u;
  }

  if ((a2 - 20) < 0x7BC || (*(a1 + 200) - 2001) <= 0x7CE)
  {
    *(a1 + 343) |= 0x1000000u;
    LOBYTE(v47) = 0;
    v22 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableControllerBTClock");
    v23 = (*(*v22 + 72))(v22, buf, __p, &v47);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v53 < 0)
    {
      operator delete(*buf);
      if (!v23)
      {
        goto LABEL_56;
      }
    }

    else if (!v23)
    {
      goto LABEL_56;
    }

    if (v47 == 1)
    {
      a1[1400] = v47;
      v24 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Force Disable  DisableControllerBTClock", buf, 2u);
      }

      *(a1 + 343) &= ~0x1000000u;
    }
  }

LABEL_56:
  v48 = 0;
  v25 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "DisableClassic");
  (*(*v25 + 72))(v25, buf, __p, &v48);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
  }

  if (v48 == 1)
  {
    a1[1385] = v48;
  }

  (*(*a1 + 3864))(a1);
  *(a1 + 696) = 0;
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "forceHostSlowDownLEScanOnACLProtectMode");
  v27 = (*(*v26 + 72))(v26, buf, __p, a1 + 1393);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_74;
    }
  }

  else if (!v27)
  {
    goto LABEL_74;
  }

  v28 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[1393])
    {
      v29 = "Yes";
    }

    else
    {
      v29 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Overriding HostSlowDownLEScanOnACLProtectMode - %{public}s", buf, 0xCu);
  }

  a1[1392] = 1;
LABEL_74:
  a1[1394] = 87;
  v47 = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "Zone");
  sub_100007E30(__p, "CuffoffRSSIValue");
  v31 = (*(*v30 + 88))(v30, buf, __p, &v47);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_82;
    }
  }

  else if (!v31)
  {
    goto LABEL_82;
  }

  v32 = v47;
  a1[1394] = v47;
  v33 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Zone Cutoff RSSI value = -%d dBm", buf, 8u);
  }

LABEL_82:
  a1[1638] = 0;
  *(a1 + 410) = 0;
  v46 = 0;
  v34 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRssiThresholdOrderType19");
  v35 = (*(*v34 + 88))(v34, buf, __p, &v46);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      goto LABEL_90;
    }
  }

  else if (!v35)
  {
    goto LABEL_90;
  }

  a1[1638] = 1;
  v36 = v46;
  *(a1 + 410) = v46;
  v37 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 1;
    *&buf[8] = 1024;
    *&buf[10] = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Force %d RSSI Threshold Order RSSI value = %d ", buf, 0xEu);
  }

LABEL_90:
  *(a1 + 822) = 2048;
  v45 = 0;
  v38 = sub_10000E92C();
  sub_100007E30(buf, "AoS");
  sub_100007E30(__p, "MaxRetryInFrames");
  v39 = (*(*v38 + 128))(v38, buf, __p, &v45);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  if (v53 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_98;
    }
  }

  else if (!v39)
  {
    goto LABEL_98;
  }

  a1[1644] = 1;
  v40 = v45;
  a1[1645] = v45;
  v41 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 1;
    *&buf[8] = 1024;
    *&buf[10] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Override Advanced sniff mode Parameters %d, MaxRetryInFrames= %d ", buf, 0xEu);
  }

LABEL_98:
  a1[1627] = 0;
  *(a1 + 815) = 0;
  v42 = (*(*a1 + 3088))(a1);
  a1[1646] = v42;
  v43 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Version for Unified priority %d", buf, 8u);
  }

  return a1;
}

void sub_1003D1E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_10000CEDC(v23 + 1344, *(v23 + 1352));
  sub_1003D1F6C(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D1ED8(uint64_t a1, int a2)
{
  *a1 = &off_100AF3740;
  v4 = (a1 + 72);
  sub_100044BBC((a1 + 8));
  sub_100044BBC(v4);
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 800) = a2;
  *(a1 + 804) = 0;
  return a1;
}

uint64_t sub_1003D1F6C(uint64_t a1)
{
  *a1 = &off_100AF3740;
  sub_10000CEDC(a1 + 136, *(a1 + 144));
  sub_10007A068(a1 + 72);
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1003D1FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __s = 0;
  v11 = 0;
  v12 = 0;
  if (*(v2 + 800) != 22)
  {
    goto LABEL_20;
  }

  v3 = sub_10009BD9C(a1, a2);
  if ((*(*v3 + 64))(v3, &__s))
  {
    goto LABEL_20;
  }

  v4 = SHIBYTE(v12);
  if ((SHIBYTE(v12) & 0x8000000000000000) != 0)
  {
    v4 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    p_s = __s;
  }

  else
  {
    if (!HIBYTE(v12))
    {
      goto LABEL_20;
    }

    p_s = &__s;
  }

  if (v4 >= 2)
  {
    v6 = p_s + v4;
    v7 = p_s;
    do
    {
      v8 = memchr(v7, 67, v4 - 1);
      if (!v8)
      {
        break;
      }

      if (*v8 == 12355)
      {
        if (v8 != v6 && v8 - p_s != -1)
        {
          v9 = "C0";
          goto LABEL_19;
        }

        break;
      }

      v7 = (v8 + 1);
      v4 = v6 - v7;
    }

    while (v6 - v7 >= 2);
  }

  v9 = "C2";
  if (sub_1003D2140(&__s, "C2", 0) != -1 || (v9 = "C3", sub_1003D2140(&__s, "C3", 0) != -1))
  {
LABEL_19:
    std::string::assign(&xmmword_100B6D370, v9);
  }

LABEL_20:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__s);
  }
}

void sub_1003D2124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64_t sub_1003D2140(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

void sub_1003D220C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __s = 0;
  v11 = 0;
  v12 = 0;
  if (*(v2 + 800) != 23)
  {
    goto LABEL_20;
  }

  v3 = sub_10009BD9C(a1, a2);
  if ((*(*v3 + 64))(v3, &__s))
  {
    goto LABEL_20;
  }

  v4 = SHIBYTE(v12);
  if ((SHIBYTE(v12) & 0x8000000000000000) != 0)
  {
    v4 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    p_s = __s;
  }

  else
  {
    if (!HIBYTE(v12))
    {
      goto LABEL_20;
    }

    p_s = &__s;
  }

  if (v4 >= 2)
  {
    v6 = p_s + v4;
    v7 = p_s;
    do
    {
      v8 = memchr(v7, 66, v4 - 1);
      if (!v8)
      {
        break;
      }

      if (*v8 == 12354)
      {
        if (v8 != v6 && v8 - p_s != -1)
        {
          v9 = "B0";
          goto LABEL_19;
        }

        break;
      }

      v7 = (v8 + 1);
      v4 = v6 - v7;
    }

    while (v6 - v7 >= 2);
  }

  v9 = "C0";
  if (sub_1003D2140(&__s, "C0", 0) != -1 || (v9 = "C2", sub_1003D2140(&__s, "C2", 0) != -1))
  {
LABEL_19:
    std::string::assign(&xmmword_100B6D398, v9);
  }

LABEL_20:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__s);
  }
}

void sub_1003D2364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2380(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D2410;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D3C8 != -1)
  {
    dispatch_once(&qword_100B6D3C8, block);
  }

  return byte_100B6D3C0;
}

void sub_1003D2410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (*(v2 + 800) == 25)
  {
    v3 = sub_10009BD9C(a1, a2);
    if (!(*(*v3 + 64))(v3, &__p))
    {
      v4 = SHIBYTE(v11);
      if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
      {
        v4 = v10;
        if (!v10)
        {
          goto LABEL_3;
        }

        p_p = __p;
      }

      else
      {
        if (!HIBYTE(v11))
        {
          goto LABEL_3;
        }

        p_p = &__p;
      }

      if (v4 >= 2)
      {
        v6 = &p_p[v4];
        v7 = p_p;
        do
        {
          v8 = memchr(v7, 66, v4 - 1);
          if (!v8)
          {
            break;
          }

          if (*v8 == 12354)
          {
            if (v8 != v6 && v8 - p_p != -1)
            {
              byte_100B6D3C0 = 1;
            }

            break;
          }

          v7 = v8 + 1;
          v4 = v6 - v7;
        }

        while (v6 - v7 >= 2);
      }
    }
  }

LABEL_3:
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100826EA8();
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003D2544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2560(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D25F0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D3D8 != -1)
  {
    dispatch_once(&qword_100B6D3D8, block);
  }

  return byte_100B6D3D0;
}

void sub_1003D25F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (*(v2 + 800) == 25)
  {
    v3 = sub_10009BD9C(a1, a2);
    if (!(*(*v3 + 64))(v3, &__p))
    {
      v4 = SHIBYTE(v11);
      if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
      {
        v4 = v10;
        if (!v10)
        {
          goto LABEL_3;
        }

        p_p = __p;
      }

      else
      {
        if (!HIBYTE(v11))
        {
          goto LABEL_3;
        }

        p_p = &__p;
      }

      if (v4 >= 2)
      {
        v6 = &p_p[v4];
        v7 = p_p;
        do
        {
          v8 = memchr(v7, 67, v4 - 1);
          if (!v8)
          {
            break;
          }

          if (*v8 == 12867)
          {
            if (v8 != v6 && v8 - p_p != -1)
            {
              byte_100B6D3D0 = 1;
            }

            break;
          }

          v7 = v8 + 1;
          v4 = v6 - v7;
        }

        while (v6 - v7 >= 2);
      }
    }
  }

LABEL_3:
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100826F28();
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003D2724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D2740(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "ForcedLERSSIValue");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(a1 + 1386) = 0;
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = v12;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enable force LE RSSI value = %d dBm", buf, 8u);
  }

  *(a1 + 1386) = 1;
  *(a1 + 1388) = v4;
LABEL_10:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "ForcedClassicRSSIValue");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_18:
    *(a1 + 1387) = 0;
    return;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = v12;
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enable force Classic RSSI value = %d dBm", buf, 8u);
  }

  *(a1 + 1387) = 1;
  *(a1 + 1390) = v8;
}

void sub_1003D2988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003D29CC(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 < 0x7D0)
  {
    if (v1 - 19 < 7)
    {
      return 1;
    }
  }

  else if (v1 > 0xF9F)
  {
    if (v1 - 5000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 != 2000)
  {
    return 1;
  }

  return v1 == 6000;
}

BOOL sub_1003D2A20(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 5000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 > 0x15)
    {
      return 1;
    }
  }

  return v1 == 6000;
}

BOOL sub_1003D2A9C(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 20;
  v3 = v1 - 3000;
  return v2 < 6 || v3 < 0x3E8;
}

BOOL sub_1003D2AF0(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 22;
  v3 = v1 - 3000;
  return v2 < 0x7BA || v3 < 0x3E8;
}

BOOL sub_1003D2B10(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 22;
  v3 = v1 - 3000;
  return v2 < 0x7BA || v3 < 0x3E8;
}

BOOL sub_1003D2B64(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  v4 = (v2 - 21) >= 0x7BB;
  v3 = v2 - 5000;
  v4 = v4 && v3 >= 0x3E8;
  return !v4;
}

uint64_t sub_1003D2BA4(uint64_t a1)
{
  if (qword_100B6D3E0 != -1)
  {
    sub_100826FA8();
  }

  v2 = sub_1004106D0(a1, 0x14u);
  if (v2 && byte_100B6D3E8 == 1)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_100B6D3E9)
      {
        v5 = "Enabled";
      }

      else
      {
        v5 = "Disabled";
      }

      v12 = 136315138;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding Apple Enhanced Advertising Report support to : %s", &v12, 0xCu);
    }

    v6 = byte_100B6D3E9;
  }

  else
  {
    v7 = sub_10000C7D0(v2, v3);
    v6 = 1;
    if (*(v7 + 800) >> 3 < 0x271u || (v7 = sub_10000C7D0(v7, v8), *(v7 + 800) >> 4 >= 0x177u))
    {
      v9 = sub_10000C7D0(v7, v8);
      if (*(v9 + 800) < 0x7D0u || *(sub_10000C7D0(v9, v10) + 800) > 0xF9Fu || !sub_1004106D0(a1, 0xBB8u))
      {
        v6 = 0;
      }
    }
  }

  return v6 & 1;
}

void sub_1003D2D10(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "LE");
  sub_100007E30(__p, "AppleExtendedAdvertisingReport");
  byte_100B6D3E8 = (*(*v1 + 72))(v1, v4, __p, &byte_100B6D3E9);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1003D2DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003D2DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  result = 1;
  if ((v2 - 5000) >= 0x3E8)
  {
    v4 = v2 - 3000;
    v5 = (v2 - 21) < 5;
    return v4 < 0x3E8 || v5;
  }

  return result;
}

BOOL sub_1003D2E38(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10000C7D0(a1, a2) + 800);
  result = 1;
  if ((v3 - 5000) >= 0x3E8 && (v3 - 3000) >= 0x3E8)
  {
    return (v3 - 1) <= 0x7CE && (*(a1 + 800) - 22) < 4;
  }

  return result;
}

BOOL sub_1003D2EA4(_DWORD *a1, uint64_t a2)
{
  v3 = *(sub_10000C7D0(a1, a2) + 800);
  v4 = 1;
  if ((v3 - 5000) >= 0x3E8 && (v3 - 3000) >= 0x3E8)
  {
    if ((v3 - 1) > 0x7CE)
    {
      return 0;
    }

    else
    {
      (*(*a1 + 16))(&v6, a1);
      if (std::string::compare(&v6, "C3") < 0)
      {
        v4 = (a1[200] - 23) < 3;
      }

      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v6.__r_.__value_.__l.__data_);
      }
    }
  }

  return v4;
}

uint64_t sub_1003D2F6C(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 < 0x7D0)
  {
    if (v1 - 19 < 7)
    {
      return 1;
    }
  }

  else if (v1 > 0xF9F)
  {
    if (v1 - 5000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 != 2000)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1003D2FE0(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 20;
  v3 = v1 - 3000;
  return v2 < 6 || v3 < 0x3E8;
}

BOOL sub_1003D3000(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 > 0x7CF)
  {
    return v1 <= 0xF9F && v1 != 2000;
  }

  return v1 - 20 < 6;
}

BOOL sub_1003D30E0(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = sub_1004106D0(a1, 0xBB8u);
  v3 = (v1 - 5000) < 0x3E8 || (v1 - 1) < 0x7CF;
  return v2 || v3;
}

BOOL sub_1003D3130(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 3000;
  v3 = v1 - 22;
  return v2 < 0x3E8 || v3 < 0x7BA;
}

BOOL sub_1003D3160(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  result = 0;
  if (*(v2 + 800) >= 0x7D0u)
  {
    v4 = sub_10000C7D0(v2, v3);
    if (*(v4 + 800) <= 0xF9Fu && *(sub_10000C7D0(v4, v5) + 800) > 0xBB7u)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1003D31B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  result = 0;
  if (*(v2 + 800) >= 0x7D0u)
  {
    v4 = sub_10000C7D0(v2, v3);
    if (*(v4 + 800) <= 0xF9Fu && *(sub_10000C7D0(v4, v5) + 800) > 0xBB7u)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1003D3200(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 5000;
  v3 = v1 - 3000;
  v4 = (v1 - 22) < 0x7BA;
  if (v3 < 0x3E8)
  {
    v4 = 1;
  }

  return v2 < 0x3E8 || v4;
}

BOOL sub_1003D3234(_DWORD *a1)
{
  v1 = a1[200];
  if ((v1 - 3000) < 0x3E8)
  {
    return 1;
  }

  if ((v1 - 22) > 0x7B9)
  {
    return 0;
  }

  (*(*a1 + 24))(__p);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 == 2)
    {
      return LOWORD(__p[0]) != 12354;
    }

    return 1;
  }

  v2 = __p[1] != 2 || *__p[0] != 12354;
  operator delete(__p[0]);
  return v2;
}

BOOL sub_1003D330C(_DWORD *a1)
{
  v1 = a1[200];
  if (!v1)
  {
    return 0;
  }

  if (v1 > 0x7CF)
  {
    return v1 < 0xFA0 && v1 != 2000;
  }

  if (v1 < 0x14)
  {
    return 0;
  }

  (*(*a1 + 24))(__p);
  if (v8 < 0)
  {
    if (__p[1] != 2)
    {
      v4 = 1;
      goto LABEL_23;
    }

    v3 = __p[0];
  }

  else
  {
    if (v8 != 2)
    {
      return 1;
    }

    v3 = __p;
  }

  if (*v3 == 12354)
  {
    v4 = (a1[200] - 2001) < 0x7CF;
    if ((v8 & 0x80000000) == 0)
    {
      return v4;
    }

LABEL_23:
    operator delete(__p[0]);
    return v4;
  }

  v4 = 1;
  if (v8 < 0)
  {
    goto LABEL_23;
  }

  return v4;
}

BOOL sub_1003D3418(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x12;
  }

  return v1 < 0xFA0 && v1 != 2000;
}

BOOL sub_1003D3454(uint64_t a1)
{
  if ((*(a1 + 800) - 5000) < 0x3E8)
  {
    return 1;
  }

  if (sub_1004106D0(a1, 0xBB8u))
  {
    return 1;
  }

  return (*(a1 + 800) - 20) < 0x7BC;
}

uint64_t sub_1003D34CC(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 < 0x7D0)
  {
    if (v1 > 0xE)
    {
      return 1;
    }
  }

  else if (v1 > 0xF9F)
  {
    if (v1 - 5000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 != 2000)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1003D3514(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 > 0xF9F)
      {
        if (v1 - 5000 < 0x3E8)
        {
          return 1;
        }
      }

      else if (v1 != 2000)
      {
        return 1;
      }
    }

    else if (v1 - 19 < 7)
    {
      return 1;
    }
  }

  return v1 == 6000;
}

BOOL sub_1003D356C(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return v1 == 6000;
  }

  if (v1 > 0x7CF)
  {
    if (v1 >> 3 < 0x271)
    {
      if (v1 > 0xF9F || v1 == 2000)
      {
        return v1 == 6000;
      }
    }

    else if (v1 >> 4 >= 0x177)
    {
      return v1 == 6000;
    }

    return 1;
  }

  if (v1 - 19 < 7)
  {
    return 1;
  }

  return v1 == 6000;
}

BOOL sub_1003D35E0(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 < 0x7D0)
  {
    if (v1 - 19 < 7)
    {
      return 1;
    }
  }

  else if (v1 > 0xF9F)
  {
    if (v1 - 5000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 != 2000)
  {
    return 1;
  }

  return v1 >> 4 > 0x176;
}

uint64_t sub_1003D3634(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 < 0x7D0)
  {
    if (v1 - 19 < 4)
    {
      return 1;
    }
  }

  else if (v1 <= 0xF9F && v1 != 2000)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1003D3680(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 > 0x7CF)
  {
    if (v1 > 0xF9F)
    {
      if (v1 - 5000 >= 0x3E8)
      {
        return 0;
      }
    }

    else if (v1 == 2000)
    {
      return 0;
    }

    return 2;
  }

  if (v1 < 0x13)
  {
    return 0;
  }

  if (v1 < 0x16)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1003D36DC(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v3 = *(a1 + 800);
    if (!v3)
    {
      return 0;
    }

    if (v3 <= 0x7CF)
    {
      if (v3 - 22 < 4)
      {
        return 8;
      }

      return 0;
    }

    if (v3 >> 3 < 0x271)
    {
      if (v3 <= 0xF9F)
      {
        return 8 * (v3 > 0xBB7);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 8 * (v3 >> 4 < 0x177);
    }
  }

  return result;
}

BOOL sub_1003D3774(uint64_t a1)
{
  (*(*a1 + 16))(&v3);
  v1 = std::string::compare(&v3, "C2");
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return v1 >= 0;
}

BOOL sub_1003D37EC(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 - 20 < 6)
    {
      return 1;
    }
  }

  v2 = 1;
  v3 = sub_1000271F0();
  if ((v3 - 169) > 0x3A || ((1 << (v3 + 87)) & 0x7FE1E1E00000083) == 0)
  {
    return (v3 - 230) < 0xD;
  }

  return v2;
}

uint64_t sub_1003D3878(_DWORD *a1)
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = sub_10006CDA4(a1);
    if (result)
    {
      result = (*(*a1 + 2848))(a1);
      if (result)
      {
        v4 = a1[200];
        if (!v4)
        {
          return 0;
        }

        if (v4 > 0x7CF)
        {
          result = 0;
LABEL_14:
          if (v4 - 3000 < 0x3E8)
          {
            return 1;
          }

          return result;
        }

        if (v4 - 22 > 3)
        {
          goto LABEL_12;
        }

        v5 = sub_10000C798(result, v3);
        result = (*(*v5 + 384))(v5);
        if (!result)
        {
          goto LABEL_13;
        }

        if (sub_1000271F0() < 42)
        {
LABEL_12:
          result = 0;
        }

        else
        {
          result = sub_1000271F0() != 50;
        }

LABEL_13:
        v4 = a1[200];
        if (v4 < 0x7D0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }
  }

  return result;
}

BOOL sub_1003D39AC(uint64_t a1)
{
  v1 = 1;
  if ((*(a1 + 800) - 3000) >= 0x3E8)
  {
    v2 = sub_1000271F0();
    if ((v2 - 202) > 0x28 || ((1 << (v2 + 54)) & 0x1FFF3FF0F0FLL) == 0)
    {
      return (v2 - 169) < 2;
    }
  }

  return v1;
}

BOOL sub_1003D3A34(_DWORD *a1)
{
  if ((*(*a1 + 2824))(a1))
  {
    return 0;
  }

  v3 = a1[200];
  if (!v3)
  {
    return 0;
  }

  if (v3 > 0x7CF)
  {
    v7 = a1[200];
    goto LABEL_11;
  }

  if (v3 < 0x15)
  {
    return 0;
  }

  (*(*a1 + 24))(__p, a1);
  v2 = v9;
  if (v9 < 0)
  {
    if (__p[1] != 2)
    {
      v5 = 1;
LABEL_28:
      operator delete(__p[0]);
      return v5;
    }

    v4 = __p[0];
  }

  else
  {
    if (v9 != 2)
    {
      return 1;
    }

    v4 = __p;
  }

  if (*v4 == 12354)
  {
    v7 = a1[200];
    if (v7 < 0x7D0)
    {
      v5 = 0;
      if ((v9 & 0x80) == 0)
      {
        return v5;
      }

      goto LABEL_28;
    }

LABEL_11:
    v5 = v7 < 0xFA0;
    if (v7 > 0xF9F)
    {
      if (v7 >> 3 >= 0x271)
      {
        v5 = v7 >> 4 < 0x177;
LABEL_16:
        if (v3 >= 0x7D0)
        {
          return v5;
        }

        goto LABEL_24;
      }
    }

    else if (v7 <= 0x7D0)
    {
      v5 = 0;
      goto LABEL_16;
    }

    if (v3 > 0x7CF)
    {
      return v5;
    }

    goto LABEL_24;
  }

  v5 = 1;
LABEL_24:
  if (v2 < 0)
  {
    goto LABEL_28;
  }

  return v5;
}

BOOL sub_1003D3BA0(uint64_t a1)
{
  if ((*(a1 + 1372) & 8) == 0)
  {
    return 0;
  }

  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x12;
  }

  result = 0;
  if (v1 <= 0xF9F && v1 != 2000)
  {
    return 1;
  }

  return result;
}

BOOL sub_1003D3BE4(uint64_t a1)
{
  if ((*(a1 + 1372) & 8) == 0)
  {
    return 0;
  }

  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x15;
  }

  result = 0;
  if (v1 <= 0xF9F && v1 != 2000)
  {
    return 1;
  }

  return result;
}

BOOL sub_1003D3C4C(uint64_t a1)
{
  if ((*(a1 + 1375) & 0x10) == 0)
  {
    return 0;
  }

  v1 = *(a1 + 800);
  if ((v1 - 1) > 0x7CE)
  {
    return 0;
  }

  if (v1 == 21)
  {
    return 1;
  }

  (*(*a1 + 16))(&v4);
  v2 = std::string::compare(&v4, "C2") >= 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return v2;
}

uint64_t sub_1003D3CF4(_DWORD *a1)
{
  result = (*(*a1 + 2848))(a1);
  if (result)
  {
    v3 = a1[200];
    if (v3)
    {
      if (v3 <= 0x7CF)
      {
        if (v3 <= 0x15)
        {
          if (v3 == 20)
          {
            return 7;
          }

          return 5;
        }

        return 10;
      }

      if (v3 - 3000 < 0x3E8)
      {
        return 10;
      }
    }

    return 5;
  }

  return result;
}

BOOL sub_1003D3DB8(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x16;
  }

  return v1 - 3000 < 0x3E8;
}

uint64_t sub_1003D3DF0(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v3 = *(a1 + 800);
    if (!v3)
    {
      return 0;
    }

    if (v3 <= 0x7CF)
    {
      return v3 > 0x16;
    }

    return v3 - 3000 < 0x3E8;
  }

  return result;
}

uint64_t sub_1003D3E5C()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_1003D3EA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  v3 = (*(*v2 + 352))(v2);
  if (v3)
  {
    return 1;
  }

  v5 = sub_10000C798(v3, v4);
  v6 = (*(*v5 + 360))(v5);
  if (v6)
  {
    return 1;
  }

  v9 = *(*sub_10000C798(v6, v7) + 416);

  return v9();
}

uint64_t sub_1003D3F94(_DWORD *a1)
{
  v1 = a1[200];
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      goto LABEL_11;
    }

    (*(*a1 + 16))(&v5);
    v3 = (std::string::compare(&v5, "C3") & 0x80000000) == 0 || a1[200] > 0x16u;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
      if (v3)
      {
        return 1;
      }
    }

    else if (v3)
    {
      return 1;
    }

    v1 = a1[200];
    if (v1 >= 0x7D0)
    {
LABEL_11:
      if (v1 > 0xF9F)
      {
        if (v1 - 5000 < 0x3E8)
        {
          return 1;
        }
      }

      else if (v1 > 0xBB7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003D4124(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 > 0x15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D4158(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 - 3000 < 0x3E8)
      {
        return 1;
      }
    }

    else if (v1 > 0x16)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1003D41A8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 800) - 1) <= 0x7CE)
  {
    v3 = sub_10000C798(a1, a2);
    v4 = (*(*v3 + 416))(v3);
    v5 = *(a1 + 800);
    if (v4)
    {
      if (v5 > 0x14)
      {
        return 1;
      }
    }

    else if (v5 > 0x15)
    {
      return 1;
    }
  }

  if (sub_1004106D0(a1, 0xBB8u))
  {
    return 1;
  }

  return (*(a1 + 800) - 5000) < 0x3E8;
}

uint64_t sub_1003D429C(uint64_t a1)
{
  v20 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideSupportLEConnTxPowerIncrease");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v20);
  v5 = v3;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(*buf);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    v9 = sub_10000C798(v3, v4);
    v10 = (*(*v9 + 416))(v9);
    if ((v10 & 1) == 0)
    {
      v12 = sub_10000C798(v10, v11);
      v13 = (*(*v12 + 384))(v12);
      if (!v13)
      {
        v16 = sub_10000C798(v13, v14);
        v8 = (*(*v16 + 368))(v16);
        return v8 & 1;
      }

      v15 = *(a1 + 800);
      if (v15)
      {
        if (v15 > 0x7CF)
        {
          if (v15 - 3000 < 0x3E8)
          {
LABEL_21:
            v8 = 1;
            return v8 & 1;
          }
        }

        else if (v15 > 0x15)
        {
          goto LABEL_21;
        }
      }
    }

    v8 = 0;
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v20)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Support LE Connection Tx Power Increase - %{public}s", buf, 0xCu);
  }

  v8 = v20;
  return v8 & 1;
}

void sub_1003D44C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003D4500(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 384))(v3);
  if (v4)
  {
    return (*(a1 + 800) - 20) < 0x7BC;
  }

  v7 = sub_10000C798(v4, v5);
  (*(*v7 + 368))(v7);
  return 0;
}

uint64_t sub_1003D459C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D462C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D400 != -1)
  {
    dispatch_once(&qword_100B6D400, block);
  }

  return byte_100B6D3F8;
}

_BYTE *sub_1003D462C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  sub_1000216B4(&v4);
  v2 = *(v1 + 800);
  if (v2 && (v2 < 0x7D0 || v2 - 3000 < 0x3E8))
  {
    byte_100B6D3F8 = sub_100098124();
  }

  sub_100022214(&v4);
  return sub_10002249C(&v4);
}

uint64_t sub_1003D46AC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D4748;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D410 != -1)
  {
    dispatch_once(&qword_100B6D410, block);
  }

  if (byte_100B6D408)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1003D4748(uint64_t result)
{
  if ((*(*(result + 32) + 800) - 3000) <= 0x3E7)
  {
    byte_100B6D408 = 1;
  }

  return result;
}

uint64_t sub_1003D476C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 136);
}

uint64_t sub_1003D47BC(uint64_t a1, uint64_t a2, char a3, char a4, __int16 a5, __int16 a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003D4844;
  v7[3] = &unk_100AF21F0;
  v7[4] = a2;
  v10 = a3;
  v11 = a4;
  v8 = a5;
  v9 = a6;
  return sub_10002173C(a1, 136, 1, v7, 0);
}

uint64_t sub_1003D4870(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 >> 3 < 0x271)
      {
        if (v1 - 3000 < 0x3E8)
        {
          return 1;
        }
      }

      else if (v1 >> 4 < 0x177)
      {
        return 1;
      }
    }

    else if (v1 > 7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D48C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 137);
}

uint64_t sub_1003D4910(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D498C;
  v4[3] = &unk_100AF2210;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 137, 1, v4, 0);
}

uint64_t sub_1003D49AC(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 >> 3 < 0x271)
      {
        if (v1 - 3000 < 0x3E8)
        {
          return 1;
        }
      }

      else if (v1 >> 4 < 0x177)
      {
        return 1;
      }
    }

    else if (v1 > 0xD)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D4A04(uint64_t a1)
{
  if ((*(a1 + 800) - 20) >= 0x7BC)
  {
    return 48;
  }

  else
  {
    return 32;
  }
}

BOOL sub_1003D4A48(_DWORD *a1)
{
  if (a1[200] > 0x7D0u)
  {
    return 1;
  }

  (*(*a1 + 16))(&v4);
  if ((std::string::compare(&v4, "C3") & 0x80000000) == 0)
  {
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  v2 = a1[200] > 0x16u;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return v2;
}

uint64_t sub_1003D4AF0(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 >> 3 < 0x271)
      {
        if (v1 - 2002 < 0x7CE)
        {
          return 1;
        }
      }

      else if (v1 >> 4 < 0x177)
      {
        return 1;
      }
    }

    else if (v1 - 20 < 6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D4B5C(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1)
  {
    if (v1 > 0x7CF)
    {
      if (v1 > 0xF9F)
      {
        if (v1 - 5000 < 0x3E8)
        {
          return 1;
        }
      }

      else if (v1 != 2000)
      {
        return 1;
      }
    }

    else if (v1 > 0x15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D4BA8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 93);
}

uint64_t sub_1003D4BF8(uint64_t a1, char a2, __int16 a3, uint64_t a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D4C78;
  v6[3] = &unk_100AF2230;
  v6[4] = a4;
  v7 = a3;
  v8 = a2;
  return sub_10002173C(a1, 93, a5, v6, 0);
}

uint64_t sub_1003D4C78(uint64_t a1)
{
  v2 = sub_1002D3618(*(a1 + 32));
  v13 = v2;
  v14 = WORD2(v2);
  v3 = sub_1000E1FE8(&v13);
  if (v3)
  {
    v4 = sub_1002A87BC(v3, *(a1 + 40), *(a1 + 42));
    v5 = v4;
    if ((*(a1 + 42) & 1) != 0 || v4 != 408)
    {
LABEL_8:
      if (!v5)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 101;
  }

  v6 = sub_100255884(*(a1 + 32));
  if (v6)
  {
    v5 = sub_1002A87BC(v6, *(a1 + 40), *(a1 + 42));
    goto LABEL_8;
  }

LABEL_9:
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 42))
    {
      v9 = "enable";
    }

    else
    {
      v9 = "disable";
    }

    sub_10004D9B0(*(a1 + 32));
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    v16 = v9;
    v17 = 2080;
    v18 = p_p;
    v19 = 1024;
    v20 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not %s phy statistics for address %s result %d", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  return v5;
}

uint64_t sub_1003D4E18(uint64_t a1, int a2, __int16 a3, uint64_t a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D4E98;
  v6[3] = &unk_100AF21F0;
  v6[4] = a4;
  v8 = a3;
  v7 = a2;
  return sub_10002173C(a1, 93, a5, v6, 0);
}

uint64_t sub_1003D4E98(uint64_t a1)
{
  v2 = sub_1002D3618(*(a1 + 32));
  v13 = v2;
  v14 = WORD2(v2);
  v3 = sub_1000E1FE8(&v13);
  if (v3)
  {
    v4 = sub_1002A88DC(v3, *(a1 + 44), *(a1 + 40));
    v5 = v4;
    if (*(a1 + 40) || v4 != 408)
    {
LABEL_8:
      if (!v5)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = 101;
  }

  v6 = sub_100255884(*(a1 + 32));
  if (v6)
  {
    v5 = sub_1002A88DC(v6, *(a1 + 44), *(a1 + 40));
    goto LABEL_8;
  }

LABEL_9:
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10004D9B0(*(a1 + 32));
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = *(a1 + 40);
    *buf = 136315650;
    v16 = p_p;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not config dual core phy statistics for address %s, config %d, result %d", buf, 0x18u);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  return v5;
}

uint64_t sub_1003D501C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 293);
}

uint64_t sub_1003D506C(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D50E8;
  v3[3] = &unk_100AF2210;
  v3[4] = a1;
  v4 = a2;
  return sub_10002173C(a1, 293, a2, v3, 0);
}

uint64_t sub_1003D50E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 1376);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fEnabledFilteringFeatures: %x", v5, 8u);
  }

  return sub_1002A19C4();
}

uint64_t sub_1003D51C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 230);
}

uint64_t sub_1003D5210(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D5290;
  v5[3] = &unk_100AF2250;
  v5[4] = a2;
  v5[5] = a3;
  v6 = a4;
  return sub_10002173C(a1, 230, a4, v5, 0);
}

uint64_t sub_1003D5290(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (BYTE6(v2))
  {
    if (BYTE6(v2) != 1 || (~v2 & 0xC00000000000) != 0)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        v6 = 136446210;
        v7 = "BTAddressIsPublic(address) || BTAddressIsStatic(address)";
        _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu);
        v2 = *(a1 + 32);
      }
    }
  }

  LOBYTE(v6) = BYTE5(v2);
  BYTE1(v6) = BYTE4(v2);
  BYTE2(v6) = BYTE3(v2);
  HIBYTE(v6) = BYTE2(v2);
  LOBYTE(v7) = BYTE1(v2);
  BYTE1(v7) = v2;
  return sub_1002A1B78((v2 & 0xFF000000000000) != 0, &v6, *(a1 + 40));
}

uint64_t sub_1003D53C8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 286);
}

uint64_t sub_1003D5418(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D5494;
  v5[3] = &unk_100AF2210;
  v5[4] = a2;
  v6 = a4;
  return sub_10002173C(a1, 286, a4, v5, 0);
}

uint64_t sub_1003D5494(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (BYTE6(v2))
  {
    if (BYTE6(v2) != 1 || (~v2 & 0xC00000000000) != 0)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        v6 = 136446210;
        v7 = "BTAddressIsPublic(address) || BTAddressIsStatic(address)";
        _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu);
        v2 = *(a1 + 32);
      }
    }
  }

  return sub_1002A1ADC(0, v2);
}

uint64_t sub_1003D5594(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 231);
}

uint64_t sub_1003D55E4(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D565C;
  v4[3] = &unk_100AF2210;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 231, a3, v4, 0);
}

uint64_t sub_1003D565C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (BYTE6(v2))
  {
    if (BYTE6(v2) != 1 || (~v2 & 0xC00000000000) != 0)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        v6 = 136446210;
        v7 = "BTAddressIsPublic(address) || BTAddressIsStatic(address)";
        _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v6, 0xCu);
        v2 = *(a1 + 32);
      }
    }
  }

  LOBYTE(v6) = BYTE5(v2);
  BYTE1(v6) = BYTE4(v2);
  BYTE2(v6) = BYTE3(v2);
  HIBYTE(v6) = BYTE2(v2);
  LOBYTE(v7) = BYTE1(v2);
  BYTE1(v7) = v2;
  return sub_1002A1C10((v2 & 0xFF000000000000) != 0, &v6);
}

uint64_t sub_1003D578C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 232);
}

uint64_t sub_1003D57DC(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D5854;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 232, a2, v3, 0);
}

uint64_t sub_1003D5870(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 234);
}

uint64_t sub_1003D58C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 234);
}

uint64_t sub_1003D5910(uint64_t a1, __int128 *a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D59C4;
  v4[3] = &unk_100AF22F0;
  v4[4] = a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a3;
  return sub_10002173C(a1, 234, a3, v4, 0);
}

uint64_t sub_1003D59C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[1368] != 1)
  {
    return 114;
  }

  v4[0] = 0;
  v4[1] = 0;
  v2 = sub_10007A930((a1 + 40), v4);
  if ((*(*v1 + 2824))(v1))
  {
    return sub_100073DCC(v4, v2);
  }

  if ((*(*v1 + 2816))(v1))
  {
    return sub_1002A1E58(v4);
  }

  return sub_1002A1DC0(v4);
}

uint64_t sub_1003D5B5C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 186);
}

uint64_t sub_1003D5BAC(uint64_t a1, uint64_t a2, char a3, char a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D5C30;
  v6[3] = &unk_100AF2230;
  v6[4] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return sub_10002173C(a1, 186, a5, v6, 0);
}

uint64_t sub_1003D5C30(uint64_t a1)
{
  if (*(a1 + 42))
  {
    v1 = sub_1003D5B5C;
  }

  else
  {
    v1 = 0;
  }

  return sub_10029FD68(*(a1 + 32), *(a1 + 40), *(a1 + 41), v1);
}

uint64_t sub_1003D5C5C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "leaBuffersize %d", v6, 8u);
  }

  LOBYTE(dword_100B6D418) = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 188);
}

uint64_t sub_1003D5D38(uint64_t a1, void *a2)
{
  if (sub_1004106D0(a1, 0x1388u) || sub_1004106D0(a1, 0xBB8u))
  {
    result = 0;
    *a2 = 120;
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003D5E08;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a2;
    return sub_10002173C(a1, 188, 1, &stru_100AF2310, v5);
  }

  return result;
}

uint64_t sub_1003D5E1C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 189);
}

uint64_t sub_1003D5E6C(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D5EE4;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 189, a3, v4, 0);
}

uint64_t sub_1003D5F08(uint64_t a1, char a2)
{
  LOBYTE(dword_100B6D418) = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 239);
}

uint64_t sub_1003D5F60(uint64_t a1, _BYTE *a2)
{
  if ((*(*a1 + 2776))(a1))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003D6040;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a2;
    return sub_10002173C(a1, 239, 1, &stru_100AF2350, v5);
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1003D6054(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 240);
}

uint64_t sub_1003D60A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!(*(*a1 + 2776))(a1))
  {
    return 1;
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 72);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7 = sub_100020304(a1, 240);
    *buf = 136446210;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if (sub_100020164(a1, 240))
  {
    v8 = sub_1003D62E0(a1);
    if (!v8)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      v9 = sub_1002A2008(a2, a3);
      sub_100022214(buf);
      if (v9)
      {
        v8 = 1;
      }

      else
      {
        if (qword_100B50AA0 != -1)
        {
          sub_100826FD0();
        }

        v10 = sub_100021BDC(off_100B50A98, 240);
        (*(*a1 + 624))(a1, 1);
        v8 = v10 != 0;
      }

      sub_10002249C(buf);
    }

    sub_100022684(a1, 0xF0u);
  }

  else
  {
    v8 = 2;
  }

  sub_1000088CC(v12);
  return v8;
}

uint64_t sub_1003D62E0(uint64_t a1)
{
  if (!(*(*a1 + 2776))(a1))
  {
    return 1;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D678C;
  v4[3] = &unk_100AF2390;
  v4[4] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D67A8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  return sub_10002173C(a1, 238, 1, v4, v3);
}

uint64_t sub_1003D63E0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 242);
}

uint64_t sub_1003D6430(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  if (!(*(*a1 + 2776))(a1))
  {
    return 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003D650C;
  v9[3] = &unk_100AF2230;
  v9[4] = a2;
  v10 = a3;
  v11 = a4;
  return sub_10002173C(a1, 242, a4, v9, 0);
}

uint64_t sub_1003D6534(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 243);
}

uint64_t sub_1003D6584(uint64_t a1)
{
  if (!(*(*a1 + 2776))(a1))
  {
    return 1;
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D665C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  return sub_10002173C(a1, 243, 1, &stru_100AF2370, v3);
}

uint64_t sub_1003D6670(_DWORD *a1, int a2)
{
  if (!(*(*a1 + 2776))(a1))
  {
    return 1;
  }

  v4 = a1[343];
  if (!a2)
  {
    if ((v4 & 0x10000) != 0)
    {
      v5 = v4 & 0xFFFEFFFF;
      goto LABEL_9;
    }

    return 0;
  }

  if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  v5 = v4 | 0x10000;
LABEL_9:
  a1[343] = v5;
  v7 = *(*a1 + 336);

  return v7(a1, 1);
}

uint64_t sub_1003D673C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 238);
}

uint64_t sub_1003D67B8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 244);
}

uint64_t sub_1003D6808(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, char a6, char a7, char a8, uint64_t a9)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D68DC;
  v11[3] = &unk_100AF23B0;
  v12 = a3;
  v11[4] = a2;
  v11[5] = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v11[6] = a9;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003D6930;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  return sub_10002173C(a1, 244, 1, v11, v10);
}

uint64_t sub_1003D6964(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 245);
}

uint64_t sub_1003D69B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, char a6, char a7, uint64_t a8)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003D6A44;
  v9[3] = &unk_100AF23D0;
  v10 = a3;
  v9[4] = a2;
  v9[5] = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v9[6] = a8;
  return sub_10002173C(a1, 245, 1, v9, &stru_100AF23F0);
}

uint64_t sub_1003D6A9C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 252);
}

uint64_t sub_1003D6B88(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 255);
}

uint64_t sub_1003D6BD8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D6C98;
  v6[3] = &unk_100AF2430;
  v7 = a2;
  v8 = a3;
  v6[4] = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D6CBC;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  return sub_10002173C(a1, 255, 1, v6, v5);
}

uint64_t sub_1003D6CF0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 213);
}

uint64_t sub_1003D6D40(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v14 = a2;
  v16 = sub_10000C798(a1, a2);
  if (!(*(*v16 + 632))(v16))
  {
    return 2;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003D6E50;
  v18[3] = &unk_100AF2450;
  v19 = v14;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  return sub_10002173C(a1, 213, 1, v18, 0);
}

uint64_t sub_1003D6E84(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 214);
}

uint64_t sub_1003D6ED4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11)
{
  v17 = a2;
  v19 = sub_10000C798(a1, a2);
  if (!(*(*v19 + 632))(v19))
  {
    return 2;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003D6FF4;
  v21[3] = &unk_100AF2470;
  v22 = v17;
  v23 = a3;
  v24 = a4;
  v21[4] = a5;
  v21[5] = a6;
  v25 = a8;
  v26 = a9;
  v21[6] = a7;
  v21[7] = a10;
  v27 = a11;
  return sub_10002173C(a1, 214, 1, v21, 0);
}

uint64_t sub_1003D7050(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 253);
}

uint64_t sub_1003D70A0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, char a10, char a11, char a12)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003D714C;
  v13[3] = &unk_100AF2410;
  v14 = a3;
  v13[4] = a2;
  v13[5] = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v13[6] = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  return sub_10002173C(a1, 253, 1, v13, 0);
}

uint64_t sub_1003D71B4(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Advanced match filter : Total %d  remainaing: %d", v8, 0xEu);
  }

  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 259);
}

uint64_t sub_1003D72A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D7338;
  v4[3] = &unk_100AE0860;
  v4[4] = a2;
  v4[5] = a3;
  return sub_10002173C(a1, 259, 1, &stru_100AF2490, v4);
}

uint64_t sub_1003D7338(uint64_t result)
{
  **(result + 32) = xmmword_100B6D420;
  **(result + 40) = BYTE1(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003D735C(unsigned int a1, unsigned int a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10, int a11, int a12, int a13, unsigned int a14, unsigned int a15, unsigned int a16, unsigned int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58)
{
  v61 = __PAIR64__(a7, a6);
  v64 = __PAIR64__(a3, a2);
  v58 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v67 = v64;
    v68 = 1024;
    v69 = HIDWORD(v64);
    v70 = 1024;
    v71 = a4;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "getLPCoreStatisticsCB : TotalTime %d:%d:%d ", buf, 0x14u);
  }

  *&xmmword_100B6D420 = v64;
  DWORD2(xmmword_100B6D420) = a4;
  HIDWORD(xmmword_100B6D420) = a5;
  *&xmmword_100B6D430 = v61;
  DWORD2(xmmword_100B6D430) = a8;
  HIDWORD(xmmword_100B6D430) = a9;
  dword_100B6D440 = a10;
  dword_100B6D444 = a11;
  dword_100B6D448 = a12;
  dword_100B6D44C = a13;
  *&xmmword_100B6D450 = __PAIR64__(a15, a14);
  *(&xmmword_100B6D450 + 1) = __PAIR64__(a17, a16);
  dword_100B6D460 = a18;
  dword_100B6D464 = a19;
  dword_100B6D468 = a20;
  dword_100B6D46C = a21;
  dword_100B6D470 = a22;
  dword_100B6D474 = a23;
  dword_100B6D478 = a24;
  dword_100B6D47C = a25;
  dword_100B6D480 = a26;
  dword_100B6D484 = a27;
  dword_100B6D488 = a28;
  dword_100B6D48C = a29;
  dword_100B6D490 = a30;
  dword_100B6D494 = a31;
  dword_100B6D498 = a32;
  dword_100B6D49C = a33;
  dword_100B6D4A0 = a34;
  dword_100B6D4A4 = a35;
  dword_100B6D4A8 = a36;
  dword_100B6D4AC = a37;
  dword_100B6D4B0 = a38;
  dword_100B6D4B4 = a39;
  dword_100B6D4B8 = a40;
  dword_100B6D4BC = a41;
  dword_100B6D4C0 = a42;
  dword_100B6D4C4 = a43;
  dword_100B6D4C8 = a44;
  dword_100B6D4CC = a45;
  dword_100B6D4D0 = a46;
  dword_100B6D4D4 = a47;
  dword_100B6D4D8 = a48;
  dword_100B6D4DC = a49;
  dword_100B6D4E0 = a50;
  dword_100B6D4E4 = a51;
  dword_100B6D4E8 = a52;
  dword_100B6D4EC = a53;
  dword_100B6D4F0 = a54;
  dword_100B6D4F4 = a55;
  dword_100B6D4F8 = a56;
  dword_100B6D4FC = a57;
  dword_100B6D500 = a58;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 261);
}

uint64_t sub_1003D76A0()
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  if (qword_100B51078 != -1)
  {
    sub_1008270D8();
  }

  v12 = 0u;
  v13 = 0u;
  sub_1007A5BC0(off_100B51070, &v12);
  sub_1002D9BF4(0x5Fu, 0, &v6);
  v5[6] = v12;
  v5[7] = v13;
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[5] = v11;
  result = sub_10000F034(v0, v1);
  if (result)
  {
    v4 = sub_10000F034(result, v3);
    return (*(*v4 + 216))(v4, v5);
  }

  return result;
}

uint64_t sub_1003D7768(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, uint64_t a34)
{
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1003D78A8;
  v62[3] = &unk_100AF24D0;
  v63 = a2;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1003D78C4;
  v35[3] = &unk_100AF24F0;
  v35[4] = a3;
  v35[5] = a4;
  v35[6] = a5;
  v35[7] = a6;
  v35[8] = a7;
  v35[9] = a8;
  v36 = a9;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v45 = a18;
  v46 = a19;
  v47 = a20;
  v48 = a21;
  v49 = a22;
  v50 = a23;
  v51 = a24;
  v52 = a25;
  v53 = a26;
  v54 = a27;
  v55 = a28;
  v56 = a29;
  v57 = a30;
  v58 = a31;
  v59 = a32;
  v60 = a33;
  v61 = a34;
  return sub_10002173C(a1, 261, 1, v62, v35);
}

uint64_t sub_1003D78C4(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = DWORD1(xmmword_100B6D420);
  v2 = *(result + 56);
  **(result + 48) = DWORD2(xmmword_100B6D420);
  *v2 = HIDWORD(xmmword_100B6D420);
  v3 = *(result + 72);
  **(result + 64) = xmmword_100B6D430;
  *v3 = DWORD1(xmmword_100B6D430);
  v4 = *(result + 88);
  **(result + 80) = DWORD2(xmmword_100B6D430);
  *v4 = HIDWORD(xmmword_100B6D430);
  v5 = *(result + 104);
  **(result + 96) = dword_100B6D440;
  *v5 = dword_100B6D444;
  v6 = *(result + 120);
  **(result + 112) = dword_100B6D448;
  *v6 = dword_100B6D44C;
  v7 = *(result + 136);
  **(result + 128) = xmmword_100B6D450;
  *v7 = DWORD1(xmmword_100B6D450);
  v8 = *(result + 152);
  **(result + 144) = DWORD2(xmmword_100B6D450);
  *v8 = HIDWORD(xmmword_100B6D450);
  v9 = *(result + 168);
  **(result + 160) = dword_100B6D460;
  *v9 = dword_100B6D464;
  v10 = *(result + 184);
  **(result + 176) = dword_100B6D468;
  *v10 = dword_100B6D46C;
  v11 = *(result + 200);
  **(result + 192) = dword_100B6D470;
  *v11 = dword_100B6D474;
  v12 = *(result + 216);
  **(result + 208) = dword_100B6D478;
  *v12 = dword_100B6D47C;
  v13 = *(result + 232);
  **(result + 224) = dword_100B6D480;
  *v13 = dword_100B6D484;
  v14 = *(result + 248);
  **(result + 240) = dword_100B6D488;
  *v14 = dword_100B6D48C;
  v15 = *(result + 264);
  **(result + 256) = dword_100B6D490;
  *v15 = dword_100B6D494;
  v16 = *(result + 280);
  **(result + 272) = dword_100B6D498;
  *v16 = dword_100B6D49C;
  v17 = *(result + 296);
  **(result + 288) = dword_100B6D4A0;
  *v17 = dword_100B6D4A4;
  v18 = *(result + 312);
  **(result + 304) = dword_100B6D4A8;
  *v18 = dword_100B6D4AC;
  v19 = *(result + 328);
  **(result + 320) = dword_100B6D4B0;
  *v19 = dword_100B6D4B4;
  v20 = *(result + 344);
  **(result + 336) = dword_100B6D4B8;
  *v20 = dword_100B6D4BC;
  v21 = *(result + 360);
  **(result + 352) = dword_100B6D4C0;
  *v21 = dword_100B6D4C4;
  v22 = *(result + 376);
  **(result + 368) = dword_100B6D4C8;
  *v22 = dword_100B6D4CC;
  v23 = *(result + 392);
  **(result + 384) = dword_100B6D4D0;
  *v23 = dword_100B6D4D4;
  v24 = *(result + 408);
  **(result + 400) = dword_100B6D4D8;
  *v24 = dword_100B6D4DC;
  v25 = *(result + 424);
  **(result + 416) = dword_100B6D4E0;
  *v25 = dword_100B6D4E4;
  v26 = *(result + 440);
  **(result + 432) = dword_100B6D4E8;
  *v26 = dword_100B6D4EC;
  v27 = *(result + 456);
  **(result + 448) = dword_100B6D4F0;
  *v27 = dword_100B6D4F4;
  v28 = *(result + 472);
  **(result + 464) = dword_100B6D4F8;
  *v28 = dword_100B6D4FC;
  **(result + 480) = dword_100B6D500;
  return result;
}

uint64_t sub_1003D7B0C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BD_VSC_LE_META_GET_SCAN_STATS completed status %d.", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 262);
}

uint64_t sub_1003D7BF4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 254);
}

uint64_t sub_1003D7C58(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D7D10;
  v4[3] = &unk_100AF2270;
  v5 = a2;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D7D28;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  return sub_10002173C(a1, 254, 1, v4, v3);
}

uint64_t sub_1003D7D5C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 257);
}

uint64_t sub_1003D7DAC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D7E6C;
  v6[3] = &unk_100AF2510;
  v6[4] = a1;
  v6[5] = a3;
  v7 = a2;
  v8 = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D7F84;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  return sub_10002173C(a1, 257, 1, v6, v5);
}

uint64_t sub_1003D7E6C(uint64_t a1)
{
  if ((*(*(a1 + 32) + 800) - 22) > 0x7B9)
  {
    v2 = *(a1 + 48);

    return sub_1002A26A4(v2);
  }

  else
  {
    sub_10009A66C(*(a1 + 40));
    return sub_1000AECE8();
  }
}

uint64_t sub_1003D7FB8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 205);
}

uint64_t sub_1003D8020(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 251);
}

uint64_t sub_1003D8070(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D80E8;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 251, 1, v3, 0);
}

uint64_t sub_1003D8100(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 251);
}

uint64_t sub_1003D8150(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D81CC;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 256, 1, v4, 0);
}

uint64_t sub_1003D81F0(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D826C;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 256, 1, v4, 0);
}

uint64_t sub_1003D8290(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 248);
}

uint64_t sub_1003D82E0(_DWORD *a1, int a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v4 = sub_100007F88(v15, (a1 + 18));
  v6 = sub_10000C7D0(v4, v5);
  if (*(v6 + 800) && *(sub_10000C7D0(v6, v7) + 800) <= 0x7CFu)
  {
    v8 = a1[343];
    if (a2)
    {
      if ((v8 & 0x80000) == 0)
      {
        v9 = v8 | 0x80000;
LABEL_12:
        a1[343] = v9;
        v10 = (*(*a1 + 336))(a1, 1);
        goto LABEL_7;
      }
    }

    else if ((v8 & 0x80000) != 0)
    {
      v9 = v8 & 0xFFF7FFFF;
      goto LABEL_12;
    }

    v11 = 0;
    goto LABEL_8;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003D841C;
  v13[3] = &unk_100AF2270;
  v14 = a2;
  v10 = sub_10002173C(a1, 248, 1, v13, 0);
LABEL_7:
  v11 = v10;
LABEL_8:
  sub_1000088CC(v15);
  return v11;
}

uint64_t sub_1003D8434(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 246);
}

uint64_t sub_1003D8484(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D8508;
  v5[3] = &unk_100AF2430;
  v5[4] = a2;
  v6 = a3;
  v7 = a4;
  return sub_10002173C(a1, 246, a4, v5, 0);
}

uint64_t sub_1003D8508(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v1 = sub_1003D8434;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A29A8(*(a1 + 32), *(a1 + 40) != 0, 0xBB8u, v1);
}

uint64_t sub_1003D853C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 193);
}

uint64_t sub_1003D858C(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D8604;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 193, a3, v4, 0);
}

uint64_t sub_1003D8628(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 194);
}

uint64_t sub_1003D8678(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D86F0;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 194, a3, v4, 0);
}

uint64_t sub_1003D8714(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 21);
}

uint64_t sub_1003D8764(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D87DC;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 21, a3, v4, 0);
}

uint64_t sub_1003D8804(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 201);
}

uint64_t sub_1003D8854(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = sub_10000C7D0(a1, a2);
  if ((*(*v6 + 2280))(v6))
  {
    v7 = qword_100BCE8D8;
    v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "enableSimultaneousA2DPandACLMode depreciated", buf, 2u);
      return 0;
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003D8978;
    v10[3] = &unk_100AF2330;
    v11 = v4;
    v12 = a3;
    return sub_10002173C(a1, 201, a3, v10, 0);
  }

  return result;
}

uint64_t sub_1003D899C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 25);
}

uint64_t sub_1003D89EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 72);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7 = sub_100020304(a1, 25);
    *buf = 136446210;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if (sub_100020164(a1, 25))
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    if (a3)
    {
      v8 = sub_1003D899C;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_1002A2E90(a2, v8);
    sub_100022214(buf);
    if (v9)
    {
      if (v9 == 101)
      {
        a3 = 3;
      }

      else if (v9 == 122)
      {
        a3 = 7;
      }

      else
      {
        a3 = 1;
      }
    }

    else if (a3)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_100826FD0();
      }

      a3 = sub_100021BDC(off_100B50A98, 25) != 0;
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008270EC();
    }

LABEL_20:
    sub_100022684(a1, 0x19u);
    sub_10002249C(buf);
    goto LABEL_21;
  }

  a3 = 2;
LABEL_21:
  sub_1000088CC(v11);
  return a3;
}

uint64_t sub_1003D8BE8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 199);
}

uint64_t sub_1003D8C38(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D8CBC;
  v5[3] = &unk_100AF2430;
  v5[4] = a2;
  v6 = a3;
  v7 = a4;
  return sub_10002173C(a1, 199, a4, v5, 0);
}

uint64_t sub_1003D8CBC(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v1 = sub_1003D8BE8;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A008C(*(a1 + 32), *(a1 + 40), v1);
}

uint64_t sub_1003D8CE4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 235);
}

uint64_t sub_1003D8D34(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D8DAC;
  v4[3] = &unk_100AF2210;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 235, a3, v4, 0);
}

uint64_t sub_1003D8DAC(uint64_t a1)
{
  v3 = -21335;
  v4 = -80;
  if (*(a1 + 40))
  {
    v1 = sub_1003D8CE4;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A2A98(*(a1 + 32), &v3, 3, v1);
}

uint64_t sub_1003D8E04(uint64_t a1, char a2, char a3)
{
  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 236);
}

uint64_t sub_1003D8E64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003D8F54;
  v15[3] = &unk_100AF2570;
  v16 = a3;
  v15[4] = a1;
  v15[5] = a2;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003D90B4;
  v14[3] = &unk_100AE0860;
  v14[4] = a4;
  v14[5] = a5;
  return sub_10002173C(a1, 236, 1, v15, v14);
}

uint64_t sub_1003D8F54(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  LOBYTE(a2) = *(a1 + 48);
  LODWORD(v2) = vcvtpd_s64_f64(*&a2 / 1.25);
  if ((*(*v4 + 2808))(v4))
  {
    return sub_1002A2C00(*(a1 + 40), v2);
  }

  v6 = (*(*v4 + 2800))(v4);
  v7 = *(a1 + 40);
  if (v6)
  {
    return sub_1002A2D3C(v7);
  }

  return sub_1002A2B68(v7);
}

uint64_t sub_1003D90B4(uint64_t result)
{
  **(result + 32) = xmmword_100B6D420;
  **(result + 40) = BYTE1(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003D90D8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 237);
}

uint64_t sub_1003D9128(uint64_t a1, uint64_t a2, int a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 72);
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6 = sub_100020304(a1, 237);
    *buf = 136446210;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if ((sub_100020164(a1, 237) & 1) == 0)
  {
    v8 = 2;
    goto LABEL_20;
  }

  v15 = 0;
  sub_1000216B4(&v15);
  if (!(*(*a1 + 2808))(a1))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Error sending SensorIncreaseScanParams, sensor track V3 not supported ";
      v11 = v9;
      v12 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = 0;
      v10 = "Error sending SensorIncreaseScanParams, rssiIncreaseScanThreshold is disabled : %d ";
      v11 = v13;
      v12 = 8;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v7 = sub_1002A2CB0() == 0;
LABEL_14:
  sub_100022214(&v15);
  if (v7)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100826FD0();
    }

    v8 = sub_100021BDC(off_100B50A98, 237) != 0;
  }

  else
  {
    v8 = 1;
  }

  sub_100022684(a1, 0xEDu);
  sub_10002249C(&v15);
LABEL_20:
  sub_1000088CC(v16);
  return v8;
}

void sub_1003D93A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D93D4(uint64_t a1, char a2, char a3)
{
  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 236);
}

uint64_t sub_1003D9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D94EC;
  v6[3] = &unk_100AF2590;
  v6[4] = a1;
  v6[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003D9628;
  v5[3] = &unk_100AE0860;
  v5[4] = a3;
  v5[5] = a4;
  return sub_10002173C(a1, 236, 1, v6, v5);
}

uint64_t sub_1003D94EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(*v2 + 2808))(v2))
  {
    return sub_1002A2C00(*(a1 + 40), 0);
  }

  v4 = (*(*v2 + 2800))(v2);
  v5 = *(a1 + 40);
  if (v4)
  {
    return sub_1002A2D3C(v5);
  }

  return sub_1002A2B68(v5);
}

uint64_t sub_1003D9628(uint64_t result)
{
  **(result + 32) = xmmword_100B6D420;
  **(result + 40) = BYTE1(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003D964C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 247);
}

uint64_t sub_1003D969C(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  if (!a2)
  {
    return 3;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003D973C;
  v9[3] = &unk_100AF25B0;
  v9[4] = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  return sub_10002173C(a1, 247, 1, v9, 0);
}

uint64_t sub_1003D973C(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 32);
  v2 = *v1;
  v4[0] = v1 + 1;
  v4[1] = *(a1 + 40);
  LODWORD(v5) = *(a1 + 48);
  BYTE4(v5) = v2;
  return sub_1002A303C(v4);
}

uint64_t sub_1003D9794(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 30);
}

uint64_t sub_1003D97E4(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D985C;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 30, 1, v3, 0);
}

uint64_t sub_1003D9874(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 31);
}

uint64_t sub_1003D98C4(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003D993C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 31, 1, v3, 0);
}

uint64_t sub_1003D9958(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 32);
}

uint64_t sub_1003D99A8(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v8 = sub_10000C7D0(a1, a2);
  if ((*(*v8 + 2280))(v8))
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    sub_1000216B4(&v17);
    if (sub_1000ABD24(a2))
    {
      v18 = *(a2 + 49);
      v19 = *(a2 + 53);
      v9 = *(a2 + 324);
      v10 = *a2;
      sub_100022214(&v17);
      v11 = (*(*a1 + 2296))(a1, &v18, a3, 1, v9, a3);
      if (v11)
      {
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109888;
          v21 = v11;
          v22 = 1024;
          v23 = v10;
          v24 = 1024;
          v25 = a3;
          v26 = 1024;
          v27 = v9;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "setPriorityLe(setUnifiedPriority) failed : result = %d, lmHandle = %d, basicHighPriority = %d, connectionEventsThreshold = %d", buf, 0x1Au);
        }
      }

      else
      {
        sub_1000618AC(&v17);
        *(a2 + 323) = a3;
        sub_100022214(&v17);
        v11 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082715C();
      }

      v11 = 122;
    }

    sub_10002249C(&v17);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1003D9C24;
    v14[3] = &unk_100AF2430;
    v14[4] = a2;
    v15 = a3;
    v16 = a4;
    return sub_10002173C(a1, 32, 1, v14, 0);
  }

  return v11;
}

uint64_t sub_1003D9C48(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 42);
}

uint64_t sub_1003D9C98(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = sub_10000C7D0(a1, a2);
  if ((*(*v6 + 2280))(v6))
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    sub_1000216B4(&v14);
    if (sub_1000ABD24(a2))
    {
      v15 = *(a2 + 49);
      v16 = *(a2 + 53);
      v7 = *(a2 + 323);
      v8 = *a2;
      sub_100022214(&v14);
      v9 = (*(*a1 + 2296))(a1, &v15, 1, 1, a3, v7);
      if (v9)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109888;
          v18 = v9;
          v19 = 1024;
          v20 = v8;
          v21 = 1024;
          v22 = v7;
          v23 = 1024;
          v24 = a3;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "setPrioritizationThreshold(setUnifiedPriority) failed : result = %d, lmHandle = %d, basicHighPriority = %d, connectionEventsThreshold = %d", buf, 0x1Au);
        }
      }

      else
      {
        sub_1000618AC(&v14);
        *(a2 + 324) = a3;
        sub_100022214(&v14);
        v9 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008271CC();
      }

      v9 = 122;
    }

    sub_10002249C(&v14);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003D9F0C;
    v12[3] = &unk_100AF2210;
    v12[4] = a2;
    v13 = a3;
    return sub_10002173C(a1, 42, 1, v12, 0);
  }

  return v9;
}

uint64_t sub_1003D9F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C7D0(a1, a2);
  if (!(*(*v8 + 2280))(v8))
  {
    return 1;
  }

  v9 = (*(*a1 + 2320))(a1, a2, a3, 1, a4, 0, 0, 0, 0);
  if (v9 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082723C();
  }

  return v9;
}

uint64_t sub_1003DA02C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 204);
}

uint64_t sub_1003DA07C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DA0F4;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 204, 1, v3, 0);
}

uint64_t sub_1003DA10C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 56);
}

uint64_t sub_1003DA15C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  v11 = 0;
  v6 = off_100B508A8;
  sub_10004DFB4(v12, v5);
  if (sub_1000C4FCC(v6, v12, &v11))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003DA2A0;
    v9[3] = &unk_100AF2210;
    v9[4] = v11;
    v10 = a3;
    v7 = sub_10002173C(a1, 56, 1, v9, 0);
  }

  else
  {
    v7 = 7;
  }

  return v7;
}

uint64_t sub_1003DA2C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 215);
}

uint64_t sub_1003DA310(uint64_t a1, char a2, __int16 a3, char a4, __int16 a5, char a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003DA398;
  v7[3] = &unk_100AF2450;
  v10 = a2;
  v8 = a3;
  v11 = a4;
  v9 = a5;
  v12 = a6;
  return sub_10002173C(a1, 215, 1, v7, 0);
}

uint64_t sub_1003DA3C4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 218);
}

uint64_t sub_1003DA414(uint64_t a1, char a2, __int16 a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003DA494;
  v5[3] = &unk_100AF24D0;
  v7 = a2;
  v6 = a3;
  v8 = a4;
  return sub_10002173C(a1, 218, 1, v5, 0);
}

uint64_t sub_1003DA4B8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 226);
}

uint64_t sub_1003DA508(uint64_t a1, __int16 a2, char a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003DA58C;
  v5[3] = &unk_100AF25D0;
  v5[4] = a1;
  v6 = a2;
  v7 = a4;
  v8 = a3;
  return sub_10002173C(a1, 226, 1, v5, 0);
}

uint64_t sub_1003DA58C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100020304(*(a1 + 32), 226);
    v4 = *(a1 + 40);
    v5 = *(a1 + 42);
    v7 = 136446722;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending: %{public}s LM Handle 0x%02x  enable %d", &v7, 0x18u);
  }

  return sub_1002A1820();
}

uint64_t sub_1003DA678(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 227);
}

uint64_t sub_1003DA6C8(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DA740;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 227, 1, v3, 0);
}

uint64_t sub_1003DA760(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 217);
}

uint64_t sub_1003DA7B0(uint64_t a1, char a2, __int16 a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003DA82C;
  v4[3] = &unk_100AF2610;
  v6 = a2;
  v5 = a3;
  return sub_10002173C(a1, 217, 1, v4, 0);
}

uint64_t sub_1003DA84C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 219);
}

uint64_t sub_1003DA89C(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003DA918;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 219, 1, v4, 0);
}

uint64_t sub_1003DA938(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 221);
}

uint64_t sub_1003DA988(uint64_t a1, int a2, int a3, int a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003DAA14;
  v7[3] = &unk_100AF2250;
  if (!a2)
  {
    a3 = 0;
  }

  v7[4] = a1;
  v10 = a2;
  if (!a2)
  {
    a4 = 0;
  }

  v8 = a3;
  v9 = a4;
  return sub_10002173C(a1, 221, 1, v7, 0);
}

uint64_t sub_1003DAA14(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100020304(*(a1 + 32), 221);
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);
    v8 = 136446978;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending: %{public}s enable %d, duration %d, interval %d", &v8, 0x1Eu);
  }

  return sub_1002A12F4();
}

uint64_t sub_1003DAB00(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 222);
}

uint64_t sub_1003DAB50(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DABC8;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 222, 1, v3, 0);
}

uint64_t sub_1003DABE0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 223);
}

uint64_t sub_1003DAC30(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003DACAC;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 223, 1, v4, 0);
}

uint64_t sub_1003DACCC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 224);
}

uint64_t sub_1003DAD1C(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DAD94;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 224, 1, v3, 0);
}

uint64_t sub_1003DADAC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 278);
}

uint64_t sub_1003DADFC(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  if ((*(*a1 + 3272))(a1))
  {
    v14 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_1008272AC();
    }

    v8 = off_100B508A8;
    sub_10004DFB4(v15, v7);
    if (sub_1000C4FCC(v8, v15, &v14))
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1003DAF90;
      v11[3] = &unk_100AF2430;
      v12 = a3;
      v13 = a4;
      v11[4] = v14;
      v9 = sub_10002173C(a1, 278, 1, v11, 0);
    }

    else
    {
      v9 = 7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1003DAF90(uint64_t a1)
{
  v2 = 0;
  v4 = 0;
  if (*(a1 + 40) == 1)
  {
    LOBYTE(v4) = sub_1002B2310(0);
    v2 = 1;
  }

  if (*(a1 + 41) == 1)
  {
    *(&v4 | v2) = sub_1002B2310(1u);
  }

  return sub_1002A9B78();
}

uint64_t sub_1003DB028(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 309);
}

uint64_t sub_1003DB078(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = sub_10000C7D0(a1, a2);
  v7 = a3 & 0xFFFFFFFE;
  if (v4)
  {
    v7 = a3 & 0xFFFFFFFE | v4 | 0xA;
  }

  if ((*(v6 + 800) - 1) >= 0x7CF)
  {
    v8 = a3 & 0xFFFFFFFE | v4;
  }

  else
  {
    v8 = v7;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003DB13C;
  v10[3] = &unk_100AF24D0;
  v11 = v8;
  return sub_10002173C(a1, 309, 1, v10, 0);
}

uint64_t sub_1003DB154(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 311);
}

uint64_t sub_1003DB1A4(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DB21C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 311, 1, v3, 0);
}

uint64_t sub_1003DB234(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 279);
}

uint64_t sub_1003DB284(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*a1 + 3272))(a1))
  {
    v8 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_1008272AC();
    }

    v4 = off_100B508A8;
    sub_10004DFB4(v9, v3);
    if (sub_1000C4FCC(v4, v9, &v8))
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1003DB400;
      v7[3] = &unk_100AF2390;
      v7[4] = v8;
      v5 = sub_10002173C(a1, 279, 1, v7, 0);
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1003DB420(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*a1 + 3272))(a1))
  {
    v8 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_1008272AC();
    }

    v4 = off_100B508A8;
    sub_10004DFB4(v9, v3);
    if (sub_1000C4FCC(v4, v9, &v8))
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1003DB59C;
      v7[3] = &unk_100AF2390;
      v7[4] = v8;
      v5 = sub_10002173C(a1, 279, 1, v7, 0);
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1003DB5F4(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  sub_1003F9BB4(&v19, a1 + 136);
  sub_10000801C(v21);
  v17 = 0;
  v18 = 0;
  sub_10000C704(&v17, a2, a3);
  v15 = 0;
  v16 = 0;
  sub_10000C704(&v15, a4, a5);
  v10 = v19;
  if (v19 != v20)
  {
    do
    {
      (**v10[4])(v10[4], &v17, &v15);
      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v20);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }

  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }

  sub_10000CEDC(&v19, v20[0]);
  sub_1000088CC(v21);
  return 0;
}

void sub_1003DB77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  if (a11)
  {
    sub_10000C808(a11);
  }

  sub_10000CEDC(va, v14);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003DB810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  sub_1003F9BB4(&v15, a1 + 136);
  sub_10000801C(v17);
  v10 = v15;
  if (v15 != v16)
  {
    do
    {
      (*(*v10[4] + 80))(v10[4], a2 & 0xFFFFFFFFFFFFLL, a3, a4, a5);
      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v16);
  }

  sub_10000CEDC(&v15, v16[0]);
  sub_1000088CC(v17);
  return 0;
}

void sub_1003DB920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10000CEDC(va, v6);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_1003DB94C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  v4 = off_100B508A8;

  sub_10076C7F8(v4, a1, v2);
}

uint64_t sub_1003DB9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3632);

  return v2();
}

void sub_1003DBA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  v14 = off_100B508A8;

  sub_10076C8D4(v14, a1, v12, a3, v10, v9, v8, v7);
}

void sub_1003DBAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int a7, char a8, char a9, char a10, __int16 a11, char a12, char a13, char a14)
{
  v14 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v21 = a6;
  if (a7 >= 2)
  {
    v23 = a6 + 1;
    v22 = *a6;
    v24 = a7 - 1;
    v21 = a6;
    v25 = a6 + 1;
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v27 < v22)
      {
        v22 = v26;
        v21 = v23;
      }

      v23 = v25;
      --v24;
    }

    while (v24);
  }

  if (qword_100B508B0 != -1)
  {
    v31 = v17;
    v32 = v16;
    v29 = v18;
    v30 = a8;
    v28 = a2;
    sub_1008272AC();
    v19 = v28;
    v18 = v29;
    a8 = v30;
    v17 = v31;
    v16 = v32;
  }

  sub_100749A5C(off_100B508A8, a1, v19, v18, v17, v16, a6, v14, a8, a9, a10, *v21, a11, 0, a13, a14);
}

void sub_1003DBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v10 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  sub_10076CA04(off_100B508A8, a1, v15, v14, v13, v12, a6, v10, a8, a9);
}

void sub_1003DBCA0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  v6 = off_100B508A8;

  sub_10076CCC4(v6, a1, a2 == 2, v3);
}

uint64_t sub_1003DBD10(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_100432610(a1, a2) + 40);

  return v2();
}

void sub_1003DBD70(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_100B50AA0 != -1)
    {
      sub_100093618();
    }

    v4 = off_100B50A98;

    sub_1005A2678(v4, result, v2);
  }
}

uint64_t sub_1003DBDD4(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3576);

  return v2();
}

uint64_t sub_1003DBE64(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  memset(__dst, 0, 235);
  v4 = sub_10000C7D0(a1, a2);
  if (*(v4 + 800) < 0x7D0u || (v4 = sub_10000C7D0(v4, v5), *(v4 + 800) > 0xF9Fu) || (v4 = sub_10000C7D0(v4, v5), *(v4 + 800) < 0xBB8u))
  {
    v7 = sub_10000C7D0(v4, v5);
    v9 = sub_10041062C(v7, v8);
    if (v9)
    {
      v11 = 217;
    }

    else
    {
      v11 = 215;
    }

    v12 = sub_10000C7D0(v9, v10);
    v14 = sub_10041062C(v12, v13);
    if (!v14)
    {
      v11 -= 2;
    }

    if (*a1 < 0)
    {
      if (v2 >= 0xC9)
      {
        LOWORD(v6) = v11;
      }

      else
      {
        LOWORD(v6) = v11 - 18;
      }
    }

    else
    {
      v16 = sub_10000C798(v14, v15);
      v17 = (*(*v16 + 416))(v16);
      if (v17)
      {
        v19 = sub_10000C7D0(v17, v18);
        v21 = *(v19 + 800) >> 3 < 0x271u || *(sub_10000C7D0(v19, v20) + 800) >> 4 > 0x176u;
      }

      else
      {
        v21 = 0;
      }

      if ((*a1 & 0x60) == 0)
      {
        v21 = 1;
      }

      if (v21)
      {
        v22 = -38;
      }

      else
      {
        v22 = -34;
      }

      LOWORD(v6) = v22 + v11;
    }

    if (v2 != v6)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Chipsets/LEHardwareModel.cpp", 4917, "expectedEnhancedLinkQualityInfoSize == vseSize && expectedEnhancedLinkQualityInfoSize <= sizeof(EnhancedLinkQualityInfo)");
    }
  }

  else if (v2 == 252)
  {
    LOWORD(v6) = 229;
  }

  else
  {
    v27 = *a1;
    if ((v27 & 4) != 0)
    {
      v28 = 217;
    }

    else
    {
      v28 = 203;
    }

    if ((v27 & 0x40) == 0)
    {
      v28 -= 4;
    }

    if (v27 >= 0)
    {
      v6 = v28 - 34;
    }

    else
    {
      v6 = v28;
    }

    v29 = qword_100BCE8D8;
    if (v6 != v2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v30[0] = 67109376;
      v30[1] = v6;
      v31 = 1024;
      v32 = v2;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Variable size fw: expectedEnhancedLinkQualityInfoSize %d, vseSize %d", v30, 0xEu);
      v29 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1008272C0();
    }
  }

  v23 = memcpy(__dst, a1, v6);
  v25 = *sub_10000C7D0(v23, v24);
  (*(v25 + 3584))();
  return v6;
}

uint64_t sub_1003DC12C(void *__src, size_t __n)
{
  memset(&v7[11], 0, 44);
  if (__n == 173)
  {
    v2 = 173;
  }

  else
  {
    v2 = 220;
  }

  memset(v7, 0, 176);
  if (v2 != __n)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Chipsets/LEHardwareModel.cpp", 4937, "(expectedEnhancedLinkQualityHRBInfoSize == vseSize) && expectedEnhancedLinkQualityHRBInfoSize <= sizeof(EnhancedLinkQualityInfo_HRB)");
  }

  v3 = memcpy(v7, __src, __n);
  v5 = *sub_10000C7D0(v3, v4);
  (*(v5 + 3592))();
  return v2;
}

uint64_t sub_1003DC224(uint64_t a1, uint64_t a2)
{
  if (a2 != 130)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Chipsets/LEHardwareModel.cpp", 4954, "expectedEnhancedLinkQualityHRBNoiseFloorInfoSize == vseSize");
  }

  v2 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v2;
  v15 = *(a1 + 128);
  v3 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v3;
  v4 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = sub_10000C7D0(a1, a2);
  (*(*v6 + 3600))(v6, v14, v7, v8, v9, v10, v11, v12);
  return 130;
}

size_t sub_1003DC2F8(_BYTE *__src, int a2)
{
  if (__src[2] == 1)
  {
    v2 = 191;
  }

  else
  {
    v2 = 189;
  }

  if (v2 != a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Chipsets/LEHardwareModel.cpp", 4975, "expectedadditionalBtCoexStatsInfoSize == vseSize && expectedadditionalBtCoexStatsInfoSize <= sizeof(additionalBtCoexStatsInfo)");
  }

  memset(v7, 0, 191);
  v3 = memcpy(v7, __src, v2);
  v5 = *sub_10000C7D0(v3, v4);
  (*(v5 + 3608))();
  return v2;
}

size_t sub_1003DC3F4(const void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10000C7D0(a1, a2);
  if (sub_1004106BC(v4))
  {
    v5 = 27;
  }

  else
  {
    v5 = 24;
  }

  if (v5 != v2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Chipsets/LEHardwareModel.cpp", 4992, "expectedBeamformingStatsSize == vseSize");
  }

  memset(v10, 0, 27);
  v6 = memcpy(v10, a1, v5);
  v8 = *sub_10000C7D0(v6, v7);
  (*(v8 + 3616))();
  return v5;
}

uint64_t sub_1003DC4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3624);

  return v2();
}

void sub_1003DC538(__int128 *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0xFBuLL, 0x10000404B49FA39uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[1];
      v7 = a1[3];
      v3[2] = a1[2];
      v3[3] = v7;
      *v3 = v5;
      v3[1] = v6;
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[7];
      v3[6] = a1[6];
      v3[7] = v10;
      v3[4] = v8;
      v3[5] = v9;
      v11 = a1[8];
      v12 = a1[9];
      v13 = a1[11];
      v3[10] = a1[10];
      v3[11] = v13;
      v3[8] = v11;
      v3[9] = v12;
      v14 = a1[12];
      v15 = a1[13];
      v16 = a1[14];
      *(v3 + 235) = *(a1 + 235);
      v3[13] = v15;
      v3[14] = v16;
      v3[12] = v14;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x4012000000;
      v21[3] = sub_1000422B8;
      v21[4] = nullsub_24;
      v21[5] = "";
      v22 = 0;
      v23 = 0;
      v17 = sub_1000D38CC(&v22, 0);
      v23 = v4;
      v19 = sub_100007EE8(v17, v18);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1003DC6A0;
      v20[3] = &unk_100AE25F0;
      v20[4] = v21;
      v20[5] = v4;
      sub_10000CA94(v19, v20);
      _Block_object_dispose(v21, 8);
    }
  }
}

void sub_1003DC688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003DC6A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

void sub_1003DC708(_OWORD *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0xDCuLL, 0x1000040EC76111FuLL);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      *v3 = *a1;
      v3[1] = v5;
      v6 = a1[2];
      v7 = a1[3];
      v8 = a1[5];
      v3[4] = a1[4];
      v3[5] = v8;
      v3[2] = v6;
      v3[3] = v7;
      v9 = a1[6];
      v10 = a1[7];
      v11 = a1[9];
      v3[8] = a1[8];
      v3[9] = v11;
      v3[6] = v9;
      v3[7] = v10;
      v12 = a1[10];
      v13 = a1[11];
      v14 = a1[12];
      *(v3 + 204) = *(a1 + 204);
      v3[11] = v13;
      v3[12] = v14;
      v3[10] = v12;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x4012000000;
      v19[3] = sub_1003DC868;
      v19[4] = nullsub_247;
      v19[5] = "";
      v20 = 0;
      v21 = 0;
      v15 = sub_1000D38CC(&v20, 1);
      v21 = v4;
      v17 = sub_100007EE8(v15, v16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003DC878;
      v18[3] = &unk_100AE25F0;
      v18[4] = v19;
      v18[5] = v4;
      sub_10000CA94(v17, v18);
      _Block_object_dispose(v19, 8);
    }
  }
}

void sub_1003DC850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003DC868(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003DC878(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

void sub_1003DC8E0(__int128 *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[1];
      v7 = a1[3];
      v3[2] = a1[2];
      v3[3] = v7;
      *v3 = v5;
      v3[1] = v6;
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x4012000000;
      v12[3] = sub_1003DCA10;
      v12[4] = nullsub_248;
      v12[5] = "";
      v13 = 0;
      v14 = 0;
      v8 = sub_1000D38CC(&v13, 2);
      v14 = v4;
      v10 = sub_100007EE8(v8, v9);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1003DCA20;
      v11[3] = &unk_100AE25F0;
      v11[4] = v12;
      v11[5] = v4;
      sub_10000CA94(v10, v11);
      _Block_object_dispose(v12, 8);
    }
  }
}

void sub_1003DC9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003DCA10(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003DCA20(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

void sub_1003DCA88(_OWORD *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0xE0uLL, 0x10000405DF52C91uLL);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      *v3 = *a1;
      v3[1] = v5;
      v6 = a1[2];
      v7 = a1[3];
      v8 = a1[5];
      v3[4] = a1[4];
      v3[5] = v8;
      v3[2] = v6;
      v3[3] = v7;
      v9 = a1[6];
      v10 = a1[7];
      v11 = a1[9];
      v3[8] = a1[8];
      v3[9] = v11;
      v3[6] = v9;
      v3[7] = v10;
      v12 = a1[10];
      v13 = a1[11];
      v14 = a1[13];
      v3[12] = a1[12];
      v3[13] = v14;
      v3[10] = v12;
      v3[11] = v13;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x4012000000;
      v19[3] = sub_1003DCBE0;
      v19[4] = nullsub_249;
      v19[5] = "";
      v20 = 0;
      v21 = 0;
      v15 = sub_1000D38CC(&v20, 3);
      v21 = v4;
      v17 = sub_100007EE8(v15, v16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003DCBF0;
      v18[3] = &unk_100AE25F0;
      v18[4] = v19;
      v18[5] = v4;
      sub_10000CA94(v17, v18);
      _Block_object_dispose(v19, 8);
    }
  }
}

void sub_1003DCBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003DCBE0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003DCBF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

void sub_1003DCC58(_OWORD *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0xDAuLL, 0x10000400A093148uLL);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      *v3 = *a1;
      v3[1] = v5;
      v6 = a1[2];
      v7 = a1[3];
      v8 = a1[5];
      v3[4] = a1[4];
      v3[5] = v8;
      v3[2] = v6;
      v3[3] = v7;
      v9 = a1[6];
      v10 = a1[7];
      v11 = a1[9];
      v3[8] = a1[8];
      v3[9] = v11;
      v3[6] = v9;
      v3[7] = v10;
      v12 = a1[10];
      v13 = a1[11];
      v14 = a1[12];
      *(v3 + 202) = *(a1 + 202);
      v3[11] = v13;
      v3[12] = v14;
      v3[10] = v12;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x4012000000;
      v19[3] = sub_1003DCDB8;
      v19[4] = nullsub_250;
      v19[5] = "";
      v20 = 0;
      v21 = 0;
      v15 = sub_1000D38CC(&v20, 4);
      v21 = v4;
      v17 = sub_100007EE8(v15, v16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003DCDC8;
      v18[3] = &unk_100AE25F0;
      v18[4] = v19;
      v18[5] = v4;
      sub_10000CA94(v17, v18);
      _Block_object_dispose(v19, 8);
    }
  }
}

void sub_1003DCDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003DCDB8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003DCDC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

void sub_1003DCE30(__int128 *a1, uint64_t a2)
{
  if (sub_10000F034(a1, a2))
  {
    v3 = malloc_type_malloc(0xF0uLL, 0x100004019FCA701uLL);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      v6 = a1[2];
      v3[1] = a1[1];
      v3[2] = v6;
      *v3 = v5;
      v7 = a1[3];
      v8 = a1[4];
      v9 = a1[6];
      v3[5] = a1[5];
      v3[6] = v9;
      v3[3] = v7;
      v3[4] = v8;
      v10 = a1[7];
      v11 = a1[8];
      v12 = a1[10];
      v3[9] = a1[9];
      v3[10] = v12;
      v3[7] = v10;
      v3[8] = v11;
      v13 = a1[11];
      v14 = a1[12];
      v15 = a1[14];
      v3[13] = a1[13];
      v3[14] = v15;
      v3[11] = v13;
      v3[12] = v14;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x4012000000;
      v20[3] = sub_1003DCF90;
      v20[4] = nullsub_251;
      v20[5] = "";
      v21 = 0;
      v22 = 0;
      v16 = sub_1000D38CC(&v21, 5);
      v22 = v4;
      v18 = sub_100007EE8(v16, v17);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1003DCFA0;
      v19[3] = &unk_100AE25F0;
      v19[4] = v20;
      v19[5] = v4;
      sub_10000CA94(v18, v19);
      _Block_object_dispose(v20, 8);
    }
  }
}

void sub_1003DCF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003DCF90(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003DCFA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 128))(v3, *(*(a1 + 32) + 8) + 48);
  v4 = *(a1 + 40);

  free(v4);
}

uint64_t sub_1003DD008(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3648);

  return v2();
}

uint64_t sub_1003DD068(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3656);

  return v2();
}

uint64_t sub_1003DD0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3664);

  return v2();
}

uint64_t sub_1003DD164(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3672);

  return v2();
}

uint64_t sub_1003DD1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3680);

  return v2();
}

uint64_t sub_1003DD244(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3688);

  return v2();
}

uint64_t sub_1003DD2AC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3696);

  return v2();
}

uint64_t sub_1003DD324(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3704);

  return v2();
}

uint64_t sub_1003DD38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v16 = sub_10000C7D0(a1, a2);
  v18 = a8;
  return (*(*v16 + 3712))(v16, a1, a2, a3, a4, a5, a6, a7, v18);
}

uint64_t sub_1003DD438(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3720);

  return v2();
}

uint64_t sub_1003DD4B8(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3728);

  return v2();
}

uint64_t sub_1003DD520(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3736);

  return v2();
}

uint64_t sub_1003DD580(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3760);

  return v2();
}

uint64_t sub_1003DD5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3768);

  return v2();
}

uint64_t sub_1003DD648(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3776);

  return v2();
}

uint64_t sub_1003DD6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3792);

  return v2();
}

uint64_t sub_1003DD708(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3784);

  return v2();
}

uint64_t sub_1003DD768(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, 171);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *(&v11 + 7) = *(a1 + 145);
  BYTE6(v11) = *(a1 + 147);
  WORD5(v11) = *(a1 + 148);
  BYTE9(v11) = *(a1 + 150);
  WORD5(v13) = *(a1 + 14);
  WORD4(v13) = *(a1 + 4);
  HIWORD(v13) = *(a1 + 18) + WORD5(v13);
  WORD6(v12) = *(a1 + 42);
  v2 = *(a1 + 46);
  HIWORD(v12) = v2;
  WORD6(v13) = *(a1 + 30);
  WORD3(v14) = *(a1 + 70) + *(a1 + 38) + *(a1 + 102);
  WORD2(v14) = *(a1 + 74) + WORD6(v12) + *(a1 + 106);
  v3 = *(a1 + 110);
  v4 = *(a1 + 78) + v2;
  WORD3(v15[0]) = v4 + *(a1 + 50) + *(a1 + 82) + v3 + *(a1 + 114);
  WORD1(v15[0]) = v4 + v3;
  WORD2(v15[1]) = *(a1 + 159);
  *(v15 + 12) = *(a1 + 151);
  *(&v15[1] + 6) = *(a1 + 161);
  v5 = *(a1 + 177);
  v6 = *(a1 + 193);
  v7 = *(a1 + 209);
  *(&v15[5] + 5) = *(a1 + 224);
  *(&v15[4] + 6) = v7;
  *(&v15[3] + 6) = v6;
  *(&v15[2] + 6) = v5;
  v8 = sub_10000C7D0(a1, a2);
  return (*(*v8 + 3584))(v8, &v11, v9);
}

uint64_t sub_1003DD90C(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, 171);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  WORD1(v6) = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 4);
  LOWORD(v7) = v3 + v2;
  WORD1(v7) = v3;
  WORD3(v7) = *(a1 + 8);
  WORD6(v6) = *(a1 + 12);
  *(&v6 + 7) = *(a1 + 15);
  BYTE6(v6) = *(a1 + 17);
  WORD5(v6) = *(a1 + 18);
  BYTE9(v6) = BYTE11(v6);
  *(v10 + 12) = *(a1 + 21);
  WORD2(v10[1]) = *(a1 + 29);
  *(&v10[2] + 6) = *(a1 + 47);
  *(&v10[3] + 6) = *(a1 + 63);
  *(&v10[4] + 6) = *(a1 + 79);
  *(&v10[5] + 5) = *(a1 + 94);
  *(&v10[1] + 6) = *(a1 + 31);
  if (*(a1 + 14) == 2)
  {
    HIWORD(v6) = v2;
  }

  v4 = sub_10000C7D0(a1, a2);
  return (*(*v4 + 3584))(v4, &v6);
}

void sub_1003DDA58(unsigned __int16 *a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100827340();
  }

  sub_10064790C(qword_100B50918, *a1, *(a1 + 23), a1[12], *(a1 + 15) / (*(a1 + 7) + *(a1 + 15)), *(a1 + 3), *(a1 + 27), *(a1 + 28), *(a1 + 29), HIBYTE(*(a1 + 29)));
}

void sub_1003DDAD4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100827340();
  }

  v2 = qword_100B50918;

  sub_100647A14(v2, a1);
}

uint64_t sub_1003DDB28(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3744);

  return v2();
}

uint64_t sub_1003DDB90(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3752);

  return v2();
}

uint64_t sub_1003DDC10(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1088);

  return v2();
}

uint64_t sub_1003DDC70(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1096);

  return v2();
}

uint64_t sub_1003DDCD0(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1104);

  return v2();
}

uint64_t sub_1003DDD30(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1112);

  return v2();
}

uint64_t sub_1003DDDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1120);

  return v2();
}

uint64_t sub_1003DDE10(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1128);

  return v2();
}

uint64_t sub_1003DDE70(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3800);

  return v2();
}

uint64_t sub_1003DDED8(uint64_t a1, _OWORD *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  v5 = a2[3];
  v13[2] = a2[2];
  v13[3] = v5;
  v13[4] = a2[4];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  return (*(*v4 + 3808))(v4, a1, v13, v7, v8, v9, v10, v11);
}

uint64_t sub_1003DDF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3816);

  return v2();
}

uint64_t sub_1003DE024(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3824);

  return v2();
}

uint64_t sub_1003DE0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3840);

  return v2();
}

uint64_t sub_1003DE114(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3848);

  return v2();
}

uint64_t sub_1003DE180(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1144);

  return v2();
}

uint64_t sub_1003DE1E0(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1152);

  return v2();
}

uint64_t sub_1003DE240(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3856);

  return v2();
}

uint64_t sub_1003DE2A0(uint64_t a1, void (**a2)(uint64_t a1, uint64_t a2))
{
  if (!a2)
  {
    return 1;
  }

  *a2 = sub_1003DB94C;
  a2[1] = sub_1003DB9A8;
  a2[44] = sub_1003DBA28;
  a2[43] = sub_1003DBAC4;
  a2[45] = sub_1003DBBF0;
  a2[2] = sub_1003DBCA0;
  a2[3] = sub_1003DBD10;
  a2[4] = sub_1003DBD70;
  a2[5] = sub_1003DBDD4;
  a2[6] = sub_1003DC4C0;
  a2[7] = sub_1003DC538;
  a2[8] = sub_1003DC708;
  a2[9] = sub_1003DC8E0;
  a2[10] = sub_1003DCA88;
  a2[11] = sub_1003DCC58;
  a2[12] = sub_1003DCE30;
  a2[31] = sub_1003DD768;
  a2[32] = sub_1003DD90C;
  a2[13] = sub_1003DBE64;
  a2[14] = sub_1003DC12C;
  a2[15] = sub_1003DC224;
  a2[16] = sub_1003DC2F8;
  a2[17] = sub_1000AB51C;
  a2[18] = sub_1003DD008;
  a2[19] = sub_1003DD068;
  a2[20] = sub_1003DD0D0;
  a2[21] = nullsub_252;
  a2[22] = sub_1003DD164;
  a2[23] = sub_1003DD1CC;
  a2[24] = sub_1003DD244;
  a2[25] = sub_1003DD2AC;
  a2[26] = sub_1003DD324;
  a2[28] = sub_1003DD38C;
  a2[29] = sub_1003DD438;
  a2[30] = sub_1003DD4B8;
  a2[27] = sub_1003DD520;
  a2[33] = sub_1003DDB28;
  a2[34] = sub_1003DDB90;
  a2[35] = sub_1003DD580;
  a2[37] = sub_1003DD5E8;
  a2[36] = sub_1003DD648;
  a2[38] = sub_1003DD6A8;
  a2[39] = sub_1003DD708;
  a2[40] = sub_1003DDA58;
  a2[41] = sub_1003DDAD4;
  a2[42] = sub_1003DC3F4;
  a2[46] = sub_1003DDC10;
  a2[49] = sub_1003DDD30;
  a2[47] = sub_1003DDC70;
  a2[48] = sub_1003DDCD0;
  a2[50] = sub_1003DDDB0;
  a2[55] = sub_1003DDE70;
  a2[56] = sub_1003DDED8;
  v3 = _os_feature_enabled_impl();
  result = 0;
  if (v3)
  {
    v5 = sub_1003DDF8C;
  }

  else
  {
    v5 = 0;
  }

  a2[58] = v5;
  a2[59] = sub_1003DE024;
  a2[60] = sub_1000E756C;
  a2[61] = sub_1003DE0B4;
  a2[62] = sub_1003DE114;
  a2[66] = sub_1003DE240;
  a2[51] = sub_1003DDE10;
  a2[52] = sub_1003DE180;
  a2[53] = sub_1003DE1E0;
  a2[63] = nullsub_253;
  a2[64] = nullsub_254;
  a2[65] = nullsub_255;
  return result;
}

uint64_t sub_1003DE700(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 206);
}

uint64_t sub_1003DE750(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 4);
}

uint64_t sub_1003DE7A0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 5);
}

uint64_t sub_1003DE7F0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 41);
}

uint64_t sub_1003DE840(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 185);
}

uint64_t sub_1003DE890(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 52);
}

uint64_t sub_1003DE8E0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 100);
}

uint64_t sub_1003DE930(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 129);
}

uint64_t sub_1003DE980(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 132);
}

uint64_t sub_1003DE9D0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 133);
}

uint64_t sub_1003DEA20(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 134);
}

uint64_t sub_1003DEA70(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 135);
}

uint64_t sub_1003DEAC0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 203);
}

uint64_t sub_1003DEB10(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 54);
}

uint64_t sub_1003DEB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v41 = a2;
  v42 = WORD2(a2);
  v15 = *sub_10000C7D0(a1, a2);
  v16 = (*(v15 + 2280))();
  if (v16)
  {
    if (a4 <= 0x20 && ((1 << a4) & 0x100000006) != 0)
    {
      v18 = sub_10000C7D0(v16, v17);
      (*(*v18 + 2288))(v18, &v41, a5, 1, 1, 5, a3, a4, 1);
      v19 = qword_100BCE8D8;
      v20 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = a5;
        *&buf[8] = 1024;
        *&buf[10] = 5;
        *v44 = 1024;
        *&v44[2] = a3;
        *v45 = 1024;
        *&v45[2] = a4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "setPriority for classic BT audio \t\t\t\t\t\t\t\t   enable: %d, \t\t\t\t\t\t\t\t   configMask: %u, \t\t\t\t\t\t\t\t   type: %u, \t\t\t\t\t\t\t\t   requesterID: %u", buf, 0x1Au);
        return 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100827354();
      }

      return 1;
    }
  }

  else
  {
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    sub_100007F88(v39, a1 + 72);
    if (sub_100020164(a1, 4))
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_100020304(a1, 4);
        *buf = 136447746;
        *&buf[4] = v22;
        *&buf[12] = 1024;
        *v44 = a4;
        *&v44[4] = 1024;
        *v45 = a5;
        *&v45[4] = 1024;
        v46 = a6;
        v47 = 1024;
        v48 = a3;
        v49 = 1040;
        v50 = 6;
        v51 = 2096;
        v52 = &v41;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending: %{public}s, requesterID 0x%x, high %d, enableEPA %d, type %d, addr %{bluetooth:BD_ADDR}.6P", buf, 0x34u);
      }

      v38 = 0;
      sub_1000216B4(&v38);
      if (a7)
      {
        v23 = sub_1003DE750;
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_1002A32C4(&v41, a4, a5, &v40, v23);
      sub_100022214(&v38);
      if (!v24 && a7)
      {
        if (qword_100B50AA0 != -1)
        {
          sub_100826FD0();
        }

        v24 = sub_100021BDC(off_100B50A98, 4);
      }

      sub_100022684(a1, 4u);
      v20 = v24 != 3603 && v24 != 0;
      if ((v24 == 3603 || !v24) && a6)
      {
        if (a3 == 22 || a3 == 17)
        {
          v26 = 60;
        }

        else
        {
          v26 = 45;
        }

        if (a8)
        {
          LOBYTE(v27) = 75;
        }

        else
        {
          LOBYTE(v27) = v26;
        }

        v37 = 0;
        v28 = sub_10000E92C();
        sub_100007E30(buf, "ePA");
        sub_100007E30(__p, "iPAMaxThreshold");
        v29 = (*(*v28 + 88))(v28, buf, __p, &v37);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v45[3] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v29)
        {
          v27 = -v37;
          v30 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v27;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
          }
        }

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1003DF0A4;
        v32[3] = &unk_100AF2330;
        v33 = v27;
        v34 = a7;
        v20 = sub_10002173C(a1, 206, a7, v32, 0);
      }

      sub_10002249C(&v38);
    }

    else
    {
      v20 = 2;
    }

    sub_1000088CC(v39);
  }

  return v20;
}

void sub_1003DF038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_10002249C(&a24);
  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1003DF0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C7D0(a1, a2);
  v7 = (*(*v6 + 2280))(v6);
  if (v7)
  {
    v9 = sub_10000C7D0(v7, v8);
    v13 = 1;
    (*(*v9 + 2288))(v9, a2 + 128, a3, 1, 2, 2, 0, 2, v13);
    v10 = qword_100BCE8D8;
    v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      *buf = 67109376;
      v17 = a3;
      v18 = 1024;
      v19 = 2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "enableLowLatencyPriority for classic BT audio \t\t\t\t\t\t\tenable: %d, \t\t\t\t\t\t\tconfigMask: %u", buf, 0xEu);
      return 0;
    }
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1003DF288;
    v14[3] = &unk_100AF2210;
    v14[4] = a2;
    v15 = a3;
    return sub_10002173C(a1, 5, 1, v14, 0);
  }

  return result;
}

uint64_t sub_1003DF2A8(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  v10 = a2;
  v12 = sub_10000C7D0(a1, a2);
  if (*(v12 + 800) < 0x13u)
  {
    if (*(sub_10000C7D0(v12, v13) + 800) < 0xFu)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003DF490;
      v18[3] = &unk_100AF24D0;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      v14 = v18;
      v15 = a1;
      v16 = 41;
    }

    else
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1003DF46C;
      v23[3] = &unk_100AF2610;
      v24 = a3;
      v25 = a4;
      v26 = a6;
      v14 = v23;
      v15 = a1;
      v16 = 52;
    }
  }

  else
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1003DF444;
    v27[3] = &unk_100AF24D0;
    v28 = v10;
    v29 = a3;
    v30 = a4;
    v31 = a6;
    v14 = v27;
    v15 = a1;
    v16 = 100;
  }

  return sub_10002173C(v15, v16, 1, v14, 0);
}

uint64_t sub_1003DF4B8(_DWORD *a1, char a2, char a3)
{
  if ((a1[200] - 3000) > 0x3E7)
  {
    v10 = v3;
    v11 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003DF588;
    v7[3] = &unk_100AF2330;
    v8 = a2;
    v9 = a3;
    return sub_10002173C(a1, 203, 1, v7, 0);
  }

  else
  {
    v5 = *(*a1 + 1504);

    return v5();
  }
}

uint64_t sub_1003DF5A8(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  v14 = sub_10000C7D0(a1, a2);
  if (*(v14 + 800) < 0x13u)
  {
    if (*(sub_10000C7D0(v14, v15) + 800) < 0xFu)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1003DF8A0;
      v20[3] = &unk_100AF25D0;
      v20[4] = a2;
      v21 = a4;
      v22 = a5;
      v23 = a6;
      v24 = a7;
      v16 = v20;
      v17 = a1;
      v18 = 41;
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1003DF800;
      v25[3] = &unk_100AF2230;
      v25[4] = a2;
      v26 = a4;
      v27 = a5;
      v28 = a7;
      v16 = v25;
      v17 = a1;
      v18 = 52;
    }
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003DF75C;
    v29[3] = &unk_100AF25D0;
    v29[4] = a2;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a7;
    v16 = v29;
    v17 = a1;
    v18 = 100;
  }

  return sub_10002173C(v17, v18, 1, v16, 0);
}

uint64_t sub_1003DF75C(uint64_t a1)
{
  v4 = 0;
  v1 = sub_10023DB58(*(a1 + 32) + 128, &v4);
  if (!v1)
  {
    return sub_1002A83E8();
  }

  v2 = v1;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008273C4();
  }

  return v2;
}

uint64_t sub_1003DF800(uint64_t a1)
{
  v4 = 0;
  v1 = sub_10023DB58(*(a1 + 32) + 128, &v4);
  if (!v1)
  {
    return sub_1002A835C();
  }

  v2 = v1;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008273C4();
  }

  return v2;
}

uint64_t sub_1003DF8A0(uint64_t a1)
{
  v4 = 0;
  v1 = sub_10023DB58(*(a1 + 32) + 128, &v4);
  if (!v1)
  {
    return sub_1002A4C8C();
  }

  v2 = v1;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008273C4();
  }

  return v2;
}

uint64_t sub_1003DF944(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003DF9BC;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 185, 1, v3, 0);
}

uint64_t sub_1003DF9D4(uint64_t a1, char a2, int a3, char a4, char a5, char a6, char a7)
{
  if (!a3)
  {
    return 7;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003DFA70;
  v8[3] = &unk_100AF2450;
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a2;
  v9 = a3;
  return sub_10002173C(a1, 129, 1, v8, 0);
}

uint64_t sub_1003DFAFC(_DWORD *a1, int a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7)
{
  if (!a3)
  {
    return 2;
  }

  v28 = 0;
  v14 = sub_10023DB58(a3 + 128, &v28);
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008273C4();
    }

    return v15;
  }

  if ((a1[200] - 3000) > 0x3E7)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003DFF18;
    v21[3] = &unk_100AF2670;
    v21[4] = v28;
    v22 = a4;
    v23 = a5;
    v24 = a7;
    v25 = a6;
    v26 = a2;
    return sub_10002173C(a1, 129, 1, v21, 0);
  }

  if (a2)
  {
    return 2;
  }

  if (sub_1000B8B5C(v28))
  {
    if (!a4)
    {
      return (*(*a1 + 1544))(a1, *v28);
    }

    v27 = 0;
    if (sub_100537D2C(a3))
    {
      v18 = -100;
    }

    else
    {
      v18 = -70;
    }

    v19 = sub_1000DEB14(a3);
    sub_1003DFD74(v19, v19, 0, &v27);
    HIWORD(v20) = 7715;
    *(&v20 + 2) = 337185289;
    BYTE1(v20) = v18;
    LOBYTE(v20) = a5;
    return (*(*a1 + 1584))(a1, *v28, 0, -v27, a5, a7, 9, -v27, v20, 45);
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100827434();
  }

  return 414;
}

void sub_1003DFD74(uint64_t a1, int a2, int a3, char *a4)
{
  if (a2 == 22 || a2 == 17)
  {
    v6 = 60;
  }

  else
  {
    v6 = 45;
  }

  *a4 = v6;
  v13 = 0;
  if (a3)
  {
    *a4 = 75;
  }

  v7 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "iPAMaxThreshold");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  v9 = -v13;
  *a4 = -v13;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
  }
}

void sub_1003DFEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DFF18(uint64_t a1)
{
  if (sub_1000B8B5C(*(a1 + 32)))
  {
    return sub_1002A8474();
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100827434();
  }

  return 414;
}

uint64_t sub_1003DFFEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    return 7;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E0078;
  v5[3] = &unk_100AF2250;
  v6 = a3;
  v5[4] = a2;
  v5[5] = a4;
  return sub_10002173C(a1, 129, 1, v5, 0);
}

uint64_t sub_1003E0078(uint64_t a1)
{
  v4 = 0;
  v1 = sub_10023DB58(*(a1 + 32) + 128, &v4);
  if (!v1)
  {
    return sub_1002A8474();
  }

  v2 = v1;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008273C4();
  }

  return v2;
}

uint64_t sub_1003E0118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if ((*(result + 800) - 3000) > 0x3E7)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003E0308;
    v10[3] = &unk_100AF2430;
    v10[4] = a3;
    v11 = a2;
    v12 = a4;
    return sub_10002173C(result, 132, 1, v10, 0);
  }

  else if (a2 == 2)
  {
    if (a3)
    {
      v13 = 0;
      result = sub_10023DB58(a3 + 128, &v13);
      if (!result)
      {
        return (*(*v5 + 1592))(v5, *v13, a4);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100827470();
      }

      return 1;
    }
  }

  else if (a2 == 1)
  {
    if (a4)
    {
      v6 = *(*sub_10000C7D0(result, a2) + 1568);

      return v6();
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = sub_10000C7D0(result, a2);
        v9 = v7;
        result = (*(*v8 + 1560))(v8, 0, 0, 0, v7++);
      }

      while (v9 < 2);
    }
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t sub_1003E0364(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a3)
  {
    return 2;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E03F4;
  v5[3] = &unk_100AF2430;
  v5[4] = a3;
  v6 = a2;
  v7 = a4;
  return sub_10002173C(a1, 133, 1, v5, 0);
}

uint64_t sub_1003E0414(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    return 2;
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 72);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003E04F0;
  v8[3] = &unk_100AF2210;
  v8[4] = a3;
  v9 = a2;
  v6 = sub_10002173C(a1, 134, 1, v8, 0);
  sub_1000088CC(v10);
  return v6;
}