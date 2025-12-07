uint64_t _PayloadScannerReadBytes(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  while (1)
  {
    v3 = *(a1 + 56);
    if (v3 >= *(a1 + 64))
    {
      break;
    }

    *(a1 + 56) = v3 + 1;
    *a2 = *v3;
LABEL_3:
    ++a2;
    if (!--a3)
    {
      return 1;
    }
  }

  v4 = a1;
  v5 = a2;
  v6 = a3;
  NextChar = _PayloadScannerReadNextChar(a1, a2);
  a2 = v5;
  a3 = v6;
  v8 = NextChar;
  a1 = v4;
  if (v8)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t PayloadScannerReadVInt64(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = 0;
  v1 = *(a1 + 56);
  if (v1 >= *(a1 + 64))
  {
    v15 = &v30;
    v16 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30))
    {
      goto LABEL_55;
    }

    a1 = v16;
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v1 + 1;
    LOBYTE(v30) = *v1;
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    v15 = (&v30 + 1);
    v22 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 1))
    {
      goto LABEL_55;
    }

    a1 = v22;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    BYTE1(v30) = *v2;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_56;
    }
  }

  v3 = *(a1 + 56);
  if (v3 >= *(a1 + 64))
  {
    v15 = &v30 + 1;
    v23 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 2))
    {
      goto LABEL_55;
    }

    a1 = v23;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v3 + 1;
    BYTE2(v30) = *v3;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_56;
    }
  }

  v4 = *(a1 + 56);
  if (v4 >= *(a1 + 64))
  {
    v15 = (&v30 + 3);
    v24 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 3))
    {
      goto LABEL_55;
    }

    a1 = v24;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v4 + 1;
    BYTE3(v30) = *v4;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v5 = *(a1 + 56);
  if (v5 >= *(a1 + 64))
  {
    v15 = &v30 + 2;
    v25 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 4))
    {
      goto LABEL_55;
    }

    a1 = v25;
    if ((v30 & 0x8000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v5 + 1;
    BYTE4(v30) = *v5;
    if ((v30 & 0x8000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v6 = *(a1 + 56);
  if (v6 >= *(a1 + 64))
  {
    v15 = (&v30 + 5);
    v26 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 5))
    {
      goto LABEL_55;
    }

    a1 = v26;
    if ((v30 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v6 + 1;
    BYTE5(v30) = *v6;
    if ((v30 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v7 = *(a1 + 56);
  if (v7 >= *(a1 + 64))
  {
    v15 = &v30 + 3;
    v27 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 6))
    {
      goto LABEL_55;
    }

    a1 = v27;
    if ((v30 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v7 + 1;
    BYTE6(v30) = *v7;
    if ((v30 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v8 = *(a1 + 56);
  if (v8 >= *(a1 + 64))
  {
    v15 = (&v30 + 7);
    v28 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v30 + 7))
    {
      goto LABEL_55;
    }

    a1 = v28;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v8 + 1;
    HIBYTE(v30) = *v8;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v9 = *(a1 + 56);
  if (v9 >= *(a1 + 64))
  {
    v15 = &v31;
    v29 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31))
    {
      goto LABEL_55;
    }

    a1 = v29;
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v9 + 1;
    LOBYTE(v31) = *v9;
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  v10 = *(a1 + 56);
  if (v10 < *(a1 + 64))
  {
    *(a1 + 56) = v10 + 1;
    HIBYTE(v31) = *v10;
    if (v31 < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

  v15 = (&v31 + 1);
  if (!_PayloadScannerReadNextChar(a1, &v31 + 1))
  {
LABEL_55:
    *v15 = 0;
    goto LABEL_56;
  }

  if (v31 < 0)
  {
LABEL_21:
    v11 = __si_assert_copy_extra_2708(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 329, "i < 10", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

LABEL_56:
  v17 = 0;
  result = 0;
  v19 = &v30;
  do
  {
    v20 = *v19++;
    result |= (v20 & 0x7F) << v17;
    if ((v20 & 0x80) == 0)
    {
      break;
    }

    v21 = v17 == 63;
    v17 += 7;
  }

  while (!v21);
  return result;
}

uint64_t PayloadScannerReadVInt32(uint64_t a1)
{
  v20[0] = 0;
  v19 = 0;
  v1 = *(a1 + 56);
  if (v1 >= *(a1 + 64))
  {
    v7 = &v19;
    v8 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19))
    {
      goto LABEL_43;
    }

    a1 = v8;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v1 + 1;
    LOBYTE(v19) = *v1;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_11;
    }
  }

  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    v7 = (&v19 + 1);
    v16 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19 + 1))
    {
      goto LABEL_43;
    }

    a1 = v16;
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    BYTE1(v19) = *v2;
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 56);
  if (v3 >= *(a1 + 64))
  {
    v7 = (&v19 + 2);
    v17 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19 + 2))
    {
      goto LABEL_43;
    }

    a1 = v17;
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v3 + 1;
    BYTE2(v19) = *v3;
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 56);
  if (v4 < *(a1 + 64))
  {
    *(a1 + 56) = v4 + 1;
    HIBYTE(v19) = *v4;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = (&v19 + 3);
  v18 = a1;
  if (!_PayloadScannerReadNextChar(a1, &v19 + 3))
  {
LABEL_43:
    *v7 = 0;
    goto LABEL_11;
  }

  a1 = v18;
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v5 = *(a1 + 56);
  if (v5 < *(a1 + 64))
  {
    *(a1 + 56) = v5 + 1;
    v20[0] = *v5;
    if ((v20[0] & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_39:
    v12 = __si_assert_copy_extra_2708(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 342, "i < 5", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  v7 = v20;
  if (!_PayloadScannerReadNextChar(a1, v20))
  {
    goto LABEL_43;
  }

  if ((v20[0] & 0x80) != 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  result = v19;
  if (v19 < 0)
  {
    if (SBYTE1(v19) < 0)
    {
      if (SBYTE2(v19) < 0)
      {
        if (SHIBYTE(v19) < 0)
        {
          if ((v20[0] & 0x80000000) != 0)
          {
            v9 = __si_assert_copy_extra_2708(0);
            v10 = v9;
            v11 = "";
            if (v9)
            {
              v11 = v9;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v11);
            free(v10);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          return ((HIBYTE(v19) & 0x7F) << 21) | (v20[0] << 28) | ((BYTE2(v19) & 0x7F) << 14) | ((BYTE1(v19) & 0x7F) << 7) | v19 & 0x7Fu;
        }

        else
        {
          return ((BYTE2(v19) & 0x7F) << 14) | (HIBYTE(v19) << 21) | ((BYTE1(v19) & 0x7F) << 7) | v19 & 0x7Fu;
        }
      }

      else
      {
        return ((BYTE1(v19) & 0x7F) << 7) | (BYTE2(v19) << 14) | v19 & 0x7Fu;
      }
    }

    else
    {
      return v19 & 0x7F | (BYTE1(v19) << 7);
    }
  }

  return result;
}

uint64_t PayloadPulsesWriteBytesFromScanner(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = result;
  v7 = *(a2 + 24);
  if (a3 < v7)
  {
    v8 = *(a2 + 48);
LABEL_4:
    *(a2 + 56) = v8;
    *(a2 + 64) = v8;
    v9 = v8;
    v7 = a3;
    *(a2 + 24) = a3;
    goto LABEL_6;
  }

  v8 = *(a2 + 48);
  if (v7 + *(a2 + 64) - v8 < a3)
  {
    goto LABEL_4;
  }

  v9 = v8 + a3 - v7;
  *(a2 + 56) = v9;
LABEL_6:
  if (v7 + v9 - v8 != a3)
  {
    v20 = __si_assert_copy_extra_2708(0);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (a4)
  {
    while (!*(v6 + 60))
    {
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      if (v11 - v10 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11 - v10;
      }

      if (v11 == v10)
      {
        goto LABEL_9;
      }

      v13 = *(v6 + 48);
      v14 = *(a2 + 56);
      if ((*(a2 + 64) - v14) < v12)
      {
        result = _PayloadScannerReadBytes(a2, (v13 + v10), v12);
        if ((result & 1) == 0)
        {
          if (!*(a2 + 72))
          {
            v17 = __si_assert_copy_extra_2708(*(a2 + 16));
            v18 = v17;
            v19 = "";
            if (v17)
            {
              v19 = v17;
            }

            __message_assert("%s:%u: failed assertion '%s' %s offset: %lld end: %lld", "CIPayloadCompact.c", 493, "false", v19, *(a2 + 24) + *(a2 + 56) - *(a2 + 48), *(a2 + 32));
            free(v18);
            if (__valid_fsp(*(a2 + 16)))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          return result;
        }
      }

      else
      {
        result = memcpy((v13 + v10), v14, v12);
        *(a2 + 56) += v12;
      }

      v15 = *(v6 + 40);
      v16 = *(v6 + 32) + v12;
      *(v6 + 32) = v16;
      if (v16 == v15)
      {
LABEL_9:
        result = PayloadPulsesWrite(v6);
      }

      v4 -= v12;
      if (!v4)
      {
        return result;
      }
    }
  }

  return result;
}

void *PayloadScannerSkipPositionsData(void *result)
{
  v18 = 0;
  while (1)
  {
    v1 = result[7];
    if (v1 < result[8])
    {
      break;
    }

    v7 = result;
    result = _PayloadScannerReadNextChar(result, &v18);
    if (!result)
    {
      return result;
    }

    result = v7;
    v2 = v18;
    if (!v18)
    {
      goto LABEL_4;
    }

LABEL_6:
    if ((v2 & 0x80) != 0)
    {
      if (v2 >= 0xC0)
      {
        if (v2 >= 0xE0)
        {
          if (v2 >= 0xF0)
          {
            if (v2 >= 0xF8)
            {
              if (v2 == 255)
              {
                v4 = 8;
              }

              else
              {
                v4 = 7;
              }

              if (v2 < 0xFE)
              {
                v4 = 6;
              }

              if (v2 < 0xFC)
              {
                v4 = 5;
              }
            }

            else
            {
              v4 = 4;
            }
          }

          else
          {
            v4 = 3;
          }
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = 1;
      }

      v6 = result[7];
      v5 = result[8];
      if (v5 < v6 + v4)
      {
        v9 = result[3];
        v10 = result[6];
        v11 = v4 + v6 + v9 - v10;
        v12 = v11 - v9;
        if (v11 >= v9 && v9 + v5 - v10 >= v11)
        {
          v13 = v10 + v12;
          result[7] = v10 + v12;
        }

        else
        {
          result[7] = v10;
          result[8] = v10;
          v13 = v10;
          v9 = v11;
          result[3] = v11;
        }

        if (v9 - v10 + v13 != v11)
        {
          v14 = __si_assert_copy_extra_2708(0);
          v15 = v14;
          v16 = "";
          if (v14)
          {
            v16 = v14;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v16);
          free(v15);
          if (__valid_fs(-1))
          {
            v17 = 2989;
          }

          else
          {
            v17 = 3072;
          }

          *v17 = -559038737;
          abort();
        }
      }

      else
      {
        result[7] = v6 + v4;
      }
    }
  }

  result[7] = v1 + 1;
  v2 = *v1;
  v18 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v3 = result[7];
  if (v3 < result[8])
  {
    result[7] = v3 + 1;
    v2 = *v3;
    v18 = v2;
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = _PayloadScannerReadNextChar(result, &v18);
  if (result)
  {
    result = v8;
    v2 = v18;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t PayloadScannerFirstPostingIfLink(void *a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  VInt64 = PayloadScannerReadVInt64(a1);
  if (VInt64)
  {
    VInt32 = PayloadScannerReadVInt32(a1);
    if (a1[3] + VInt32 + a1[7] - a1[6] <= a1[4])
    {
      goto LABEL_6;
    }

    v15 = __si_assert_copy_extra_2708(0);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 757, "PayloadScannerPosition(s) + remaining <= s->end", v17);
LABEL_13:
    free(v16);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = PayloadScannerReadVInt64(a1);
  *a2 = 1;
  *(a2 + 4) = v9 >> 1;
  if ((v9 & 1) == 0)
  {
    v10 = PayloadScannerReadVInt32(a1);
    *a2 = v10;
    if (!v10)
    {
      v14 = PayloadScannerReadVInt32(a1);
      if (v14 < 3)
      {
        v12 = v14;
        VInt32 = 0;
        goto LABEL_7;
      }

      v18 = __si_assert_copy_extra_2708(0);
      v16 = v18;
      v19 = "";
      if (v18)
      {
        v19 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 767, "_type >= 0 && _type <= 2", v19);
      goto LABEL_13;
    }
  }

  VInt32 = 0;
LABEL_6:
  v12 = 0;
LABEL_7:
  *a3 = VInt32;
  *a4 = VInt64;
  return v12;
}

uint64_t packPostingChunkForSingleDocIDOfType(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v6 = writeVInt64(a1, 0, a2);
    v7 = writeVInt64(a1, v6, a2);
    if (a3 >> 28)
    {
      v10 = &a1[v7];
      *v10 = a3 | 0x80;
      v10[1] = (a3 >> 7) | 0x80;
      v10[2] = (a3 >> 14) | 0x80;
      v10[3] = (a3 >> 21) | 0x80;
      v9 = v7 + 5;
      v10[4] = a3 >> 28;
    }

    else if (a3 >= 0x200000)
    {
      v11 = &a1[v7];
      *v11 = a3 | 0x80;
      v11[1] = (a3 >> 7) | 0x80;
      v11[2] = (a3 >> 14) | 0x80;
      v9 = v7 + 4;
      v11[3] = a3 >> 21;
    }

    else
    {
      v8 = &a1[v7];
      if (a3 >= 0x4000)
      {
        *v8 = a3 | 0x80;
        v8[1] = (a3 >> 7) | 0x80;
        v9 = v7 + 3;
        v8[2] = a3 >> 14;
      }

      else if (a3 >= 0x80)
      {
        *v8 = a3 | 0x80;
        v9 = v7 + 2;
        v8[1] = a3 >> 7;
      }

      else
      {
        v9 = v7 + 1;
        *v8 = a3;
      }
    }
  }

  else if (a2 >> 28)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = (a2 >> 14) | 0x80;
    a1[3] = (a2 >> 21) | 0x80;
    a1[4] = a2 >> 28;
    v9 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = (a2 >> 14) | 0x80;
    a1[3] = a2 >> 21;
    v9 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = a2 >> 14;
    v9 = 3;
  }

  else if (a2 >= 0x80)
  {
    *a1 = a2 | 0x80;
    a1[1] = a2 >> 7;
    v9 = 2;
  }

  else
  {
    *a1 = a2;
    v9 = 1;
  }

  a1[v9] = 0;
  return v9 + 1;
}

uint64_t scratch_file_grow(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8) + a2;
  if (*a1 >= v3)
  {
    return 1;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 != -1)
  {
    munmap(v6, v2);
    v2 = *a1;
    v3 = *(a1 + 8) + a2;
  }

  *(a1 + 24) = -1;
  do
  {
    v2 *= 2;
  }

  while (v2 < v3);
  if (_fd_ftruncate(*(a1 + 16), v2) == -1)
  {
    *(a1 + 32) = *__error();
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      *__error() = v9;
      close(*(a1 + 16));
      v2 = 0;
      result = 0;
      *(a1 + 16) = -1;
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
    v14 = 136315906;
    v15 = "scratch_file_grow";
    v16 = 1024;
    v17 = 1946;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v2;
    v12 = "%s:%d: ftruncate err:%d size:%d";
LABEL_19:
    _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 0x1Eu);
    goto LABEL_15;
  }

  v8 = mmap(0, v2, 3, 1025, *(a1 + 16), 0);
  *(a1 + 24) = v8;
  if (v8 == -1)
  {
    *(a1 + 32) = *__error();
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = *(a1 + 32);
    v14 = 136315906;
    v15 = "scratch_file_grow";
    v16 = 1024;
    v17 = 1955;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = v2;
    v12 = "%s:%d: mmap err:%d size:%d";
    goto LABEL_19;
  }

  result = 1;
LABEL_16:
  *a1 = v2;
  return result;
}

char *PositionRunInfoListAdd(char **a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  result = *a1;
  if (v6 == v7)
  {
    v9 = 2 * v6;
    *(a1 + 2) = v9;
    result = reallocf(result, 16 * v9);
    *a1 = result;
    if (!result)
    {
      v11 = __si_assert_copy_extra_2708(0);
      v12 = v11;
      v13 = "";
      if (v11)
      {
        v13 = v11;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 939, "list->items", v13);
      free(v12);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v6 = *(a1 + 3);
  }

  *(a1 + 3) = v6 + 1;
  v10 = &result[16 * v6];
  *v10 = a2;
  *(v10 + 1) = a3;
  a1[2] += a3;
  return result;
}

uint64_t PayloadReorderInfoCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void PayloadReorderInfoDestroyScanner(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        free(v2);
        *(v1 + 48) = 0;
      }
    }
  }
}

void PositionRunInfoListFree(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

void PayloadReorderInfoFree(void **a1)
{
  if (a1)
  {
    free(*a1);
  }
}

uint64_t postingsOffsetCompare(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = 0;
  v6 = *a2 > *a1 && v4 >= 2;
  if (v6)
  {
    v7 = *a2;
    do
    {
      ++v5;
      v6 = v7 >= 3;
      v8 = v7 == 3;
      v7 >>= 1;
    }

    while (!v8 && v6);
  }

  v9 = *a3;
  v6 = *a3 >= v3;
  v8 = *a3 == v3;
  v10 = 0;
  if (!v8 && v6 && v9 >= 2)
  {
    v12 = *a3;
    do
    {
      ++v10;
      v6 = v12 >= 3;
      v8 = v12 == 3;
      v12 >>= 1;
    }

    while (!v8 && v6);
  }

  v13 = v4 > v9;
  if (v5 > v10)
  {
    v13 = -1;
  }

  if (v4 >= v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v5 >= v10)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

void CICompactPayloadsCtxFree(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    _fd_unlink_with_origin(v2, 0);
    fd_release(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _fd_unlink_with_origin(v3, 0);
    fd_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    free(v4);
    *(a1 + 192) = 0;
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
  free(*(a1 + 64));
  *(a1 + 64) = 0;
  free(*(a1 + 104));
  *(a1 + 104) = 0;
  free(*(a1 + 128));
  *(a1 + 128) = 0;
}

char *PRPommesStemWordWithCString(const char *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = strlen(a1);
  v7 = v6;
  if (v6 > a2)
  {
    return 0;
  }

  v8 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  strcpy(v8, a1);
  v57 = 0;
  v9 = v7 - 1;
  if (v7 < 3)
  {
    goto LABEL_159;
  }

  v56 = v8;
  LODWORD(v57) = v7 - 1;
  if (v8[v9] == 115)
  {
    if (ends(&v56, "\x04sses") || ends(&v56, "\x02's"))
    {
      v10 = v57 - 2;
LABEL_8:
      LODWORD(v57) = v10;
      goto LABEL_9;
    }

    if (ends(&v56, "\x03ies"))
    {
      v27 = HIDWORD(v57);
      v56[SHIDWORD(v57) + 1] = 105;
      v10 = v27 + 1;
      goto LABEL_8;
    }

    if (v8[v57 - 1] != 115)
    {
      v10 = v57 - 1;
      goto LABEL_8;
    }
  }

LABEL_9:
  if (ends(&v56, "\x02s'"))
  {
    v9 = v57 - 2;
LABEL_11:
    LODWORD(v57) = v9;
    goto LABEL_12;
  }

  if (ends(&v56, "\x03eed"))
  {
    if (m(&v56) >= 1)
    {
      v9 = v57 - 1;
      goto LABEL_11;
    }

    goto LABEL_50;
  }

  if (!ends(&v56, "\x02ed") && !ends(&v56, "\x03ing") || v57 < 0)
  {
LABEL_50:
    v9 = v57;
    goto LABEL_12;
  }

  v18 = 0;
  while (1)
  {
    v19 = 0;
    for (i = v18; ; --i)
    {
      HIDWORD(v22) = v56[i] - 97;
      LODWORD(v22) = HIDWORD(v22);
      v21 = v22 >> 1;
      if (v21 != 12)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_46;
      }

      v19 ^= 1u;
    }

    if (v21 <= 0xA && ((1 << v21) & 0x495) != 0)
    {
      v24 = 0;
      goto LABEL_47;
    }

LABEL_46:
    v24 = 1;
LABEL_47:
    if (v24 == v19)
    {
      break;
    }

    v16 = v18++ == HIDWORD(v57);
    if (v16)
    {
      goto LABEL_50;
    }
  }

  LODWORD(v57) = HIDWORD(v57);
  if (ends(&v56, "\x02at"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 29793;
LABEL_172:
    *(v29 + 1) = v30;
    v9 = v28 + 3;
    goto LABEL_11;
  }

  if (ends(&v56, "\x02bl"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 27746;
    goto LABEL_172;
  }

  if (ends(&v56, "\x02iz"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 31337;
    goto LABEL_172;
  }

  v9 = v57;
  v43 = v57 - 1;
  if (v57 < 1)
  {
    goto LABEL_204;
  }

  v44 = v56[v57];
  if (v44 != v56[v57 - 1])
  {
    goto LABEL_204;
  }

  v45 = 0;
  v46 = v57;
  while (1)
  {
    HIDWORD(v48) = v44 - 97;
    LODWORD(v48) = HIDWORD(v48);
    v47 = v48 >> 1;
    if (v47 != 12)
    {
      break;
    }

    if (!v46)
    {
      v50 = 1;
      goto LABEL_191;
    }

    LOBYTE(v44) = v56[--v46];
    v45 ^= 1u;
  }

  v49 = v47 > 0xA || ((1 << v47) & 0x495) == 0;
  v50 = v49;
LABEL_191:
  if (v50 == v45)
  {
LABEL_204:
    if (m(&v56) == 1 && cvc(&v56, v9))
    {
      v51 = HIDWORD(v57);
      v56[SHIDWORD(v57) + 1] = 101;
      v9 = v51 + 1;
      goto LABEL_11;
    }

    goto LABEL_50;
  }

  LODWORD(v57) = v57 - 1;
  v52 = v8[v43] - 108;
  v53 = v52 > 0xE;
  v54 = (1 << v52) & 0x4081;
  if (!v53 && v54 != 0)
  {
    goto LABEL_11;
  }

  v9 = v43;
LABEL_12:
  if (v9 >= 1)
  {
    if (ends(&v56, "\x01y") && (v57 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = 0;
        for (j = v11; ; --j)
        {
          HIDWORD(v15) = v56[j] - 97;
          LODWORD(v15) = HIDWORD(v15);
          v14 = v15 >> 1;
          if (v14 != 12)
          {
            break;
          }

          if (!j)
          {
            goto LABEL_25;
          }

          v12 ^= 1u;
        }

        v16 = v14 > 0xA || ((1 << v14) & 0x495) == 0;
        if (!v16)
        {
          v17 = 0;
          goto LABEL_26;
        }

LABEL_25:
        v17 = 1;
LABEL_26:
        if (v17 == v12)
        {
          break;
        }

        v16 = v11++ == HIDWORD(v57);
        if (v16)
        {
          goto LABEL_52;
        }
      }

      v56[v57] = 105;
    }

LABEL_52:
    v25 = v56[v57 - 1];
    if (v25 <= 0x6B)
    {
      if (v56[v57 - 1] <= 0x64u)
      {
        if (v25 != 97)
        {
          if (v25 != 99)
          {
            goto LABEL_96;
          }

          if (ends(&v56, "\x04enci"))
          {
            v26 = "\x04ence";
          }

          else
          {
            if (!ends(&v56, "\x04anci"))
            {
              goto LABEL_96;
            }

            v26 = "\x04ance";
          }

          goto LABEL_94;
        }

        if (!ends(&v56, "\aational"))
        {
          if (!ends(&v56, "\x06tional"))
          {
            goto LABEL_96;
          }

          v26 = "\x04tion";
          goto LABEL_94;
        }

        goto LABEL_78;
      }

      if (v25 != 101)
      {
        if (v25 != 103 || !ends(&v56, "\x04logi"))
        {
          goto LABEL_96;
        }

        v26 = "\x03log";
        goto LABEL_94;
      }

      if (!ends(&v56, "\x04izer"))
      {
        goto LABEL_96;
      }

LABEL_82:
      v26 = "\x03ize";
      goto LABEL_94;
    }

    if (v56[v57 - 1] <= 0x72u)
    {
      if (v25 != 108)
      {
        if (v25 != 111)
        {
          goto LABEL_96;
        }

        if (!ends(&v56, "\aization"))
        {
          if (!ends(&v56, "\x05ation") && !ends(&v56, "\x04ator"))
          {
            goto LABEL_96;
          }

LABEL_78:
          v26 = "\x03ate";
          goto LABEL_94;
        }

        goto LABEL_82;
      }

      if (ends(&v56, "\x03bli"))
      {
LABEL_80:
        v26 = "\x03ble";
        goto LABEL_94;
      }

      if (ends(&v56, "\x04alli"))
      {
        goto LABEL_93;
      }

      if (ends(&v56, "\x05entli"))
      {
        v26 = "\x03ent";
        goto LABEL_94;
      }

      if (ends(&v56, "\x03eli"))
      {
        v26 = "\x01e";
LABEL_94:
        if (m(&v56) >= 1)
        {
          v31 = *v26;
          v32 = HIDWORD(v57);
          memmove(&v56[SHIDWORD(v57) + 1], v26 + 1, *v26);
          LODWORD(v57) = v32 + v31;
        }

LABEL_96:
        v33 = v56[v57];
        if (v33 <= 0x6B)
        {
          if (v33 != 101)
          {
            if (v33 != 105 || !ends(&v56, "\x05iciti"))
            {
              goto LABEL_115;
            }

            goto LABEL_109;
          }

          if (!ends(&v56, "\x05icate"))
          {
            if (!ends(&v56, "\x05ative"))
            {
              if (!ends(&v56, "\x05alize"))
              {
                goto LABEL_115;
              }

              v35 = "\x02al";
              goto LABEL_113;
            }

            goto LABEL_112;
          }

LABEL_109:
          v35 = "\x02ic";
          goto LABEL_113;
        }

        if (v33 == 108)
        {
          if (ends(&v56, "\x04ical"))
          {
            goto LABEL_109;
          }

          v34 = "\x03ful";
        }

        else
        {
          if (v33 != 115)
          {
            goto LABEL_115;
          }

          v34 = "\x04ness";
        }

        if (!ends(&v56, v34))
        {
          goto LABEL_115;
        }

LABEL_112:
        v35 = &byte_1C2C00804;
LABEL_113:
        if (m(&v56) >= 1)
        {
          v36 = *v35;
          v37 = HIDWORD(v57);
          memcpy(&v56[SHIDWORD(v57) + 1], v35 + 1, *v35);
          LODWORD(v57) = v37 + v36;
        }

LABEL_115:
        if (a3)
        {
          step5(&v56);
LABEL_158:
          step5(&v56);
          v9 = v57;
          goto LABEL_159;
        }

        v38 = v56[v57 - 1];
        if (v38 > 0x6E)
        {
          if (v56[v57 - 1] > 0x74u)
          {
            switch(v38)
            {
              case 'u':
                v39 = "\x03ous";
                break;
              case 'v':
                v39 = "\x03ive";
                break;
              case 'z':
                v39 = "\x03ize";
                break;
              default:
                goto LABEL_158;
            }

            goto LABEL_155;
          }

          if (v38 == 111)
          {
            if (ends(&v56, "\x03ion") && (v57 & 0x8000000000000000) == 0 && v56[HIDWORD(v57)] - 115 < 2)
            {
              goto LABEL_156;
            }

            v39 = "\x02ou";
            goto LABEL_155;
          }

          if (v38 != 115)
          {
            if (v38 != 116)
            {
              goto LABEL_158;
            }

            if (!ends(&v56, "\x03ate"))
            {
              v39 = "\x03iti";
              goto LABEL_155;
            }

            goto LABEL_156;
          }

          v39 = "\x03ism";
        }

        else
        {
          if (v56[v57 - 1] <= 0x68u)
          {
            switch(v38)
            {
              case 'a':
                v39 = "\x02al";
                break;
              case 'c':
                if (ends(&v56, "\x04ance"))
                {
                  goto LABEL_156;
                }

                v39 = "\x04ence";
                break;
              case 'e':
                v39 = "\x02er";
                break;
              default:
                goto LABEL_158;
            }

            goto LABEL_155;
          }

          if (v38 != 105)
          {
            if (v38 == 108)
            {
              if (ends(&v56, "\x04able"))
              {
                goto LABEL_156;
              }

              v39 = "\x04ible";
              goto LABEL_155;
            }

            if (v38 != 110)
            {
              goto LABEL_158;
            }

            if (!ends(&v56, "\x03ant") && !ends(&v56, "\x05ement") && !ends(&v56, "\x04ment"))
            {
              v39 = "\x03ent";
              goto LABEL_155;
            }

LABEL_156:
            if (m(&v56) >= 2)
            {
              LODWORD(v57) = HIDWORD(v57);
            }

            goto LABEL_158;
          }

          v39 = "\x02ic";
        }

LABEL_155:
        if (!ends(&v56, v39))
        {
          goto LABEL_158;
        }

        goto LABEL_156;
      }

      v42 = "\x05ousli";
LABEL_183:
      if (!ends(&v56, v42))
      {
        goto LABEL_96;
      }

      v26 = "\x03ous";
      goto LABEL_94;
    }

    if (v25 == 115)
    {
      if (!ends(&v56, "\x05alism"))
      {
        if (!ends(&v56, "\aiveness"))
        {
          if (ends(&v56, "\afulness"))
          {
            v26 = "\x03ful";
            goto LABEL_94;
          }

          v42 = "\aousness";
          goto LABEL_183;
        }

LABEL_85:
        v26 = "\x03ive";
        goto LABEL_94;
      }
    }

    else
    {
      if (v25 != 116)
      {
        goto LABEL_96;
      }

      if (!ends(&v56, "\x05aliti"))
      {
        if (!ends(&v56, "\x05iviti"))
        {
          if (!ends(&v56, "\x06biliti"))
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        goto LABEL_85;
      }
    }

LABEL_93:
    v26 = "\x02al";
    goto LABEL_94;
  }

LABEL_159:
  v40 = v9 + 1;
  v8[v40] = 0;
  if ((isStopWord(v8) & 1) != 0 || v40 >= v7 + a3)
  {
    free(v8);
    return 0;
  }

  return v8;
}

const char *getClientInfo(const __CFString *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 28);
  if ((v4 & 0x40) != 0)
  {
    v5 = "Photos";
    v6 = "client: Photos";
  }

  else if ((v4 & 0x200) != 0)
  {
    v5 = "SearchTool";
    v6 = "client: SearchTool";
  }

  else if ((v4 & 0x400) != 0)
  {
    v5 = "SpotlightUI";
    v6 = "client: SpotlightUI";
  }

  else if ((v4 & 0x10) != 0)
  {
    v5 = "Mail";
    v6 = "client: Mail";
  }

  else if ((v4 & 0x20) != 0)
  {
    v5 = "Messages";
    v6 = "client: Messages";
  }

  else if ((v4 & 0x80) != 0)
  {
    v5 = "Settings";
    v6 = "client: Settings";
  }

  else
  {
    if ((v4 & 8) == 0)
    {
LABEL_9:
      v5 = "Unk";
      v6 = "client: Unk";
      goto LABEL_20;
    }

    if (a1 && CFStringCompare(a1, @"com.apple.pommesctl", 0) == kCFCompareEqualTo)
    {
      v5 = "pommesctl";
      v6 = "client: pommesctl";
    }

    else
    {
      v5 = "Ctl";
      v6 = "client: Ctl";
    }
  }

LABEL_20:
  if (a3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void configureContext(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const __CFArray *a6, uint64_t a7, const __CFString *a8, CFArrayRef theArray)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 32) = a7;
  *(a1 + 28) = *(a1 + 28) & 0xFFFFFFFE | a3;
  if (a3)
  {
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      v13 = Count;
      v14 = 0;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (ValueAtIndex)
        {
          v17 = ValueAtIndex;
          if (CFStringCompare(ValueAtIndex, @"com.apple.mobilemail", 0) && CFStringCompare(v17, @"com.apple.email.SearchIndexer", 0))
          {
            if (CFStringCompare(v17, @"com.apple.mobilesafari", 0) && CFStringCompare(v17, @"com.argos.BlendABApp2", 0))
            {
              if (CFStringCompare(v17, @"com.apple.Preferences", 0))
              {
                if (CFStringCompare(v17, @"com.apple.mobileslideshow", 0))
                {
                  if (CFStringCompare(v17, @"com.apple.mobilecal", 0))
                  {
                    if (CFStringCompare(v17, @"com.apple.MobileSMS", 0))
                    {
                      if (CFStringCompare(v17, @"com.apple.CloudDocs.MobileDocumentsFileProvider", 0) && CFStringCompare(v17, @"com.apple.CloudDocs.iCloudDriveFileProvider", 0) && CFStringCompare(v17, @"com.apple.FileProvider.LocalStorage", 0))
                      {
                        if (CFStringCompare(v17, @"com.apple.mobilenotes", 0))
                        {
                          if (CFStringCompare(v17, @"com.apple.reminders", 0))
                          {
                            if (CFStringCompare(v17, @"com.apple.spotlight.events", 0))
                            {
                              v18 = (CFStringCompare(v17, @"com.apple.Passbook", 0) == kCFCompareEqualTo) << 11;
                            }

                            else
                            {
                              v18 = 256;
                            }
                          }

                          else
                          {
                            v18 = 64;
                          }
                        }

                        else
                        {
                          v18 = 128;
                        }
                      }

                      else
                      {
                        v18 = 32;
                      }
                    }

                    else
                    {
                      v18 = 16;
                    }
                  }

                  else
                  {
                    v18 = 8;
                  }
                }

                else
                {
                  v18 = 4;
                }
              }

              else
              {
                v18 = 1024;
              }
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
        }

        else
        {
          v18 = 0;
        }

        v14 |= v18;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (bundleIDTypeMaskForMDS_onceToken != -1)
    {
      dispatch_once(&bundleIDTypeMaskForMDS_onceToken, &__block_literal_global_11115);
    }

    if (bundleIDTypeMaskForMDS_bundleIDType)
    {
      v14 = 544;
    }

    else
    {
      v14 = 0;
    }
  }

  *(a1 + 24) = v14;
  if (a8)
  {
    if (CFStringCompare(a8, @"com.apple.plphotosctl", 0) == kCFCompareEqualTo || CFStringCompare(a8, @"com.apple.pommesctl", 0) == kCFCompareEqualTo)
    {
      v20 = *(a1 + 28);
LABEL_47:
      *(a1 + 28) = v20 | 8;
      v21 = CFStringCompare(a8, @"com.apple.pommesctl", 0) == kCFCompareEqualTo;
      goto LABEL_61;
    }

    v19 = CFStringCompare(a8, @"com.apple.search", 0);
    v20 = *(a1 + 28);
    if (v19 == kCFCompareEqualTo)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = *(a1 + 28);
  }

  *(a1 + 28) = v20 & 0xFFFFFFF7;
  v22 = isPhotosClient(a8);
  v21 = 0;
  if (v22)
  {
    v23 = 64;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 28) & 0xFFFFFFBF | v23;
  *(a1 + 28) = v24;
  if (!v22)
  {
    if (a8)
    {
      if (CFStringHasPrefix(a8, @"com.apple.omniSearch") || CFStringHasPrefix(a8, @"com.apple.intelligenceflow"))
      {
        v25 = *(a1 + 28);
LABEL_57:
        v21 = 0;
        v26 = v25 | 0x200;
LABEL_60:
        *(a1 + 28) = v26;
        goto LABEL_61;
      }

      HasPrefix = CFStringHasPrefix(a8, @"com.apple.ondeviceeval");
      v25 = *(a1 + 28);
      if (HasPrefix)
      {
        goto LABEL_57;
      }

      *(a1 + 28) = v25 & 0xFFFFFDFF;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a8);
      if (MutableCopy)
      {
        v52 = MutableCopy;
        CFStringLowercase(MutableCopy, 0);
        if (CFStringHasPrefix(v52, @"com.apple.spotlight"))
        {
          CFRelease(v52);
          v53 = *(a1 + 28);
LABEL_119:
          v21 = 0;
          v26 = v53 | 0x400;
          goto LABEL_60;
        }

        v60 = CFStringHasPrefix(v52, @"com.apple.search.framework");
        CFRelease(v52);
        v53 = *(a1 + 28);
        if (v60)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v53 = *(a1 + 28);
      }

      *(a1 + 28) = v53 & 0xFFFFFBFF;
      if (CFStringCompare(a8, @"com.apple.mobilemail", 0))
      {
        v54 = CFStringCompare(a8, @"com.apple.email.SearchIndexer", 0);
        v55 = *(a1 + 28);
        if (v54)
        {
          *(a1 + 28) = v55 & 0xFFFFFFEF;
          v56 = CFStringCompare(a8, @"com.apple.Preferences", 0);
          v57 = *(a1 + 28);
          if (v56 == kCFCompareEqualTo)
          {
            v21 = 0;
            v26 = v57 | 0x80;
            goto LABEL_60;
          }

          *(a1 + 28) = v57 & 0xFFFFFF7F;
          v58 = CFStringCompare(a8, @"com.apple.Passbook", 0);
          v59 = *(a1 + 28);
          if (v58 == kCFCompareEqualTo)
          {
            v21 = 0;
            v26 = v59 | 0x100;
            goto LABEL_60;
          }

          *(a1 + 28) = v59 & 0xFFFFFEFF;
          v27 = 32 * (CFStringCompare(a8, @"com.apple.MobileSMS", 0) == kCFCompareEqualTo);
          v28 = *(a1 + 28);
          goto LABEL_59;
        }
      }

      else
      {
        v55 = *(a1 + 28);
      }

      v21 = 0;
      v26 = v55 | 0x10;
      goto LABEL_60;
    }

    v27 = 0;
    v28 = v24 & 0xFFFFF86F;
LABEL_59:
    v21 = 0;
    v26 = v28 & 0xFFFFFFDF | v27;
    goto LABEL_60;
  }

LABEL_61:
  if (*(a1 + 24))
  {
    *(a1 + 28) = *(a1 + 28) & 0xFFFFDFFF | (((*(a1 + 24) >> 2) & 1) << 13);
    v29 = isPhotosClient(a8);
    if (v29)
    {
      v30 = 64;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a1 + 28) & 0xFFFFFFBF | v30;
    *(a1 + 28) = v31;
    if (v29)
    {
      return;
    }

    goto LABEL_73;
  }

  if (!v21)
  {
    if ((*(a1 + 29) & 2) == 0)
    {
      return;
    }

    *(a1 + 24) = 2047;
    v33 = *__error();
    v34 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v65 = a2;
      v66 = 2080;
      v67 = a5;
      v68 = 2112;
      v69 = theArray;
      _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Using union of all bundleIDTypes for processing un-supported bundles for SearchTool %@", buf, 0x20u);
    }

    *__error() = v33;
    v31 = *(a1 + 28);
LABEL_73:
    v32 = *(a1 + 24);
    if ((v31 & 8) != 0 && v32 == 4)
    {
      return;
    }

    goto LABEL_75;
  }

  v32 = 1;
  *(a1 + 24) = 1;
  v31 = *(a1 + 28);
LABEL_75:
  *(a1 + 26) = v32 & 0xFFFB;
  if (a4)
  {
    v35 = 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = v31 & 0xFFFFFFFB | v35;
  *(a1 + 28) = v36;
  if (a6)
  {
    v37 = (CFArrayGetCount(a6) > 0) << 11;
    v36 = *(a1 + 28);
    v32 = *(a1 + 24);
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 28) = v36 & 0xFFFF27FF | v37 & 0xFFFFAFFF | ((v32 != 4) << 15) | ((v32 & 1) << 12) & 0xBFFF | (((v32 >> 1) & 1) << 14);
  if (a6 && (v38 = CFArrayGetCount(a6)) != 0)
  {
    v39 = v38;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v38, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v39 >= 1)
    {
      for (j = 0; j != v39; ++j)
      {
        v42 = CFArrayGetValueAtIndex(a6, j);
        v43 = [v42 originalToken];
        if (v43)
        {
          v44 = v43;
          if (CFStringGetLength(v43))
          {
            if ([objc_msgSend(v42 "variations")])
            {
              CFDictionarySetValue(Mutable, v44, [v42 variations]);
            }
          }
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  *(a1 + 40) = Mutable;
  if (isLLMEnabled_onceToken != -1)
  {
    dispatch_once(&isLLMEnabled_onceToken, &__block_literal_global_27_11187);
  }

  v45 = *(a1 + 28);
  if (isLLMEnabled_ffStatus == 1 && (v45 & 0x200) != 0)
  {
    v46 = v45 | 0x20000;
  }

  else
  {
    *(a1 + 28) = v45 & 0xFFFDFFFF;
    if (isQUEnabled_onceToken != -1)
    {
      dispatch_once(&isQUEnabled_onceToken, &__block_literal_global_23_11183);
    }

    v47 = *(a1 + 28);
    if (isQUEnabled_ffStatus == 1)
    {
      v48 = 1880;
    }

    else
    {
      v48 = 1096;
    }

    if ((v47 & v48) != 0)
    {
      v49 = 0x10000;
    }

    else
    {
      v49 = 0;
    }

    v46 = v47 & 0xFFFEFFFF | v49;
  }

  *(a1 + 28) = v46;
}

void SQueueDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

void *SQueueDropData(void *a1, unint64_t a2)
{
  result = a1[3];
  if (!result)
  {
    __assert_rtn("SQueueDropData", "SlabQueue.c", 150, "squeue->firstSlab");
  }

  v5 = result[3];
  v6 = gSlabs;
  while (1)
  {
    if (a2 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    result[3] = v5 - v7;
    a1[1] -= v7;
    a1[5] += v7;
    if (!result[3] && result != a1[4])
    {
      v8 = result[1];
      a1[3] = v8;
      a1[5] = 0;
      if (v8)
      {
        *v8 = 0;
        v8 = a1[3];
        a1[5] = v8 + 4;
      }

      if (a1[2])
      {
        free(result);
        gSlabs = --v6;
        result = a1[3];
      }

      else
      {
        a1[2] = result;
        result = v8;
      }
    }

    a2 -= v7;
    if (!a2)
    {
      break;
    }

    v5 = result[3];
    if (!v5)
    {
      __assert_rtn("SQueueDropData", "SlabQueue.c", 182, "length == 0");
    }
  }

  if (!result)
  {
    if (!a1[1])
    {
      return result;
    }

LABEL_21:
    __assert_rtn("SQueueDropData", "SlabQueue.c", 179, "(squeue->firstSlab == NULL && squeue->totalSize == 0) || (squeue->firstSlab != NULL && squeue->firstSlab->availableToRead == 0 && squeue->totalSize == 0) || (squeue->firstSlab != NULL && squeue->firstSlab->availableToRead <= squeue->totalSize)");
  }

  v9 = result[3];
  if (v9 && v9 > a1[1])
  {
    goto LABEL_21;
  }

  return result;
}

void *SQueueOpenPushData(unsigned int *a1, unint64_t a2)
{
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && !*(v4 + 24))
  {
    result = (v4 + 32);
    goto LABEL_12;
  }

  if (!v3)
  {
    NewSlab = squeue_getNewSlab(a1, a2);
    NewSlab[3] = 0;
    *NewSlab = 0;
    NewSlab[1] = 0;
    *(a1 + 3) = NewSlab;
    *(a1 + 4) = NewSlab;
    result = NewSlab + 4;
LABEL_12:
    *(a1 + 5) = result;
    goto LABEL_13;
  }

  result = *(a1 + 6);
  if ((v3 - result + *(v3 + 16) + 32) >= a2)
  {
    return result;
  }

  v7 = squeue_getNewSlab(a1, a2);
  *(*(a1 + 4) + 8) = v7;
  v7[3] = 0;
  *v7 = *(a1 + 4);
  v7[1] = 0;
  *(a1 + 4) = v7;
  result = v7 + 4;
LABEL_13:
  *(a1 + 6) = result;
  return result;
}

_DWORD *squeue_getNewSlab(unsigned int *a1, unint64_t a2)
{
  result = *(a1 + 2);
  if (result && result[4] >= a2)
  {
    *(a1 + 2) = 0;
  }

  else
  {
    v4 = *a1;
    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    result = malloc_type_malloc(v5 + 32, 0x1020040CD42B41CuLL);
    result[4] = v5;
    ++gSlabs;
  }

  return result;
}

double SQueueEmpty(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = v2[1];
      if (a1[2])
      {
        free(v2);
        --gSlabs;
      }

      else
      {
        a1[2] = v2;
      }

      v2 = v4;
    }

    while (v4);
  }

  a1[1] = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

BOOL equalDBO(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v20[1024] = *MEMORY[0x1E69E9840];
  if (*v1 != *v2)
  {
    return 0;
  }

  if (*(v1 + 24) != *(v2 + 24))
  {
    return 0;
  }

  if (*(v1 + 32) != *(v2 + 32))
  {
    return 0;
  }

  if (*(v1 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v3 = *(v1 + 12);
  if (v3 != *(v2 + 12) || *(v2 + 40) != *(v1 + 40))
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  bzero(v20, 0x2000uLL);
  bzero(__base, 0x2000uLL);
  if (v3 < 0x31)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = v5 + 48;
    do
    {
      v9 = v7;
      v20[v7] = v8;
      v8 += *(v8 + 8) + 13;
      ++v7;
    }

    while (v8 < v5 + v3);
    v10 = v6 + 48;
    v11 = -1;
    v12 = __base;
    do
    {
      *v12++ = v10;
      v10 += *(v10 + 8) + 13;
      ++v11;
    }

    while (v10 < v6 + v3);
    if (v9 != v11)
    {
      return 0;
    }
  }

  v13 = v7;
  qsort_b(v20, v7, 8uLL, &__block_literal_global_14338);
  qsort_b(__base, v7, 8uLL, &__block_literal_global_14338);
  if (v7)
  {
    v14 = v20[0];
    v15 = __base[0];
    if (*v20[0] == *__base[0])
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = *(v14 + 2);
        if (v18 != *(v15 + 2))
        {
          break;
        }

        if (v14[1] != v15[1])
        {
          break;
        }

        if (*(v14 + 1) != *(v15 + 1))
        {
          break;
        }

        if (memcmp(v14 + 13, v15 + 13, v18))
        {
          break;
        }

        v16 = v17 >= v13;
        if (v13 == v17)
        {
          break;
        }

        v14 = v20[v17];
        v15 = __base[v17++];
      }

      while (*v14 == *v15);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v16;
}

_DWORD *getRawLocalizedUniquedField(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  string_and_length_for_id = get_string_and_length_for_id(a1, 4u, a2, a4);
  if (!string_and_length_for_id)
  {
    return 0;
  }

  v7 = *string_and_length_for_id;
  if (*string_and_length_for_id < 0)
  {
    if (v7 > 0xBF)
    {
      if (v7 > 0xDF)
      {
        if (v7 > 0xEF)
        {
          v7 = *(string_and_length_for_id + 1);
          v8 = 5;
          if (v7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v7 = ((v7 & 0xF) << 24) | (string_and_length_for_id[1] << 16) | (string_and_length_for_id[2] << 8) | string_and_length_for_id[3];
          v8 = 4;
          if (v7)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        v7 = ((v7 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        v8 = 3;
        if (v7)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v8 = 2;
      v7 = string_and_length_for_id[1] | ((v7 & 0x3F) << 8);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  v8 = 1;
  if (!*string_and_length_for_id)
  {
    return 0;
  }

LABEL_4:
  v9 = v8 + 1;
  v10 = &string_and_length_for_id[v8];
  v11 = string_and_length_for_id[v8];
  if (string_and_length_for_id[v8] < 0)
  {
    if (v11 > 0xBF)
    {
      if (v11 > 0xDF)
      {
        if (v11 > 0xEF)
        {
          v11 = *&string_and_length_for_id[v9];
          v9 = v8 + 5;
        }

        else
        {
          v11 = ((v11 & 0xF) << 24) | (string_and_length_for_id[v9] << 16) | (v10[2] << 8) | v10[3];
          v9 = v8 + 4;
        }
      }

      else
      {
        v11 = ((v11 & 0x1F) << 16) | (string_and_length_for_id[v9] << 8) | v10[2];
        v9 = v8 + 3;
      }
    }

    else
    {
      v12 = string_and_length_for_id[v9] | ((v11 & 0x3F) << 8);
      v9 = v8 + 2;
      v11 = v12;
    }
  }

  v13 = v9 - v8;
  v14 = v7 - v13;
  if (v7 < v13)
  {
    v17 = __si_assert_copy_extra_2708(*(a1 + 848));
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %s", "ldb.c", 334, "len >= (off1-off)", v19, "len >= (off1-off)");
    free(v18);
    if (__valid_fsp(*(a1 + 848)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v15 = string_and_length_for_id;
  if (v14 + 13 < 0x401 || (a3 = malloc_type_malloc(v14 + 13, 0x78D2615EuLL)) != 0)
  {
    *a3 = 9437195;
    a3[1] = v11;
    a3[2] = v14;
    memcpy(a3 + 13, &v15[v9], v14);
  }

  return a3;
}

void hexdumpDBOBuffer(uint64_t a1, unint64_t a2, __n128 a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](a3);
    bzero(v13, 0x32AuLL);
    v5 = 0;
    *&v6 = 136316418;
    v15 = v6;
    do
    {
      v7 = 0;
      v8 = v5;
      v5 += 400;
      if (v5 >= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = v5;
      }

      v10 = v8;
      do
      {
        sprintf(&v13[v7], "%02x", *(a1 + v10));
        v7 += 2;
        ++v10;
      }

      while (v10 < v9);
      v13[v7 & 0xFFFFFFFE] = 0;
      v11 = *__error();
      v12 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = v15;
        v17 = "hexdumpDBOBuffer";
        v18 = 1024;
        v19 = 1217;
        v20 = 2048;
        v21 = v8;
        v22 = 1024;
        v23 = v7 >> 1;
        v24 = 2048;
        v25 = a2;
        v26 = 2080;
        v27 = v13;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Corrupt DBO pos:%lu, sz:%d, total:%lu, data: 0x%s", buf, 0x36u);
      }

      *__error() = v11;
    }

    while (v5 < a2);
  }
}

uint64_t matchingCorruptObjMissingParentSysObj(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7, uint64_t a8)
{
  v95 = *MEMORY[0x1E69E9840];
  if (a4 != 76)
  {
    return 0;
  }

  result = 0;
  if (a6 == 111 && *a5 == 60)
  {
    if (*(a3 + 2) != 0x124B254AD435508 || *(a3 + 10) != 512)
    {
      return 0;
    }

    v76 = a7;
    v77 = a8;
    v13 = a1;
    id_for_field_locked = db2_get_id_for_field_locked(a1, "_kMDItemExternalID");
    if (id_for_field_locked - 1 >= 0x7F)
    {
      v31 = *__error();
      v32 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v79 = "matchingCorruptObjMissingParentSysObj";
        *&v79[8] = 1024;
        v80 = 1243;
        v81 = 1024;
        v82 = id_for_field_locked;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid extID_ID %u", buf, 0x18u);
      }

      v33 = __error();
      result = 0;
      *v33 = v31;
    }

    else
    {
      v15 = db2_get_id_for_field_locked(v13, "_kMDItemBundleID");
      v16 = v15;
      v17 = v15 - id_for_field_locked;
      if (v15 <= id_for_field_locked || v15 >= 0x80)
      {
        v34 = *__error();
        v35 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v79 = "matchingCorruptObjMissingParentSysObj";
          *&v79[8] = 1024;
          v80 = 1248;
          v81 = 1024;
          v82 = v16;
          v83 = 1024;
          v84 = id_for_field_locked;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid bunID_ID %u (%u)", buf, 0x1Eu);
        }

        v36 = __error();
        result = 0;
        *v36 = v34;
      }

      else
      {
        id_for_string = db2_get_id_for_string(*(v13 + 804), *(v13 + 888), "com.apple.searchd");
        if (id_for_string == -2)
        {
          v20 = *__error();
          v21 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: Creating uniqued value for searchd bundle", buf, 2u);
          }

          *__error() = v20;
          id_for_string = db_create_id_for_value(v13, "com.apple.searchd");
        }

        if (id_for_string >= 0xFFFFFFFE)
        {
          v22 = *__error();
          v23 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *v79 = "matchingCorruptObjMissingParentSysObj";
            *&v79[8] = 1024;
            v80 = 1258;
            v81 = 1024;
            v82 = id_for_string;
            _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid searchdBundle_ID %u", buf, 0x18u);
          }

          *__error() = v22;
        }

        v75 = v71;
        MEMORY[0x1EEE9AC00](v19);
        LOBYTE(v70[0]) = id_for_field_locked;
        strcpy(v70 + 1, "com.apple.spotlight.missingparent");
        BYTE4(v70[4]) = v17;
        BYTE5(v70[4]) = 18;
        *(&v24 + 1) = *"e.searchd";
        strcpy(&v70[4] + 6, "com.apple.searchd");
        if (*(a3 + 20) == v70[0] && *(a3 + 28) == (*"com.apple.spotlight.missingparent" >> 48) && *(a3 + 36) == v70[2] && *(a3 + 44) == (*"ght.missingparent" >> 48) && *(a3 + 52) == v70[4] && *(a3 + 60) == v70[5] && *(a3 + 68) == v70[6])
        {
          v37 = a2 + 3;
          v38 = a2[3] - 13;
          a2[3] = v38;
          if (v38 < 0x31)
          {
            v39 = 0;
LABEL_79:
            v53 = *__error();
            v54 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v79 = "matchingCorruptObjMissingParentSysObj";
              *&v79[8] = 1024;
              v80 = 1305;
              v81 = 1024;
              v82 = v39;
              v55 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch %d != two fields";
              v56 = v54;
              v57 = 24;
LABEL_85:
              _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
            }

LABEL_86:
            v69 = __error();
            result = 0;
            *v69 = v53;
          }

          else
          {
            v39 = 0;
            v74 = id_for_string < 0xFFFFFFFE;
            v40 = (a2 + 12);
            v71[1] = v77 + 16;
            *&v24 = 67109120;
            v73 = v24;
            *&v24 = 67109376;
            v72 = v24;
            do
            {
              if (v39 == 1)
              {
                if (*(v40 + 1) != v16 || *(v40 + 2) != 4 || *v40 != 11 || (v40[1] & 0x10) == 0 || *(v40 + 13) != 18)
                {
                  v53 = *__error();
                  v58 = _SILogForLogForCategory(7);
                  if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_86;
                  }

                  v59 = *(v40 + 1);
                  v60 = *(v40 + 2);
                  v61 = *v40;
                  v62 = v40[1];
                  v63 = *(v40 + 13);
                  *buf = 136317186;
                  *v79 = "matchingCorruptObjMissingParentSysObj";
                  *&v79[8] = 1024;
                  v80 = 1283;
                  v81 = 1024;
                  v82 = v59;
                  v83 = 1024;
                  v84 = id_for_field_locked;
                  v85 = 1024;
                  v86 = v60;
                  v87 = 1024;
                  v88 = v61;
                  v89 = 1024;
                  v90 = v62;
                  v91 = 1024;
                  v92 = v63;
                  v93 = 2048;
                  v94 = 18;
                  v55 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch second field %u,%u,%u,%u,%u,%u,%lu";
                  v56 = v58;
                  v57 = 64;
                  goto LABEL_85;
                }

                v41 = *__error();
                v42 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v73;
                  *v79 = v74;
                  _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: uniqued val: %d", buf, 8u);
                }

                *__error() = v41;
                if (id_for_string <= 0xFFFFFFFD)
                {
                  *(v40 + 13) = id_for_string;
                }

                else
                {
                  *v37 -= *(v40 + 2);
                  *(v40 + 2) = 18;
                  v43 = *v37 + 18;
                  *v37 = v43;
                  if (v43 >= a2[2])
                  {
                    v44 = *__error();
                    v45 = _SILogForLogForCategory(7);
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = a2[2];
                      v47 = *v37;
                      *buf = v72;
                      *v79 = v46;
                      *&v79[4] = 1024;
                      *&v79[6] = v47;
                      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: growing dbo from %u to %u", buf, 0xEu);
                    }

                    *__error() = v44;
                    v48 = *v37;
                    v49 = a2[2];
                    if (v49 <= v48)
                    {
                      v50 = 2 * v49;
                      do
                      {
                        v51 = v50;
                        v50 *= 2;
                      }

                      while (v51 <= v48);
                      if (v77)
                      {
                        v52 = (*(v77 + 16))(v77, a2);
                      }

                      else
                      {
                        v52 = malloc_type_realloc(a2, v51, 0x96D6F8AuLL);
                      }

                      a2 = v52;
                      v52[2] = v51;
                    }

                    *v76 = a2;
                  }

                  memcpy(v40 + 13, "com.apple.searchd", *(v40 + 2));
                  v40[1] &= ~0x10u;
                }
              }

              else if (!v39 && (*(v40 + 1) != id_for_field_locked || *(v40 + 2) != 34 || *v40 != 11 || (v40[1] & 0x10) != 0))
              {
                v53 = *__error();
                v64 = _SILogForLogForCategory(7);
                if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_86;
                }

                v65 = *(v40 + 1);
                v66 = *(v40 + 2);
                v67 = *v40;
                v68 = v40[1];
                *buf = 136316674;
                *v79 = "matchingCorruptObjMissingParentSysObj";
                *&v79[8] = 1024;
                v80 = 1278;
                v81 = 1024;
                v82 = v65;
                v83 = 1024;
                v84 = id_for_field_locked;
                v85 = 1024;
                v86 = v66;
                v87 = 1024;
                v88 = v67;
                v89 = 1024;
                v90 = v68;
                v55 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch first field %u,%u,%u,%u,%u";
                v56 = v64;
                v57 = 48;
                goto LABEL_85;
              }

              v40 = (v40 + *(v40 + 2) + 13);
              ++v39;
              v37 = a2 + 3;
            }

            while (v40 < (a2 + a2[3]));
            if (v39 != 2)
            {
              goto LABEL_79;
            }

            return 1;
          }
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

uint64_t _enumerate_dbo(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v9 = 0;
  for (i = 0; ; (*(a4 + 16))(a4, i, v9))
  {
    result = db_next_field(a1, a2, a3, &v11, &i, &v9);
    if (result != 35)
    {
      break;
    }
  }

  return result;
}

CFDictionaryRef decodeVector(const __CFAllocator *a1, CFIndex length, const UInt8 **a3, unint64_t a4, void *a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (&(*a3)[length] > a4)
  {
    return 0;
  }

  v10 = length;
  v12 = CFDataCreate(a1, *a3, length);
  *a3 += v10;
  *keys = xmmword_1E8198998;
  v16 = *off_1E81989A8;
  v17 = @"vec_version";
  values[0] = a5;
  values[1] = a6;
  values[3] = 0;
  values[4] = 0;
  values[2] = v12;
  v13 = CFDictionaryCreate(a1, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v12);
  return v13;
}

const char *_SIGetErrorString()
{
  result = __si_error_str_key;
  if (__si_error_str_key)
  {
    result = pthread_getspecific(__si_error_str_key);
  }

  if (!result)
  {
    return "";
  }

  return result;
}

const char *SIGetRebuildReason()
{
  result = __si_index_rebuild_reason_key;
  if (__si_index_rebuild_reason_key)
  {
    result = pthread_getspecific(__si_index_rebuild_reason_key);
  }

  if (!result)
  {
    return "Error: unknown";
  }

  return result;
}

void __si_set_rebuild_reason(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v3[0] = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a3, va);
  _si_set_rebuild_reason(v3[0], 1, 1);
  free(v3[0]);
}

void _si_load_error_from_file(unsigned int a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x20)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "_si_load_error_from_file";
      v37 = 1024;
      v38 = 145;
      v39 = 1024;
      v40 = a1;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: invalid pc_priority %u", buf, 0x18u);
    }

    *__error() = v3;
    return;
  }

  if ((sFetchedPCs & (1 << a1)) != 0)
  {
    return;
  }

  sFetchedPCs |= 1 << a1;
  v5 = fd_create_protected(a2, "errorFile", 0, 3u);
  if (v5)
  {
    v6 = v5;
    v7 = fd_lseek(v5, 0, 2);
    if (v7 < 0)
    {
      v8 = *__error();
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v36 = "_si_load_error_from_file";
        v37 = 1024;
        v38 = 169;
        v39 = 1024;
        v40 = a1;
        v41 = 1024;
        v42 = v8;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: (%u) lseek error on error file: %d", buf, 0x1Eu);
      }

      *__error() = v9;
      *__error() = v8;
      _si_set_error_from_file(0);
    }

    bzero(buf, 0x400uLL);
    if (v7 <= 1023)
    {
      v11 = 1023;
    }

    else
    {
      v11 = v7;
    }

    v12 = fd_pread(v6, buf, v11, 0);
    if (v12 < 0)
    {
      v20 = *__error();
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315906;
        v26 = "_si_load_error_from_file";
        v27 = 1024;
        v28 = 178;
        v29 = 1024;
        v30 = a1;
        v31 = 1024;
        LODWORD(v32) = v20;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: (%u) pread error on error file: %d", &v25, 0x1Eu);
      }

      *__error() = v21;
      *__error() = v20;
    }

    else
    {
      v13 = v12;
      if (v12 == v7)
      {
        v14 = buf;
LABEL_27:
        _si_set_error_from_file(v14);
        fd_release(v6);
        return;
      }

      v23 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 136316162;
        v26 = "_si_load_error_from_file";
        v27 = 1024;
        v28 = 182;
        v29 = 1024;
        v30 = a1;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        v34 = v7;
        _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: (%u) pread error on error file %lld != %lld", &v25, 0x2Cu);
      }

      *__error() = v23;
    }

    v14 = 0;
    goto LABEL_27;
  }

  v15 = *__error();
  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  v18 = v17;
  if (v15 == 2)
  {
    v19 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v17, v19))
    {
      *buf = 67109120;
      LODWORD(v36) = a1;
      _os_log_impl(&dword_1C278D000, v18, v19, "(%u) No error file", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v36 = "_si_load_error_from_file";
    v37 = 1024;
    v38 = 159;
    v39 = 1024;
    v40 = a1;
    v41 = 1024;
    v42 = v15;
    _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: (%u) Error opening error file: %d", buf, 0x1Eu);
  }

  *__error() = v16;
  *__error() = v15;
  _si_set_error_from_file(0);
}

void _si_set_error_from_file(const char *a1)
{
  if (__si_error_from_file_key)
  {
    v2 = pthread_getspecific(__si_error_from_file_key);
    v3 = __si_error_from_file_key;
    if (!a1)
    {
      v4 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    pthread_key_create(&__si_error_from_file_key, MEMORY[0x1E69E9B38]);
    v2 = 0;
    v3 = __si_error_from_file_key;
  }

  v4 = strdup(a1);
LABEL_7:
  if (pthread_setspecific(v3, v4) != -1)
  {

    free(v2);
  }
}

void *SIGetPreviousError()
{
  result = __si_error_from_file_key;
  if (__si_error_from_file_key)
  {
    return pthread_getspecific(__si_error_from_file_key);
  }

  return result;
}

void __si_write_error_to_file(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v31 = *MEMORY[0x1E69E9840];
  if (__si_error_str_key)
  {
    pthread_getspecific(__si_error_str_key);
    if (__si_error_str_key)
    {
      pthread_getspecific(__si_error_str_key);
    }
  }

  __s[0] = 0;
  va_copy(&__s[1], va);
  vasprintf(__s, "%s:%u: %s", va);
  _si_set_error_str(__s[0], 1);
  _si_load_error_from_file(a2, a3);
  v10 = fd_create_protected(a3, "errorFile", 513, 3u);
  v11 = v10;
  if (!v10)
  {
    v15 = *__error();
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v22 = "__si_write_error_to_file";
    v23 = 1024;
    v24 = 218;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    LODWORD(v28) = v15;
    v19 = "%s:%d: (%u) Could not open/create error file: %d";
LABEL_16:
    _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x1Eu);
    goto LABEL_17;
  }

  if ((fd_truncate(v10, 0) & 0x80000000) != 0)
  {
    v15 = *__error();
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v22 = "__si_write_error_to_file";
    v23 = 1024;
    v24 = 224;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    LODWORD(v28) = v15;
    v19 = "%s:%d: (%u) Could not truncate error file: %d";
    goto LABEL_16;
  }

  v12 = strlen(__s[0]);
  v13 = fd_pwrite(v11, __s[0], v12, 0);
  if (v13 != v12)
  {
    v14 = v13;
    v15 = *__error();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v22 = "__si_write_error_to_file";
        v23 = 1024;
        v24 = 235;
        v25 = 1024;
        v26 = a2;
        v27 = 2048;
        v28 = v14;
        v29 = 2048;
        v30 = v12;
        _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: (%u) Error writing to error file %lld != %lld", buf, 0x2Cu);
      }

      goto LABEL_18;
    }

    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "__si_write_error_to_file";
      v23 = 1024;
      v24 = 232;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      LODWORD(v28) = v15;
      v19 = "%s:%d: (%u) Error %d writing to error file";
      goto LABEL_16;
    }

LABEL_17:
    *__error() = v17;
LABEL_18:
    *__error() = v15;
  }

  fd_release(v11);
  free(__s[0]);
}

uint64_t _si_set_invalid_term_update_set()
{
  v1 = __si_invalid_term_update_set_key;
  if (!__si_invalid_term_update_set_key)
  {
    pthread_key_create(&__si_invalid_term_update_set_key, MEMORY[0x1E69E9B38]);
    v1 = __si_invalid_term_update_set_key;
    v0 = vars8;
  }

  return pthread_setspecific(v1, "\x01");
}

xpc_object_t __db2_read_query_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = strstr((*(a1 + 32) + 324), "Library/Spotlight/CoreSpotlight");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "invalid";
  }

  xpc_dictionary_set_string(empty, "name", v4);
  xpc_dictionary_set_uint64(empty, "pgoff", *(*(a1 + 40) + 2016));
  xpc_dictionary_set_uint64(empty, "pgsize", *(*(*(a1 + 40) + 16) + 44));
  xpc_dictionary_set_int64(empty, "signature", **(*(a1 + 40) + 2040));
  xpc_dictionary_set_uint64(empty, "size", *(*(*(a1 + 40) + 2040) + 4));
  xpc_dictionary_set_int64(empty, "used_bytes", *(*(*(a1 + 40) + 2040) + 8));
  xpc_dictionary_set_int64(empty, "flags", *(*(*(a1 + 40) + 2040) + 12));
  return empty;
}

void sdb2_die(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v14 = "sdb2_die";
    v15 = 1024;
    v16 = 418;
    v17 = 2080;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2080;
    v22 = a1 + 324;
    v23 = 2080;
    v24 = a2;
    _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %s:%d : %s : %s\n", buf, 0x36u);
  }

  *__error() = v8;
  v10 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
  v11 = v10;
  v12 = "";
  if (v10)
  {
    v12 = v10;
  }

  __message_assert("%s:%u: failed assertion '%s' %s %s:%d : %s : %s\n", "sdb2.c", 419, "0", v12, a3, a4, (a1 + 324), a2);
  free(v11);
  if (__valid_fsp(*(a1 + 840)))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

unsigned int *db2_swap_page(unsigned int *result)
{
  v1 = *result;
  if (*result == 1684172850 || v1 == 846226020)
  {
    v3 = result[3];
    if (v1 == 846226020)
    {
      if (v3 >> 28)
      {
        v4 = result[2];
        v5 = bswap32(v4);
        if (v5 < 0x21)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else if ((v3 & 0xF0) != 0)
    {
      v4 = result[2];
      v5 = v4;
      if (v4 < 0x21)
      {
LABEL_15:
        result[5] = bswap32(result[5]);
        v10 = bswap32(v1);
        v11 = result[1];
LABEL_17:
        *result = v10;
        result[1] = bswap32(v11);
        result[2] = bswap32(v4);
        result[3] = bswap32(v3);
        result[4] = bswap32(result[4]);
        return result;
      }

LABEL_12:
      v6 = result;
      v7 = result + 8;
      v8 = 32;
      do
      {
        *v7 = bswap32(*v7);
        v9 = strlen(v7 + 4) + 4;
        v7 = (v7 + v9);
        v8 += v9;
      }

      while (v8 < v5);
      result = v6;
      v1 = *v6;
      v4 = v6[2];
      v3 = v6[3];
      goto LABEL_15;
    }

    v10 = bswap32(v1);
    v11 = result[1];
    v4 = result[2];
    goto LABEL_17;
  }

  return result;
}

void _db2_unmap_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 816);
  if (v5)
  {
    v6 = *(v5 + 16);

    v6();
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v9 = dispatch_time(v5, 1000000000);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___db2_unmap_callback_block_invoke;
    v10[3] = &__block_descriptor_tmp_128_14612;
    v10[4] = a2;
    v10[5] = a3;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t _db2_synced_block_callback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 824);
  if (v2)
  {
    return (*(v2 + 16))(v2, a2);
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

char *db2_create_datastore_with_ctx(uint64_t a1)
{
  v132 = *MEMORY[0x1E69E9840];
  v110 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  if (sdb_map_zone_once != -1)
  {
    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }

  v5 = malloc_type_zone_calloc(sdb_map_zone, 0x1000uLL, 1uLL, 0x10A0040B82A6DE8uLL);
  if (!v5)
  {
    return v5;
  }

  bzero(v131, 0x400uLL);
  bzero(__dst, 0x400uLL);
  *(v5 + 246) = *(a1 + 20);
  if (fcntl(v110, 50, v131) < 0 || !v131[0])
  {
    __strlcpy_chk(v131, ".", 1024, 1024);
  }

  if (*v131 != 47)
  {
    __strlcat_chk();
  }

  __strlcat_chk();
  v6 = *(a1 + 16);
  v7 = strrchr(v2, 47);
  if (v7)
  {
    v8 = v7;
    strlcpy(__dst, v2, v7 - v2 + 2);
    strlcat(__dst, ".", 0x400uLL);
    v9 = v8 + 1;
  }

  else
  {
    strcpy(__dst, ".");
    v9 = v2;
  }

  strlcat(__dst, v9, 0x400uLL);
  v10 = v5 + 760;
  v11 = v6 << 13 >> 31;
  *(v5 + 105) = fd_create_protected(v110, v2, 1538, v11 & 3);
  v12 = fd_create_protected(v110, __dst, 1538, v11 & 3);
  *(v5 + 106) = v12;
  if (!*(v5 + 105) || !v12)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *__str = 136315906;
      *&__str[4] = "db2_create_datastore_with_ctx";
      *&__str[12] = 1024;
      *&__str[14] = 6268;
      v126 = 2080;
      v127 = v131;
      v128 = 2080;
      v129 = v20;
      v21 = "%s:%d: db2_create_datastore: ERR: Can't create file (%s : %s)\n";
      goto LABEL_124;
    }

    goto LABEL_63;
  }

  *(v12 + 28) |= 4u;
  __strlcpy_chk((v5 + 324), v131, 256, 256);
  *v5 = 1685287992;
  *(v5 + 1) = v3 | 0x10;
  *(v5 + 28) = 1;
  *(v5 + 9) = 4096;
  *(v5 + 11) = 0x4000;
  *(v5 + 3) = 12;
  *(v5 + 201) = (v3 >> 10) & 2 | v3 & 8 | (v3 >> 14) & 4 | (v3 >> 8) & 1 | (v3 >> 13) & 0x10;
  if (!((v3 >> 14) & 4 | (v3 >> 13) & 0x10) && sdb_string_zone_once != -1)
  {
    dispatch_once(&sdb_string_zone_once, &__block_literal_global_136);
  }

  if (sdb_map_zone_once != -1)
  {
    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }

  *(v5 + 99) = 0;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 584) = 0u;
  pthread_mutex_init((v5 + 584), 0);
  v13 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v13 = __THREAD_SLOT_KEY[0];
  }

  v109 = (v5 + 584);
  v108 = pthread_getspecific(v13);
  HIDWORD(v15) = qos_class_self() - 9;
  LODWORD(v15) = HIDWORD(v15);
  v14 = v15 >> 2;
  if (v14 > 6)
  {
    v16 = 0;
  }

  else
  {
    v16 = dword_1C2BFF8F0[v14];
  }

  v22 = pthread_mutex_lock(v109);
  if (!*(v5 + 96) && !*(v5 + 195) && (v5[796] & 1) == 0)
  {
    if (v16 > 5)
    {
LABEL_122:
      *(v5 + 96) = pthread_self();
      v23 = (v5 + 584);
      goto LABEL_30;
    }

    v83 = v16 - 6;
    v84 = &v5[16 * v16 + 648];
    while (!*v84)
    {
      v84 += 16;
      if (__CFADD__(v83++, 1))
      {
        goto LABEL_122;
      }
    }
  }

  v23 = (v5 + 584);
  db_rwlock_wait(v109, v16, 2);
LABEL_30:
  pthread_mutex_unlock(v23);
  if (v22)
  {
    v103 = *__error();
    v104 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315650;
      *&__str[4] = "db2_create_datastore_with_ctx";
      *&__str[12] = 1024;
      *&__str[14] = 6299;
      v126 = 1024;
      LODWORD(v127) = v22;
      _os_log_error_impl(&dword_1C278D000, v104, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", __str, 0x18u);
    }

    *__error() = v103;
    sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 6299);
  }

  v107 = v108 - 1;
  if (v108)
  {
    v106 = CIOnThreadCleanUpPush(v108 - 1, db_write_unlock, v23);
  }

  else
  {
    v106 = -1;
  }

  *(v5 + 116) = db_cache_alloc(v5);
  v24 = malloc_type_zone_calloc(sdb_map_zone, 0x4000uLL, 1uLL, 0x10000408AA14F5FuLL);
  if (v24)
  {
    v25 = v24;
    if ((*(v5 + 1) & 0x100) != 0)
    {
      v26 = 1684172082;
    }

    else
    {
      v26 = 1684172081;
    }

    *v24 = v26;
    v24[1] = 0x4000;
    _add_dirty_chunk(v5, *(v5 + 9) >> *(v5 + 3), 0x4000u, 0);
    if (v5[4] < 0)
    {
      v27 = *(v5 + 107);
      v28 = v27[2];
      v29 = *v27;
      if (*v27 == 846029412 || (v30 = v27[2], v29 == 829252196))
      {
        v30 = bswap32(v28);
      }

      if (v30 >= 1)
      {
        v31 = (v27 + 7);
        do
        {
          v31[-1] = bswap64(*&v31[-1]);
          *v31 = vrev32_s8(*v31);
          v31 += 2;
          --v30;
        }

        while (v30);
      }

      v32 = bswap32(v27[1]);
      *v27 = bswap32(v29);
      v27[1] = v32;
      v27[2] = bswap32(v28);
      v27[4] = bswap32(v27[4]);
    }

    v33 = *(v5 + 9);
    if ((v33 & 0xFFF) != 0)
    {
      v99 = __si_assert_copy_extra_3233(0, -1);
      v100 = v99;
      v101 = "";
      if (v99)
      {
        v101 = v99;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 99, "(offset & ((1 << 12)-1)) == 0", v101);
      free(v100);
      if (__valid_fs(-1))
      {
        v102 = 2989;
      }

      else
      {
        v102 = 3072;
      }

      *v102 = -559038737;
      abort();
    }

    v34 = fd_pwrite(*(v5 + 106), v25, 0x4000uLL, v33);
    v35 = *(v5 + 1);
    if ((v35 & 0x80) != 0)
    {
      v36 = *(v5 + 107);
      v37 = v36[2];
      v38 = *v36;
      v39 = *v36 == 846029412 || v38 == 829252196;
      v40 = bswap32(v37);
      if (!v39)
      {
        v40 = v36[2];
      }

      if (v40 >= 1)
      {
        v41 = (v36 + 7);
        do
        {
          v41[-1] = bswap64(*&v41[-1]);
          *v41 = vrev32_s8(*v41);
          v41 += 2;
          --v40;
        }

        while (v40);
      }

      v42 = bswap32(v36[1]);
      *v36 = bswap32(v38);
      v36[1] = v42;
      v36[2] = bswap32(v37);
      v36[4] = bswap32(v36[4]);
    }

    if (v34 == 0x4000)
    {
      *(v5 + 10) = 0x4000;
      *(v5 + 107) = v25;
LABEL_78:
      v105 = v4;
      v53 = 0;
      v54 = v5 + 880;
      *(v5 + 122) = *(a1 + 24);
      while (1)
      {
        while (v53 == 5 || (*(v5 + 201) & 0x14) != 0)
        {
          bzero(__str, 0x400uLL);
          v66 = strcmp(v2, "store.db");
          v67 = "db";
          if (v66)
          {
            v67 = v2;
          }

          v68 = v53 + 1;
          snprintf(__str, 0x400uLL, "%sStr-%d.map", v67, v53 + 1);
          v112 = 0u;
          v114 = 0u;
          v115 = 0u;
          v113 = 0u;
          v111[0] = v110;
          v111[1] = __str;
          v69 = data_map_flags[v53];
          LODWORD(v112) = table_extra_bytes_14628[v53];
          DWORD1(v112) = v69 | 1;
          *(&v112 + 1) = _db2_synced_block_callback;
          *(&v113 + 1) = 0;
          *&v114 = 0;
          *&v113 = _db2_unmap_callback;
          v70 = *(v5 + 122);
          *(&v114 + 1) = v5;
          *&v115 = v70;
          DWORD2(v115) = v53;
          if (v53 <= 5 && ((1 << v53) & 0x29) != 0)
          {
            DWORD1(v112) = v69 | 0x201;
          }

          v71 = data_map_init_with_ctx(v111);
          *&v54[8 * v53] = v71;
          if (!v71)
          {
            v76 = *__error();
            v77 = _SILogForLogForCategory(7);
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_113;
            }

            v97 = __error();
            v98 = strerror(*v97);
            *buf = 136315906;
            v118 = "db2_create_datastore_with_ctx";
            v119 = 1024;
            v120 = 6345;
            v121 = 2080;
            v122 = __str;
            v123 = 2080;
            v124 = v98;
            v80 = buf;
LABEL_137:
            _os_log_error_impl(&dword_1C278D000, v77, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: can't init the string table! (%s)\n", v80, 0x26u);
LABEL_113:
            *__error() = v76;
            v10 = v5 + 760;
            v43 = *(v5 + 107);
            if (v43)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          ++v53;
          if (v68 == 6)
          {
LABEL_102:
            if (fd_pwrite(*(v5 + 105), v5, 0x1000uLL, 0) == 4096)
            {
              v73 = *(v5 + 105);
              v10 = v5 + 760;
              if (_gSystemStatusBool == 1)
              {
                pthread_mutex_lock(&_gSystemStatusLock);
                if (_gSystemStatusBool == 1)
                {
                  do
                  {
                    pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
                  }

                  while ((_gSystemStatusBool & 1) != 0);
                }

                pthread_mutex_unlock(&_gSystemStatusLock);
              }

              *__str = 0;
              v74 = _fd_acquire_fd(v73, __str);
              if (v74 != -1)
              {
                if (v105)
                {
                  v75 = (*(v73 + 56) & 8) == 0;
                }

                else
                {
                  v75 = 0;
                }

                v88 = v74;
                prot_fsync(v74, v75);
                _fd_release_fd(v73, v88, 0, *__str);
              }

              if (fd_pwrite(*(v5 + 106), v5, 0x1000uLL, 0) == 4096)
              {
                *(v5 + 1000) = *(a1 + 40);
                *(v5 + 1) &= ~0x10u;
                if (db_write_unlock(v109))
                {
                  sdb2_die(v5, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 6386);
                }

                if (v108)
                {
                  CIOnThreadCleanUpClearItem(v107, v106);
                  v89 = &threadData[9 * v107];
                  v92 = *(v89 + 14);
                  v90 = v89 + 7;
                  v91 = v92;
                  if (v106 + 1 == v92)
                  {
                    *v90 = v91 - 1;
                  }
                }

                v93 = malloc_type_malloc(0x48uLL, 0x10A004087A21FEBuLL);
                *v93 = 0u;
                v93[1] = 0u;
                *(v93 + 8) = 1065353216;
                *(v93 + 40) = 0u;
                *(v93 + 56) = 0u;
                *(v5 + 124) = v93;
                db2_sync_datastore(v5, v105);
                db_cache_clear_offset_hints(*(v5 + 116));
                *(v5 + 808) = 0u;
                db2_set_garbage_collector(v5, &__block_literal_global_14636, &__block_literal_global_20_14637, &__block_literal_global_24);
                *(v5 + 104) = 0;
                return v5;
              }

              v17 = *__error();
              v18 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v95 = __error();
                v96 = strerror(*v95);
                *__str = 136315906;
                *&__str[4] = "db2_create_datastore_with_ctx";
                *&__str[12] = 1024;
                *&__str[14] = 6366;
                v126 = 2080;
                v127 = v5 + 324;
                v128 = 2080;
                v129 = v96;
                v21 = "%s:%d: %s : ERR: Can't write shadow DST header (%s)\n";
                goto LABEL_124;
              }

              goto LABEL_63;
            }

            v17 = *__error();
            v18 = _SILogForLogForCategory(7);
            v10 = v5 + 760;
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_63;
            }

            v81 = __error();
            v82 = strerror(*v81);
            *__str = 136315906;
            *&__str[4] = "db2_create_datastore_with_ctx";
            *&__str[12] = 1024;
            *&__str[14] = 6360;
            v126 = 2080;
            v127 = v5 + 324;
            v128 = 2080;
            v129 = v82;
            v21 = "%s:%d: %s : ERR: Can't write DST header (%s)\n";
LABEL_124:
            _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v21, __str, 0x26u);
            goto LABEL_63;
          }
        }

        v55 = table_extra_bytes_14628[v53];
        *__str = 0;
        *buf = 0;
        v56 = malloc_type_zone_calloc(string_table_zone, 1uLL, 0x48uLL, 0x10B00402199480CuLL);
        *&v54[8 * v53] = v56;
        *v56 = -1;
        v57 = db_string_page_flags[v53];
        if (_page_alloc_fetch(v5, __str, 0, buf, v111, v57))
        {
          v76 = *__error();
          v77 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_113;
          }

          v78 = __error();
          v79 = strerror(*v78);
          *__str = 136315906;
          *&__str[4] = "db2_create_datastore_with_ctx";
          *&__str[12] = 1024;
          *&__str[14] = 6352;
          v126 = 2080;
          v127 = v5 + 324;
          v128 = 2080;
          v129 = v79;
          v80 = __str;
          goto LABEL_137;
        }

        v58 = *__str;
        v59 = *(*__str + 12) | v57;
        *(*__str + 8) = 32;
        *(v58 + 12) = v59;
        *(v58 + 20) = 0;
        *(v58 + 24) = 0;
        v60 = malloc_type_zone_valloc(string_table_zone, 0x4000uLL, 0x1022040893D1972uLL);
        v61 = *(v58 + 16);
        *v60 = *v58;
        v60[1] = v61;
        *(v60 + 1) = 0x4000;
        v62 = *buf;
        page_release(v5, v58, *buf, 1u, 0);
        *&v5[4 * v53 + 48] = v62;
        v63 = *&v54[8 * v53];
        *(v63 + 60) = 1;
        *(v63 + 24) = v60;
        *(v63 + 48) = 16;
        *(v63 + 32) = malloc_type_zone_malloc(string_table_zone, 0x80uLL, 0x10040436913F5uLL);
        if (v53 > 1)
        {
          *(v63 + 56) = 1;
          if (sdb_uniquing_zone_once != -1)
          {
            dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_13);
          }

          v72 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
          if (v72)
          {
            v65 = v72;
            v55 = 0;
            goto LABEL_101;
          }
        }

        else
        {
          *(v63 + 40) = malloc_type_malloc(*(v63 + 48), 0x18A24453uLL);
          *(v63 + 56) = 1;
          if (sdb_uniquing_zone_once != -1)
          {
            dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_15707);
          }

          v64 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
          if (v64)
          {
            v65 = v64;
LABEL_101:
            pthread_rwlock_init(v65, 0);
            v65[1].__sig = v55;
            *&v65[11].__opaque[64] = 1024;
            *&v65[11].__opaque[56] = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x4000uLL, 0x1050040DB1D6C16uLL);
            *(v63 + 16) = v65;
            goto LABEL_80;
          }
        }

        *(v63 + 16) = 0;
        free(v60);
        page_free(v5, v62, v116, 0);
LABEL_80:
        *(v63 + 64) = 0;
        ++v53;
        v54 = v5 + 880;
        if (v53 == 6)
        {
          goto LABEL_102;
        }
      }
    }

    *(v5 + 1) = v35 | 2;
    free(v25);
    if (!*__error())
    {
      *__error() = 22;
    }

    *(v5 + 200) = *__error();
    if (!*__error())
    {
      goto LABEL_78;
    }
  }

  v17 = *__error();
  v18 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v86 = __error();
    v87 = strerror(*v86);
    *__str = 136315906;
    *&__str[4] = "db2_create_datastore_with_ctx";
    *&__str[12] = 1024;
    *&__str[14] = 6311;
    v126 = 2080;
    v127 = v5 + 324;
    v128 = 2080;
    v129 = v87;
    v21 = "%s:%d: %s : ERR: can't init the map! (%s)\n";
    goto LABEL_124;
  }

LABEL_63:
  *__error() = v17;
  v43 = *(v5 + 107);
  if (v43)
  {
LABEL_64:
    free(v43);
    *(v5 + 107) = 0;
  }

LABEL_65:
  cleanup_string_tables(v5);
  v44 = *(v5 + 105);
  if (v44)
  {
    fd_release(v44);
    *(v5 + 105) = 0;
  }

  v45 = *(v5 + 106);
  if (v45)
  {
    fd_release(v45);
    *(v5 + 106) = 0;
  }

  v46 = *(v5 + 116);
  if (v46)
  {
    db_cache_clear(*(v5 + 116), &__block_literal_global_14_16022);
    *&__str[8] = 0;
    *__str = *v46;
    if (atomic_load(v46 + 62))
    {
      for (i = 0; i < v49; ++i)
      {
        *&__str[8] = i;
        _cache_remove(__str);
        v49 = atomic_load(v46 + 62);
      }
    }

    atomic_store(0, v46 + 62);
    free(v46);
    pthread_mutex_lock((v5 + 584));
    *(v5 + 197) = 0;
    v50 = *(v5 + 95);
    *v10 = 0;
    v10[1] = 0;
    v51 = *(v5 + 195) != 0;
    v5[796] = 0;
    db_rwlock_wakeup((v5 + 584), v51, 0);
    pthread_mutex_unlock((v5 + 584));
    if (v50)
    {
      pthread_override_qos_class_end_np(v50);
    }

    db_rwlock_destroy((v5 + 584));
  }

  free(v5);
  return 0;
}

