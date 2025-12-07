uint64_t NPKProtoStandalonePaymentProvisioningMethodMetadataReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 149)
      {
        if (v13 <= 169)
        {
          if (v13 == 150)
          {
            v16 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
            [a1 addRequiredFields:v16];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupFieldReadFrom(v16, a2))
            {
LABEL_51:

              return 0;
            }

LABEL_41:
            PBReaderRecallMark();
            goto LABEL_45;
          }

          if (v13 == 160)
          {
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_44;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xAA:
              v16 = objc_alloc_init(NPKProtoStandalonePaymentDigitalIssuanceMetadata);
              objc_storeStrong(a1 + 3, v16);
              v19 = 0;
              v20 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentDigitalIssuanceMetadataReadFrom(v16, a2))
              {
                goto LABEL_51;
              }

              goto LABEL_41;
            case 0xB4:
              v14 = PBReaderReadString();
              v15 = 9;
LABEL_44:
              v16 = a1[v15];
              a1[v15] = v14;
LABEL_45:

              goto LABEL_46;
            case 0xBE:
              v14 = PBReaderReadString();
              v15 = 6;
              goto LABEL_44;
          }
        }
      }

      else if (v13 <= 119)
      {
        if (v13 == 100)
        {
          v14 = PBReaderReadString();
          v15 = 7;
          goto LABEL_44;
        }

        if (v13 == 110)
        {
          v14 = PBReaderReadString();
          v15 = 1;
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x78:
            v14 = PBReaderReadString();
            v15 = 2;
            goto LABEL_44;
          case 0x82:
            v14 = PBReaderReadString();
            v15 = 5;
            goto LABEL_44;
          case 0x8C:
            v14 = PBReaderReadString();
            v15 = 4;
            goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKPassSyncChangeTypeToProto(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NPKPassSyncChangeTypeFromProto(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NPKProtoCheckInvitationStatusForMailboxAddressResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponseReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = 16;
LABEL_24:
        v14 = *&a1[v16];
        *&a1[v16] = v15;
LABEL_25:

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addAttestation:v14];
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = 24;
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSetPeerPaymentPreferencesRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoHandleCredentialsChangeRequestReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v16 = PBReaderReadData();
        if (v16)
        {
          [a1 addCredentialsBytes:v16];
        }

        goto LABEL_25;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 24;
LABEL_24:
    v16 = *&a1[v15];
    *&a1[v15] = v14;
LABEL_25:

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B4A8898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4A8C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4A8E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4A8FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4A9150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4A9E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__384(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_25B4AA7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AB37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4ABB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AD030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4AD404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4ADBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 208), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AE3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AEE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4AFBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4B18F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 176), 8);
  objc_destroyWeak((v37 - 192));
  objc_destroyWeak((v37 - 184));
  _Unwind_Resume(a1);
}

void sub_25B4B2B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4B3380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4B3B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4B4348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4B4A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4B569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4B7718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 160), 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4B8460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4B9670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4B9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4BA74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4BB124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4BBB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4BC4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4BD694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v54 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25B4BE5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 192), 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4BF084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4BF9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C0294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C0B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4C2B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4C34EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C3F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C48A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4C54B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C5EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C6B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C8494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4C9094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4C9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4CA1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4CAAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4CB41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4CC32C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B4CCF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4CEA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4CF7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Block_object_dispose((v34 - 144), 8);
  _Block_object_dispose((v34 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D1050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B4D1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4D2B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D37FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D4B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D51D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose((v40 - 176), 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 240), 8);
  _Block_object_dispose((v40 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D70D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4D7A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D8AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4D95A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DA904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DACB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4DB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DC17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DCB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DD660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4DE228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4DEBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4DF9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4DFEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4E09FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose((v52 - 176), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v52 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4E1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E43B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E4E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E5F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E6DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E7C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E8ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose((v34 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4E95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4EA284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EAEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EBAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EC76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose((v34 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4ED3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EE404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EEFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4EFB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F1280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F2F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F3A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4F45E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F5E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F6BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F7C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F8864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F9420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4F9FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FAB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FB770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FC2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FCEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FDA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FE5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B4FF0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B4FFC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B500764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B50136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B501F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25B502A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B502DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B5030F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B503A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B504040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B5051BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B505E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B506954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B507430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25B507F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B5088D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B509348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25B509E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25B50AFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B50BCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B50CE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUConnectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PairedUnlockLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PairedUnlockLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27994A900;
    v6 = 0;
    PairedUnlockLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (PairedUnlockLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PUConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUConnectionClass_block_invoke_cold_1();
  }

  getPUConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PairedUnlockLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PairedUnlockLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t NPKProtoHandleValueAddedServiceTransactionsRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTransactionPassIDs:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addTransactionsBytes:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentCredentialUnionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 210)
      {
        break;
      }

      if (v13 == 200)
      {
        v15 = objc_alloc_init(NPKProtoStandalonePaymentRemoteCredential);
        objc_storeStrong((a1 + 24), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentRemoteCredentialReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 100)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(NPKProtoStandaloneCreditAccountCredential);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandaloneCreditAccountCredentialReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSecureElementSetNewAuthRandomRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentSetupProductReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 199)
      {
        if (v13 > 239)
        {
          if (v13 > 259)
          {
            if (v13 == 260)
            {
              v14 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductPaymentOption);
              [a1 addPaymentOptions:v14];
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupProductPaymentOptionReadFrom(v14, a2))
              {
LABEL_119:

                return 0;
              }

LABEL_98:
              PBReaderRecallMark();
LABEL_99:

              goto LABEL_117;
            }

            if (v13 == 270)
            {
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry);
              [a1 addRequestedProvisioningMethods:v14];
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntryReadFrom(v14, a2))
              {
                goto LABEL_119;
              }

              goto LABEL_98;
            }
          }

          else
          {
            if (v13 == 240)
            {
              v14 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductImageAssetURLs);
              objc_storeStrong((a1 + 40), v14);
              v47 = 0;
              v48 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupProductImageAssetURLsReadFrom(v14, a2))
              {
                goto LABEL_119;
              }

              goto LABEL_98;
            }

            if (v13 == 250)
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              *(a1 + 132) |= 8u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v47 & 0x7F) << v17;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v11 = v18++ >= 9;
                if (v11)
                {
                  LOBYTE(v23) = 0;
                  goto LABEL_103;
                }
              }

              v23 = (v19 != 0) & ~[a2 hasError];
LABEL_103:
              *(a1 + 128) = v23;
              goto LABEL_117;
            }
          }
        }

        else if (v13 > 219)
        {
          if (v13 == 220)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 132) |= 1u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v47 & 0x7F) << v38;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v40;
            }

LABEL_115:
            v44 = 8;
            goto LABEL_116;
          }

          if (v13 == 230)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 132) |= 2u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v47 & 0x7F) << v24;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_107;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_107:
            v44 = 16;
            goto LABEL_116;
          }
        }

        else
        {
          if (v13 == 200)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 132) |= 4u;
            while (1)
            {
              LOBYTE(v47) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v47 & 0x7F) << v31;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v33;
            }

