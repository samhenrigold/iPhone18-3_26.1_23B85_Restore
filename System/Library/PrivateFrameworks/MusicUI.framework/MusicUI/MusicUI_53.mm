_BYTE *_s10TargetTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t _s10ActionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10ActionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13ActionContextOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s16ActionDetailsKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16ActionDetailsKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11FeatureNameOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xCD)
  {
    if (a2 + 51 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 51) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 52;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v5 = v6 - 52;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11FeatureNameOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xCD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCC)
  {
    v6 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
          *result = a2 + 51;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8PageTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8PageTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BF4374(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_216BF43B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216BF4434()
{
  result = qword_27CAC5AF8;
  if (!qword_27CAC5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5B00, &unk_217052C10);
    sub_216BF44B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AF8);
  }

  return result;
}

unint64_t sub_216BF44B8()
{
  result = qword_27CAC5B08;
  if (!qword_27CAC5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5B08);
  }

  return result;
}

uint64_t sub_216BF450C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = 0x4034000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CD0, &unk_21701B450);
  type metadata accessor for MinimumLayoutMargins(0);
  sub_217007FF4();
  v24 = a1;
  sub_216681B04(a1, a4 + *(v8 + 52), &qword_27CAB8C98, &unk_21702DAD0);
  *a4 = a2;
  a4[1] = a3;
  v25 = a4;
  sub_216B61C70();
  sub_21700DF14();
  sub_21700DF14();
  v9 = sub_21700E384();
  v26 = a3;
  sub_216BDD32C(a2);
  v10 = 0;
  v11 = *(a3 + 16);
  for (i = a3 + 32; ; i += 112)
  {
    if (v11 == v10)
    {
LABEL_14:
      sub_216697664(v24, &qword_27CAB8C98, &unk_21702DAD0);

      v25[2] = v9;
      return result;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    v26 = v10;
    sub_216970008(i, v27);
    if (!*&v27[8])
    {
      goto LABEL_14;
    }

    v13 = v26;
    v26 = *v27;
    *v27 = *&v27[8];
    *&v27[16] = *&v27[24];
    *&v27[32] = *&v27[40];
    *&v27[48] = *&v27[56];
    *&v27[64] = *&v27[72];
    *&v27[80] = *&v27[88];
    *&v27[96] = v28;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_216E681BC();
    if (__OFADD__(v9[2], (v15 & 1) == 0))
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B50, &qword_217052D10);
    if (sub_21700F554())
    {
      v18 = sub_216E681BC();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

      v16 = v18;
    }

    if (v17)
    {
      *(v9[7] + 8 * v16) = v13;
      sub_216970064(&v26);
    }

    else
    {
      v9[(v16 >> 6) + 8] |= 1 << v16;
      sub_216970008(&v26, v9[6] + 112 * v16);
      *(v9[7] + 8 * v16) = v13;
      sub_216970064(&v26);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v9[2] = v22;
    }

    ++v10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21700F824();
  __break(1u);
  return result;
}

void *sub_216BF47DC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = result;
  if (a6)
  {
    v11 = a6;
LABEL_5:
    v13 = *(a2 + 16);
    v14 = a2 + 32;
    sub_21700DF14();
    if (v13)
    {
      while (1)
      {
        sub_216970008(v14, v20);
        v15 = v20[12] == a5 && v20[13] == v11;
        if (v15 || (sub_21700F7D4() & 1) != 0)
        {
          break;
        }

        sub_216970064(v20);
        v14 += 112;
        if (!--v13)
        {
          goto LABEL_12;
        }
      }

      memcpy(__dst, v20, sizeof(__dst));
      goto LABEL_22;
    }

LABEL_12:
    v16 = v8[2];
    v17 = (v8 + 4);
    if (v16)
    {
      while (1)
      {
        sub_216970008(v17, v20);
        v18 = v20[12] == a5 && v20[13] == v11;
        if (v18 || (sub_21700F7D4() & 1) != 0)
        {
          break;
        }

        sub_216970064(v20);
        v17 += 112;
        if (!--v16)
        {
          goto LABEL_19;
        }
      }

      v19 = v20;
      return memcpy(a7, v19, 0x70uLL);
    }

LABEL_19:

LABEL_20:
    a7[5] = 0u;
    a7[6] = 0u;
    a7[3] = 0u;
    a7[4] = 0u;
    a7[1] = 0u;
    a7[2] = 0u;
    *a7 = 0u;
    return result;
  }

  v11 = a4;
  if (a4)
  {
    sub_21700DF14();
    a5 = a3;
    goto LABEL_5;
  }

  if (!*(a2 + 16))
  {
    if (result[2])
    {
      return sub_216970008((result + 4), a7);
    }

    goto LABEL_20;
  }

  sub_216970008(a2 + 32, __dst);
LABEL_22:
  v19 = __dst;
  return memcpy(a7, v19, 0x70uLL);
}

void sub_216BF4980(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v2[17];
  v15 = *(v2 + 9);
  v9 = *(a1 + 32);
  v10 = v2[20];
  v11 = v2[21];
  v13 = *(v2 + 176);
  v12 = *v2;
  KeyPath = swift_getKeyPath();
  v19 = 0;

  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();

  swift_unknownObjectRetain();

  sub_216BF47DC(v4, v5, v6, v7, 0, 0, __src);
  if (*(&__src[0] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(&v18[7], __dst, 0x70uLL);
    *a2 = v12;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v8;
    *(a2 + 3) = v15;
    a2[8] = v9;
    a2[9] = v10;
    a2[10] = v11;
    *(a2 + 88) = v13;
    a2[12] = KeyPath;
    a2[13] = 0;
    a2[14] = 0;
    a2[15] = 0;
    *(a2 + 128) = v19;
    memcpy(a2 + 129, v18, 0x77uLL);
  }

  else
  {

    swift_unknownObjectRelease();

    sub_216697664(__src, &qword_27CABA698, &qword_217020E70);

    bzero(a2, 0xF8uLL);
  }

  a2[31] = 0;
}

uint64_t sub_216BF4B6C(uint64_t a1)
{
  *(v2 + 1752) = v1;
  *(v2 + 1744) = a1;
  return OUTLINED_FUNCTION_0_128(sub_216BF4B88);
}

uint64_t sub_216BF4B88()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[219];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v2 = v0[2];
  v0[220] = v2;
  sub_216BF6318(v1, (v0 + 167));
  v3 = swift_allocObject();
  v0[221] = v3;
  memcpy((v3 + 16), v0 + 167, 0xB1uLL);
  type metadata accessor for ReplayGradientImageGenerator();
  swift_asyncLet_begin();
  sub_216BF6318(v1, (v0 + 190));
  v4 = swift_allocObject();
  v0[222] = v4;
  *(v4 + 16) = v2;
  memcpy((v4 + 24), v0 + 190, 0xB1uLL);

  swift_asyncLet_begin();
  v5 = OUTLINED_FUNCTION_5_100();

  return MEMORY[0x282200930](v5, v6, v7, v8);
}

uint64_t sub_216BF4D04()
{
  OUTLINED_FUNCTION_33();
  v1[223] = v0;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_5_100();

    return MEMORY[0x282200920](v2, v3, v4, v5);
  }

  else
  {
    v1[224] = v1[213];
    v1[225] = v1[214];
    v1[226] = v1[215];
    v1[227] = v1[216];
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();

    return MEMORY[0x282200928](v1 + 2);
  }
}

uint64_t sub_216BF4DE8()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 1824) = *(v0 + 1736);

  v1 = OUTLINED_FUNCTION_5_100();

  return MEMORY[0x282200920](v1, v2, v3, v4);
}

uint64_t sub_216BF4E88()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1744);
  v5 = *(v0 + 1792);
  v6 = *(v0 + 1808);

  *v2 = v5;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_216BF4F70()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216BF4FE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_216BF5008, 0, 0);
}

uint64_t sub_216BF5008()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  type metadata accessor for ReplayGradientImageGenerator();
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_216BF50B4;

  return sub_216E510B0(v2, v3);
}

uint64_t sub_216BF50B4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  return MEMORY[0x2822009F8](sub_216BF51A8, 0, 0);
}

uint64_t sub_216BF51CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216BF51F0, 0, 0);
}

uint64_t sub_216BF51F0()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_216BF52A8;

  return sub_216CC92F4();
}

uint64_t sub_216BF52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_11();
  *v14 = v13;

  if (!v4)
  {
    v15 = *(v11 + 16);
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_216BF53CC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B10, &qword_217052C98);
  return sub_216BF541C(v2, a2 + *(v4 + 44));
}

uint64_t sub_216BF541C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B18, &unk_217052CA0);
  MEMORY[0x28223BE20](v78);
  v80 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = sub_2170090F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CD0, &unk_21701B450);
  MEMORY[0x28223BE20](v10);
  v12 = (&v72 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B20, &qword_217052CB0);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B28, &qword_217052CB8);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = *(a1 + 1);
  v22 = *(v21 + 16);
  v81 = &v72 - v19;
  if (v22)
  {
    v73 = v8;
    *&v74 = v7;
    v75 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0, &unk_217020F10);
    sub_21700AED4();
    v23 = *(a1 + 2);
    sub_21700DF14();
    sub_21700DF14();
    sub_216BF450C(v87, v21, v23, v12);
    sub_21700AED4();
    sub_216BF5EB8(v87, v21, v23, *(a1 + 3), *(a1 + 4));
    sub_216697664(v87, &qword_27CAB8C98, &unk_21702DAD0);
    type metadata accessor for ObjectGraph(0);
    sub_2166D9530(&qword_27CAB8CC8, &qword_27CAB8CD0, &unk_21701B450, &unk_21706E7E8);
    sub_21700A1E4();

    sub_216697664(v12, &qword_27CAB8CD0, &unk_21701B450);
    v24 = sub_217009CB4();
    v25 = *(a1 + 13);
    if (*(a1 + 128) != 1)
    {
      v27 = *(a1 + 12);
      v28 = *(a1 + 14);
      v29 = *(a1 + 15);

      sub_21700ED94();
      v30 = sub_217009C34();
      sub_217007BC4();

      v31 = v76;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v27, v25, v28, v29, 0);
      (*(v73 + 8))(v31, v74);
    }

    sub_217007F24();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B30, &qword_217052CC0) + 36)];
    *v40 = v24;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v41 = sub_217009CA4();
    sub_217007F24();
    v13 = v75;
    v42 = &v15[*(v75 + 36)];
    *v42 = v41;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    v20 = v81;
    sub_21674A83C(v15, v81);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v26, 1, v13);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0, &unk_217020F10);
  sub_21700AEB4();
  sub_216681B04(&v88, v85, &qword_27CAC5B38, &unk_217072590);
  sub_216970064(v87);
  v47 = *(a1 + 5);
  v49 = *(a1 + 9);
  v48 = *(a1 + 10);
  LODWORD(v75) = *(a1 + 88);
  v50 = *a1;
  type metadata accessor for AnimatedTextListItemViewCoordinator();
  v51 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
  swift_allocObject();

  v74 = *(a1 + 3);
  swift_unknownObjectRetain();
  *(v51 + 16) = sub_217007D84();
  *(v6 + 18) = v51;
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B4CF0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  *(v6 + 20) = sub_217008CF4();
  *(v6 + 21) = v52;
  v53 = type metadata accessor for ReplayPageContentView(0);
  v54 = *(v53 + 72);
  *&v6[v54] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v55 = &v6[*(v53 + 76)];
  type metadata accessor for ReplayToolbarPagePresenter(0);
  sub_2166B4CF0(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter, &unk_21706CCA4);
  *v55 = sub_217008CF4();
  v55[1] = v56;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  *(v6 + 9) = v82[0];
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  *(v6 + 10) = v82[0];
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  *(v6 + 12) = v82[0];
  type metadata accessor for AppDestinationPageProviderBox();
  sub_21700E094();
  *(v6 + 5) = v82[0];
  type metadata accessor for CloudLibraryStatusController(0);
  sub_21700E094();
  *(v6 + 11) = v82[0];
  type metadata accessor for UnifiedMessages.Coordinator(0);
  sub_21700E094();
  *(v6 + 19) = v82[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
  sub_21700E094();
  v57 = v83;
  v58 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  *(v6 + 7) = (*(v58 + 8))(v57, v58);
  *(v6 + 8) = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  type metadata accessor for MusicTabChangePublisher(0);
  sub_21700E094();
  sub_2166B4CF0(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher, &unk_2170554F8);
  *(v6 + 16) = sub_217008684();
  *(v6 + 17) = v60;
  v61 = swift_allocObject();
  v62 = v85[1];
  *(v61 + 16) = v85[0];
  *(v61 + 32) = v62;
  *(v61 + 48) = v86;
  *(v61 + 56) = v50;
  *v6 = sub_216BF6264;
  *(v6 + 1) = v61;
  v6[16] = 0;
  *(v6 + 6) = v47;
  *(v6 + 24) = v74;
  *(v6 + 13) = v49;
  *(v6 + 14) = v48;
  v6[120] = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B40, &qword_217052CF8);
  sub_21700AEB4();
  v63 = *(a1 + 8);
  type metadata accessor for ReplayGradientImageGenerator();
  sub_2166B4CF0(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator, &unk_217067B0C);
  v64 = sub_217007D54();
  v65 = &v6[*(v78 + 36)];
  *v65 = v64;
  v65[1] = v63;
  v66 = v81;
  v67 = v77;
  sub_21674A8EC(v81, v77);
  v68 = v80;
  sub_216681B04(v6, v80, &qword_27CAC5B18, &unk_217052CA0);
  v69 = v79;
  sub_21674A8EC(v67, v79);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B48, &unk_217052D00);
  sub_216681B04(v68, v69 + *(v70 + 48), &qword_27CAC5B18, &unk_217052CA0);

  sub_216697664(v6, &qword_27CAC5B18, &unk_217052CA0);
  sub_21674A954(v66);
  sub_216697664(v68, &qword_27CAC5B18, &unk_217052CA0);
  return sub_21674A954(v67);
}

uint64_t sub_216BF5EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-1] - v15;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216681B04(a1, &v22, &qword_27CAB8C98, &unk_21702DAD0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  (*(v11 + 16))(v16, v13, v10);
  sub_216A11BE0();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700D5A4();
  sub_216BF6270(v21);
  v17 = *(v11 + 8);
  v17(v13, v10);
  v18 = sub_216E9C508(v16);
  v17(v16, v10);
  return v18;
}

uint64_t sub_216BF60A8(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_216BF6140;

  return sub_216BF4B6C(v1 + 16);
}

uint64_t sub_216BF6140()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (!v0)
  {
    v7 = *(v3 + 16);
    v8 = *(v3 + 32);
    v9 = *(v3 + 56);
    *(v9 + 32) = *(v3 + 48);
    *v9 = v7;
    *(v9 + 16) = v8;
  }

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_216BF62C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MinimumLayoutMargins(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  result = sub_217006704();
  *a1 = v2;
  return result;
}

uint64_t sub_216BF6350()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_216BF63E8;

  return sub_216BF4FE8(v3, v0 + 16);
}

uint64_t sub_216BF63E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216BF64D0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_216BF6658;

  return sub_216BF51CC(v3, v4, v0 + 24);
}