uint64_t _page_alloc_fetch(uint64_t a1, int8x16_t **a2, int a3, unsigned int *a4, signed int *a5, unsigned int a6)
{
  v9 = a3;
  v44 = *MEMORY[0x1E69E9840];
  if (a3 <= 4095)
  {
    v9 = *(a1 + 44);
  }

  v12 = fd_lseek(*(a1 + 848), 0, 2);
  if (v12 == -1)
  {
    return *__error();
  }

  v13 = v12;
  if ((v12 & 0xFFF) != 0)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(7);
    v16 = dword_1EBF46AE8 < 3;
    if (os_log_type_enabled(v15, (dword_1EBF46AE8 < 3)))
    {
      *v35 = 0;
      _os_log_impl(&dword_1C278D000, v15, v16, "*warn* sdb not page-size aligned. Extending.", v35, 2u);
    }

    *__error() = v14;
    v13 = (v13 & 0xFFFFFFFFFFFFF000) + 4096;
    fd_truncate(*(a1 + 848), v13);
  }

  v17 = malloc_type_calloc(v9, 1uLL, 0x1000040A86A77D5uLL);
  if (!v17)
  {
    *__error() = 12;
    return *__error();
  }

  v18 = v17;
  v17->i32[0] = 1684172850;
  v17->i32[1] = v9;
  v17->i32[2] = 20;
  v17->i32[3] = a6 | 1;
  if ((a6 & 4) != 0)
  {
    v17[1].i32[0] = v9;
  }

  _add_dirty_chunk(a1, v13 >> *(a1 + 12), v9, (a6 >> 14) & 1);
  if ((*(a1 + 4) & 0x80) != 0)
  {
    *v18 = vrev32q_s8(*v18);
    v18[1].i32[0] = bswap32(v18[1].u32[0]);
  }

  v19 = sdb_pwrite(*(a1 + 848), v18, v9, v13);
  if (v19 != v9)
  {
    v20 = *__error();
    if ((*(a1 + 4) & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v20 = 0;
  if ((*(a1 + 4) & 0x80) != 0)
  {
LABEL_19:
    *v18 = vrev32q_s8(*v18);
    v18[1].i32[0] = bswap32(v18[1].u32[0]);
  }

LABEL_20:
  if (v19 == v9)
  {
    *a4 = v13 >> *(a1 + 12);
    *a5 = v9;
    v22 = *(a1 + 928);
    v23 = *a4;
    *v35 = 0;
    *&v35[8] = 0;
    v24 = atomic_load((v22 + 248));
    if (v24 > v23)
    {
      *&v35[8] = 0;
      *v35 = *v22;
      *&v35[8] = v23;
      _cache_remove(v35);
    }

    v25 = *(v22 + 220);
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = v22 + 252;
      while (*(v27 + 4 * v26) != v23)
      {
        if (v25 == ++v26)
        {
          goto LABEL_37;
        }
      }

      v34 = v22 + 48 * v26;
      free(*(v34 + 280));
      free(*(v34 + 272));
      *(v34 + 288) = 0u;
      *(v34 + 304) = 0u;
      *(v34 + 272) = 0u;
      *(v27 + 4 * v26) = 0;
    }

LABEL_37:
    result = 0;
    *a2 = v18;
  }

  else
  {
    *(a1 + 4) |= 2u;
    v28 = *__error();
    v29 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136315394;
      *&v35[4] = "_page_alloc_fetch";
      *&v35[12] = 1024;
      *&v35[14] = 2138;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Failed allocating page", v35, 0x12u);
    }

    *__error() = v28;
    *a4 = -1;
    free(v18);
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 22;
    }

    v31 = v30;
    *(a1 + 800) = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136316418;
      *&v35[4] = "_page_alloc_fetch";
      *&v35[12] = 1024;
      *&v35[14] = 2146;
      v36 = 2080;
      v37 = a1 + 324;
      v38 = 1024;
      v39 = v9;
      v40 = 2048;
      v41 = v13;
      v42 = 1024;
      v43 = v31;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%s, %d, %lld) error: %d", v35, 0x32u);
    }

    *__error() = v32;
    return v31;
  }

  return result;
}