LABEL_111:
            v44 = 24;
LABEL_116:
            *(a1 + v44) = v30;
            goto LABEL_117;
          }

          if (v13 == 210)
          {
            v15 = PBReaderReadString();
            v16 = 80;
LABEL_84:
            v37 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_117;
          }
        }
      }

      else if (v13 > 159)
      {
        if (v13 > 179)
        {
          if (v13 == 180)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addSupportedProtocols:v14];
            }

            goto LABEL_99;
          }

          if (v13 == 190)
          {
            v15 = PBReaderReadString();
            v16 = 120;
            goto LABEL_84;
          }
        }

        else
        {
          if (v13 == 160)
          {
            v15 = PBReaderReadString();
            v16 = 56;
            goto LABEL_84;
          }

          if (v13 == 170)
          {
            v14 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
            [a1 addRequiredFields:v14];
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupFieldReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            goto LABEL_98;
          }
        }
      }

      else if (v13 > 139)
      {
        if (v13 == 140)
        {
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_84;
        }

        if (v13 == 150)
        {
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_84;
        }
      }

      else
      {
        if (v13 == 100)
        {
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_84;
        }

        if (v13 == 130)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addRegions:v14];
          }

          goto LABEL_99;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_117:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowAcceptTermsRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoDeleteReservationRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addReservationID:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCreateFidoKeyRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___NPKProtoCreateFidoKeyRequest__challenge;
          goto LABEL_28;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___NPKProtoCreateFidoKeyRequest__externalizedAuth;
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPKProtoCreateFidoKeyRequest__relyingParty;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPKProtoCreateFidoKeyRequest__relyingPartyAccountHash;
LABEL_28:
          v16 = *v15;
          v17 = *(a1 + v16);
          *(a1 + v16) = v14;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContextReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 110)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandalonePaymentPass);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentPassReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NPKProtoStandaloneVerificationChannel);
    [a1 addVerificationChannels:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandaloneVerificationChannelReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyAcceptInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___NPKProtoCarKeyAcceptInvitationRequest__analyticsUpdateConfigData;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___NPKProtoCarKeyAcceptInvitationRequest__invitationIdentifier;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___NPKProtoCarKeyAcceptInvitationRequest__activationCode;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoDeviceDidRegisterResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___NPKProtoDeviceDidRegisterResponse__pending;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___NPKProtoDeviceDidRegisterResponse__pending;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___NPKProtoDeviceDidRegisterResponse__success;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NPKProtoDeviceDidRegisterResponse__success;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoGenerateSEEncryptionCertificateForSubCredentialIdResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoGenerateSEEncryptionCertificateForSubCredentialIdResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoGenerateSEEncryptionCertificateForSubCredentialIdResponse__certificate;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemotePassUpdateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v33[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33[0] & 0x7F) << v24;
              if ((v33[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_58;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_58:
            *(a1 + 40) = v30;
            goto LABEL_59;
          case 5:
            v16 = PBReaderReadData();
            if (v16)
            {
              [a1 addExpressPassInformation:v16];
            }

            goto LABEL_52;
          case 6:
            v16 = PBReaderReadData();
            if (v16)
            {
              [a1 addExpressPassConfiguration:v16];
            }

LABEL_52:

            goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v33[0]) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33[0] & 0x7F) << v17;
              if ((v33[0] & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_54;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_54:
            *(a1 + 44) = v23;
            goto LABEL_59;
          case 2:
            v16 = objc_alloc_init(NPKProtoPass);
            objc_storeStrong((a1 + 32), v16);
            v33[0] = 0;
            v33[1] = 0;
            if (!PBReaderPlaceMark() || !NPKProtoPassReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_52;
          case 3:
            v14 = PBReaderReadData();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeySetAccountAttestationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoCarKeySetAccountAttestationRequest__credentialData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoCarKeySetAccountAttestationRequest__attestation;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandaloneInitializationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___NPKProtoAvailableHomeKeyPassesResponse__passesDatas;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v34 & 0x7F) << v6;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 109)
      {
        if (v14 == 110)
        {
          v24 = PBReaderReadString();
          v25 = v5[861];
          v26 = *(a1 + v25);
          *(a1 + v25) = v24;

          goto LABEL_59;
        }

        if (v14 == 120)
        {
          v23 = objc_alloc_init(NPKProtoStandaloneError);
          objc_storeStrong((a1 + 40), v23);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !NPKProtoStandaloneErrorReadFrom(v23, a2))
          {
LABEL_62:

            return 0;
          }

          goto LABEL_45;
        }
      }

      else
      {
        if (v14 == 100)
        {
          v23 = objc_alloc_init(NPKProtoStandaloneResponseHeader);
          objc_storeStrong((a1 + 48), v23);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !NPKProtoStandaloneResponseHeaderReadFrom(v23, a2))
          {
            goto LABEL_62;
          }

LABEL_45:
          PBReaderRecallMark();

          goto LABEL_59;
        }

        if (v14 == 101)
        {
          if ((v13 & 7) == 2)
          {
            v34 = 0;
            v35 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v16 = [a2 position];
              if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v17 = 0;
              v18 = 0;
              v19 = 0;
              while (1)
              {
                v36 = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v36 & 0x7F) << v17;
                if ((v36 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v12 = v18++ >= 9;
                if (v12)
                {
                  goto LABEL_35;
                }
              }

              [a2 hasError];
LABEL_35:
              PBRepeatedInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v34 & 0x7F) << v27;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v12 = v28++ >= 9;
              if (v12)
              {
                goto LABEL_58;
              }
            }

            [a2 hasError];
LABEL_58:
            PBRepeatedInt32Add();
            v5 = &OBJC_IVAR___NPKProtoAvailableHomeKeyPassesResponse__passesDatas;
          }

          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentSetupProductPaymentOptionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 120)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v37 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v28;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__supportedProtocols;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__supportedProtocols;
        goto LABEL_52;
      }

      if (v13 == 110)
      {
        break;
      }

      if (v13 == 100)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v36 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v14;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__priority;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__priority;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__cardType;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___NPKProtoStandalonePaymentSetupProductPaymentOption__cardType;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B51B658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B51CBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B5221BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B522854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B522BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B52956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBPSTinkerSupportClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BridgePreferencesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27994B130;
    v6 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BridgePreferencesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BPSTinkerSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBPSTinkerSupportClass_block_invoke_cold_1();
  }

  getBPSTinkerSupportClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BridgePreferencesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t NPKProtoAddSecureElementPassWithPropertiesResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadString();
        v23 = *(a1 + 16);
        *(a1 + 16) = v22;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadData();
        if (v21)
        {
          [a1 addCredentialsBytes:v21];
        }
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27 & 0x7F) << v14;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_36;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAddSecureElementPassWithPropertiesRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    if (v14)
    {
      [a1 addPayloadData:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyRoutingInformationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___NPKProtoCarKeyRoutingInformationResponse__routingInformation;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___NPKProtoCarKeyRoutingInformationResponse__errorData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContextReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPaymentSetupFeaturesForConfigurationResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addPaymentSetupFeatureData:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 200)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoDeviceMetadataWithFieldsRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPrepareProvisioningTargetRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCheckPasscodePolicyComplianceResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25B53142C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoSecureElementRemoveAppletsResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___NPKProtoSecureElementRemoveAppletsResponse__pending;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___NPKProtoSecureElementRemoveAppletsResponse__pending;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___NPKProtoSecureElementRemoveAppletsResponse__success;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NPKProtoSecureElementRemoveAppletsResponse__success;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPassSyncStateItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_44:
        *(a1 + 32) = v23;
        goto LABEL_45;
      }

      if (v13 == 4)
      {
        v15 = PBReaderReadData();
        v16 = 16;
        goto LABEL_38;
      }

      if (v13 != 5)
      {
        goto LABEL_39;
      }

      v14 = objc_alloc_init(NPKProtoPassSyncStateManifestEntry);
      [a1 addManifestEntry:v14];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !NPKProtoPassSyncStateManifestEntryReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v15 = PBReaderReadString();
      v16 = 24;
      goto LABEL_38;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadString();
      v16 = 40;
