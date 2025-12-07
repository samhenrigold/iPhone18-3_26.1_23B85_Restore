void sub_183FBE9DC(uint64_t a1, char a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A0, &qword_18439B540);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithReal(v7);
    if (v5)
    {
      v6 = v5;
      CGPDFArraySetObjectAtIndex(*v3, a3, v5);
      CGPDFObjectRelease(v6);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_18438FCF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[4] = a1;
  v14[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854998, &qword_18439B538);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v14[0] = v14[2];
  v14[1] = v14[3];
  sub_18438FCE8();
  sub_183F8FF4C();
  v12 = sub_18438FF68();
  (*(v9 + 8))(v11, v8);
  if (!v12)
  {
    __break(1u);
LABEL_7:
    sub_184390118();
    __break(1u);
    return;
  }

  v13 = CGPDFObjectCreateWithName((v12 + 32));

  if (v13)
  {
    CGPDFArraySetObjectAtIndex(*v4, a3, v13);
    CGPDFObjectRelease(v13);
  }
}

void sub_183FBECA0(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5(0);
  if (swift_dynamicCast())
  {
    v10 = a6();
    if (v10)
    {
      v11 = v10;
      CGPDFArraySetObjectAtIndex(*v6, a2, v10);
      CGPDFObjectRelease(v11);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_183FBEEE0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854940, &qword_18439B310);
    sub_183FBEF9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_183FBEF9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPDFArrayRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_183FBF080(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FBF100(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_183FBF268(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

double sub_183FBF510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  return result;
}

double sub_183FBF534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = v3;
  *(a2 + 20) = 0;
  return result;
}

double sub_183FBF558@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 12) = 0;
  *(a3 + 16) = v5;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_183FBF57C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result + 8);
  v4 = (result + 16);
  v5 = *(result + 20);
  v6 = *(v2 + 20);
  if (*(result + 12))
  {
    v3 = (v2 + 8);
  }

  v7 = *v3;
  v8 = *(result + 12) & *(v2 + 12);
  if (*(result + 20))
  {
    v4 = (v2 + 16);
  }

  v9 = *v4;
  *a2 = *result;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v9;
  *(a2 + 20) = v5 & v6;
  return result;
}

BOOL sub_183FBF628(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_183FBF658@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_183FBF684@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_183FBF760@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_183F80DD0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_183FBF7A0()
{
  result = sub_183FBF95C(&unk_1EF2324A8);
  byte_1EA868CE8 = result;
  return result;
}

uint64_t sub_183FBF7C8()
{
  result = sub_183FBF95C(&unk_1EF2324D0);
  byte_1EA868CEA = result;
  return result;
}

uint64_t sub_183FBF7F0()
{
  result = sub_183FBF95C(&unk_1EF2324F8);
  byte_1EA868CEB[0] = result;
  return result;
}

uint64_t sub_183FBF818()
{
  result = sub_183FBF95C(&unk_1EF232480);
  byte_1EA868CE9 = result;
  return result;
}

double sub_183FBF840@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 1;
  return result;
}

double sub_183FBF854@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 2;
  return result;
}

double sub_183FBF868@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 3;
  return result;
}

double sub_183FBF87C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v4 = *(v2 + 8) ^ *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_183FBF898(char a1, unsigned __int8 a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 1;
  v4 = (a3 ^ a1);
  v5 = ((1 << (a3 ^ a1)) & a2) != 0;
  v6 = v5 ^ ((a3 & 0x100) >> 8);
  v7 = v5 << 8;
  if (v4 > 7)
  {
    v7 = 0;
  }

  else
  {
    v3 = v6;
  }

  v8 = v7 | v4;
  if (v3)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  return v8 | v9;
}

uint64_t sub_183FBF8E8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (v3[9])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v3[8];
  if (v3[10])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  result = sub_183FBF898(*(a1 + 8), *a2, v6 | v7);
  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 9) = BYTE1(result) & 1;
  *(a3 + 10) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_183FBF95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = a1 + 32;
  v6 = v1 - 1;
  while (v3 < v1)
  {
    while (1)
    {
      v7 = *(v5 + v3);
      if (v7 < 8)
      {
        break;
      }

      if (v6 == v3)
      {
        return result;
      }

      if (v1 == ++v3)
      {
        goto LABEL_12;
      }
    }

    result = (1 << v7) | result;
    if (v6 == v3++)
    {
      return result;
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_183FBF9D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FBFA58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_183FBFBB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Spandex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Spandex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Scanline(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Scanline(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OpcodedSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OpcodedSegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SourcedSegment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_183FBFFD4()
{
  result = qword_1EA8549B8;
  if (!qword_1EA8549B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549B8);
  }

  return result;
}

unint64_t sub_183FC002C()
{
  result = qword_1EA8549C0;
  if (!qword_1EA8549C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549C0);
  }

  return result;
}

unint64_t sub_183FC0084()
{
  result = qword_1EA8549C8;
  if (!qword_1EA8549C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549C8);
  }

  return result;
}

unint64_t sub_183FC00DC()
{
  result = qword_1EA8549D0;
  if (!qword_1EA8549D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549D0);
  }

  return result;
}

unint64_t sub_183FC0134()
{
  result = qword_1EA8549D8[0];
  if (!qword_1EA8549D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA8549D8);
  }

  return result;
}

uint64_t sub_183FC018C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FC0210(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_183FC03A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_183FC05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a5;
  v60 = a1;
  v58 = a7;
  v80 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18438FF18();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  v61 = a3;
  v59 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v54 - v18;
  v20 = *(a6 + 8);
  v21 = v15;
  v22 = a2;
  v78 = v20;
  v23 = *(*(v20 + 24) + 16);
  v24 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  v28 = AssociatedTypeWitness;
  v29 = v19;
  v30 = swift_checkMetadataState();
  v64 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v74 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v55 = &v54 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v73 = &v54 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v54 - v37;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v25;
  v72 = AssociatedConformanceWitness;
  sub_184390288();
  v79 = v38;
  v75 = v27;
  v77 = v23;
  sub_184390228();
  v40 = v56;
  (*(v59 + 16))(v70, v60, v61);
  sub_18438FD38();
  v41 = v55;
  v42 = swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  v43 = v80;
  v70 = *(v80 + 48);
  v71 = v80 + 48;
  if ((v70)(v21, 1, v22) != 1)
  {
    v44 = *(v43 + 32);
    ++v64;
    v65 = v44;
    v80 = v43 + 32;
    v62 = (v43 + 8);
    v63 = v22;
    v68 = v24;
    v69 = v29;
    v66 = v42;
    v67 = v28;
    do
    {
      v65(v40, v21, v22);
      sub_184390288();
      sub_184390228();
      v45 = v41;
      v46 = v74;
      sub_18438FDA8();
      v47 = v73;
      sub_18438FFB8();
      v48 = v21;
      v49 = v40;
      v50 = *v64;
      v51 = v46;
      v41 = v45;
      (*v64)(v51, v30);
      v50(v45, v30);
      sub_18438FFC8();
      v50(v47, v30);
      v40 = v49;
      v21 = v48;
      v22 = v63;
      v28 = v67;
      v29 = v69;
      (*v62)(v40, v63);
      sub_18438FF58();
    }

    while ((v70)(v21, 1, v22) != 1);
  }

  (*(v59 + 8))(v60, v61);
  (*(v57 + 8))(v29, v28);
  v52 = swift_getAssociatedTypeWitness();
  return (*(*(v52 - 8) + 32))(v58, v79, v52);
}

BOOL sub_183FC0CE8(uint64_t a1, void *a2)
{
  v30 = a1;
  v29 = *(a2[4] + 8);
  v2 = *(*(v29 + 24) + 16);
  v3 = a2[2];
  v4 = *(a2[3] + 8);
  v28[4] = v3;
  v28[5] = v4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v28 - v6;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v28 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v28 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v28 - v19;
  v28[1] = swift_getAssociatedConformanceWitness();
  sub_184390288();
  v28[2] = v7;
  v28[3] = v2;
  sub_184390228();
  sub_18438FDA8();
  sub_18438FFB8();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v15, v8);
  sub_18438FF88();
  v21(v18, v8);
  if (sub_18438FFF8())
  {
    if (sub_18438FFE8() >= 64)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = sub_18438FFF8();
  v23 = sub_18438FFE8();
  if ((v22 & 1) == 0)
  {
    if (v23 < 64)
    {
      goto LABEL_9;
    }

LABEL_10:
    v31 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v25 = sub_18438FCC8();
    v21(v18, v8);
    v21(v20, v8);
    return (v25 & 1) == 0;
  }

  if (v23 > 64)
  {
    goto LABEL_10;
  }

  sub_184390288();
  sub_184390228();
  v24 = sub_18438FC78();
  v21(v18, v8);
  if (v24)
  {
LABEL_9:
    v26 = sub_18438FFD8();
    v21(v20, v8);
    v25 = v26 == 0;
    return (v25 & 1) == 0;
  }

  v21(v20, v8);
  v25 = 0;
  return (v25 & 1) == 0;
}

uint64_t sub_183FC1138@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 32);

  return v6(a3, a1, AssociatedTypeWitness);
}