void page_free(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v6 = a2;
  v78 = *MEMORY[0x1E69E9840];
  memset(v73, 0, 20);
  memset(&v72, 0, sizeof(v72));
  v8 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v9 = atomic_load((v8 + 248));
  if (v9 > a2)
  {
    *&buf[8] = 0;
    *buf = *v8;
    *&buf[8] = a2;
    _cache_remove(buf);
  }

  v10 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v11 = atomic_load((v10 + 248));
  if (v11 > v6)
  {
    *&buf[8] = 0;
    *buf = *v10;
    *&buf[8] = v6;
    _cache_remove(buf);
  }

  v12 = *(v10 + 220);
  if (v12 < 1)
  {
LABEL_9:
    v15 = fd_pread(*(a1 + 848), v73, 0x14uLL, v6 << *(a1 + 12));
    if (v15 != 20)
    {
      v17 = v15;
      v18 = *__error();
      v19 = *__error();
      v20 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "page_free";
        *&buf[12] = 1024;
        *&buf[14] = 2195;
        v75 = 1024;
        *v76 = v6;
        *&v76[4] = 1024;
        *&v76[6] = v18;
        *v77 = 2080;
        *&v77[2] = a1 + 324;
        *&v77[10] = 2048;
        *&v77[12] = v17;
        *&v77[20] = 2048;
        *&v77[22] = 20;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", buf, 0x3Cu);
      }

      *__error() = v19;
      *__error() = v18;
      *(a1 + 4) |= 4u;
      if (!*__error())
      {
        *__error() = 22;
      }

      __error();
      return;
    }

    v16 = v73[0];
    if ((*(a1 + 4) & 0x80) != 0 && LODWORD(v73[0]) == 846226020)
    {
      LODWORD(v73[0]) = 1684172850;
      *(v73 + 4) = vrev32q_s8(*(v73 + 4));
      if ((BYTE12(v73[0]) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v13 = 0;
    v14 = v10 + 252;
    while (*(v14 + 4 * v13) != v6)
    {
      if (v12 == ++v13)
      {
        goto LABEL_9;
      }
    }

    v21 = v10 + 272;
    v22 = v10 + 272 + 48 * v13;
    v23 = **v22;
    LODWORD(v73[1]) = *(*v22 + 16);
    v73[0] = v23;
    *(v14 + 4 * v13) = 0;
    *(v22 + 16) = 0;
    *v22 = 0;
    v24 = v21 + 48 * v13;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    v25 = *(v22 + 8);
    if (v25)
    {
      free(v25);
      *(v22 + 8) = 0;
    }

    v16 = v73[0];
  }

  if (v16 != 1684172850 || (BYTE12(v73[0]) & 1) == 0)
  {
LABEL_24:
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2212;
      v75 = 2080;
      *v76 = a1 + 324;
      *&v76[8] = 1024;
      *v77 = v6;
      *&v77[4] = 1024;
      *&v77[6] = v73[0];
      *&v77[10] = 1024;
      strcpy(&v77[12], "2pbd");
      v77[17] = 4;
      *&v77[18] = HIDWORD(v73[0]);
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: %s : free: ERR: Danger! page num 0x%x looks bad (signature 0x%x expected 0x%x flags 0x%x)\n", buf, 0x34u);
    }

    goto LABEL_26;
  }

LABEL_28:
  v28 = *(a1 + 848);
  if (!v28)
  {
    return;
  }

  while (1)
  {
    v29 = fstatat(*(v28 + 44), *(v28 + 72), &v72, 2048);
    v30 = g_prot_error_callback;
    if (v29 != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v32 = *(v28 + 40);
    v33 = __error();
    if (((*(v30 + 16))(v30, v32, *v33, 8) & 1) == 0)
    {
      return;
    }
  }

  if (v29)
  {
    return;
  }

  v34 = v6;
  v35 = v6 << *(a1 + 12);
  v36 = v73 + 1;
  if ((BYTE12(v73[0]) & 4) != 0)
  {
    v36 = &v73[1];
  }

  v37 = v35 + *v36;
  v38 = (*(a1 + 40) + *(a1 + 36));
  if (v37 == v72.st_size && v35 >= v38)
  {
    *a3 = 1;
    if (((v6 << *(a1 + 12)) & 0xFFF) != 0)
    {
      v66 = __si_assert_copy_extra_3233(0, -1);
      v67 = v66;
      v68 = "";
      if (v66)
      {
        v68 = v66;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 2227, "(((off_t)(pgnum) << (dst->pg_shift)) & ((1 << 12)-1))==0", v68);
      free(v67);
      if (__valid_fs(-1))
      {
        v69 = 2989;
      }

      else
      {
        v69 = 3072;
      }

      *v69 = -559038737;
      abort();
    }

    pthread_mutex_lock((a1 + 584));
    *(a1 + 796) = 1;
    db_rwlock_wakeup(a1 + 584, 1, 1);
    pthread_mutex_unlock((a1 + 584));
    v42 = fd_truncate(*(a1 + 848), v6 << *(a1 + 12));
    v43 = *__error();
    db_upgrade_lock(a1 + 584);
    if (v42)
    {
      v44 = *__error();
      v45 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        *__error() = v44;
        return;
      }

      v57 = v34 << *(a1 + 12);
      *buf = 136316162;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2238;
      v75 = 2080;
      *v76 = a1 + 324;
      *&v76[8] = 2048;
      *v77 = v57;
      *&v77[8] = 1024;
      *&v77[10] = v43;
LABEL_69:
      _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%s, %lld) error: %d", buf, 0x2Cu);
      goto LABEL_49;
    }

    return;
  }

  if (v35 < v38)
  {
    v26 = *__error();
    v40 = _SILogForLogForCategory(7);
    v41 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v40, v41))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_1C278D000, v40, v41, "page_free: ERR: tried to free the first & only page of the file (pgnum 0x%x).\n", buf, 8u);
    }