LABEL_38:
      v24 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoProvisionPeerPaymentPassResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowSkipProvisioningRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPaymentPreconditionsNotMetRequestReadFrom(_DWORD *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addPassIDs:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v24 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v24 & 0x7F) << v13;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        a1[2] = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 200)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneResponseHeader);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneResponseHeaderReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NPKProtoStandaloneError);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandaloneErrorReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCompanionMigratedRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContextReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 200)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandalonePaymentSetupMoreInfoItem);
        [a1 addMoreInfoItems:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupMoreInfoItemReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NPKProtoStandalonePaymentPass);
    objc_storeStrong(a1 + 2, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentPassReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPassSyncStateManifestEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoPassSyncStateManifestEntry__fileHash;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoPassSyncStateManifestEntry__relativePath;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCacheSharingMessageFromMailboxAddressRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___NPKProtoCacheSharingMessageFromMailboxAddressRequest__mailboxAddress;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___NPKProtoCacheSharingMessageFromMailboxAddressRequest__sharingMessageData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoHandleRemoveTransactionsRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addPassIDs:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addIdentifiers:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t NPKProtoHandleCompanioniCloudSignoutRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRevokeSubcredentialsRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addIdentifiers:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id pk_ui_log(uint64_t a1)
{
  if (pk_ui_log_onceToken != -1)
  {
    pk_ui_log_cold_1();
  }

  v2 = pk_ui_log___logger;

  return v2;
}

void __pk_ui_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "ui");
  v1 = pk_ui_log___logger;
  pk_ui_log___logger = v0;
}

id pk_Sync_log(uint64_t a1)
{
  if (pk_Sync_log_onceToken != -1)
  {
    pk_Sync_log_cold_1();
  }

  v2 = pk_Sync_log___logger;

  return v2;
}

id pk_RemotePassAction_log(uint64_t a1)
{
  if (pk_RemotePassAction_log_onceToken != -1)
  {
    pk_RemotePassAction_log_cold_1();
  }

  v2 = pk_RemotePassAction_log___logger;

  return v2;
}

void sub_25B539FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t NPKProtoSetExpressPassResponseReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            a1[52] |= 4u;
            while (1)
            {
              v50 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v50 & 0x7F) << v28;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_82;
              }
            }

            v21 = (v30 != 0) & ~[a2 hasError];
LABEL_82:
            v44 = 50;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_75;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            a1[52] |= 8u;
            while (1)
            {
              v49 = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v49 & 0x7F) << v15;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_78;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_78:
            v44 = 51;
          }

          goto LABEL_85;
        }

        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_75;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          a1[52] |= 1u;
          while (1)
          {
            v48 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v48 & 0x7F) << v22;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_80;
            }
          }

          v21 = (v24 != 0) & ~[a2 hasError];
LABEL_80:
          v44 = 48;
          goto LABEL_85;
        }

        v34 = PBReaderReadString();
        v35 = 16;
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            a1[52] |= 2u;
            while (1)
            {
              v47 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v47 & 0x7F) << v37;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_84;
              }
            }

            v21 = (v39 != 0) & ~[a2 hasError];
LABEL_84:
            v44 = 49;
LABEL_85:
            a1[v44] = v21;
            goto LABEL_86;
          }

          if (v13 != 6)
          {
LABEL_75:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_86;
          }

          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addCurrentUniqueIDs:v14];
          }

          goto LABEL_74;
        }

        if (v13 != 7)
        {
          if (v13 == 8)
          {
            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addCurrentExpressPassesInformation:v14];
            }
          }

          else
          {
            if (v13 != 9)
            {
              goto LABEL_75;
            }

            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addExpressPassConfigurations:v14];
            }
          }

LABEL_74:

          goto LABEL_86;
        }

        v34 = PBReaderReadData();
        v35 = 8;
      }

      v36 = *&a1[v35];
      *&a1[v35] = v34;

LABEL_86:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25B53DA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B53E234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_25B53EDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B5404FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25B540AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25B541128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t NPKProtoAvailableHomeKeyPassesRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_25B542030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NPKLibraryHashForPassHashes(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v1)
  {
    v4 = 0;
    goto LABEL_30;
  }

  v2 = v1;
  v19 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *v21;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v20 + 1) + 8 * i);
      if (!v4)
      {
        v4 = v7;
        continue;
      }

      v8 = [v4 bytes];
      v9 = [v7 bytes];
      v10 = [v4 length];
      v11 = [v7 length];
      v12 = v11;
      if (v10 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      if (!v3)
      {
        goto LABEL_13;
      }

      if (v19 < v13)
      {
        free(v3);
LABEL_13:
        v3 = malloc_type_malloc(v13, 0x100004077774924uLL);
        v19 = v13;
      }

      if (v13)
      {
        for (j = 0; j != v13; ++j)
        {
          if (v10 <= j || v12 <= j)
          {
            if (v10 <= j)
            {
              v15 = *(v9 + j);
            }

            else
            {
              v15 = *(v8 + j);
            }
          }

          else
          {
            v15 = *(v9 + j) ^ *(v8 + j);
          }

          *(v3 + j) = v15;
        }
      }

      v16 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:v13];

      v4 = v16;
    }

    v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v2);
  if (v3)
  {
    free(v3);
  }

LABEL_30:

  return v4;
}

