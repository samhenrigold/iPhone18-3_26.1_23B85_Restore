_BYTE *storeEnumTagSinglePayload for Google_Protobuf_FeatureSet.FieldPresence(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C616C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1AC4C61AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C6204(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 86))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4C6258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C62E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AC4C6328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C6384(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_217(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_217(v2);
}

void *sub_1AC4C63C0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_320(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_320(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C6420(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 54))
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

uint64_t sub_1AC4C6460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1AC4C64C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1AC4C6598(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (result)
  {

    sub_1AC4513F8(a2, a3);

    return sub_1AC485714(a6, a7, a8);
  }

  return result;
}

unint64_t sub_1AC4C6628()
{
  result = qword_1EB5590C8;
  if (!qword_1EB5590C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590C8);
  }

  return result;
}

unint64_t sub_1AC4C667C()
{
  result = qword_1EB5590D0;
  if (!qword_1EB5590D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590D0);
  }

  return result;
}

unint64_t sub_1AC4C66D0()
{
  result = qword_1EB5590D8;
  if (!qword_1EB5590D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590D8);
  }

  return result;
}

unint64_t sub_1AC4C6724()
{
  result = qword_1EB5590E0;
  if (!qword_1EB5590E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590E0);
  }

  return result;
}

unint64_t sub_1AC4C6778()
{
  result = qword_1EB5590E8;
  if (!qword_1EB5590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590E8);
  }

  return result;
}

unint64_t sub_1AC4C67CC()
{
  result = qword_1EB5590F0;
  if (!qword_1EB5590F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590F0);
  }

  return result;
}

unint64_t sub_1AC4C6820()
{
  result = qword_1EB5590F8;
  if (!qword_1EB5590F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590F8);
  }

  return result;
}

unint64_t sub_1AC4C6874()
{
  result = qword_1EB559100;
  if (!qword_1EB559100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559100);
  }

  return result;
}

unint64_t sub_1AC4C68C8()
{
  result = qword_1EB559108;
  if (!qword_1EB559108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559108);
  }

  return result;
}

unint64_t sub_1AC4C691C()
{
  result = qword_1EB559110;
  if (!qword_1EB559110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559110);
  }

  return result;
}

unint64_t sub_1AC4C6970()
{
  result = qword_1EB559118;
  if (!qword_1EB559118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559118);
  }

  return result;
}

unint64_t sub_1AC4C69C4()
{
  result = qword_1EB559120;
  if (!qword_1EB559120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559120);
  }

  return result;
}

unint64_t sub_1AC4C6A18()
{
  result = qword_1EB559128;
  if (!qword_1EB559128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559128);
  }

  return result;
}

unint64_t sub_1AC4C6A6C()
{
  result = qword_1EB559130;
  if (!qword_1EB559130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559130);
  }

  return result;
}

unint64_t sub_1AC4C6AC0()
{
  result = qword_1EB559138;
  if (!qword_1EB559138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559138);
  }

  return result;
}

unint64_t sub_1AC4C6B14()
{
  result = qword_1EB559140;
  if (!qword_1EB559140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559140);
  }

  return result;
}

unint64_t sub_1AC4C6B68()
{
  result = qword_1EB559148;
  if (!qword_1EB559148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559148);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t result)
{
  *v1 = result;
  *(result + 56) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 56) = a1;
  a4 = a1;

  return sub_1AC4BFC3C(v4 - 56, &a2);
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  v2 = *(v0 - 24);
  v3 = *(v0 - 16);
  v4 = *(v0 - 8);

  return sub_1AC485714(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t result)
{
  *v1 = result;
  *(result + 128) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_1()
{
  v2 = *(v0 - 24);
  v3 = *(v0 - 16);
  v4 = *(v0 - 8);

  return sub_1AC485714(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_1AC4AEF40(v0 + 64, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11, __n128 a13)
{
  *(v13 - 64) = a2;
  a13 = a2;

  return sub_1AC4848F4(v13 - 64, &a10);
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_90_1(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  a13 = *a1;
  *(&a13 + 14) = *(a1 + 14);

  return sub_1AC4AEF40(&a13, &a9);
}

uint64_t OUTLINED_FUNCTION_96_1(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_117@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[3] = result;
  *v3 = a2;
  v3[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_130(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(__srca, a18);
  __src = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x48uLL);
}

void *OUTLINED_FUNCTION_132(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return memcpy(va, &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_133(void *a1@<X8>)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  *(a1 + 62) = 0;
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_142()
{
  v2 = *(v0 + 64);
  *(v1 + 136) = *(v0 + 48);
  *(v1 + 152) = v2;
  result = *(v0 + 80);
  *(v1 + 168) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_148()
{
  v2 = v1 - 96;
  v3 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v3;
  result = *(v0 + 32);
  *(v2 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_1AC51EEB8();
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_1AC51EEB8();
}

uint64_t OUTLINED_FUNCTION_176(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_177(int a1@<W8>)
{
  if (a1 == 3)
  {
    LOBYTE(a1) = 0;
  }

  *(v1 + 80) = a1;
}

void OUTLINED_FUNCTION_178(int a1@<W8>)
{
  if (a1 == 3)
  {
    LOBYTE(a1) = 0;
  }

  *v1 = a1;
}

void OUTLINED_FUNCTION_180(uint64_t a1@<X8>)
{
  *(a1 + 24) = 4;
  *(a1 + 25) = 50529027;
  *(a1 + 29) = 3;
}

uint64_t OUTLINED_FUNCTION_184(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = 0;
  return result;
}

void OUTLINED_FUNCTION_188()
{
  v0[6] = 0;
  v0[7] = 0;
  v0[5] = 0;
  *(v0 + 62) = 0;
}

uint64_t OUTLINED_FUNCTION_193(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a17, int a18, __int16 a19, __int128 arg50)
{
  arg50 = a15;
  *(&arg50 + 14) = *(&a15 + 14);

  return sub_1AC4AEF78(&arg50);
}

uint64_t OUTLINED_FUNCTION_196(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_1AC4B3394(a1, va, v26, v27);
}

uint64_t OUTLINED_FUNCTION_202(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1AC4AC8C4(va, v4, v6, v7 | (v8 << 32), v9 | (v5 << 32));
}

uint64_t OUTLINED_FUNCTION_204(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_205()
{
  *(v1 + 152) = *(v0 + 72);
  *(v1 + 168) = *(v0 + 88);
  *(v1 + 184) = *(v0 + 104);
  result = *(v0 + 118);
  *(v1 + 198) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_206()
{
  *(v1 + 152) = *(v0 + 40);
  *(v1 + 168) = *(v0 + 56);
  *(v1 + 184) = *(v0 + 72);
  result = *(v0 + 87);
  *(v1 + 199) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_214()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_215(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x48uLL);
}

void *OUTLINED_FUNCTION_216(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return memcpy(v9, __srca, 0x48uLL);
}

void OUTLINED_FUNCTION_218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{

  sub_1AC4513F8(a11, a12);
}

__n128 OUTLINED_FUNCTION_221()
{
  v2 = *(v0 + 80);
  *(v1 + 152) = *(v0 + 64);
  *(v1 + 168) = v2;
  *(v1 + 184) = *(v0 + 96);
  result = *(v0 + 110);
  *(v1 + 198) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_223(uint64_t result)
{
  *result = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a13, int a14, __int16 a15, char a16)
{
  *(v15 + 40) = a9;
  *(v15 + 56) = a10;
  *(v15 + 72) = a11;
  result = *(&a11 + 15);
  *(v15 + 87) = *(&a11 + 15);
  return result;
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1, uint64_t a2)
{

  return sub_1AC4B3394(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_233()
{
  v2 = *v0;
  v3 = v0[1];

  sub_1AC4513F8(v2, v3);
}

uint64_t OUTLINED_FUNCTION_234()
{
}

uint64_t OUTLINED_FUNCTION_235()
{
}

__n128 OUTLINED_FUNCTION_236()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  *(v0 + 256) = result;
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v0 + 96);
  return result;
}

__n128 OUTLINED_FUNCTION_238()
{
  *(v1 + 8) = *(v0 + 40);
  *(v1 + 24) = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 40) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_241()
{
  *(v1 + 8) = *(v0 + 40);
  *(v1 + 24) = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 40) = result;
  return result;
}

void *OUTLINED_FUNCTION_248(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return memcpy(va, v18, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_249(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_1AC4B3394(a1, va, v32, v33);
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_1AC51F468();
}

void *OUTLINED_FUNCTION_251(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(__srca, a18);
  __src = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);

  return memcpy(v18, __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_253()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_254()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_262()
{
  *(v0 + 24) = 4;
  *(v0 + 25) = 50529027;
  *(v0 + 29) = 3;
}

__n128 OUTLINED_FUNCTION_267(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a13, int a14, __int16 a15)
{
  v14[2] = a9;
  v14[3] = a10;
  v14[4] = a11;
  result = *(&a11 + 14);
  *(v14 + 78) = *(&a11 + 14);
  return result;
}

uint64_t OUTLINED_FUNCTION_268@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v6 = a4;
  v6[1] = v5;
  v6[2] = v4;

  return sub_1AC485860(result, a2, a3);
}

void *OUTLINED_FUNCTION_269(void *a1)
{

  return memcpy(a1, (v1 + 72), 0x46uLL);
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1)
{

  return ExtensionFieldValueSet.isInitialized.getter();
}

void OUTLINED_FUNCTION_274()
{
  v0[5] = 0;
  v0[6] = 0;
  *(v0 + 62) = 0;
  v0[7] = 0;
}

void OUTLINED_FUNCTION_275()
{
  v0[15] = 0;
  v0[16] = 0;
  v0[14] = 0;
  *(v0 + 134) = 0;
}

__n128 OUTLINED_FUNCTION_276()
{
  v2 = (v1 - 80);
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v4;
  return result;
}

void OUTLINED_FUNCTION_277()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  sub_1AC4513F8(v2, v3);
}

uint64_t OUTLINED_FUNCTION_280()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_281()
{
  v0[2] = *v0;
  *(v0 + 46) = *(v0 + 14);

  return sub_1AC4AEF40((v0 + 2), (v0 + 4));
}

uint64_t OUTLINED_FUNCTION_282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a19, int a20, __int16 a21, __int128 arg60)
{
  arg60 = a17;
  *(&arg60 + 14) = *(&a17 + 14);

  return sub_1AC4AEF78(&arg60);
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1)
{

  return ExtensionFieldValueSet.isInitialized.getter();
}

uint64_t OUTLINED_FUNCTION_285(uint64_t a1, uint64_t a2)
{

  return sub_1AC4B3394(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_286(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x47uLL);
}

_OWORD *OUTLINED_FUNCTION_303()
{
  v1 = v0[6];
  v0[9] = v0[5];
  v0[10] = v1;
  v0[8] = v0[4];
  return v0 + 8;
}

void *OUTLINED_FUNCTION_304(void *a1)
{

  return memcpy(a1, (v1 + 56), 0x46uLL);
}

uint64_t OUTLINED_FUNCTION_305(uint64_t result)
{
  *result = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_306(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
}

void *OUTLINED_FUNCTION_307(void *a1)
{

  return memcpy(a1, (v1 + 64), 0x46uLL);
}

void *OUTLINED_FUNCTION_308(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_309(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a25, int a26, __int16 a27, __int128 arg90)
{
  arg90 = a23;
  *(&arg90 + 14) = *(&a23 + 14);

  return sub_1AC4AEF78(&arg90);
}

uint64_t OUTLINED_FUNCTION_311(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_314(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = v8;
  *(v5 + 88) = v6;
  *(v5 + 96) = v11;
  *(v5 + 104) = v10;
  *(v5 + 112) = v7;
  *(v5 + 120) = v9;

  return sub_1AC4B39AC(result, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_315@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W8>)
{
  *v12 = v8;
  *(v12 + 8) = v6;
  *(v12 + 16) = v9;
  *(v12 + 17) = v7;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  *(v12 + 40) = a6;

  return sub_1AC4B3968(result, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_316(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_317(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_1AC4B3394(a1, va, v25, v24);
}

uint64_t OUTLINED_FUNCTION_318()
{
  v0[4] = *v0;
  *(v0 + 78) = *(v0 + 14);

  return sub_1AC4AEF78((v0 + 4));
}

void OUTLINED_FUNCTION_319()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_323(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 120) = a10;
}

uint64_t OUTLINED_FUNCTION_328(uint64_t result)
{
  *result = v1;
  *(result + 8) = *(v1 + 32) & 1;
  return result;
}

void *OUTLINED_FUNCTION_329(void *a1)
{

  return memcpy(a1, (v1 + 80), 0x46uLL);
}

void *OUTLINED_FUNCTION_330(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x46uLL);
}

__n128 OUTLINED_FUNCTION_343()
{
  *(v0 - 192) = *(v0 - 136);
  result = *(v0 - 122);
  *(v0 - 178) = result;
  return result;
}

double OUTLINED_FUNCTION_350()
{
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_362(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_367(uint64_t result)
{
  *result = v1;
  v2 = *(v1 + 16);
  if (v2 == 12)
  {
    LOBYTE(v2) = 0;
  }

  *(result + 8) = v2;
  return result;
}

void OUTLINED_FUNCTION_370()
{

  JUMPOUT(0x1AC5B4340);
}

void *OUTLINED_FUNCTION_371()
{

  return memcpy(&STACK[0x210], (v0 + 48), 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_372@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 - 16) = v4;
  *(a4 - 8) = v5;
  *a4 = v6;
  *(a4 + 4) = WORD2(v6);

  return sub_1AC485714(result, a2, a3);
}

uint64_t OUTLINED_FUNCTION_375@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 - 16) = v4;
  *(a4 - 8) = v5;
  *a4 = v6;
  *(a4 + 4) = WORD2(v6);

  return sub_1AC485714(result, a2, a3);
}

uint64_t OUTLINED_FUNCTION_376@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if (a2 == 3)
  {
    LOBYTE(a2) = 0;
  }

  *(result + 8) = a2;
  return result;
}

void *OUTLINED_FUNCTION_380(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va1, a53);
  va_start(__srca, a53);
  __src = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);
  v61 = va_arg(va1, void);
  v62 = va_arg(va1, void);
  v63 = va_arg(va1, void);
  v64 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x46uLL);
}

uint64_t OUTLINED_FUNCTION_381(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1AC4B3394(v4, v4 + 144, a3, a4);
}

void OUTLINED_FUNCTION_383()
{

  JUMPOUT(0x1AC5B48A0);
}

void OUTLINED_FUNCTION_384()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_386()
{
}

uint64_t OUTLINED_FUNCTION_387(uint64_t a1)
{

  return ExtensionFieldValueSet.isInitialized.getter();
}

uint64_t OUTLINED_FUNCTION_388(uint64_t result, unint64_t a2, uint64_t a3)
{

  return sub_1AC485860(result, a2, a3);
}

void *OUTLINED_FUNCTION_389(void *a1)
{

  return memcpy(a1, (v1 + 120), 0x71uLL);
}

void OUTLINED_FUNCTION_390()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  sub_1AC4937B8(v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_391()
{
}

uint64_t Google_Protobuf_Duration.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

void Google_Protobuf_Duration.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

double Google_Protobuf_Duration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

uint64_t static Google_Protobuf_Duration._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED6E33B0 != -1)
  {
    swift_once();
  }

  v2 = unk_1ED6E33C0;
  v3 = qword_1ED6E33C8;
  v4 = unk_1ED6E33D0;
  *a1 = qword_1ED6E33B8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_Duration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  while (1)
  {
    result = v6(a2, a3);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v9();
    }
  }

  return result;
}

void sub_1AC4C8730(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](a2);
  }

  if (a3)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](a3);
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      v9 = a4;
      v10 = a4 >> 32;
      goto LABEL_10;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_10:
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_Duration.traverse<A>(visitor:)()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (!*v0 || (OUTLINED_FUNCTION_10(), v5(), !v1))
  {
    if (!v2 || (OUTLINED_FUNCTION_10(), v6(), !v1))
    {
      sub_1AC4578F4(v3, v4);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v7, v8, v9);
      sub_1AC4513F8(v3, v4);
    }
  }
}

uint64_t static Google_Protobuf_Duration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1AC4578F4(v7, v6);
  sub_1AC4578F4(v5, v4);
  v8 = MEMORY[0x1AC5B4070](v7, v6, v5, v4);
  sub_1AC4513F8(v5, v4);
  sub_1AC4513F8(v7, v6);
  return v8 & 1;
}

uint64_t Google_Protobuf_Duration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4C8730(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4C8A94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4C8730(__dst, v2, v3, v5, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4C8B28(uint64_t a1)
{
  result = sub_1AC4C8B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C8B50()
{
  result = qword_1ED6E3408;
  if (!qword_1ED6E3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3408);
  }

  return result;
}

unint64_t sub_1AC4C8BA4(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4C8BD4();
  result = sub_1AC4C8C28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4C8BD4()
{
  result = qword_1EB557AC0;
  if (!qword_1EB557AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AC0);
  }

  return result;
}

unint64_t sub_1AC4C8C28()
{
  result = qword_1EB559158;
  if (!qword_1EB559158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559158);
  }

  return result;
}

unint64_t sub_1AC4C8C80()
{
  result = qword_1EB559160;
  if (!qword_1EB559160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559160);
  }

  return result;
}

uint64_t Google_Protobuf_Empty.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

void Google_Protobuf_Empty.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

double Google_Protobuf_Empty.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  return result;
}

uint64_t sub_1AC4C8D70()
{
  type metadata accessor for InternPool();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  qword_1EB559168 = v0;
  qword_1EB559170 = sub_1AC51ED58();
  sub_1AC46C9B4();
  qword_1EB559178 = sub_1AC51ED58();
  result = sub_1AC51ED58();
  qword_1EB559180 = result;
  return result;
}

uint64_t static Google_Protobuf_Empty._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB557EE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB559170;
  v3 = qword_1EB559178;
  v4 = qword_1EB559180;
  *a1 = qword_1EB559168;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_Empty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    result = v6(a2, a3);
  }

  while (!v3 && (v8 & 1) == 0);
  return result;
}

void Google_Protobuf_Empty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  sub_1AC4578F4(*v3, v8);
  UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
  sub_1AC4513F8(v7, v8);
}

uint64_t static Google_Protobuf_Empty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1AC4578F4(*a1, v3);
  sub_1AC4578F4(v4, v5);
  v6 = MEMORY[0x1AC5B4070](v2, v3, v4, v5);
  sub_1AC4513F8(v4, v5);
  sub_1AC4513F8(v2, v3);
  return v6 & 1;
}

uint64_t Google_Protobuf_Empty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AC51F468();
  memcpy(v6, __src, sizeof(v6));
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
LABEL_6:
      if (v3 != v4)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_1AC51EC58();
LABEL_8:
      memcpy(__src, v6, sizeof(__src));
      return sub_1AC51F4C8();
  }
}