LABEL_26:
    *__error() = v26;
    return;
  }

  *a3 = 1;
  v46 = malloc_type_valloc(0x4000uLL, 0x1000040A86A77D5uLL);
  v47 = fd_pread(*(a1 + 848), v46, 0x4000uLL, v72.st_size - 0x4000);
  if (v47 != 0x4000)
  {
    v49 = v47;
    v50 = *__error();
    v51 = *__error();
    v52 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2347;
      v75 = 2048;
      *v76 = v72.st_size - 0x4000;
      *&v76[8] = 1024;
      *v77 = v50;
      *&v77[4] = 2080;
      *&v77[6] = a1 + 324;
      *&v77[14] = 2048;
      *&v77[16] = v49;
      *&v77[24] = 2048;
      *&v77[26] = 0x4000;
      _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %lld error:%d (%s) %zd != %zd", buf, 0x40u);
    }

    *__error() = v51;
    goto LABEL_60;
  }

  if (sdb_pwrite(*(a1 + 848), v46, 0x4000uLL, v6 << *(a1 + 12)) != 0x4000)
  {
    v50 = *__error();
    v53 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v63 = v72.st_size - 0x4000;
      v64 = __error();
      v65 = strerror(*v64);
      *buf = 136316162;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2283;
      v75 = 2048;
      *v76 = v63;
      *&v76[8] = 1024;
      *v77 = v6;
      *&v77[4] = 2080;
      *&v77[6] = v65;
      _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: page_free: ERR: error moving page from %lld to %d (%s)\n", buf, 0x2Cu);
    }

