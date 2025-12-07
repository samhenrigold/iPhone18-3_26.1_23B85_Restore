uint64_t sub_255F711B4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_255F95A40();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_255F95A80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_255F95A90();
  sub_255F95A70();
  v19 = *(v10 + 8);
  v19(v12, v9);
  v13 = *MEMORY[0x277D84E28];
  v18 = *(v3 + 104);
  v18(v6, v13, v2);
  LOBYTE(v1) = sub_255F95A30();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  if (v1)
  {
    v15 = 1;
  }

  else
  {
    sub_255F95A90();
    sub_255F95A70();
    v19(v12, v9);
    v18(v6, *MEMORY[0x277D84E20], v2);
    v15 = sub_255F95A30();
    v14(v6, v2);
    v14(v8, v2);
  }

  return v15 & 1;
}

uint64_t sub_255F71440(uint64_t a1)
{
  v1 = sub_255F95A40();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = sub_255F95A80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F95A90();
  sub_255F95A70();
  (*(v9 + 8))(v11, v8);
  (*(v2 + 104))(v5, *MEMORY[0x277D84E18], v1);
  v12 = sub_255F95A30();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  return v12 & 1;
}

uint64_t sub_255F71624(uint64_t a1)
{
  v1 = a1;
  v2 = sub_255F711B4(a1);
  v4 = v1 > 0x7F || v1 == 95;
  return (v2 | v4) & 1;
}

uint64_t sub_255F71660(uint64_t a1)
{
  v2 = sub_255F95A40();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = sub_255F95A80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255F711B4(a1);
  v14 = 1;
  if ((v13 & 1) == 0 && a1 <= 0x7F && a1 != 95)
  {
    sub_255F95A90();
    sub_255F95A70();
    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v6, *MEMORY[0x277D84E18], v2);
    v15 = sub_255F95A30();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v16(v8, v2);
    v14 = v15 | (a1 == 45);
  }

  return v14 & 1;
}

BOOL sub_255F71878(unsigned int a1)
{
  v2 = a1 == 127 || a1 - 14 < 0x12;
  if (a1 == 11)
  {
    v2 = 1;
  }

  return a1 < 9 || v2;
}

uint64_t sub_255F718A0()
{
  v1 = (*v0 + 272);
  v2 = *v1;
  result = (*v1)();
  if ((result & 0x100000000) == 0)
  {
    v4 = result;
    do
    {
      result = (*(*v0 + 240))();
      if ((result & 1) != 0 || v4 == 41)
      {
        break;
      }

      v6 = sub_255F76344();
      v7 = (*(*v0 + 256))(v6);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);

        v5 = sub_255F75FF0(v4, v8);
        if (v5)
        {
          v5 = sub_255F777CC();
        }
      }

      else
      {
      }

      result = (v2)(v5);
      v4 = result;
    }

    while ((result & 0x100000000) == 0);
  }

  return result;
}