id NPKPairingParentAltDSIDFromTinkerDevice(void *a1)
{
  v1 = a1;
  if (NPKIsTinkerDevice(v1))
  {
    v2 = [v1 valueForProperty:*MEMORY[0x277D2BD50]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NPKIsCurrentlyPairing()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getBPSBridgeAppContextClass_softClass;
  v9 = getBPSBridgeAppContextClass_softClass;
  if (!getBPSBridgeAppContextClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getBPSBridgeAppContextClass_block_invoke;
    v5[3] = &unk_2799457C8;
    v5[4] = &v6;
    __getBPSBridgeAppContextClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 shared];
  v3 = [v2 inWatchSetupFlow];

  return v3;
}

void sub_25B542904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NPKDeviceWithPairingID(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NPKDeviceWithPairingID_block_invoke;
  v7[3] = &unk_27994B5C0;
  v8 = v1;
  v3 = v1;
  v4 = [v2 getDevicesMatching:v7];
  v5 = [v4 firstObject];

  return v5;
}

uint64_t __NPKDeviceWithPairingID_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForProperty:*MEMORY[0x277D2BBB8]];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t NPKIsConnectedToPairedOrPairingDeviceFromService(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 linkedDevicesWithRelationship:3];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = NPKPairedOrPairingDevice();
  v5 = [v3 deviceForNRDevice:v4 fromIDSDevices:v2];

  v6 = [v5 isConnected];
  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109634;
      v12[1] = v6;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v1;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Got connected to paired or pairing device %d from IDS device %@ and service %@", v12, 0x1Cu);
    }
  }

  return v6;
}

id NPKPairedDevicePrimarySecureElementIdentifier()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BBE0]];

  return v1;
}

void NPKInitializeActiveDeviceChangedNotifications(uint64_t result, uint64_t a2)
{
  if (NPKInitializeActiveDeviceChangedNotifications_onceToken != -1)
  {
    NPKInitializeActiveDeviceChangedNotifications_cold_1();
  }
}

void __NPKInitializeActiveDeviceChangedNotifications_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _DevicePaired, *MEMORY[0x277D2BC68], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetLocalCenter();
  v2 = *MEMORY[0x277D2BC48];

  CFNotificationCenterAddObserver(v1, 0, _ActiveDeviceChanged, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void _DevicePaired(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Got device paired notification;", v6, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NPKActiveDeviceChangedNotification" object:0];
}

void _ActiveDeviceChanged(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Got device active notification;", v6, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NPKActiveDeviceChangedNotification" object:0];
}

id NPKHomeDirectoryPathForDevice(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 valueForProperty:*MEMORY[0x277D2BB60]], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByAppendingPathComponent:", @"NanoPasses"), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    if (NPKHomeDirectoryPathForDevice__pred_CPSharedResourcesDirectoryAppSupport != -1)
    {
      NPKHomeDirectoryPathForDevice_cold_1();
    }

    v4 = [NPKHomeDirectoryPathForDevice__CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/NanoPasses/"];
    v5 = pk_General_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: Couldn't get home directory path; defaulting to %@", &v10, 0xCu);
      }
    }
  }

  return v4;
}

id NPKPaymentPassDirectoryPathForDevice(void *a1)
{
  v1 = NPKHomeDirectoryPathForDevice(a1);
  v2 = [v1 stringByAppendingPathComponent:@"PaymentCards"];

  return v2;
}

id NPKCatalogPathForDevice(void *a1)
{
  v1 = NPKHomeDirectoryPathForDevice(a1);
  v2 = [v1 stringByAppendingPathComponent:@"NanoCatalogOfRecord.plist"];

  return v2;
}

id NPKPaymentWebServiceContextPath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"NanoPaymentWebServiceContext.archive"];

  return v1;
}

id NPKPaymentWebServiceContextPathForDevice(void *a1)
{
  v1 = NPKHomeDirectoryPathForDevice(a1);
  v2 = [v1 stringByAppendingPathComponent:@"NanoPaymentWebServiceContext.archive"];

  return v2;
}

id NPKPaymentWebServiceBackgroundContextPath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"NanoPaymentWebServiceBackgroundContext.archive"];

  return v1;
}

id NPKPeerPaymentWebServiceContextPath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"NanoPeerPaymentWebServiceContext.archive"];

  return v1;
}

id NPKPeerPaymentAccountPath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"NanoPeerPaymentAccount.archive"];

  return v1;
}

id NPKRasterizedPassCachePath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"RasterizedPasses"];

  return v1;
}

id NPKPassSyncEngineArchivePath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PassSyncEngine.archive"];

  return v1;
}

id NPKAutomaticProvisioningStateArchivePath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"AutomaticProvisioning.archive"];

  return v1;
}

id NPKPendingTransactionsCachePath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PendingTransactionsCache.archive"];

  return v1;
}

void NPKNotifyForSyncedSettingsChange(void *a1)
{
  v1 = MEMORY[0x277D2BA60];
  v2 = a1;
  v4 = objc_alloc_init(v1);
  v3 = [MEMORY[0x277CBEB98] setWithObject:v2];

  [v4 synchronizeUserDefaultsDomain:@"com.apple.nanopassbook" keys:v3];
}

id NPKBalanceReminderIdentifierWithBalanceAndUniqueID(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [a1 identifiers];
  v6 = [v3 stringWithFormat:@"BalanceReminder-%@-%@", v4, v5];

  return v6;
}

__CFString *NPKNotificationForSyncedSettingsChange(uint64_t a1, uint64_t a2)
{
  if (NPKNotificationForSyncedSettingsChange_onceToken != -1)
  {
    NPKNotificationForSyncedSettingsChange_cold_1();
  }

  return @"NPKInternalSyncedSettingsChangedRemotely";
}

void __NPKNotificationForSyncedSettingsChange_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, "NPKSyncedSettings", SyncedSettingsDidChange, @"com.apple.nanopassbook.syncedsettingschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void SyncedSettingsDidChange(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Synced settings changed remotely", v6, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NPKInternalSyncedSettingsChangedRemotely" object:0];
}

__CFString *NPKNotificationForExpressPassesInformationChange(uint64_t a1, uint64_t a2)
{
  if (NPKNotificationForExpressPassesInformationChange_onceToken != -1)
  {
    NPKNotificationForExpressPassesInformationChange_cold_1();
  }

  return @"NPKInternalExpressPassesInformationChangedRemotely";
}

void __NPKNotificationForExpressPassesInformationChange_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, "NPKExpressPassesInformation", ExpressPassesInformationDidChange, @"com.apple.nanopassbook.expresspassesinformationchanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void ExpressPassesInformationDidChange(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Express passes information changed remotely", v7, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"NPKInternalExpressPassesInformationChangedRemotely" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"NPKInternalSyncedSettingsChangedRemotely" object:0];
}

__CFString *NPKNotificationForExpressPassConfigurationChange(uint64_t a1, uint64_t a2)
{
  if (NPKNotificationForExpressPassConfigurationChange_onceToken != -1)
  {
    NPKNotificationForExpressPassConfigurationChange_cold_1();
  }

  return @"NPKInternalExpressPassConfigurationsChangedRemotely";
}

void __NPKNotificationForExpressPassConfigurationChange_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, "NPKExpressPassConfigurations", ExpressPassesInformationDidChange, @"com.apple.nanopassbook.expresspassconfigurationschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

double NPKGizmoScreenScale()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BBE8]];
  v2 = 0.0;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v2 = v3;
    }
  }

  if (v2 <= 0.0)
  {
    v2 = 2.0;
  }

  return v2;
}

void NPKFloatValueForMobileGestaltKey(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Warning: No MG value found, or value is not a number.", v5, 2u);
    }
  }
}