uint64_t sub_216BF658C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_216BF65CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216BF665C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v274 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = v274 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v274 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v274[52] = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v274[53] = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v275 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v276 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v277 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v278 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v279 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  v280 = v79;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_4();
  v281 = v81;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_4();
  v282 = v83;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6_4();
  v283 = v85;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_4();
  v284 = v87;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6_4();
  v285 = v89;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6_4();
  v286 = v91;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_4();
  v287 = v93;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_6_4();
  v288 = v95;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_6_4();
  v289 = v97;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_6_4();
  v290 = v99;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v100);
  v291 = v274 - v101;
  __swift_allocate_value_buffer(v102, qword_280E73D98);
  v292 = __swift_project_value_buffer(v0, qword_280E73D98);
  sub_2166F1194();
  sub_2166F1214();
  sub_21700CE74();
  type metadata accessor for AccountSignInAction(0);
  sub_216BF9930(qword_280E3E380, type metadata accessor for AccountSignInAction, &unk_21703FD64);
  sub_216BF9930(&qword_280E3E378, type metadata accessor for AccountSignInAction, &unk_21703FD34);
  OUTLINED_FUNCTION_5_101(1);
  sub_21700CE64();
  v103 = *(v1 + 8);
  v103(v3, v0);
  type metadata accessor for AddItemsToPlaylistAction(0);
  sub_216BF9930(qword_280E36FA0, type metadata accessor for AddItemsToPlaylistAction, &unk_217062E8C);
  sub_216BF9930(&qword_280E36F98, type metadata accessor for AddItemsToPlaylistAction, &unk_217062E5C);
  OUTLINED_FUNCTION_5_101(4);
  sub_21700CE64();
  v104 = OUTLINED_FUNCTION_45();
  (v103)(v104);
  type metadata accessor for ShowInAppleMusicAction(0);
  sub_216BF9930(&qword_280E48160, type metadata accessor for ShowInAppleMusicAction, &unk_21704BC48);
  sub_216BF9930(&qword_280E48158, type metadata accessor for ShowInAppleMusicAction, &unk_21704BC18);
  OUTLINED_FUNCTION_5_101(64);
  sub_21700CE64();
  v105 = OUTLINED_FUNCTION_82_1();
  (v103)(v105);
  type metadata accessor for ShowInLibraryAction(0);
  sub_216BF9930(&qword_280E3D110, type metadata accessor for ShowInLibraryAction, &unk_21704A824);
  sub_216BF9930(&qword_280E3D108, type metadata accessor for ShowInLibraryAction, &unk_21704A7F4);
  OUTLINED_FUNCTION_5_101(65);
  sub_21700CE64();
  v103(v8, v0);
  type metadata accessor for ShowIniTunesStoreAction(0);
  sub_216BF9930(qword_280E37500, type metadata accessor for ShowIniTunesStoreAction, &unk_217053EA8);
  OUTLINED_FUNCTION_10_75(&qword_280E374F8);
  OUTLINED_FUNCTION_5_101(66);
  v106 = v274[0];
  sub_21700CE64();
  v103(v11, v0);
  type metadata accessor for NewPlaylistAction(0);
  sub_216BF9930(qword_280E3FE68, type metadata accessor for NewPlaylistAction, &unk_217044E60);
  OUTLINED_FUNCTION_10_75(&qword_280E3FE60);
  v293 = 0;
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v103(v106, v0);
  type metadata accessor for ApproveAllFollowRequestsAction(0);
  sub_216BF9930(&qword_280E30E70, type metadata accessor for ApproveAllFollowRequestsAction, &unk_217035060);
  OUTLINED_FUNCTION_10_75(&qword_280E30E68);
  OUTLINED_FUNCTION_5_101(3);
  OUTLINED_FUNCTION_2_136(v107, v108, v109, v110);
  v111 = OUTLINED_FUNCTION_45();
  (v103)(v111);
  type metadata accessor for BlockUserAction(0);
  sub_216BF9930(&qword_280E42938, type metadata accessor for BlockUserAction, &unk_217035654);
  OUTLINED_FUNCTION_10_75(&qword_280E42930);
  OUTLINED_FUNCTION_5_101(7);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v112 = OUTLINED_FUNCTION_82_1();
  (v103)(v112);
  type metadata accessor for CompleteSocialOnboardingAction(0);
  sub_216BF9930(qword_280E30DD0, type metadata accessor for CompleteSocialOnboardingAction, &unk_217053220);
  OUTLINED_FUNCTION_10_75(&qword_280E30DC8);
  OUTLINED_FUNCTION_5_101(9);
  OUTLINED_FUNCTION_2_136(v113, v114, v115, v116);
  v117 = OUTLINED_FUNCTION_45();
  (v103)(v117);
  type metadata accessor for OpenContextualMenuAction(0);
  sub_216BF9930(&qword_280E36638, type metadata accessor for OpenContextualMenuAction, &unk_2170343FC);
  OUTLINED_FUNCTION_10_75(&qword_280E36630);
  OUTLINED_FUNCTION_5_101(28);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v118 = OUTLINED_FUNCTION_82_1();
  (v103)(v118);
  type metadata accessor for CreateArtistStationAction(0);
  sub_216BF9930(qword_280E35A98, type metadata accessor for CreateArtistStationAction, &unk_21702D11C);
  OUTLINED_FUNCTION_10_75(&qword_280E35A90);
  OUTLINED_FUNCTION_5_101(11);
  OUTLINED_FUNCTION_2_136(v119, v120, v121, v122);
  v123 = OUTLINED_FUNCTION_45();
  (v103)(v123);
  type metadata accessor for CreateStationAction(0);
  sub_216BF9930(qword_280E3E238, type metadata accessor for CreateStationAction, &unk_21703C794);
  OUTLINED_FUNCTION_10_75(&qword_280E3E230);
  OUTLINED_FUNCTION_5_101(12);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v124 = OUTLINED_FUNCTION_82_1();
  (v103)(v124);
  type metadata accessor for DismissArtistFavoritingTooltipAction(0);
  sub_216BF9930(qword_280E2E1D0, type metadata accessor for DismissArtistFavoritingTooltipAction, &unk_21703BD48);
  OUTLINED_FUNCTION_10_75(&qword_280E2E1C8);
  OUTLINED_FUNCTION_5_101(14);
  OUTLINED_FUNCTION_2_136(v125, v126, v127, v128);
  v129 = OUTLINED_FUNCTION_45();
  (v103)(v129);
  type metadata accessor for DismissModalPresentationAction(0);
  sub_216BF9930(qword_280E30D30, type metadata accessor for DismissModalPresentationAction, &unk_21706A900);
  OUTLINED_FUNCTION_10_75(&qword_280E30D28);
  OUTLINED_FUNCTION_5_101(15);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v130 = OUTLINED_FUNCTION_82_1();
  (v103)(v130);
  type metadata accessor for DismissSearchFocusAction(0);
  sub_216BF9930(qword_280E36AD0, type metadata accessor for DismissSearchFocusAction, &unk_21701ECCC);
  OUTLINED_FUNCTION_10_75(&qword_280E36AC8);
  OUTLINED_FUNCTION_5_101(16);
  OUTLINED_FUNCTION_2_136(v131, v132, v133, v134);
  v135 = OUTLINED_FUNCTION_45();
  (v103)(v135);
  type metadata accessor for DownloadAction(0);
  sub_216BF9930(&qword_280E43758, type metadata accessor for DownloadAction, &unk_21701BA68);
  OUTLINED_FUNCTION_10_75(&qword_280E43750);
  OUTLINED_FUNCTION_5_101(17);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v136 = OUTLINED_FUNCTION_82_1();
  (v103)(v136);
  type metadata accessor for FindFriendsBatchFollowAction(0);
  sub_216BF9930(&qword_280E32468, type metadata accessor for FindFriendsBatchFollowAction, &unk_21704A948);
  OUTLINED_FUNCTION_10_75(&qword_280E32460);
  OUTLINED_FUNCTION_5_101(19);
  OUTLINED_FUNCTION_2_136(v137, v138, v139, v140);
  v141 = OUTLINED_FUNCTION_45();
  (v103)(v141);
  type metadata accessor for FlowAction(0);
  sub_216BF9930(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  OUTLINED_FUNCTION_10_75(&qword_280E45BB0);
  OUTLINED_FUNCTION_5_101(20);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v142 = OUTLINED_FUNCTION_82_1();
  (v103)(v142);
  type metadata accessor for FollowUserAction(0);
  sub_216BF9930(qword_280E412C0, type metadata accessor for FollowUserAction, &unk_217047504);
  OUTLINED_FUNCTION_10_75(&qword_280E412B8);
  OUTLINED_FUNCTION_5_101(21);
  OUTLINED_FUNCTION_2_136(v143, v144, v145, v146);
  v147 = OUTLINED_FUNCTION_45();
  (v103)(v147);
  type metadata accessor for FollowRequestResponseAction(0);
  sub_216BF9930(&qword_280E33BB8, type metadata accessor for FollowRequestResponseAction, &unk_2170705AC);
  OUTLINED_FUNCTION_10_75(&qword_280E33BB0);
  OUTLINED_FUNCTION_5_101(22);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v148 = OUTLINED_FUNCTION_82_1();
  (v103)(v148);
  type metadata accessor for GetInfoAction(0);
  sub_216BF9930(&qword_280E43F58, type metadata accessor for GetInfoAction, &unk_217013C48);
  OUTLINED_FUNCTION_10_75(&qword_280E43F50);
  OUTLINED_FUNCTION_5_101(23);
  OUTLINED_FUNCTION_2_136(v149, v150, v151, v152);
  v153 = OUTLINED_FUNCTION_45();
  (v103)(v153);
  type metadata accessor for HideAllPlaylistsAction(0);
  sub_216BF9930(qword_280E39410, type metadata accessor for HideAllPlaylistsAction, &unk_217037578);
  OUTLINED_FUNCTION_10_75(&qword_280E39408);
  OUTLINED_FUNCTION_5_101(24);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v154 = OUTLINED_FUNCTION_82_1();
  (v103)(v154);
  type metadata accessor for IntentAction(0);
  sub_216BF9930(qword_280E44C18, type metadata accessor for IntentAction, &unk_217025B80);
  OUTLINED_FUNCTION_10_75(&qword_280E44C10);
  OUTLINED_FUNCTION_5_101(25);
  OUTLINED_FUNCTION_2_136(v155, v156, v157, v158);
  v159 = OUTLINED_FUNCTION_45();
  (v103)(v159);
  type metadata accessor for InvalidationAction(0);
  sub_216BF9930(qword_280E3EDC0, type metadata accessor for InvalidationAction, &unk_21704DA94);
  OUTLINED_FUNCTION_10_75(&qword_280E3EDB8);
  OUTLINED_FUNCTION_5_101(26);
  v160 = v274[19];
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v161 = OUTLINED_FUNCTION_82_1();
  (v103)(v161);
  sub_21700D3B4();
  v293 = 10;
  v162 = v274[20];
  sub_21700CE64();
  v103(v160, v0);
  sub_21700CE94();
  v293 = 18;
  v163 = v274[21];
  sub_21700CE64();
  v103(v162, v0);
  sub_21700E084();
  v293 = 2;
  sub_21700CE64();
  v103(v163, v0);
  type metadata accessor for ModalFlowAction(0);
  sub_216BF9930(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
  OUTLINED_FUNCTION_10_75(&qword_280E426A0);
  OUTLINED_FUNCTION_5_101(27);
  OUTLINED_FUNCTION_2_136(v164, v165, v166, v167);
  v168 = OUTLINED_FUNCTION_45();
  (v103)(v168);
  type metadata accessor for AllowDeviceNotificationSettingsAction(0);
  sub_216BF9930(qword_280E2DE90, type metadata accessor for AllowDeviceNotificationSettingsAction, &unk_217015BE8);
  OUTLINED_FUNCTION_10_75(&qword_280E2DE88);
  OUTLINED_FUNCTION_5_101(29);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v169 = OUTLINED_FUNCTION_82_1();
  (v103)(v169);
  type metadata accessor for OpenExternalURLAction(0);
  sub_216BF9930(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
  OUTLINED_FUNCTION_10_75(&qword_280E3A6A8);
  OUTLINED_FUNCTION_5_101(30);
  OUTLINED_FUNCTION_2_136(v170, v171, v172, v173);
  v174 = OUTLINED_FUNCTION_45();
  (v103)(v174);
  type metadata accessor for OpenFinancePageAction(0);
  sub_216BF9930(qword_280E3A550, type metadata accessor for OpenFinancePageAction, &unk_2170186D4);
  OUTLINED_FUNCTION_10_75(&qword_280E3A548);
  OUTLINED_FUNCTION_5_101(31);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v175 = OUTLINED_FUNCTION_82_1();
  (v103)(v175);
  type metadata accessor for OpenPurchaseStorePageAction(0);
  sub_216BF9930(qword_280E33728, type metadata accessor for OpenPurchaseStorePageAction, &unk_21705D9CC);
  OUTLINED_FUNCTION_10_75(&qword_280E33720);
  OUTLINED_FUNCTION_5_101(32);
  OUTLINED_FUNCTION_2_136(v176, v177, v178, v179);
  v180 = OUTLINED_FUNCTION_45();
  (v103)(v180);
  type metadata accessor for EngagementEventAction(0);
  sub_216BF9930(qword_280E3A9B8, type metadata accessor for EngagementEventAction, &unk_217019148);
  OUTLINED_FUNCTION_10_75(&qword_280E3A9B0);
  OUTLINED_FUNCTION_5_101(33);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v181 = OUTLINED_FUNCTION_82_1();
  (v103)(v181);
  type metadata accessor for OpenUnifiedMessagesSheetAction(0);
  sub_216BF9930(qword_280E30B28, type metadata accessor for OpenUnifiedMessagesSheetAction, &unk_217066858);
  OUTLINED_FUNCTION_10_75(&qword_280E30B20);
  OUTLINED_FUNCTION_5_101(34);
  OUTLINED_FUNCTION_2_136(v182, v183, v184, v185);
  v186 = OUTLINED_FUNCTION_45();
  (v103)(v186);
  type metadata accessor for UnifiedMessagesRequestAction(0);
  sub_216BF9930(qword_280E31D20, type metadata accessor for UnifiedMessagesRequestAction, &unk_21703BDD0);
  OUTLINED_FUNCTION_10_75(&qword_280E31D18);
  OUTLINED_FUNCTION_5_101(35);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v187 = OUTLINED_FUNCTION_82_1();
  (v103)(v187);
  type metadata accessor for PausePlaybackAction(0);
  sub_216BF9930(qword_280E3D7E0, type metadata accessor for PausePlaybackAction, &unk_217045644);
  OUTLINED_FUNCTION_10_75(&qword_280E3D7D8);
  OUTLINED_FUNCTION_5_101(36);
  OUTLINED_FUNCTION_2_136(v188, v189, v190, v191);
  v192 = OUTLINED_FUNCTION_45();
  (v103)(v192);
  type metadata accessor for PlayAction(0);
  sub_216BF9930(qword_280E45678, type metadata accessor for PlayAction, &unk_2170160FC);
  OUTLINED_FUNCTION_10_75(&qword_280E45670);
  OUTLINED_FUNCTION_5_101(38);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v193 = OUTLINED_FUNCTION_82_1();
  (v103)(v193);
  type metadata accessor for PlayLaterAction(0);
  sub_216BF9930(qword_280E42580, type metadata accessor for PlayLaterAction, &unk_2170510AC);
  OUTLINED_FUNCTION_10_75(&qword_280E42578);
  OUTLINED_FUNCTION_5_101(39);
  OUTLINED_FUNCTION_2_136(v194, v195, v196, v197);
  v198 = OUTLINED_FUNCTION_45();
  (v103)(v198);
  type metadata accessor for PlayNextAction(0);
  sub_216BF9930(qword_280E430E0, type metadata accessor for PlayNextAction, &unk_21704ADC4);
  OUTLINED_FUNCTION_10_75(&qword_280E430D8);
  OUTLINED_FUNCTION_5_101(40);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v199 = OUTLINED_FUNCTION_82_1();
  (v103)(v199);
  type metadata accessor for PopAction(0);
  sub_216BF9930(&qword_280E2B650, type metadata accessor for PopAction, &unk_217063020);
  OUTLINED_FUNCTION_10_75(&qword_280E2B648);
  OUTLINED_FUNCTION_5_101(42);
  OUTLINED_FUNCTION_2_136(v200, v201, v202, v203);
  v204 = OUTLINED_FUNCTION_45();
  (v103)(v204);
  type metadata accessor for PopToRootAction(0);
  sub_216BF9930(qword_280E424C0, type metadata accessor for PopToRootAction, &unk_217059F54);
  OUTLINED_FUNCTION_10_75(&qword_280E424B8);
  OUTLINED_FUNCTION_5_101(41);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v205 = OUTLINED_FUNCTION_82_1();
  (v103)(v205);
  type metadata accessor for PresentAlertAction(0);
  sub_216BF9930(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  OUTLINED_FUNCTION_10_75(&qword_280E3EB10);
  OUTLINED_FUNCTION_5_101(43);
  OUTLINED_FUNCTION_2_136(v206, v207, v208, v209);
  v210 = OUTLINED_FUNCTION_45();
  (v103)(v210);
  type metadata accessor for ShareImageRequestAction(0);
  sub_216BF9930(&qword_280E37688, type metadata accessor for ShareImageRequestAction, &unk_217040948);
  OUTLINED_FUNCTION_10_75(&qword_280E37680);
  OUTLINED_FUNCTION_5_101(63);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v211 = OUTLINED_FUNCTION_82_1();
  (v103)(v211);
  type metadata accessor for PromptBlockUserAction(0);
  sub_216BF9930(qword_280E39F40, type metadata accessor for PromptBlockUserAction, &unk_21706DC98);
  OUTLINED_FUNCTION_10_75(&qword_280E39F38);
  OUTLINED_FUNCTION_5_101(44);
  OUTLINED_FUNCTION_2_136(v212, v213, v214, v215);
  v216 = OUTLINED_FUNCTION_45();
  (v103)(v216);
  type metadata accessor for PromptRemoveFollowerAction(0);
  sub_216BF9930(&qword_280E34220, type metadata accessor for PromptRemoveFollowerAction, &unk_21706400C);
  OUTLINED_FUNCTION_10_75(&qword_280E34218);
  OUTLINED_FUNCTION_5_101(45);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v217 = OUTLINED_FUNCTION_82_1();
  (v103)(v217);
  type metadata accessor for RemoveAppWithAccessAction(0);
  sub_216BF9930(qword_280E35180, type metadata accessor for RemoveAppWithAccessAction, &unk_2170456CC);
  OUTLINED_FUNCTION_10_75(&qword_280E35178);
  OUTLINED_FUNCTION_5_101(46);
  OUTLINED_FUNCTION_2_136(v218, v219, v220, v221);
  v222 = OUTLINED_FUNCTION_45();
  (v103)(v222);
  type metadata accessor for RemoveDownloadAction(0);
  sub_216BF9930(&qword_280E3BAE0, type metadata accessor for RemoveDownloadAction, &unk_217034860);
  OUTLINED_FUNCTION_10_75(&qword_280E3BAD8);
  OUTLINED_FUNCTION_5_101(47);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v223 = OUTLINED_FUNCTION_82_1();
  (v103)(v223);
  type metadata accessor for RemoveFollowerAction(0);
  sub_216BF9930(qword_280E3BA38, type metadata accessor for RemoveFollowerAction, &unk_217019DD8);
  OUTLINED_FUNCTION_10_75(&qword_280E3BA30);
  OUTLINED_FUNCTION_5_101(48);
  OUTLINED_FUNCTION_2_136(v224, v225, v226, v227);
  v228 = OUTLINED_FUNCTION_45();
  (v103)(v228);
  type metadata accessor for RemoveItemAction(0);
  sub_216BF9930(qword_280E40948, type metadata accessor for RemoveItemAction, &unk_217038810);
  OUTLINED_FUNCTION_10_75(&qword_280E40940);
  OUTLINED_FUNCTION_5_101(49);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v229 = OUTLINED_FUNCTION_82_1();
  (v103)(v229);
  type metadata accessor for RemovePersistenceItemAction(0);
  sub_216BF9930(qword_280E332B0, type metadata accessor for RemovePersistenceItemAction, &unk_217039A3C);
  OUTLINED_FUNCTION_10_75(&qword_280E332A8);
  OUTLINED_FUNCTION_5_101(50);
  OUTLINED_FUNCTION_2_136(v230, v231, v232, v233);
  v234 = OUTLINED_FUNCTION_45();
  (v103)(v234);
  type metadata accessor for RemoveRecentLibrarySearchesAction(0);
  sub_216BF9930(qword_280E2F0B8, type metadata accessor for RemoveRecentLibrarySearchesAction, &unk_21701C644);
  OUTLINED_FUNCTION_10_75(&qword_280E2F0B0);
  OUTLINED_FUNCTION_5_101(51);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v235 = OUTLINED_FUNCTION_82_1();
  (v103)(v235);
  type metadata accessor for RemoveSectionAction(0);
  sub_216BF9930(&qword_280E3D438, type metadata accessor for RemoveSectionAction, &unk_217053470);
  OUTLINED_FUNCTION_10_75(&qword_280E3D430);
  OUTLINED_FUNCTION_5_101(52);
  OUTLINED_FUNCTION_2_136(v236, v237, v238, v239);
  v240 = OUTLINED_FUNCTION_45();
  (v103)(v240);
  type metadata accessor for ResumePlaybackAction(0);
  sub_216BF9930(&qword_280E3B990, type metadata accessor for ResumePlaybackAction, &unk_217034E18);
  OUTLINED_FUNCTION_10_75(&qword_280E3B988);
  OUTLINED_FUNCTION_5_101(57);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v241 = OUTLINED_FUNCTION_82_1();
  (v103)(v241);
  type metadata accessor for CollaborationAction(0);
  sub_216BF9930(&qword_280E3E2D8, type metadata accessor for CollaborationAction, &unk_217034234);
  OUTLINED_FUNCTION_10_75(&qword_280E3E2D0);
  OUTLINED_FUNCTION_5_101(8);
  OUTLINED_FUNCTION_2_136(v242, v243, v244, v245);
  v246 = OUTLINED_FUNCTION_45();
  (v103)(v246);
  type metadata accessor for PromptRemoveAppWithAccessAction(0);
  sub_216BF9930(qword_280E30098, type metadata accessor for PromptRemoveAppWithAccessAction, &unk_217021174);
  OUTLINED_FUNCTION_10_75(&qword_280E30090);
  OUTLINED_FUNCTION_5_101(37);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v247 = OUTLINED_FUNCTION_82_1();
  (v103)(v247);
  type metadata accessor for ReportMusicItemConcernAction(0);
  sub_216BF9930(&qword_280E47630, type metadata accessor for ReportMusicItemConcernAction, &unk_21702CC60);
  OUTLINED_FUNCTION_10_75(&qword_280E47628);
  OUTLINED_FUNCTION_5_101(54);
  OUTLINED_FUNCTION_2_136(v248, v249, v250, v251);
  v252 = OUTLINED_FUNCTION_45();
  (v103)(v252);
  type metadata accessor for SearchAction(0);
  sub_216BF9930(qword_280E44778, type metadata accessor for SearchAction, &unk_217046710);
  OUTLINED_FUNCTION_10_75(&qword_280E44770);
  OUTLINED_FUNCTION_5_101(58);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v253 = OUTLINED_FUNCTION_82_1();
  (v103)(v253);
  type metadata accessor for ToggleContactCheckAllowedAction(0);
  sub_216BF9930(qword_280E2FC48, type metadata accessor for ToggleContactCheckAllowedAction, &unk_21701FB80);
  OUTLINED_FUNCTION_10_75(&qword_280E2FC40);
  OUTLINED_FUNCTION_5_101(75);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v254 = OUTLINED_FUNCTION_45();
  (v103)(v254);
  type metadata accessor for ToggleDiscoverableByContactAction(0);
  sub_216BF9930(&qword_280E2EDB0, type metadata accessor for ToggleDiscoverableByContactAction, &unk_21701FB28);
  OUTLINED_FUNCTION_10_75(&qword_280E2EDB8);
  OUTLINED_FUNCTION_5_101(76);
  v255 = v275;
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v256 = OUTLINED_FUNCTION_82_1();
  (v103)(v256);
  type metadata accessor for SelectTabAction(0);
  sub_216BF9930(qword_280E42060, type metadata accessor for SelectTabAction, &protocol conformance descriptor for SelectTabAction);
  sub_216BF9930(&unk_280E42050, type metadata accessor for SelectTabAction, &protocol conformance descriptor for SelectTabAction);
  OUTLINED_FUNCTION_5_101(60);
  OUTLINED_FUNCTION_12_62();
  sub_21700CE64();
  v103(v255, v0);
  OUTLINED_FUNCTION_5_101(59);
  v257 = v277;
  OUTLINED_FUNCTION_12_62();
  sub_21700CE64();
  v258 = OUTLINED_FUNCTION_45();
  (v103)(v258);
  type metadata accessor for SetPersistenceItemAction(0);
  sub_216BF9930(&qword_280E36028, type metadata accessor for SetPersistenceItemAction, &unk_21702C7BC);
  OUTLINED_FUNCTION_10_75(&qword_280E36020);
  OUTLINED_FUNCTION_5_101(61);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v103(v257, v0);
  type metadata accessor for SetSuggestionSearchTermAction(0);
  sub_216BF9930(qword_280E31290, type metadata accessor for SetSuggestionSearchTermAction, &unk_217016190);
  OUTLINED_FUNCTION_10_75(&qword_280E31288);
  OUTLINED_FUNCTION_5_101(62);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v259 = OUTLINED_FUNCTION_45();
  (v103)(v259);
  type metadata accessor for ShuffleAction(0);
  sub_216BF9930(qword_280E43910, type metadata accessor for ShuffleAction, &unk_21702913C);
  OUTLINED_FUNCTION_10_75(&qword_280E43908);
  OUTLINED_FUNCTION_5_101(67);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v260 = OUTLINED_FUNCTION_82_1();
  (v103)(v260);
  type metadata accessor for SocialOnboardingUpdateUserAttributesAction(0);
  sub_216BF9930(qword_280E2D120, type metadata accessor for SocialOnboardingUpdateUserAttributesAction, &unk_21701BEAC);
  OUTLINED_FUNCTION_10_75(&qword_280E2D118);
  OUTLINED_FUNCTION_5_101(68);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v261 = OUTLINED_FUNCTION_45();
  (v103)(v261);
  type metadata accessor for SubscriptionPurchaseAction(0);
  sub_216BF9930(qword_280E33D00, type metadata accessor for SubscriptionPurchaseAction, &unk_21703EF78);
  OUTLINED_FUNCTION_10_75(&qword_280E33CF8);
  OUTLINED_FUNCTION_5_101(69);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v262 = OUTLINED_FUNCTION_82_1();
  (v103)(v262);
  type metadata accessor for ReplaySelectYearAction(0);
  sub_216BF9930(&qword_280E38E20, type metadata accessor for ReplaySelectYearAction, &unk_217035934);
  OUTLINED_FUNCTION_10_75(&qword_280E38E18);
  OUTLINED_FUNCTION_5_101(55);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v263 = OUTLINED_FUNCTION_45();
  (v103)(v263);
  type metadata accessor for ReplaySelectPeriodAction(0);
  sub_216BF9930(qword_280E36470, type metadata accessor for ReplaySelectPeriodAction, &unk_2170358DC);
  OUTLINED_FUNCTION_10_75(&qword_280E36468);
  OUTLINED_FUNCTION_5_101(56);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v264 = OUTLINED_FUNCTION_82_1();
  (v103)(v264);
  type metadata accessor for UnblockUserAction(0);
  sub_216BF9930(qword_280E3F590, type metadata accessor for UnblockUserAction, &unk_217025C54);
  OUTLINED_FUNCTION_10_75(&qword_280E3F588);
  OUTLINED_FUNCTION_5_101(70);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v265 = OUTLINED_FUNCTION_45();
  (v103)(v265);
  type metadata accessor for UnfollowUserAction(0);
  sub_216BF9930(qword_280E3E4B8, type metadata accessor for UnfollowUserAction, &unk_217020034);
  OUTLINED_FUNCTION_10_75(&qword_280E3E4B0);
  OUTLINED_FUNCTION_5_101(71);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v266 = OUTLINED_FUNCTION_82_1();
  (v103)(v266);
  type metadata accessor for UpdateFindFriendsPrivacySettingsAction(0);
  sub_216BF9930(&qword_280E2DAA8, type metadata accessor for UpdateFindFriendsPrivacySettingsAction, &unk_21703A1F8);
  OUTLINED_FUNCTION_10_75(&qword_280E2DAA0);
  OUTLINED_FUNCTION_5_101(72);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v267 = OUTLINED_FUNCTION_45();
  (v103)(v267);
  type metadata accessor for UpdateNotificationSettingsAction(0);
  sub_216BF9930(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction, &unk_21706ED74);
  OUTLINED_FUNCTION_10_75(&unk_280E2F570);
  OUTLINED_FUNCTION_5_101(73);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v268 = OUTLINED_FUNCTION_82_1();
  (v103)(v268);
  type metadata accessor for PerformPlaylistCollaborationRequestAction(0);
  sub_216BF9930(&qword_280E2D340, type metadata accessor for PerformPlaylistCollaborationRequestAction, &unk_21703C8F0);
  OUTLINED_FUNCTION_10_75(&qword_280E2D338);
  OUTLINED_FUNCTION_5_101(74);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v269 = OUTLINED_FUNCTION_45();
  (v103)(v269);
  type metadata accessor for AddRecentSearchAction(0);
  sub_216BF9930(qword_280E3AD18, type metadata accessor for AddRecentSearchAction, &unk_217067D48);
  OUTLINED_FUNCTION_10_75(&qword_280E3AD10);
  OUTLINED_FUNCTION_5_101(5);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v270 = OUTLINED_FUNCTION_82_1();
  (v103)(v270);
  type metadata accessor for AddRecentSearchTermAction(0);
  sub_216BF9930(qword_280E35CE0, type metadata accessor for AddRecentSearchTermAction, &unk_217057D5C);
  OUTLINED_FUNCTION_10_75(&qword_280E35CD8);
  OUTLINED_FUNCTION_5_101(6);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v271 = OUTLINED_FUNCTION_45();
  (v103)(v271);
  type metadata accessor for ClearRecentSearchesAction(0);
  sub_216BF9930(&qword_280E35B38, type metadata accessor for ClearRecentSearchesAction, &unk_2170700CC);
  OUTLINED_FUNCTION_10_75(&qword_280E35B30);
  OUTLINED_FUNCTION_5_101(13);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v272 = OUTLINED_FUNCTION_82_1();
  return (v103)(v272);
}

uint64_t sub_216BF9930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB4)
  {
    if (a2 + 76 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 76) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 77;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v5 = v6 - 77;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB3)
  {
    v6 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
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
          *result = a2 + 76;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216BF9ACC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700F7F4();

  if (v2 >= 0x4D)
  {
    return 77;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_216BF9B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216BF9ACC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for VideosPageIntent(uint64_t a1)
{
  result = qword_27CAC5B68;
  if (!qword_27CAC5B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216BF9C30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for VideosPageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D38, qword_217053090);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216BF9E30(uint64_t a1)
{
  result = sub_2166CE864(&qword_27CAC5B78, type metadata accessor for VideosPageIntent, &unk_217052FD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BF9ED0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE864(&qword_27CAC5B78, type metadata accessor for VideosPageIntent, &unk_217052FD0);
  result = sub_2166CE864(qword_27CAC5B80, type metadata accessor for VideosPageIntent, &unk_217052FB4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216BF9F7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v85 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v74 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v74 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  sub_21700D7A4();
  OUTLINED_FUNCTION_3_128();
  sub_21700CE04();
  v76 = v6;
  v24 = *(v6 + 16);
  v23 = v6 + 16;
  v86 = v4;
  v79 = v24;
  v24(v9, v88, v4);
  v77 = v9;
  sub_21700D734();
  v82 = a1;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v81 = *(v12 + 8);
  v83 = v12 + 8;
  v84 = v10;
  v81(v19, v10);
  if (v27)
  {
    v78 = type metadata accessor for PlaylistDetailHeaderLockup(0);
    *&v87 = v25;
    *(&v87 + 1) = v27;
    v28 = v85;
    sub_21700F364();
    type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v29 = v77;
    v30 = v86;
    v31 = v79;
    v79(v77, v88, v86);
    sub_2166D5520(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    OUTLINED_FUNCTION_1_170();
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v31(v29, v88, v30);
    v32 = v78;
    sub_2166D5520(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    v80 = v23;
    v33 = v28;
    OUTLINED_FUNCTION_1_170();
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v81(v22, v84);
    v37 = (v28 + v32[6]);
    *v37 = v34;
    v37[1] = v36;
    sub_21700CE04();
    v38 = v88;
    v39 = v79;
    v79(v29, v88, v86);
    sub_216AC6598();
    *(v33 + v32[7]) = v40;
    v41 = v33;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v45 = v81;
    v81(v22, v84);
    v46 = (v41 + v32[8]);
    *v46 = v42;
    v46[1] = v44;
    type metadata accessor for ModalPresentationDescriptor(0);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v47 = v77;
    v48 = v38;
    v49 = v86;
    v39(v77, v48, v86);
    sub_2166D5520(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor, &unk_217062904);
    v50 = v85;
    OUTLINED_FUNCTION_1_170();
    v51 = v75;
    sub_21700CE04();
    LOBYTE(v42) = sub_21700CD44();
    v45(v51, v84);
    *(v50 + v32[10]) = v42 & 1;
    type metadata accessor for VideoArtwork(0);
    sub_21700CE04();
    v52 = v88;
    v53 = v49;
    v54 = v79;
    v79(v47, v88, v53);
    sub_2166D5520(qword_280E44448, type metadata accessor for VideoArtwork, &unk_217061470);
    OUTLINED_FUNCTION_1_170();
    type metadata accessor for LinkComponentModel(0);
    OUTLINED_FUNCTION_4_111(0x79616C70u);
    sub_21700CE04();
    v55 = v47;
    v54(v47, v52, v86);
    v75 = sub_2166D5520(&qword_280E3EC48, type metadata accessor for LinkComponentModel, &unk_21702DC78);
    sub_21700D734();
    sub_21700CE04();
    v56 = v86;
    v54(v55, v52, v86);
    sub_21700D734();
    OUTLINED_FUNCTION_4_111(0x676E6973u);
    sub_21700CE04();
    v57 = v88;
    v54(v55, v88, v56);
    v58 = v78;
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    v59 = v82;
    sub_21700CE04();
    v54(v55, v57, v56);
    sub_216AC7D00();
    sub_21700D734();
    v60 = v58;
    v61 = v85;
    *(v85 + *(v58 + 44)) = v87;
    OUTLINED_FUNCTION_11_0();
    v62 = v74;
    sub_21700CE04();
    v63 = sub_21700CD24();
    v65 = v64;
    (*(v76 + 8))(v57, v86);
    v66 = v84;
    v67 = v81;
    v81(v59, v84);
    result = v67(v62, v66);
    v69 = 10;
    if ((v65 & 1) == 0)
    {
      v69 = v63;
    }

    *(v61 + *(v60 + 72)) = v69;
  }

  else
  {
    v70 = sub_21700E2E4();
    sub_2166D5520(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v72 = v71;
    v73 = type metadata accessor for PlaylistDetailHeaderLockup(0);
    *v72 = 25705;
    v72[1] = 0xE200000000000000;
    v72[2] = v73;
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D22530], v70);
    swift_willThrow();
    (*(v76 + 8))(v88, v86);
    v81(v82, v84);
    return sub_2167B0250(v85);
  }

  return result;
}

uint64_t sub_216BFA9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

void sub_216BFAC2C(uint64_t a1)
{
  sub_216BFADB0();
  if (v1 <= 0x3F)
  {
    sub_2170071B4();
    if (v2 <= 0x3F)
    {
      sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216BFAE20(319);
        if (v4 <= 0x3F)
        {
          sub_216C025EC(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_216BFADB0()
{
  result = qword_27CAC5C08;
  if (!qword_27CAC5C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CAC5C08);
  }

  return result;
}

void sub_216BFAE20(uint64_t a1)
{
  if (!qword_280E29AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC98, &unk_21702A060);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29AA8);
    }
  }
}

uint64_t sub_216BFAEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v215 = a2;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DB8, &qword_217053448);
  MEMORY[0x28223BE20](v214);
  v213 = &v179 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE608, &qword_217053450);
  MEMORY[0x28223BE20](v209);
  v210 = &v179 - v6;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DC0, &qword_217053458);
  MEMORY[0x28223BE20](v212);
  v211 = &v179 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v196 = &v179 - v11;
  MEMORY[0x28223BE20](v12);
  v195 = &v179 - v13;
  MEMORY[0x28223BE20](v14);
  v194 = &v179 - v15;
  v16 = sub_21700C444();
  v202 = *(v16 - 8);
  v203 = v16;
  MEMORY[0x28223BE20](v16);
  v193 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v192 = &v179 - v19;
  MEMORY[0x28223BE20](v20);
  v191 = &v179 - v21;
  MEMORY[0x28223BE20](v22);
  v190 = &v179 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v24 - 8);
  v189 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v179 - v27;
  MEMORY[0x28223BE20](v29);
  v187 = &v179 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v179 - v32;
  MEMORY[0x28223BE20](v34);
  v185 = &v179 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v179 - v37;
  MEMORY[0x28223BE20](v39);
  v183 = &v179 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v179 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v44 - 8);
  v181 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v179 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v179 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v179 - v53;
  v55 = sub_217007474();
  v204 = *(v55 - 8);
  v205 = v55;
  MEMORY[0x28223BE20](v55);
  v201 = &v179 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v188 = &v179 - v58;
  MEMORY[0x28223BE20](v59);
  v200 = &v179 - v60;
  MEMORY[0x28223BE20](v61);
  v186 = &v179 - v62;
  MEMORY[0x28223BE20](v63);
  v199 = &v179 - v64;
  MEMORY[0x28223BE20](v65);
  v184 = &v179 - v66;
  MEMORY[0x28223BE20](v67);
  v198 = &v179 - v68;
  MEMORY[0x28223BE20](v69);
  v182 = &v179 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v207 = *(v71 - 8);
  v208 = v71;
  MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  v79 = &v179 - v78;
  v80 = *(a1 + 36);
  v81 = *(a1 + 40);
  v206 = a1;
  v82 = v3;
  v83 = *(v3 + v81 + 8);
  if (*(v3 + v80 + 8))
  {
    if (v83)
    {
      v79 = v75;
      sub_216683A80(v3, v28, &qword_27CAB6D60, &qword_217014E40);
      v84 = type metadata accessor for Artwork(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v84);
      v86 = v207;
      if (EnumTagSinglePayload == 1)
      {
        sub_2166997CC(v28, &qword_27CAB6D60, &qword_217014E40);
        v87 = sub_21700C4B4();
        v88 = v181;
        v89 = 1;
      }

      else
      {
        v109 = sub_21700C4B4();
        v110 = v181;
        (*(*(v109 - 8) + 16))(v181, v28, v109);
        sub_216C01F20(v28, type metadata accessor for Artwork);
        v88 = v110;
        v89 = 0;
        v87 = v109;
      }

      __swift_storeEnumTagSinglePayload(v88, v89, 1, v87);
      v111 = v193;
      v112 = v189;
      v113 = v202;
      sub_217007464();
      v114 = v82;
      sub_216683A80(v82, v112, &qword_27CAB6D60, &qword_217014E40);
      if (__swift_getEnumTagSinglePayload(v112, 1, v84) == 1)
      {
        sub_2166997CC(v112, &qword_27CAB6D60, &qword_217014E40);
        v115 = v197;
        v116 = v203;
        __swift_storeEnumTagSinglePayload(v197, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v115, 1, v116) != 1)
        {
          sub_2166997CC(v115, &qword_27CAB7530, &unk_21701A660);
        }
      }

      else
      {
        v136 = v112 + *(v84 + 20);
        v137 = v197;
        v116 = v203;
        (*(v113 + 16))(v197, v136, v203);
        sub_216C01F20(v112, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v116);
        (*(v113 + 32))(v111, v137, v116);
      }

      v138 = v188;
      v139 = v201;
      sub_2170073E4();
      (*(v113 + 8))(v111, v116);
      v140 = v205;
      v141 = *(v204 + 8);
      v141(v139, v205);
      v142 = (v114 + *(v206 + 44));
      v143 = *v142;
      v144 = v142[1];
      v145 = swift_allocObject();
      *(v145 + 16) = v143;
      *(v145 + 24) = v144;
      sub_2167B8890(v143, v144);
      v146 = sub_2167C505C();
      sub_2170073F4();

      v141(v138, v140);
      v99 = v208;
      (*(v86 + 16))(v210, v79, v208);
      swift_storeEnumTagMultiPayload();
      v216 = &type metadata for ArtworkPlaceholderView;
      v217 = v146;
      swift_getOpaqueTypeConformance2();
      v147 = v211;
      sub_217009554();
    }

    else
    {
      v79 = v76;
      sub_216683A80(v3, v33, &qword_27CAB6D60, &qword_217014E40);
      v97 = type metadata accessor for Artwork(0);
      v98 = __swift_getEnumTagSinglePayload(v33, 1, v97);
      v99 = v208;
      if (v98 == 1)
      {
        sub_2166997CC(v33, &qword_27CAB6D60, &qword_217014E40);
        v100 = sub_21700C4B4();
        v101 = v48;
        v102 = 1;
      }

      else
      {
        v123 = sub_21700C4B4();
        (*(*(v123 - 8) + 16))(v48, v33, v123);
        sub_216C01F20(v33, type metadata accessor for Artwork);
        v101 = v48;
        v102 = 0;
        v100 = v123;
      }

      __swift_storeEnumTagSinglePayload(v101, v102, 1, v100);
      v124 = v187;
      sub_217007454();
      sub_216683A80(v3, v124, &qword_27CAB6D60, &qword_217014E40);
      v125 = __swift_getEnumTagSinglePayload(v124, 1, v97);
      v126 = v202;
      v127 = v192;
      if (v125 == 1)
      {
        sub_2166997CC(v124, &qword_27CAB6D60, &qword_217014E40);
        v128 = v196;
        v129 = v203;
        __swift_storeEnumTagSinglePayload(v196, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v128, 1, v129) != 1)
        {
          sub_2166997CC(v128, &qword_27CAB7530, &unk_21701A660);
        }
      }

      else
      {
        v158 = v124 + *(v97 + 20);
        v159 = v196;
        v129 = v203;
        (*(v202 + 16))(v196, v158, v203);
        sub_216C01F20(v124, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v159, 0, 1, v129);
        (*(v126 + 32))(v127, v159, v129);
      }

      v160 = v186;
      v161 = v200;
      sub_2170073E4();
      (*(v126 + 8))(v127, v129);
      v162 = v205;
      v163 = *(v204 + 8);
      v163(v161, v205);
      v164 = (v3 + *(v206 + 44));
      v165 = *v164;
      v166 = v164[1];
      v167 = swift_allocObject();
      *(v167 + 16) = v165;
      *(v167 + 24) = v166;
      sub_2167B8890(v165, v166);
      v168 = sub_2167C505C();
      sub_2170073F4();

      v163(v160, v162);
      v86 = v207;
      (*(v207 + 16))(v210, v79, v99);
      swift_storeEnumTagMultiPayload();
      v216 = &type metadata for ArtworkPlaceholderView;
      v217 = v168;
      swift_getOpaqueTypeConformance2();
      v147 = v211;
      sub_217009554();
    }
  }

  else
  {
    if (v83)
    {
      v201 = v77;
      v90 = v3;
      sub_216683A80(v3, v38, &qword_27CAB6D60, &qword_217014E40);
      v91 = type metadata accessor for Artwork(0);
      v92 = __swift_getEnumTagSinglePayload(v38, 1, v91);
      v93 = v202;
      if (v92 == 1)
      {
        sub_2166997CC(v38, &qword_27CAB6D60, &qword_217014E40);
        v94 = sub_21700C4B4();
        v95 = v51;
        v96 = 1;
      }

      else
      {
        v117 = sub_21700C4B4();
        (*(*(v117 - 8) + 16))(v51, v38, v117);
        sub_216C01F20(v38, type metadata accessor for Artwork);
        v95 = v51;
        v96 = 0;
        v94 = v117;
      }

      __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
      v86 = v207;
      v118 = v195;
      v119 = v191;
      v120 = v185;
      sub_217007444();
      sub_216683A80(v3, v120, &qword_27CAB6D60, &qword_217014E40);
      v121 = __swift_getEnumTagSinglePayload(v120, 1, v91);
      v99 = v208;
      if (v121 == 1)
      {
        sub_2166997CC(v120, &qword_27CAB6D60, &qword_217014E40);
        v122 = v203;
        __swift_storeEnumTagSinglePayload(v118, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v118, 1, v122) != 1)
        {
          sub_2166997CC(v118, &qword_27CAB7530, &unk_21701A660);
        }
      }

      else
      {
        v148 = v120 + *(v91 + 20);
        v122 = v203;
        (*(v93 + 16))(v118, v148, v203);
        sub_216C01F20(v120, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v118, 0, 1, v122);
        (*(v93 + 32))(v119, v118, v122);
      }

      v149 = v184;
      v150 = v199;
      sub_2170073E4();
      (*(v93 + 8))(v119, v122);
      v151 = v205;
      v152 = *(v204 + 8);
      v152(v150, v205);
      v153 = (v90 + *(v206 + 44));
      v154 = *v153;
      v155 = v153[1];
      v156 = swift_allocObject();
      *(v156 + 16) = v154;
      *(v156 + 24) = v155;
      sub_2167B8890(v154, v155);
      v157 = sub_2167C505C();
      v79 = v201;
      sub_2170073F4();

      v152(v149, v151);
      (*(v86 + 16))(v210, v79, v99);
    }

    else
    {
      sub_216683A80(v3, v43, &qword_27CAB6D60, &qword_217014E40);
      v103 = type metadata accessor for Artwork(0);
      v104 = __swift_getEnumTagSinglePayload(v43, 1, v103);
      v105 = v202;
      if (v104 == 1)
      {
        sub_2166997CC(v43, &qword_27CAB6D60, &qword_217014E40);
        v106 = sub_21700C4B4();
        v107 = v54;
        v108 = 1;
      }

      else
      {
        v130 = sub_21700C4B4();
        (*(*(v130 - 8) + 16))(v54, v43, v130);
        sub_216C01F20(v43, type metadata accessor for Artwork);
        v107 = v54;
        v108 = 0;
        v106 = v130;
      }

      __swift_storeEnumTagSinglePayload(v107, v108, 1, v106);
      v99 = v208;
      v131 = v194;
      v132 = v190;
      sub_217007434();
      v133 = v183;
      sub_216683A80(v3, v183, &qword_27CAB6D60, &qword_217014E40);
      v134 = __swift_getEnumTagSinglePayload(v133, 1, v103);
      v86 = v207;
      v180 = v3;
      if (v134 == 1)
      {
        sub_2166997CC(v133, &qword_27CAB6D60, &qword_217014E40);
        v135 = v203;
        __swift_storeEnumTagSinglePayload(v131, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v131, 1, v135) != 1)
        {
          sub_2166997CC(v131, &qword_27CAB7530, &unk_21701A660);
        }
      }

      else
      {
        v169 = v133 + *(v103 + 20);
        v135 = v203;
        (*(v105 + 16))(v131, v169, v203);
        sub_216C01F20(v133, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v131, 0, 1, v135);
        (*(v105 + 32))(v132, v131, v135);
      }

      v170 = v182;
      v171 = v198;
      sub_2170073E4();
      (*(v105 + 8))(v132, v135);
      v172 = v205;
      v173 = *(v204 + 8);
      v173(v171, v205);
      v174 = (v180 + *(v206 + 44));
      v175 = *v174;
      v176 = v174[1];
      v177 = swift_allocObject();
      *(v177 + 16) = v175;
      *(v177 + 24) = v176;
      sub_2167B8890(v175, v176);
      v157 = sub_2167C505C();
      sub_2170073F4();

      v173(v170, v172);
      (*(v86 + 16))(v210, v79, v99);
    }

    swift_storeEnumTagMultiPayload();
    v216 = &type metadata for ArtworkPlaceholderView;
    v217 = v157;
    swift_getOpaqueTypeConformance2();
    v147 = v211;
    sub_217009554();
  }

  sub_21674C61C(v147, v213);
  swift_storeEnumTagMultiPayload();
  sub_216C026D8();
  sub_217009554();
  sub_21674C680(v147);
  return (*(v86 + 8))(v79, v99);
}

