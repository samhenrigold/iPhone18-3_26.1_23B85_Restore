void sub_23228C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_23228C3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23228D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23228E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PPM2NamedEntitiesScoredReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v64 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v64 & 0x7F) << v43;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_90;
            }
          }

          v27 = (v45 != 0) & ~[a2 hasError];
LABEL_90:
          v56 = 30;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_85;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v63 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v63 & 0x7F) << v28;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_100;
            }
          }

          v27 = (v30 != 0) & ~[a2 hasError];
LABEL_100:
          v56 = 32;
        }

        goto LABEL_101;
      }

      if (v13 == 1)
      {
        v34 = PBReaderReadString();
        v35 = 16;
LABEL_57:
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_102;
      }

      if (v13 != 2)
      {
        goto LABEL_85;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v59 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v59 & 0x7F) << v14;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_96;
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

LABEL_96:
      *(a1 + 24) = v20;
LABEL_102:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v62 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v62 & 0x7F) << v37;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_88;
          }
        }

        v27 = (v39 != 0) & ~[a2 hasError];
LABEL_88:
        v56 = 31;
      }

      else
      {
        if (v13 != 6)
        {
          goto LABEL_85;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v61 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v61 & 0x7F) << v21;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_98;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
        v56 = 29;
      }

      goto LABEL_101;
    }

    if (v13 == 7)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v60 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v60 & 0x7F) << v49;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_92;
        }
      }

      v27 = (v51 != 0) & ~[a2 hasError];
LABEL_92:
      v56 = 28;
LABEL_101:
      *(a1 + v56) = v27;
      goto LABEL_102;
    }

    if (v13 != 8)
    {
LABEL_85:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_102;
    }

    v34 = PBReaderReadString();
    v35 = 8;
    goto LABEL_57;
  }

  return [a2 hasError] ^ 1;
}

void sub_232290360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__891(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232290550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2322910F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PPM2DeviceStatsReadFrom(uint64_t a1, void *a2)
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

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_232291D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PPM2TopicDonationReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 3)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
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
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

uint64_t PPM2TopicDonationErrorReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v40 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_63;
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

LABEL_63:
          v37 = 28;
          goto LABEL_64;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_55;
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

LABEL_55:
        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v41 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v41 & 0x7F) << v24;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_59;
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

LABEL_59:
          v37 = 24;
LABEL_64:
          *(a1 + v37) = v30;
          goto LABEL_65;
        }

        if (v13 != 2)
        {
          goto LABEL_32;
        }

        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

LABEL_65:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2TopicItemDonationReadFrom(uint64_t a1, void *a2)
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
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
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
      if ((v12 >> 3) <= 7)
      {
        break;
      }

      if (v13 <= 9)
      {
        if (v13 == 8)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v55 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v55 & 0x7F) << v38;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v40;
          }

LABEL_83:
          v51 = 24;
LABEL_84:
          *(a1 + v51) = v36;
          goto LABEL_94;
        }

        if (v13 != 9)
        {
          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 16;
LABEL_75:
        v50 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_94;
      }

      if (v13 == 10)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v57 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v57 & 0x7F) << v44;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_86;
          }
        }

        v22 = (v46 != 0) & ~[a2 hasError];
LABEL_86:
        v52 = 41;
LABEL_93:
        *(a1 + v52) = v22;
        goto LABEL_94;
      }

      if (v13 != 11)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_94;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 44) |= 1u;
      while (1)
      {
        v59 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v59 & 0x7F) << v23;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_90;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

LABEL_90:
      *(a1 + 8) = v29;
LABEL_94:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v56 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v56 & 0x7F) << v30;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_79:
      v51 = 28;
      goto LABEL_84;
    }

    if (v13 != 6)
    {
      if (v13 != 7)
      {
        goto LABEL_54;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 44) |= 8u;
      while (1)
      {
        v58 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v58 & 0x7F) << v16;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_92;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_92:
      v52 = 40;
      goto LABEL_93;
    }

    v14 = PBReaderReadString();
    v15 = 32;
    goto LABEL_75;
  }

  return [a2 hasError] ^ 1;
}

void sub_232299E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  a13 = &a10;
  std::vector<PPScoredItem * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::priority_queue<PPScoredItem * {__strong},std::vector<PPScoredItem * {__strong}>,PPScoredItemCompareGreater>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  if (v4 >= 2)
  {
    v5 = 0;
    v20 = *v2;
    *v2 = 0;
    v6 = v2;
    do
    {
      v7 = &v6[v5 + 1];
      v8 = (2 * v5) | 1;
      v9 = 2 * v5 + 2;
      if (v9 < v4)
      {
        v10 = PPScoredItemCompareGreater::operator()(*v7, v6[v5 + 2]);
        if (v10)
        {
          v11 = 8;
        }

        else
        {
          v11 = 0;
        }

        v7 = (v7 + v11);
        if (v10)
        {
          v8 = v9;
        }
      }

      v12 = *v7;
      *v7 = 0;
      v13 = *v6;
      *v6 = v12;

      v6 = v7;
      v5 = v8;
    }

    while (v8 <= ((v4 - 2) >> 1));
    v14 = (v3 - 8);
    if ((v3 - 8) == v7)
    {
      v18 = *v7;
      *v7 = v20;
    }

    else
    {
      v15 = *v14;
      *v14 = 0;
      v16 = *v7;
      *v7 = v15;

      v17 = *v14;
      *v14 = v20;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPScoredItemCompareGreater &,std::__wrap_iter<PPScoredItem * {__strong}*>>(v2, (v7 + 1), v7 + 1 - v2);
    }
  }

  v19 = *(a1 + 8);

  *(a1 + 8) = v19 - 8;
}

void std::vector<PPScoredItem * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPScoredItemCompareGreater &,std::__wrap_iter<PPScoredItem * {__strong}*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 8 * (v3 >> 1));
    v7 = (a2 - 8);
    if (PPScoredItemCompareGreater::operator()(*v6, *(a2 - 8)))
    {
      v8 = *v7;
      *v7 = 0;
      do
      {
        v9 = v6;
        v10 = *v6;
        *v6 = 0;
        v11 = *v7;
        *v7 = v10;

        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 8 * v5);
        v7 = v9;
      }

      while (PPScoredItemCompareGreater::operator()(*v6, v8));
      v12 = *v9;
      *v9 = v8;
    }
  }
}

BOOL PPScoredItemCompareGreater::operator()(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 score];
  v6 = v5;
  [v4 score];
  v8 = v6 > v7;

  return v8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PPScoredItem * {__strong}>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t PPM2TopicsScoredReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v64 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v64 & 0x7F) << v43;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_90;
            }
          }

          v27 = (v45 != 0) & ~[a2 hasError];
LABEL_90:
          v56 = 30;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_85;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 36) |= 0x20u;
          while (1)
          {
            v63 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v63 & 0x7F) << v28;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_100;
            }
          }

          v27 = (v30 != 0) & ~[a2 hasError];
LABEL_100:
          v56 = 32;
        }

        goto LABEL_101;
      }

      if (v13 == 1)
      {
        v34 = PBReaderReadString();
        v35 = 16;
LABEL_57:
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_102;
      }

      if (v13 != 2)
      {
        goto LABEL_85;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v59 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v59 & 0x7F) << v14;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_96;
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

LABEL_96:
      *(a1 + 24) = v20;
LABEL_102:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v62 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v62 & 0x7F) << v37;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_88;
          }
        }

        v27 = (v39 != 0) & ~[a2 hasError];
LABEL_88:
        v56 = 31;
      }

      else
      {
        if (v13 != 6)
        {
          goto LABEL_85;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v61 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v61 & 0x7F) << v21;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_98;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
        v56 = 29;
      }

      goto LABEL_101;
    }

    if (v13 == 7)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v60 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v60 & 0x7F) << v49;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_92;
        }
      }

      v27 = (v51 != 0) & ~[a2 hasError];
LABEL_92:
      v56 = 28;
LABEL_101:
      *(a1 + v56) = v27;
      goto LABEL_102;
    }

    if (v13 != 8)
    {
LABEL_85:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_102;
    }

    v34 = PBReaderReadString();
    v35 = 8;
    goto LABEL_57;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2TopicsScoredForMappingReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v59 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v59 & 0x7F) << v30;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_96:
            *(a1 + 32) = v36;
            goto LABEL_104;
          }

          if (v13 != 4)
          {
            goto LABEL_87;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 0x10u;
          while (1)
          {
            v64 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v64 & 0x7F) << v16;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_90;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_90:
          v56 = 39;
          goto LABEL_103;
        }

        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_87;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v63 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v63 & 0x7F) << v43;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_100;
              }
            }

            v22 = (v45 != 0) & ~[a2 hasError];
LABEL_100:
            v56 = 37;
          }

          else
          {
            if (v13 != 6)
            {
LABEL_87:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_104;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v62 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_92;
              }
            }

            v22 = (v25 != 0) & ~[a2 hasError];
LABEL_92:
            v56 = 36;
          }

          goto LABEL_103;
        }

        if (v13 == 7)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 44) |= 0x20u;
          while (1)
          {
            v61 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v61 & 0x7F) << v37;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_98;
            }
          }

          v22 = (v39 != 0) & ~[a2 hasError];
LABEL_98:
          v56 = 40;
          goto LABEL_103;
        }

        if (v13 == 8)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            v60 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v60 & 0x7F) << v49;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_102;
            }
          }

          v22 = (v51 != 0) & ~[a2 hasError];
LABEL_102:
          v56 = 38;
