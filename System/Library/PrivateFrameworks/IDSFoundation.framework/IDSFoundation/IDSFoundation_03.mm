id IDSIDAliasHashUUIDString(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(uu, 170, sizeof(uu));
  if (uuid_parse([a1 UTF8String], uu))
  {
    v4 = 0;
  }

  else
  {
    *&v8.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v8.wbuf[6] = v5;
    *&v8.wbuf[10] = v5;
    *&v8.hash[6] = v5;
    *&v8.wbuf[2] = v5;
    *v8.count = v5;
    *&v8.hash[2] = v5;
    *md = v5;
    v11 = v5;
    CC_SHA256_Init(&v8);
    CC_SHA256_Update(&v8, uu, 0x10u);
    CC_SHA256_Update(&v8, [v3 bytes], objc_msgSend(v3, "length"));
    CC_SHA256_Final(md, &v8);
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v6;
    *&out[16] = v6;
    uuid_unparse_upper(md, out);
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  }

  return v4;
}

unint64_t IDSIDAliasHashUInt64(unint64_t a1, void *a2)
{
  data[1] = *MEMORY[0x1E69E9840];
  data[0] = bswap64(a1);
  *&v8.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.wbuf[6] = v2;
  *&v8.wbuf[10] = v2;
  *&v8.hash[6] = v2;
  *&v8.wbuf[2] = v2;
  *v8.count = v2;
  *&v8.hash[2] = v2;
  *md = v2;
  v10 = v2;
  v3 = a2;
  CC_SHA256_Init(&v8);
  CC_SHA256_Update(&v8, data, 8u);
  v4 = v3;
  v5 = [v4 bytes];
  v6 = [v3 length];

  CC_SHA256_Update(&v8, v5, v6);
  CC_SHA256_Final(md, &v8);
  return bswap64(*md);
}

id IDSIDAliasFixedSalt(uint64_t a1)
{
  if (qword_1EB2BBF58 != -1)
  {
    sub_1A7E1B664();
  }

  v2 = qword_1EB2BBF60;

  return v2;
}

void sub_1A7C0C784()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x807060504030201;
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:8];
  v1 = qword_1EB2BBF60;
  qword_1EB2BBF60 = v0;
}

void *sub_1A7C0D640(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_1A7C0D930(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v5 first];
  v7 = [v5 second];

  (*(v4 + 16))(v4, v8, v7, v6);
}

uint64_t IDSQRProtoGetMaterialGetMaterialReadFrom(uint64_t a1, void *a2)
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

void sub_1A7C0DDA0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E03C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E0D4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7C0E614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7C0E6FC;
  v12[3] = &unk_1E77E1848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_1A7C0E6FC(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = [objc_opt_class() isItemNotFoundError:a1[4]];
    v4 = +[IDSFoundationLog accountIdentity];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Record not found -- Done", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B700(v2, v5, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1[7] + 16);
LABEL_15:
    v22();
    return;
  }

  v6 = a1[6];
  v7 = +[IDSFoundationLog accountIdentity];
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B770(v8);
    }

    v22 = *(a1[7] + 16);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = a1[6];
    *buf = 138543362;
    v26 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_INFO, "Found record {record: %{public}@}", buf, 0xCu);
  }

  v10 = a1[5];
  v11 = a1[6];
  v24 = 0;
  v12 = [v10 _itemFromRecord:v11 error:&v24];
  v13 = v24;
  v14 = +[IDSFoundationLog accountIdentity];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_INFO, "Constructed item -- Done {item: %{public}@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[6];
    *buf = 138543618;
    v26 = v23;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Failed to construct item -- Fail {record: %{public}@, itemError: %{public}@}", buf, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_1A7C0EAD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C0EB98;
  v8[3] = &unk_1E77DD0F0;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void sub_1A7C0EE00(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a1[4] queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C0EEF0;
  v8[3] = &unk_1E77E1848;
  v9 = v5;
  v10 = a1[5];
  v12 = a1[7];
  v11 = a1[6];
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t sub_1A7C0EEF0(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = +[IDSFoundationLog accountIdentity];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B91C(a1, v2, v5);
    }

    v6 = *(a1[7] + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_INFO, "Stored account identity item {item: %{public}@}", &v9, 0xCu);
    }

    v6 = *(a1[7] + 16);
  }

  return v6();
}

uint64_t IDSQRProtoH3EndToEndChannelUnRegisterRequestReadFrom(uint64_t a1, void *a2)
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

uint64_t IDSQRProtoParticipantStatusMapEntryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v35[0] = 0xAAAAAAAAAAAAAAAALL;
          v35[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt64Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterIndicationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadData();
        v23 = 24;
LABEL_38:
        v24 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_43;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
      objc_storeStrong((a1 + 16), v14);
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v22 = PBReaderReadData();
      v23 = 32;
      goto LABEL_38;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v27[0] & 0x7F) << v15;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_42:
      *(a1 + 8) = v21;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1A7C11AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 == *(a2 + 1))
  {
    if (v2 == 2)
    {
      if (*(a1 + 4) == *(a2 + 4))
      {
        return *(a1 + 2) == *(a2 + 2);
      }
    }

    else if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
    {
      return *(a1 + 2) == *(a2 + 2);
    }
  }

  return 0;
}

uint64_t sub_1A7C11D88(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v10 = *(a1 + 12);
    v11 = *(a1 + 16);
    v12 = (*(a1 + 8) - v11) ^ __ROR4__(v11, 28);
    v13 = v11 + v10;
    v14 = (v10 - v12) ^ __ROR4__(v12, 26);
    v15 = v12 + v13;
    v16 = (v13 - v14) ^ __ROR4__(v14, 24);
    v17 = v14 + v15;
    v18 = (v15 - v16) ^ __ROR4__(v16, 16);
    v19 = v16 + v17;
    v20 = (v17 - v18) ^ __ROR4__(v18, 13);
    v21 = v18 + v19;
    v22 = v21 + *(a1 + 20);
    v23 = v21 + *(a1 + 2) + v20;
    HIDWORD(v24) = v23;
    LODWORD(v24) = v23;
    v25 = ((v19 - v20) ^ __ROR4__(v20, 28) ^ v23) - (v24 >> 18);
    HIDWORD(v24) = v25;
    LODWORD(v24) = v25;
    v26 = (v25 ^ v22) - (v24 >> 21);
    HIDWORD(v24) = v26;
    LODWORD(v24) = v26;
    v27 = (v26 ^ v23) - (v24 >> 7);
    HIDWORD(v24) = v27;
    LODWORD(v24) = v27;
    v28 = (v27 ^ v25) - (v24 >> 16);
    HIDWORD(v24) = v28;
    LODWORD(v24) = v28;
    HIDWORD(v24) = (v28 ^ v26) - (v24 >> 28);
    LODWORD(v24) = HIDWORD(v24);
    v8 = (HIDWORD(v24) ^ v27) - (v24 >> 18);
    v9 = v8 ^ v28;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = *(a1 + 2);
    v3 = -16383 * v2;
    v4 = 33552384 * v2 - ((-16383 * v2) >> 21) + ((-16383 * v2) ^ *(a1 + 4));
    HIDWORD(v5) = v4;
    LODWORD(v5) = v4;
    v6 = (v4 ^ v2) - (v5 >> 7);
    HIDWORD(v5) = v6;
    LODWORD(v5) = v6;
    v7 = (v6 ^ v3) - (v5 >> 16);
    HIDWORD(v5) = v7;
    LODWORD(v5) = v7;
    HIDWORD(v5) = (v7 ^ v4) - (v5 >> 28);
    LODWORD(v5) = HIDWORD(v5);
    v8 = (HIDWORD(v5) ^ v6) - (v5 >> 18);
    v9 = v8 ^ v7;
LABEL_5:
    HIDWORD(v29) = v8;
    LODWORD(v29) = v8;
    return v9 - (v29 >> 8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t IDSAssignIdentityValuesToMessage(void *a1, __SecIdentity *a2)
{
  v3 = a1;
  v4 = IDSCopyPrivateKeyFromIdentity(a2);
  v5 = IDSCopyCertificateKeyFromIdentity(a2);
  if (v4)
  {
    [v3 setPushPrivateKey:v4];
  }

  if (v5)
  {
    [v3 setPushCertificate:v5];
  }

  if (v4)
  {
    CFRelease(v4);
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

SecKeyRef IDSCopyPrivateKeyFromIdentity(__SecIdentity *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  privateKeyRef = 0;
  if (!a1)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "  Missing push identity";
      v5 = v3;
      v6 = 2;
      goto LABEL_7;
    }

LABEL_8:

    return privateKeyRef;
  }

  v1 = SecIdentityCopyPrivateKey(a1, &privateKeyRef);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v2;
      v4 = "Failed to copy private key: %d";
      v5 = v3;
      v6 = 8;
LABEL_7:
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return privateKeyRef;
}

CFDataRef IDSCopyCertificateKeyFromIdentity(__SecIdentity *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  certificateRef = 0;
  if (a1)
  {
    v1 = SecIdentityCopyCertificate(a1, &certificateRef);
    if (!v1 && certificateRef)
    {
      v2 = SecCertificateCopyData(certificateRef);
      goto LABEL_11;
    }

    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v1;
      v4 = "Failed to copy certificate: %d";
      v5 = v3;
      v6 = 8;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "  Missing push identity";
      v5 = v3;
      v6 = 2;
LABEL_9:
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  v2 = 0;
LABEL_11:
  if (certificateRef)
  {
    CFRelease(certificateRef);
    certificateRef = 0;
  }

  return v2;
}

id IDSParseDERCertificatesFromChain(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  if (![v1 length])
  {
    v8 = v2;
    goto LABEL_12;
  }

  if ([v1 length])
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [v1 subdataWithRange:{v3, v4 - v3}];
      v6 = SecCertificateCreateWithData(0, v5);
      if (v6)
      {
        CFRelease(v6);
        [v2 addObject:v5];
        v3 = v4;
      }
    }

    while (v4++ < [v1 length]);
  }

  if (![v1 length] || objc_msgSend(v2, "count"))
  {
    v8 = [v2 copy];
LABEL_12:
    v9 = v8;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterAckResponseReadFrom(uint64_t a1, void *a2)
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

id _IDSIDProtocolVersionNumber()
{
  if (os_variant_allows_internal_security_policies() && (v0 = IMGetDomainIntForKey(), v0 >= 1))
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:v0];
  }

  else
  {
    v1 = &unk_1F1B201B0;
  }

  return v1;
}

void *_IDSStorageCheckVersionNumber()
{
  v0 = &unk_1F1B20228;
  if (_os_feature_enabled_impl())
  {
    v1 = [IDSServerBag sharedInstanceForBagType:1];
    v2 = [v1 objectForKey:@"ids-enable-coming-online-enhancement-percentage"];

    if (v2)
    {
      objc_opt_class();
      v0 = &unk_1F1B20210;
      if (objc_opt_isKindOfClass())
      {
        v3 = [v2 unsignedIntegerValue];
        v4 = [MEMORY[0x1E69A6180] comingOnlineEnabledDiceRoll];
        if (!v4)
        {
          v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random_uniform(0x64u)];
          [MEMORY[0x1E69A6180] setComingOnlineEnabledDiceRoll:v4];
        }

        if (v3 <= [v4 unsignedIntValue])
        {
          v0 = &unk_1F1B20228;
        }
      }
    }

    else
    {
      v0 = &unk_1F1B20210;
    }
  }

  return v0;
}

void sub_1A7C1602C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1A7C1605C(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1BDB4();
    }

    v8 = [*(a1 + 32) queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C16390;
    v21[3] = &unk_1E77DD0F0;
    v23 = *(a1 + 40);
    v22 = v6;
    dispatch_async(v8, v21);

    v9 = v23;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v11 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
          v17 = [objc_opt_class() _messageFromRecord:v16];
          if (v17)
          {
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "Fetched hard-coded messages", buf, 2u);
    }

    v19 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C16370;
    block[3] = &unk_1E77DD0F0;
    v20 = *(a1 + 40);
    v25 = v10;
    v26 = v20;
    v9 = v10;
    dispatch_async(v19, block);
  }
}

void sub_1A7C16570(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = +[IDSFoundationLog cloudKit];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BE1C();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v17 = v6;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_INFO, "TransportRecordZone - Create - Done {createdZones: %{private}@}", buf, 0xCu);
  }

  v10 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7C166E8;
  v13[3] = &unk_1E77DD0F0;
  v11 = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_1A7C16898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog cloudKit];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BE84();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v17 = v6;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_INFO, "TransportRecordZone - Create - Done {deletedZones: %{private}@}", buf, 0xCu);
  }

  v10 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A7C16A10;
  v13[3] = &unk_1E77DD0F0;
  v11 = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  dispatch_async(v10, v13);
}

void sub_1A7C16DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, char a24)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1A7C16E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() _messageFromRecord:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

void sub_1A7C16E88(id *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = +[IDSFoundationLog cloudKit];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1BEEC();
    }

    v13 = [a1[4] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C1716C;
    block[3] = &unk_1E77DD0F0;
    v28 = a1[6];
    v27 = v10;
    dispatch_async(v13, block);

    v14 = v28;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1[5], "count")}];
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "!setState messages.count=%@", buf, 0xCu);
    }

    v16 = +[IDSFoundationLog cloudKit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:a5];
      *buf = 138412290;
      v30 = v17;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "!setState moreComing=%@", buf, 0xCu);
    }

    v18 = [[IDSCloudKitTransportLogChangeToken alloc] initWithCKToken:v9];
    v19 = [a1[4] queue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A7C1718C;
    v21[3] = &unk_1E77E19B8;
    v24 = a1[6];
    v20 = a1[5];
    v25 = a5;
    v22 = v20;
    v23 = v18;
    v14 = v18;
    dispatch_async(v19, v21);
  }
}

void sub_1A7C179E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_1A7C18AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = [v6 bytes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7C18B8C;
  v12[3] = &unk_1E77E1A08;
  v13 = v6;
  v9 = v6;
  v10 = [v7 initWithBytesNoCopy:v8 + a3 length:a4 deallocator:v12];

  return v10;
}

