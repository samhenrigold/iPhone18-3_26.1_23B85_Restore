uint64_t BMPBHomeKitClientActionSetEventReadFrom(id *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAssociatedAccessoryUniqueIdentifiers:v16];
            }

            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 1;
LABEL_35:
            v16 = a1[v15];
            a1[v15] = v14;
LABEL_36:

            goto LABEL_37;
          case 6:
            v14 = PBReaderReadString();
            v15 = 6;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = objc_alloc_init(BMPBHomeKitClientBase);
            objc_storeStrong(a1 + 5, v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !BMPBHomeKitClientBaseReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_36;
          case 2:
            v14 = PBReaderReadString();
            v15 = 3;
            goto LABEL_35;
          case 3:
            v14 = PBReaderReadString();
            v15 = 2;
            goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBFindMyLocationChangeEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
        break;
      }

      switch(v13)
      {
        case 1:
          v21 = PBReaderReadString();
          v22 = 32;
LABEL_35:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_67;
        case 2:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v41 & 0x7F) << v27;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_60:
          v35 = 40;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v14;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_56;
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

LABEL_56:
          v35 = 24;
          break;
        default:
          goto LABEL_39;
      }

      *(a1 + v35) = v20;
LABEL_67:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      *(a1 + 56) |= 1u;
      v41 = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v36 = [a2 data];
        [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v37 = v41;
      v38 = 8;
      goto LABEL_66;
    }

    if (v13 == 5)
    {
      *(a1 + 56) |= 2u;
      v41 = 0;
      v33 = [a2 position] + 8;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v37 = v41;
      v38 = 16;
LABEL_66:
      *(a1 + v38) = v37;
      goto LABEL_67;
    }

    if (v13 != 6)
    {
LABEL_39:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_67;
    }

    v21 = PBReaderReadString();
    v22 = 48;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBCommunicationSafetyResultEventReadFrom(uint64_t a1, void *a2)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          *(a1 + 112) |= 1u;
          v42 = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v42;
          goto LABEL_79;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_78;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_78;
        case 4u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 112) |= 4u;
          while (1)
          {
            v46 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v46 & 0x7F) << v24;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_71:
          v37 = 28;
          goto LABEL_76;
        case 5u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 112) |= 8u;
          while (1)
          {
            v45 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v45 & 0x7F) << v17;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_67;
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

LABEL_67:
          v37 = 32;
          goto LABEL_76;
        case 6u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 112) |= 2u;
          while (1)
          {
            v44 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v44 & 0x7F) << v30;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v32;
          }

LABEL_75:
          v37 = 24;
LABEL_76:
          *(a1 + v37) = v23;
          goto LABEL_79;
        case 7u:
          v36 = PBReaderReadString();
          if (v36)
          {
            [a1 addContactHandles:v36];
          }

          goto LABEL_79;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_78;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_78;
        case 0xAu:
          if (*(a1 + 116) == 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v15 = PBReaderReadData();
            v16 = 88;
LABEL_78:
            v38 = *(a1 + v16);
            *(a1 + v16) = v15;
          }

LABEL_79:
          v39 = [a2 position];
          if (v39 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
        case 0xBu:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_78;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_78;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_78;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_78;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_79;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBLastAlarmEventTypeFromType(unint64_t a1, _BYTE *a2)
{
  v2 = a1;
  if (a1 >= 0xB)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      BMPBLastAlarmEventTypeFromType_cold_1(v2);
    }

    if (a2)
    {
      *a2 = 1;
    }

    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t BMPBAlarmEventReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_63;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v41 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v41 & 0x7F) << v21;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
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

LABEL_59:
        v37 = 20;
LABEL_60:
        *(a1 + v37) = v20;
        goto LABEL_63;
      }

      v35 = PBReaderReadString();
      v36 = *(a1 + 8);
      *(a1 + 8) = v35;

LABEL_63:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v40 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v40 & 0x7F) << v28;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          LOBYTE(v34) = 0;
          goto LABEL_62;
        }
      }

      v34 = (v30 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 24) = v34;
      goto LABEL_63;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 28) |= 1u;
    while (1)
    {
      v42 = 0;
      v17 = [a2 position] + 1;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v42 & 0x7F) << v14;
      if ((v42 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v11 = v15++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_55;
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

LABEL_55:
    v37 = 16;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void sub_184A12ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_184A134B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_184A13D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t BMPBNowPlayingOutputDeviceReadFrom(uint64_t a1, void *a2)
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
        v27 = PBReaderReadString();
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
          *(a1 + 24) |= 1u;
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
              v20 = 0;
              goto LABEL_44;
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

LABEL_44:
          v30 = 16;
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

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
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
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v30 = 20;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBParsecSearchTopicReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
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

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBPhotosKnowledgeGraphEnrichmentEntityReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v24 = PBReaderReadString();
          v25 = 24;
          goto LABEL_38;
        }

        if (v13 != 4)
        {
LABEL_34:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v31 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v31 & 0x7F) << v16;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
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

LABEL_42:
        *(a1 + 16) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = PBReaderReadString();
          v25 = 32;
LABEL_38:
          v26 = *(a1 + v25);
          *(a1 + v25) = v24;

          goto LABEL_45;
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        *(a1 + 40) |= 1u;
        v29 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v29;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ChangeRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for StorableValue(uint64_t a1)
{
  type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Int64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for MaterializedViewPhysicalPlan(uint64_t a1)
{
  type metadata accessor for MaterializedView();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SelectCorePhysicalPlan(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SQLExpressionEvaluator();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Int64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SelectCorePhysicalPlan(uint64_t a1)
{
  type metadata accessor for Set<String>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SelectCore();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BMStreamBase(319, &lazy cache variable for type metadata for BMStreamBase, off_1E6E52140);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SQLExpressionEvaluator();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Set<String>()
{
  if (!lazy cache variable for type metadata for Set<String>)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<String>);
    }
  }
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v43[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v43 - v5;
  v45 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_2_1();
  v43[2] = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_13();
  v43[1] = v11 - v10;
  OUTLINED_FUNCTION_43();
  v44 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_68();
  v16 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  OUTLINED_FUNCTION_2_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_13();
  v23 = v22 - v21;
  v24 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  OUTLINED_FUNCTION_2_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_13();
  (*(v36 + 104))(v35 - v34, *MEMORY[0x1E6969360]);
  v37 = v24;
  v38 = v45;
  (*(v26 + 104))(v31, *MEMORY[0x1E6969358], v37);
  (*(v18 + 104))(v23, *MEMORY[0x1E6969370], v16);
  (*(v13 + 104))(v1, *MEMORY[0x1E6969380], v44);
  TimeZone.init(secondsFromGMT:)();
  result = OUTLINED_FUNCTION_92(v6, 1, v38);
  if (v40)
  {
    __break(1u);
  }

  else
  {
    v41 = OUTLINED_FUNCTION_48();
    v42(v41);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t StorableValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5672656765746E69 && a2 == 0xEC00000065756C61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C615665746164 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756C61566E6F736ALL && a2 == 0xE900000000000065;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x756C615661746164 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x756C615664697575 && a2 == 0xE900000000000065;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x756C61566C6C756ELL && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int StorableValue.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](a1);
  return Hasher._finalize()();
}

uint64_t StorableValue.CodingKeys.stringValue.getter(char a1)
{
  result = 0x5672656765746E69;
  switch(a1)
  {
    case 1:
      v3 = 0x656C62756F64;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6156000000000000;
    case 2:
      v4 = 1702125924;
      goto LABEL_10;
    case 3:
      v3 = 0x676E69727473;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6156000000000000;
    case 4:
      v4 = 1852797802;
      goto LABEL_10;
    case 5:
      v4 = 1635017060;
      goto LABEL_10;
    case 6:
      v4 = 1684632949;
      goto LABEL_10;
    case 7:
      v4 = 1819047278;
LABEL_10:
      result = v4 | 0x756C615600000000;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StorableValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StorableValue.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance StorableValue.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StorableValue.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorableValue.DataValueCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int StorableValue.DataValueCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](0);
  return Hasher._finalize()();
}

void StorableValue.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v114 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v109 = v2;
  v110 = v1;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_29();
  v107 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v112 = v7;
  v113 = v6;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_29();
  v111 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_29();
  v108 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v105 = v16;
  v106 = v15;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_29();
  v104 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v102 = v21;
  v103 = v20;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94(v24);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v99 = v25;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v28);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v98 = v29;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_47(v33);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v36);
  v94[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v94[1] = v37;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v94 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v94[0] = v43;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v94 - v46;
  type metadata accessor for StorableValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_13();
  v52 = (v51 - v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v116 = v53;
  v117 = v54;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = v94 - v57;
  v59 = OUTLINED_FUNCTION_60();
  __swift_project_boxed_opaque_existential_1(v59, v60);
  lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();
  v115 = v58;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of StorableValue(v114, v52);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = *v52;
      LOBYTE(v118[0]) = 1;
      lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();
      OUTLINED_FUNCTION_36(&unk_1EF2A03D8, v118);
      OUTLINED_FUNCTION_80();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      OUTLINED_FUNCTION_37();
      v62 = v41;
      goto LABEL_8;
    case 2u:
      v65 = v95;
      outlined init with take of UUID?(v52, v95, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      LOBYTE(v118[0]) = 2;
      lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();
      v66 = v96;
      v67 = v116;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_40();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v68, v69, MEMORY[0x1E6969538]);
      v70 = v100;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      OUTLINED_FUNCTION_37();
      v71(v66, v70);
      outlined destroy of UUID?(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v72 = OUTLINED_FUNCTION_71();
      goto LABEL_12;
    case 3u:
      LOBYTE(v118[0]) = 3;
      lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();
      v74 = v97;
      OUTLINED_FUNCTION_36(&unk_1EF2A04F8, v118);
      v75 = v101;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      OUTLINED_FUNCTION_37();
      v62 = v74;
LABEL_8:
      v63 = v75;
      goto LABEL_9;
    case 4u:
      LOBYTE(v118[0]) = 4;
      lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();
      OUTLINED_FUNCTION_36(&unk_1EF2A0588, v118);
      OUTLINED_FUNCTION_52();
      v64 = v103;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      v62 = OUTLINED_FUNCTION_71();
      v63 = v64;
      goto LABEL_9;
    case 5u:
      v80 = *v52;
      v81 = v52[1];
      LOBYTE(v118[0]) = 5;
      lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();
      OUTLINED_FUNCTION_36(&unk_1EF2A0618, v118);
      v118[0] = v80;
      v118[1] = v81;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v82 = OUTLINED_FUNCTION_58();
      v83(v82);
      OUTLINED_FUNCTION_78();
      v84 = OUTLINED_FUNCTION_77();
      v85(v84);
      outlined consume of Data?(v80, v81);
      goto LABEL_14;
    case 6u:
      v86 = v52;
      v87 = v108;
      outlined init with take of UUID?(v86, v108, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      LOBYTE(v118[0]) = 6;
      lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();
      v88 = v115;
      v67 = v116;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_1();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v89, v90, MEMORY[0x1E69695B0]);
      v91 = v113;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v92 = OUTLINED_FUNCTION_71();
      v93(v92, v91);
      outlined destroy of UUID?(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_78();
      v72 = v88;
LABEL_12:
      v79 = v67;
      goto LABEL_13;
    case 7u:
      LOBYTE(v118[0]) = 7;
      lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();
      v76 = v107;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v109 + 8))(v76, v110);
      OUTLINED_FUNCTION_78();
      v77 = OUTLINED_FUNCTION_60();
      v78(v77);
      goto LABEL_14;
    default:
      LOBYTE(v118[0]) = 0;
      lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();
      OUTLINED_FUNCTION_36(&unk_1EF2A0348, v118);
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      OUTLINED_FUNCTION_37();
      v62 = v47;
      v63 = v42;
LABEL_9:
      v61(v62, v63);
      OUTLINED_FUNCTION_78();
      v72 = OUTLINED_FUNCTION_77();
LABEL_13:
      v73(v72, v79);
LABEL_14:
      OUTLINED_FUNCTION_65();
      return;
  }
}

uint64_t StorableValue.hashValue.getter()
{
  v0 = type metadata accessor for StorableValue(0);
  v1 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type StorableValue and conformance StorableValue, type metadata accessor for StorableValue, &protocol conformance descriptor for StorableValue);

  return MEMORY[0x1EEE68A70](0, v0, v1);
}

void StorableValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  v26 = v25;
  v187 = v27;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v180 = v28;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_29();
  v185 = v31;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v189 = v32;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_29();
  v186 = v35;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v172 = v36;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_29();
  v184 = v39;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v171 = v40;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_29();
  v194 = v43;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v170 = v44;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_29();
  v193[1] = v47;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v169 = v48;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_29();
  v183 = v51;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v168 = v52;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_29();
  v182 = v55;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v167 = v56;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v57, v58);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94(v59);
  v193[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1();
  v191 = v60;
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v61, v62);
  v63 = OUTLINED_FUNCTION_68();
  v190 = type metadata accessor for StorableValue(v63);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_9_0();
  v173 = v66;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_30();
  v166 = v69;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_30();
  v165 = v72;
  OUTLINED_FUNCTION_27();
  v75 = MEMORY[0x1EEE9AC00](v73, v74);
  v77 = (&v158 - v76);
  MEMORY[0x1EEE9AC00](v75, v78);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v79, v80);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v81, v82);
  OUTLINED_FUNCTION_67();
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v158 - v85;
  v87 = v26[3];
  v195 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v87);
  lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();
  v192 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_8;
  }

  v161 = v24;
  v162 = v21;
  v163 = v77;
  v164 = v23;
  v88 = v194;
  v197 = v86;
  v90 = v192;
  v89 = v193[0];
  v91 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLO_Tt1g5(v91, 0);
  if (v93 == v94 >> 1)
  {
LABEL_7:
    v101 = v190;
    v102 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_63(v102, MEMORY[0x1E69E6B28]);
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v104 = v101;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    OUTLINED_FUNCTION_28();
    (*(v105 + 104))(v104);
    swift_willThrow();
    swift_unknownObjectRelease();
    v106 = OUTLINED_FUNCTION_10();
    v107(v106);
LABEL_8:
    v108 = v195;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    OUTLINED_FUNCTION_65();
    return;
  }

  v160 = 0;
  if (v93 < (v94 >> 1))
  {
    v159 = *(v92 + v93);
    specialized ArraySlice.subscript.getter(v93 + 1, v94 >> 1, started, v92, v93, v94);
    v97 = v96;
    v99 = v98;
    swift_unknownObjectRelease();
    if (v97 == v99 >> 1)
    {
      switch(v159)
      {
        case 1:
          LOBYTE(v196[0]) = 1;
          lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A03D8, v196);
          v100 = v175;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          swift_unknownObjectRelease();
          v146 = OUTLINED_FUNCTION_19();
          v147(v146, v100);
          v148 = OUTLINED_FUNCTION_10();
          v149(v148);
          OUTLINED_FUNCTION_61(v193);
          goto LABEL_17;
        case 2:
          LOBYTE(v196[0]) = 2;
          lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0468, v196);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_40();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v110, v111, MEMORY[0x1E6969558]);
          v112 = v164;
          v113 = v176;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_19();
          v131(v130, v113);
          v132 = OUTLINED_FUNCTION_10();
          v133(v132);
          goto LABEL_19;
        case 3:
          LOBYTE(v196[0]) = 3;
          lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A04F8, v196);
          v114 = v177;
          OUTLINED_FUNCTION_69();
          v134 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v136 = v135;
          swift_unknownObjectRelease();
          v137 = OUTLINED_FUNCTION_19();
          v138(v137, v114);
          v139 = OUTLINED_FUNCTION_10();
          v140(v139);
          v141 = v163;
          *v163 = v134;
          v141[1] = v136;
          goto LABEL_18;
        case 4:
          LOBYTE(v196[0]) = 4;
          lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0588, v196);
          v109 = v178;
          v124 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v126 = v125;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_37();
          v127(v88, v109);
          v128 = OUTLINED_FUNCTION_10();
          v129(v128);
          v100 = v165;
          *v165 = v124;
          v100[1] = v126;
          goto LABEL_17;
        case 5:
          LOBYTE(v196[0]) = 5;
          lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0618, v196);
          lazy protocol witness table accessor for type Data and conformance Data();
          v120 = v179;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v121 = v191;
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_19();
          v152(v151, v120);
          (*(v121 + 8))(v90, v89);
          v141 = v166;
          *v166 = v196[0];
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v150 = v141;
          goto LABEL_20;
        case 6:
          LOBYTE(v196[0]) = 6;
          lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A06A8, v196);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v122, v123, MEMORY[0x1E69695D0]);
          v112 = v173;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_50();
          v154(v153);
          v155 = OUTLINED_FUNCTION_10();
          v156(v155);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v150 = v112;
          goto LABEL_20;
        case 7:
          LOBYTE(v196[0]) = 7;
          lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A06C8, v196);
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_52();
          v116(v115);
          v117 = OUTLINED_FUNCTION_10();
          v118(v117);
          v119 = v86;
          swift_storeEnumTagMultiPayload();
          goto LABEL_21;
        default:
          LOBYTE(v196[0]) = 0;
          lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0348, v196);
          v100 = v174;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          swift_unknownObjectRelease();
          v142 = OUTLINED_FUNCTION_19();
          v143(v142, v100);
          v144 = OUTLINED_FUNCTION_10();
          v145(v144);
          OUTLINED_FUNCTION_61(&v192);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v150 = v100;
LABEL_20:
          v119 = v197;
          outlined init with take of StorableValue(v150, v197);
LABEL_21:
          v157 = v195;
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v119, v187);
          v108 = v157;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int ChangeOperation.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance StorableValue.DataValueCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StorableValue.DataValueCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DataValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DataValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DateValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DateValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DoubleValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DoubleValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.IntegerValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.IntegerValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.JsonValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.JsonValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StorableValue.NullValueCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StorableValue.NullValueCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.NullValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.NullValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.StringValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.StringValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue.DataValueCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.UuidValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.UuidValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date.ISO8601FormatStyle();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of StorableValue(v2, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (v22[8])
      {
        v41 = *v22;
        LOBYTE(v42) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        goto LABEL_8;
      }

      static StorableValue.hashForDouble(double:)(*v22);
      v25 = Int.hashValue.getter();
      goto LABEL_16;
    case 2u:
      outlined init with take of UUID?(v22, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of Date?(v19, v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v26 = type metadata accessor for Date();
      if (__swift_getEnumTagSinglePayload(v15, 1, v26) == 1)
      {
        outlined destroy of UUID?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        Hasher._combine(_:)(0);
      }

      else
      {
        default argument 0 of Date.ISO8601Format(_:)(v6);
        v35 = Date.ISO8601Format(_:)();
        v37 = v36;
        (*(v40 + 8))(v6, v3);
        (*(*(v26 - 8) + 8))(v15, v26);
        v38 = MEMORY[0x1865F62C0](v35, v37);

        Hasher._combine(_:)(1u);
        MEMORY[0x1865F6890](v38);
      }

      v33 = &_s10Foundation4DateVSgMd;
      v34 = &_s10Foundation4DateVSgMR;
      v32 = v19;
      goto LABEL_14;
    case 3u:
    case 4u:
      v23 = *(v22 + 1);
      v41 = *v22;
      v42 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v24 = Optional<A>.hashValue.getter();

      v25 = v24;
      goto LABEL_16;
    case 5u:
      v29 = *(v22 + 1);
      v41 = *v22;
      v28 = *&v41;
      v42 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      v30 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v30);
      outlined consume of Data?(v28, v29);
      return Hasher._finalize()();
    case 6u:
      outlined init with take of UUID?(v22, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v31 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v31);
      v32 = v10;
      v33 = &_s10Foundation4UUIDVSgMd;
      v34 = &_s10Foundation4UUIDVSgMR;
LABEL_14:
      outlined destroy of UUID?(v32, v33, v34);
      return Hasher._finalize()();
    case 7u:
      v25 = 0;
      goto LABEL_16;
    default:
      v27 = v22[8];
      v41 = *v22;
      LOBYTE(v42) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
LABEL_8:
      v25 = Optional<A>.hashValue.getter();
LABEL_16:
      MEMORY[0x1865F6890](v25);
      return Hasher._finalize()();
  }
}

uint64_t closure #2 in selectAndHavingAggregateFunctions(selectCore:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_85(v4, v6, v7);
  }

  return v10 & 1;
}

void specialized OrderedDictionary.removeFirst()()
{
  if (*(*(v0 + 8) + 16))
  {
    v1 = *v0;
    v2 = [*v0 objectAtIndexedSubscript_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGAA12ChangeRecordVSg_GMd, &_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGAA12ChangeRecordVSg_GMR);
    swift_dynamicCast();
    [v1 removeObjectAtIndex_];
    v3 = specialized Dictionary._Variant.removeValue(forKey:)(*(v5 + 16));
    outlined consume of ChangeRecord??(v3, v4);
  }
}