LABEL_103:
          *(a1 + v56) = v22;
          goto LABEL_104;
        }

        if (v13 != 9)
        {
          goto LABEL_87;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_104:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2TopicUniqueItemsReadFrom(uint64_t a1, void *a2)
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

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2UniqueNamedEntitiesFoundReadFrom(uint64_t a1, void *a2)
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

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ***std::unique_ptr<std::vector<PPScoreInterpreterValue>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          PPScoreInterpreterValue::~PPScoreInterpreterValue((v4 - 24));
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x238383310);
  }

  return result;
}

void ****std::unique_ptr<std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>>::reset[abi:ne200100](void ****result, void ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x238383310);
  }

  return result;
}

void std::default_delete<std::vector<PPSubscoreIdentifier>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x238383310);
}

void std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::unordered_set<PPSubscoreIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unordered_set<PPSubscoreIdentifier>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2322A0A98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PPScoreInterpreterBytecode;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2322A1214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(va);
  std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(v36 - 240);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unordered_set<PPSubscoreIdentifier>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::unordered_set<PPSubscoreIdentifier>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::__emplace_unique_key_args<PPSubscoreIdentifier,PPSubscoreIdentifier const&>(float *a1, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *(a2 + 1) + 4 * *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *(a2 + 1) + 4 * *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (((*a2 ^ *(v8 + 4)) & 0xFFFF00FF) != 0)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t *std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::find<PPSubscoreIdentifier>(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a3 + 1) + 4 * *a3;
  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3 >= a2 ? v3 % a2 : *(a3 + 1) + 4 * *a3;
  }

  else
  {
    v5 = (a2 - 1) & v3;
  }

  v6 = *(a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (((*a3 ^ *(result + 4)) & 0xFFFF00FF) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PPSubscoreIdentifier>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278971100, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::unordered_set<PPSubscoreIdentifier>>>,std::vector<std::unordered_set<PPSubscoreIdentifier>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::unordered_set<PPSubscoreIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::unordered_set<PPSubscoreIdentifier>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
}

void sub_2322A306C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2744(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322A3E40(_Unwind_Exception *a1)
{
  PPScoreInterpreterValue::~PPScoreInterpreterValue((v3 - 144));

  _Unwind_Resume(a1);
}

void sub_2322A4910(_Unwind_Exception *a1)
{
  PPScoreInterpreterValue::~PPScoreInterpreterValue((v3 - 200));

  _Unwind_Resume(a1);
}

void pop(PPScoreInterpreterCtx *a1, void *a2)
{
  v3 = a2;
  v4 = *(v3[1] + 8);
  v8 = v3;
  if (v4 == *v3[1])
  {
    v7 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Score interpreter stack underflow", buf, 2u);
    }

    __break(1u);
  }

  else
  {
    a1->super.isa = 0;
    a1->_stack.__ptr_ = 0;
    a1->_scoreInputs = 0;
    PPScoreInterpreterValue::PPScoreInterpreterValue(a1, (v4 - 24));
    v5 = v8[1];
    PPScoreInterpreterValue::~PPScoreInterpreterValue((*(v5 + 8) - 24));
    *(v5 + 8) = v6;
  }
}

void push(void *a1, const PPScoreInterpreterValue *a2)
{
  v13 = a1;
  v3 = v13[1];
  v5 = *v3;
  v4 = v3[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3);
  if (v6 >= 0x200)
  {
    v12 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Score interpreter stack overflow", buf, 2u);
    }

    __break(1u);
  }

  else
  {
    v7 = v3[2];
    if (v4 >= v7)
    {
      v15 = v13[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v5) >> 3);
      if (2 * v9 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = 2 * v9;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<PPScoreInterpreterValue>>(v11);
    }

    PPScoreInterpreterValue::PPScoreInterpreterValue(v4, a2);
    v3[1] = v8 + 24;
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t shouldReturnUndefined(PPScoreInterpreterCtx *a1, unint64_t a2)
{
  v3 = a1;
  ptr = v3->_stack.__ptr_;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((ptr[1] - *ptr) >> 3);
  v6 = v5 - a2;
  if (v5 < a2)
  {
    v12 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "Score interpreter stack underflow", buf, 2u);
    }

    __break(1u);
LABEL_21:
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  if (v6 >= v5)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_17;
  }

  a2 = 8 * ((ptr[1] - *ptr) >> 3) - 24 * a2;
  while (1)
  {
    v16 = 0;
    v17 = 0;
    *buf = 0;
    v8 = ptr;
    v7 = *ptr;
    if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - v7) >> 3) <= v6)
    {
      goto LABEL_21;
    }

    PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v7 + a2));
    if (!v17)
    {
      if (PPScoreInterpreterValue::getDouble(buf) == -31337.0)
      {
        break;
      }

      goto LABEL_12;
    }

    if (v17 != 1)
    {
      LODWORD(a2) = v17 != 2;
      goto LABEL_16;
    }

    PPScoreInterpreterValue::getFloatVector(&v13, buf);
    v9 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (!v9)
    {
      break;
    }

LABEL_12:
    PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
    ++v6;
    ptr = v3->_stack.__ptr_;
    a2 += 24;
    if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((ptr[1] - *ptr) >> 3))
    {
      goto LABEL_13;
    }
  }

  LODWORD(a2) = 1;
LABEL_16:
  PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
  v10 = 1;
LABEL_17:

  return v10 & a2;
}

void sub_2322AAA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PPScoreInterpreterValue::~PPScoreInterpreterValue(va);

  _Unwind_Resume(a1);
}

void drop(PPScoreInterpreterCtx *a1, unint64_t a2)
{
  v9 = a1;
  ptr = v9->_stack.__ptr_;
  v4 = ptr[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *ptr) >> 3);
  v6 = v5 - a2;
  if (v5 < a2)
  {
    v8 = pp_score_interpreter_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "Score interpreter stack underflow", buf, 2u);
    }

    __break(1u);
  }

  else
  {
    if (v5 > v6)
    {
      v7 = *ptr + 24 * v6;
      while (v4 != v7)
      {
        PPScoreInterpreterValue::~PPScoreInterpreterValue((v4 - 24));
      }

      ptr[1] = v7;
    }
  }
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2322AABB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::emplace_back<float>(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t *std::unordered_set<float>::unordered_set<std::__wrap_iter<float *>>(uint64_t *a1, float *a2, float *a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a2 != a3)
  {
    for (i = a2; i != a3; ++i)
    {
      if (*i == 0.0)
      {
        v4 = 0;
      }

      else
      {
        v4 = *i;
      }

      v5 = a1[1];
      if (!*&v5)
      {
        goto LABEL_23;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = v4;
        if (v4 >= *&v5)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = v4 & (*&v5 + 0xFFFFFFFFLL);
      }

      v8 = *(*a1 + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        v10 = *(v9 + 1);
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_23;
        }

LABEL_22:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      if (v9[4] != *i)
      {
        goto LABEL_22;
      }
    }
  }

  return a1;
}

void sub_2322AB0EC(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(a2);
  }

  std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PPScoreInterpreterValue>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

PPScoreInterpreterValue *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PPScoreInterpreterValue>,PPScoreInterpreterValue*>(PPScoreInterpreterValue *result, PPScoreInterpreterValue *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 8);
    v5 = result;
    do
    {
      *(v4 + 8) = 3;
      v6 = *(v4 - 1);
      *(v4 - 1) = *v5;
      *v5 = v6;
      v7 = *v4;
      *v4 = *(v5 + 1);
      *(v5 + 1) = v7;
      *(v4 + 8) = *(v5 + 16);
      *(v5 + 16) = 3;
      v5 = (v5 + 24);
      v4 += 3;
    }

    while (v5 != a2);
    do
    {
      PPScoreInterpreterValue::~PPScoreInterpreterValue(result);
      result = (v8 + 24);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<PPScoreInterpreterValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    PPScoreInterpreterValue::~PPScoreInterpreterValue((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::vector<float>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2847559B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x238383310);
}

void sub_2322AD06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322AD564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2906(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322AE544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3014(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322AE788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2322AE9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2322AECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2322AF0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322AFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 232), 8);
  _Block_object_dispose((v66 - 184), 8);
  _Block_object_dispose((v66 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2322B1154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2322B1350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2322B1580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2322B17B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2322B1CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B4110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B4C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B5164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2322B5650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id defaultRTRoutineManager()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v10 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getRTRoutineManagerClass_block_invoke;
    v6[3] = &unk_2789792D0;
    v6[4] = &v7;
    __getRTRoutineManagerClass_block_invoke(v6);
    v0 = v8[3];
  }

  v1 = v0;
  _Block_object_dispose(&v7, 8);
  if (v0)
  {
    v2 = NSSelectorFromString(&cfstr_Defaultmanager.isa);
    v3 = ([v0 methodForSelector:v2])(v0, v2);
  }

  else
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "Failed to dlopen CoreRoutine.", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

void sub_2322B57B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreRoutineLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2789724E8;
    v8 = 0;
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PPRoutineSupport.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PPRoutineSupport.m" lineNumber:42 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2322B5C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B64E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2322B7AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3300(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322B8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B8C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B8D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B8EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322B9F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322BAA44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2322BAF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322BB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t offsetFromAppendingData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  while (([v3 length] & 0x1F) != 0)
  {
    [v3 appendBytes:"" length:1];
  }

  v5 = [v3 length];
  [v3 appendData:v4];

  return v5;
}

void sub_2322BF748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2322C03D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = [v15 name];
    v17 = *MEMORY[0x277CBE660];

    if (v16 == v17)
    {
      v18 = pp_events_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        buf = 0;
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "Corrupted persistent logging store! Removing corrupted store.", &buf, 2u);
      }

      v19 = [MEMORY[0x277D3A578] isInternalDevice];
      v20 = *(v14 + 2560);
      if (v19)
      {
        v21 = [v20 defaultManager];
        v22 = [v13 stringByAppendingString:@".old"];
        [v21 moveItemAtPath:v13 toPath:v22 error:0];
      }

      else
      {
        v21 = [v20 defaultManager];
        [v21 removeItemAtPath:v13 error:0];
      }

      objc_end_catch();
      JUMPOUT(0x2322C0360);
    }

    v23 = pp_events_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(a11) = 0;
      _os_log_debug_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEBUG, "Exception we're not catching", &a11, 2u);
    }

    objc_exception_throw(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PPM2AttributedFeedbackReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              v63 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v63 & 0x7F) << v36;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v38;
            }