uint64_t sub_183FC11C0(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a1;
  v3 = *(*(*(a3[4] + 8) + 24) + 16);
  v4 = a3[3];
  v43 = a3[2];
  v44 = a2;
  v41 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v36 - v6;
  v8 = swift_checkMetadataState();
  v45 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_184390288();
  v39 = v7;
  v40 = v3;
  sub_184390228();
  v20 = v45;
  sub_18438FDA8();
  sub_18438FFB8();
  v21 = *(v20 + 8);
  v22 = v14;
  v23 = v11;
  v21(v22, v8);
  v41 = v21;
  v45 = v20 + 8;
  v21(v17, v8);
  sub_18438FF88();
  if (sub_18438FFF8())
  {
    if (sub_18438FFE8() < 64)
    {
      v24 = sub_18438FFD8();
      v25 = v23;
      v26 = v8;
      v27 = v41;
LABEL_4:
      v27(v25, v26);
      if (!v24)
      {
        goto LABEL_16;
      }

LABEL_18:
      v34 = 0;
      goto LABEL_19;
    }

    v46 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v31 = sub_18438FCC8();
    v27 = v41;
    v41(v17, v8);
    v27(v23, v8);
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v37 = v19;
    v28 = sub_18438FFF8();
    v29 = sub_18438FFE8();
    if (v28)
    {
      if (v29 <= 64)
      {
        sub_184390288();
        sub_184390228();
        v30 = sub_18438FC78();
        v27 = v41;
        v41(v17, v8);
        v19 = v37;
        if ((v30 & 1) == 0)
        {
          v27(v23, v8);
          goto LABEL_18;
        }

        v24 = sub_18438FFD8();
        v25 = v23;
        v26 = v8;
        goto LABEL_4;
      }
    }

    else if (v29 < 64)
    {
      v32 = sub_18438FFD8();
      v27 = v41;
      v41(v23, v8);
      v19 = v37;
      if (!v32)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v46 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v33 = sub_18438FCC8();
    v27 = v41;
    v41(v17, v8);
    v27(v23, v8);
    v19 = v37;
    if ((v33 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  sub_18438FFC8();
  v34 = 1;
LABEL_19:
  v27(v19, v8);
  (*(*(v43 - 8) + 16))(v42, v44);
  return v34;
}

uint64_t sub_183FC175C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v39 = a3;
  v36 = *(a2[4] + 8);
  v3 = *(*(v36 + 24) + 16);
  v4 = a2[2];
  v37 = *(a2[3] + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v35 - v6;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v35 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v35 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35[3] = AssociatedTypeWitness;
  v35[1] = AssociatedConformanceWitness;
  sub_184390288();
  v35[2] = v7;
  v35[4] = v3;
  sub_184390228();
  v38 = v4;
  sub_18438FDA8();
  sub_18438FFB8();
  v22 = *(v9 + 8);
  v22(v15, v8);
  v37 = v18;
  v22(v18, v8);
  sub_18438FF88();
  if ((sub_18438FFF8() & 1) == 0)
  {
    v23 = sub_18438FFF8();
    v24 = sub_18438FFE8();
    if (v23)
    {
      if (v24 > 64)
      {
        goto LABEL_12;
      }

      sub_184390288();
      v25 = v37;
      sub_184390228();
      v26 = sub_18438FC78();
      v22(v25, v8);
      v27 = v38;
      if (v26)
      {
        v28 = sub_18438FFD8();
        v22(v12, v8);
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v22(v12, v8);
      }

LABEL_15:
      sub_18438FF98();
      sub_18438FFA8();
      v22(v25, v8);
      v22(v20, v8);
      v31 = *(v27 - 8);
      v33 = v39;
      (*(v31 + 16))(v39, v40, v27);
      v32 = 0;
      return (*(v31 + 56))(v33, v32, 1, v27);
    }

    if (v24 >= 64)
    {
      goto LABEL_12;
    }

LABEL_10:
    v29 = sub_18438FFD8();
    v22(v12, v8);
    v25 = v37;
    v27 = v38;
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (sub_18438FFE8() < 64)
  {
    goto LABEL_10;
  }

LABEL_12:
  v41 = 0;
  sub_183FC2958();
  v25 = v37;
  sub_18438FF78();
  v30 = sub_18438FCC8();
  v22(v25, v8);
  v22(v12, v8);
  v27 = v38;
  if ((v30 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22(v20, v8);
  v31 = *(v27 - 8);
  v32 = 1;
  v33 = v39;
  return (*(v31 + 56))(v33, v32, 1, v27);
}

uint64_t sub_183FC1CEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v40 = a3;
  v38 = *(a2[4] + 8);
  v3 = *(*(v38 + 24) + 16);
  v4 = a2[2];
  v37[5] = *(a2[3] + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v37 - v6;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v37 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v37 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v37 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[3] = AssociatedTypeWitness;
  v37[1] = AssociatedConformanceWitness;
  sub_184390288();
  v37[2] = v7;
  v37[4] = v3;
  sub_184390228();
  v39 = v4;
  sub_18438FDA8();
  sub_18438FFB8();
  v22 = *(v9 + 8);
  v22(v15, v8);
  v23 = v18;
  v24 = v18;
  v25 = v22;
  v22(v24, v8);
  sub_18438FF88();
  if ((sub_18438FFF8() & 1) == 0)
  {
    v26 = sub_18438FFF8();
    v27 = sub_18438FFE8();
    if (v26)
    {
      if (v27 > 64)
      {
        goto LABEL_12;
      }

      sub_184390288();
      sub_184390228();
      v28 = sub_18438FC78();
      v25(v23, v8);
      v29 = v39;
      if (v28)
      {
        v30 = sub_18438FFD8();
        v25(v12, v8);
        if (!v30)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v25(v12, v8);
      }

LABEL_15:
      v25(v20, v8);
      v33 = *(v29 - 8);
      v35 = v40;
      (*(v33 + 16))(v40, v41, v29);
      v34 = 0;
      return (*(v33 + 56))(v35, v34, 1, v29);
    }

    if (v27 >= 64)
    {
      goto LABEL_12;
    }

LABEL_10:
    v31 = sub_18438FFD8();
    v25(v12, v8);
    v29 = v39;
    if (!v31)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (sub_18438FFE8() < 64)
  {
    goto LABEL_10;
  }

LABEL_12:
  v42 = 0;
  sub_183FC2958();
  sub_18438FF78();
  v32 = sub_18438FCC8();
  v25(v23, v8);
  v25(v12, v8);
  v29 = v39;
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_18438FFC8();
  v25(v20, v8);
  v33 = *(v29 - 8);
  v34 = 1;
  v35 = v40;
  return (*(v33 + 56))(v35, v34, 1, v29);
}

uint64_t sub_183FC2278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t sub_183FC22FC(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_1843903E8();
  v4 = *(*(a2 - 8) + 8);

  return v4(v2, a2);
}

uint64_t sub_183FC23AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable);
  v10 = *(*(a2 - 8) + 8);
  v10(v4, a2);

  return v10(a1, a2);
}

uint64_t sub_183FC247C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_183FC11C0(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  return v5 & 1;
}

uint64_t sub_183FC24E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_183FC1CEC(a1, a2, a3);
  v5 = *(*(a2[2] - 8) + 8);

  return v5(a1);
}

uint64_t sub_183FC256C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = *(a2 + 32);

  return MEMORY[0x1EEE6BBC0](a1, a2, WitnessTable, v5);
}

uint64_t sub_183FC25E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable, *(a2 + 32));
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

uint64_t sub_183FC2684(uint64_t a1, uint64_t a2)
{
  sub_184390038();
  v4 = *(*(a2 - 8) + 8);

  return v4(v2, a2);
}

uint64_t sub_183FC2710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_183FC1138(a1, a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_183FC2784@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_183FC2804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = *(*(*(*(a3 + 32) + 8) + 16) + 8);

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_183FC2880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

unint64_t sub_183FC2958()
{
  result = qword_1EA854A60;
  if (!qword_1EA854A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854A60);
  }

  return result;
}

unint64_t sub_183FC29BC()
{
  result = qword_1EA854A68;
  if (!qword_1EA854A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854A70, &qword_18439BA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854A68);
  }

  return result;
}

uint64_t sub_183FC2A30(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x64656B636170;
    }

    if (v1 == 1)
    {
      return 0x353535424752;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x353635424752;
      case 3:
        return 0x3130313031424752;
      case 4:
        return 0x3031464943424752;
    }
  }

  sub_184390098();

  v4 = sub_1843901B8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 0x7761722874696E69;
}

CGVector __swiftcall CGVector.init(dx:dy:)(Swift::Int dx, Swift::Int dy)
{
  v2 = dx;
  v3 = dy;
  result.dy = v3;
  result.dx = v2;
  return result;
}

uint64_t CGVector.debugDescription.getter(uint64_t a1, double a2, double a3)
{
  v3 = sub_18438FDD8();
  MEMORY[0x1865EC630](v3);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v4 = sub_18438FDD8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

uint64_t CGVector.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_183F72F08();
  sub_184390208();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

BOOL CGVector.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGVectorNearlyEqualToVector(_:_:)(CGVector a1, CGVector a2)
{
  if (qword_1EA853EA8 != -1)
  {
    dy = a2.dy;
    dx = a2.dx;
    v11 = a1.dy;
    v12 = a1.dx;
    swift_once();
    a1.dx = v12;
    a1.dy = v11;
    a2.dx = dx;
    a2.dy = dy;
  }

  if (a1.dx == a2.dx)
  {
    if (a1.dy == a2.dy)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.dx, a2.dx);
    if (a1.dy == a2.dy)
    {
      if (a1.dx - a2.dx == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.dy, a2.dy);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.dx);
  v6 = fabs(a1.dy);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.dx);
  v8 = fabs(a2.dy);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGVectorNearlyEqualToVectorWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183FC3038()
{
  result = qword_1EA854A78[0];
  if (!qword_1EA854A78[0])
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA854A78);
  }

  return result;
}

unint64_t sub_183FC3090(uint64_t a1)
{
  result = sub_183FC3038();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_183FC30F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v18 = &v20 - v17;
  (*(v11 + 16))(v14, v3, v10);
  sub_18438FD38();
  (*(v6 + 16))(v9, v3 + *(a1 + 52), v5);
  return sub_183FC32F0(v18, v9, v10, v5, v15, *(a1 + 40), v21);
}

uint64_t sub_183FC32F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for ConvertSequence.Iterator(0, v17);
  return (*(*(a4 - 8) + 32))(a7 + *(v15 + 52), a2, a4);
}

uint64_t sub_183FC33E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18438FF18();
  v17 = *(v4 - 8);
  v18 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v7, v18);
    v11 = swift_getAssociatedTypeWitness();
    v12 = 1;
    v13 = v19;
  }

  else
  {
    (*(v8 + 32))(v10, v7, AssociatedTypeWitness);
    v14 = v19;
    (*(a1[5] + 24))(v10, a1[3], a1[5]);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v11 = swift_getAssociatedTypeWitness();
    v12 = 0;
    v13 = v14;
  }

  return (*(*(v11 - 8) + 56))(v13, v12, 1);
}