{
  if (*(*(v0 + 8) + 16))
  {
    v1 = *v0;
    v2 = [*v0 objectAtIndexedSubscript_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGSaySDySSAHGGSg_GMd, &_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGSaySDySSAHGGSg_GMR);
    swift_dynamicCast();
    [v1 removeObjectAtIndex_];
    v3 = specialized Dictionary._Variant.removeValue(forKey:)(*(v4 + 16));
    outlined consume of [[String : StorableValue]]??(v3);
  }
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5();
  *a1 = result;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1865F6160](v0);

  return v1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BMStreamIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1865F6160](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = BMStreamIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1865F62C0](v0);

  return v1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
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

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BMStreamIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier, &protocol conformance descriptor for BMStreamIdentifier);
  v3 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier, &protocol conformance descriptor for BMStreamIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v191 = v26;
  v192 = v25;
  v205 = v27;
  v28 = v21;
  v30 = v29;
  v32 = v31;
  v179 = v33;
  v190 = a21;
  v35 = v34(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_9_0();
  v185 = v38;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_30();
  v201 = v41;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_96();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_30();
  v202 = v46;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_30();
  v196 = v49;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_30();
  v195 = v52;
  OUTLINED_FUNCTION_27();
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v60 = &v176 - v57;
  a10 = MEMORY[0x1E69E7CC0];
  v194 = v32;
  v61 = v32[1];
  if (v61 >= 1)
  {
    v62 = 0;
    v206 = (v58 + 8);
    v207 = v58 + 16;
    v204 = (v58 + 32);
    v63 = MEMORY[0x1E69E7CC0];
    v197 = v35;
    v178 = v30;
    v193 = v58;
    v189 = v22;
    v176 = v59;
    v177 = &v176 - v57;
    do
    {
      v64 = v62++;
      v182 = v63;
      v181 = v64;
      if (v62 < v61)
      {
        v208 = v61;
        v65 = *v194;
        v22 = *(v58 + 72);
        v66 = v60;
        v67 = v64;
        v68 = &(*v194)[v22 * v62];
        v69 = *(v58 + 16);
        v69(v66, v68, v35);
        v198 = v65;
        v70 = &v65[v22 * v67];
        v71 = v176;
        v200 = v69;
        v69(v176, v70, v35);
        v30 = v71;
        LODWORD(v203) = closure #2 in selectAndHavingAggregateFunctions(selectCore:)(v177, v71, v192);
        if (v28)
        {
          v173 = *v206;
          v174 = OUTLINED_FUNCTION_104();
          (v173)(v174);
          v175 = OUTLINED_FUNCTION_72();
          (v173)(v175);
          goto LABEL_120;
        }

        v180 = 0;
        v72 = *v206;
        v73 = OUTLINED_FUNCTION_104();
        v72(v73);
        v74 = OUTLINED_FUNCTION_72();
        v199 = v72;
        v72(v74);
        v75 = v181 + 2;
        v63 = v198 + v22 * (v181 + 2);
        v76 = v208;
        while (1)
        {
          v28 = v75;
          if (v62 + 1 >= v76)
          {
            break;
          }

          v198 = v62;
          v77 = v197;
          v78 = v200;
          v200(v195, v63, v197);
          v79 = v78(v196, v68, v77);
          v80 = v205;
          v81 = (v205)(v79);
          v83 = v82;
          v84 = v80();
          if (v81 == v84 && v83 == v85)
          {
            v87 = 0;
          }

          else
          {
            v87 = OUTLINED_FUNCTION_85(v81, v83, v84);
          }

          v30 = v197;
          v88 = v199;
          (v199)(v196, v197);
          v88(v195, v30);
          v63 += v22;
          v68 += v22;
          v62 = v198 + 1;
          v75 = v28 + 1;
          v76 = v208;
          if ((v203 ^ v87))
          {
            goto LABEL_16;
          }
        }

        v62 = v76;
LABEL_16:
        if (v203)
        {
          v30 = v178;
          v63 = v182;
          if (v62 < v181)
          {
            goto LABEL_142;
          }

          if (v181 >= v62)
          {
            OUTLINED_FUNCTION_79();
            v35 = v197;
            v22 = v189;
            goto LABEL_39;
          }

          if (v76 >= v28)
          {
            v89 = v28;
          }

          else
          {
            v89 = v76;
          }

          v30 = v22 * (v89 - 1);
          v90 = v22 * v89;
          v91 = v181 * v22;
          v198 = v62;
          v92 = v62;
          v93 = v181;
          OUTLINED_FUNCTION_79();
          do
          {
            if (v93 != --v92)
            {
              v94 = *v194;
              if (!*v194)
              {
                goto LABEL_145;
              }

              v63 = &v94[v91];
              v28 = v197;
              v208 = *v204;
              (v208)(v185, &v94[v91], v197);
              v95 = v91 < v30 || v63 >= &v94[v90];
              if (v95)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v91 != v30)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeBackToFront();
              }

              (v208)(&v94[v30], v185, v28);
              OUTLINED_FUNCTION_79();
              OUTLINED_FUNCTION_80();
            }

            ++v93;
            v30 -= v22;
            v90 -= v22;
            v91 += v22;
          }

          while (v93 < v92);
          v35 = v197;
          v62 = v198;
          OUTLINED_FUNCTION_99();
        }

        else
        {
          OUTLINED_FUNCTION_79();
          v35 = v197;
          OUTLINED_FUNCTION_99();
          OUTLINED_FUNCTION_80();
        }

        v64 = v181;
      }

LABEL_39:
      v96 = v194[1];
      if (v62 < v96)
      {
        if (__OFSUB__(v62, v64))
        {
          goto LABEL_139;
        }

        if (v62 - v64 < v30)
        {
          v97 = v64 + v30;
          if (__OFADD__(v64, v30))
          {
            goto LABEL_140;
          }

          if (v97 >= v96)
          {
            v97 = v194[1];
          }

          v63 = v202;
          if (v97 < v64)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            return;
          }

          if (v62 == v97)
          {
            OUTLINED_FUNCTION_80();
          }

          else
          {
            v180 = v28;
            v98 = *v194;
            v99 = *(v58 + 72);
            v203 = *(v58 + 16);
            v100 = &v98[v99 * (v62 - 1)];
            v199 = -v99;
            v200 = v98;
            v101 = v64 - v62;
            v183 = v99;
            v102 = &v98[v62 * v99];
            v184 = v97;
            do
            {
              v198 = v62;
              v186 = v102;
              v187 = v101;
              v103 = v101;
              v188 = v100;
              v104 = v100;
              while (1)
              {
                v208 = v103;
                v105 = v203;
                (v203)(v63, v102, v35);
                v106 = OUTLINED_FUNCTION_58();
                v107 = v105(v106);
                v28 = v63;
                v108 = v205;
                v109 = v22;
                v110 = (v205)(v107);
                v111 = v35;
                v113 = v112;
                if (v110 == v108() && v113 == v114)
                {

                  v123 = *v206;
                  (*v206)(v109, v111);
                  v124 = OUTLINED_FUNCTION_57();
                  (v123)(v124);
                  v35 = v111;
                  v22 = v109;
                  v63 = v28;
                  goto LABEL_61;
                }

                v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v117 = *v206;
                (*v206)(v109, v111);
                v118 = OUTLINED_FUNCTION_57();
                (v117)(v118);
                v35 = v111;
                v22 = v109;
                if ((v116 & 1) == 0)
                {
                  break;
                }

                v119 = v208;
                if (!v200)
                {
                  goto LABEL_143;
                }

                v120 = *v204;
                v121 = v201;
                v122 = OUTLINED_FUNCTION_50();
                v120(v122);
                swift_arrayInitWithTakeFrontToBack();
                (v120)(v104, v121, v35);
                v104 += v199;
                v102 += v199;
                v95 = __CFADD__(v119, 1);
                v103 = (v119 + 1);
                v63 = v202;
                if (v95)
                {
                  goto LABEL_61;
                }
              }

              v63 = v202;
LABEL_61:
              v62 = v198 + 1;
              v100 = &v188[v183];
              v101 = v187 - 1;
              v102 = v186 + v183;
            }

            while (v198 + 1 != v184);
            v62 = v184;
            OUTLINED_FUNCTION_79();
            OUTLINED_FUNCTION_80();
            v64 = v181;
          }
        }
      }

      if (v62 < v64)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v63 = v169;
      }

      v125 = v63;
      v126 = *(v63 + 16);
      v127 = v125;
      v128 = v126 + 1;
      if (v126 >= *(v125 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v127 = v170;
      }

      *(v127 + 16) = v128;
      v129 = v127 + 32;
      v130 = (v127 + 32 + 16 * v126);
      *v130 = v181;
      v130[1] = v62;
      a10 = v127;
      OUTLINED_FUNCTION_101();
      v208 = *v131;
      if (!v208)
      {
        goto LABEL_146;
      }

      if (v126)
      {
        v198 = v62;
        v63 = v127;
        while (1)
        {
          v132 = v128 - 1;
          v133 = (v129 + 16 * (v128 - 1));
          v134 = (v63 + 16 * v128);
          if (v128 >= 4)
          {
            break;
          }

          if (v128 == 3)
          {
            v135 = *(v63 + 32);
            v136 = *(v63 + 40);
            v145 = __OFSUB__(v136, v135);
            v137 = v136 - v135;
            v138 = v145;
LABEL_84:
            if (v138)
            {
              goto LABEL_128;
            }

            v150 = *v134;
            v149 = v134[1];
            v151 = __OFSUB__(v149, v150);
            v152 = v149 - v150;
            v153 = v151;
            if (v151)
            {
              goto LABEL_131;
            }

            v154 = v133[1];
            v155 = v154 - *v133;
            if (__OFSUB__(v154, *v133))
            {
              goto LABEL_134;
            }

            if (__OFADD__(v152, v155))
            {
              goto LABEL_136;
            }

            if (v152 + v155 >= v137)
            {
              if (v137 < v155)
              {
                v132 = v128 - 2;
              }

              goto LABEL_106;
            }

            goto LABEL_99;
          }

          if (v128 < 2)
          {
            goto LABEL_130;
          }

          v157 = *v134;
          v156 = v134[1];
          v145 = __OFSUB__(v156, v157);
          v152 = v156 - v157;
          v153 = v145;
LABEL_99:
          if (v153)
          {
            goto LABEL_133;
          }

          v159 = *v133;
          v158 = v133[1];
          v145 = __OFSUB__(v158, v159);
          v160 = v158 - v159;
          if (v145)
          {
            goto LABEL_135;
          }

          if (v160 < v152)
          {
            goto LABEL_113;
          }

LABEL_106:
          if (v132 - 1 >= v128)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*v194)
          {
            goto LABEL_144;
          }

          v164 = (v129 + 16 * (v132 - 1));
          v165 = *v164;
          v166 = (v129 + 16 * v132);
          v167 = v166[1];
          specialized _merge<A>(low:mid:high:buffer:by:)(&(*v194)[*(v193 + 72) * *v164], &(*v194)[*(v193 + 72) * *v166], &(*v194)[*(v193 + 72) * v167], v208, v191, v190, v192, v191, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
          if (v28)
          {
            a10 = v127;
            goto LABEL_120;
          }

          if (v167 < v165)
          {
            goto LABEL_123;
          }

          v168 = *(v127 + 16);
          if (v132 > v168)
          {
            goto LABEL_124;
          }

          *v164 = v165;
          v164[1] = v167;
          if (v132 >= v168)
          {
            goto LABEL_125;
          }

          v128 = v168 - 1;
          memmove((v129 + 16 * v132), v166 + 2, 16 * (v168 - 1 - v132));
          v63 = v127;
          *(v127 + 16) = v168 - 1;
          v22 = v189;
          if (v168 <= 2)
          {
LABEL_113:
            a10 = v63;
            v62 = v198;
            goto LABEL_115;
          }
        }

        v139 = v129 + 16 * v128;
        v140 = *(v139 - 64);
        v141 = *(v139 - 56);
        v145 = __OFSUB__(v141, v140);
        v142 = v141 - v140;
        if (v145)
        {
          goto LABEL_126;
        }

        v144 = *(v139 - 48);
        v143 = *(v139 - 40);
        v145 = __OFSUB__(v143, v144);
        v137 = v143 - v144;
        v138 = v145;
        if (v145)
        {
          goto LABEL_127;
        }

        v146 = v134[1];
        v147 = v146 - *v134;
        if (__OFSUB__(v146, *v134))
        {
          goto LABEL_129;
        }

        v145 = __OFADD__(v137, v147);
        v148 = v137 + v147;
        if (v145)
        {
          goto LABEL_132;
        }

        if (v148 >= v142)
        {
          v162 = *v133;
          v161 = v133[1];
          v145 = __OFSUB__(v161, v162);
          v163 = v161 - v162;
          if (v145)
          {
            goto LABEL_137;
          }

          if (v137 < v163)
          {
            v132 = v128 - 2;
          }

          goto LABEL_106;
        }

        goto LABEL_84;
      }

      v63 = v127;
LABEL_115:
      v58 = v193;
      v61 = v194[1];
      v35 = v197;
      v30 = v178;
      v60 = v177;
    }

    while (v62 < v61);
  }

  OUTLINED_FUNCTION_101();
  if (!*v172)
  {
    goto LABEL_147;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&a10, *v172, v194, v191, v190, v192, v191, v171, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
LABEL_120:

  OUTLINED_FUNCTION_65();
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v109 = v23;
  v133 = v24;
  v108 = v25;
  v110 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31(0);
  OUTLINED_FUNCTION_2_1();
  v112 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_9_0();
  v123 = v36;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_30();
  v122 = v39;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_95();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_51();
  v128 = v44;
  v111 = v30;
  v45 = *v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_2:
  *v111 = v45;
  v131 = (v112 + 8);
  v132 = (v112 + 16);
  v121 = v28;
  v107 = v20;
  while (1)
  {
    v46 = *(v45 + 2);
    if (v46 < 2)
    {
      OUTLINED_FUNCTION_65();
      return;
    }

    v118 = v45;
    v47 = *v110;
    if (!*v110)
    {
      break;
    }

    v48 = *(v112 + 72);
    if (!v48)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
      goto LABEL_2;
    }

    v49 = &v45[16 * v46 - 16];
    v117 = *&v45[16 * v46];
    v50 = v48 * v117;
    v51 = v48 * *(v49 + 4);
    v52 = v51 - v48 * v117;
    v53 = v48 == -1 && v52 == 0x8000000000000000;
    if (v53)
    {
      goto LABEL_82;
    }

    v116 = *(v49 + 5);
    v54 = v48 * v116 - v51;
    if (v48 == -1 && v54 == 0x8000000000000000)
    {
      goto LABEL_83;
    }

    v114 = v46 - 2;
    v113 = v46 - 1;
    v115 = *(v45 + 2);
    v56 = v47 + v50;
    v57 = v47 + v51;
    v58 = v47 + v48 * v116;
    v59 = v52 / v48;
    a10 = v47 + v50;
    v138 = v28;
    v20 = v54 / v48;
    if (v52 / v48 < v54 / v48)
    {
      v60 = OUTLINED_FUNCTION_81();
      v108(v60);
      v129 = v28 + v59 * v48;
      v137 = v129;
      v61 = v47 + v48 + v48 * v117;
      v62 = v28;
      v20 = v107;
      v63 = v128;
      v124 = v48;
      v126 = v58;
      while (1)
      {
        if (v62 >= v129 || v57 >= v58)
        {
          goto LABEL_73;
        }

        v134 = v61;
        v65 = *v132;
        v66 = v57;
        (*v132)(v63, v57, v32);
        v67 = OUTLINED_FUNCTION_72();
        v68 = (v65)(v67);
        v69 = (v133)(v68);
        v70 = v20;
        v72 = v71;
        v73 = v133();
        v75 = v74;
        if (v69 == v73 && v72 == v74)
        {

          v86 = OUTLINED_FUNCTION_90();
          v75(v86);
          v87 = OUTLINED_FUNCTION_52();
          v75(v87);
          v20 = v70;
        }

        else
        {
          v77 = OUTLINED_FUNCTION_86();
          v80 = OUTLINED_FUNCTION_85(v77, v78, v79);

          v81 = OUTLINED_FUNCTION_90();
          v75(v81);
          v82 = OUTLINED_FUNCTION_52();
          v75(v82);
          v20 = v70;
          if (v80)
          {
            v83 = v57;
            v84 = v124;
            v57 += v124;
            if (v56 < v66 || v56 >= v57)
            {
              OUTLINED_FUNCTION_45();
              swift_arrayInitWithTakeFrontToBack();
              v58 = v126;
              v63 = v128;
            }

            else
            {
              v58 = v126;
              v63 = v128;
              if (v56 != v83)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_41;
          }
        }

        v84 = v124;
        if (v56 < v62 || v56 >= v62 + v124)
        {
          OUTLINED_FUNCTION_35();
          swift_arrayInitWithTakeFrontToBack();
          v58 = v126;
          v63 = v128;
        }

        else
        {
          v58 = v126;
          v63 = v128;
          if (v56 != v62)
          {
            OUTLINED_FUNCTION_35();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v138 = v62 + v124;
        v62 += v124;
LABEL_41:
        v56 += v84;
        a10 = v134;
        v61 = v134 + v84;
      }
    }

    v89 = OUTLINED_FUNCTION_70();
    v108(v89);
    v90 = v28 + v20 * v48;
    v91 = -v48;
    v92 = v90;
    v135 = v91;
    v136 = v56;
LABEL_45:
    v125 = v57;
    v127 = v57 + v91;
    v93 = v58;
    v94 = v92;
    v120 = v92;
    while (1)
    {
      if (v90 <= v121)
      {
        a10 = v57;
        v137 = v94;
        goto LABEL_73;
      }

      if (v56 >= v57)
      {
        break;
      }

      v130 = v93;
      v119 = v94;
      v95 = v90 + v91;
      v96 = *v132;
      v97 = OUTLINED_FUNCTION_104();
      v96(v97);
      v98 = (v96)(v123, v127, v32);
      (v133)(v98);
      OUTLINED_FUNCTION_53_0();
      v99 = v133();
      if (v132 == v99 && v96 == v100)
      {
        v20 = 0;
      }

      else
      {
        v20 = OUTLINED_FUNCTION_85(v132, v96, v99);
      }

      v58 = v130 + v135;
      v102 = *v131;
      (*v131)(v123, v32);
      v102(v122, v32);
      if (v20)
      {
        v104 = v130 < v125 || v58 >= v125;
        v56 = v136;
        if (v104)
        {
          v57 = v127;
          OUTLINED_FUNCTION_45();
          swift_arrayInitWithTakeFrontToBack();
          v92 = v119;
          v91 = v135;
        }

        else
        {
          v57 = v127;
          v91 = v135;
          v92 = v119;
          if (v130 != v125)
          {
            OUTLINED_FUNCTION_35();
            v92 = v105;
            swift_arrayInitWithTakeBackToFront();
            v57 = v127;
          }
        }

        goto LABEL_45;
      }

      v103 = v130 < v90 || v58 >= v90;
      v56 = v136;
      v57 = v125;
      if (v103)
      {
        OUTLINED_FUNCTION_35();
        swift_arrayInitWithTakeFrontToBack();
        v93 = v130 + v135;
        v90 = v95;
        v94 = v95;
        v91 = v135;
        v92 = v120;
      }

      else
      {
        v94 = v95;
        v53 = v90 == v130;
        v93 = v130 + v135;
        v90 = v95;
        v91 = v135;
        v92 = v120;
        if (!v53)
        {
          OUTLINED_FUNCTION_35();
          swift_arrayInitWithTakeBackToFront();
          v93 = v130 + v135;
          v90 = v95;
          v94 = v95;
        }
      }
    }

    a10 = v57;
    v137 = v92;
LABEL_73:
    specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v138, &v137, v109);
    v28 = v121;
    v45 = v118;
    if (v116 < v117)
    {
      goto LABEL_80;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
    }

    if (v114 >= *(v45 + 2))
    {
      goto LABEL_81;
    }

    v106 = &v45[16 * v115];
    *v106 = v117;
    *(v106 + 1) = v116;
    *v111 = v45;
    specialized Array.remove(at:)(v113);
    v45 = *v111;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v116 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_97_2();
  v27 = type metadata accessor for SQLExpression();
  OUTLINED_FUNCTION_2_1();
  v118 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_9_0();
  v128 = v31;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_30();
  v127 = v34;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v113 - v39;
  v117 = v20;
  Kind = *v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_2:
  v42 = v118;
  *v117 = Kind;
  v132 = (v42 + 8);
  v133 = (v42 + 16);
  v125 = v26;
  v126 = v27;
  v129 = v40;
  v114 = v21;
  while (1)
  {
    v43 = *(Kind + 2);
    if (v43 < 2)
    {
      OUTLINED_FUNCTION_65();
      return;
    }

    v124 = Kind;
    v44 = *v116;
    if (!*v116)
    {
      break;
    }

    v45 = *(v118 + 72);
    if (!v45)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      Kind = specialized _ArrayBuffer._consumeAndCreateNew()(Kind);
      goto LABEL_2;
    }

    v46 = &v124[16 * v43 - 16];
    v47 = *(v46 + 4);
    v123 = *&v124[16 * v43];
    v48 = v45 * v123;
    v49 = v45 * v47;
    v50 = v45 * v47 - v45 * v123;
    v51 = v45 == -1 && v50 == 0x8000000000000000;
    if (v51)
    {
      goto LABEL_85;
    }

    v122 = *(v46 + 5);
    v52 = v45 * v122 - v49;
    if (v45 == -1 && v52 == 0x8000000000000000)
    {
      goto LABEL_86;
    }

    v119 = v43 - 1;
    v120 = v43 - 2;
    v121 = v43;
    v54 = v44 + v48;
    v55 = v44 + v49;
    v131 = v44 + v45 * v122;
    v56 = v50 / v45;
    a10 = v44 + v48;
    v137 = v26;
    v57 = v52 / v45;
    v58 = v45;
    if (v50 / v45 < v52 / v45)
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v44 + v48, v50 / v45, v26);
      v130 = v26 + v56 * v58;
      v136 = v130;
      v59 = v44 + v58 + v58 * v123;
      v60 = v126;
      v61 = v131;
      v62 = v58;
      while (1)
      {
        if (v26 >= v130 || v55 >= v61)
        {
          v26 = v125;
          goto LABEL_76;
        }

        v134 = v59;
        v135 = v54;
        v64 = v62;
        v65 = *v133;
        v66 = v55;
        (*v133)(v40, v55, v60);
        v65(v21, v26, v60);
        v67 = v60;
        v68 = SQLExpression.sql.getter();
        v69 = v21;
        v71 = v70;
        if (v68 == SQLExpression.sql.getter() && v71 == v72)
        {

          v82 = *v132;
          v83 = OUTLINED_FUNCTION_86();
          v82(v83);
          v84 = OUTLINED_FUNCTION_77();
          v82(v84);
          v21 = v69;
        }

        else
        {
          v74 = OUTLINED_FUNCTION_105_2();
          v76 = OUTLINED_FUNCTION_85(v74, v71, v75);

          v77 = *v132;
          v78 = OUTLINED_FUNCTION_86();
          v77(v78);
          v79 = OUTLINED_FUNCTION_77();
          v77(v79);
          v21 = v69;
          v60 = v67;
          if (v76)
          {
            v55 += v64;
            v80 = v135;
            if (v135 < v66 || v135 >= v55)
            {
              OUTLINED_FUNCTION_52_2();
              swift_arrayInitWithTakeFrontToBack();
              v62 = v64;
              v40 = v129;
            }

            else
            {
              v40 = v129;
              if (v135 != v66)
              {
                OUTLINED_FUNCTION_52_2();
                swift_arrayInitWithTakeBackToFront();
              }

              v62 = v64;
            }

            goto LABEL_41;
          }
        }

        v80 = v135;
        if (v135 < v26 || v135 >= v26 + v64)
        {
          OUTLINED_FUNCTION_131_0();
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeFrontToBack();
          v62 = v64;
          v40 = v129;
        }

        else
        {
          v62 = v64;
          v40 = v129;
          if (v135 != v26)
          {
            OUTLINED_FUNCTION_131_0();
            OUTLINED_FUNCTION_52_2();
            swift_arrayInitWithTakeBackToFront();
            v62 = v64;
          }
        }

        v137 = v26 + v64;
        v26 += v64;
LABEL_41:
        v54 = v80 + v62;
        a10 = v134;
        v59 = v134 + v62;
        v61 = v131;
      }
    }

    v86 = OUTLINED_FUNCTION_90_2();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v86, v87, v26);
    v88 = v26 + v57 * v58;
    v89 = -v58;
    v90 = v88;
    v91 = v126;
    v92 = v131;
    v135 = v89;