LABEL_102:
            v56 = 56;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_89;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              v62 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_94:
            v56 = 16;
          }

          goto LABEL_111;
        }

        switch(v13)
        {
          case 3:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              v61 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v61 & 0x7F) << v42;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v44;
            }

LABEL_106:
            v56 = 32;
LABEL_111:
            *(a1 + v56) = v29;
            goto LABEL_112;
          case 4:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v13 <= 7)
      {
        break;
      }

      if (v13 == 8)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 68) |= 2u;
        while (1)
        {
          v59 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v59 & 0x7F) << v48;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_110;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v50;
        }

LABEL_110:
        v56 = 20;
        goto LABEL_111;
      }

      if (v13 == 9)
      {
        v14 = PBReaderReadString();
        v15 = 40;
LABEL_88:
        v54 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_112;
      }

      if (v13 != 10)
      {
        goto LABEL_89;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 68) |= 0x20u;
      while (1)
      {
        v64 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v64 & 0x7F) << v16;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_115;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_115:
      *(a1 + 64) = v22;
LABEL_112:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 6)
    {
      if (v13 != 7)
      {
LABEL_89:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_112;
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 68) |= 0x10u;
      while (1)
      {
        v60 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v60 & 0x7F) << v30;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_98;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v32;
      }

LABEL_98:
      v56 = 60;
      goto LABEL_111;
    }

    v14 = PBReaderReadString();
    v15 = 48;
    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPPBLabeledSocialProfileReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278972B60[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void PPScoreInterpreterValue::PPScoreInterpreterValue(PPScoreInterpreterValue *this, double a2)
{
  *this = a2;
  *(this + 16) = 0;
}

{
  *this = a2;
  *(this + 16) = 0;
}

void sub_2322C45D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void PPScoreInterpreterValue::PPScoreInterpreterValue(void *a1, void *a2)
{
  arrayToFloatVector(__p, a2);
  std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>(a1, __p);
}

{
  arrayToFloatVector(__p, a2);
  std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>(a1, __p);
}

void sub_2322C463C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void arrayToFloatVector(char **a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = v3;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(v4);
    }

    std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  memset(v7, 0, sizeof(v7));
  v5 = v6;
  if ([v5 countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    [**(&v7[0] + 1) floatValue];
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(1uLL);
  }
}

void sub_2322C484C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    *(v11 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_2322C48E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PPScoreInterpreterValue::PPScoreInterpreterValue(PPScoreInterpreterValue *this, NSObject *a2)
{
  v3 = a2;
  v4 = v3;
  *(this + 16) = 2;
  if (v3)
  {
    v5 = v3;
  }

  *this = v4;
}

void PPScoreInterpreterValue::PPScoreInterpreterValue(PPScoreInterpreterValue *this)
{
  *(this + 16) = 3;
}

{
  *(this + 16) = 3;
}

void PPScoreInterpreterValue::PPScoreInterpreterValue(PPScoreInterpreterValue *this, const PPScoreInterpreterValue *a2)
{
  v3 = *(a2 + 16);
  *(this + 16) = v3;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = *a2;
      if (*a2)
      {
        *this = v7;
        CFRetain(v7);
      }

      else
      {
        *this = 0;
      }
    }

    else if (v3 != 3)
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PPScoreInterpreterValue::PPScoreInterpreterValue(const PPScoreInterpreterValue &)"];
      [v5 handleFailureInFunction:v6 file:@"PPScoreInterpreterValue.mm" lineNumber:87 description:{@"Invalid valueType of %d in copy constructor", *(this + 16)}];
    }
  }

  else if (v3)
  {
    v4 = *(a2 + 1);
    *this = *a2;
    *(this + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *this = *a2;
  }
}

uint64_t *swap(uint64_t *result, PPScoreInterpreterValue *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  LOBYTE(v3) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t *PPScoreInterpreterValue::PPScoreInterpreterValue(uint64_t *result, uint64_t *a2)
{
  *(result + 16) = 3;
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 3;
  return result;
}

{
  *(result + 16) = 3;
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 3;
  return result;
}

uint64_t *PPScoreInterpreterValue::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  LOBYTE(v3) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

void PPScoreInterpreterValue::~PPScoreInterpreterValue(PPScoreInterpreterValue *this)
{
  v2 = *(this + 16);
  if (v2 <= 1)
  {
    if (!*(this + 16))
    {
      return;
    }

    if (v2 == 1)
    {
      v3 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      return;
    }

LABEL_8:
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PPScoreInterpreterValue::~PPScoreInterpreterValue()"];
    [v4 handleFailureInFunction:v5 file:@"PPScoreInterpreterValue.mm" lineNumber:124 description:{@"Invalid PPScoreInterpreterValueType of %d in destructor", *(this + 16)}];

    return;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return;
    }

    goto LABEL_8;
  }

  v6 = *this;
  if (*this)
  {
    CFRelease(v6);
  }
}

double PPScoreInterpreterValue::getDouble(PPScoreInterpreterValue *this)
{
  if (*(this + 16))
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double PPScoreInterpreterValue::getDouble() const"];
    [v2 handleFailureInFunction:v3 file:@"PPScoreInterpreterValue.mm" lineNumber:131 description:{@"Invalid valueType of %d in getDouble", *(this + 16)}];
  }

  return *this;
}

void PPScoreInterpreterValue::getFloatVector(uint64_t *__return_ptr a1@<X8>, PPScoreInterpreterValue *this@<X0>)
{
  if (*(this + 16) != 1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"std::shared_ptr<std::vector<float>> PPScoreInterpreterValue::getFloatVector() const"];
    [v4 handleFailureInFunction:v5 file:@"PPScoreInterpreterValue.mm" lineNumber:138 description:{@"Invalid valueType of %d in getFloatVector", *(this + 16)}];
  }

  v6 = *(this + 1);
  *a1 = *this;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

id PPScoreInterpreterValue::getNumericArray(PPScoreInterpreterValue *this)
{
  if (*(this + 16) != 1)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray<NSNumber *> *PPScoreInterpreterValue::getNumericArray() const"];
    [v2 handleFailureInFunction:v3 file:@"PPScoreInterpreterValue.mm" lineNumber:145 description:{@"Invalid valueType of %d in getNumericArray", *(this + 16)}];
  }

  v4 = *this;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v4[1] - *v4) >> 2];
  v7 = *v4;
  v8 = v4[1];
  if (*v4 != v8)
  {
    do
    {
      LODWORD(v6) = *v7;
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v5 addObject:v9];

      ++v7;
    }

    while (v7 != v8);
  }

  v10 = [v5 copy];

  return v10;
}

id PPScoreInterpreterValue::getObject(PPScoreInterpreterValue *this)
{
  if (*(this + 16) != 2)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSObject *PPScoreInterpreterValue::getObject() const"];
    [v2 handleFailureInFunction:v3 file:@"PPScoreInterpreterValue.mm" lineNumber:152 description:{@"Invalid valueType of %d in getObject", *(this + 16)}];
  }

  v4 = *this;

  return v4;
}

void sub_2322C5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322C8814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4497(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322C9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4662(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PPPBMusicDataCollectionRecordReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v47 & 0x7F) << v25;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_70:
          v41 = 64;
LABEL_79:
          *(a1 + v41) = v24;
          goto LABEL_85;
        }

        if (v13 != 2)
        {
          goto LABEL_65;
        }

        v14 = PBReaderReadString();
        v15 = 32;
LABEL_52:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_85;
      }

      if (v13 == 3)
      {
        *(a1 + 68) |= 2u;
        v47 = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v47;
        v44 = 16;
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_65;
        }

        *(a1 + 68) |= 1u;
        v47 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v47;
        v44 = 8;
      }

      *(a1 + v44) = v43;
LABEL_85:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 68) |= 8u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v47 & 0x7F) << v34;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v36;
        }

