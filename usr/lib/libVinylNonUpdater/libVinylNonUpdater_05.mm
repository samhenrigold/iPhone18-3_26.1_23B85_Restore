uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x29EDCA608];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x29EDCA608];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x29EDCA608];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t DERLengthOfLength(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = a2 + *a4;
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

unint64_t DERLengthOfItem(unint64_t result, unint64_t a2)
{
  v2 = result & 0x1FFFFFFFFFFFFFFFLL;
  v3 = 1;
  if ((result & 0x1FFFFFFFFFFFFFFFLL) >= 0x1F)
  {
    do
    {
      ++v3;
      v4 = v2 > 0x7F;
      v2 >>= 7;
    }

    while (v4);
  }

  v5 = 1;
  if (a2 >= 0x80)
  {
    v6 = a2;
    do
    {
      ++v5;
      v4 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v4);
  }

  v7 = __CFADD__(v3, v5);
  v8 = v3 + v5;
  if (v7 || (result = v8 + a2, __CFADD__(v8, a2)))
  {
    __break(0x5500u);
  }

  return result;
}

unint64_t DEREncodeItemSized(unint64_t a1, unint64_t a2, const void *a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v12 = *a6;
  v13 = DERLengthOfItem(a1, a2);
  if (v13 > a5)
  {
    return 7;
  }

  v15 = v13;
  if (v13 > *a6)
  {
    goto LABEL_21;
  }

  *a6 = v13;
  v22[0] = v13;
  if (v13 > v12)
  {
    goto LABEL_21;
  }

  result = DEREncodeTag(a1, a4, v22);
  if (result)
  {
    return result;
  }

  v16 = v22[0];
  if (__CFADD__(a4, v22[0]))
  {
LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  v17 = v15 >= v22[0];
  v18 = v15 - v22[0];
  if (!v17)
  {
    goto LABEL_23;
  }

  v19 = a4 + v12;
  v20 = a4 + v22[0];
  v22[0] = v18;
  if (a4 + v16 > a4 + v12 || v20 < a4 || v18 > v12 - v16)
  {
LABEL_21:
    __break(0x5519u);
  }

  result = DEREncodeLengthSized(a2, v20, v18, v22);
  if (result)
  {
    return result;
  }

  if (__CFADD__(v20, v22[0]))
  {
    goto LABEL_22;
  }

  if (v18 < v22[0])
  {
LABEL_23:
    __break(0x5515u);
    return result;
  }

  v21 = (v20 + v22[0]);
  if (v19 < v20 + v22[0])
  {
    goto LABEL_21;
  }

  if (v21 < a4)
  {
    goto LABEL_21;
  }

  if (v19 - (v20 + v22[0]) < a2)
  {
    goto LABEL_21;
  }

  memmove(v21, a3, a2);
  if (v21 > &v21[a2])
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t DEREncodeTag(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = a2 + v7;
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v47[1] = *MEMORY[0x29EDCA608];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v46 = a7;
  v47[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  v14 = a4;
  result = DEREncodeTag(a1, a6, &v46);
  if (result)
  {
    return result;
  }

  v17 = v46;
  if (v46 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v46;
  if (a7 < v46)
  {
    goto LABEL_74;
  }

  v19 = a6 + a7;
  v20 = a6 + v46;
  if (a6 + v46 < v19)
  {
    result = DERContentLengthOfEncodedSequence(a2, a3, v14, a5, v47);
    if (result)
    {
      return result;
    }

    v46 = v18;
    if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
    {
      goto LABEL_73;
    }

    v44 = a6 + v11;
    v21 = v47[0];
    result = DEREncodeLengthSized(v47[0], a6 + v17, v18, &v46);
    if (result)
    {
      return result;
    }

    v22 = v44;
    if (__CFADD__(v20, v46))
    {
LABEL_72:
      __break(0x5513u);
      goto LABEL_73;
    }

    v23 = v18 - v46;
    if (v18 >= v46)
    {
      v24 = (v20 + v46);
      if (!__CFADD__(v20 + v46, v21))
      {
        if (&v24[v21] > v19)
        {
          return 7;
        }

        if (v14)
        {
          v25 = 0;
          v43 = a2 + a3;
          v42 = ~a5;
          v26 = a5 + 8;
          v41 = 24 * v14;
          do
          {
            if (v25 > v42)
            {
              goto LABEL_72;
            }

            v27 = *(v26 - 8);
            if (v27 > ~a2)
            {
              goto LABEL_72;
            }

            v28 = (a2 + v27);
            v29 = *(v26 + 8);
            if ((v29 & 0x200) != 0)
            {
              v38 = v28 < a2 || (v28 + 2) > v43;
              if (v38 || v24 > v22 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v22 - v24;
            }

            else
            {
              if (v29)
              {
                if (v28 < a2 || (v28 + 2) > v43)
                {
                  goto LABEL_73;
                }

                if (!v28[1])
                {
                  goto LABEL_69;
                }
              }

              v46 = v23;
              if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
              {
                goto LABEL_73;
              }

              result = DEREncodeTag(*v26, v24, &v46);
              if (result)
              {
                return result;
              }

              if (__CFADD__(v24, v46))
              {
                goto LABEL_72;
              }

              v31 = v23 - v46;
              if (v23 < v46)
              {
                goto LABEL_74;
              }

              if (v28 < a2 || (v28 + 2) > v43)
              {
                goto LABEL_73;
              }

              v32 = v28[1];
              v47[0] = v32;
              v33 = 1;
              if ((v29 & 0x100) != 0 && v32 && **v28 < 0)
              {
                v33 = 0;
                v47[0] = ++v32;
              }

              v34 = &v24[v46];
              v46 = v23 - v46;
              if (v34 > v44 || v34 < a6 || v31 > v44 - v34)
              {
                goto LABEL_73;
              }

              result = DEREncodeLengthSized(v32, v34, v31, &v46);
              if (result)
              {
                return result;
              }

              v35 = v46;
              if (__CFADD__(v34, v46))
              {
                goto LABEL_72;
              }

              v23 = v31 - v46;
              if (v31 < v46)
              {
                goto LABEL_74;
              }

              v24 = (v34 + v46);
              if ((v33 & 1) == 0)
              {
                if (v24 == -1)
                {
                  goto LABEL_72;
                }

                if (v24 >= v44 || v24 < a6)
                {
                  goto LABEL_73;
                }

                *v24 = 0;
                --v23;
                if (v31 == v35)
                {
                  goto LABEL_74;
                }

                ++v24;
              }

              if (v24 > v44 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v44 - v24;
            }

            if (v36 > v37)
            {
              goto LABEL_73;
            }

            result = memmove(v24, *v28, v36);
            if (v24 > &v24[v36])
            {
              goto LABEL_73;
            }

            v39 = v28[1];
            v22 = v44;
            if (__CFADD__(v24, v39))
            {
              goto LABEL_72;
            }

            v40 = v23 >= v39;
            v23 -= v39;
            if (!v40)
            {
              goto LABEL_74;
            }

            v24 += v39;
LABEL_69:
            v26 += 24;
            v25 += 24;
          }

          while (v41 != v25);
        }

        if (&v24[-a6] <= *a8)
        {
          result = 0;
          *a8 = &v24[-a6];
          return result;
        }

LABEL_73:
        __break(0x5519u);
      }

      goto LABEL_72;
    }

LABEL_74:
    __break(0x5515u);
    return result;
  }

  return 7;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17[0] >= 0x80uLL)
    {
      v13 = v17[0];
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17[0]), v16 = v15 + v17[0], v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v5))
  {
    return 0;
  }

  else
  {
    return v5[0];
  }
}

_BYTE *eUICC::eUICCVinylMAVValve::GetData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylMAVValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v2, v3);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {

    return _BBULog(0, 1, "eUICCVinylMAVValve", "", "No transport available.. bail out\n");
  }

  return result;
}

_BYTE *eUICC::eUICCVinylMAVValve::DeleteProfile(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0(v3, v4, "eUICCVinylMAVValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "eUICCVinylMAVValve", "", "No transport available, bail out..\n");
  }

  *a1 = 18;
  return result;
}

uint64_t VinylController::VinylController(uint64_t a1)
{
  return (*(*a1 + 8))(a1);
}

{
  return (*(*a1 + 8))();
}

_BYTE *get_info(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "Failed to allocate shared info dict\n");
  }

  *a1 = 1;
  return result;
}