LABEL_60:
    *__error() = v50;
    free(v46);
    return;
  }

  v48 = v46[3];
  if ((*(a1 + 4) & 0x80) != 0 && v48 >> 28)
  {
    v48 = bswap32(v48);
    free(v46);
    goto LABEL_62;
  }

  free(v46);
  if ((v48 & 0xF0) != 0)
  {
LABEL_62:
    v54 = (v72.st_size - 0x4000) >> *(a1 + 12);
    if ((*(a1 + 804) & 0x14) != 0)
    {
      if (dword_1EBF46AE8 >= 5)
      {
        v55 = *__error();
        v56 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v54;
          *&buf[8] = 1024;
          *&buf[10] = v6;
          _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Skipping string page move from %d to %d -- no string table!", buf, 0xEu);
        }

        *__error() = v55;
      }
    }

    else
    {
      update_string_table(a1, (v72.st_size - 0x4000) >> *(a1 + 12), v6, v48);
    }

    goto LABEL_76;
  }

  v58 = (v72.st_size - 0x4000) >> *(a1 + 12);
  if (dword_1EBF46AE8 >= 5)
  {
    v70 = *__error();
    v71 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v58;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Object page move from %d to %d", buf, 0xEu);
    }

    *__error() = v70;
  }

  db_cache_move_page(*(a1 + 928), v58, v6);
  if (map_change_pgnum(a1, v58, v6))
  {
    v59 = *__error();
    v60 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2324;
      v75 = 2048;
      *v76 = v72.st_size - 0x4000;
      *&v76[8] = 1024;
      *v77 = v6;
      _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: page_free: ERR: failed to change the map page offset from %lld to %d\n", buf, 0x22u);
    }

    *__error() = v59;
  }

  page_cache_move(*(a1 + 928), v6, (v72.st_size - 0x4000) >> *(a1 + 12));
LABEL_76:
  _add_dirty_chunk(a1, v6, 0x4000u, (a4 >> 14) & 1);
  db_downgrade_lock((a1 + 584));
  v61 = fd_truncate(*(a1 + 848), v72.st_size - 0x4000);
  v62 = *__error();
  db_upgrade_lock(a1 + 584);
  if (v61)
  {
    v44 = *__error();
    v45 = _SILogForLogForCategory(7);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 136316162;
    *&buf[4] = "page_free";
    *&buf[12] = 1024;
    *&buf[14] = 2342;
    v75 = 2080;
    *v76 = a1 + 324;
    *&v76[8] = 2048;
    *v77 = v72.st_size - 0x4000;
    *&v77[8] = 1024;
    *&v77[10] = v62;
    goto LABEL_69;
  }
}

uint64_t db2_sync_datastore(uint64_t result, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if ((*(result + 804) & 8) != 0)
  {
    return result;
  }

  v2 = result;
  v3 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v3 = __THREAD_SLOT_KEY[0];
  }

  v4 = pthread_getspecific(v3);
  HIDWORD(v6) = qos_class_self() - 9;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 2;
  if (v5 > 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1C2BFF8F0[v5];
  }

  v8 = pthread_mutex_lock((v2 + 584));
  if (*(v2 + 768) || *(v2 + 780) || (*(v2 + 796) & 1) != 0)
  {
    goto LABEL_10;
  }

  if (v7 <= 5)
  {
    v29 = v7 - 6;
    v30 = (v2 + 16 * v7 + 648);
    while (!*v30)
    {
      v30 += 2;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    db_rwlock_wait(v2 + 584, v7, 2);
    goto LABEL_11;
  }

LABEL_47:
  *(v2 + 768) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((v2 + 584));
  if (v8)
  {
    v47 = *__error();
    v48 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v53 = "db2_sync_datastore";
      *&v53[8] = 1024;
      v54 = 9066;
      v55 = 1024;
      LODWORD(v56) = v8;
      _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v47;
    sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9066);
  }

  if (!v4)
  {
    v9 = -1;
    if ((*(v2 + 4) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    v20 = *__error();
    v21 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v53 = "db2_sync_datastore";
      *&v53[8] = 1024;
      v54 = 9069;
      v55 = 2080;
      v56 = v2 + 324;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! prior write-errors invalidate sync.\n", buf, 0x1Cu);
    }

    *__error() = v20;
    v22 = pthread_mutex_lock((v2 + 584));
    *(v2 + 788) = 0;
    v23 = *(v2 + 760);
    *(v2 + 760) = 0u;
    v24 = *(v2 + 780) != 0;
    *(v2 + 796) = 0;
    db_rwlock_wakeup(v2 + 584, v24, 0);
    result = pthread_mutex_unlock((v2 + 584));
    if (v23)
    {
      result = pthread_override_qos_class_end_np(v23);
    }

    if (v22)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9070);
    }

    goto LABEL_38;
  }

  v9 = CIOnThreadCleanUpPush(v4 - 1, db_write_unlock, v2 + 584);
  if ((*(v2 + 4) & 2) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  for (i = 0; i != 6; ++i)
  {
    v11 = v2 + 8 * i;
    v12 = *(v11 + 880);
    if (i == 5 || (*(v2 + 804) & 0x14) != 0)
    {
      _data_map_sync_data(v12);
    }

    else
    {
      v13 = *(v12 + 1);
      if (v13)
      {
        page_release(v2, v13, *v12, 5u, 0);
        if (dword_1EBF46AE8 >= 5)
        {
          v50 = *__error();
          log = _SILogForLogForCategory(7);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v14 = **(v11 + 880);
            *buf = 67109376;
            *v53 = v14;
            *&v53[4] = 1024;
            *&v53[6] = i;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Push dirty string page %d to disk (%d)", buf, 0xEu);
          }

          *__error() = v50;
        }
      }
    }
  }

  if (!_db2_flush_all_cache(v2, 0) && !map_write(v2))
  {
    v32 = *(v2 + 4);
    if (v32)
    {
      result = db_write_unlock(v2 + 584);
      if (result)
      {
        sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9097);
      }

      goto LABEL_38;
    }

    if ((v32 & 2) == 0)
    {
      *(v2 + 4) = v32 | 1;
    }

    fd_sync(*(v2 + 848), a2);
    if ((*(v2 + 4) & 0x80) != 0)
    {
      *v2 = vrev32q_s8(*v2);
      *(v2 + 16) = bswap32(*(v2 + 16));
      *(v2 + 20) = vrev64q_s8(*(v2 + 20));
      *(v2 + 36) = vrev32q_s8(*(v2 + 36));
      *(v2 + 52) = vrev32q_s8(*(v2 + 52));
    }

    if (fd_pwrite(*(v2 + 848), v2, 0x1000uLL, 0) != 4096)
    {
      v37 = *__error();
      if ((*(v2 + 4) & 0x80000000) != 0)
      {
        *v2 = vrev32q_s8(*v2);
        *(v2 + 16) = bswap32(*(v2 + 16));
        *(v2 + 20) = vrev64q_s8(*(v2 + 20));
        *(v2 + 36) = vrev32q_s8(*(v2 + 36));
        *(v2 + 52) = vrev32q_s8(*(v2 + 52));
      }

      v38 = *__error();
      v39 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = strerror(v37);
        *buf = 136315906;
        *v53 = "db2_sync_datastore";
        *&v53[8] = 1024;
        v54 = 9124;
        v55 = 2080;
        v56 = v2 + 324;
        v57 = 2080;
        v58 = v41;
        _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
      }

      *__error() = v38;
      *(v2 + 4) |= 2u;
      *(v2 + 800) = v37;
      result = db_write_unlock(v2 + 584);
      if (result)
      {
        sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9127);
      }

      goto LABEL_38;
    }

    if ((*(v2 + 804) & 0x14) != 0)
    {
      _data_map_sync_header(*(v2 + 880));
      if ((*(v2 + 804) & 0x14) != 0)
      {
        _data_map_sync_header(*(v2 + 888));
        if ((*(v2 + 804) & 0x14) != 0)
        {
          _data_map_sync_header(*(v2 + 896));
          if ((*(v2 + 804) & 0x14) != 0)
          {
            _data_map_sync_header(*(v2 + 904));
            if ((*(v2 + 804) & 0x14) != 0)
            {
              _data_map_sync_header(*(v2 + 912));
            }
          }
        }
      }
    }

    _data_map_sync_header(*(v2 + 920));
    v33 = fd_sync(*(v2 + 848), a2);
    if (v33 || (v33 = sync_dirty_chunks(v2)) != 0)
    {
      if ((*(v2 + 4) & 0x80000000) != 0)
      {
        *v2 = vrev32q_s8(*v2);
        *(v2 + 16) = bswap32(*(v2 + 16));
        *(v2 + 20) = vrev64q_s8(*(v2 + 20));
        *(v2 + 36) = vrev32q_s8(*(v2 + 36));
        *(v2 + 52) = vrev32q_s8(*(v2 + 52));
      }

      if (v33 == 28)
      {
        goto LABEL_67;
      }

      v34 = v33;
      v35 = *__error();
      v36 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        *__error() = v35;
        *(v2 + 4) |= 2u;
        *(v2 + 800) = v34;
LABEL_67:
        result = db_write_unlock(v2 + 584);
        if (result)
        {
          sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9177);
        }

        goto LABEL_38;
      }

      *buf = 136315394;
      *v53 = "db2_sync_datastore";
      *&v53[8] = 1024;
      v54 = 9171;
    }

    else
    {
      v40 = fd_sync(*(v2 + 840), a2);
      if (!v40)
      {
        v42 = fd_pwrite(*(v2 + 840), v2, 0x1000uLL, 0);
        v43 = *__error();
        if ((*(v2 + 4) & 0x80000000) != 0)
        {
          *v2 = vrev32q_s8(*v2);
          *(v2 + 16) = bswap32(*(v2 + 16));
          *(v2 + 20) = vrev64q_s8(*(v2 + 20));
          *(v2 + 36) = vrev32q_s8(*(v2 + 36));
          *(v2 + 52) = vrev32q_s8(*(v2 + 52));
        }

        if (v42 != 4096)
        {
          v44 = *__error();
          v45 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = strerror(v43);
            *buf = 136315906;
            *v53 = "db2_sync_datastore";
            *&v53[8] = 1024;
            v54 = 9154;
            v55 = 2080;
            v56 = v2 + 324;
            v57 = 2080;
            v58 = v46;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST header (2: %s)\n", buf, 0x26u);
          }

          *__error() = v44;
          *(v2 + 4) |= 2u;
          *(v2 + 800) = v43;
        }

        fd_sync(*(v2 + 840), a2);
        goto LABEL_67;
      }

      v34 = v40;
      v35 = *__error();
      v36 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 136315394;
      *v53 = "db2_sync_datastore";
      *&v53[8] = 1024;
      v54 = 9161;
    }

    _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: Failed syncing db", buf, 0x12u);
    goto LABEL_66;
  }

  v15 = *__error();
  v16 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *v53 = "db2_sync_datastore";
    *&v53[8] = 1024;
    v54 = 9088;
    v55 = 2080;
    v56 = v2 + 324;
    _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors flushing cache/writing map.\n", buf, 0x1Cu);
  }

  *__error() = v15;
  v17 = pthread_mutex_lock((v2 + 584));
  *(v2 + 788) = 0;
  v18 = *(v2 + 760);
  *(v2 + 760) = 0u;
  v19 = *(v2 + 780) != 0;
  *(v2 + 796) = 0;
  db_rwlock_wakeup(v2 + 584, v19, 0);
  result = pthread_mutex_unlock((v2 + 584));
  if (v18)
  {
    result = pthread_override_qos_class_end_np(v18);
  }

  if (v17)
  {
    sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9089);
  }

LABEL_38:
  if (v4)
  {
    result = CIOnThreadCleanUpClearItem(v4 - 1, v9);
    v25 = &threadData[9 * (v4 - 1)];
    v28 = *(v25 + 14);
    v26 = v25 + 7;
    v27 = v28;
    if (v9 + 1 == v28)
    {
      *v26 = v27 - 1;
    }
  }

  return result;
}

void db2_set_garbage_collector(void *a1, void *aBlock, void *a3, void *a4)
{
  v5 = a3;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = _Block_copy(v5);
  }

LABEL_4:
  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v8 = a1[101];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a1[102];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = a1[103];
  if (v10)
  {
    _Block_release(v10);
  }

  a1[101] = v7;
  a1[102] = v5;
  a1[103] = a4;
}

void cleanup_string_tables(uint64_t a1)
{
  if ((*(a1 + 804) & 0x14) != 0)
  {
    v2 = *(a1 + 880);
    if (v2)
    {
      data_map_destroy(v2);
      *(a1 + 880) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 0);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v3 = *(a1 + 888);
    if (v3)
    {
      data_map_destroy(v3);
      *(a1 + 888) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 1u);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v4 = *(a1 + 896);
    if (v4)
    {
      data_map_destroy(v4);
      *(a1 + 896) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 2u);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v5 = *(a1 + 904);
    if (v5)
    {
      data_map_destroy(v5);
      *(a1 + 904) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 3u);
  }

  if ((*(a1 + 804) & 0x14) == 0)
  {
    destroy_string_table(a1, 4u);
    v7 = *(a1 + 920);
    if (!v7)
    {
      return;
    }

    goto LABEL_21;
  }

  v6 = *(a1 + 912);
  if (v6)
  {
    data_map_destroy(v6);
    *(a1 + 912) = 0;
  }

  v7 = *(a1 + 920);
  if (v7)
  {
LABEL_21:
    data_map_destroy(v7);
    *(a1 + 920) = 0;
  }
}

void destroy_string_table(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 880;
  v3 = *(a1 + 880 + 8 * a2);
  if (v3)
  {
    v5 = *(v3 + 24);
    if (v5)
    {
      while (*(v5 + 20))
      {
        v6 = *(v5 + 24);
        free(v5);
        v5 = v6;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      free(v5);
LABEL_7:
      v3 = *(v2 + 8 * a2);
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      pthread_rwlock_destroy(*(v3 + 16));
      free(v7[283]);
      free(v7);
      *(*(v2 + 8 * a2) + 16) = 0;
      v3 = *(v2 + 8 * a2);
    }

    v8 = *(v3 + 32);
    if (v8)
    {
      free(v8);
      *(*(v2 + 8 * a2) + 32) = 0;
      v3 = *(v2 + 8 * a2);
    }

    v9 = *(v3 + 40);
    if (v9)
    {
      free(v9);
      *(*(v2 + 8 * a2) + 32) = 0;
      v3 = *(v2 + 8 * a2);
    }

    *(v3 + 24) = 0;
    *(*(v2 + 8 * a2) + 60) = 0;
    *(*(v2 + 8 * a2) + 56) = 0;
    free(*(v2 + 8 * a2));
    *(v2 + 8 * a2) = 0;
  }
}

uint64_t _db2_flush_all_cache(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 16385;
  }

  else
  {
    v3 = 0;
  }

  result = flush_updateset_locked(a1, v3);
  if (!result)
  {
    if (*(a1 + 1000) && *(a1 + 1008))
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(7);
      v7 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v6, v7, "_db2_flush_all_cache: start callback", buf, 2u);
      }

      *__error() = v5;
      (*(a1 + 1008))(*(a1 + 1000), 0);
    }

    v8 = *(a1 + 928);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v22 = ___db2_flush_all_cache_block_invoke;
    v23 = &__block_descriptor_tmp_160_14669;
    v24 = a1;
    v25 = v3;
    v9 = *(v8 + 220);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = (v8 + 272);
      v12 = 0uLL;
      do
      {
        v13 = v8 + 4 * v10;
        v14 = *(v13 + 252);
        if (v14 && (v15 = *v11) != 0)
        {
          v16 = *(v11 + 4);
          if (v16)
          {
            *v27 = v12;
            v28 = v12;
            *&buf[4] = DWORD1(v12);
            *buf = v14;
            *&buf[8] = v15;
            v27[0] = v11[1];
            LODWORD(v27[1]) = v16;
            *&v28 = v11[3];
            DWORD2(v28) = *(v11 + 8);
            v29 = v11[5];
            v22(v21, buf);
            if (*&buf[8])
            {
              *v11 = *&buf[8];
              v11[1] = v27[0];
              *(v11 + 4) = v27[1];
              v11[3] = v28;
              *(v11 + 8) = DWORD2(v28);
              v11[5] = v29;
              v17 = *buf;
              v12 = 0uLL;
            }

            else
            {
              free(v27[0]);
              v17 = 0;
              v12 = 0uLL;
              *(v11 + 1) = 0u;
              *(v11 + 2) = 0u;
              *v11 = 0u;
            }

            *(v13 + 252) = v17;
            v9 = *(v8 + 220);
          }
        }

        else
        {
          *(v11 + 4) = 0;
        }

        ++v10;
        v11 += 6;
      }

      while (v10 < v9);
    }

    if (*(a1 + 1000) && *(a1 + 1008))
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      v20 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v19, v20, "_db2_flush_all_cache: end callback", buf, 2u);
      }

      *__error() = v18;
      (*(a1 + 1008))(*(a1 + 1000), 1);
    }

    return 0;
  }

  return result;
}

uint64_t map_write(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 856) + 12) & 1) == 0)
  {
    return 0;
  }

  _add_dirty_chunk(a1, *(a1 + 36) >> *(a1 + 12), *(a1 + 40), 1);
  v2 = *(a1 + 36);
  v3 = *(a1 + 856);
  v3[3] &= ~1u;
  if ((*(a1 + 4) & 0x80) != 0)
  {
    v4 = v3[2];
    v5 = *v3;
    v6 = *v3 == 846029412 || v5 == 829252196;
    v7 = bswap32(v4);
    if (!v6)
    {
      v7 = v3[2];
    }

    if (v7 >= 1)
    {
      v8 = (v3 + 7);
      do
      {
        v8[-1] = bswap64(*&v8[-1]);
        *v8 = vrev32_s8(*v8);
        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v9 = bswap32(v3[1]);
    *v3 = bswap32(v5);
    v3[1] = v9;
    v3[2] = bswap32(v4);
    v3[4] = bswap32(v3[4]);
  }

  v10 = sdb_pwrite(*(a1 + 848), v3, *(a1 + 40), v2);
  v11 = *(a1 + 4);
  if ((v11 & 0x80) != 0)
  {
    v12 = *(a1 + 856);
    v13 = v12[2];
    v14 = *v12;
    v15 = *v12 == 846029412 || v14 == 829252196;
    v16 = bswap32(v13);
    if (!v15)
    {
      v16 = v12[2];
    }

    if (v16 >= 1)
    {
      v17 = (v12 + 7);
      do
      {
        v17[-1] = bswap64(*&v17[-1]);
        *v17 = vrev32_s8(*v17);
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v18 = bswap32(v12[1]);
    *v12 = bswap32(v14);
    v12[1] = v18;
    v12[2] = bswap32(v13);
    v12[4] = bswap32(v12[4]);
  }

  if (v10 == *(a1 + 40))
  {
    return 0;
  }

  *(a1 + 4) = v11 | 2;
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315394;
    v23 = "map_write";
    v24 = 1024;
    v25 = 2056;
    _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing map", &v22, 0x12u);
  }

  *__error() = v20;
  if (!*__error())
  {
    *__error() = 22;
  }

  *(a1 + 800) = *__error();
  return *__error();
}

double map_split(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, __int32 a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (map_check_size(a1))
  {
    return result;
  }

  v13 = *(a1 + 856);
  v14 = *a2;
  v15 = v13[2].i32[0];
  v16 = v13[1].i32[0];
  if (v16 <= v15 || v15 <= -1)
  {
    v15 = 0;
  }

  if (v15 >= v16)
  {
LABEL_12:
    if (!v15)
    {
LABEL_16:
      v23 = *__error();
      v24 = _SILogForLogForCategory(7);
      v25 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = *a2;
        v31 = 136315394;
        v32 = a1 + 324;
        v33 = 1024;
        v34 = v26;
        _os_log_impl(&dword_1C278D000, v24, v25, "%s : ERR: map_split_page: BAD NEWS! pgnum 0x%x not found\n", &v31, 0x12u);
      }

      *__error() = v23;
      return result;
    }

    v19 = 0;
    v21 = &v13[3] + 1;
    while (1)
    {
      v22 = *v21;
      v21 += 4;
      if (v22 == v14)
      {
        break;
      }

      if (v15 == ++v19)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v18 = &v13[2 * v15 + 3] + 1;
    v19 = v15;
    while (1)
    {
      v20 = *v18;
      v18 += 4;
      if (v20 == v14)
      {
        break;
      }

      if (v16 == ++v19)
      {
        goto LABEL_12;
      }
    }
  }

  v13[2].i32[0] = v19;
  v27 = &v13[2 * v19];
  memmove(&v27[4] + 4, &v27[2] + 4, 16 * (v16 - v19));
  *(&v27[2] + 4) = a3;
  v27[4].i32[0] = v27[4].i32[0] & 0xFFFFFFF | (a4 << 28);
  v27[5].i32[1] = a6;
  v28 = 16;
  if ((*(a5 + 12) & 4) == 0)
  {
    v28 = 4;
  }

  v27[6].i32[0] = v27[6].i32[0] & 0xF0000000 | *(a5 + v28) & 0xFFFFFFF;
  v29 = v13[1];
  v30.i32[0] = vadd_s32(v29, 0x100000001).u32[0];
  *&result = *&v29 | 0x100000001;
  v30.i32[1] = HIDWORD(result);
  v13[1] = v30;
  return result;
}

uint64_t map_check_size(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 856);
  v2 = v1[2];
  if (v2 + 1 <= ((v1[1] - 36) >> 4))
  {
    return 0;
  }

  if (v2 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    v5 = (v1 + 7);
    while (1)
    {
      v6 = *v5;
      v5 += 4;
      if (v6 << *(a1 + 12) == *(a1 + 36) + *(a1 + 40))
      {
        break;
      }

      if (v2 == ++v4)
      {
        v7 = 0x4000;
        v8 = 1;
        goto LABEL_12;
      }
    }
  }

  if (v4 >= v2)
  {
    v7 = 0x4000;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = v1[4 * v4 + 8] & 0xFFFFFFF;
  }

  LODWORD(v2) = v4;
LABEL_12:
  v44 = 0;
  v9 = (*(a1 + 36) + *(a1 + 40)) >> *(a1 + 12);
  v10 = v7;
  v11 = malloc_type_malloc(v7, 0x5BDC7B0BuLL);
  v43 = v9;
  v12 = fd_pread(*(a1 + 848), v11, v10, v9 << *(a1 + 12));
  if (v12 == v10)
  {
    v13 = v11[3];
    if ((v13 & 0xF0) != 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v37 = __si_assert_copy_extra_3233(0, -1);
      v38 = v37;
      v39 = "";
      if (v37)
      {
        v39 = v37;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 1239, "do_string_update || (flags & 0x000000f0)==0", v39);
      free(v38);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *buf = 0;
    if (_page_alloc_fetch(a1, buf, v10, &v44, &v45, 0))
    {
      updated = 28;
      goto LABEL_45;
    }

    v40 = v13;
    v41 = v11;
    free(*buf);
    v20 = v44;
    v42 = v8;
    if ((v8 & 1) != 0 || (v21 = *(a1 + 928), v22 = *(v21 + 220), v22 < 1))
    {
LABEL_35:
      v11 = v41;
      v28 = fd_pwrite(*(a1 + 848), v41, v10, v20 << *(a1 + 12));
      LOBYTE(v8) = v42;
      if (v28 == v10)
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }

      if (v28 == v10)
      {
        updated = 0;
      }

      else
      {
        updated = 28;
      }

      if (v29 == 1)
      {
        if ((*(a1 + 804) & 0x14) != 0)
        {
          updated = 0;
        }

        else
        {
          updated = update_string_table(a1, v43, v20, v40);
        }
      }

LABEL_45:
      free(v11);
      if (updated)
      {
        return 28;
      }

      goto LABEL_46;
    }

    v23 = 0;
    v24 = (v21 + 252);
    v25 = v21 + 272;
    while (1)
    {
      if (*v24 == v20)
      {
        *v24 = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        free(*(v25 + 8));
        *(v25 + 8) = 0;
        free(*v25);
        v26 = v25;
      }

      else
      {
        if (*v24 != v43)
        {
          goto LABEL_30;
        }

        *v24 = v20;
        v27 = *(v25 + 8);
        if (!v27)
        {
          goto LABEL_30;
        }

        v26 = (v21 + 272 + 48 * v23 + 8);
        free(v27);
      }

      *v26 = 0;
      v22 = *(v21 + 220);
LABEL_30:
      ++v23;
      v25 += 48;
      ++v24;
      if (v23 >= v22)
      {
        goto LABEL_35;
      }
    }
  }

  v16 = v12;
  *(a1 + 4) |= 4u;
  v17 = *__error();
  v18 = *__error();
  v19 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    *&buf[4] = "db_shove_page";
    v47 = 1024;
    v48 = 1228;
    v49 = 1024;
    *v50 = v43;
    *&v50[4] = 1024;
    *&v50[6] = v17;
    *v51 = 2080;
    *&v51[2] = a1 + 324;
    *&v51[10] = 2048;
    *&v51[12] = v16;
    v52 = 2048;
    v53 = v10;
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", buf, 0x3Cu);
  }

  *__error() = v18;
  *__error() = v17;
  if (!*__error())
  {
    *__error() = 22;
  }

  free(v11);
  if (*__error())
  {
    return 28;
  }

LABEL_46:
  v30 = malloc_type_zone_malloc(sdb_map_zone, (*(a1 + 40) + v10), 0x10000408AA14F5FuLL);
  if (v30)
  {
    v31 = v30;
    memcpy(v30, v1, *(a1 + 40));
    if ((v8 & 1) == 0)
    {
      v31[4 * v2 + 7] = v44;
    }

    *(a1 + 40) += v10;
    v31[1] += v10;
    free(v1);
    v31[3] |= 1u;
    *(a1 + 856) = v31;
    v32 = ((v31[1] << 28) - 0x140000000) >> 32;
    if (v32 > v31[2] + 1)
    {
      return 0;
    }

    v34 = *__error();
    v35 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v31[2] + 1;
      *buf = 136316162;
      *&buf[4] = "map_check_size";
      v47 = 1024;
      v48 = 1418;
      v49 = 2080;
      *v50 = a1 + 324;
      *&v50[8] = 1024;
      *v51 = v36;
      *&v51[4] = 2048;
      *&v51[6] = v32;
      _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %s : map_check_size: ERR FATAL: too many entries! %d / %ld\n", buf, 0x2Cu);
    }

    *__error() = v34;
  }

  return 28;
}