int *sub_216BFC540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_2167C5834(a1, a9, &qword_27CAB6D60, &qword_217014E40);
  result = type metadata accessor for PosterArtworkView.StaticArtwork(0, a8, a10, v18);
  v20 = a9 + result[9];
  *v20 = a2;
  *(v20 + 8) = a3 & 1;
  v21 = a9 + result[10];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = (a9 + result[11]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t sub_216BFC600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v221 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = OUTLINED_FUNCTION_14_47();
  v8 = type metadata accessor for PosterArtworkView.StandardArtworkView(v5, v6, v4, v7);
  OUTLINED_FUNCTION_14_59();
  WitnessTable = swift_getWitnessTable();
  v241 = v8;
  v242 = WitnessTable;
  v231 = v8;
  v223 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v205 = v10;
  MEMORY[0x28223BE20](v11);
  v196 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(&v192 - v14);
  v220 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v219 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v18 - v17);
  v227 = a1;
  v19 = *(a1 - 8);
  v212 = a1 - 8;
  v204 = v19;
  MEMORY[0x28223BE20](v20);
  v202 = v21;
  OUTLINED_FUNCTION_70(&v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2170089F4();
  v23 = sub_216BA9564();
  v230 = WitnessTable;
  v247 = WitnessTable;
  v248 = v23;
  OUTLINED_FUNCTION_0_9();
  v228 = v24;
  v25 = swift_getWitnessTable();
  v241 = v22;
  v242 = MEMORY[0x277CE0F78];
  v26 = MEMORY[0x277CE0F78];
  v243 = v3;
  v244 = v25;
  v27 = MEMORY[0x277CE0F70];
  v245 = MEMORY[0x277CE0F70];
  v246 = v4;
  swift_getOpaqueTypeMetadata2();
  v241 = v22;
  v242 = v26;
  v243 = v3;
  v244 = v25;
  v245 = v27;
  v246 = v4;
  OUTLINED_FUNCTION_13_61();
  v222 = v28;
  swift_getOpaqueTypeMetadata2();
  v216 = sub_217009564();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18, &unk_2170532D0);
  v30 = sub_216C01BF8();
  v241 = v29;
  v242 = v3;
  v243 = v30;
  v244 = v4;
  type metadata accessor for SimpleChinViewModifier(255, &v241);
  sub_2170089F4();
  v31 = sub_21700B344();
  v217 = sub_216C01C74();
  v241 = v22;
  v32 = MEMORY[0x277CE0F78];
  v242 = MEMORY[0x277CE0F78];
  v243 = v3;
  v244 = v25;
  v245 = v27;
  v246 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v241 = v22;
  v242 = v32;
  v226 = v3;
  v243 = v3;
  v244 = v25;
  v34 = v207;
  v245 = v27;
  v246 = v4;
  v225 = v4;
  v35 = swift_getOpaqueTypeConformance2();
  v239 = OpaqueTypeConformance2;
  v240 = v35;
  OUTLINED_FUNCTION_6_1();
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_54();
  v37 = swift_getWitnessTable();
  v237 = v25;
  v238 = v37;
  v38 = swift_getWitnessTable();
  v234 = v217;
  v235 = v36;
  v236 = v38;
  OUTLINED_FUNCTION_15_57();
  v39 = swift_getWitnessTable();
  v201 = v31;
  v198 = v39;
  v40 = sub_217007BB4();
  OUTLINED_FUNCTION_1();
  v200 = v41;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  OUTLINED_FUNCTION_12_63();
  v44 = swift_getWitnessTable();
  v228 = v40;
  v241 = v40;
  v242 = v44;
  v217 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v192 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v192 - v52;
  v210 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v209 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v57 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  OUTLINED_FUNCTION_36(v58);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v60);
  v206 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7();
  v66 = v65 - v64;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v67);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v68);
  v70 = &v192 - v69;
  v211 = *(v231 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v72);
  v224 = v22;
  v222 = *(v22 - 8);
  v73 = *(v222 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_70(&v192 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_70(&v192 - v76);
  v216 = v45;
  v215 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v214 = v77;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v79);
  v80 = (v34 + *(v212 + 60));
  v81 = *v80;
  if (*v80)
  {
    v205 = v80[1];
    v195 = v53;
    v196 = v47;
    v83 = v34[3];
    v82 = v34[4];
    v212 = v81;
    __swift_project_boxed_opaque_existential_1(v34, v83);
    v194 = v50;
    v193 = v73;
    v84 = v227;

    sub_216C0C924(v85, v86, v87, v88, v89, v90, v91, v92, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
    sub_21698F5EC(v66, v83, v82, v70);
    (*(v62 + 8))(v66, v206);
    v93 = v34 + *(v84 + 40);
    v94 = *(v93 + 1);
    v206 = *v93;
    LOBYTE(v82) = v93[16];
    v95 = v34[3];
    v96 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34, v95);
    v97 = v208;
    (*(v96 + 8))(v95, v96);
    OUTLINED_FUNCTION_28_34();
    v99 = *(v98 - 256);
    v100(v99);
    v101 = (v34 + *(v84 + 44));
    v103 = *v101;
    v102 = v101[1];
    OUTLINED_FUNCTION_20_47();
    v105 = *(v104 - 256);
    sub_216BFD60C(v70, v206, v94, v82, v97, v99, v103, v102, v105, v192, v193);
    v106 = v34[3];
    v107 = v34[5];
    v108 = __swift_project_boxed_opaque_existential_1(v34, v106);
    v244 = v106;
    v245 = v107;
    v109 = __swift_allocate_boxed_opaque_existential_1(&v241);
    (*(*(v106 - 8) + 16))(v109, v108, v106);
    sub_2167B8890(v103, v102);
    v110 = v231;
    sub_216A09050(&v241, v231, v230);
    OUTLINED_FUNCTION_67();
    v111(v105, v110);
    __swift_destroy_boxed_opaque_existential_1Tm(&v241);
    v112 = v204;
    v113 = v203;
    v114 = v227;
    (*(v204 + 16))(v203, v34, v227);
    v115 = v222;
    v116 = v197;
    v117 = OUTLINED_FUNCTION_38_32();
    v118 = v224;
    v119(v117);
    v120 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v121 = (v202 + v120 + *(v115 + 80)) & ~*(v115 + 80);
    v122 = (v193 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v123 = swift_allocObject();
    v124 = v225;
    *(v123 + 16) = v226;
    *(v123 + 24) = v124;
    v125 = v114;
    v126 = v228;
    (*(v112 + 32))(v123 + v120, v113, v125);
    (*(v115 + 32))(v123 + v121, v116, v118);
    v127 = (v123 + v122);
    v128 = v205;
    *v127 = v212;
    v127[1] = v128;

    v129 = v199;
    sub_217007BA4();
    v130 = v218;
    sub_2170099B4();
    v131 = v194;
    v132 = v217;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v133(v130, v220);
    OUTLINED_FUNCTION_67();
    v134(v129, v126);
    v241 = v126;
    v242 = v132;
    OUTLINED_FUNCTION_5_102();
    v135 = swift_getOpaqueTypeConformance2();
    sub_2166C24DC(v131, v216, v135);
    v136 = *(v196 + 8);
    v137 = OUTLINED_FUNCTION_38_32();
    v136(v137);
    v138 = OUTLINED_FUNCTION_10_53();
    sub_2166C24DC(v138, v139, v135);
    v140 = v231;
    v241 = v231;
    v242 = v230;
    OUTLINED_FUNCTION_30_38();
    v141 = v213;
    OUTLINED_FUNCTION_38_32();
    sub_2166C2718();
    sub_21667E91C(v212, v205);
    v142 = OUTLINED_FUNCTION_38_32();
    v136(v142);
    v143 = OUTLINED_FUNCTION_10_53();
    v136(v143);
    OUTLINED_FUNCTION_67();
    v144(v223, v224);
  }

  else
  {
    v145 = v34[3];
    v146 = v34[4];
    v147 = __swift_project_boxed_opaque_existential_1(v34, v145);
    v148 = v227;
    sub_216C0C924(v147, v149, v150, v151, v152, v153, v154, v155, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
    sub_21698F5EC(v66, v145, v146, v70);
    (*(v62 + 8))(v66, v206);
    LOBYTE(v145) = *(v34 + *(v148 + 40) + 16);
    v156 = v34[3];
    v157 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34, v156);
    v158 = v208;
    (*(v157 + 8))(v156, v157);
    OUTLINED_FUNCTION_28_34();
    v160 = *(v159 - 256);
    v161(v160);
    v162 = (v34 + *(v148 + 44));
    v163 = *v162;
    v164 = v162[1];
    OUTLINED_FUNCTION_20_47();
    v166 = *(v165 - 256);
    OUTLINED_FUNCTION_51();
    sub_216BFD60C(v167, v168, v169, v145, v158, v160, v163, v164, v170, v192, v193);
    v171 = OUTLINED_FUNCTION_8();
    sub_2167B8890(v171, v172);
    v173 = v218;
    sub_2170099B4();
    v174 = v196;
    v175 = v230;
    v140 = v231;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v176(v173, v220);
    OUTLINED_FUNCTION_67();
    v177(v166, v140);
    v241 = v140;
    v242 = v175;
    OUTLINED_FUNCTION_5_102();
    v178 = swift_getOpaqueTypeConformance2();
    v179 = v195;
    v180 = OpaqueTypeMetadata2;
    sub_2166C24DC(v174, OpaqueTypeMetadata2, v178);
    v181 = *(v205 + 8);
    v182 = OUTLINED_FUNCTION_10_53();
    v181(v182);
    sub_2166C24DC(v179, v180, v178);
    v132 = v217;
    v241 = v228;
    v242 = v217;
    OUTLINED_FUNCTION_30_38();
    v183 = v213;
    sub_2166C2CB0();
    v184 = OUTLINED_FUNCTION_10_53();
    v181(v184);
    v185 = v179;
    v141 = v183;
    (v181)(v185, v180);
  }

  v241 = v228;
  v242 = v132;
  OUTLINED_FUNCTION_5_102();
  v186 = swift_getOpaqueTypeConformance2();
  v241 = v140;
  v242 = v230;
  v187 = OUTLINED_FUNCTION_30_38();
  v232 = v186;
  v233 = v187;
  OUTLINED_FUNCTION_6_1();
  v188 = v215;
  v189 = swift_getWitnessTable();
  sub_2166C24DC(v141, v188, v189);
  OUTLINED_FUNCTION_67();
  return v190(v141, v188);
}

uint64_t sub_216BFD60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_2167C5834(a1, a9, &qword_27CAB6D60, &qword_217014E40);
  v20 = type metadata accessor for PosterArtworkView.StandardArtworkView(0, a10, a11, v19);
  v21 = a9 + v20[9];
  *v21 = a2;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4 & 1;
  sub_2167C5834(a5, a9 + v20[10], &qword_27CABBEA8, &unk_217026710);
  v22 = v20[11];
  v23 = sub_2170071B4();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a6, v23);
  v25 = (a9 + v20[12]);
  *v25 = a7;
  v25[1] = a8;
  return result;
}