id sub_1A7C1CCBC(void *a1)
{
  v1 = sub_1A7C22174(a1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = MEMORY[0x1E695DEC8];
  v4 = NSHomeDirectory();
  v5 = [v3 arrayWithObjects:{v4, @"/Library/IdentityServices/incomingfiles/", v1, 0}];
  v6 = [v2 pathWithComponents:v5];

  return v6;
}

void sub_1A7C1F6A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7C1F5ECLL);
  }

  _Unwind_Resume(a1);
}

id sub_1A7C22174(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
  v3 = [v2 UUIDString];
  if (!v3)
  {
    v4 = [v1 lastPathComponent];
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"];
    v6 = [v5 invertedSet];

    v7 = [v4 componentsSeparatedByCharactersInSet:v6];
    v3 = [v7 componentsJoinedByString:&stru_1F1AC8480];
  }

  return v3;
}

id formattedBytes(unint64_t a1)
{
  if (a1 >> 5 > 0xC34)
  {
    if (a1 > 0x9C3DFF)
    {
      if (a1 >> 22 > 0x18)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu M", (a1 + 0x80000) >> 20];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4.1f M", vcvtd_n_f64_u64(a1, 0x14uLL)];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu K", (a1 + 512) >> 10];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%5llu ", a1];
  }
  v1 = ;

  return v1;
}

id formattedSpeed(unint64_t a1)
{
  if (a1 >> 5 > 0xC34)
  {
    if (a1 > 0x98948B)
    {
      if (a1 > 0x5F5E0FF)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu M", (a1 + 500000) / 0xF4240];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%4.1f M", a1 / 1000000.0];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%4llu k", (a1 + 500) / 0x3E8uLL];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%5llu ", a1];
  }
  v1 = ;

  return v1;
}

void *sub_1A7C226B4(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(a1 + a2 + 40, 0x10100401E3B4EAAuLL);
  if (result)
  {
    v5 = result + a2 + 40;
    *result = v5;
    result[1] = &v5[a1];
    result[2] = v5;
    result[3] = v5;
    result[4] = a2;
  }

  return result;
}

void sub_1A7C22710(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *sub_1A7C2271C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (result < v3)
  {
    v4 = *(a1 + 24) - v3;
    result = memmove(result, v3, v4);
    v5 = *a1 + v4;
    *(a1 + 16) = *a1;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t IDSQRProtoH3MessageReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v21) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v21 & 0x7F) << v6;
      if ((v21 & 0x80) == 0)
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

    switch((v13 >> 3))
    {
      case 0u:
        v14 = 0;
        while (1)
        {
          LOBYTE(v21) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v21 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_148;
          }
        }

        [a2 hasError];
        goto LABEL_148;
      case 1u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 1;
        v19 = objc_alloc_init(IDSQRProtoAllocBindRequest);
        objc_storeStrong((a1 + 8), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 2u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 2;
        v19 = objc_alloc_init(IDSQRProtoAllocBindResponse);
        objc_storeStrong((a1 + 16), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 3u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 3;
        v19 = objc_alloc_init(IDSQRProtoDiagnosticIndication);
        objc_storeStrong((a1 + 56), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoDiagnosticIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 4u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 4;
        v19 = objc_alloc_init(IDSQRProtoGoAwayIndication);
        objc_storeStrong((a1 + 88), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGoAwayIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 5u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 5;
        v19 = objc_alloc_init(IDSQRProtoInfoRequest);
        objc_storeStrong((a1 + 96), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoInfoRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 6u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 6;
        v19 = objc_alloc_init(IDSQRProtoInfoResponse);
        objc_storeStrong((a1 + 104), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoInfoResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 7u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 7;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateRequest);
        objc_storeStrong((a1 + 128), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 8u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 8;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateResponse);
        objc_storeStrong((a1 + 136), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 9u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 9;
        v19 = objc_alloc_init(IDSQRProtoParticipantUpdateIndication);
        objc_storeStrong((a1 + 120), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xAu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 10;
        v19 = objc_alloc_init(IDSQRProtoPluginControlRequest);
        objc_storeStrong((a1 + 152), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xBu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 11;
        v19 = objc_alloc_init(IDSQRProtoPluginControlResponse);
        objc_storeStrong((a1 + 160), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xCu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 12;
        v19 = objc_alloc_init(IDSQRProtoPluginControlIndication);
        objc_storeStrong((a1 + 144), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPluginControlIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xDu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 13;
        v19 = objc_alloc_init(IDSQRProtoErrorIndication);
        objc_storeStrong((a1 + 64), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoErrorIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xEu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 14;
        v19 = objc_alloc_init(IDSQRProtoReallocateIndication);
        objc_storeStrong((a1 + 192), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoReallocateIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0xFu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 15;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoRequest);
        objc_storeStrong((a1 + 248), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x10u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 16;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoResponse);
        objc_storeStrong((a1 + 256), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x11u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 17;
        v19 = objc_alloc_init(IDSQRProtoSessionInfoIndication);
        objc_storeStrong((a1 + 240), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoSessionInfoIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x12u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 18;
        v19 = objc_alloc_init(IDSQRProtoStatsRequest);
        objc_storeStrong((a1 + 264), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoStatsRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x13u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 19;
        v19 = objc_alloc_init(IDSQRProtoStatsResponse);
        objc_storeStrong((a1 + 272), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoStatsResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x14u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 20;
        v19 = objc_alloc_init(IDSQRProtoTestRequest);
        objc_storeStrong((a1 + 280), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoTestRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x15u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 21;
        v19 = objc_alloc_init(IDSQRProtoTestResponse);
        objc_storeStrong((a1 + 288), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoTestResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x16u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 22;
        v19 = objc_alloc_init(IDSQRProtoUnAllocBindRequest);
        objc_storeStrong((a1 + 296), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x17u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 23;
        v19 = objc_alloc_init(IDSQRProtoUnAllocBindResponse);
        objc_storeStrong((a1 + 304), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x18u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 24;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialRequest);
        objc_storeStrong((a1 + 176), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x19u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 25;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialResponse);
        objc_storeStrong((a1 + 184), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Au:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 26;
        v19 = objc_alloc_init(IDSQRProtoPutMaterialIndication);
        objc_storeStrong((a1 + 168), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Bu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 27;
        v19 = objc_alloc_init(IDSQRProtoGetMaterialRequest);
        objc_storeStrong((a1 + 72), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGetMaterialRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Cu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 28;
        v19 = objc_alloc_init(IDSQRProtoGetMaterialResponse);
        objc_storeStrong((a1 + 80), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoGetMaterialResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x1Fu:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 29;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterRequest);
        objc_storeStrong((a1 + 224), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x20u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 30;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterResponse);
        objc_storeStrong((a1 + 232), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x21u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 31;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterIndication);
        objc_storeStrong((a1 + 216), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x22u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 32;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckRequest);
        objc_storeStrong((a1 + 200), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterAckRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x23u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 33;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterAckResponse);
        objc_storeStrong((a1 + 208), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterAckResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x24u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 34;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterRequest);
        objc_storeStrong((a1 + 320), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelUnRegisterRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x25u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 35;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterResponse);
        objc_storeStrong((a1 + 328), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRProtoH3EndToEndChannelUnRegisterResponseReadFrom(v19, a2))
        {
          goto LABEL_147;
        }

        goto LABEL_153;
      case 0x26u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 36;
        v19 = objc_alloc_init(IDSQRProtoH3EndToEndChannelUnRegisterIndication);
        objc_storeStrong((a1 + 312), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelUnRegisterIndicationReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x27u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 37;
        v19 = objc_alloc_init(IDSQRProtoCallModeUpdateRequest);
        objc_storeStrong((a1 + 24), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x28u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 38;
        v19 = objc_alloc_init(IDSQRProtoCallModeUpdateResponse);
        objc_storeStrong((a1 + 32), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoCallModeUpdateResponseReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x31u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 39;
        v19 = objc_alloc_init(IDSQRH3ChannelConfigRequest);
        objc_storeStrong((a1 + 40), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRH3ChannelConfigRequestReadFrom(v19, a2))
        {
          goto LABEL_153;
        }

        goto LABEL_147;
      case 0x32u:
        [a1 clearOneofValuesForInnerMessage];
        *(a1 + 336) |= 1u;
        *(a1 + 112) = 40;
        v19 = objc_alloc_init(IDSQRH3ChannelConfigResponse);
        objc_storeStrong((a1 + 48), v19);
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && IDSQRH3ChannelConfigResponseReadFrom(v19, a2))
        {
LABEL_147:
          PBReaderRecallMark();

LABEL_148:
          v4 = a2;
          continue;
        }

LABEL_153:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_148;
    }
  }
}

void sub_1A7C29E00(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A6138] serverBag];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Finished posting SOS {response: %@, postError: %@}", &v10, 0x16u);
  }

  v9 = [*(a1 + 32) rateLimiter];
  [v9 noteItem:@"SOSRateLimitItem"];

  [*(a1 + 40) finishTasksAndInvalidate];
}

uint64_t IDSQRProtoUnAllocBindUnAllocBindReadFrom(uint64_t a1, void *a2)
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

double IDSQRCHDataList_Create(int **a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_malloc(112 * a2, 0x1010040F86BD4C7uLL);
      v5[1] = v6;
      if (v6)
      {
        *v5 = a2;
        *(v5 + 1) = 0;
        *a1 = v5;
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *a1;
          v9 = **a1;
          *buf = 134218240;
          v38 = v8;
          v39 = 1024;
          v40 = v9;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: created new list %p, size %d.", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList: created new list %p, size %d.", v11, v12, v13, v14, v15, *a1);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: created new list %p, size %d.", v16, v17, v18, v19, *a1);
          }
        }
      }

      else
      {
        v30 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: failed to initialize.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: failed to initialize.", v31, v32, v33, v34, v35);
        }
      }
    }

    else
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList_Init failed.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList_Init failed.", v21, v22, v23, v24, v25, v35);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList_Init failed.", v26, v27, v28, v29, v36);
          }
        }
      }
    }
  }

  return result;
}

void IDSQRCHDataList_Destroy(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSQRCHDataList: list %p destroyed.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSQRCHDataList: list %p destroyed.", v4, v5, v6, v7, v8, a1);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRCHDataList: list %p destroyed.", v9, v10, v11, v12, a1);
      }
    }

    free(a1);
  }
}

uint64_t IDSQRCHDataList_Count(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t IDSQRCHDataList_ItemAtIndex(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 4) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 8) + 112 * a2;
    }
  }

  return result;
}

void *StunUtilSkipQualityMetadata(unsigned __int8 **a1)
{
  v2 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C438();
  }

  v3 = *(a1 + 111);
  v4 = +[IDSFoundationLog Stun];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 < 1)
  {
    if (v5)
    {
      sub_1A7E1C474();
    }

    v6 = a1[2];
  }

  else
  {
    if (v5)
    {
      sub_1A7E1C4EC();
    }

    v6 = a1[2];
    if (v6 >= *(a1 + 228))
    {
      v6 = *(a1 + 228);
    }
  }

  v7 = *a1;
  v8 = &(*a1)[v6];
  v9 = *a1;
  while (v9 < v8)
  {
    v10 = *v9;
    if (v10 >> 6 == 2)
    {
      v11 = 6;
    }

    else
    {
      v11 = 8;
    }

    if (v10 >> 6 == 1)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (v10 < 0x40)
    {
      v12 = 2;
    }

    v13 = &v9[v12];
    if (v13 > v8)
    {
      v14 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C574();
      }

      v7 = *a1;
      break;
    }

    v9 = v13;
    if ((v10 & 8) == 0)
    {
      LODWORD(v9) = v13;
      break;
    }
  }

  v15 = v9 - v7;
  if (v7 + v9 - v7 > v8)
  {
    v16 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C5B0();
    }

    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    goto LABEL_43;
  }

  v17 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C5EC();
  }

  result = IDSLinkPacketBufferAddBufferStart(a1, v15);
  if (*(a1 + 111) >= 1)
  {
    a1[56] += v15;
    v19 = *(a1 + 228);
    if (v19 < v15)
    {
      v20 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C660();
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

LABEL_43:
      abort();
    }

    *(a1 + 228) = v19 - v15;
  }

  return result;
}