uint64_t sub_255F719A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v29 = 0;
  v30 = 0xE000000000000000;
  v4 = sub_255F77654();
  v5 = (*v1 + 272);
  v6 = *v5;
  v7 = (*v5)(v4);
  if ((v7 & 0x100000000) == 0)
  {
    v8 = v7;
    while (1)
    {
      v12 = *(*v2 + 240);
      if ((v12() & 1) != 0 || v8 == 41)
      {
        goto LABEL_15;
      }

      KeyPath = swift_getKeyPath();
      v28 = v8;
      v14 = sub_255F75FBC(KeyPath, &v28);

      if (v14)
      {
        break;
      }

      if (v8 <= 0x28 && ((1 << v8) & 0x18400000000) != 0)
      {
        goto LABEL_14;
      }

      v15 = swift_getKeyPath();
      v28 = v8;
      v16 = sub_255F75FBC(v15, &v28);

      if (v16)
      {
        goto LABEL_14;
      }

      if (v8 == 92)
      {
        v17 = sub_255F76344();
        v18 = (*(*v2 + 256))(v17);
        if (!*(v18 + 16))
        {

LABEL_14:

          result = sub_255F718A0();
          v21 = 0;
          v22 = 0xA000000000000000;
          v23 = 1;
          goto LABEL_17;
        }

        v19 = *(v18 + 32);

        if (!sub_255F75FF0(92, v19))
        {
          goto LABEL_14;
        }

        sub_255F777CC();
      }

      v9 = sub_255F95AA0();
      MEMORY[0x259C540A0](v9);

      v11 = v6(v10);
      v8 = v11;
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }
    }

    sub_255F77654();
    v24 = sub_255F76344();
    v25 = (*(*v2 + 256))(v24);
    if (*(v25 + 16))
    {
      v26 = *(v25 + 32);

      v21 = v30;
      if (v26 == 41)
      {
LABEL_24:
        result = v6(v27);
        v23 = v29;
        goto LABEL_16;
      }
    }

    else
    {

      v21 = v30;
    }

    v27 = (v12)(v27);
    if ((v27 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_15:
  result = (*(*v2 + 240))();
  v23 = v29;
  v21 = v30;
LABEL_16:
  v22 = 0x5000000000000000;
LABEL_17:
  *a1 = v23;
  a1[1] = v21;
  a1[2] = v22;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

uint64_t sub_255F71C8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255F95A60();
  *a1 = result & 1;
  return result;
}

BOOL sub_255F71CBC@<W0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F71878(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255F71CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255F7812C();
  v5 = v4;
  v6 = sub_255F76344();
  v7 = (*v1 + 256);
  v8 = *v7;
  v9 = (*v7)(v6);
  if (sub_255F95450() == 7107189 && v10 == 0xE300000000000000)
  {
  }

  else
  {
    v11 = sub_255F95990();

    if ((v11 & 1) == 0)
    {
      if (*(v9 + 16))
      {
LABEL_12:
        v17 = *(v9 + 32);

        if (v17 == 40)
        {
          result = (*(*v1 + 272))(result);
          goto LABEL_14;
        }

LABEL_16:
        *a1 = v3;
        *(a1 + 8) = v5;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        return result;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  if (!*(v9 + 16))
  {
    goto LABEL_15;
  }

  if (*(v9 + 32) != 40)
  {
    goto LABEL_12;
  }

  (*(*v1 + 272))(v12);
  sub_255F77654();
  v13 = sub_255F76344();
  v14 = v8(v13);
  if (!*(v14 + 16))
  {

    goto LABEL_18;
  }

  v15 = *(v14 + 32);

  if (v15 == 34 || v15 == 39)
  {
LABEL_14:
    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0x1000000000000000;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    return result;
  }

LABEL_18:

  return sub_255F719A4(a1);
}

uint64_t sub_255F71EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255F782AC(&v21);
  if (!v2)
  {
    v7 = result;
    v8 = v5;
    v9 = v6;
    v10 = v21;
    v11 = sub_255F7691C();
    v12 = (*(*v1 + 264))(v11);
    v13 = *(*v1 + 216);
    v14 = v13(v12);
    v15 = sub_255F760F0(v14);

    if (v15)
    {
      result = sub_255F7812C();
      *a1 = v7;
      a1[1] = v8;
      a1[2] = v10 | 0x9000000000000000;
      a1[3] = v9;
      a1[4] = result;
      a1[5] = v17;
      return result;
    }

    v18 = v13(v16);
    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);

      if (v19 == 37)
      {
        result = (*(*v1 + 272))(result);
        v20 = v10 | 0x8000000000000000;
LABEL_9:
        *a1 = v7;
        a1[1] = v8;
        a1[2] = v20;
        a1[3] = v9;
        a1[4] = 0;
        a1[5] = 0;
        return result;
      }
    }

    else
    {
    }

    v20 = v10 | 0x7000000000000000;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_255F7205C@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 240);
  v7 = *(*v2 + 272);
  v8 = v6();
  result = v7();
  if ((result & 0x100000000) != 0 || (v8 & 1) != 0 || result == a1)
  {
LABEL_22:
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    v21 = 0x4000000000000000;
    goto LABEL_23;
  }

  v10 = result;
  while (!sub_255F7186C(v10))
  {
    if (v10 != 92)
    {
      goto LABEL_11;
    }

    v11 = sub_255F76344();
    v12 = (*(*v3 + 256))(v11);
    if (v6())
    {
      goto LABEL_12;
    }

    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = sub_255F7186C(v13);
      if (v14)
      {
        v15 = v7();
        goto LABEL_13;
      }
    }

    else
    {
    }

    v18 = (*(*v3 + 216))(v14);
    if (!*(v18 + 16))
    {
      goto LABEL_12;
    }

    v19 = *(v18 + 32);

    v15 = sub_255F75FF0(92, v19);
    if (v15)
    {
      sub_255F777CC();
LABEL_11:
      v16 = sub_255F95AA0();
      MEMORY[0x259C540A0](v16);
LABEL_12:
    }

LABEL_13:
    v17 = (v6)(v15);
    result = v7();
    if ((result & 0x100000000) == 0 && (v17 & 1) == 0)
    {
      v10 = result;
      if (result != a1)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  result = (*(*v3 + 280))(v20);
  *a2 = 0;
  a2[1] = 0;
  v21 = 0xA000000000000000;
LABEL_23:
  a2[2] = v21;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_255F722AC@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 240))();
  if (result)
  {
    *a1 = xmmword_255F95DC0;
    v4 = 0xA000000000000000;
  }

  else
  {
    result = (*(*v1 + 272))();
    if ((result & 0x100000000) == 0)
    {
      v5 = result;
      v6 = sub_255F7691C();
      (*(*v1 + 264))(v6);
      sub_255F73058(v5, v7);
      sub_255F7337C(v1, a1);
      return sub_255F723D8(v7);
    }

    *a1 = 0;
    a1[1] = 0;
    v4 = 0x1FFFFFFFELL;
  }

  a1[2] = v4;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

void sub_255F7247C(uint64_t *a1@<X8>)
{
  v2 = a1;
  v3 = *(v1 + 8);
  v4 = v3;
  LOBYTE(a1) = *(v1 + 16);
  if (*(v1 + 17) == 1)
  {
    *(v1 + 17) = 0;
    if (a1)
    {
      goto LABEL_19;
    }

    a1 = *v1;
    if (v3 >= *(*v1 + 16))
    {
LABEL_15:
      v4 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v5 = 0xA000000000000000;
      v6 = 21;
      goto LABEL_16;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_14:
      v11 = &a1[6 * v4];
      v6 = v11[4];
      v9 = v11[5];
      v5 = v11[6];
      v4 = v11[7];
      v7 = v11[8];
      v8 = v11[9];
      sub_255F72F90(v6, v9, v5, v4, v7, v8);
      goto LABEL_16;
    }

    __break(1u);
  }

  if ((a1 & 1) == 0)
  {
    a1 = *v1;
    v10 = *(*v1 + 16);
    if (v3 < v10)
    {
      v4 = v3 + 1;
      *(v1 + 8) = v3 + 1;
      *(v1 + 16) = 0;
      v10 = a1[2];
    }

    if (v4 < v10)
    {
      if (v3 < v4 && (v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_19:
      sub_255F95840();
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v4 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  a1 = *v1;
  if (*(*v1 + 16) > 0)
  {
    goto LABEL_14;
  }

  v5 = 0xA000000000000000;
  v6 = 21;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_16:
  v17[0] = v6;
  v17[1] = v9;
  v17[2] = v5;
  v17[3] = v4;
  v17[4] = v7;
  v17[5] = v8;
  v12 = xmmword_255F95DC0;
  v13 = 0xA000000000000000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (static Token.== infix(_:_:)(v17, &v12))
  {
    sub_255F726E0(v6, v9, v5, v4, v7, v8);
    v6 = 0;
    v9 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0x1FFFFFFFELL;
  }

  *v2 = v6;
  v2[1] = v9;
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v7;
  v2[5] = v8;
}

void sub_255F726E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 >> 60;
  if ((a3 >> 60) <= 9)
  {
    if (((1 << v7) & 0x1BF) != 0)
    {

LABEL_5:

      return;
    }

    if (v7 == 9)
    {

      goto LABEL_5;
    }
  }
}

unint64_t sub_255F72798()
{
  result = qword_27F81B480;
  if (!qword_27F81B480)
  {
    result = swift_getWitnessTable("!F*,4Y", &type metadata for TokenSequence.Iterator, v0, v1);
    atomic_store(result, &qword_27F81B480);
  }

  return result;
}

void sub_255F727EC(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_255F72810()
{
  v1 = sub_255F72930(*v0);

  return v1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_255F72898(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255F728E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_255F72930(uint64_t a1)
{
  v1 = *(a1 + 16);
  v42 = a1 + 32;

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v43 = MEMORY[0x277D84F90];
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = 1;
  v41 = v1;
  while (1)
  {
    v7 = v2;
    if (v2 >= v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0xA000000000000000;
      v13 = 21;
    }

    else
    {
      if (v6)
      {
        if (v2)
        {
          goto LABEL_36;
        }
      }

      else if (v4 >= v2)
      {
        goto LABEL_36;
      }

      v14 = (v42 + 48 * v2);
      v15 = *v14;
      v16 = v14[1];
      v18 = v14[2];
      v17 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      sub_255F72F90(*v14, v16, v18, v17, v19, v20);
      v11 = v20;
      v10 = v19;
      v9 = v17;
      v12 = v18;
      v8 = v16;
      v13 = v15;
    }

    v21 = v13;
    v49[0] = v13;
    v49[1] = v8;
    v22 = v8;
    v23 = v12;
    v49[2] = v12;
    v49[3] = v9;
    v24 = v9;
    v25 = v10;
    v49[4] = v10;
    v49[5] = v11;
    v26 = v11;
    v44 = xmmword_255F95DC0;
    v45 = 0xA000000000000000;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    if (static Token.== infix(_:_:)(v49, &v44))
    {
      break;
    }

    if (!v3)
    {
      v27 = v43[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_34;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B488, &unk_255F95F90);
      v30 = swift_allocObject();
      v31 = (_swift_stdlib_malloc_size(v30) - 32) / 48;
      v30[2] = v29;
      v30[3] = 2 * v31;
      v32 = (v30 + 4);
      v33 = v43[3] >> 1;
      if (v43[2])
      {
        if (v30 != v43 || v32 >= &v43[6 * v33 + 4])
        {
          v40 = v31;
          memmove(v30 + 4, v43 + 4, 48 * v33);
          v31 = v40;
        }

        v43[2] = 0;
      }

      v5 = (v32 + 48 * v33);
      v3 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

      v43 = v30;
      v1 = v41;
    }

    v35 = __OFSUB__(v3--, 1);
    if (v35)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v6 = 0;
    *v5 = v21;
    v5[1] = v22;
    v5[2] = v23;
    v5[3] = v24;
    v5[4] = v25;
    v5[5] = v26;
    v5 += 6;
    if (v7 >= v1)
    {
      v2 = v7;
    }

    else
    {
      v2 = v7 + 1;
    }

    v4 = v7;
  }

  sub_255F726E0(v21, v22, v23, v24, v25, v26);

  result = v43;
  v37 = v43[3];
  if (v37 < 2)
  {
    return result;
  }

  v38 = v37 >> 1;
  v35 = __OFSUB__(v38, v3);
  v39 = v38 - v3;
  if (!v35)
  {
    result = v43;
    v43[2] = v39;
    return result;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_255F95840();
  __break(1u);
  return result;
}

uint64_t sub_255F72C7C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    v13 = 0;
    a3 = 0;
    v5 = 1;
LABEL_15:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = v5;
    *(a1 + 17) = 0;
    return a3;
  }

  v5 = a3 == 0;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = a3;
    v24 = a4;
    v22 = a4[2];
    if (v22)
    {
      v8 = a4[4];
      v7 = a4[5];
      v10 = a4[6];
      v9 = a4[7];
      v11 = a4[8];
      v12 = a4[9];
      sub_255F72F90(v8, v7, v10, v9, v11, v12);
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v8 = 21;
      v10 = 0xA000000000000000;
    }

    v30 = v8;
    v31 = v7;
    v32 = v10;
    v33 = v9;
    v34 = v11;
    v35 = v12;
    v25 = xmmword_255F95DC0;
    v26 = 0xA000000000000000;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    if (static Token.== infix(_:_:)(&v30, &v25))
    {
      v13 = 0;
      v21 = a1;
      v14 = 0;
LABEL_11:
      sub_255F726E0(v8, v7, v10, v9, v11, v12);
      v5 = 0;
      a3 = v14;
      a1 = v21;
      goto LABEL_14;
    }

    *a2 = v8;
    a2[1] = v7;
    a2[2] = v10;
    a2[3] = v9;
    a2[4] = v11;
    a2[5] = v12;
    a3 = v23;
    if (v23 == 1)
    {
      v13 = 0;
      v5 = 0;
LABEL_14:
      a4 = v24;
      goto LABEL_15;
    }

    v16 = 0;
    a4 = v24;
    v21 = a1;
    v17 = a2 + 11;
    v14 = 1;
    while (1)
    {
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = a4[2];
      if (v16 >= v19)
      {
        v13 = v16;
      }

      else
      {
        v13 = v16 + 1;
      }

      if (v13 >= v22)
      {
        v7 = 0;
        v9 = 0;
        v11 = 0;
        v12 = 0;
        v10 = 0xA000000000000000;
        v8 = 21;
      }

      else
      {
        if (v16 >= v13 || v13 < 0 || v13 >= v19)
        {
          goto LABEL_32;
        }

        v20 = &v24[6 * v13 + 4];
        v8 = *v20;
        v7 = v20[1];
        v10 = v20[2];
        v9 = v20[3];
        v11 = v20[4];
        v12 = v20[5];
        sub_255F72F90(*v20, v7, v10, v9, v11, v12);
      }

      v30 = v8;
      v31 = v7;
      v32 = v10;
      v33 = v9;
      v34 = v11;
      v35 = v12;
      v25 = xmmword_255F95DC0;
      v26 = 0xA000000000000000;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      if (static Token.== infix(_:_:)(&v30, &v25))
      {
        goto LABEL_11;
      }

      *(v17 - 5) = v8;
      *(v17 - 4) = v7;
      *(v17 - 3) = v10;
      *(v17 - 2) = v9;
      ++v14;
      *(v17 - 1) = v11;
      *v17 = v12;
      v17 += 6;
      v16 = v13;
      a3 = v23;
      a4 = v24;
      if (v18 == v23)
      {
        v5 = 0;
        a1 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  result = sub_255F95840();
  __break(1u);
  return result;
}

void sub_255F72F90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 >> 60;
  if ((a3 >> 60) <= 9)
  {
    if (((1 << v7) & 0x1BF) != 0)
    {

LABEL_5:

      return;
    }

    if (v7 == 9)
    {

      goto LABEL_5;
    }
  }
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

double sub_255F73058@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v5 = sub_255F75FBC(KeyPath, &v15);

  if (v5)
  {
    v7 = &type metadata for TokenProducers.Whitespace;
    v8 = &off_286809550;
LABEL_3:
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
  }

  else
  {
    switch(a1)
    {
      case '""':
        v7 = &type metadata for TokenProducers.QuotationMark;
        v8 = &off_286809560;
        goto LABEL_3;
      case '#':
        v7 = &type metadata for TokenProducers.NumberSign;
        v8 = &off_286809570;
        goto LABEL_3;
      case '$':
        v7 = &type metadata for TokenProducers.DollarSign;
        v8 = &off_286809580;
        goto LABEL_3;
      case '\'':
        v7 = &type metadata for TokenProducers.Apostrophe;
        v8 = &off_286809590;
        goto LABEL_3;
      case '(':
        v7 = &type metadata for TokenProducers.LeftParenthesis;
        v8 = &off_2868095A0;
        goto LABEL_3;
      case ')':
        v7 = &type metadata for TokenProducers.RightParenthesis;
        v8 = &off_2868095B0;
        goto LABEL_3;
      case '*':
        v7 = &type metadata for TokenProducers.Asterisk;
        v8 = &off_2868095C0;
        goto LABEL_3;
      case '+':
        v7 = &type metadata for TokenProducers.PlusSign;
        v8 = &off_2868095D0;
        goto LABEL_3;
      case ',':
        v7 = &type metadata for TokenProducers.Comma;
        v8 = &off_2868095E0;
        goto LABEL_3;
      case '-':
        v7 = &type metadata for TokenProducers.HyphenMinus;
        v8 = &off_2868095F0;
        goto LABEL_3;
      case '.':
        v7 = &type metadata for TokenProducers.FullStop;
        v8 = &off_286809600;
        goto LABEL_3;
      case '/':
        v7 = &type metadata for TokenProducers.Solidus;
        v8 = &off_286809610;
        goto LABEL_3;
      case ':':
        v7 = &type metadata for TokenProducers.Colon;
        v8 = &off_286809620;
        goto LABEL_3;
      case ';':
        v7 = &type metadata for TokenProducers.Semicolon;
        v8 = &off_286809630;
        goto LABEL_3;
      case '<':
        v7 = &type metadata for TokenProducers.LessThanSign;
        v8 = &off_286809640;
        goto LABEL_3;
      case '@':
        v7 = &type metadata for TokenProducers.CommercialAt;
        v8 = &off_286809650;
        goto LABEL_3;
      case 'U':
      case 'u':
        v7 = &type metadata for TokenProducers.LatinLetterU;
        v8 = &off_2868096C0;
        goto LABEL_3;
      case '[':
        v7 = &type metadata for TokenProducers.LeftSquareBracket;
        v8 = &off_286809660;
        goto LABEL_3;
      case '\\':
        v7 = &type metadata for TokenProducers.ReverseSolidus;
        v8 = &off_286809670;
        goto LABEL_3;
      case ']':
        v7 = &type metadata for TokenProducers.RightSquareBracket;
        v8 = &off_286809680;
        goto LABEL_3;
      case '^':
        v7 = &type metadata for TokenProducers.CircumflexAccent;
        v8 = &off_286809690;
        goto LABEL_3;
      case '{':
        v7 = &type metadata for TokenProducers.LeftCurlyBracket;
        v8 = &off_2868096A0;
        goto LABEL_3;
      case '|':
        v7 = &type metadata for TokenProducers.VerticalLine;
        v8 = &off_2868096D0;
        goto LABEL_3;
      case '}':
        v7 = &type metadata for TokenProducers.RightCurlyBracket;
        v8 = &off_2868096B0;
        goto LABEL_3;
      case '~':
        v7 = &type metadata for TokenProducers.Tilde;
        v8 = &off_2868096E0;
        goto LABEL_3;
      default:
        v9 = swift_getKeyPath();
        v14 = a1;
        v10 = sub_255F75FBC(v9, &v14);

        if (v10)
        {
          v7 = &type metadata for TokenProducers.Digit;
          v8 = &off_2868096F0;
          goto LABEL_3;
        }

        v11 = swift_getKeyPath();
        v13 = a1;
        v12 = sub_255F75FBC(v11, &v13);

        if (v12)
        {
          v7 = &type metadata for TokenProducers.Name;
          v8 = &off_286809700;
          goto LABEL_3;
        }

        *(a2 + 32) = 0;
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        break;
    }
  }

  return result;
}

uint64_t sub_255F7337C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_255F73440(v3, v9);
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 8))(a1, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    result = sub_255F734B0(v9);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0x1FFFFFFFELL;
    a2[3] = 0;
    a2[4] = 0;
    a2[5] = 0;
  }

  return result;
}

uint64_t sub_255F73440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B490, &qword_255F960C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255F734B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B490, &qword_255F960C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t get_enum_tag_for_layout_string_33LinkPresentationStyleSheetParsing13TokenProducer_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_255F735FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255F73658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_255F736C4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F71440(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_255F736F4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255F71660(*a1);
  *a2 = result & 1;
  return result;
}

double sub_255F738E4@<D0>(uint64_t a2@<X8>)
{
  sub_255F77654();
  *&result = 9;
  *a2 = xmmword_255F95FA0;
  *(a2 + 16) = 0xA000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_255F73950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 216);
  v4 = *(v3() + 16);

  if (!v4)
  {
LABEL_4:
    v8 = (v3)(v5);
    v9 = sub_255F76028(v8);

    if (!v9)
    {
      v13 = 0;
      v14 = 0x6000000000000000;
      result = 35;
      goto LABEL_7;
    }

LABEL_5:
    v10 = v3();
    v11 = sub_255F760F0(v10);

    result = sub_255F7812C();
    v14 = !v11 | 0x3000000000000000;
LABEL_7:
    *a2 = result;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = 0;
    a2[4] = 0;
    a2[5] = 0;
    return result;
  }

  v6 = (v3)(v5);
  if (*(v6 + 16))
  {
    v7 = *(v6 + 32);

    v5 = sub_255F71660(v7);
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_255F73A7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (!*(v4 + 16))
  {

    goto LABEL_5;
  }

  v5 = *(v4 + 32);

  if (v5 != 61)
  {
LABEL_5:
    v7 = 0x6000000000000000;
    v8 = 36;
    goto LABEL_6;
  }

  result = (*(*a1 + 272))(result);
  v7 = 0xA000000000000000;
  v8 = 6;
LABEL_6:
  *a2 = v8;
  a2[1] = 0;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

double sub_255F73B78@<D0>(int a1@<W3>, _OWORD *a2@<X8>)
{
  sub_255F7205C(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_255F73BD0@<D0>(uint64_t a1@<X8>)
{
  *&result = 17;
  *a1 = xmmword_255F95FB0;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double sub_255F73BEC@<D0>(uint64_t a1@<X8>)
{
  *&result = 18;
  *a1 = xmmword_255F95FC0;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_255F73C08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (!*(v4 + 16))
  {

    goto LABEL_5;
  }

  v5 = *(v4 + 32);

  if (v5 != 61)
  {
LABEL_5:
    v7 = 0x6000000000000000;
    v8 = 42;
    goto LABEL_6;
  }

  result = (*(*a1 + 272))(result);
  v7 = 0xA000000000000000;
  v8 = 7;
LABEL_6:
  *a2 = v8;
  a2[1] = 0;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

double sub_255F73D08@<D0>(uint64_t a1@<X8>)
{
  *&result = 14;
  *a1 = xmmword_255F95FE0;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_255F73D24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(*a1 + 216);
  v6 = v5();
  if (*(v6 + 16))
  {
    v7 = *(v6 + 32);

    v8 = sub_255F71440(v7);
    if (v8)
    {
      (*(*a1 + 280))();
      result = sub_255F71EF4(v20);
      if (v2)
      {
        result = MEMORY[0x259C547B0](v2);
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0x1FFFFFFFELL;
        a2[3] = 0;
        a2[4] = 0;
        a2[5] = 0;
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = (v5)(v8);
  v11 = sub_255F760F0(v10);

  if (v11)
  {
    (*(*a1 + 280))(v12);
    result = sub_255F71CEC(v20);
LABEL_8:
    v13 = v20[1];
    *a2 = v20[0];
    *(a2 + 1) = v13;
    *(a2 + 2) = v20[2];
    return result;
  }

  v14 = (v5)(v12);
  v15 = sub_255F73F14(15917, 0xE200000000000000, v14);

  if (v15)
  {
    v16 = (*a1 + 272);
    v17 = *v16;
    v18 = (*v16)(result);
    result = v17(v18);
    *a2 = xmmword_255F96000;
    v19 = 0xA000000000000000;
  }

  else
  {
    *a2 = xmmword_255F95FF0;
    v19 = 0x6000000000000000;
  }

  a2[2] = v19;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

BOOL sub_255F73F14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + 32);
    while (1)
    {
      v8 = v6 >= v4;
      if (v6 >= v4)
      {
        return v8;
      }

      v10 = *v7++;
      v9 = v10;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = a1;
        v13 = sub_255F957A0();
        a1 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v19[0] = a1;
          v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = v19 + v6;
        }

        else
        {
          v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v18 = a1;
            v11 = sub_255F957E0();
            a1 = v18;
          }

          v12 = (v11 + v6);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v15 = (__clz(v13 ^ 0xFF) - 24);
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v15 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_15:
      if (v9 != v13)
      {
        return v8;
      }

      v6 += v14;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 0;
LABEL_26:
  if (v6 >= v4)
  {
    return 1;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_255F957A0();
  }

  else if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_255F957E0();
  }

  return 0;
}

double sub_255F74114@<D0>(uint64_t a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  v6 = (*(*a1 + 216))(a1);
  if (!*(v6 + 16))
  {

    goto LABEL_6;
  }

  v7 = *(v6 + 32);

  if ((sub_255F71440(v7) & 1) == 0)
  {
LABEL_6:
    result = a3.n128_f64[0];
    *a2 = a3;
    a2[1].n128_u64[0] = 0x6000000000000000;
    a2[1].n128_u64[1] = 0;
    a2[2].n128_u64[0] = 0;
    a2[2].n128_u64[1] = 0;
    return result;
  }

  (*(*a1 + 280))();
  sub_255F71EF4(v11);
  if (v3)
  {
    MEMORY[0x259C547B0](v3);
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0x1FFFFFFFELL;
    a2[1].n128_u64[1] = 0;
    a2[2].n128_u64[0] = 0;
    a2[2].n128_u64[1] = 0;
  }

  else
  {
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = v12.n128_f64[0];
    a2[2] = v12;
  }

  return result;
}

uint64_t sub_255F7423C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v5 = *(v4 + 32);

  if (v5 != 42)
  {
LABEL_8:
    *a2 = xmmword_255F96020;
    a2[2] = 0x6000000000000000;
    a2[3] = 0;
    a2[4] = 0;
    a2[5] = 0;
    return result;
  }

  v7 = *(*a1 + 256);
  while (1)
  {
    v8 = v7(2);
    if (!*(v8 + 16))
    {
      break;
    }

    v9 = sub_255F73F14(12074, 0xE200000000000000, v8);

    v11 = *(*a1 + 272);
    v12 = v11(v10);
    if (v9)
    {
      v11(v12);
      return sub_255F722AC(a2);
    }
  }

  return sub_255F722AC(a2);
}

double sub_255F743AC@<D0>(uint64_t a1@<X8>)
{
  *&result = 12;
  *a1 = xmmword_255F96030;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double sub_255F743C8@<D0>(uint64_t a1@<X8>)
{
  *&result = 13;
  *a1 = xmmword_255F96040;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_255F743E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  v5 = sub_255F73F14(2960673, 0xE300000000000000, v4);

  if (v5)
  {
    v7 = (*a1 + 272);
    v8 = *v7;
    v9 = (*v7)(result);
    v10 = v8(v9);
    result = v8(v10);
    v11 = 0xA000000000000000;
    v12 = 10;
  }

  else
  {
    v11 = 0x6000000000000000;
    v12 = 60;
  }

  *a2 = v12;
  a2[1] = 0;
  a2[2] = v11;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_255F744D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(*a1 + 216))(a1);
  v4 = sub_255F760F0(v3);

  if (v4)
  {
    result = sub_255F7812C();
    v7 = 0x2000000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0x6000000000000000;
    result = 64;
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

double sub_255F7456C@<D0>(uint64_t a1@<X8>)
{
  *&result = 15;
  *a1 = xmmword_255F96050;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double sub_255F74588@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);

    if (sub_255F75FF0(92, v5))
    {
      (*(*a1 + 280))();
      sub_255F71CEC(v8);
      v6 = v8[1];
      *a2 = v8[0];
      *(a2 + 16) = v6;
      result = *&v9;
      *(a2 + 32) = v9;
      return result;
    }
  }

  else
  {
  }

  *&result = 92;
  *a2 = xmmword_255F96060;
  *(a2 + 16) = 0x6000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double sub_255F7468C@<D0>(uint64_t a1@<X8>)
{
  *&result = 16;
  *a1 = xmmword_255F96070;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_255F746A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (!*(v4 + 16))
  {

    goto LABEL_5;
  }

  v5 = *(v4 + 32);

  if (v5 != 61)
  {
LABEL_5:
    v7 = 0x6000000000000000;
    v8 = 94;
    goto LABEL_6;
  }

  result = (*(*a1 + 272))(result);
  v7 = 0xA000000000000000;
  v8 = 5;
LABEL_6:
  *a2 = v8;
  a2[1] = 0;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

double sub_255F74788@<D0>(uint64_t a1@<X8>)
{
  *&result = 19;
  *a1 = xmmword_255F96080;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double sub_255F747A4@<D0>(uint64_t a1@<X8>)
{
  *&result = 20;
  *a1 = xmmword_255F96090;
  *(a1 + 16) = 0xA000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_255F747C0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(*a1 + 280))(a1);
  result = sub_255F71EF4(v8);
  if (v2)
  {
    result = MEMORY[0x259C547B0](v2);
    v5 = xmmword_255F960A0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    v6 = v8[0];
    v5 = v8[1];
    v7 = v8[2];
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  return result;
}

uint64_t sub_255F74864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_255F95A80();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*a1 + 216);
  v11 = *(v10(v7) + 16);

  if (v11 < 2)
  {
    goto LABEL_11;
  }

  v13 = v10(v12);
  if (!*(v13 + 16))
  {

    goto LABEL_11;
  }

  v14 = *(v13 + 32);

  if (v14 != 43)
  {
LABEL_11:
    (*(*a1 + 280))(v12);
    result = sub_255F71CEC(v20);
    v19 = v20[1];
    *a2 = v20[0];
    *(a2 + 16) = v19;
    *(a2 + 32) = v20[2];
    return result;
  }

  result = v10(v12);
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_255F95A90();
  v16 = sub_255F95A50();
  v17 = (*(v6 + 8))(v9, v5);
  if (v16)
  {
    goto LABEL_8;
  }

  result = v10(v17);
  if (*(result + 16) < 2uLL)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v18 = *(result + 36);

  if (v18 != 63)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = sub_255F789A8();
  if (!v2)
  {
    *a2 = xmmword_255F960B0;
    *(a2 + 16) = 0xA000000000000000;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

double sub_255F74AB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(*a1 + 280))(a1);
  sub_255F71CEC(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_255F74B30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 216);
  v5 = v4();
  if (!*(v5 + 16))
  {

LABEL_5:
    v11 = (v4)(v7);
    if (*(v11 + 16))
    {
      v12 = *(v11 + 32);

      if (v12 == 124)
      {
        result = (*(*a1 + 272))(result);
        v9 = 0xA000000000000000;
        v10 = 8;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = 0x6000000000000000;
    v10 = 124;
    goto LABEL_10;
  }

  v6 = *(v5 + 32);

  if (v6 != 61)
  {
    goto LABEL_5;
  }

  result = (*(*a1 + 272))(v7);
  v9 = 0xA000000000000000;
  v10 = 4;
LABEL_10:
  *a2 = v10;
  a2[1] = 0;
  a2[2] = v9;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_255F74C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 216))(a1);
  if (!*(v4 + 16))
  {

    goto LABEL_5;
  }

  v5 = *(v4 + 32);

  if (v5 != 61)
  {
LABEL_5:
    v7 = 0x6000000000000000;
    v8 = 126;
    goto LABEL_6;
  }

  result = (*(*a1 + 272))(result);
  v7 = 0xA000000000000000;
  v8 = 3;
LABEL_6:
  *a2 = v8;
  a2[1] = 0;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t _s33LinkPresentationStyleSheetParsing5TokenO6NumberO9hashValueSivg_0()
{
  v1 = *v0;
  sub_255F959E0();
  MEMORY[0x259C54570](v1);
  return sub_255F95A00();
}

uint64_t sub_255F74E34(uint64_t a1)
{
  v2 = *v1;
  sub_255F959E0();
  MEMORY[0x259C54570](v2);
  return sub_255F95A00();
}

BOOL _s33LinkPresentationStyleSheetParsing5TokenO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v43[0] = *a1;
  v43[1] = v2;
  v43[2] = v4;
  v43[3] = v5;
  v43[4] = v6;
  v43[5] = v7;
  v43[6] = v9;
  v43[7] = v8;
  v43[8] = v11;
  v43[9] = v10;
  v14 = v4 >> 60;
  v43[10] = v13;
  v43[11] = v12;
  if ((v4 >> 60) <= 4)
  {
    if (v14 <= 1)
    {
      if (v14)
      {
        if (v11 >> 60 != 1)
        {
          goto LABEL_49;
        }
      }

      else if (v11 >> 60)
      {
        goto LABEL_49;
      }
    }

    else if (v14 == 2)
    {
      if (v11 >> 60 != 2)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v14 == 3)
      {
        if (v11 >> 60 == 3)
        {
          if (v3 == v9 && v2 == v8)
          {
            sub_255F72F90(v3, v2, v11, v10, v13, v12);
            sub_255F72F90(v3, v2, v4, v5, v6, v7);
            sub_255F75B48(v43);
          }

          else
          {
            v38 = v12;
            v42 = v10;
            v34 = sub_255F95990();
            sub_255F72F90(v9, v8, v11, v42, v13, v38);
            sub_255F72F90(v3, v2, v4, v5, v6, v7);
            sub_255F75B48(v43);
            if ((v34 & 1) == 0)
            {
              return 0;
            }
          }

          return ((v11 ^ v4) & 1) == 0;
        }

        goto LABEL_49;
      }

      if (v11 >> 60 != 4)
      {
LABEL_49:
        v22 = v12;
        v23 = v10;
LABEL_50:

        v10 = v23;
        v12 = v22;
        goto LABEL_51;
      }
    }

LABEL_37:
    if (v3 == v9 && v2 == v8)
    {
      v17 = v3;
      v18 = v2;
      v19 = v11;
      v20 = v13;
      goto LABEL_40;
    }

    v40 = v10;
    goto LABEL_43;
  }

  if (v14 > 7)
  {
    if (v14 == 8)
    {
      if (v11 >> 60 == 8)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    if (v14 != 9)
    {
      v28 = v5 | v2;
      if (v4 != 0xA000000000000000 || v28 | v3 | v6 | v7)
      {
        v30 = v28 | v6;
        if (v7 || v4 != 0xA000000000000000 || v3 != 1 || v30)
        {
          if (v7 || v4 != 0xA000000000000000 || v3 != 2 || v30)
          {
            if (v7 || v4 != 0xA000000000000000 || v3 != 3 || v30)
            {
              if (v7 || v4 != 0xA000000000000000 || v3 != 4 || v30)
              {
                if (v7 || v4 != 0xA000000000000000 || v3 != 5 || v30)
                {
                  if (v7 || v4 != 0xA000000000000000 || v3 != 6 || v30)
                  {
                    if (v7 || v4 != 0xA000000000000000 || v3 != 7 || v30)
                    {
                      if (v7 || v4 != 0xA000000000000000 || v3 != 8 || v30)
                      {
                        if (v7 || v4 != 0xA000000000000000 || v3 != 9 || v30)
                        {
                          if (v7 || v4 != 0xA000000000000000 || v3 != 10 || v30)
                          {
                            if (v7 || v4 != 0xA000000000000000 || v3 != 11 || v30)
                            {
                              if (v7 || v4 != 0xA000000000000000 || v3 != 12 || v30)
                              {
                                if (v7 || v4 != 0xA000000000000000 || v3 != 13 || v30)
                                {
                                  if (v7 || v4 != 0xA000000000000000 || v3 != 14 || v30)
                                  {
                                    if (v7 || v4 != 0xA000000000000000 || v3 != 15 || v30)
                                    {
                                      if (v7 || v4 != 0xA000000000000000 || v3 != 16 || v30)
                                      {
                                        if (v7 || v4 != 0xA000000000000000 || v3 != 17 || v30)
                                        {
                                          if (v7 || v4 != 0xA000000000000000 || v3 != 18 || v30)
                                          {
                                            if (v7 || v4 != 0xA000000000000000 || v3 != 19 || v30)
                                            {
                                              if (v7 || v4 != 0xA000000000000000 || v3 != 20 || v30)
                                              {
                                                if (v11 >> 60 != 10 || v9 != 21)
                                                {
                                                  goto LABEL_51;
                                                }
                                              }

                                              else if (v11 >> 60 != 10 || v9 != 20)
                                              {
                                                goto LABEL_51;
                                              }
                                            }

                                            else if (v11 >> 60 != 10 || v9 != 19)
                                            {
                                              goto LABEL_51;
                                            }
                                          }

                                          else if (v11 >> 60 != 10 || v9 != 18)
                                          {
                                            goto LABEL_51;
                                          }
                                        }

                                        else if (v11 >> 60 != 10 || v9 != 17)
                                        {
                                          goto LABEL_51;
                                        }
                                      }

                                      else if (v11 >> 60 != 10 || v9 != 16)
                                      {
                                        goto LABEL_51;
                                      }
                                    }

                                    else if (v11 >> 60 != 10 || v9 != 15)
                                    {
                                      goto LABEL_51;
                                    }
                                  }

                                  else if (v11 >> 60 != 10 || v9 != 14)
                                  {
                                    goto LABEL_51;
                                  }
                                }

                                else if (v11 >> 60 != 10 || v9 != 13)
                                {
                                  goto LABEL_51;
                                }
                              }

                              else if (v11 >> 60 != 10 || v9 != 12)
                              {
                                goto LABEL_51;
                              }
                            }

                            else if (v11 >> 60 != 10 || v9 != 11)
                            {
                              goto LABEL_51;
                            }
                          }

                          else if (v11 >> 60 != 10 || v9 != 10)
                          {
                            goto LABEL_51;
                          }
                        }

                        else if (v11 >> 60 != 10 || v9 != 9)
                        {
                          goto LABEL_51;
                        }
                      }

                      else if (v11 >> 60 != 10 || v9 != 8)
                      {
                        goto LABEL_51;
                      }
                    }

                    else if (v11 >> 60 != 10 || v9 != 7)
                    {
                      goto LABEL_51;
                    }
                  }

                  else if (v11 >> 60 != 10 || v9 != 6)
                  {
                    goto LABEL_51;
                  }
                }

                else if (v11 >> 60 != 10 || v9 != 5)
                {
                  goto LABEL_51;
                }
              }

              else if (v11 >> 60 != 10 || v9 != 4)
              {
                goto LABEL_51;
              }
            }

            else if (v11 >> 60 != 10 || v9 != 3)
            {
              goto LABEL_51;
            }
          }

          else if (v11 >> 60 != 10 || v9 != 2)
          {
            goto LABEL_51;
          }
        }

        else if (v11 >> 60 != 10 || v9 != 1)
        {
          goto LABEL_51;
        }

        if (v8 || v11 != 0xA000000000000000)
        {
LABEL_51:
          v24 = v9;
          v25 = v8;
          v26 = v11;
          v27 = v13;
LABEL_52:
          sub_255F72F90(v24, v25, v26, v10, v27, v12);
          sub_255F75B48(v43);
          return 0;
        }

        v29 = v13 | v10;
      }

      else
      {
        if (v11 >> 60 != 10 || v11 != 0xA000000000000000)
        {
          goto LABEL_51;
        }

        v29 = v13 | v10 | v9 | v8;
      }

      if (v29 | v12)
      {
        goto LABEL_51;
      }

LABEL_41:
      sub_255F75B48(v43);
      return 1;
    }

    if (v11 >> 60 != 9)
    {
      v22 = v12;
      v23 = v10;

      goto LABEL_50;
    }

    if ((v3 != v9 || v2 != v8) && (v35 = v12, v39 = v10, v16 = sub_255F95990(), v12 = v35, v10 = v39, (v16 & 1) == 0) || ((v11 ^ v4) & 1) != 0 || *&v5 != *&v10)
    {
      sub_255F72F90(v9, v8, v11, v10, v13, v12);
      v24 = v3;
      v25 = v2;
      v26 = v4;
      v10 = v5;
      v27 = v6;
      v12 = v7;
      goto LABEL_52;
    }

    if (v6 == v13 && v7 == v12)
    {
      v17 = v9;
      v18 = v8;
      v19 = v11;
      v20 = v6;
      v12 = v7;
LABEL_40:
      sub_255F72F90(v17, v18, v19, v10, v20, v12);
      sub_255F72F90(v3, v2, v4, v5, v6, v7);
      goto LABEL_41;
    }

    v40 = v10;
LABEL_43:
    v36 = v12;
    v32 = sub_255F95990();
    sub_255F72F90(v9, v8, v11, v40, v13, v36);
    sub_255F72F90(v3, v2, v4, v5, v6, v7);
    sub_255F75B48(v43);
    return v32 & 1;
  }

  if (v14 == 5)
  {
    if (v11 >> 60 != 5)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v14 == 6)
  {
    if (v11 >> 60 == 6)
    {
      sub_255F75B48(v43);
      return v3 == v9;
    }

    goto LABEL_51;
  }

  if (v11 >> 60 != 7)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (v3 == v9 && v2 == v8)
  {
    v21 = *&v10;
    sub_255F72F90(v3, v2, v11, v10, v13, v12);
    sub_255F72F90(v3, v2, v4, v5, v6, v7);
    sub_255F75B48(v43);
    if ((v11 ^ v4))
    {
      return 0;
    }

    return *&v5 == v21;
  }

  v37 = v12;
  v41 = v10;
  v33 = sub_255F95990();
  v31 = v8;
  v21 = *&v41;
  sub_255F72F90(v9, v31, v11, v41, v13, v37);
  sub_255F72F90(v3, v2, v4, v5, v6, v7);
  sub_255F75B48(v43);
  result = 0;
  if ((v33 & 1) != 0 && ((v11 ^ v4) & 1) == 0)
  {
    return *&v5 == v21;
  }

  return result;
}

unint64_t sub_255F757DC()
{
  result = qword_27F81B498;
  if (!qword_27F81B498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Token.Number, &type metadata for Token.Number, v0, v1);
    atomic_store(result, &qword_27F81B498);
  }

  return result;
}

unint64_t sub_255F75834()
{
  result = qword_27F81B4A0;
  if (!qword_27F81B4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Token.HashType, &type metadata for Token.HashType, v0, v1);
    atomic_store(result, &qword_27F81B4A0);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_33LinkPresentationStyleSheetParsing5TokenO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 61 <= 4)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_255F758BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_255F7590C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

uint64_t sub_255F75974(uint64_t result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 10);
    *(result + 8) = xmmword_255F96560;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t _s9BaseColorV28ColorComponentRepresentationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9BaseColorV28ColorComponentRepresentationOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255F75B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4A8, &qword_255F96870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Tokenizer.tokens.getter()
{
  v2 = *(*v0 + 120);
  result = v2();
  if (!result)
  {
    result = sub_255F75C58();
    if (!v1)
    {
      result = (v2)(result);
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_255F75C58()
{
  sub_255F722AC(&v15);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
  }

  while (1)
  {
    v4 = v17;
    if (v17 >> 1 == 0xFFFFFFFF)
    {
      break;
    }

    v5 = v15;
    v6 = v16;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    sub_255F72F90(v15, v16, v17, v18, v19, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_255F75E88(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = v2;
    v11 = *(v2 + 2);
    v12 = v10;
    v13 = *(v10 + 3);
    if (v11 >= v13 >> 1)
    {
      v12 = sub_255F75E88((v13 > 1), v11 + 1, 1, v12);
    }

    *(v12 + 2) = v11 + 1;
    v14 = &v12[48 * v11];
    v2 = v12;
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    *(v14 + 6) = v4;
    *(v14 + 7) = v7;
    *(v14 + 8) = v8;
    *(v14 + 9) = v9;
    if (v4 >> 60 == 10 && v5 == 21 && !v6 && v4 == 0xA000000000000000 && !(v8 | v7 | v9))
    {
      break;
    }

    sub_255F75FA8(v5, v6, v4, v7, v8, v9);
    sub_255F722AC(&v15);
  }

  return (*(*v0 + 128))(v2);
}

uint64_t sub_255F75E08()
{
  v2 = *(**v0 + 120);
  result = v2();
  if (!result)
  {
    result = sub_255F75C58();
    if (!v1)
    {
      result = (v2)(result);
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

char *sub_255F75E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B488, &unk_255F95F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_255F75FA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    sub_255F726E0(a1, a2, a3, a4, a5, a6);
  }
}

BOOL sub_255F76070(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a1 != 45)
  {
    v6 = a1;
    if ((sub_255F71660(a1) & 1) == 0)
    {
      a3 = v3;
      if (v6 != 92)
      {
        return 0;
      }

      return !sub_255F7186C(a3);
    }

    return 1;
  }

  if (sub_255F71660(a2))
  {
    return 1;
  }

  if (v3 == 92)
  {
    return !sub_255F7186C(a3);
  }

  return 0;
}

uint64_t sub_255F7614C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_255F7622C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

BOOL sub_255F76274()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    return 1;
  }

  if (*(v0 + 56))
  {
    return 0;
  }

  return 4 * v2 == *(v0 + 48) >> 14;
}

uint64_t Tokenizer.__allocating_init(source:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 64) = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  return result;
}

uint64_t Tokenizer.init(source:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = MEMORY[0x277D84F90];
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  return v2;
}

unint64_t sub_255F7634C(unint64_t result)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v2 = result;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (*(v1 + 56))
  {
    v5 = 15;
  }

  else
  {
    v6 = *(v1 + 48);
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v6 >> 14 == 4 * v7)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = sub_255F76508(v6, *(v1 + 40) ^ 1u, v3, v4);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
  }

  v8 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v8 = v3;
  }

  v9 = 7;
  if (((v4 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = sub_255F766F8(v5, v9 | (v8 << 16), v3, v4);
  v11 = v10;
  if (v10 >= v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10;
  }

  result = sub_255F76508(v5, v12, *(v1 + 24), *(v1 + 32));
  if (v11 >= 1)
  {
    if (result >> 14 >= v5 >> 14)
    {

      v13 = sub_255F954B0();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = sub_255F76FD0(v13, v15, v17, v19);
      if (v20)
      {
        v21 = v20;
        v22 = sub_255F7756C(v20, 0);
        v23 = sub_255F771E0(v24, (v22 + 4), v21, v13, v15, v17, v19);

        if (v23 == v21)
        {

          return v22;
        }

        goto LABEL_25;
      }

      return MEMORY[0x277D84F90];
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_255F76508(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_255F76C18(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = sub_255F95490();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = sub_255F957E0();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_255F95480();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_255F957E0();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

unint64_t sub_255F766F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_255F76C18(a1, a3, a4);
  v8 = sub_255F76C18(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_37;
        }

        if ((a4 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_255F95490();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_32;
        }
      }

      else
      {
        v21 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_255F957E0();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_32;
        }
      }

      v25 = -1;
LABEL_32:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_255F95480();
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v15 = sub_255F957E0();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_255F76924(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v2 = (*(*v1 + 256))();
    swift_beginAccess();
    v1[8] = v2;
  }

  return result;
}

unint64_t sub_255F769A4()
{
  if (*(v0 + 40) == 1)
  {
    if ((*(v0 + 56) & 1) == 0)
    {
      v1 = *(v0 + 48);
      goto LABEL_9;
    }
  }

  else if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 32);
    v3 = sub_255F76EC4(*(v0 + 48), *(v0 + 24), v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      v1 = sub_255F95480();
    }

    else
    {
      v4 = v3 >> 16;

      v5 = sub_255F95790();

      v1 = ((v5 + v4) << 16) | 5;
    }

    goto LABEL_8;
  }

  v1 = 15;
LABEL_8:
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
LABEL_9:
  v6 = 0;
  *(v0 + 40) = 0;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 4 * v9;
  v11 = v1 >> 14;
  if (v1 >> 14 < 4 * v9)
  {
    v12 = sub_255F76EC4(v1, v8, v7);
    if ((v7 & 0x1000000000000000) != 0)
    {
      v6 = sub_255F957A0();
    }

    else
    {
      v13 = v12 >> 16;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v24[0] = v8;
        v24[1] = v7 & 0xFFFFFFFFFFFFFFLL;
        v15 = v24 + v13;
      }

      else
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v14 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v23 = v12 >> 16;
          v14 = sub_255F957E0();
          v13 = v23;
        }

        v15 = (v14 + v13);
      }

      v6 = *v15;
      if (*v15 < 0)
      {
        v16 = (__clz(v6 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v17 = v15[1];
            v18 = v15[2];
            v19 = ((v6 & 0xF) << 12) | ((v17 & 0x3F) << 6);
          }

          else
          {
            v20 = v15[1];
            v21 = v15[2];
            v18 = v15[3];
            v19 = ((v6 & 0xF) << 18) | ((v20 & 0x3F) << 12) | ((v21 & 0x3F) << 6);
          }

          v6 = v19 & 0xFFFFFFC0 | v18 & 0x3F;
        }

        else if (v16 != 1)
        {
          v6 = v15[1] & 0x3F | ((v6 & 0x1F) << 6);
        }
      }
    }
  }

  LOBYTE(v24[0]) = v11 >= v10;
  return v6 | ((v11 >= v10) << 32);
}

void *Tokenizer.deinit()
{

  return v0;
}

uint64_t Tokenizer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_255F76C18(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_255F76CB0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_255F76D24(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_255F76CB0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_255F76E48(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255F76D24(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_255F957E0();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_255F76E48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255F95590();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C540E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_255F76EC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_255F76F5C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_255F76D24(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_255F76F5C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_255F76E48(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255F76FD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_255F76C18(a1, a3, a4);
  v8 = sub_255F76C18(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_255F95480();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_255F957E0();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_255F95490();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_255F957E0();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_255F771E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v11 = 0;
    result = a4;
LABEL_69:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = result;
    return v11;
  }

  if (!a3)
  {
    result = a4;
    v11 = 0;
    goto LABEL_69;
  }

  if (a3 < 0)
  {
    goto LABEL_74;
  }

  v50 = result;
  v51 = a5;
  v11 = 0;
  v12 = a5 >> 14;
  v13 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a4 >> 14;
  v54 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a7 & 0xFFFFFFFFFFFFFFLL;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a7) & 0xF;
  }

  else
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  result = a4;
  v49 = a4;
  v17 = a3 - 1;
  v52 = v16;
  v53 = a4 >> 14;
  do
  {
    v18 = result >> 14;
    if (result >> 14 == v12)
    {
      goto LABEL_68;
    }

    v19 = result & 0xC;
    v20 = (result & 1) == 0 || v19 == v14;
    v21 = v20;
    if (v20)
    {
      v22 = result;
      if (v19 == v14)
      {
        v44 = result;
        v45 = sub_255F76E48(result, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v45;
        result = v44;
        v18 = v22 >> 14;
        if (v22 >> 14 < v53)
        {
          goto LABEL_70;
        }
      }

      else if (v18 < v15)
      {
        goto LABEL_70;
      }

      if (v18 >= v12)
      {
        goto LABEL_70;
      }

      if ((v22 & 1) == 0)
      {
        v23 = result;
        v24 = sub_255F76D24(v22, a6, a7);
        v16 = v52;
        v15 = v53;
        v22 = v24;
        result = v23;
      }
    }

    else
    {
      if (v18 < v15)
      {
        goto LABEL_71;
      }

      v22 = result;
      if (v18 >= v12)
      {
        goto LABEL_71;
      }
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v47 = result;
      v38 = sub_255F957A0();
      v16 = v52;
      v15 = v53;
      v29 = v38;
      result = v47;
      if ((v21 & 1) == 0)
      {
LABEL_46:
        if (v16 <= result >> 16)
        {
          goto LABEL_73;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v25 = v22 >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v26 = &v56;
      }

      else
      {
        v26 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v46 = result;
          v27 = sub_255F957E0();
          v16 = v52;
          v15 = v53;
          v26 = v27;
          result = v46;
        }
      }

      v28 = v26 + v25;
      v29 = *v28;
      if (*v28 < 0)
      {
        v30 = (__clz(v29 ^ 0xFF) - 24);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = v28[1];
            v32 = v28[2];
            v33 = ((v29 & 0xF) << 12) | ((v31 & 0x3F) << 6);
          }

          else
          {
            v34 = v28[1];
            v35 = v28[2];
            v32 = v28[3];
            v33 = ((v29 & 0xF) << 18) | ((v34 & 0x3F) << 12) | ((v35 & 0x3F) << 6);
          }

          v29 = v33 & 0xFFFFFFC0 | v32 & 0x3F;
        }

        else if (v30 != 1)
        {
          v29 = v28[1] & 0x3F | ((v29 & 0x1F) << 6);
          if ((v21 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    if (v19 == v14)
    {
      result = sub_255F76E48(result, a6, a7);
      v16 = v52;
      v15 = v53;
      if (v52 <= result >> 16)
      {
        goto LABEL_72;
      }
    }

    else if (v16 <= result >> 16)
    {
      goto LABEL_72;
    }

    if ((result & 1) == 0)
    {
      v36 = result;
      v37 = sub_255F76D24(result, a6, a7);
      v16 = v52;
      v15 = v53;
      result = v36 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
    }

LABEL_47:
    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255F95480();
      v16 = v52;
      v15 = v53;
    }

    else
    {
      v39 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v56 = a6;
        v57 = v55;
        v41 = *(&v56 + v39);
      }

      else
      {
        v40 = v54;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v40 = sub_255F957E0();
          v16 = v52;
          v15 = v53;
        }

        v41 = *(v40 + v39);
      }

      v42 = v41;
      v43 = __clz(v41 ^ 0xFF) - 24;
      if (v42 >= 0)
      {
        LOBYTE(v43) = 1;
      }

      result = ((v39 + v43) << 16) | 5;
    }

    *(a2 + 4 * v11) = v29;
    if (v17 == v11)
    {
      v11 = a3;
LABEL_68:
      v9 = v50;
      a5 = v51;
      a4 = v49;
      goto LABEL_69;
    }

    ++v11;
  }

  while (!__OFADD__(v11, 1));
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void *sub_255F7756C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4B0, &unk_255F96900);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_255F77654()
{
  v1 = v0;
  v2 = sub_255F95A80();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 240);
  v8 = (v7 + 8);
  while (1)
  {
    result = v6(v3);
    if (result)
    {
      break;
    }

    result = (*(*v1 + 272))();
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    sub_255F95A90();
    v10 = sub_255F95A60();
    v3 = (*v8)(v5, v2);
    if ((v10 & 1) == 0)
    {
      return (*(*v1 + 280))(v3);
    }
  }

  return result;
}

uint64_t sub_255F777CC()
{
  v1 = v0;
  v2 = sub_255F95A40();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v77 - v7;
  v8 = sub_255F95A80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v82 = *(*v0 + 272);
  v83 = v13 + 272;
  result = v82(v10);
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_131;
  }

  v15 = result;
  sub_255F95A90();
  v16 = sub_255F95A50();
  v17 = v12;
  v18 = v12;
  v19 = *(v9 + 8);
  v84 = v8;
  v20 = v19(v18, v8);
  v21 = *v1;
  if ((v16 & 1) == 0)
  {
    if (((*(v21 + 240))(v20) & 1) == 0)
    {
      return v15;
    }

    return *sub_255F71128();
  }

  v79 = v6;
  v80 = v3;
  v78 = v2;
  v22 = *(v21 + 256);
  v23 = (v22)(5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4B0, &unk_255F96900);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_255F96910;
  *(v24 + 32) = v15;
  v86 = v24;

  result = sub_255F78A24(v25);
  v26 = *(v23 + 16);
  v27 = v17;
  v28 = v86;
  if (v26)
  {
    if (*(v86 + 16) < 2uLL)
    {
      goto LABEL_125;
    }

    sub_255F95A90();
    v29 = sub_255F95A50();
    v30 = v19(v27, v84);
    if ((v29 & 1) == 0)
    {
      goto LABEL_19;
    }

    result = v82(v30);
    if (v26 == 1)
    {
      goto LABEL_19;
    }

    if (*(v28 + 16) < 3uLL)
    {
      goto LABEL_125;
    }

    sub_255F95A90();
    v31 = sub_255F95A50();
    v32 = v19(v27, v84);
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

    result = v82(v32);
    if (v26 == 2)
    {
      goto LABEL_19;
    }

    if (*(v28 + 16) < 4uLL)
    {
      goto LABEL_125;
    }

    sub_255F95A90();
    v33 = sub_255F95A50();
    v34 = v19(v27, v84);
    if ((v33 & 1) == 0)
    {
      goto LABEL_19;
    }

    result = v82(v34);
    if (v26 == 3)
    {
      goto LABEL_19;
    }

    if (*(v28 + 16) < 5uLL)
    {
      goto LABEL_125;
    }

    sub_255F95A90();
    v35 = sub_255F95A50();
    v36 = v19(v27, v84);
    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }

    result = v82(v36);
    if (v26 == 4)
    {
      goto LABEL_19;
    }

    if (*(v28 + 16) < 6uLL)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    sub_255F95A90();
    v37 = sub_255F95A50();
    v38 = v19(v27, v84);
    if (v37)
    {
      v82(v38);
    }
  }

LABEL_19:

  if (*((v22)(1) + 16))
  {

    sub_255F95A90();
    v39 = sub_255F95A60();
    v40 = v19(v27, v84);
    v23 = v79;
    v22 = v80;
    if (v39)
    {
      v82(v40);
    }
  }

  else
  {

    v23 = v79;
    v22 = v80;
  }

  v86 = 0;
  v87 = 0xE000000000000000;
  v85 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4C0, &qword_255F96920);
  sub_255F797C8();
  sub_255F954A0();
  result = v87;
  v41 = HIBYTE(v87) & 0xF;
  v42 = v86 & 0xFFFFFFFFFFFFLL;
  if ((v87 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v87) & 0xF;
  }

  else
  {
    v43 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_107;
  }

  if ((v87 & 0x1000000000000000) != 0)
  {
    v47 = sub_255F78C14(v86, v87, 16);

    if ((v47 & 0x100000000) != 0)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  if ((v87 & 0x2000000000000000) == 0)
  {
    if ((v86 & 0x1000000000000000) != 0)
    {
      v44 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_33:
      v45 = *v44;
      if (v45 == 43)
      {
        if (v42 >= 1)
        {
          v56 = v42 - 1;
          if (v42 != 1)
          {
            LODWORD(v47) = 0;
            if (!v44)
            {
              goto LABEL_106;
            }

            v57 = v44 + 1;
            while (1)
            {
              v58 = *v57;
              v59 = v58 - 48;
              if ((v58 - 48) >= 0xA)
              {
                if ((v58 - 65) < 6)
                {
                  v59 = v58 - 55;
                }

                else
                {
                  if ((v58 - 97) > 5)
                  {
                    goto LABEL_105;
                  }

                  v59 = v58 - 87;
                }
              }

              if (v47 >> 28)
              {
                break;
              }

              LODWORD(v47) = 16 * v47 + v59;
              ++v57;
              if (!--v56)
              {
                goto LABEL_104;
              }
            }
          }

          goto LABEL_105;
        }

        goto LABEL_129;
      }

      if (v45 == 45)
      {
        if (v42 >= 1)
        {
          v46 = v42 - 1;
          if (v42 != 1)
          {
            LODWORD(v47) = 0;
            if (!v44)
            {
              goto LABEL_106;
            }

            v48 = v44 + 1;
            while (1)
            {
              v49 = *v48;
              v50 = v49 - 48;
              if ((v49 - 48) >= 0xA)
              {
                if ((v49 - 65) < 6)
                {
                  v50 = v49 - 55;
                }

                else
                {
                  if ((v49 - 97) > 5)
                  {
                    goto LABEL_105;
                  }

                  v50 = v49 - 87;
                }
              }

              if (v47 >> 28)
              {
                break;
              }

              v51 = 16 * v47;
              LODWORD(v47) = 16 * v47 - v50;
              if (v51 < v50)
              {
                break;
              }

              ++v48;
              if (!--v46)
              {
                goto LABEL_104;
              }
            }
          }

          goto LABEL_105;
        }

        __break(1u);
        goto LABEL_128;
      }

      if (v42)
      {
        LODWORD(v47) = 0;
        if (!v44)
        {
          goto LABEL_106;
        }

        while (1)
        {
          v63 = *v44;
          v64 = v63 - 48;
          if ((v63 - 48) >= 0xA)
          {
            if ((v63 - 65) < 6)
            {
              v64 = v63 - 55;
            }

            else
            {
              if ((v63 - 97) > 5)
              {
                goto LABEL_105;
              }

              v64 = v63 - 87;
            }
          }

          if (v47 >> 28)
          {
            break;
          }

          LODWORD(v47) = 16 * v47 + v64;
          ++v44;
          if (!--v42)
          {
            goto LABEL_104;
          }
        }
      }

      goto LABEL_105;
    }

LABEL_126:
    v76 = result;
    v44 = sub_255F957E0();
    result = v76;
    goto LABEL_33;
  }

  v87 &= 0xFFFFFFFFFFFFFFuLL;
  if (v86 != 43)
  {
    if (v86 == 45)
    {
      if (!v41)
      {
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v44 = (v41 - 1);
      if (v41 != 1)
      {
        LODWORD(v47) = 0;
        v52 = &v86 + 1;
        while (1)
        {
          v53 = *v52;
          v54 = v53 - 48;
          if ((v53 - 48) >= 0xA)
          {
            if ((v53 - 65) < 6)
            {
              v54 = v53 - 55;
            }

            else
            {
              if ((v53 - 97) > 5)
              {
                break;
              }

              v54 = v53 - 87;
            }
          }

          if (v47 >> 28)
          {
            break;
          }

          v55 = 16 * v47;
          LODWORD(v47) = 16 * v47 - v54;
          if (v55 < v54)
          {
            break;
          }

          ++v52;
          if (!--v44)
          {
            goto LABEL_106;
          }
        }
      }
    }

    else if (v41)
    {
      LODWORD(v47) = 0;
      v65 = &v86;
      while (1)
      {
        v66 = *v65;
        v67 = v66 - 48;
        if ((v66 - 48) >= 0xA)
        {
          if ((v66 - 65) < 6)
          {
            v67 = v66 - 55;
          }

          else
          {
            if ((v66 - 97) > 5)
            {
              break;
            }

            v67 = v66 - 87;
          }
        }

        if (v47 >> 28)
        {
          break;
        }

        LODWORD(v47) = 16 * v47 + v67;
        v65 = (v65 + 1);
        if (!--v41)
        {
LABEL_104:
          LOBYTE(v44) = 0;
          goto LABEL_106;
        }
      }
    }

LABEL_105:
    LODWORD(v47) = 0;
    LOBYTE(v44) = 1;
LABEL_106:
    LOBYTE(v85) = v44;
    v68 = v44;

    if (v68)
    {
LABEL_107:
      v15 = 0;
      v69 = 1;
      goto LABEL_119;
    }

LABEL_110:
    v70 = v47 >> 16 > 0x10 || v47 >> 11 == 27;
    v69 = v70;
    if (v70)
    {
      v15 = 0;
    }

    else
    {
      v15 = v47;
    }

LABEL_119:

    if ((v69 & 1) == 0 && *sub_255F71114() != v15)
    {
      sub_255F95A90();
      v71 = v19;
      v72 = v81;
      sub_255F95A70();
      v71(v27, v84);
      v73 = v78;
      (*(v22 + 104))(v23, *MEMORY[0x277D84E30], v78);
      v74 = sub_255F95A30();
      v75 = *(v22 + 8);
      v75(v23, v73);
      v75(v72, v73);
      if ((v74 & 1) == 0 && *sub_255F711A0() >= v15)
      {
        return v15;
      }
    }

    return *sub_255F71128();
  }

  if (v41)
  {
    v44 = (v41 - 1);
    if (v41 != 1)
    {
      LODWORD(v47) = 0;
      v60 = &v86 + 1;
      while (1)
      {
        v61 = *v60;
        v62 = v61 - 48;
        if ((v61 - 48) >= 0xA)
        {
          if ((v61 - 65) < 6)
          {
            v62 = v61 - 55;
          }

          else
          {
            if ((v61 - 97) > 5)
            {
              goto LABEL_105;
            }

            v62 = v61 - 87;
          }
        }

        if (v47 >> 28)
        {
          break;
        }

        LODWORD(v47) = 16 * v47 + v62;
        ++v60;
        if (!--v44)
        {
          goto LABEL_106;
        }
      }
    }

    goto LABEL_105;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_255F7812C()
{
  v1 = v0;
  v2 = (*v0 + 272);
  v3 = *v2;
  v4 = (*v2)();
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  while (1)
  {
    v8 = sub_255F7691C();
    (*(*v1 + 264))(v8);
    if (sub_255F71660(v5))
    {
      goto LABEL_3;
    }

    v9 = (*(*v1 + 216))();
    if (!*(v9 + 16))
    {
      break;
    }

    v10 = *(v9 + 32);

    v11 = sub_255F75FF0(v5, v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_255F777CC();
LABEL_3:
    v6 = sub_255F95AA0();
    MEMORY[0x259C540A0](v6);

    v5 = (v3)(v7);
    if ((v5 & 0x100000000) != 0)
    {
      return 0;
    }
  }

LABEL_9:
  (*(*v1 + 280))(v11);
  return 0;
}

uint64_t sub_255F782AC(char *a1)
{
  v2 = v1;
  v4 = sub_255F7691C();
  v5 = (*(*v1 + 264))(v4);
  v6 = *(*v1 + 216);
  v7 = v6(v5);
  if (*(v7 + 16))
  {
    v8 = *(v7 + 32);

    if (v8 == 43)
    {
LABEL_7:
      if (((*(*v2 + 272))(v9) & 0x100000000) == 0)
      {
        v12 = sub_255F95AA0();
        MEMORY[0x259C540A0](v12);
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = v6(v9);
  if (!*(v10 + 16))
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = *(v10 + 32);

  if (v11 == 45)
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = sub_255F76344();
  v14 = (*v2 + 256);
  v15 = *v14;
  v16 = (*v14)(v13);
  v17 = *(v16 + 16);

  if (v17)
  {
    while (1)
    {
      v32 = *(v16 + 32);

      if ((sub_255F71440(v32) & 1) == 0)
      {
        break;
      }

      if (((*(*v2 + 272))() & 0x100000000) == 0)
      {
        v33 = sub_255F95AA0();
        MEMORY[0x259C540A0](v33);
      }

      v30 = sub_255F76344();
      v31 = v15(v30);

      v16 = v31;
      if (!*(v31 + 16))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
  }

  v18 = v15(2);

  v19 = *(v18 + 16);

  if (v19 < 2)
  {
    goto LABEL_27;
  }

  v21 = *(v18 + 16);
  if (!v21 || *(v18 + 32) != 46)
  {
    goto LABEL_27;
  }

  if (v21 == 1)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  if (sub_255F71440(*(v18 + 36)))
  {
    v54 = a1;
    v22 = (*v2 + 272);
    v23 = *v22;
    v24 = (*v22)();
    if ((v24 & 0x100000000) == 0)
    {
      v25 = sub_255F95AA0();
      MEMORY[0x259C540A0](v25);
    }

    if (((v23)(v24) & 0x100000000) == 0)
    {
      v26 = sub_255F95AA0();
      MEMORY[0x259C540A0](v26);
    }

    v27 = sub_255F76344();
    v28 = v15(v27);

    if (*(v28 + 16))
    {
      while (1)
      {
        v42 = *(v28 + 32);

        if ((sub_255F71440(v42) & 1) == 0)
        {
          break;
        }

        if ((v23() & 0x100000000) == 0)
        {
          v43 = sub_255F95AA0();
          MEMORY[0x259C540A0](v43);
        }

        v40 = sub_255F76344();
        v41 = v15(v40);

        v28 = v41;
        if (!*(v41 + 16))
        {
          goto LABEL_22;
        }
      }

      v29 = 1;
    }

    else
    {
LABEL_22:

      v29 = 1;
    }

    a1 = v54;
  }

  else
  {
LABEL_27:
    v29 = 0;
  }

  v34 = v15(3);

  v35 = *(v34 + 16);

  if (!v35)
  {
    goto LABEL_53;
  }

  v36 = *(v34 + 16);
  if (!v36)
  {
    __break(1u);
    goto LABEL_61;
  }

  if ((*(v34 + 32) | 0x20) == 0x65)
  {
    if (v36 >= 3 && *(v34 + 36) == 43 && (sub_255F71440(*(v34 + 40)) & 1) != 0)
    {
      v55 = a1;
      v37 = (*v2 + 272);
      v38 = *v37;
      if (((*v37)() & 0x100000000) == 0)
      {
        v39 = sub_255F95AA0();
        MEMORY[0x259C540A0](v39);
      }

LABEL_43:
      v44 = v38();
      if ((v44 & 0x100000000) == 0)
      {
        v45 = sub_255F95AA0();
        MEMORY[0x259C540A0](v45);
      }

      a1 = v55;
      if (((v38)(v44) & 0x100000000) == 0)
      {
        v46 = sub_255F95AA0();
        MEMORY[0x259C540A0](v46);
      }

      v47 = sub_255F76344();
      v48 = v15(v47);

      if (*(v48 + 16))
      {
        while (1)
        {
          v51 = *(v48 + 32);

          if ((sub_255F71440(v51) & 1) == 0)
          {
            break;
          }

          if (((*(*v2 + 272))() & 0x100000000) == 0)
          {
            v52 = sub_255F95AA0();
            MEMORY[0x259C540A0](v52);
          }

          v49 = sub_255F76344();
          v50 = v15(v49);

          v48 = v50;
          if (!*(v50 + 16))
          {
            goto LABEL_48;
          }
        }

        v29 = 1;
      }

      else
      {
LABEL_48:

        v29 = 1;
      }
    }
  }

  else if (v36 != 1 && (sub_255F71440(*(v34 + 36)) & 1) != 0)
  {
    v55 = a1;
    v38 = *(*v2 + 272);
    goto LABEL_43;
  }

LABEL_53:
  v56 = 0;
  if (sub_255F795FC(0, 0xE000000000000000, &v56))
  {

    *a1 = v29;
  }

  else
  {
    sub_255F796F4();
    swift_allocError();
    *v53 = 0;
    *(v53 + 8) = 0xE000000000000000;
    *(v53 + 16) = 0xD000000000000021;
    *(v53 + 24) = 0x8000000255F9CB20;
    *(v53 + 32) = 1;
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_255F789A8()
{
  sub_255F796F4();
  swift_allocError();
  *v0 = sub_255F78A10;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  return swift_willThrow();
}

uint64_t sub_255F78A24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_255F78B10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_255F78B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4B0, &unk_255F96900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unsigned __int8 *sub_255F78C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_255F955B0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_255F79190(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255F957E0();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
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

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_255F79190(uint64_t a1, unint64_t a2)
{
  v2 = sub_255F955C0();
  v6 = sub_255F79210(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_255F79210(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_255F956D0();
    if (!v9 || (v10 = v9, v11 = sub_255F79368(v9, 0), v12 = sub_255F793DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_255F954C0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_255F954C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_255F957E0();
LABEL_4:

  return sub_255F954C0();
}

void *sub_255F79368(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4D0, "b4");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_255F793DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_255F76E48(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255F95580();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_255F957E0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_255F76E48(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_255F95550();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

BOOL sub_255F795FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_255F95770();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_255F796F4()
{
  result = qword_27F81B4B8;
  if (!qword_27F81B4B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheetError, &type metadata for StyleSheetError, v0, v1);
    atomic_store(result, &qword_27F81B4B8);
  }

  return result;
}

_BYTE *sub_255F79748@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_255F797C8()
{
  result = qword_27F81B4C8;
  if (!qword_27F81B4C8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B4C0, &qword_255F96920);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27F81B4C8);
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

uint64_t sub_255F79874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v42 = a1[8];
  v43 = a1[9];
  v40 = a1[11];
  v41 = a1[10];
  v38 = a1[13];
  v39 = a1[12];
  v11 = *(a1 + 112);
  nullsub_1();
  if (v11)
  {
    v12 = v10;
    *&v45 = v3;
    *(&v45 + 1) = v4;
    v46 = v6;
    v47 = v5;
    v48 = v8;
    v49 = v7;
    v13 = sub_255F93B98(&v45);
    v15 = v14;
    *&v45 = v9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4D8, &qword_255F96930);
    v17 = sub_255F79AC4();
    v23 = sub_255F93BCC(&v45, v16, v17, v18, v19, v20, v21, v22);
    v25 = v24;
    sub_255F79B28(v44, v51);
    if (v43 >> 1 == 0xFFFFFFFF)
    {
      result = sub_255F79B84(v51);
      v27 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v45 = v12;
      *(&v45 + 1) = v42;
      v46 = v43;
      v47 = v41;
      v48 = v40;
      v49 = v39;
      v50 = v38;
      sub_255F79E8C(v12, v42, v43, v41, v40, v39, v38);
      sub_255F72F90(v12, v42, v43, v41, v40, v39);

      v27 = sub_255F79BD8(&v45);
      sub_255F79B84(v51);
      result = sub_255F79ED4(v12, v42, v43, v41, v40, v39, v38);
    }

    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v23;
    *(a2 + 24) = v25;
    *(a2 + 32) = v27;
    *(a2 + 40) = 1;
  }

  else
  {
    *&v45 = v3;
    sub_255F72F90(v4, v6, v5, v8, v7, v9);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4D8, &qword_255F96930);
    v29 = sub_255F79AC4();
    v35 = sub_255F93BCC(&v45, v28, v29, v30, v31, v32, v33, v34);
    v37 = v36;
    *&v45 = v4;
    *(&v45 + 1) = v6;
    v46 = v5;
    v47 = v8;
    v48 = v7;
    v49 = v9;
    v50 = v10;
    result = sub_255F79BD8(&v45);
    *a2 = v35;
    *(a2 + 8) = v37;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = result;
    *(a2 + 40) = 0;
  }

  return result;
}

unint64_t sub_255F79AC4()
{
  result = qword_27F81B4E0;
  if (!qword_27F81B4E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81B4D8, &qword_255F96930);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27F81B4E0);
  }

  return result;
}

char *sub_255F79BD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];

  sub_255F726E0(v2, v3, v4, v5, v6, v7);

  v34 = v1;
  sub_255F7A0F8(sub_255F7A0DC, v33, v8);

  nullsub_1();
  v9 = sub_255F7276C();
  v11 = v10;
  LOWORD(v6) = v12;

  v48[0] = v9;
  v48[1] = v11;
  v49 = v6 & 0x101;
  v13 = sub_255F90548(v48);
  nullsub_1();
  v32 = *(v13 + 2);
  if (v32)
  {
    v14 = 0;
    v15 = (v13 + 32);
    v16 = MEMORY[0x277D84F90];
    v31 = v13;
    while (v14 < *(v13 + 2))
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[2];
      *(v47 + 9) = *(v15 + 41);
      v46[1] = v18;
      v47[0] = v19;
      v46[0] = v17;
      v20 = v15[1];
      v43 = *v15;
      v44 = v20;
      v45[0] = v15[2];
      *(v45 + 9) = *(v15 + 41);
      sub_255F7A594(v46, &v35);
      sub_255F7A2BC(&v43, &v38);
      v35 = v43;
      v36 = v44;
      v37[0] = v45[0];
      *(v37 + 9) = *(v45 + 9);
      sub_255F7A5F0(&v35);
      v21 = v42;
      v23 = v38;
      v22 = v39;
      v25 = v40;
      v24 = v41;
      if (v42 == 255)
      {
        sub_255F7A644(v38, v39, v40, v41, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_255F7A6E4(0, *(v16 + 2) + 1, 1, v16);
        }

        v27 = *(v16 + 2);
        v26 = *(v16 + 3);
        v28 = v16;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_255F7A6E4((v26 > 1), v27 + 1, 1, v16);
        }

        *(v28 + 2) = v27 + 1;
        v16 = v28;
        v29 = &v28[40 * v27];
        *(v29 + 4) = v23;
        *(v29 + 5) = v22;
        *(v29 + 6) = v25;
        *(v29 + 7) = v24;
        v29[64] = v21;
        v13 = v31;
      }

      ++v14;
      v15 += 4;
      if (v32 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    MEMORY[0x259C547B0](0);
    v35 = v43;
    v36 = v44;
    v37[0] = v45[0];
    *(v37 + 9) = *(v45 + 9);
    sub_255F7A5F0(&v35);

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_13:

    return v16;
  }

  return result;
}

uint64_t sub_255F79E8C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    sub_255F72F90(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_255F79ED4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    sub_255F726E0(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_255F79F1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = (v7 >> 58) & 3;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = MEMORY[0x277D84F90];
    }

    else
    {
      v17 = a1[6];
      v12 = v7 & 0xF3FFFFFFFFFFFFFFLL;
      v16[0] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B488, &unk_255F95F90);
      v13 = swift_allocObject();
      v16[1] = v16;
      *(v13 + 16) = xmmword_255F96910;
      *(v13 + 32) = v5;
      *(v13 + 40) = v4;
      *(v13 + 48) = v12;
      *(v13 + 56) = v6;
      *(v13 + 64) = v9;
      *(v13 + 72) = v8;
      MEMORY[0x28223BE20](v13);
      v15[2] = v16[0];
      sub_255F72F90(v5, v4, v12, v6, v9, v8);
      sub_255F7A0F8(sub_255F7AB00, v15, v17);
      v18 = v13;
      sub_255F7A910(v14);
      sub_255F7A910(byte_2868098D0);
      v11 = v18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B488, &unk_255F95F90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_255F96910;
    *(v11 + 32) = v5;
    *(v11 + 40) = v4;
    *(v11 + 48) = v7;
    *(v11 + 56) = v6;
    *(v11 + 64) = v9;
    *(v11 + 72) = v8;
    sub_255F72F90(v5, v4, v7, v6, v9, v8);
  }

  *a3 = v11;
}

void sub_255F7A0F8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[2];
    v10 = v5[3];
    v11 = *v5;
    v12 = v5[1];
    v23 = *(v5 - 1);
    v24 = v11;
    v25 = v12;
    v26 = v9;
    v27 = v10;
    v28 = v7;
    v29 = v8;
    sub_255F7AA08(v23, v11, v12, v9, v10, v7, v8);
    a1(&v30, &v23);
    if (v3)
    {
      sub_255F7AA84(v23, v24, v25, v26, v27, v28, v29);

      return;
    }

    sub_255F7AA84(v23, v24, v25, v26, v27, v28, v29);
    v13 = v30;
    v14 = *(v30 + 16);
    v15 = *(v6 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= *(v6 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v6 = sub_255F75E88(isUniquelyReferenced_nonNull_native, v18, 1, v6);
      if (*(v13 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v14)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v19 = *(v6 + 2);
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 7;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_255F7A2BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_255F953D0();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  *&v41 = v8;
  *(&v41 + 1) = v9;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  sub_255F72F90(v8, v9, v10, v11, v12, v13);

  v15 = sub_255F93B98(&v41);
  v17 = v16;
  sub_255F726E0(v41, *(&v41 + 1), v42, v43, v44, v45);
  *&v41 = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4D8, &qword_255F96930);
  v19 = sub_255F79AC4();
  v25 = sub_255F93BCC(&v41, v18, v19, v20, v21, v22, v23, v24);
  v27 = v26;

  sub_255F7AB18(v15, v17, &v41);
  v38[0] = v25;
  v38[1] = v27;
  sub_255F7A800();
  sub_255F7AF48(v38, MEMORY[0x277D837D0], v39);
  if (v2)
  {
    v28 = sub_255F94E10();
    v29 = v46;
    (*(v46 + 16))(v7, v28, v5);
    MEMORY[0x259C547C0](v2);
    v30 = sub_255F953B0();
    v31 = sub_255F95690();
    MEMORY[0x259C547B0](v2);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      MEMORY[0x259C547C0](v2);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&dword_255F70000, v30, v31, "%@", v32, 0xCu);
      sub_255F7A8A8(v33);
      MEMORY[0x259C548D0](v33, -1, -1);
      MEMORY[0x259C548D0](v32, -1, -1);
    }

    MEMORY[0x259C547B0](v2);
    (*(v29 + 8))(v7, v5);
    result = sub_255F7A854(&v41);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v36 = -1;
  }

  else
  {
    result = sub_255F7A854(&v41);
    v36 = v40;
    v37 = v39[1];
    *a2 = v39[0];
    *(a2 + 16) = v37;
  }

  *(a2 + 32) = v36;
  return result;
}

void sub_255F7A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_255F7A658(a1, a2, a3, a4, a5);
  }
}

void sub_255F7A658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {

LABEL_6:

    return;
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_255F7A6D4(a1, a2, a3);
}

uint64_t sub_255F7A6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

char *sub_255F7A6E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4E8, &qword_255F96938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_255F7A800()
{
  result = qword_27F81B4F0;
  if (!qword_27F81B4F0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F81B4F0);
  }

  return result;
}

uint64_t sub_255F7A8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B4F8, &unk_255F96940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_255F7A910(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_255F75E88(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_255F7AA08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (a3 >> 58) & 3;
  if (((a3 >> 58) & 3) > 1)
  {
    if (v7 != 2)
    {
      return;
    }
  }

  else if (!v7)
  {

    sub_255F72F90(a1, a2, a3, a4, a5, a6);
    return;
  }

  sub_255F72F90(a1, a2, a3 & 0xF3FFFFFFFFFFFFFFLL, a4, a5, a6);
}

void sub_255F7AA84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (a3 >> 58) & 3;
  if (((a3 >> 58) & 3) > 1)
  {
    if (v7 != 2)
    {
      return;
    }
  }

  else if (!v7)
  {

    sub_255F726E0(a1, a2, a3, a4, a5, a6);
    return;
  }

  sub_255F726E0(a1, a2, a3 & 0xF3FFFFFFFFFFFFFFLL, a4, a5, a6);
}

uint64_t sub_255F7AB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_255F95990() & 1) != 0)
  {

    v7 = &type metadata for DeclarationParsers.Color;
    v8 = &protocol witness table for DeclarationParsers.Color;
LABEL_7:
    v13 = v7;
    v14 = v8;
    nullsub_1();
    return sub_255F7AF30(&v12, a3);
  }

  if (a1 == 0xD000000000000010 && 0x8000000255F9CB70 == a2 || (sub_255F95990() & 1) != 0)
  {

    v7 = &type metadata for DeclarationParsers.BackgroundColor;
    v8 = &protocol witness table for DeclarationParsers.BackgroundColor;
    goto LABEL_7;
  }

  if (a1 == 0x696C612D74786574 && a2 == 0xEA00000000006E67 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.TextAlign;
    v11 = &protocol witness table for DeclarationParsers.TextAlign;
  }

  else if (a1 == 0x7A69732D746E6F66 && a2 == 0xE900000000000065 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.FontSize;
    v11 = &protocol witness table for DeclarationParsers.FontSize;
  }

  else if (a1 == 0x6965772D746E6F66 && a2 == 0xEB00000000746867 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.FontWeight;
    v11 = &protocol witness table for DeclarationParsers.FontWeight;
  }

  else if (a1 == 0x7974732D746E6F66 && a2 == 0xEA0000000000656CLL || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.FontStyle;
    v11 = &protocol witness table for DeclarationParsers.FontStyle;
  }

  else if (a1 == 0x7261762D746E6F66 && a2 == 0xEC000000746E6169 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.FontVariant;
    v11 = &protocol witness table for DeclarationParsers.FontVariant;
  }

  else if (a1 == 0x6D61662D746E6F66 && a2 == 0xEB00000000796C69 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.FontFamily;
    v11 = &protocol witness table for DeclarationParsers.FontFamily;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_255F95990() & 1) != 0)
  {

    v10 = &type metadata for DeclarationParsers.Font;
    v11 = &protocol witness table for DeclarationParsers.Font;
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x8000000255F9CB90 != a2) && (sub_255F95990() & 1) == 0)
    {
      v13 = &type metadata for DeclarationParsers.Default;
      v14 = &off_286809930;
      *&v12 = a1;
      *(&v12 + 1) = a2;
      return sub_255F7AF30(&v12, a3);
    }

    v10 = &type metadata for DeclarationParsers.BackgroundImage;
    v11 = &protocol witness table for DeclarationParsers.BackgroundImage;
  }

  v13 = v10;
  v14 = v11;
  return sub_255F7AF30(&v12, a3);
}

uint64_t sub_255F7AF30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255F7AF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_255F953A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[3];
  v11 = v4[4];
  v19[0] = __swift_project_boxed_opaque_existential_1(v4, v12);
  sub_255F95390();
  v13 = sub_255F95720();
  v15 = v14;
  (*(*(a2 - 8) + 8))(a1, a2);
  (*(v8 + 8))(v10, v7);
  v20[0] = v13;
  v20[1] = v15;
  v16 = *(v11 + 8);
  v17 = sub_255F7A800();
  return v16(v20, MEMORY[0x277D837D0], v17, v12, v11);
}

uint64_t sub_255F7B120@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{

  result = sub_255F955B0();
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = result;
  *(a6 + 24) = v10;
  *(a6 + 32) = 0;
  return result;
}

uint64_t DeclarationParsers.TextAlign.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_255F7B594();
  sub_255F7B288(&type metadata for StyleSheet.TextAlign, a2, &type metadata for StyleSheet.TextAlign, &v9);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v4)
  {
    *a4 = v9;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 3;
  }

  return result;
}

uint64_t sub_255F7B288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v7 = v6;
  v35 = a1;
  v31 = a6;
  v10 = sub_255F956A0();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v32 = v7;
  v17(v16, v7, a2);
  v33 = sub_255F955B0();
  v34 = v18;
  sub_255F95610();
  v19 = *(a3 - 8);
  if ((*(v19 + 48))(v13, 1, a3) != 1)
  {
    return (*(v19 + 32))(v31, v13, a3);
  }

  (*(v29 + 8))(v13, v30);
  v17(v16, v32, a2);
  v20 = sub_255F955B0();
  v22 = v21;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_255F957B0();

  v33 = 0xD000000000000010;
  v34 = 0x8000000255F9CDB0;
  v23 = sub_255F95AD0();
  MEMORY[0x259C540A0](v23);

  MEMORY[0x259C540A0](0xD000000000000010, 0x8000000255F9CDD0);
  v24 = v33;
  v25 = v34;
  sub_255F796F4();
  swift_allocError();
  *v26 = v20;
  *(v26 + 8) = v22;
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  *(v26 + 32) = 0;
  return swift_willThrow();
}

unint64_t sub_255F7B594()
{
  result = qword_27F81B500;
  if (!qword_27F81B500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.TextAlign, &type metadata for StyleSheet.TextAlign, v0, v1);
    atomic_store(result, &qword_27F81B500);
  }

  return result;
}

double sub_255F7B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v20 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_255F95660();
  if (v23)
  {
    v10 = "d not convert input to Double.";
    v11 = 0xD000000000000039;
  }

  else
  {
    v19[0] = v22;
    v19[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B548, "\b6");
    sub_255F7E418(&qword_27F81B550, &qword_27F81B548, "\b6", MEMORY[0x277D84348]);
    sub_255F95680();
    swift_getAssociatedConformanceWitness();
    v12 = sub_255F95650();
    if ((v13 & 1) == 0)
    {
      v4 = *&v12;
      v22 = v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B558, &qword_255F96B88);
      sub_255F7E418(&qword_27F81B560, &qword_27F81B558, &qword_255F96B88, MEMORY[0x277D84338]);
      sub_255F95680();
      return v4;
    }

    v10 = "Unit: invalid input.";
    v11 = 0xD00000000000003ELL;
  }

  (*(v21 + 16))(v20, a2, a3);
  v14 = sub_255F955B0();
  v16 = v15;
  sub_255F796F4();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = v11;
  *(v17 + 24) = v10 | 0x8000000000000000;
  *(v17 + 32) = 0;
  swift_willThrow();
  return v4;
}