uint64_t sub_216BFD718@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a5;
  v61 = a4;
  v59 = a3;
  v58 = a1;
  v65 = a8;
  type metadata accessor for PosterArtworkView.StandardArtworkView(255, a6, a7, a4);
  v11 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v80 = sub_216BA9564();
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F70];
  swift_getOpaqueTypeMetadata2();
  v64 = v12;
  v77 = v14;
  v78 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_217009564();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18, &unk_2170532D0);
  v74 = a6;
  v75 = sub_216C01BF8();
  v76 = a7;
  v54[3] = type metadata accessor for SimpleChinViewModifier(255, &v73);
  v62 = v15;
  v54[4] = sub_2170089F4();
  v56 = sub_21700B344();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v54 - v23;
  v25 = a2[3];
  v26 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 8))(v25, v26);
  v27 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v27) == 1)
  {
    sub_2166997CC(v21, &qword_27CABBEA8, &unk_217026710);
    v29 = sub_217006EC4();
    v30 = __swift_storeEnumTagSinglePayload(v24, 1, 1, v29);
  }

  else
  {
    type metadata accessor for PosterArtworkView(0, a6, a7, v28);
    sub_216DEE900(v24);
    v30 = sub_216C01F20(v21, type metadata accessor for VideoArtwork);
  }

  v54[2] = v54;
  MEMORY[0x28223BE20](v30);
  v54[1] = &v54[-10];
  v54[-8] = a6;
  v54[-7] = a7;
  v31 = v59;
  v54[-6] = v24;
  v54[-5] = v31;
  MEMORY[0x28223BE20](v32);
  v54[-8] = a6;
  v54[-7] = a7;
  v54[-6] = v33;
  v54[-5] = v34;
  v53 = v35;
  v36 = sub_216C01C74();
  v73 = v11;
  v74 = v13;
  v37 = v64;
  v75 = a6;
  v76 = v64;
  v38 = MEMORY[0x277CE0F70];
  v77 = MEMORY[0x277CE0F70];
  v78 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v11;
  v74 = v13;
  v75 = a6;
  v76 = v37;
  v77 = v38;
  v78 = a7;
  v40 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeConformance2;
  v72 = v40;
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v69 = v37;
  v70 = v42;
  v43 = swift_getWitnessTable();
  v51 = v41;
  v52 = v43;
  v50 = v36;
  v44 = v55;
  sub_21700B324();
  v66 = v36;
  v67 = v41;
  v68 = v43;
  v45 = v56;
  v46 = swift_getWitnessTable();
  v47 = v57;
  sub_2166C24DC(v44, v45, v46);
  v48 = *(v60 + 8);
  v48(v44, v45);
  sub_2166C24DC(v47, v45, v46);
  v48(v47, v45);
  return sub_2166997CC(v24, &qword_27CABBF10, &qword_2170532E0);
}

uint64_t sub_216BFDD94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v138 = a5;
  v139 = a6;
  v129 = a4;
  v126 = a3;
  v125 = a2;
  v123 = a1;
  v141 = a9;
  v134 = type metadata accessor for PosterArtworkView(0, a7, a8, a4);
  v132 = *(v134 - 8);
  v130 = *(v132 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v111 - v11;
  type metadata accessor for PosterArtworkView.StandardArtworkView(255, a7, a8, v12);
  v13 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_216BA9564();
  v154 = WitnessTable;
  v155 = v15;
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x277CE0F78];
  v148 = v13;
  v149 = MEMORY[0x277CE0F78];
  v150 = a7;
  v151 = v16;
  v18 = MEMORY[0x277CE0F70];
  v152 = MEMORY[0x277CE0F70];
  v153 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v120 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v118 = &v111 - v22;
  MEMORY[0x28223BE20](v23);
  v119 = &v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC5C30, &qword_2170532E8);
  MEMORY[0x28223BE20](v25 - 8);
  v113 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v112 = &v111 - v28;
  v128 = sub_2170064D4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v124 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v122 = &v111 - v31;
  v148 = v13;
  v149 = v17;
  v144 = a8;
  v145 = a7;
  v150 = a7;
  v151 = v16;
  v143 = v16;
  v152 = v18;
  v153 = a8;
  v32 = swift_getOpaqueTypeMetadata2();
  v115 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v117 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v114 = &v111 - v35;
  MEMORY[0x28223BE20](v36);
  v116 = &v111 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v111 - v39;
  v41 = sub_217006EC4();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v111 - v46;
  v140 = OpaqueTypeMetadata2;
  v49 = v48;
  v137 = v32;
  v136 = sub_217009564();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v111 - v50;
  sub_216683A80(v123, v40, &qword_27CABBF10, &qword_2170532E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v49);
  v142 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v40, &qword_27CABBF10, &qword_2170532E0);
    v52 = v143;
    sub_21700A2A4();
    v53 = v112;
    sub_216683A80(v126, v112, qword_27CAC5C30, &qword_2170532E8);
    v54 = sub_217007424();
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {
      sub_2166997CC(v53, qword_27CAC5C30, &qword_2170532E8);
      v55 = 0;
    }

    else
    {
      v55 = sub_217007414();
      (*(*(v54 - 8) + 8))(v53, v54);
    }

    v60 = v144;
    v61 = v134;
    v62 = v132;
    v63 = v131;
    (*(v132 + 16))(v131);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    v66 = v145;
    *(v65 + 16) = v145;
    *(v65 + 24) = v60;
    (*(v62 + 32))(v65 + v64, v63, v61);
    v67 = v52;
    v68 = v114;
    v69 = v128;
    v70 = MEMORY[0x277CE0F78];
    v71 = v122;
    sub_217006444();

    (*(v127 + 8))(v71, v69);
    v72 = v142;
    v148 = v142;
    v149 = v70;
    v150 = v66;
    v151 = v67;
    v152 = MEMORY[0x277CE0F70];
    v153 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = v116;
    v75 = v137;
    sub_2166C24DC(v68, v137, OpaqueTypeConformance2);
    v76 = *(v115 + 8);
    v76(v68, v75);
    v77 = v117;
    sub_2166C24DC(v74, v75, OpaqueTypeConformance2);
    v148 = v72;
    v149 = v70;
    v150 = v145;
    v151 = v67;
    v152 = MEMORY[0x277CE0F70];
    v153 = v60;
    swift_getOpaqueTypeConformance2();
    v78 = v133;
    sub_2166C2CB0();
    v76(v77, v75);
    v79 = v74;
    v80 = v142;
    v76(v79, v75);
  }

  else
  {
    v56 = *(v42 + 32);
    v123 = v47;
    v122 = v56;
    v117 = (v42 + 32);
    (v56)(v47, v40, v49);
    sub_21700A2A4();
    v57 = v113;
    sub_216683A80(v126, v113, qword_27CAC5C30, &qword_2170532E8);
    v58 = sub_217007424();
    v59 = v42;
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
    {
      sub_2166997CC(v57, qword_27CAC5C30, &qword_2170532E8);
      v126 = 0;
    }

    else
    {
      v126 = sub_217007414();
      (*(*(v58 - 8) + 8))(v57, v58);
    }

    v81 = v134;
    v82 = v132;
    v83 = v131;
    (*(v132 + 16))(v131);
    (*(v59 + 16))(v44, v123, v49);
    v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v85 = (v130 + *(v59 + 80) + v84) & ~*(v59 + 80);
    v86 = swift_allocObject();
    v87 = v49;
    v111 = v49;
    v88 = v86;
    v130 = v59;
    v89 = v144;
    v90 = v145;
    *(v86 + 16) = v145;
    *(v86 + 24) = v89;
    (*(v82 + 32))(v86 + v84, v83, v81);
    (v122)(v88 + v85, v44, v87);
    v91 = MEMORY[0x277CE0F70];
    v92 = v143;
    v93 = v118;
    v94 = v126;
    v95 = v128;
    v70 = MEMORY[0x277CE0F78];
    v96 = v124;
    sub_2170064B4();

    v97 = v90;
    (*(v127 + 8))(v96, v95);
    v80 = v142;
    v148 = v142;
    v149 = v70;
    v150 = v97;
    v151 = v92;
    v152 = v91;
    v153 = v144;
    v98 = swift_getOpaqueTypeConformance2();
    v99 = v119;
    v100 = v140;
    sub_2166C24DC(v93, v140, v98);
    v101 = *(v121 + 8);
    v101(v93, v100);
    v102 = v120;
    sub_2166C24DC(v99, v100, v98);
    v148 = v80;
    v149 = v70;
    v150 = v97;
    v151 = v92;
    v60 = v144;
    v152 = MEMORY[0x277CE0F70];
    v153 = v144;
    swift_getOpaqueTypeConformance2();
    v78 = v133;
    sub_2166C2718();
    v101(v102, v100);
    v103 = v99;
    v67 = v143;
    v101(v103, v100);
    (*(v130 + 8))(v123, v111);
  }

  v148 = v80;
  v149 = v70;
  v104 = v145;
  v150 = v145;
  v151 = v67;
  v105 = MEMORY[0x277CE0F70];
  v152 = MEMORY[0x277CE0F70];
  v153 = v60;
  v106 = swift_getOpaqueTypeConformance2();
  v148 = v80;
  v149 = v70;
  v150 = v104;
  v151 = v67;
  v152 = v105;
  v153 = v60;
  v107 = swift_getOpaqueTypeConformance2();
  v146 = v106;
  v147 = v107;
  v108 = v136;
  v109 = swift_getWitnessTable();
  sub_2166C24DC(v78, v108, v109);
  return (*(v135 + 8))(v78, v108);
}

uint64_t sub_216BFEC20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = type metadata accessor for PosterArtworkView(0, a2, a3, a3);
  result = sub_216BFEC70(a1, v6);
  *a4 = result;
  return result;
}

uint64_t sub_216BFEC70(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006EA4();
  v6 = sub_21700C494();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return sub_21700AC34();
  }

  else
  {
    return sub_216BFEDA0();
  }
}

uint64_t sub_216BFED6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for PosterArtworkView(0, a1, a2, a3);
  result = sub_216BFEDA0();
  *a4 = result;
  return result;
}

uint64_t sub_216BFEDA0()
{
  v1 = sub_21700C4B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  (*(*(v9 + 8) + 8))(v8);
  v10 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_2166997CC(v7, &qword_27CAB6D60, &qword_217014E40);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_216C01F20(v7, type metadata accessor for Artwork);
    v11 = sub_21700C494();
    (*(v2 + 8))(v4, v1);
    if (v11)
    {
      return sub_21700AC34();
    }
  }

  return sub_21700ACC4();
}

uint64_t sub_216BFEF80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v69 = a6;
  v67 = a5;
  v62 = a4;
  v64 = a3;
  v53[0] = a2;
  v68 = a1;
  v70 = a9;
  v11 = type metadata accessor for PosterArtworkView(0, a7, a8, a4);
  v12 = *(v11 - 8);
  v63 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC5C30, &qword_2170532E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v53 - v19;
  v53[1] = type metadata accessor for PosterArtworkView.StandardArtworkView(255, a7, a8, v21);
  v22 = sub_2170089F4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18, &unk_2170532D0);
  v24 = sub_216C01BF8();
  v59 = v23;
  v75[0] = v23;
  v75[1] = a7;
  v25 = a7;
  v55 = v24;
  v75[2] = v24;
  v75[3] = a8;
  v66 = a8;
  v26 = type metadata accessor for SimpleChinViewModifier(255, v75);
  v61 = v22;
  v58 = v26;
  v27 = sub_2170089F4();
  v65 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v57 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v60 = v53 - v30;
  sub_216683A80(v53[0], v20, qword_27CAC5C30, &qword_2170532E8);
  v31 = sub_217007424();
  if (__swift_getEnumTagSinglePayload(v20, 1, v31) == 1)
  {
    sub_2166997CC(v20, qword_27CAC5C30, &qword_2170532E8);
    v53[0] = 0;
  }

  else
  {
    v53[0] = sub_217007414();
    (*(*(v31 - 8) + 8))(v20, v31);
  }

  v32 = v64;
  v33 = *(v64 + *(v11 + 48));
  v34 = v56;
  sub_216683A80(v62, v56, &qword_27CABBF10, &qword_2170532E0);
  (*(v12 + 16))(v14, v32, v11);
  v35 = v14;
  v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v37 = v11;
  v38 = (v16 + *(v12 + 80) + v36) & ~*(v12 + 80);
  v39 = swift_allocObject();
  v40 = v66;
  *(v39 + 16) = v25;
  *(v39 + 24) = v40;
  sub_2167C5834(v34, v39 + v36, &qword_27CABBF10, &qword_2170532E0);
  (*(v12 + 32))(v39 + v38, v35, v37);
  WitnessTable = swift_getWitnessTable();
  v42 = sub_216BA9564();
  v73 = WitnessTable;
  v74 = v42;
  v43 = v61;
  v44 = swift_getWitnessTable();
  v52 = v40;
  v45 = v57;
  v46 = v53[0];
  sub_21693CC1C(v53[0], sub_216C01E4C, v39, v67, v69, v43, v33, v59, v25, v44, v55, v52);

  v47 = swift_getWitnessTable();
  v71 = v44;
  v72 = v47;
  v48 = swift_getWitnessTable();
  v49 = v60;
  sub_2166C24DC(v45, v27, v48);
  v50 = *(v65 + 8);
  v50(v45, v27);
  sub_2166C24DC(v49, v27, v48);
  return (v50)(v49, v27);
}

uint64_t sub_216BFF558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_217006EC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216683A80(a1, v9, &qword_27CABBF10, &qword_2170532E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2166997CC(v9, &qword_27CABBF10, &qword_2170532E0);
    type metadata accessor for PosterArtworkView(0, a2, a3, v14);
    v22 = sub_216BFEDA0();
    v23 = 1;
    result = sub_217009554();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = type metadata accessor for PosterArtworkView(0, a2, a3, v16);
    v22 = sub_216BFEC70(v13, v17);
    v23 = 0;
    sub_217009554();
    result = (*(v11 + 8))(v13, v10);
  }

  v18 = v25;
  v19 = v21;
  *v21 = v24;
  *(v19 + 8) = v18;
  return result;
}

void sub_216BFF79C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = v59 - v4;
  v5 = *(a1 + 24);
  v103 = *(a1 + 16);
  v6 = v103;
  v104 = a1;
  v7 = v5;
  v102 = v5;
  type metadata accessor for PosterArtworkView.StaticArtwork(255, v103, v5, v8);
  v9 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v109 = WitnessTable;
  v110 = MEMORY[0x277CE03D0];
  v10 = swift_getWitnessTable();
  v105 = v9;
  v106 = v10;
  v11 = v10;
  v88 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = v9;
  v106 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = OpaqueTypeMetadata2;
  v106 = OpaqueTypeConformance2;
  v14 = OpaqueTypeConformance2;
  v91 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v105 = OpaqueTypeMetadata2;
  v106 = v14;
  v16 = swift_getOpaqueTypeConformance2();
  v105 = v6;
  v106 = v15;
  v107 = v7;
  v108 = v16;
  v98 = v16;
  v17 = type metadata accessor for PosterArtworkView.MotionView(0, &v105);
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = v59 - v20;
  MEMORY[0x28223BE20](v21);
  v65 = v59 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
  MEMORY[0x28223BE20](v23 - 8);
  v63 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v87 = v59 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  MEMORY[0x28223BE20](v27 - 8);
  v92 = v59 - v28;
  v100 = sub_217006EC4();
  v71 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v69 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v70 = v59 - v31;
  v96 = v17;
  v95 = sub_217009564();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = v59 - v32;
  v84 = sub_21700D864();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21700D8E4();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2170099D4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v59 - v37;
  v75 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v75);
  v40 = v59 - v39;
  v74 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v74);
  v76 = swift_checkMetadataState();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v97 = v15;
  v101 = *(v15 - 8);
  MEMORY[0x28223BE20](v41);
  v73 = v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v72 = v59 - v44;
  MEMORY[0x28223BE20](v45);
  v59[1] = v59 - v46;
  v59[2] = v47;
  MEMORY[0x28223BE20](v48);
  v49 = v90;
  sub_216683A80(v90, v38, &qword_27CAB6D60, &qword_217014E40);
  v50 = v49 + *(v104 + 36);
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v61 = v52;
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v62 = v51;
  if (v53)
  {
    v55 = 0;
  }

  else
  {
    v55 = v51;
  }

  v56 = (v49 + *(v104 + 48));
  v58 = *v56;
  v57 = v56[1];
  v60 = v53;
  sub_216BFC540(v38, v55, v53, v54, v53, v58, v57, v103, v40, v102);
  sub_2167B8890(v58, v57);
  sub_216BFAEC8();
}

uint64_t sub_216C0014C()
{
  (*(v3 + 8))(v1, v2);
  v9 = *(v8 - 336);
  v10 = *(v8 - 416);
  sub_2170099A4();
  v11 = *(v8 - 440);
  sub_21700A784();
  (*(*(v8 - 400) + 8))(v10, *(v8 - 392));
  v12 = v5;
  v13 = v0;
  (*(v6 + 8))(v12, v11);
  v14 = *(v8 - 368);
  v15 = *(v8 - 376);
  v16 = *(v8 - 360);
  (*(v14 + 104))(v15, *MEMORY[0x277D22060], v16);
  *(v8 - 144) = 0u;
  *(v8 - 128) = 0u;
  *(v8 - 176) = 0u;
  *(v8 - 160) = 0u;
  v17 = *(v8 - 384);
  sub_21700D874();
  sub_2166997CC(v8 - 176, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v8 - 144, &unk_27CABF7A0, &unk_217014D20);
  (*(v14 + 8))(v15, v16);
  v18 = *(v8 - 424);
  sub_21700A204();
  v19 = *(v8 - 200);
  (*(*(v8 - 352) + 8))(v17, *(v8 - 344));
  (*(*(v8 - 408) + 8))(v7, v18);
  v20 = *(v19 + 40);
  sub_216683A80(v0 + v20, v9, &qword_27CABBEA8, &unk_217026710);
  v21 = type metadata accessor for VideoArtwork(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) == 1)
  {
    sub_2166997CC(v9, &qword_27CABBEA8, &unk_217026710);
    v22 = *(v8 - 296);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, *(v8 - 232));
LABEL_4:
    sub_2166997CC(v22, &qword_27CABBF10, &qword_2170532E0);
    v24 = *(v8 - 456);
    v25 = *(v8 - 256);
    v26 = *(v8 - 248);
    sub_2166C24DC(v4, v25, v26);
    v27 = *(v8 - 448);
    sub_2166C24DC(v24, v25, v26);
    swift_getWitnessTable();
    v28 = *(v8 - 288);
    sub_2166C2CB0();
    v29 = *(*(v8 - 224) + 8);
    v29(v27, v25);
    v29(v24, v25);
    v29(v4, v25);
    goto LABEL_9;
  }

  v22 = *(v8 - 296);
  sub_216DEE900(v22);
  sub_216C01F20(v9, type metadata accessor for VideoArtwork);
  v23 = *(v8 - 232);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  v30 = *(v8 - 464);
  v31 = *(v8 - 472);
  (*(v30 + 32))(v31, v22, v23);
  (*(v30 + 16))(*(v8 - 480), v31, v23);
  v32 = *(v8 - 224);
  v33 = *(v32 + 16);
  v34 = *(v8 - 568);
  *(v8 - 200) = v4;
  v35 = *(v8 - 256);
  v33(v34, v4, v35);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v39 = *(v8 - 216);
  v38 = *(v8 - 208);
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  (*(v32 + 32))(v37 + v36, v34, v35);
  v40 = *(v8 - 528);
  sub_216683A80(v13 + v20, v40, &qword_27CABBEA8, &unk_217026710);
  if (__swift_getEnumTagSinglePayload(v40, 1, v21) == 1)
  {
    sub_2166997CC(v40, &qword_27CABBEA8, &unk_217026710);
    v41 = sub_21700C444();
    v42 = *(v8 - 488);
    v43 = v42;
    v44 = 1;
  }

  else
  {
    v45 = *(v21 + 20);
    v46 = sub_21700C444();
    v42 = *(v8 - 488);
    (*(*(v46 - 8) + 16))(v42, v40 + v45, v46);
    sub_216C01F20(v40, type metadata accessor for VideoArtwork);
    v43 = v42;
    v44 = 0;
    v41 = v46;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, 1, v41);
  v47 = *(v8 - 264);
  v26 = *(v8 - 248);
  *(&v56 + 1) = v39;
  *&v56 = v35;
  v48 = *(v8 - 520);
  sub_216C009D8(*(v8 - 480), sub_216C022A0, v37, v42, *(v8 - 536), *(v8 - 544), *(v8 - 548), v38, v48, v56, v26);
  WitnessTable = swift_getWitnessTable();
  v50 = *(v8 - 512);
  sub_2166C24DC(v48, v47, WitnessTable);
  v51 = *(*(v8 - 496) + 8);
  v51(v48, v47);
  v52 = *(v8 - 504);
  sub_2166C24DC(v50, v47, WitnessTable);
  v28 = *(v8 - 288);
  sub_2166C2718();
  v51(v52, v47);
  v51(v50, v47);
  (*(*(v8 - 464) + 8))(*(v8 - 472), *(v8 - 232));
  (*(*(v8 - 224) + 8))(*(v8 - 200), v35);
LABEL_9:
  *(v8 - 192) = swift_getWitnessTable();
  *(v8 - 184) = v26;
  v53 = *(v8 - 272);
  v54 = swift_getWitnessTable();
  sub_2166C24DC(v28, v53, v54);
  return (*(*(v8 - 280) + 8))(v28, v53);
}

uint64_t sub_216C0088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for PosterArtworkView.StaticArtwork(255, a2, a3, a5);
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  return (*(*(OpaqueTypeMetadata2 - 8) + 16))(a4, a1, OpaqueTypeMetadata2);
}

uint64_t sub_216C009D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v20 = sub_217006EC4();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v25 = a8;
  v26 = a10;
  v27 = a11;
  v21 = type metadata accessor for PosterArtworkView.MotionView(0, &v25);
  v22 = (a9 + v21[13]);
  *v22 = a2;
  v22[1] = a3;
  result = sub_2167C5834(a4, a9 + v21[14], &qword_27CAB7530, &unk_21701A660);
  v24 = a9 + v21[15];
  *v24 = a5;
  *(v24 + 8) = a6;
  *(v24 + 16) = a7 & 1;
  return result;
}