void sub_1A7C2B818(uint64_t a1, char a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1305))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 536);
  if ((v5 & 0x400) != 0)
  {
    if (*(a1 + 1305))
    {
      v6 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C69C();
      }

      v5 = *(a1 + 536);
    }

    v4 |= 0x10000u;
  }

  if (*(a1 + 535))
  {
    v7 = v4 | 0x200000;
  }

  else
  {
    v7 = v4;
  }

  if (*(a1 + 533))
  {
    v7 |= 0x40000u;
  }

  if (*(a1 + 534))
  {
    v7 |= 0x80000u;
  }

  v8 = v7 | (16 * v5) & 0x800000;
  if (v8 <= 0x8000)
  {
    v9 = v7 | (16 * v5) & 0x800000;
  }

  else
  {
    v9 = v8 | 0x8000;
  }

  if (v8 <= 0x8000)
  {
    v10 = 2;
  }

  else
  {
    v10 = 4;
  }

  MEMORY[0x1EEE9AC00](a1);
  v12 = &buf[-v11];
  memset(&buf[-v11], 170, v13);
  v14 = &v12[v10];
  v15 = *(a1 + 460);
  if ((v15 - 1) > 0xB)
  {
    if (v15)
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 460);
        *buf = 67109120;
        v52 = v20;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "_prependExtendedChannelHeader failed due to invalid streamID count (%d).", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_prependExtendedChannelHeader failed due to invalid streamID count (%d).", v21, v22, v23, v24, v25, *(a1 + 460));
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_prependExtendedChannelHeader failed due to invalid streamID count (%d).", v26, v27, v28, v29, *(a1 + 460));
          }
        }
      }

      return;
    }
  }

  else
  {
    *v14 = bswap32(*(a1 + 464)) >> 16;
    if (v15 < 2)
    {
      v9 |= 1u;
      v14 += 2;
    }

    else
    {
      v14[2] = v15 - 1;
      v14 += 3;
      v16 = (a1 + 466);
      v17 = v15 - 1;
      do
      {
        v18 = *v16++;
        *v14 = bswap32(v18) >> 16;
        v14 += 2;
        --v17;
      }

      while (v17);
      v9 |= 3u;
    }
  }

  v30 = *(a1 + 488);
  if (v30)
  {
    v9 |= 4u;
    *v14 = bswap64(v30);
    v14 += 8;
  }

  if (*(a1 + 496))
  {
    v9 |= 8u;
    *v14++ = *(a1 + 496);
  }

  if (*(a1 + 498))
  {
    v9 |= 0x10u;
    *v14 = __rev16(*(a1 + 498));
    v14 += 2;
  }

  if (*(a1 + 500))
  {
    v9 |= 0x20u;
    *v14++ = *(a1 + 500);
  }

  if (*(a1 + 501))
  {
    v31 = v9 | 0x40;
  }

  else
  {
    v31 = v9;
  }

  if ((a2 & 1) == 0)
  {
    v31 |= 0x80u;
    *v14 = bswap32(*(a1 + 16)) >> 16;
    v14 += 2;
  }

  if (*(a1 + 502))
  {
    v31 |= 0x100u;
  }

  if ((*(a1 + 536) & 0x40) != 0)
  {
    v31 |= 0x200u;
    *v14 = bswap32(*(a1 + 504)) >> 16;
    v14 += 2;
  }

  if (*(a1 + 516))
  {
    v31 |= 0x800u;
  }

  v32 = *(a1 + 520);
  if ((v32 - 1) <= 3)
  {
    *v14 = bswap32(*(a1 + 524)) >> 16;
    LOWORD(v33) = v14 + 2;
    v34 = *(a1 + 520);
    if (v34 < 2)
    {
      v31 |= 0x2000u;
    }

    else
    {
      v33 = v14 + 3;
      v14[2] = v34 - 1;
      v31 |= 0x6000u;
      if (*(a1 + 520) >= 2)
      {
        v35 = (a1 + 526);
        v36 = 1;
        do
        {
          v37 = *v35++;
          *v33++ = bswap32(v37) >> 16;
          ++v36;
        }

        while (v36 < *(a1 + 520));
      }
    }

    LOWORD(v14) = v33;
    goto LABEL_70;
  }

  if (!v32)
  {
LABEL_70:
    v49 = bswap32(v31);
    *v12 = HIWORD(v49);
    if (v8 > 0x8000)
    {
      *(v12 + 1) = v49;
    }

    v50 = v14 - v12;
    IDSLinkPacketBufferAddBufferStart(a1, -(v14 - v12));
    memcpy(*a1, v12, v50);
    return;
  }

  v38 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(a1 + 520);
    *buf = 67109120;
    v52 = v39;
    _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).", v40, v41, v42, v43, v44, *(a1 + 520));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_prependExtendedChannelHeader failed due to invalid relay linkID count (%d).", v45, v46, v47, v48, *(a1 + 520));
      }
    }
  }
}

void StunUtilGetMappedParticipantID(uint64_t a1, int a2, void *a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a1 + 96 * a2;
  v9 = *(v8 + 488);
  v10 = [v7 participantIDMap];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    if (v11)
    {
      v12 = [v7 participantIDMap];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
      v14 = [CFDictionaryGetValue(v12 v13)];
    }

    else
    {
      v14 = [0 unsignedLongLongValue];
    }
  }

  else
  {
    v14 = [0 unsignedLongLongValue];
  }

  if (v14)
  {
    goto LABEL_8;
  }

  if (a4)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 1216);
      *buf = 134218496;
      v35 = v9;
      v36 = 2048;
      v37 = 0;
      v38 = 1024;
      v39 = v16;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "Incoming: pid -> epid (%llu->%llu) on link %d.", buf, 0x1Cu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_8;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_8;
    }

    _IDSLogTransport(@"GL", @"IDS", @"Incoming: pid -> epid (%llu->%llu) on link %d.", v17, v18, v19, v20, v21, v9);
    if ((_IDSShouldLog(0) & 1) == 0)
    {
      goto LABEL_8;
    }

    v26 = @"Incoming: pid -> epid (%llu->%llu) on link %d.";
LABEL_22:
    _IDSLogV(0, @"IDSFoundation", @"GL", v26, v22, v23, v24, v25, v9);
    goto LABEL_8;
  }

  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 1216);
    *buf = 134218496;
    v35 = v9;
    v36 = 2048;
    v37 = 0;
    v38 = 1024;
    v39 = v28;
    _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "Outgoing: pid -> epid (%llu->%llu) on link %d.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Outgoing: pid -> epid (%llu->%llu) on link %d.", v29, v30, v31, v32, v33, v9);
      if (_IDSShouldLog(0))
      {
        v26 = @"Outgoing: pid -> epid (%llu->%llu) on link %d.";
        goto LABEL_22;
      }
    }
  }

LABEL_8:
  *(v8 + 488) = v14;
}

BOOL StunUtilPrepareOutgoingChannelData(__int16 a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (a3 <= 0)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "StunUtilPrepareOutgoingChannelData failed due to invalid parameter.", v28, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilPrepareOutgoingChannelData failed due to invalid parameter.", v18, v19, v20, v21, v22, *v28);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilPrepareOutgoingChannelData failed due to invalid parameter.", v23, v24, v25, v26, *v28);
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 & 0xF0;
    v11 = 8 * (a3 - 1);
    v12 = 8 * a3;
    do
    {
      v13 = a2[v8 / 8];
      *(v13 + 45) = 0;
      if (v10 == 96)
      {
        sub_1A7C2B818(v13, v11 == v8);
        v13 = a2[v8 / 8];
      }

      v9 += *(v13 + 16);
      v8 += 8;
    }

    while (v12 != v8);
    v14 = *a2;
    IDSLinkPacketBufferAddBufferStart(*a2, -4);
    **v14 = a1;
    *(*v14 + 2) = bswap32(v9) >> 16;
    if ((a4 - 3) < 2 && (v9 & 3) != 0)
    {
      v15 = a2[a3 - 1];
      v16 = 4 - (v9 & 3);
      memset((*v15 + v15[2]), 20, v16);
      v15[2] += v16;
    }
  }

  return a3 > 0;
}

uint64_t sub_1A7C2C22C(unsigned __int16 *a1, uint64_t a2, __int16 a3, _WORD *a4)
{
  if (a2 - a1 <= 1)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: packet is too short for stats-id.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (!_IDSShouldLogTransport())
    {
      return 0xFFFFFFFFLL;
    }

    _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: packet is too short for stats-id.", v5, v6, v7, v8, v9, *v28);
    if (!_IDSShouldLog(0))
    {
      return 0xFFFFFFFFLL;
    }

    v14 = @"_StunUtilProcessIncomingStats: packet is too short for stats-id.";
    goto LABEL_22;
  }

  a4[28] = bswap32(*a1) >> 16;
  if ((a3 & 0x400) == 0)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: missing stats-payload.", v28, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      return 0xFFFFFFFFLL;
    }

    if (!_IDSShouldLogTransport())
    {
      return 0xFFFFFFFFLL;
    }

    _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: missing stats-payload.", v16, v17, v18, v19, v20, *v28);
    if (!_IDSShouldLog(0))
    {
      return 0xFFFFFFFFLL;
    }

    v14 = @"_StunUtilProcessIncomingStats: missing stats-payload.";
    goto LABEL_22;
  }

  if ((a2 - (a1 + 1)) > 9)
  {
    a4[29] = bswap32(a1[1]) >> 16;
    a4[30] = bswap32(a1[2]) >> 16;
    a4[31] = bswap32(a1[3]) >> 16;
    a4[32] = bswap32(a1[4]) >> 16;
    a4[33] = bswap32(a1[5]) >> 16;
    return 12;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "_StunUtilProcessIncomingStats: packet is too short for stats-payload.", v29, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_StunUtilProcessIncomingStats: packet is too short for stats-payload.", v22, v23, v24, v25, v26, *v28);
      if (_IDSShouldLog(0))
      {
        v14 = @"_StunUtilProcessIncomingStats: packet is too short for stats-payload.";
LABEL_22:
        _IDSLogV(0, @"IDSFoundation", @"GL", v14, v10, v11, v12, v13, *v28);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t StunUtilProcessIncomingChannelData(unsigned __int16 **a1, char a2)
{
  v4 = bswap32((*a1)[1]) >> 16;
  IDSLinkPacketBufferAddBufferStart(a1, 4);

  return StunUtilProcessIncomingChannelDataWithoutChannelHeader(a1, a2, v4);
}

uint64_t StunUtilProcessIncomingChannelDataWithoutChannelHeader(unsigned __int16 **a1, char a2, uint64_t a3)
{
  v286 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  v6 = v5;
  if (v5 != a3)
  {
    v6 = a3;
    if (v5 <= a3 || ((a3 + 4) & 0x1FFFC) != v5)
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[2];
        *buf = 67109376;
        *v285 = a3;
        *&v285[4] = 2048;
        *&v285[6] = v10;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).", v12, v13, v14, v15, v16, a3);
          result = _IDSShouldLog(0);
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: length mismatch (%u != %zd).", v17, v18, v19, v20, a3);
            return 0;
          }
        }
      }

      return result;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = a1[2];
      *buf = 134218240;
      *v285 = v22;
      *&v285[8] = 1024;
      *&v285[10] = a3;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEBUG, "remove padding, length (%zd->%u).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"GL", @"remove padding, length (%zd->%u).", v23, v24, v25, v26, a1[2]);
    }

    a1[2] = v6;
  }

  if ((a2 & 1) == 0)
  {
    v77 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      v78 = a1[2];
      *buf = 134217984;
      *v285 = v78;
      _os_log_impl(&dword_1A7AD9000, v77, OS_LOG_TYPE_DEBUG, "processed regular channel data %zdB.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"GL", @"processed regular channel data %zdB.", v79, v80, v81, v82, a1[2]);
    }

    return 1;
  }

  bzero(a1 + 56, 0x300uLL);
  if (!v6)
  {
    return 1;
  }

  v27 = 0;
  v28 = *a1;
  v29 = (v6 + *a1);
  v30 = a1 + 466;
  for (i = a1 + 526; ; i += 96)
  {
    if (v29 - v28 <= 1)
    {
      v83 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v83, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", v84, v85, v86, v87, v88, v271);
      result = _IDSShouldLog(0);
      if (!result)
      {
        return result;
      }

      goto LABEL_120;
    }

    if (v27 == 8)
    {
      v93 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v285 = 8;
        *&v285[4] = 1024;
        *&v285[6] = 8;
        _os_log_impl(&dword_1A7AD9000, v93, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d", buf, 0xEu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d", v94, v95, v96, v97, v98, 8);
          result = _IDSShouldLog(0);
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packetCounter = %d is greater than kLinkPacketBufferMaxCompoundSize: %d", v99, v100, v101, v102, 8);
            return 0;
          }
        }
      }

      return result;
    }

    v32 = &a1[12 * v27 + 56];
    *(v32 + 22) = 0;
    v33 = v28 + 1;
    v34 = bswap32(*v28);
    v35 = HIWORD(v34);
    if ((v34 & 0x80000000) != 0)
    {
      if (v29 - v33 <= 1)
      {
        v261 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v261, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for additional flags.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for additional flags.", v262, v263, v264, v265, v266, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for additional flags.", v267, v268, v269, v270, v283);
        return 0;
      }

      v36 = bswap32(v28[1]);
      v35 |= HIWORD(v36) << 16;
      v33 = v28 + 2;
      if (HIWORD(v36) >= 0x200u)
      {
        v37 = v36 >> 25;
        v38 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v285 = v37;
          _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: has unknown attribute: %d", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: has unknown attribute: %d", v39, v40, v41, v42, v43, v37);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: has unknown attribute: %d", v44, v45, v46, v47, v37);
            }
          }
        }
      }
    }

    if (v35)
    {
      if (v29 - v33 > 1)
      {
        v48 = *v33++;
        *(v32 + 22) |= 2u;
        *(v32 + 8) = bswap32(v48) >> 16;
        *(v32 + 3) = 1;
        goto LABEL_36;
      }

      v103 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v103, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", v104, v105, v106, v107, v108, v271);
      result = _IDSShouldLog(0);
      if (!result)
      {
        return result;
      }

LABEL_120:
      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for channel-data-flag.", v89, v90, v91, v92, v272);
      return 0;
    }