_BYTE *VinylController::createTransportNoEvents(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "fCommunication object not created, cannot create Transport\n");
  }

  *a1 = 1;
  return result;
}

uint64_t VinylController::getPairingParameters(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);

  return _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Signing payload dictionary not present in the input dictionary\n");
}

_BYTE *VinylController::freeTransport(_DWORD *a1, uint64_t a2)
{
  v3 = gBBULogMaskGet(a1, a2);
  if ((*v3 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v3 = OUTLINED_FUNCTION_0(v3, v4, "VinylController", "", "check failed: %s, %d, assertion: %s\n");
  }

  result = gBBULogMaskGet(v3, v4);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylController", "", "fCommunication object not created, cannot free Transport\n");
  }

  *a1 = 0;
  return result;
}

atomic_ullong *std::future<BOOL>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t VinylDaleCommunication::createTransport(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  return _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "No router server available.. bail out\n");
}

uint64_t eUICC::eUICCVinylDALValve::waitForeSIMBoot(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::GetData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::DeleteProfile(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::StoreData(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::InitPerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::AuthPerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ValidatePerso(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallPairingMSM(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingGetNonce(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1);
  v6 = v5 & 0x7FFFFFFF;
  v7 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5 & 0x7FFFFFFF);
  v8 = v7;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v6, v7);
  *a2 = v6;
  *a3 = v8;
  return result;
}

_BYTE *VinyleUICCPerformOperationWithTransportAndLogSync_cold_1(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = a1;
  v6 = gBBULogMaskGet(a1, a2);
  if ((*v6 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v6 = _BBULog(1, 6, "VinylNonUpdate", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinyleUICC.cpp", 87, "((operation >= kVinylOperationGetEid) && (operation < kVinylOperationNone))");
  }

  result = gBBULogMaskGet(v6, v7);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylNonUpdate", "", "Invalid user operation: %d\n", v5);
  }

  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t BBUpdaterCommon::collectCoreDump(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    a1 = OUTLINED_FUNCTION_0(a1, a2, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v2 = gBBULogMaskGet(a1, a2);
  return OUTLINED_FUNCTION_1(v2, v3, "BBUCommon", "", "BBUpdaterExecCommand rejected  with error\n");
}

{
  if ((*a1 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    a1 = OUTLINED_FUNCTION_0(a1, a2, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v2 = gBBULogMaskGet(a1, a2);
  return OUTLINED_FUNCTION_1(v2, v3, "BBUCommon", "", "BBUpdaterExecCommand rejected  with error\n");
}

uint64_t BBUpdaterCommon::collectCoreDump(uint64_t a1, uint64_t a2)
{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterSetOptions rejected  with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterExtremeCreateWithError rejected with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterSetOptions rejected  with error\n");
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n");
  }

  v4 = gBBULogMaskGet(v2, v3);
  return OUTLINED_FUNCTION_1(v4, v5, "BBUCommon", "", "BBUpdaterExtremeCreateWithError rejected with error\n");
}

void BBUpdaterCommon::inRestoreOS()
{
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global);
}

{
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_63);
}

void BBUpdaterCommon::BBUReadNVRAM()
{
  if (__cxa_guard_acquire(byte_2A13A9840))
  {
    _MergedGlobals = 0;
    __cxa_atexit(ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef, &_MergedGlobals, &dword_29826A000);

    __cxa_guard_release(byte_2A13A9840);
  }
}

{
  dispatch_once(&BBUpdaterCommon::BBUReadNVRAM(void)::onceToken, &__block_literal_global_81);
}

_BYTE *VinyleUICCPerformOperationWithLinkAndLogSync_cold_1(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = gBBULogMaskGet(a1, a2);
  if ((*v6 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v6 = _BBULog(1, 6, "VinylNonUpdate", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylRouterClient.cpp", 63, "((operation >= kVinylOperationGetEid) && (operation < kVinylOperationNone))");
  }

  result = gBBULogMaskGet(v6, v7);
  if ((*result & 1) != 0 && gBBULogVerbosity >= 1)
  {
    result = _BBULog(0, 1, "VinylNonUpdate", "", "Invalid user operation: %d\n", v5);
  }

  *a3 = 0;
  *a2 = 0;
  return result;
}

void _BBULogv()
{
  dispatch_once(&gLockGet(void)::once, &__block_literal_global_42);
}

{
  dispatch_once(&sLogBufferGet(void)::once, &__block_literal_global_46);
}

{
  dispatch_once(&sLogBufferGet(void)::once, &__block_literal_global_46);
}

void aks_operation_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_46();
  a21 = v22;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a12 = 0;
  if ((!v23 || der_get_sizeof(v23, v23 + v24) != v24 || !encode_list_add_der()) && (!v35 || der_get_sizeof(v35, v35 + v33) != v33 || !encode_list_add_der()) && (!v31 || !encode_list_add_data()))
  {
    OUTLINED_FUNCTION_30();
    if (!encode_list_dict(v36, v37, v38))
    {
      *v29 = 0;
      *v27 = 0;
    }
  }

  encode_list_free(&a12);
  OUTLINED_FUNCTION_44();
}

void *aks_params_create(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28();
  v4 = v3;
  if (v3)
  {
    *v3 = 0;
    if (a1)
    {
      if (encode_list_merge_dict(v3))
      {
        OUTLINED_FUNCTION_6(v4);
        free(v4);
        return 0;
      }
    }
  }

  return v4;
}

uint64_t aks_params_set_BOOL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  if (_params_get_der_key(v5, 3))
  {
    v6 = OUTLINED_FUNCTION_49();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      OUTLINED_FUNCTION_49();
      if (!encode_list_add_BOOL())
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_BOOL(void *a1, int a2, _BYTE *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 3);
  if (result)
  {
    result = encode_list_get_BOOL(a1, result, &v6);
    if (result)
    {
      result = 1;
      if (v6)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t aks_params_set_number(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  if (_params_get_der_key(v5, 1))
  {
    v6 = OUTLINED_FUNCTION_49();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = OUTLINED_FUNCTION_49();
      if (!encode_list_add_number(v8, v9, v10))
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_number(void *a1, int a2, void *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 1);
  if (result)
  {
    result = encode_list_get_number(a1, result, &v6);
    if (a3)
    {
      if (result)
      {
        *a3 = v6;
        return 1;
      }
    }
  }

  return result;
}

void aks_params_set_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_46();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_7();
  der_key = _params_get_der_key(v28, 2);
  if (der_key && !encode_list_remove_key(v27, der_key) && v23)
  {
    if (v25 == 1 || v25 == 2)
    {
      ccder_blob_decode_tag();
    }

    else
    {
      OUTLINED_FUNCTION_54();
      encode_list_add_data();
    }
  }

  OUTLINED_FUNCTION_44();
}

uint64_t aks_params_get_data(void *a1, int a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  der_key = _params_get_der_key(a2, 2);
  if (der_key)
  {
    data = encode_list_get_data(a1, der_key, (a2 - 1) < 2, &v9, &v10);
    if (a3)
    {
      if (data)
      {
        *a3 = v10;
      }
    }
  }

  return v9;
}

uint64_t aks_params_free(void ***a1)
{
  result = 3758097090;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      *a1 = 0;
      encode_list_free(v3);
      OUTLINED_FUNCTION_6(v3);
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t aks_encrypt(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5, uint64_t a6, void *a7, size_t *a8)
{
  v8 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = a6;
  v40 = a5;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  if (!a7 || !a8)
  {
    goto LABEL_38;
  }

  v11 = a6;
  v12 = a5;
  v13 = a2;
  OUTLINED_FUNCTION_50();
  if (der_dict_find_value(v16, v17, v18) && (v34 = 0, v35 = 0, OUTLINED_FUNCTION_36(), der_dict_find_value(v19, v20, v21)))
  {
    if (der_dict_find_value(der_key_op_encrypt, 0, 0))
    {
      v8 = 0;
    }

    else
    {
      if (encode_list_merge_dict(&v38) || encode_list_merge_dict(&v37) || encode_list_merge_dict(&v36))
      {
        v8 = 0;
        v27 = 3758097085;
        goto LABEL_19;
      }

      encode_list_add_BOOL();
      encode_list_remove_key(&v37, der_key_acl);
      encode_list_add_list(&v37, der_key_acl, &v36);
      encode_list_remove_key(&v38, der_key_external_data);
      encode_list_add_list(&v38, der_key_external_data, &v37);
      v8 = encode_list_dict(&v38, &v40, &v39) == 0;
      v11 = v39;
      v12 = v40;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = aks_ref_key_create(a1, v13, 0, v12, v11, &v43);
  if (v22 || (v22 = aks_ref_key_encrypt(v43, v40, v39, a3, a4, &v42, &v41, v23, a4, v32, v33, v34, v35, 0, 0, v36, v37, v38, v39, v40, v41, v42), v22))
  {
    v27 = v22;
    goto LABEL_19;
  }

  if (encode_list_merge_dict(&v44) || encode_list_merge_dict(&v44) || (OUTLINED_FUNCTION_30(), der_dict_find_value(v24, v25, v26)) && encode_list_add_der())
  {
LABEL_38:
    v27 = 3758097090;
    goto LABEL_19;
  }

  if (encode_list_dict(&v44, a7, a8))
  {
    v27 = 3758097090;
  }

  else
  {
    v27 = 0;
  }

LABEL_19:
  encode_list_free(&v38);
  encode_list_free(&v37);
  encode_list_free(&v36);
  if (v8)
  {
    free(v40);
  }

  if (v43)
  {
    aks_ref_key_free(&v43);
  }

  free(v42);
  encode_list_free(&v44);
  switch(v27)
  {
    case 0xE007C009:
      return 3758097084;
    case 0xE00002CE:
    case 0xE00002E2:
    case 0xE007C008:
      return 3758097122;
    case 0xE00002BC:
      return 3758097084;
  }

  return v27;
}

uint64_t aks_ref_key_create(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = 3758097090;
  v11 = OUTLINED_FUNCTION_28();
  *v11 = 0;
  encode_list_add_key();
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if (!a6)
  {
    goto LABEL_14;
  }

  v12 = OUTLINED_FUNCTION_59();
  v22 = v12;
  if (!v12)
  {
    v10 = 3758604298;
    goto LABEL_14;
  }

  v13 = v12;
  OUTLINED_FUNCTION_29(v12);
  if (a4 && encode_list_merge_dict(v11) || encode_list_add_number(v11, der_key_keybag_class, a2) || encode_list_add_number(v11, der_key_type, a3) || encode_list_dict(v11, &v25, &v26))
  {
LABEL_17:
    aks_ref_key_free(&v22);
    goto LABEL_14;
  }

  v14 = _aks_operation();
  if (v14)
  {
    v10 = v14;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19(v23, v24);
  OUTLINED_FUNCTION_30();
  if (der_dict_find_value(v15, v16, v17))
  {
    v13[4] = 0;
  }

  OUTLINED_FUNCTION_30();
  if (der_dict_find_value(v18, v19, v20))
  {
    v13[3] = 0;
  }

  v10 = 0;
  *a6 = v13;
  v23 = 0;
  v24 = 0;
LABEL_14:
  encode_list_free(v11);
  OUTLINED_FUNCTION_6(v11);
  free(v11);
  OUTLINED_FUNCTION_22(v25, v26);
  free(v25);
  OUTLINED_FUNCTION_22(v23, v24);
  free(v23);
  return v10;
}

uint64_t aks_ref_key_free(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 3758097090;
  }

  *a1 = 0;
  if (*v1)
  {
    OUTLINED_FUNCTION_22(*v1, *(v1 + 8));
    free(*v1);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    OUTLINED_FUNCTION_22(v2, *(v1 + 56));
    free(*(v1 + 48));
  }

  v3 = *(v1 + 64);
  if (v3)
  {
    OUTLINED_FUNCTION_22(v3, *(v1 + 72));
    free(*(v1 + 64));
  }

  OUTLINED_FUNCTION_29(v1);
  free(v1);
  return 0;
}

uint64_t aks_ref_key_create_with_blob()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      v7 = v2;
      v8 = v1;
      if (der_get_sizeof(v2, v2 + v3) == v3)
      {
        OUTLINED_FUNCTION_45();
        v9 = OUTLINED_FUNCTION_59();
        v12 = v9;
        if (v9)
        {
          v10 = v9;
          OUTLINED_FUNCTION_29(v9);
          *(v10 + 40) = v8;
          if (_set_blob(v10, v7, v5))
          {
            aks_ref_key_free(&v12);
          }

          else
          {
            v0 = 0;
            *v6 = v10;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t aks_ref_key_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, rsize_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v12);
  encode_list_add_key();
  if (a4 && a5 && der_get_sizeof(a4, &a4[a5]) == a5)
  {
    version = aks_ref_key_get_version(v9);
    if (!version)
    {
      v27 = 0;
      v28 = 0;
      v26 = 0;
      OUTLINED_FUNCTION_50();
      if (!der_dict_find_value(v14, v15, v16) || !der_dict_find_value(der_key_protected_data, &v26, &v27) || encode_list_add_der() || encode_list_add_der() || (OUTLINED_FUNCTION_30(), encode_list_dict(v17, v18, v19)))
      {
        encode_list_free(&v28);
        goto LABEL_19;
      }

      encode_list_free(&v28);
    }

    OUTLINED_FUNCTION_52();
    if (!_get_merged_params())
    {
      encode_list_remove_key(v8, der_key_data);
      v20 = OUTLINED_FUNCTION_18();
      encode_list_remove_key(v20, v21);
      v22 = encode_list_add_der();
      if (!v22 && !OUTLINED_FUNCTION_14(v22, der_key_ref_key))
      {
        OUTLINED_FUNCTION_36();
        if (!encode_list_dict(v8, v23, v24))
        {
          v7 = _aks_operation();
        }
      }
    }

    if (!version)
    {
      OUTLINED_FUNCTION_22(a4, a5);
      free(a4);
    }
  }

LABEL_19:
  encode_list_free(v8);
  OUTLINED_FUNCTION_1_0();
  free(v8);
  return v7;
}

uint64_t aks_ref_key_delete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v5);
  encode_list_add_key();
  OUTLINED_FUNCTION_17();
  if (!_get_merged_params())
  {
    v6 = encode_list_remove_key(v4, der_key_ref_key);
    v7 = OUTLINED_FUNCTION_33(v6, der_key_ref_key);
    if (!v7 && !OUTLINED_FUNCTION_11(v7, v8, v9, v10))
    {
      OUTLINED_FUNCTION_3();
      v3 = _aks_operation();
    }
  }

  encode_list_free(v4);
  OUTLINED_FUNCTION_1_0();
  free(v4);
  if (v22)
  {
    OUTLINED_FUNCTION_12(v22, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22, v24);
    free(v23);
  }

  if (v19)
  {
    OUTLINED_FUNCTION_13(v19, v11, v12, v13, v14, v15, v16, v17, v19, v21);
    free(v20);
  }

  return v3;
}

uint64_t _aks_operation()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v18 = *MEMORY[0x29EDCA608];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v8)
    {
      v11 = aks_client_connection;
      v12 = 3758097090;
      if (der_get_sizeof(v8, v8 + v6) == v6)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v9;
        v12 = IOConnectCallMethod(v11, 0x2Bu, &input, 1u, v8, v6, 0, 0, __src, &__count);
        if (!v12 && v4 && v2)
        {
          v13 = calloc(__count, 1uLL);
          *v4 = v13;
          if (v13)
          {
            memcpy(v13, __src, __count);
            v12 = 0;
            *v2 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA620], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", "", -1, "", "", "", "", "_aks_operation", ":", 457, "", "");
    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  return v12;
}

uint64_t _set_blob(uint64_t a1, char *a2, size_t a3)
{
  OUTLINED_FUNCTION_16();
  if (!der_dict_find_value(v6, v7, v8))
  {
    return 3758097090;
  }

  if (*a1)
  {
    OUTLINED_FUNCTION_22(*a1, *(a1 + 8));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v9 = calloc(a3, 1uLL);
  *a1 = v9;
  *(a1 + 8) = a3;
  if (!v9)
  {
    return 3758604298;
  }

  memcpy(v9, a2, a3);
  *(a1 + 16) = *a1 + *(a1 + 8);
  OUTLINED_FUNCTION_16();
  if (der_dict_find_value(v10, v11, v12))
  {
    *(a1 + 32) = 0;
  }

  OUTLINED_FUNCTION_16();
  if ((der_dict_find_value(v13, v14, v15) & 1) != 0 || (OUTLINED_FUNCTION_16(), result = der_dict_find_value(v16, v17, v18), result))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t aks_ref_key_create_and_encrypt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_51();
  v13 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v13);
  encode_list_add_key();
  v65 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v14 = OUTLINED_FUNCTION_59();
  v67 = v14;
  if (!v14)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v15 = v14;
  OUTLINED_FUNCTION_29(v14);
  if (a4 && encode_list_merge_dict(v9) || (v16 = OUTLINED_FUNCTION_34(), encode_list_remove_key(v16, v17), v18 = OUTLINED_FUNCTION_18(), encode_list_remove_key(v18, v19), v20 = encode_list_add_number(v9, der_key_keybag_class, a2), v20) || OUTLINED_FUNCTION_58(v20, der_key_type) || (OUTLINED_FUNCTION_24(), encode_list_add_data()) || (OUTLINED_FUNCTION_50(), v23 = encode_list_dict(v9, v21, v22), v23))
  {
LABEL_26:
    aks_ref_key_free(&v67);
    goto LABEL_16;
  }

  v31 = OUTLINED_FUNCTION_56(v23, v24, v25, v26, v27, v28, v29, v30, v54, a8, a7, v62);
  if (v31 || (v31 = OUTLINED_FUNCTION_39(v31, v32, v33, v34, v35, v36, v37, v38, v55, v57, v60, v63, v64, 0, 0, v67, v68, v69, v70, v71, v72), v31))
  {
    v8 = v31;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19(v70, v71);
  OUTLINED_FUNCTION_36();
  if (der_dict_find_value(v39, v40, v41))
  {
    v15[4] = 0;
  }

  OUTLINED_FUNCTION_36();
  value = der_dict_find_value(v42, v43, v44);
  if (value)
  {
    v15[3] = 0;
  }

  OUTLINED_FUNCTION_23(value, v46, v47, v48, v49, v50, v51, v52, v56, v58, v61, 0, 0, v65, __n, v67, v68, v69);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_0();
  free(v9);
  if (v65)
  {
    OUTLINED_FUNCTION_22(v65, __n);
    free(v65);
  }

  if (v70)
  {
    OUTLINED_FUNCTION_22(v70, v71);
    free(v70);
  }

  if (v68)
  {
    OUTLINED_FUNCTION_22(v68, v69);
    free(v68);
  }

  if (v72)
  {
    OUTLINED_FUNCTION_22(v72, v73);
    free(v72);
  }

  return v8;
}

uint64_t aks_ref_key_create_and_wrap(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_51();
  v13 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v13);
  encode_list_add_key();
  v65 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v14 = OUTLINED_FUNCTION_59();
  v67 = v14;
  if (!v14)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v15 = v14;
  OUTLINED_FUNCTION_29(v14);
  if (a4 && encode_list_merge_dict(v9) || (v16 = OUTLINED_FUNCTION_34(), encode_list_remove_key(v16, v17), v18 = OUTLINED_FUNCTION_18(), encode_list_remove_key(v18, v19), v20 = encode_list_add_number(v9, der_key_keybag_class, a2), v20) || OUTLINED_FUNCTION_58(v20, der_key_type) || (OUTLINED_FUNCTION_24(), encode_list_add_data()) || (OUTLINED_FUNCTION_50(), v23 = encode_list_dict(v9, v21, v22), v23))
  {
LABEL_26:
    aks_ref_key_free(&v67);
    goto LABEL_16;
  }

  v31 = OUTLINED_FUNCTION_56(v23, v24, v25, v26, v27, v28, v29, v30, v54, a8, a7, v62);
  if (v31 || (v31 = OUTLINED_FUNCTION_39(v31, v32, v33, v34, v35, v36, v37, v38, v55, v57, v60, v63, v64, 0, 0, v67, v68, v69, v70, v71, v72), v31))
  {
    v8 = v31;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19(v70, v71);
  OUTLINED_FUNCTION_36();
  if (der_dict_find_value(v39, v40, v41))
  {
    v15[4] = 0;
  }

  OUTLINED_FUNCTION_36();
  value = der_dict_find_value(v42, v43, v44);
  if (value)
  {
    v15[3] = 0;
  }

  OUTLINED_FUNCTION_23(value, v46, v47, v48, v49, v50, v51, v52, v56, v58, v61, 0, 0, v65, __n, v67, v68, v69);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_0();
  free(v9);
  if (v65)
  {
    OUTLINED_FUNCTION_22(v65, __n);
    free(v65);
  }

  if (v70)
  {
    OUTLINED_FUNCTION_22(v70, v71);
    free(v70);
  }

  if (v68)
  {
    OUTLINED_FUNCTION_22(v68, v69);
    free(v68);
  }

  if (v72)
  {
    OUTLINED_FUNCTION_22(v72, v73);
    free(v72);
  }

  return v8;
}

uint64_t _get_merged_params()
{
  OUTLINED_FUNCTION_45();
  if (v1)
  {
    v4 = v3;
    v5 = v2;
    if ((!*(v1 + 48) || !encode_list_merge_dict(v2)) && (!v4 || !encode_list_merge_dict(v5)))
    {
      encode_list_remove_key(v5, der_key_external_data);
      return 0;
    }
  }

  return v0;
}

uint64_t aks_ref_key_encapsulate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, void *a7, void **a8, void *a9)
{
  OUTLINED_FUNCTION_20();
  v14 = v13;
  v30[2] = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_7();
  v15 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v15);
  encode_list_add_key();
  LODWORD(v16) = 0;
  v17 = 0;
  v27[0] = 0;
  memset(__n, 0, sizeof(__n));
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (a6 && a8)
  {
    if (OUTLINED_FUNCTION_47(v14))
    {
      goto LABEL_13;
    }

    encode_list_remove_key(v10, der_key_ref_key);
    OUTLINED_FUNCTION_52();
    if (encode_list_add_data() || encode_list_add_der() || encode_list_dict(v10, &__n[1], v27))
    {
      goto LABEL_13;
    }

    v18 = _aks_operation();
    if (v18)
    {
      v9 = v18;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_45();
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 24) = 0u;
    v28 = 0u;
    v27[1] = der_key_op_compute_key;
    v30[1] = 0;
    v29[2] = der_key_data;
    der_dict_iterate();
    LODWORD(v16) = 0;
    v17 = 0;
    if (v28)
    {
      if (v29[3])
      {
        if (!der_utils_decode_implicit_raw_octet_string_alloc(v29, 4, &v25, __n))
        {
LABEL_13:
          v17 = 0;
          LODWORD(v16) = 0;
          goto LABEL_14;
        }

        v20 = der_utils_decode_implicit_raw_octet_string_alloc(v30, 4, &v23, &v24);
        v16 = v24;
        v17 = v23;
        if (v20)
        {
          v9 = 0;
          *a6 = v23;
          *a7 = v16;
          v23 = 0;
          v24 = 0;
          *a8 = v25;
          *a9 = __n[0];
          v25 = 0;
          __n[0] = 0;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_22(v17, v16);
  free(v23);
  OUTLINED_FUNCTION_22(v25, __n[0]);
  free(v25);
  encode_list_free(v10);
  OUTLINED_FUNCTION_1_0();
  free(v10);
  OUTLINED_FUNCTION_22(*&__n[1], v27[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_22(0, 0);
  free(0);
  return v9;
}

uint64_t aks_ref_key_enable_test_keys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v5);
  encode_list_add_key();
  OUTLINED_FUNCTION_17();
  v6 = encode_list_add_data();
  if (!v6 && !OUTLINED_FUNCTION_11(v6, v7, v8, v9))
  {
    OUTLINED_FUNCTION_3();
    v3 = _aks_operation();
  }

  encode_list_free(v4);
  OUTLINED_FUNCTION_1_0();
  free(v4);
  if (v21)
  {
    OUTLINED_FUNCTION_12(v21, v10, v11, v12, v13, v14, v15, v16, v18, v20, v21, v23);
    free(v22);
  }

  if (v18)
  {
    OUTLINED_FUNCTION_13(v18, v10, v11, v12, v13, v14, v15, v16, v18, v20);
    free(v19);
  }

  return v3;
}

void aks_ref_key_attest(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, rsize_t __n, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_0();
  v29 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v29);
  encode_list_add_key();
  a12 = 0;
  if (v26)
  {
    if (v25)
    {
      if (!_get_merged_params())
      {
        encode_list_remove_key(&a12, der_key_ref_key);
        if (!encode_list_add_der())
        {
          OUTLINED_FUNCTION_25();
          if (!_get_merged_params())
          {
            v30 = OUTLINED_FUNCTION_15();
            encode_list_remove_key(v30, v31);
            v32 = encode_list_add_list(v24, der_key_data, &a12);
            if (!v32 && !OUTLINED_FUNCTION_14(v32, der_key_ref_key))
            {
              OUTLINED_FUNCTION_30();
              if (!encode_list_dict(v24, v33, v34))
              {
                _aks_operation();
              }
            }
          }
        }
      }
    }
  }

  encode_list_free(&a12);
  encode_list_free(v24);
  OUTLINED_FUNCTION_1_0();
  free(v24);
  OUTLINED_FUNCTION_27();
}

uint64_t aks_ref_key_set_params(uint64_t a1, char *a2, size_t __count)
{
  if (a2 && der_get_sizeof(a2, &a2[__count]) != __count)
  {
    return 3758097090;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_22(v6, *(a1 + 56));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  result = 0;
  if (a2 && __count)
  {
    v8 = calloc(__count, 1uLL);
    *(a1 + 48) = v8;
    *(a1 + 56) = __count;
    if (v8)
    {
      memcpy(v8, a2, __count);
      return 0;
    }

    else
    {
      return 3758604298;
    }
  }

  return result;
}

uint64_t aks_ref_key_validate_key()
{
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v2);
  encode_list_add_key();
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_33(v3, der_key_ref_key);
  if (!v4 && !OUTLINED_FUNCTION_11(v4, v5, v6, v7))
  {
    OUTLINED_FUNCTION_3();
    v0 = _aks_operation();
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_0();
  free(v1);
  if (v19)
  {
    OUTLINED_FUNCTION_12(v19, v8, v9, v10, v11, v12, v13, v14, v16, v18, v19, v21);
    free(v20);
  }

  if (v16)
  {
    OUTLINED_FUNCTION_13(v16, v8, v9, v10, v11, v12, v13, v14, v16, v18);
    free(v17);
  }

  return v0;
}

uint64_t _op_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v11);
  encode_list_add_key();
  v31 = 0;
  v33 = 0;
  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
        OUTLINED_FUNCTION_25();
        if (!_get_merged_params())
        {
          v12 = encode_list_remove_key(v7, der_key_ref_key);
          if (!OUTLINED_FUNCTION_14(v12, der_key_ref_key))
          {
            OUTLINED_FUNCTION_16();
            v15 = encode_list_dict(v7, v13, v14);
            if (!v15)
            {
              v6 = OUTLINED_FUNCTION_10(v15, v16, v17, v18, v19, v20, v21, v22, 0, 0);
            }
          }
        }
      }
    }
  }

  encode_list_free(v7);
  OUTLINED_FUNCTION_1_0();
  free(v7);
  if (v31)
  {
    OUTLINED_FUNCTION_13(v31, v23, v24, v25, v26, v27, v28, v29, v31, v33);
    free(v32);
  }

  return v6;
}

uint64_t aks_sik_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = 0;
  OUTLINED_FUNCTION_7();
  if ((!v11 || v10 <= 0x20 && !encode_list_add_data()) && (!a3 || !encode_list_add_data()))
  {
    if (encode_list_is_empty(&v16))
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_30();
      if (!encode_list_dict(v12, v13, v14))
      {
        v6 = 0;
        *a5 = 0;
        *a6 = 0;
      }
    }
  }

  encode_list_free(&v16);
  return v6;
}

uint64_t aks_sik_collection()
{
  OUTLINED_FUNCTION_2_0();
  v3 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v3);
  encode_list_add_key();
  if (!v2 || !OUTLINED_FUNCTION_48())
  {
    OUTLINED_FUNCTION_16();
    if (!encode_list_dict(v1, v4, v5))
    {
      v0 = _aks_operation();
    }
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_0();
  free(v1);
  return v0;
}

void decode_ref_key_with_result_cold_1(void *a1, unsigned int *a2, void **a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_22(a1, *a2);
    free(*a3);
  }
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 - 96) = *MEMORY[0x29EDCA608];
  bzero(v67, 0x1000uLL);
  v65[0] = v67;
  v65[1] = &v68;
  v65[2] = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v15 = aks_client_connection;
      OUTLINED_FUNCTION_8_0(aks_client_connection, v8, v9, v10, v11, v12, v13, v14, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64, v65[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(v65))
        {
          if (der_utils_encode_fv_data(v65))
          {
            if (der_utils_encode_fv_params(v65))
            {
              OUTLINED_FUNCTION_2_1();
              if (ccder_blob_encode_tl())
              {
                OUTLINED_FUNCTION_11_0();
                if (!OUTLINED_FUNCTION_1_1(v15, 0x4Au, v66, 2u, v16, v17, v18, v19, v67, v20))
                {
                  OUTLINED_FUNCTION_2_1();
                  if (ccder_blob_decode_range())
                  {
                    OUTLINED_FUNCTION_15_0();
                    v24 = der_utils_decode_fv_data(v21, v22, v23);
                    if (v24)
                    {
                      if (v2)
                      {
                        v32 = OUTLINED_FUNCTION_9_0(v24, v25, v26, v27, v28, v29, v30, v31, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v67);
                        der_utils_decode_fv_key(v32, v33, v34);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      fprintf(v35, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v36, v41, v43, v45, v47, v49, v51, ":", 180, "", "");
    }
  }

  OUTLINED_FUNCTION_3_0(v67);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

unint64_t _aks_save_file(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL _aks_load_file(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _get_path_class(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t __aks_dump_path_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t aks_fs_status(const char *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    aks_fs_status_with_map(v4, &sharedPathMap, 36);
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_fs_status_with_map(__str, &userPathMap, 72);
    }
  }

  return 0;
}

uint64_t aks_user_fs_status(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    aks_fs_status_with_map(v3, &userPathMap, 72);
  }

  return 0;
}

void aks_fv_new_kek()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_17_0(*MEMORY[0x29EDCA608]);
  bzero(v65, 0x1000uLL);
  v61 = v65;
  v62 = &v66;
  v63 = v0;
  if (v4 && v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v15 = aks_client_connection;
      OUTLINED_FUNCTION_8_0(aks_client_connection, v8, v9, v10, v11, v12, v13, v14, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60, v61);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v61))
        {
          if (der_utils_encode_fv_params(&v61))
          {
            OUTLINED_FUNCTION_2_1();
            if (ccder_blob_encode_tl())
            {
              v64[0] = v6;
              v64[1] = v62;
              v64[2] = &v66 - v62;
              if (!OUTLINED_FUNCTION_1_1(v15, 0x4Cu, v64, 3u, v16, v17, v18, v19, v65, &v63))
              {
                OUTLINED_FUNCTION_2_1();
                v20 = ccder_blob_decode_range();
                if (v20)
                {
                  v28 = OUTLINED_FUNCTION_9_0(v20, v21, v22, v23, v24, v25, v26, v27, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v65);
                  der_utils_decode_fv_data(v28, v29, v30);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v32, v37, v39, v41, v43, v45, v47, ":", 509, "", "");
    }
  }

  OUTLINED_FUNCTION_3_0(v65);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_new_sibling_vek()
{
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_17_0(*MEMORY[0x29EDCA608]);
  bzero(v29, 0x1000uLL);
  v25 = v29;
  v26 = &v30;
  v27 = v0;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v8 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v25))
        {
          if (der_utils_encode_fv_params(&v25))
          {
            OUTLINED_FUNCTION_2_1();
            if (ccder_blob_encode_tl())
            {
              v28[0] = v26;
              v28[1] = &v30 - v26;
              if (!OUTLINED_FUNCTION_1_1(v8, 0x63u, v28, 2u, v9, v10, v11, v12, v29, &v27))
              {
                *&v24 = v29;
                *(&v24 + 1) = &v29[v27];
                OUTLINED_FUNCTION_2_1();
                if (ccder_blob_decode_range())
                {
                  OUTLINED_FUNCTION_15_0();
                  if (der_utils_decode_fv_data(v13, v14, v15))
                  {
                    if (v2)
                    {
                      der_utils_decode_fv_key(&v24, 0, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 544, "", "");
    }
  }

  OUTLINED_FUNCTION_3_0(v29);
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_rewrap_kek()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 - 96) = *MEMORY[0x29EDCA608];
  bzero(v67, 0x1000uLL);
  v65[0] = v67;
  v65[1] = &v68;
  v65[2] = 4096;
  if (v8 && v6 && v4 && v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v10 = aks_client_connection;
      v11 = der_utils_encode_fv_data(v65);
      if (v11)
      {
        OUTLINED_FUNCTION_8_0(v11, v12, v13, v14, v15, v16, v17, v18, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64, v65[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (der_utils_encode_fv_data(v65))
          {
            if (der_utils_encode_fv_data(v65))
            {
              if (der_utils_encode_fv_params(v65))
              {
                OUTLINED_FUNCTION_2_1();
                if (ccder_blob_encode_tl())
                {
                  OUTLINED_FUNCTION_11_0();
                  if (!OUTLINED_FUNCTION_1_1(v10, 0x4Du, v66, 2u, v19, v20, v21, v22, v67, v23))
                  {
                    OUTLINED_FUNCTION_2_1();
                    v24 = ccder_blob_decode_range();
                    if (v24)
                    {
                      v32 = OUTLINED_FUNCTION_9_0(v24, v25, v26, v27, v28, v29, v30, v31, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v67);
                      der_utils_decode_fv_data(v32, v33, v34);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      fprintf(v35, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v36, v41, v43, v45, v47, v49, v51, ":", 583, "", "");
    }
  }

  OUTLINED_FUNCTION_3_0(v67);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_set_protection()
{
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_16_0();
  v2 = v1;
  v4 = v3;
  v27[0] = *MEMORY[0x29EDCA608];
  bzero(v26, 0x1000uLL);
  v22 = v26;
  v23 = v27;
  v24 = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = aks_client_connection;
    if (!der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_params(&v22) || (OUTLINED_FUNCTION_2_1(), !ccder_blob_encode_tl()) || (v25[0] = v4, v25[1] = v2, v25[2] = v23, v25[3] = v27 - v23, !OUTLINED_FUNCTION_1_1(v6, 0x54u, v25, 4u, v7, v8, v9, v10, v26, &v24)) && v24 && ((OUTLINED_FUNCTION_2_1(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15_0(), (der_utils_decode_fv_data(v11, v12, v13) & 1) == 0)))
    {
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 617, "", "");
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_3_0(v26);
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_unwrap_vek_with_acm()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_16_0();
  v4 = v3;
  *(v2 - 96) = *MEMORY[0x29EDCA608];
  bzero(v26, 0x1000uLL);
  v22 = v26;
  v23 = v27;
  v24 = 4096;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v6 = aks_client_connection;
      if (!der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_data(&v22) || !der_utils_encode_fv_params(&v22) || (OUTLINED_FUNCTION_2_1(), !ccder_blob_encode_tl()) || (v25[0] = v23, v25[1] = &v27[-v23], v25[2] = v4, !OUTLINED_FUNCTION_1_1(v6, 0x4Bu, v25, 3u, v7, v8, v9, v10, v26, &v24)) && ((OUTLINED_FUNCTION_2_1(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15_0(), (der_utils_decode_fv_key(v11, v12, v13) & 1) == 0)))
      {
        OUTLINED_FUNCTION_10_0();
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_2();
      fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 654, "", "");
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_3_0(v26);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

uint64_t __aks_gather_stats_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t aks_kext_get_options()
{
  input[3] = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_12_0();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v0 = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    fprintf(v6, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v7, v8, v9, v10, v11, v12, v13, ":", 842, "", "");
  }

  return v0;
}

void aks_stash_escrow()
{
  OUTLINED_FUNCTION_5_0();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v31 = *MEMORY[0x29EDCA608];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v29[0] = v15;
    v29[1] = v14;
    v29[2] = v12;
    v29[3] = v10;
    if ((!v14 || v4 && v2) && !OUTLINED_FUNCTION_7_0(aks_client_connection, 0x36u, v29, 4u, v8, v6, v17, v18, __src, &__count))
    {
      if (v14)
      {
        v19 = calloc(__count, 1uLL);
        *v4 = v19;
        if (v19)
        {
          memcpy(v19, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  OUTLINED_FUNCTION_4_0();
}

void akstest_new_key()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  v15[2] = *MEMORY[0x29EDCA608];
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    aks_unpack_data(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  OUTLINED_FUNCTION_4_0();
}

void akstest_new_ekwk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  v43[2] = *MEMORY[0x29EDCA608];
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    aks_unpack_data(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  OUTLINED_FUNCTION_4_0();
}

uint64_t akstest_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void akstest_unwrap_key()
{
  OUTLINED_FUNCTION_5_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v22[2] = *MEMORY[0x29EDCA608];
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  aks_pack_data(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!OUTLINED_FUNCTION_7_0(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    aks_unpack_data(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  OUTLINED_FUNCTION_4_0();
}

void akstest_unwrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_14_0();
  v42[3] = *MEMORY[0x29EDCA608];
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  aks_pack_data(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!OUTLINED_FUNCTION_7_0(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    aks_unpack_data(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_get_internal_info_for_key()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25[1] = *MEMORY[0x29EDCA608];
  v25[0] = v0;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    v11 = OUTLINED_FUNCTION_7_0(aks_client_connection, 0x5Du, v25, 1u, v6, v10, v8, v9, __src, &__n);
    v12 = __n;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      if (v12 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v6 = (v6 + 6);
      }

      else
      {
        v13 = calloc(v12, 1uLL);
        *v4 = v13;
        v12 = __n;
        if (v13)
        {
          *v2 = __n;
          memcpy(v13, __src, v12);
          v6 = 0;
          v12 = __n;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_2();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 1246, "", "");
    v12 = 0x8000;
  }

  memset_s(__src, v12, 0, v12);
  return v6;
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t firebloom_export_pub_key(void *a1, void *a2, unint64_t *a3)
{
  v5 = cczp_bitlen();
  v6 = calloc(((v5 + 7) >> 2) | 1, 1uLL);
  if (!v6)
  {
    return 4294967279;
  }

  v7 = v6;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t der_get_sizeof(uint64_t a1, uint64_t a2)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_24_0();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10_1();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_11_1();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28_0();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_1();
    der_dict_iterate();
    return 0;
  }

  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_18_1(a1);
  if (OUTLINED_FUNCTION_33_0(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v20))
  {
    *a4 = v19;
    *a3 = v21 - v19;
    result = v22;
    *v4 = v22;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_24_0();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_2_1();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL der_get_BOOL()
{
  OUTLINED_FUNCTION_28_0();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v12 = *MEMORY[0x29EDCA608];
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (encode_list_get_data(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4 && v5)
  {
    if (der_get_sizeof(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!OUTLINED_FUNCTION_27_0(v6))
      {
        return 4294967279;
      }

      OUTLINED_FUNCTION_14_1();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        OUTLINED_FUNCTION_7_1(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_13_1(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        OUTLINED_FUNCTION_5_1();
        if (v23 == v1)
        {
          v24 = OUTLINED_FUNCTION_26_0();
          if (v24)
          {
            return OUTLINED_FUNCTION_3_1(v24);
          }
        }
      }

      OUTLINED_FUNCTION_12_1();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27_0(v5))
    {
      OUTLINED_FUNCTION_14_1();
      v6 = ccder_blob_encode_body();
      if (v6 && (OUTLINED_FUNCTION_23_0(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (OUTLINED_FUNCTION_7_1(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_13_1(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), OUTLINED_FUNCTION_5_1(), v30 == v1) && (v31 = OUTLINED_FUNCTION_26_0()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v31);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_24_0();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return encode_list_add_data();
    }
  }

  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = OUTLINED_FUNCTION_25_0();
    v4 = OUTLINED_FUNCTION_27_0(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_8_1(), OUTLINED_FUNCTION_2_1(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_1(), v6 == v5) && (v7 = OUTLINED_FUNCTION_26_0()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v7);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v18[1] = *MEMORY[0x29EDCA608];
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_2_1(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_1(), v16 == v14) && OUTLINED_FUNCTION_26_0())
      {
        result = OUTLINED_FUNCTION_17_1();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27_0(v5))
    {
      OUTLINED_FUNCTION_14_1();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (OUTLINED_FUNCTION_7_1(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_13_1(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), OUTLINED_FUNCTION_5_1(), v22 == v1) && (v23 = OUTLINED_FUNCTION_26_0()) != 0)
      {
        return OUTLINED_FUNCTION_3_1(v23);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v6 = ccder_sizeof();
      v7 = OUTLINED_FUNCTION_27_0(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), OUTLINED_FUNCTION_8_1(), v15 = v3, v16 = v8, OUTLINED_FUNCTION_2_1(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_1(), v9 == v3) && (v10 = OUTLINED_FUNCTION_26_0()) != 0)
        {
          v4 = 0;
          v10[1] = v3;
          v10[2] = 0;
          *v10 = *a1;
          *a1 = v10;
          v3 = 0;
        }

        else
        {
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v4;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_4_1();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    OUTLINED_FUNCTION_21_0(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    OUTLINED_FUNCTION_4_1();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      OUTLINED_FUNCTION_21_0(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_1(v24, v25, v26, v27, v28, v29, v30, v31, v36);
      }
    }

    return 0;
  }

  LODWORD(v39) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v36, 4, v5, &v39);
  if (result)
  {
    v15 = v39;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_1();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_0(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_1(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (encode_list_add_number(&v19, der_key_state_state, *v2) || encode_list_add_number(&v19, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v19, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v19, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v19, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v19, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v19, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v19, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v19, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v19, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v19, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v19, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v19, der_key_cx_window, *(v3 + 19)), v4)) || (v6 = OUTLINED_FUNCTION_19_0(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    OUTLINED_FUNCTION_15_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  encode_list_free(&v19);
  return v14;
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x29EDCA608]);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v15, 0x228uLL);
      v15[4] = der_key_state_lock_state;
      v15[9] = der_key_state_backoff;
      v15[14] = der_key_state_failed_attempts;
      v15[19] = der_key_state_generation_state;
      v15[24] = der_key_state_assertion_set;
      v15[29] = der_key_state_grace_period_enabled;
      v15[34] = der_key_state_recovery_countdown;
      v15[39] = der_key_state_more_state;
      v15[44] = der_key_keybag_handle;
      v15[49] = der_key_config_max_unlock_attempts;
      v15[54] = der_key_config_user_uuid;
      v16[2] = der_key_lock_time;
      v16[7] = der_key_cx_window;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_34_0(v6, v7, v8, v9, v10, v11, v12, v13, 14);
      *v5 = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 4) = der_get_number();
      *(v5 + 5) = der_get_number();
      *(v5 + 26) = der_get_number();
      *(v5 + 34) = der_get_number();
      *(v5 + 42) = der_get_number();
      *(v5 + 46) = der_get_number();
      der_utils_decode_implicit_raw_octet_string_copy(v16, 4, v5 + 50, 16);
      v5[66] = der_get_number();
      v5[67] = der_get_number();
      *(v5 + 68) = der_get_number();
      der_get_number();
      result = OUTLINED_FUNCTION_17_1();
      *(v5 + 76) = v14;
    }
  }

  return result;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x29EDCA608]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_0(v3);
        bzero(v15, 0x98uLL);
        v15[4] = der_key_state_failed_attempts;
        v15[9] = der_key_config_max_unlock_attempts;
        v15[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_3();
        if (OUTLINED_FUNCTION_34_0(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_1();
          v5[3] = v14;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x29EDCA608]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_20_0(v3);
          OUTLINED_FUNCTION_20_0(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = der_key_group_uuid;
          v13 = der_key_uuid;
          OUTLINED_FUNCTION_0_3();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v11 + 8, 4, v8, 16))
          {
            return der_utils_decode_implicit_raw_octet_string_copy(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x29EDCA608]);
  if (v3)
  {
    if (a1)
    {
      v5 = v4;
      if (v4)
      {
        v6 = v3;
        memset_s(v4, 0x58uLL, 0, 0x58uLL);
        bzero(v16, 0x200uLL);
        v16[4] = der_key_uuid;
        v17[2] = der_key_id;
        v18[2] = der_key_flags;
        v18[7] = der_key_version;
        v18[12] = der_key_state_reserved;
        v20 = der_key_state_failed_attempts;
        v21 = der_key_state_failed_attempts_other;
        v22 = der_key_config_max_unlock_attempts;
        v23 = der_key_state_backoff;
        v24 = der_key_state_backoff_other;
        v25 = der_key_config_capabilities;
        v26 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_34_0(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v17, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!der_utils_decode_implicit_raw_octet_string_copy(v18, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = der_get_number();
        v5[10] = der_get_number();
        v5[11] = der_get_number();
        v5[12] = der_get_number();
        v5[15] = der_get_number();
        v5[13] = der_get_number();
        v5[14] = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy_partial(&v19, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v5[9];
        if ((v14 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 0x800) == 0)
        {
          return 0;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_17_1();
        v5[20] = v15;
      }
    }
  }

  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_19_0(a1, a2);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_9_1();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && encode_list_add_data() || a1[2] && encode_list_add_data() || a1[4] && encode_list_add_data() || a1[6] && encode_list_add_data() || a1[8] && encode_list_add_data() || a1[10] && encode_list_add_data())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = encode_list_dict(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_icsc_params_internal(uint64_t a1, uint64_t a2, void *__s)
{
  v82[29] = *MEMORY[0x29EDCA608];
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v82, 0xE8uLL);
  v81 = der_key_acm_handle;
  v82[4] = der_key_username;
  v82[9] = der_key_label;
  v82[14] = der_key_data;
  v82[19] = der_key_timestamp;
  v82[24] = der_key_public_key;
  v75 = 0;
  v76 = 0;
  v77 = &v81;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_34_0(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  OUTLINED_FUNCTION_1_2();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = OUTLINED_FUNCTION_2_2(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  OUTLINED_FUNCTION_1_2();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = OUTLINED_FUNCTION_2_2(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  OUTLINED_FUNCTION_1_2();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = OUTLINED_FUNCTION_2_2(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  OUTLINED_FUNCTION_1_2();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = OUTLINED_FUNCTION_2_2(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  OUTLINED_FUNCTION_1_2();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = OUTLINED_FUNCTION_2_2(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  OUTLINED_FUNCTION_1_2();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v78;
  __s[11] = (v79 - v78);
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v7 = OUTLINED_FUNCTION_19_0(v5, v6);
          if (!v7)
          {
            v3 = 0;
            OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_20_0(a3);
        OUTLINED_FUNCTION_9_1();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_3();
    der_dict_iterate();
    return der_get_number() & 0x1F;
  }

  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x29EDCA608];
  bzero(v10, 0xE8uLL);
  v9 = der_key_peer_unlock_token_status;
  v10[4] = der_key_peer_unwrapped_escrow_record_status;
  v10[9] = der_key_peer_wrapped_escrow_record_status;
  v10[14] = der_key_peer_flags;
  v10[19] = der_key_public_key;
  v11[2] = der_key_peer_kcv;
  v6 = xmmword_2982C5B20;
  v7 = 0;
  v8 = &v9;
  OUTLINED_FUNCTION_0_3();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v5 = 65;
  if (!der_utils_decode_implicit_raw_octet_string_copy_len(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return der_utils_decode_implicit_raw_octet_string_copy(v12, 4, (a3 + 96), 3) - 1;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v4 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_10_1();
        der_dict_iterate();
        return 0;
      }
    }
  }

  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_0(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_1(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t der_utils_decode_implicit_uint64(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = OUTLINED_FUNCTION_33_0(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_2_1();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v72) = a6;
  *(&v72 + 1) = a6 + a7;
  OUTLINED_FUNCTION_2_1();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_0();
    *a5 = v37;
  }

  v38 = OUTLINED_FUNCTION_31_0(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = der_utils_decode_implicit_uint64(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_0();
    *a4 = v55;
  }

  v56 = OUTLINED_FUNCTION_31_0(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!der_utils_decode_implicit_uint64(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_0();
    *a3 = v65;
  }

  OUTLINED_FUNCTION_1_2();
  if (ccder_blob_decode_range())
  {
    v72 = v77;
    if (a1)
    {
      if (a2)
      {
        *a1 = v75;
        *a2 = (v76 - v75);
      }
    }
  }

  if (v72 == *(&v72 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t _qsort_compare(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = a1 + 1;
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = (v11 + 1);
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t ctu::cf::convert_copy()
{
  return MEMORY[0x2A1C6F218]();
}

{
  return MEMORY[0x2A1C6F220]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2A1C6F268]();
}

{
  return MEMORY[0x2A1C6F278]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE00]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2A1C70218](this, a2, a3, a4);
}

{
  return MEMORY[0x2A1C70230](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2A1C70220]();
}

{
  return MEMORY[0x2A1C70228]();
}

{
  return MEMORY[0x2A1C70238]();
}

{
  return MEMORY[0x2A1C70240]();
}

{
  return MEMORY[0x2A1C70250]();
}

{
  return MEMORY[0x2A1C70258]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}