uint64_t update_string_table(uint64_t a1, int a2, int a3, int a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v34 = a2;
    v35 = 1024;
    v36 = a3;
    _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Moving string page from %d to %d", buf, 0xEu);
  }

  v32 = a3;
  v10 = 0;
  *__error() = v8;
  v11 = a1 + 880;
  v31 = a1;
  v12 = a1 + 48;
  do
  {
    if ((db_string_page_flags[v10] & a4) != 0)
    {
      v13 = *(v11 + 8 * v10);
      os_unfair_lock_lock(v13 + 17);
      v14 = *(v11 + 8 * v10);
      v15 = *(v14 + 3);
      v16 = *(v12 + 4 * v10);
      v17 = *v14;
      if (*v14 == a2)
      {
        *v14 = v32;
        if (dword_1EBF46AE8 >= 5)
        {
          v30 = *__error();
          log = _SILogForLogForCategory(7);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v34 = a2;
            v35 = 1024;
            v36 = v32;
            v37 = 1024;
            v38 = v10;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Change dirty string page %d to %d (%d)", buf, 0x14u);
          }

          *__error() = v30;
        }
      }

      if (*(v12 + 4 * v10) == a2)
      {
        *(v12 + 4 * v10) = v32;
        if (dword_1EBF46AE8 >= 5)
        {
          v27 = *__error();
          v28 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v34 = a2;
            v35 = 1024;
            v36 = v32;
            v37 = 1024;
            v38 = v10;
            _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Change first string page %d to %d (%d)", buf, 0x14u);
          }

          v20 = 0;
          *__error() = v27;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_24;
      }

      if (v15)
      {
        while (1)
        {
          v18 = *(v15 + 20);
          if (v18 == a2)
          {
            break;
          }

          v15 = *(v15 + 24);
          if (!v15)
          {
            goto LABEL_4;
          }

          v16 = v18;
        }

        *(v15 + 20) = v32;
        v19 = *(v15 + 4);
        if (v19 == 0x4000)
        {
          v19 = 0;
        }

        else
        {
          *(v15 + 4) = 0x4000;
        }

        v20 = page_release(v31, v15, v16, 5u, v19);
        if (dword_1EBF46AE8 >= 5)
        {
          v25 = *__error();
          v26 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v34 = v16;
            v35 = 1024;
            v36 = v10;
            _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Push chain string page %d to disk (%d)", buf, 0xEu);
          }

          *__error() = v25;
          if (v19)
          {
LABEL_23:
            *(v15 + 4) = v19;
          }
        }

        else if (v19)
        {
          goto LABEL_23;
        }

LABEL_24:
        os_unfair_lock_unlock(v13 + 17);
        return v20;
      }

LABEL_4:
      if (v17 == a2)
      {
        v22 = __si_assert_copy_extra_3233(0, -1);
        v23 = v22;
        v24 = "";
        if (v22)
        {
          v24 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11146, "!updatedDirty", v24);
        free(v23);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      os_unfair_lock_unlock(v13 + 17);
    }

    ++v10;
  }

  while (v10 != 5);
  return 2;
}

xpc_object_t ___page_fetch_with_fd_block_invoke_204(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = strstr((*(a1 + 32) + 324), "Library/Spotlight/CoreSpotlight");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "invalid";
  }

  xpc_dictionary_set_string(empty, "name", v4);
  xpc_dictionary_set_uint64(empty, "pgoff", *(a1 + 48) << *(*(a1 + 32) + 12));
  xpc_dictionary_set_uint64(empty, "pgsize", *(*(a1 + 32) + 44));
  xpc_dictionary_set_int64(empty, "signature", **(a1 + 40));
  xpc_dictionary_set_uint64(empty, "size", *(*(a1 + 40) + 4));
  xpc_dictionary_set_int64(empty, "used_bytes", *(*(a1 + 40) + 8));
  xpc_dictionary_set_int64(empty, "flags", *(*(a1 + 40) + 12));
  return empty;
}

void *map_delete(void *result, uint64_t a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = result[107];
  v4 = v3[1].i32[0];
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = v3[2].i32[0];
  if (v6 < v4)
  {
    v7 = &v3[2 * v6];
    v9 = *(&v7[2] + 4);
    v8 = (&v7[2] + 4);
    if (v9 == a2)
    {
      v10 = *(v8 + 3);
      if (a3 == v10 >> 28)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4 >= 1)
  {
    v11 = 0;
    v12 = v3[1].u32[0];
    while (1)
    {
      v14 = (v12 + v11) >> 1;
      v15 = &v3[2 * v14 + 2] + 4;
      v16 = a3 - (*(v15 + 12) >> 28);
      if (v16)
      {
        v17 = v16;
        v13 = (v12 + v11) >> 1;
        if ((v17 & 0x8000000000000000) == 0)
        {
LABEL_13:
          if (!v17)
          {
            v18 = 0;
            goto LABEL_17;
          }

          v11 = v14 + 1;
          v13 = v12;
        }
      }

      else
      {
        v17 = a2 - *v15;
        v13 = (v12 + v11) >> 1;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      v12 = v13;
      if (v11 >= v13)
      {
        v18 = v17 > 0;
        goto LABEL_17;
      }
    }
  }

  v18 = 0;
  v14 = 0;
LABEL_17:
  v19 = v4 - 1 > v14 && v18;
  v6 = v14 + v19;
  v20 = &v3[2 * v6];
  v3[2].i32[0] = v6;
  v21 = *(&v20[2] + 4);
  v8 = (&v20[2] + 4);
  if (v21 == a2)
  {
    v10 = *(v8 + 3);
LABEL_22:
    if (a3 == v10 >> 28)
    {
      result = memmove(&v3[2 * v6 + 2] + 4, &v3[2 * v6 + 4] + 4, 16 * (v4 + ~v6));
      v22 = v3[1];
      v23.i32[0] = vadd_s32(v22, -1).u32[0];
      v23.i32[1] = (*&v22 | 0x100000001uLL) >> 32;
      v3[1] = v23;
      return result;
    }
  }

  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  v28 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *v8;
    v30 = *(v8 + 3) >> 28;
    v31 = 136316162;
    v32 = v5 + 324;
    v33 = 2048;
    v34 = a2;
    v35 = 2048;
    v36 = v29;
    v37 = 1024;
    v38 = a3;
    v39 = 1024;
    v40 = v30;
    _os_log_impl(&dword_1C278D000, v27, v28, "%s : ERR: map_delete: trying to delete non-existent oid %.16llx (%.16llx), (%d, %d)\n", &v31, 0x2Cu);
  }

  result = __error();
  *result = v26;
  return result;
}

void rebuild_map_locked(uint64_t a1)
{
  v50 = 0;
  v2 = *(a1 + 856);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = malloc_type_valloc(*(a1 + 44), 0x1000040A86A77D5uLL);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v49 = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v48 = HIDWORD(v8);
  v47 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v46 = v49;
  v45 = v48;
  v44 = v47;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v9 + 312) = v12;
    if (__THREAD_SLOT_KEY[0])
    {
      v14 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v14)
      {
        goto LABEL_51;
      }
    }

    else
    {
      makeThreadId();
      v14 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v14)
      {
        goto LABEL_51;
      }
    }

    v15 = v14;
    if (v14 < 0x801)
    {
LABEL_10:
      v16 = &threadData[9 * v15];
      v18 = *(v16 - 4);
      v17 = v16 - 2;
      if (v18 > v44)
      {
        v19 = v15 - 1;
        do
        {
          CIOnThreadCleanUpPop(v19);
        }

        while (*v17 > v44);
      }

      dropThreadId(v46, 1, add_explicit + 1);
      CICleanUpReset(v46, HIDWORD(v44));
      goto LABEL_48;
    }

LABEL_51:
    makeThreadId();
    v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_10;
  }

  v20 = v4 + v3;
  for (i = v6; ; v20 += i[1])
  {
    while (1)
    {
      v22 = *(a1 + 928);
      v23 = *(v22 + 220);
      if (v23 < 1)
      {
        break;
      }

      v24 = v20 >> *(a1 + 12);
      v25 = (v22 + 252);
      v26 = 1;
      do
      {
        v28 = *v25++;
        v27 = v28;
        if (v26 >= v23)
        {
          break;
        }

        ++v26;
      }

      while (v27 != v24);
      if (v27 != v24)
      {
        break;
      }

LABEL_15:
      v20 += 0x4000;
    }

    v29 = fd_pread(*(a1 + 848), i, *(a1 + 44), v20);
    if (v29 <= 0)
    {
      break;
    }

    if (*i != 846226020 && *i != 1684172850)
    {
      goto LABEL_15;
    }

    if (db2_page_uncompress_swap(a1, i, &v50, 0))
    {
      goto LABEL_38;
    }

    if (v50)
    {
      v31 = v50;
    }

    else
    {
      v31 = i;
    }

    i = v31;
    *buf = 0;
    v43 = 0;
    get_max_oid(a1, v31, buf, &v43);
    if (*buf)
    {
      map_force(a1, v20 >> *(a1 + 12), i[4], *buf, v43);
    }

    if (v50)
    {
      free(v50);
      v50 = 0;
      i = v6;
    }
  }

  if (v29 < 0)
  {
    *(a1 + 4) |= 4u;
  }

LABEL_38:
  v32 = 0;
  v33 = *(a1 + 928);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v39 = __rebuild_map_locked_block_invoke;
  v40 = &__block_descriptor_tmp_155_14757;
  v41 = a1;
  v42 = i;
  for (j = (v33 + 312); v32 < *(v33 + 220); j += 6)
  {
    if (v32 != *(v33 + 224))
    {
      v35 = *(v33 + 4 * v32 + 252);
      if (v35)
      {
        *&buf[16] = 0u;
        v52 = 0u;
        *buf = 0u;
        *buf = v35;
        *&buf[8] = *(j - 5);
        *&buf[24] = *(j - 6);
        *&v52 = *(j - 2);
        DWORD2(v52) = *(j - 2);
        v53 = *j;
        if (v39(v38, buf))
        {
          break;
        }
      }
    }

    ++v32;
  }

  v36 = threadData[9 * v46 + 1] + 320 * v45;
  *(v36 + 312) = v12;
  v37 = *(v36 + 232);
  if (v37)
  {
    v37(*(v36 + 288));
  }

  dropThreadId(v46, 0, add_explicit + 1);
  if (v50)
  {
    free(v50);
  }

LABEL_48:
  free(v6);
}