uint64_t sub_216C00AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8, &qword_217017590);
  *&v136 = &type metadata for ArtworkPlaceholderView;
  *(&v136 + 1) = sub_2167C505C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = a1;
  v3 = *(a1 + 40);
  v104 = *(a1 + 24);
  v105 = v3;
  *&v137 = OpaqueTypeConformance2;
  *(&v137 + 1) = v3;
  v4 = sub_2170063D4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v107 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = swift_getOpaqueTypeConformance2();
  *&v136 = OpaqueTypeMetadata2;
  *(&v136 + 1) = v120;
  v6 = swift_getOpaqueTypeMetadata2();
  v7 = sub_2170089F4();
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v79 - v10;
  v115 = v11;
  v12 = sub_217009564();
  v113 = *(v12 - 8);
  v114 = v12;
  MEMORY[0x28223BE20](v12);
  v112 = &v79 - v13;
  v14 = sub_21700D864();
  v99 = *(v14 - 8);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v98 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21700D8E4();
  v102 = *(v16 - 8);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v97 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2170099D4();
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x28223BE20](v18);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v20 - 8);
  v91 = &v79 - v21;
  v22 = sub_2170063E4();
  v92 = *(v22 - 8);
  v93 = v22;
  MEMORY[0x28223BE20](v22);
  v86 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170064D4();
  v25 = *(v24 - 8);
  v88 = v24;
  v89 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - v26;
  v28 = sub_217005EF4();
  MEMORY[0x28223BE20](v28 - 8);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  v85 = swift_checkMetadataState();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v34 = &v79 - v33;
  v118 = swift_checkMetadataState();
  v90 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v84 = &v79 - v35;
  v111 = v6;
  v101 = *(v6 - 8);
  MEMORY[0x28223BE20](v36);
  v80 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v79 = &v79 - v39;
  MEMORY[0x28223BE20](v40);
  v117 = &v79 - v41;
  v42 = v108;
  sub_217006EB4();
  v43 = v119;
  *&v44 = *(v119 + 16);
  *(&v44 + 1) = v104;
  *&v45 = *(v119 + 32);
  *(&v45 + 1) = v105;
  v124 = v44;
  v125 = v45;
  v126 = v42;
  v121 = v44;
  v122 = v45;
  v123 = v42;
  sub_2170063C4();
  sub_21700A2A4();
  (*(v29 + 8))(v32, v4);
  v46 = v91;
  sub_216683A80(v42 + *(v43 + 56), v91, &qword_27CAB7530, &unk_21701A660);
  v47 = v86;
  sub_216B50CD4(v46, v86);
  v48 = v88;
  sub_217006454();
  (*(v92 + 8))(v47, v93);
  v49 = v27;
  v50 = v118;
  (*(v89 + 8))(v49, v48);
  v51 = v94;
  sub_2170099A4();
  v53 = v84;
  v52 = v85;
  sub_21700A784();
  (*(v95 + 8))(v51, v96);
  (*(v87 + 8))(v34, v52);
  v55 = v98;
  v54 = v99;
  v56 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277D22058], v100);
  v136 = 0u;
  v137 = 0u;
  memset(v135, 0, sizeof(v135));
  v57 = v97;
  sub_21700D874();
  sub_2166997CC(v135, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(&v136, &unk_27CABF7A0, &unk_217014D20);
  v58 = v55;
  v59 = v117;
  (*(v54 + 8))(v58, v56);
  sub_21700A204();
  (*(v102 + 8))(v57, v103);
  (*(v90 + 8))(v53, v50);
  v60 = MEMORY[0x277CDF678];
  if (*(v42 + *(v119 + 60) + 16))
  {
    *&v136 = v50;
    *(&v136 + 1) = v120;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v79;
    v63 = v111;
    sub_2166C24DC(v59, v111, v61);
    v64 = v80;
    sub_2166C24DC(v62, v63, v61);
    v133 = v61;
    v134 = v60;
    swift_getWitnessTable();
    v65 = v112;
    sub_2166C2CB0();
    v66 = *(v101 + 8);
    v66(v64, v63);
    v66(v62, v63);
    v66(v59, v63);
  }

  else
  {
    *&v136 = v50;
    *(&v136 + 1) = v120;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v111;
    sub_2166BF464();
    v69 = v82;
    sub_21700A9C4();
    v127 = v67;
    v128 = v60;
    v70 = v115;
    v71 = swift_getWitnessTable();
    v72 = v81;
    sub_2166C24DC(v69, v70, v71);
    v73 = *(v83 + 8);
    v73(v69, v70);
    sub_2166C24DC(v72, v70, v71);
    v65 = v112;
    sub_2166C2718();
    v74 = v69;
    v50 = v118;
    v73(v74, v70);
    v73(v72, v70);
    (*(v101 + 8))(v117, v68);
  }

  *&v136 = v50;
  *(&v136 + 1) = v120;
  v75 = swift_getOpaqueTypeConformance2();
  v131 = v75;
  v132 = MEMORY[0x277CDF678];
  v129 = swift_getWitnessTable();
  v130 = v75;
  v76 = v114;
  v77 = swift_getWitnessTable();
  sub_2166C24DC(v65, v76, v77);
  return (*(v113 + 8))(v65, v76);
}

uint64_t sub_216C01850@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v30 = a6;
  v25 = sub_21700C444();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_217007474();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - v20;
  sub_217006EA4();
  v22 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
  sub_217007464();
  sub_21700C404();
  sub_2170073E4();
  (*(v6 + 8))(v8, v25);
  v23 = *(v13 + 8);
  v23(v15, v12);
  v31[0] = v26;
  v31[1] = v27;
  v31[2] = v28;
  v31[3] = v29;
  type metadata accessor for PosterArtworkView.MotionView(0, v31);
  sub_217007404();
  v23(v18, v12);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v23)(v21, v12);
}

uint64_t sub_216C01B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = type metadata accessor for PosterArtworkView.MotionView(0, v8);
  return (*(a1 + *(v6 + 52)))();
}

unint64_t sub_216C01BF8()
{
  result = qword_27CAC5C20;
  if (!qword_27CAC5C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18, &unk_2170532D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5C20);
  }

  return result;
}

unint64_t sub_216C01C74()
{
  result = qword_27CAC5C28;
  if (!qword_27CAC5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5C28);
  }

  return result;
}

uint64_t sub_216C01CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = type metadata accessor for PosterArtworkView(0, v6, v7, a2);
  OUTLINED_FUNCTION_2(v8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_14_47();
  type metadata accessor for PosterArtworkView.StandardArtworkView(v13, v14, v7, v15);
  v16 = sub_2170089F4();
  OUTLINED_FUNCTION_2(v16);
  v18 = v17;
  v20 = v19;
  v21 = (v10 + v12 + *(v18 + 80)) & ~*(v18 + 80);
  v22 = (v3 + ((*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = *v22;
  v24 = v22[1];

  return sub_216BFD718(a1, (v3 + v10), v3 + v21, v23, v24, v6, v7, a3);
}

uint64_t sub_216C01E4C()
{
  OUTLINED_FUNCTION_37_36();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_51();
  v5 = type metadata accessor for PosterArtworkView(v1, v2, v3, v4);
  OUTLINED_FUNCTION_36(v5);
  v6 = OUTLINED_FUNCTION_25_39();

  return sub_216BFF558(v6, v7, v8, v9);
}

uint64_t sub_216C01F20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C01F74()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  v4 = type metadata accessor for PosterArtworkView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_51();

  return sub_216BFED6C(v5, v6, v7, v8);
}

uint64_t sub_216C01FF0()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  v4 = type metadata accessor for PosterArtworkView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2(v4);
  v5 = sub_217006EC4();
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_25_39();

  return sub_216BFEC20(v6, v7, v8, v9);
}

void sub_216C020B8(uint64_t a1)
{
  sub_216C025EC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216C025EC(319, qword_280E44408, type metadata accessor for VideoArtwork, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2170071B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216C022A0()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  type metadata accessor for PosterArtworkView.StaticArtwork(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36_33();
  sub_2170089F4();
  OUTLINED_FUNCTION_6_89();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = OUTLINED_FUNCTION_11_72(OpaqueTypeConformance2, v5, v6, v7, v8, v9, v10, v11, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_51();

  return sub_216C0088C(v13, v14, v15, v17, v16);
}

void sub_216C023C4(uint64_t a1)
{
  sub_216C025EC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216927B20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216C024B0(uint64_t a1)
{
  sub_217006EC4();
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      sub_216C025EC(319, &unk_280E2A3A0, MEMORY[0x277D2B220], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216C025EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_216C026D8()
{
  result = qword_27CAC5DC8;
  if (!qword_27CAC5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5DC0, &qword_217053458);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5DC8);
  }

  return result;
}

unint64_t sub_216C027D0()
{
  result = qword_27CAC5DD0;
  if (!qword_27CAC5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5DD8, &unk_217053460);
    sub_216C026D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5DD0);
  }

  return result;
}

uint64_t sub_216C02858@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v44 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v42 = v19;
  v43 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v12 + 16);
  v47 = a1;
  v25 = a1;
  v26 = v4;
  v27 = v46;
  v24(v18, v25, v10, v21);
  (*(v6 + 16))(v9, v27, v26);
  v28 = v45;
  sub_21700D224();
  if (v28)
  {
    (*(v6 + 8))(v27, v26);
    return (*(v12 + 8))(v47, v10);
  }

  else
  {
    v45 = v26;
    v30 = v44;
    v31 = v42;
    (*(v43 + 32))(v44, v23, v42);
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v33 = v32;
    v34 = v15;
    v35 = *(v12 + 8);
    v35(v34, v10);
    if (v33)
    {
      (*(v6 + 8))(v46, v45);
      v35(v47, v10);
      result = type metadata accessor for RemoveSectionAction(0);
      v36 = (v30 + *(result + 20));
      *v36 = v41;
      v36[1] = v33;
    }

    else
    {
      v37 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      v39 = v38;
      v40 = type metadata accessor for RemoveSectionAction(0);
      *v39 = 0xD000000000000011;
      v39[1] = 0x8000000217083540;
      v39[2] = v40;
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D22530], v37);
      swift_willThrow();
      (*(v6 + 8))(v46, v45);
      v35(v47, v10);
      return (*(v43 + 8))(v44, v31);
    }
  }

  return result;
}

uint64_t type metadata accessor for RemoveSectionAction(uint64_t a1)
{
  result = qword_280E3D420;
  if (!qword_280E3D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C02D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v72 = a1;
  v73 = a2;
  v70 = type metadata accessor for MusicMetrics.ClickFields(0);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v71 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  v74 = &v67 - v10;
  v75 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v68 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0, &qword_217020788);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0, &qword_2170539C0);
  v23 = OUTLINED_FUNCTION_36(v22);
  MEMORY[0x28223BE20](v23);
  v25 = (&v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v67 - v28;
  v30 = *(*a4 + 112);
  v31 = *a4 + 112;
  v30(v77, v27);
  v32 = type metadata accessor for SearchResultsListSection(0);
  v33 = swift_dynamicCast();
  v34 = __swift_storeEnumTagSinglePayload(v29, v33 ^ 1u, 1, v32);
  (v30)(v77, v34);
  v35 = sub_2170068C4();
  v36 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v21, v36 ^ 1u, 1, v35);
  sub_2166A6EFC(v29, v25, &qword_27CABA5A0, &qword_2170539C0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v32) == 1)
  {
    sub_2166997CC(v25, &qword_27CABA5A0, &qword_2170539C0);
    sub_2166A6EFC(v21, v18, &qword_27CABA4E0, &qword_217020788);
    if (__swift_getEnumTagSinglePayload(v18, 1, v35) == 1)
    {
      sub_2166997CC(v18, &qword_27CABA4E0, &qword_217020788);
      if (qword_27CAB5FA8 != -1)
      {
        OUTLINED_FUNCTION_1_171(&qword_27CAB5FA8);
      }

      v37 = sub_217007CA4();
      __swift_project_value_buffer(v37, qword_27CAC5DE0);
      v38 = sub_217007C84();
      v39 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v39))
      {
        goto LABEL_18;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Unable to report click event because no identifier was found for facet bar item";
      goto LABEL_17;
    }

    v42 = sub_217006894();
    v43 = v44;
    OUTLINED_FUNCTION_50();
    (*(v45 + 8))(v18, v35);
  }

  else
  {
    v42 = *v25;
    v43 = v25[1];
    sub_21700DF14();
    sub_216C0673C(v25, type metadata accessor for SearchResultsListSection);
  }

  type metadata accessor for MusicPageMetricsProvider(0);
  sub_21700D4B4();
  v46 = v77[0];
  if (!v77[0])
  {
LABEL_13:

    if (qword_27CAB5FA8 != -1)
    {
      OUTLINED_FUNCTION_1_171(&qword_27CAB5FA8);
    }

    v49 = sub_217007CA4();
    __swift_project_value_buffer(v49, qword_27CAC5DE0);
    v38 = sub_217007C84();
    v50 = sub_21700ED84();
    if (!OUTLINED_FUNCTION_8_64(v50))
    {
      goto LABEL_18;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Unable to report click event because no page fields were found";
LABEL_17:
    _os_log_impl(&dword_216679000, v38, v31, v41, v40, 2u);
    MEMORY[0x21CEA1440](v40, -1, -1);
    goto LABEL_18;
  }

  v47 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v48 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v46 + v47, 1, v48))
  {
    swift_endAccess();
LABEL_12:

    goto LABEL_13;
  }

  v52 = sub_21700D0F4();
  swift_endAccess();
  if (!v52)
  {
    goto LABEL_12;
  }

  v53 = v75;
  v54 = v74;
  sub_21700D4B4();
  if (__swift_getEnumTagSinglePayload(v54, 1, v53) != 1)
  {
    v58 = v69;
    v59 = *(v69 + 32);
    v76 = v42;
    v60 = v68;
    v59(v68, v54, v53);
    v61 = v21;
    v62 = v70;
    v63 = *(v70 + 36);
    v64 = sub_217005EF4();
    v65 = v71;
    v66 = v71 + v63;
    v21 = v61;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v64);
    *v65 = v76;
    *(v65 + 8) = v43;
    *(v65 + 16) = 3848;
    *(v65 + 24) = xmmword_217029BA0;
    *(v65 + 40) = 0;
    *(v65 + *(v62 + 44)) = 8;
    *(v65 + *(v62 + 40)) = 0;
    sub_216C949EC(v65, v52, v60, v72, v73, 0x686372616553, 0xE600000000000000);

    sub_216C0673C(v65, type metadata accessor for MusicMetrics.ClickFields);
    (*(v58 + 8))(v60, v75);
    goto LABEL_19;
  }

  sub_2166997CC(v54, &unk_27CABFB50, &qword_217016010);
  if (qword_27CAB5FA8 != -1)
  {
    OUTLINED_FUNCTION_1_171(&qword_27CAB5FA8);
  }

  v55 = sub_217007CA4();
  __swift_project_value_buffer(v55, qword_27CAC5DE0);
  v38 = sub_217007C84();
  v56 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_216679000, v38, v53, "Unable to report click event because no metrics pipeline was found", v57, 2u);
    MEMORY[0x21CEA1440](v57, -1, -1);
  }

LABEL_18:

LABEL_19:
  sub_2166997CC(v21, &qword_27CABA4E0, &qword_217020788);
  return sub_2166997CC(v29, &qword_27CABA5A0, &qword_2170539C0);
}

char *sub_216C03494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionOfExistingItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610, &qword_217020C90);
  swift_allocObject();
  *(v5 + v12) = sub_217007D84();
  v13 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar;
  sub_217006704();
  if (*(a1 + 16))
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v14 = (v6 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionHandler);
    *v14 = a3;
    v14[1] = a4;
    sub_216C066CC(a5, v6 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher);
  }

  else
  {
    sub_2166997CC(a5, &qword_27CABA558, &qword_217053830);

    sub_217006714();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v6 + v13);
    type metadata accessor for FacetBarState.Data(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_216C03604(uint64_t a1)
{
  v3 = sub_21700DF14();
  v4 = sub_216E214E4(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_216C03E6C(v8, sub_2166C1A48, v9, &OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar, &qword_280E44300, type metadata accessor for FacetBarState.Data, &unk_217053720);
  }
}

uint64_t sub_216C03728(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for FacetBarItemBox();

  v5 = sub_216C05D68(v4, a1);

  if (v5)
  {

    return sub_216C0390C(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v8 - 16) = v2;
    *(v8 - 8) = a1;
    sub_216C03E6C(v9, sub_216C0661C, v10, &OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar, &qword_280E44300, type metadata accessor for FacetBarState.Data, &unk_217053720);
  }
}

double sub_216C0385C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_129();
  v2 = sub_216C065D4(v0, v1, &unk_217053720);
  OUTLINED_FUNCTION_116_0(v2, v3);

  sub_21700DF14();
  return result;
}

uint64_t sub_216C0390C(uint64_t a1)
{
  *(v1 + 24) = a1;

  v2 = *(v1 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionHandler);
  sub_216C03990();
  v2();
}

uint64_t sub_216C03990()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_129();
  v2 = sub_216C065D4(v0, v1, &unk_217053720);
  OUTLINED_FUNCTION_116_0(v2, v3);
}

uint64_t sub_216C03A7C()
{

  sub_2166997CC(v0 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher, &qword_27CABA558, &qword_217053830);

  v1 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216C03B24()
{
  sub_216C03A7C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C03B7C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_112();
  v2 = sub_216C065D4(v0, v1, &unk_21705373C);
  OUTLINED_FUNCTION_116_0(v2, v3);
}

uint64_t sub_216C03C2C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_216C03E6C(KeyPath, sub_216C06648, &v5, &OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar, qword_280E44190, type metadata accessor for FacetBarState, &unk_21705373C);
}

uint64_t sub_216C03CD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_216C03D14()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_112();
  v3 = sub_216C065D4(v1, v2, &unk_21705373C);
  OUTLINED_FUNCTION_116_0(v3, v4);

  return *(v0 + 24);
}

uint64_t sub_216C03D94(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_216C03E6C(v5, sub_216C06638, v6, &OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar, qword_280E44190, type metadata accessor for FacetBarState, &unk_21705373C);
  }

  return result;
}

uint64_t sub_216C03EFC()
{

  v1 = OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216C03FC4(uint64_t a1)
{
  sub_216C040B8(319);
  if (v1 <= 0x3F)
  {
    sub_217006714();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_216C040B8(uint64_t a1)
{
  if (!qword_280E48498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9E80, &unk_21703A3E0);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48498);
    }
  }
}

uint64_t sub_216C0411C(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_217006704();
  return v1;
}

char *sub_216C0414C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  sub_217009A04();

  sub_21700DB24();

  v0 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E38 qword_2170539D8))];
  v1 = objc_allocWithZone(type metadata accessor for FacetBarUIKit.ContainerView());
  return sub_216C0556C(v0);
}

uint64_t sub_216C041F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558, &qword_217053830);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = sub_21700DAF4();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  sub_21700DB34();
  sub_21700DAE4();
  swift_unknownObjectRetain();
  v10 = sub_21700DB04();
  sub_2166A6EFC(a1 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher, v7, &qword_27CABA558, &qword_217053830);
  type metadata accessor for FacetBarUIKit.Coordinator(0);
  v11 = swift_allocObject();
  sub_216C050AC(v10, v7);
  return v11;
}

id sub_216C0433C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v40 = a1;
  v41 = a5;
  v47 = a2;
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v45 = v10;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v44 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v42 = *(v16 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;

  v21 = a4;
  swift_unknownObjectRetain();
  sub_216C04810(sub_216C067EC, v20);
  v43 = *(v15 + 16);
  v43(v19, a2, v13);
  v22 = *(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = v21;
  *(v23 + 4) = v41;
  v41 = *(v15 + 32);
  v41(&v23[(v22 + 40) & ~v22], v19, v13);
  v24 = v40;

  swift_unknownObjectRetain();
  sub_217006674();
  v43(v19, v47, v13);
  v25 = swift_allocObject();
  v41((v25 + ((v22 + 16) & ~v22)), v19, v13);
  v26 = &v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  v27 = *&v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  v28 = *&v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange + 8];
  *v26 = sub_216C06888;
  v26[1] = v25;
  sub_21667E91C(v27, v28);
  v29 = sub_2170066A4();
  sub_216C0385C();
  LOBYTE(v13) = sub_216E214E4(v29, v30);

  if ((v13 & 1) == 0)
  {
    sub_216C0385C();
    sub_2170066B4();
  }

  v31 = *&v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope];

  v32 = sub_216C03990();
  if (v31)
  {
    type metadata accessor for FacetBarItemBox();
    v33 = sub_216C05D68(v31, v32);

    if (v33)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v34 = sub_216C03990();
  sub_216C04F40(v34);
LABEL_8:
  v35 = v44;
  sub_217009A14();
  sub_2169274D4();
  sub_217009104();
  (*(v45 + 8))(v35, v46);
  v36 = v48;
  v37 = v49;
  v38 = &v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  *v38 = 0;
  *(v38 + 1) = v36;
  *(v38 + 2) = 0;
  *(v38 + 3) = v37;
  return [v24 setNeedsLayout];
}

uint64_t sub_216C0474C(uint64_t a1, uint64_t a2)
{
  v3 = sub_216C03990();
  type metadata accessor for FacetBarItemBox();
  v4 = sub_216C05D68(a2, v3);

  if (v4)
  {
    sub_217007D74();
  }

  return sub_216C03728(v5);
}

uint64_t sub_216C04810(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_2167759F4(a1, a2);
  sub_217006694();

  return sub_21667E91C(a1, a2);
}

uint64_t sub_216C048C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 2) = a2;
  *(v9 + 3) = a3;
  *(v9 + 4) = a4;
  *(v9 + 5) = a5;

  swift_unknownObjectRetain();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  sub_217009A04();
  v10 = (v15 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  v11 = *(v15 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  v12 = *(v15 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems + 8);
  *v10 = sub_216C06920;
  v10[1] = v9;

  sub_21667E91C(v11, v12);

  sub_217009A04();
  v13 = *(v15 + 16);

  sub_216C04A00(v13, a2, a3);
}

void sub_216C04A00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = sub_21700D704();
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700D774();
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21700D7A4();
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
LABEL_13:
    v26 = sub_21700F2B4();
    if (v26 < 0)
    {
      __break(1u);
    }

    v12 = v26;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v31 = a2 & 0xC000000000000001;
      v30 = (v9 + 8);
      v13 = 4;
      v29 = xmmword_217015230;
      v32 = a3;
      v28 = a2;
      do
      {
        sub_216C0385C();
        v9 = *(v14 + 16);

        if (v13 - 4 < v9)
        {
          sub_216C0385C();
          if ((v13 - 4) >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_13;
          }

          v37 = v13 - 4;
          v16 = *(v15 + 8 * v13);

          v18 = *(*v16 + 96);
          (v18)(v17);
          v18();
          sub_21700D764();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
          inited = swift_initStackObject();
          *(inited + 16) = v29;
          strcpy((inited + 32), "impressionType");
          *(inited + 47) = -18;
          *(inited + 48) = 0x7265746C6966;
          *(inited + 56) = 0xE600000000000000;
          v20 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 80) = 25705;
          *(inited + 88) = 0xE200000000000000;
          *(inited + 96) = (v18)();
          *(inited + 104) = v21;
          *(inited + 120) = v20;
          *(inited + 128) = 0x656C746974;
          *(inited + 136) = 0xE500000000000000;
          v22 = (v18)();
          *(inited + 168) = v20;
          *(inited + 144) = v22;
          *(inited + 152) = v23;
          sub_21700E384();
          sub_21700D6F4();
          v24 = MEMORY[0x277D84F90];
          a2 = sub_216C5570C(MEMORY[0x277D84F90]);
          sub_216C5570C(v24);
          sub_21700D784();
          if (v31)
          {
            v25 = MEMORY[0x21CEA0220](v37, v28);
          }

          else
          {
            a2 = v28;
            v25 = *(v28 + 8 * v13);
          }

          [v25 frame];

          sub_21700DAC4();

          (*v30)(v11, v33);
          a3 = v32;
        }

        ++v13;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t sub_216C04EA8(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  sub_217009A04();

  sub_21700DAD4();
}

uint64_t sub_216C04F40(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope] = a1;

  [v1 setNeedsLayout];
}

id sub_216C04FA8(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

double sub_216C04FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    [*(a5 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar) intrinsicContentSize];
  }

  else
  {
    v7 = *(a5 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar);
    [v7 intrinsicContentSize];
    [v7 sizeThatFits_];
  }

  return result;
}

uint64_t sub_216C050AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558, &qword_217053830);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = (v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation);
  *v11 = 0u;
  v11[1] = 0u;
  *(v3 + 16) = a1;
  sub_2166A6EFC(a2, v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_pageAppearancePublisher, &qword_27CABA558, &qword_217053830);
  sub_2166A6EFC(a2, v9, &qword_27CABA558, &qword_217053830);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_2166997CC(a2, &qword_27CABA558, &qword_217053830);
    sub_2166997CC(v9, &qword_27CABA558, &qword_217053830);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    sub_21696CC48();

    v13 = sub_217007E84();

    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v9, v12);
    *(&v19 + 1) = sub_217007D44();

    *&v18 = v13;
    sub_2166997CC(a2, &qword_27CABA558, &qword_217053830);
  }

  v15 = OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation;
  swift_beginAccess();
  sub_216697EC4(&v18, v3 + v15);
  swift_endAccess();
  return v3;
}

uint64_t sub_216C052F4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (v2)
    {

      sub_21700DB14();

      v5 = *(v4 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
      if (v5)
      {
        v6 = *(v4 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems + 8);
        sub_2167759F4(*(v4 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems), v6);

        v5(v7);
        sub_21667E91C(v5, v6);
      }
    }
  }

  return result;
}

uint64_t sub_216C053C4()
{

  sub_2166997CC(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_pageAppearancePublisher, &qword_27CABA558, &qword_217053830);
  sub_21667E91C(*(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems), *(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems + 8));
  sub_2166997CC(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation, &unk_27CABF7A0, &unk_217014D20);
  return v0;
}