CFUserNotificationRef NPKPresentUserNotification(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  v4 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NPKPresentUserNotification_block_invoke;
  v7[3] = &unk_27994B5F8;
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  return v4;
}

void __NPKPresentUserNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (v3)
    {
      v4 = _NPKNotificationHandlerMap(v2);
      v5 = [*(a1 + 32) copy];
      v6 = [MEMORY[0x277CCAE60] valueWithPointer:*(a1 + 40)];
      [v4 setObject:v5 forKey:v6];

      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, *(a1 + 40), _NPKNotificationResponseHandler, 0);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        v9 = pk_General_log(RunLoopSource);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v12 = pk_General_log(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Adding handler to runloop...", buf, 2u);
          }
        }

        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v8, *MEMORY[0x277CBF048]);
        CFRelease(v8);
        return;
      }

      v2 = *(a1 + 40);
    }

    CFRelease(v2);
  }

  else if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __NPKPresentUserNotification_block_invoke_297;
    block[3] = &unk_279945198;
    v15 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

id _NPKNotificationHandlerMap(uint64_t a1)
{
  if (_NPKNotificationHandlerMap_onceToken != -1)
  {
    _NPKNotificationHandlerMap_cold_1();
  }

  v2 = _NPKNotificationHandlerMap___map;

  return v2;
}

void _NPKNotificationResponseHandler(const void *a1, uint64_t a2)
{
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _NPKNotificationHandlerMap(v8);
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = (v5)[2](v5, a1, a2);
  }

  v7 = _NPKNotificationHandlerMap(v6);
  [v7 removeObjectForKey:v8];

  CFRelease(a1);
}

uint64_t NPKMyPid(uint64_t a1, uint64_t a2)
{
  if (NPKMyPid_onceToken != -1)
  {
    NPKMyPid_cold_1();
  }

  return NPKMyPid_pid;
}

uint64_t __NPKMyPid_block_invoke()
{
  result = getpid();
  NPKMyPid_pid = result;
  return result;
}

id NPKGetMyProcessName()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];

  return v1;
}

void NPKGuaranteeMainThread(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t NPKSetDefaults(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = pk_General_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: setting defaults for %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277CBF040];
  v13 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(v6, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __NPKSetDefaults_block_invoke;
  v23[3] = &unk_27994B620;
  v26 = v6;
  v14 = v6;
  v24 = v14;
  v25 = &v27;
  v15 = [v5 enumerateKeysAndObjectsUsingBlock:v23];
  if (*(v28 + 24) == 1)
  {
    v16 = pk_General_log(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_General_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v7;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: synchronizing and sending '%@' notification for domain %@", buf, 0x16u);
      }
    }

    CFPreferencesSynchronize(v14, v12, v13);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
    v21 = *(v28 + 24);
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v27, 8);
  return v21 & 1;
}

void sub_25B544020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NPKSetDefaults_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CFPreferencesCopyAppValue(v5, *(a1 + 48));
  v8 = v7;
  if (v6 | v7 && ((v6 != 0) != (v7 != 0) || (v7 = CFEqual(v6, v7), !v7)))
  {
    CFPreferencesSetAppValue(v5, v6, *(a1 + 48));
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = pk_General_log(v7);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (!v11)
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_16:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = pk_General_log(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"set";
    v15 = *(a1 + 32);
    v16 = 138413314;
    if (v9)
    {
      v14 = @"did not set";
    }

    v17 = v15;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: \t%@ %@: old %@ new %@ (%@)", &v16, 0x34u);
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v8)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
}

unint64_t NPKIsPaymentSetupSupportedInRegion()
{
  v18 = *MEMORY[0x277D85DE8];
  if (PKBypassStockholmRegionCheck())
  {
    return 1;
  }

  if (PKDisableStockholmInRegion())
  {
    return 2;
  }

  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 regionCode];

  v3 = CFPreferencesCopyAppValue(@"Configuration", @"com.apple.nanopassbook");
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v0 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D38178]) initWithConfiguration:v3 url:0];
    v7 = NPKSupportedRegionsForWebServiceConfiguration(v6);
    v0 = PKStockholmSetupSupportedInRegion();
  }

  v8 = pk_Payment_log(v3);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v0 > 2)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_27994B828[v0];
      }

      v14 = 138412546;
      v15 = v2;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEBUG, "Debug: countryCode %@ support %@", &v14, 0x16u);
    }
  }

  return v0;
}

id NPKPreferencesGetValue(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.nanopassbook");

  return v1;
}

id NPKSupportedRegionsForWebServiceConfiguration(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = PKDeviceClass();
  v3 = PKOSVersion();
  v4 = v3;
  v5 = 0;
  if (v2)
  {
    if (v3)
    {
      v5 = [v1 supportedRegionsForOSVersion:v3 deviceClass:v2 platform:@"WatchOS"];
      v6 = pk_Payment_log(v5);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

      if (v7)
      {
        v9 = pk_Payment_log(v8);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
        if (v10)
        {
          v11 = __NPKSupportedRegionsForWebServiceConfiguration_block_invoke(v10, v5);
          *buf = 138413058;
          v35 = v2;
          v36 = 2112;
          v37 = v4;
          v38 = 2112;
          v39 = @"WatchOS";
          v40 = 2112;
          v41 = v11;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEBUG, "Debug: this device class “%@” OS version “%@” platform “%@” supported regions %@", buf, 0x2Au);
        }
      }
    }
  }

  v12 = NPKPairedOrPairingDevice();
  v13 = [v12 valueForProperty:*MEMORY[0x277D2BAB8]];
  v14 = [v12 valueForProperty:*MEMORY[0x277D2BC20]];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  v33 = v1;
  if (v16)
  {
    v18 = 0;
    v17 = 0;
    if (v5)
    {
LABEL_22:
      v14 = v5;
LABEL_23:
      v17 = v14;
    }
  }

  else
  {
    v18 = [v1 supportedRegionsForOSVersion:v14 deviceClass:v13 platform:@"WatchOS"];
    v19 = pk_Payment_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (v20)
    {
      v21 = pk_Payment_log(v14);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        v23 = __NPKSupportedRegionsForWebServiceConfiguration_block_invoke(v22, v18);
        *buf = 138413058;
        v35 = v13;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = @"WatchOS";
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEBUG, "Debug: paired device class “%@” OS version “%@” platform “%@” supported regions %@", buf, 0x2Au);
      }
    }

    if (v5 && v18)
    {
      v24 = [MEMORY[0x277CBEB58] setWithArray:v5];
      v25 = [MEMORY[0x277CBEB98] setWithArray:v18];
      [v24 intersectSet:v25];

      v17 = [v24 allObjects];

      goto LABEL_24;
    }

    if (v5)
    {
      goto LABEL_22;
    }

    if (v18)
    {
      v14 = v18;
      v18 = v14;
      goto LABEL_23;
    }

    v17 = 0;
  }