LABEL_36:
    if ((v35 & 2) == 0)
    {
      goto LABEL_44;
    }

    if (v29 - v33 <= 0)
    {
      v109 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v109, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.", v110, v111, v112, v113, v114, v271);
          result = _IDSShouldLog(0);
          if (result)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-stream-id count.", v115, v116, v117, v118, v273);
            return 0;
          }
        }
      }

      return result;
    }

    v49 = *v33;
    v50 = *(v32 + 3) + v49;
    *(v32 + 3) = v50;
    if (v49 > 0xB || v50 >= 13)
    {
      break;
    }

    v33 = (v33 + 1);
    if (v29 - v33 < (2 * v49))
    {
      v149 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v285 = v49;
        _os_log_impl(&dword_1A7AD9000, v149, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.", v150, v151, v152, v153, v154, v49);
      result = _IDSShouldLog(0);
      if (!result)
      {
        return result;
      }

      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for %d stream-id.", v155, v156, v157, v158, v49);
      return 0;
    }

    if (v49)
    {
      v51 = v30;
      do
      {
        v52 = *v33++;
        *v51++ = bswap32(v52) >> 16;
        --v49;
      }

      while (v49);
    }

LABEL_44:
    if ((v35 & 4) != 0)
    {
      if (v29 - v33 <= 7)
      {
        v129 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v129, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for participant-id.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for participant-id.", v130, v131, v132, v133, v134, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for participant-id.", v135, v136, v137, v138, v274);
        return 0;
      }

      v53 = *v33;
      v33 += 4;
      *(v32 + 22) |= 1u;
      v32[5] = bswap64(v53);
      if (!v53)
      {
        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: we received participant ID 0!!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: we received participant ID 0!!", v55, v56, v57, v58, v59, v271);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: we received participant ID 0!!", v60, v61, v62, v63, v271);
            }
          }
        }
      }
    }

    if ((v35 & 8) != 0)
    {
      if (v29 - v33 <= 0)
      {
        v139 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v139, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for channel-priority.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for channel-priority.", v140, v141, v142, v143, v144, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for channel-priority.", v145, v146, v147, v148, v275);
        return 0;
      }

      *(v32 + 22) |= 8u;
      v64 = *v33;
      v33 = (v33 + 1);
      *(v32 + 48) = v64;
    }

    if ((v35 & 0x10) != 0)
    {
      if (v29 - v33 <= 1)
      {
        v159 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v159, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.", v160, v161, v162, v163, v164, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for probe-groupid.", v165, v166, v167, v168, v276);
        return 0;
      }

      v65 = *v33++;
      *(v32 + 22) |= 0x10u;
      *(v32 + 25) = bswap32(v65) >> 16;
    }

    if ((v35 & 0x20) != 0)
    {
      if (v29 - v33 <= 0)
      {
        v169 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v169, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.", v170, v171, v172, v173, v174, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for lsb-version-counter.", v175, v176, v177, v178, v277);
        return 0;
      }

      *(v32 + 22) |= 0x20u;
      v66 = *v33;
      v33 = (v33 + 1);
      *(v32 + 52) = v66;
    }

    if ((v35 & 0x40) != 0)
    {
      *(v32 + 22) |= 4u;
      *(v32 + 53) = 1;
    }

    if ((v35 & 0x80) != 0)
    {
      if (v29 - v33 <= 1)
      {
        v179 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v179, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for data length.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for data length.", v180, v181, v182, v183, v184, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for data length.", v185, v186, v187, v188, v278);
        return 0;
      }

      v67 = *v33++;
      v68 = bswap32(v67) >> 16;
      *(v32 + 4) = v68;
      if (v29 - v33 < v68)
      {
        v199 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          v200 = *(v32 + 4);
          *buf = 67109120;
          *v285 = v200;
          _os_log_impl(&dword_1A7AD9000, v199, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for data (%dB).", buf, 8u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for data (%dB).", v201, v202, v203, v204, v205, *(v32 + 4));
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for data (%dB).", v206, v207, v208, v209, *(v32 + 4));
        return 0;
      }
    }

    if ((v35 & 0x100) != 0)
    {
      *(v32 + 22) |= 0x80u;
      *(v32 + 54) = 1;
    }

    if ((v35 & 0x200) != 0)
    {
      v69 = sub_1A7C2C22C(v33, v29, v35, v32);
      if (v69 <= 0)
      {
        v189 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v189, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid incoming stats.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid incoming stats.", v190, v191, v192, v193, v194, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid incoming stats.", v195, v196, v197, v198, v279);
        return 0;
      }

      *(v32 + 22) |= 0x40u;
      v33 = (v33 + v69);
    }

    if ((v35 & 0x800) != 0)
    {
      *(v32 + 22) |= 0x100u;
      *(v32 + 68) = 1;
    }

    if ((v35 & 0x2000) != 0)
    {
      if (v29 - v33 <= 1)
      {
        v210 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v210, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.", v211, v212, v213, v214, v215, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for primary-relaylinkID-flag.", v216, v217, v218, v219, v280);
        return 0;
      }

      v70 = *v33++;
      *(v32 + 22) |= 0x800u;
      *(v32 + 38) = bswap32(v70) >> 16;
      *(v32 + 18) = 1;
    }

    if ((v35 & 0x4000) != 0)
    {
      if (v29 - v33 <= 0)
      {
        v220 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v220, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.", v221, v222, v223, v224, v225, v271);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for secondary-relaylinkID-flag.", v226, v227, v228, v229, v281);
        return 0;
      }

      v71 = *v33;
      if (v71 > 3 || (v72 = *(v32 + 18) + v71, v72 >= 5))
      {
        v230 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
        {
          v231 = *(v32 + 18);
          *buf = 67109376;
          *v285 = v231;
          *&v285[4] = 1024;
          *&v285[6] = v71;
          _os_log_impl(&dword_1A7AD9000, v230, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)", buf, 0xEu);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)", v232, v233, v234, v235, v236, *(v32 + 18));
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid secondary relayLinkid count (%d:%d)", v237, v238, v239, v240, *(v32 + 18));
        return 0;
      }

      v33 = (v33 + 1);
      if (v29 - v33 < 2 * v71)
      {
        v251 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v285 = v71;
          _os_log_impl(&dword_1A7AD9000, v251, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.", buf, 8u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (!result)
        {
          return result;
        }

        result = _IDSShouldLogTransport();
        if (!result)
        {
          return result;
        }

        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.", v252, v253, v254, v255, v256, v71);
        result = _IDSShouldLog(0);
        if (!result)
        {
          return result;
        }

        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for %d secondary relayLinkID.", v257, v258, v259, v260, v71);
        return 0;
      }

      if (v71 >= 1)
      {
        v73 = i;
        do
        {
          v74 = *v33++;
          *v73++ = bswap32(v74) >> 16;
          --v71;
        }

        while (v71);
      }

      *(v32 + 18) = v72;
      *(v32 + 22) |= 0x1000u;
    }

    if ((v35 & 0x10000) != 0)
    {
      *(v32 + 22) |= 0x400u;
    }

    if ((v35 & 0x20000) != 0)
    {
      if (v29 - v33 > 0)
      {
        *(v32 + 22) |= 0x2000u;
        v75 = *v33;
        v33 = (v33 + 1);
        *(v32 + 84) = v75;
        goto LABEL_91;
      }

      v241 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v241, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (!result)
      {
        return result;
      }

      result = _IDSShouldLogTransport();
      if (!result)
      {
        return result;
      }

      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.", v242, v243, v244, v245, v246, v271);
      result = _IDSShouldLog(0);
      if (!result)
      {
        return result;
      }

      _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: packet is too short for session state counter LSB.", v247, v248, v249, v250, v282);
      return 0;
    }

LABEL_91:
    if ((v35 & 0x40000) != 0)
    {
      *(v32 + 22) |= 0x10000u;
      if ((v35 & 0x80000) == 0)
      {
LABEL_93:
        if ((v35 & 0x200000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_105;
      }
    }

    else if ((v35 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    *(v32 + 22) |= 0x20000u;
    if ((v35 & 0x200000) == 0)
    {
LABEL_94:
      if ((v35 & 0x800000) != 0)
      {
        goto LABEL_106;
      }

      goto LABEL_95;
    }

LABEL_105:
    *(v32 + 87) = 1;
    if ((v35 & 0x800000) != 0)
    {
LABEL_106:
      *(v32 + 22) |= 0x80000u;
      if ((v35 & 0x1000000) == 0)
      {
        goto LABEL_97;
      }

LABEL_96:
      *(v32 + 69) = 0;
      *(v32 + 22) &= ~0x400u;
      *(a1 + 1305) = 1;
      goto LABEL_97;
    }

LABEL_95:
    if ((v35 & 0x1000000) != 0)
    {
      goto LABEL_96;
    }

LABEL_97:
    *v32 = v33;
    if (!v27)
    {
      v76 = v33 - *a1;
      if (v76 >= 1)
      {
        IDSLinkPacketBufferAddBufferStart(a1, v76);
      }
    }

    ++v27;
    if ((v35 & 0x80) == 0)
    {
      *(v32 + 4) = v29 - v33;
      *(a1 + 111) = v27;
      return 1;
    }

    v28 = (v33 + *(v32 + 4));
    v30 += 96;
    result = 1;
    if (v28 >= v29)
    {
      return result;
    }
  }

  v119 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v285 = v49;
    _os_log_impl(&dword_1A7AD9000, v119, OS_LOG_TYPE_DEFAULT, "StunUtilProcessIncomingChannelData: invalid streamID count (%d).", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessIncomingChannelData: invalid streamID count (%d).", v120, v121, v122, v123, v124, v49);
      result = _IDSShouldLog(0);
      if (result)
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessIncomingChannelData: invalid streamID count (%d).", v125, v126, v127, v128, v49);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A7C2DD6C(void *a1, _WORD *a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2 && a3 > 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    LODWORD(v9) = a2;
    if (v8)
    {
      v10 = a2 + a3;
      v11 = *v38;
      v9 = a2;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v37 + 1) + 8 * v12) unsignedShortValue];
          v9 = v13 + 1;
          if (v13 + 1 > v10)
          {
            v26 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "StunUtilWritePublishedStreams failed due to short buffer.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilWritePublishedStreams failed due to short buffer.", v27, v28, v29, v30, v31, v37);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWritePublishedStreams failed due to short buffer.", v32, v33, v34, v35, v37);
                }
              }
            }

            goto LABEL_25;
          }

          *v13 = __rev16(v14);
          ++v12;
          ++v13;
        }

        while (v8 != v12);
        v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = (v9 - a2);
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "StunUtilWritePublishedStreams failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilWritePublishedStreams failed due to invalid parameter.", v17, v18, v19, v20, v21, v37);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWritePublishedStreams failed due to invalid parameter.", v22, v23, v24, v25, v37);
        }
      }
    }

LABEL_25:
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

uint64_t sub_1A7C2E048(void *a1, _BYTE *a2, int a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!a2 || a3 <= 0)
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed due to invalid parameter.", v30, v31, v32, v33, v34, v71);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed due to invalid parameter.", v35, v36, v37, v38, v72);
        }
      }
    }

    v39 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v77 = v5;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
  LODWORD(v8) = a2;
  if (!v7)
  {
LABEL_45:

    v39 = (v8 - a2);
    goto LABEL_46;
  }

  v9 = 0;
  v10 = &a2[a3];
  v11 = *v84;
  v12 = *v84;
  v8 = a2;
  for (i = *v84; ; v11 = i)
  {
    if (v12 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v83 + 1) + 8 * v9);
    v14 = [v13 participantID];
    v15 = [v14 unsignedLongLongValue];

    v16 = [v13 streamArray];
    v17 = [v16 count];

    v18 = [v13 anyParticipant];
    v19 = [v13 anyStream];
    v20 = [v13 anyStream];
    v21 = v8 + 1;
    if (v8 + 1 > v10)
    {
      break;
    }

    v22 = v17 | 0x80;
    if (!v18)
    {
      v22 = v17;
    }

    if (v20)
    {
      v22 |= 0x40u;
    }

    *v8 = v22;
    if (v18)
    {
      ++v8;
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_17:
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v23 = [v13 streamArray];
      v24 = [v23 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v24)
      {
        v25 = *v80;
        while (2)
        {
          v26 = 0;
          v27 = v8;
          do
          {
            if (*v80 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v79 + 1) + 8 * v26) unsignedShortValue];
            v8 = v27 + 1;
            if (v27 + 1 > v10)
            {
              v40 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write stream-id due to short buffer.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write stream-id due to short buffer.", v41, v42, v43, v44, v45, v71);
                  if (_IDSShouldLog(0))
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write stream-id due to short buffer.", v46, v47, v48, v49, v73);
                  }
                }
              }

              goto LABEL_44;
            }

            *v27 = __rev16(v28);
            ++v26;
            ++v27;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_26;
    }

    v8 += 9;
    if (v8 > v10)
    {
      v61 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write participant-id due to short buffer.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write participant-id due to short buffer.", v62, v63, v64, v65, v66, v71);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write participant-id due to short buffer.", v67, v68, v69, v70, v75);
          }
        }
      }

      goto LABEL_44;
    }

    *v21 = bswap64(v15);
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (++v9 >= v7)
    {
      v7 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
      if (!v7)
      {
        goto LABEL_45;
      }

      v9 = 0;
    }

    v12 = *v84;
  }

  v51 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "writeSubscribedStreams failed to write stream-count due to short buffer.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"writeSubscribedStreams failed to write stream-count due to short buffer.", v52, v53, v54, v55, v56, v71);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"writeSubscribedStreams failed to write stream-count due to short buffer.", v57, v58, v59, v60, v74);
      }
    }
  }

LABEL_44:

  v39 = 0xFFFFFFFFLL;
LABEL_46:
  v6 = v77;
LABEL_47:

  return v39;
}

__CFArray *sub_1A7C2E60C(unsigned __int8 *a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0x80000000) != 0)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v62) = a2;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "invalid peer published stream data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid peer published stream data length (%d).", v17, v18, v19, v20, v21, a2);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid peer published stream data length (%d).", v22, v23, v24, v25, a2);
        }
      }
    }

    v26 = 0;
  }

  else
  {
    if (a2)
    {
      v3 = a1;
      v4 = 0;
      v5 = &a1[a2];
      while (&v5[~v3] > 7)
      {
        v6 = *v3;
        if (v5 - (v3 + 9) < 2 * *v3)
        {
          v47 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "incomplete packet for stream-ids.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"incomplete packet for stream-ids.", v48, v49, v50, v51, v52, v58);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"incomplete packet for stream-ids.", v53, v54, v55, v56, v60);
              }
            }
          }

          goto LABEL_47;
        }

        v7 = *(v3 + 1);
        v8 = 0;
        for (v3 += 9; v6; --v6)
        {
          v10 = *v3;
          v3 += 2;
          v9 = v10;
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if (!v8)
            {
              continue;
            }
          }

          v11 = bswap32(v9) >> 16;
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];

          if (v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v11];
            CFArrayAppendValue(v8, v13);
          }
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bswap64(v7)];
        v15 = [IDSQRParticipantStreams streamWithParticipantID:v14 streamArray:v8 anyParticipant:0 anyStream:0];

        if (!v4)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        if (v4 && v15)
        {
          CFArrayAppendValue(v4, v15);
        }

        if (v3 >= v5)
        {
          goto LABEL_28;
        }
      }

      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "incomplete packet for participant-id.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"incomplete packet for participant-id.", v38, v39, v40, v41, v42, v58);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"incomplete packet for participant-id.", v43, v44, v45, v46, v59);
          }
        }
      }

      v26 = 0;
    }

    else
    {
      v4 = 0;
LABEL_28:
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v4;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "processed peer-pub-stream: %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"processed peer-pub-stream: %@.", v28, v29, v30, v31, v32, v4);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-pub-stream: %@.", v33, v34, v35, v36, v4);
          }
        }
      }

LABEL_47:
      v4 = v4;
      v26 = v4;
    }
  }

  return v26;
}