uint64_t sub_183FC36C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_183FC30F8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_183FC3738(uint64_t a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10[-v6];
  v8 = sub_18438FEE8();
  (*(v5 + 16))(v7);
  v8(v10, 0);
  (*(a2[5] + 24))(v7, a2[3]);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

void (*sub_183FC38BC(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_183FC394C(v8, a2, a3, *(a4 - 8));
  return sub_183F840C4;
}

void (*sub_183FC394C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  sub_183FC3738(a2, a3, a4);
  return sub_183F84210;
}

uint64_t sub_183FC3A40@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_18438FF18();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_183FC3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 32))(&v11 - v8, a1, AssociatedTypeWitness);
  sub_183FC3730(v9, a2, v5);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_183FC3C2C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC3CCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_183FC3F24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

CGSize __swiftcall CGSize.init(width:height:)(Swift::Int width, Swift::Int height)
{
  v2 = width;
  v3 = height;
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize_optional __swiftcall CGSize.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v7 = *MEMORY[0x1E69E9840];
  size.width = 0.0;
  size.height = 0.0;
  v2 = CGSizeMakeWithDictionaryRepresentation(dictionaryRepresentation, &size);

  if (v2)
  {
    width_low = LOBYTE(size.width);
  }

  else
  {
    width_low = 0;
  }

  result.value.height = v4;
  result.value.width = v3;
  result.is_nil = width_low;
  return result;
}

uint64_t CGSize.customMirror.getter(double a1, double a2)
{
  v4 = sub_184390378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  *v17 = a1;
  *&v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0, &qword_1843985B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1843982F0;
  v12 = MEMORY[0x1E69E7DE0];
  *(v11 + 32) = 0x6874646977;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = a1;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x746867696568;
  *(v11 + 88) = 0xE600000000000000;
  *(v11 + 120) = v12;
  *(v11 + 96) = a2;
  v13 = *MEMORY[0x1E69E75B8];
  v14 = sub_184390368();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);
  type metadata accessor for CGSize(0);
  return sub_184390398();
}

void CGSize.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 12;
}

__n128 sub_183FC452C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[2].n128_u8[0] = 12;
  return result;
}

uint64_t CGSize.debugDescription.getter(uint64_t a1, double a2, double a3)
{
  v3 = sub_18438FDD8();
  MEMORY[0x1865EC630](v3);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v4 = sub_18438FDD8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

BOOL CGSize.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGSizeNearlyEqualToSize(_:_:)(CGSize a1, CGSize a2)
{
  if (qword_1EA853EA8 != -1)
  {
    height = a2.height;
    width = a2.width;
    v11 = a1.height;
    v12 = a1.width;
    swift_once();
    a1.width = v12;
    a1.height = v11;
    a2.width = width;
    a2.height = height;
  }

  if (a1.width == a2.width)
  {
    if (a1.height == a2.height)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.width, a2.width);
    if (a1.height == a2.height)
    {
      if (a1.width - a2.width == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.height, a2.height);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.width);
  v6 = fabs(a1.height);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.width);
  v8 = fabs(a2.height);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGSizeNearlyEqualToSizeWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183FC48BC(uint64_t a1)
{
  result = sub_183EF7D58();
  *(a1 + 8) = result;
  return result;
}

uint64_t CGPDFDictionaryRef.debugDescription.getter(const __CFString *a1)
{
  DebugDescription = CGPDFDictionaryCreateDebugDescription(a1);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  value = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetBoolean(a3, (v4 + 32), &value);

  if (a3)
  {
    return value != 0;
  }

  else
  {
    return 2;
  }
}

{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0.0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetNumber(a3, (v4 + 32), v6);

  if (a3)
  {
    return *&v6[0];
  }

  else
  {
    return 0;
  }
}

void (*CGPDFDictionaryRef.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = *v3;
  *(a1 + 25) = 0;
  v6 = (a1 + 25);
  v7 = sub_18438FD08();
  LODWORD(v5) = CGPDFDictionaryGetBoolean(v5, (v7 + 32), v6);

  v8 = *v6 != 0;
  if (!v5)
  {
    v8 = 2;
  }

  *(a1 + 24) = v8;
  return sub_183FC4AA8;
}

void sub_183FC4AA8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = *(a1 + 24);

  _sSo18CGPDFDictionaryRefa12CoreGraphicsEySbSgSS_Sbmtcis_0(v3, v2, v1);
}

CGPDFInteger CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetInteger(a3, (v4 + 32), v6);

  if (a3)
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFDictionaryRef.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_183FC6148(a1, a2 & 1, a3, a4);
}

{
  sub_183FC6260(a1, a2 & 1, a3, a4);
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFInteger **a1, CGPDFInteger a2, CGPDFInteger a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = v7 + 2;
  v11 = sub_18438FD08();
  Integer = CGPDFDictionaryGetInteger(v9, (v11 + 32), v10);

  v13 = *v10;
  if (!Integer)
  {
    v13 = 0;
  }

  *v8 = v13;
  *(v8 + 8) = !Integer;
  return sub_183FC4C8C;
}

void (*CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = (v7 + 2);
  v11 = sub_18438FD08();
  Number = CGPDFDictionaryGetNumber(v9, (v11 + 32), v10);

  v13 = *v10;
  if (!Number)
  {
    v13 = 0.0;
  }

  *v8 = v13;
  *(v8 + 8) = !Number;
  return sub_183FC4E40;
}

void sub_183FC4E58(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[3];
  v7 = **a1;
  v8 = *(*a1 + 8);

  a3(v7, v8, v6, v5);

  free(v4);
}

const char *CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetName(a3, (v4 + 32), v6);

  result = 0;
  if (a3)
  {
    result = v6[0];
    if (v6[0])
    {
      return sub_18438FD28();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

const char *CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = (v7 + 2);
  v11 = sub_18438FD08();
  Name = CGPDFDictionaryGetName(v9, (v11 + 32), v10);

  v13 = 0;
  v14 = 0;
  if (!Name)
  {
    goto LABEL_7;
  }

  result = *v10;
  if (*v10)
  {
    v13 = sub_18438FD28();
LABEL_7:
    *v8 = v13;
    v8[1] = v14;
    return sub_183FC5084;
  }

  __break(1u);
  return result;
}

void sub_183FC5084(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[3];
  if (a2)
  {

    _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(v3, v4, v6, v5);
  }

  else
  {

    _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(v3, v4, v6, v5);
  }

  free(v2);
}

uint64_t CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetString);
}

{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetDictionary);
}

{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetStream);
}

void CGPDFDictionaryRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_183FC6594(a1, a2, a3, &qword_1EA854990, &qword_18439B530, type metadata accessor for CGPDFStringRef, CGPDFObjectCreateWithString);
}

{
  sub_183FC6594(a1, a2, a3, &qword_1EA854988, &qword_18439B528, type metadata accessor for CGPDFDictionaryRef, CGPDFObjectCreateWithDictionary);
}

{
  sub_183FC6594(a1, a2, a3, &qword_1EA854980, &qword_18439B520, type metadata accessor for CGPDFStreamRef, CGPDFObjectCreateWithStream);
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFStringRef **a1, CGPDFString *a2, CGPDFString *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = a3;
  *(v7 + 32) = v3;
  *(v7 + 16) = a2;
  v9 = *v3;
  *(v7 + 8) = 0;
  v10 = (v7 + 8);
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetString(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC52E0;
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFDictionaryRef **a1, CGPDFDictionary *a2, CGPDFDictionary *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = a3;
  *(v7 + 32) = v3;
  *(v7 + 16) = a2;
  v9 = *v3;
  *(v7 + 8) = 0;
  v10 = (v7 + 8);
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetDictionary(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC54D8;
}

void sub_183FC5514(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)())
{
  v10 = *a1;
  v11 = (*a1)[3];
  v12 = (*a1)[2];
  v13 = **a1;

  sub_183FC6594(v13, v12, v11, a3, a4, a5, a6);

  free(v10);
}

uint64_t sub_183FC5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v6 = sub_18438FD08();
  LODWORD(a4) = a4(a3, v6 + 32, v8);

  if (a4)
  {
    return v8[0];
  }

  else
  {
    return 0;
  }
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFStreamRef **a1, CGPDFStream *a2, CGPDFStream *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = a3;
  *(v7 + 32) = v3;
  *(v7 + 16) = a2;
  v9 = *v3;
  *(v7 + 8) = 0;
  v10 = (v7 + 8);
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetStream(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC5800;
}

void CGPDFDictionaryRef.subscript.getter(CGPDFDictionary *a3@<X2>, uint64_t a4@<X8>)
{
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  v6 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetObject(a3, (v6 + 32), value);

  if (!a3)
  {
    goto LABEL_34;
  }

  v7 = value[0];
  if (value[0])
  {
    Type = CGPDFObjectGetType(value[0]);
    if (Type <= kCGPDFObjectTypeName)
    {
      if (Type <= kCGPDFObjectTypeInteger)
      {
        if (Type == kCGPDFObjectTypeBoolean)
        {
          LOBYTE(v17) = 0;
          if (CGPDFObjectGetValue(v7, kCGPDFObjectTypeBoolean, &v17))
          {
            v15 = v17 != 0;
            *(a4 + 24) = MEMORY[0x1E69E6370];
            *(a4 + 32) = &protocol witness table for Bool;
            *a4 = v15;
            return;
          }
        }

        else if (Type == kCGPDFObjectTypeInteger)
        {
          v17 = 0;
          if (CGPDFObjectGetValue(v7, kCGPDFObjectTypeInteger, &v17))
          {
            v9 = v17;
            *(a4 + 24) = MEMORY[0x1E69E6530];
            *(a4 + 32) = &protocol witness table for Int;
            *a4 = v9;
            return;
          }
        }

        goto LABEL_34;
      }

      if (Type == kCGPDFObjectTypeReal)
      {
        v17 = 0;
        if (CGPDFObjectGetValue(v7, kCGPDFObjectTypeReal, &v17))
        {
          v16 = v17;
          *(a4 + 24) = MEMORY[0x1E69E63B0];
          *(a4 + 32) = &protocol witness table for Double;
          *a4 = v16;
          return;
        }

        goto LABEL_34;
      }

      v17 = 0;
      if (CGPDFObjectGetValue(v7, kCGPDFObjectTypeName, &v17))
      {
        if (v17)
        {
          v13 = sub_18438FD28();
          *(a4 + 24) = MEMORY[0x1E69E6158];
          *(a4 + 32) = &protocol witness table for String;
          *a4 = v13;
          *(a4 + 8) = v14;
          return;
        }

        goto LABEL_36;
      }

LABEL_34:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }

    if (Type > kCGPDFObjectTypeArray)
    {
      if (Type == kCGPDFObjectTypeDictionary)
      {
        v17 = 0;
        if (!CGPDFObjectGetValue(v7, kCGPDFObjectTypeDictionary, &v17))
        {
          goto LABEL_34;
        }

        v10 = v17;
        if (!v17)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFDictionaryRef(0);
        v12 = &protocol witness table for CGPDFDictionaryRef;
      }

      else
      {
        if (Type != kCGPDFObjectTypeStream)
        {
          goto LABEL_34;
        }

        v17 = 0;
        if (!CGPDFObjectGetValue(v7, kCGPDFObjectTypeStream, &v17))
        {
          goto LABEL_34;
        }

        v10 = v17;
        if (!v17)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFStreamRef(0);
        v12 = &protocol witness table for CGPDFStreamRef;
      }
    }

    else if (Type == kCGPDFObjectTypeString)
    {
      v17 = 0;
      if (!CGPDFObjectGetValue(v7, kCGPDFObjectTypeString, &v17))
      {
        goto LABEL_34;
      }

      v10 = v17;
      if (!v17)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFStringRef(0);
      v12 = &protocol witness table for CGPDFStringRef;
    }

    else
    {
      v17 = 0;
      if (!CGPDFObjectGetValue(v7, kCGPDFObjectTypeArray, &v17))
      {
        goto LABEL_34;
      }

      v10 = v17;
      if (!v17)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFArrayRef(0);
      v12 = &protocol witness table for CGPDFArrayRef;
    }

    *(a4 + 24) = v11;
    *(a4 + 32) = v12;
    *a4 = v10;
    return;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_183FC5B0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_183F903C8(a1, v7);

  sub_183F90068(v7, a2, v4, v5);

  return sub_183F90438(v7);
}

uint64_t CGPDFDictionaryRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_183F90068(a1, v3, a2, a3);

  return sub_183F90438(a1);
}

void (*CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  CGPDFDictionaryRef.subscript.getter(*v3, v7);
  return sub_183FC5C64;
}

void sub_183FC5C64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_183F903C8(*a1, v2 + 40);

    sub_183F90068(v2 + 40, v3, v5, v4);

    sub_183F90438(v2 + 40);
  }

  else
  {

    sub_183F90068(v2, v3, v5, v4);
  }

  sub_183F90438(v2);

  free(v2);
}