uint64_t sub_1AC4C9144(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1AC51F468();
  sub_1AC4818A8(v10, v2, v3, v4, v5, v6, v7, v8);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4C9190(uint64_t a1)
{
  result = sub_1AC4C91B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C91B8()
{
  result = qword_1EB557B10;
  if (!qword_1EB557B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B10);
  }

  return result;
}

unint64_t sub_1AC4C920C(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4C923C();
  result = sub_1AC4C9290();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4C923C()
{
  result = qword_1EB557B08;
  if (!qword_1EB557B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B08);
  }

  return result;
}

unint64_t sub_1AC4C9290()
{
  result = qword_1EB559188;
  if (!qword_1EB559188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559188);
  }

  return result;
}

unint64_t sub_1AC4C92E8()
{
  result = qword_1EB559190;
  if (!qword_1EB559190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559190);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AC4C93D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  if (dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for _ProtoNameProviding))
  {
    v28 = v5;
    v29 = a4;
    v26 = v13;
    v27 = v11;
    v30 = a5;
    OUTLINED_FUNCTION_1_8();
    v17();
    v18 = v31;
    v19 = sub_1AC4F2B28(a1, a2);
    v20 = v19 + v19[2] + 32;
    v32[0] = (v19 + 4);
    v32[1] = v20;
    v32[2] = "";
    v32[3] = 0;
    v33 = 258;
    v21 = sub_1AC4CFB1C(v32, v18);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      (*(v29 + 32))(v21, a3);
      if (!__swift_getEnumTagSinglePayload(v16, 1, a3))
      {
        a5 = v30;
        (*(*(a3 - 8) + 32))(v30, v16, a3);
        v24 = 0;
        return __swift_storeEnumTagSinglePayload(a5, v24, 1, a3);
      }

      (*(v26 + 8))(v16, v27);
    }

    v24 = 1;
    a5 = v30;
  }

  else
  {

    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a5, v24, 1, a3);
}

uint64_t sub_1AC4C9610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1AC4CA7D4(a1, v12);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_9();
    sub_1AC4EFF84(v6, a2, a3);

    *v3 = v11;
  }

  else
  {
    sub_1AC4575D8(a1, qword_1EB559198, &unk_1AC5295F0);
    v8 = OUTLINED_FUNCTION_11_6();
    sub_1AC4DCE84(v8, v9, v10);

    return sub_1AC4575D8(v12, qword_1EB559198, &unk_1AC5295F0);
  }

  return result;
}

void sub_1AC4C96CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 16) & 0x3000000000000000) == 0x2000000000000000 && *(a1 + 24) == 255)
  {
    v6 = OUTLINED_FUNCTION_11_6();
    sub_1AC4DCF40(v6, v7, v8);

    sub_1AC4CA7E4(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_9();
    sub_1AC4F00B4(v9, a2, a3);

    *v3 = v10;
  }
}

void sub_1AC4C978C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AC465B44(a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_9();
    sub_1AC4F01CC(v4, a2);
    *v2 = v8;
  }

  else
  {
    sub_1AC4575D8(a1, &qword_1EB558200, &unk_1AC520780);
    v5 = sub_1AC45AA38(a2);
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558208, &unk_1AC520790);
      sub_1AC51F338();
      sub_1AC465B44((*(v9 + 56) + 40 * v7), v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
      sub_1AC51F358();
      *v2 = v9;
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
    }

    sub_1AC4575D8(v10, &qword_1EB558200, &unk_1AC520780);
  }
}