uint64_t sub_255F7B93C(void *a1)
{
  if (*a1 == 46 && a1[1] == 0xE100000000000000)
  {
    v2 = 0;
  }

  else if (sub_255F95990())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_255F95400() ^ 1;
  }

  return v2 & 1;
}

unint64_t sub_255F7B9BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_255F955C0();
  }

  __break(1u);
  return result;
}

uint64_t sub_255F7BA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  sub_255F7BCAC();
  sub_255F7B288(&type metadata for StyleSheet.Font.Size.Absolute, a2, &type metadata for StyleSheet.Font.Size.Absolute, &v22);
  if (v4)
  {
    MEMORY[0x259C547B0](v4);
    v16 = sub_255F7B600(v13, a1, a2, a3);
    (*(*(a2 - 8) + 8))(a1, a2);
    (*(v10 + 32))(v15, v13, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_255F7BD00();
    sub_255F7B288(&type metadata for StyleSheet.Font.Size.Unit, AssociatedTypeWitness, &type metadata for StyleSheet.Font.Size.Unit, &v21);
    result = (*(v10 + 8))(v15, AssociatedTypeWitness);
    v19 = v21;
  }

  else
  {
    *&v17 = v22;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v16 = v17;
    v19 = 0x80;
  }

  *a4 = v16;
  *(a4 + 8) = v19;
  return result;
}