LABEL_74:
        v41 = 48;
      }

      else
      {
        if (v13 != 8)
        {
LABEL_65:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 68) |= 4u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v47 & 0x7F) << v18;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_78;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_78:
        v41 = 24;
      }

      goto LABEL_79;
    }

    if (v13 == 5)
    {
      v14 = PBReaderReadString();
      v15 = 56;
    }

    else
    {
      if (v13 != 6)
      {
        goto LABEL_65;
      }

      v14 = PBReaderReadString();
      v15 = 40;
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__5140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322CD938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322CDCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322CDFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322CE28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322CE59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D0000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D1804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D4080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D4D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D6270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose((v34 - 192), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D6E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322D7AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t PPPBFeedbackLogReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(PPPBFeedbackMetadata);
            objc_storeStrong((a1 + 32), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !PPPBFeedbackMetadataReadFrom(v14, a2))
            {
LABEL_58:

              return 0;
            }

            goto LABEL_40;
          case 2:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v27 & 0x7F) << v18;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_55;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_55:
            *(a1 + 48) = v24;
            goto LABEL_56;
          case 3:
            v14 = objc_alloc_init(PPPBScoredItemWithFeatures);
            [a1 addScoredItems:v14];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !PPPBScoredItemWithFeaturesReadFrom(v14, a2))
            {
              goto LABEL_58;
            }

            goto LABEL_40;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_42;
        }

        if (v13 == 7)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_42:
          v17 = *(a1 + v16);
          *(a1 + v16) = v15;

          goto LABEL_56;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(PPPBExtractedDonationRecord);
          [a1 addExtractedDonations:v14];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PPPBExtractedDonationRecordReadFrom(v14, a2))
          {
            goto LABEL_58;
          }

          goto LABEL_40;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(PPPBExperimentalGroup);
          [a1 addExperimentalGroups:v14];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PPPBExperimentalGroupReadFrom(v14, a2))
          {
            goto LABEL_58;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2322DC28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5745(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322DD038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322DE4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5895(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322DF3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_2322DF9A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(a1);
    v4 = *(*(*(v2 - 120) + 80) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_end_catch();
    JUMPOUT(0x2322DF910);
  }

  _Unwind_Resume(a1);
}

void sub_2322E0AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322E0FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2322E4E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322E5838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322E6CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_2322E8CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 240), 8);
  _Block_object_dispose((v42 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2322E94A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PPPBScoredItemWithFeaturesReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30) = 0;
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v25 = objc_alloc_init(PPPBFeatureIdFeatureValuePair);
            [a1 addFeatures:v25];
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark() || !PPPBFeatureIdFeatureValuePairReadFrom(v25, a2))
            {
LABEL_55:

              return 0;
            }

            goto LABEL_46;
          case 5:
            v25 = objc_alloc_init(PPPBFeedbackItem);
            [a1 addFeedbackItems:v25];
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark() || !PPPBFeedbackItemReadFrom(v25, a2))
            {
              goto LABEL_55;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_53;
          case 6:
            v16 = PBReaderReadString();
            v17 = 40;
LABEL_43:
            v26 = *(a1 + v17);
            *(a1 + v17) = v16;

            goto LABEL_53;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v30) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v30 & 0x7F) << v18;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_50;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_50:
            *(a1 + 8) = v24;
            goto LABEL_53;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            goto LABEL_43;
          case 3:
            *(a1 + 52) |= 2u;
            LODWORD(v30) = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 48) = v30;
            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2322EB7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322EF9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6531(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322EFAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322F044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322F0860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2322F15B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id mergeDeduping(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 count];
  v6 = [v3 count];
  v25 = sortedEvents(v4);

  v7 = sortedEvents(v3);

  if (!v5)
  {
    v22 = v7;
LABEL_25:
    v19 = [v22 mutableCopy];
    goto LABEL_28;
  }

  if (!v6)
  {
    v22 = v25;
    goto LABEL_25;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v25, "count")}];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = v10;
    v14 = v9;
    v10 = [v25 objectAtIndexedSubscript:{v12, v24}];

    v9 = [v7 objectAtIndexedSubscript:v11];

    if (eventCompare(v10, v9) == -1)
    {
      if ((isDupe(v10, v8) & 1) == 0)
      {
        [v24 addObject:v10];
        v16 = v10;

        v8 = v16;
      }

      ++v12;
    }

    else
    {
      if ((isDupe(v9, v8) & 1) == 0)
      {
        [v24 addObject:v9];
        v15 = v9;

        v8 = v15;
      }

      ++v11;
    }
  }

  while (v12 < v5 && v11 < v6);
  if (v12 < v5)
  {
    do
    {
      v17 = v10;
      v10 = [v25 objectAtIndexedSubscript:v12];

      if ((isDupe(v10, v8) & 1) == 0)
      {
        [v24 addObject:v10];
        v18 = v10;

        v8 = v18;
      }

      ++v12;
    }

    while (v5 != v12);
  }

  if (v11 >= v6)
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    do
    {
      v20 = v9;
      v9 = [v7 objectAtIndexedSubscript:v11];

      if ((isDupe(v9, v8) & 1) == 0)
      {
        [v24 addObject:v9];
        v21 = v9;

        v8 = v21;
      }

      ++v11;
    }

    while (v6 != v11);
  }

LABEL_28:

  return v19;
}

id sortedEvents(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count] >= 2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (v5)
          {
            if (eventCompare(v5, v8) == 1)
            {
              v9 = objc_autoreleasePoolPush();
              v10 = [v2 sortedArrayUsingComparator:{&__block_literal_global_125, v12}];
              objc_autoreleasePoolPop(v9);

              goto LABEL_17;
            }
          }

          else
          {
            v5 = v8;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = [v1 copy];
LABEL_17:

  return v10;
}

uint64_t eventCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 compareStartDateWithEvent:v4];
  if (!v5)
  {
    v6 = [v3 eventIdentifier];
    v7 = [v4 eventIdentifier];
    v5 = [v6 compare:v7];
  }

  return v5;
}

uint64_t isDupe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectID];
    v7 = [v3 objectID];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 startDate];
      v9 = [v3 startDate];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t PPPBMusicDataCollectionArrayReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v23 = objc_alloc_init(PPPBExperimentalGroup);
          [a1 addExperimentalGroups:v23];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !PPPBExperimentalGroupReadFrom(v23, a2))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          v22 = *(a1 + 8);
          *(a1 + 8) = v21;

          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(PPPBMusicDataCollectionRecord);
          [a1 addRecords:v23];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !PPPBMusicDataCollectionRecordReadFrom(v23, a2))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v26 & 0x7F) << v14;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_41;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
          *(a1 + 32) = v20;
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2322F4F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6825(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2322F7668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PPPBContactNameRecordReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v36[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v36[0] & 0x7F) << v5;
      if ((v36[0] & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_60;
      case 2u:
        *(a1 + 144) |= 1u;
        v36[0] = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36[0];
        goto LABEL_61;
      case 3u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 144) |= 4u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v36[0] & 0x7F) << v16;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_66;
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

LABEL_66:
        v33 = 120;
        goto LABEL_71;
      case 4u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 144) |= 2u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v36[0] & 0x7F) << v23;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_70;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_70:
        v33 = 16;
LABEL_71:
        *(a1 + v33) = v22;
        goto LABEL_61;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_60;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_60;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_60;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_60;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_60;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_60;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_60;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_60;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_60;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 72;
LABEL_60:
        v31 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_61;
      case 0xFu:
        v15 = objc_alloc_init(PPPBContactRelatedName);
        [a1 addRelatedNames:v15];
        v36[0] = 0;
        v36[1] = 0;
        if (PBReaderPlaceMark() && PPPBContactRelatedNameReadFrom(v15, a2))
        {
          PBReaderRecallMark();
LABEL_39:

LABEL_61:
          v32 = [a2 position];
          if (v32 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0x10u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addStreetNames:v15];
        }

        goto LABEL_39;
      case 0x11u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addCityNames:v15];
        }

        goto LABEL_39;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_61;
    }
  }
}

void ***std::unique_ptr<std::vector<std::shared_ptr<std::vector<float>>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x238383310);
  }

  return result;
}

void std::default_delete<std::vector<float>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x238383310);
}

void std::vector<std::shared_ptr<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_23230F354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = *v11;
  if (*v11)
  {
    v10[1].__shared_owners_ = v13;
    operator delete(v13);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v14);

  _Unwind_Resume(a1);
}

