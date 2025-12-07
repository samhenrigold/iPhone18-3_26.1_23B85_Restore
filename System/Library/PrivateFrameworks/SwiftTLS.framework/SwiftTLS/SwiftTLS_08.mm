unsigned __int8 *sub_26C13F7CC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  if (v5 == 8)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = v3[2];
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v14 = *(v9 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v13 = BYTE6(v10);
      v14 = v9 >> 32;
      if (!v12)
      {
        v14 = v13;
      }
    }

    if (!__OFSUB__(v14, v11))
    {
      if (v14 == v11)
      {
        *a3 = xmmword_26C14A540;
        *(a3 + 16) = 0;
        return result;
      }

      *a2 = xmmword_26C14A8F0;
      *(a2 + 16) = 2;
      *v18 = xmmword_26C14A8F0;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    if (v5 != 1)
    {
      *a2 = v5;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *v18 = v5;
      v18[16] = 0;
LABEL_20:
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    result = sub_26C0DE464(v3, &v16, v18);
    if (v4)
    {
      v8 = v17;
      *a2 = v16;
      *(a2 + 16) = v8;
      return result;
    }

    v15 = *&v18[8];
    if (*&v18[8] >> 60 == 15)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      *v18 = 0uLL;
LABEL_19:
      v18[16] = 2;
      goto LABEL_20;
    }

    *a3 = *v18;
    *(a3 + 8) = v15;
  }

  return result;
}

uint64_t sub_26C13F918(uint64_t a1)
{
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    return MEMORY[0x26D69BEF0](1);
  }

  v4 = *v1;
  v5 = v1[2];
  result = MEMORY[0x26D69BEF0](0);
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v4 + 24);
    }
  }

  else if (v6)
  {
    v7 = v4 >> 32;
  }

  else
  {
    v7 = BYTE6(v2);
  }

  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();

    return sub_26C0BB9B0(v8, v10);
  }

  return result;
}

uint64_t sub_26C13FA08()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_26C1491AC();
  sub_26C13F918(v3);
  return sub_26C14920C();
}

uint64_t sub_26C13FA60(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_26C1491AC();
  sub_26C13F918(v4);
  return sub_26C14920C();
}

unint64_t sub_26C13FAB8()
{
  result = qword_28047AF40;
  if (!qword_28047AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF40);
  }

  return result;
}

unint64_t sub_26C13FB10()
{
  result = qword_28047AF48;
  if (!qword_28047AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF48);
  }

  return result;
}

__n128 sub_26C13FB64@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v6 = 0xF000000000000000;
  while (1)
  {
    v47 = v6;
    v46 = v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(v7 + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = v7 >> 32;
    }

    else
    {
      v11 = BYTE6(v8);
    }

    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (v12)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
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
    }

    if (v13 < 1)
    {
      break;
    }

    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_92;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (*(v7 + 24) < v14)
        {
          goto LABEL_89;
        }
      }

      else if (v14 > 0)
      {
        goto LABEL_89;
      }
    }

    else if (v10)
    {
      if (v7 >> 32 < v14)
      {
        goto LABEL_89;
      }
    }

    else if (BYTE6(v8) < v14)
    {
      goto LABEL_89;
    }

    v48 = *a1;
    v49 = a1[1];
    if (v14 < v9)
    {
      goto LABEL_93;
    }

    sub_26C0BBAA4(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v48, v49);
    a1[2] = v14;
    v15 = *a1;
    v16 = a1[1];
    v17 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_94;
    }

    v19 = v16 >> 62;
    if ((v16 >> 62) <= 1)
    {
      if (v19)
      {
        v20 = v15 >> 32;
      }

      else
      {
        v20 = BYTE6(v16);
      }

LABEL_33:
      if (v20 < v17)
      {
        goto LABEL_87;
      }

      goto LABEL_36;
    }

    if (v19 == 2)
    {
      v20 = *(v15 + 24);
      goto LABEL_33;
    }

    if (v17 >= 1)
    {
LABEL_87:
      sub_26C0BBAA4(v15, v16);
      v23 = *a1;
      v24 = a1[1];
LABEL_88:
      sub_26C0BB9B0(v23, v24);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
LABEL_89:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v39 = v46;
      v40 = v6;
      goto LABEL_90;
    }

LABEL_36:
    if (v17 < v14)
    {
      goto LABEL_95;
    }

    sub_26C0BBAA4(v15, v16);
    sub_26C0BBAA4(v15, v16);
    sub_26C14878C();
    sub_26C0BB9B0(v15, v16);
    v21 = bswap32(0) >> 16;
    a1[2] = v17;
    v22 = v17 + v21;
    if (__OFADD__(v17, v21))
    {
      goto LABEL_96;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v23 >> 32;
      }

      else
      {
        v26 = BYTE6(v24);
      }

LABEL_44:
      if (v26 < v22)
      {
        goto LABEL_88;
      }

      goto LABEL_47;
    }

    if (v25 == 2)
    {
      v26 = *(v23 + 24);
      goto LABEL_44;
    }

    if (v22 > 0)
    {
      goto LABEL_88;
    }

LABEL_47:
    if (v22 < v17)
    {
      goto LABEL_97;
    }

    v27 = sub_26C14889C();
    v29 = v27;
    a1[2] = v22;
    v44 = v28;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v27 = *(v27 + 16);
        v31 = *(v29 + 24);
      }

      else
      {
        v27 = 0;
        v31 = 0;
      }
    }

    else if (v30)
    {
      v27 = v27;
      v31 = v29 >> 32;
    }

    else
    {
      v27 = 0;
      v31 = BYTE6(v28);
    }

    v12 = __OFSUB__(v31, v27);
    v32 = v31 - v27;
    if (v12)
    {
      goto LABEL_98;
    }

    v33 = v27 + v32;
    if (__OFADD__(v27, v32))
    {
      goto LABEL_99;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        if (v33 > 0)
        {
          goto LABEL_103;
        }

        goto LABEL_66;
      }

      v34 = *(v29 + 24);
    }

    else if (v30)
    {
      v34 = v29 >> 32;
    }

    else
    {
      v34 = BYTE6(v28);
    }

    if (v34 < v33)
    {
      goto LABEL_102;
    }

LABEL_66:
    if (v33 < v27)
    {
      goto LABEL_100;
    }

    v42 = v29;
    v35 = sub_26C14889C();
    v4 = v35;
    v6 = v36;
    v5 = 0;
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v5 = *(v35 + 16);
      }
    }

    else if (v37)
    {
      v5 = v35;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = *(v42 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v30)
    {
      v38 = v42 >> 32;
    }

    else
    {
      v38 = BYTE6(v44);
    }

    if (__OFSUB__(v38, v33))
    {
      goto LABEL_101;
    }

    if (v38 != v33)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v4, v6);
      sub_26C0BB9B0(v42, v44);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
      swift_willThrowTypedImpl();
      sub_26C0BB344(v46, v47);
      result = xmmword_26C149860;
      *a2 = xmmword_26C149860;
      *(a2 + 16) = 2;
      return result;
    }

    sub_26C0BB9B0(v42, v44);
    sub_26C0BB9B0(v15, v16);
    if (v47 >> 60 != 15)
    {
      *a2 = xmmword_26C14A8F0;
      *(a2 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v4, v6);
      v39 = v46;
      v40 = v47;
LABEL_90:
      sub_26C0BB344(v39, v40);
      return result;
    }
  }

  if (v6 >> 60 == 15)
  {
    *a2 = xmmword_26C14A8F0;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    *a3 = v4;
    a3[1] = v6;
    a3[2] = v5;
  }

  return result;
}

uint64_t sub_26C140410(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v2 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v13 = *a1;
      v14 = v2;
      v15 = v4;
      v10 = v6;
      v11 = v5;
      v12 = v7;
      sub_26C10B340(v6, v5);
      sub_26C10B340(v3, v2);
      sub_26C10B340(v3, v2);
      sub_26C10B340(v6, v5);
      v8 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v13, &v10);
      sub_26C0BB344(v3, v2);
      sub_26C0BB344(v6, v5);
      sub_26C0BB9B0(v10, v11);
      sub_26C0BB9B0(v13, v14);
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_26C10B340(*a1, v2);
    sub_26C10B340(v6, v5);
    sub_26C0BB344(v3, v2);
    sub_26C0BB344(v6, v5);
    v8 = 0;
    return v8 & 1;
  }

  sub_26C0BB344(*a1, v2);
  sub_26C0BB344(v6, v5);
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_26C140594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C1405E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_26C14063C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_26C140684(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26C1406CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_26C14FC00;
    }
  }

  return result;
}

uint64_t sub_26C14075C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_26C14908C();

  v4 = NamedGroup.description.getter();
  MEMORY[0x26D69BC90](v4);

  result = MEMORY[0x26D69BC90](0x63784579656B202CLL, 0xEF203A65676E6168);
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v1 + 24);
    }
  }

  else
  {
    v7 = BYTE6(v2);
    if (v6)
    {
      v7 = v1 >> 32;
    }
  }

  if (__OFSUB__(v7, v3))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14911C();
    MEMORY[0x26D69BC90](v8);

    MEMORY[0x26D69BC90](0x29736574796220, 0xE700000000000000);
    return 0xD000000000000015;
  }

  return result;
}