unint64_t sub_255F7BCAC()
{
  result = qword_27F81B508;
  if (!qword_27F81B508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Absolute, &type metadata for StyleSheet.Font.Size.Absolute, v0, v1);
    atomic_store(result, &qword_27F81B508);
  }

  return result;
}

unint64_t sub_255F7BD00()
{
  result = qword_27F81B510;
  if (!qword_27F81B510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Size.Unit, &type metadata for StyleSheet.Font.Size.Unit, v0, v1);
    atomic_store(result, &qword_27F81B510);
  }

  return result;
}

void *DeclarationParsers.FontSize.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_255F7BA08(a1, a2, a3, &v14);
  if (!v4)
  {
    v12 = v14;
    v13 = v15;
    v11 = 13;
    v10 = 3;
    v9 = 2;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v12, &v11, &v10, &v9, 0, &v14);
    v7 = v15;
    v8 = v16;
    *a4 = v14;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
  }

  return result;
}

unint64_t sub_255F7BE3C()
{
  result = qword_27F81B518;
  if (!qword_27F81B518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Weight, &type metadata for StyleSheet.Font.Weight, v0, v1);
    atomic_store(result, &qword_27F81B518);
  }

  return result;
}

void *DeclarationParsers.FontWeight.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_255F7BF90(a1, a2, sub_255F7BE3C, &type metadata for StyleSheet.Font.Weight, &v14);
  if (!v4)
  {
    v12 = 0;
    v13 = -4;
    v11 = v14;
    v10 = 3;
    v9 = 2;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v12, &v11, &v10, &v9, 0, &v14);
    v7 = v15;
    v8 = v16;
    *a4 = v14;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
  }

  return result;
}