void sub_23230F4E4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_23230F930(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278973CF8;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PPSettings+AssistantServices.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PPSettings+AssistantServices.m" lineNumber:19 description:{@"Unable to find class %s", "AFPreferences"}];

LABEL_10:
    __break(1u);
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23231171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8071(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t indexForPayload(NSString *a1, const unsigned __int8 *a2, int a3, unsigned int a4)
{
  v7 = a1;
  if ([(NSString *)v7 lengthOfBytesUsingEncoding:4]<= a4)
  {
    v9 = [(NSString *)v7 stringByPaddingToLength:a4 withString:@" " startingAtIndex:0];
    v10 = [v9 UTF8String];
    if (a3)
    {
      v11 = v10;
      v12 = 0;
      v8 = 0;
      while (memcmp(v11, &a2[v12], a4))
      {
        ++v8;
        v12 += a4;
        if (a3 == v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

id PPContactLabelScoringMap()
{
  if (PPContactLabelScoringMap__pasOnceToken4 != -1)
  {
    dispatch_once(&PPContactLabelScoringMap__pasOnceToken4, &__block_literal_global_8287);
  }

  v1 = PPContactLabelScoringMap__pasExprOnceResult;

  return v1;
}

void __PPContactLabelScoringMap_block_invoke()
{
  v35[14] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = objc_opt_new();
  v1 = objc_autoreleasePoolPush();
  v2 = *MEMORY[0x277CBD928];
  v34[0] = @"iPhone";
  v34[1] = @"Mobile";
  v3 = *MEMORY[0x277CBD908];
  v35[0] = v2;
  v35[1] = v3;
  v4 = *MEMORY[0x277CBD900];
  v34[2] = @"Main";
  v34[3] = @"Pager";
  v5 = *MEMORY[0x277CBD918];
  v35[2] = v4;
  v35[3] = v5;
  v6 = *MEMORY[0x277CBD8F8];
  v34[4] = @"HomeFax";
  v34[5] = @"WorkFax";
  v7 = *MEMORY[0x277CBD920];
  v35[4] = v6;
  v35[5] = v7;
  v8 = *MEMORY[0x277CBD910];
  v34[6] = @"OtherFax";
  v34[7] = @"Home";
  v9 = *MEMORY[0x277CBD8E0];
  v35[6] = v8;
  v35[7] = v9;
  v10 = *MEMORY[0x277CBD940];
  v34[8] = @"Work";
  v34[9] = @"School";
  v11 = *MEMORY[0x277CBD930];
  v35[8] = v10;
  v35[9] = v11;
  v12 = *MEMORY[0x277CBD8D8];
  v34[10] = @"EmailiCloud";
  v34[11] = @"URLAddressHomePage";
  v13 = *MEMORY[0x277CBD938];
  v35[10] = v12;
  v35[11] = v13;
  v34[12] = @"DateAnniversary";
  v34[13] = @"Other";
  v14 = *MEMORY[0x277CBD8E8];
  v35[12] = *MEMORY[0x277CBD8D0];
  v35[13] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:14];
  objc_autoreleasePoolPop(v1);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = +[PPConfiguration sharedInstance];
  v17 = [v16 contactsLabelScoringMap];

  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        v23 = +[PPConfiguration sharedInstance];
        v24 = [v23 contactsLabelScoringMap];
        v25 = [v24 objectForKeyedSubscript:v22];
        v26 = [v15 objectForKeyedSubscript:v22];
        [v0 setObject:v25 forKeyedSubscript:v26];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  v27 = PPContactLabelScoringMap__pasExprOnceResult;
  PPContactLabelScoringMap__pasExprOnceResult = v0;

  objc_autoreleasePoolPop(context);
}

__CFString *PPRemovePhoneExtensionAndNonDigits(void *a1)
{
  v1 = a1;
  v2 = malloc_type_malloc([v1 length] + 1, 0xBF1A5E31uLL);
  v3 = v1;
  v4 = v3;
  v5 = v2;
  if (v3)
  {
    memset(v27, 0, sizeof(v27));
    Length = CFStringGetLength(v3);
    theString = v4;
    v31 = 0;
    v32 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v4);
    CStringPtr = 0;
    v29 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
    }

    v33 = 0;
    v34 = 0;
    v5 = v2;
    v30 = CStringPtr;
    if (Length >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 64;
      v5 = v2;
      do
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        v14 = v32;
        if (v32 <= v11)
        {
          v16 = 0;
          if (!v10)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v29)
          {
            v15 = &v29[v31];
            goto LABEL_12;
          }

          if (!v30)
          {
            v17 = v33;
            if (v34 <= v11 || v33 > v11)
            {
              v19 = v13 + v9;
              v20 = v12 - v13;
              v21 = v11 - v13;
              v22 = v21 + 64;
              if (v21 + 64 >= v32)
              {
                v22 = v32;
              }

              v33 = v21;
              v34 = v22;
              if (v32 >= v20)
              {
                v14 = v20;
              }

              v35.location = v21 + v31;
              v35.length = v14 + v19;
              CFStringGetCharacters(theString, v35, v27);
              v17 = v33;
            }

            v15 = v27 - v17;
LABEL_12:
            v16 = v15[v11];
            if (!v10)
            {
              goto LABEL_18;
            }

            goto LABEL_15;
          }

          v16 = v30[v31 + v11];
          if (!v10)
          {
LABEL_18:
            if (v16 - 48 > 9)
            {
              v10 = v16 == 59;
            }

            else
            {
              v10 = 0;
              *v5++ = v16;
            }

            goto LABEL_21;
          }
        }

LABEL_15:
        v10 = 1;
LABEL_21:
        ++v11;
        --v9;
        ++v12;
      }

      while (Length != v11);
    }
  }

  *v5 = 0;
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
  free(v2);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v4;
  }

  v25 = v24;

  return v24;
}

void PPStringNormalizationTypeCheck(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    memset(v23, 0, sizeof(v23));
    Length = CFStringGetLength(v5);
    theString = v6;
    v27 = 0;
    v28 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v6);
    CStringPtr = 0;
    v25 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
    }

    v29 = 0;
    v30 = 0;
    v26 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 64;
      do
      {
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        v15 = v28;
        if (v28 <= v12)
        {
          v17 = 0;
        }

        else
        {
          if (v25)
          {
            v16 = &v25[v27];
LABEL_12:
            v17 = v16[v12];
            goto LABEL_14;
          }

          if (!v26)
          {
            if (v30 <= v12 || v11 > v12)
            {
              v19 = v14 + v10;
              v20 = v13 - v14;
              v21 = v12 - v14;
              v22 = v21 + 64;
              if (v21 + 64 >= v28)
              {
                v22 = v28;
              }

              v29 = v21;
              v30 = v22;
              if (v28 >= v20)
              {
                v15 = v20;
              }

              v31.location = v21 + v27;
              v31.length = v15 + v19;
              CFStringGetCharacters(theString, v31, v23);
              v11 = v29;
            }

            v16 = v23 - v11;
            goto LABEL_12;
          }

          v17 = v26[v27 + v12];
        }

LABEL_14:
        if (*a3)
        {
          if ((*a2 & 1) == 0 && v17 == 64)
          {
            goto LABEL_24;
          }

          if (*a2)
          {
            break;
          }
        }

        else if (v17 - 48 > 9)
        {
          if ((*a2 & 1) == 0 && v17 == 64)
          {
LABEL_24:
            *a2 = 1;
            if (*a3)
            {
              break;
            }
          }
        }

        else
        {
          *a3 = 1;
          if (*a2)
          {
            break;
          }
        }

        ++v12;
        --v10;
        ++v13;
      }

      while (Length != v12);
    }
  }
}

id PPNormalizePhoneNumber(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBDAD0] sharedDefaults];
  v3 = [v2 countryCode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v6 objectForKey:*MEMORY[0x277CBE690]];
  }

  v7 = CFPhoneNumberCreate();
  if (v7)
  {
    v8 = v7;
    String = CFPhoneNumberCreateString();
    CFRelease(v8);
  }

  else
  {
    String = PPRemovePhoneExtensionAndNonDigits(v1);
  }

  return String;
}

id PPNormalizeEmailAddress(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 lowercaseString];
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v5 = v3;
  v6 = [v5 length];
  if (v6)
  {
    v7 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
    if (!v7)
    {
      v31 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v31);
    }

    v8 = v7;
    v9 = v5;
    v10 = v9;
    if (v9)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *buffer = 0u;
      v34 = 0u;
      Length = CFStringGetLength(v9);
      theString = v10;
      v44 = 0;
      v45 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v10);
      CStringPtr = 0;
      v42 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v10, 0x600u);
      }

      v32 = v10;
      v46 = 0;
      v47 = 0;
      v43 = CStringPtr;
      if (Length >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 64;
        while (1)
        {
          if (v15 >= 4)
          {
            v18 = 4;
          }

          else
          {
            v18 = v15;
          }

          v19 = v45;
          if (v45 <= v15)
          {
            v21 = 0;
          }

          else
          {
            if (v42)
            {
              v20 = &v42[v44];
            }

            else
            {
              if (v43)
              {
                v21 = v43[v44 + v15];
                goto LABEL_16;
              }

              v22 = v46;
              if (v47 <= v15 || v46 > v15)
              {
                v24 = v18 + v14;
                v25 = v17 - v18;
                v26 = v15 - v18;
                v27 = v26 + 64;
                if (v26 + 64 >= v45)
                {
                  v27 = v45;
                }

                v46 = v26;
                v47 = v27;
                if (v45 >= v25)
                {
                  v19 = v25;
                }

                v49.location = v26 + v44;
                v49.length = v19 + v24;
                CFStringGetCharacters(theString, v49, buffer);
                v22 = v46;
              }

              v20 = &buffer[-v22];
            }

            v21 = v20[v15];
          }

LABEL_16:
          if (!CFCharacterSetIsCharacterMember(Predefined, v21))
          {
            v8[v16++] = v21;
          }

          ++v15;
          --v14;
          ++v17;
          if (Length == v15)
          {
            goto LABEL_35;
          }
        }
      }

      v16 = 0;
LABEL_35:
      v10 = v32;
    }

    else
    {
      v16 = 0;
    }

    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v8 length:v16 freeWhenDone:1];
  }

  else
  {
    v28 = v5;
  }

  v29 = v28;

  objc_autoreleasePoolPop(v2);

  return v29;
}