uint64_t sub_216C05438()
{
  sub_216C053C4();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216C054B8(uint64_t a1)
{
  sub_216C040B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_216C0556C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope] = 0;
  v6 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  v7 = *(MEMORY[0x277D768C8] + 16);
  *v6 = *MEMORY[0x277D768C8];
  *(v6 + 1) = v7;
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 addSubview_];
  swift_getKeyPath();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_217005D64();

  v13[3] = sub_217005D14();

  v13[0] = v10;
  v11 = OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation;
  swift_beginAccess();
  sub_216697EC4(v13, v9 + v11);
  swift_endAccess();

  return v9;
}

void sub_216C0570C(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
    if (v6)
    {
      v7 = *&Strong[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange + 8];
      sub_2167759F4(*&Strong[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange], v7);

      v6([v3 bounds]);
      sub_21667E91C(v6, v7);
    }

    else
    {
    }
  }
}

void sub_216C057BC()
{
  v1 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  sub_21700F584();
  __break(1u);
}

void sub_216C0587C()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  [v0 bounds];
  if (CGRectGetWidth(v9) > 0.0)
  {
    OUTLINED_FUNCTION_13_62();
    if (CGRectGetHeight(v10) > 0.0)
    {
      OUTLINED_FUNCTION_13_62();
      Width = CGRectGetWidth(v11);
      OUTLINED_FUNCTION_13_62();
      Height = CGRectGetHeight(v12);
      v4 = *&v0[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
      if (v4)
      {
        v5 = *&v0[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange + 8];

        v6 = OUTLINED_FUNCTION_13_62();
        v4(v6);
        sub_21667E91C(v4, v5);
      }

      v7 = *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar];
      [v7 setFrame_];

      sub_217006684();

      [v7 setContentInset_];
    }
  }
}

uint64_t sub_216C05B5C(uint64_t a1)
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

uint64_t sub_216C05C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C041F4(*v1, v1[1], v1[2]);
  *a1 = result;
  return result;
}

uint64_t sub_216C05C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C06790();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216C05CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C06790();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216C05D40(uint64_t a1)
{
  sub_216C06790();
  sub_2170094F4();
  __break(1u);
}

uint64_t sub_216C05D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[3] = type metadata accessor for FacetBarItemBox();
  v5[0] = a2;

  LOBYTE(a2) = v3(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return a2 & 1;
}

uint64_t sub_216C05E14(uint64_t a1)
{
  sub_21700F8F4();
  (*(*a1 + 104))(v3);
  return sub_21700F944();
}

uint64_t sub_216C05E88(uint64_t a1)
{
  v2 = *v1;
  sub_21700F8F4();
  (*(*v2 + 104))(v4);
  return sub_21700F944();
}

uint64_t sub_216C05EF4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5DE0);
  __swift_project_value_buffer(v0, qword_27CAC5DE0);
  return sub_217007C94();
}

uint64_t sub_216C05F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 128);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t *sub_216C06134()
{
  v1 = *v0;

  (*(*(*(v1 + 128) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_216C061B4()
{
  v0 = sub_216C06134();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C06220()
{
  sub_21700F8F4();
  (*(*v0 + 104))(v2);
  return sub_21700F944();
}

uint64_t sub_216C06364()
{

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_216C063D4()
{
  result = qword_280E42950;
  if (!qword_280E42950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42950);
  }

  return result;
}

uint64_t sub_216C064D4(uint64_t a1)
{
  sub_21700F8F4();
  (*(**v1 + 104))(v3);
  return sub_21700F944();
}

uint64_t sub_216C065D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C06678()
{
  result = qword_280E43F60;
  if (!qword_280E43F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43F60);
  }

  return result;
}

uint64_t sub_216C066CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558, &qword_217053830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C0673C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216C06790()
{
  result = qword_280E43F68[0];
  if (!qword_280E43F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E43F68);
  }

  return result;
}

uint64_t sub_216C067F8(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  OUTLINED_FUNCTION_36(v5);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];

  return sub_216C048C0(a1, a2, v6, v7, v8);
}

uint64_t sub_216C06888(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  OUTLINED_FUNCTION_36(v8);

  return sub_216C04EA8(a1, a2, a3, a4);
}

void sub_216C069C0(uint64_t a1)
{
  sub_216C06B18(319);
  if (v1 <= 0x3F)
  {
    sub_216820E14();
    if (v2 <= 0x3F)
    {
      sub_216C06BAC(319, qword_280E46950, type metadata accessor for MusicPageMetricsProvider);
      if (v3 <= 0x3F)
      {
        sub_216C06BAC(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext);
        if (v4 <= 0x3F)
        {
          sub_216C06BAC(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObjectGraph(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FacetBarState(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C06B18(uint64_t a1)
{
  if (!qword_280E3C7E0)
  {
    v2 = type metadata accessor for JSSearchResultsPage(255);
    v3 = sub_216C08DD0(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage, &unk_21706CAE4);
    v5 = type metadata accessor for CatalogPagePresenter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280E3C7E0);
    }
  }
}

void sub_216C06BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_216C06C1C@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v155 = type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v4 - v3);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E48, &qword_217053A78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v151 = v6;
  v7 = _s14descr28290C1A9V11ContentViewVMa(0);
  OUTLINED_FUNCTION_1();
  v146 = v8;
  MEMORY[0x28223BE20](v9);
  v147 = v10;
  v148 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28, &unk_217041400);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v134 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v132 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v17 - v16);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E50, &qword_217053A80);
  OUTLINED_FUNCTION_1();
  v129 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E58, &qword_217053A88);
  OUTLINED_FUNCTION_1();
  v135 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v25 = OUTLINED_FUNCTION_36(v24);
  MEMORY[0x28223BE20](v25);
  v124 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v120 - v28;
  MEMORY[0x28223BE20](v30);
  v149 = v120 - v31;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E60, &qword_217053A90);
  OUTLINED_FUNCTION_1();
  v140 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E68, &qword_217053A98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E70, &qword_217053AA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E78, &qword_217053AA8);
  OUTLINED_FUNCTION_1();
  v145 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  v144 = v42;
  v43 = _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
  OUTLINED_FUNCTION_36(v48);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  v51 = v120 - v50;
  v52 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_1();
  v125 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_70(v120 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = v56;
  MEMORY[0x28223BE20](v57);
  v150 = v120 - v58;
  v156 = v1;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    sub_216697664(v51, &qword_27CAC5E40, &qword_2170714D0);
    v60 = v156[3];
    v59 = v156[4];
    v61 = *v156;
    v62 = v156[1];
    v63 = v156[2];

    sub_21700DF14();

    swift_unknownObjectRetain();
    v64 = v127;
    sub_216C88D60(v61, v60, v59, v62, v63, v127);
    sub_216C08E18();
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for ObjectGraph(255);
    v66 = sub_216C08BAC();
    v160 = v37;
    v161 = v65;
    v162 = v66;
    OUTLINED_FUNCTION_5_103();
    OUTLINED_FUNCTION_4_113();
    sub_216C08DD0(v67, v68, &unk_21705B400);
    sub_217009554();
    v69 = type metadata accessor for SearchResultsPageView;
    v70 = v64;
  }

  else
  {
    v127 = v37;
    OUTLINED_FUNCTION_3_130();
    v71 = v150;
    sub_216C08E70();
    v72 = type metadata accessor for MenuBuilder();
    v73 = v156;
    v74 = *(v156 + *(v7 + 40));
    v75 = sub_216C65C14();
    v122 = v72;
    v123 = swift_allocObject();
    *(v123 + 16) = v75;
    sub_2166A6EA4();
    v76 = v43[5];
    OUTLINED_FUNCTION_2_137();
    sub_216C08E18();
    __swift_storeEnumTagSinglePayload(v47 + v76, 0, 1, v52);
    v77 = v73[4];
    v78 = (v47 + v43[6]);
    *v78 = v73[3];
    v78[1] = v77;
    *(v47 + v43[7]) = v74;
    v79 = v47 + v43[8];
    *v79 = swift_getKeyPath();
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0;
    v80 = *(v52 + 20);
    v81 = v74;
    v82 = sub_21700D194();
    OUTLINED_FUNCTION_34();
    v84 = &v71[v80];
    v85 = v149;
    (*(v83 + 16))(v149, v84, v82);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v82);
    v86 = v73[2];
    v120[2] = v73[1];
    v120[1] = v86;
    sub_2166A6EA4();
    LODWORD(v82) = __swift_getEnumTagSinglePayload(v29, 1, v82);
    sub_21700DF14();

    v87 = v47;
    v88 = v29;
    if (!v82)
    {
      v89 = sub_21700D0E4();
      if (*v90)
      {
        v159 = MEMORY[0x277D837D0];
        v157 = 0x686372616553;
        v158 = 0xE600000000000000;
        sub_2166EF928();
      }

      v89(&v160, 0);
    }

    v91 = sub_216C08DD0(qword_280E38D80, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa, &unk_217053AF8);
    v92 = v128;
    sub_21700A224();
    v93 = v124;
    sub_2166A6EA4();
    v94 = v130;
    v95 = v134;
    sub_21700D444();
    v121 = v87;
    v120[0] = v88;
    v96 = v133;
    sub_217007584();
    v97 = sub_217007594();
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
    v160 = v43;
    v161 = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v120[3] = v81;
    v99 = v131;
    v100 = v137;
    sub_21700A194();
    sub_216697664(v96, &qword_27CAC1E28, &unk_217041400);
    (*(v132 + 8))(v94, v95);
    sub_216697664(v93, &qword_27CAB8DF8, qword_21701B930);
    (*(v129 + 8))(v92, v100);
    sub_21700D844();
    sub_21700D444();
    v160 = v100;
    v161 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v101 = v139;
    v102 = v138;
    sub_21700A1F4();

    (*(v135 + 8))(v99, v102);
    sub_216697664(v149, &qword_27CAB8DF8, qword_21701B930);
    sub_216697664(v120[0], &qword_27CAB8DF8, qword_21701B930);
    sub_216C08E18();
    OUTLINED_FUNCTION_2_137();
    v103 = v150;
    sub_216C08E18();
    v104 = swift_allocObject();
    sub_216C08E70();
    OUTLINED_FUNCTION_3_130();
    sub_216C08E70();
    v105 = v141;
    (*(v140 + 32))(v141, v101, v142);
    v106 = (v105 + *(v136 + 36));
    *v106 = sub_216C08EC8;
    v106[1] = v104;
    sub_216C08DD0(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    v106[2] = 0;
    v106[3] = 0;
    v107 = sub_217007D54();
    v108 = v143;
    sub_21674D200();
    v109 = v127;
    v110 = (v108 + *(v127 + 36));
    v111 = v123;
    *v110 = v107;
    v110[1] = v111;
    v112 = type metadata accessor for ObjectGraph(0);
    v113 = sub_216C08BAC();

    v114 = v144;
    sub_21700A1E4();
    sub_21674D260(v108);
    v115 = v145;
    v116 = v152;
    (*(v145 + 16))(v151, v114, v152);
    swift_storeEnumTagMultiPayload();
    v160 = v109;
    v161 = v112;
    v162 = v113;
    OUTLINED_FUNCTION_5_103();
    OUTLINED_FUNCTION_4_113();
    sub_216C08DD0(v117, v118, &unk_21705B400);
    sub_217009554();

    (*(v115 + 8))(v114, v116);
    sub_216C08F90(v121, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa);
    v69 = type metadata accessor for JSSearchResultsPage.NoResultsContent;
    v70 = v103;
  }

  return sub_216C08F90(v70, v69);
}

uint64_t sub_216C07AE4(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    v3 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
    return sub_216F0D524(a2 + *(v3 + 20));
  }

  return result;
}

uint64_t sub_216C07B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540, &unk_217020A28);
  v107 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v106 = &v94 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E88, &qword_217053B48);
  MEMORY[0x28223BE20](v114);
  v116 = &v94 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E90, &qword_217053B50);
  v109 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v108 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v94 - v7;
  v111 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  MEMORY[0x28223BE20](v111);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E98, &qword_217053B58);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v94 - v12;
  v104 = sub_2170090F4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContextView = type metadata accessor for SearchResultsQueryContextView(0);
  MEMORY[0x28223BE20](ContextView);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EA0, &qword_217053B60);
  MEMORY[0x28223BE20](v98);
  v101 = &v94 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EA8, &qword_217053B68);
  MEMORY[0x28223BE20](v110);
  v100 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v94 - v22;
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  MEMORY[0x28223BE20](Context);
  MEMORY[0x28223BE20](v25);
  v27 = &v94 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EB0, &qword_217053B70);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v113 = &v94 - v32;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v23, 1, Context) == 1)
  {
    sub_216697664(v23, &qword_27CABFD58, &unk_2170354D0);
    v33 = 1;
    v34 = v113;
    v35 = v110;
  }

  else
  {
    v97 = v30;
    sub_216C08E70();
    sub_216C08E18();
    v36 = _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
    v37 = v36;
    v38 = (v2 + *(v36 + 24));
    if (v38[1])
    {
      v39 = *v38;
      v40 = v38[1];
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v41 = *(v2 + *(v36 + 28));
    sub_216C08E70();
    v42 = &v16[ContextView[5]];
    *v42 = v39;
    *(v42 + 1) = v40;
    *&v16[ContextView[6]] = v41;
    v43 = ContextView[7];
    *&v16[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
    swift_storeEnumTagMultiPayload();
    v44 = &v16[ContextView[8]];
    *v44 = swift_getKeyPath();
    *(v44 + 1) = 0;
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    v44[32] = 0;
    v45 = &v16[ContextView[9]];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    sub_21700DF14();

    v46 = sub_217009CB4();
    v47 = *(v37 + 32);
    v96 = v2;
    v48 = v2 + v47;
    v50 = *v48;
    v49 = *(v48 + 8);
    v52 = *(v48 + 16);
    v51 = *(v48 + 24);
    v53 = *(v48 + 32);
    v95 = v52;
    if (v53 != 1)
    {

      sub_21700ED94();
      v54 = sub_217009C34();
      sub_217007BC4();

      v55 = v102;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v50, v49, v52, v51, 0);
      (*(v103 + 8))(v55, v104);
    }

    v30 = v97;
    v56 = v101;
    sub_217007F24();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_216C08E70();
    v65 = &v56[*(v98 + 36)];
    *v65 = v46;
    *(v65 + 1) = v58;
    *(v65 + 2) = v60;
    *(v65 + 3) = v62;
    *(v65 + 4) = v64;
    v65[40] = 0;
    v66 = sub_217009CD4();
    if (!v53)
    {

      sub_21700ED94();
      v67 = v49;
      v68 = sub_217009C34();
      sub_217007BC4();

      v69 = v102;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v50, v67, v95, v51, 0);
      (*(v103 + 8))(v69, v104);
    }

    sub_217007F24();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_216C08F90(v27, type metadata accessor for JSSearchResultsPage.QueryContext);
    v78 = v100;
    sub_2167A4788();
    v35 = v110;
    v79 = &v78[*(v110 + 36)];
    *v79 = v66;
    *(v79 + 1) = v71;
    *(v79 + 2) = v73;
    *(v79 + 3) = v75;
    *(v79 + 4) = v77;
    v79[40] = 0;
    sub_2167A4788();
    v34 = v113;
    sub_2167A4788();
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v33, 1, v35);
  _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
  v80 = v112;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v80, 1, v111) == 1)
  {
    sub_216697664(v80, &qword_27CAC5E40, &qword_2170714D0);
    v81 = v106;
    sub_2170097E4();
    v82 = v107;
    v83 = v119;
    (*(v107 + 16))(v116, v81, v119);
    swift_storeEnumTagMultiPayload();
    v84 = MEMORY[0x277CDE158];
    sub_2166D9530(&qword_27CAC5EB8, &qword_27CAC5E90, &qword_217053B50, MEMORY[0x277CDE158]);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, v84);
    v85 = v115;
    sub_217009554();
    (*(v82 + 8))(v81, v83);
  }

  else
  {
    v86 = v105;
    v87 = sub_216C08E70();
    MEMORY[0x28223BE20](v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC8, &qword_217053B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5ED0, &qword_217053B88);
    sub_216C09290();
    sub_2166D9530(&qword_27CAC5EE0, &qword_27CAC5ED0, &qword_217053B88, MEMORY[0x277CE1198]);
    v88 = v108;
    sub_2170097D4();
    v89 = v109;
    v90 = v117;
    (*(v109 + 16))(v116, v88, v117);
    swift_storeEnumTagMultiPayload();
    v91 = MEMORY[0x277CDE158];
    sub_2166D9530(&qword_27CAC5EB8, &qword_27CAC5E90, &qword_217053B50, MEMORY[0x277CDE158]);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540, &unk_217020A28, v91);
    v85 = v115;
    sub_217009554();
    (*(v89 + 8))(v88, v90);
    sub_216C08F90(v86, type metadata accessor for JSSearchResultsPage.NoResultsContent);
  }

  sub_2166A6EA4();
  v92 = v118;
  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC0, &qword_217053B78);
  sub_2166A6EA4();
  sub_216697664(v85, &qword_27CAC5E98, &qword_217053B58);
  sub_216697664(v34, &qword_27CAC5EB0, &qword_217053B70);
  sub_216697664(v92, &qword_27CAC5E98, &qword_217053B58);
  return sub_216697664(v30, &qword_27CAC5EB0, &qword_217053B70);
}

uint64_t sub_216C08998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217006274();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21700E4C4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21700E4B4();
  sub_217006264();
  sub_21700E584();
  sub_2167B2E14();
  sub_21700AE34();
  v4 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC8, &qword_217053B80);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

double sub_216C08B14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170093B4();
  v5 = a1[1];
  if (v5)
  {
    v6 = *a1;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;

  sub_21700DF14();
  return result;
}

unint64_t sub_216C08BAC()
{
  result = qword_280E2AFE8;
  if (!qword_280E2AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E70, &qword_217053AA0);
    sub_216C08C64();
    sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFE8);
  }

  return result;
}

unint64_t sub_216C08C64()
{
  result = qword_280E2B1B8;
  if (!qword_280E2B1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E68, &qword_217053A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E58, &qword_217053A88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E50, &qword_217053A80);
    _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(255);
    sub_216C08DD0(qword_280E38D80, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa, &unk_217053AF8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1B8);
  }

  return result;
}

uint64_t sub_216C08DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216C08E18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C08E70()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C08EC8()
{
  v1 = *(_s14descr28290C1A9V11ContentViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_36(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_216C07AE4(v0 + v2, v6);
}

uint64_t sub_216C08F90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216C09010(uint64_t a1)
{
  sub_216C06BAC(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext);
  if (v1 <= 0x3F)
  {
    sub_216C06BAC(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent);
    if (v2 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObjectGraph(319);
        if (v4 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_216C0915C()
{
  result = qword_280E2AA30;
  if (!qword_280E2AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E80, &qword_217053AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E70, &qword_217053AA0);
    type metadata accessor for ObjectGraph(255);
    sub_216C08BAC();
    swift_getOpaqueTypeConformance2();
    sub_216C08DD0(qword_280E39BB0, type metadata accessor for SearchResultsPageView, &unk_21705B400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA30);
  }

  return result;
}

unint64_t sub_216C09290()
{
  result = qword_27CAC5ED8;
  if (!qword_27CAC5ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5EC8, &qword_217053B80);
    sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420, &unk_21706D110, MEMORY[0x277CDEFF0]);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5ED8);
  }

  return result;
}

uint64_t sub_216C09374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216C093A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F08, qword_217053CF0);
  OUTLINED_FUNCTION_16();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_2166A6EFC(v1, &v16 - v10, &qword_27CABB9E8, qword_217028D30);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2166997CC(v11, &qword_27CABB9E8, qword_217028D30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660, &unk_217038F18);
    sub_217007D94();
    sub_2166D9530(&qword_27CAC5F10, &qword_27CAC5F08, qword_217053CF0, MEMORY[0x277CBCE90]);
    v13 = sub_217007E24();
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    sub_2166D9530(&qword_280E484D8, &qword_27CABBA38, &qword_217024F30, MEMORY[0x277CBCEC8]);
    v13 = sub_217007E24();
    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v11, v12);
  }

  return v13;
}