uint64_t sub_255F7BF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  a4();
  sub_255F7B288(a5, a2, a5, a6);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

unint64_t sub_255F7C038()
{
  result = qword_27F81B520;
  if (!qword_27F81B520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Style, &type metadata for StyleSheet.Font.Style, v0, v1);
    atomic_store(result, &qword_27F81B520);
  }

  return result;
}

void *DeclarationParsers.FontStyle.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_255F7BF90(a1, a2, sub_255F7C038, &type metadata for StyleSheet.Font.Style, &v14);
  if (!v4)
  {
    v12 = 0;
    v13 = -4;
    v11 = 13;
    v10 = v14;
    v9 = 2;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v12, &v11, &v10, &v9, 0, &v14);
    v7 = v15;
    v8 = v16;
    *a4 = v14;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
  }

  return result;
}

uint64_t sub_255F7C158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_255F7C1FC();
  sub_255F7B288(&type metadata for StyleSheet.Font.Variant, a2, &type metadata for StyleSheet.Font.Variant, a4);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

unint64_t sub_255F7C1FC()
{
  result = qword_27F81B528;
  if (!qword_27F81B528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.Variant, &type metadata for StyleSheet.Font.Variant, v0, v1);
    atomic_store(result, &qword_27F81B528);
  }

  return result;
}