id PPQuickTypeItemsForContacts(void *a1, void *a2, unsigned int a3, void *a4, unint64_t a5, char a6, void *a7)
{
  v335 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v233 = a2;
  v231 = a4;
  v242 = a7;
  v227 = v11;
  if (![v11 count])
  {
    v213 = MEMORY[0x277CBEBF8];
    goto LABEL_176;
  }

  v244 = objc_opt_new();
  v12 = pp_contacts_log_handle();
  v228 = a3;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v330 = a3;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "predictionForContact fields: %lu", buf, 0xCu);
  }

  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  obj = v11;
  v232 = [obj countByEnumeratingWithState:&v263 objects:v314 count:16];
  if (v232)
  {
    v230 = *v264;
    v245 = *MEMORY[0x277CBD9D8];
    v241 = a3;
    do
    {
      for (i = 0; i != v232; i = v208 + 1)
      {
        if (*v264 != v230)
        {
          objc_enumerationMutation(obj);
        }

        v239 = i;
        v14 = *(*(&v263 + 1) + 8 * i);
        v238 = objc_autoreleasePoolPush();
        v15 = pp_contacts_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          v330 = v14;
          _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "predictionForContact contact: %{sensitive}@", buf, 0xCu);
        }

        v16 = [v14 contact];
        v17 = [v16 source];

        v18 = v17 == 1;
        if (v17 == 2)
        {
          v18 = 2;
        }

        v255 = v18;
        v256 = v14;
        v19 = v233;
        v20 = v231;
        context = objc_autoreleasePoolPush();
        v21 = objc_opt_new();
        v22 = objc_opt_new();
        v23 = +[PPLabelMatcher sharedInstance];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ___labelAndValueForContactFields_block_invoke;
        aBlock[3] = &unk_278973E08;
        v235 = v23;
        v308 = v235;
        v236 = v19;
        v309 = v236;
        v249 = v20;
        v310 = v249;
        v234 = v22;
        v311 = v234;
        v240 = v21;
        v312 = v240;
        v24 = _Block_copy(aBlock);
        v25 = PPContactLabelScoringMap();
        if (a3)
        {
          v306 = 0u;
          v305 = 0u;
          v304 = 0u;
          v303 = 0u;
          v26 = [v256 contact];
          v27 = [v26 phoneNumbers];

          v28 = [v27 countByEnumeratingWithState:&v303 objects:buf count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v304;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v304 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v303 + 1) + 8 * j);
                v33 = [v32 label];
                v34 = [v25 objectForKeyedSubscript:v33];
                [v34 doubleValue];
                v36 = v35;

                v37 = [v32 label];
                v38 = [v32 value];
                v24[2](v24, v37, v38, 1, v36);
              }

              v29 = [v27 countByEnumeratingWithState:&v303 objects:buf count:16];
            }

            while (v29);
          }

          a3 = v241;
          if ((v241 & 2) == 0)
          {
LABEL_15:
            if ((a3 & 4) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_37;
          }
        }

        else if ((a3 & 2) == 0)
        {
          goto LABEL_15;
        }

        v301 = 0u;
        v302 = 0u;
        v299 = 0u;
        v300 = 0u;
        v39 = [v256 contact];
        v40 = [v39 emailAddresses];

        v41 = [v40 countByEnumeratingWithState:&v299 objects:v328 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v300;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v300 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v299 + 1) + 8 * k);
              v46 = [v45 label];
              v47 = [v25 objectForKeyedSubscript:v46];
              [v47 doubleValue];
              v49 = v48;

              v50 = [v45 label];
              v51 = [v45 value];
              v24[2](v24, v50, v51, 2, v49);
            }

            v42 = [v40 countByEnumeratingWithState:&v299 objects:v328 count:16];
          }

          while (v42);
        }

        a3 = v241;
        if ((v241 & 4) == 0)
        {
LABEL_16:
          if ((a3 & 0x10) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_45;
        }

LABEL_37:
        v297 = 0u;
        v298 = 0u;
        v295 = 0u;
        v296 = 0u;
        v52 = [v256 contact];
        v53 = [v52 postalAddresses];

        v54 = [v53 countByEnumeratingWithState:&v295 objects:v327 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v296;
          do
          {
            for (m = 0; m != v55; ++m)
            {
              if (*v296 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v295 + 1) + 8 * m);
              v59 = [v58 label];
              v60 = [v25 objectForKeyedSubscript:v59];
              [v60 doubleValue];
              v62 = v61;

              v63 = [v58 label];
              v64 = [v58 value];
              v65 = [v249 formattedPostalAddress:v64];
              v24[2](v24, v63, v65, 4, v62);
            }

            v55 = [v53 countByEnumeratingWithState:&v295 objects:v327 count:16];
          }

          while (v55);
        }

        a3 = v241;
        if ((v241 & 0x10) == 0)
        {
LABEL_17:
          if ((a3 & 8) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_53;
        }

LABEL_45:
        v293 = 0u;
        v294 = 0u;
        v291 = 0u;
        v292 = 0u;
        v66 = [v256 contact];
        v67 = [v66 postalAddresses];

        v68 = [v67 countByEnumeratingWithState:&v291 objects:v326 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v292;
          do
          {
            for (n = 0; n != v69; ++n)
            {
              if (*v292 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v291 + 1) + 8 * n);
              v73 = [v72 label];
              v74 = [v25 objectForKeyedSubscript:v73];
              [v74 doubleValue];
              v76 = v75;

              v77 = [v72 label];
              v78 = [v72 value];
              v79 = [v78 locality];
              v24[2](v24, v77, v79, 16, v76);
            }

            v69 = [v67 countByEnumeratingWithState:&v291 objects:v326 count:16];
          }

          while (v69);
        }

        a3 = v241;
        if ((v241 & 8) == 0)
        {
LABEL_18:
          if ((a3 & 0x20) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_61;
        }

LABEL_53:
        v289 = 0u;
        v290 = 0u;
        v287 = 0u;
        v288 = 0u;
        v80 = [v256 contact];
        v81 = [v80 postalAddresses];

        v82 = [v81 countByEnumeratingWithState:&v287 objects:v325 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v288;
          do
          {
            for (ii = 0; ii != v83; ++ii)
            {
              if (*v288 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v287 + 1) + 8 * ii);
              v87 = [v86 label];
              v88 = [v25 objectForKeyedSubscript:v87];
              [v88 doubleValue];
              v90 = v89;

              v91 = [v86 label];
              v92 = [v86 value];
              v93 = [v92 thoroughfare];
              v24[2](v24, v91, v93, 8, v90);
            }

            v83 = [v81 countByEnumeratingWithState:&v287 objects:v325 count:16];
          }

          while (v83);
        }

        a3 = v241;
        if ((v241 & 0x20) == 0)
        {
LABEL_19:
          if ((a3 & 0x100000) == 0)
          {
            goto LABEL_77;
          }

LABEL_69:
          v281 = 0u;
          v282 = 0u;
          v279 = 0u;
          v280 = 0u;
          v108 = [v256 contact];
          v109 = [v108 postalAddresses];

          v110 = [v109 countByEnumeratingWithState:&v279 objects:v323 count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v280;
            do
            {
              for (jj = 0; jj != v111; ++jj)
              {
                if (*v280 != v112)
                {
                  objc_enumerationMutation(v109);
                }

                v114 = *(*(&v279 + 1) + 8 * jj);
                v115 = [v114 label];
                v116 = [v25 objectForKeyedSubscript:v115];
                [v116 doubleValue];
                v118 = v117;

                v119 = [v114 label];
                v120 = [v114 value];
                v121 = [v120 country];
                v24[2](v24, v119, v121, 0x100000, v118);
              }

              v111 = [v109 countByEnumeratingWithState:&v279 objects:v323 count:16];
            }

            while (v111);
          }

          a3 = v241;
          goto LABEL_77;
        }