void sub_216C09600(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v72 = a7;
  v75 = a6;
  v76 = a5;
  v77 = a4;
  v74 = a3;
  v58 = a1;
  v69 = a10;
  v71 = a9;
  v66 = a15;
  v67 = a16;
  v65 = a14;
  v63 = a12;
  v62 = a11;
  v19 = *a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  v21 = OUTLINED_FUNCTION_2(v20);
  v68 = v22;
  v60 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_70(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v73 = &v56 - v26;
  v70 = a2;
  v61 = *(v19 + 80);
  v64 = *(v19 + 88);
  v78[0] = a11;
  v78[1] = a12;
  v78[2] = v61;
  v78[3] = a14;
  v78[4] = a15;
  v78[5] = a16;
  v78[6] = v64;
  v27 = *(type metadata accessor for PaginatingGridView(0, v78) + 104);
  *(a8 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for MappedSection(0);
  v29 = *(a17 + 16);
  v30 = v74;
  v31 = *(v74 + v28[8]);
  v32 = v74 + v28[6];
  v33 = v58;
  v57 = a17;
  v29(v58, v31, v32, a13, a17);
  *(a8 + 104) = (*(a17 + 24))(v33, v31, a13, a17);
  *(a8 + 112) = v34;
  *(a8 + 120) = v35;
  *(a8 + 128) = v36;
  *(a8 + 136) = v33;
  v37 = v73;
  sub_2166A6EFC(v30 + v28[10], v73, &qword_27CABFD18, &qword_217035400);
  v38 = v76;
  v39 = v77;
  *(a8 + 160) = v69;
  *(a8 + 168) = v39;
  *(a8 + 176) = v38;
  OUTLINED_FUNCTION_13_63(v75);
  v40 = v71;
  *(a8 + 144) = v72;
  *(a8 + 152) = v40;
  v41 = v59;
  sub_2166A6EFC(v37, v59, &qword_27CABFD18, &qword_217035400);
  v42 = (*(v68 + 80) + 88) & ~*(v68 + 80);
  v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v63;
  v44[2] = v62;
  v44[3] = v45;
  v46 = v61;
  v44[4] = v61;
  v44[5] = a13;
  v47 = v66;
  v44[6] = v65;
  v44[7] = v47;
  v48 = v64;
  v44[8] = v67;
  v44[9] = v48;
  v44[10] = v57;
  sub_216C09F24(v41, v44 + v42);
  *(v44 + v43) = v70;
  v49 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v50 = v75;
  v49[32] = *(v75 + 32);
  v51 = v50[1];
  *v49 = *v50;
  *(v49 + 1) = v51;
  v52 = (v44 + ((v43 + 55) & 0xFFFFFFFFFFFFFFF8));
  v53 = v76;
  *v52 = v77;
  v52[1] = v53;
  swift_unknownObjectRetain();
  sub_2168387D4(v50, v78);
  type metadata accessor for ShelvesPaginatedPresenter(0, v46, v48, v54);
  OUTLINED_FUNCTION_10_76();
  sub_2170081A4();
  OUTLINED_FUNCTION_3_131();
  sub_216C0B82C(v74, v55);
  sub_2166997CC(v73, &qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_18_49();
}

void sub_216C099F8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v69 = a8;
  v70 = a7;
  v73 = a6;
  v74 = a4;
  v68 = a5;
  v72 = a3;
  v66 = a10;
  v62 = a11;
  v63 = a14;
  v64 = a13;
  v18 = *a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  v20 = OUTLINED_FUNCTION_2(v19);
  v65 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70(&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v71 = &v57 - v25;
  v67 = a2;
  v61 = *(v18 + 80);
  v26 = *(*(a15 + 8) + 8);
  v60 = *(v18 + 88);
  v75[0] = a11;
  v75[1] = a12;
  v75[2] = v61;
  v75[3] = a13;
  v75[4] = a14;
  v75[5] = v26;
  v75[6] = v60;
  v27 = *(type metadata accessor for PaginatingGridView(0, v75) + 104);
  *(a9 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for MappedSection(0);
  v29 = *(a15 + 16);
  v30 = v72;
  v31 = *(v72 + v28[8]);
  v32 = v72 + v28[6];
  v58 = a15;
  v29(a1, v31, v32, a12, a15);
  *(a9 + 104) = (*(a15 + 24))(a1, v31, a12, a15);
  *(a9 + 112) = v33;
  *(a9 + 120) = v34;
  *(a9 + 128) = v35;
  *(a9 + 136) = a1;
  v36 = v71;
  sub_2166A6EFC(v30 + v28[10], v71, &qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_13_63(v73);
  v37 = v74;
  *(a9 + 160) = v66;
  *(a9 + 168) = v37;
  v39 = v68;
  v38 = v69;
  *(a9 + 176) = v68;
  *(a9 + 144) = v70;
  *(a9 + 152) = v38;
  v40 = v36;
  v41 = v59;
  sub_2166A6EFC(v40, v59, &qword_27CABFD18, &qword_217035400);
  v42 = (*(v65 + 80) + 72) & ~*(v65 + 80);
  v43 = (v23 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v44[2] = v62;
  v44[3] = a12;
  v45 = v61;
  v47 = v63;
  v46 = v64;
  v44[4] = v61;
  v44[5] = v46;
  v48 = v58;
  v44[6] = v47;
  v44[7] = v48;
  v49 = v60;
  v44[8] = v60;
  sub_216C09F24(v41, v44 + v42);
  *(v44 + v43) = v67;
  v50 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v51 = v73;
  v52 = v74;
  v50[32] = *(v73 + 32);
  v53 = v51[1];
  *v50 = *v51;
  *(v50 + 1) = v53;
  v54 = (v44 + ((v43 + 55) & 0xFFFFFFFFFFFFFFF8));
  *v54 = v52;
  v54[1] = v39;
  sub_2168387D4(v51, v75);
  type metadata accessor for ShelvesPaginatedPresenter(0, v45, v49, v55);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_76();
  sub_2170081A4();
  OUTLINED_FUNCTION_3_131();
  sub_216C0B82C(v72, v56);
  sub_2166997CC(v71, &qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_18_49();
}

uint64_t sub_216C09DC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-v12 - 8];
  type metadata accessor for ShelvesPaginatedPresenter(0, *(v10 + 80), *(v10 + 88), v14);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600, &qword_217047EB8) + 48);
  sub_2166A6EFC(a1, v13, &qword_27CABFD18, &qword_217035400);
  *&v13[v15] = 0;
  swift_storeEnumTagMultiPayload();

  sub_2168387D4(a3, v18);
  swift_unknownObjectRetain();
  return sub_216B48558(v13, a2, a3, a4, a5);
}

uint64_t sub_216C09F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C09F94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_6_90();
  return sub_216C09DC0(v0 + v2, v4, v0 + v3, v5, v6);
}

void sub_216C0A048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShelvesPaginatedPresenter(255, a1[4], a1[8], a4);
  swift_getWitnessTable();
  sub_2170081D4();
  if (v4 <= 0x3F)
  {
    sub_216C0A230(319, &qword_280E402C0, &protocol descriptor for DynamicGridLayout, 1);
    if (v5 <= 0x3F)
    {
      sub_216C0A1E0();
      if (v6 <= 0x3F)
      {
        sub_21700E984();
        if (v7 <= 0x3F)
        {
          sub_2166B0B84();
          if (v8 <= 0x3F)
          {
            sub_216C0A230(319, qword_280E2EAD8, &protocol descriptor for PersistentPaginationStateObserving, 0);
            if (v9 <= 0x3F)
            {
              sub_216C0A284(319);
              if (v10 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C0A1E0()
{
  if (!qword_280E402C8)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E402C8);
    }
  }
}

uint64_t sub_216C0A230(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_216C0A284(uint64_t a1)
{
  if (!qword_280E2B478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9E8, qword_217028D30);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B478);
    }
  }
}

uint64_t sub_216C0A33C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8, qword_217028D30);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v92 = &v63[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA8, &qword_217028DA0);
  v87 = v8;
  OUTLINED_FUNCTION_16();
  v94 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v93 = &v63[-v11];
  OUTLINED_FUNCTION_16();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v73 = v15;
  v96 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v82 = a1[2];
  v16 = sub_21700E984();
  v81 = a1[3];
  v17 = sub_2170089F4();
  OUTLINED_FUNCTION_5_104();
  v80 = v16;
  WitnessTable = swift_getWitnessTable();
  v78 = WitnessTable;
  v97 = a1[7];
  v104 = v97;
  v105 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_0_9();
  v79 = v17;
  v77 = swift_getWitnessTable();
  v19 = a1[5];
  v20 = a1[6];
  *&v99 = v16;
  *(&v99 + 1) = v17;
  v100 = WitnessTable;
  v101 = v77;
  v102 = v19;
  v103 = v20;
  v21 = v19;
  v22 = type metadata accessor for GridView(0, &v99);
  v84 = v22;
  OUTLINED_FUNCTION_16();
  v91 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_70(&v63[-v25]);
  OUTLINED_FUNCTION_9_79();
  v28 = sub_2166D9530(v26, &qword_27CABCCA8, &qword_217028DA0, v27);
  v88 = v28;
  OUTLINED_FUNCTION_8_87();
  v85 = swift_getWitnessTable();
  *&v99 = v8;
  *(&v99 + 1) = v22;
  v100 = v28;
  v101 = v85;
  v89 = sub_217008B74();
  OUTLINED_FUNCTION_16();
  v90 = v29;
  MEMORY[0x28223BE20](v30);
  v83 = &v63[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_70(&v63[-v33]);
  v69 = *(v3 + 136);
  v98 = v69;
  sub_2167B7D58(v3 + 64, &v99);
  v34 = *(v3 + 112);
  v68 = *(v3 + 104);
  v67 = v34;
  v66 = *(v3 + 120);
  v35 = *(v3 + 40);
  v106[0] = *(v3 + 24);
  v106[1] = v35;
  v107 = *(v3 + 56);
  v65 = *(v3 + 144);
  v36 = *(v13 + 16);
  v74 = v13 + 16;
  v75 = v36;
  v64 = *(v3 + 128);
  v37 = v96;
  v36(v96, v3, a1);
  v70 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v38 = v70;
  v39 = swift_allocObject();
  *&v40 = a1[4];
  *(&v40 + 1) = v21;
  v72 = v40;
  *&v41 = v82;
  *(&v41 + 1) = v81;
  v82 = v41;
  *(v39 + 16) = v41;
  *(v39 + 32) = v40;
  v42 = v97;
  *(v39 + 48) = v20;
  *(v39 + 56) = v42;
  v81 = a1[8];
  *(v39 + 64) = v81;
  v71 = *(v13 + 32);
  v71(v39 + v38, v37, a1);
  *(&v62 + 1) = v21;
  *&v62 = v77;
  *(&v61 + 1) = v78;
  *&v61 = v79;
  v60 = v39;
  v43 = v76;
  sub_216830064(&v98, &v99, v68, v67, v66, v64, v106, v65, v76, sub_216C0B4DC, v60, v80, v61, v62, v20);
  sub_21700DF14();
  sub_2168387D4(v106, &v99);
  v44 = v92;
  sub_216C0C94C();
  v45 = sub_216C093A4();
  sub_2166997CC(v44, &qword_27CABB9E8, qword_217028D30);
  *&v99 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCC0, &qword_217053CE0);
  sub_2166D9530(&qword_280E48520, &qword_27CABCCC0, &qword_217053CE0, MEMORY[0x277CBCD90]);
  v46 = v93;
  sub_217007E64();

  v47 = v96;
  v75(v96, v3, a1);
  v48 = v70;
  v49 = swift_allocObject();
  v50 = v72;
  *(v49 + 16) = v82;
  *(v49 + 32) = v50;
  v51 = v97;
  *(v49 + 48) = v20;
  *(v49 + 56) = v51;
  *(v49 + 64) = v81;
  v71(v49 + v48, v47, a1);
  v52 = v83;
  v53 = v84;
  v54 = v87;
  sub_21700ABE4();

  (*(v94 + 8))(v46, v54);
  (*(v91 + 8))(v43, v53);
  OUTLINED_FUNCTION_0_8();
  v55 = v89;
  v56 = swift_getWitnessTable();
  v57 = v86;
  sub_2166C24DC(v52, v55, v56);
  v58 = *(v90 + 8);
  v58(v52, v55);
  sub_2166C24DC(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_216C0AB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v62 = a8;
  v64 = a5;
  v65 = a7;
  v56 = a2;
  v54 = a1;
  v66 = a9;
  v63 = a10;
  v69[0] = a3;
  v69[1] = a4;
  v57 = a3;
  v69[2] = a5;
  v69[3] = a6;
  v59 = a6;
  v69[4] = a7;
  v69[5] = a8;
  v69[6] = a10;
  v13 = type metadata accessor for PaginatingGridView(0, v69);
  v14 = *(v13 - 8);
  v58 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v49 = &v47 - v15;
  v53 = type metadata accessor for GridItemDescriptor(0, a3, a6, v17);
  v18 = *(v53 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v53);
  v21 = &v47 - v20;
  v48 = &v47 - v20;
  v51 = a4;
  v60 = *(a4 - 8);
  MEMORY[0x28223BE20](v22);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170089F4();
  v61 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v52 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v55 = &v47 - v28;
  v29 = v56;
  v30 = v54;
  (*(v56 + 152))(v54, v27);
  v31 = v21;
  v32 = v53;
  (*(v18 + 16))(v31, v30, v53);
  v33 = v16;
  v34 = v13;
  (*(v14 + 16))(v33, v29, v13);
  v35 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v36 = (v19 + *(v14 + 80) + v35) & ~*(v14 + 80);
  v37 = swift_allocObject();
  v38 = v51;
  *(v37 + 2) = v57;
  *(v37 + 3) = v38;
  v39 = v59;
  *(v37 + 4) = v64;
  *(v37 + 5) = v39;
  v40 = v62;
  *(v37 + 6) = v65;
  *(v37 + 7) = v40;
  *(v37 + 8) = v63;
  (*(v18 + 32))(&v37[v35], v48, v32);
  (*(v14 + 32))(&v37[v36], v49, v34);
  v41 = v52;
  v42 = v50;
  sub_21700AAF4();

  (*(v60 + 8))(v42, v38);
  v67 = v40;
  v68 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v44 = v55;
  sub_2166C24DC(v41, v24, WitnessTable);
  v45 = *(v61 + 8);
  v45(v41, v24);
  sub_2166C24DC(v44, v24, WitnessTable);
  return (v45)(v44, v24);
}

uint64_t sub_216C0AFD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + *(type metadata accessor for GridItemDescriptor(0, a3, a6, a4) + 36));
  result = sub_21700E8D4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v10 == result - 1)
  {
    v13 = type metadata accessor for ShelvesPaginatedPresenter(0, a5, a9, v12);
    swift_getWitnessTable();
    sub_2170081B4();
    WitnessTable = swift_getWitnessTable();
    v15 = sub_21686D76C(v13, WitnessTable);

    if (!v15)
    {
      sub_2170081B4();
      v16 = sub_21686D8D0(v13, WitnessTable);

      if (v16)
      {
        sub_2170081B4();
        j__OUTLINED_FUNCTION_0_52(v13, WitnessTable);
      }
    }
  }

  return result;
}

void sub_216C0B170(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F00, &qword_217053CE8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) && (*a1 & 1) == 0)
  {
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = a2[3];
      v23 = a2[4];
      sub_21700DF14();
      sub_216935664(v22, v23, v21);

      if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
      {
        sub_216C0B7C8(v17, v20);
        type metadata accessor for ShelvesPaginatedPresenter(0, a5, a9, v24);
        swift_getWitnessTable();
        sub_2170081B4();
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600, &qword_217047EB8) + 48);
        sub_2166A6EFC(&v20[*(v18 + 48)], v14, &qword_27CABFD18, &qword_217035400);
        *&v14[v25] = 0;
        swift_storeEnumTagMultiPayload();
        sub_216B488C4(v14);

        sub_216C0B82C(v20, _s7SectionVMa);
        return;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    }

    sub_2166997CC(v17, &qword_27CAC5F00, &qword_217053CE8);
  }
}

uint64_t sub_216C0B414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_6_90();
  return sub_216C09DC0(v0 + v2, v4, v0 + v3, v5, v6);
}

uint64_t objectdestroy_5Tm_0()
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v3;
  v10[2] = *(v1 + 48);
  v11 = v2;
  type metadata accessor for PaginatingGridView(0, v10);
  OUTLINED_FUNCTION_117();
  v5 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  sub_2166B8588(*v5, *(v5 + 8));
  sub_216838830(*(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + 64));

  swift_unknownObjectRelease();
  v6 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
    if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216C0B7C8(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C0B82C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C0BA2C()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_216C0BAC4, v5, v4);
}

uint64_t sub_216C0BAC4()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    type metadata accessor for RemoveItemAction(0);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_216B950C8;

    return sub_216A44698();
  }

  else
  {

    v4 = v0[2];
    v5 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v6 + 104))(v4, v5);
    OUTLINED_FUNCTION_3();

    return v7();
  }
}

unint64_t sub_216C0BC3C()
{
  result = qword_280E40948[0];
  if (!qword_280E40948[0])
  {
    type metadata accessor for RemoveItemAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E40948);
  }

  return result;
}

uint64_t sub_216C0BC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216C0BA2C();
}

uint64_t sub_216C0BD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216C0BDAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowIniTunesStoreAction(uint64_t a1)
{
  result = qword_280E374E8;
  if (!qword_280E374E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C0BE5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for ShowIniTunesStoreAction(0) + 20);
  v22 = type metadata accessor for ContentDescriptor(0);
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    v38 = OUTLINED_FUNCTION_2_117();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

uint64_t sub_216C0C28C()
{
  sub_216C0C2E8(v0 + 16);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C0C2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A58, &qword_217013DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C0C3EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3;
  v9 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  result = sub_216683A80(v7, v17, a1, a2);
  if (v19 == 1)
  {
    v14 = v17[1];
    *a3 = v17[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v18;
  }

  else
  {
    sub_21700ED94();
    v15 = sub_217009C34();
    OUTLINED_FUNCTION_44_23(v15, &dword_216679000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v4, v9);
  }

  return result;
}

void sub_216C0C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v20;
  v32 = v31;
  v33 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v27);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_216683A80(v30, &a9 - v38, v29, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(0);
    OUTLINED_FUNCTION_34();
    (*(v40 + 32))(v32, v39);
  }

  else
  {
    sub_21700ED94();
    v41 = sub_217009C34();
    OUTLINED_FUNCTION_44_23(v41, &dword_216679000, v42, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    (*(v35 + 8))(v21, v33);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216C0C76C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v22 = v11;
  v12 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  sub_216683A80(v10, &v21 - v17, v9, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v18, v22, v5, v3);
  }

  else
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    OUTLINED_FUNCTION_44_23(v19, &dword_216679000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    (*(v14 + 8))(v1, v12);
  }

  OUTLINED_FUNCTION_26();
}

BOOL sub_216C0CA0C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7972617262696CLL;
  }

  else
  {
    v4 = 0x676F6C61746163;
  }

  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v7 = 0x676F6C61746163;
    }

    if (v7 == v4)
    {
      swift_bridgeObjectRelease_n();
      return v5 != 0;
    }

    v8 = sub_21700F7D4();
    swift_bridgeObjectRelease_n();
    ++v3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_216C0CAF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_82();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  sub_216683A80(a1, &v8 - v6, &qword_27CAB8600, &qword_217020AD0);
  return sub_217008F74();
}

uint64_t sub_216C0CB94(void *a1)
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v4 = type metadata accessor for UserSocialProfileCoordinator(0);
  OUTLINED_FUNCTION_61_14(v4);
  if (v9)
  {
  }

  else
  {
    v5 = a1;
    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v6 = OUTLINED_FUNCTION_41_27();
    v7(v6);
  }

  return v1;
}

uint64_t sub_216C0CC7C(void *a1)
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v4 = sub_216685F4C(0, &qword_280E29BD8, 0x277CCAB98);
  OUTLINED_FUNCTION_61_14(v4);
  if (v9)
  {
  }

  else
  {
    v5 = a1;
    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v6 = OUTLINED_FUNCTION_41_27();
    v7(v6);
  }

  return v1;
}

uint64_t sub_216C0CD74()
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v2 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_61_14(v2);
  if (v6)
  {
  }

  else
  {

    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v3 = OUTLINED_FUNCTION_41_27();
    v4(v3);
  }

  return v0;
}

void sub_216C0CE60()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6258, &qword_217054668);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  type metadata accessor for MenuBuilder();
  v8 = sub_216C65C14();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);
  OUTLINED_FUNCTION_42_0();
  v10 = sub_217007D54();
  sub_216683A80(v1, v7, &qword_27CAC1610, &qword_217054670);
  v11 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6260, &qword_217054678) + 36)];
  *v11 = v10;
  v11[1] = v9;
  type metadata accessor for AddToPlaylistMenuBuilder();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

  v13 = sub_217007D54();
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6268, &qword_217054680) + 36)];
  *v14 = v13;
  v14[1] = v12;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v15 = v22;
  sub_2166B2EC4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  OUTLINED_FUNCTION_42_0();
  v16 = sub_217007D54();
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6270, &unk_217054688) + 36)];
  *v17 = v16;
  v17[1] = v15;
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  v18 = v22;
  sub_2166B2EC4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  OUTLINED_FUNCTION_42_0();
  v19 = sub_217007D54();
  v20 = &v7[*(v4 + 36)];
  *v20 = v19;
  v20[1] = v18;
  sub_216C1ED08();
  sub_21700A1E4();
  sub_216699778(v7, &qword_27CAC6258);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C0D15C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6178, &qword_2170544A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  type metadata accessor for MenuBuilder();
  v7 = sub_216C65C14();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);
  v9 = sub_217007D54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6238, &qword_2170545E0);
  (*(*(v10 - 8) + 16))(v6, v2, v10);
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6190, &qword_2170544B8) + 36)];
  *v11 = v9;
  v11[1] = v8;
  type metadata accessor for AddToPlaylistMenuBuilder();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

  v13 = sub_217007D54();
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6188, &qword_2170544B0) + 36)];
  *v14 = v13;
  v14[1] = v12;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v15 = v23;
  sub_2166B2EC4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  v16 = sub_217007D54();
  v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6180, &qword_2170544A8) + 36)];
  *v17 = v16;
  v17[1] = v15;
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  v18 = v23;
  sub_2166B2EC4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v19 = sub_217007D54();
  v20 = &v6[*(v4 + 36)];
  *v20 = v19;
  v20[1] = v18;
  sub_216C1E4B4();
  sub_21700A1E4();
  return sub_216699778(v6, &qword_27CAC6178);
}

uint64_t sub_216C0D4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008E14();
  *a1 = result & 1;
  return result;
}