void *DeclarationParsers.FontVariant.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_255F7C158(a1, a2, &v14);
  if (!v4)
  {
    v12 = 0;
    v13 = -4;
    v11 = 13;
    v10 = 3;
    v9 = v14;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v12, &v11, &v10, &v9, 0, &v14);
    v7 = v15;
    v8 = v16;
    *a4 = v14;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
  }

  return result;
}

char *sub_255F7C300(uint64_t a1, uint64_t a2)
{
  v2 = sub_255F95530();
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v4 = v2;
  v5 = v3;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = 1;
    while (1)
    {
      if (v4 == 34 && v5 == 0xE100000000000000 || (sub_255F95990() & 1) != 0)
      {

        v7 ^= 1u;
        goto LABEL_13;
      }

      if (v7)
      {
        if (sub_255F953F0())
        {

          v7 = 1;
          goto LABEL_13;
        }

        if (v4 == 44 && v5 == 0xE100000000000000 || (sub_255F95990() & 1) != 0)
        {
          break;
        }
      }

      MEMORY[0x259C54090](v4, v5);

LABEL_13:
      v4 = sub_255F95530();
      v5 = v8;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_255F7DEFC(0, *(v6 + 2) + 1, 1, v6);
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_255F7DEFC((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    v11 = &v6[16 * v10];
    *(v11 + 4) = 0;
    *(v11 + 5) = 0xE000000000000000;
    v4 = sub_255F95530();
    v5 = v12;
  }

  while (v12);
LABEL_24:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_255F7DEFC(0, *(v6 + 2) + 1, 1, v6);
  }

  v14 = *(v6 + 2);
  v13 = *(v6 + 3);
  if (v14 >= v13 >> 1)
  {
    v6 = sub_255F7DEFC((v13 > 1), v14 + 1, 1, v6);
  }

  *(v6 + 2) = v14 + 1;
  v15 = &v6[16 * v14];
  *(v15 + 4) = 0;
  *(v15 + 5) = 0xE000000000000000;
  return v6;
}

char *sub_255F7C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v21 - v4;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_255F955D0();
  swift_getAssociatedConformanceWitness();
  sub_255F95710();
  v6 = v24;
  if (!v24)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v7 = v23;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = 1;
    while (1)
    {
      if (v7 == 34 && v6 == 0xE100000000000000 || (sub_255F95990() & 1) != 0)
      {

        v9 ^= 1u;
        goto LABEL_13;
      }

      if (v9)
      {
        if (sub_255F953F0())
        {

          v9 = 1;
          goto LABEL_13;
        }

        if (v7 == 44 && v6 == 0xE100000000000000 || (sub_255F95990() & 1) != 0)
        {
          break;
        }
      }

      MEMORY[0x259C54090](v7, v6);

LABEL_13:
      sub_255F95710();
      v7 = v23;
      v6 = v24;
      if (!v24)
      {
        goto LABEL_24;
      }
    }

    v10 = v25;
    v11 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_255F7DEFC(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_255F7DEFC((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v11;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_255F95710();
    v7 = v23;
    v6 = v24;
  }

  while (v24);
LABEL_24:
  (*(v22 + 8))(v5, AssociatedTypeWitness);
  v15 = v25;
  v16 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_255F7DEFC(0, *(v8 + 2) + 1, 1, v8);
  }

  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = sub_255F7DEFC((v17 > 1), v18 + 1, 1, v8);
  }

  *(v8 + 2) = v18 + 1;
  v19 = &v8[16 * v18];
  *(v19 + 4) = v15;
  *(v19 + 5) = v16;
  return v8;
}