uint64_t map_force(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  result = map_check_size(a1);
  if (result)
  {
    return result;
  }

  v11 = *(a1 + 856);
  v12 = v11[2];
  if (!v12)
  {
    v13 = 0;
    v11[4] = 0;
LABEL_16:
    v25 = &v11[4 * v13];
    *(v25 + 5) = a4;
    v25[7] = a2;
    v25[8] = a3 & 0xFFFFFFF | (a5 << 28);
    v11[2] = v12 + 1;
    goto LABEL_31;
  }

  v13 = v11[4];
  if (v13 < v12)
  {
    v14 = &v11[4 * v13];
    v16 = *(v14 + 5);
    v15 = v14 + 5;
    if (v16 == a4)
    {
      v17 = v15[3];
      if (a5 == v17 >> 28)
      {
        goto LABEL_23;
      }
    }
  }

  if (v12 < 1)
  {
    v26 = 0;
    v20 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v19 = v11[2];
  while (1)
  {
    v20 = (v19 + v18) >> 1;
    v21 = &v11[4 * v20 + 5];
    v22 = a5 - (*(v21 + 12) >> 28);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = (v19 + v18) >> 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v19 = v24;
    if (v18 >= v24)
    {
      v26 = v23 > 0;
      goto LABEL_20;
    }
  }

  v23 = a4 - *v21;
  v24 = (v19 + v18) >> 1;
  if (v23 < 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v23)
  {
    v18 = v20 + 1;
    v24 = v19;
    goto LABEL_8;
  }

  v26 = 0;
LABEL_20:
  if (v12 - 1 <= v20)
  {
    v26 = 0;
  }

  v13 = v20 + v26;
  v27 = &v11[4 * v20 + 4 * v26];
  v11[4] = v13;
  v15 = v27 + 5;
  v17 = v27[8];
LABEL_23:
  LODWORD(v28) = a5 - (v17 >> 28);
  if (v28)
  {
    v28 = v28;
    if (v12 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v28 = a4 - *v15;
  if (v12 >= 1)
  {
LABEL_27:
    if (v28)
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_29:
  if (v15[2] != a2)
  {
    if (v12 - 1 == v13 && v28 >= 1)
    {
      v11[4] = ++v13;
    }

    else
    {
      memmove(&v11[4 * v13 + 9], &v11[4 * v13 + 5], 16 * (v12 - v13));
      v12 = v11[2];
    }

    goto LABEL_16;
  }

  v11[4 * v13 + 8] = v11[4 * v13 + 8] & 0xFFFFFFF | (a5 << 28);
  *v15 = a4;
LABEL_31:
  result = 0;
  v11[3] |= 1u;
  return result;
}

uint64_t get_max_oid(uint64_t result, uint64_t a2, unint64_t *a3, int *a4)
{
  if (*a2 != 1684172850 || (*(a2 + 12) & 0xF0) != 0 || (v4 = *(a2 + 8), v4 < 21))
  {
    v7 = 0;
  }

  else
  {
    v5 = a2 + v4;
    v6 = a2 + 20;
    do
    {
      v12 = v6 + 4;
      v13 = *(v6 + 4);
      if (*(v6 + 4) < 0)
      {
        v15 = *(v6 + 4);
        if (v15 > 0xBF)
        {
          if (v15 > 0xDF)
          {
            if (v15 > 0xEF)
            {
              if (v15 > 0xF7)
              {
                if (v15 > 0xFB)
                {
                  if (v15 > 0xFD)
                  {
                    if (v15 == 255)
                    {
                      v13 = *(v6 + 5);
                      v14 = 9;
                    }

                    else
                    {
                      v13 = (*(v6 + 5) << 48) | (*(v6 + 6) << 40) | (*(v6 + 7) << 32) | (*(v6 + 8) << 24) | (*(v6 + 9) << 16) | (*(v6 + 10) << 8) | *(v6 + 11);
                      v14 = 8;
                    }
                  }

                  else
                  {
                    v13 = ((v13 & 1) << 48) | (*(v6 + 5) << 40) | (*(v6 + 6) << 32) | (*(v6 + 7) << 24) | (*(v6 + 8) << 16) | (*(v6 + 9) << 8) | *(v6 + 10);
                    v14 = 7;
                  }
                }

                else
                {
                  v13 = ((v13 & 3) << 40) | (*(v6 + 5) << 32) | (*(v6 + 6) << 24) | (*(v6 + 7) << 16) | (*(v6 + 8) << 8) | *(v6 + 9);
                  v14 = 6;
                }
              }

              else
              {
                v13 = ((v13 & 7) << 32) | (*(v6 + 5) << 24) | (*(v6 + 6) << 16) | (*(v6 + 7) << 8) | *(v6 + 8);
                v14 = 5;
              }
            }

            else
            {
              v13 = ((v13 & 0xF) << 24) | (*(v6 + 5) << 16) | (*(v6 + 6) << 8) | *(v6 + 7);
              v14 = 4;
            }
          }

          else
          {
            v13 = ((v13 & 0x1F) << 16) | (*(v6 + 5) << 8) | *(v6 + 6);
            v14 = 3;
          }
        }

        else
        {
          v14 = 2;
          v13 = *(v6 + 5) | ((v13 & 0x3F) << 8);
        }
      }

      else
      {
        v14 = 1;
      }

      *a3 = v13;
      v16 = v12 + v14;
      v17 = *(v12 + v14);
      v9 = v17;
      if (v17 < 0)
      {
        if (v17 < 0xC0u)
        {
          v8 = 1;
        }

        else
        {
          if (v17 >= 0xE0u)
          {
            v18 = __si_assert_copy_extra_3233(0, -1);
            v19 = v18;
            v20 = "";
            if (v18)
            {
              v20 = v18;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v20);
            free(v19);
            if (__valid_fs(-1))
            {
              v21 = 2989;
            }

            else
            {
              v21 = 3072;
            }

            *v21 = -559038737;
            abort();
          }

          v8 = 2;
        }

        v9 = *(v16 + v8);
      }

      v10 = (*v6 + 4);
      v6 += v10;
      if (v10)
      {
        v11 = v6 >= v5;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    v7 = (v9 >> 5) & 1;
  }

  *a4 = *(result + 804) & v7;
  return result;
}

uint64_t __rebuild_map_locked_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  get_max_oid(*(a1 + 32), *(a2 + 8), &v6, &v5);
  if (v6)
  {
    map_force(*(a1 + 32), *a2, *(*(a1 + 40) + 16), v6, v5);
  }

  return 0;
}

uint64_t map_insert(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  result = map_check_size(a1);
  if (result)
  {
    return result;
  }

  v11 = *(a1 + 856);
  v12 = v11[4];
  v13 = v11[2];
  if (v12 < v13)
  {
    v14 = &v11[4 * v12];
    v16 = *(v14 + 5);
    v15 = v14 + 5;
    if (v16 == a4)
    {
      v17 = v15[3];
      if (a5 == v17 >> 28)
      {
        goto LABEL_20;
      }
    }
  }

  if (v13 < 1)
  {
    v25 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  v19 = v11[2];
  while (1)
  {
    v20 = (v19 + v18) >> 1;
    v21 = &v11[4 * v20 + 5];
    v22 = a5 - (*(v21 + 12) >> 28);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = (v19 + v18) >> 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v19 = v24;
    if (v18 >= v24)
    {
      v25 = v23 > 0;
      goto LABEL_17;
    }
  }

  v23 = a4 - *v21;
  v24 = (v19 + v18) >> 1;
  if (v23 < 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (v23)
  {
    v18 = v20 + 1;
    v24 = v19;
    goto LABEL_7;
  }

  v25 = 0;
LABEL_17:
  if (v13 - 1 <= v20)
  {
    v25 = 0;
  }

  v12 = v20 + v25;
  v26 = &v11[4 * v20 + 4 * v25];
  v11[4] = v12;
  v15 = v26 + 5;
  v17 = v26[8];
LABEL_20:
  v27 = a5 - (v17 >> 28);
  if (v27)
  {
    v28 = v27;
    if (v13 >= 1)
    {
      goto LABEL_24;
    }

LABEL_28:
    v32 = v12;
    if (v13 - 1 == v12 && v28 >= 1)
    {
      v11[4] = v12 + 1;
      v32 = v12 + 1;
    }

    else
    {
      memmove(&v11[4 * v12 + 9], &v11[4 * v12 + 5], 16 * (v13 - v12));
      v13 = v11[2];
    }

    result = 0;
    v33 = &v11[4 * v32];
    *(v33 + 5) = a4;
    v33[7] = a2;
    v33[8] = a3 & 0xFFFFFFF | (a5 << 28);
    LODWORD(v33) = v11[3] | 1;
    v11[2] = v13 + 1;
    v11[3] = v33;
    return result;
  }

  v28 = a4 - *v15;
  if (v13 < 1)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v28)
  {
    goto LABEL_28;
  }

  v29 = *__error();
  v30 = _SILogForLogForCategory(7);
  v31 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v30, v31))
  {
    v34 = 136315650;
    v35 = a1 + 324;
    v36 = 1024;
    v37 = v12;
    v38 = 2048;
    v39 = a4;
    _os_log_impl(&dword_1C278D000, v30, v31, "%s : ERR: map_insert: key already present! idx %d %.16llx\n", &v34, 0x1Cu);
  }

  *__error() = v29;
  return 22;
}

uint64_t page_split(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = a3;
  v9 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v114 = a4;
  v115 = a3;
  v112 = 0;
  __src = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a3, a4, 0, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    return result;
  }

  v11 = value_out;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    v101 = *__error();
    v102 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "page_split";
      v117 = 1024;
      *v118 = 4545;
      *&v118[4] = 1024;
      *&v118[6] = v7;
      _os_log_error_impl(&dword_1C278D000, v102, OS_LOG_TYPE_ERROR, "%s:%d: page_split: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v101;
    v103 = __si_assert_copy_extra_3233(0, -1);
    v104 = v103;
    if (v103)
    {
      v105 = v103;
    }

    else
    {
      v105 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 4546, v105);
    free(v104);
    goto LABEL_204;
  }

  v12 = *(value_out + 2);
  v13 = value_out + v12;
  v112 = value_out + v12;
  v15 = (a2 + 4);
  v14 = *(a2 + 4);
  if ((v14 & 0x80) != 0)
  {
    if (v14 > 0xBF)
    {
      if (v14 > 0xDF)
      {
        if (v14 > 0xEF)
        {
          if (v14 > 0xF7)
          {
            if (v14 > 0xFB)
            {
              if (v14 > 0xFD)
              {
                if (v14 == 255)
                {
                  v14 = *(a2 + 5);
                  v16 = 9;
                }

                else
                {
                  v14 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v16 = 8;
                }
              }

              else
              {
                v14 = ((v14 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v16 = 7;
              }
            }

            else
            {
              v14 = ((v14 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v16 = 6;
            }
          }

          else
          {
            v14 = ((v14 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v16 = 5;
          }
        }

        else
        {
          v14 = ((v14 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v16 = 4;
        }
      }

      else
      {
        v14 = ((v14 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v16 = 3;
      }
    }

    else
    {
      v16 = 2;
      v14 = *(a2 + 5) | ((v14 & 0x3F) << 8);
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = &v15[v16];
  v18 = *v17;
  if (*v17 < 0)
  {
    if (v18 >= 0xC0)
    {
      if (v18 >= 0xE0)
      {
        goto LABEL_220;
      }

      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v18 = v17[v19];
  }

  v20 = value_out + 20;
  v110 = a5;
  if (v12 < 21)
  {
    v24 = 0;
    v25 = 0;
    v26 = value_out + v12;
    v27 = value_out;
  }

  else
  {
    v21 = *(v9 + 804);
    v22 = *(value_out + 24);
    if (*(value_out + 24) < 0)
    {
      v28 = *(value_out + 24);
      if (v28 > 0xBF)
      {
        if (v28 > 0xDF)
        {
          if (v28 > 0xEF)
          {
            if (v28 > 0xF7)
            {
              if (v28 > 0xFB)
              {
                if (v28 > 0xFD)
                {
                  if (v28 == 255)
                  {
                    v22 = *(value_out + 25);
                    v23 = 9;
                  }

                  else
                  {
                    v22 = (*(value_out + 25) << 48) | (*(value_out + 26) << 40) | (*(value_out + 27) << 32) | (*(value_out + 28) << 24) | (*(value_out + 29) << 16) | (*(value_out + 30) << 8) | *(value_out + 31);
                    v23 = 8;
                  }
                }

                else
                {
                  v22 = ((v22 & 1) << 48) | (*(value_out + 25) << 40) | (*(value_out + 26) << 32) | (*(value_out + 27) << 24) | (*(value_out + 28) << 16) | (*(value_out + 29) << 8) | *(value_out + 30);
                  v23 = 7;
                }
              }

              else
              {
                v22 = ((v22 & 3) << 40) | (*(value_out + 25) << 32) | (*(value_out + 26) << 24) | (*(value_out + 27) << 16) | (*(value_out + 28) << 8) | *(value_out + 29);
                v23 = 6;
              }
            }

            else
            {
              v22 = ((v22 & 7) << 32) | (*(value_out + 25) << 24) | (*(value_out + 26) << 16) | (*(value_out + 27) << 8) | *(value_out + 28);
              v23 = 5;
            }
          }

          else
          {
            v22 = ((v22 & 0xF) << 24) | (*(value_out + 25) << 16) | (*(value_out + 26) << 8) | *(value_out + 27);
            v23 = 4;
          }
        }

        else
        {
          v22 = ((v22 & 0x1F) << 16) | (*(value_out + 25) << 8) | *(value_out + 26);
          v23 = 3;
        }
      }

      else
      {
        v23 = 2;
        v22 = *(value_out + 25) | ((v22 & 0x3F) << 8);
      }
    }

    else
    {
      v23 = 1;
    }

    v29 = value_out + v23 + 24;
    v30 = *v29;
    if (*v29 < 0)
    {
      if (v30 >= 0xC0)
      {
        if (v30 >= 0xE0)
        {
          goto LABEL_220;
        }

        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v30 = v29[v31];
    }

    v108 = v7;
    v24 = 0;
    v25 = 0;
    v32 = v21 & (v18 >> 5) & 1;
    v33 = v21 & (v30 >> 5) & 1;
    v34 = value_out + 20;
    while (v33 < v32 || v33 == v32 && v22 < v14)
    {
      v34 += (*v34 + 4);
      if (v34 >= v13)
      {
        break;
      }

      v24 = v34[4];
      if (v34[4] < 0)
      {
        v38 = v34[4];
        if (v38 > 0xBF)
        {
          if (v38 > 0xDF)
          {
            if (v38 > 0xEF)
            {
              if (v38 > 0xF7)
              {
                if (v38 > 0xFB)
                {
                  if (v38 > 0xFD)
                  {
                    if (v38 == 255)
                    {
                      v24 = *(v34 + 5);
                      v37 = 9;
                    }

                    else
                    {
                      v24 = (v34[5] << 48) | (v34[6] << 40) | (v34[7] << 32) | (v34[8] << 24) | (v34[9] << 16) | (v34[10] << 8) | v34[11];
                      v37 = 8;
                    }
                  }

                  else
                  {
                    v24 = ((v24 & 1) << 48) | (v34[5] << 40) | (v34[6] << 32) | (v34[7] << 24) | (v34[8] << 16) | (v34[9] << 8) | v34[10];
                    v37 = 7;
                  }
                }

                else
                {
                  v24 = ((v24 & 3) << 40) | (v34[5] << 32) | (v34[6] << 24) | (v34[7] << 16) | (v34[8] << 8) | v34[9];
                  v37 = 6;
                }
              }

              else
              {
                v24 = ((v24 & 7) << 32) | (v34[5] << 24) | (v34[6] << 16) | (v34[7] << 8) | v34[8];
                v37 = 5;
              }
            }

            else
            {
              v24 = ((v24 & 0xF) << 24) | (v34[5] << 16) | (v34[6] << 8) | v34[7];
              v37 = 4;
            }
          }

          else
          {
            v24 = ((v24 & 0x1F) << 16) | (v34[5] << 8) | v34[6];
            v37 = 3;
          }
        }

        else
        {
          v37 = 2;
          v24 = v34[5] | ((v24 & 0x3F) << 8);
        }
      }

      else
      {
        v37 = 1;
      }

      v39 = &v34[v37 + 4];
      v36 = *v39;
      if (*v39 < 0)
      {
        if (v36 < 0xC0)
        {
          v35 = 1;
        }

        else
        {
          if (v36 >= 0xE0)
          {
            goto LABEL_201;
          }

          v35 = 2;
        }

        v36 = v39[v35];
      }

      v25 = v21 & (v36 >> 5) & 1;
      v22 = v24;
      v33 = v25;
    }

    if (v34 <= v13)
    {
      v26 = value_out + v12;
      v27 = value_out;
      v20 = v34;
      v7 = v108;
    }

    else
    {
      v106 = v9;
      v107 = v12;
      v40 = a2;
      v41 = (a2 + 4);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        *&buf[4] = v34;
        v117 = 2048;
        *v118 = v13;
        *&v118[8] = 2048;
        *&v118[10] = v11 + 5;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "dbo %p beyond end of page at %p. Resetting to last at %p", buf, 0x20u);
        v27 = value_out;
        v26 = v112;
      }

      else
      {
        v26 = v13;
        v27 = v11;
      }

      v7 = v108;
      v15 = v41;
      a2 = v40;
      v9 = v106;
      LODWORD(v12) = v107;
    }
  }

  v42 = v20 - v11;
  if (v20 >= v13)
  {
    v42 = v12;
  }

  v43 = v42;
  v44 = v26 - v27;
  if (*(*(v9 + 856) + 16) != *(*(v9 + 856) + 8) - 1 || v44 > v42)
  {
    v46 = v27 + v42;
    __src = v27 + v43;
    if (v44 <= v43)
    {
      v50 = 0;
      v51 = 1;
      goto LABEL_132;
    }

    v47 = v46[4];
    if (v46[4] < 0)
    {
      v48 = v46[4];
      if (v48 <= 0xBF)
      {
        v47 = v46[5] | ((v47 & 0x3F) << 8);
        goto LABEL_114;
      }

      if (v48 > 0xDF)
      {
        if (v48 > 0xEF)
        {
          if (v48 > 0xF7)
          {
            if (v48 > 0xFB)
            {
              if (v48 > 0xFD)
              {
                if (v48 == 255)
                {
                  v47 = *(v46 + 5);
                  goto LABEL_114;
                }

                v52 = (v46[5] << 48) | (v46[6] << 40) | (v46[7] << 32) | (v46[8] << 24) | (v46[9] << 16) | (v46[10] << 8);
                v53 = v46[11];
              }

              else
              {
                v52 = ((v47 & 1) << 48) | (v46[5] << 40) | (v46[6] << 32) | (v46[7] << 24) | (v46[8] << 16) | (v46[9] << 8);
                v53 = v46[10];
              }
            }

            else
            {
              v52 = ((v47 & 3) << 40) | (v46[5] << 32) | (v46[6] << 24) | (v46[7] << 16) | (v46[8] << 8);
              v53 = v46[9];
            }
          }

          else
          {
            v52 = ((v47 & 7) << 32) | (v46[5] << 24) | (v46[6] << 16) | (v46[7] << 8);
            v53 = v46[8];
          }
        }

        else
        {
          v52 = ((v47 & 0xF) << 24) | (v46[5] << 16) | (v46[6] << 8);
          v53 = v46[7];
        }
      }

      else
      {
        v52 = ((v47 & 0x1F) << 16) | (v46[5] << 8);
        v53 = v46[6];
      }

      v47 = v52 | v53;
    }

LABEL_114:
    v54 = *v15;
    if (*v15 < 0)
    {
      v55 = *v15;
      if (v55 > 0xBF)
      {
        if (v55 > 0xDF)
        {
          if (v55 > 0xEF)
          {
            if (v55 > 0xF7)
            {
              if (v55 > 0xFB)
              {
                if (v55 > 0xFD)
                {
                  if (v55 == 255)
                  {
                    v54 = *(a2 + 5);
                    goto LABEL_131;
                  }

                  v56 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8);
                  v57 = *(a2 + 11);
                }

                else
                {
                  v56 = ((v54 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8);
                  v57 = *(a2 + 10);
                }
              }

              else
              {
                v56 = ((v54 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8);
                v57 = *(a2 + 9);
              }
            }

            else
            {
              v56 = ((v54 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8);
              v57 = *(a2 + 8);
            }
          }

          else
          {
            v56 = ((v54 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8);
            v57 = *(a2 + 7);
          }
        }

        else
        {
          v56 = ((v54 & 0x1F) << 16) | (*(a2 + 5) << 8);
          v57 = *(a2 + 6);
        }

        v54 = v56 | v57;
        goto LABEL_131;
      }

      v54 = *(a2 + 5) | ((v54 & 0x3F) << 8);
    }

LABEL_131:
    v50 = v47 == v54;
    v51 = v47 != v54;
LABEL_132:
    v109 = v51;
    v58 = v15;
    if (a4 - 20 <= (*a2 + 4))
    {
      v59 = a2;
    }

    else
    {
      result = try_push_insert_obj(v9, v27, v7, a2, v43, v110 & 0x4000);
      if (!result)
      {
        return result;
      }

      v59 = a2;
      v27 = value_out;
    }

    v60 = *(v9 + 928);
    pthread_rwlock_wrlock((v60 + 8));
    v61 = *(v60 + 220);
    if (v61 >= 1)
    {
      v62 = v60 + 272;
      while (*v62 != v27)
      {
        v62 += 48;
        if (!--v61)
        {
          goto LABEL_142;
        }
      }

      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      *(v62 + 40) = 0;
    }

LABEL_142:
    pthread_rwlock_unlock((v60 + 8));
    v66 = *v59 + 4;
    if (v50)
    {
      v67 = __src;
      v68 = *__src + 4;
      if (v66 <= v68)
      {
        goto LABEL_147;
      }

      v69 = *v59 - *__src;
      v70 = *(value_out + 2);
      if (v69 <= *(value_out + 1) - v70)
      {
        goto LABEL_147;
      }

      v71 = page_resize(v9, &value_out, 1, v69 + v70, &__src, v63, v64, v65, &v112);
      if (!v71)
      {
        v67 = __src;
        v66 = *v59 + 4;
        v68 = *__src + 4;
LABEL_147:
        memmove(&v67[v66], &v67[v68], v112 - &v67[v68]);
        v72 = __src;
        *(value_out + 2) += *v59 - *__src;
LABEL_153:
        memcpy(v72, v59, (*v59 + 4));
        v79 = __src < v112 || v50;
        v80 = *(v59 + 4);
        if (v79)
        {
          if ((v80 & 0x80) != 0)
          {
            if (v80 > 0xBF)
            {
              if (v80 > 0xDF)
              {
                if (v80 > 0xEF)
                {
                  if (v80 > 0xF7)
                  {
                    if (v80 > 0xFB)
                    {
                      if (v80 > 0xFD)
                      {
                        if (v80 == 255)
                        {
                          v80 = *(v59 + 5);
                          v81 = 9;
                        }

                        else
                        {
                          v80 = (*(v59 + 5) << 48) | (*(v59 + 6) << 40) | (*(v59 + 7) << 32) | (*(v59 + 8) << 24) | (*(v59 + 9) << 16) | (*(v59 + 10) << 8) | *(v59 + 11);
                          v81 = 8;
                        }
                      }

                      else
                      {
                        v80 = ((v80 & 1) << 48) | (*(v59 + 5) << 40) | (*(v59 + 6) << 32) | (*(v59 + 7) << 24) | (*(v59 + 8) << 16) | (*(v59 + 9) << 8) | *(v59 + 10);
                        v81 = 7;
                      }
                    }

                    else
                    {
                      v80 = ((v80 & 3) << 40) | (*(v59 + 5) << 32) | (*(v59 + 6) << 24) | (*(v59 + 7) << 16) | (*(v59 + 8) << 8) | *(v59 + 9);
                      v81 = 6;
                    }
                  }

                  else
                  {
                    v80 = ((v80 & 7) << 32) | (*(v59 + 5) << 24) | (*(v59 + 6) << 16) | (*(v59 + 7) << 8) | *(v59 + 8);
                    v81 = 5;
                  }
                }

                else
                {
                  v80 = ((v80 & 0xF) << 24) | (*(v59 + 5) << 16) | (*(v59 + 6) << 8) | *(v59 + 7);
                  v81 = 4;
                }
              }

              else
              {
                v80 = ((v80 & 0x1F) << 16) | (*(v59 + 5) << 8) | *(v59 + 6);
                v81 = 3;
              }
            }

            else
            {
              v81 = 2;
              v80 = *(v59 + 5) | ((v80 & 0x3F) << 8);
            }
          }

          else
          {
            v81 = 1;
          }

          if (v58[v81] < 0xE0u)
          {
            if (dword_1EBF46AE8 >= 5)
            {
              v97 = v7;
              v98 = *__error();
              v99 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                v100 = __src + *__src;
                *buf = 136316930;
                *&buf[4] = v9 + 324;
                v117 = 1024;
                *v118 = v97;
                *&v118[4] = 2048;
                *&v118[6] = v24;
                *&v118[14] = 2048;
                *&v118[16] = v80;
                v119 = 2048;
                v120 = __src;
                v121 = 2048;
                v122 = v112;
                v123 = 2048;
                v124 = v100;
                v125 = 2048;
                v126 = value_out;
                _os_log_impl(&dword_1C278D000, v99, OS_LOG_TYPE_DEFAULT, "%s : no map update for split at pgnum %d oid (%.16llx) to(%.16llx) dbo:%p end:%p next:%p dbp:%p\n", buf, 0x4Eu);
              }

              *__error() = v98;
              v7 = v97;
            }

            goto LABEL_192;
          }

LABEL_201:
          v85 = __si_assert_copy_extra_3233(0, -1);
          v86 = v85;
          v87 = "";
          if (v85)
          {
            v87 = v85;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v87);
          free(v86);
          if (!__valid_fs(-1))
          {
            v88 = 3072;
LABEL_206:
            *v88 = -559038737;
            abort();
          }

LABEL_204:
          v88 = 2989;
          goto LABEL_206;
        }

        if ((v80 & 0x80) != 0)
        {
          if (v80 > 0xBF)
          {
            if (v80 > 0xDF)
            {
              if (v80 > 0xEF)
              {
                if (v80 > 0xF7)
                {
                  if (v80 > 0xFB)
                  {
                    if (v80 > 0xFD)
                    {
                      if (v80 == 255)
                      {
                        v80 = *(v59 + 5);
                        v82 = 9;
                      }

                      else
                      {
                        v80 = (*(v59 + 5) << 48) | (*(v59 + 6) << 40) | (*(v59 + 7) << 32) | (*(v59 + 8) << 24) | (*(v59 + 9) << 16) | (*(v59 + 10) << 8) | *(v59 + 11);
                        v82 = 8;
                      }
                    }

                    else
                    {
                      v80 = ((v80 & 1) << 48) | (*(v59 + 5) << 40) | (*(v59 + 6) << 32) | (*(v59 + 7) << 24) | (*(v59 + 8) << 16) | (*(v59 + 9) << 8) | *(v59 + 10);
                      v82 = 7;
                    }
                  }

                  else
                  {
                    v80 = ((v80 & 3) << 40) | (*(v59 + 5) << 32) | (*(v59 + 6) << 24) | (*(v59 + 7) << 16) | (*(v59 + 8) << 8) | *(v59 + 9);
                    v82 = 6;
                  }
                }

                else
                {
                  v80 = ((v80 & 7) << 32) | (*(v59 + 5) << 24) | (*(v59 + 6) << 16) | (*(v59 + 7) << 8) | *(v59 + 8);
                  v82 = 5;
                }
              }

              else
              {
                v80 = ((v80 & 0xF) << 24) | (*(v59 + 5) << 16) | (*(v59 + 6) << 8) | *(v59 + 7);
                v82 = 4;
              }
            }

            else
            {
              v80 = ((v80 & 0x1F) << 16) | (*(v59 + 5) << 8) | *(v59 + 6);
              v82 = 3;
            }
          }

          else
          {
            v82 = 2;
            v80 = *(v59 + 5) | ((v80 & 0x3F) << 8);
          }
        }

        else
        {
          v82 = 1;
        }

        v89 = &v58[v82];
        v90 = *v89;
        if ((*v89 & 0x80000000) == 0)
        {
          goto LABEL_214;
        }

        if (v90 < 0xC0)
        {
          v91 = 1;
LABEL_213:
          v90 = v89[v91];
LABEL_214:
          v92 = *(v9 + 804) & (v90 >> 5);
          if (v24)
          {
            v93 = map_update(v9, v7, a4, v24, v80, v25, v92 & 1, 1);
            if (!v93)
            {
LABEL_192:
              if ((*(v9 + 804) & 2) != 0)
              {
                v83 = 114688;
              }

              else
              {
                v83 = 196608;
              }

              if (*(value_out + 2) <= v83)
              {
                v84 = 1;
              }

              else
              {
                v84 = 3;
              }

              page_release(v9, value_out, v7, v110 & 0x4000 | v84, 0);
              result = 0;
              if (v109)
              {
                ++*(v9 + 20);
              }

              return result;
            }
          }

          else
          {
            v93 = map_force(v9, v7, a4, v80, v92 & 1);
            if (!v93)
            {
              goto LABEL_192;
            }
          }

          v74 = value_out;
          v78 = v110 & 0x4000;
          v75 = v93;
          v76 = v9;
          v77 = v7;
LABEL_219:
          page_release(v76, v74, v77, v78, 0);
          return v75;
        }

        if (v90 < 0xE0)
        {
          v91 = 2;
          goto LABEL_213;
        }

LABEL_220:
        v94 = __si_assert_copy_extra_3233(0, -1);
        v95 = v94;
        v96 = "";
        if (v94)
        {
          v96 = v94;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v96);
        free(v95);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

LABEL_150:
      v74 = value_out;
      v75 = v71;
      v76 = v9;
      v77 = v7;
      v78 = 0;
      goto LABEL_219;
    }

    v73 = *(value_out + 2);
    if (v66 > *(value_out + 1) - v73)
    {
      v71 = page_resize(v9, &value_out, 1, v73 + v66, &__src, v63, v64, v65, &v112);
      if (v71)
      {
        goto LABEL_150;
      }

      v66 = *v59 + 4;
    }

    memmove(__src + v66, __src, v112 - __src);
    *(value_out + 2) += *v59 + 4;
    v72 = __src;
    goto LABEL_153;
  }

  v49 = 4 * ((v27[3] & 0xC) != 0);
  page_release(v9, v27, v7, 0, 0);
  *buf = 0;
  result = _page_alloc_fetch(v9, buf, 0, &v115, &v114, v49);
  if (!result)
  {
    free(*buf);
    return _real_page_insert_obj(v9, a2, v110 & 0x4000, v115, v114);
  }

  return result;
}

uint64_t try_push_insert_obj(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned __int8 *a4, int a5, __int16 a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 856);
  v9 = v8[4];
  v10 = v8[2];
  if (v10 <= v9 || v9 <= -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8[4];
  }

  if (v12 >= v10)
  {
LABEL_11:
    if (!v12)
    {
LABEL_15:
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      v20 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v19, v20))
      {
        v32 = 136315394;
        v33 = a1 + 324;
        v34 = 1024;
        v35 = a3;
        _os_log_impl(&dword_1C278D000, v19, v20, "%s : ERR: try_push_insert_obj: BAD NEWS! pgnum 0x%x not found\n", &v32, 0x12u);
      }

      *__error() = v18;
      return 22;
    }

    v14 = 0;
    v16 = v8 + 7;
    while (1)
    {
      v17 = *v16;
      v16 += 4;
      if (v17 == a3)
      {
        break;
      }

      if (v12 == ++v14)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v13 = &v8[4 * v12 + 7];
    v14 = v12;
    while (1)
    {
      v15 = *v13;
      v13 += 4;
      if (v15 == a3)
      {
        break;
      }

      if (v10 == ++v14)
      {
        goto LABEL_11;
      }
    }
  }

  v8[4] = v14;
  if (v14 + 1 < v10)
  {
    v22 = &v8[4 * v14 + 4];
    v23 = v22[7];
    v24 = v22[8] & 0xFFFFFFF;
    if (v14 < 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v31 = &v8[4 * v14];
    v26 = v31[3];
    v25 = v31[4] & 0xFFFFFFF;
    if (!v23)
    {
      goto LABEL_22;
    }

LABEL_25:
    v28 = a6;
    v27 = a2;
    v29 = a4;
    v30 = a5;
    result = try_push_right(a1, a2, a3, a4, a5, v23, v24, a6 & 0x4000);
    if (!result)
    {
      return result;
    }

    goto LABEL_26;
  }

  v24 = 0;
  v23 = 0;
  if (v14 >= 1)
  {
    goto LABEL_24;
  }

LABEL_21:
  v25 = 0;
  v26 = 0;
  if (v23)
  {
    goto LABEL_25;
  }

LABEL_22:
  v27 = a2;
  v28 = a6;
  v29 = a4;
  v30 = a5;
  result = 28;
LABEL_26:
  if (v26)
  {

    return try_push_left(a1, v27, a3, v29, v30, v26, v25, v28 & 0x4000);
  }

  return result;
}

uint64_t try_push_right(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, signed int a7, unsigned int a8)
{
  v84 = *MEMORY[0x1E69E9840];
  v77 = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a6, a7, 1, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    return result;
  }

  v76 = a8;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    goto LABEL_83;
  }

  v17 = *(value_out + 1);
  v18 = *(value_out + 2);
  v19 = v17 - v18;
  if (a7 < 4 * (v17 - v18))
  {
    goto LABEL_83;
  }

  v20 = a2[2];
  if (v20 <= a5)
  {
    goto LABEL_83;
  }

  v21 = a2 + a5;
  v22 = v21[4];
  if (v21[4] < 0)
  {
    v23 = v21[4];
    if (v23 <= 0xBF)
    {
      v22 = v21[5] | ((v22 & 0x3F) << 8);
      goto LABEL_22;
    }

    if (v23 > 0xDF)
    {
      if (v23 > 0xEF)
      {
        if (v23 > 0xF7)
        {
          if (v23 > 0xFB)
          {
            if (v23 > 0xFD)
            {
              if (v23 == 255)
              {
                v22 = *(v21 + 5);
                goto LABEL_22;
              }

              v24 = (v21[5] << 48) | (v21[6] << 40) | (v21[7] << 32) | (v21[8] << 24) | (v21[9] << 16) | (v21[10] << 8);
              v25 = v21[11];
            }

            else
            {
              v24 = ((v22 & 1) << 48) | (v21[5] << 40) | (v21[6] << 32) | (v21[7] << 24) | (v21[8] << 16) | (v21[9] << 8);
              v25 = v21[10];
            }
          }

          else
          {
            v24 = ((v22 & 3) << 40) | (v21[5] << 32) | (v21[6] << 24) | (v21[7] << 16) | (v21[8] << 8);
            v25 = v21[9];
          }
        }

        else
        {
          v24 = ((v22 & 7) << 32) | (v21[5] << 24) | (v21[6] << 16) | (v21[7] << 8);
          v25 = v21[8];
        }
      }

      else
      {
        v24 = ((v22 & 0xF) << 24) | (v21[5] << 16) | (v21[6] << 8);
        v25 = v21[7];
      }
    }

    else
    {
      v24 = ((v22 & 0x1F) << 16) | (v21[5] << 8);
      v25 = v21[6];
    }

    v22 = v24 | v25;
  }

LABEL_22:
  v26 = a4[4];
  if (a4[4] < 0)
  {
    v27 = a4[4];
    if (v27 > 0xBF)
    {
      if (v27 > 0xDF)
      {
        if (v27 > 0xEF)
        {
          if (v27 > 0xF7)
          {
            if (v27 > 0xFB)
            {
              if (v27 > 0xFD)
              {
                if (v27 == 255)
                {
                  v26 = *(a4 + 5);
                  goto LABEL_39;
                }

                v28 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
                v29 = a4[11];
              }

              else
              {
                v28 = ((v26 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
                v29 = a4[10];
              }
            }

            else
            {
              v28 = ((v26 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
              v29 = a4[9];
            }
          }

          else
          {
            v28 = ((v26 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
            v29 = a4[8];
          }
        }

        else
        {
          v28 = ((v26 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
          v29 = a4[7];
        }
      }

      else
      {
        v28 = ((v26 & 0x1F) << 16) | (a4[5] << 8);
        v29 = a4[6];
      }

      v26 = v28 | v29;
      goto LABEL_39;
    }

    v26 = a4[5] | ((v26 & 0x3F) << 8);
  }

LABEL_39:
  v30 = *a4;
  if (v22 == v26)
  {
    v31 = v30 - *v21;
  }

  else
  {
    v31 = v30 + 4;
  }

  if (!v31 || v31 >= v19)
  {
    goto LABEL_83;
  }

  v32 = 0;
  v33 = a2 + v20;
  v34 = a2[1];
  v35 = v34 / 10 >= v19 ? v17 - v18 : v34 / 10;
  v36 = v31 >= v34 / 10 ? v31 : v35;
  v37 = a2 + a5;
  v38 = v37;
  do
  {
    v39 = v38;
    v40 = (*v38 + 4);
    v32 += v40;
    v38 = &v39[v40];
    v41 = v38 < v33;
    if (v32 > v36 && v38 < v33 && v37 < v38)
    {
      do
      {
        v44 = (*v37 + 4);
        v32 -= v44;
        v37 += v44;
      }

      while (v32 > v36 && v37 < v38);
      v41 = 1;
    }
  }

  while (v41);
  if (v37 == v21)
  {
    v46 = (*v21 + 4);
    v32 -= v46;
    v37 = &v21[v46];
  }

  v47 = v32 < v36 && v32 < v31;
  if (v47)
  {
    goto LABEL_83;
  }

  if (v32 >= v19)
  {
    v48 = (*v37 + 4);
    v32 -= v48;
    if (v32 >= v19 || v32 < v31)
    {
      goto LABEL_83;
    }

    v37 += v48;
  }

  if (v33 - v37 != v32)
  {
    v54 = *__error();
    v55 = _SILogForLogForCategory(7);
    v56 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v55, v56))
    {
      *buf = 134218496;
      *&buf[4] = v33;
      v80 = 2048;
      v81 = v37;
      v82 = 1024;
      v83 = v32;
      _os_log_impl(&dword_1C278D000, v55, v56, "try_push_right: weird! end %p first %p but num_bytes %d\n", buf, 0x1Cu);
    }

    *__error() = v54;
    goto LABEL_83;
  }

  if (v32 + v18 >= v17 || v31 + v20 - v32 >= v34)
  {
LABEL_83:
    if (v77)
    {
      free(v77);
    }

    page_release(a1, value_out, a6, 0, 0);
    return 28;
  }

  v71 = v31;
  v72 = v26;
  __src = (a2 + a5);
  v74 = v22;
  __n = v33 - v37;
  memmove(value_out + v33 - v37 + 20, value_out + 20, v18 - 20);
  v49 = value_out;
  memcpy(value_out + 20, v37, __n);
  v49[2] += v32;
  a2[2] -= v32;
  v50 = page_compress(a1, v49, &v77, 0, (*(a1 + 804) & 2) != 0);
  v51 = a2[2];
  if (v50)
  {
    a2[2] = v51 + v32;
    v52 = value_out;
    v53 = *(value_out + 2) - v32;
    *(value_out + 2) = v53;
    memmove(v52 + 20, &v52[__n + 20], v53 - 20);
    goto LABEL_83;
  }

  if (v74 == v72)
  {
    memmove(__src + (*__src + 4) + v71, __src + (*__src + 4), a2 + v51 - (__src + (*__src + 4)));
    memcpy(__src, a4, (*a4 + 4));
    v57 = a2[2] + v71;
  }

  else
  {
    memmove(__src + (*a4 + 4), __src, v51 - a5);
    memcpy(__src, a4, (*a4 + 4));
    v57 = *a4 + a2[2] + 4;
  }

  a2[2] = v57;
  v58 = a2 + v57;
  if (v57 <= a5 && v39 >= v58)
  {
    v68 = __si_assert_copy_extra_3233(0, -1);
    v69 = v68;
    v70 = "";
    if (v68)
    {
      v70 = v68;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 4056, "dbo<end || prev_dbo<end", v70);
    free(v69);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v47 = v57 <= a5;
  v59 = a2 + a5;
  if (!v47)
  {
    do
    {
      v39 = v59;
      v59 += (*v59 + 4);
    }

    while (v59 < v58);
  }

  *buf = 0;
  v60 = v39[4];
  if (v39[4] < 0)
  {
    v62 = v39[4];
    if (v62 > 0xBF)
    {
      if (v62 > 0xDF)
      {
        if (v62 > 0xEF)
        {
          if (v62 > 0xF7)
          {
            if (v62 > 0xFB)
            {
              if (v62 > 0xFD)
              {
                if (v62 == 255)
                {
                  v60 = *(v39 + 5);
                  v61 = 9;
                }

                else
                {
                  v60 = (v39[5] << 48) | (v39[6] << 40) | (v39[7] << 32) | (v39[8] << 24) | (v39[9] << 16) | (v39[10] << 8) | v39[11];
                  v61 = 8;
                }
              }

              else
              {
                v60 = ((v60 & 1) << 48) | (v39[5] << 40) | (v39[6] << 32) | (v39[7] << 24) | (v39[8] << 16) | (v39[9] << 8) | v39[10];
                v61 = 7;
              }
            }

            else
            {
              v60 = ((v60 & 3) << 40) | (v39[5] << 32) | (v39[6] << 24) | (v39[7] << 16) | (v39[8] << 8) | v39[9];
              v61 = 6;
            }
          }

          else
          {
            v60 = ((v60 & 7) << 32) | (v39[5] << 24) | (v39[6] << 16) | (v39[7] << 8) | v39[8];
            v61 = 5;
          }
        }

        else
        {
          v60 = ((v60 & 0xF) << 24) | (v39[5] << 16) | (v39[6] << 8) | v39[7];
          v61 = 4;
        }
      }

      else
      {
        v60 = ((v60 & 0x1F) << 16) | (v39[5] << 8) | v39[6];
        v61 = 3;
      }
    }

    else
    {
      v61 = 2;
      v60 = v39[5] | ((v60 & 0x3F) << 8);
    }
  }

  else
  {
    v61 = 1;
  }

  *buf = v61;
  VInt16 = ldb_readVInt16((v39 + 4), buf);
  v64 = *(a1 + 804);
  v65 = *(a1 + 856);
  v66 = *(v65 + 12);
  v67 = v65 + 16 * *(v65 + 16);
  *(v67 + 20) = v60;
  *(v67 + 32) = (v64 << 31 >> 31) & (((VInt16 >> 5) & 1) << 28) & 0xF0000000 | *(v67 + 32) & 0xFFFFFFF;
  *(v65 + 12) = v66 | 1;
  if (v74 != v72)
  {
    ++*(a1 + 20);
  }

  db_cache_set_offset_hint(*(a1 + 928), value_out, 0, 0, 0);
  db_cache_set_offset_hint(*(a1 + 928), a2, 0, 0, 0);
  page_release(a1, a2, a3, 1u, 0);
  page_release_dirty_compressed(a1, value_out, v77, a6, v76);
  return 0;
}

uint64_t try_push_left(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, signed int a7, unsigned int a8)
{
  v133 = *MEMORY[0x1E69E9840];
  v128 = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a6, a7, 1, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    return result;
  }

  v17 = value_out;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    goto LABEL_4;
  }

  v18 = *(value_out + 1);
  v19 = *(value_out + 2);
  v20 = v18 - v19;
  if (a7 < 4 * (v18 - v19))
  {
    goto LABEL_4;
  }

  v21 = (a2 + a5);
  v22 = a2[2];
  if (v22 <= a5)
  {
    goto LABEL_43;
  }

  v23 = *(v21 + 4);
  if (v21[1] < 0)
  {
    v24 = *(v21 + 4);
    if (v24 <= 0xBF)
    {
      v23 = *(v21 + 5) | ((v23 & 0x3F) << 8);
      goto LABEL_24;
    }

    if (v24 > 0xDF)
    {
      if (v24 > 0xEF)
      {
        if (v24 > 0xF7)
        {
          if (v24 > 0xFB)
          {
            if (v24 > 0xFD)
            {
              if (v24 == 255)
              {
                v23 = *(v21 + 5);
                goto LABEL_24;
              }

              v25 = (*(v21 + 5) << 48) | (*(v21 + 6) << 40) | (*(v21 + 7) << 32) | (*(v21 + 8) << 24) | (*(v21 + 9) << 16) | (*(v21 + 10) << 8);
              v26 = *(v21 + 11);
            }

            else
            {
              v25 = ((v23 & 1) << 48) | (*(v21 + 5) << 40) | (*(v21 + 6) << 32) | (*(v21 + 7) << 24) | (*(v21 + 8) << 16) | (*(v21 + 9) << 8);
              v26 = *(v21 + 10);
            }
          }

          else
          {
            v25 = ((v23 & 3) << 40) | (*(v21 + 5) << 32) | (*(v21 + 6) << 24) | (*(v21 + 7) << 16) | (*(v21 + 8) << 8);
            v26 = *(v21 + 9);
          }
        }

        else
        {
          v25 = ((v23 & 7) << 32) | (*(v21 + 5) << 24) | (*(v21 + 6) << 16) | (*(v21 + 7) << 8);
          v26 = *(v21 + 8);
        }
      }

      else
      {
        v25 = ((v23 & 0xF) << 24) | (*(v21 + 5) << 16) | (*(v21 + 6) << 8);
        v26 = *(v21 + 7);
      }
    }

    else
    {
      v25 = ((v23 & 0x1F) << 16) | (*(v21 + 5) << 8);
      v26 = *(v21 + 6);
    }

    v23 = v25 | v26;
  }

LABEL_24:
  v27 = a4[4];
  if ((a4[4] & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  v28 = a4[4];
  if (v28 <= 0xBF)
  {
    v27 = a4[5] | ((v27 & 0x3F) << 8);
    goto LABEL_41;
  }

  if (v28 > 0xDF)
  {
    if (v28 > 0xEF)
    {
      if (v28 > 0xF7)
      {
        if (v28 > 0xFB)
        {
          if (v28 > 0xFD)
          {
            if (v28 == 255)
            {
              v27 = *(a4 + 5);
              goto LABEL_41;
            }

            v29 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
            v30 = a4[11];
          }

          else
          {
            v29 = ((v27 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
            v30 = a4[10];
          }
        }

        else
        {
          v29 = ((v27 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
          v30 = a4[9];
        }
      }

      else
      {
        v29 = ((v27 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
        v30 = a4[8];
      }
    }

    else
    {
      v29 = ((v27 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
      v30 = a4[7];
    }
  }

  else
  {
    v29 = ((v27 & 0x1F) << 16) | (a4[5] << 8);
    v30 = a4[6];
  }

  v27 = v29 | v30;
LABEL_41:
  if (v23 == v27)
  {
    v31 = 0;
    v32 = *a4 - *v21;
    goto LABEL_44;
  }

LABEL_43:
  v32 = *a4 + 4;
  v31 = 1;
LABEL_44:
  if (!v32 || v32 >= v20)
  {
    goto LABEL_4;
  }

  if (v19 >= v18 / 4 || (v33 = v20 / 2 - v32, v32 >= v33))
  {
    v34 = a2[1] / 10;
    if (v34 >= v20)
    {
      v35 = v18 - v19;
    }

    else
    {
      v35 = a2[1] / 10;
    }

    if (v32 >= v34)
    {
      v33 = v32;
    }

    else
    {
      v33 = v35;
    }
  }

  if (v22 < 21)
  {
    v71 = __si_assert_copy_extra_3233(0, -1);
    v72 = v71;
    v73 = "";
    if (v71)
    {
      v73 = v71;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 4196, "copy_end < end", v73);
    free(v72);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v36 = 0;
  v37 = (a2 + v22);
  v38 = a2[5] + 4;
  v39 = (a2 + v38 + 20);
  v40 = a2 + 5;
  v41 = a2 + 5;
  if (v39 < (a2 + v22) && v33 >= 1)
  {
    if (v31)
    {
      v36 = 0;
      v41 = a2 + 5;
      do
      {
        v40 = v41;
        v41 = v39;
        v36 += v38;
        v38 = *v39 + 4;
        v39 = (v39 + v38);
      }

      while (v39 < v37 && v36 < v33);
    }

    else
    {
      if (v39 < v21)
      {
        v36 = a2[5] + 4;
        v40 = a2 + 5;
        v41 = (a2 + v38 + 20);
        goto LABEL_68;
      }

      v36 = a2[5] + 4;
      v40 = a2 + 5;
      v41 = (a2 + v38 + 20);
      if (v38 + v32 < v20)
      {
LABEL_68:
        while (1)
        {
          v43 = v41;
          v44 = *v41 + 4;
          v41 = (v41 + v44);
          if (v41 >= v37 || v36 >= v33)
          {
            break;
          }

          v36 += v44;
          v46 = v41 < v21 || v36 + v32 < v20;
          v40 = v43;
          if (!v46)
          {
            goto LABEL_77;
          }
        }

        v41 = v43;
      }
    }
  }

LABEL_77:
  if (v36 < v33 && v36 < v32 && v41 <= v21)
  {
    goto LABEL_4;
  }

  if (v36 >= v20)
  {
    v36 = v36 - *v40 - 4;
    if (v36 >= v20)
    {
      goto LABEL_4;
    }

    if (v36 < v32 && v40 <= v21)
    {
      goto LABEL_4;
    }

    v127 = a8;
    v53 = a2 + 5;
    do
    {
      v47 = v53;
      v53 = (v53 + *v53 + 4);
    }

    while (v53 < v40);
    if (v47 == v40)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v127 = a8;
    v47 = v40;
    v40 = v41;
  }

  if (v36 + v19 >= v18)
  {
    goto LABEL_4;
  }

  if (v40 > v21)
  {
    if (v36 + v32 <= v20)
    {
      v118 = v36 + v32;
      v120 = a2 + v22;
      v124 = (a2 + a5);
      v48 = a5 - 20;
      v123 = v31;
      memcpy(value_out + v19, a2 + 5, a5 - 20);
      v49 = value_out;
      v50 = *(value_out + 2) + (a5 - 20);
      *(value_out + 2) = v50;
      memcpy(&v49[v50], a4, (*a4 + 4));
      *(value_out + 2) += *a4 + 4;
      if (v123)
      {
        v51 = (a2 + a5);
      }

      else
      {
        v55 = (*v124 + 4);
        v48 += v55;
        v51 = (v124 + v55);
      }

      v126 = v51;
      v114 = v48;
      if (v51 == v40)
      {
        v56 = a4 + 4;
        v57 = a4[4];
        if (a4[4] < 0)
        {
          v62 = a4[4];
          if (v62 <= 0xBF)
          {
            v59 = a4[5];
            goto LABEL_113;
          }

          if (v62 <= 0xDF)
          {
            v63 = ((v57 & 0x1F) << 16) | (a4[5] << 8);
            v64 = a4[6];
            goto LABEL_120;
          }

          if (v62 <= 0xEF)
          {
            v65 = ((v57 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
            v66 = a4[7];
            goto LABEL_127;
          }

          if (v62 <= 0xF7)
          {
            v67 = ((v57 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
            v68 = a4[8];
            goto LABEL_134;
          }

          if (v62 <= 0xFB)
          {
            v69 = ((v57 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
            v70 = a4[9];
            goto LABEL_145;
          }

          if (v62 <= 0xFD)
          {
            v74 = ((v57 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
            v75 = a4[10];
            goto LABEL_153;
          }

          if (v62 == 255)
          {
            v57 = *(a4 + 5);
            goto LABEL_178;
          }

          v91 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
          v92 = a4[11];
LABEL_183:
          v57 = v91 | v92;
          v61 = 8;
          goto LABEL_184;
        }
      }

      else
      {
        *buf = 0;
        v56 = v47 + 4;
        v57 = v47[4];
        if (v47[4] < 0)
        {
          v58 = v47[4];
          if (v58 <= 0xBF)
          {
            v59 = v47[5];
LABEL_113:
            v61 = 2;
            v57 = v59 & 0xFFFFFFFFFFFFC0FFLL | ((v57 & 0x3F) << 8);
            goto LABEL_184;
          }

          if (v58 <= 0xDF)
          {
            v63 = ((v57 & 0x1F) << 16) | (v47[5] << 8);
            v64 = v47[6];
LABEL_120:
            v57 = v63 | v64;
            v61 = 3;
            goto LABEL_184;
          }

          if (v58 <= 0xEF)
          {
            v65 = ((v57 & 0xF) << 24) | (v47[5] << 16) | (v47[6] << 8);
            v66 = v47[7];
LABEL_127:
            v57 = v65 | v66;
            v61 = 4;
            goto LABEL_184;
          }

          if (v58 <= 0xF7)
          {
            v67 = ((v57 & 7) << 32) | (v47[5] << 24) | (v47[6] << 16) | (v47[7] << 8);
            v68 = v47[8];
LABEL_134:
            v57 = v67 | v68;
            v61 = 5;
            goto LABEL_184;
          }

          if (v58 <= 0xFB)
          {
            v69 = ((v57 & 3) << 40) | (v47[5] << 32) | (v47[6] << 24) | (v47[7] << 16) | (v47[8] << 8);
            v70 = v47[9];
LABEL_145:
            v57 = v69 | v70;
            v61 = 6;
            goto LABEL_184;
          }

          if (v58 <= 0xFD)
          {
            v74 = ((v57 & 1) << 48) | (v47[5] << 40) | (v47[6] << 32) | (v47[7] << 24) | (v47[8] << 16) | (v47[9] << 8);
            v75 = v47[10];
LABEL_153:
            v57 = v74 | v75;
            v61 = 7;
            goto LABEL_184;
          }

          if (v58 == 255)
          {
            v57 = *(v47 + 5);
LABEL_178:
            v61 = 9;
            goto LABEL_184;
          }

          v91 = (v47[5] << 48) | (v47[6] << 40) | (v47[7] << 32) | (v47[8] << 24) | (v47[9] << 16) | (v47[10] << 8);
          v92 = v47[11];
          goto LABEL_183;
        }
      }

      v61 = 1;
LABEL_184:
      *buf = v61;
      VInt16 = ldb_readVInt16(v56, buf);
      v94 = *(a1 + 804);
      v95 = v40 - v126;
      memcpy(value_out + *(value_out + 2), v126, v40 - v126);
      v96 = value_out;
      *(value_out + 2) += v40 - v126;
      v97 = page_compress(a1, v96, &v128, 0, (*(a1 + 804) & 2) != 0);
      v78 = v118;
      if (v97)
      {
LABEL_185:
        v98 = v128;
        v17 = value_out;
        *(value_out + 2) -= v78;
        if (v98)
        {
          free(v98);
          v17 = value_out;
        }

        goto LABEL_4;
      }

      v86 = v94 & (VInt16 >> 5) & 1;
      v99 = v114 + v95;
      memmove(a2 + 5, v40, v120 - v40);
      a2[2] -= v114 + v95;
      if (v114 + v95 != v36)
      {
        v117 = v86;
        v100 = v57;
        v101 = *__error();
        v102 = _SILogForLogForCategory(7);
        v103 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v102, v103))
        {
          *buf = 67109376;
          *&buf[4] = v99;
          v131 = 1024;
          v132 = v36;
          _os_log_impl(&dword_1C278D000, v102, v103, "try_push_left: issshhhn't dat strange? decrease %d num_bytes %d\n", buf, 0xEu);
        }

        *__error() = v101;
        v84 = v127;
        v87 = v123;
        v57 = v100;
        v86 = v117;
        goto LABEL_198;
      }

      v84 = v127;
      goto LABEL_197;
    }

LABEL_4:
    page_release(a1, v17, a6, 0, 0);
    return 28;
  }

  if (v32 + v22 - v36 >= a2[1])
  {
    goto LABEL_4;
  }

  v121 = a2 + v22;
  __src = a2 + 5;
  *buf = 0;
  v119 = v47[4];
  v123 = v31;
  v125 = a2 + a5;
  v112 = v22;
  v113 = a5;
  if (v47[4] < 0)
  {
    v60 = v47[4];
    if (v60 > 0xBF)
    {
      if (v60 > 0xDF)
      {
        if (v60 > 0xEF)
        {
          if (v60 > 0xF7)
          {
            if (v60 > 0xFB)
            {
              if (v60 > 0xFD)
              {
                if (v60 == 255)
                {
                  v119 = *(v47 + 5);
                  v54 = 9;
                }

                else
                {
                  v119 = (v47[5] << 48) | (v47[6] << 40) | (v47[7] << 32) | (v47[8] << 24) | (v47[9] << 16) | (v47[10] << 8) | v47[11];
                  v54 = 8;
                }
              }

              else
              {
                v119 = ((v119 & 1) << 48) | (v47[5] << 40) | (v47[6] << 32) | (v47[7] << 24) | (v47[8] << 16) | (v47[9] << 8) | v47[10];
                v54 = 7;
              }
            }

            else
            {
              v119 = ((v119 & 3) << 40) | (v47[5] << 32) | (v47[6] << 24) | (v47[7] << 16) | (v47[8] << 8) | v47[9];
              v54 = 6;
            }
          }

          else
          {
            v119 = ((v119 & 7) << 32) | (v47[5] << 24) | (v47[6] << 16) | (v47[7] << 8) | v47[8];
            v54 = 5;
          }
        }

        else
        {
          v119 = ((v119 & 0xF) << 24) | (v47[5] << 16) | (v47[6] << 8) | v47[7];
          v54 = 4;
        }
      }

      else
      {
        v119 = ((v119 & 0x1F) << 16) | (v47[5] << 8) | v47[6];
        v54 = 3;
      }
    }

    else
    {
      v54 = 2;
      v119 = v47[5] | ((v119 & 0x3F) << 8);
    }
  }

  else
  {
    v54 = 1;
  }

  *buf = v54;
  v115 = ldb_readVInt16((v47 + 4), buf);
  v76 = *(a1 + 804);
  memcpy(value_out + *(value_out + 2), __src, v36);
  v77 = value_out;
  *(value_out + 2) += v36;
  if (page_compress(a1, v77, &v128, 0, (*(a1 + 804) & 2) != 0))
  {
    v78 = v36;
    goto LABEL_185;
  }

  v116 = v76 & (v115 >> 5) & 1;
  memmove(__src, v40, v125 - v40);
  v79 = (__src + v125 - v40);
  v80 = *v125;
  memcpy(v79, a4, (*a4 + 4));
  if (v123)
  {
    v81 = v112 - v113;
    v82 = v79 + (*v79 + 4);
    v83 = v125;
  }

  else
  {
    v83 = &v125[v80 + 4];
    v81 = v121 - v83;
    v82 = v79 + (*v79 + 4);
  }

  memmove(v82, v83, v81);
  v84 = v127;
  v85 = a2[2] - v36 + v32;
  a2[2] = v85;
  v86 = v116;
  if (v79 + (*v79 + 4) >= a2 + v85)
  {
    v88 = *(v79 + 4);
    v57 = v119;
    if (v79[1] < 0)
    {
      v90 = *(v79 + 4);
      if (v90 > 0xBF)
      {
        if (v90 > 0xDF)
        {
          if (v90 > 0xEF)
          {
            if (v90 > 0xF7)
            {
              if (v90 > 0xFB)
              {
                if (v90 > 0xFD)
                {
                  if (v90 == 255)
                  {
                    v88 = *(v79 + 5);
                    v89 = 9;
                  }

                  else
                  {
                    v88 = (*(v79 + 5) << 48) | (*(v79 + 6) << 40) | (*(v79 + 7) << 32) | (*(v79 + 8) << 24) | (*(v79 + 9) << 16) | (*(v79 + 10) << 8) | *(v79 + 11);
                    v89 = 8;
                  }
                }

                else
                {
                  v88 = ((v88 & 1) << 48) | (*(v79 + 5) << 40) | (*(v79 + 6) << 32) | (*(v79 + 7) << 24) | (*(v79 + 8) << 16) | (*(v79 + 9) << 8) | *(v79 + 10);
                  v89 = 7;
                }
              }

              else
              {
                v88 = ((v88 & 3) << 40) | (*(v79 + 5) << 32) | (*(v79 + 6) << 24) | (*(v79 + 7) << 16) | (*(v79 + 8) << 8) | *(v79 + 9);
                v89 = 6;
              }
            }

            else
            {
              v88 = ((v88 & 7) << 32) | (*(v79 + 5) << 24) | (*(v79 + 6) << 16) | (*(v79 + 7) << 8) | *(v79 + 8);
              v89 = 5;
            }
          }

          else
          {
            v88 = ((v88 & 0xF) << 24) | (*(v79 + 5) << 16) | (*(v79 + 6) << 8) | *(v79 + 7);
            v89 = 4;
          }
        }

        else
        {
          v88 = ((v88 & 0x1F) << 16) | (*(v79 + 5) << 8) | *(v79 + 6);
          v89 = 3;
        }

        v57 = v119;
        v86 = v116;
      }

      else
      {
        v89 = 2;
        v88 = *(v79 + 5) | ((v88 & 0x3F) << 8);
      }
    }

    else
    {
      v89 = 1;
    }

    *buf = v89;
    v104 = ldb_readVInt16((v79 + 1), buf);
    v105 = *(a1 + 804);
    v106 = *(a1 + 856);
    v107 = *(v106 + 12);
    v108 = v106 + 16 * *(v106 + 16);
    *(v108 + 20) = v88;
    *(v108 + 32) = (v105 << 31 >> 31) & (((v104 >> 5) & 1) << 28) & 0xF0000000 | *(v108 + 32) & 0xFFFFFFF;
    *(v106 + 12) = v107 | 1;
    v84 = v127;
LABEL_197:
    v87 = v123;
    goto LABEL_198;
  }

  v87 = v123;
  v57 = v119;
LABEL_198:
  v109 = *(a1 + 856);
  v110 = *(v109 + 12);
  v111 = v109 + 16 * *(v109 + 16);
  *(v111 + 4) = v57;
  *(v111 + 16) = *(v111 + 16) & 0xFFFFFFF | (v86 << 28);
  *(v109 + 12) = v110 | 1;
  if (v87)
  {
    ++*(a1 + 20);
  }

  db_cache_set_offset_hint(*(a1 + 928), value_out, 0, 0, 0);
  db_cache_set_offset_hint(*(a1 + 928), a2, 0, 0, 0);
  page_release(a1, a2, a3, 1u, 0);
  page_release_dirty_compressed(a1, value_out, v128, a6, v84);
  return 0;
}