uint64_t sub_26C1408A8@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  if (v8 == 1)
  {
    v12 = *v4;
    v11 = v4[1];
    v13 = v4[2];
    sub_26C0BBAA4(*v4, v11);
    v14 = sub_26C1365D4();
    if ((v14 & 0x10000) == 0)
    {
      sub_26C0DE248(v14, &v33);
      if (*(&v33 + 1) >> 60 != 15)
      {
        v35 = v33;
        v36 = v34;
        sub_26C1410B4(&v35, &v32);
        if (v5)
        {
          v17 = *(&v33 + 1);
          v18 = v33;
          v19 = v34;
          v21 = *(&v35 + 1);
          v20 = v35;
        }

        else
        {
          v25 = *(&v35 + 1) >> 62;
          if ((*(&v35 + 1) >> 62) > 1)
          {
            if (v25 == 2)
            {
              v26 = *(v35 + 24);
            }

            else
            {
              v26 = 0;
            }
          }

          else if (v25)
          {
            v26 = v35 >> 32;
          }

          else
          {
            v26 = BYTE14(v35);
          }

          if (__OFSUB__(v26, v36))
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v26 == v36)
          {
            sub_26C0BB9B0(v35, *(&v35 + 1));
            result = sub_26C0BB9B0(v12, v11);
            *a4 = v32;
            a4[1] = 0;
            a4[2] = 0;
            a4[3] = 0;
            return result;
          }

          v33 = xmmword_26C149860;
          v19 = 2;
          LOBYTE(v34) = 2;
          v28 = *(&v35 + 1);
          v27 = v35;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();

          v21 = v28;
          v20 = v27;
          v17 = 0;
          v18 = 1;
        }

        sub_26C0BB9B0(v20, v21);
        sub_26C0BB9B0(*v4, v4[1]);
        *v4 = v12;
        v4[1] = v11;
        v4[2] = v13;
        *&v35 = v18;
        *(&v35 + 1) = v17;
        LOBYTE(v36) = v19;
        sub_26C0BBAF8();
        result = swift_willThrowTypedImpl();
        *a3 = v18;
        *(a3 + 8) = v17;
        *(a3 + 16) = v19;
        return result;
      }
    }

    sub_26C0BB9B0(*v4, v4[1]);
    *v4 = v12;
    v4[1] = v11;
    v4[2] = v13;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    v35 = 0uLL;
    LOBYTE(v36) = 2;
    goto LABEL_14;
  }

  if (v8 != 2)
  {
    v15 = v8 | 0x330000;
    *a3 = v15;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v35 = v15;
    LOBYTE(v36) = 0;
LABEL_14:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  result = sub_26C1365D4();
  if (a2)
  {
    if ((result & 0x10000) == 0)
    {
      *a4 = result;
      *(a4 + 1) = xmmword_26C14FC10;
      a4[3] = 0;
      return result;
    }

    goto LABEL_13;
  }

  if ((result & 0x10000) != 0)
  {
    goto LABEL_13;
  }

  v16 = result;
  result = sub_26C0E0978(v4, &v33, &v35);
  if (v5)
  {
LABEL_31:
    v29 = v33;
    v30 = v34;
    sub_26C0BBAF8();
    swift_allocError();
    *v31 = v29;
    *(v31 + 16) = v30;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (*(&v35 + 1) >> 60 == 15)
  {
    goto LABEL_13;
  }

  v22 = v36;
  v23 = v35;
  v24 = *(&v35 + 1) | 0x1000000000000000;
  *a4 = v16;
  a4[1] = v23;
  a4[2] = v24;
  a4[3] = v22;
  return result;
}

uint64_t sub_26C140B9C(uint64_t a1)
{
  v2 = v1[2];
  v3 = (v2 >> 60) & 3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v1[1];
      v5 = v1[3];
      MEMORY[0x26D69BEF0](1);
      result = sub_26C1491DC();
      v7 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v7 == 2)
        {
          v8 = *(v4 + 24);
        }

        else
        {
          v8 = 0;
        }
      }

      else if (v7)
      {
        v8 = v4 >> 32;
      }

      else
      {
        v8 = BYTE6(v2);
      }

      if (v8 < v5)
      {
        __break(1u);
      }

      else
      {
        v9 = sub_26C14889C();
        v11 = v10;
        sub_26C1488BC();

        return sub_26C0BB9B0(v9, v11);
      }
    }

    else
    {
      MEMORY[0x26D69BEF0](2);
      return sub_26C1491DC();
    }
  }

  else
  {
    MEMORY[0x26D69BEF0](0);

    return sub_26C12B45C();
  }

  return result;
}

uint64_t sub_26C140CD8()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_26C1491AC();
  sub_26C140B9C(v3);
  return sub_26C14920C();
}

uint64_t sub_26C140D28(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_26C1491AC();
  sub_26C140B9C(v4);
  return sub_26C14920C();
}

unint64_t sub_26C140D7C()
{
  result = qword_28047AF50;
  if (!qword_28047AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF50);
  }

  return result;
}

unint64_t sub_26C140DD4()
{
  result = qword_28047AF58;
  if (!qword_28047AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF58);
  }

  return result;
}

uint64_t sub_26C140E28(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v21 = bswap32(*a1) >> 16;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v24 = MEMORY[0x277D838B0];
  v25 = MEMORY[0x277CC9C18];
  v22 = &v21;
  v23 = &v22;
  __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v1);
    if (v6)
    {
      v7 = v2 >> 32;
    }
  }

  v8 = __OFSUB__(v7, v3);
  v9 = v7 - v3;
  if (v8)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >> 16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = bswap32(v9) >> 16;
  v24 = v4;
  v25 = v5;
  v22 = &v21;
  v23 = &v22;
  __swift_project_boxed_opaque_existential_1(&v22, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = 0;
      v11 = BYTE6(v1);
      if (BYTE6(v1) < v3)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }

    v10 = v2;
    v11 = v2 >> 32;
LABEL_18:
    sub_26C0BBAA4(v2, v1);
    if (v11 < v3)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  if (v6 == 2)
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    goto LABEL_18;
  }

  v11 = 0;
  v10 = 0;
  if (v3 > 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_21:
  if (v11 < v10)
  {
    goto LABEL_37;
  }

  v12 = sub_26C14889C();
  v14 = v13;
  sub_26C1488CC();
  v15 = v14;
  v16 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v16)
    {
      sub_26C0BB9B0(v12, v14);
      sub_26C0BB9B0(v2, v1);
      v17 = BYTE6(v14);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v16 != 2)
  {
    sub_26C0BB9B0(v12, v14);
    sub_26C0BB9B0(v2, v1);
    v17 = 0;
    goto LABEL_32;
  }

  v19 = *(v12 + 16);
  v18 = *(v12 + 24);
  sub_26C0BB9B0(v12, v15);
  sub_26C0BB9B0(v2, v1);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_29:
    sub_26C0BB9B0(v12, v15);
    sub_26C0BB9B0(v2, v1);
    LODWORD(v17) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_39;
    }

    v17 = v17;
  }