LABEL_24:
  v26 = pk_Payment_log(v14);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

  if (v27)
  {
    v29 = pk_Payment_log(v28);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v30)
    {
      v31 = __NPKSupportedRegionsForWebServiceConfiguration_block_invoke(v30, v17);
      *buf = 138412290;
      v35 = v31;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEBUG, "Debug: Final supported regions: %@", buf, 0xCu);
    }
  }

  return v17;
}

id __NPKSupportedRegionsForWebServiceConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self <> ''"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

uint64_t NPKSupportsFeaturesForWebServiceConfiguration(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v1 = PKCurrentRegion();
  v2 = [MEMORY[0x277D37F78] fromDeviceVersion];
  v3 = PKDeviceClass();
  v4 = 0;
  if (v3)
  {
    if (v2)
    {
      v5 = [v31 hasFeatureRequiringRegistrationInRegion:v1 osVersion:v2 deviceClass:v3];
      v4 = v5;
      v6 = pk_Payment_log(v5);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

      if (v7)
      {
        v9 = pk_Payment_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = @"NO";
          *buf = 138413058;
          v33 = v1;
          if (v4)
          {
            v10 = @"YES";
          }

          v34 = 2112;
          v35 = v2;
          v36 = 2112;
          v37 = v3;
          v38 = 2112;
          v39 = v10;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEBUG, "Debug: this device region “%@” device version “%@” class “%@” supports regions %@", buf, 0x2Au);
        }
      }
    }
  }

  v30 = v2;
  v11 = NPKPairedOrPairingDevice();
  v12 = NPKDeviceRegion();
  v13 = NPKDeviceOSVersionRequirementFromDevice(v11);
  v14 = [v11 valueForProperty:*MEMORY[0x277D2BAB8]];
  v15 = v14;
  v16 = 0;
  v17 = v1;
  if (v13)
  {
    if (v14)
    {
      v18 = [v31 hasFeatureRequiringRegistrationInRegion:v12 osVersion:v13 deviceClass:{v14, v30}];
      v16 = v18;
      v19 = pk_Payment_log(v18);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

      if (v20)
      {
        v21 = pk_Payment_log(v14);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = @"NO";
          *buf = 138413058;
          v33 = v12;
          if (v16)
          {
            v22 = @"YES";
          }

          v34 = 2112;
          v35 = v13;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = v22;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEBUG, "Debug: paired device region “%@” device version “%@” class “%@” supports regions %@", buf, 0x2Au);
        }
      }
    }
  }

  v23 = v4 & v16;
  v24 = pk_Payment_log(v14);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

  if (v25)
  {
    v27 = pk_Payment_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = @"NO";
      if (v23)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v33 = v28;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEBUG, "Debug: Final supports features: %@", buf, 0xCu);
    }
  }

  return v23;
}

id NPKDeviceOSVersionRequirementFromDevice(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = NPKDeviceClassFromDevice(v1);
  v3 = [v1 valueForProperty:*MEMORY[0x277D2BC20]];

  v4 = 0;
  if (v2 && v3)
  {
    v5 = objc_alloc(MEMORY[0x277D37F78]);
    v23 = @"WatchOS";
    v21[0] = v2;
    v22[0] = v3;
    v6 = PKDeviceClass();
    v21[1] = v6;
    v7 = PKOSVersion();
    v22[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v24[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v4 = [v5 initWithDictionary:v9];
  }

  v10 = [v4 watch];

  if (!v10)
  {
    v12 = pk_General_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v2;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: could not create device version with deviceClass:%@ OSVersion:%@", &v17, 0x16u);
      }
    }
  }

  return v4;
}

__CFString *NSStringFromNPKRemotePassUpgradeStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unkown Pass Upgrade status:%ld", a1];
  }

  else
  {
    v2 = off_27994B840[a1];
  }

  return v2;
}

id NPKGetIDSCommunicationError()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = NPKPairedOrPairingDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BBA8]];

  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"IDS_COMMUNICATION_ERROR" value:&stru_286C934F8 table:@"NanoPassKit"];
  v5 = [v2 stringWithFormat:v4, v1];

  v6 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1001 userInfo:v7];

  return v8;
}