__CFArray *sub_1A7C2EB1C(unsigned __int16 *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0x80000001) != 0)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v33) = a2;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "invalid peer subscribed stream data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid peer subscribed stream data length (%d).", v12, v13, v14, v15, v16, a2);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid peer subscribed stream data length (%d).", v17, v18, v19, v20, a2);
        }
      }
    }

    v5 = 0;
  }

  else
  {
    v3 = (a2 >> 1);
    if ((a2 >> 1))
    {
      v4 = a1;
      v5 = 0;
      do
      {
        v7 = *v4++;
        v6 = v7;
        if (v5 || (v5 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          v8 = bswap32(v6) >> 16;
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v8];

          if (v9)
          {
            v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v8];
            CFArrayAppendValue(v5, v10);
          }
        }

        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0;
    }

    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "processed peer-sub-stream: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processed peer-sub-stream: %@.", v22, v23, v24, v25, v26, v5);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-sub-stream: %@.", v27, v28, v29, v30, v5);
        }
      }
    }
  }

  return v5;
}

__CFArray *StunUtilProcessParticipants(void *a1, uint64_t a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (![v5 count])
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_22;
  }

  v8 = v7;
  v18 = a2;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (!v9)
        {
          continue;
        }
      }

      v13 = [v12 participantID];

      if (v13)
      {
        v14 = [v12 participantID];
        CFArrayAppendValue(v9, v14);
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  a2 = v18;
  if ((a3 & 1) == 0)
  {
    if (v9)
    {
LABEL_20:
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];

      if (v15)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
        CFArrayAppendValue(v9, v16);
      }

      goto LABEL_22;
    }

LABEL_19:
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_22:

  return v9;
}

__CFDictionary *StunUtilProcessStreamInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(__b, 170, sizeof(__b));
  v46 = -1431655766;
  if (v5 && (bzero(buf, 0x5D0uLL), ([v5 getAttribute:65531 attribute:buf] & 1) != 0))
  {
    v6 = v50;
    if (StunUtilHasValidBinaryDataAttr(v5, 60933, __b, &v46))
    {
      v7 = sub_1A7C2EB1C(__b, v46);
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v49 = v46;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "receive peer-sub-stream, length: %dB.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"receive peer-sub-stream, length: %dB.", v9, v10, v11, v12, v13, v46);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive peer-sub-stream, length: %dB.", v14, v15, v16, v17, v46);
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (StunUtilHasValidBinaryDataAttr(v5, 60932, __b, &v46))
    {
      v29 = sub_1A7C2E60C(__b, v46);
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v49 = v46;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "receive peer-pub-stream, length: %dB.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"receive peer-pub-stream, length: %dB.", v31, v32, v33, v34, v35, v46);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"receive peer-pub-stream, length: %dB.", v36, v37, v38, v39, v46);
          }
        }
      }
    }

    else
    {
      v29 = 0;
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    if (v40)
    {
      CFDictionarySetValue(v28, @"stream-info-generation-counter", v40);
    }

    if (v7)
    {
      CFDictionarySetValue(v28, @"stream-info-peer-subscribed-streams", v7);
    }

    if (v29)
    {
      CFDictionarySetValue(v28, @"stream-info-peer-published-streams", v29);
    }

    v41 = [MEMORY[0x1E696AD98] numberWithChar:a2];
    if (v41)
    {
      CFDictionarySetValue(v28, @"gl-option-linkid", v41);
    }

    if (a3 >= 1)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithChar:a3];
      if (v42)
      {
        CFDictionarySetValue(v28, @"gl-option-sessioninfo-link-id-to-query", v42);
      }
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "process streamInfo failed due to invalid generation-counter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process streamInfo failed due to invalid generation-counter.", v19, v20, v21, v22, v23, v44);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process streamInfo failed due to invalid generation-counter.", v24, v25, v26, v27, v45);
        }
      }
    }

    v28 = 0;
  }

  return v28;
}

void *StunUtilHasValidUInt32Attr(void *result, uint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

uint64_t StunUtilHasValidBinaryDataAttr(void *a1, uint64_t a2, void *a3, int *a4)
{
  *&v13[1476] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  bzero(v11, 0x5D0uLL);
  v8 = [a1 getAttribute:a2 attribute:v11];
  if (v8)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = v12;
        if (v12 <= 1472)
        {
          memcpy(a3, v13, v12);
          *a4 = v9;
        }
      }
    }
  }

  return v8;
}

__CFArray *sub_1A7C2F604(unint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0x80000000) != 0 || (v3 = a2, (a2 & 7) != 0))
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v49) = a2;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "invalid participantID data length (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid participantID data length (%d).", v5, v6, v7, v8, v9, a2);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid participantID data length (%d).", v10, v11, v12, v13, a2);
        }
      }
    }

    v14 = 0;
  }

  else
  {
    if (a2)
    {
      v16 = a1;
      v17 = 0;
      v18 = (a1 + a2);
      while (v3 > 7)
      {
        v20 = *v16++;
        v19 = v20;
        if (v17 || (v17 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          v21 = bswap64(v19);
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];

          if (v22)
          {
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];
            CFArrayAppendValue(v17, v23);
          }
        }

        v3 -= 8;
        if (v16 >= v18)
        {
          goto LABEL_24;
        }
      }

      v36 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantIDs: incomplete packet for participantID.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantIDs: incomplete packet for participantID.", v37, v38, v39, v40, v41, v46);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantIDs: incomplete packet for participantID.", v42, v43, v44, v45, v47);
          }
        }
      }

      v14 = 0;
    }

    else
    {
      v17 = 0;
LABEL_24:
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v49 = [(__CFArray *)v17 count];
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantIDs: received %lu participants: %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v25 = [(__CFArray *)v17 count];
          _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantIDs: received %lu participants: %@.", v26, v27, v28, v29, v30, v25);
          if (_IDSShouldLog(0))
          {
            v31 = [(__CFArray *)v17 count];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantIDs: received %lu participants: %@.", v32, v33, v34, v35, v31);
          }
        }
      }

      v17 = v17;
      v14 = v17;
    }
  }

  return v14;
}

id sub_1A7C2F9E0(void *a1, uint64_t a2)
{
  __b[184] = *MEMORY[0x1E69E9840];
  v3 = a1;
  memset(__b, 170, 0x5C0uLL);
  v16 = -1431655766;
  if (StunUtilHasValidBinaryDataAttr(v3, a2, __b, &v16))
  {
    v4 = sub_1A7C2F604(__b, v16);
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = a2;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@", v6, v7, v8, v9, v10, a2);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessActiveOrLightweightParticipants: type: 0x%lx, %@", v11, v12, v13, v14, a2);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFDictionary *StunUtilProcessParticipantUpdate(void *a1, int a2, uint64_t a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(__b, 170, sizeof(__b));
  v85 = -1431655766;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v5 && (bzero(buf, 0x5D0uLL), [v5 getAttribute:65489 attribute:buf]))
  {
    v7 = v89[0];
  }

  else
  {
    if (a2 == 401 || !a2)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid session state counter.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid session state counter.", v9, v10, v11, v12, v13, v80);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid session state counter.", v14, v15, v16, v17, v81);
          }
        }
      }

      goto LABEL_51;
    }

    v7 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  if (v18)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-counter", v18);
  }

  if (v5)
  {
    bzero(buf, 0x5D0uLL);
    v19 = [v5 getAttribute:65518 attribute:buf];
    if (v19)
    {
      v20 = v89[0];
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 ^ 1;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFEFLL) == 0xFE7 && v21)
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid operation flags.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid operation flags.", v23, v24, v25, v26, v27, v80);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid operation flags.", v28, v29, v30, v31, v82);
        }
      }
    }

LABEL_51:
    v55 = 0;
    goto LABEL_52;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v20];
  if (v32)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-type", v32);
  }

  if (StunUtilHasValidBinaryDataAttr(v5, 60928, __b, &v85))
  {
    v33 = sub_1A7C2F604(__b, v85);
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v88 = v85;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "receive participantIDs, length: %dB.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive participantIDs, length: %dB.", v35, v36, v37, v38, v39, v85);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participantIDs, length: %dB.", v40, v41, v42, v43, v85);
        }
      }
    }

    v44 = v33;
    if (v44)
    {
      CFDictionarySetValue(v6, @"ids-stun-attribute-enc-ParticipantIDs", v44);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C6D8();
    }
  }

  else if (a3 == 3831 || a2 != 401 && a3 == 4087 || (v44 = 0, a3 == 4071) && v20 <= 2u)
  {
    v45 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "process participantUpdate failed due to invalid participantIDs.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"process participantUpdate failed due to invalid participantIDs.", v46, v47, v48, v49, v50, v80);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"process participantUpdate failed due to invalid participantIDs.", v51, v52, v53, v54, v83);
        }
      }
    }

    goto LABEL_51;
  }

  if (v5 && [v5 hasAttribute:65490])
  {
    v57 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantUpdate: packetTruncated", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantUpdate: packetTruncated", v58, v59, v60, v61, v62, v80);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantUpdate: packetTruncated", v63, v64, v65, v66, v84);
        }
      }
    }

    CFDictionarySetValue(v6, @"ids-stun-attribute-stun-truncated", MEMORY[0x1E695E118]);
  }

  if (a3 > 4070)
  {
    if (a3 == 4087)
    {
      v67 = 4;
      goto LABEL_79;
    }

    if (a3 == 4071)
    {
      v67 = 3;
      goto LABEL_79;
    }

LABEL_74:
    v68 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C760();
    }

    v67 = 0;
    goto LABEL_79;
  }

  if (a3 == 3815)
  {
    v67 = 1;
    goto LABEL_79;
  }

  if (a3 != 3831)
  {
    goto LABEL_74;
  }

  v67 = 5;
LABEL_79:
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v67];
  if (v69)
  {
    CFDictionarySetValue(v6, @"ids-stun-message-type", v69);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1C7D4();
  }

  v70 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v88 = v20;
    LOWORD(v89[0]) = 2048;
    *(v89 + 2) = a3;
    _os_log_impl(&dword_1A7AD9000, v70, OS_LOG_TYPE_DEFAULT, "StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx", v71, v72, v73, v74, v75, v20);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilProcessParticipantUpdate: operationFlags: %u, messageSTUNType: 0X%lx", v76, v77, v78, v79, v20);
      }
    }
  }

  v55 = v6;

LABEL_52:

  return v55;
}

void *StunUtilHasValidUInt16Attr(void *result, uint64_t a2, _WORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

void *StunUtilHasValidBooleanAttr(void *result, const char *a2)
{
  if (result)
  {
    return [result hasAttribute:a2];
  }

  return result;
}

uint64_t sub_1A7C30484(void *a1, void *a2, unsigned int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2 && a3 > 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    LODWORD(v9) = a2;
    if (v8)
    {
      v10 = a2 + a3;
      v11 = *v37;
      v9 = a2;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v9 = v13 + 1;
          if (v13 + 1 > v10)
          {
            v25 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.", v26, v27, v28, v29, v30, v36);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWriteParticipantIDs failed to write participant-id due to short buffer.", v31, v32, v33, v34, v36);
                }
              }
            }

            goto LABEL_25;
          }

          *v13++ = bswap64([*(*(&v36 + 1) + 8 * v12++) unsignedLongLongValue]);
        }

        while (v8 != v12);
        v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = (v9 - a2);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "StunUtilWriteParticipantIDs failed due to invalid parameter.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"StunUtilWriteParticipantIDs failed due to invalid parameter.", v16, v17, v18, v19, v20, v36);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilWriteParticipantIDs failed due to invalid parameter.", v21, v22, v23, v24, v36);
        }
      }
    }

LABEL_25:
    v14 = 0xFFFFFFFFLL;
  }

  return v14;
}

void sub_1A7C30760(void *a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  memset(__b, 170, sizeof(__b));
  v9 = sub_1A7C2DD6C(a1, __b, 0x5C0u);
  if (v9 >= 1)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v9];
    if (v10)
    {
      CFDictionarySetValue(v8, @"ids-stun-attribute-enc-pub-streams", v10);
    }
  }

  v11 = sub_1A7C2E048(v7, __b, 1472);
  if (v11 < 1)
  {
    if (a3 <= 0)
    {
      if (v9 < 1)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v11];
    if (v12)
    {
      CFDictionarySetValue(v8, @"ids-stun-attribute-enc-sub-streams", v12);
    }

    if (a3 < 1)
    {
      goto LABEL_14;
    }
  }

  v13 = [MEMORY[0x1E696AD98] numberWithChar:a3];
  if (v13)
  {
    CFDictionarySetValue(v8, @"ids-stun-attribute-max-concurrent-streams", v13);
  }

LABEL_14:
  v15 = 1414938954;
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:4];
  if (v14)
  {
    CFDictionarySetValue(v8, @"ids-stun-attribvute-enc-marker", v14);
  }

LABEL_17:
}

void sub_1A7C30944(void *a1, void *a2)
{
  __b[184] = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(__b, 170, 0x5C0uLL);
  v4 = sub_1A7C30484(a1, __b, 0x5C0u);
  if (v4 >= 1)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v4];
    if (v5)
    {
      CFDictionarySetValue(v3, @"ids-stun-attribute-enc-ParticipantIDs", v5);
    }

    v7 = 1414938954;
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:4];
    if (v6)
    {
      CFDictionarySetValue(v3, @"ids-stun-attribvute-enc-marker", v6);
    }
  }
}