uint64_t ExtensibleMessage.setExtensionValue<A>(ext:value:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 80);
  OUTLINED_FUNCTION_13_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22[-v13];
  v15 = v6;
  v16 = a1[2];
  v17 = *(v15 + 88);
  v18 = *(a3 + 8);
  v24[0] = v8;
  v24[1] = v17;
  v24[2] = v7;
  v25 = v18;
  v23[3] = type metadata accessor for MessageExtension(0, v24);
  v23[4] = &protocol witness table for MessageExtension<A, B>;
  v23[0] = a1;
  (*(v11 + 16))(v14, a2, AssociatedTypeWitness);
  v19 = *(v7 + 56);
  v25 = v8;
  v26 = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1(v24);

  v19(v23, v14, v8, v7);
  (*(a3 + 32))(v22, v17, a3);
  OUTLINED_FUNCTION_8_7();
  sub_1AC4C9AEC(v24, v23);
  sub_1AC4C978C(v23, v16);
  sub_1AC4575D8(v24, &qword_1EB558200, &unk_1AC520780);
  return (a3)(v22, 0);
}

uint64_t sub_1AC4C9AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExtensibleMessage.getExtensionValue<A>(ext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *a1;
  v5 = v25;
  v26 = a3;
  v6 = *(v25 + 80);
  v7 = sub_1AC51F228();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  OUTLINED_FUNCTION_5();
  v14 = v13;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  (*(a2 + 16))(&v29, *(v5 + 88), a2);
  v18 = v29;
  if (*(v29 + 16) && (v19 = sub_1AC45AA38(a1[2]), (v20 & 1) != 0))
  {
    sub_1AC47782C(*(v18 + 56) + 40 * v19, v27);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
    (*(v14 + 32))(v17, v12, v6);
    v21 = v26;
    (*(*(v25 + 96) + 32))(v6, *(v25 + 96));
    (*(v14 + 8))(v17, v6);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v6);
    (*(v9 + 8))(v12, v7);
    v21 = v26;
  }

  OUTLINED_FUNCTION_13_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return __swift_storeEnumTagSinglePayload(v21, v22, 1, AssociatedTypeWitness);
}

BOOL ExtensibleMessage.hasExtensionValue<A>(ext:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_1AC51F228();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  (*(a2 + 16))(&v20, *(v4 + 88), a2);
  v12 = v20;
  if (*(v20 + 16) && (v13 = sub_1AC45AA38(a1[2]), (v14 & 1) != 0))
  {
    sub_1AC47782C(*(v12 + 56) + 40 * v13, v18);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v11, v15 ^ 1u, 1, v5);
  v16 = __swift_getEnumTagSinglePayload(v11, 1, v5) == 0;
  (*(v8 + 8))(v11, v6);
  return v16;
}

uint64_t ExtensibleMessage.clearExtensionValue<A>(ext:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = (*(a2 + 32))(v7, *(v2 + 88), a2);
  sub_1AC4C9AEC(v8, v6);
  sub_1AC4C978C(v6, v3);
  sub_1AC4575D8(v8, &qword_1EB558200, &unk_1AC520780);
  return v4(v7, 0);
}

uint64_t ExtensibleMessage.setExtensionValue<A>(ext:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1AC4CA138(a1, a2, a3, &protocol conformance descriptor for RepeatedExtensionField<A>, RepeatedExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for RepeatedExtensionField<A>);
}

{
  return sub_1AC4CA138(a1, a2, a3, &protocol conformance descriptor for PackedExtensionField<A>, PackedExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for PackedExtensionField<A>);
}

{
  return sub_1AC4CA3D4(a1, a2, a3, &protocol conformance descriptor for RepeatedEnumExtensionField<A>, RepeatedEnumExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for RepeatedEnumExtensionField<A>, &unk_1F2129048);
}

{
  return sub_1AC4CA3D4(a1, a2, a3, &protocol conformance descriptor for PackedEnumExtensionField<A>, PackedEnumExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for PackedEnumExtensionField<A>, &unk_1F2129070);
}

{
  return sub_1AC4CA5E0(a1, a2, a3, &protocol conformance descriptor for RepeatedMessageExtensionField<A>, RepeatedMessageExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for RepeatedMessageExtensionField<A>, &unk_1F2129098);
}

{
  return sub_1AC4CA5E0(a1, a2, a3, &protocol conformance descriptor for RepeatedGroupExtensionField<A>, RepeatedGroupExtensionField.init(protobufExtension:value:), &protocol conformance descriptor for RepeatedGroupExtensionField<A>, &unk_1F21290C0);
}

uint64_t sub_1AC4CA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, _OWORD **, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  OUTLINED_FUNCTION_1_9();
  v10 = v9;
  v25 = *(v11 + 16);
  v28 = v12;
  v13 = *(v9 + 80);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_getAssociatedTypeWitness();
  v16 = sub_1AC51F108();
  OUTLINED_FUNCTION_0_8(v16);
  if (sub_1AC51F1C8())
  {
    v17 = 0;
    v18 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v19 = *(v10 + 88);
  }

  else
  {
    v19 = *(v10 + 88);
    WitnessTable = swift_getWitnessTable();
    v21 = *(v6 + 8);
    v28 = v13;
    v29 = v19;
    v30 = WitnessTable;
    v31 = v21;
    v31 = type metadata accessor for MessageExtension(0, &v28);
    v32 = &protocol witness table for MessageExtension<A, B>;
    v28 = v8;
    a5(v27, &v28, v7, v14, v15);
    v31 = v13;
    v18 = swift_getWitnessTable();
    OUTLINED_FUNCTION_12_7();
    v17 = swift_allocObject();
    v22 = v27[1];
    v17[1] = v27[0];
    v17[2] = v22;
    v17[3] = v27[2];
  }

  v28 = v17;
  v32 = v18;
  (*(v6 + 32))(v26, v19, v6);
  OUTLINED_FUNCTION_8_7();
  sub_1AC4C9AEC(&v28, v27);
  sub_1AC4C978C(v27, v25);
  sub_1AC4575D8(&v28, &qword_1EB558200, &unk_1AC520780);
  return (v18)(v26, 0);
}

uint64_t sub_1AC4CA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_9();
  v48 = *(v10 + 16);
  v58[0] = v11;
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_13_5();
  v14 = sub_1AC51F108();
  OUTLINED_FUNCTION_0_8(v14);
  if (sub_1AC51F1C8())
  {
    OUTLINED_FUNCTION_6_7();
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v59 = OUTLINED_FUNCTION_7_6(WitnessTable, v16, v17, v18, v19, v20, v21, v22, a6, a7, v7, v48, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58[0], v58[1], v58[2], v59);
    v60 = &protocol witness table for MessageExtension<A, B>;
    v29 = OUTLINED_FUNCTION_9_7(v59, v23, v24, *(v13 + 24), v25, v26, v27, v28, v41, v44, v46, v49, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v8);
    a5(v29);
    v59 = v13;
    v13 = swift_getWitnessTable();
    OUTLINED_FUNCTION_12_7();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_5_6(v30, v31, v32, v33, v34, v35, v36, v37, v42, v45, v47, v50, v51, v52, v53, v54, v55, v56, v57);
  }

  OUTLINED_FUNCTION_2_6();
  v38();
  OUTLINED_FUNCTION_8_7();
  sub_1AC4C9AEC(v58, &v55);
  sub_1AC4C978C(&v55, v48);
  sub_1AC4575D8(v58, &qword_1EB558200, &unk_1AC520780);
  return (v13)(&v51, 0);
}

uint64_t sub_1AC4CA5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_9();
  v47 = *(v10 + 16);
  v57[0] = v11;
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_13_5();
  v14 = sub_1AC51F108();
  OUTLINED_FUNCTION_0_8(v14);
  if (sub_1AC51F1C8())
  {
    OUTLINED_FUNCTION_6_7();
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v58 = OUTLINED_FUNCTION_7_6(WitnessTable, v16, v17, v18, v19, v20, v21, v22, a6, a7, v7, v47, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57[0], v57[1], v57[2], v58);
    v59 = &protocol witness table for MessageExtension<A, B>;
    v28 = OUTLINED_FUNCTION_9_7(v58, v23, v24, *(v13 + 24), *(v13 + 32), v25, v26, v27, v40, v43, v45, v48, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v8);
    a5(v28);
    v58 = v13;
    v13 = swift_getWitnessTable();
    OUTLINED_FUNCTION_12_7();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_5_6(v29, v30, v31, v32, v33, v34, v35, v36, v41, v44, v46, v49, v50, v51, v52, v53, v54, v55, v56);
  }

  OUTLINED_FUNCTION_2_6();
  v37();
  OUTLINED_FUNCTION_8_7();
  sub_1AC4C9AEC(v57, &v54);
  sub_1AC4C978C(&v54, v47);
  sub_1AC4575D8(v57, &qword_1EB558200, &unk_1AC520780);
  return (v13)(&v50, 0);
}

uint64_t objectdestroyTm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

_OWORD *sub_1AC4CA7D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1AC4CA7E4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a3 & 0x3000000000000000) != 0x2000000000000000 || a4 != 255)
  {
    sub_1AC4854E8(a1, a2, a3, a4);

    sub_1AC4513F8(a5, a6);
  }
}

uint64_t PackedExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1AC465B44(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t RepeatedGroupExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1AC465B44(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t OptionalExtensionField.value.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_1();
  v1 = OUTLINED_FUNCTION_44();

  return v2(v1);
}

uint64_t OptionalExtensionField.value.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t static OptionalExtensionField.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_44();
  swift_getAssociatedConformanceWitness();
  return sub_1AC51EDE8() & 1;
}

uint64_t OptionalExtensionField.init(protobufExtension:value:)()
{
  OUTLINED_FUNCTION_48_3();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_22_6();
  v7 = type metadata accessor for OptionalExtensionField(v4, v5, v6, v6);
  sub_1AC465B44(v1, v3 + *(v7 + 36));
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_1();
  v10 = *(v9 + 32);

  return v10(v3, v0, v8);
}

uint64_t OptionalExtensionField.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_40_2();
  swift_getAssociatedConformanceWitness();

  return sub_1AC51EDB8();
}

void OptionalExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  v33 = v0;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v32 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v31 - v13;
  OUTLINED_FUNCTION_13_5();
  v14 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, AssociatedTypeWitness);
  (*(v8 + 32))(v23, v6, v4, v34, v9, v8);
  if (v1)
  {
    (*(v16 + 8))(v23, v14);
  }

  else
  {
    v28 = v31;
    v27 = v32;
    v29 = v33;
    (*(v16 + 32))(v20, v23, v14);
    OUTLINED_FUNCTION_37_2(v20);
    if (v30)
    {
      (*(v16 + 8))(v20, v14);
    }

    else
    {
      (*(v27 + 32))(v28, v20, AssociatedTypeWitness);
      (*(v27 + 40))(v29, v28, AssociatedTypeWitness);
    }
  }

  OUTLINED_FUNCTION_61();
}

void OptionalExtensionField.init<A>(protobufExtension:decoder:)()
{
  OUTLINED_FUNCTION_60();
  v36 = v3;
  v5 = v4;
  v34 = v6;
  v35 = v7;
  v9 = v8;
  v37 = v10;
  OUTLINED_FUNCTION_13_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_88_0();
  v18 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, AssociatedTypeWitness);
  (*(v5 + 32))(v1, v34, v35, v36, v9, v5);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v20 + 8))(v1, v18);
  }

  else
  {
    (*(v20 + 32))(v24, v1, v18);
    OUTLINED_FUNCTION_61_1(v24);
    if (v29)
    {
      __swift_destroy_boxed_opaque_existential_1(v37);
      (*(v20 + 8))(v24, v18);
    }

    else
    {
      v30 = *(v33 + 32);
      v30(v2, v24, AssociatedTypeWitness);
      v30(v16, v2, AssociatedTypeWitness);
      OptionalExtensionField.init(protobufExtension:value:)();
    }

    v32 = type metadata accessor for OptionalExtensionField(0, v9, v5, v31);
    OUTLINED_FUNCTION_33_2(v32);
  }

  OUTLINED_FUNCTION_61();
}

void OptionalExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_8();
  v7 = *(v6 + 16);
  v8 = (v0 + *(v6 + 36));
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v10 = OUTLINED_FUNCTION_9_8();
  v12 = v11(v10, v9);
  (*(*(v4 + 24) + 48))(v1, v12, v5, v3, v2, v7);
  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CB168(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = OptionalExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

void RepeatedExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_35_2();
  swift_getAssociatedTypeWitness();
  if (sub_1AC51F0B8() >= 1)
  {
    v1 = v0[5];
    __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
    v2 = OUTLINED_FUNCTION_9_8();
    v3(v2, v1);
    OUTLINED_FUNCTION_44_2();
    v4 = OUTLINED_FUNCTION_26_4();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CB38C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RepeatedExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t PackedExtensionField.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PackedExtensionField.protobufExtension.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_1AC465B44(a1, v1 + 8);
}

uint64_t sub_1AC4CB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_44();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_40_2();

  return sub_1AC51F128();
}

uint64_t sub_1AC4CB598()
{
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_40_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_44();

  return sub_1AC51F118();
}

uint64_t sub_1AC4CB630(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, void, void))
{
  sub_1AC45A5F0(a1, v17);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  OUTLINED_FUNCTION_41_2(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18[0]);
  swift_dynamicCast();
  LOBYTE(a3) = a3(v3, v18, *(a2 + 16), *(a2 + 24));
  OUTLINED_FUNCTION_7_1();
  (*(v14 + 8))(v18, a2);
  return a3 & 1;
}

void PackedExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_35_2();
  swift_getAssociatedTypeWitness();
  if (sub_1AC51F0B8() >= 1)
  {
    v1 = v0[5];
    __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
    v2 = OUTLINED_FUNCTION_9_8();
    v3(v2, v1);
    OUTLINED_FUNCTION_44_2();
    v4 = OUTLINED_FUNCTION_26_4();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4CB8B0()
{
  v1 = OUTLINED_FUNCTION_60_2();
  v9 = OUTLINED_FUNCTION_55_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  v0(v9);
  return sub_1AC51F4C8();
}

uint64_t (*sub_1AC4CB8F4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PackedExtensionField.value.modify();
  return sub_1AC4CB950;
}

uint64_t sub_1AC4CB99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1AC51F468();
  v13 = OUTLINED_FUNCTION_55_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1AC51F4C8();
}

uint64_t _s21InternalSwiftProtobuf22OptionalExtensionFieldV08protobufE0AA010AnyMessageE0_pvs_0(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_1AC465B44(a1, v2 + v4);
}

uint64_t OptionalEnumExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OUTLINED_FUNCTION_22_6();
  v11 = type metadata accessor for OptionalEnumExtensionField(v8, v9, v10, v10);
  sub_1AC465B44(a1, a4 + *(v11 + 36));
  OUTLINED_FUNCTION_17_6();
  v13 = *(v12 + 32);

  return v13(a4, a2, a3);
}

uint64_t sub_1AC4CBB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_8();
  v11 = v10 - v9;
  sub_1AC45A5F0(v12, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  swift_dynamicCast();
  v13 = a3(v3, v11, *(a2 + 16), *(a2 + 24));
  (*(v7 + 8))(v11, a2);
  return v13 & 1;
}

void OptionalEnumExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  v31 = v0;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  OUTLINED_FUNCTION_5();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_13_5();
  v14 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v8);
  (*(v5 + 392))(v20, v8, *(v7 + 24), v32, v5);
  if (v1)
  {
    (*(v16 + 8))(v20, v14);
  }

  else
  {
    v25 = v30;
    v24 = v31;
    v26 = OUTLINED_FUNCTION_20_5();
    v27(v26);
    OUTLINED_FUNCTION_37_2(v2);
    if (v28)
    {
      (*(v16 + 8))(v2, v14);
    }

    else
    {
      (*(v25 + 32))(v13, v2, v8);
      (*(v25 + 40))(v24, v13, v8);
    }
  }

  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_61();
}

void OptionalEnumExtensionField.init<A>(protobufExtension:decoder:)()
{
  OUTLINED_FUNCTION_60();
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40 = v10;
  v41 = v9;
  v44 = v11;
  OUTLINED_FUNCTION_5();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v38 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  OUTLINED_FUNCTION_22_6();
  v19 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  (*(v4 + 392))(v1, v8, v6, v42, v4);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    (*(v21 + 8))(v1, v19);
  }

  else
  {
    v30 = v39;
    v43 = v6;
    (*(v21 + 32))(v25, v1, v19);
    if (__swift_getEnumTagSinglePayload(v25, 1, v8) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
      (*(v21 + 8))(v25, v19);
      v32 = 1;
      v33 = v40;
      v34 = v43;
    }

    else
    {
      v35 = *(v30 + 32);
      v35(v18, v25, v8);
      v36 = v38;
      v35(v38, v18, v8);
      v33 = v40;
      v34 = v43;
      OptionalEnumExtensionField.init(protobufExtension:value:)(v44, v36, v8, v40);
      v32 = 0;
    }

    v37 = type metadata accessor for OptionalEnumExtensionField(0, v8, v34, v31);
    __swift_storeEnumTagSinglePayload(v33, v32, 1, v37);
  }

  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_61();
}

void OptionalEnumExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_8();
  v1 = OUTLINED_FUNCTION_14_7(*(v0 + 36));
  v2(v1);
  OUTLINED_FUNCTION_44_2();
  v3 = OUTLINED_FUNCTION_11_7();
  v4(v3);
  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CC168(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = OptionalEnumExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

void RepeatedEnumExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (OUTLINED_FUNCTION_4_7(v0, v1) >= 1)
  {
    v2 = OUTLINED_FUNCTION_5_7();
    v3(v2);
    v4 = OUTLINED_FUNCTION_2_7();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CC348(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RepeatedEnumExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t PackedEnumExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_38_2();
  v0 = OUTLINED_FUNCTION_19_4();
  return v1(v0);
}

void PackedEnumExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (OUTLINED_FUNCTION_4_7(v0, v1) >= 1)
  {
    v2 = OUTLINED_FUNCTION_5_7();
    v3(v2);
    v4 = OUTLINED_FUNCTION_2_7();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CC5B0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PackedEnumExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t OptionalMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_8();
  sub_1AC45A5F0(v4, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  OUTLINED_FUNCTION_47_2(v5);
  v6 = *(a2 + 16);
  sub_1AC51EDE8();
  v7 = OUTLINED_FUNCTION_52_2();
  v8(v7);
  return v6 & 1;
}

void OptionalMessageExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_13_5();
  v4 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v17 = OUTLINED_FUNCTION_27_4(v9, v10, v11, v12, v13, v14, v15, v16, v28);
  v18(v17);
  OUTLINED_FUNCTION_58_2();
  v19 = OUTLINED_FUNCTION_34_2();
  v20(v19);
  if (v0)
  {
    (*(v6 + 8))(v1, v4);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_20_5();
    v22(v21);
    OUTLINED_FUNCTION_37_2(v2);
    if (v23)
    {
      (*(v6 + 8))(v2, v4);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_46_2();
      v25(v24);
      v26 = OUTLINED_FUNCTION_12_0();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_61();
}

void OptionalMessageExtensionField.init<A>(protobufExtension:decoder:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  v37 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_49_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_6();
  v10 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v7);
  v21 = OUTLINED_FUNCTION_32_3();
  v22(v21);
  if (v0)
  {
    OUTLINED_FUNCTION_62_0();
    v23(v2, v10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_30_3();
    v25(v24);
    OUTLINED_FUNCTION_61_1(v16);
    if (v26)
    {
      OUTLINED_FUNCTION_62_0();
      v27(v16, v10);
      v12 = v37;
      v1 = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_43_3();
      v4(v28);
      v29 = OUTLINED_FUNCTION_12_0();
      v4(v29);
      v30 = OUTLINED_FUNCTION_24_4();
      OptionalMessageExtensionField.init(protobufExtension:value:)(v30, v31, v32, v33);
    }

    v34 = OUTLINED_FUNCTION_88_0();
    v36 = type metadata accessor for OptionalMessageExtensionField(v34, v35, v1, v12);
    OUTLINED_FUNCTION_33_2(v36);
  }

  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_61();
}

void OptionalMessageExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_8();
  v1 = OUTLINED_FUNCTION_14_7(*(v0 + 44));
  v2(v1);
  OUTLINED_FUNCTION_44_2();
  v3 = OUTLINED_FUNCTION_11_7();
  v4(v3);
  OUTLINED_FUNCTION_61();
}

uint64_t OptionalMessageExtensionField.hashValue.getter(uint64_t a1)
{
  sub_1AC51F468();
  (*(*(a1 + 24) + 80))(v3, *(a1 + 16));
  return sub_1AC51F4C8();
}

uint64_t (*sub_1AC4CCC54(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = OptionalMessageExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t RepeatedMessageExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;

  v12 = sub_1AC51F038();
  v23 = v12;
  if (v12 != sub_1AC51F0B8())
  {
    v13 = *(a2 + 24);
    v14 = *(v13 + 80);
    v19 = v8;
    v20 = v14;
    while (1)
    {
      v15 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v15)
      {
        (*(v6 + 16))(v10, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v4);
      }

      else
      {
        result = sub_1AC51F2F8();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*(v6 + 16))(v10, &v22, v4);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v20(v21, v4, v13);
      (*(v6 + 8))(v10, v4);
      v16 = sub_1AC51F0B8();
      v12 = v23;
      if (v23 == v16)
      {
      }
    }
  }
}

uint64_t RepeatedMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_1AC45A5F0(a1, v15);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  OUTLINED_FUNCTION_41_2(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v16[0]);
  swift_dynamicCast();
  v11 = sub_1AC51F128();
  OUTLINED_FUNCTION_17_6();
  (*(v12 + 8))(v16, a2);
  return v11 & 1;
}

uint64_t RepeatedMessageExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_38_2();
  v0 = OUTLINED_FUNCTION_19_4();
  return v1(v0);
}

void RepeatedMessageExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (OUTLINED_FUNCTION_4_7(v0, v1) >= 1)
  {
    v2 = OUTLINED_FUNCTION_5_7();
    v3(v2);
    v4 = OUTLINED_FUNCTION_2_7();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t (*sub_1AC4CD1C4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RepeatedMessageExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t sub_1AC4CD378(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_1AC465B44(a1, v2 + v4);
}

uint64_t sub_1AC4CD424@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OUTLINED_FUNCTION_22_6();
  v10 = v9(v8);
  sub_1AC465B44(a1, a4 + *(v10 + 44));
  OUTLINED_FUNCTION_17_6();
  v12 = *(v11 + 32);

  return v12(a4, a2, a3);
}

uint64_t OptionalGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_8();
  v7 = v6 - v5;
  sub_1AC45A5F0(v8, v14);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  OUTLINED_FUNCTION_47_2(v9);
  static OptionalGroupExtensionField.== infix(_:_:)(v2, v7, *(a2 + 16), v10, *(a2 + 32));
  v11 = OUTLINED_FUNCTION_52_2();
  v12(v11);
  return v2 & 1;
}

void OptionalGroupExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_13_5();
  v4 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v17 = OUTLINED_FUNCTION_27_4(v9, v10, v11, v12, v13, v14, v15, v16, v28);
  v18(v17);
  OUTLINED_FUNCTION_58_2();
  v19 = OUTLINED_FUNCTION_34_2();
  v20(v19);
  if (v0)
  {
    (*(v6 + 8))(v1, v4);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_20_5();
    v22(v21);
    OUTLINED_FUNCTION_37_2(v2);
    if (v23)
    {
      (*(v6 + 8))(v2, v4);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_46_2();
      v25(v24);
      v26 = OUTLINED_FUNCTION_12_0();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_61();
}

void OptionalGroupExtensionField.init<A>(protobufExtension:decoder:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  v37 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_49_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_22_6();
  v10 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v7);
  v21 = OUTLINED_FUNCTION_32_3();
  v22(v21);
  if (v0)
  {
    OUTLINED_FUNCTION_62_0();
    v23(v2, v10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_30_3();
    v25(v24);
    OUTLINED_FUNCTION_61_1(v16);
    if (v26)
    {
      OUTLINED_FUNCTION_62_0();
      v27(v16, v10);
      v12 = v37;
      v1 = 0;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_43_3();
      v4(v28);
      v29 = OUTLINED_FUNCTION_12_0();
      v4(v29);
      v30 = OUTLINED_FUNCTION_24_4();
      OptionalGroupExtensionField.init(protobufExtension:value:)(v30, v31, v32, v33);
    }

    v34 = OUTLINED_FUNCTION_88_0();
    v36 = type metadata accessor for OptionalGroupExtensionField(v34, v35, v1, v12);
    OUTLINED_FUNCTION_33_2(v36);
  }

  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_61();
}

void OptionalGroupExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8_8();
  v1 = OUTLINED_FUNCTION_14_7(*(v0 + 44));
  v2(v1);
  OUTLINED_FUNCTION_44_2();
  v3 = OUTLINED_FUNCTION_11_7();
  v4(v3);
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4CD9FC()
{
  v1 = OUTLINED_FUNCTION_60_2();
  v9 = OUTLINED_FUNCTION_55_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  v0(v9);
  return sub_1AC51F4C8();
}

uint64_t (*sub_1AC4CDA40(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = OptionalGroupExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

uint64_t sub_1AC4CDB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1AC51F468();
  v13 = OUTLINED_FUNCTION_55_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1AC51F4C8();
}

uint64_t RepeatedGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_1AC45A5F0(a1, v16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
  OUTLINED_FUNCTION_41_2(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v17[0]);
  swift_dynamicCast();
  v12 = static RepeatedGroupExtensionField.== infix(_:_:)(v2);
  OUTLINED_FUNCTION_17_6();
  (*(v13 + 8))(v17, a2);
  return v12 & 1;
}

uint64_t RepeatedGroupExtensionField.decodeExtensionField<A>(decoder:)()
{
  OUTLINED_FUNCTION_38_2();
  v0 = OUTLINED_FUNCTION_19_4();
  return v1(v0);
}

void RepeatedGroupExtensionField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (OUTLINED_FUNCTION_4_7(v0, v1) >= 1)
  {
    v2 = OUTLINED_FUNCTION_5_7();
    v3(v2);
    v4 = OUTLINED_FUNCTION_2_7();
    v5(v4);
  }

  OUTLINED_FUNCTION_61();
}

BOOL sub_1AC4CDDEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  OUTLINED_FUNCTION_44();
  v0 = sub_1AC51F318();
  v1 = static Internal.areAllInitialized(_:)(v0);

  return v1;
}

uint64_t (*sub_1AC4CDE60(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = RepeatedGroupExtensionField.value.modify();
  return sub_1AC4CF1B0;
}

void sub_1AC4CDEBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1AC4CE01C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE0A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE124(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE1A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE22C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE2B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE334(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE3B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE43C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = swift_getWitnessTable();
  OUTLINED_FUNCTION_44();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC4CE508(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC4CE678(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1AC4CEAA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC4CE710(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1AC4CE8A0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v12 = a3 - v9 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v18 + 8) = 0u;
              *(v18 + 24) = 0u;
              *v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v18 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1AC4CEAA0()
{
  result = qword_1EB559220[0];
  if (!qword_1EB559220[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EB559220);
  }

  return result;
}

unint64_t sub_1AC4CEB38(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AC4CEAA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AC4CEC08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AC4CEAA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC4CEC90(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1AC4CEDCC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v19 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v19 + 8) = 0u;
              *(v19 + 24) = 0u;
              *v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v19 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      v17 = OUTLINED_FUNCTION_44();
      bzero(v17, v18);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1AC4CEFA4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AC4CEFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_1AC51F468();
}

uint64_t ExtensionFieldValueSet.traverse<A>(visitor:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v39 = a5;
  v10 = *v5;
  v11 = *v5 + 64;
  OUTLINED_FUNCTION_0_9();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v14)
  {
LABEL_7:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = *(v10[6] + ((v17 << 9) | (8 * v20)));
    if (v21 >= a2 && v21 < a3)
    {
      v36[0] = v18;
      v33 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v18 + 16) + 1, 1);
        v18 = v36[0];
      }

      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1AC4D0918(v22 > 1, v23 + 1, 1);
        v24 = v23 + 1;
        v18 = v36[0];
      }

      *(v18 + 16) = v24;
      *(v18 + 8 * v23 + 32) = v21;
      a3 = v33;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v19 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  v36[0] = v18;

  sub_1AC4D001C(v36);
  v16 = v7;
  if (v7)
  {
LABEL_26:
    MEMORY[0x1AC5B4BA0](v16);

    __break(1u);
    return result;
  }

  v25 = 0;
  v26 = v36[0];
  v27 = *(v36[0] + 16);
  while (v27 != v25)
  {
    if (v25 >= *(v26 + 16))
    {
      goto LABEL_23;
    }

    if (!v10[2])
    {
      goto LABEL_24;
    }

    v28 = sub_1AC45AA38(*(v26 + 8 * v25 + 32));
    if ((v29 & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_1AC47782C(v10[7] + 40 * v28, v36);
    v30 = v37;
    v31 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v31 + 48))(a1, a4, v39, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v36);
    ++v25;
  }
}

uint64_t ExtensionFieldValueSet.isInitialized.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  OUTLINED_FUNCTION_0_9();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_7:
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v1 + 48) + 8 * v12);
      sub_1AC47782C(*(v1 + 56) + 40 * v12, v17);
      *&v18 = v13;
      sub_1AC465B44(v17, &v18 + 8);
LABEL_8:
      v21[1] = v19;
      v21[2] = v20;
      v21[0] = v18;
      v14 = v20;
      if (!v20)
      {

        return v14 == 0;
      }

      sub_1AC465B44((v21 + 8), &v18);
      v15 = *(&v19 + 1);
      v16 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      if (((*(v16 + 56))(v15, v16) & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v18);
      if (!v5)
      {
        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v18);
    return v14 == 0;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v5 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v9 = v10;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ExtensionFieldValueSet.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1AC4C9AEC(a1, v5);
  sub_1AC4C978C(v5, a2);
  return sub_1AC4D0938(a1);
}

double ExtensionFieldValueSet.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) && (v4 = sub_1AC45AA38(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_10(v4);

    sub_1AC47782C(v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t static ExtensionFieldValueSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_9();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_4;
  }

  do
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(v2 + 48) + 8 * v13);
    sub_1AC47782C(*(v2 + 56) + 40 * v13, &v23);
    *&v25 = v14;
    sub_1AC465B44(&v23, &v25 + 8);
LABEL_9:
    v28[1] = v26;
    v28[2] = v27;
    v28[0] = v25;
    if (!v27)
    {

      return 1;
    }

    v15 = *&v28[0];
    sub_1AC465B44((v28 + 8), &v25);
    if (!*(v3 + 16))
    {
      goto LABEL_19;
    }

    v16 = sub_1AC45AA38(v15);
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_1AC47782C(*(v3 + 56) + 40 * v16, v22);
    sub_1AC465B44(v22, &v23);
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    if (DynamicType != swift_getDynamicType())
    {
      __swift_destroy_boxed_opaque_existential_1(&v23);
LABEL_19:

      __swift_destroy_boxed_opaque_existential_1(&v25);
      return 0;
    }

    v19 = *(&v26 + 1);
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v21 = (*(v20 + 32))(&v23, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  while (v6);
LABEL_4:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v6 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      goto LABEL_9;
    }

    v6 = *(v2 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double sub_1AC4CFA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1AC45AA38(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_10(v4);

    sub_1AC47782C(v6, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AC4CFA9C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1AC45AA38(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 24 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4CFB1C(unsigned __int8 **a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1AC4599C0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4CFB74(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1AC45AA38(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4CFBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1AC4EFE58(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ExtensionFieldValueSet.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  OUTLINED_FUNCTION_0_9();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 16777619;
  if (v7)
  {
    while (1)
    {
      v13 = v11;
LABEL_7:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_1AC47782C(*(v3 + 56) + 40 * v15, &v21);
      *v20 = v16;
      sub_1AC465B44(&v21, &v20[8]);
LABEL_8:
      v24[1] = *&v20[16];
      v24[2] = *&v20[32];
      v24[0] = *v20;
      if (!*&v20[32])
      {
        break;
      }

      v17 = *&v24[0];
      sub_1AC465B44((v24 + 8), &v21);
      memcpy(v20, a1, sizeof(v20));
      MEMORY[0x1AC5B48A0](v17);
      v18 = v22;
      v19 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      (*(v19 + 16))(v20, v18, v19);
      memcpy(__dst, v20, sizeof(__dst));
      v12 += sub_1AC51F4B8();
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    return MEMORY[0x1AC5B48A0](v12);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        v7 = 0;
        memset(v20, 0, 48);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC4CFE10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_1AC4C9AEC(a1, v5);
  return ExtensionFieldValueSet.subscript.setter(v5, v3);
}

void (*ExtensionFieldValueSet.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v5;
  v5[15] = a2;
  v5[16] = v2;
  if (*(*v2 + 16) && (v6 = sub_1AC45AA38(a2), (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_1_10(v6);
    sub_1AC47782C(v8, v5);
  }

  else
  {
    v5[4] = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
  }

  return sub_1AC4CFEE4;
}

void sub_1AC4CFEE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    sub_1AC4C9AEC(*a1, v2 + 40);
    sub_1AC4C9AEC(v2 + 40, v2 + 80);
    sub_1AC4C978C(v2 + 80, v3);
    sub_1AC4D0938(v2 + 40);
  }

  else
  {
    sub_1AC4C9AEC(*a1, v2 + 40);
    sub_1AC4C978C(v2 + 40, v3);
  }

  sub_1AC4D0938(v2);

  free(v2);
}

uint64_t ExtensionFieldValueSet.hashValue.getter()
{
  v2[9] = *v0;
  sub_1AC51F468();
  ExtensionFieldValueSet.hash(into:)(v2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4CFFD0(uint64_t a1)
{
  v3[9] = *v1;
  sub_1AC51F468();
  ExtensionFieldValueSet.hash(into:)(v3);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4D001C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AC4DB1BC(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AC4D0088(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC4D0088(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AC51F3A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1AC51F098();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1AC4D01D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AC4D017C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AC4D017C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1AC4D01D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC48EF10();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1AC48EF10();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1AC4D07A4((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1AC4D0678(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1AC4D0678(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1AC4DA60C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1AC4D07A4((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1AC4D07A4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1AC48F544(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1AC48F544(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1AC4D0918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4D0B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC4D0938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558200, &unk_1AC520780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AC4D09A4()
{
  result = qword_1EB5596A8;
  if (!qword_1EB5596A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5596A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftProtobufError(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SwiftProtobufError(uint64_t result, int a2, int a3)
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

uint64_t sub_1AC4D0A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4D0C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC4D0AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4D0D20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC4D0AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4D0E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC4D0AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC4D0F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC4D0B10(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558228, &qword_1AC5209E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC48F544((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D0C08(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5596B8, &qword_1AC5279E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1AC48F870((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D0D20(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5596B0, &qword_1AC5279E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1AC48F584((a4 + 32), v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D0E28(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558298, &qword_1AC520A50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC48F564((a4 + 32), v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D0F28(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558288, &qword_1AC520A48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1AC48F870((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F0, &unk_1AC5205C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t Google_Protobuf_FieldMask.paths.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_FieldMask.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

void Google_Protobuf_FieldMask.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

double Google_Protobuf_FieldMask.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AC51F990;
  return result;
}

uint64_t static Google_Protobuf_FieldMask._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB557EF0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EB5596C8;
  v3 = qword_1EB5596D0;
  v4 = unk_1EB5596D8;
  *a1 = qword_1EB5596C0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t Google_Protobuf_FieldMask.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  while (1)
  {
    result = v7(a2, a3);
    if (v4 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      (*(a3 + 352))(v3, a2, a3);
    }
  }

  return result;
}

void sub_1AC4D12B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a2 + 16))
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51AAC4();
  }

  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v7 = a3 >> 32;
      goto LABEL_8;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_8:
      if (v6 != v7)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FieldMask.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*(*v3 + 16) || ((*(a3 + 256))(), !v4))
  {
    sub_1AC4578F4(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_1AC4513F8(v8, v9);
  }
}

uint64_t static Google_Protobuf_FieldMask.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1AC47808C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1AC4578F4(v2, v3);
  sub_1AC4578F4(v4, v5);
  v6 = MEMORY[0x1AC5B4070](v2, v3, v4, v5);
  sub_1AC4513F8(v4, v5);
  sub_1AC4513F8(v2, v3);
  return v6 & 1;
}

uint64_t Google_Protobuf_FieldMask.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4D12B4(__dst, v1, v2, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4D15D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4D12B4(__dst, v2, v3, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC4D1664(uint64_t a1)
{
  result = sub_1AC4D168C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4D168C()
{
  result = qword_1EB557C00;
  if (!qword_1EB557C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C00);
  }

  return result;
}

unint64_t sub_1AC4D16E0(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4D1710();
  result = sub_1AC4D1764();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4D1710()
{
  result = qword_1EB557BF8;
  if (!qword_1EB557BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BF8);
  }

  return result;
}

unint64_t sub_1AC4D1764()
{
  result = qword_1EB5596E0;
  if (!qword_1EB5596E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5596E0);
  }

  return result;
}

unint64_t sub_1AC4D17BC()
{
  result = qword_1EB5596E8;
  if (!qword_1EB5596E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5596E8);
  }

  return result;
}

uint64_t sub_1AC4D1810(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AC4D1850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4D18A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return sub_1AC51F3D8();
  }
}

unint64_t sub_1AC4D2DA0()
{
  result = qword_1EB5596F0;
  if (!qword_1EB5596F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5596F0);
  }

  return result;
}

double sub_1AC4D2DF4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  return result;
}

unint64_t sub_1AC4D2E7C(uint64_t a1)
{
  result = sub_1AC4D2EA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4D2EA4()
{
  result = qword_1EB557AB8;
  if (!qword_1EB557AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AB8);
  }

  return result;
}

uint64_t sub_1AC4D3060(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_4();
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

_BYTE *sub_1AC4D30AC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1AC4D3184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
LABEL_2:
  while (2)
  {
    v5 = *(a2 + 88);
    while (1)
    {
      if (v5 >= 1)
      {
        sub_1AC507364();
      }

      result = *(a2 + 104);
      if (!result)
      {
        goto LABEL_22;
      }

      v7 = *(a2 + 112);
      v8 = *(a2 + 120);
      v33[0] = *(a2 + 104);
      v33[1] = v7;
      v9 = *(a2 + 128);
      v10 = *(a2 + 136);
      v33[2] = v8;
      v33[3] = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 96);
      v13 = *(a2 + 97);

      v14 = sub_1AC5073AC(v33, v10, v11, v12 | (v13 << 8));
      if (v3)
      {
      }

      v16 = v14;
      v17 = v15;

      if (v17)
      {
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      *(a2 + 88) = v5 + 1;
      if (v16 == 1)
      {
        break;
      }

      ++v5;
      if (v16 == 2)
      {
        v18 = sub_1AC474398();
        v20 = v19;
        sub_1AC509980();
        v21 = *(a2 + 40);
        if (v21 != *(a2 + 48) && *v21 == 58)
        {
          *(a2 + 40) = v21 + 1;
          sub_1AC509980();
          sub_1AC507E80(v22);
          v24 = v23;
          v26 = v25;
          sub_1AC4513F8(v18, v20);
          sub_1AC474608(v24, v26);
          goto LABEL_2;
        }

        sub_1AC477954();
        swift_allocError();
        *v31 = 0;
        swift_willThrow();
        return sub_1AC474608(v18, v20);
      }
    }

    swift_beginAccess();
    sub_1AC509980();
    v27 = *(a2 + 40);
    if (v27 != *(a2 + 48) && *v27 == 58)
    {
      *(a2 + 40) = v27 + 1;
      sub_1AC509980();
      *(a1 + 16) = sub_1AC507D8C(v28);
      *(a1 + 24) = v29;
      swift_endAccess();

      continue;
    }

    break;
  }

  sub_1AC477954();
  swift_allocError();
  *v30 = 0;
  swift_willThrow();
  return swift_endAccess();
}

uint64_t sub_1AC4D345C(uint64_t a1)
{
  result = sub_1AC50730C(a1);
  if (!v2)
  {
    v6 = v5;
    if (v5)
    {
      v7 = result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8(v8);
        v9 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v9);
      }

      sub_1AC47514C(v7, v6, a1);
    }

    else
    {
      Google_Protobuf_Any.typeURL.setter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8(v10);
        v11 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v11);
      }

      sub_1AC474608(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v1 + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = type metadata accessor for AnyMessageStorage();
        OUTLINED_FUNCTION_2_8(v14);
        v15 = OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_3_10(v15);
      }

      return sub_1AC4D3184(v13, a1);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Any.init(message:partial:typePrefix:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 & 1) != 0 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), ((*(v10 + 32))(v9, v10)))
  {
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1ED6E3410);
    }

    v11 = qword_1ED6E4C40;
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);

    v15 = sub_1AC4D5238(v14, a3, a4, v12, v13);
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = type metadata accessor for AnyMessageStorage();
      OUTLINED_FUNCTION_2_8(v18);
      v11 = OUTLINED_FUNCTION_1_12();
    }

    swift_beginAccess();
    *(v11 + 16) = v15;
    *(v11 + 24) = v17;

    sub_1AC47782C(a1, v21);
    v21[40] = 1;
    swift_beginAccess();
    sub_1AC477750(v21, v11 + 32);
    swift_endAccess();
    *a5 = xmmword_1AC51F990;
    *(a5 + 16) = v11;
  }

  else
  {

    sub_1AC476EEC();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Google_Protobuf_Any.init(textFormatString:extensions:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 100;
  v13 = 0;
  sub_1AC450324(a3, v11);
  Google_Protobuf_Any.init(textFormatString:options:extensions:)(a1, a2, &v12, v11, &v14);
  sub_1AC455360(a3);
  if (!v4)
  {
    v10 = v15;
    result = *&v14;
    *a4 = v14;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t Google_Protobuf_Any.init(textFormatString:options:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AC51EE28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *a3;
  v25 = *(a3 + 8);
  v14 = *(a3 + 9);
  if (qword_1ED6E3410 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_1ED6E3410);
  }

  v27 = xmmword_1AC51F990;
  v28 = qword_1ED6E4C40;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_11:
    v21 = v27;
    v22 = v28;
    *a5 = v27;
    *(a5 + 16) = v22;
    sub_1AC4578F4(v21, *(&v21 + 1));

    goto LABEL_12;
  }

  sub_1AC51EE18();
  v16 = sub_1AC51EDF8();
  v18 = v17;

  v19 = (*(v11 + 8))(v13, v10);
  if (v18 >> 60 == 15)
  {
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v19);
  *&v24[-32] = v26;
  v24[-24] = v25;
  v24[-23] = v14;
  *&v24[-16] = a4;
  *&v24[-8] = &v27;
  v20 = v29;
  sub_1AC46B4AC(sub_1AC4D3DC0, &v24[-48], v16, v18);
  sub_1AC45AC74(v16, v18);
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_1AC455360(a4);
  sub_1AC4513F8(v27, *(&v27 + 1));
}

unsigned __int8 *sub_1AC4D3A44(unsigned __int8 *result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v11 = sub_1AC472D54();
  sub_1AC450324(a5, v25);
  *(&__src[5] + 1) = 0;
  LOWORD(__src[6]) = 256;
  *(&__src[6] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  sub_1AC450324(v25, v23);
  type metadata accessor for DoubleParser();
  memset(__src, 0, 40);
  v12 = swift_allocObject();
  *(v12 + 16) = swift_slowAlloc();
  *(v12 + 24) = 128;
  *(&__src[3] + 1) = v12;
  v13 = &v6[v7];
  *(&__src[2] + 1) = v6;
  *&__src[3] = &v6[v7];
  sub_1AC46B9B4(v23, __src);
  *&__src[4] = a3;
  WORD4(__src[4]) = a4 & 0x101;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    *&__src[5] = a3 - 1;
    do
    {
      v14 = *v6;
      if (v14 > 0x23)
      {
        break;
      }

      if (((1 << v14) & 0x100002600) == 0)
      {
        if (v14 == 35)
        {
          ++v6;
          while (v6 != v13)
          {
            v16 = *v6++;
            v15 = v16;
            if (v16 == 10 || v15 == 13)
            {
              goto LABEL_8;
            }
          }

          *(&__src[2] + 1) = v13;
        }

        break;
      }

      ++v6;
LABEL_8:
      *(&__src[2] + 1) = v6;
    }

    while (v6 != v13);
    sub_1AC455360(v23);
    if (qword_1EB557B20 == -1)
    {
      goto LABEL_21;
    }
  }

  swift_once();
LABEL_21:
  v18 = qword_1EB557B28;
  v19 = unk_1EB557B30;
  v20 = qword_1EB557B38;
  v21 = unk_1EB557B40;

  sub_1AC455360(v25);
  sub_1AC458E14(*(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8]);
  *(&__src[6] + 1) = v18;
  *&__src[7] = v19;
  *(&__src[7] + 1) = v20;
  *&__src[8] = v21;
  *(&__src[8] + 1) = &type metadata for Google_Protobuf_Any;
  *&__src[9] = v11;
  memcpy(__dst, __src, 0x98uLL);
  sub_1AC4D345C(__dst);
  if (!v5 && __dst[5] != __dst[6])
  {
    sub_1AC477954();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  return sub_1AC477AA8(__dst);
}

uint64_t sub_1AC4D3CE8(char *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  return sub_1AC4763E8(v5);
}

void sub_1AC4D3D30(uint64_t *a1)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = type metadata accessor for AnyMessageStorage();
    OUTLINED_FUNCTION_2_8(v2);
    v3 = OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_3_10(v3);
  }

  sub_1AC476AEC(a1);
}

unsigned __int8 *sub_1AC4D3DC0(unsigned __int8 *a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1AC4D3A44(a1, a2, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32));
}

uint64_t static Google_Protobuf_Any.messageType(forTypeURL:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AC4D3E40(a1, a2);
  v4 = static Google_Protobuf_Any.messageType(forMessageName:)(v2, v3);

  return v4;
}

uint64_t sub_1AC4D3E40(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  v3 = 4 * v2;
  v4 = 15;
  v5 = 15;
  while (v3 > v5 >> 14)
  {
    OUTLINED_FUNCTION_1_13();
    v6 = sub_1AC51EFC8();
    v8 = v7;
    OUTLINED_FUNCTION_1_13();
    v5 = sub_1AC51EED8();
    if (v6 == 47 && v8 == 0xE100000000000000)
    {

      v4 = v5;
    }

    else
    {
      v10 = sub_1AC51F3D8();

      if (v10)
      {
        v4 = v5;
      }
    }
  }

  if (v3 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1AC51EFF8();
    v12 = MEMORY[0x1AC5B4290](v11);

    return v12;
  }

  return result;
}

uint64_t sub_1AC4D3F78()
{
  v0 = sub_1AC51F1F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AC51ED38();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AC51F1E8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AC4D51F4();
  sub_1AC51F1D8();
  sub_1AC51ED28();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1AC51F218();
  qword_1EB557AA0 = result;
  return result;
}

uint64_t sub_1AC4D4128(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1AC51EEE8();
  return sub_1AC51EFC8();
}

unint64_t sub_1AC4D41A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v12 = 0;
    return v12 | ((v2 == 0) << 8);
  }

  v5 = (a1 & 0x800000000000000uLL) >> 59;
  v6 = 4 << v5;
  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  result = v7 | (v2 << 16);
  v9 = v7 & 0xC;
  if ((a2 & 0x1000000000000000) == 0)
  {
    v6 = 8;
  }

  if (v9 == v6 && (OUTLINED_FUNCTION_1_13(), result = sub_1AC488FF0(v14, v15, v16), result < 0x4000))
  {
    __break(1u);
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
    v10 = (result & 0xFFFFFFFFFFFF0000) - 65532;
    LOBYTE(v5) = 1;
    goto LABEL_12;
  }

  if (v2 >= result >> 16)
  {
    OUTLINED_FUNCTION_1_13();
    v10 = sub_1AC51EF68();
LABEL_12:
    if ((v10 & 0xC) == 4 << v5)
    {
      OUTLINED_FUNCTION_1_13();
      v10 = sub_1AC488FF0(v17, v18, v19);
    }

    v11 = v10 >> 16;
    if (v10 >> 16 >= v2)
    {
      __break(1u);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_1_13();
        v12 = sub_1AC51EF88();
        return v12 | ((v2 == 0) << 8);
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v20 + v11);
        return v12 | ((v2 == 0) << 8);
      }

      if ((a1 & 0x1000000000000000) != 0)
      {
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_21:
        v12 = *(v13 + v11);
        return v12 | ((v2 == 0) << 8);
      }
    }

    v13 = sub_1AC51F308();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC4D4374()
{
  v0 = sub_1AC4D4304();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC4D43C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5596F8, &qword_1AC528088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC528000;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001AC52DE20;
  v1 = sub_1AC472D54();
  *(inited + 48) = &type metadata for Google_Protobuf_Any;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x80000001AC52EA50;
  v2 = sub_1AC4D4DB0();
  *(inited + 80) = &type metadata for Google_Protobuf_BoolValue;
  *(inited + 88) = v2;
  *(inited + 96) = 0xD00000000000001ALL;
  *(inited + 104) = 0x80000001AC52EA70;
  v3 = sub_1AC4D4E04();
  *(inited + 112) = &type metadata for Google_Protobuf_BytesValue;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001AC52EA90;
  v4 = sub_1AC4D4E58();
  *(inited + 144) = &type metadata for Google_Protobuf_DoubleValue;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001AC52E9D0;
  v5 = sub_1AC4C8BD4();
  *(inited + 176) = &type metadata for Google_Protobuf_Duration;
  *(inited + 184) = v5;
  *(inited + 192) = 0xD000000000000015;
  *(inited + 200) = 0x80000001AC52E9F0;
  v6 = sub_1AC4C923C();
  *(inited + 208) = &type metadata for Google_Protobuf_Empty;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = 0x80000001AC52EA10;
  v7 = sub_1AC4D1710();
  *(inited + 240) = &type metadata for Google_Protobuf_FieldMask;
  *(inited + 248) = v7;
  *(inited + 256) = 0xD00000000000001ALL;
  *(inited + 264) = 0x80000001AC52EAB0;
  v8 = sub_1AC4D4EAC();
  *(inited + 272) = &type metadata for Google_Protobuf_FloatValue;
  *(inited + 280) = v8;
  *(inited + 288) = 0xD00000000000001ALL;
  *(inited + 296) = 0x80000001AC52EAD0;
  v9 = sub_1AC4D4F00();
  *(inited + 304) = &type metadata for Google_Protobuf_Int32Value;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x80000001AC52EAF0;
  v10 = sub_1AC4D4F54();
  *(inited + 336) = &type metadata for Google_Protobuf_Int64Value;
  *(inited + 344) = v10;
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x80000001AC52EB10;
  v11 = sub_1AC4D4FA8();
  *(inited + 368) = &type metadata for Google_Protobuf_ListValue;
  *(inited + 376) = v11;
  *(inited + 384) = 0xD00000000000001BLL;
  *(inited + 392) = 0x80000001AC52EB30;
  v12 = sub_1AC4D4FFC();
  *(inited + 400) = &type metadata for Google_Protobuf_StringValue;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000016;
  *(inited + 424) = 0x80000001AC52EB50;
  v13 = sub_1AC4D5050();
  *(inited + 432) = &type metadata for Google_Protobuf_Struct;
  *(inited + 440) = v13;
  *(inited + 448) = 0xD000000000000019;
  *(inited + 456) = 0x80000001AC52EB70;
  v14 = sub_1AC4D50A4();
  *(inited + 464) = &type metadata for Google_Protobuf_Timestamp;
  *(inited + 472) = v14;
  *(inited + 480) = 0xD00000000000001BLL;
  *(inited + 488) = 0x80000001AC52EB90;
  v15 = sub_1AC4D50F8();
  *(inited + 496) = &type metadata for Google_Protobuf_UInt32Value;
  *(inited + 504) = v15;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = 0x80000001AC52EBB0;
  v16 = sub_1AC4D514C();
  *(inited + 528) = &type metadata for Google_Protobuf_UInt64Value;
  *(inited + 536) = v16;
  *(inited + 544) = 0xD000000000000015;
  *(inited + 552) = 0x80000001AC52EBD0;
  v17 = sub_1AC4D51A0();
  *(inited + 560) = &type metadata for Google_Protobuf_Value;
  *(inited + 568) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559700, &qword_1AC528090);
  v18 = sub_1AC51ED58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559708, &qword_1AC528098);
  result = swift_allocObject();
  *(result + 16) = v18;
  off_1EB557AB0 = result;
  return result;
}

uint64_t static Google_Protobuf_Any.register(messageType:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC51ED18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (*(a2 + 24))(a1, a2);
  v18 = 0;
  v13 = v8;
  v14 = v9;
  v15 = &v18;
  v16 = a1;
  v17 = a2;
  if (qword_1EB557A98 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1EB557A98);
  }

  v10 = sub_1AC51ED08();
  MEMORY[0x1EEE9AC00](v10);
  *&v12[-16] = sub_1AC4D4B88;
  *&v12[-8] = v12;
  sub_1AC51F208();

  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_1AC4D48CC(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB557AA8 != -1)
  {
    swift_once();
  }

  v10 = off_1EB557AB0;
  swift_beginAccess();
  v11 = sub_1AC4CFBC4(a1, a2, v10[2]);
  if (v11)
  {
    v12 = v11;
    result = swift_endAccess();
    v14 = v12 == a4;
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v10[2];
    sub_1AC4F02D0(a4, a5, a1, a2, isUniquelyReferenced_nonNull_native);
    v10[2] = v16;
    result = swift_endAccess();
    v14 = 1;
  }

  *a3 = v14;
  return result;
}

uint64_t static Google_Protobuf_Any.messageType(forMessageName:)(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v7[2] = v9;
  v7[3] = a1;
  v7[4] = a2;
  if (qword_1EB557A98 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1EB557A98);
  }

  v2 = qword_1EB557AA0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1AC4D4C8C;
  *(v3 + 24) = v7;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AC4D4C98;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1AC4D4C98;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AC4D4CC0;
  aBlock[3] = &block_descriptor;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v9[0];
  }

  __break(1u);
  return result;
}

__n128 sub_1AC4D4B98(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB557AA8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB557AB0;
  swift_beginAccess();
  v7 = v6[2];
  v11 = 0u;
  if (*(v7 + 16))
  {
    v8 = sub_1AC4EFE58(a2, a3);
    if (v9)
    {
      v11 = *(*(v7 + 56) + 16 * v8);
    }
  }

  swift_endAccess();
  result = v11;
  *a1 = v11;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AC4D4D04(uint64_t a1)
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

unint64_t sub_1AC4D4DB0()
{
  result = qword_1EB557C08;
  if (!qword_1EB557C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C08);
  }

  return result;
}

unint64_t sub_1AC4D4E04()
{
  result = qword_1EB557BD8;
  if (!qword_1EB557BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BD8);
  }

  return result;
}

unint64_t sub_1AC4D4E58()
{
  result = qword_1EB557B68;
  if (!qword_1EB557B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B68);
  }

  return result;
}

unint64_t sub_1AC4D4EAC()
{
  result = qword_1EB557BA8;
  if (!qword_1EB557BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BA8);
  }

  return result;
}

unint64_t sub_1AC4D4F00()
{
  result = qword_1EB557B78;
  if (!qword_1EB557B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B78);
  }

  return result;
}

unint64_t sub_1AC4D4F54()
{
  result = qword_1EB557B70;
  if (!qword_1EB557B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B70);
  }

  return result;
}

unint64_t sub_1AC4D4FA8()
{
  result = qword_1EB557BE8;
  if (!qword_1EB557BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BE8);
  }

  return result;
}

unint64_t sub_1AC4D4FFC()
{
  result = qword_1EB557B60;
  if (!qword_1EB557B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B60);
  }

  return result;
}

unint64_t sub_1AC4D5050()
{
  result = qword_1EB557AC8;
  if (!qword_1EB557AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AC8);
  }

  return result;
}

unint64_t sub_1AC4D50A4()
{
  result = qword_1ED6E3400;
  if (!qword_1ED6E3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3400);
  }

  return result;
}

unint64_t sub_1AC4D50F8()
{
  result = qword_1EB557B58;
  if (!qword_1EB557B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B58);
  }

  return result;
}

unint64_t sub_1AC4D514C()
{
  result = qword_1EB557B48;
  if (!qword_1EB557B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B48);
  }

  return result;
}

unint64_t sub_1AC4D51A0()
{
  result = qword_1EB557AD8;
  if (!qword_1EB557AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557AD8);
  }

  return result;
}

unint64_t sub_1AC4D51F4()
{
  result = qword_1EB5579F0[0];
  if (!qword_1EB5579F0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB5579F0);
  }

  return result;
}

uint64_t sub_1AC4D5238(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = sub_1AC4D4128(a2, a3);
  if (!v12)
  {
    goto LABEL_11;
  }

  if (v11 == 47 && v12 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v14 = sub_1AC51F3D8();

  if ((v14 & 1) == 0)
  {
LABEL_11:
    MEMORY[0x1AC5B4340](47, 0xE100000000000000);
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(v19, v20);
  swift_getDynamicType();
  v15 = (*(v21 + 24))();
  v17 = v16;

  MEMORY[0x1AC5B4340](v15, v17);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return a2;
}

void sub_1AC4D53C0(uint64_t a1, uint64_t a2)
{

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v72 = 1;
  do
  {
    v6 = sub_1AC51EF38();
    if (!v7)
    {
      goto LABEL_135;
    }

    v8 = v6;
    v9 = v7;
    v10 = v6 == 45 && v7 == 0xE100000000000000;
    if (v10 || (sub_1AC51F3D8() & 1) != 0)
    {
      if (v2)
      {
        goto LABEL_134;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC48F0C0();
        v5 = v44;
      }

      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        sub_1AC48F0C0();
        v5 = v45;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v3 = 1;
    }

    else
    {
      v13 = v8 == 48 && v9 == 0xE100000000000000;
      if (v13 || ((v14 = sub_1AC51F3D8(), v8 == 49) ? (v15 = v9 == 0xE100000000000000) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), (v14 & 1) != 0 || (v16 & 1) != 0 || ((v17 = sub_1AC51F3D8(), v8 == 50) ? (v18 = v9 == 0xE100000000000000) : (v18 = 0), !v18 ? (v19 = 0) : (v19 = 1), (v17 & 1) != 0 || (v19 & 1) != 0 || ((v20 = sub_1AC51F3D8(), v8 == 51) ? (v21 = v9 == 0xE100000000000000) : (v21 = 0), !v21 ? (v22 = 0) : (v22 = 1), (v20 & 1) != 0 || (v22 & 1) != 0 || ((v23 = sub_1AC51F3D8(), v8 == 52) ? (v24 = v9 == 0xE100000000000000) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), (v23 & 1) != 0 || (v25 & 1) != 0 || ((v26 = sub_1AC51F3D8(), v8 == 53) ? (v27 = v9 == 0xE100000000000000) : (v27 = 0), !v27 ? (v28 = 0) : (v28 = 1), (v26 & 1) != 0 || (v28 & 1) != 0 || ((v29 = sub_1AC51F3D8(), v8 == 54) ? (v30 = v9 == 0xE100000000000000) : (v30 = 0), !v30 ? (v31 = 0) : (v31 = 1), (v29 & 1) != 0 || (v31 & 1) != 0 || ((v32 = sub_1AC51F3D8(), v8 == 55) ? (v33 = v9 == 0xE100000000000000) : (v33 = 0), !v33 ? (v34 = 0) : (v34 = 1), (v32 & 1) != 0 || (v34 & 1) != 0 || ((v35 = sub_1AC51F3D8(), v8 == 56) ? (v36 = v9 == 0xE100000000000000) : (v36 = 0), !v36 ? (v37 = 0) : (v37 = 1), (v35 & 1) != 0 || (v37 & 1) != 0 || ((v38 = sub_1AC51F3D8(), v8 == 57) ? (v39 = v9 == 0xE100000000000000) : (v39 = 0), !v39 ? (v40 = 0) : (v40 = 1), (v38 & 1) != 0 || (v40 & 1) != 0 || (sub_1AC51F3D8() & 1) != 0))))))))))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC48F0C0();
          v5 = v46;
        }

        v41 = *(v5 + 16);
        if (v41 >= *(v5 + 24) >> 1)
        {
          sub_1AC48F0C0();
          v5 = v47;
        }

        *(v5 + 16) = v41 + 1;
        v42 = v5 + 16 * v41;
        *(v42 + 32) = v8;
        *(v42 + 40) = v9;
        v43 = __OFADD__(v4++, 1);
        if (v43)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v48 = v8 == 46 && v9 == 0xE100000000000000;
        if (!v48 && (sub_1AC51F3D8() & 1) == 0)
        {
          goto LABEL_109;
        }

        if ((v72 & 1) == 0)
        {
          goto LABEL_135;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
        sub_1AC4D659C();
        v49 = sub_1AC51EFD8();
        v51 = sub_1AC4D5A9C(v49, v50);
        v8 = v52;

        if ((v8 & 1) != 0 || v51 - 0x4979CB9E01 < 0xFFFFFF6D0C68C3FFLL)
        {
          goto LABEL_136;
        }

        v4 = 0;
        v72 = 0;
        v5 = MEMORY[0x1E69E7CC0];
      }
    }

    v43 = __OFADD__(v2++, 1);
  }

  while (!v43);
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v53 = v8 == 115 && v9 == 0xE100000000000000;
  if (!v53 && (sub_1AC51F3D8() & 1) == 0)
  {
    goto LABEL_134;
  }

  if (v72)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
    sub_1AC4D659C();
    v54 = sub_1AC51EFD8();
    v71 = sub_1AC4D5A9C(v54, v55);
    if ((v56 & 1) != 0 || v71 < -315576000000 || v71 > 315576000000)
    {
      goto LABEL_134;
    }

    goto LABEL_144;
  }

  if (v4 > 8)
  {
    if (v4 != 9)
    {
      v67 = v4 + 1;
      while (*(v5 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC488568(v5);
          v5 = v69;
        }

        v68 = *(v5 + 16);
        if (!v68)
        {
          goto LABEL_148;
        }

        *(v5 + 16) = v68 - 1;

        if (--v67 <= 10)
        {
          goto LABEL_129;
        }
      }

      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }
  }

  else
  {
    v57 = v4 - 9;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC48F0C0();
        v5 = v61;
      }

      v58 = *(v5 + 16);
      if (v58 >= *(v5 + 24) >> 1)
      {
        sub_1AC48F0C0();
        v5 = v62;
      }

      *(v5 + 16) = v58 + 1;
      v59 = v5 + 16 * v58;
      *(v59 + 32) = 48;
      *(v59 + 40) = 0xE100000000000000;
    }

    while (!__CFADD__(v57++, 1));
  }