void sub_216C0D4DC()
{
  OUTLINED_FUNCTION_49();
  v422 = v0;
  v2 = v1;
  v394 = v3;
  v393 = sub_217008734();
  OUTLINED_FUNCTION_1();
  v392 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v391 = v7 - v6;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8, &qword_2170180D8);
  OUTLINED_FUNCTION_1();
  v390 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v389 = v10;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v406 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F40, &qword_217054140);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v388 = v15;
  OUTLINED_FUNCTION_16();
  v420 = v16;
  v416 = *(v17 + 64);
  MEMORY[0x28223BE20](v18);
  v412 = v314 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48, &qword_217054148);
  v383 = v20;
  v22 = *(v2 + 3);
  v419 = *(v2 + 2);
  v21 = v419;
  v418 = v22;
  OUTLINED_FUNCTION_15_58();
  v382 = sub_21680DFBC(v23, v24);
  v415 = v2;
  v25 = *(v2 + 5);
  v421 = *(v2 + 4);
  v417 = v25;
  v449 = v20;
  v450 = v21;
  v451 = v22;
  v452 = v382;
  v453 = v421;
  v454 = v25;
  v26 = type metadata accessor for SearchBootstrapView(255, &v449);
  OUTLINED_FUNCTION_34_30();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_2167B2E14();
  v29 = MEMORY[0x277D837D0];
  v449 = v26;
  v450 = MEMORY[0x277D837D0];
  v30 = v26;
  v451 = WitnessTable;
  v452 = v28;
  v31 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50, &qword_217054150);
  v449 = v26;
  v450 = v29;
  v451 = WitnessTable;
  v452 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_55();
  v37 = sub_21680DFBC(v35, v36);
  v449 = OpaqueTypeMetadata2;
  v450 = v33;
  v451 = OpaqueTypeConformance2;
  v452 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v449 = OpaqueTypeMetadata2;
  v450 = v33;
  v451 = OpaqueTypeConformance2;
  v452 = v37;
  v39 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v336 = v30;
  v337 = v38;
  v449 = v30;
  v450 = MEMORY[0x277CE1350];
  v451 = v38;
  v452 = OpaqueTypeMetadata2;
  v41 = v38;
  v42 = OpaqueTypeMetadata2;
  v340 = OpaqueTypeMetadata2;
  v343 = v40;
  v344 = WitnessTable;
  v453 = WitnessTable;
  v454 = MEMORY[0x277CE1340];
  v43 = MEMORY[0x277CE1340];
  v455 = v40;
  v456 = v39;
  v44 = v40;
  v342 = v39;
  v45 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v369 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v355 = v48;
  v449 = v30;
  v450 = MEMORY[0x277CE1350];
  v451 = v41;
  v452 = v42;
  v453 = v31;
  v454 = v43;
  v455 = v44;
  v49 = v43;
  v456 = v39;
  v50 = OUTLINED_FUNCTION_14_60();
  v449 = v45;
  v450 = v50;
  v320 = v45;
  v51 = v50;
  v322 = v50;
  OUTLINED_FUNCTION_27_42();
  v345 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v364 = v52;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v341 = v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F58, &qword_217054158);
  OUTLINED_FUNCTION_72_0();
  v55 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v365 = v56;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_105();
  v335 = v58;
  v449 = v45;
  v450 = v51;
  v59 = OUTLINED_FUNCTION_14_60();
  v321 = v59;
  OUTLINED_FUNCTION_7_5();
  v408 = v60;
  v62 = sub_21680DFBC(v61, &qword_27CAC5F58);
  v447 = v59;
  v448 = v62;
  OUTLINED_FUNCTION_0_9();
  v407 = v63;
  v64 = swift_getWitnessTable();
  v449 = v55;
  v450 = v64;
  v65 = v55;
  v316 = v55;
  v317 = v64;
  v66 = v64;
  OUTLINED_FUNCTION_23_40();
  v67 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v366 = v68;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_105();
  v315 = v70;
  v449 = v65;
  v450 = v66;
  v71 = OUTLINED_FUNCTION_14_60();
  v449 = v67;
  v450 = MEMORY[0x277D839B0];
  v328 = v67;
  v72 = MEMORY[0x277D839B0];
  v451 = v71;
  v452 = MEMORY[0x277D839C8];
  v73 = v71;
  v329 = v71;
  v74 = MEMORY[0x277D839C8];
  OUTLINED_FUNCTION_22_44();
  v75 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v371 = v76;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_105();
  v396 = v78;
  v449 = v67;
  v450 = v72;
  v451 = v73;
  v452 = v74;
  v79 = OUTLINED_FUNCTION_14_60();
  v80 = sub_2169D46A0();
  v81 = v75;
  v332 = v75;
  v333 = v80;
  v82 = v397;
  v449 = v75;
  v450 = v397;
  v451 = v79;
  v452 = v80;
  v334 = v79;
  v83 = v80;
  v84 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v384 = v85;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_105();
  v398 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
  v449 = v81;
  v450 = v82;
  v451 = v79;
  v452 = v83;
  v89 = OUTLINED_FUNCTION_14_60();
  v90 = sub_216C1BF40();
  v356 = v84;
  v357 = v90;
  v449 = v84;
  v450 = v88;
  v358 = v89;
  v359 = v88;
  v451 = v89;
  v452 = v90;
  v91 = v89;
  v92 = v90;
  v93 = OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_16();
  v375 = v94;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_105();
  v353 = v96;
  v449 = v84;
  v450 = v88;
  v451 = v91;
  v452 = v92;
  v97 = OUTLINED_FUNCTION_14_60();
  v449 = v93;
  v450 = v97;
  v346 = v93;
  v347 = v97;
  v98 = v97;
  v99 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v381 = v100;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_105();
  v400 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68, &qword_217054168);
  v449 = v93;
  v450 = v98;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = sub_216C1C018();
  v449 = v99;
  v450 = v103;
  v451 = v104;
  v452 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v449 = MEMORY[0x277CE1350];
  v450 = v49;
  OUTLINED_FUNCTION_27_1();
  v107 = swift_getOpaqueTypeConformance2();
  v449 = v99;
  v450 = v103;
  v451 = v104;
  v452 = v105;
  v108 = OUTLINED_FUNCTION_51_12();
  v109 = v99;
  v324 = v99;
  v325 = v107;
  v110 = v395;
  v449 = v99;
  v450 = v395;
  v318 = v106;
  v319 = v108;
  v451 = v106;
  v452 = v104;
  v326 = v104;
  v453 = v107;
  v454 = v108;
  v111 = v108;
  v112 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v367 = v113;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_105();
  v323 = v115;
  v449 = v109;
  v450 = v110;
  v451 = v106;
  v452 = v104;
  v453 = v107;
  v454 = v111;
  v116 = OUTLINED_FUNCTION_51_12();
  v117 = v112;
  v330 = v112;
  v331 = v116;
  v449 = v112;
  v450 = v116;
  v118 = v116;
  v119 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v370 = v120;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_105();
  v327 = v122;
  v449 = v117;
  v450 = v118;
  v123 = OUTLINED_FUNCTION_51_12();
  v449 = v119;
  v450 = v123;
  v124 = v119;
  v338 = v119;
  v339 = v123;
  v125 = v123;
  v126 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v374 = v127;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_105();
  v399 = v129;
  v449 = v124;
  v450 = v125;
  v130 = OUTLINED_FUNCTION_51_12();
  v449 = v126;
  v131 = v126;
  v348 = v126;
  v132 = MEMORY[0x277D839B0];
  v450 = MEMORY[0x277D839B0];
  v451 = v130;
  v133 = v130;
  v349 = v130;
  v134 = MEMORY[0x277D839C8];
  v452 = MEMORY[0x277D839C8];
  v135 = OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_16();
  v379 = v136;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_105();
  v401 = v138;
  v449 = v131;
  v450 = v132;
  v451 = v133;
  v452 = v134;
  v139 = OUTLINED_FUNCTION_14_60();
  v449 = v135;
  v450 = v139;
  v352 = v135;
  v140 = v139;
  v354 = v139;
  v141 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v380 = v142;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_105();
  v402 = v144;
  v449 = v135;
  v450 = v140;
  v145 = OUTLINED_FUNCTION_14_60();
  v449 = v141;
  v450 = v145;
  v146 = v141;
  v350 = v141;
  v351 = v145;
  v147 = v145;
  OUTLINED_FUNCTION_32_27();
  v148 = swift_getOpaqueTypeMetadata2();
  v403 = v148;
  OUTLINED_FUNCTION_16();
  v376 = v149;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_105();
  v360 = v151;
  v152 = type metadata accessor for FacetBarState(255);
  v363 = v152;
  v449 = v146;
  v450 = v147;
  v153 = OUTLINED_FUNCTION_14_60();
  v362 = v153;
  OUTLINED_FUNCTION_29_38();
  v361 = sub_2166B2EC4(v154, v155);
  v449 = v148;
  v450 = v152;
  v451 = v153;
  v452 = v361;
  v373 = MEMORY[0x277CE0C50];
  v368 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v378 = v156;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_105();
  v404 = v158;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FA8, &qword_2170541A8);
  OUTLINED_FUNCTION_72_0();
  v377 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v385 = v159;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_105();
  v405 = v161;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FB0, &qword_2170541B0);
  OUTLINED_FUNCTION_72_0();
  v386 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v387 = v162;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_105();
  v372 = v164;
  v314[1] = *v422;
  v165 = v420;
  v411 = *(v420 + 16);
  v414 = v420 + 16;
  v166 = v412;
  v167 = v415;
  v411(v412);
  v168 = v165;
  v410 = *(v165 + 80);
  v169 = (v410 + 48) & ~v410;
  v413 = v169;
  v170 = swift_allocObject();
  v171 = v419;
  v172 = v418;
  v170[2] = v419;
  v170[3] = v172;
  v173 = v421;
  v174 = v417;
  v170[4] = v421;
  v170[5] = v174;
  v175 = *(v168 + 32);
  v420 = v168 + 32;
  v409 = v175;
  v175(v170 + v169, v166, v167);
  nullsub_1();
  v449 = v176;
  v450 = v177;
  v451 = v178;

  sub_21700B314();
  v433 = v171;
  v434 = v172;
  v435 = v173;
  v436 = v174;
  v179 = v422;
  v437 = v422;
  v428 = v171;
  v429 = v172;
  v430 = v173;
  v431 = v174;
  v432 = v422;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_21700AB34();

  v180 = v341;
  v181 = v320;
  MEMORY[0x21CE9B5E0](1, v320, v322);
  v182 = OUTLINED_FUNCTION_77_11();
  v183(v182, v181);
  v184 = sub_21700E4D4();
  v185 = v335;
  v186 = v345;
  sub_21700A5E4();

  (*(v364 + 8))(v180, v186);
  v187 = v388;
  sub_217009A44();
  v188 = sub_217009A64();
  __swift_storeEnumTagSinglePayload(v187, 0, 1, v188);
  v190 = v315;
  v189 = v316;
  OUTLINED_FUNCTION_22_4();
  sub_21700A8E4();
  sub_216699778(v187, &qword_27CAC5F40);
  (*(v365 + 8))(v185, v189);
  v191 = v415;
  v192 = v179 + v415[16];
  v193 = *v192;
  v194 = *(v192 + 1);
  LOBYTE(v449) = v193;
  v450 = v194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  OUTLINED_FUNCTION_73_10();
  sub_21700AEB4();
  LOBYTE(v449) = v445;
  v195 = v412;
  v196 = OUTLINED_FUNCTION_82();
  v197 = v191;
  v198 = v411;
  v411(v196);
  v199 = v413;
  v200 = swift_allocObject();
  v201 = OUTLINED_FUNCTION_75_13(v200);
  v202 = OUTLINED_FUNCTION_55_18(v201);
  v203 = v197;
  v409(v202 + v199, v195, v197);
  v204 = v328;
  sub_21700AB14();

  (*(v366 + 8))(v190, v204);
  v205 = v406;
  sub_216C0C76C();
  v206 = v412;
  v207 = OUTLINED_FUNCTION_109();
  v198(v207);
  v208 = v413;
  v209 = swift_allocObject();
  v210 = OUTLINED_FUNCTION_75_13(v209);
  v211 = v421;
  v212 = v417;
  *(v210 + 32) = v421;
  *(v210 + 40) = v212;
  v213 = v203;
  v214 = v409;
  v409(v210 + v208, v206, v213);
  sub_21700AB04();

  sub_216699778(v205, &qword_27CAB8600);
  v215 = OUTLINED_FUNCTION_12_65();
  v216(v215);
  v217 = v415;
  v218 = v422;
  v219 = (v422 + v415[19]);
  v221 = *v219;
  v220 = v219[1];
  v449 = v221;
  v450 = v220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  OUTLINED_FUNCTION_73_10();
  sub_21700AEB4();
  sub_216F0FE50();
  v223 = v222;

  v449 = v223;
  (v411)(v206, v218, v217);
  v224 = v413;
  v225 = swift_allocObject();
  v226 = v419;
  v227 = v418;
  *(v225 + 2) = v419;
  *(v225 + 3) = v227;
  *(v225 + 4) = v211;
  *(v225 + 5) = v212;
  v214(&v225[v224], v206, v217);
  sub_21700AB04();

  v228 = OUTLINED_FUNCTION_12_65();
  v229(v228);
  v230 = v422;
  sub_216C136B0(v217);
  LOBYTE(v217) = v231;
  v233 = v232;
  v234 = v346;
  sub_21700A4B4();
  v235 = OUTLINED_FUNCTION_22_4();
  sub_2167C4DF0(v235, v236, v217, v233);
  v237 = OUTLINED_FUNCTION_77_11();
  v238(v237, v234);
  sub_21700B314();
  sub_2170092A4();
  v423 = v226;
  v239 = v418;
  v424 = v418;
  v425 = v421;
  v426 = v417;
  v427 = v230;
  swift_checkMetadataState();
  v240 = v323;
  sub_21700AB44();
  v241 = OUTLINED_FUNCTION_109();
  v242(v241);
  v243 = OUTLINED_FUNCTION_12_65();
  v244(v243);
  v245 = v415;
  v246 = v230 + v415[15];
  v247 = v230;
  LODWORD(v400) = *v246;
  v398 = *(v246 + 1);
  LODWORD(v397) = v246[16];
  LOBYTE(v449) = v400;
  v450 = v398;
  LOBYTE(v451) = v397;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  OUTLINED_FUNCTION_73_10();
  sub_217007F64();
  v248 = v330;
  sub_21700A524();

  (*(v367 + 8))(v240, v248);
  v249 = v391;
  sub_217008724();
  v250 = v412;
  (v411)(v412, v247, v245);
  v251 = v413;
  v252 = swift_allocObject();
  *(v252 + 16) = v419;
  *(v252 + 24) = v239;
  v253 = OUTLINED_FUNCTION_55_18(v252);
  v254 = v245;
  v409(v253 + v251, v250, v245);
  v255 = v338;
  sub_21700AB24();

  (*(v392 + 8))(v249, v393);
  v256 = OUTLINED_FUNCTION_77_11();
  v257(v256, v255);
  LOBYTE(v449) = v400;
  v450 = v398;
  LOBYTE(v451) = v397;
  OUTLINED_FUNCTION_73_10();
  sub_217007F44();
  LOBYTE(v449) = v445;
  v258 = v422;
  v259 = v254;
  v260 = v411;
  (v411)(v250, v422, v254);
  v261 = v413;
  v262 = swift_allocObject();
  v263 = v418;
  *(v262 + 16) = v419;
  *(v262 + 24) = v263;
  v264 = OUTLINED_FUNCTION_55_18(v262);
  v409(v264 + v261, v250, v259);
  sub_21700AB04();

  v265 = OUTLINED_FUNCTION_12_65();
  v266(v265);
  v267 = v412;
  v268 = v415;
  (v260)(v412, v258, v415);
  v269 = v413;
  v270 = swift_allocObject();
  v271 = v419;
  v270[2] = v419;
  v270[3] = v263;
  v272 = v417;
  v270[4] = v421;
  v270[5] = v272;
  v273 = v409;
  v409(v270 + v269, v267, v268);
  sub_21700A754();

  v274 = OUTLINED_FUNCTION_12_65();
  v275(v274);
  v276 = v415;
  (v411)(v267, v422, v415);
  v277 = swift_allocObject();
  v278 = v418;
  *(v277 + 2) = v271;
  *(v277 + 3) = v278;
  *(v277 + 4) = v421;
  *(v277 + 5) = v272;
  v273(&v277[v269], v267, v276);
  v279 = v350;
  sub_21700A684();

  v280 = OUTLINED_FUNCTION_38_33();
  v281(v280, v279);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  sub_21700B474();
  v283 = v362;
  v282 = v363;
  v284 = v361;
  sub_21700A3C4();

  v285 = OUTLINED_FUNCTION_109();
  v286(v285);
  type metadata accessor for SearchPagePresenter(0);
  OUTLINED_FUNCTION_30_39();
  sub_2166B2EC4(v287, v288);
  sub_2170081B4();
  v449 = v403;
  v450 = v282;
  v451 = v283;
  v452 = v284;
  v289 = swift_getOpaqueTypeConformance2();
  v290 = v368;
  sub_21700A654();

  v291 = OUTLINED_FUNCTION_38_33();
  v292(v291, v290);
  sub_217006A14();
  sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
  sub_2170081B4();
  v293 = sub_21680DFBC(&qword_280E2A7D0, &qword_27CAC5FA8);
  v444[4] = v289;
  v444[5] = v293;
  v294 = v377;
  v295 = swift_getWitnessTable();
  v296 = v372;
  sub_21700A654();

  v297 = OUTLINED_FUNCTION_38_33();
  v298(v297, v294);
  v299 = sub_2170098A4();
  v300 = v406;
  __swift_storeEnumTagSinglePayload(v406, 1, 1, v299);
  v301 = sub_21680DFBC(&qword_280E2A750, &qword_27CAC5FB0);
  v444[2] = v295;
  v444[3] = v301;
  v302 = v386;
  v303 = swift_getWitnessTable();
  v304 = OUTLINED_FUNCTION_22_4();
  sub_216926A80(v304, v305, v303, v306);
  sub_216699778(v300, &qword_27CAB8600);
  (*(v387 + 8))(v296, v302);
  v444[0] = v445;
  v444[1] = v446;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v307 = sub_21680DFBC(&qword_280E2A760, &qword_27CABCC88);
  v442 = v303;
  v443 = v307;
  v308 = swift_getWitnessTable();
  v309 = sub_21680DFBC(&qword_280E2A740, &qword_27CABCC90);
  v440 = v308;
  v441 = v309;
  v310 = swift_getWitnessTable();
  v311 = sub_21680DFBC(&qword_280E2A758, &qword_27CAB93F0);
  v438 = v310;
  v439 = v311;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_72_0();
  v312 = sub_2170085A4();
  OUTLINED_FUNCTION_21_5();
  v313 = swift_getWitnessTable();
  sub_2166C24DC(v444, v312, v313);

  v445 = v449;
  v446 = v450;
  sub_2166C24DC(&v445, v312, v313);

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C0F3E8@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v152 = a7;
  v153 = a8;
  v11 = a7;
  v150 = a6;
  v140 = a4;
  v134 = a3;
  v133 = a2;
  v139 = a1;
  v142 = a9;
  v151 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v148 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v141 = v125 - v18;
  MEMORY[0x28223BE20](v19);
  v143 = v125 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v125 - v22;
  v132 = type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  v155 = a6;
  v156 = v11;
  v157 = a8;
  v158 = a10;
  v24 = type metadata accessor for SearchPageView(0, &v155);
  v131 = type metadata accessor for SearchPagePresenter(0);
  v130 = sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  v25 = sub_2170081B4();
  v126 = v24;
  v26 = (a5 + *(v24 + 60));
  LODWORD(v145) = *v26;
  v144 = *(v26 + 1);
  LODWORD(v147) = v26[16];
  LOBYTE(v155) = v145;
  v156 = v144;
  LOBYTE(v157) = v147;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F64();
  v27 = v160;
  v28 = v161;
  LOBYTE(v11) = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  v154 = a5;
  sub_21700B474();
  v29 = v155;
  v155 = v25;
  v156 = v27;
  v157 = v28;
  LOBYTE(v158) = v11;
  v159 = v29;
  v138 = *(v15 + 16);
  (v138)(v143, v23, v14);
  sub_216B8B820();
  sub_21700D5A4();
  v30 = *(v15 + 8);
  v149 = v15 + 8;
  (v30)(v23, v14);

  v31 = v126;
  v129 = sub_217006A14();
  v128 = sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
  v32 = sub_2170081B4();
  v33 = v141;
  v34 = v143;
  sub_2167B3B10(v32, v141);

  (v30)(v34, v14);
  LOBYTE(v155) = v145;
  v156 = v144;
  LOBYTE(v157) = v147;
  sub_217007F64();
  v155 = v160;
  v156 = v161;
  LOBYTE(v157) = v162;
  v35 = v148;
  (v138)(v148, v33, v14);
  sub_216C1CCB0();
  sub_21700D5A4();
  v143 = v14;
  v141 = v30;
  (v30)(v33, v14);

  sub_216E9C508(v35);
  v36 = v154;
  type metadata accessor for MusicPageMetricsProvider(0);
  sub_2166B2EC4(qword_280E46A08, type metadata accessor for MusicPageMetricsProvider);
  sub_2170081B4();
  v37 = sub_216C0CD74();

  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6028, &qword_2170542F8);
  MEMORY[0x28223BE20](v138);
  v139 = v125 - v38;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6030, &qword_217054300);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = v125 - v39;
  v40 = type metadata accessor for SearchPageContentView(0);
  v41 = (v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v155) = v145;
  v156 = v144;
  LOBYTE(v157) = v147;
  sub_217007F64();
  v146 = v161;
  v147 = v160;
  LODWORD(v145) = v162;
  LODWORD(v144) = sub_216C1052C(v31);
  LODWORD(v127) = sub_216C106A4(v31);
  v44 = (v36 + *(v31 + 76));
  v46 = *v44;
  v45 = v44[1];
  v155 = v46;
  v156 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0, &unk_2170541C0);
  sub_21700AEB4();
  sub_216F0FE50();
  v48 = v47;

  *(v43 + 1) = sub_217008CF4();
  *(v43 + 2) = v49;
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  *(v43 + 3) = sub_217008CF4();
  *(v43 + 4) = v50;
  *(v43 + 5) = sub_217008CF4();
  *(v43 + 6) = v51;
  *(v43 + 7) = swift_getKeyPath();
  v43[64] = 0;
  type metadata accessor for FacetBarState(0);
  sub_2166B2EC4(qword_280E44190, type metadata accessor for FacetBarState);
  *(v43 + 9) = sub_217008104();
  v43[80] = v52 & 1;
  v53 = v41[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54D0, &qword_217051210);
  sub_217007FF4();
  v54 = &v43[v41[19]];
  LOBYTE(v160) = 0;
  sub_21700AEA4();
  v55 = v156;
  *v54 = v155;
  *(v54 + 1) = v55;
  type metadata accessor for AppDestinationPageProviderBox();
  sub_21700E094();
  *&v43[v41[13]] = v155;
  *v43 = v37;
  v56 = &v43[v41[14]];
  v57 = v133;
  v58 = v134;
  *v56 = v133;
  v56[1] = v58;
  v59 = v140;
  v56[2] = v140;
  v60 = &v43[v41[15]];
  v61 = v146;
  *v60 = v147;
  *(v60 + 1) = v61;
  v60[16] = v145;
  v43[v41[17]] = v127 & 1;
  v43[v41[16]] = v144 & 1;
  *&v43[v41[18]] = v48;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  MEMORY[0x28223BE20](v62 - 8);
  v64 = v125 - v63;
  sub_2169D4E84(v57, v58, v59);
  sub_217007FF4();
  v65 = sub_216C1CD04(v64, &v43[v53]);
  v66 = *(v31 - 8);
  v67 = *(v66 + 64);
  v68 = MEMORY[0x28223BE20](v65);
  v70 = v125 - v69;
  v145 = *(v66 + 16);
  v146 = v66 + 16;
  v145(v125 - v69, v154, v31, v68);
  sub_21700EA34();

  v71 = sub_21700EA24();
  v72 = *(v66 + 80);
  v132 = ~v72;
  v73 = (v72 + 64) & ~v72;
  v134 = v67;
  v131 = v67 + 7;
  v74 = (v67 + 7 + v73) & 0xFFFFFFFFFFFFFFF8;
  v133 = v72;
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D85700];
  *(v75 + 2) = v71;
  *(v75 + 3) = v76;
  v77 = v152;
  v78 = v153;
  *(v75 + 4) = v150;
  *(v75 + 5) = v77;
  v79 = v151;
  *(v75 + 6) = v78;
  *(v75 + 7) = v79;
  v80 = *(v66 + 32);
  v81 = v70;
  v82 = v31;
  v147 = v66 + 32;
  v80(&v75[v73], v81, v31);
  v140 = v37;
  *&v75[v74] = v37;
  v83 = sub_21700EA74();
  v84 = *(v83 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v125 - v86;
  sub_21700EA44();
  isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
  v144 = v80;
  if (isPlatformVersionAtLeast)
  {
    v129 = sub_2170087B4();
    v130 = v125;
    v128 = *(v129 - 8);
    MEMORY[0x28223BE20](v129);
    v127 = v125 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    v155 = 0;
    v156 = 0xE000000000000000;
    sub_21700F3B4();

    v155 = 0xD000000000000029;
    v156 = 0x800000021708AD90;
    v160 = 54;
    v90 = sub_21700F784();
    MEMORY[0x21CE9F490](v90);

    v125[1] = v125;
    v92 = MEMORY[0x28223BE20](v91);
    (*(v84 + 16))(v125 - v86, v125 - v86, v83, v92);
    v93 = v127;
    sub_2170087A4();
    (*(v84 + 8))(v87, v83);
    v94 = v135;
    sub_216C1E9E8(v43, v135, type metadata accessor for SearchPageContentView);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F0, &unk_217012D40);
    (*(v128 + 32))(v94 + *(v95 + 36), v93, v129);
  }

  else
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F8, &unk_217054350);
    v94 = v135;
    v97 = (v135 + *(v96 + 36));
    v98 = sub_217008554();
    (*(v84 + 32))(&v97[*(v98 + 20)], v125 - v86, v83);
    *v97 = &unk_217054340;
    *(v97 + 1) = v75;
    sub_216C1E9E8(v43, v94, type metadata accessor for SearchPageContentView);
  }

  v99 = sub_216C1EA44(v43, type metadata accessor for SearchPageContentView);
  v100 = v134;
  v101 = MEMORY[0x28223BE20](v99);
  v130 = ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (v125 - v130);
  v145((v125 - v130), v154, v82, v101);
  v103 = (v133 + 48) & v132;
  v104 = (v131 + v103) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = v152;
  v107 = v153;
  *(v105 + 2) = v150;
  *(v105 + 3) = v106;
  v108 = v151;
  *(v105 + 4) = v107;
  *(v105 + 5) = v108;
  v135 = v103;
  v144(v105 + v103, v102, v82);
  v109 = v140;
  *(v105 + v104) = v140;
  v110 = v139;
  (*(v136 + 32))(v139, v94, v137);
  v111 = (v110 + *(v138 + 36));
  *v111 = sub_216C1CFAC;
  v111[1] = v105;
  v111[2] = 0;
  v111[3] = 0;
  v112 = objc_opt_self();

  v113 = [v112 defaultCenter];
  if (qword_280E29C70 != -1)
  {
    swift_once();
  }

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F48, &qword_217054148);
  v115 = v142;
  sub_21700EFC4();

  v116 = (v141)(v148, v143);
  v117 = MEMORY[0x28223BE20](v116);
  v118 = (v125 - v130);
  v145((v125 - v130), v154, v82, v117);
  v119 = swift_allocObject();
  v120 = v152;
  v121 = v153;
  *(v119 + 2) = v150;
  *(v119 + 3) = v120;
  v122 = v151;
  *(v119 + 4) = v121;
  *(v119 + 5) = v122;
  v144(v119 + v135, v118, v82);
  *(v119 + v104) = v109;
  result = sub_2167C5834(v110, v115, &qword_27CAC6028, &qword_2170542F8);
  v124 = (v115 + *(v114 + 56));
  *v124 = sub_216C1D1D0;
  v124[1] = v119;
  return result;
}

uint64_t sub_216C1052C(uint64_t a1)
{
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F44();
  if (!v7)
  {
    sub_216C1C864(v6);
LABEL_7:
    v3 = 0;
    return v3 & 1;
  }

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  sub_216C1C864(v6);
  if (v5 & 1) != 0 || (sub_216C15C24(a1))
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  sub_21700B474();
  v2 = sub_216C03D14();

  v3 = v2 ^ 1;
  return v3 & 1;
}

uint64_t sub_216C106A4(uint64_t a1)
{
  v3 = sub_2170098A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v33 = a1;
  v34 = v1;
  v18 = v4;
  sub_216C0C76C();
  (*(v4 + 104))(v14, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_216683A80(v17, v9, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v14, &v9[v19], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    v20 = v35;
    sub_216683A80(v9, v35, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
    {
      v22 = v32;
      (*(v18 + 32))(v32, &v9[v19], v3);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v23 = sub_21700E494();
      v24 = *(v18 + 8);
      v24(v22, v3);
      sub_216699778(v14, &qword_27CAB8600);
      sub_216699778(v17, &qword_27CAB8600);
      v24(v20, v3);
      sub_216699778(v9, &qword_27CAB8600);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_216699778(v14, &qword_27CAB8600);
    sub_216699778(v17, &qword_27CAB8600);
    (*(v18 + 8))(v20, v3);
LABEL_6:
    sub_216699778(v9, &qword_27CAB8708);
    goto LABEL_7;
  }

  sub_216699778(v14, &qword_27CAB8600);
  sub_216699778(v17, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_216699778(v9, &qword_27CAB8600);
LABEL_9:
  v26 = v33;
  v25 = v34;
  type metadata accessor for SearchPagePresenter(0);
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v40);

  if (!v41)
  {

    goto LABEL_13;
  }

  if (v41 == 1)
  {

LABEL_13:

    goto LABEL_15;
  }

  if (v40[2] | v40[1] | v40[0] | v40[3])
  {
LABEL_15:
    sub_2170081B4();
    sub_216C99870(v42);

    v27 = (v25 + *(v26 + 60));
    v28 = *v27;
    v29 = *(v27 + 1);
    LOBYTE(v27) = v27[16];
    v37 = v28;
    v38 = v29;
    v39 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
    sub_217007F44();
    if (v43)
    {
      if (v43 == 1)
      {
        v30 = v36;
        sub_216C1C864(v42);
        if ((v30 & 1) == 0)
        {
          v21 = sub_216C15C24(v26);
          return v21 & 1;
        }
      }
    }

    else
    {
      sub_216C1C864(v42);
    }

    v21 = 1;
    return v21 & 1;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}