uint64_t NPKCopyFileAtURL(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 scheme];
  if ([v5 isEqualToString:@"file"])
  {
    v6 = [v4 scheme];
    v7 = [v6 isEqualToString:@"file"];

    if (v7)
    {
      v9 = [v3 path];
      v10 = [v4 path];
      v11 = NPKCopyFileAtPath(v9, v10);

      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = pk_General_log(v8);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (v13)
  {
    v15 = pk_General_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: NPKCopyFileAtURL: one of the source URL (%@) or destination URL (%@) were invalid", &v17, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

uint64_t NPKCopyFileAtPath(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = a1;
  v6 = [v3 defaultManager];
  v9 = 0;
  v7 = [v6 copyItemAtPath:v5 toPath:v4 error:&v9];

  return v7;
}

id NPKTemporaryFilePath(uint64_t a1, uint64_t a2)
{
  v2 = PKTemporaryItemURLWithExtension();
  v3 = [v2 path];

  return v3;
}

void NPKDeleteFileAtURL(void *a1)
{
  v4 = a1;
  v1 = [v4 scheme];
  v2 = [v1 isEqualToString:@"file"];

  if (v2)
  {
    v3 = [v4 path];
    NPKDeleteFileAtPath(v3);
  }
}

void NPKDeleteFileAtPath(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = 0;
  [v3 removeItemAtPath:v2 error:&v4];
}

uint64_t NPKMaxPaymentCards(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = PKEnableDynamicSEAllocation();
  if (v2)
  {
    v3 = pk_General_log(v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Do not call NPKMaxPaymentCards with dynamic SE enabled.", v14, 2u);
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = NPKDomainAccessorForDomain(*MEMORY[0x277D389C8]);
    v8 = [v6 objectForKey:*MEMORY[0x277D389D0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [v8 unsignedIntegerValue]) == 0)
    {
      v7 = PKMaxPaymentCards();
      v9 = pk_Payment_log(v7);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v12 = pk_Payment_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14[0] = 67109120;
          v14[1] = v7;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Max payment cards is zero. Returning companion value of %u.", v14, 8u);
        }
      }
    }
  }

  return v7;
}

void NPKSetMaxPaymentCards(uint64_t a1)
{
  v2 = *MEMORY[0x277D389C8];
  v8 = NPKDomainAccessorForDomain(*MEMORY[0x277D389C8]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = *MEMORY[0x277D389D0];
  [v8 setObject:v3 forKey:*MEMORY[0x277D389D0]];

  v5 = [v8 synchronize];
  v6 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [v6 synchronizeNanoDomain:v2 keys:v7];
}

uint64_t NPKGetRemoteBiometricAuthenticationStatusTrustLost()
{
  v0 = NPKDomainAccessorForDomain(@"com.apple.nanopassbook");
  v1 = [v0 BOOLForKey:@"NPKRemoteBiometricAuthenticationStatusCoordinatorTrustLost"];

  return v1;
}

void NPKSetRemoteBiometricAuthenticationStatusTrustLost(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromBOOL();
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Marking remote biometric authentication status trust lost: %@", &v9, 0xCu);
    }
  }

  v7 = NPKDomainAccessorForDomain(@"com.apple.nanopassbook");
  [v7 setBool:a1 forKey:@"NPKRemoteBiometricAuthenticationStatusCoordinatorTrustLost"];
  v8 = [v7 synchronize];
  NPKNotifyForSyncedSettingsChange(@"NPKRemoteBiometricAuthenticationStatusCoordinatorTrustLost");
}

CGImage *NPKCreateImageByCroppingTransparentPadding(CGImageRef image, CGFloat a2)
{
  v2 = image;
  if (!image)
  {
    return v2;
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(v2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = DeviceRGB;
  if (is_mul_ok(Height, Width))
  {
    v8 = Height * Width;
    if (!((Height * Width) >> 62))
    {
      v13 = malloc_type_calloc(4 * v8, 1uLL, 0x100004077774924uLL);
      v14 = CGBitmapContextCreate(v13, Width, Height, 8uLL, 4 * Width, v7, 0x4001u);
      CGColorSpaceRelease(v7);
      if (v14)
      {
        v39.size.width = Width;
        v39.size.height = Height;
        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        CGContextDrawImage(v14, v39, v2);
        CGContextRelease(v14);
      }

      v15 = 0;
      v16 = 0;
      if (v8)
      {
        v17 = 0;
        v18 = 0;
        v19 = Width;
        do
        {
          if (v17 >= Width)
          {
            ++v18;
            v17 = 0;
          }

          if (*(v13 + 4 * v17 + v18 * 4 * Width + 3))
          {
            if (v19 >= v17)
            {
              v19 = v17;
            }

            if (v15 <= v17)
            {
              v15 = v17;
            }

            if (Height >= v18)
            {
              Height = v18;
            }

            if (v16 <= v18)
            {
              v16 = v18;
            }
          }

          ++v17;
          --v8;
        }

        while (v8);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v19 = Width;
        if (!v13)
        {
LABEL_24:
          v22 = (v20 - Width);
          v23 = (v21 - Height);
          v40.origin.x = Width;
          v40.origin.y = Height;
          v40.size.width = v22;
          v40.size.height = v23;
          v24 = CGRectGetMinX(v40) / a2;
          v37 = floorf(v24);
          v41.origin.x = Width;
          v41.origin.y = Height;
          v41.size.width = v22;
          v41.size.height = v23;
          v25 = CGRectGetMinY(v41) / a2;
          v9 = floorf(v25);
          v42.origin.x = Width;
          v42.origin.y = Height;
          v42.size.width = v22;
          v42.size.height = v23;
          v26 = CGRectGetWidth(v42) / a2;
          v12 = ceilf(v26) + 1.0;
          v43.origin.x = Width;
          v43.origin.y = Height;
          v43.size.width = v22;
          v43.size.height = v23;
          v10 = v37;
          v27 = CGRectGetHeight(v43) / a2;
          v11 = ceilf(v27) + 1.0;
          goto LABEL_25;
        }
      }

      free(v13);
      Width = v19;
      v20 = v15;
      v21 = v16;
      goto LABEL_24;
    }
  }

  v10 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  CGColorSpaceRelease(DeviceRGB);
LABEL_25:
  v28 = CGImageGetWidth(v2);
  v29 = CGImageGetHeight(v2);
  if (v12 == v28 && v11 == v29)
  {
    return 0;
  }

  v31 = vcvtpd_u64_f64(v12 * a2);
  v32 = vcvtpd_u64_f64(v11 * a2);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v34 = CGColorSpaceCreateDeviceRGB();
  v35 = CGBitmapContextCreate(0, v31, v32, 8uLL, AlignedBytesPerRow, v34, 0x2002u);
  CGColorSpaceRelease(v34);
  if (!v35)
  {
    return 0;
  }

  v44.size.width = v31;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.height = v32;
  CGContextClearRect(v35, v44);
  CGContextTranslateCTM(v35, 0.0, v32);
  CGContextScaleCTM(v35, a2, -a2);
  CGContextGetCTM(&v38, v35);
  CGContextSetBaseCTM();
  CGContextSaveGState(v35);
  CGContextTranslateCTM(v35, 0.0, v29);
  CGContextScaleCTM(v35, 1.0, -1.0);
  v45.origin.x = -v10;
  v45.origin.y = v9;
  v45.size.width = v28;
  v45.size.height = v29;
  CGContextDrawImage(v35, v45, v2);
  v2 = CGBitmapContextCreateImage(v35);
  CGContextRestoreGState(v35);
  CGContextRelease(v35);
  return v2;
}

void __NPKIdentifyDevicePaymentApplicationsForPass_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) firstObject];
  [v4 setSecureElementIdentifier:v3];

  if ([*(a1 + 32) count])
  {
    [v4 setState:1];
  }
}

id NPKGenerateDemoPaymentApplicationForSEID(void *a1)
{
  v1 = MEMORY[0x277D37FE0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", arc4random_uniform(0x2706u) + 1];
  [v3 setDPANSuffix:v4];
  [v3 setSupportsInAppPayment:1];
  [v3 setSupportsContactlessPayment:1];
  [v3 setState:1];
  v5 = NPKGenerateRandomDeviceIdentifier();
  [v3 setDPANIdentifier:v5];

  v6 = NPKGenerateRandomDeviceIdentifier();
  [v3 setApplicationIdentifier:v6];

  [v3 setSecureElementIdentifier:v2];
  [v3 setSupportsInAppPayment:1];
  [v3 setSupportsContactlessPayment:1];

  return v3;
}

id NPKGenerateRandomDeviceIdentifier()
{
  v4 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    v0 = 0;
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes length:16];
    v0 = [v1 hexEncoding];
  }

  return v0;
}

void NPKUpdateTransitPassPropertiesForPass(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = pk_Payment_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Applet state is %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v9 = [v3 devicePrimaryPaymentApplication];
    v10 = [v4 transitPassPropertiesWithPaymentApplication:v9 pass:v3];
    [v9 setTransitProperties:v10];
    v11 = [v3 devicePaymentApplications];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __NPKUpdateTransitPassPropertiesForPass_block_invoke;
    v24 = &unk_279947FF0;
    v12 = v9;
    v25 = v12;
    v13 = v10;
    v26 = v13;
    [v11 enumerateObjectsUsingBlock:&v21];

    v15 = pk_Payment_log(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_Payment_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [MEMORY[0x277D38310] passPropertiesForPass:{v3, v21, v22, v23, v24, v25}];
        v20 = [v12 transitProperties];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Transit properties are %@ (%@)", buf, 0x16u);
      }
    }
  }
}

void __NPKUpdateTransitPassPropertiesForPass_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 applicationIdentifier];
  v4 = [*(a1 + 32) applicationIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [v6 setTransitProperties:*(a1 + 40)];
  }
}