LABEL_129:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559710, &qword_1AC528118);
  sub_1AC4D659C();
  v63 = sub_1AC51EFD8();
  v65 = sub_1AC4D5D94(v63, v64);
  if ((v65 & 0x100000000) != 0)
  {
LABEL_134:

LABEL_135:

LABEL_136:
    sub_1AC477660();
    swift_allocError();
    *v66 = xmmword_1AC5280A0;
    swift_willThrow();

    return;
  }

  if ((v3 & 1) != 0 && __OFSUB__(0, v65))
  {
    __break(1u);
    goto LABEL_134;
  }

LABEL_144:
  sub_1AC51EF38();
  if (v70)
  {

    goto LABEL_135;
  }
}

unint64_t sub_1AC4D5A9C(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AC51F308();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1AC4D6B78(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_1AC4D5D94(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v26 = 0;
    LOBYTE(v25) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v25;
    return v26 | ((v25 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1AC4D6600(result, a2, 10);

    v25 = (v7 >> 32) & 1;
LABEL_63:
    v26 = v7;
    if (v25)
    {
      v26 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if (v16 != v16)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if (v21 != v21)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v25) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v27;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v27 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v27 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1AC4D6074(uint64_t result, int a2)
{
  if ((a2 + 999999999) > 0x773593FE)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && (v3 = result - 1, result >= 1))
  {
    v4 = (a2 + 1000000000);
  }

  else
  {
    v5 = a2 - 1000000000;
    if (result < 0)
    {
      v6 = result + 1;
    }

    else
    {
      v5 = a2;
      v6 = result;
    }

    if (a2 >= 1)
    {
      v4 = v5;
    }

    else
    {
      v4 = a2;
    }

    if (a2 >= 1)
    {
      v3 = v6;
    }

    else
    {
      v3 = result;
    }
  }

  if ((v3 - 0x4979CB9E01) < 0xFFFFFF6D0C68C3FFLL)
  {
    return 0;
  }

  v7 = sub_1AC467704(v4);
  v9 = v8;
  if ((v4 & 0x80000000) == 0 || v3)
  {
    v10 = sub_1AC51F3B8();
  }

  else
  {
    v10 = 12333;
  }

  MEMORY[0x1AC5B4340](v7, v9);

  MEMORY[0x1AC5B4340](115, 0xE100000000000000);
  return v10;
}

uint64_t sub_1AC4D61B0(uint64_t result, int a2)
{
  if ((a2 + 999999999) >= 0x773593FF)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if ((a2 & 0x80000000) == 0 || (v3 = result - 1, result < 1))
  {
    if (result < 0)
    {
      v4 = result + 1;
    }

    else
    {
      v4 = result;
    }

    if (a2 >= 1)
    {
      return v4;
    }

    else
    {
      return result;
    }
  }

  return v3;
}

double Google_Protobuf_Duration.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_1AC51F990;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1AC4D623C()
{
  result = sub_1AC45993C();
  if (!v1)
  {
    sub_1AC4D53C0(result, v3);
    v5 = v4;
    v7 = v6;

    *v0 = v5;
    *(v0 + 8) = v7;
  }

  return result;
}

uint64_t sub_1AC4D62B8()
{
  v1 = sub_1AC4D6074(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1AC5B4340](v1);

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

void _s21InternalSwiftProtobuf07Google_C9_DurationV12floatLiteralACSd_tcfC_0(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = trunc(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_1AC4D61B0(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t - prefix(_:)()
{
  OUTLINED_FUNCTION_1_14();
  result = -v1;
  if (__OFSUB__(0, v1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 8);
    if (!__OFSUB__(0, v3))
    {
      v4 = sub_1AC4D61B0(result, -v3);
      return OUTLINED_FUNCTION_0_13(v4, v5, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t + infix(_:_:)()
{
  OUTLINED_FUNCTION_1_14();
  result = v2 + *v0;
  if (__OFADD__(v2, *v0))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = *(v1 + 8);
    if (!__OFADD__(v5, v4))
    {
      v6 = sub_1AC4D61B0(result, v5 + v4);
      return OUTLINED_FUNCTION_0_13(v6, v7, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC4D653C()
{
  OUTLINED_FUNCTION_1_14();
  result = v2 - *v0;
  if (__OFSUB__(v2, *v0))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = *(v1 + 8);
    if (!__OFSUB__(v5, v4))
    {
      v6 = sub_1AC4D61B0(result, v5 - v4);
      return OUTLINED_FUNCTION_0_13(v6, v7, xmmword_1AC51F990);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC4D659C()
{
  result = qword_1EB559718;
  if (!qword_1EB559718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB559710, &qword_1AC528118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559718);
  }

  return result;
}

unsigned __int8 *sub_1AC4D6600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1AC51EFE8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC4D7100(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1AC4D6B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1AC51EFE8();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC4D7100(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AC51F308();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}