LABEL_61:
        v285 = 0u;
        v286 = 0u;
        v283 = 0u;
        v284 = 0u;
        v94 = [v256 contact];
        v95 = [v94 postalAddresses];

        v96 = [v95 countByEnumeratingWithState:&v283 objects:v324 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v284;
          do
          {
            for (kk = 0; kk != v97; ++kk)
            {
              if (*v284 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v100 = *(*(&v283 + 1) + 8 * kk);
              v101 = [v100 label];
              v102 = [v25 objectForKeyedSubscript:v101];
              [v102 doubleValue];
              v104 = v103;

              v105 = [v100 label];
              v106 = [v100 value];
              v107 = [v106 administrativeArea];
              v24[2](v24, v105, v107, 32, v104);
            }

            v97 = [v95 countByEnumeratingWithState:&v283 objects:v324 count:16];
          }

          while (v97);
        }

        a3 = v241;
        if ((v241 & 0x100000) != 0)
        {
          goto LABEL_69;
        }

LABEL_77:
        v257 = v24;
        if ((a3 & 0x200000) != 0)
        {
          v248 = v25;
          v277 = 0u;
          v278 = 0u;
          v275 = 0u;
          v276 = 0u;
          v122 = [v256 contact];
          v123 = [v122 postalAddresses];

          v243 = v123;
          v251 = [v123 countByEnumeratingWithState:&v275 objects:v322 count:16];
          if (v251)
          {
            v246 = *v276;
            do
            {
              for (mm = 0; mm != v251; mm = mm + 1)
              {
                if (*v276 != v246)
                {
                  objc_enumerationMutation(v243);
                }

                v125 = *(*(&v275 + 1) + 8 * mm);
                v126 = [v125 label];
                v127 = [v248 objectForKeyedSubscript:v126];
                [v127 doubleValue];
                v129 = v128;

                v130 = [v125 label];
                v131 = [v125 value];
                v132 = [v131 locality];
                v321[0] = v132;
                v133 = [v125 value];
                v134 = [v133 administrativeArea];
                v321[1] = v134;
                v135 = [v125 value];
                v136 = [v135 country];
                v321[2] = v136;
                v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v321 count:3];
                v138 = [v137 _pas_componentsJoinedByString:@"|"];
                v257[2](v257, v130, v138, 0x200000, v129);
              }

              v251 = [v243 countByEnumeratingWithState:&v275 objects:v322 count:16];
            }

            while (v251);
          }

          a3 = v241;
          v24 = v257;
          v25 = v248;
          if ((v241 & 0x40) == 0)
          {
LABEL_79:
            if ((a3 & 0x80) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_103;
          }
        }

        else if ((a3 & 0x40) == 0)
        {
          goto LABEL_79;
        }

        v273 = 0u;
        v274 = 0u;
        v271 = 0u;
        v272 = 0u;
        v139 = [v256 contact];
        v140 = [v139 postalAddresses];

        v141 = [v140 countByEnumeratingWithState:&v271 objects:v320 count:16];
        if (v141)
        {
          v142 = v141;
          v143 = *v272;
          do
          {
            for (nn = 0; nn != v142; ++nn)
            {
              if (*v272 != v143)
              {
                objc_enumerationMutation(v140);
              }

              v145 = *(*(&v271 + 1) + 8 * nn);
              v146 = [v145 label];
              v147 = [v25 objectForKeyedSubscript:v146];
              [v147 doubleValue];
              v149 = v148;

              v150 = [v145 label];
              v151 = [v145 value];
              v152 = [v151 postalCode];
              v24[2](v24, v150, v152, 64, v149);
            }

            v142 = [v140 countByEnumeratingWithState:&v271 objects:v320 count:16];
          }

          while (v142);
        }

        a3 = v241;
        if ((v241 & 0x80) == 0)
        {
LABEL_80:
          if ((a3 & 0x100) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_104;
        }

LABEL_103:
        v153 = [v256 contact];
        v154 = [v153 givenName];
        v24[2](v24, 0, v154, 128, 0.0);

        if ((a3 & 0x100) == 0)
        {
LABEL_81:
          if ((a3 & 0x200) == 0)
          {
            goto LABEL_82;
          }

          goto LABEL_105;
        }

LABEL_104:
        v155 = [v256 contact];
        v156 = [v155 familyName];
        v24[2](v24, 0, v156, 256, 0.0);

        if ((a3 & 0x200) == 0)
        {
LABEL_82:
          if ((a3 & 0x400000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_106;
        }

LABEL_105:
        v157 = [v256 contact];
        v158 = [v157 localizedFullName];
        v24[2](v24, 0, v158, 512, 0.0);

        if ((a3 & 0x400000) == 0)
        {
LABEL_83:
          if ((a3 & 0x400) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_107;
        }

LABEL_106:
        v159 = [v256 contact];
        v160 = [v159 nickname];
        v24[2](v24, 0, v160, 0x400000, 0.0);

        if ((a3 & 0x400) == 0)
        {
LABEL_84:
          if ((a3 & 0x800) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_108;
        }

LABEL_107:
        v161 = [v256 contact];
        v162 = [v161 organizationName];
        v24[2](v24, 0, v162, 1024, 0.0);

        if ((a3 & 0x800) == 0)
        {
LABEL_85:
          if ((a3 & 0x2000) == 0)
          {
            goto LABEL_123;
          }

LABEL_113:
          v269 = 0u;
          v270 = 0u;
          v267 = 0u;
          v268 = 0u;
          v169 = [v256 contact];
          v170 = [v169 socialProfiles];

          v247 = v170;
          v171 = [v170 countByEnumeratingWithState:&v267 objects:v319 count:16];
          if (v171)
          {
            v172 = v171;
            v252 = *v268;
            do
            {
              for (i1 = 0; i1 != v172; ++i1)
              {
                v174 = v25;
                if (*v268 != v252)
                {
                  objc_enumerationMutation(v247);
                }

                v175 = *(*(&v267 + 1) + 8 * i1);
                v176 = objc_autoreleasePoolPush();
                v177 = [v175 value];
                v178 = [v175 label];
                v179 = [v178 lowercaseString];
                v180 = [v245 lowercaseString];
                v181 = [v179 isEqualToString:v180];

                if (v181)
                {
                  v182 = [@"@" stringByAppendingString:v177];

                  v177 = v182;
                }

                v24 = v257;
                v25 = v174;
                v183 = [v175 label];
                v24[2](v24, v183, v177, 0x2000, 0.0);

                objc_autoreleasePoolPop(v176);
              }

              v172 = [v247 countByEnumeratingWithState:&v267 objects:v319 count:16];
            }

            while (v172);
          }

          v184 = objc_opt_new();
          v240 = v184;
          a3 = v241;
          goto LABEL_123;
        }

LABEL_108:
        v163 = [v256 contact];
        v164 = [v163 birthday];
        v165 = [v249 formattedBirthday:v164];

        if ([v165 length])
        {
          v24[2](v24, 0, v165, 2048, 0.0);
        }

        v166 = [v256 contact];
        v167 = [v166 nonGregorianBirthday];
        v168 = [v249 formattedBirthday:v167];

        if ([v168 length])
        {
          v24[2](v24, 0, v168, 2048, 0.0);
        }

        if ((a3 & 0x2000) != 0)
        {
          goto LABEL_113;
        }

LABEL_123:
        v185 = pp_contacts_log_handle();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
        {
          *v315 = 138412546;
          v316 = v234;
          v317 = 2112;
          v318 = v240;
          _os_log_debug_impl(&dword_23224A000, v185, OS_LOG_TYPE_DEBUG, "labelAndValueForPrediction: strong: %@  weak: %@", v315, 0x16u);
        }

        if ([v234 count])
        {
          v186 = v234;
        }

        else
        {
          v186 = v240;
        }

        v187 = v186;

        objc_autoreleasePoolPop(context);
        if ([v187 count])
        {
          v261 = 0u;
          v262 = 0u;
          v259 = 0u;
          v260 = 0u;
          v253 = v187;
          v188 = [v253 countByEnumeratingWithState:&v259 objects:v313 count:16];
          if (v188)
          {
            v189 = v188;
            v250 = v187;
            v258 = *v260;
            do
            {
              for (i2 = 0; i2 != v189; ++i2)
              {
                if (*v260 != v258)
                {
                  objc_enumerationMutation(v253);
                }

                v191 = *(*(&v259 + 1) + 8 * i2);
                v192 = [v256 contact];
                v193 = [v192 localizedFullName];

                [v256 score];
                v195 = v194;
                [v191 scoreBoost];
                v197 = v195 * (v196 + 1.0);
                v198 = MEMORY[0x277D3A478];
                v199 = [v191 label];
                v200 = v199;
                if (v199)
                {
                  v201 = v199;
                }

                else
                {
                  v201 = &stru_284759D38;
                }

                v202 = [v191 value];
                v203 = [v191 fields];
                v204 = [v256 contact];
                v205 = [v204 identifier];
                BYTE2(v225) = v255;
                BYTE1(v225) = a6;
                LOBYTE(v225) = 0;
                v206 = [v198 quickTypeItemWithLabel:v201 value:v202 name:v193 date:0 fields:v203 originatingBundleID:0 originatingWebsiteURL:v197 predictionAge:0 shouldAggregate:-1 flags:v225 score:v205 source:? sourceIdentifier:?];

                if (v206)
                {
                  [v244 addObject:v206];
                }

                else
                {
                  v207 = pp_contacts_log_handle();
                  if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_23224A000, v207, OS_LOG_TYPE_ERROR, "failed to create quick type item for contact", buf, 2u);
                  }

                  [v242 push:2];
                }
              }

              v189 = [v253 countByEnumeratingWithState:&v259 objects:v313 count:16];
            }

            while (v189);
            a3 = v241;
            v208 = v239;
            v187 = v250;
          }

          else
          {
            v208 = v239;
          }

          v209 = v253;
        }

        else
        {
          v209 = pp_contacts_log_handle();
          if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
          {
            v210 = [v256 contact];
            v211 = [v210 identifier];
            *buf = 138412802;
            v330 = v211;
            v331 = 2112;
            v332 = v233;
            v333 = 2048;
            v334 = v228;
            _os_log_impl(&dword_23224A000, v209, OS_LOG_TYPE_INFO, "contact %@ did not have field: %@: %lu", buf, 0x20u);
          }

          v208 = v239;
        }

        objc_autoreleasePoolPop(v238);
      }

      v232 = [obj countByEnumeratingWithState:&v263 objects:v314 count:16];
    }

    while (v232);
  }

  if (![obj count] || objc_msgSend(v244, "count"))
  {
    if ((a3 & 1) == 0)
    {
LABEL_155:
      v212 = v244;
      goto LABEL_163;
    }

LABEL_159:
    if (v233)
    {
      v214 = &__block_literal_global_13;
    }

    else
    {
      v214 = &__block_literal_global_11;
    }

    v212 = deduplicateQuickTypeItems(v244, &__block_literal_global_92, &__block_literal_global_95_8342, v214);

LABEL_163:
    if (a3 >= 2)
    {
      if (v233)
      {
        v215 = &__block_literal_global_13;
      }

      else
      {
        v215 = &__block_literal_global_11;
      }

      v216 = deduplicateQuickTypeItems(v212, &__block_literal_global_97_8343, &__block_literal_global_99_8344, v215);

      v212 = v216;
    }

    goto LABEL_168;
  }

  if (a3)
  {
    [v242 push:10];
    if ((a3 & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_159;
  }

  [v242 push:8];
  v212 = v244;
LABEL_168:
  [v212 sortWithOptions:16 usingComparator:&__block_literal_global_21];
  v217 = pp_contacts_log_handle();
  if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
  {
    v218 = [v212 count];
    *buf = 134217984;
    v330 = v218;
    _os_log_impl(&dword_23224A000, v217, OS_LOG_TYPE_INFO, "people quick type item count: %lu", buf, 0xCu);
  }

  if ([v212 count] <= a5)
  {
    v221 = v212;
  }

  else
  {
    v219 = objc_autoreleasePoolPush();
    v220 = [v212 subarrayWithRange:{0, a5}];
    v221 = [v220 mutableCopy];

    v222 = pp_contacts_log_handle();
    if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
    {
      v223 = [v221 count];
      *buf = 134217984;
      v330 = v223;
      _os_log_impl(&dword_23224A000, v222, OS_LOG_TYPE_INFO, "people quick type item count trimmed to limit: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v219);
  }

  v213 = v221;

LABEL_176:

  return v213;
}

void ___labelAndValueForContactFields_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v19 = a2;
  v9 = a3;
  if (v9)
  {
    v10 = PPCollapseWhitespaceAndStrip();
    v11 = [v10 length];

    if (v11)
    {
      v12 = [*(a1 + 32) matchFromLabel:*(a1 + 40) toLabel:v19];
      v13 = v19;
      if (v13)
      {
        v14 = v13;
        v15 = [*(a1 + 48) formattedStringForLabel:v13];
      }

      else
      {
        v15 = 0;
      }

      if (v12 == 2)
      {
        v16 = 56;
      }

      else
      {
        if (v12 != 1)
        {
LABEL_11:

          goto LABEL_12;
        }

        v16 = 64;
      }

      v17 = *(a1 + v16);
      v18 = [PPQuickTypeLabeledValue labeledValueWithLabel:v15 value:v9 scoreBoost:a4 fields:a5];
      [v17 addObject:v18];

      goto LABEL_11;
    }
  }

LABEL_12:
}

id deduplicateQuickTypeItems(void *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v26 = a3;
  v24 = a4;
  v9 = objc_opt_new();
  if ([v7 count] == 1)
  {
    v10 = v7;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v7;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = v8[2](v8, v15);
          if (v16)
          {
            v17 = v26[2](v26, v16, v9);
            if (v17)
            {
              v18 = [v9 objectForKeyedSubscript:v17];
              v19 = v24[2](v24, v18, v15);
              [v9 setObject:v19 forKeyedSubscript:v16];

              if (([v16 isEqualToString:v17] & 1) == 0)
              {
                [v9 removeObjectForKey:v17];
              }
            }

            else
            {
              [v9 setObject:v15 forKeyedSubscript:v16];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [v9 allValues];
    objc_autoreleasePoolPop(v20);
    v10 = [v21 mutableCopy];

    v7 = v23;
  }

  return v10;
}

uint64_t __PPQuickTypeItemsForContacts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277D3A578];
  [v4 score];
  v8 = v7;
  [v5 score];
  v10 = [v6 reverseCompareDouble:v8 withDouble:v9];
  if (!v10)
  {
    v11 = [v4 source];
    v12 = [v5 source];
    if (v11 != 1 || v12 == 1)
    {
      if (v12 != 1 || v11 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

id __deduplicateGenericQuickTypeItems_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v5 = v4;
  }

  return v5;
}

id __deduplicateGenericQuickTypeItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 value];
  v5 = [v4 lowercaseString];

  objc_autoreleasePoolPop(v3);

  return v5;
}

id __deduplicatePhoneQuickTypeItems_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v4 containsString:{v12, v15}] & 1) != 0 || (objc_msgSend(v12, "containsString:", v4))
        {
          v13 = v12;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  objc_autoreleasePoolPop(v6);

  return v13;
}

id __deduplicatePhoneQuickTypeItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 fields])
  {
    v6 = [v2 value];
    v5 = PPRemovePhoneExtensionAndNonDigits(v6);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [v2 value];
    v5 = [v4 lowercaseString];

    objc_autoreleasePoolPop(v3);
  }

  return v5;
}