void NPKUpdateTransactionSourceIdentifierForPass(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 devicePrimaryPaymentApplication];
  [v5 setTransactionSourceIdentifier:v3];

  v6 = [v4 devicePrimaryContactlessPaymentApplication];
  [v6 setTransactionSourceIdentifier:v3];

  v7 = [v4 devicePrimaryInAppPaymentApplication];
  [v7 setTransactionSourceIdentifier:v3];

  v8 = [v4 devicePaymentApplications];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __NPKUpdateTransactionSourceIdentifierForPass_block_invoke;
  v14[3] = &unk_27994B648;
  v9 = v3;
  v15 = v9;
  [v8 enumerateObjectsUsingBlock:v14];

  v10 = [v4 paymentApplications];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __NPKUpdateTransactionSourceIdentifierForPass_block_invoke_2;
  v12[3] = &unk_27994B648;
  v13 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v12];
}

uint64_t NPKIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  else if (v3 || !v4)
  {
    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    v6 = !v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void NPKPreferencesSetBooleanValue(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithBool:a2];
  CFPreferencesSetAppValue(v4, v5, @"com.apple.nanopassbook");
}

id NPKPreferencesGetValueFromDomain(const __CFString *a1, const __CFString *a2)
{
  v2 = CFPreferencesCopyAppValue(a1, a2);

  return v2;
}

uint64_t NPKIsRunningInStoreDemoMode(uint64_t a1, uint64_t a2)
{
  if (_InitializeDemoModeValuesIfNecessary_onceToken != -1)
  {
    NPKIsRunningInDemoMode_cold_1();
  }

  return __InStoreDemoMode;
}

uint64_t NPKIsRunningInUIOnlyDemoMode(uint64_t a1, uint64_t a2)
{
  if (_InitializeDemoModeValuesIfNecessary_onceToken != -1)
  {
    NPKIsRunningInDemoMode_cold_1();
  }

  return __InUIOnlyDemoMode;
}

uint64_t NPKIsRunningInHandsOnDemoMode(uint64_t a1, uint64_t a2)
{
  if (_InitializeDemoModeValuesIfNecessary_onceToken != -1)
  {
    NPKIsRunningInDemoMode_cold_1();
  }

  return __InHandsOnDemoMode;
}

id NPKGlobalDomainPreferencesGetValue(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, *MEMORY[0x277CBF008]);

  return v1;
}

void NPKGlobalDomainPreferencesSetBooleanValue(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithBool:a2];
  CFPreferencesSetAppValue(v4, v5, *MEMORY[0x277CBF008]);
}

double NPKRelevantTransitNotificationsCheckInterval()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = CFPreferencesCopyAppValue(@"NPKRelevantTransitNotificationsCheckInterval", *MEMORY[0x277CBF008]);
  v1 = v0;
  if (v0 && (v0 = PKIsInternalInstall(), v0))
  {
    v2 = pk_Relevance_log(v0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v5 = pk_Relevance_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v1;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKRelevantTransitNotificationsCheckInterval: using interval from user defaults:%@", &v13, 0xCu);
      }
    }

    [v1 doubleValue];
    v7 = v6;
  }

  else
  {
    v8 = pk_Relevance_log(v0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    v7 = 3600.0;
    if (v9)
    {
      v11 = pk_Relevance_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = 0x40AC200000000000;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKRelevantTransitNotificationsCheckInterval: using default interval %f", &v13, 0xCu);
      }
    }
  }

  return v7;
}

unint64_t NPKLocaleIs24HourMode(CFLocaleRef locale)
{
  v1 = CFDateFormatterCreate(0, locale, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  Format = CFDateFormatterGetFormat(v1);
  v3 = Format;
  if (Format)
  {
    v3 = CFStringFind(Format, @"H", 0).location != -1 || CFStringFind(v3, @"k", 0).location != -1;
  }

  CFRelease(v1);
  return v3;
}

BOOL NPKHourOfDateIsSingular(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:32 fromDate:v2];

  if (v4 >= 13)
  {
    v5 = [v3 locale];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAF8] currentLocale];
    }

    v6 = v5;
    v7 = NPKLocaleIs24HourMode(v5);

    if ((v7 & 1) == 0)
    {
      v4 -= 12;
    }
  }

  return v4 == 1;
}

id NPKSupportedBarcodesFromDataAccessor(void *a1)
{
  v1 = a1;
  v2 = [v1 dictionary];
  v3 = [v2 mutableCopy];
  v4 = *MEMORY[0x277D386A8];
  v5 = [v2 objectForKey:*MEMORY[0x277D386A8]];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __NPKSupportedBarcodesFromDataAccessor_block_invoke_2;
    v17 = &unk_27994B690;
    v18 = v6;
    v19 = &__block_literal_global_384;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&v14];
    [v3 setObject:v7 forKey:{v4, v14, v15, v16, v17}];
  }

  else
  {
    v12 = *MEMORY[0x277D386A0];
    v13 = [v2 objectForKey:*MEMORY[0x277D386A0]];
    v7 = v13;
    if (v13 && __NPKSupportedBarcodesFromDataAccessor_block_invoke(v13, v13))
    {
      [v3 removeObjectForKey:v12];
    }
  }

  v8 = MEMORY[0x277D37DE0];
  v9 = [v1 bundle];

  v10 = [v8 barcodesWithPassDictionary:v3 bundle:v9];

  return v10;
}

BOOL __NPKSupportedBarcodesFromDataAccessor_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D38660]];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v4 = _PKEnumValueFromString();

    v5 = v4 == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __NPKSupportedBarcodesFromDataAccessor_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

id NPKLocalizedNameForProcessWithPID(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CEEE90]);
  v3 = [v2 bundleInfoValueForKey:*MEMORY[0x277CBED38] PID:a1];
  if (v3)
  {
    v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v3];
    v5 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v3];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 containingBundle];
      v8 = [v7 localizedName];

      if (v8)
      {
        v10 = pk_General_log(v9);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = pk_General_log(v12);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        buffer = 138412546;
        v24 = v8;
        v25 = 1024;
        v26 = a1;
        v14 = "Notice: LaunchServices yielded localized app name '%@' for pid %d";
        p_buffer = &buffer;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v16 = proc_name(a1, &buffer, 0x3FFu);
  if (v16 < 1)
  {
    v8 = 0;
  }

  else
  {
    *(&buffer + v16) = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:&buffer];
    v8 = v17;
    if (v17)
    {
      v18 = pk_General_log(v17);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v13 = pk_General_log(v20);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_14:

          goto LABEL_16;
        }

        *v22 = 138412546;
        *&v22[4] = v8;
        *&v22[12] = 1024;
        *&v22[14] = a1;
        v14 = "Notice: proc_name yielded process name '%@' for pid %d";
        p_buffer = v22;
LABEL_13:
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, v14, p_buffer, 0x12u);
        goto LABEL_14;
      }
    }
  }

LABEL_16:
  [v2 invalidate];

  return v8;
}

uint64_t NPKDoesPassSupportServiceMode(void *a1)
{
  v1 = a1;
  if (NPKIsTruthOnCard(v1))
  {
    v2 = [v1 paymentPass];
    if ([v2 effectiveContactlessPaymentApplicationState] == 1)
    {
      v3 = [v1 paymentPass];
      v4 = [v3 devicePrimaryPaymentApplication];
      v5 = [v4 supportsServiceMode];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}