LABEL_32:
  result = v17 + 4;
  if (__OFADD__(v17, 4))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_26C1410B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_35;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE490(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v14 = a1[1];
  v37 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v17 = result;
  v18 = v14 >> 62;
  v38 = BYTE6(v14);
  while (1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (*(v37 + 24) < v16)
        {
          goto LABEL_32;
        }
      }

      else if (v16 >= 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v19 = v38;
      if (v18)
      {
        v19 = v37 >> 32;
      }

      if (v19 < v16)
      {
        goto LABEL_32;
      }
    }

    v20 = *a1;
    v21 = a1[1];
    v43 = *a1;
    v44 = v21;
    if (v16 < v15)
    {
      goto LABEL_34;
    }

    v39 = v17;
    v40 = v15;
    v41 = v16;
    sub_26C0BBAA4(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v43, v44);
    a1[2] = v16;
    v23 = *a1;
    v22 = a1[1];
    sub_26C0BBAA4(*a1, v22);
    sub_26C0E09A8(a1, &v40, &v43);
    if (v3)
    {
      break;
    }

    v24 = v44;
    if (v44 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v43, v24);
      *a1 = v23;
      a1[1] = v22;
      a1[2] = v16;
      v17 = v39;
LABEL_32:
      *a2 = v17;
      return result;
    }

    v25 = v18;
    result = sub_26C0BB9B0(v23, v22);
    v26 = v43;
    v27 = v45;
    v17 = v39;
    v29 = *(v39 + 16);
    v28 = *(v39 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_26C0CE490((v28 > 1), v29 + 1, 1, v39);
      v17 = result;
    }

    *(v17 + 16) = v29 + 1;
    v30 = v17 + 32 * v29;
    *(v30 + 32) = bswap32(0) >> 16;
    *(v30 + 40) = v26;
    *(v30 + 48) = v24;
    *(v30 + 56) = v27;
    v15 = a1[2];
    v16 = v15 + 2;
    v18 = v25;
    v3 = 0;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_33;
    }
  }

  v31 = a1;
  sub_26C0BB9B0(*a1, a1[1]);
  v32 = v40;
  v33 = v41;
  v34 = v42;
  *v31 = v23;
  v31[1] = v22;
  v31[2] = v16;
  v43 = v32;
  v44 = v33;
  LOBYTE(v45) = v34;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v35 = v32;
  *(v35 + 8) = v33;
  *(v35 + 16) = v34;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL sub_26C141408(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = (v5 >> 60) & 3;
  if (!v10)
  {
    if ((v9 & 0x3000000000000000) == 0)
    {
      sub_26C0FF158(*a2, a2[1], v9);
      sub_26C0FF158(v3, v2, v5);
      v17 = sub_26C0BE8D4(v3, v6);
      sub_26C1416C8(v3, v2, v5);
      sub_26C1416C8(v6, v7, v9);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  if (v10 != 1)
  {
    if ((v9 & 0x3000000000000000) == 0x2000000000000000)
    {
      v13 = *a1;
      sub_26C1416C8(*a1, v2, v5);
      sub_26C1416C8(v6, v7, v9);
      return v13 == v6;
    }

    goto LABEL_12;
  }

  if ((v9 & 0x3000000000000000) != 0x1000000000000000)
  {
    sub_26C0BBAA4(a1[1], v5 & 0xCFFFFFFFFFFFFFFFLL);
LABEL_12:
    v14 = v6;
    v15 = v7;
    v16 = v9;
    goto LABEL_13;
  }

  if (*a1 == v6)
  {
    v21 = a1[1];
    v22 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v23 = v4;
    v18 = v7;
    v19 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v20 = v8;
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    v11 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v21, &v18);
    sub_26C0BB9B0(v18, v19);
    sub_26C0BB9B0(v21, v22);
    sub_26C1416C8(v3, v2, v5);
    sub_26C1416C8(v6, v7, v9);
    sub_26C1416C8(v6, v7, v9);
    sub_26C1416C8(v3, v2, v5);
    return (v11 & 1) != 0;
  }

  sub_26C0FF158(v6, v7, v9);
  v14 = v3;
  v15 = v2;
  v16 = v5;
LABEL_13:
  sub_26C0FF158(v14, v15, v16);
  sub_26C1416C8(v3, v2, v5);
  sub_26C1416C8(v6, v7, v9);
  return 0;
}

uint64_t sub_26C1416C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    return sub_26C0BB9B0(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (!v3)
  {
  }

  return v4;
}

unint64_t sub_26C1416EC(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v16 = 0;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  v19 = MEMORY[0x277D838B0];
  v20 = MEMORY[0x277CC9C18];
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 32;
    do
    {
      v14 = *(v13 + v12++);
      v16 = v14;
      v19 = v9;
      v20 = v10;
      v17 = &v16;
      v18 = &v17;
      __swift_project_boxed_opaque_existential_1(&v17, v9);
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v17);
    }

    while (v11 != v12);
    if (v11 > 0xFF)
    {
      __break(1u);
    }
  }

  sub_26C100778(v11, v8);
  return v11 + 1;
}

char *sub_26C141844(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  if (v5 != 1)
  {
    v14 = v5 | 0x2D0000;
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v16 = v14;
    v17 = 0;
    v18 = 0;
LABEL_5:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  sub_26C0BBAA4(*v2, v6);
  v9 = sub_26C0DFC24(v2, &v16);
  if (v3)
  {
    sub_26C0BB9B0(*v2, v2[1]);
    v10 = v16;
    v11 = v17;
    v12 = v18;
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    return result;
  }

  if (!v9)
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v16 = 0;
    v17 = 0;
    v18 = 2;
    goto LABEL_5;
  }

  v15 = v9;
  sub_26C0BB9B0(v7, v6);
  return v15;
}

unint64_t sub_26C141990()
{
  result = qword_28047AF60;
  if (!qword_28047AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF60);
  }

  return result;
}

unint64_t sub_26C141A08()
{
  result = qword_28047AF68;
  if (!qword_28047AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF68);
  }

  return result;
}

uint64_t ExtensionType.description.getter()
{
  v1 = *v0;
  if (v1 > 0x29)
  {
    if (*v0 <= 0x32u)
    {
      switch(v1)
      {
        case '*':
          return 0x6144796C7261652ELL;
        case '+':
          return 0xD000000000000012;
        case '-':
          return 0xD000000000000015;
      }

      goto LABEL_32;
    }

    if (*v0 > 0x39u)
    {
      if (v1 == 58)
      {
        return 0x5274656B6369742ELL;
      }

      if (v1 == 35387)
      {
        return 0x656B61702ELL;
      }

      goto LABEL_32;
    }

    if (v1 != 51)
    {
      if (v1 == 57)
      {
        return 0xD000000000000018;
      }

      goto LABEL_32;
    }

    v3 = 2036689710;
    return v3 | 0x7261685300000000;
  }

  if (*v0 <= 0xFu)
  {
    if (!*v0)
    {
      return 0x4E7265767265732ELL;
    }

    if (v1 == 10)
    {
      return 0xD000000000000010;
    }

    if (v1 == 13)
    {
      return 0xD000000000000014;
    }

    goto LABEL_32;
  }

  switch(v1)
  {
    case 0x10u:
      return 0xD000000000000024;
    case 0x14u:
      return 0xD000000000000016;
    case 0x29u:
      v3 = 1701998638;
      return v3 | 0x7261685300000000;
  }

LABEL_32:
  sub_26C14908C();

  v4 = sub_26C14911C();
  MEMORY[0x26D69BC90](v4);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26C141D4C()
{
  result = qword_28047AF70;
  if (!qword_28047AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF70);
  }

  return result;
}

uint64_t sub_26C141DB4()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AF78);
  __swift_project_value_buffer(v0, qword_28047AF78);
  return sub_26C148A8C();
}

uint64_t SwiftTLSError.hashValue.getter()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t SwiftTLSOptions.EncryptionLevel.debugDescription.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E69;
  v2 = 0x6B616873646E6168;
  if (a1 != 2)
  {
    v2 = 0x746163696C707061;
  }

  if (a1)
  {
    v1 = 0x616420796C726165;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SwiftTLSOptions.EncryptionLevel.hashValue.getter(unsigned __int8 a1)
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](a1);
  return sub_26C14920C();
}

uint64_t sub_26C141FCC()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t sub_26C142014(uint64_t a1)
{
  v2 = *v1;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v2);
  return sub_26C14920C();
}