id preferredQuickTypeItemByLabelAndScore_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 label];
  if ([v6 length])
  {
    v7 = [v5 label];
    v8 = [v7 length];

    if (!v8)
    {
      v9 = v4;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = [v5 label];
  if ([v10 length])
  {
    v11 = [v4 label];
    v12 = [v11 length];

    if (!v12)
    {
      v9 = v5;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = preferredQuickTypeItemByScore_block_invoke(v13, v4, v5);
LABEL_10:
  v14 = v9;

  return v14;
}

void *preferredQuickTypeItemByScore_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 source] != 1 || (v6 = v4, objc_msgSend(v5, "source") == 1))
  {
    if ([v5 source] != 1 || (v6 = v5, objc_msgSend(v4, "source") == 1))
    {
      [v4 score];
      v8 = v7;
      [v5 score];
      if (v8 < v9)
      {
        v6 = v5;
      }

      else
      {
        v6 = v4;
      }
    }
  }

  v10 = v6;

  return v6;
}

id PPRelatedNamesForContact(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v18 = v1;
    v19 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v1 contactRelations];
    v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v22)
    {
      goto LABEL_16;
    }

    v21 = *v24;
    while (1)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v23 + 1) + 8 * i);
        v4 = objc_autoreleasePoolPush();
        v5 = [v3 value];
        v6 = [v5 name];
        if (v6)
        {
          v7 = v6;
          v8 = [v3 value];
          v9 = [v8 name];
          v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v11 = [v9 stringByTrimmingCharactersInSet:v10];
          v12 = [v11 isEqualToString:&stru_284759D38];

          if (v12)
          {
            goto LABEL_14;
          }

          v5 = [v3 value];
          v13 = [v5 name];
          v14 = [v3 label];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = @"unlabeled";
          }

          [v19 setObject:v13 forKey:v16];
        }

LABEL_14:
        objc_autoreleasePoolPop(v4);
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v22)
      {
LABEL_16:

        v1 = v18;
        goto LABEL_18;
      }
    }
  }

  v19 = 0;
LABEL_18:

  return v19;
}

id PPStreetNamesForContact(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v16 = v1;
    v17 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v1 postalAddresses];
    v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v2)
    {
      goto LABEL_13;
    }

    v3 = v2;
    v4 = *v20;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 value];
        v9 = [v8 street];
        if (v9)
        {
          v10 = v9;
          v11 = [v6 value];
          v12 = [v11 street];
          v13 = [v12 isEqualToString:&stru_284759D38];

          if (v13)
          {
            goto LABEL_11;
          }

          v8 = [v6 value];
          v14 = [v8 street];
          [v17 addObject:v14];
        }

LABEL_11:
        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v3)
      {
LABEL_13:

        v1 = v16;
        goto LABEL_15;
      }
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

id PPCityNamesForContact(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v15 = v1;
    v16 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [v1 postalAddresses];
    v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v19)
    {
      goto LABEL_13;
    }

    v18 = *v21;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v20 + 1) + 8 * i);
        v4 = objc_autoreleasePoolPush();
        v5 = [v3 value];
        v6 = [v5 city];
        if (v6)
        {
          v7 = v6;
          v8 = [v3 value];
          v9 = [v8 city];
          v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v11 = [v9 stringByTrimmingCharactersInSet:v10];
          v12 = [v11 isEqualToString:&stru_284759D38];

          if (v12)
          {
            goto LABEL_11;
          }

          v5 = [v3 value];
          v13 = [v5 city];
          [v16 addObject:v13];
        }

LABEL_11:
        objc_autoreleasePoolPop(v4);
      }

      v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v19)
      {
LABEL_13:

        v1 = v15;
        goto LABEL_15;
      }
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

void __PPKeysToFetchPeople_block_invoke()
{
  v11[16] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = *MEMORY[0x277CBD000];
  v11[0] = *MEMORY[0x277CBD068];
  v11[1] = v1;
  v2 = *MEMORY[0x277CBCFF8];
  v11[2] = *MEMORY[0x277CBD058];
  v11[3] = v2;
  v3 = *MEMORY[0x277CBD078];
  v11[4] = *MEMORY[0x277CBD070];
  v11[5] = v3;
  v4 = *MEMORY[0x277CBCFC0];
  v11[6] = *MEMORY[0x277CBD098];
  v11[7] = v4;
  v5 = *MEMORY[0x277CBD090];
  v11[8] = *MEMORY[0x277CBD0C8];
  v11[9] = v5;
  v6 = *MEMORY[0x277CBCF90];
  v11[10] = *MEMORY[0x277CBD040];
  v11[11] = v6;
  v7 = *MEMORY[0x277CBD080];
  v11[12] = *MEMORY[0x277CBD138];
  v11[13] = v7;
  v11[14] = *MEMORY[0x277CBD160];
  v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v11[15] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:16];
  v10 = PPKeysToFetchPeople__pasExprOnceResult;
  PPKeysToFetchPeople__pasExprOnceResult = v9;

  objc_autoreleasePoolPop(v0);
}

id PPFavoriteContacts()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  pthread_mutex_lock(&favoritesLock);
  v1 = objc_alloc(MEMORY[0x277CBDAF8]);
  v2 = PPSharedCNContactStore();
  v3 = [v1 initWithContactStore:v2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 entries];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 contactProperty];
        v12 = [v11 contact];

        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277D3A358]) initWithContactsContact:v12];
          [v0 addObject:v13];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  pthread_mutex_unlock(&favoritesLock);

  return v0;
}

id PPContactMeCardFromSource()
{
  v0 = PPSharedCNContactStore();
  v1 = PPKeysToFetchPeople();
  v8 = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch:v1 error:&v8];
  v3 = v8;

  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x277D3A358]) initWithContactsContact:v2];
  }

  else
  {
    v5 = pp_contacts_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "failed to load Me card from contacts framework", v7, 2u);
    }

    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"CN_CS", [v3 code]);
    v4 = 0;
  }

  return v4;
}

void sub_2323188D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2323193A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232319944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8559(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23231B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23231C470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23231D518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23231E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23231F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

void sub_23231FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_232320E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8842(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232322804(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_232324640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9057(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232324D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232325C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232327288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9232(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232327498(void *a1)
{
  v3 = objc_begin_catch(a1);
  v4 = *(*(v2 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *v1 = 1;
  objc_end_catch();
  JUMPOUT(0x232327470);
}

void sub_2323279C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PPM2NamedEntitiesFilteredReadFrom(uint64_t a1, void *a2)
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

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2TopicsPerDonationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 16;
          goto LABEL_53;
        }

        if (v13 != 6)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 20;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2FeedbackAtKReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v54 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v54 & 0x7F) << v33;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_79:
        v48 = 28;
LABEL_92:
        *(a1 + v48) = v20;
        goto LABEL_93;
      }

      if (v13 != 5)
      {
        if (v13 != 6)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_93;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v51 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v51 & 0x7F) << v21;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_87;
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

LABEL_87:
        v48 = 16;
        goto LABEL_92;
      }

      v46 = PBReaderReadString();
      v47 = *(a1 + 8);
      *(a1 + 8) = v46;

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v53 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v53 & 0x7F) << v27;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
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

LABEL_75:
        v48 = 32;
        break;
      case 2:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v52 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v52 & 0x7F) << v40;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_91:
        v48 = 24;
        break;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v55 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v55 & 0x7F) << v14;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_83;
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

LABEL_83:
        v48 = 20;
        break;
      default:
        goto LABEL_60;
    }

    goto LABEL_92;
  }

  return [a2 hasError] ^ 1;
}