IDSStunMessage *StunUtilCreateMessage(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v194[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[IDSStunMessage alloc] initWithType:a1];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = ids_monotonic_time();
  isRelayStunCandidatePair = objc_msgSend_isRelayStunCandidatePair(v8);
  v14 = [v8 isSharedQRSession];
  v190 = v7;
  if (!isRelayStunCandidatePair || ([v8 isValidRelayStunCandidatePair] & 1) != 0)
  {
    [(IDSStunMessage *)v10 setTransactionID:v7];
    v16 = 0;
    if (a1 <= 3811)
    {
      if (a1 <= 3807)
      {
        if (a1 == 23)
        {
          v45 = [v8 channelNumber];
          v46 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v45)];
          if (v46)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v46);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          if (v9 && @"gl-option-generic-data" && (v59 = CFDictionaryGetValue(v9, @"gl-option-generic-data")) != 0)
          {
            v60 = v59;
            CFDictionarySetValue(v11, @"ids-stun-attribute-data", v59);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CC14();
          }
        }

        else
        {
          if (a1 != 2049)
          {
            goto LABEL_330;
          }

          v36 = [v8 channelNumber];
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v36)];
          if (v37)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v37);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          Value = 0;
          if (v9 && @"gl-option-test-options-flags")
          {
            Value = CFDictionaryGetValue(v9, @"gl-option-test-options-flags");
          }

          v65 = [Value unsignedIntValue];
          if (@"gl-option-test-requested-message-type")
          {
            v66 = v9 != 0;
          }

          else
          {
            v66 = 0;
          }

          if (v66)
          {
            v67 = CFDictionaryGetValue(v9, @"gl-option-test-requested-message-type");
          }

          else
          {
            v67 = 0;
          }

          v187 = [v67 unsignedIntValue];
          if (@"gl-option-test-requested-error-code-type")
          {
            v68 = v9 != 0;
          }

          else
          {
            v68 = 0;
          }

          if (v68)
          {
            v69 = CFDictionaryGetValue(v9, @"gl-option-test-requested-error-code-type");
          }

          else
          {
            v69 = 0;
          }

          v70 = [v69 unsignedIntValue];
          if (@"gl-option-test-sub-operation")
          {
            v71 = v9 != 0;
          }

          else
          {
            v71 = 0;
          }

          if (v71)
          {
            v72 = CFDictionaryGetValue(v9, @"gl-option-test-sub-operation");
          }

          else
          {
            v72 = 0;
          }

          v189 = [v72 dataUsingEncoding:4];
          v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v65];
          if (v73)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-testoptions", v73);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C9F4();
          }

          if (v65 == 8)
          {
            v82 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v187];
            if (v82)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-qr-test-requested-message", v82);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1CA7C();
            }

            v134 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v70];
            if (v134)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-qr-test-requested-error-code", v134);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1CB04();
            }

            v135 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              v192 = 8;
              v193 = 1024;
              *v194 = v187;
              v194[2] = 1024;
              *&v194[3] = v70;
              _os_log_impl(&dword_1A7AD9000, v135, OS_LOG_TYPE_DEFAULT, "testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", buf, 0x14u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", v136, v137, v138, v139, v140, 8);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"testOptions: %u, requestedMessageType: %u, requestedErrorCode: %u", v141, v142, v143, v144, 8);
                }
              }
            }
          }

          v145 = v189;
          if (v145)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-testsuboperation", v145);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CB8C();
          }
        }

        goto LABEL_317;
      }

      if ((a1 - 3808) < 2)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-requestedtransport", &unk_1F1B20270);
        v38 = [v8 softwareData];

        if (v38)
        {
          v39 = [v8 softwareData];
          if (v39)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-software", v39);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1D1EC();
          }
        }

        v52 = 0;
        if (v9 && @"gl-option-additional-binding")
        {
          v52 = CFDictionaryGetValue(v9, @"gl-option-additional-binding");
        }

        v188 = [v52 unsignedIntValue];
        if (([v8 isSelfQRSession] & 1) == 0 && objc_msgSend(v8, "hasValidCapabilityFlags"))
        {
          v53 = [v8 capabilityFlags];
          if (@"gl-option-is-lightweight-participant-key")
          {
            v54 = v9 != 0;
          }

          else
          {
            v54 = 0;
          }

          if (v54)
          {
            v55 = CFDictionaryGetValue(v9, @"gl-option-is-lightweight-participant-key");
          }

          else
          {
            v55 = 0;
          }

          if ([v55 BOOLValue])
          {
            v53 = v53 & 0xFFFFFFFFFFDF7FFFLL | 0x8000;
          }

          if (@"gs-shortmki-enabled-key")
          {
            v83 = v9 != 0;
          }

          else
          {
            v83 = 0;
          }

          if (v83)
          {
            v84 = CFDictionaryGetValue(v9, @"gs-shortmki-enabled-key");
          }

          else
          {
            v84 = 0;
          }

          if ([v84 BOOLValue])
          {
            v85 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v85, OS_LOG_TYPE_DEFAULT, "StunUtilCreateMessage enabling shortMKI", buf, 2u);
            }

            v53 |= 0x800000uLL;
            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"StunUtilCreateMessage enabling shortMKI", v86, v87, v88, v89, v90, v183);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilCreateMessage enabling shortMKI", v91, v92, v93, v94, v185);
                }
              }
            }
          }

          v95 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v53];
          if (v95)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-capabilityflags", v95);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1D274();
          }

          if ([v8 relayProviderType] != 1)
          {
            v131 = [v8 local];
            v132 = [v131 isCellularStunCandidate];

            v133 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v188 & 0x30 | v132];
            if (v133)
            {
              CFDictionarySetValue(v11, @"ids-stun-attribute-channel-binding-info", v133);
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              sub_1A7E1D2FC();
            }
          }
        }

        if (v14)
        {
          v152 = [(IDSStunMessage *)v10 transactionID];
          [v8 deriveAES128CTRKeys:v152];

          v153 = [v8 relaySessionInfo];
          v154 = [v153 publishedStreams];

          v155 = [v8 relaySessionInfo];
          v156 = [v155 subscribedStreams];

          v157 = [v8 relaySessionInfo];
          v158 = [v157 maxConcurrentStreams];

          sub_1A7C30760(v154, v156, v158, v11);
          v159 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-materials-key"];
          if (v159)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-materials", v159);
          }
        }

        v160 = IDSStunAttributeQRReallocTokenKey;
        if (a1 != 3809)
        {
          v160 = IDSStunAttributeQRSessionTokenKey;
        }

        v161 = *v160;
        v162 = [v8 relaySessionToken];
        if (v162)
        {
          CFDictionarySetValue(v11, v161, v162);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D384(v161, v163, v164, v165, v166, v167, v168, v169);
        }

        v170 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-qr-server-data-blob"];
        if (v170)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-server-blob", v170);
        }

        goto LABEL_317;
      }

      if (a1 != 3810)
      {
        if (a1 != 3811)
        {
          goto LABEL_330;
        }

        v17 = [v8 channelNumber];
        v18 = ntpTime32(v12);
        [v8 serverLatency];
        v20 = v19;
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v17)];
        if (v21)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v21);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1C85C();
        }

        v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
        if (v74)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-clienttime", v74);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1CC9C();
        }

        if ((v20 * 1000.0))
        {
          v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          if (v75)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-clientlatency", v75);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CD24();
          }
        }

        v96 = 0;
        if (v9 && @"gl-option-stats-sent-packets")
        {
          v96 = CFDictionaryGetValue(v9, @"gl-option-stats-sent-packets");
        }

        v97 = v96;
        v98 = 0;
        if (v9 && @"gl-option-stats-received-packets")
        {
          v98 = CFDictionaryGetValue(v9, @"gl-option-stats-received-packets");
        }

        v99 = v98;
        if (v97 | v99)
        {
          if (v97)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-sent-packets", v97);
          }

          if (v99)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-received-packets", v99);
          }
        }

        else
        {
          v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "totalPacketsSentOnLink")}];
          if (v100)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-sent-packets", v100);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CDAC();
          }

          v130 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "totalPacketsReceivedOnLink")}];
          if (v130)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-received-packets", v130);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CE34();
          }
        }

        goto LABEL_317;
      }

      if ([v8 relayProviderType] == 1)
      {
        v47 = [v8 sessionID];
        if (v47)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-sessionid", v47);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D164();
        }
      }

      else
      {
        v50 = [v8 channelNumber];
        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v50)];
        if (v47)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v47);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1C85C();
        }
      }

LABEL_300:

LABEL_317:
      if (isRelayStunCandidatePair)
      {
        v171 = [v8 relaySessionKey];
        if (v171)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-messageintegrity", v171);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1D0DC();
        }

        v172 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          v192 = a1;
          v193 = 2112;
          *v194 = v171;
          _os_log_impl(&dword_1A7AD9000, v172, OS_LOG_TYPE_DEFAULT, "Msg %04X has relay session key %@", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"Msg %04X has relay session key %@", v173, v174, v175, v176, v177, a1);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"Msg %04X has relay session key %@", v178, v179, v180, v181, a1);
            }
          }
        }
      }

      [(IDSStunMessage *)v10 setAttributes:v11];
      [(IDSStunMessage *)v10 setStartTime:v12];
      v16 = v10;
      goto LABEL_330;
    }

    if (a1 > 3814)
    {
      switch(a1)
      {
        case 3815:
          v48 = [v8 channelNumber];
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v48)];
          if (v49)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v49);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          v61 = 0;
          if (v9 && @"gl-option-participant-update-request-type")
          {
            v61 = CFDictionaryGetValue(v9, @"gl-option-participant-update-request-type");
          }

          v62 = [v61 unsignedShortValue];
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v62];
          if (v63)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-session-state-type", v63);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CEBC();
          }

          if (v62 > 8 || ((1 << v62) & 0x181) == 0)
          {
            v76 = 0;
            if (v9 && @"gl-option-participant-update-blocked-participantIDs")
            {
              v76 = CFDictionaryGetValue(v9, @"gl-option-participant-update-blocked-participantIDs");
            }

            sub_1A7C30944(v76, v11);
          }

          v77 = 0;
          if (v9 && @"gl-option-participant-update-request-counter")
          {
            v77 = CFDictionaryGetValue(v9, @"gl-option-participant-update-request-counter");
          }

          v78 = [v77 unsignedIntValue];
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v78];
          if (v47)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-session-state-counter", v47);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1CF44();
          }

          break;
        case 3816:
          v43 = [v8 channelNumber];
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v43)];
          if (v44)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v44);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          if (v9 && @"gl-option-plugin-operation" && (v56 = CFDictionaryGetValue(v9, @"gl-option-plugin-operation")) != 0)
          {
            v57 = v56;
            CFDictionarySetValue(v11, @"ids-stun-attribute-plugin-operation", v56);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C8E4();
          }

          v58 = 0;
          if (v9 && @"gl-option-plugin-name")
          {
            v58 = CFDictionaryGetValue(v9, @"gl-option-plugin-name");
          }

          v47 = [v58 dataUsingEncoding:4];
          if (v47)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-plugin-name", v47);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C96C();
          }

          if (@"gl-option-plugin-raw-public-key")
          {
            v79 = v9 != 0;
          }

          else
          {
            v79 = 0;
          }

          if (v79)
          {
            v80 = CFDictionaryGetValue(v9, @"gl-option-plugin-raw-public-key");
            if (v80)
            {
              v81 = v80;
              CFDictionarySetValue(v11, @"ids-stun-attribute-raw-public-key", v80);
            }
          }

          break;
        case 3817:
          v22 = [v8 channelNumber];
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v22)];
          if (v23)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v23);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1C85C();
          }

          v47 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"gl-option-materials-key"];
          if (v47)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-qr-materials", v47);
          }

          break;
        default:
          goto LABEL_330;
      }

      goto LABEL_300;
    }

    if (a1 != 3812)
    {
      if (a1 != 3813)
      {
        goto LABEL_330;
      }

      if (!v14)
      {
        goto LABEL_317;
      }

      v34 = [v8 channelNumber];
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v34)];
      if (v35)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v35);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C85C();
      }

      v101 = 0;
      if (v9 && @"gl-option-sessioninfo-request-type")
      {
        v101 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-request-type");
      }

      if ([v101 intValue] == 2)
      {
        if (v9)
        {
          if (@"gl-option-sessioninfo-generation-counter")
          {
            v102 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-generation-counter");
            if (v102)
            {
              v103 = v102;
              CFDictionarySetValue(v11, @"ids-stun-attribute-generation-counter", v102);
            }
          }
        }

        v104 = 0;
        if (v9 && @"gl-option-sessioninfo-published-streams")
        {
          v104 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-published-streams");
        }

        v105 = v104;
        v106 = 0;
        if (v9 && @"gl-option-sessioninfo-subscribed-streams")
        {
          v106 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-subscribed-streams");
        }

        v107 = v106;
        v108 = 0;
        if (v9 && @"gl-option-sessioninfo-max-concurrent-streams")
        {
          v108 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-max-concurrent-streams");
        }

        sub_1A7C30760(v105, v107, [v108 intValue], v11);
        if (@"gl-option-sessioninfo-relay-link-id")
        {
          v109 = v9 != 0;
        }

        else
        {
          v109 = 0;
        }

        if (v109)
        {
          v110 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-relay-link-id");
        }

        else
        {
          v110 = 0;
        }

        v146 = [v110 unsignedIntValue];
        if (v146)
        {
          v147 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v146];
          if (v147)
          {
            CFDictionarySetValue(v11, @"ids-stun-attribute-relay-link-id", v147);
          }
        }
      }

      v148 = 0;
      if (v9 && @"gl-option-sessioninfo-request-id")
      {
        v148 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-request-id");
      }

      v149 = [v148 unsignedIntValue];
      if (v149)
      {
        v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v149];
        if (v150)
        {
          CFDictionarySetValue(v11, @"ids-stun-attribute-qr-request-id", v150);
        }
      }

      v151 = 0;
      if (v9 && @"gl-option-sessioninfo-cookie")
      {
        v151 = CFDictionaryGetValue(v9, @"gl-option-sessioninfo-cookie");
      }

      v15 = [v151 unsignedIntValue];
      if (!v15)
      {
        goto LABEL_317;
      }

      v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
      if (v47)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-qr-cookie", v47);
      }

      goto LABEL_300;
    }

    v40 = [(IDSStunMessage *)v10 transactionID];
    [v8 deriveAES128CTRKeys:v40];

    if ([v8 state] < 3)
    {
      v51 = [v8 relaySessionToken];
      if (v51)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-qr-sessiontokenkey", v51);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1CFCC();
      }

      v122 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v122, OS_LOG_TYPE_DEFAULT, "use relay-access-token for info request.", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_242;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_242;
      }

      _IDSLogTransport(@"GL", @"IDS", @"use relay-access-token for info request.", v123, v124, v125, v126, v127, v183);
      if ((_IDSShouldLog(0) & 1) == 0)
      {
        goto LABEL_242;
      }

      v121 = @"use relay-access-token for info request.";
    }

    else
    {
      v41 = [v8 channelNumber];
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(v41)];
      if (v42)
      {
        CFDictionarySetValue(v11, @"ids-stun-attribute-channelnumber", v42);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1C85C();
      }

      v111 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v111, OS_LOG_TYPE_DEFAULT, "use channel-number for info request.", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_242;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_242;
      }

      _IDSLogTransport(@"GL", @"IDS", @"use channel-number for info request.", v112, v113, v114, v115, v116, v183);
      if ((_IDSShouldLog(0) & 1) == 0)
      {
        goto LABEL_242;
      }

      v121 = @"use channel-number for info request.";
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", v121, v117, v118, v119, v120, v186);
LABEL_242:
    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:7];
    if (v128)
    {
      CFDictionarySetValue(v11, @"ids-stun-attribute-infoflags", v128);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D054();
    }

    v129 = [v8 relaySessionKey];
    if (v129)
    {
      CFDictionarySetValue(v11, @"ids-stun-attribute-messageintegrity", v129);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D0DC();
    }

    goto LABEL_317;
  }

  v24 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "StunUtilCreateMessage failed due to invalid relay candidate pair.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"StunUtilCreateMessage failed due to invalid relay candidate pair.", v25, v26, v27, v28, v29, v183);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"StunUtilCreateMessage failed due to invalid relay candidate pair.", v30, v31, v32, v33, v184);
      }
    }
  }

  v16 = 0;