uint64_t sub_26C142058()
{
  v1 = 0x6C616974696E69;
  v2 = 0x6B616873646E6168;
  if (*v0 != 2)
  {
    v2 = 0x746163696C707061;
  }

  if (*v0)
  {
    v1 = 0x616420796C726165;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SwiftTLSOptions.serverName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SwiftTLSOptions.serverName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SwiftTLSOptions.quicTransportParameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SwiftTLSOptions.applicationProtocols.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SwiftTLSOptions.serverRawPublicKeyCertificates.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SwiftTLSOptions.serverRawPublicKeyP256PublicKeys.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SwiftTLSOptions.sessionState.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

SwiftTLS::SwiftTLSOptions::KeyExchangeGroup_optional __swiftcall SwiftTLSOptions.KeyExchangeGroup.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 0x1Cu)
  {
    if (rawValue == 4588)
    {
      *v1 = 3;
      return rawValue;
    }

    if (rawValue == 29)
    {
      *v1 = 2;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 23)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 24)
  {
    goto LABEL_8;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_26C142464()
{
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t sub_26C142504(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t SwiftTLSOptions.serverRawPrivateKey.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t SwiftTLSOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 66) = 1;
  *(a1 + 72) = 0;
  v2 = *(type metadata accessor for SwiftTLSOptions(0) + 60);
  v3 = sub_26C148D8C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_26C1427A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_26C142840(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_26C1428E4()
{
  v1 = *(v0 + 40);
  if (v1 > 0xFB)
  {
    return 0;
  }

  if (v1 != 2)
  {
    return 4294957438;
  }

  v3 = *(v0 + 24);
  v4 = v3 - 3;
  if ((v3 - 3) > 9 || ((0x21Bu >> v4) & 1) == 0)
  {
    return 4294957438;
  }

  v5 = dword_26C15053C[v4];
  sub_26C142968(v3, *(v0 + 32), 2);
  return v5;
}

uint64_t sub_26C142968(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    JUMPOUT(0x26D69C260);
  }

  return sub_26C0CF018(a1, a2, a3);
}

uint64_t sub_26C142980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C1429FC(uint64_t *a1)
{
  v3 = type metadata accessor for EncryptionLevel(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_26C0CF314(v1 + v16, v15, &qword_28047A998, &qword_26C14A860);
  sub_26C142980(v15, v13);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_26C0CF5C4(v13, &qword_28047A998, &qword_26C14A860);
    return 0;
  }

  else
  {
    sub_26C148638(v13, v9, type metadata accessor for EncryptionLevel);
    sub_26C148638(v9, v7, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = sub_26C148BDC();
    (*(*(v19 - 8) + 8))(v7, v19);
    return (EnumCaseMultiPayload + 1);
  }
}

char *sub_26C142C50@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = sub_26C148520(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C142CFC(uint64_t *a1)
{
  v3 = sub_26C148BDC();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EncryptionLevel(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *a1;
  swift_beginAccess();
  sub_26C0CF314(v1 + v18, v17, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF314(v17, v15, &qword_28047A998, &qword_26C14A860);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_26C0CF5C4(v17, &qword_28047A998, &qword_26C14A860);
    sub_26C0CF5C4(v15, &qword_28047A998, &qword_26C14A860);
    return 0;
  }

  else
  {
    sub_26C148638(v15, v11, type metadata accessor for EncryptionLevel);
    sub_26C1486A0(v11, v9, type metadata accessor for EncryptionLevel);
    v20 = v23;
    v21 = v24;
    v22 = v25;
    (*(v24 + 32))(v23, v9, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C148B8C();
    (*(v21 + 8))(v20, v22);
    sub_26C148708(v11, type metadata accessor for EncryptionLevel);
    sub_26C0CF5C4(v17, &qword_28047A998, &qword_26C14A860);
    return v26;
  }
}

uint64_t static SwiftTLSHandshaker.createClientHandshake()()
{
  type metadata accessor for SwiftTLSClientHandshaker(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  v2 = type metadata accessor for HandshakeStateMachine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v3;
  *(v0 + 40) = -4;
  v4 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  v7 = type metadata accessor for EncryptionLevel(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, 1, 1, v7);
  return v0;
}

uint64_t static SwiftTLSHandshaker.createServerHandshake()()
{
  type metadata accessor for SwiftTLSServerHandshaker(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_clientAppSecret;
  v4 = sub_26C148BDC();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v5;
  *(v0 + 40) = -4;
  v6 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v7 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  v9 = type metadata accessor for EncryptionLevel(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v0 + v8, 1, 1, v9);
  v10(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, 1, 1, v9);
  return v0;
}

uint64_t SwiftTLSHandshaker.deinit()
{

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  return v0;
}

void sub_26C143440(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    sub_26C143454(a1, a2, a3);
  }
}

void sub_26C143454(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_26C0CF030(a1, a2, a3);
  }
}

uint64_t SwiftTLSHandshaker.__deallocating_deinit()
{

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26C14353C()
{
  result = qword_28047AF90;
  if (!qword_28047AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF90);
  }

  return result;
}

unint64_t sub_26C143594()
{
  result = qword_28047AF98;
  if (!qword_28047AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF98);
  }

  return result;
}

unint64_t sub_26C1435EC()
{
  result = qword_28047AFA0;
  if (!qword_28047AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AFA0);
  }

  return result;
}

void sub_26C143678(uint64_t a1)
{
  sub_26C11F4C0();
  if (v1 <= 0x3F)
  {
    sub_26C0EEEB8(319, &qword_28047AE70, &qword_28047A840, &unk_26C14A530);
    if (v2 <= 0x3F)
    {
      sub_26C0EEEB8(319, &qword_281590300, &qword_28047AC68, ";");
      if (v3 <= 0x3F)
      {
        sub_26C0EEEB8(319, &qword_28047AFB8, &qword_28047AFC0, &qword_26C150370);
        if (v4 <= 0x3F)
        {
          sub_26C0EEEB8(319, &qword_28047AFC8, &qword_28047AFD0, &qword_26C150378);
          if (v5 <= 0x3F)
          {
            sub_26C1483E4(319, &qword_281590330, MEMORY[0x277CC54D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26C143818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26C1438A8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26C143990(uint64_t a1)
{
  sub_26C1483E4(319, qword_281590898, type metadata accessor for PartialHandshakeResult);
  if (v1 <= 0x3F)
  {
    sub_26C1483E4(319, qword_281591618, type metadata accessor for EncryptionLevel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26C143CDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v4, v3, &qword_28047AFE8, &unk_26C150528);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    sub_26C148708(v3, type metadata accessor for HandshakeStateMachine);
    if ((v7 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void *sub_26C143E10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v4, v3, &qword_28047AFE8, &unk_26C150528);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (result == 1)
  {
    goto LABEL_15;
  }

  HandshakeStateMachine.peerQUICTransportParameters.getter(&v15);
  v7 = v16;
  if (v16 >> 60 == 15)
  {
    sub_26C148708(v3, type metadata accessor for HandshakeStateMachine);
    return 0;
  }

  v8 = v15;
  v9 = v17;
  result = sub_26C148708(v3, type metadata accessor for HandshakeStateMachine);
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v7);
  }

  if (v11 < v9)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = sub_26C14889C();
  v14 = sub_26C0BAFC4(v12, v13);
  sub_26C0BB344(v8, v7);
  return v14;
}

uint64_t sub_26C143FE0()
{
  v1 = type metadata accessor for HandshakeStateMachine(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v8, v7, &qword_28047AFE8, &unk_26C150528);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_26C0CF5C4(v7, &qword_28047AFE8, &unk_26C150528);
    v9 = 0;
  }

  else
  {
    sub_26C1486A0(v7, v4, type metadata accessor for HandshakeStateMachine);
    sub_26C0CF5C4(v7, &qword_28047AFE8, &unk_26C150528);
    v9 = HandshakeStateMachine.earlyDataAccepted.getter();
    sub_26C148708(v4, type metadata accessor for HandshakeStateMachine);
  }

  return v9 & 1;
}

NSObject *sub_26C1441BC(uint64_t *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v193 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v173 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v173 - v10;
  v196 = type metadata accessor for EncryptionLevel(0);
  v204 = *(v196 - 8);
  v12 = MEMORY[0x28223BE20](v196);
  v185 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v184 = &v173 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v192 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v191 = &v173 - v19;
  MEMORY[0x28223BE20](v18);
  v190 = &v173 - v20;
  v203 = type metadata accessor for PartialHandshakeResult(0);
  v205 = *(v203 - 8);
  v21 = MEMORY[0x28223BE20](v203);
  v201 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v173 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v25 - 8);
  v195 = &v173 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v27 - 8);
  v194 = &v173 - v28;
  v187 = type metadata accessor for SessionTicket(0);
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v199 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for HandshakeStateMachine(0);
  v202 = *(v206 - 8);
  v30 = MEMORY[0x28223BE20](v206);
  v200 = (&v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v188 = &v173 - v33;
  MEMORY[0x28223BE20](v32);
  v198 = &v173 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v197 = &v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v189 = &v173 - v38;
  v39 = sub_26C148E2C();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1[1];
  if (!v43)
  {
    if (qword_28047A7A8 == -1)
    {
LABEL_13:
      v58 = sub_26C148A9C();
      __swift_project_value_buffer(v58, qword_28047AF78);
      v59 = sub_26C148A7C();
      v60 = sub_26C14900C();
      if (!os_log_type_enabled(v59, v60))
      {
LABEL_24:

        *a2 = 0;
        LOBYTE(v220) = 0;
        sub_26C148594();
        swift_willThrowTypedImpl();
        return v59;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "Cannot start the handshake, missing server name";
LABEL_23:
      _os_log_impl(&dword_26C0B5000, v59, v60, v62, v61, 2u);
      MEMORY[0x26D69C3A0](v61, -1, -1);
      goto LABEL_24;
    }

LABEL_85:
    swift_once();
    goto LABEL_13;
  }

  v44 = a1[3];
  if (!v44)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v63 = sub_26C148A9C();
    __swift_project_value_buffer(v63, qword_28047AF78);
    v59 = sub_26C148A7C();
    v60 = sub_26C14900C();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_24;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "Cannot start the handshake, missing application protocol";
    goto LABEL_23;
  }

  v177 = v9;
  v178 = v24;
  v183 = a2;
  if (!a1[2])
  {
    a2 = v183;
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v64 = sub_26C148A9C();
    __swift_project_value_buffer(v64, qword_28047AF78);
    v59 = sub_26C148A7C();
    v60 = sub_26C14900C();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_24;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "Cannot start the handshake, missing QUIC transport parameters";
    goto LABEL_23;
  }

  v45 = *a1;
  v46 = a1[5];
  v174 = v11;
  if (v46)
  {
    v175 = v45;
    v176 = v44;
    v224 = v46;

    goto LABEL_6;
  }

  v92 = a1[4];
  if (!v92)
  {
    if (qword_28047A7A8 == -1)
    {
LABEL_60:
      v148 = sub_26C148A9C();
      __swift_project_value_buffer(v148, qword_28047AF78);
      v59 = sub_26C148A7C();
      v60 = sub_26C14900C();
      v149 = os_log_type_enabled(v59, v60);
      a2 = v183;
      if (!v149)
      {
        goto LABEL_24;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "Cannot start the handshake, missing raw public keys";
      goto LABEL_23;
    }

LABEL_87:
    swift_once();
    goto LABEL_60;
  }

  v175 = v45;
  v176 = v44;
  v182 = *(v92 + 16);
  if (v182)
  {
    v93 = 0;
    v181 = v92 + 32;
    v179 = v40 + 32;
    v224 = MEMORY[0x277D84F90];
    v180 = v92;
    while (v93 < *(v92 + 16))
    {
      *&v220 = *(v181 + 8 * v93);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
      sub_26C1485E8(&unk_28047AFF0, MEMORY[0x277D83980]);
      v94 = v208;
      sub_26C148DEC();
      v208 = v94;
      if (v94)
      {

        v157 = v207;
        v59 = *(v207 + 24);
        v158 = *(v207 + 32);
        v159 = v208;
        *(v207 + 24) = v208;
        *(v157 + 32) = 0;
        v160 = *(v157 + 40);
        *(v157 + 40) = 0x80;
        MEMORY[0x26D69C260](v159);
        sub_26C143440(v59, v158, v160);
        *v183 = 2;
        LOBYTE(v220) = 2;
        sub_26C148594();
        swift_willThrowTypedImpl();

        return v59;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v95 = v224;
      }

      else
      {
        v95 = sub_26C0CE6B8(0, v224[2] + 1, 1, v224);
      }

      v97 = v95[2];
      v96 = v95[3];
      a2 = (v97 + 1);
      if (v97 >= v96 >> 1)
      {
        v95 = sub_26C0CE6B8((v96 > 1), v97 + 1, 1, v95);
      }

      ++v93;
      v95[2] = a2;
      v98 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v224 = v95;
      (*(v40 + 32))(v95 + v98 + *(v40 + 72) * v97, v42, v39);
      v92 = v180;
      if (v182 == v93)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v224 = MEMORY[0x277D84F90];
LABEL_6:
  v47 = *(a1 + 64);
  v48 = v47 | *(a1 + 65);
  v49 = v48 == 0;
  v50 = v47 | (*(a1 + 65) << 8);
  if (v48)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v53 = sub_26C11EF18(v52);
  v55 = v54;

  v56 = 0;
  v57 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v57 == 2)
    {
      v56 = *(v53 + 16);
    }
  }

  else if (v57)
  {
    v56 = v53;
  }

  v66 = 0x11EC001D00180017uLL >> (16 * *(a1 + 66));
  v67 = v176;

  sub_26C0BB344(0, 0xF000000000000000);
  LOBYTE(v215) = v49;
  LOBYTE(v211) = 0;
  *&v220 = v175;
  *(&v220 + 1) = v43;
  *&v221 = v224;
  *(&v221 + 1) = v53;
  *&v222 = v55;
  *(&v222 + 1) = v56;
  *v223 = v67;
  *&v223[8] = v51;
  v223[10] = v49;
  *&v223[12] = v66;
  v223[14] = 0;
  *&v223[15] = 1;
  if (!a1[7])
  {
    v217 = v222;
    v218 = *v223;
    v219 = v223[16];
    v215 = v220;
    v216 = v221;
    sub_26C10B120(&v220, &v211);
    v99 = v197;
    HandshakeStateMachine.init(configuration:)(&v215, v197);
    v87 = v202;
    v77 = v206;
    (*(v202 + 56))(v99, 0, 1, v206);
    v100 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    v78 = v207;
    swift_beginAccess();
    sub_26C0FF20C(v99, v78 + v100, &qword_28047AFE8, &unk_26C150528);
    swift_endAccess();
    v76 = v183;
    v90 = v204;
    v91 = v203;
LABEL_53:
    v89 = v208;
    goto LABEL_54;
  }

  v69 = sub_26C11EF18(v68);
  v71 = v70;

  v72 = v198;
  *v198 = xmmword_26C14A540;
  *(v72 + 2) = 0;
  v72[24] = 0;
  v213 = &type metadata for SwiftTLSDefaultClock;
  v214 = &off_287CCAB28;
  v73 = v200;
  *v200 = xmmword_26C14A540;
  *(v73 + 2) = 0;
  *(v73 + 24) = 0;
  sub_26C10B120(&v220, &v215);
  sub_26C0BBAA4(v69, v71);
  v74 = v199;
  v75 = v208;
  sub_26C11F9F4(v69, v71, v209, v199);
  v76 = v183;
  v77 = v206;
  v78 = v207;
  if (!v75)
  {
    v182 = v69;
    v197 = v71;
    v208 = 0;
    sub_26C11D848(&v211, v73 + *(v206 + 28));
    *&v215 = 0;
    MEMORY[0x26D69C3B0](&v215, 8);
    v101 = v74;
    v102 = v215;
    *&v215 = 0;
    MEMORY[0x26D69C3B0](&v215, 8);
    v103 = v215;
    *&v215 = 0;
    MEMORY[0x26D69C3B0](&v215, 8);
    v104 = v215;
    *&v215 = 0;
    MEMORY[0x26D69C3B0](&v215, 8);
    v105 = v215;
    v106 = (v73 + v77[8]);
    *v106 = v102;
    v106[1] = v103;
    v106[2] = v104;
    v106[3] = v105;
    v107 = v73 + v77[9];
    v108 = *v223;
    *(v107 + 2) = v222;
    *(v107 + 3) = v108;
    v107[64] = v223[16];
    v109 = v221;
    *v107 = v220;
    *(v107 + 1) = v109;
    v110 = v73 + v77[6];
    v111 = v194;
    sub_26C1486A0(v101, v194, type metadata accessor for SessionTicket);
    v112 = *(v186 + 56);
    v113 = v187;
    v112(v111, 0, 1, v187);
    v114 = type metadata accessor for PAKEClientState(0);
    v115 = *(*(v114 - 8) + 56);
    v115(v195, 1, 1, v114);
    v116 = type metadata accessor for HandshakeState.IdleState(0);
    v117 = v116[5];
    v112(&v110[v117], 1, 1, v113);
    v118 = v116[8];
    v115(&v110[v118], 1, 1, v114);
    v119 = *v223;
    *(v110 + 2) = v222;
    *(v110 + 3) = v119;
    v110[64] = v223[16];
    v120 = v221;
    *v110 = v220;
    *(v110 + 1) = v120;
    sub_26C10B120(&v220, &v215);
    sub_26C0FF20C(v194, &v110[v117], &qword_28047AC50, "N;");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *&v110[v116[7]] = MEMORY[0x277D84F90];
    sub_26C0FF20C(v195, &v110[v118], &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v121 = sub_26C148A9C();
    __swift_project_value_buffer(v121, qword_28047AC70);
    v122 = sub_26C148A7C();
    v123 = sub_26C148FEC();
    v124 = os_log_type_enabled(v122, v123);
    v76 = v183;
    v90 = v204;
    v91 = v203;
    v125 = v197;
    if (v124)
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_26C0B5000, v122, v123, "client state machine initialized with session ticket", v126, 2u);
      MEMORY[0x26D69C3A0](v126, -1, -1);
    }

    sub_26C0BB9B0(v182, v125);
    __swift_destroy_boxed_opaque_existential_1(&v211);
    sub_26C148708(v199, type metadata accessor for SessionTicket);
    v127 = v188;
    sub_26C148638(v200, v188, type metadata accessor for HandshakeStateMachine);
    v128 = v198;
    sub_26C0BB344(*v198, *(v198 + 1));
    sub_26C148638(v127, v128, type metadata accessor for HandshakeStateMachine);
    v129 = v128;
    v130 = v189;
    sub_26C148638(v129, v189, type metadata accessor for HandshakeStateMachine);
    v87 = v202;
    v77 = v206;
    (*(v202 + 56))(v130, 0, 1, v206);
    v131 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    v78 = v207;
    swift_beginAccess();
    sub_26C0FF20C(v130, v78 + v131, &qword_28047AFE8, &unk_26C150528);
    swift_endAccess();
    goto LABEL_53;
  }

  __swift_destroy_boxed_opaque_existential_1(&v211);
  sub_26C10B17C(&v220);
  sub_26C0BB9B0(v69, v71);
  v79 = v209[0];
  v80 = v209[1];
  v81 = v210;
  sub_26C0BB344(*v73, *(v73 + 1));
  sub_26C0CF030(v79, v80, v81);
  sub_26C0BB344(0, 0xF000000000000000);
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v82 = sub_26C148A9C();
  __swift_project_value_buffer(v82, qword_28047AF78);
  v83 = sub_26C148A7C();
  v84 = sub_26C14900C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_26C0B5000, v83, v84, "Failed to use provided session state", v85, 2u);
    MEMORY[0x26D69C3A0](v85, -1, -1);
  }

  v217 = v222;
  v218 = *v223;
  v219 = v223[16];
  v215 = v220;
  v216 = v221;
  sub_26C10B120(&v220, &v211);
  v86 = v197;
  HandshakeStateMachine.init(configuration:)(&v215, v197);
  v87 = v202;
  (*(v202 + 56))(v86, 0, 1, v77);
  v88 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0FF20C(v86, v78 + v88, &qword_28047AFE8, &unk_26C150528);
  swift_endAccess();
  v89 = 0;
  v90 = v204;
  v91 = v203;
LABEL_54:
  v132 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  result = (*(v87 + 48))(v78 + v132, 1, v77);
  if (result != 1)
  {

    v133 = v78;
    v134 = v201;
    _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v211, v201);
    if (v89)
    {
      v135 = *(&v211 + 1);
      v59 = v211;
      v136 = v212;
      swift_endAccess();
      v137 = *(v78 + 24);
      v138 = *(v78 + 32);
      *(v78 + 24) = __PAIR128__(v135, v59);
      v139 = *(v78 + 40);
      *(v78 + 40) = v136;
      sub_26C143440(v137, v138, v139);
      *v76 = 3;
      LOBYTE(v215) = 3;
      sub_26C148594();
      swift_willThrowTypedImpl();
      sub_26C10B17C(&v220);
      return v59;
    }

    v224 = 0;
    swift_endAccess();
    v140 = v178;
    sub_26C148638(v134, v178, type metadata accessor for PartialHandshakeResult);
    v141 = v190;
    sub_26C1486A0(v140, v190, type metadata accessor for PartialHandshakeResult);
    v142 = v205;
    (*(v205 + 56))(v141, 0, 1, v91);
    v143 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
    swift_beginAccess();
    sub_26C0FF20C(v141, v133 + v143, &qword_28047A938, &qword_26C14A7E0);
    swift_endAccess();
    v144 = v191;
    sub_26C0CF314(v133 + v143, v191, &qword_28047A938, &qword_26C14A7E0);
    v145 = *(v142 + 48);
    v205 = v142 + 48;
    if (v145(v144, 1, v91))
    {
      sub_26C0CF5C4(v144, &qword_28047A938, &qword_26C14A7E0);
      v146 = v174;
      v147 = v196;
      (*(v90 + 56))(v174, 1, 1, v196);
    }

    else
    {
      v146 = v174;
      sub_26C0CF314(v144 + *(v91 + 20), v174, &qword_28047A998, &qword_26C14A860);
      sub_26C0CF5C4(v144, &qword_28047A938, &qword_26C14A7E0);
      v147 = v196;
      if ((*(v90 + 48))(v146, 1, v196) != 1)
      {
        v161 = v146;
        v162 = v184;
        sub_26C148638(v161, v184, type metadata accessor for EncryptionLevel);
        v163 = v177;
        sub_26C148638(v162, v177, type metadata accessor for EncryptionLevel);
        (*(v90 + 56))(v163, 0, 1, v196);
        v164 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
        swift_beginAccess();
        v165 = v133 + v164;
        v147 = v196;
        sub_26C0FF20C(v163, v165, &qword_28047A998, &qword_26C14A860);
        swift_endAccess();
LABEL_64:
        v150 = v133 + v143;
        v151 = v192;
        sub_26C0CF314(v150, v192, &qword_28047A938, &qword_26C14A7E0);
        if (v145(v151, 1, v91))
        {
          sub_26C0CF5C4(v151, &qword_28047A938, &qword_26C14A7E0);
          v152 = v193;
          (*(v90 + 56))(v193, 1, 1, v147);
        }

        else
        {
          v152 = v193;
          sub_26C0CF314(v151 + *(v91 + 24), v193, &qword_28047A998, &qword_26C14A860);
          sub_26C0CF5C4(v151, &qword_28047A938, &qword_26C14A7E0);
          if ((*(v90 + 48))(v152, 1, v147) != 1)
          {
            v166 = v152;
            v167 = v185;
            sub_26C148638(v166, v185, type metadata accessor for EncryptionLevel);
            v168 = v167;
            v169 = v177;
            sub_26C148638(v168, v177, type metadata accessor for EncryptionLevel);
            (*(v90 + 56))(v169, 0, 1, v147);
            v170 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
            swift_beginAccess();
            sub_26C0FF20C(v169, v133 + v170, &qword_28047A998, &qword_26C14A860);
            swift_endAccess();
            goto LABEL_68;
          }
        }

        sub_26C0CF5C4(v152, &qword_28047A998, &qword_26C14A860);
LABEL_68:
        v153 = v140[1];
        if (v153 >> 60 == 15)
        {
          sub_26C10B17C(&v220);
          v59 = 0;
LABEL_83:
          sub_26C148708(v140, type metadata accessor for PartialHandshakeResult);
          return v59;
        }

        v154 = *v140;
        v155 = v153 >> 62;
        if ((v153 >> 62) > 1)
        {
          if (v155 == 2)
          {
            v156 = *(v154 + 24);
          }

          else
          {
            v156 = 0;
          }
        }

        else if (v155)
        {
          v156 = v154 >> 32;
        }

        else
        {
          v156 = BYTE6(v153);
        }

        if (v156 >= v140[2])
        {
          v171 = sub_26C14889C();
          v59 = sub_26C0BAFC4(v171, v172);
          sub_26C10B17C(&v220);
          goto LABEL_83;
        }

        __break(1u);
        goto LABEL_87;
      }
    }

    sub_26C0CF5C4(v146, &qword_28047A998, &qword_26C14A860);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

void *sub_26C145B54(uint64_t a1, _BYTE *a2)
{
  v92 = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v97 = &v92 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - v11;
  v109 = type metadata accessor for EncryptionLevel(0);
  v13 = *(v109 - 8);
  v14 = MEMORY[0x28223BE20](v109);
  v96 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v106 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v92 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v105 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v103 = v25;
  v104 = &v92 - v28;
  v102 = v8;
  if (a1)
  {

    v30 = sub_26C11EF18(v29);
    v32 = v31;

    v33 = 0;
    v115 = v30;
    v116 = v32;
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v33 = *(v30 + 16);
      }
    }

    else if (v34)
    {
      v33 = v30;
    }

    v117 = v33;
    v35 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    swift_beginAccess();
    v36 = type metadata accessor for HandshakeStateMachine(0);
    result = (*(*(v36 - 8) + 48))(v3 + v35, 1, v36);
    v25 = v103;
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      return result;
    }

    HandshakeStateMachine.receivedNetworkData(_:)(&v115);
    swift_endAccess();
    sub_26C0BB9B0(v115, v116);
  }

  v38 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  v118 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v94 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
  v93 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  swift_beginAccess();
  v107 = (v13 + 56);
  v98 = (v13 + 48);
  v39 = &qword_26C14A7E0;
  v100 = v12;
  v40 = v105;
  v99 = v38;
  v101 = v20;
  while (1)
  {
    swift_beginAccess();
    v41 = type metadata accessor for HandshakeStateMachine(0);
    result = (*(*(v41 - 8) + 48))(v3 + v38, 1, v41);
    v42 = v104;
    if (result == 1)
    {
      goto LABEL_52;
    }

    v43 = v108;
    _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v112, v104);
    if (v43)
    {
      break;
    }

    v108 = 0;
    swift_endAccess();
    v44 = v118;
    swift_beginAccess();
    sub_26C0FF20C(v42, v3 + v44, &qword_28047A938, v39);
    swift_endAccess();
    sub_26C0CF314(v3 + v44, v40, &qword_28047A938, v39);
    v45 = type metadata accessor for PartialHandshakeResult(0);
    v46 = *(v45 - 1);
    v47 = *(v46 + 48);
    v110 = v46 + 48;
    v111 = v47;
    if (v47(v40, 1, v45))
    {
      sub_26C0CF5C4(v40, &qword_28047A938, v39);
      (*v107)(v12, 1, 1, v109);
      v48 = v39;
LABEL_15:
      sub_26C0CF5C4(v12, &qword_28047A998, &qword_26C14A860);
      goto LABEL_16;
    }

    sub_26C0CF314(v40 + v45[5], v12, &qword_28047A998, &qword_26C14A860);
    sub_26C0CF5C4(v40, &qword_28047A938, v39);
    v48 = v39;
    if ((*v98)(v12, 1, v109) == 1)
    {
      goto LABEL_15;
    }

    v56 = v12;
    v57 = v95;
    sub_26C148638(v56, v95, type metadata accessor for EncryptionLevel);
    v58 = v57;
    v59 = v97;
    sub_26C148638(v58, v97, type metadata accessor for EncryptionLevel);
    (*v107)(v59, 0, 1, v109);
    v60 = v94;
    swift_beginAccess();
    sub_26C0FF20C(v59, v3 + v60, &qword_28047A998, &qword_26C14A860);
    swift_endAccess();
LABEL_16:
    sub_26C0CF314(v3 + v118, v25, &qword_28047A938, v48);
    v49 = v111(v25, 1, v45);
    v50 = v106;
    if (v49)
    {
      sub_26C0CF5C4(v25, &qword_28047A938, v48);
      v51 = v102;
      (*v107)(v102, 1, 1, v109);
LABEL_19:
      sub_26C0CF5C4(v51, &qword_28047A998, &qword_26C14A860);
      goto LABEL_20;
    }

    v51 = v102;
    sub_26C0CF314(&v25[v45[6]], v102, &qword_28047A998, &qword_26C14A860);
    v48 = &qword_26C14A7E0;
    sub_26C0CF5C4(v25, &qword_28047A938, &qword_26C14A7E0);
    if ((*v98)(v51, 1, v109) == 1)
    {
      goto LABEL_19;
    }

    v61 = v96;
    sub_26C148638(v51, v96, type metadata accessor for EncryptionLevel);
    v62 = v61;
    v63 = v97;
    sub_26C148638(v62, v97, type metadata accessor for EncryptionLevel);
    (*v107)(v63, 0, 1, v109);
    v64 = v93;
    swift_beginAccess();
    v65 = v3 + v64;
    v50 = v106;
    sub_26C0FF20C(v63, v65, &qword_28047A998, &qword_26C14A860);
    swift_endAccess();
LABEL_20:
    v52 = v3;
    sub_26C0CF314(v3 + v118, v50, &qword_28047A938, v48);
    if (v111(v50, 1, v45))
    {
      sub_26C0CF5C4(v50, &qword_28047A938, v48);
      v39 = v48;
      v53 = 0;
      v54 = 0xF000000000000000;
      v40 = v105;
    }

    else
    {
      v55 = (v50 + v45[7]);
      v53 = *v55;
      v54 = v55[1];
      sub_26C0BB37C(*v55, v54);
      sub_26C0CF5C4(v50, &qword_28047A938, v48);
      if (v54 >> 60 == 15)
      {
        v40 = v105;
      }

      else
      {
        sub_26C0BB37C(v53, v54);
        sub_26C0BBAA4(v53, v54);
        v66 = sub_26C0BAFC4(v53, v54);
        v67 = *(v52 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + 16) = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = sub_26C0CE8BC(0, v67[2] + 1, 1, v67);
          *(v52 + 16) = v67;
        }

        v70 = v67[2];
        v69 = v67[3];
        v40 = v105;
        if (v70 >= v69 >> 1)
        {
          v67 = sub_26C0CE8BC((v69 > 1), v70 + 1, 1, v67);
        }

        v67[2] = v70 + 1;
        v67[v70 + 4] = v66;
        *(v52 + 16) = v67;
        sub_26C0BB344(v53, v54);
      }

      v39 = &qword_26C14A7E0;
    }

    v71 = v101;
    sub_26C0CF314(v52 + v118, v101, &qword_28047A938, v39);
    if (!v111(v71, 1, v45))
    {
      v72 = v71[1];
      if (v72 >> 60 != 15)
      {
        v85 = *v71;
        v86 = v71[2];
        sub_26C0BBAA4(*v71, v71[1]);
        result = sub_26C0CF5C4(v71, &qword_28047A938, &qword_26C14A7E0);
        v87 = v72 >> 62;
        if ((v72 >> 62) > 1)
        {
          if (v87 == 2)
          {
            v88 = *(v85 + 24);
          }

          else
          {
            v88 = 0;
          }
        }

        else if (v87)
        {
          v88 = v85 >> 32;
        }

        else
        {
          v88 = BYTE6(v72);
        }

        if (v88 >= v86)
        {
          v89 = sub_26C14889C();
          v91 = v90;
          sub_26C0BB344(v53, v54);
          sub_26C0BB344(v85, v72);
          return sub_26C0BAFC4(v89, v91);
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    sub_26C0CF5C4(v71, &qword_28047A938, v39);
    if (v54 >> 60 == 15)
    {
      return 0;
    }

    sub_26C0BB344(v53, v54);
    v12 = v100;
    v3 = v52;
    v25 = v103;
    v38 = v99;
  }

  v73 = v112;
  v74 = v113;
  swift_endAccess();
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v75 = sub_26C148A9C();
  __swift_project_value_buffer(v75, qword_28047AF78);
  sub_26C0CF018(v73, *(&v73 + 1), v74);
  v76 = sub_26C148A7C();
  v77 = sub_26C14900C();
  sub_26C0CF030(v73, *(&v73 + 1), v74);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v80 = v73;
    *(v80 + 16) = v74;
    sub_26C0CF018(v73, *(&v73 + 1), v74);
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v78 + 4) = v81;
    *v79 = v81;
    _os_log_impl(&dword_26C0B5000, v76, v77, "Internal error when processing the handshake: %@", v78, 0xCu);
    sub_26C0CF5C4(v79, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v79, -1, -1);
    MEMORY[0x26D69C3A0](v78, -1, -1);
  }

  v82 = *(v3 + 24);
  v83 = *(v3 + 32);
  *(v3 + 24) = v73;
  v84 = *(v3 + 40);
  *(v3 + 40) = v74;
  sub_26C143440(v82, v83, v84);
  *v92 = 3;
  v114 = 3;
  sub_26C148594();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C1467E4()
{

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine, &qword_28047AFE8, &unk_26C150528);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26C1468E4(uint64_t a1)
{
  sub_26C1483E4(319, qword_281590B00, type metadata accessor for HandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26C146990(uint64_t *a1, _BYTE *a2)
{
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v73 - v8;
  v81 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = MEMORY[0x28223BE20](v81);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v18 = sub_26C148D8C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = a1[1];
  if (!v24)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v33 = sub_26C148A9C();
    __swift_project_value_buffer(v33, qword_28047AF78);
    v34 = sub_26C148A7C();
    v35 = sub_26C14900C();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_43;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Cannot start the handshake, missing server name";
    goto LABEL_42;
  }

  v79 = v12;
  v25 = a1[3];
  if (!v25)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v38 = sub_26C148A9C();
    __swift_project_value_buffer(v38, qword_28047AF78);
    v34 = sub_26C148A7C();
    v35 = sub_26C14900C();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_43;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Cannot start the handshake, missing application protocol";
    goto LABEL_42;
  }

  v80 = a1[2];
  if (!v80)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v39 = sub_26C148A9C();
    __swift_project_value_buffer(v39, qword_28047AF78);
    v34 = sub_26C148A7C();
    v35 = sub_26C14900C();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_43;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Cannot start the handshake, missing QUIC transport parameters";
    goto LABEL_42;
  }

  v78 = &v73 - v23;
  v76 = *a1;
  v26 = type metadata accessor for SwiftTLSOptions(0);
  sub_26C0CF314(a1 + *(v26 + 60), v17, &qword_28047AC08, &qword_26C14CDF0);
  v27 = (*(v19 + 48))(v17, 1, v18);
  v77 = v19;
  if (v27 != 1)
  {
    v87 = v2;
    (*(v19 + 32))(v78, v17, v18);

    goto LABEL_25;
  }

  sub_26C0CF5C4(v17, &qword_28047AC08, &qword_26C14CDF0);
  if (!a1[9])
  {

    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v71 = sub_26C148A9C();
    __swift_project_value_buffer(v71, qword_28047AF78);
    v34 = sub_26C148A7C();
    v35 = sub_26C14900C();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_43;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Cannot start the handshake, missing raw private key";
LABEL_42:
    _os_log_impl(&dword_26C0B5000, v34, v35, v37, v36, 2u);
    MEMORY[0x26D69C3A0](v36, -1, -1);
LABEL_43:

    *v87 = 0;
    LOBYTE(v86) = 0;
    sub_26C148594();
    swift_willThrowTypedImpl();
    return 0;
  }

  v86 = a1[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C1485E8(&qword_28047ABE8, MEMORY[0x277CC9C28]);
  v28 = v85;
  sub_26C148D6C();
  v85 = v28;
  if (v28)
  {

    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v29 = sub_26C148A9C();
    __swift_project_value_buffer(v29, qword_28047AF78);
    v30 = sub_26C148A7C();
    v31 = sub_26C14900C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26C0B5000, v30, v31, "Could not initialize server private key", v32, 2u);
      MEMORY[0x26D69C3A0](v32, -1, -1);
    }

    *v87 = 1;
    LOBYTE(v86) = 1;
    sub_26C148594();
    swift_willThrowTypedImpl();

    return 0;
  }

  v87 = v2;
  (*(v77 + 32))(v78, v22, v18);
LABEL_25:
  v75 = v6;
  v40 = *(v25 + 16);
  if (v40)
  {
    v41 = sub_26C0CE13C(0, 1, 1, MEMORY[0x277D84F90]);
    v42 = (v25 + 40);
    do
    {
      v44 = *(v42 - 1);
      v43 = *v42;
      v46 = *(v41 + 2);
      v45 = *(v41 + 3);

      if (v46 >= v45 >> 1)
      {
        v41 = sub_26C0CE13C((v45 > 1), v46 + 1, 1, v41);
      }

      *(v41 + 2) = v46 + 1;
      v47 = &v41[16 * v46];
      *(v47 + 4) = v44;
      *(v47 + 5) = v43;
      v42 += 2;
      --v40;
    }

    while (v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v48 = v77;
  v49 = v84;
  (*(v77 + 16))(v84, v78, v18);
  v50 = *(v48 + 56);
  v50(v49, 0, 1, v18);
  v51 = sub_26C11EF18(v80);
  v53 = v52;

  v54 = 0;
  v55 = v53 >> 62;
  v74 = v53;
  if ((v53 >> 62) > 1)
  {
    if (v55 == 2)
    {
      v54 = *(v51 + 16);
    }
  }

  else if (v55)
  {
    v54 = v51;
  }

  v56 = v81;
  v80 = v51;
  v57 = *(v81 + 20);
  v58 = v79;
  v59 = v54;
  v50(v79 + v57, 1, 1, v18);
  v60 = (v58 + v56[6]);
  *v60 = xmmword_26C14A540;
  v60[2] = 0;
  v61 = v56[7];
  *v58 = v76;
  v58[1] = v24;
  sub_26C0FF20C(v84, v58 + v57, &qword_28047AC08, &qword_26C14CDF0);
  sub_26C0BB344(*v60, v60[1]);
  v62 = v74;
  *v60 = v80;
  v60[1] = v62;
  v60[2] = v59;
  *(v58 + v61) = v41;
  *(v58 + v56[8]) = 0;
  *(v58 + v56[9]) = 1;
  *(v58 + v56[10]) = 0;
  v63 = v82;
  sub_26C1486A0(v58, v82, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v64 = v83;
  ServerHandshakeStateMachine.init(configuration:)(v63, v83);
  (*(v77 + 8))(v78, v18);
  v65 = type metadata accessor for ServerHandshakeStateMachine(0);
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  v67 = v87;
  swift_beginAccess();
  sub_26C0FF20C(v64, &v67[v66], &qword_28047AFD8, &unk_26C150518);
  swift_endAccess();
  v68 = type metadata accessor for PartialHandshakeResult(0);
  v69 = v75;
  (*(*(v68 - 8) + 56))(v75, 1, 1, v68);
  v70 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  swift_beginAccess();
  sub_26C0FF20C(v69, &v67[v70], &qword_28047A938, &qword_26C14A7E0);
  swift_endAccess();
  sub_26C148708(v58, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  return 0;
}

void *sub_26C147434(uint64_t a1, unsigned int (*a2)(uint64_t *, uint64_t, uint64_t))
{
  v88 = a2;
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v81 - v11;
  v94 = type metadata accessor for EncryptionLevel(0);
  v13 = *(v94 - 8);
  v14 = MEMORY[0x28223BE20](v94);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v87 = (&v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v81 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v81 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v81 - v26;
  v28 = &unk_281592000;
  if (a1)
  {
    v85 = v22;
    v29 = v12;
    v30 = v13;

    v32 = sub_26C11EF18(v31);
    v34 = v33;

    v35 = 0;
    v91 = v32;
    v92 = v34;
    v36 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v36 == 2)
      {
        v35 = *(v32 + 16);
      }
    }

    else if (v36)
    {
      v35 = v32;
    }

    v93 = v35;
    v37 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
    swift_beginAccess();
    v38 = type metadata accessor for ServerHandshakeStateMachine(0);
    result = (*(*(v38 - 8) + 48))(v4 + v37, 1, v38);
    if (result == 1)
    {
      goto LABEL_40;
    }

    ServerHandshakeStateMachine.receivedNetworkData(_:)(&v91);
    swift_endAccess();
    sub_26C0BB9B0(v91, v92);
    v13 = v30;
    v12 = v29;
    v22 = v85;
    v28 = &unk_281592000;
  }

  v40 = v28[199];
  swift_beginAccess();
  v41 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v41 - 8) + 48))(v4 + v40, 1, v41);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(v89, v27);
  if (!v3)
  {
    v55 = v13;
    v85 = 0;
    swift_endAccess();
    v56 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
    swift_beginAccess();
    sub_26C0FF20C(v27, v4 + v56, &qword_28047A938, &qword_26C14A7E0);
    swift_endAccess();
    sub_26C0CF314(v4 + v56, v25, &qword_28047A938, &qword_26C14A7E0);
    v57 = type metadata accessor for PartialHandshakeResult(0);
    v88 = *(*(v57 - 8) + 48);
    if (v88(v25, 1, v57))
    {
      sub_26C0CF5C4(v25, &qword_28047A938, &qword_26C14A7E0);
      (*(v13 + 56))(v12, 1, 1, v94);
    }

    else
    {
      sub_26C0CF314(v25 + *(v57 + 20), v12, &qword_28047A998, &qword_26C14A860);
      sub_26C0CF5C4(v25, &qword_28047A938, &qword_26C14A7E0);
      if ((*(v13 + 48))(v12, 1, v94) != 1)
      {
        v64 = v82;
        sub_26C148638(v12, v82, type metadata accessor for EncryptionLevel);
        v65 = v64;
        v66 = v84;
        sub_26C148638(v65, v84, type metadata accessor for EncryptionLevel);
        (*(v13 + 56))(v66, 0, 1, v94);
        v67 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
        swift_beginAccess();
        v68 = v4 + v67;
        v13 = v55;
        sub_26C0FF20C(v66, v68, &qword_28047A998, &qword_26C14A860);
        swift_endAccess();
LABEL_20:
        v58 = v87;
        sub_26C0CF314(v4 + v56, v22, &qword_28047A938, &qword_26C14A7E0);
        v59 = v88;
        v60 = v88(v22, 1, v57);
        v61 = v86;
        if (v60)
        {
          sub_26C0CF5C4(v22, &qword_28047A938, &qword_26C14A7E0);
          (*(v13 + 56))(v61, 1, 1, v94);
        }

        else
        {
          sub_26C0CF314(v22 + *(v57 + 24), v86, &qword_28047A998, &qword_26C14A860);
          sub_26C0CF5C4(v22, &qword_28047A938, &qword_26C14A7E0);
          v62 = v94;
          if ((*(v13 + 48))(v61, 1, v94) != 1)
          {
            v69 = v61;
            v70 = v83;
            sub_26C148638(v69, v83, type metadata accessor for EncryptionLevel);
            v71 = v70;
            v72 = v84;
            sub_26C148638(v71, v84, type metadata accessor for EncryptionLevel);
            (*(v13 + 56))(v72, 0, 1, v62);
            v59 = v88;
            v73 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
            swift_beginAccess();
            sub_26C0FF20C(v72, v4 + v73, &qword_28047A998, &qword_26C14A860);
            swift_endAccess();
LABEL_24:
            sub_26C0CF314(v4 + v56, v58, &qword_28047A938, &qword_26C14A7E0);
            if (v59(v58, 1, v57) || (v63 = v58[1], v63 >> 60 == 15))
            {
              sub_26C0CF5C4(v58, &qword_28047A938, &qword_26C14A7E0);
              return 0;
            }

            v74 = *v58;
            v75 = v58[2];
            sub_26C0BBAA4(*v58, v58[1]);
            result = sub_26C0CF5C4(v58, &qword_28047A938, &qword_26C14A7E0);
            v76 = v63 >> 62;
            if ((v63 >> 62) > 1)
            {
              if (v76 == 2)
              {
                v77 = *(v74 + 24);
              }

              else
              {
                v77 = 0;
              }
            }

            else if (v76)
            {
              v77 = v74 >> 32;
            }

            else
            {
              v77 = BYTE6(v63);
            }

            if (v77 >= v75)
            {
              v78 = sub_26C14889C();
              v80 = v79;
              sub_26C0BB344(v74, v63);
              return sub_26C0BAFC4(v78, v80);
            }

            __break(1u);
            goto LABEL_39;
          }
        }

        sub_26C0CF5C4(v61, &qword_28047A998, &qword_26C14A860);
        goto LABEL_24;
      }
    }

    sub_26C0CF5C4(v12, &qword_28047A998, &qword_26C14A860);
    goto LABEL_20;
  }

  v42 = v89[0];
  v43 = v89[1];
  v44 = v90;
  swift_endAccess();
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v45 = sub_26C148A9C();
  __swift_project_value_buffer(v45, qword_28047AF78);
  sub_26C0CF018(v42, v43, v44);
  v46 = sub_26C148A7C();
  v47 = sub_26C14900C();
  sub_26C0CF030(v42, v43, v44);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v50 = v42;
    *(v50 + 8) = v43;
    *(v50 + 16) = v44;
    sub_26C0CF018(v42, v43, v44);
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_26C0B5000, v46, v47, "Internal error when processing the handshake: %@", v48, 0xCu);
    sub_26C0CF5C4(v49, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v49, -1, -1);
    MEMORY[0x26D69C3A0](v48, -1, -1);
  }

  v52 = *(v4 + 24);
  v53 = *(v4 + 32);
  *(v4 + 24) = v42;
  *(v4 + 32) = v43;
  v54 = *(v4 + 40);
  *(v4 + 40) = v44;
  sub_26C143440(v52, v53, v54);
  *v88 = 3;
  LOBYTE(v91) = 3;
  sub_26C148594();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C147E58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v4, v3, &qword_28047AFD8, &unk_26C150518);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    sub_26C148708(v3, type metadata accessor for ServerHandshakeStateMachine);
    if ((v7 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void *sub_26C147F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v4, v3, &qword_28047AFD8, &unk_26C150518);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v5 - 8) + 48))(v3, 1, v5);
  if (result == 1)
  {
    goto LABEL_15;
  }

  ServerHandshakeStateMachine.peerQUICTransportParameters.getter(&v15);
  v7 = v16;
  if (v16 >> 60 == 15)
  {
    sub_26C148708(v3, type metadata accessor for ServerHandshakeStateMachine);
    return 0;
  }

  v8 = v15;
  v9 = v17;
  result = sub_26C148708(v3, type metadata accessor for ServerHandshakeStateMachine);
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v7);
  }

  if (v11 < v9)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = sub_26C14889C();
  v14 = sub_26C0BAFC4(v12, v13);
  sub_26C0BB344(v8, v7);
  return v14;
}

uint64_t sub_26C1481B0()
{

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  v1 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;

  sub_26C0CF5C4(v0 + v1, &qword_28047AFD8, &unk_26C150518);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_clientAppSecret, &qword_28047A930, qword_26C14C120);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_26C1482E0(uint64_t a1)
{
  sub_26C1483E4(319, qword_281590598, type metadata accessor for ServerHandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    sub_26C1483E4(319, &qword_281590338, MEMORY[0x277CC5330]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26C1483E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C14902C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26C148444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C148498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void *sub_26C148520(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26C148594()
{
  result = qword_28047AFE0;
  if (!qword_28047AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AFE0);
  }

  return result;
}

uint64_t sub_26C1485E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C148638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C1486A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C148708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}