LABEL_46:
    v134 = v55 + v89;
    v93 = v92;
    v115 = v90;
    v131 = v55;
    while (1)
    {
      if (v88 <= v26)
      {
        a10 = v55;
        v136 = v90;
        goto LABEL_75;
      }

      if (v54 >= v55)
      {
        break;
      }

      v130 = v90;
      v94 = v54;
      v95 = v88 + v135;
      v96 = *v133;
      (*v133)(v127, v88 + v135, v91);
      v96(v128, v134, v91);
      v97 = SQLExpression.sql.getter();
      v99 = v98;
      if (v97 == SQLExpression.sql.getter() && v99 == v100)
      {
        v104 = 0;
      }

      else
      {
        v102 = OUTLINED_FUNCTION_105_2();
        v104 = OUTLINED_FUNCTION_85(v102, v99, v103);
      }

      v92 = v93 + v135;
      v105 = *v132;
      v91 = v126;
      (*v132)(v128, v126);
      (v105)(v127, v91);
      v54 = v94;
      v55 = v131;
      if (v104)
      {
        if (v93 < v131 || v92 >= v131)
        {
          v55 = v134;
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeFrontToBack();
          v90 = v130;
          v26 = v125;
          v89 = v135;
        }

        else
        {
          v90 = v130;
          v51 = v93 == v131;
          v108 = v134;
          v89 = v135;
          v55 = v134;
          v26 = v125;
          if (!v51)
          {
            OUTLINED_FUNCTION_52_2();
            v110 = v109;
            swift_arrayInitWithTakeBackToFront();
            v55 = v108;
            v90 = v110;
          }
        }

        goto LABEL_46;
      }

      if (v93 < v88 || v92 >= v88)
      {
        OUTLINED_FUNCTION_52_2();
        swift_arrayInitWithTakeFrontToBack();
        v93 = v92;
        v88 = v95;
        v90 = v95;
        v26 = v125;
      }

      else
      {
        v90 = v95;
        v51 = v88 == v93;
        v93 = v92;
        v88 = v95;
        v26 = v125;
        if (!v51)
        {
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeBackToFront();
          v93 = v92;
          v88 = v95;
          v90 = v95;
        }
      }
    }

    a10 = v55;
    v136 = v115;