LABEL_330:

  return v16;
}

uint64_t StunUtilHasValidChannelNumber(void *a1, unsigned int a2, _WORD *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5 || (bzero(v24, 0x5D0uLL), ![v5 getAttribute:12 attribute:v24]))
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v6 = HIWORD(v25);
  if (a2)
  {
    v7 = __rev16(a2);
    if (v6 != v7)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v21 = v6;
        v22 = 1024;
        v23 = v7;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "channel-number mismatch (%04x != %04x).", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"channel-number mismatch (%04x != %04x).", v9, v10, v11, v12, v13, v6);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"channel-number mismatch (%04x != %04x).", v14, v15, v16, v17, v6);
          }
        }
      }

      goto LABEL_11;
    }
  }

  if (a3)
  {
    *a3 = HIWORD(v25);
  }

  v18 = 1;
LABEL_12:

  return v18;
}

uint64_t StunUtilHasValidXorMappedAddress(uint64_t result, void *a2)
{
  __n[185] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    bzero(v4, 0x5D0uLL);
    result = [v3 getAttribute:32 attribute:v4];
    if (result)
    {
      result = IsValidSA(__n);
      if (result)
      {
        if (a2)
        {
          memcpy(a2, __n, LOBYTE(__n[0]));
        }

        return 1;
      }
    }
  }

  return result;
}

void *StunUtilHasValidUInt64Attr(void *result, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

void *StunUtilHasValidUInt8Attr(void *result, uint64_t a2, _BYTE *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    bzero(v6, 0x5D0uLL);
    result = [v5 getAttribute:a2 attribute:v6];
    if (a3)
    {
      if (result)
      {
        *a3 = v6[8];
      }
    }
  }

  return result;
}

void *StunUtilHasValidErrorCodeAttr(void *a1, _WORD *a2, char *a3, int *a4)
{
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(v12, 0x5D0uLL);
    v4 = [v4 getAttribute:9 attribute:v12];
    if (v4)
    {
      if (a2)
      {
        *a2 = v14 + 100 * v13;
      }

      if (a3 && a4)
      {
        v8 = v16;
        if (v16 > 127)
        {
          v9 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11[0] = 67109120;
            v11[1] = v16;
            _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "StunUtilHasValidErrorCodeAttr potential overflow, error code length: %d", v11, 8u);
          }
        }

        else
        {
          *a4 = v16;
          strlcpy(a3, v15, v8 + 1);
        }
      }
    }
  }

  return v4;
}

uint64_t StunUtilDeriveHKDFSha256Keys(void *a1, void *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a4;
  memset(v30, 170, 24);
  v13 = [v10 length];
  v14 = [v12 length];
  if (a5 && v13 == 20 && v14 == 12)
  {
    qmemcpy(v29, "QuickRelay KDF", sizeof(v29));
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
    v16 = v15;
    if (v11)
    {
      [v15 getUUIDBytes:v30];
      *&v30[8] = bswap64(a3);
      v17 = ids_monotonic_time();
      [v12 bytes];
      Hkdf = CCKDFParametersCreateHkdf();
      if (Hkdf)
      {
        v19 = Hkdf;
        v20 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v28) = v19;
          v21 = "CCKDFParametersCreateHkdf failed with error %d.";
LABEL_17:
          _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 8u);
        }
      }

      else
      {
        [v10 bytes];
        v24 = CCDeriveKey();
        CCKDFParametersDestroy();
        if (!v24)
        {
          v26 = ids_monotonic_time();
          v20 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v28 = v26 - v17;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "HKDF+SHA256 key derivation time: %.6f.", buf, 0xCu);
          }

          v23 = 1;
          goto LABEL_19;
        }

        v20 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v28) = v24;
          v21 = "CCDeriveKey failed with error %d.";
          goto LABEL_17;
        }
      }

      v23 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v22 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed due to invalid session-id.", buf, 2u);
    }
  }

  else
  {
    v16 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "StunUtilDeriveHKDFSha256Keys failed due to invalid parameter.", buf, 2u);
    }
  }

  v23 = 0;
LABEL_20:

  return v23;
}

BOOL StunUtilInitAES128CTR(void *a1, CCOperation a2, const void *a3, CCCryptorRef *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v7 = [a1 bytes];
  v8 = *(v7 + 8);
  iv = *v7;
  v23 = v8;
  v9 = ids_monotonic_time();
  v10 = CCCryptorCreateWithMode(a2, 4u, 0, 0, &iv, a3, 0x10uLL, 0, 0, 0, 2u, a4);
  if (v10)
  {
    v11 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v10;
      v12 = "CCCryptorCreateWithMode failed for encryption with (%d).";
      v13 = v11;
      v14 = 8;
LABEL_6:
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v15 = ids_monotonic_time();
    v11 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a4;
      *buf = 134218240;
      v19 = v16;
      v20 = 2048;
      v21 = v15 - v9;
      v12 = "AES128-CTR (%p) init time: %.6f.";
      v13 = v11;
      v14 = 22;
      goto LABEL_6;
    }
  }

  return v10 == 0;
}

BOOL StunUtilDoAES128CTR(_CCCryptor *a1, const void *a2, size_t a3, void *a4, size_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  dataOutMoved = 0;
  v10 = ids_monotonic_time();
  v11 = CCCryptorUpdate(a1, a2, a3, a4, a3, &dataOutMoved);
  if (v11)
  {
    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v11;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "CCCryptorUpdate failed to enc/dec with (%d).", buf, 8u);
    }
  }

  else
  {
    v13 = ids_monotonic_time();
    if (a5)
    {
      *a5 = dataOutMoved;
    }

    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:*a5];
      *buf = 134218754;
      v19 = a1;
      v20 = 2048;
      v21 = v13 - v10;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "AES128-CTR (%p) time: %.6f (in:%@, out:%@).", buf, 0x2Au);
    }
  }

  return v11 == 0;
}

uint64_t sub_1A7C32F38(CCCryptorRef *a1, CCOperation a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v40 = xmmword_1A7E40DA0;
  v38 = xmmword_1A7E40DB0;
  v39 = 857870592;
  v36 = 0x8877665544332211;
  v37 = -860116327;
  v34 = xmmword_1A7E40DD0;
  v35 = xmmword_1A7E40DC0;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v40];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:12];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:20];
    v7 = [v4 UUIDString];
    v8 = StunUtilDeriveHKDFSha256Keys(v6, v7, 0x123456789ABCDEFuLL, v5, &v41, 32);

    if (v8)
    {
      if (a2)
      {
        v9 = &v42;
      }

      else
      {
        v9 = &v41;
      }

      v10 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:16];
        v11 = v25 = v9;
        v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v41 length:16];
        [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:16];
        v14 = v13 = a1;
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v42 length:16];
        *buf = 138413058;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "encKeyOut:(%@, %@), encKeyIn:(%@, %@).", buf, 0x2Au);

        a1 = v13;
        v9 = v25;
      }

      v16 = v35 == v41 && *(&v35 + 1) == *(&v41 + 1);
      if (v16 && (v34 == v42 ? (v17 = *(&v34 + 1) == *(&v42 + 1)) : (v17 = 0), v17))
      {
        inited = StunUtilInitAES128CTR(v5, a2, v9, a1);
        v18 = +[IDSFoundationLog Stun];
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (inited)
        {
          if (v23)
          {
            v24 = *a1;
            *buf = 134217984;
            v27 = v24;
            _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "AES128-CTR cryptor instance is created successfully: %p.", buf, 0xCu);
          }

          v20 = 1;
          goto LABEL_26;
        }

        if (v23)
        {
          *buf = 0;
          v19 = "failed to create AES128-CTR encoder.";
          goto LABEL_24;
        }
      }

      else
      {
        v18 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v19 = "key derivation failed with mismatch.";
LABEL_24:
          _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        }
      }
    }

    else
    {
      v18 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "StunUtilDeriveHKDFSha256Keys failed.";
        goto LABEL_24;
      }
    }

    v20 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v5 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_StunUtilTestHKDFSha256KeysDerivationAndInit failed due to invalid sessionUUID.", buf, 2u);
  }

  v20 = 0;
LABEL_27:

  return v20;
}

uint64_t StunUtilTestAES128CTREnc(CCCryptorRef *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  qmemcpy(v41, "Client Attribute Value 1", sizeof(v41));
  v40 = 0x402DE734DE3646B1;
  v38 = 0u;
  v39 = xmmword_1A7E40DF0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v14 = 0;
  v15 = 0;
  qmemcpy(v30, "Client Attribute Value 2", 24);
  v27 = 0u;
  v28 = xmmword_1A7E40E00;
  v29 = 0xE7B60E32A2F3586;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if ((sub_1A7C32F38(a1, 0) & 1) == 0)
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v7 = "_StunUtilTestHKDFSha256KeysDerivationAndInit failed.";
    v8 = v4;
    v9 = 2;
LABEL_19:
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, v41, 0x18uLL, &v31, &v15))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v17 = v41;
    v7 = "StunUtilDoAES128CTR failed for %s.";
    goto LABEL_18;
  }

  if (v15 != 24 || (v39 == v31 ? (v2 = *(&v39 + 1) == *(&v31 + 1)) : (v2 = 0), v2 ? (v3 = v40 == v32) : (v3 = 0), !v3))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v10 = 0;
      goto LABEL_21;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31 length:v15];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:24];
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
LABEL_13:
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR result mismatch. (output:%@, expected:%@).", buf, 0x16u);

    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, v30, 0x18uLL, &v20, &v14))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v17 = v30;
    v7 = "StunUtilDoAES128CTR failed for %s.";
LABEL_18:
    v8 = v4;
    v9 = 12;
    goto LABEL_19;
  }

  if (v14 != 24 || (v28 == v20 ? (v12 = *(&v28 + 1) == *(&v20 + 1)) : (v12 = 0), v12 ? (v13 = v29 == v21) : (v13 = 0), !v13))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v20 length:v14];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:24];
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    goto LABEL_13;
  }

  v4 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilTestAES128CTREnc Success!", buf, 2u);
  }

  v10 = 1;
LABEL_21:

  return v10;
}

uint64_t StunUtilTestAES128CTRDec(CCCryptorRef *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = xmmword_1A7E40E10;
  v38 = 0xA2B056FE88BACF07;
  v35 = 0u;
  qmemcpy(v36, "Server Attribute Value 1", 24);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v11 = 0;
  v12 = 0;
  v26 = xmmword_1A7E40E30;
  v27 = 0x4CF3FC3300AF00CBLL;
  v24 = 0u;
  qmemcpy(v25, "Server Attribute Value 2", 24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if ((sub_1A7C32F38(a1, 1u) & 1) == 0)
  {
    v4 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_StunUtilTestHKDFSha256KeysDerivationAndInit failed.", buf, 2u);
    }

    goto LABEL_20;
  }

  if (!StunUtilDoAES128CTR(*a1, &v37, 0x18uLL, &v28, &v12))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:24];
    *buf = 138412290;
    v14 = v5;
LABEL_18:
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR failed for %@.", buf, 0xCu);
    goto LABEL_19;
  }

  if (v12 != 24 || (*&v36[0] == v28 ? (v2 = *(&v36[0] + 1) == *(&v28 + 1)) : (v2 = 0), v2 ? (v3 = *&v36[1] == v29) : (v3 = 0), !v3))
  {
    v4 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:v12];
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:24];
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
LABEL_13:
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilDoAES128CTR result mismatch. (output:%@, expected:%@).", buf, 0x16u);

LABEL_19:
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (!StunUtilDoAES128CTR(*a1, &v26, 0x18uLL, &v17, &v11))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v26 length:24];
    *buf = 138412290;
    v14 = v5;
    goto LABEL_18;
  }

  if (v11 != 24 || (*&v25[0] == v17 ? (v9 = *(&v25[0] + 1) == *(&v17 + 1)) : (v9 = 0), v9 ? (v10 = *&v25[1] == v18) : (v10 = 0), !v10))
  {
    v4 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v17 length:v11];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v25 length:24];
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    goto LABEL_13;
  }

  v4 = +[IDSFoundationLog Stun];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "StunUtilTestAES128CTRDec Success!", buf, 2u);
  }

  v7 = 1;
LABEL_21:

  return v7;
}