uint64_t CGPDFDictionaryRef.enumerateObjects(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_183FC66BC;
  *(v7 + 24) = v6;
  v10[4] = sub_183FC670C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_183FC5E6C;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);

  CGPDFDictionaryEnumerateKeysAndValues(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC5ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_18438FD08();
  a5(a4, v8 + 32, a1);
}

Swift::Bool __swiftcall CGPDFDictionaryRef.replace(_:forKey:)(CGPDFObjectRef _, Swift::String forKey)
{
  v3 = v2;
  v5 = sub_18438FD08();
  LOBYTE(v3) = CGPDFDictionaryReplaceObject(v3, (v5 + 32), _);

  return v3;
}

Swift::Void __swiftcall CGPDFDictionaryRef.remove(forKey:)(Swift::String forKey)
{
  v2 = v1;
  v3 = sub_18438FD08();
  CGPDFDictionaryRemoveObject(v2, (v3 + 32));
}

uint64_t sub_183FC5FE0()
{
  DebugDescription = CGPDFDictionaryCreateDebugDescription(*v0);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

void _sSo18CGPDFDictionaryRefa12CoreGraphicsEySbSgSS_Sbmtcis_0(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549B0, &qword_18439B550);
  if (swift_dynamicCast())
  {
    v4 = CGPDFObjectCreateWithBoolean(v8);
    if (v4)
    {
      v5 = v4;
      v6 = *v3;
      v7 = sub_18438FD08();

      CGPDFDictionarySetObject(v6, (v7 + 32), v5);

      CGPDFObjectRelease(v5);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FC6148(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A8, &qword_18439B548);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithInteger(v9);
    if (v5)
    {
      v6 = v5;
      v7 = *v4;
      v8 = sub_18438FD08();

      CGPDFDictionarySetObject(v7, (v8 + 32), v6);

      CGPDFObjectRelease(v6);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FC6260(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A0, &qword_18439B540);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithReal(v9);
    if (v5)
    {
      v6 = v5;
      v7 = *v4;
      v8 = sub_18438FD08();

      CGPDFDictionarySetObject(v7, (v8 + 32), v6);

      CGPDFObjectRelease(v6);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18438FCF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[4] = a1;
  v16[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854998, &qword_18439B538);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v16[0] = v16[2];
  v16[1] = v16[3];
  sub_18438FCE8();
  sub_183F8FF4C();
  v12 = sub_18438FF68();
  (*(v9 + 8))(v11, v8);
  if (!v12)
  {
    __break(1u);
LABEL_8:
    sub_184390118();
    __break(1u);
    return;
  }

  v13 = CGPDFObjectCreateWithName((v12 + 32));

  if (v13)
  {
    v14 = *v5;
    v15 = sub_18438FD08();

    CGPDFDictionarySetObject(v14, (v15 + 32), v13);

    CGPDFObjectRelease(v13);
  }

  else
  {
  }
}

void sub_183FC6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  a6(0);
  if (swift_dynamicCast())
  {
    v10 = a7();
    if (v10)
    {
      v11 = v10;
      v12 = *v7;
      v13 = sub_18438FD08();

      CGPDFDictionarySetObject(v12, (v13 + 32), v11);

      CGPDFObjectRelease(v11);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

uint64_t sub_183FC66BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_18438FD28();
  v5 = v3(v4);

  return v5 & 1;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_183FC6750(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_183FC6AE4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC67D8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_183FC6914(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_183FC6AE4()
{
  result = qword_1ED4DFF18;
  if (!qword_1ED4DFF18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED4DFF18);
  }

  return result;
}

uint64_t sub_183FC6B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  sub_18438FE08();
  sub_183FC6C5C(v7, a1, a2);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_183FC6C5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v87 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v85 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = v80 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = sub_18438FF08();
  MEMORY[0x1EEE9AC00](v81);
  v82 = v80 - v11;
  v114 = swift_getAssociatedTypeWitness();
  v116 = *(v114 - 8);
  v12 = MEMORY[0x1EEE9AC00](v114);
  v113 = v80 - v13;
  v98 = a2;
  v14 = a2[3];
  v117 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v97 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_18438FF18();
  v16 = *(v121 - 1);
  v17 = MEMORY[0x1EEE9AC00](v121);
  v90 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = v80 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v112 = v80 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (v80 - v24);
  v26 = *(AssociatedTypeWitness - 8);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v111 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v80 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v80 - v32;
  v115 = v3;
  v122 = v6;
  v34 = v5;
  v35 = v117;
  sub_18438FE48();
  v36 = *(v26 + 16);
  v80[1] = v26 + 16;
  v80[0] = v36;
  v36(v31, v92, AssociatedTypeWitness);
  v37 = *(v35 + 7);
  v120 = v25;
  v123 = v14;
  v95 = v35 + 56;
  v94 = v37;
  v37(v25, 1, 1, v14);
  v38 = *(AssociatedConformanceWitness + 8);
  v118 = v33;
  v110 = v38;
  v39 = sub_18438FCC8();
  v89 = v26;
  v88 = v16;
  v119 = v34;
  if (v39)
  {
    v40 = *(v16 + 16);
    v116 = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v117 = v40;
    v41 = v122;
    goto LABEL_10;
  }

  v42 = (v115 + *(v98 + 13));
  v109 = (v116 + 16);
  v108 = (v116 + 8);
  v43 = v16 + 16;
  v107 = (v35 + 48);
  v106 = (v16 + 8);
  v45 = *v42;
  v44 = v42[1];
  v105 = v45;
  v104 = v44;
  v101 = (v35 + 8);
  v93 = (v35 + 16);
  v100 = (v26 + 8);
  v99 = (v26 + 32);
  v46 = v97;
  v103 = AssociatedTypeWitness;
  v102 = v31;
  while (1)
  {
    v52 = sub_18438FEE8();
    v54 = v113;
    v53 = v114;
    (*v109)(v113);
    v52(v124, 0);
    v105(v54);
    (*v108)(v54, v53);
    v55 = *v43;
    v116 = v43 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56 = v112;
    v57 = v120;
    v58 = v121;
    (v55)(v112, v120, v121);
    v59 = *v107;
    LODWORD(v52) = (*v107)(v56, 1, v123);
    v60 = *v106;
    (*v106)(v56, v58);
    v117 = v55;
    if (v52 == 1)
    {
      v60(v57, v58);
      v47 = v123;
      (*v93)(v57, v46, v123);
      v94(v57, 0, 1, v47);
      v31 = v102;
      v48 = v101;
      goto LABEL_5;
    }

    v61 = v96;
    (v55)(v96, v57, v58);
    v62 = v123;
    result = v59(v61, 1, v123);
    if (result == 1)
    {
      goto LABEL_13;
    }

    v46 = v97;
    v64 = sub_18438FCC8();
    v48 = v101;
    v65 = *v101;
    (*v101)(v61, v62);
    v31 = v102;
    if ((v64 & 1) == 0)
    {
      break;
    }

LABEL_5:
    v49 = v43;
    v50 = v111;
    v41 = v122;
    sub_18438FE18();
    (*v48)(v46, v123);
    AssociatedTypeWitness = v103;
    (*v100)(v31, v103);
    v51 = v50;
    v43 = v49;
    (*v99)(v31, v51, AssociatedTypeWitness);
    if (sub_18438FCC8())
    {
      goto LABEL_10;
    }
  }

  v65(v46, v123);
  v41 = v122;
  AssociatedTypeWitness = v103;
LABEL_10:
  v66 = v120;
  v67 = v121;
  (v117)(v90, v120, v121);
  v68 = v92;
  v69 = sub_18438FC88();
  (*(v88 + 8))(v66, v67);
  v70 = v89;
  v71 = *(v89 + 8);
  result = v71(v118, AssociatedTypeWitness);
  if (v69)
  {
    v121 = v71;
    v72 = v83;
    (v80[0])(v83, v68, AssociatedTypeWitness);
    v73 = TupleTypeMetadata2;
    v74 = *(v70 + 32);
    v74(&v72[*(TupleTypeMetadata2 + 48)], v31, AssociatedTypeWitness);
    v120 = v74;
    v75 = v84;
    v76 = v85;
    (*(v84 + 16))(v85, v72, v73);
    v77 = AssociatedTypeWitness;
    v118 = *(v73 + 48);
    v78 = v82;
    v74(v82, v76, v77);
    v79 = v121;
    (v121)(&v118[v76], v77);
    (*(v75 + 32))(v76, v72, v73);
    v120((v78 + *(v81 + 36)), &v76[*(v73 + 48)], v77);
    v79(v76, v77);
    return sub_183FC7B4C(v90, v78, v41, v123, v119, v98[5], v87);
  }

  else
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC775C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = a1[4];
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - v8;
  swift_getAssociatedConformanceWitness();
  v35 = sub_18438FF08();
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v29 - v9;
  v39 = a1;
  v11 = a1[3];
  v12 = sub_18438FF18();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v29 - v17;
  v31 = v4;
  v37 = v3;
  sub_18438FE48();
  v19 = *(*(v11 - 8) + 56);
  v34 = v15;
  v19(v15, 1, 1, v11);
  result = sub_18438FC88();
  if (result)
  {
    v21 = v16;
    v22 = v32;
    (*(v16 + 16))(v32, v18, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v24 = *(v21 + 32);
    v24(&v22[*(TupleTypeMetadata2 + 48)], v18, AssociatedTypeWitness);
    v29 = v24;
    v30 = v11;
    v25 = v38;
    v26 = v36;
    (*(v38 + 16))(v36, v22, v23);
    v27 = *(v23 + 48);
    v24(v10, v26, AssociatedTypeWitness);
    v28 = *(v21 + 8);
    v28(&v26[v27], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v22, v23);
    v29(&v10[*(v35 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v28(v26, AssociatedTypeWitness);
    return sub_183FC7B4C(v34, v10, v31, v30, v37, v39[5], v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC7B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_18438FF18();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v15 = *(type metadata accessor for GroupCollection.Index(0, v18) + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = sub_18438FF08();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

uint64_t sub_183FC7C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v8;
  v5 = a1 + *(type metadata accessor for GroupCollection.Index(0, v9) + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_18438FF08();
  return sub_183FC6C5C(v5 + *(v6 + 36), a2, a3);
}

uint64_t sub_183FC7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = sub_18438FF18();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-2] - v9;
  (*(v11 + 16))(&v15[-2] - v9, a3);
  v12 = *(v7 - 8);
  result = (*(v12 + 48))(v10, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(a1, v10, v7);
    v15[0] = *(a4 + 16);
    v15[1] = v7;
    v14 = *(a4 + 32);
    v16 = v14;
    type metadata accessor for GroupCollection.Index(0, v15);
    return sub_18438FED8();
  }

  return result;
}

uint64_t sub_183FC7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  type metadata accessor for GroupCollection.Index(0, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FEF8() & 1;
}

uint64_t sub_183FC7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  type metadata accessor for GroupCollection.Index(0, v11);
  swift_getAssociatedConformanceWitness();
  return sub_18438FC68() & 1;
}

void (*sub_183FC80A0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_183FC82CC(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v9 - 8) + 16))(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, AssociatedTypeWitness);
  return sub_183FC8254;
}

void sub_183FC8254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_183FC82CC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_183FC7D64(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_183F84210;
}

uint64_t sub_183FC83E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  type metadata accessor for GroupCollection.Index(255, v6);
  v4 = sub_18438FF18();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t sub_183FC846C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v10[0] = *(a2 + 16);
  v10[1] = v4;
  v5 = type metadata accessor for GroupCollection.Index(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  (*(v6 + 32))(v10 - v7, a1, v5);
  sub_183FC7C84(v8, a2, a1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_183FC8570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 1);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_184390108();
  sub_183FC6B50(a1, a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_183FC8668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_183FC86BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_183FC87B4(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_183FC87B8(void *a1)
{
  result = sub_18438FF18();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = sub_18438FF08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC88A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((*(*(AssociatedTypeWitness - 8) + 64) + v13) & ~v13) + *(*(AssociatedTypeWitness - 8) + 64) + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v8 >= v11)
        {
          v25 = (*(v6 + 48))(a1, v7, v5);
          if (v25 >= 2)
          {
            return v25 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *(v10 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_183FC8B20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = ((*(v12 + 64) + v17) & ~v17) + *(v12 + 64);
  v19 = v18 + ((v16 + v17) & ~v17);
  if (a3 <= v15)
  {
    goto LABEL_24;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_13;
    }

LABEL_25:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_27;
      }

LABEL_73:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

LABEL_27:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_73;
    }

    goto LABEL_27;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

LABEL_24:
    if (v15 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v31 + 56);

      v30(a1, (a2 + 1), v9, v7);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_59;
        }

        goto LABEL_78;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v13 + 56);

      v29(a1, a2);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_43:
            *a1 = v25;
            return;
          }

LABEL_59:
          *a1 = v25;
          return;
        }

LABEL_78:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

void Region.cgRegion.getter()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;
  *&v17 = v2;
  *(&v17 + 1) = v1;
  v19 = 0;
  v18 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = &v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_183FC91D0;
  *(v6 + 24) = v5;
  *&v12 = sub_183FC91D8;
  *(&v12 + 1) = v6;
  *&v10 = MEMORY[0x1E69E9820];
  *(&v10 + 1) = 1644167168;
  *&v11 = sub_183FC9200;
  *(&v11 + 1) = &block_descriptor_3;
  v7 = _Block_copy(&v10);

  v8 = CGRegionCreateWithBoundsBlock(v7);
  _Block_release(v7);
  if (v8)
  {
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v10 = v15;
    v11 = v16;
    sub_183FC9258(&v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_183FC90E4(uint64_t a1)
{
  Region.endIndex.getter(v15);
  if (*(a1 + 64) == *(&v15[0] + 1))
  {
    return 1;
  }

  Region.subscript.getter((a1 + 56));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = *(a1 + 32);
  v16 = v11;
  v14 = *(a1 + 56);
  Region.index(after:)(&v14, (a1 + 56));
  v13 = sub_183FC947C(v4);
  sub_183FC947C(v8);
  sub_183FC947C(v6);
  sub_183FC947C(v10);
  return v13 << 32;
}

uint64_t sub_183FC9200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(a1 + 32))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_183FC9258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8546A0, &qword_184399B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 Region.init(cgRegion:)@<Q0>(char *a1@<X0>, int64x2_t *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = v17;
  v13 = v17;
  v4 = MEMORY[0x1E69E7CC0];
  v19.i64[0] = MEMORY[0x1E69E7CC0];
  v19.i64[1] = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v5 = CGRegionEnumeratorCreate(a1);
  v15 = 0;
  v16 = 0;
  if (CGRegionEnumeratorGetNextBounds(v5, &v16 + 1, &v16, &v15 + 1, &v15))
  {
    do
    {
      v8 = SHIDWORD(v16);
      v9 = SHIDWORD(v15);
      if (v8 < v9)
      {
        v6 = v15;
        v7 = v16;
        if (v7 >= v6)
        {
          v8 = NAN;
          v9 = NAN;
          v7 = NAN;
          v6 = NAN;
        }
      }

      else
      {
        v8 = NAN;
        v9 = NAN;
        v7 = NAN;
        v6 = NAN;
      }

      *v14 = v8;
      *&v14[1] = v9;
      *&v14[2] = v7;
      *&v14[3] = v6;
      v14[4] = v4;
      v14[5] = v4;
      v14[6] = v4;
      Region.formUnion(_:)(v14);
    }

    while (CGRegionEnumeratorGetNextBounds(v5, &v16 + 1, &v16, &v15 + 1, &v15));
    v13 = v17;
    v11 = v18;
    v12 = v19;
    v4 = v20;
  }

  else
  {
    v11 = v13;
    v12 = vdupq_n_s64(v4);
  }

  CGRegionEnumeratorRelease(v5);

  result = v12;
  *a2 = v13;
  a2[1] = v11;
  a2[2] = v12;
  a2[3].i64[0] = v4;
  return result;
}

uint64_t sub_183FC947C(double a1)
{
  v1 = round(a1);
  if (v1 <= -2147483650.0)
  {
    return 2147483649;
  }

  if (v1 >= 2147483650.0)
  {
    return 2147483646;
  }

  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v1 > -2147483650.0)
  {
    if (v1 < 2147483650.0)
    {
      return v1;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_183FC9504(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FC957C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_183FC96F0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

double sub_183FC9950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v17 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_18438FD38();
  LOBYTE(v10) = *(v3 + *(a1 + 52));
  (*(*(a1 - 8) + 8))(v3, a1);
  v15 = sub_18438FBE8();
  sub_183FC9B08(0, 0, 1, v14, v10, *v15, *(a1 + 16), v6, a2, *(a1 + 32), v11);

  return result;
}

uint64_t sub_183FC9B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  v19[0] = a7;
  v19[1] = a8;
  v19[2] = a10;
  v19[3] = a11;
  v15 = type metadata accessor for SewingMachine.Iterator(0, v19);
  v16 = v15[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v16, a4, AssociatedTypeWitness);
  *(a9 + v15[14]) = a5;
  *(a9 + v15[15]) = a6;
  return result;
}

uint64_t sub_183FC9BE8(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  *&v43 = a3;
  *(&v43 + 1) = a4;
  *&v44 = a5;
  BYTE8(v44) = 0;
  v45 = a4;
  v7 = *(a2 + 60);
  result = *(v5 + v7);
  v9 = *(result + 24);
  v10 = *a1;
  if (*a1 == -1)
  {
    if (v9 >= 2)
    {
      v12 = 0;
      v10 = result + 40;
      v11 = 40;
      v17 = *(result + 24);
      do
      {
        v18 = v12 + (v17 >> 1);
        if (__OFADD__(v12, v17 >> 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if (v18 >= v9)
        {
          goto LABEL_81;
        }

        v19 = *(result + 32) + v18;
        v20 = *(result + 16);
        if (v19 < v20)
        {
          v20 = 0;
        }

        if (*(v10 + 40 * (v19 - v20) + 32) < a4)
        {
          v12 += v17 >> 1;
        }

        v17 -= v17 >> 1;
      }

      while (v17 > 1);
      if (v12 >= v9)
      {
        goto LABEL_40;
      }

      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

LABEL_36:
      v21 = *(result + 32) + v12;
      v22 = *(result + 16);
      if (v21 < v22)
      {
        v22 = 0;
      }

      v23 = v21 - v22;
      v11 = 40;
      if (*(result + 40 * v23 + 72) < a4)
      {
        ++v12;
      }

      goto LABEL_40;
    }

LABEL_35:
    v12 = 0;
    if (v9 != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_36;
  }

  v11 = v9 - v10;
  if (v9 < v10)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v10 < 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v11 < 2)
  {
LABEL_32:
    v12 = v10;
    if (v10 >= v9)
    {
      goto LABEL_40;
    }

LABEL_33:
    if (v12 >= v10)
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

  v12 = *a1;
  do
  {
    v13 = v12 + (v11 >> 1);
    if (__OFADD__(v12, v11 >> 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v13 < v10 || v13 >= v9)
    {
      goto LABEL_78;
    }

    v15 = *(result + 32) + v13;
    v16 = *(result + 16);
    if (v15 < v16)
    {
      v16 = 0;
    }

    if (*(result + 40 + 40 * (v15 - v16) + 32) < a4)
    {
      v12 += v11 >> 1;
    }

    v11 -= v11 >> 1;
  }

  while (v11 > 1);
  if (v12 < v9)
  {
    goto LABEL_33;
  }

LABEL_40:
  *&v24 = v12 & 0x8000000000000001;
  if ((v12 & 0x8000000000000001) == 1 && v12 < v9)
  {
    v25 = *(result + 32);
    v26 = *(result + 16);
    if (v25 + v12 >= v26)
    {
      v27 = *(result + 16);
    }

    else
    {
      v27 = 0;
    }

    if (*(result + 40 + 40 * (v25 + v12 - v27) + 32) != a4)
    {
      goto LABEL_58;
    }

    v28 = v12 + v25 - 1;
    if (v28 < v26)
    {
      v26 = 0;
    }

    v11 = result + 40 + 40 * (v28 - v26);
    v24 = *v11;
    if (*(v11 + 24))
    {
      if (((LODWORD(v24) ^ *(v5 + *(a2 + 56))) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  if (*(v11 + 16) >= v24)
  {
    if (!*(v5 + *(a2 + 56)))
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((*(v5 + *(a2 + 56)) & 1) == 0)
  {
LABEL_57:
    ++v12;
  }

LABEL_58:
  if (v9 < v12)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v29 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + v7);
  if (v30[2] >= v29 && (result & 1) != 0)
  {
    v31 = v30 + 5;
    if (v12)
    {
      goto LABEL_63;
    }
  }

  else
  {
    result = sub_183FCAAA0(result, v29, 0);
    v30 = *(v5 + v7);
    v31 = v30 + 5;
    if (v12)
    {
LABEL_63:
      if (v12 == v30[3])
      {
        sub_183FCAF70(&v43, v30 + 2, v31);
LABEL_75:

        goto LABEL_76;
      }

      goto LABEL_70;
    }
  }

  v32 = v30[4];
  if (!v32)
  {
    v37 = v30[2];
    v33 = __OFSUB__(v37, 1);
    v34 = v37 - 1;
    if (v33)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    goto LABEL_73;
  }

  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (!v33)
  {
LABEL_73:
    v38 = &v31[5 * v34];
    *(v38 + 4) = v45;
    v39 = v44;
    *v38 = v43;
    *(v38 + 1) = v39;
    v30[4] = v34;
    v40 = v30[3];
    v33 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v33)
    {
      v30[3] = v41;
      goto LABEL_75;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_70:

  result = sub_183FCBACC(&v42, v31, 1uLL, v12, v30 + 2);
  v35 = v42;
  if (v42)
  {
    v36 = v44;
    *v42 = v43;
    *(v35 + 1) = v36;
    v35[4] = v45;
LABEL_76:

    *a1 = v12;
    return result;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_183FC9F7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v108 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 32);
  v107 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v98 - v10;
  v109 = v4;
  v12 = type metadata accessor for ClosedSpan(255, v4, v8, v11);
  v13 = sub_18438FF18();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v111 = &v98 - v15;
  v112 = v12;
  result = MEMORY[0x1EEE9AC00](v14);
  v121 = (&v98 - v17);
  v110 = (v18 + 48);
  v103 = (v5 + 16);
  v104 = (v18 + 32);
  v101 = (v18 + 8);
  v102 = (v9 + 8);
  v113 = v3;
  v125 = v2;
  while (1)
  {
    while (*(v2 + 16) == 1)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v19 = v111;
      sub_18438FF58();
      v20 = v112;
      if ((*v110)(v19, 1, v112) == 1)
      {
        (*(v99 + 8))(v19, v100);
        return 0;
      }

      v21 = v121;
      (*v104)(v121, v19, v20);
      *&v126[0] = -1;
      (*v103)(v108, v21 + *(v20 + 40), v109);
      v22 = v105;
      sub_18438FD38();
      v23 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      while (1)
      {
        sub_18438FF58();
        if (BYTE8(v128))
        {
          break;
        }

        v24 = *&v128;
        sub_18438FF58();
        if (BYTE8(v128))
        {
          break;
        }

        v25 = *&v128;
        v27 = *v121;
        v26 = v121[1];
        sub_183FC9BE8(v126, v3, v26, v24, *v121);
        sub_183FC9BE8(v126, v3, v27, v25, v26);
      }

      v95 = *(*(v2 + *(v3 + 60)) + 24);
      (*v102)(v22, v23);
      result = (*v101)(v121, v112);
      if (v95 >= 1)
      {
        *v2 = 0;
        v2[1] = v95;
        *(v2 + 16) = 0;
      }
    }

    v28 = v2[1];
    v120 = *v2;
    if (v120 < v28)
    {
      v29 = v120;
      v119 = v28;
      do
      {
        if (v120 < 0)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
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
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v30 = *(v3 + 60);
        v31 = *(v2 + v30);
        v32 = v31[3];
        if (v29 >= v32)
        {
          goto LABEL_75;
        }

        v33 = v31[4];
        v34 = v29 + v33;
        v35 = v31[2];
        if (v29 + v33 >= v35)
        {
          v36 = v31[2];
        }

        else
        {
          v36 = 0;
        }

        v37 = &v31[5 * v29 + 5 + 5 * (v33 - v36)];
        v38 = *(v37 + 32);
        v39 = *(v37 + 16);
        v133[0] = *v37;
        v133[1] = v39;
        v134 = v38;
        v40 = v29 + 1;
        if (v29 + 1 >= v32)
        {
          goto LABEL_76;
        }

        if (v34 + 1 >= v35)
        {
          v41 = v35;
        }

        else
        {
          v41 = 0;
        }

        v42 = &v31[5 * (v34 - v41) + 5];
        v43 = *(v42 + 40);
        v44 = *(v42 + 56);
        v136 = *(v42 + 72);
        v135[0] = v43;
        v135[1] = v44;
        sub_183F813A0(v133, v126);
        sub_183F813A0(v135, v126);
        sub_183FB9B44(v133, v135, v126);
        v130 = v126[2];
        v131 = v126[3];
        v132[0] = v127[0];
        *(v132 + 9) = *(v127 + 9);
        v128 = v126[0];
        v129 = v126[1];
        sub_183F813FC(v133);
        sub_183F813FC(v135);
        result = *&v132[1];
        v118 = BYTE8(v132[1]);
        v45 = v128;
        v46 = BYTE8(v129);
        v47 = BYTE7(v132[0]) >> 6;
        if (v47)
        {
          if (v47 != 1)
          {
            goto LABEL_64;
          }

          v48 = v31[3];
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_77;
          }

          v123 = v130;
          v124 = v129;
          v122 = *&v132[1];
          v116 = v131;
          v117 = *(&v130 + 1);
          v115 = *(&v131 + 1);
          v114 = LOBYTE(v132[0]);
          v50 = *(&v132[0] + 1);
          v51 = v125;
          result = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v51 + v30);
          if (v52[2] < v49 || (result & 1) == 0)
          {
            v53 = v125;
            result = sub_183FCAAA0(result, v49, 0);
            v52 = *(v53 + v30);
            v3 = v113;
          }

          v54 = v52[3];
          v55 = v52[4];
          v58 = __OFADD__(v55, v54);
          v56 = v55 + v54;
          if (v58)
          {
            goto LABEL_79;
          }

          if (v54 < 0)
          {
            if (v56 < 0)
            {
              v72 = v52[2];
              v58 = __OFADD__(v56, v72);
              v56 += v72;
              if (v58)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            v57 = v52[2];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            if (v59 < 0 == v58)
            {
              v56 = v59;
              if (v58)
              {
                goto LABEL_87;
              }
            }
          }

          v73 = &v52[5 * v56];
          *(v73 + 5) = v45;
          v74 = v124;
          v73[7] = v124;
          *(v73 + 64) = v46 & 1;
          v73[9] = v123;
          v58 = __OFADD__(v54, 1);
          v75 = v54 + 1;
          if (v58)
          {
            goto LABEL_82;
          }

          v52[3] = v75;
          v76 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_83;
          }

          sub_183F81450(v45, *(&v45 + 1), v74, v46 & 1);
          v77 = v125;
          result = swift_isUniquelyReferenced_nonNull_native();
          v78 = *(v77 + v30);
          if (v78[2] < v76 || (result & 1) == 0)
          {
            result = sub_183FCAAA0(result, v76, 0);
            v78 = *(v77 + v30);
          }

          v79 = v78[3];
          v80 = v78[4];
          v58 = __OFADD__(v80, v79);
          v81 = v80 + v79;
          if (v58)
          {
            goto LABEL_84;
          }

          if (v79 < 0)
          {
            if (v81 < 0)
            {
              v88 = v78[2];
              v58 = __OFADD__(v81, v88);
              v81 += v88;
              if (v58)
              {
                goto LABEL_93;
              }
            }
          }

          else
          {
            v82 = v78[2];
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            if (v84 < 0 == v83)
            {
              v81 = v84;
              if (v83)
              {
                goto LABEL_88;
              }
            }
          }

          v89 = &v78[5 * v81];
          v90 = v116;
          result = v117;
          v89[5] = v117;
          v89[6] = v90;
          v91 = v115;
          v89[7] = v115;
          v92 = v114 & 1;
          *(v89 + 64) = v114 & 1;
          v89[9] = v50;
          v58 = __OFADD__(v79, 1);
          v93 = v79 + 1;
          if (v58)
          {
            goto LABEL_85;
          }

          v78[3] = v93;
          sub_183F81450(result, v90, v91, v92);
        }

        else
        {
          v60 = v31[3];
          v61 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_78;
          }

          v122 = *&v132[1];
          v123 = v130;
          v124 = v129;
          sub_183F81450(v128, *(&v128 + 1), v129, BYTE8(v129) & 1);
          v62 = v125;
          result = swift_isUniquelyReferenced_nonNull_native();
          v63 = *(v62 + v30);
          if (v63[2] < v61 || (result & 1) == 0)
          {
            v64 = v125;
            result = sub_183FCAAA0(result, v61, 0);
            v63 = *(v64 + v30);
            v3 = v113;
          }

          v65 = v63[3];
          v66 = v63[4];
          v58 = __OFADD__(v66, v65);
          v67 = v66 + v65;
          if (v58)
          {
            goto LABEL_80;
          }

          if (v65 < 0)
          {
            v71 = v124;
            if (v67 < 0)
            {
              v85 = v63[2];
              v58 = __OFADD__(v67, v85);
              v67 += v85;
              if (v58)
              {
                goto LABEL_92;
              }
            }
          }

          else
          {
            v68 = v63[2];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v124;
            if (v70 < 0 == v69)
            {
              v67 = v70;
              if (v69)
              {
                goto LABEL_86;
              }
            }
          }

          v86 = &v63[5 * v67];
          *(v86 + 5) = v45;
          v86[7] = v71;
          *(v86 + 64) = v46 & 1;
          v86[9] = v123;
          v58 = __OFADD__(v65, 1);
          v87 = v65 + 1;
          if (v58)
          {
            goto LABEL_81;
          }

          v63[3] = v87;
        }

        sub_183F81460(&v128);
        result = v122;
LABEL_64:
        if (result)
        {
          v96 = v125;
          v97 = v119;
          *v125 = v29 + 2;
          v96[1] = v97;
          *(v96 + 16) = 0;
          return result;
        }

        v29 += 2;
        v28 = v119;
        v2 = v125;
      }

      while (v40 + 1 < v119);
    }

    if (v28 < 0)
    {
      goto LABEL_89;
    }

    v94 = *(v3 + 60);
    result = *(v2 + v94);
    if (*(result + 24) < v28)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_183FCAD08();
    }

    result = sub_183FCB45C(0, v28, (*(v2 + v94) + 16), (*(v2 + v94) + 40));
    *v2 = 0;
    v2[1] = 0;
    *(v2 + 16) = 1;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_183FCA8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183FC9F7C(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_183FCA8F4(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_183FCADAC(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_18438FBF8();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_183FCB010(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_183FCB278(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_183FCAAA0(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80, &qword_18439C238);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_183FCAE94(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_18438FBF8();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80, &qword_18439C238);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 40;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_183FCB138(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80, &qword_18439C238);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 40;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_183FCB370(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_183FCAC68()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_183FCADAC(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_183FCAD08()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80, &qword_18439C238);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_183FCAE94(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

void sub_183FCADAC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_183FCAE94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183FCAF70(uint64_t result, void *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = a2[2];
  v8 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (!v8)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *a2);
      if (v7 < *a2 || (v7 -= *a2, !v8))
      {
LABEL_9:
        v9 = a3 + 40 * v7;
        v10 = *(result + 16);
        *v9 = *result;
        *(v9 + 16) = v10;
        *(v9 + 32) = *(result + 32);
        v8 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (!v8)
        {
          v14 = v3;
          v15 = v4;
          a2[1] = v11;
          v13[0] = *result;
          *(v13 + 9) = *(result + 9);
          return sub_183FCC0D8(v13, &v12);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *a2);
      v7 += *a2;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_183FCB010(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

void sub_183FCB138(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  if (v16 != v11 || v16 >= &v11[40 * v7])
  {

    memmove(v16, v11, 40 * v7);
  }
}

void sub_183FCB278(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_183FCB370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_183FCB45C(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_183FBB080(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    swift_arrayDestroy();
  }

  return sub_183FBB6B4(a1, a2, a3, a4);
}

unint64_t sub_183FCB528@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X3>, unint64_t result@<X0>, uint64_t a4@<X1>, uint64_t *a5@<X2>)
{
  v9 = a5[1];
  v10 = v9 - a4;
  if (__OFSUB__(v9, a4))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a5[2];
  if (v10 <= a4)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a5;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a4;
    if (v14 + a4 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a4 > 0)
            {
              result = &__src[v6];
              if (v6 < v14 || result >= &__src[v14 + a4] || v6 != v14)
              {
                v33 = 8 * a4;
                v32 = &__src[v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[v6];
          v30 = &__src[v14];
          if (v6 == v14 && result < &v30[v31])
          {
            goto LABEL_76;
          }

          v29 = 8 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[v6];
            v28 = &__src[v14];
            if (v6 != v14 || result >= &v28[v9])
            {
              result = memmove(result, v28, 8 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[*a5 + v15], result == __src) && result < &__src[v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[v13];
              if (v13 > 0 || &v32[v21] <= __src || v13)
              {
                v33 = 8 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 8 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[v6];
          v39 = &__src[v14];
          if (v6 != v14 || result >= &v39[v9])
          {
            result = memmove(result, v39, 8 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[*a5 + v15];
          if (result < __src || result >= &__src[v10] || result != __src)
          {
            v33 = 8 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a5[2] = v6;
        v40 = a5[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a5[1] = v41;
          v42 = *a5;
          if (v10 <= 0)
          {
            v43 = *a5;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 8 * v15);
            }
          }

          v9 = *a5 - v21;
          if (__OFSUB__(*a5, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a5;
  v16 = __OFSUB__(v6, *a5);
  if (v6 < *a5)
  {
    goto LABEL_27;
  }

  v6 -= *a5;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a5);
    if (v15 < *a5)
    {
      goto LABEL_18;
    }

    v15 -= *a5;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a5);
    v15 += *a5;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a5;
    v19 = __OFSUB__(v7, *a5);
    if (v7 < *a5)
    {
      goto LABEL_38;
    }

    v7 -= *a5;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a5;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a4;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[v6];
        v44 = &__src[v21];
        if (v6 < v21 || result >= &v44[v10] || v6 != v21)
        {
          v45 = 8 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a5[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a5[1] = v47;
        v48 = *a5;
        if (v6 <= 0)
        {
          v43 = *a5;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a1 = &__src[v21];
          a1[1] = v42;
          a1[2] = v49;
          a1[3] = v43;
          *(a1 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[v9 - v13];
      if (v38 != __src || &v38[v7] <= __src)
      {
        result = memmove(__src, v38, 8 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[v6];
        v44 = &__src[v21];
        if (v6 < v21 || result >= &v44[v9] || v6 != v21)
        {
          v45 = 8 * v9;
LABEL_157:
          result = memmove(result, v44, v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 8 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = &__src[*a5];
      v36 = &v35[-v13];
      if (v36 != __src || v35 <= __src)
      {
        result = memmove(__src, v36, 8 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

unint64_t sub_183FCBACC@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X3>, unint64_t result@<X0>, uint64_t a4@<X1>, uint64_t *a5@<X2>)
{
  v9 = a5[1];
  v10 = v9 - a4;
  if (__OFSUB__(v9, a4))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a5[2];
  if (v10 <= a4)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a5;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a4;
    if (v14 + a4 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a4 > 0)
            {
              result = &__src[5 * v6];
              if (v6 < v14 || result >= &__src[5 * v14 + 5 * a4] || v6 != v14)
              {
                v33 = 40 * a4;
                v32 = &__src[5 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[5 * v6];
          v30 = &__src[5 * v14];
          if (v6 == v14 && result < &v30[5 * v31])
          {
            goto LABEL_76;
          }

          v29 = 40 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[5 * v6];
            v28 = &__src[5 * v14];
            if (v6 != v14 || result >= &v28[5 * v9])
            {
              result = memmove(result, v28, 40 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[5 * *a5 + 5 * v15], result == __src) && result < &__src[5 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[5 * v13];
              if (v13 > 0 || &v32[5 * v21] <= __src || v13)
              {
                v33 = 40 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 40 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[5 * v6];
          v39 = &__src[5 * v14];
          if (v6 != v14 || result >= &v39[5 * v9])
          {
            result = memmove(result, v39, 40 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[5 * *a5 + 5 * v15];
          if (result < __src || result >= &__src[5 * v10] || result != __src)
          {
            v33 = 40 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a5[2] = v6;
        v40 = a5[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a5[1] = v41;
          v42 = *a5;
          if (v10 <= 0)
          {
            v43 = *a5;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[5 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 40 * v15);
            }
          }

          v9 = *a5 - v21;
          if (__OFSUB__(*a5, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a5;
  v16 = __OFSUB__(v6, *a5);
  if (v6 < *a5)
  {
    goto LABEL_27;
  }

  v6 -= *a5;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a5);
    if (v15 < *a5)
    {
      goto LABEL_18;
    }

    v15 -= *a5;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a5);
    v15 += *a5;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a5;
    v19 = __OFSUB__(v7, *a5);
    if (v7 < *a5)
    {
      goto LABEL_38;
    }

    v7 -= *a5;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a5;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a4;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[5 * v6];
        v44 = &__src[5 * v21];
        if (v6 < v21 || result >= &v44[5 * v10] || v6 != v21)
        {
          v45 = 5 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a5[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a5[1] = v47;
        v48 = *a5;
        if (v6 <= 0)
        {
          v43 = *a5;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a1 = &__src[5 * v21];
          a1[1] = v42;
          a1[2] = v49;
          a1[3] = v43;
          *(a1 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[5 * v9 + -5 * v13];
      if (v38 != __src || &v38[5 * v7] <= __src)
      {
        result = memmove(__src, v38, 40 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[5 * v6];
        v44 = &__src[5 * v21];
        if (v6 < v21 || result >= &v44[5 * v9] || v6 != v21)
        {
          v45 = 5 * v9;
LABEL_157:
          result = memmove(result, v44, 8 * v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[5 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 40 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = 40;
      v36 = &__src[5 * *a5 + -5 * v13];
      if (v36 != __src || &__src[5 * *a5] <= __src)
      {
        result = memmove(__src, v36, 40 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

void sub_183FCC14C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = v1;
  v2 = type metadata accessor for SewingMachine.Phase(319, &v8);
  if (v3 <= 0x3F)
  {
    v8 = v2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      *&v9 = AssociatedTypeWitness;
      *(&v9 + 1) = MEMORY[0x1E69E6370];
      sub_183FCC5F4();
      if (v7 <= 0x3F)
      {
        v10 = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_183FCC22C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_27;
  }

  v11 = ((((v9 + 17) & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v18 = v16 - 1;
    if (v12)
    {
      v18 = 0;
      v19 = *a1;
    }

    else
    {
      v19 = 0;
    }

    return v8 + (v19 | v18) + 1;
  }

  if (v15)
  {
    v16 = *(a1 + v11);
    if (v16)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v20 = (a1 + v9 + 17) & ~v9;
  if (v7 < 0x7FFFFFFF)
  {
    v22 = *(((v20 + v10) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v6 + 48);

    return v21(v20);
  }
}

void sub_183FCC3DC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((((v9 + 17) & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v15 = 0;
    v16 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 17) & ~v9) + v10) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = a3 - v11 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v19 = (a1 + v9 + 17) & ~v9;
      if (v8 < 0x7FFFFFFF)
      {
        v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *(v21 + 8) = v22;
      }

      else
      {
        v20 = *(v7 + 56);

        v20(v19, a2);
      }

      return;
    }
  }

  if (((((v9 + 17) & ~v9) + v10) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((v9 + 17) & ~v9) + v10) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v18 = ~v11 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }
}

void sub_183FCC5F4()
{
  if (!qword_1ED4DFB80)
  {
    v0 = sub_18438FC08();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4DFB80);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_183FCC658(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FCC678(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_183FCC6A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FCC6C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void static CGAffineTransform.identity.getter(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

double CGAffineTransform.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_183F4872C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t CGAffineTransform.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_183F72F08();
  sub_184390208();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

BOOL sub_183FCC9C4(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t sub_183FCCA14()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1865ECC40](*&v6);
}

uint64_t sub_183FCCABC()
{
  sub_184390358();
  sub_183FCCA14();
  return sub_184390338();
}

uint64_t sub_183FCCB48()
{
  sub_1843902E8();
  sub_183FCCA14();
  return sub_184390348();
}

unint64_t sub_183FCCB9C()
{
  result = qword_1EA854B88;
  if (!qword_1EA854B88)
  {
    type metadata accessor for CGAffineTransform(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854B88);
  }

  return result;
}

CGPathRef CGPathRef.copy(dashingWithPhase:lengths:transform:)(uint64_t a1, _OWORD *a2, CGFloat a3)
{
  v4 = a2[1];
  *&v6.a = *a2;
  *&v6.c = v4;
  *&v6.tx = a2[2];
  result = CGPathCreateCopyByDashingPath(v3, &v6, a3, (a1 + 32), *(a1 + 16));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

CGPathRef CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)(CGLineCap lineCap, CGLineJoin lineJoin, _OWORD *a3, CGFloat a4, CGFloat a5)
{
  v6 = a3[1];
  *&v8.a = *a3;
  *&v8.c = v6;
  *&v8.tx = a3[2];
  result = CGPathCreateCopyByStrokingPath(v5, &v8, a4, lineCap, lineJoin, a5);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall CGPathRef.contains(_:using:transform:)(CGPoint _, CoreGraphics::CGPathFillRule using, CGAffineTransform *transform)
{
  v4 = *using;
  v5 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v5;
  *&v7.tx = *&transform->tx;
  return CGPathContainsPoint(v3, &v7, _, v4);
}

void CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)(_OWORD *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v8 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v8;
  *&v9.tx = a1[2];
  CGPathAddRoundedRect(v7, &v9, *&a2, a6, a7);
}

Swift::Void __swiftcall CGMutablePathRef.addQuadCurve(to:control:transform:)(CGPoint to, CGPoint control, CGAffineTransform *transform)
{
  y = to.y;
  v5 = *&transform->c;
  *&v6.a = *&transform->a;
  *&v6.c = v5;
  *&v6.tx = *&transform->tx;
  CGPathAddQuadCurveToPoint(v3, &v6, control.x, control.y, to.x, y);
}

Swift::Void __swiftcall CGMutablePathRef.addCurve(to:control1:control2:transform:)(CGPoint to, CGPoint control1, CGPoint control2, CGAffineTransform *transform)
{
  y = to.y;
  v6 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v6;
  *&v7.tx = *&transform->tx;
  CGPathAddCurveToPoint(v4, &v7, control1.x, control1.y, control2.x, control2.y, to.x, y);
}

Swift::Void __swiftcall CGMutablePathRef.addRect(_:transform:)(__C::CGRect _, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddRect(v2, &v4, _);
}

Swift::Void __swiftcall CGMutablePathRef.addRects(_:transform:)(Swift::OpaquePointer _, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddRects(v2, &v4, _._rawValue + 1, *(_._rawValue + 2));
}

Swift::Void __swiftcall CGMutablePathRef.addLines(between:transform:)(Swift::OpaquePointer between, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddLines(v2, &v4, between._rawValue + 2, *(between._rawValue + 2));
}

Swift::Void __swiftcall CGMutablePathRef.addEllipse(in:transform:)(__C::CGRect in, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddEllipseInRect(v2, &v4, in);
}

void CGMutablePathRef.addRelativeArc(center:radius:startAngle:delta:transform:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v7;
  *&v8.tx = a1[2];
  CGPathAddRelativeArc(v6, &v8, a2, a3, a4, a5, a6);
}

void CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)(char a1, _OWORD *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v8;
  *&v9.tx = a2[2];
  CGPathAddArc(v7, &v9, a3, a4, a5, a6, a7, a1 & 1);
}

CGPathRef __swiftcall CGPathRef.normalized(using:)(CoreGraphics::CGPathFillRule using)
{
  result = CGPathCreateCopyByNormalizing(v1, *using);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

CGPathRef CGPathRef.flattened(threshold:)(CGFloat a1)
{
  result = CGPathCreateCopyByFlattening(v1, a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

CFArrayRef CGPathRef.componentsSeparated(using:)(BOOL *a1)
{
  result = CGPathCreateSeparateComponents(v1, *a1);
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for CGPath(0);
    result = sub_18438FDB8();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FCD19C(_BYTE *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t (*)(uint64_t)))
{
  if (*a1)
  {
    return a3(v3, a2);
  }

  else
  {
    return a2(v3);
  }
}

void (*CGContextRef.textPosition.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = CGContextGetTextPosition(v1);
  return sub_183FCD268;
}

Swift::Void __swiftcall CGContextRef.showGlyphs(_:at:)(Swift::OpaquePointer _, Swift::OpaquePointer at)
{
  v3 = *(_._rawValue + 2);
  if (v3 == *(at._rawValue + 2))
  {
    CGContextShowGlyphsAtPositions(v2, _._rawValue + 16, at._rawValue + 2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_183FCD2E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t sub_183FCD3AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_183FCD444(v9);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

uint64_t (*sub_183FCD444(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = swift_modifyAtWritableKeyPath();
  return sub_183FCD4C0;
}

void sub_183FCD4C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t _CGContextInit<>.init(width:height:auxiliaryInfo:onResolve:onAllocate:onRelease:onError:)(size_t a1, size_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  if (*a3 == 5)
  {
    v35 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B90, &qword_18439C360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18439C350;
    *(inited + 32) = @"kCGAdaptiveMaximumBitDepth";
    *(inited + 40) = v16;
    v27 = @"kCGAdaptiveMaximumBitDepth";
    sub_183FCE438(inited);
    swift_setDeallocating();
    sub_183FCE528(inited + 32);
    type metadata accessor for CFString(0);
    sub_183FCE950(&qword_1EA8541E0, type metadata accessor for CFString, &unk_18439820C);
    v35 = sub_18438FC18();

    if (a4)
    {
LABEL_3:
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_183FCE71C;
      *(v18 + 24) = v17;
      v45 = sub_183FCE720;
      v46 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_183FCDA2C;
      v44 = &block_descriptor_30;
      v34 = _Block_copy(&aBlock);

      v38 = a4;
      v39 = a5;
      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v33 = 0;
      v21 = a9;
      v22 = a10;
      if (a8)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v34 = 0;
  v38 = a4;
  v39 = a5;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_183FCE670;
  *(v20 + 24) = v19;
  v45 = sub_183FCE6D8;
  v46 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_183FCDA88;
  v44 = &block_descriptor_21;
  v33 = _Block_copy(&aBlock);

  v21 = a9;
  v22 = a10;
  if (a8)
  {
LABEL_5:
    v23 = swift_allocObject();
    *(v23 + 16) = a8;
    *(v23 + 24) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_183FCE5B4;
    *(v24 + 24) = v23;
    v45 = sub_183FCE9AC;
    v46 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_183FCE9A8;
    v44 = &block_descriptor_12_0;
    v25 = _Block_copy(&aBlock);

    goto LABEL_10;
  }

LABEL_9:
  v25 = 0;
LABEL_10:
  if (v22)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v22;
    *(v28 + 24) = a11;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_183FCE590;
    *(v29 + 24) = v28;
    v45 = sub_183FCE598;
    v46 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_183FCE9A8;
    v44 = &block_descriptor_4;
    v30 = _Block_copy(&aBlock);
  }

  else
  {
    v30 = 0;
  }

  Adaptive = CGBitmapContextCreateAdaptive(a1, a2, v35, v34, v33, v25, v30);
  sub_183F742A0(v22, a11);
  sub_183F742A0(a8, v21);
  sub_183F742A0(a6, a7);
  sub_183F742A0(v38, v39);
  _Block_release(v30);
  _Block_release(v25);
  _Block_release(v33);
  _Block_release(v34);

  if (Adaptive)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}