LABEL_75:
    v21 = v114;
    v40 = v129;
LABEL_76:
    specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v137, &v136);
    v111 = v122;
    v27 = v123;
    Kind = v124;
    if (v122 < v123)
    {
      goto LABEL_83;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      Kind = specialized _ArrayBuffer._consumeAndCreateNew()(Kind);
    }

    if (v120 >= *(Kind + 2))
    {
      goto LABEL_84;
    }

    v112 = &Kind[16 * v121];
    *v112 = v27;
    v112[1] = v111;
    v27 = v117;
    *v117 = Kind;
    specialized Array.remove(at:)(v119);
    Kind = v27->Kind;
  }

  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v114 = v20;
  v115 = v23;
  v127 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35(0);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v129 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v123 = &v114 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v46 = &v114 - v45;
  v48 = MEMORY[0x1EEE9AC00](v44, v47);
  v51 = &v114 - v50;
  v53 = *(v52 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (v32 - v34 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_71;
  }

  v55 = v30 - v32;
  if (v30 - v32 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_72;
  }

  v128 = v48;
  v57 = (v32 - v34) / v53;
  a10 = v34;
  v131 = v28;
  v126 = (v49 + 16);
  v124 = v30;
  v125 = (v49 + 8);
  v58 = v55 / v53;
  if (v57 < v55 / v53)
  {
    v122 = v46;
    v59 = OUTLINED_FUNCTION_77();
    v26(v59);
    v123 = (v28 + v57 * v53);
    v130 = v123;
    v60 = v124;
    v61 = v128;
    v120 = v51;
    v121 = v53;
    while (1)
    {
      if (v28 >= v123 || v32 >= v60)
      {
        goto LABEL_69;
      }

      v129 = v34;
      v63 = *v126;
      v64 = v32;
      (*v126)(v51, v32, v61);
      v65 = OUTLINED_FUNCTION_76();
      v66 = v63(v65);
      v67 = v127;
      v68 = v51;
      v69 = v61;
      v70 = (v127)(v66);
      v72 = v71;
      v73 = v67();
      v75 = v74;
      if (v70 == v73 && v72 == v74)
      {

        v86 = OUTLINED_FUNCTION_91();
        v75(v86);
        (v75)(v68, v69);
      }

      else
      {
        v77 = OUTLINED_FUNCTION_73();
        v80 = OUTLINED_FUNCTION_85(v77, v78, v79);

        v81 = OUTLINED_FUNCTION_91();
        v75(v81);
        (v75)(v68, v69);
        if (v80)
        {
          v82 = v64;
          v83 = v121;
          v32 = &v121[v64];
          v84 = v129;
          v85 = v129 < v64 || v129 >= v32;
          v60 = v124;
          if (v85)
          {
            v61 = v128;
            swift_arrayInitWithTakeFrontToBack();
            v51 = v120;
          }

          else
          {
            v61 = v128;
            v51 = v120;
            if (v129 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_37;
        }
      }

      v83 = v121;
      v87 = &v121[v28];
      v84 = v129;
      v88 = v129 < v28 || v129 >= v87;
      v32 = v64;
      v60 = v124;
      if (v88)
      {
        OUTLINED_FUNCTION_76();
        v61 = v128;
        swift_arrayInitWithTakeFrontToBack();
        v51 = v120;
      }

      else
      {
        v61 = v128;
        v51 = v120;
        if (v129 != v28)
        {
          OUTLINED_FUNCTION_76();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v131 = v87;
      v28 += v83;
LABEL_37:
      v34 = &v83[v84];
      a10 = v34;
    }
  }

  v89 = OUTLINED_FUNCTION_57();
  v26(v89);
  v90 = v28 + v58 * v53;
  v91 = -v53;
  v92 = v90;
  v93 = v124;
  v94 = v128;
  v118 = -v53;
  v119 = v28;
LABEL_41:
  v120 = v32;
  v121 = &v32[v91];
  v95 = v93;
  v96 = v92;
  v117 = v92;
  while (1)
  {
    if (v90 <= v28)
    {
      a10 = v32;
      v130 = v96;
      goto LABEL_69;
    }

    if (v32 <= v34)
    {
      break;
    }

    v122 = v95;
    v116 = v96;
    v124 = v90;
    v97 = v90 + v91;
    v98 = *v126;
    (*v126)(v123, v90 + v91, v94);
    v99 = (v98)(v129, v121, v94);
    v100 = v127;
    v101 = (v127)(v99);
    v103 = v102;
    v104 = v100();
    if (v101 == v104 && v103 == v105)
    {
      v107 = 0;
    }

    else
    {
      v107 = OUTLINED_FUNCTION_85(v101, v103, v104);
    }

    v91 = v118;
    v108 = v122;
    v93 = &v122[v118];
    v109 = *v125;
    v94 = v128;
    (*v125)(v129, v128);
    v109(v123, v94);
    v28 = v119;
    if (v107)
    {
      if (v108 < v120 || v93 >= v120)
      {
        v32 = v121;
        OUTLINED_FUNCTION_82();
        swift_arrayInitWithTakeFrontToBack();
        v92 = v116;
        v90 = v124;
      }

      else
      {
        v92 = v116;
        v112 = v121;
        v32 = v121;
        v90 = v124;
        if (v108 != v120)
        {
          OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_82();
          v92 = v113;
          swift_arrayInitWithTakeBackToFront();
          v90 = v124;
          v32 = v112;
        }
      }

      goto LABEL_41;
    }

    v110 = v108 < v124 || v93 >= v124;
    v32 = v120;
    if (v110)
    {
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_82();
      swift_arrayInitWithTakeFrontToBack();
      v95 = &v108[v91];
      v90 = v97;
      v96 = v97;
      v92 = v117;
    }

    else
    {
      v96 = v97;
      v95 = &v108[v91];
      v90 = v97;
      v92 = v117;
      if (v124 != v108)
      {
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_82();
        swift_arrayInitWithTakeBackToFront();
        v95 = &v108[v91];
        v90 = v97;
        v96 = v97;
      }
    }
  }

  a10 = v32;
  v130 = v92;
LABEL_69:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v131, &v130, v115);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for SQLExpression);
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_97();
  v10 = !v10 || v3 >= v9;
  if (v10)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeBackToFront();
  }
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_97();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for StorableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorableValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorableValue.IntegerValueCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for StorableValue.IntegerValueCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ChangeOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChangeOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChangeOperation and conformance ChangeOperation()
{
  result = lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation;
  if (!lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t *OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0Tm(v2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SQLError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLError(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 64) = a2;
  return result;
}

void SQLError.description.getter()
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  OUTLINED_FUNCTION_12();
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v106 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3, v5);
  v105 = &v96 - v6;
  outlined init with copy of SQLError(v0, &v116);
  switch(v120)
  {
    case 1:
      v36 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(32);

      OUTLINED_FUNCTION_0_16();
      *&v115[0] = v38 - 7;
      *(&v115[0] + 1) = v37;
      v39 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v39);

      MEMORY[0x1865F6280](0x70797420666F2022, 0xEB00000000222065);
      v41 = v36 >> 64;
      v40 = v36;
      goto LABEL_15;
    case 2:
      v8 = *(&v116 + 1);
      v7 = v116;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_0_16();
      v11 = v25 - 1;
      goto LABEL_9;
    case 3:
      v115[0] = v116;
      v115[1] = v117;
      v112[1] = v119;
      v112[0] = v118;
      v113 = 0;
      v114 = 0xE000000000000000;
      if (*(&v119 + 1))
      {
        _StringGuts.grow(_:)(53);
        MEMORY[0x1865F6280](0xD000000000000017, 0x8000000184DDB950);
        v26 = OUTLINED_FUNCTION_2_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
        v28 = Optional.debugDescription.getter();
        MEMORY[0x1865F6280](v28);

        MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDB970);
      }

      else
      {
        _StringGuts.grow(_:)(26);

        OUTLINED_FUNCTION_0_16();
        v113 = v87;
        v114 = v86;
        v88 = OUTLINED_FUNCTION_2_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
      }

      v90 = Optional.debugDescription.getter();
      MEMORY[0x1865F6280](v90);

      MEMORY[0x1865F6280](34, 0xE100000000000000);
      outlined destroy of UUID?(v115, &_sypSgMd, &_sypSgMR);
      outlined destroy of UUID?(v112, &_sypSgMd, &_sypSgMR);
      return;
    case 4:
      v12 = v116;
      v14 = *(&v117 + 1);
      v13 = v117;
      v15 = v118;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(85);
      v112[0] = v115[0];
      MEMORY[0x1865F6280](0xD000000000000032, 0x8000000184DDB8F0);
      MEMORY[0x1865F6280](v12, *(&v12 + 1));

      MEMORY[0x1865F6280](0xD000000000000013, 0x8000000184DDB930);
      v16 = *(v13 + 16);
      if (v16)
      {
        v110 = v14;
        v111 = v15;
        v17 = 0;
        v18 = v13 + 32;
        v19 = 0xE000000000000000;
        do
        {
          outlined init with copy of Any?(v18, v115);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v20 = Optional.debugDescription.getter();
          v22 = v21;
          v113 = v17;
          v114 = v19;

          MEMORY[0x1865F6280](v20, v22);

          MEMORY[0x1865F6280](8236, 0xE200000000000000);

          v17 = v113;
          v19 = v114;
          outlined destroy of UUID?(v115, &_sypSgMd, &_sypSgMR);
          v18 += 32;
          --v16;
        }

        while (v16);

        v15 = v111;
        v14 = v110;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      MEMORY[0x1865F6280](v17, v19);

      MEMORY[0x1865F6280](0x726F727265202C22, 0xEA0000000000203ALL);
      MEMORY[0x1865F6280](v14, v15);

      return;
    case 5:
      v42 = v116;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(50);

      OUTLINED_FUNCTION_0_16();
      *&v115[0] = v44 + 24;
      *(&v115[0] + 1) = v43;
      v112[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v40 = String.init<A>(describing:)();
LABEL_15:
      MEMORY[0x1865F6280](v40, v41);
      goto LABEL_16;
    case 6:
      v45 = v116;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_0_16();
      *&v112[0] = v46;
      *(&v112[0] + 1) = v47;
      Hasher.init(_seed:)();
      MEMORY[0x1865F6890](v45);
      *&v115[0] = Hasher._finalize()();
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v48);

      MEMORY[0x1865F6280](0x70786520746F6E20, 0xEE002E6465746365);
      return;
    case 7:
      v29 = v116;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(49);

      OUTLINED_FUNCTION_0_16();
      *&v115[0] = v31 | 8;
      *(&v115[0] + 1) = v30;
      *&v112[0] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v32 = OUTLINED_FUNCTION_5_2();
      v34 = v33;

      MEMORY[0x1865F6280](v32, v34);

      MEMORY[0x1865F6280](0x6F6C796170202C22, 0xED000022203A6461);
      *&v112[0] = *(&v29 + 1);
      OUTLINED_FUNCTION_5_2();

      v35 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v35);
      goto LABEL_16;
    case 8:
      v53 = *(&v116 + 1);
      v54 = v116;
      v55 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(33);

      strcpy(v115, "Metadata: [");
      BYTE13(v115[0]) = 0;
      HIWORD(v115[0]) = -5120;
      v56 = *(v54 + 16);
      if (!v56)
      {

        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }

      v97 = v53;
      v98 = v55;
      v113 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
      v57 = v113;
      v60 = specialized Dictionary.startIndex.getter(v54);
      v61 = 0;
      v62 = v54 + 64;
      v100 = v58;
      v99 = v54 + 72;
      v101 = v56;
      v102 = v54 + 64;
      v103 = v54;
      while ((v60 & 0x8000000000000000) == 0 && v60 < 1 << *(v54 + 32))
      {
        v63 = v60 >> 6;
        if ((*(v62 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
        {
          goto LABEL_48;
        }

        if (*(v54 + 36) != v58)
        {
          goto LABEL_49;
        }

        v110 = 1 << v60;
        v109 = v58;
        v104 = v59;
        v108 = v61;
        v64 = v107;
        v65 = *(v107 + 48);
        v66 = *(v54 + 48);
        v67 = *(v54 + 56);
        v68 = (v66 + 16 * v60);
        v69 = *v68;
        v70 = v68[1];
        type metadata accessor for StorableValue(0);
        OUTLINED_FUNCTION_12();
        v72 = v105;
        outlined init with copy of StorableValue(v67 + *(v71 + 72) * v60, &v105[v65]);
        v111 = v57;
        v73 = v106;
        *v106 = v69;
        v73[1] = v70;
        outlined init with take of StorableValue(&v72[v65], v73 + *(v64 + 48));
        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;

        MEMORY[0x1865F6280](v69, v70);
        MEMORY[0x1865F6280](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](32, 0xE100000000000000);
        v74 = v112[0];
        v75 = v73;
        v57 = v111;
        outlined destroy of UUID?(v75, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v113 = v57;
        v77 = *(v57 + 16);
        v76 = *(v57 + 24);
        if (v77 >= v76 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v76 > 1, v77 + 1, 1);
          v57 = v113;
        }

        *(v57 + 16) = v77 + 1;
        *(v57 + 16 * v77 + 32) = v74;
        v54 = v103;
        v78 = 1 << *(v103 + 32);
        if (v60 >= v78)
        {
          goto LABEL_50;
        }

        v62 = v102;
        v79 = *(v102 + 8 * v63);
        if ((v79 & v110) == 0)
        {
          goto LABEL_51;
        }

        if (*(v103 + 36) != v109)
        {
          goto LABEL_52;
        }

        v80 = v79 & (-2 << (v60 & 0x3F));
        if (v80)
        {
          v78 = __clz(__rbit64(v80)) | v60 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v81 = v63 << 6;
          v82 = v63 + 1;
          v83 = (v99 + 8 * v63);
          while (v82 < (v78 + 63) >> 6)
          {
            v85 = *v83++;
            v84 = v85;
            v81 += 64;
            ++v82;
            if (v85)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v60, v109, v104 & 1);
              v78 = __clz(__rbit64(v84)) + v81;
              goto LABEL_38;
            }
          }

          outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v60, v109, v104 & 1);
        }

LABEL_38:
        v59 = 0;
        v61 = v108 + 1;
        v60 = v78;
        v58 = v100;
        if (v108 + 1 == v101)
        {

          v55 = v98;
          v53 = v97;
LABEL_46:
          *&v112[0] = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v91 = BidirectionalCollection<>.joined(separator:)();
          v93 = v92;

          MEMORY[0x1865F6280](v91, v93);

          OUTLINED_FUNCTION_3_6();
          MEMORY[0x1865F6280](v94 - 6, v95 | 0x8000000000000000);
          MEMORY[0x1865F6280](v53, v55);

          return;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    case 9:
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(54);
      OUTLINED_FUNCTION_3_6();
      MEMORY[0x1865F6280](v23 + 28, v24 | 0x8000000000000000);
      QueryPlannerMetadata.description.getter();
      MEMORY[0x1865F6280]();

      MEMORY[0x1865F6280](34, 0xE100000000000000);

      return;
    case 10:
      v49 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(35);
      OUTLINED_FUNCTION_3_6();
      MEMORY[0x1865F6280](v50 - 1, v51 | 0x8000000000000000);
      v52 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v52);

      MEMORY[0x1865F6280](0x3A726F727245202ELL, 0xE900000000000020);
      *&v112[0] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();

      return;
    default:
      v8 = *(&v116 + 1);
      v7 = v116;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_0_16();
      v11 = v10 - 7;
LABEL_9:
      *&v115[0] = v11;
      *(&v115[0] + 1) = v9;
      MEMORY[0x1865F6280](v7, v8);
LABEL_16:

      MEMORY[0x1865F6280](34, 0xE100000000000000);
      return;
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall Dataflow.init(legacyName:legacyConfigHash:legacyFeatureFlag:legacyType:legacyConfig:legacyCreateTable:legacySQL:legacyDependencies:legacyDependents:)(BiomeStreams::Dataflow *__return_ptr retstr, Swift::String legacyName, Swift::String legacyConfigHash, Swift::String_optional legacyFeatureFlag, Swift::String legacyType, Swift::String legacyConfig, Swift::String legacyCreateTable, Swift::String legacySQL, Swift::OpaquePointer legacyDependencies, Swift::OpaquePointer legacyDependents)
{
  retstr->legacyName = legacyName;
  retstr->legacyConfigHash = legacyConfigHash;
  retstr->legacyFeatureFlag = legacyFeatureFlag;
  retstr->legacyType = legacyType;
  *&retstr->legacyDependencies._rawValue = *&legacyDependencies._rawValue;
  retstr->legacyCreateTable = legacyCreateTable;
  retstr->legacySQL = legacySQL;
  retstr->legacyConfig = legacyConfig;
}

uint64_t getEnumTagSinglePayload for Dataflow(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Dataflow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall BMSQLDatabase.execute(query:)(BMSQLResultSet *__return_ptr retstr, Swift::String query)
{
  v3 = MEMORY[0x1865F6160](retstr, query._countAndFlagsBits, query._object);
  v4 = [v2 _executeQuery_];
}

Swift::Int DataProtectionClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

Swift::Int Domain.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DataProtectionClass and conformance DataProtectionClass()
{
  result = lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass;
  if (!lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Domain and conformance Domain()
{
  result = lazy protocol witness table cache variable for type Domain and conformance Domain;
  if (!lazy protocol witness table cache variable for type Domain and conformance Domain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Domain and conformance Domain);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProtectionClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataProtectionClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Domain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t StoreStreamProtocol.identifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(a1);
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t StoreStreamProtocol.source()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(a1);
  v3 = [v2 source];

  v4 = objc_opt_self();

  return MEMORY[0x1EEE6BE20](v3, v4, 0, 0, 0);
}

void StoreStreamProtocol.publisher(with:)(double a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(a2);
  v5 = [v4 publisherFromStartTime_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEventCMd, &_sSo12BMStoreEventCMR);

  JUMPOUT(0x1865F5CD0);
}

uint64_t StoreStreamProtocol.publisher(startDate:endDate:maxEvents:lastN:reversed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38[1] = a3;
  v38[2] = a5;
  v38[3] = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v38 - v23;
  v25 = (*(a10 + 24))(a8, a10);
  outlined init with copy of Date?(a1, v24);
  v26 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v24, 1, v26) == 1)
  {
    outlined destroy of Date?(v24);
    v27 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    OUTLINED_FUNCTION_1_14();
    v29 = (*(v28 + 8))(v24, v26);
    v27 = MEMORY[0x1865F63C0](v29, v10);
  }

  outlined init with copy of Date?(a2, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v26) == 1)
  {
    outlined destroy of Date?(v21);
    v30 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v31.super.super.isa = 0;
    if ((a6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v32.super.super.isa = 0;
    goto LABEL_11;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  OUTLINED_FUNCTION_1_14();
  v34 = (*(v33 + 8))(v21, v26);
  v30 = MEMORY[0x1865F63C0](v34, v10);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v31.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  if (a6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v32.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
LABEL_11:
  v35 = [v25 publisherWithStartTime:v27 endTime:v30 maxEvents:v31.super.super.isa lastN:v32.super.super.isa reversed:a7 & 1];

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEventCMd, &_sSo12BMStoreEventCMR);
  return MEMORY[0x1865F5CD0](v35, v36);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for TimeBasedBookmarkablePublisherStream.publisher(with:) in conformance Streams.StoreStream<A>(uint64_t a1, double a2)
{
  v4 = OUTLINED_FUNCTION_0_17();

  StoreStreamProtocol.publisher(with:)(a2, a1, v4);
}

uint64_t protocol witness for SourceStream.source() in conformance Streams.StoreStream<A>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17();

  return StoreStreamProtocol.source()(a1, v2);
}

uint64_t protocol witness for IdentifiableStream.identifier.getter in conformance Streams.StoreStream<A>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17();

  return StoreStreamProtocol.identifier.getter(a1, v2);
}

uint64_t type metadata completion function for OrderedDictionary.KeyWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderedDictionary(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t LibraryArtifact.SQLDataType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (result >= 7)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for BMSQLDataType();
    *(v4 + 24) = v5;
    *v4 = v2;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 3;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

Swift::Int LibraryArtifact.ResourceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

uint64_t LibraryArtifact.Table.column(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  v9 = (v7 + 32);
  if (v8)
  {
    while (1)
    {
      memcpy(__dst, v9, sizeof(__dst));
      if (__dst[0] == v5 && __dst[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v9 += 120;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    memcpy(a3, __dst, 0x78uLL);
    return outlined init with copy of LibraryArtifact.Column(__dst, &v11);
  }

  else
  {
LABEL_8:
    *(a3 + 14) = 0;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t static LibraryArtifact.Table.== infix(_:_:)(uint64_t *a1, void *a2)
{
  return static LibraryArtifact.Table.== infix(_:_:)(a1, a2);
}

{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v4)
    {
      v7 = v2 == v5 && v3 == v4;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_13:
  v8 = OUTLINED_FUNCTION_81();

  return v9(v8);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 120)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      outlined init with copy of LibraryArtifact.Column(__dst, v7);
      outlined init with copy of LibraryArtifact.Column(v11, v7);
      v5 = static LibraryArtifact.Column.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      outlined destroy of LibraryArtifact.Column(v12);
      memcpy(v13, v9, sizeof(v13));
      outlined destroy of LibraryArtifact.Column(v13);
      if (!v5)
      {
        break;
      }

      v3 += 120;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO16EnumerationValueV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void __swiftcall LibraryArtifact.Enumeration.init(name:description:allowedValues:)(BiomeStreams::LibraryArtifact::Enumeration *__return_ptr retstr, Swift::String name, Swift::String_optional description, Swift::OpaquePointer allowedValues)
{
  retstr->name = name;
  retstr->description = description;
  retstr->allowedValues = allowedValues;
}

BiomeStreams::LibraryArtifact::EnumerationValue __swiftcall LibraryArtifact.EnumerationValue.init(name:description:)(Swift::String name, Swift::String_optional description)
{
  v2->value = name;
  v2[1] = description;
  result.description = description;
  result.name = name;
  return result;
}

uint64_t static LibraryArtifact.EnumerationValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t LibraryArtifact.Column.objectType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of LibraryArtifact.Table?(v2, v3);
}

uint64_t LibraryArtifact.Column.enumerationType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of LibraryArtifact.Table?(v2, v3);
}

uint64_t outlined copy of LibraryArtifact.Table?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *(a12 + 32);
  v17 = *(a13 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v13;
  *(a9 + 33) = v14;
  *(a9 + 34) = v15;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 37) = a11;
  v18 = *(a12 + 16);
  *(a9 + 40) = *a12;
  *(a9 + 56) = v18;
  *(a9 + 72) = v16;
  result = *a13;
  v20 = *(a13 + 16);
  *(a9 + 80) = *a13;
  *(a9 + 96) = v20;
  *(a9 + 112) = v17;
  return result;
}

__n128 LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *(a13 + 32);
  v18 = *(a14 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v14;
  *(a9 + 33) = v15;
  *(a9 + 34) = v16;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 37) = a11;
  *(a9 + 38) = a12;
  v19 = *(a13 + 16);
  *(a9 + 40) = *a13;
  *(a9 + 56) = v19;
  *(a9 + 72) = v17;
  result = *a14;
  v21 = *(a14 + 16);
  *(a9 + 80) = *a14;
  *(a9 + 96) = v21;
  *(a9 + 112) = v18;
  return result;
}

BOOL static LibraryArtifact.Column.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v155 = *(a1 + 35);
  v153 = *(a1 + 36);
  v151 = *(a1 + 37);
  v149 = *(a1 + 38);
  v142 = a1[6];
  v143 = a1[5];
  v144 = a1[7];
  v146 = a1[8];
  v145 = a1[9];
  v131 = a1[10];
  v137 = a1[11];
  v132 = a1[12];
  v133 = a1[14];
  v134 = a1[13];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v154 = *(a2 + 35);
  v152 = *(a2 + 36);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v150 = *(a2 + 37);
  v148 = *(a2 + 38);
  v138 = *(a2 + 40);
  v147 = *(a2 + 48);
  v139 = *(a2 + 56);
  v140 = *(a2 + 64);
  v141 = *(a2 + 72);
  v135 = *(a2 + 80);
  v136 = *(a2 + 88);
  v130 = *(a2 + 96);
  v128 = *(a2 + 112);
  v129 = *(a2 + 104);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 != v8 || v3 != v7)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if (v4 != v9)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v4 != v9)
  {
    return 0;
  }

LABEL_18:
  if (v5 == 8)
  {
    if (v10 != 8)
    {
      return 0;
    }
  }

  else if (v10 == 8 || v5 != v10)
  {
    return 0;
  }

  if (v6 == 21)
  {
    if (v11 != 21)
    {
      return 0;
    }

    result = 0;
    if (v155 != v154)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 21)
    {
      return 0;
    }

    result = 0;
    if (v6 != v11 || ((v155 ^ v154) & 1) != 0)
    {
      return result;
    }
  }

  if (((v153 ^ v152) & 1) == 0 && ((v151 ^ v150) & 1) == 0 && ((v149 ^ v148) & 1) == 0)
  {
    if (v142)
    {
      v17 = v143;
      v19 = v140;
      v18 = v141;
      if (v147)
      {
        v20 = v143 == v138 && v142 == v147;
        if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v146)
        {
          if (!v140)
          {
            v42 = v143;
            v17 = v145;
            v19 = v144;
            goto LABEL_77;
          }

          v21 = v144 == v139 && v146 == v140;
          if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_57:
            OUTLINED_FUNCTION_6_1();
LABEL_77:
            v76 = v42;
            OUTLINED_FUNCTION_12_0(v42);
            OUTLINED_FUNCTION_4_4();
            outlined copy of LibraryArtifact.Table?(v77, v78);
            OUTLINED_FUNCTION_12_0(v76);
            OUTLINED_FUNCTION_4_4();
            outlined consume of LibraryArtifact.Table?(v79, v80, v81, v82, v83);

            v35 = v76;
            v36 = v142;
            v37 = v19;
            v38 = v146;
            v39 = v17;
            goto LABEL_85;
          }
        }

        else if (v140)
        {
          goto LABEL_57;
        }

        v43 = OUTLINED_FUNCTION_0_18();
        outlined copy of LibraryArtifact.Table?(v43, v44);
        OUTLINED_FUNCTION_2_6();
        outlined copy of LibraryArtifact.Table?(v45, v46);
        v47 = OUTLINED_FUNCTION_0_18();
        outlined copy of LibraryArtifact.Table?(v47, v48);
        v156 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(v145, v141);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_2_6();
        outlined consume of LibraryArtifact.Table?(v49, v50, v51, v52, v53);

        v54 = OUTLINED_FUNCTION_0_18();
        outlined consume of LibraryArtifact.Table?(v54, v55, v56, v57, v58);
        if ((v156 & 1) == 0)
        {
          return 0;
        }

LABEL_59:
        v59 = v137;
        if (v137)
        {
          v60 = v132;
          v61 = v131;
          v62 = v136;
          if (v136)
          {
            if (v131 != v135 || v137 != v136)
            {
              v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v59 = v137;
              v61 = v131;
              v60 = v132;
              if ((v64 & 1) == 0)
              {
                goto LABEL_84;
              }
            }

            if (v134)
            {
              if (!v129)
              {
                goto LABEL_84;
              }

              if (v60 != v130 || v134 != v129)
              {
                v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v59 = v137;
                v61 = v131;
                if ((v66 & 1) == 0)
                {
                  goto LABEL_84;
                }
              }
            }

            else if (v129)
            {
LABEL_84:
              outlined copy of LibraryArtifact.Table?(v61, v59);
              outlined copy of LibraryArtifact.Table?(v135, v136);
              v120 = OUTLINED_FUNCTION_1_15();
              outlined copy of LibraryArtifact.Table?(v120, v121);
              OUTLINED_FUNCTION_2_6();
              outlined consume of LibraryArtifact.Table?(v122, v123, v124, v125, v126);

              v35 = OUTLINED_FUNCTION_1_15();
              v38 = v134;
              v39 = v133;
              goto LABEL_85;
            }

            v157 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO16EnumerationValueV_Tt1g5(v133, v128);
            v104 = OUTLINED_FUNCTION_1_15();
            outlined copy of LibraryArtifact.Table?(v104, v105);
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_2_6();
            outlined copy of LibraryArtifact.Table?(v106, v107);
            v108 = OUTLINED_FUNCTION_0_18();
            outlined copy of LibraryArtifact.Table?(v108, v109);
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_2_6();
            outlined consume of LibraryArtifact.Table?(v110, v111, v112, v113, v114);

            v115 = OUTLINED_FUNCTION_0_18();
            outlined consume of LibraryArtifact.Table?(v115, v116, v117, v118, v119);
            return (v157 & 1) != 0;
          }

          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v84, v85);
          v75 = v135;
          OUTLINED_FUNCTION_11_0(v135, 0, v86, v87, v88, v89, v90, v91, v127, v128, v129, v130);
          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v92, v93);
        }

        else
        {
          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v67, v68);
          v62 = v136;
          if (!v136)
          {
            outlined copy of LibraryArtifact.Table?(v135, 0);
            OUTLINED_FUNCTION_4_4();
            outlined consume of LibraryArtifact.Table?(v99, v100, v101, v102, v103);
            return 1;
          }

          v75 = v135;
          OUTLINED_FUNCTION_11_0(v135, v136, v69, v70, v71, v72, v73, v74, v127, v128, v129, v130);
        }

        OUTLINED_FUNCTION_4_4();
        outlined consume of LibraryArtifact.Table?(v94, v95, v96, v97, v98);
        v35 = v75;
        v36 = v62;
        v37 = v19;
        v38 = v18;
        v39 = v137;
        goto LABEL_85;
      }

      v24 = OUTLINED_FUNCTION_0_18();
      outlined copy of LibraryArtifact.Table?(v24, v25);
      OUTLINED_FUNCTION_2_6();
      outlined copy of LibraryArtifact.Table?(v26, v27);
      v28 = OUTLINED_FUNCTION_0_18();
      outlined copy of LibraryArtifact.Table?(v28, v29);
    }

    else
    {
      outlined copy of LibraryArtifact.Table?(v143, 0);
      v19 = v140;
      v18 = v141;
      if (!v147)
      {
        OUTLINED_FUNCTION_2_6();
        outlined copy of LibraryArtifact.Table?(v40, v41);
        outlined consume of LibraryArtifact.Table?(v143, 0, v144, v146, v145);
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_2_6();
      outlined copy of LibraryArtifact.Table?(v22, v23);
    }

    v30 = OUTLINED_FUNCTION_0_18();
    outlined consume of LibraryArtifact.Table?(v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_2_6();
LABEL_85:
    outlined consume of LibraryArtifact.Table?(v35, v36, v37, v38, v39);
    return 0;
  }

  return result;
}