uint64_t StunUtilHasValidAttrLength(uint64_t a1, int a2, unint64_t a3)
{
  v3 = a2 >> 63;
  if (__CFADD__(a1, a2))
  {
    ++v3;
  }

  v4 = ((v3 & 1) == 0) & ~(v3 << 63 >> 63 != v3);
  if (a1 + a2 <= a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_1A7C34564(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4[0] = MEMORY[0x1E695E110];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

uint64_t IDSQRProtoParticipantUpdateRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___IDSMessageSendMetric__metrics;
    v6 = 0x1E77DB000uLL;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v10 = [a2 position] + 1;
        if (v10 >= [a2 position] && (v11 = objc_msgSend(a2, "position") + 1, v11 <= objc_msgSend(a2, "length")))
        {
          v12 = [a2 data];
          [v12 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [a2 hasError] ? 0 : v9;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 == 16)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v48 & 0x7F) << v24;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              v30 = 0;
              goto LABEL_64;
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

LABEL_64:
          v38 = 44;
          goto LABEL_69;
        }

        goto LABEL_47;
      }

      v37 = objc_alloc_init(*(v6 + 3480));
      objc_storeStrong((a1 + 32), v37);
      v48 = 0xAAAAAAAAAAAAAAAALL;
      v49 = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v37, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_70:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v15 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v48 & 0x7F) << v31;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v13 = v32++ >= 9;
        if (v13)
        {
          v30 = 0;
          goto LABEL_68;
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

LABEL_68:
      v38 = v5[561];
LABEL_69:
      *(a1 + v38) = v30;
      goto LABEL_70;
    }

    if (v15 == 2)
    {
      if ((v14 & 7) == 2)
      {
        v48 = 0xAAAAAAAAAAAAAAAALL;
        v49 = 0xAAAAAAAAAAAAAAAALL;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v17 = [a2 position];
          if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v50 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v50 & 0x7F) << v18;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              goto LABEL_35;
            }
          }

          [a2 hasError];
LABEL_35:
          PBRepeatedUInt64Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v40 = v6;
        v41 = v5;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v48) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v48 & 0x7F) << v42;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v13 = v43++ >= 9;
          if (v13)
          {
            goto LABEL_83;
          }
        }

        [a2 hasError];
LABEL_83:
        PBRepeatedUInt64Add();
        v5 = v41;
        v6 = v40;
      }

      goto LABEL_70;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPropertyOverrideReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        [a1 clearOneofValuesForPropertyValue];
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 12) = 1;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v47 & 0x7F) << v27;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_63;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_63:
        *(a1 + 28) = v33;
        goto LABEL_74;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
          goto LABEL_60;
        }

        [a1 clearOneofValuesForPropertyValue];
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 12) = 3;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v48 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_68:
        v42 = 24;
LABEL_73:
        *(a1 + v42) = v20;
        goto LABEL_74;
      }

      [a1 clearOneofValuesForPropertyValue];
      *(a1 + 32) |= 2u;
      *(a1 + 12) = 2;
      v34 = PBReaderReadString();
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;

LABEL_74:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (!v13)
    {
      v36 = 0;
      while (1)
      {
        v46 = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((v46 & 0x80000000) == 0)
        {
          break;
        }

        if (v36++ > 8)
        {
          goto LABEL_74;
        }
      }

      [a2 hasError];
      goto LABEL_74;
    }

    if (v13 != 1)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_74;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v45 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v45 & 0x7F) << v21;
      if ((v45 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_72;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

LABEL_72:
    v42 = 8;
    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C39124(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "created %@ proto message %@", &v5, 0x16u);
  }
}

void sub_1A7C3A534(void *a1, void *a2, void *a3, unsigned int a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addPublishedStreamIds:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "unsignedShortValue")}];
      }

      v10 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  v15 = *v37;
  while (2)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * j);
      v18 = [v17 participantID];
      v19 = [v18 unsignedLongLongValue];

      v20 = [v17 anyParticipant];
      v21 = [v17 anyStream];
      v22 = v21;
      if (v20 && (v21 & 1) != 0)
      {
        [v6 setAllWildcardSubscription:1];
        goto LABEL_33;
      }

      v23 = objc_alloc_init(IDSQRProtoSubscribedStream);
      v24 = v23;
      if ((v20 | v22))
      {
        [(IDSQRProtoSubscribedStream *)v23 setWildcardSubscription:1];
        if (v20)
        {
LABEL_17:
          if (v22)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      else if (v20)
      {
        goto LABEL_17;
      }

      [(IDSQRProtoSubscribedStream *)v24 setPeerParticipantId:v19];
      if (v22)
      {
        goto LABEL_29;
      }

LABEL_21:
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = [v17 streamArray];
      v26 = [v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v25);
            }

            -[IDSQRProtoSubscribedStream addPeerStreamIds:](v24, "addPeerStreamIds:", [*(*(&v32 + 1) + 8 * k) unsignedShortValue]);
          }

          v27 = [v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v27);
      }

LABEL_29:
      [v6 addSubscribedStreams:v24];
    }

    v14 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_33:

  [v6 setMaxConcurrentStreams:a4];
}

void sub_1A7C3A830(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_setupAllocbindRequest: materials: %@", &v4, 0xCu);
  }
}

void sub_1A7C3B9EC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_setupPutmaterialRequest: materials: %@", &v4, 0xCu);
  }
}

void sub_1A7C3C304(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog QRProto_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "created proto message %@ with %@", &v5, 0x16u);
  }
}

__CFDictionary *ProtoUtilProcessStreamInfo(void *a1, unsigned int a2, int a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a1;
  theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 hasGenerationCounter])
  {
    v5 = a3;
    v6 = [v4 generationCounter];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    if (v7)
    {
      CFDictionarySetValue(theDict, @"stream-info-generation-counter", v7);
    }

    a3 = v5;
  }

  v8 = [v4 peerSubscribedStreamIdsCount];
  v9 = [v4 peerSubscribedStreamIds];
  v75 = a3;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v88) = v8;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "receive %d peer-sub-streams", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive %d peer-sub-streams", v11, v12, v13, v14, v15, v8);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive %d peer-sub-streams", v16, v17, v18, v19, v8);
      }
    }
  }

  if (v8 < 1)
  {
    theArray = 0;
  }

  else
  {
    theArray = 0;
    v20 = v8 & 0x7FFFFFFF;
    do
    {
      v22 = *v9++;
      v21 = v22;
      if (theArray || (theArray = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v21];
        v24 = v23 == 0;

        if (!v24)
        {
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v21];
          CFArrayAppendValue(theArray, v25);
        }
      }

      else
      {
        theArray = 0;
      }

      --v20;
    }

    while (v20);
  }

  v26 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = theArray;
    _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "processed peer-sub-stream: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processed peer-sub-stream: %@.", v27, v28, v29, v30, v31, theArray);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-sub-stream: %@.", v32, v33, v34, v35, theArray);
      }
    }
  }

  v36 = [v4 peerPublishedStreamsCount];
  v37 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v88) = v36;
    _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "receive %d peer-pub-streams", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive %d peer-pub-streams", v38, v39, v40, v41, v42, v36);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive %d peer-pub-streams", v43, v44, v45, v46, v36);
      }
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [v4 peerPublishedStreams];
  v81 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v81)
  {
    v47 = 0;
    v80 = *v83;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v83 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v82 + 1) + 8 * i);
        v50 = [v49 peerStreamIdsCount];
        v51 = [v49 peerStreamIds];
        if (v50 < 1)
        {
          v53 = 0;
        }

        else
        {
          v52 = v51;
          v53 = 0;
          v54 = v50 & 0x7FFFFFFF;
          do
          {
            v56 = *v52++;
            v55 = v56;
            if (v53 || (v53 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
            {
              v57 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v55];
              v58 = v57 == 0;

              if (!v58)
              {
                v59 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v55];
                CFArrayAppendValue(v53, v59);
              }
            }

            --v54;
          }

          while (v54);
        }

        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v49, "peerParticipantId")}];
        v61 = [IDSQRParticipantStreams streamWithParticipantID:v60 streamArray:v53 anyParticipant:0 anyStream:0];

        if (v47 || (v47 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
        {
          if (v61)
          {
            CFArrayAppendValue(v47, v61);
          }
        }
      }

      v81 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
    }

    while (v81);
  }

  else
  {
    v47 = 0;
  }

  v62 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v47;
    _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "processed peer-pub-stream: %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"processed peer-pub-stream: %@.", v63, v64, v65, v66, v67, v47);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"processed peer-pub-stream: %@.", v68, v69, v70, v71, v47);
      }
    }
  }

  if (theArray)
  {
    CFDictionarySetValue(theDict, @"stream-info-peer-subscribed-streams", theArray);
  }

  if (v47)
  {
    CFDictionarySetValue(theDict, @"stream-info-peer-published-streams", v47);
  }

  v72 = [MEMORY[0x1E696AD98] numberWithChar:a2];
  if (v72)
  {
    CFDictionarySetValue(theDict, @"gl-option-linkid", v72);
  }

  if (v75 >= 1)
  {
    v73 = [MEMORY[0x1E696AD98] numberWithChar:?];
    if (v73)
    {
      CFDictionarySetValue(theDict, @"gl-option-sessioninfo-link-id-to-query", v73);
    }
  }

  return theDict;
}

__CFArray *sub_1A7C3D274(unsigned int a1, uint64_t *a2)
{
  if (a1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a1;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (v3 || (v3 = objc_alloc_init(MEMORY[0x1E695DF70])) != 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];

        if (v7)
        {
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
          CFArrayAppendValue(v3, v8);
        }
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id ProtoUtilProcessLightweightParticipants(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lightweightParticipantIdListsCount];
  v3 = sub_1A7C3D274(v2, [v1 lightweightParticipantIdLists]);
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = v2;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "received %d lightweight participants: %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received %d lightweight participants: %@", v5, v6, v7, v8, v9, v2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received %d lightweight participants: %@", v10, v11, v12, v13, v2);
      }
    }
  }

  return v3;
}

__CFArray *sub_1A7C3D4C0(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v25 = a2;
  v6 = a3;
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v25;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v27 + 1) + 8 * j) unsignedLongLongValue];
              v14 |= v17 == [v10 participantId];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if ([v6 count])
        {
          v18 = 0;
          do
          {
            v19 = [v6 objectAtIndexedSubscript:v18];
            v20 = [v19 unsignedLongLongValue];
            v21 = v20 == [v10 participantId];

            v14 |= v21;
            ++v18;
          }

          while ([v6 count] > v18);
        }

        if ((v14 & 1) == 0 && theArray && v10)
        {
          CFArrayAppendValue(theArray, v10);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  return theArray;
}

CFMutableDictionaryRef ProtoUtilProcessLeftParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D4C0(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

__CFArray *sub_1A7C3D994(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v25 = a2;
  v6 = a3;
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v25;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v28;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v27 + 1) + 8 * j) unsignedLongLongValue];
              v14 |= v17 == [v10 participantId];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if ([v6 count])
        {
          v18 = 0;
          do
          {
            v19 = [v6 objectAtIndexedSubscript:v18];
            v20 = [v19 unsignedLongLongValue];
            v21 = v20 == [v10 participantId];

            v14 |= v21;
            ++v18;
          }

          while ([v6 count] > v18);
        }

        if ((v14 & 1) != 0 && theArray && v10)
        {
          CFArrayAppendValue(theArray, v10);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  return theArray;
}

CFMutableDictionaryRef ProtoUtilProcessjoinedParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D994(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

CFMutableDictionaryRef ProtoUtilProcessUpdatedParticipants(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = sub_1A7C3D994(a1, a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 participantId];
        v9 = [v7 clientContextBlob];
        v10 = [v9 materialInfos];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) materialContent];
              v18 = v17;
              if (v11 && v17)
              {
                CFArrayAppendValue(v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return Mutable;
}

id ProtoUtilProcessActiveParticipantsFromInfo(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 activeParticipantsCount];
  v3 = sub_1A7C3D274(v2, [v1 activeParticipants]);
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = v2;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "received %d active participants: %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received %d active participants: %@", v5, v6, v7, v8, v9, v2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received %d active participants: %@", v10, v11, v12, v13, v2);
      }
    }
  }

  return v3;
}

id ProtoUtilProcessActiveLightweightParticipantsFromInfo(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 activeLightweightParticipantsCount];
  v3 = sub_1A7C3D274(v2, [v1 activeLightweightParticipants]);
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = v2;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "received %d active lightweight participants: %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"received %d active lightweight participants: %@", v5, v6, v7, v8, v9, v2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"received %d active lightweight participants: %@", v10, v11, v12, v13, v2);
      }
    }
  }

  return v3;
}

__CFDictionary *ProtoUtilProcessParticipantUpdate(void *a1, int a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 sessionStateCounter];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  if (v8)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-counter", v8);
  }

  v9 = [v5 operationFlags];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v9];
  if (v10)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-session-state-type", v10);
  }

  v11 = [v5 participantIdListsCount];
  v12 = [v5 participantIdLists];
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); v11; --v11)
  {
    if (i)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v12];

      if (v14)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v12];
        CFArrayAppendValue(i, v15);
      }
    }

    ++v12;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = i;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "receive participantIDs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive participantIDs: %@", v17, v18, v19, v20, v21, i);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive participantIDs: %@", v22, v23, v24, v25, i);
      }
    }
  }

  v26 = i;
  if (v26)
  {
    CFDictionarySetValue(v6, @"ids-stun-attribute-enc-ParticipantIDs", v26);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1D40C();
  }

  if (a2)
  {
    v27 = 4;
  }

  else if ((a3 - 7) >= 3)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = a3;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "ProtoUtilProcessParticipantUpdate: unknown messageType: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"ProtoUtilProcessParticipantUpdate: unknown messageType: %ld", v29, v30, v31, v32, v33, a3);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"ProtoUtilProcessParticipantUpdate: unknown messageType: %ld", v34, v35, v36, v37, a3);
        }
      }
    }

    v27 = 0;
  }

  else
  {
    v27 = (2 * (a3 - 7)) | 1;
  }

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v27];
  if (v38)
  {
    CFDictionarySetValue(v6, @"ids-stun-message-type", v38);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1D4A0();
  }

  return v6;
}

void sub_1A7C3EEFC()
{
  v0 = objc_alloc_init(IDSStunRelayInterfaceInfoController);
  v1 = qword_1ED5DF728;
  qword_1ED5DF728 = v0;
}

uint64_t IDSQRProtoGoAwayIndicationReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        v14 = PBReaderReadData();
        v15 = 32;
LABEL_44:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_53;
      }

      if (v13 != 15)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v35 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v35 & 0x7F) << v16;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_48:
      *(a1 + 8) = v22;
LABEL_53:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v34 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v34 & 0x7F) << v24;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_52;
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

LABEL_52:
      *(a1 + 16) = v30;
      goto LABEL_53;
    }

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = PBReaderReadString();
    v15 = 24;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoInfoInfoReadFrom(uint64_t a1, void *a2)
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