void *DeclarationParsers.FontFamily.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_255F7C554(a1, a2, a3);
  if (!v4)
  {
    v12 = 0;
    v13 = -4;
    v11 = 13;
    v10 = 3;
    v9 = 2;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v12, &v11, &v10, &v9, result, &v14);
    v7 = v15;
    v8 = v16;
    *a4 = v14;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
  }

  return result;
}

unint64_t DeclarationParsers.Font.parse<A>(input:)@<X0>(uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = sub_255F955B0();
  v8 = v7;

  v155 = sub_255F955B0();
  v156 = v9;
  sub_255F7E3C4();
  sub_255F95610();
  v10 = v153;
  if (v153 != 6)
  {
    v11 = v6;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_60:

    *a4 = v10;
    *(a4 + 8) = 0x8000000000000000;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
    return result;
  }

  v11 = v6;
  v155 = v6;
  v156 = v8;

  v12 = sub_255F955B0();
  v14 = v13;
  sub_255F796F4();
  v5 = swift_allocError();
  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0xD000000000000026;
  *(v15 + 24) = 0x8000000255F9CD80;
  *(v15 + 32) = 0;
  swift_willThrow();
  if (!v5)
  {
    goto LABEL_60;
  }

LABEL_3:
  MEMORY[0x259C547B0](v5);
  v16 = v11;
  v17 = sub_255F7B9BC(0xFuLL, v11, v8);
  v18 = 0;
  v19 = 0;
  v145 = v20 >> 14;
  v141 = 13;
  v136 = 2;
  v137 = 3;
  v21 = v17;
  v140 = v8;
  v146 = v16;
  while (1)
  {
    while (1)
    {
      if (v145 < v21 >> 14)
      {
        __break(1u);
LABEL_112:

        LOBYTE(v18) = v159;
        v37 = v146;
        v76 = v140;
        goto LABEL_44;
      }

      v150 = v19;
      v152 = v21;
      v22 = sub_255F95700();
      v24 = v23 >> 14;
      v25 = v22 >> 14;
      if (v22 >> 14 == v23 >> 14)
      {
        v76 = v140;
LABEL_38:

        v37 = v146;
LABEL_39:
        v152 = v21;
        if (v141 == 13)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

      v159 = v18;
      sub_255F956F0();
      v26 = sub_255F953F0();

      if ((v26 & 1) == 0)
      {
        while (1)
        {
          v25 = sub_255F956B0() >> 14;
          if (v25 == v24)
          {
            break;
          }

          sub_255F956F0();
          v27 = sub_255F953F0();

          if (v27)
          {
            goto LABEL_9;
          }
        }

        v76 = v140;
        LOBYTE(v18) = v159;
        goto LABEL_38;
      }

LABEL_9:

      if (v25 < v21 >> 14)
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v29 = v150 + 1;
      v30 = sub_255F95700();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if ((sub_255F7E34C(v30, v31, v33, v35, 0x6C616D726F6ELL, 0xE600000000000000) & 1) == 0)
      {
        break;
      }

      v21 = sub_255F956B0();

      v18 = 1;
      v37 = v146;
      v19 = v150 + 1;
      if (v150 == 2)
      {
        v76 = v140;
        goto LABEL_39;
      }
    }

    v147 = v36;
    v151 = v150 + 1;
    if (v137 != 3)
    {
      v38 = v30;
      v39 = v34;
      v47 = v32;
      goto LABEL_20;
    }

    v38 = v30;
    v39 = v34;
    v157 = v34;
    v158 = v147;
    sub_255F7E008();

    v155 = sub_255F955B0();
    v156 = v40;
    sub_255F7C038();
    sub_255F95610();
    v41 = v153;
    if (v153 == 3)
    {
      v155 = v38;
      v156 = v32;
      v157 = v34;
      v158 = v147;

      v42 = sub_255F955B0();
      v44 = v43;
      sub_255F796F4();
      v45 = swift_allocError();
      *v46 = v42;
      *(v46 + 8) = v44;
      *(v46 + 16) = 0xD000000000000025;
      *(v46 + 24) = 0x8000000255F9CD50;
      *(v46 + 32) = 0;
      swift_willThrow();
      v41 = v135;
    }

    else
    {
      v45 = 0;
    }

    v47 = v32;
    v135 = v41;
    if (v45)
    {
      break;
    }

    v137 = v41;
    v18 = v159;
LABEL_35:
    v21 = sub_255F956B0();

    v19 = v29;
    v37 = v146;
    v76 = v140;
    if (v151 == 3)
    {
      goto LABEL_39;
    }
  }

  MEMORY[0x259C547B0](v45);
LABEL_20:
  if (v136 != 2)
  {
    goto LABEL_27;
  }

  v157 = v39;
  v158 = v147;
  sub_255F7E008();

  v155 = sub_255F955B0();
  v156 = v48;
  sub_255F7C1FC();
  sub_255F95610();
  v49 = v153;
  if (v153 == 2)
  {
    v155 = v38;
    v156 = v47;
    v157 = v39;
    v158 = v147;

    v50 = sub_255F955B0();
    v52 = v51;
    sub_255F796F4();
    v53 = swift_allocError();
    *v54 = v50;
    *(v54 + 8) = v52;
    *(v54 + 16) = 0xD000000000000027;
    *(v54 + 24) = 0x8000000255F9CD20;
    *(v54 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v53 = 0;
  }

  if (!v53)
  {
    v136 = v49 & 1;
    v18 = v159;
    goto LABEL_35;
  }

  MEMORY[0x259C547B0](v53);
LABEL_27:
  if (v141 != 13)
  {
    goto LABEL_112;
  }

  v157 = v39;
  v158 = v147;
  sub_255F7E008();

  v155 = sub_255F955B0();
  v156 = v55;
  sub_255F7BE3C();
  sub_255F95610();
  if (v153 == 13)
  {
    v155 = v38;
    v156 = v47;
    v157 = v39;
    v158 = v147;

    v56 = sub_255F955B0();
    v58 = v57;
    sub_255F796F4();
    v59 = swift_allocError();
    *v60 = v56;
    *(v60 + 8) = v58;
    *(v60 + 16) = 0xD000000000000026;
    *(v60 + 24) = 0x8000000255F9CCF0;
    *(v60 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v141 = v153;
    v59 = 0;
  }

  v18 = v159;
  if (!v59)
  {
    goto LABEL_35;
  }

  MEMORY[0x259C547B0](v59);

  v37 = v146;
  v76 = v140;
LABEL_40:
  if (v18)
  {
    v61 = 0;
  }

  else
  {
    v61 = 13;
  }

  v141 = v61;
LABEL_44:
  if (v18)
  {
    v62 = 0;
  }

  else
  {
    v62 = 3;
  }

  if (v18)
  {
    v63 = 0;
  }

  else
  {
    v63 = 2;
  }

  if (v137 == 3)
  {
    v64 = v62;
  }

  else
  {
    v64 = v137;
  }

  if (v136 == 2)
  {
    v65 = v63;
  }

  else
  {
    v65 = v136;
  }

  result = sub_255F7B9BC(v152, v37, v76);
  v67 = v66 >> 14;
  v148 = result >> 14;
  if (v66 >> 14 < result >> 14)
  {
    goto LABEL_115;
  }

  v68 = result;
  v69 = v66;
  v142 = v65;
  v143 = v64;
  v70 = sub_255F95700();
  v149 = v68;
  if ((v70 ^ v71) >= 0x4000)
  {
    v73 = v71;
    v72 = v70;
    while (1)
    {
      if (sub_255F956F0() == 47 && v74 == 0xE100000000000000)
      {

        v159 = 0;
        goto LABEL_70;
      }

      v75 = sub_255F95990();

      if (v75)
      {
        break;
      }

      v72 = sub_255F956B0();
      if ((v72 ^ v73) < 0x4000)
      {
        v72 = v69;
        break;
      }
    }

    v159 = v75 ^ 1;
  }

  else
  {
    v159 = 1;
    v72 = v69;
  }

LABEL_70:

  v77 = sub_255F95700();
  if ((v77 ^ v78) < 0x4000)
  {
LABEL_74:

    v80 = v69;
  }

  else
  {
    v79 = v78;
    v80 = v77;
    while (1)
    {
      sub_255F956F0();
      v81 = sub_255F953F0();

      if (v81)
      {
        break;
      }

      v80 = sub_255F956B0();
      if ((v80 ^ v79) < 0x4000)
      {
        goto LABEL_74;
      }
    }

    v67 = v80 >> 14;
  }

  if (v67 >= v72 >> 14)
  {
    v82 = v72;
  }

  else
  {
    v82 = v80;
  }

  result = v149;
  if (v148 > v82 >> 14)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  sub_255F95700();
  v157 = v83;
  v158 = v84;
  sub_255F7E008();

  v85 = sub_255F955B0();
  v87 = v86;

  v155 = sub_255F955B0();
  v156 = v88;
  sub_255F7BCAC();
  sub_255F95610();
  v89 = v153;
  if (v153 != 7)
  {
    v93 = 0;
    goto LABEL_101;
  }

  v155 = v85;
  v156 = v87;

  v90 = sub_255F955B0();
  v92 = v91;
  sub_255F796F4();
  v93 = swift_allocError();
  *v94 = v90;
  *(v94 + 8) = v92;
  *(v94 + 16) = 0xD000000000000028;
  *(v94 + 24) = 0x8000000255F9CCC0;
  *(v94 + 32) = 0;
  swift_willThrow();
  if (!v93)
  {
LABEL_101:
    v144 = v93;

    v120 = 0x80;
    goto LABEL_102;
  }

  MEMORY[0x259C547B0](v93);
  v95 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v95 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (!v95)
  {
LABEL_94:
    v155 = v85;
    v156 = v87;

    v108 = sub_255F955B0();
    v110 = v111;
    v112 = "d not convert input to Double.";
    v104 = 0xD000000000000039;
LABEL_95:
    v106 = v112 | 0x8000000000000000;
    sub_255F796F4();
    v103 = swift_allocError();
    *v113 = v108;
    *(v113 + 8) = v110;
    *(v113 + 16) = v104;
    *(v113 + 24) = v106;
    *(v113 + 32) = 0;
    swift_willThrow();
    goto LABEL_96;
  }

  v89 = 4 * v95;
  v96 = 15;
  while (2)
  {
    if (sub_255F955A0() == 46 && v97 == 0xE100000000000000 || (sub_255F95990() & 1) != 0)
    {

      goto LABEL_87;
    }

    v98 = sub_255F95400();

    if (v98)
    {
LABEL_87:
      v96 = sub_255F954F0();
      if (v89 == v96 >> 14)
      {
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  v99 = sub_255F955C0();
  v155 = 0;
  v100 = MEMORY[0x259C53FE0](v99);
  v89 = v101;

  v102 = sub_255F795FC(v100, v89, &v155);
  v103 = 0;

  if (!v102)
  {
    v155 = v85;
    v156 = v87;

    v108 = sub_255F955B0();
    v110 = v134;
    v112 = "Unit: invalid input.";
    v104 = 0xD00000000000003ELL;
    goto LABEL_95;
  }

  v89 = v155;
  v104 = sub_255F7B9BC(v96, v85, v87);
  v106 = v105;
  v108 = v107;
  v110 = v109;
LABEL_96:
  v144 = v103;
  if (v103 || (, v155 = v104, v156 = v106, v157 = v108, v158 = v110, , v155 = sub_255F955B0(), v156 = v114, sub_255F7BD00(), sub_255F95610(), v138 = v153, v153 == 4) && (v155 = v104, v156 = v106, v157 = v108, v158 = v110, , v115 = sub_255F955B0(), v117 = v116, sub_255F796F4(), v118 = swift_allocError(), *v119 = v115, *(v119 + 8) = v117, *(v119 + 16) = 0xD000000000000024, *(v119 + 24) = 0x8000000255F9CC10, *(v119 + 32) = 0, swift_willThrow(), (v144 = v118) != 0))
  {

    goto LABEL_103;
  }

  v120 = v138;
LABEL_102:
  v121 = sub_255F956B0();

  if (v144)
  {
LABEL_103:
  }

  if (v159)
  {
    v122 = v121;
  }

  else
  {
    v122 = v80;
  }

  v123 = sub_255F7B9BC(v122, v146, v140);
  v125 = v124;

  if (v125 >> 14 >= v123 >> 14)
  {
    v155 = sub_255F95700();
    v156 = v126;
    v157 = v127;
    v158 = v128;

    v129 = sub_255F955B0();
    v131 = sub_255F7C300(v129, v130);

    v153 = v89;
    v154 = v120;
    v162 = v141;
    v161 = v143;
    v160 = v142;
    result = StyleSheet.Font.Specified.init(size:weight:style:variant:family:)(&v153, &v162, &v161, &v160, v131, &v155);
    v132 = v156;
    v133 = v157;
    *a4 = v155;
    *(a4 + 8) = v132;
    *(a4 + 16) = v133;
    *(a4 + 24) = 0;
    *(a4 + 32) = 4;
    return result;
  }

LABEL_117:
  __break(1u);
  return result;
}

void *DeclarationParsers.Color.parse<A>(input:)@<X0>(int8x8_t *a1@<X8>)
{
  result = sub_255F7E58C(&v5);
  if (!v1)
  {
    v4 = v6;
    *a1 = v5;
    a1[1] = v4;
    a1[2] = 0;
    a1[3] = 0;
    a1[4].i8[0] = 1;
  }

  return result;
}

void *DeclarationParsers.BackgroundColor.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v10 = 0x726170736E617274;
  v11 = 0xEB00000000746E65;
  sub_255F7A800();
  if (sub_255F95750())
  {
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = xmmword_255F96950;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 2;
  }

  else
  {
    result = sub_255F7E58C(&v10);
    if (!v4)
    {
      v9 = v11;
      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 2;
    }
  }

  return result;
}

uint64_t DeclarationParsers.BackgroundImage.parse<A>(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v11;
  v26 = 1701736302;
  v27 = 0xE400000000000000;
  sub_255F7A800();
  if (sub_255F95750())
  {
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = 0u;
    *(a4 + 1) = 0u;
LABEL_3:
    *(a4 + 32) = 5;
    return result;
  }

  v23 = a4;
  if (sub_255F95730() & 1) != 0 && (sub_255F95740())
  {
    sub_255F954E0();
    sub_255F95670();
    sub_255F954E0();
    swift_getAssociatedConformanceWitness();
    v13 = v24;
    sub_255F95410();
    v14 = v25;
    (*(v25 + 16))(v10, v13, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v15 = sub_255F955B0();
    v17 = v16;
    result = (*(v14 + 8))(v13, AssociatedTypeWitness);
    a4 = v23;
    *v23 = v15;
    a4[1] = v17;
    a4[2] = 0;
    a4[3] = 0;
    goto LABEL_3;
  }

  v18 = sub_255F955B0();
  v20 = v19;
  sub_255F796F4();
  swift_allocError();
  *v21 = v18;
  *(v21 + 8) = v20;
  *(v21 + 16) = 0xD000000000000058;
  *(v21 + 24) = 0x8000000255F9CBB0;
  *(v21 + 32) = 0;
  return swift_willThrow();
}

char *sub_255F7DEFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B540, &unk_255F99E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_255F7E008()
{
  result = qword_27F81B530;
  if (!qword_27F81B530)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E58], MEMORY[0x277D83E40], v0, v1);
    atomic_store(result, &qword_27F81B530);
  }

  return result;
}

uint64_t sub_255F7E084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255F7E0CC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_255F7E144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255F7E18C(uint64_t result, int a2, int a3)
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

uint64_t _s33LinkPresentationStyleSheetParsing18DeclarationParsersO9FontStyleVwet_0(unsigned int *a1, int a2)
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

_WORD *_s33LinkPresentationStyleSheetParsing18DeclarationParsersO9FontStyleVwst_0(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_255F7E34C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_255F95970() & 1;
  }
}

unint64_t sub_255F7E3C4()
{
  result = qword_27F81B538;
  if (!qword_27F81B538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyleSheet.Font.System, &type metadata for StyleSheet.Font.System, v0, v1);
    atomic_store(result, &qword_27F81B538);
  }

  return result;
}

uint64_t sub_255F7E418(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_255F7E470(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  if (v2 >> 60 != 10)
  {
    goto LABEL_24;
  }

  v3 = v1[5];
  v4 = *v1;
  v5 = v1[3] | v1[4] | v1[1];
  v6 = 0xA000000000000000;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 0xA000000000000000;
  }

  if (!v7 || v4 != 15 || v5 != 0)
  {
    if (!v3 && v2 == 0xA000000000000000 && v4 == 17 && !v5)
    {
      v10 = 18;
      goto LABEL_25;
    }

    if (!v3 && v2 == 0xA000000000000000 && v4 == 19 && !v5)
    {
      v10 = 20;
      goto LABEL_25;
    }

LABEL_24:
    v10 = 0;
    v6 = 0x1FFFFFFFELL;
    goto LABEL_25;
  }

  v10 = 16;
LABEL_25:
  *a1 = v10;
  a1[1] = 0;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_255F7E544(char a1)
{
  sub_255F959E0();
  MEMORY[0x259C54570](a1 & 1);
  return sub_255F95A00();
}

uint64_t sub_255F7E58C@<X0>(int8x8_t *a4@<X8>)
{
  v6 = sub_255F955B0();
  v8 = v7;
  if (qword_27F81BC80 != -1)
  {
    swift_once();
  }

  v9 = qword_27F81BC88;
  if (*(qword_27F81BC88 + 16))
  {
    v10 = sub_255F7EF4C(v6, v8);
    if (v11)
    {
      v12 = v10;

      v14 = *(v9 + 56) + 12 * v12;
      v15 = *(v14 + 8);
      *a4 = *v14;
      a4[1].i32[0] = v15;
      return result;
    }
  }

  if (sub_255F954E0() >= 4)
  {
    v16 = sub_255F7EB04(v6, v8);
    if (v17)
    {
      if (v16 == 35 && v17 == 0xE100000000000000)
      {
      }

      else
      {
        v19 = sub_255F95990();

        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v49 = sub_255F7F9B0(1uLL, v6, v8);
      v51 = v50;
      v53 = v52;
      v55 = v54;

      if ((v51 ^ v49) < 0x4000)
      {
        goto LABEL_25;
      }

      v56 = sub_255F7F7CC(v49, v51, v53, v55, 16);
      if ((v56 & 0x10000000000) != 0)
      {

        v57 = sub_255F7F244(v49, v51, v53, v55, 16);

        if ((v57 & 0x100000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LODWORD(v57) = v56;
        if ((v56 & 0x100000000) != 0)
        {
LABEL_25:
          v58 = 0xD00000000000002ELL;
          sub_255F7E008();

          v59 = sub_255F955B0();
          v61 = v60;
          v62 = "either hex nor rgb";
LABEL_26:
          v63 = v62 | 0x8000000000000000;
          sub_255F796F4();
          swift_allocError();
          *v64 = v59;
          *(v64 + 8) = v61;
          *(v64 + 16) = v58;
          *(v64 + 24) = v63;
          *(v64 + 32) = 0;
          swift_willThrow();
          goto LABEL_34;
        }
      }

      if (sub_255F956E0() == 6)
      {
        StyleSheet.Color.init(value:)(v57, a4);
        goto LABEL_34;
      }

      if (sub_255F956E0() == 3)
      {
        v70 = ((v57 & 0xF00) >> 4) & 0xFFFFFFF0 | (v57 >> 8) & 0xF;
        v71 = v57 & 0xF0 | ((v57 & 0xF0) >> 4);
        LODWORD(v68) = v57 & 0xF | (16 * (v57 & 0xF));
        v69 = a4;
        goto LABEL_33;
      }

      sub_255F7E008();

      v59 = sub_255F955B0();
      v61 = v65;
      v62 = "hex color: invalid hex number.";
      v58 = 0xD00000000000003BLL;
      goto LABEL_26;
    }
  }

LABEL_13:
  v20 = sub_255F95450();
  v22 = sub_255F7EB4C(677537650, 0xE400000000000000, v20, v21);

  if ((v22 & 1) == 0)
  {

    v45 = sub_255F955B0();
    v47 = v46;
    sub_255F796F4();
    swift_allocError();
    *v48 = v45;
    *(v48 + 8) = v47;
    *(v48 + 16) = 0xD000000000000032;
    *(v48 + 24) = 0x8000000255F9CDF0;
    *(v48 + 32) = 0;
    swift_willThrow();
  }

  v23 = sub_255F7F9B0(4uLL, v6, v8);
  v25 = v24;

  v26 = v25 >> 14;
  if (v25 >> 14 < v23 >> 14)
  {
    __break(1u);
    goto LABEL_37;
  }

  v27 = sub_255F95700();
  v31 = sub_255F7FA60(v27, v28, v29, v30, 44, 2);
  if (v4)
  {

LABEL_34:
  }

  v33 = v31;
  v73 = v32;

  if (v26 < v33 >> 14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v34 = sub_255F95700();
  v38 = sub_255F7FA60(v34, v35, v36, v37, 44, v73 & 1);
  v72 = v39;
  v40 = v38;

  if (v26 >= v40 >> 14)
  {
    v41 = sub_255F95700();
    sub_255F7FA60(v41, v42, v43, v44, 41, v72 & 1);
    v67 = v66;

    v68 = HIDWORD(v67);
    v69 = a4;
    v70 = HIDWORD(v73);
    v71 = HIDWORD(v72);
LABEL_33:
    StyleSheet.Color.init(red:green:blue:)(v70, v71, v68, v69);
    goto LABEL_34;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_255F7EB04(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_255F955A0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255F7EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_255F95530();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_255F95530();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_255F95990();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_255F95530();
      v7 = v9;
    }

    while (v9);
  }

  sub_255F95530();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_255F7ECA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B570, &qword_255F96C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255F96BA0;
  *(inited + 32) = 0x6E6F6F72616DLL;
  *(inited + 40) = 0xE600000000000000;
  StyleSheet.Color.init(value:)(0x800000u, (inited + 48));
  *(inited + 64) = 6579570;
  *(inited + 72) = 0xE300000000000000;
  StyleSheet.Color.init(value:)(0xFF0000u, (inited + 80));
  *(inited + 96) = 0x65676E61726FLL;
  *(inited + 104) = 0xE600000000000000;
  StyleSheet.Color.init(value:)(0xFFA500u, (inited + 112));
  *(inited + 128) = 0x776F6C6C6579;
  *(inited + 136) = 0xE600000000000000;
  StyleSheet.Color.init(value:)(0xFFFF00u, (inited + 144));
  *(inited + 160) = 0x6576696C6FLL;
  *(inited + 168) = 0xE500000000000000;
  StyleSheet.Color.init(value:)(0x808000u, (inited + 176));
  *(inited + 192) = 0x656C70727570;
  *(inited + 200) = 0xE600000000000000;
  StyleSheet.Color.init(value:)(0x800080u, (inited + 208));
  *(inited + 224) = 0x61697368637566;
  *(inited + 232) = 0xE700000000000000;
  StyleSheet.Color.init(value:)(0xFF00FFu, (inited + 240));
  *(inited + 256) = 0x6574696877;
  *(inited + 264) = 0xE500000000000000;
  StyleSheet.Color.init(value:)(0xFFFFFFu, (inited + 272));
  *(inited + 288) = 1701669228;
  *(inited + 296) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0xFF00u, (inited + 304));
  *(inited + 320) = 0x6E65657267;
  *(inited + 328) = 0xE500000000000000;
  StyleSheet.Color.init(value:)(0x8000u, (inited + 336));
  *(inited + 352) = 2037801326;
  *(inited + 360) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0x80u, (inited + 368));
  *(inited + 384) = 1702194274;
  *(inited + 392) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0xFFu, (inited + 400));
  *(inited + 416) = 1818322292;
  *(inited + 424) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0x8080u, (inited + 432));
  *(inited + 448) = 1635086689;
  *(inited + 456) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0xFFFFu, (inited + 464));
  *(inited + 480) = 0x6B63616C62;
  *(inited + 488) = 0xE500000000000000;
  StyleSheet.Color.init(value:)(0, (inited + 496));
  *(inited + 512) = 0x7265766C6973;
  *(inited + 520) = 0xE600000000000000;
  StyleSheet.Color.init(value:)(0xC0C0C0u, (inited + 528));
  *(inited + 544) = 2036429415;
  *(inited + 552) = 0xE400000000000000;
  StyleSheet.Color.init(value:)(0x808080u, (inited + 560));
  v1 = sub_255F7F894(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81B578, &qword_255F96C60);
  result = swift_arrayDestroy();
  qword_27F81BC88 = v1;
  return result;
}

unint64_t sub_255F7EF4C(uint64_t a1, uint64_t a2)
{
  sub_255F959E0();
  sub_255F954D0();
  v4 = sub_255F95A00();

  return sub_255F7F03C(a1, a2, v4);
}

unint64_t sub_255F7EFC8()
{
  result = qword_27F81B568;
  if (!qword_27F81B568)
  {
    result = swift_getWitnessTable(byte_255F96BB0, &_s9BaseColorV28ColorComponentRepresentationON, v0, v1);
    atomic_store(result, &qword_27F81B568);
  }

  return result;
}

unint64_t sub_255F7F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255F95990())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255F7F0F4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_255F76EC4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_255F957A0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_255F957E0() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}