void outlined consume of LibraryArtifact.Table?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t LibraryArtifact.Table.createTableSQL.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v31 = 0xD000000000000020;
  v32 = 0x8000000184DDB9D0;
  MEMORY[0x1865F6280](v1, v2);
  MEMORY[0x1865F6280](0x202020200A282022, 0xE900000000000020);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = (v3 + 32);
    v5 = v30;
    do
    {
      memcpy(__dst, v6, sizeof(__dst));
      v7 = LOBYTE(__dst[4]);
      v8 = __dst[0];
      v9 = __dst[1];
      v27 = 34;
      v28 = 0xE100000000000000;

      outlined init with copy of LibraryArtifact.Column(__dst, &v26);
      MEMORY[0x1865F6280](v8, v9);

      MEMORY[0x1865F6280](8226, 0xE200000000000000);
      v10 = BYTE6(__dst[4]);
      v11 = BMSQLDataTypeToString(v7);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      MEMORY[0x1865F6280](v12, v14);

      if (v10)
      {
        v15 = 0x4E454444494820;
      }

      else
      {
        v15 = 0;
      }

      if (v10)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      MEMORY[0x1865F6280](v15, v16);

      outlined destroy of LibraryArtifact.Column(__dst);
      v17 = v27;
      v18 = v28;
      v30 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v20 + 1;
      v21 = v5 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v6 += 120;
      --v4;
    }

    while (v4);
  }

  __dst[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x1865F6280](v22, v24);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  return v31;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.ResourceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.Predicate(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.RepresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.RepresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.Table(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.Table(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.EnumerationValue(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.EnumerationValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12BiomeStreams15LibraryArtifactO5TableVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.Column(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.Column(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySDySS12BiomeStreams13StorableValueOGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS12BiomeStreams13StorableValueOGMd, &_sSDySS12BiomeStreams13StorableValueOGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGGMd, &_ss23_ContiguousArrayStorageCySaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMd, &_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay12BiomeStreams13StorableValueOGGMd, &_ss23_ContiguousArrayStorageCySay12BiomeStreams13StorableValueOGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO04DataG0_pXpGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO04DataG0_pXpGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t SQLDatabaseError.description.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    OUTLINED_FUNCTION_3_8();
    _StringGuts.grow(_:)(34);

    v3 = OUTLINED_FUNCTION_0_19();
    MEMORY[0x1865F6280](v3);
    MEMORY[0x1865F6280](8238, 0xE200000000000000);
    v4 = v1;
    v5 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    _StringGuts.grow(_:)(30);

    v4 = OUTLINED_FUNCTION_0_19();
  }

  MEMORY[0x1865F6280](v4, v5);
  return v7;
}

uint64_t SQLDatabaseHandle.init(identifier:useCase:readOnly:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for URL.DirectoryHint();
  OUTLINED_FUNCTION_2_1();
  v83 = v9;
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v79 = &v72 - v14;
  v86 = type metadata accessor for URL();
  OUTLINED_FUNCTION_2_1();
  v82 = v15;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v81 = &v72 - v22;
  type metadata accessor for BMResourceSpecifier();

  v23 = a1;
  v24 = BMResourceSpecifier.__allocating_init(type:name:)(3, a1, a2);
  v25 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];
  v26 = v25;
  v85 = a4;
  if (a4)
  {
    v27 = 1;
  }

  else
  {
    v27 = 3;
  }

  v92 = 0;
  v28 = [v25 requestAccessToResource:v24 mode:v27 error:&v92];
  v29 = v92;
  if (!v28)
  {
    v58 = v92;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_16:
    type metadata accessor for SQLDatabaseHandle(0);
    swift_deallocPartialClassInstance();
    return v87;
  }

  v30 = v28;
  v77 = v26;
  v78 = v24;
  v31 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_assertion;
  *(v87 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_assertion) = v28;
  v32 = v29;
  v33 = [v30 path];
  if (!v33)
  {

    v92 = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    MEMORY[0x1865F6280](0xD000000000000011, 0x8000000184DDBAB0);
    v90 = *(v87 + v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F6280](0x6E20612073616820, 0xEF68746170206C69);
    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v59 = swift_allocError();
    OUTLINED_FUNCTION_5_3(v59, v60);

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v34 = v33;
  v72 = v31;
  v76 = a3;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v35;

  v92 = 0x336574696C71732ELL;
  v93 = 0xE800000000000000;
  v90 = v23;
  v91 = a2;
  v90 = String.init<A>(_:)();
  v91 = v36;
  String.append<A>(contentsOf:)();
  v37 = v91;
  v73 = v90;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v86);
  v38 = *MEMORY[0x1E6968F70];
  v40 = v83;
  v39 = v84;
  v41 = *(v83 + 104);
  v42 = v80;
  v41(v80, v38, v84);
  URL.init(filePath:directoryHint:relativeTo:)();
  v92 = v73;
  v93 = v37;
  v41(v42, v38, v39);
  v43 = v87;
  v44 = lazy protocol witness table accessor for type String and conformance String();
  v45 = v81;
  v79 = v44;
  URL.appending<A>(component:directoryHint:)();
  (*(v40 + 8))(v42, v39);
  v46 = v82;
  v47 = *(v82 + 8);
  v48 = v86;
  v47(v20, v86);

  URL.standardizedFileURL.getter();
  v47(v45, v48);
  v49 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v50 = v20;
  v51 = v48;
  (*(v46 + 32))(v43 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL, v50, v48);
  ppDb[0] = 0;
  if (v85)
  {
    v52 = 1;
  }

  else
  {
    v52 = 6;
  }

  v53 = v43 + v49;
  v54 = v49;
  (*(v46 + 16))(v45, v53, v51);
  URL.path.getter();
  v47(v45, v51);
  v55 = String.utf8CString.getter();

  v56 = sqlite3_open_v2((v55 + 32), ppDb, v52, 0);

  v57 = ppDb[0];
  if (v56 || !ppDb[0])
  {
    v61 = BMSQLDatabaseError(v56, ppDb[0], 0);
    swift_getErrorValue();
    v62 = Error.localizedDescription.getter();
    v64 = v63;

    v92 = v62;
    v93 = v64;
    OUTLINED_FUNCTION_1();
    v90 = v65;
    v91 = v66;
    OUTLINED_FUNCTION_2_7();
    v88 = v67;
    v89 = v68;
    OUTLINED_FUNCTION_4_5();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v69 = swift_allocError();
    OUTLINED_FUNCTION_5_3(v69, v70);

    v47((v87 + v54), v86);
    goto LABEL_15;
  }

  *(v87 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db) = v57;
  return v87;
}

uint64_t SQLDatabaseHandle.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db;
  v3 = sqlite3_close_v2(*(v1 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db));
  if (v3)
  {
    v4 = BMSQLDatabaseError(v3, *(v1 + v2), 0);
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = v6;

    v20[0] = v5;
    v20[1] = v7;
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_4_5();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v10 = v9;

    if (one-time initialization token for SQL != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.SQL);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1848EE000, v12, v13, "SQLDatabaseHandle: Failed to close database connection with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1865F7B70](v15, -1, -1);
      MEMORY[0x1865F7B70](v14, -1, -1);
    }

    else
    {
    }
  }

  v17 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SQLDatabaseHandle.__deallocating_deinit()
{
  SQLDatabaseHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLResultSet.next()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.execute(statement:)(Swift::String statement)
{
  object = statement._object;
  countAndFlagsBits = statement._countAndFlagsBits;
  errmsg[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = *v1;
  errmsg[0] = 0;
  v7 = *(v6 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db);
  v8 = String.utf8CString.getter();
  LODWORD(v7) = sqlite3_exec(v7, (v8 + 32), 0, 0, errmsg);

  if (v7)
  {
    v9 = 0xEF3E726F72726520;
    v10 = 0x6E776F6E6B6E553CLL;
    if (errmsg[0])
    {
      static String.Encoding.utf8.getter();
      v11 = String.init(cString:encoding:)();
      if (v12)
      {
        v10 = v11;
        v9 = v12;
      }
    }

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v13 = countAndFlagsBits;
    *(v13 + 8) = object;
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
    *(v13 + 32) = 1;
    swift_willThrow();
  }
}

uint64_t SQLDatabase.databasePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLDatabaseError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabaseHandle(uint64_t a1)
{
  result = type metadata singleton initialization cache for SQLDatabaseHandle;
  if (!type metadata singleton initialization cache for SQLDatabaseHandle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SQLDatabaseHandle(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLResultSet(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SQLDatabase(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLDatabase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError()
{
  result = lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError;
  if (!lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDatabaseError and conformance SQLDatabaseError);
  }

  return result;
}

unint64_t type metadata accessor for BMResourceSpecifier()
{
  result = lazy cache variable for type metadata for BMResourceSpecifier;
  if (!lazy cache variable for type metadata for BMResourceSpecifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMResourceSpecifier);
  }

  return result;
}

uint64_t DatabaseWithAccess.deinit()
{
  v1 = v0;
  v2 = sqlite3_close_v2(*(v0 + 16));
  if (v2)
  {
    v3 = BMSQLDatabaseError(v2, *(v0 + 16), 0);
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;

    v17[0] = v4;
    v17[1] = v6;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v9 = v8;

    if (one-time initialization token for SQL != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.SQL);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1848EE000, v11, v12, "SQLExpressionEvaluator: Failed to close database connection with error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1865F7B70](v14, -1, -1);
      MEMORY[0x1865F7B70](v13, -1, -1);
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t DatabaseWithAccess.__deallocating_deinit()
{
  v0 = DatabaseWithAccess.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t IncrementalViewManager.__allocating_init()()
{
  v0 = swift_allocObject();
  IncrementalViewManager.init()();
  return v0;
}

uint64_t IncrementalViewManager.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
  OUTLINED_FUNCTION_2_1();
  v108 = v3;
  v109 = v2;
  MEMORY[0x1EEE9AC00](v2, v4);
  v107 = (&v82 - v5);
  v86 = type metadata accessor for DatabaseCatalog();
  OUTLINED_FUNCTION_2_1();
  v85 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_13();
  v95 = v10 - v9;
  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_2_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_13();
  v26 = v25 - v24;
  v27 = OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_cachedDatabaseWithAccesses;
  type metadata accessor for DatabaseWithAccess();
  *(v1 + v27) = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for compute != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_9_1();
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, static Logging.compute);
  (*(v13 + 16))(v18, v28, v11);
  OSSignposter.init(logger:)();
  (*(v21 + 32))(v1 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_signposter, v26, v19);
  v111[3]._rawValue = &unk_1EF2A1310;
  v111[4]._rawValue = lazy protocol witness table accessor for type IPCSFeatureFlag and conformance IPCSFeatureFlag();
  v29 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  *(v1 + OBJC_IVAR____TtC12BiomeStreams22IncrementalViewManager_useCache) = (v29 & 1) == 0;
  type metadata accessor for SQLExpressionEvaluator();
  v19 = swift_allocObject();
  v30 = SQLExpressionEvaluator.init(isReadOnly:)(1);
  v98 = 0;
  v21 = v30;
  v84 = BiomeLibraryNodeBridge();
  v83 = BiomeLibraryNodeBridge();
  v31 = [v83 allStreams];
  type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMStreamBase, off_1E6E52140);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v111[0]._rawValue = MEMORY[0x1E69E7CC0];
  v33 = specialized Array._getCount()(v32);
  v11 = 0;
  v93 = v32 & 0xC000000000000001;
  v94 = v33;
  v92 = v32 & 0xFFFFFFFFFFFFFF8;
  v87 = v32;
  v91 = v32 + 32;
  v105 = 2;
  v103 = 1;
  v104 = 0;
  v101 = 4;
  v102 = 3;
  v18 = &selRef_referrerBundleID;
  v100 = 6;
  v106 = 5;
  v99 = 7;
  v88 = xmmword_184D29A90;
  v13 = v95;
  v90 = v1;
  v89 = v21;
  while (v11 != v94)
  {
    if (v93)
    {
      v34 = MEMORY[0x1865F65C0](v11, v87);
    }

    else
    {
      if (v11 >= *(v92 + 16))
      {
        goto LABEL_43;
      }

      v34 = *(v91 + 8 * v11);
    }

    if (__OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v96 = v34;
    v97 = v11;
    v36 = [v34 schema];
    v37 = [v36 columns];

    type metadata accessor for BMStreamBase(0, &lazy cache variable for type metadata for BMSQLColumn, off_1E6E51FA0);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v56 = v18;
      }

      else
      {
        v56 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x1865F6650](v56);
      if (!v11)
      {
LABEL_32:

        v39 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }
    }

    else
    {
      v11 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    v110[0] = MEMORY[0x1E69E7CC0];
    v19 = v110;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_44;
    }

    v38 = 0;
    v39 = v110[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1865F65C0](v38, v18);
      }

      else
      {
        v40 = *(v18 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = *(v109 + 48);
      v43 = [v40 name];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = v107;
      *v107 = v44;
      v47[1] = v46;
      v48 = v47;
      v49 = [v41 dataType];

      type metadata accessor for SQLDataType();
      OUTLINED_FUNCTION_12();
      v51 = v106;
      switch(v49)
      {
        case 0uLL:
          v51 = v104;
          break;
        case 1uLL:
          v51 = v103;
          break;
        case 2uLL:
          v51 = v105;
          break;
        case 3uLL:
          v51 = v102;
          break;
        case 4uLL:
          v51 = v101;
          break;
        case 5uLL:
          break;
        case 6uLL:
          v51 = v100;
          break;
        default:
          v51 = v99;
          break;
      }

      (*(v50 + 104))(v48 + v42, v51);
      v110[0] = v39;
      v53 = *(v39 + 16);
      v52 = *(v39 + 24);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v39 = v110[0];
      }

      ++v38;
      *(v39 + 16) = v53 + 1;
      OUTLINED_FUNCTION_19_0();
      outlined init with take of UUID?(v48, v39 + v54 + *(v55 + 72) * v53, &_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR);
    }

    while (v11 != v38);

LABEL_33:
    v57 = v98;
    if (*(v39 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
      OUTLINED_FUNCTION_25_0();
      v58 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC8];
    }

    v110[0] = v58;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v39, 1, v110);
    v98 = v57;
    if (v57)
    {
      swift_unexpectedError();
      __break(1u);
      goto LABEL_47;
    }

    v59._rawValue = v110[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser6SchemaVGMR);
    OUTLINED_FUNCTION_84();
    type metadata accessor for Schema();
    v26 = swift_allocObject();
    *(v26 + 16) = v88;
    v18 = &selRef_referrerBundleID;
    v60 = v96;
    v61 = [v96 schema];
    v62 = [v61 tableName];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    v112 = Schema.init(tableName:columns:)(v66, v59);
    v67 = [v60 schema];
    v68 = [v67 tableName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = String.lowercased()();

    Schema.init(tableName:columns:)(v69, v59);

    v19 = v111;
    specialized Array.append<A>(contentsOf:)(v26, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for Schema);
    v13 = v95;
    v21 = v89;
    v11 = v97;
    v1 = v90;
  }

  DatabaseCatalog.init(schemas:)(v111[0]);
  swift_unknownObjectRelease();
  v57 = v98;
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_3_9();
    swift_once();
  }

  v70 = static UnifiedLibrary.Library.orderedDataflows.getter();
  MEMORY[0x1EEE9AC00](v70, v71);
  v72 = v84;
  *(&v82 - 4) = v13;
  *(&v82 - 3) = v72;
  v80 = v21;
  v73 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in IncrementalViewManager.init(), (&v82 - 6), v70);
  if (!v57)
  {
    v74 = v73;
    swift_unknownObjectRelease();

    *(v1 + 16) = v74;
    *(v1 + 24) = v21;
    v75 = OUTLINED_FUNCTION_21_0();
    v76(v75);
    return v1;
  }

LABEL_47:
  v98 = v57;

  swift_unknownObjectRelease();

  v78 = OUTLINED_FUNCTION_21_0();
  v79(v78);
  v111[0]._rawValue = 0;
  v111[1]._rawValue = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1865F6280](0xD00000000000002CLL, 0x8000000184DDBB10);
  v110[0] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v81 = 0;
  v80 = 87;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}