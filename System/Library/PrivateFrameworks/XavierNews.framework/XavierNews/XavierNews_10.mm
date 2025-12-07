uint64_t sub_217F31D00(void *a1, uint64_t a2, void *a3, Swift::Double a4, double a5, double a6)
{
  sub_217F3AD5C(a2, v23, &qword_27CBF5D18, &unk_217F5A2E0);
  v12 = v23[0];
  v11 = v23[1];
  sub_217F3AB48(&v24, v25);
  v13 = v26;
  v14 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v18 = ReadonlyAggregateType.personalizationValue(baseline:decayRate:)(a3, v16, v17, a4);
  v19 = 1.0;
  if (v18 < a5)
  {
    v20 = v15;
    if (v15 > a6)
    {
      v20 = a6;
    }

    v19 = 1.0 - v20 / a6 * (1.0 - v18 / a5);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *a1;
  sub_217F1A0A8(v12, v11, isUniquelyReferenced_nonNull_native, v19);

  *a1 = v23[0];
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

long double sub_217F31E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 16);
  result = 1.0;
  if (v3)
  {
    v5 = v2 == 1.0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a2;
    if (*a2 != 0.0)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      v9 = v3 - 1;
      if (v3 != 1)
      {
        v10 = (a1 + 40);
        do
        {
          v11 = *v10++;
          v12 = v11;
          if (v11 < v8)
          {
            v8 = v12;
          }

          --v9;
        }

        while (v9);
      }

      v14 = *(a2 + 24);
      v13 = *(a2 + 32);
      v15 = 1.0;
      do
      {
        v16 = *v7++;
        v15 = v15 * v16;
        --v3;
      }

      while (v3);
      v17 = v14 * pow(v8, *(a2 + 32));
      v18 = v6 * (1.0 - (v17 + (1.0 - v14) * pow(v15, v13)));

      return pow(v2, v18);
    }
  }

  return result;
}

double sub_217F31F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = 1.0;
  if (!*(a2 + 16))
  {
    return v5;
  }

  v6 = *(a4 + 104);
  if (v6 <= 0.0)
  {
    return v5;
  }

  v48 = *(a4 + 112);
  v10 = *(a4 + 120);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = *(a4 + 96) * a5;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_13:
    v21 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = *(a2 + 16);

    v25 = 0.0;
    if (v24)
    {
      v26 = sub_217E8E88C(v23, v22);
      if (v27)
      {
        v25 = *(*(a2 + 56) + 8 * v26);
      }
    }

    v28 = a5;
    if (*(a3 + 16))
    {
      v29 = sub_217E8E88C(v23, v22);
      v28 = a5;
      if (v30)
      {
        v31 = *(a3 + 56) + 24 * v29;
        if (*(v31 + 16))
        {
          v28 = a5;
        }

        else
        {
          v28 = *(v31 + 8);
        }
      }
    }

    if (v16 >= v28)
    {
      v32 = v48;
    }

    else
    {
      v32 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v32 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_217E8E218(0, *(v19 + 2) + 1, 1, v19);
      }

      v35 = *(v19 + 2);
      v34 = *(v19 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v19 = sub_217E8E218((v34 > 1), v35 + 1, 1, v19);
      }

      result = 1.0;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_217E8E218(0, *(v19 + 2) + 1, 1, v19);
      }

      v35 = *(v19 + 2);
      v37 = *(v19 + 3);
      v36 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        v19 = sub_217E8E218((v37 > 1), v35 + 1, 1, v19);
      }

      result = pow(v6 * v25 + 1.0, v28);
    }

    v14 &= v14 - 1;
    *(v19 + 2) = v36;
    *&v19[8 * v35 + 32] = result;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_13;
    }
  }

  v38 = *(v19 + 2);
  if (v10 == 0.0)
  {
    if (v38)
    {
      v5 = *(v19 + 4);
      v39 = v38 - 1;
      if (v38 != 1)
      {
        v40 = (v19 + 40);
        do
        {
          v41 = *v40++;
          v42 = v41;
          if (v5 < v41)
          {
            v5 = v42;
          }

          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v5 = 1.0;
    }

    return v5;
  }

  if (v38)
  {
    v43 = (v19 + 32);
    v44 = 0.0;
    do
    {
      v45 = *v43++;
      v46 = log(v45);
      v44 = v44 + pow(v46, 1.0 / v10);
      --v38;
    }

    while (v38);
  }

  else
  {
    v44 = 0.0;
  }

  v47 = pow(v44, v10);

  return exp(v47);
}

double sub_217F322DC(uint64_t a1, uint64_t a2)
{

  v4 = sub_217F38740(a2, a1, sub_217F38328, sub_217F38328);

  sub_217F2DF90(v4);
  v6 = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = 1.0;
    do
    {
      v10 = *v8++;
      v9 = v9 * v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

uint64_t sub_217F32398(uint64_t a1, uint64_t a2)
{

  v4 = sub_217F38740(a2, a1, sub_217F38528, sub_217F38528);

  sub_217F2E298(v4);
  v6 = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 32);
    v9 = v7 - 1;
    if (v7 != 1)
    {
      v10 = (v6 + 40);
      do
      {
        v11 = *v10++;
        v12 = v11;
        if (v11 < v8)
        {
          v8 = v12;
        }

        --v9;
      }

      while (v9);
    }

    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  return *&v13;
}

uint64_t sub_217F32468(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8, uint64_t *a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  memcpy(__dst, __src, 0x3CBuLL);
  v23 = *(a7 + 48);
  v44[2] = *(a7 + 32);
  v44[3] = v23;
  v45 = *(a7 + 64);
  v24 = *(a7 + 16);
  v44[0] = *a7;
  v44[1] = v24;
  v25 = *a9;
  v26 = *a10;
  *&v24 = *(a10 + 1);
  v27 = *(a10 + 2);
  v28 = a4[1];
  v47[0] = *a4;
  v47[1] = v28;
  v42 = v27;
  v43 = v25;
  v40[0] = v26;
  v41 = v24;
  return sub_217F38910(a1, a2, a3, 1.0, v47, a5, __dst, v44, a8, *v47, *&v28, v29, v30, v31, v32, v33, &v43, v40, *&a11, *&a13, a14, a15, a16, 0, *&a17, a18 & 1, a19, *(&a19 + 1), a20, a21);
}

void *sub_217F32598@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 328);
  v5 = *(a2 + 336);
  v6 = *(a2 + 600);
  v7 = *(a2 + 608);
  v19 = *(a2 + 296);
  v20 = *(a2 + 312);
  v15 = *(a2 + 568);
  v16 = *(a2 + 584);
  v17 = *(a2 + 824);
  v18 = *(a2 + 840);
  v8 = *(a2 + 856);
  v9 = *(a2 + 864);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(v11 + 48))(&v21, v10, v11);
  v13 = v19;
  v14 = v20;
  if (v21 >= 2u)
  {
    v4 = v8;
    v5 = v9;
    v13 = v17;
    v14 = v18;
    if (v21 == 2)
    {
      v4 = v6;
      v5 = v7;
      v13 = v15;
      v14 = v16;
    }
  }

  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  return result;
}

uint64_t sub_217F3267C(uint64_t *a1, __int128 *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  v32 = *a2;
  v33 = v11;
  v34 = a2[2];
  v35 = *(a2 + 48);
  v12 = type metadata accessor for ClassicArticleData(0);
  v13 = 1.0;
  if (v35 <= 2u)
  {
    if (v35 == 1)
    {
      v13 = 0.0;
    }

    else if (v35 == 2)
    {
      v13 = *a4;
    }

    goto LABEL_32;
  }

  v14 = *(a3 + *(v12 + 92));
  if (v35 == 3)
  {
    if (*(a5 + 16))
    {
      v19 = sub_217E8E88C(v34, *(&v34 + 1));
      if (v20)
      {
        v13 = *(*(a5 + 56) + (v19 << 6) + 24);
        goto LABEL_32;
      }
    }

    if (*(v14 + 16))
    {
      v21 = sub_217E8E88C(v34, *(&v34 + 1));
      if (v22)
      {
        v23 = *(v14 + 56) + 80 * v21;
        if ((*(v23 + 56) & 1) == 0)
        {
          if (*(a6 + 16))
          {
            v24 = sub_217E8E904(*(v23 + 48));
            if (v25)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  else if (v35 == 4)
  {
    v15 = (a3 + *(v12 + 56));
    v13 = a4[7];
    v16 = v33 == *v15 && *(&v33 + 1) == v15[1];
    if (!v16 && (sub_217F4B144() & 1) == 0)
    {
      if (*(a5 + 16))
      {
        v17 = sub_217E8E88C(v33, *(&v33 + 1));
        if (v18)
        {
          v13 = *(*(a5 + 56) + (v17 << 6) + 48);
          goto LABEL_32;
        }
      }

      if (!*(v14 + 16) || (v26 = sub_217E8E88C(v33, *(&v33 + 1)), (v27 & 1) == 0) || (v28 = *(v14 + 56) + 80 * v26, (*(v28 + 56) & 1) != 0) || !*(a6 + 16))
      {
        v13 = 1.0;
        goto LABEL_32;
      }

      v24 = sub_217E8E904(*(v28 + 48));
      v13 = 1.0;
      if ((v29 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_24:
      v13 = *(*(a6 + 56) + 8 * v24);
    }
  }

LABEL_32:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *a1;
  result = sub_217F1A4A8(&v32, isUniquelyReferenced_nonNull_native, v13);
  *a1 = v36;
  return result;
}

uint64_t sub_217F328A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7 = *(result + 48);
  if (v7 <= 2)
  {
    return result;
  }

  v9 = *a6;
  if (v7 == 4)
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    if (v14 != a2 || v15 != a3)
    {
      v17 = a7;
      result = sub_217F4B144();
      if ((result & 1) == 0)
      {
        if (!*(a5 + 16) || (result = sub_217E8E88C(v14, v15), (v18 & 1) == 0))
        {
          if (*(v17 + 16))
          {
            result = sub_217E8E88C(v14, v15);
            if (v24)
            {
              v22 = *(v17 + 56);
LABEL_18:
              v23 = v22 + 80 * result;
              if ((*(v23 + 56) & 1) == 0)
              {
                if (*(v9 + 16))
                {
                  return sub_217E8E904(*(v23 + 48));
                }
              }
            }
          }
        }
      }
    }
  }

  else if (v7 == 3)
  {
    v10 = *(result + 32);
    v11 = *(result + 40);
    if (!*(a5 + 16) || (v12 = a7, result = sub_217E8E88C(*(result + 32), v11), a7 = v12, (v13 & 1) == 0))
    {
      if (*(a7 + 16))
      {
        v19 = v10;
        v20 = a7;
        result = sub_217E8E88C(v19, v11);
        if (v21)
        {
          v22 = *(v20 + 56);
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

double sub_217F32A40(char *a1, char *a2, uint64_t a3, int64_t a4)
{
  v32[0] = 2831206;
  v32[1] = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v7 = 2831206;
  v8 = 0xE300000000000000;

  v9 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    *(v9 + 2) = v12;
    v13 = &v9[56 * v11];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    *(v13 + 6) = a1;
    *(v13 + 7) = a2;
    *(v13 + 8) = 0;
    *(v13 + 9) = 0;
    v13[80] = 4;
    v35 = v9;
    v14 = a3;
    a3 = 0;
    sub_217F2E5A0(v14, &v35);
    a1 = v35;
    v11 = *(v35 + 2);
    if (!v11)
    {
      break;
    }

    v7 = 0;
    v15 = v35 + 80;
    v26 = v35 + 80;
    v16 = 0.0;
LABEL_4:
    a2 = &v15[56 * v7];
    v12 = a4;
    while (1)
    {
      v10 = *(a1 + 2);
      if (v7 >= v10)
      {
        break;
      }

      v17 = *(a2 - 6);
      v8 = *(a2 - 5);
      v19 = *(a2 - 4);
      v18 = *(a2 - 3);
      v28 = *(a2 - 2);
      v29 = *(a2 - 1);
      v30 = *a2;

      if (*(v12 + 16))
      {
        sub_217E81030(v17, v8, v19, v18, v28, v29, v30);
        v20 = sub_217E8E88C(v17, v8);
        a3 = v21;

        if (a3)
        {
          sub_217E844C0(*(a4 + 56) + 40 * v20, v31);
          sub_217F3AB48(v31, v32);
          a3 = v33;
          v22 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v23 = (*(v22 + 24))(a3, v22);
          sub_217E810D0(v17, v8, v19, v18, v28, v29, v30);
          v16 = v16 + v23;
          __swift_destroy_boxed_opaque_existential_1(v32);
          v24 = v11 - 1 == v7++;
          v15 = v26;
          if (v24)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

        sub_217E810D0(v17, v8, v19, v18, v28, v29, v30);
        v12 = a4;
      }

      else
      {
      }

      ++v7;
      a2 += 56;
      if (v11 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    v9 = sub_217E8DE90((v10 > 1), v12, 1, v9);
  }

  v16 = 0.0;
LABEL_15:

  return v16;
}

uint64_t sub_217F32CCC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(a1 + 56) + 80 * v11;
        if ((*(v12 + 40) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v28 = v14[1];
      v29 = *v14;
      v15 = *(v12 + 32);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_217E924FC(v16 + 1, 1);
        v2 = v30;
      }

      else
      {
      }

      sub_217F4B224();
      sub_217F4AB24();
      result = sub_217F4B254();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (*(v2 + 48) + 16 * v21);
      *v27 = v29;
      v27[1] = v22;
      *(*(v2 + 56) + 8 * v21) = v15;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v28;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

long double sub_217F32F24(char a1, long double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    return 1.0;
  }

  v7 = a2[77];
  v8 = a2[78];
  v9 = a2[79];
  v10 = a2[80];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v13 >= a3)
  {
    if (v13 != 0.0)
    {
      v7 = v7 * pow(a3 / v13, v10);
    }
  }

  else if (v13 != 1.0)
  {
    v7 = 1.0 - (1.0 - v7) * pow((1.0 - a3) / (1.0 - v13), v9);
  }

  return pow(v7, v8);
}

uint64_t sub_217F3304C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = a4;
    v7 = *(a2 + 144);
    v66 = *(a2 + 128);
    v67 = v7;
    v68 = *(a2 + 160);
    v8 = *(a2 + 168);
    v9 = a4 + 64;
    v10 = 1 << *(a4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a4 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v58 = MEMORY[0x277D84F98];
    v59 = v6;
    v60 = v13;
    v61 = v9;
LABEL_5:
    v15 = v14;
    while (v12)
    {
      v14 = v15;
LABEL_13:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v14 << 6);
      v18 = *(v6 + 48) + 56 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 24);
      v62 = *(v18 + 16);
      v23 = *(v18 + 32);
      v22 = *(v18 + 40);
      v24 = *(v18 + 48);
      v25 = *(*(v6 + 56) + 8 * v17);

      if (*(a5 + 16))
      {
        sub_217E81030(v20, v19, v62, v21, v23, v22, v24);
        v26 = sub_217E8E88C(v20, v19);
        if (v27)
        {
          v55 = v20;
          v56 = v19;
          v28 = *(*(a5 + 56) + 8 * v26);
          v29 = 1.0;
          if (v8 > 0.0)
          {
            v29 = pow(v25, v8);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v63[0] = v58;
          v32 = sub_217E8E88C(v20, v56);
          v33 = *(v58 + 16);
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_37;
          }

          v36 = v31;
          if (*(v58 + 24) >= v35)
          {
            v40 = isUniquelyReferenced_nonNull_native;
            v39 = v31;
            v6 = v59;
            if ((v40 & 1) == 0)
            {
              sub_217E8F918();
              goto LABEL_22;
            }
          }

          else
          {
            sub_217E924FC(v35, isUniquelyReferenced_nonNull_native);
            v37 = sub_217E8E88C(v55, v56);
            if ((v36 & 1) != (v38 & 1))
            {
              goto LABEL_39;
            }

            v32 = v37;
            v39 = v36;
LABEL_22:
            v6 = v59;
          }

          v41 = pow(v28, v29);
          v42 = v41;
          if (v39)
          {
            v43 = v56;

            v58 = *&v63[0];
            *(*(*&v63[0] + 56) + 8 * v32) = v42;
            v44 = v24;
          }

          else
          {
            v45 = *&v63[0];
            *(*&v63[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
            v46 = (v45[6] + 16 * v32);
            v43 = v56;
            *v46 = v55;
            v46[1] = v56;
            *(v45[7] + 8 * v32) = v41;
            v47 = v45[2];
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            v44 = v24;
            if (v48)
            {
              goto LABEL_38;
            }

            v58 = v45;
            v45[2] = v49;
          }

          sub_217E810D0(v55, v43, v62, v21, v23, v22, v44);
          v13 = v60;
          v9 = v61;
          goto LABEL_5;
        }

        sub_217E810D0(v20, v19, v62, v21, v23, v22, v24);
        v15 = v14;
        v6 = v59;
      }

      else
      {

        v15 = v14;
      }

      v13 = v60;
      v9 = v61;
    }

    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        *a3 = v58;

        v50 = *a3;
        v51 = *(*a3 + 16);
        if (!v51)
        {
          goto LABEL_33;
        }

        v52 = sub_217E8E808(*(*a3 + 16), 0);
        v53 = sub_217E97188(v63, v52 + 4, v51, v50);
        v54 = *&v63[0];

        sub_217E7F7A0(v54);
        if (v53 != v51)
        {
          __break(1u);
LABEL_33:
          v52 = MEMORY[0x277D84F90];
        }

        v63[0] = v66;
        v63[1] = v67;
        v64 = v68;
        v65 = v8;
        sub_217F31E6C(v52, v63);
      }

      v12 = *(v9 + 8 * v14);
      ++v15;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_217F4B1C4();
    __break(1u);
  }

  return result;
}

long double sub_217F33468(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, long double a5)
{
  sub_217F340B0(*a4, *(a4 + 2), a3, a1, a2);

  return pow(v6, a5);
}

double sub_217F334B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_217E8E88C(42, 0xE100000000000000);
    if (v4)
    {
      v5 = *(v1 + 56) + 24 * v3;
      v6 = *(v5 + 16);
      if (v6 > 0.0)
      {
        return *(v5 + 8) / v6;
      }
    }
  }

  return v2;
}

uint64_t sub_217F33520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (*(v10 + 16) && (v11 = sub_217E8E88C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
  }

  else
  {
    v17 = swift_endAccess();
    a3(v21, v17);
    v14 = *v21;
    v15 = v21[1];
    v16 = v22;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_217F1A5B0(v15, v16, a1, a2, isUniquelyReferenced_nonNull_native, v14);
    *(a4 + 16) = v20;
  }

  result = swift_endAccess();
  *a5 = v14;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  return result;
}

void sub_217F33654(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = type metadata accessor for ClassicArticleData(0);
  v17 = (a2 + *(v33 + 56));
  v18 = *v17;
  v19 = v17[1];
  v71 = 2831206;
  v72 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v18, v19);
  v55 = a13;
  v56 = a14;
  v57 = v18;
  v58 = v19;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a2;
  v63 = 2831206;
  v64 = 0xE300000000000000;
  v65 = a7;
  v66 = a8;
  v67 = a10;
  v68 = a11;
  v69 = a9;
  sub_217F33520(2831206, 0xE300000000000000, sub_217F3AC50, a3, &v71);

  v20 = *&v71;
  v21 = v72;
  v22 = v73;
  v23 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v23;
  sub_217F1A5B0(v21, v22, v18, v19, isUniquelyReferenced_nonNull_native, v20);
  v25 = *(a2 + *(v33 + 64));
  v74 = v23;
  v39 = a13;
  v40 = a14;
  v41 = a12;
  v42 = a11;
  v43 = v18;
  v44 = v19;
  v45 = a7;
  v46 = &v74;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a2;
  v52 = a8;
  v53 = a10;
  v54 = a9;
  sub_217F2E770(sub_217F3AC94, v38, v25);
  v26 = *(a2 + 8);
  v27 = *(a2 + 16);
  v28 = v74;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *a1;
  sub_217F1A710(v28, v26, v27, v29);

  *a1 = v71;
}

uint64_t sub_217F3389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, Swift::Double a7@<D0>, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a4;
  *(inited + 40) = a5;

  v20 = sub_217F2E804(a1, a2, inited, a8, a9, a10, a11, a12, a7, a13);
  LOBYTE(a4) = v21;
  swift_setDeallocating();
  result = sub_217E97320(inited + 32);
  *a6 = v18;
  *(a6 + 8) = v20;
  *(a6 + 16) = a4 & 1;
  return result;
}

double sub_217F339AC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (a3)
  {
    return *(a5 + 56);
  }

  v11 = *a7;
  if (*(a6 + 16) && (v12 = a1, v13 = a2, v15 = sub_217E8E88C(a1, a2), a1 = v12, v17 = v16, a2 = v13, (v17 & 1) != 0))
  {
    v18 = *(a6 + 56) + (v15 << 6);
    v19 = 48;
    if (a4)
    {
      v19 = 24;
    }

    return *(v18 + v19);
  }

  else
  {
    result = 1.0;
    if (*(a8 + 16))
    {
      v20 = sub_217E8E88C(a1, a2);
      if ((v21 & 1) != 0 && (v22 = *(a8 + 56) + 80 * v20, (*(v22 + 56) & 1) == 0) && *(v11 + 16))
      {
        v23 = sub_217E8E904(*(v22 + 48));
        result = 1.0;
        if (v24)
        {
          return *(*(v11 + 56) + 8 * v23);
        }
      }

      else
      {
        return 1.0;
      }
    }
  }

  return result;
}

void sub_217F33A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *a1;
  v17 = a1[1];
  *&v50 = 2831206;
  *(&v50 + 1) = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v18, v17);
  v19 = v50;
  v55 = v50;
  v20 = *(a2 + 16);

  if (v20 && (v21 = sub_217E8E88C(v18, v17), (v22 & 1) != 0))
  {
    v23 = (*(a2 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    *&v50 = 2831206;
    *(&v50 + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v25, v24);

    v26 = v50;
    v27 = sub_217E8DB18(0, 1, 1, MEMORY[0x277D84F90]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_217E8DB18((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    *&v27[16 * v29 + 32] = v26;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_217E8DB18(0, *(v27 + 2) + 1, 1, v27);
  }

  v31 = *(v27 + 2);
  v30 = *(v27 + 3);
  if (v31 >= v30 >> 1)
  {
    v27 = sub_217E8DB18((v30 > 1), v31 + 1, 1, v27);
  }

  v32 = a16;
  v33 = a10;
  *(v27 + 2) = v31 + 1;
  *&v27[16 * v31 + 32] = v19;
  v54 = v27;
  v35 = *(&v19 + 1);
  v34 = v19;
  if (*(a3 + 8))
  {
    *&v50 = 2831462;
    *(&v50 + 1) = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](a4, a5);
    MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
    MEMORY[0x21CEAEAC0](v18, v17);
    v35 = 0xE300000000000000;
    v34 = 2831462;
    v37 = *(v27 + 2);
    v36 = *(v27 + 3);

    if (v37 >= v36 >> 1)
    {
      v27 = sub_217E8DB18((v36 > 1), v37 + 1, 1, v27);
    }

    *(v27 + 2) = v37 + 1;
    v38 = &v27[16 * v37];
    *(v38 + 4) = 2831462;
    *(v38 + 5) = 0xE300000000000000;
    v54 = v27;
    if (*(a6 + 16) && (v39 = sub_217E8E88C(2831462, 0xE300000000000000), (v40 & 1) != 0))
    {
      sub_217E844C0(*(a6 + 56) + 40 * v39, &v50);
      sub_217F3ADC4(&v50, &qword_27CBF73D0, &qword_217F5A2D8);

      *&v55 = 2831462;
      *(&v55 + 1) = 0xE300000000000000;
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;

      sub_217F3ADC4(&v50, &qword_27CBF73D0, &qword_217F5A2D8);
      v35 = *(&v19 + 1);
      v34 = v19;
    }

    v33 = a10;
    v32 = a16;
  }

  MEMORY[0x28223BE20](v33, v32);

  sub_217F33520(v34, v35, sub_217F3ACE4, a8, &v50);

  v41 = v50;
  v42 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *a7;
  *a7 = 0x8000000000000000;
  sub_217F1A5B0(*(&v41 + 1), v42, v18, v17, isUniquelyReferenced_nonNull_native, *&v41);
  *a7 = v53;
}

void sub_217F33F0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, Swift::Double a9@<D0>, uint64_t a10, uint64_t *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (*a3 == a4 && a3[1] == a5)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_217F4B144();
  }

  v24 = *(a10 + *(type metadata accessor for ClassicArticleData(0) + 92));
  if (*(a6 + 16) && (v25 = sub_217E8E88C(a1, a2), (v26 & 1) != 0))
  {
    v27 = 24;
    if (v23)
    {
      v27 = 48;
    }

    v28 = *(*(a6 + 56) + (v25 << 6) + v27);
  }

  else
  {
    v28 = 1.0;
    if (*(v24 + 16))
    {
      v29 = sub_217E8E88C(a1, a2);
      if (v30)
      {
        v31 = *(v24 + 56) + 80 * v29;
        if ((*(v31 + 56) & 1) == 0)
        {
          if (*(a7 + 16))
          {
            v32 = sub_217E8E904(*(v31 + 48));
            if (v33)
            {
              v28 = *(*(a7 + 56) + 8 * v32);
            }
          }
        }
      }
    }
  }

  v34 = *a11;

  v35 = sub_217F2E804(a1, a2, v34, a12, a13, a14, a15, a16, a9, a17);
  v37 = v36;

  *a8 = v28;
  *(a8 + 8) = v35;
  *(a8 + 16) = v37 & 1;
}

void sub_217F340B0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return;
    }

    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v163 = MEMORY[0x277D84F90];
    while (v15)
    {
LABEL_16:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(a3 + 56) + 80 * (v19 | (v17 << 6));
      if ((*(v20 + 64) & 1) == 0 && (*(v20 + 72) & 1) == 0)
      {
        v165 = sub_217F4B104();
        v169 = v21;
        v22 = sub_217F4B104();
        MEMORY[0x21CEAEAC0](v22);

        if (*(a2 + 16))
        {
          v23 = sub_217E8E88C(v165, v169);
          v25 = v24;

          if (v25)
          {
            v26 = *(*(a2 + 56) + 8 * v23);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v163 = sub_217E8E218(0, *(v163 + 2) + 1, 1, v163);
            }

            v27 = v163;
            v29 = *(v163 + 2);
            v28 = *(v163 + 3);
            if (v29 >= v28 >> 1)
            {
              v27 = sub_217E8E218((v28 > 1), v29 + 1, 1, v163);
            }

            *(v27 + 2) = v29 + 1;
            v163 = v27;
            *&v27[8 * v29 + 32] = v26;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(a3 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_16;
      }
    }

    v58 = *(v163 + 2);
    if (v58)
    {
      v59 = *(v163 + 4);
      v60 = v58 - 1;
      if (v60)
      {
        v61 = (v163 + 40);
        do
        {
          v62 = *v61++;
          v63 = v62;
          if (v62 < v59)
          {
            v59 = v63;
          }

          --v60;
        }

        while (v60);
      }
    }

    goto LABEL_153;
  }

  if (a1 == 2)
  {
    v30 = 1 << *(a3 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a3 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v164 = MEMORY[0x277D84F90];
    while (v32)
    {
LABEL_34:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = *(a3 + 56) + 80 * (v36 | (v34 << 6));
      if ((*(v37 + 64) & 1) == 0 && (*(v37 + 72) & 1) == 0)
      {
        v166 = sub_217F4B104();
        v170 = v38;
        v39 = sub_217F4B104();
        MEMORY[0x21CEAEAC0](v39);

        if (*(a2 + 16))
        {
          v40 = sub_217E8E88C(v166, v170);
          v42 = v41;

          if (v42)
          {
            v43 = *(*(a2 + 56) + 8 * v40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = sub_217E8E218(0, *(v164 + 2) + 1, 1, v164);
            }

            v44 = v164;
            v46 = *(v164 + 2);
            v45 = *(v164 + 3);
            if (v46 >= v45 >> 1)
            {
              v44 = sub_217E8E218((v45 > 1), v46 + 1, 1, v164);
            }

            *(v44 + 2) = v46 + 1;
            v164 = v44;
            *&v44[8 * v46 + 32] = v43;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_157;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(a3 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_34;
      }
    }

    v52 = *(v164 + 2);
    if (v52)
    {
      v53 = *(v164 + 4);
      v54 = v52 - 1;
      if (v54)
      {
        v55 = (v164 + 40);
        do
        {
          v56 = *v55++;
          v57 = v56;
          if (v53 < v56)
          {
            v53 = v57;
          }

          --v54;
        }

        while (v54);
      }
    }

LABEL_153:

    return;
  }

  if (a1 == 3)
  {
    if (*(a3 + 16))
    {
      v8 = sub_217E8E88C(a4, a5);
      if (v9)
      {
        v10 = *(a3 + 56) + 80 * v8;
        v11 = *(v10 + 60);
        v12 = *(v10 + 64);
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      v156 = v11;
      v155 = v12;
      if (*(a3 + 16) && (v66 = sub_217E8E88C(a4, a5), (v67 & 1) != 0))
      {
        v68 = *(a3 + 56) + 80 * v66;
        v157 = *(v68 + 68);
        v64 = *(v68 + 72);
      }

      else
      {
        v157 = 0;
        v64 = 1;
      }
    }

    else
    {
      v156 = 0;
      v157 = 0;
      v64 = 1;
      v155 = 1;
    }

    v154 = v64;
    v69 = 1 << *(a3 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(a3 + 64);
    v72 = (v69 + 63) >> 6;

    v73 = 0;
    v74 = MEMORY[0x277D84F90];
    v75 = a5;
    while (v71)
    {
LABEL_76:
      v77 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v78 = v77 | (v73 << 6);
      v79 = (*(a3 + 48) + 16 * v78);
      if (*v79 != a4 || v79[1] != v75)
      {
        v81 = *(a3 + 56) + 80 * v78;
        v160 = *(v81 + 68);
        v158 = *(v81 + 60);
        v82 = *(v81 + 72);
        v83 = *(v81 + 64);
        v84 = sub_217F4B144();
        v75 = a5;
        if ((v84 & 1) == 0 && (v83 & 1) == 0 && (v82 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_217E8E31C(0, *(v74 + 2) + 1, 1, v74);
          }

          v86 = *(v74 + 2);
          v85 = *(v74 + 3);
          v87 = v86 + 1;
          v75 = a5;
          if (v86 >= v85 >> 1)
          {
            v89 = sub_217E8E31C((v85 > 1), v86 + 1, 1, v74);
            v75 = a5;
            v87 = v86 + 1;
            v74 = v89;
          }

          *(v74 + 2) = v87;
          v88 = &v74[8 * v86];
          *(v88 + 8) = v158;
          *(v88 + 9) = v160;
        }
      }
    }

    while (1)
    {
      v76 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v76 >= v72)
      {

        v90 = *(v74 + 2);
        if (!v90)
        {
          goto LABEL_155;
        }

        v91 = 0;
        v92 = v74 + 36;
        v93 = MEMORY[0x277D84F90];
LABEL_90:
        v94 = &v92[8 * v91];
        v95 = v91;
        while (v95 < *(v74 + 2))
        {
          v167 = sub_217F4B104();
          v171 = v96;
          v97 = sub_217F4B104();
          MEMORY[0x21CEAEAC0](v97);

          if (*(a2 + 16))
          {
            v98 = sub_217E8E88C(v167, v171);
            v100 = v99;

            if (v100)
            {
              v101 = *(*(a2 + 56) + 8 * v98);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v93 = sub_217E8E218(0, *(v93 + 2) + 1, 1, v93);
              }

              v103 = *(v93 + 2);
              v102 = *(v93 + 3);
              if (v103 >= v102 >> 1)
              {
                v93 = sub_217E8E218((v102 > 1), v103 + 1, 1, v93);
              }

              v91 = v95 + 1;
              *(v93 + 2) = v103 + 1;
              *&v93[8 * v103 + 32] = v101;
              v92 = v74 + 36;
              if (v90 - 1 == v95)
              {
LABEL_101:

                v104 = *(v93 + 2);
                if (v104)
                {
                  v105 = *(v93 + 4);
                  v106 = v104 - 1;
                  if (v106)
                  {
                    v107 = (v93 + 40);
                    do
                    {
                      v108 = *v107++;
                      v109 = v108;
                      if (v108 < v105)
                      {
                        v105 = v109;
                      }

                      --v106;
                    }

                    while (v106);
                  }
                }

                goto LABEL_153;
              }

              goto LABEL_90;
            }
          }

          else
          {
          }

          ++v95;
          v94 += 8;
          if (v90 == v95)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_160;
      }

      v71 = *(a3 + 64 + 8 * v76);
      ++v73;
      if (v71)
      {
        v73 = v76;
        goto LABEL_76;
      }
    }

LABEL_158:
    __break(1u);
  }

  else
  {
    if (*(a3 + 16))
    {
      v47 = sub_217E8E88C(a4, a5);
      if (v48)
      {
        v49 = *(a3 + 56) + 80 * v47;
        v50 = *(v49 + 60);
        v51 = *(v49 + 64);
      }

      else
      {
        v50 = 0;
        v51 = 1;
      }

      v156 = v50;
      v155 = v51;
      if (*(a3 + 16) && (v110 = sub_217E8E88C(a4, a5), (v111 & 1) != 0))
      {
        v112 = *(a3 + 56) + 80 * v110;
        v157 = *(v112 + 68);
        v65 = *(v112 + 72);
      }

      else
      {
        v157 = 0;
        v65 = 1;
      }
    }

    else
    {
      v156 = 0;
      v157 = 0;
      v65 = 1;
      v155 = 1;
    }

    v154 = v65;
    v113 = 1 << *(a3 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v115 = v114 & *(a3 + 64);
    v116 = (v113 + 63) >> 6;

    v117 = 0;
    v118 = MEMORY[0x277D84F90];
    v119 = a5;
    while (v115)
    {
LABEL_122:
      v121 = __clz(__rbit64(v115));
      v115 &= v115 - 1;
      v122 = v121 | (v117 << 6);
      v123 = (*(a3 + 48) + 16 * v122);
      if (*v123 != a4 || v123[1] != v119)
      {
        v125 = *(a3 + 56) + 80 * v122;
        v161 = *(v125 + 68);
        v159 = *(v125 + 60);
        v126 = *(v125 + 72);
        v127 = *(v125 + 64);
        v128 = sub_217F4B144();
        v119 = a5;
        if ((v128 & 1) == 0 && (v127 & 1) == 0 && (v126 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_217E8E31C(0, *(v118 + 2) + 1, 1, v118);
          }

          v130 = *(v118 + 2);
          v129 = *(v118 + 3);
          v131 = v130 + 1;
          v119 = a5;
          if (v130 >= v129 >> 1)
          {
            v133 = sub_217E8E31C((v129 > 1), v130 + 1, 1, v118);
            v119 = a5;
            v131 = v130 + 1;
            v118 = v133;
          }

          *(v118 + 2) = v131;
          v132 = &v118[8 * v130];
          *(v132 + 8) = v159;
          *(v132 + 9) = v161;
        }
      }
    }

    while (1)
    {
      v120 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v120 >= v116)
      {

        v134 = *(v118 + 2);
        if (!v134)
        {
LABEL_155:

          sub_217ED34EC(v156 | (v155 << 32), v157 | (v154 << 32));
          return;
        }

        v135 = 0;
        v136 = v118 + 36;
        v137 = MEMORY[0x277D84F90];
LABEL_136:
        v138 = &v136[8 * v135];
        v139 = v135;
        while (v139 < *(v118 + 2))
        {
          v168 = sub_217F4B104();
          v172 = v140;
          v141 = sub_217F4B104();
          MEMORY[0x21CEAEAC0](v141);

          if (*(a2 + 16))
          {
            v142 = sub_217E8E88C(v168, v172);
            v144 = v143;

            if (v144)
            {
              v145 = *(*(a2 + 56) + 8 * v142);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = sub_217E8E218(0, *(v137 + 2) + 1, 1, v137);
              }

              v147 = *(v137 + 2);
              v146 = *(v137 + 3);
              if (v147 >= v146 >> 1)
              {
                v137 = sub_217E8E218((v146 > 1), v147 + 1, 1, v137);
              }

              v135 = v139 + 1;
              *(v137 + 2) = v147 + 1;
              *&v137[8 * v147 + 32] = v145;
              v136 = v118 + 36;
              if (v134 - 1 == v139)
              {
LABEL_147:

                v148 = *(v137 + 2);
                if (v148)
                {
                  v149 = *(v137 + 4);
                  v150 = v148 - 1;
                  if (v150)
                  {
                    v151 = (v137 + 40);
                    do
                    {
                      v152 = *v151++;
                      v153 = v152;
                      if (v149 < v152)
                      {
                        v149 = v153;
                      }

                      --v150;
                    }

                    while (v150);
                  }
                }

                goto LABEL_153;
              }

              goto LABEL_136;
            }
          }

          else
          {
          }

          ++v139;
          v138 += 8;
          if (v134 == v139)
          {
            goto LABEL_147;
          }
        }

        goto LABEL_161;
      }

      v115 = *(a3 + 64 + 8 * v120);
      ++v117;
      if (v115)
      {
        v117 = v120;
        goto LABEL_122;
      }
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

void sub_217F34CC4(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v8 = a1[7];
  v7 = a1[8];
  v9 = a1[6];
  v11 = a1[4];
  v10 = a1[5];

  if (!v10)
  {
    goto LABEL_23;
  }

  v12 = *a3;
  v13 = sub_217E8E88C(v11, v10);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_217E90DD8(v18, v6 & 1);
    v13 = sub_217E8E88C(v11, v10);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_217F4B1C4();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v13;
  sub_217E8EC20();
  v13 = v22;
  if (v19)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    MEMORY[0x21CEAF520](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5268, &unk_217F4BF20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x21CEAF510](v21);
      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = v11;
  v24[1] = v10;
  v25 = (v23[7] + 24 * v13);
  *v25 = v9;
  v25[1] = v8;
  v25[2] = v7;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v17)
  {
    v23[2] = v27;
    if (v4 != 1)
    {
      v6 = a1 + 13;
      v28 = 1;
      while (v28 < a1[2])
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(v6 - 2);
        v11 = *(v6 - 4);
        v10 = *(v6 - 3);

        if (!v10)
        {
          goto LABEL_23;
        }

        v29 = *a3;
        v30 = sub_217E8E88C(v11, v10);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v17 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v17)
        {
          goto LABEL_24;
        }

        v19 = v31;
        if (v29[3] < v34)
        {
          sub_217E90DD8(v34, 1);
          v30 = sub_217E8E88C(v11, v10);
          if ((v19 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v19)
        {
          goto LABEL_9;
        }

        v36 = *a3;
        *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v37 = (v36[6] + 16 * v30);
        *v37 = v11;
        v37[1] = v10;
        v38 = (v36[7] + 24 * v30);
        *v38 = v9;
        v38[1] = v8;
        v38[2] = v7;
        v39 = v36[2];
        v17 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v17)
        {
          goto LABEL_25;
        }

        ++v28;
        v36[2] = v40;
        v6 += 5;
        if (v4 == v28)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_26;
    }

LABEL_23:

    return;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000001BLL, 0x8000000217F5D3B0);
  sub_217F4AE54();
  MEMORY[0x21CEAEAC0](39, 0xE100000000000000);
  sub_217F4AE94();
  __break(1u);
}

void sub_217F35070(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217F4AD94() + 1) & ~v5;
    do
    {
      sub_217F4B224();

      sub_217F4AB24();
      v9 = sub_217F4B254();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_217F35220(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_217F4AD94() + 1) & ~v5;
    while (1)
    {
      v9 = 32 * v6;
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *(v10 + 13);
      *v25 = *v10;
      *&v25[13] = v11;
      sub_217F4B224();
      sub_217E98168(v25, v24);
      sub_217F4AB24();
      v12 = sub_217F4B254();
      result = sub_217F23FA4(v25);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + v9);
        if (32 * v3 != v9 || v15 >= v16 + 2)
        {
          v17 = v16[1];
          *v15 = *v16;
          v15[1] = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_18;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_18:
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_217F35410(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_217F35460(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_217F354A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_217F35500(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_217F3555C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_217F355A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_217F35600(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = a6[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a7;
  *(v7 + 28) = BYTE4(a4);
  *(v7 + 24) = a4;
  *(a6[7] + 8 * result) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_217F35658(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ClassicArticleData(0);
  result = sub_217ECC728(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_217F356F8(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = a3[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_217F35758(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a6[7] + 24 * result;
  *v8 = a7;
  *(v8 + 8) = a4;
  *(v8 + 16) = a5 & 1;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_217F357B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_217F357FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F372D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_217F4B0F4();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_217F35930(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_217F35930(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_217F3610C(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_217F35E8C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_217E8DA14(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_217E8DA14((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_217F35E8C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_217F35E8C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_217F36080(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_217F3610C(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_217F36120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53B0, &qword_217F4CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_217F36224(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_217F36C60(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_217F362B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_217F36358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5440, &qword_217F4CCB0);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217F3659C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53C8, &unk_217F5A300);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v4 + 56) + 40 * v16;
    v21 = *(v20 + 8);
    v38 = *v20;
    v37 = *(v20 + 16);
    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v18;
    v32[1] = v19;
    v33 = *(v9 + 56) + 40 * v27;
    *v33 = v38;
    *(v33 + 8) = v21;
    *(v33 + 16) = v37;
    *(v33 + 24) = v22;
    *(v33 + 32) = v23;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217F36838(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5350, &qword_217F5A2D0);
  result = sub_217F4AED4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + (v16 << 6));
    v34 = *v21;
    v35 = v21[1];
    *v36 = v21[2];
    *&v36[9] = *(v21 + 41);
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = (*(v9 + 56) + (v25 << 6));
    *v31 = v34;
    v31[1] = v35;
    v31[2] = *v36;
    *(v31 + 41) = *&v36[9];
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_217F36A9C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_217F36C60((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_217F36224(v13, v6, a2, a1);

    MEMORY[0x21CEAF6B0](v13, -1, -1);
  }

  return v11;
}

void sub_217F36C60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_217F4B224();

      sub_217F4AB24();
      v26 = sub_217F4B254();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_217F3703C(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_217F4B224();

      sub_217F4AB24();
      v39 = sub_217F4B254();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_217F4B144() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_217F3703C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
  result = sub_217F4ADC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_217F4B224();

    sub_217F4AB24();
    result = sub_217F4B254();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_217F372EC(uint64_t a1, char a2, uint64_t a3)
{
  v95 = a3;
  LOBYTE(v3) = a2;
  v5 = 2831206;
  v101 = type metadata accessor for ClassicArticleData(0);
  v102 = sub_217F3AB60();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  sub_217E9D964(a1, boxed_opaque_existential_1);
  v7 = v101;
  v8 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v9 = (*(v8 + 112))(v7, v8);
  v11 = v10;
  v97 = 2831206;
  v98 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v12 = 2831206;
  v13 = 0xE300000000000000;
  v14 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    *(v14 + 2) = v17;
    v18 = &v14[56 * v16];
    *(v18 + 4) = v12;
    *(v18 + 5) = v13;
    *(v18 + 6) = v9;
    *(v18 + 7) = v11;
    *(v18 + 8) = 0;
    *(v18 + 9) = 0;
    v18[80] = 4;
    v99 = v14;
    if (v3 == 25)
    {
      v19 = 0xED00006E6F697469;
      v20 = 0x6445664F74736542;
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_9;
      }

      v19 = 0xEF736569726F7453;
      v20 = 0x676E69646E657254;
    }

    v97 = v5 + 768;
    v98 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v20, v19);

    v21 = v97;
    v22 = v98;
    v11 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v11 >= v23 >> 1)
    {
      v14 = sub_217E8DE90((v23 > 1), v11 + 1, 1, v14);
    }

    *(v14 + 2) = v11 + 1;
    v24 = &v14[56 * v11];
    *(v24 + 4) = v21;
    *(v24 + 5) = v22;
    *(v24 + 3) = 0u;
    *(v24 + 4) = 0u;
    v24[80] = 5;
    v99 = v14;
LABEL_9:
    v25 = v101;
    v26 = v102;
    v5 = v100;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v27 = (*(v26 + 120))(v25, v26);
    v9 = &v94;
    MEMORY[0x28223BE20](v27, v28);
    v93[2] = v100;
    sub_217F3F6FC(sub_217F3ABB8, v93, v27);
    v17 = v29;

    v16 = *(v17 + 16);
    v14 = MEMORY[0x277D84F90];
    if (!v16)
    {
      break;
    }

    v30 = 0;
    v13 = v17 + 32;
    v3 = &_s14descr2829CD401O7FeatureON;
    while (1)
    {
      v15 = *(v17 + 16);
      if (v30 >= v15)
      {
        break;
      }

      v11 = *(v13 + 8 * v30);
      v9 = *(v11 + 16);
      v5 = *(v14 + 2);
      v12 = v9 + v5;
      if (__OFADD__(v5, v9))
      {
        goto LABEL_95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v14 + 3) >> 1)
      {
        if (*(v11 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 <= v12)
        {
          v32 = v9 + v5;
        }

        else
        {
          v32 = v5;
        }

        v14 = sub_217E8DE90(isUniquelyReferenced_nonNull_native, v32, 1, v14);
        if (*(v11 + 16))
        {
LABEL_23:
          v15 = *(v14 + 2);
          if (((*(v14 + 3) >> 1) - v15) < v9)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v33 = *(v14 + 2);
            v34 = __OFADD__(v33, v9);
            v15 = v9 + v33;
            if (v34)
            {
              goto LABEL_98;
            }

            *(v14 + 2) = v15;
          }

          goto LABEL_12;
        }
      }

      if (v9)
      {
        goto LABEL_96;
      }

LABEL_12:
      if (v16 == ++v30)
      {
        goto LABEL_27;
      }
    }

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
    v14 = sub_217E8DE90((v15 > 1), v17, 1, v14);
  }

LABEL_27:

  sub_217E80F38(v14);
  v35 = v101;
  v36 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v37 = (*(v36 + 40))(v35, v36);
  if (v38)
  {
    goto LABEL_60;
  }

  v39 = *(v95 + 16);
  if (v37 < 1)
  {
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v37 <= v39)
  {
    v5 = v99;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_113;
  }

LABEL_38:
  if (v39 <= -9.22337204e18)
  {
    goto LABEL_101;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v44 = *(v95 + 8);
  if (v37 <= v39)
  {
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v44 < 9.22337204e18)
  {
    if (v37 <= v44)
    {
      v5 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
      }

      v46 = *(v5 + 16);
      v45 = *(v5 + 24);
      if (v46 >= v45 >> 1)
      {
        v5 = sub_217E8DE90((v45 > 1), v46 + 1, 1, v5);
      }

      *(v5 + 16) = v46 + 1;
      v42 = v5 + 56 * v46;
      v43 = xmmword_217F5A200;
      goto LABEL_59;
    }

LABEL_51:
    if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        if (v37 > v44)
        {
          v5 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
          }

          v48 = *(v5 + 16);
          v47 = *(v5 + 24);
          if (v48 >= v47 >> 1)
          {
            v5 = sub_217E8DE90((v47 > 1), v48 + 1, 1, v5);
          }

          *(v5 + 16) = v48 + 1;
          v42 = v5 + 56 * v48;
          v43 = xmmword_217F5A210;
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
LABEL_63:
      v55 = *(v5 + 16);
      v54 = *(v5 + 24);
      if (v55 >= v54 >> 1)
      {
        v5 = sub_217E8DE90((v54 > 1), v55 + 1, 1, v5);
      }

      *(v5 + 16) = v55 + 1;
      v56 = v5 + 56 * v55;
      v57 = xmmword_217F5A230;
      goto LABEL_71;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
LABEL_34:
  v41 = *(v5 + 16);
  v40 = *(v5 + 24);
  if (v41 >= v40 >> 1)
  {
    v5 = sub_217E8DE90((v40 > 1), v41 + 1, 1, v5);
  }

  *(v5 + 16) = v41 + 1;
  v42 = v5 + 56 * v41;
  v43 = xmmword_217F5A1F0;
LABEL_59:
  *(v42 + 32) = v43;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0u;
  *(v42 + 80) = 0;
  v99 = v5;
LABEL_60:
  v49 = v101;
  v50 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v51 = (*(v50 + 56))(v49, v50);
  if (v51 != 2)
  {
    v52 = v51;
    v5 = v99;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (v52)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_63;
    }

    if ((v53 & 1) == 0)
    {
      v5 = sub_217E8DE90(0, *(v5 + 16) + 1, 1, v5);
    }

    v59 = *(v5 + 16);
    v58 = *(v5 + 24);
    if (v59 >= v58 >> 1)
    {
      v5 = sub_217E8DE90((v58 > 1), v59 + 1, 1, v5);
    }

    *(v5 + 16) = v59 + 1;
    v56 = v5 + 56 * v59;
    v57 = xmmword_217F5A220;
LABEL_71:
    *(v56 + 32) = v57;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = 0;
    v99 = v5;
  }

  v60 = v101;
  v61 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  if ((*(v61 + 64))(v60, v61))
  {
    v62 = v101;
    v63 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v64 = (*(v63 + 112))(v62, v63);
    v97 = 2831718;
    v98 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v64);

    v65 = v97;
    v66 = v98;
    v67 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_217E8DE90(0, *(v67 + 2) + 1, 1, v67);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_217E8DE90((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = v65;
    *(v70 + 5) = v66;
    *(v70 + 3) = 0u;
    *(v70 + 4) = 0u;
    v70[80] = 0;
    v99 = v67;
  }

  v71 = v101;
  v72 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  if ((*(v72 + 48))(v71, v72))
  {
    v73 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_217E8DE90(0, *(v73 + 2) + 1, 1, v73);
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_217E8DE90((v74 > 1), v75 + 1, 1, v73);
    }

    *(v73 + 2) = v75 + 1;
    v76 = &v73[56 * v75];
    *(v76 + 2) = xmmword_217F5A240;
    *(v76 + 3) = 0u;
    *(v76 + 4) = 0u;
    v76[80] = 0;
    v99 = v73;
  }

  v77 = v101;
  v78 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v79 = (*(v78 + 24))(v77, v78);
  if (v79)
  {
    v80 = *(v79 + 16);
    if (v80)
    {
      v96 = MEMORY[0x277D84F90];
      v81 = v79;
      sub_217EA0D80(0, v80, 0);
      v82 = v96;
      v95 = v81;
      v83 = (v81 + 40);
      do
      {
        v84 = *(v83 - 1);
        v85 = *v83;
        v97 = 724656486;
        v98 = 0xE400000000000000;

        MEMORY[0x21CEAEAC0](v84, v85);

        v86 = v97;
        v87 = v98;
        v96 = v82;
        v89 = *(v82 + 16);
        v88 = *(v82 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_217EA0D80((v88 > 1), v89 + 1, 1);
          v82 = v96;
        }

        *(v82 + 16) = v89 + 1;
        v90 = v82 + 56 * v89;
        *(v90 + 32) = v86;
        *(v90 + 40) = v87;
        *(v90 + 48) = 0u;
        *(v90 + 64) = 0u;
        *(v90 + 80) = 1;
        v83 += 2;
        --v80;
      }

      while (v80);
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    sub_217E80F38(v82);
  }

  v91 = v99;
  __swift_destroy_boxed_opaque_existential_1(v100);
  return v91;
}

uint64_t sub_217F37DD8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[3];
      v10[2] = v2[2];
      v10[3] = v3;
      v11[0] = v2[4];
      *(v11 + 9) = *(v2 + 73);
      v4 = *v2;
      v5 = v2[1];
      v2 += 6;
      v10[0] = v4;
      v10[1] = v5;
      sub_217E98218(v10, v8);
      sub_217F19600(v6, v10);
      v8[2] = v6[2];
      v8[3] = v6[3];
      v9[0] = v7[0];
      *(v9 + 9) = *(v7 + 9);
      v8[0] = v6[0];
      v8[1] = v6[1];
      result = sub_217E98274(v8);
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_217F37E7C(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t, uint64_t, __int128 *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v44 = MEMORY[0x277D84F90];
    sub_217EA0844(0, v2, 0);
    v4 = v44;
    v5 = v3 + 64;
    v6 = sub_217F4AD84();
    v7 = 0;
    v39 = *(v3 + 36);
    v32 = v3 + 72;
    v33 = v2;
    v34 = v3 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v39 != *(v3 + 36))
      {
        goto LABEL_23;
      }

      v36 = v7;
      v10 = (*(v3 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v3 + 56) + 24 * v6;
      v37 = *v13;
      v14 = *(v13 + 16);

      v40 = v37;
      v41 = v14;
      v15 = a2(&v42, v12, v11, &v40);
      v17 = v16;

      v18 = v42;
      v19 = v43;
      v44 = v4;
      v20 = v3;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      v23 = v4;
      if (v22 >= v21 >> 1)
      {
        v38 = v42;
        sub_217EA0844((v21 > 1), v22 + 1, 1);
        v18 = v38;
        v23 = v44;
      }

      *(v23 + 16) = v22 + 1;
      v24 = v23 + 40 * v22;
      *(v24 + 32) = v15;
      *(v24 + 40) = v17;
      *(v24 + 48) = v18;
      *(v24 + 64) = v19;
      v8 = 1 << *(v20 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v3 = v20;
      v5 = v34;
      v25 = *(v34 + 8 * v9);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v4 = v23;
      if (v39 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v8 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v9 << 6;
        v28 = v9 + 1;
        v29 = (v32 + 8 * v9);
        while (v28 < (v8 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_217F3AB3C(v6, v39, 0);
            v8 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_217F3AB3C(v6, v39, 0);
      }

LABEL_4:
      v7 = v36 + 1;
      v6 = v8;
      if (v36 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_217F38150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_217F194B0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_217F381C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 40))(a3, *(a4 + 8));
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5398, &qword_217F4CC08);
  v4 = sub_217F4AEA4();

  return v4;
}

void sub_217F38328(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v16 = *v14;
      v15 = v14[1];
      sub_217F4B224();

      sub_217F4AB24();
      v17 = sub_217F4B254();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:
          sub_217F36838(a1, a2, v27, a3);
          return;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_217F38528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v31 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v29 = *(*(a3 + 56) + (v14 << 6) + 56);
      sub_217F4B224();

      sub_217F4AB24();
      v18 = sub_217F4B254();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if ((*(v31 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v28 = v14;
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a4 + 48) + 16 * v20);
          v23 = *v22 == v17 && v22[1] == v16;
          if (v23 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v31 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v29)
        {
          *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
          if (__OFADD__(v27++, 1))
          {
            __break(1u);
LABEL_27:
            sub_217F36838(a1, a2, v27, a3);
            return;
          }
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_217F38740(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = sub_217F362B4(v17, v11, a1, a2, a4);
      MEMORY[0x21CEAF6B0](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      return v15;
    }
  }

  MEMORY[0x28223BE20](v13, v14);
  bzero(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v15 = a3(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v15;
}

uint64_t sub_217F38910(void *a1, int64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, const void *a7, __int128 *a8, uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double *a17, unsigned __int8 *a18, double a19, double a20, uint64_t a21, void *a22, uint64_t a23, char a24, double a25, unsigned __int8 a26, int64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v447 = a4;
  v458 = *&a9;
  v455 = a6;
  v472 = a2;
  v438 = a1;
  v468 = a30;
  v473 = a20;
  v471 = a22;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v446 = &v406 - v35;
  v36 = COERCE_DOUBLE(sub_217F4A9F4());
  v37 = *(*&v36 - 8);
  v444 = v36;
  v445 = v37;
  MEMORY[0x28223BE20](*&v36, v38);
  v437 = &v406 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v479, a7, 0x3CBuLL);
  memcpy(v484, a7, sizeof(v484));
  v40 = a8[3];
  v480[2] = a8[2];
  v480[3] = v40;
  v481 = *(a8 + 8);
  v41 = *a8;
  v480[1] = a8[1];
  v480[0] = v41;
  v470 = *a17;
  v415 = *a18;
  v42 = *(a18 + 1);
  v414 = *(a18 + 2);
  v43 = COERCE_DOUBLE(type metadata accessor for ClassicArticleData(0));
  v44 = *(a3 + *(*&v43 + 64));

  *&v46 = COERCE_DOUBLE(sub_217E97288(v45));
  v435 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_217F4BC20;
  v48 = a3 + *(*&v43 + 56);
  v49 = *v48;
  v50 = *(v48 + 8);
  *(v47 + 32) = *v48;
  *(v47 + 40) = v50;

  v474 = sub_217ED150C(v47, v46);
  swift_setDeallocating();
  sub_217E97320(v47 + 32);
  swift_deallocClassInstance();
  memcpy(v477, a7, 0x3CBuLL);
  v51 = v438;
  v460 = a29;
  sub_217F32598(v438, v477, v478);
  v482[8] = v479[32];
  v482[9] = v479[33];
  v482[10] = v479[34];
  v482[4] = v479[28];
  v482[5] = v479[29];
  v482[6] = v479[30];
  v482[7] = v479[31];
  v482[0] = v479[24];
  v482[1] = v479[25];
  v482[2] = v479[26];
  v482[3] = v479[27];
  v477[8] = v479[32];
  v477[9] = v479[33];
  v477[10] = v479[34];
  v477[4] = v479[28];
  v477[5] = v479[29];
  v52 = *v478;
  v53 = *&v478[1];
  v477[6] = v479[30];
  v477[7] = v479[31];
  v54 = *&v478[2];
  v452 = *&v478[3];
  v477[0] = v479[24];
  v477[1] = v479[25];
  v55 = *&v478[4];
  v56 = *&v478[5];
  v483 = *&v479[35];
  *&v477[11] = *&v479[35];
  v477[2] = v479[26];
  v477[3] = v479[27];
  v471 = sub_217F31550(a3, *&v473, v471, v477);
  v57 = sub_217F372EC(a3, 75, v480);
  v475[2] = a3;
  v475[3] = v480;
  *&v475[4] = v458;
  *&v475[5] = v470;
  v58 = sub_217ECCF40(MEMORY[0x277D84F98], sub_217F3AAB8, v475, v57);

  v470 = *&v49;
  v473 = v50;
  v59 = *&v50;
  v60 = v51;
  v456 = *&v46;
  v449 = sub_217F32A40(v49, v59, v46, v472);
  LODWORD(v454) = *(a3 + 59);
  v467 = v43;
  if (LODWORD(v454) != 1)
  {
    goto LABEL_5;
  }

  v61 = v51[3];
  v62 = v51[4];
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v63 = (*(v62 + 64))(v61, v62);
  LOBYTE(v61) = sub_217EA3608(*&v470, *&v473, v63);

  if ((v61 & 1) == 0)
  {
    v67 = v60[3];
    v68 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v67);
    (*(v68 + 48))(v477, v67, v68);
    v43 = v467;
    if (LOBYTE(v477[0]) != 1)
    {
      v97 = v60[3];
      v98 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v97);
      v99 = (*(v98 + 56))(v97, v98);
      LOBYTE(v97) = sub_217EA3608(*&v470, *&v473, v99);

      v65 = *(a3 + *(*&v43 + 68));
      if (v97)
      {
        v66 = 1;
        v64 = v467;
        goto LABEL_7;
      }

      v64 = v467;
      goto LABEL_6;
    }

LABEL_5:
    v65 = *(a3 + *(*&v43 + 68));
    v64 = v43;
LABEL_6:
    v66 = 0;
    goto LABEL_7;
  }

  v64 = v467;
  v65 = *(a3 + *(*&v467 + 68));
  v66 = 1;
LABEL_7:
  v69 = *(v65 + 16);
  v434 = v58;
  if (v69 && (v70 = sub_217E8EB28(v66), (v71 & 1) != 0))
  {
    v464 = *(*(v65 + 56) + 8 * v70);
  }

  else
  {
    v464 = sub_217ECC3C4(MEMORY[0x277D84F90]);
  }

  v72 = *(a3 + 58);
  LODWORD(v428) = v72;
  if (v72 == 2 || (v72 & 1) == 0)
  {
    v73 = 0;
  }

  else
  {
    v73 = *(a3 + *(*&v64 + 100)) ^ 1;
  }

  v74 = *(a3 + 8);
  v440 = *(a3 + 16);
  v441 = *&v74;
  v75 = *(a3 + *(*&v64 + 80));
  v76 = *&v64;
  v77 = *(a3 + *(*&v64 + 84));
  v79 = v76[23];
  v78 = v76[24];
  v80 = a3;
  v81 = *(a3 + v78);
  v461 = v80;
  v413 = *(v80 + v79);
  v82 = sub_217F32CCC(v413);
  v419 = 0;
  v436 = COERCE_DOUBLE(_s14descr2829CD401O14CohortProviderCMa());
  v83 = swift_allocObject();
  *(v83 + 16) = v464;
  *(v83 + 32) = v66;
  v84 = v473;
  *(v83 + 40) = v470;
  *(v83 + 48) = v84;
  memcpy(v477, v484, 0x3CBuLL);
  nullsub_154();
  v85 = memcpy((v83 + 56), v477, 0x3CBuLL);
  *(v83 + 1027) = v73 & 1;
  LODWORD(v439) = v75;
  *(v83 + 1028) = v75;
  *(v83 + 1029) = v77;
  *(v83 + 1030) = v81;
  *(v83 + 1032) = v82;
  v469 = v83;
  *(v83 + 1040) = a24 & 1;
  v416 = v42;
  v432 = v55;
  v433 = v52;
  v430 = v53;
  v431 = v54;
  v429 = v56;
  if ((v479[4] & 1) != 0 && *(v82 + 16))
  {
    MEMORY[0x28223BE20](v85, v86);
    *(&v406 - 80) = v87;
    *(&v406 - 9) = v479;
    *(&v406 - 64) = LOBYTE(v439);
    *(&v406 - 63) = v77;
    *(&v406 - 62) = v81;
    v88 = v470;
    *(&v406 - 7) = v82;
    *(&v406 - 6) = v88;
    *(&v406 - 5) = v473;
    *(&v406 - 32) = v66;
    *(&v406 - 31) = v89;
    v90 = v440;
    *(&v406 - 3) = v441;
    *(&v406 - 2) = v90;

    v91 = v464;

    v92 = v419;
    sub_217F37E7C(v91, sub_217F3AADC);
    if (v92)
    {
      goto LABEL_292;
    }

    v94 = v93;

    if (*(v94 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5370, &qword_217F4CBD8);
      v95 = sub_217F4AED4();
    }

    else
    {
      v95 = MEMORY[0x277D84F98];
    }

    v478[0] = v95;

    sub_217F34CC4(v100, 1, v478);
    v419 = 0;

    v96 = v478[0];
    *(v469 + 24) = v478[0];
  }

  else
  {
    v96 = v464;
    *(v469 + 24) = v464;
    swift_bridgeObjectRetain_n();
  }

  v426 = a28;
  v472 = a27;
  v466 = a23;
  v427 = a21;
  v448 = a19;
  v459 = a26;
  v453 = a25;
  v101 = 1 << *(v96 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v96 + 64);
  v104 = *(&v479[54] + 1);
  v105 = *(&v479[55] + 1);
  v450 = *(&v479[57] + 1);
  v465 = *&v479[57];
  v462 = *(&v479[45] + 1);
  v457 = *(&v479[58] + 1);
  v463 = *&v479[58];
  v106 = (v101 + 63) >> 6;
  LODWORD(v451) = LOBYTE(v479[56]) ^ 1 | BYTE8(v479[60]) & 1;
  v107 = 1.0;
  if (*(&v479[54] + 1) != 0.0)
  {
    v107 = *(&v479[54] + 1);
  }

  v443 = v107;

  v108 = 0;
  v109 = 0.0;
  v110 = 0.0;
  v111 = 0.0;
  while (v103)
  {
LABEL_36:
    v117 = __clz(__rbit64(v103));
    v103 &= v103 - 1;
    v118 = v117 | (v108 << 6);
    v119 = (*(v96 + 48) + 16 * v118);
    v120 = *v119;
    v121 = v119[1];
    if (*v119 != 42 || v121 != 0xE100000000000000)
    {
      v112 = (*(v96 + 56) + 24 * v118);
      v114 = v112[1];
      v113 = v112[2];
      v115 = *v112;
      if ((sub_217F4B144() & 1) == 0)
      {
        v122 = 0.0;
        if ((LOBYTE(v451) & 1) == 0 && v471[2])
        {

          v123 = sub_217E8E88C(v120, v121);
          v124 = 0.0;
          if (v125)
          {
            v124 = *(v471[7] + 8 * v123);
          }

          v442 = v124;

          v122 = v442;
        }

        v126 = v104 == 0.0 || v113 <= 0.0;
        v127 = (v115 * v122 + v114 * (1.0 - v122)) / v113;
        if (v126)
        {
          v127 = 0.0;
        }

        v111 = v111 + v443;
        v110 = v110 + v127 * v443;
        v109 = v109 + 1.0;
      }
    }
  }

  while (1)
  {
    v116 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      break;
    }

    if (v116 >= v106)
    {

      v128 = pow(v457 + v105 * v109 + (1.0 - v105) * v111, v462);
      v417 = v104;
      if (v128 <= 0.0)
      {
        v129 = 0.0;
        v130 = v450;
        if (v463 > 0.0)
        {
          goto LABEL_54;
        }

LABEL_52:
        v131 = v465;
      }

      else
      {
        v129 = v110 / v128;
        v130 = v450;
        if (v463 <= 0.0)
        {
          goto LABEL_52;
        }

LABEL_54:
        v131 = v465;
        if (v130 > 0.0)
        {
          v132 = v463 + -1.0;
          v133 = exp2(-v449 / v130);
          v131 = v465 * (v132 * v133 + 1.0);
        }
      }

      v134 = v469;
      v135 = 0;
      v451 = (1.0 - v131) * v129 + v131 * sub_217F334B8(v469);
      v136 = *(v134 + 24);
      v137 = 1 << *(v136 + 32);
      v138 = -1;
      if (v137 < 64)
      {
        v138 = ~(-1 << v137);
      }

      v139 = v138 & *(v136 + 64);
      v140 = (v137 + 63) >> 6;
      v141 = 0.0;
      v142 = 0.0;
      v143 = 0.0;
      while (v139)
      {
LABEL_65:
        v149 = __clz(__rbit64(v139));
        v139 &= v139 - 1;
        v150 = v149 | (v135 << 6);
        v151 = (*(v136 + 48) + 16 * v150);
        if (*v151 != 42 || v151[1] != 0xE100000000000000)
        {
          v144 = (*(v136 + 56) + 24 * v150);
          v146 = v144[1];
          v145 = v144[2];
          v147 = *v144;
          if ((sub_217F4B144() & 1) == 0)
          {
            v152 = v417 == 0.0 || v145 <= 0.0;
            v153 = (v147 + v146 * 0.0) / v145;
            if (v152)
            {
              v153 = 0.0;
            }

            v143 = v143 + v443;
            v142 = v142 + v153 * v443;
            v141 = v141 + 1.0;
          }
        }
      }

      while (1)
      {
        v148 = v135 + 1;
        if (__OFADD__(v135, 1))
        {
          goto LABEL_284;
        }

        if (v148 >= v140)
        {
          break;
        }

        v139 = *(v136 + 64 + 8 * v148);
        ++v135;
        if (v139)
        {
          v135 = v148;
          goto LABEL_65;
        }
      }

      v154 = pow(v457 + v105 * v141 + (1.0 - v105) * v143, v462);
      if (v154 <= 0.0)
      {
        v155 = v446;
        if (v463 <= 0.0)
        {
          v422 = 0.0;
          goto LABEL_81;
        }

        v422 = 0.0;
      }

      else
      {
        v155 = v446;
        v422 = v142 / v154;
        if (v463 <= 0.0)
        {
          goto LABEL_81;
        }
      }

      if (v450 > 0.0)
      {
        v156 = v463 + -1.0;
        v157 = exp2(-v449 / v450);
        v465 = v465 * (v156 * v157 + 1.0);
      }

LABEL_81:
      v421 = sub_217F334B8(v469);
      v158 = 696;
      if (LODWORD(v454))
      {
        v158 = 720;
      }

      v159 = *(v479 + v158);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v161 = *(AssociatedConformanceWitness + 32);
      v162 = swift_checkMetadataState();
      v163 = v161(v162, AssociatedConformanceWitness);
      if (*(&v479[44] + 1) > 0.0 && *&v479[44] > 0.0)
      {
        v164 = *(&v479[44] + 1) + -1.0;
        v159 = v159 * (v164 * exp2(-v163 / *&v479[44]) + 1.0);
      }

      v165 = v60[3];
      v166 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v165);
      v167 = (*(v166 + 8))(v165, v166);
      v168 = sub_217EA3608(*&v470, *&v473, v167);

      if (v168)
      {
        v169 = *(&v479[17] + 1);
      }

      else
      {
        v169 = 0.0;
      }

      v170 = v60[3];
      v171 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v170);
      v172 = *(v171 + 8);
      v173 = *&v456;

      v174 = v172(v170, v171);
      v175 = sub_217F36A9C(v174, v173);

      v176 = v175[2];

      if (v176)
      {
        v177 = v461;
        v178 = v445;
        if (v176 == 2)
        {
          v179 = *&v479[50];
        }

        else if (v176 == 1)
        {
          v179 = *&v479[49];
        }

        else
        {
          v179 = *(&v479[49] + 1);
        }
      }

      else
      {
        v179 = *(&v479[50] + 1);
        v177 = v461;
        v178 = v445;
      }

      v180 = v60[3];
      v181 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v180);
      v182 = (*(v181 + 16))(v180, v181);
      v183 = sub_217F36A9C(v182, *&v456);

      v184 = v183[2];

      if ((v168 & 1) == 0)
      {
        v185 = v60[3];
        v186 = v60[4];
        __swift_project_boxed_opaque_existential_1(v60, v185);
        v187 = (*(v186 + 16))(v185, v186);
        LOBYTE(v185) = sub_217EA3608(*&v470, *&v473, v187);

        v184 += v185 & 1;
      }

      if (v184)
      {
        v188 = *&v467;
        if (v184 == 2)
        {
          v189 = *&v479[2];
        }

        else if (v184 == 1)
        {
          v189 = *&v479[1];
        }

        else
        {
          v189 = *(&v479[1] + 1);
        }
      }

      else
      {
        v189 = *(&v479[2] + 1);
        v188 = *&v467;
      }

      v190 = v444;
      v191 = 0.0;
      if (v459)
      {
        v192 = 0.0;
      }

      else
      {
        v192 = *&v479[51];
      }

      v193 = *&v479[47];
      v194 = *(&v479[46] + 1);
      v195 = *(v479 + 1);
      v457 = *(&v479[47] + 1) + v192 + v159 + *&v479[47] + *(&v479[46] + 1) + *(v479 + 1);
      if (v457 > 0.0)
      {
        v196 = *(v177 + v188[26]);
        v197 = *&v479[48] * v196;
        v126 = v196 <= 0.0;
        v198 = 0.0;
        v199 = 1.0;
        if (v126)
        {
          v199 = 0.0;
        }

        v200 = v197 + *(&v479[48] + 1) * v199;
        if ((v459 & 1) == 0)
        {
          v198 = v453;
        }

        v191 = (v198 * *&v479[51] + v451 * v159 + v179 * *&v479[47] + v169 * *(&v479[46] + 1) + v189 * *(v479 + 1) + *(&v479[47] + 1) * v200) / v457;
      }

      sub_217F3AD5C(v177 + v188[13], v155, &qword_27CBF54C0, &qword_217F4D500);
      v201 = *(*&v178 + 48);
      v202 = v201(v155, 1, *&v190);
      v450 = v159;
      v445 = v179;
      *&v446 = v169;
      v443 = v195;
      v444 = v194;
      v442 = v189;
      v463 = v191;
      if (v202 == 1)
      {
        v203 = v155;
        v204 = v437;
        (*(*&v178 + 16))(v437, COERCE_DOUBLE(*&v448), COERCE_DOUBLE(*&v190));
        v205 = v201(v203, 1, *&v190);
        v206 = v204;
        if (v205 != 1)
        {
          sub_217F3ADC4(v203, &qword_27CBF54C0, &qword_217F4D500);
        }
      }

      else
      {
        v206 = v437;
        (*(*&v178 + 32))(v437, v155, COERCE_DOUBLE(*&v190));
      }

      v456 = v193;
      sub_217F4A9B4();
      v208 = v207;
      (*(*&v178 + 8))(v206, COERCE_DOUBLE(*&v190));
      v448 = v208 * 1000.0;
      LODWORD(v437) = LOBYTE(v479[23]);
      v209 = *(v177 + v188[18]);
      swift_allocObject();
      v436 = COERCE_DOUBLE(sub_217E8A06C(v209));
      v210 = *(*&v436 + 24);
      v211 = 1 << *(v210 + 32);
      v212 = -1;
      if (v211 < 64)
      {
        v212 = ~(-1 << v211);
      }

      v213 = v212 & *(v210 + 64);
      v214 = *&v479[12];
      v215 = BYTE8(v479[12]);
      v216 = *(&v479[13] + 1);
      v424 = *&v479[3];
      v217 = *(&v479[14] + 1);
      v425 = *&v479[14];
      v423 = *&v479[15];
      v410 = LOBYTE(v479[17]);
      v218 = (v211 + 63) >> 6;
      v412 = *&v479[11];
      v219 = v479[17] & 1;
      v420 = v209;
      swift_bridgeObjectRetain_n();

      v220 = 0;
      v221 = v215 ^ 1;
      v411 = v221 | v219;
      v222 = 0.0;
      v418 = 0.0;
      v223 = 0.0;
      while (1)
      {
LABEL_123:
        if (v213)
        {
          goto LABEL_128;
        }

        do
        {
          v228 = v220 + 1;
          if (__OFADD__(v220, 1))
          {
            goto LABEL_285;
          }

          if (v228 >= v218)
          {
            v245 = v466;

            v246 = v471;

            v247 = pow(v423 + v214 * v222 + (1.0 - v214) * v223, v424);
            if (v247 <= 0.0)
            {
              v249 = 0.0;
              v248 = v217 <= 0.0;
            }

            else
            {
              v248 = v217 <= 0.0;
              v249 = v418 / v247;
            }

            v250 = *&v458;
            v251 = v437;
            if (!v248 && v425 > 0.0)
            {
              v216 = v216 * ((v217 + -1.0) * exp2(-v449 / v425) + 1.0);
            }

            v252 = sub_217F334B8(*&v436);

            v253 = (1.0 - v216) * v249 + v216 * v252;
            v254 = 1.0;
            v256 = v430;
            v255 = v431;
            if (v251)
            {
              v254 = sub_217F31F60(v474, v246, v245, v482, v417);
            }

            v437 = *&v253;
            v257 = v452 * v253;
            v258 = v474;
            v259 = sub_217F322DC(v474, v250);
            v260 = v60[3];
            v261 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v260);
            v262 = (*(v261 + 56))(v260, v261);
            v263 = sub_217EA3608(*&v470, *&v473, v262);

            if (LODWORD(v454))
            {
              v264 = 1.0;
            }

            else
            {
              v264 = v256;
            }

            if (v263)
            {
              v265 = v264;
            }

            else
            {
              v265 = 1.0;
            }

            if ((v263 & 1 & LOBYTE(v454)) != 0)
            {
              v266 = v255;
            }

            else
            {
              v266 = 1.0;
            }

            if (LODWORD(v439))
            {
              v267 = v429;
            }

            else
            {
              v267 = 1.0;
            }

            v268 = v433;
            if (*(v461 + *(*&v467 + 88)))
            {
              v269 = v432;
            }

            else
            {
              v269 = 1.0;
            }

            if (!*(v461 + *(*&v467 + 76)))
            {
              v268 = 1.0;
            }

            v458 = v268;
            v270 = v60[3];
            v271 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v270);
            v272 = *(v271 + 104);

            v273 = v272(v270, v271);
            v274 = sub_217F36A9C(v273, v258);

            v275 = v274[2];

            v436 = v265;
            v431 = v266;
            if (v275)
            {
              v276 = *&v479[42];
              if (v266 >= 1.0)
              {
                v277 = v266;
              }

              else
              {
                v277 = 1.0;
              }
            }

            else
            {
              v276 = 1.0;
              if (v266 >= 1.0)
              {
                v277 = v266;
              }

              else
              {
                v277 = 1.0;
              }
            }

            v278 = fmin(v266, 1.0);
            v279 = MEMORY[0x277D84F98];
            v280 = v434;
            if (v265 < 1.0)
            {
              v278 = v265 * v278;
            }

            else
            {
              v277 = v265 * v277;
            }

            v454 = v257 + 1.0;
            v281 = 1.0;
            if (v267 < 1.0)
            {
              v278 = v267 * v278;
            }

            else
            {
              v277 = v267 * v277;
            }

            if (v269 < 1.0)
            {
              v278 = v269 * v278;
            }

            else
            {
              v277 = v269 * v277;
            }

            if (v458 < 1.0)
            {
              v278 = v458 * v278;
            }

            else
            {
              v277 = v458 * v277;
            }

            if (v276 >= 1.0)
            {
              v282 = v276 * v277;
            }

            else
            {
              v282 = v277;
            }

            if (v276 >= 1.0)
            {
              v283 = v278;
            }

            else
            {
              v283 = v276 * v278;
            }

            v432 = sub_217F32F24(v251 & 1, v479, v463, v455, v460, v468);
            v433 = v282;
            v284 = pow(v282, v432);
            if (LODWORD(v428) == 2 || (LOBYTE(v428) & 1) == 0)
            {
              if (v251)
              {
LABEL_205:
                v281 = v454 * v254 * v259 * v284 * v281 * v447;
              }
            }

            else if (v251)
            {
              v281 = *v479;
              goto LABEL_205;
            }

            v429 = v254;
            v430 = v284;
            v439 = v259;
            v285 = BYTE8(v479[7]);
            v476 = v279;
            sub_217F3304C(BYTE8(v479[7]) & 1, v479, &v476, v280, v427);
            v287 = v286;

            v288 = *(&v479[23] + 1);
            v289 = v60[3];
            v290 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v289);
            v291 = *(v290 + 24);
            v292 = v474;

            v293 = v291(v289, v290);
            v294 = sub_217F36A9C(v293, v292);

            v295 = v294[2];

            v296 = pow(v288, v295);
            v297 = v60[3];
            v298 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v297);
            v299 = (*(v298 + 88))(v297, v298);
            v301 = v440;
            v300 = *&v441;
            LOBYTE(v297) = sub_217EA3608(*&v441, v440, v299);

            v302 = *&v479[43];
            if ((v297 & 1) == 0)
            {
              v302 = 0.0;
            }

            *&v468 = v302;
            v303 = v60[3];
            v304 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v303);
            v305 = (*(v304 + 72))(v303, v304);
            LOBYTE(v303) = sub_217EA3608(v300, v301, v305);

            v306 = *&v479[41];
            if ((v303 & 1) == 0)
            {
              v306 = 0.0;
            }

            *&v460 = v306;
            v307 = v60[3];
            v308 = v60[4];
            __swift_project_boxed_opaque_existential_1(v60, v307);
            v309 = (*(v308 + 80))(v307, v308);
            LOBYTE(v307) = sub_217EA3608(v300, v301, v309);

            v310 = *(&v479[22] + 1);
            if ((v307 & 1) == 0)
            {
              v310 = 0.0;
            }

            v449 = v310;
            if (*(v435 + 16))
            {
              v311 = 0.0;
            }

            else
            {
              v311 = *&v479[46];
            }

            *&v455 = v311;
            v312 = 1.0;
            v313 = 1.0;
            if (v285)
            {
              v314 = *(&v479[40] + 1);
              sub_217F340B0(v415, v414, v413, *&v470, *&v473);
              v313 = pow(v315, v314);
              v312 = v283 * (v287 * v296) * (1.0 - *&v468) * (1.0 - *&v460) * (1.0 - v449) * (1.0 - *&v455) * v313;
            }

            v440 = *&v313;
            v441 = v296;
            v316 = v448;
            if ((BYTE8(v479[42]) & 1) != 0 && *(v461 + 56) != 1)
            {
              v317 = 48;
            }

            else
            {
              v317 = 40;
            }

            v318 = v457;
            v319 = *(v461 + v317);
            if (*(v461 + *(*&v467 + 88)) == 1)
            {
              v320 = *&v479[18];
              goto LABEL_225;
            }

            v321 = COERCE_DOUBLE(sub_217F32398(v474, v250));
            if (v322)
            {
              v320 = *(&v479[21] + 1);
LABEL_225:
              v467 = v320;
            }

            else
            {
              v467 = v321;
            }

            v473 = 1.0;
            if (v316 <= 0.0)
            {
              v470 = 1.0;
            }

            else
            {
              v470 = 1.0;
              if (v319 > 0.0)
              {
                v323 = v316 / v319;
                v470 = exp2(-(v467 * v323));
                v473 = exp2(-(*&v479[22] * v323));
              }
            }

            v324 = 0.0;
            if (v318 > 0.0)
            {
              v325 = v453;
              if (v459)
              {
                v325 = 0.0;
              }

              v324 = (v451 * (v450 * v473) + v470 * (v445 * v456 + *&v446 * v444 + v442 * v443 + v325 * *&v479[51])) / v318;
            }

            v326 = 0;
            v327 = v474 + 56;
            v328 = 1 << *(v474 + 32);
            v329 = -1;
            if (v328 < 64)
            {
              v329 = ~(-1 << v328);
            }

            v330 = v329 & *(v474 + 56);
            v331 = (v328 + 63) >> 6;
            for (i = MEMORY[0x277D84F98]; ; i[2] = v378)
            {
              while (1)
              {
LABEL_239:
                if (!v330)
                {
                  v336 = v472;
                  while (1)
                  {
                    v337 = v326 + 1;
                    if (__OFADD__(v326, 1))
                    {
                      goto LABEL_286;
                    }

                    if (v337 >= v331)
                    {
                      v472 = *&v269;

                      v379 = v476;
                      v380 = v426;
                      v428 = v287;
                      if (v426)
                      {
                        v381 = *(v426 + 320);
                        v382 = *(v426 + 328);
                        swift_beginAccess();
                        v383 = *(v380 + 296);
                      }

                      else
                      {
                        v383 = 0;
                        v381 = 0;
                        v382 = 1;
                      }

                      v384 = v471;
                      v385 = (1.0 - v465) * v422 + v465 * v421;
                      v386 = v463;
                      v387 = v312 * (v281 * v324);
                      v388 = *&v479[51];
                      _s14descr2829CD401O20HeadlineScoreProfileCMa();
                      result = swift_allocObject();
                      v390 = v442;
                      *(result + 24) = v458;
                      *(result + 32) = v390;
                      v391 = v431;
                      *(result + 40) = v436;
                      *(result + 48) = v391;
                      *(result + 56) = v452;
                      v392 = v437;
                      *(result + 72) = v454;
                      *(result + 80) = v392;
                      v393 = v462;
                      *(result + 88) = v430;
                      *(result + 96) = v393;
                      *(result + 16) = v464;
                      *(result + 64) = v420;
                      *(result + 104) = v472;
                      *(result + 112) = v267;
                      v394 = v429;
                      *(result + 120) = v467;
                      *(result + 128) = v394;
                      v395 = *&v441;
                      *(result + 136) = v432;
                      *(result + 144) = v395;
                      *(result + 152) = v428;
                      *(result + 160) = v384;
                      *(result + 168) = v379;
                      v396 = v439;
                      *(result + 176) = v386 * v281 * v312;
                      *(result + 184) = v396;
                      v397 = v460;
                      *(result + 192) = v386;
                      *(result + 200) = v397;
                      v398 = v468;
                      *(result + 208) = v449;
                      *(result + 216) = v398;
                      v399 = v450;
                      *(result + 224) = v451;
                      *(result + 232) = v385;
                      v400 = v455;
                      *(result + 240) = v399;
                      *(result + 248) = v400;
                      v402 = v445;
                      v401 = v446;
                      *(result + 256) = v433;
                      *(result + 264) = v401;
                      v403 = v470;
                      *(result + 272) = v402;
                      *(result + 280) = v403;
                      *(result + 288) = v473;
                      *(result + 296) = v387;
                      *(result + 304) = i;
                      *(result + 312) = v440;
                      *(result + 320) = v453;
                      *(result + 328) = v459 & 1;
                      v404 = v443;
                      *(result + 336) = v447;
                      *(result + 344) = v404;
                      v405 = v444;
                      *(result + 352) = v456;
                      *(result + 360) = v405;
                      *(result + 368) = v388;
                      *(result + 376) = v281;
                      *(result + 384) = v312;
                      *(result + 392) = v381;
                      *(result + 400) = v382;
                      *(result + 408) = v383;
                      *(result + 416) = v380 == 0;
                      return result;
                    }

                    v330 = *(v327 + 8 * v337);
                    ++v326;
                    if (v330)
                    {
                      v326 = v337;
                      goto LABEL_246;
                    }
                  }
                }

                v336 = v472;
LABEL_246:
                v338 = __clz(__rbit64(v330));
                v330 &= v330 - 1;
                v339 = (*(v474 + 48) + ((v326 << 10) | (16 * v338)));
                v341 = *v339;
                v340 = v339[1];
                if (!v336)
                {
                  break;
                }

                v342 = *(v336 + 16);

                if (!v342)
                {
                  goto LABEL_238;
                }

                v343 = sub_217E8E88C(v341, v340);
                if ((v344 & 1) == 0)
                {
                  goto LABEL_238;
                }

                v345 = *(*(v336 + 56) + 8 * v343);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v478[0] = i;
                v347 = sub_217E8E88C(v341, v340);
                v349 = i[2];
                v350 = (v348 & 1) == 0;
                v351 = __OFADD__(v349, v350);
                v352 = v349 + v350;
                if (v351)
                {
                  goto LABEL_287;
                }

                if (i[3] >= v352)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if (v348)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    v372 = v347;
                    v373 = v348;
                    sub_217E8F918();
                    v347 = v372;
                    if (v373)
                    {
                      goto LABEL_271;
                    }
                  }
                }

                else
                {
                  v353 = v348;
                  sub_217E924FC(v352, isUniquelyReferenced_nonNull_native);
                  v347 = sub_217E8E88C(v341, v340);
                  if ((v353 & 1) != (v354 & 1))
                  {
                    goto LABEL_291;
                  }

                  if (v353)
                  {
                    goto LABEL_271;
                  }
                }

                i = v478[0];
                *(v478[0] + 8 * (v347 >> 6) + 64) |= 1 << v347;
                v368 = (i[6] + 16 * v347);
                *v368 = v341;
                v368[1] = v340;
                *(i[7] + 8 * v347) = v345;
                v369 = i[2];
                v351 = __OFADD__(v369, 1);
                v370 = v369 + 1;
                if (v351)
                {
                  goto LABEL_288;
                }

                i[2] = v370;
              }

              v355 = v466;
              v356 = *(v466 + 16);

              if (!v356 || (v357 = sub_217E8E88C(v341, v340), (v358 & 1) == 0) || (v359 = *(v355 + 56) + 24 * v357, (*(v359 + 16) & 1) != 0))
              {
LABEL_238:
                v333 = sub_217E8E88C(v341, v340);
                v335 = v334;

                if (v335)
                {
                  v367 = swift_isUniquelyReferenced_nonNull_native();
                  v478[0] = i;
                  if (!v367)
                  {
                    sub_217E8F918();
                    i = v478[0];
                  }

                  sub_217F35070(v333, i);
                }

                goto LABEL_239;
              }

              v345 = *(v359 + 8);
              v360 = swift_isUniquelyReferenced_nonNull_native();
              v478[0] = i;
              v347 = sub_217E8E88C(v341, v340);
              v362 = i[2];
              v363 = (v361 & 1) == 0;
              v351 = __OFADD__(v362, v363);
              v364 = v362 + v363;
              if (v351)
              {
                goto LABEL_289;
              }

              if (i[3] >= v364)
              {
                if (v360)
                {
                  if (v361)
                  {
                    goto LABEL_271;
                  }
                }

                else
                {
                  v374 = v347;
                  v375 = v361;
                  sub_217E8F918();
                  v347 = v374;
                  if (v375)
                  {
                    goto LABEL_271;
                  }
                }
              }

              else
              {
                v365 = v361;
                sub_217E924FC(v364, v360);
                v347 = sub_217E8E88C(v341, v340);
                if ((v365 & 1) != (v366 & 1))
                {
                  goto LABEL_291;
                }

                if (v365)
                {
LABEL_271:
                  v371 = v347;

                  i = v478[0];
                  *(*(v478[0] + 56) + 8 * v371) = v345;
                  goto LABEL_239;
                }
              }

              i = v478[0];
              *(v478[0] + 8 * (v347 >> 6) + 64) |= 1 << v347;
              v376 = (i[6] + 16 * v347);
              *v376 = v341;
              v376[1] = v340;
              *(i[7] + 8 * v347) = v345;
              v377 = i[2];
              v351 = __OFADD__(v377, 1);
              v378 = v377 + 1;
              if (v351)
              {
                goto LABEL_290;
              }
            }
          }

          v213 = *(v210 + 64 + 8 * v228);
          ++v220;
        }

        while (!v213);
        v220 = v228;
LABEL_128:
        v229 = __clz(__rbit64(v213));
        v213 &= v213 - 1;
        v230 = v229 | (v220 << 6);
        v231 = (*(v210 + 48) + 16 * v230);
        v232 = *v231;
        v233 = v231[1];
        if (*v231 != 42 || v233 != 0xE100000000000000)
        {
          v224 = (*(v210 + 56) + 24 * v230);
          v226 = v224[1];
          v225 = v224[2];
          v227 = *v224;
          if ((sub_217F4B144() & 1) == 0)
          {
            break;
          }
        }
      }

      v408 = v221;
      v234 = v466;
      v409 = *(v466 + 16);

      if (v409 == 0.0 || (v235 = sub_217E8E88C(v232, v233), (v236 & 1) == 0))
      {
        v407 = 1.0;
        v239 = 0.0;
        v238 = v412;
        if ((v411 & 1) == 0)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v237 = *(v234 + 56) + 24 * v235;
        v238 = *(v237 + 8);
        v407 = *v237;
        if (*(v237 + 16))
        {
          v238 = v412;
        }

        v239 = 0.0;
        if (v408 & 1 | v410 & (v238 <= v412))
        {
          goto LABEL_142;
        }

LABEL_138:
        v240 = v471;
        if (v471[2])
        {
          v409 = v238;
          v241 = sub_217E8E88C(v232, v233);
          if (v242)
          {
            v239 = *(v240[7] + 8 * v241);
            v238 = v409;
          }

          else
          {
            v238 = v409;
            v239 = 0.0;
          }
        }
      }

LABEL_142:
      v406 = v239;
      v409 = v238;

      if (v225 <= 0.0)
      {
        v243 = v409;
        if (v409 == 0.0)
        {
          v243 = 1.0;
        }

        v244 = 0.0;
      }

      else
      {
        v243 = v409;
        if (v409 == 0.0)
        {
          v243 = 1.0;
          v244 = 0.0;
        }

        else
        {
          v244 = (v227 * v406 + v226 * (1.0 - v406)) / v225;
        }
      }

      v221 = v408;
      v223 = v223 + v407 * v243;
      v418 = v418 + v244 * (v407 * v243);
      v222 = v222 + v407;
      goto LABEL_123;
    }

    v103 = *(v96 + 64 + 8 * v116);
    ++v108;
    if (v103)
    {
      v108 = v116;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  sub_217F4B1C4();
  __break(1u);
LABEL_292:

  swift_deallocPartialClassInstance();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s14descr2829CD401O20UserCohortMembershipVwet(uint64_t a1, int a2)
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

uint64_t _s14descr2829CD401O20UserCohortMembershipVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_217F3A9D4(unsigned int *a1, int a2)
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

_WORD *sub_217F3AA24(_WORD *result, int a2, int a3)
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

double sub_217F3AB3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_217F3AB48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_217F3AB60()
{
  result = qword_280C29548;
  if (!qword_280C29548)
  {
    type metadata accessor for ClassicArticleData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C29548);
  }

  return result;
}

uint64_t sub_217F3AD5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217F3ADC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217F3AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217F4AC94();
  swift_getWitnessTable();
  sub_217F4AB64();
  return v5;
}

uint64_t sub_217F3AED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = (*(v3 + 24))(a2);
  if (__OFADD__(v5, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5 + (result & 1);
  }

  return result;
}

uint64_t sub_217F3AF2C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 56);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      return v3;
    }

    result = *(v4 - 1);
    if (result == *(a2 + 16) && *v4 == *(a2 + 24))
    {
      v6 = 1;
    }

    else
    {
      result = sub_217F4B144();
      v6 = result & 1;
    }

    v4 += 12;
    v7 = __OFADD__(v3, v6);
    v3 += v6;
  }

  while (!v7);
  __break(1u);
  return result;
}

uint64_t sub_217F3AFAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *(result + 16);
  v20 = v7;
  v21 = result + 32;
  do
  {
    if (v5 == v7)
    {
      return v6;
    }

    v10 = (v21 + 96 * v5);
    v11 = v10[4];
    if (*(v11 + 16))
    {
      v22 = v6;
      v13 = v10[9];
      v12 = v10[10];
      sub_217F4B224();

      v23 = v13;
      sub_217EA34A8(v13, v12);
      sub_217F4AB24();
      v14 = sub_217F4B254();
      v15 = -1 << *(v11 + 32);
      v16 = v14 & ~v15;
      if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v11 + 48) + 16 * v16);
          v19 = *v18 == a2 && v18[1] == a3;
          if (v19 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v8 = 1;
      }

      else
      {
LABEL_14:
        v8 = 0;
      }

      v7 = v20;

      result = sub_217EB9ED4(v23, v12);
      v6 = v22;
    }

    else
    {
      v8 = 0;
    }

    ++v5;
    v9 = __OFADD__(v6, v8);
    v6 += v8;
  }

  while (!v9);
  __break(1u);
  return result;
}

uint64_t sub_217F3B228(double a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_217F3B394(double a1)
{
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

unint64_t sub_217F3B494(char a1)
{
  result = 0x43656C6369747261;
  switch(a1)
  {
    case 1:
      return 0x6C754D6F69647561;
    case 2:
    case 12:
    case 15:
    case 18:
      return 0xD000000000000012;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0xD000000000000014;
    case 5:
    case 21:
    case 36:
    case 39:
      return 0xD000000000000015;
    case 6:
    case 16:
    case 20:
    case 29:
    case 37:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0x69737265766E6F63;
    case 9:
      return 0xD000000000000018;
    case 10:
    case 42:
      return 0xD000000000000020;
    case 11:
    case 13:
      return 0xD000000000000013;
    case 14:
    case 17:
    case 28:
    case 31:
    case 47:
      return 0xD000000000000016;
    case 19:
      return 0xD00000000000001ALL;
    case 22:
      return 0xD000000000000014;
    case 23:
      v4 = 1684104562;
      return v4 | 0x616E655000000000;
    case 24:
      return 0x64656E657473696CLL;
    case 25:
      v4 = 1852138867;
      return v4 | 0x616E655000000000;
    case 26:
      return 0x6353726576726573;
    case 27:
      return 0x6576726553776172;
    case 30:
    case 33:
    case 35:
      return 0xD000000000000010;
    case 32:
      return 0xD000000000000014;
    case 34:
      return 0xD00000000000001CLL;
    case 38:
      return 0x726F635369626174;
    case 40:
      v3 = 9;
      goto LABEL_15;
    case 41:
      v3 = 11;
LABEL_15:
      result = v3 | 0xD000000000000014;
      break;
    case 43:
      result = 0xD000000000000014;
      break;
    case 44:
      result = 0x696C7069746C756DLL;
      break;
    case 45:
      result = 0x72656E65706D6164;
      break;
    case 46:
      result = 0x6154776F64616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217F3B918()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3B98C(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217F3B9D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F3D4E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217F3BA18(uint64_t a1)
{
  v2 = sub_217F3C4A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217F3BA54(uint64_t a1)
{
  v2 = sub_217F3C4A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_217F3BA90()
{

  return v0;
}

uint64_t sub_217F3BAD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_217F3BB28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF73D8, &unk_217F5A310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F3C4A0();
  sub_217F4B294();
  v14 = v3[2];
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
  sub_217F3D0A0(&qword_27CBF5500, sub_217E9C860, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217F4B0C4();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_217F4B0A4();
    LOBYTE(v14) = 2;
    sub_217F4B0A4();
    LOBYTE(v14) = 3;
    sub_217F4B0A4();
    LOBYTE(v14) = 4;
    sub_217F4B0A4();
    LOBYTE(v14) = 5;
    sub_217F4B0A4();
    v14 = v3[8];
    LOBYTE(v13) = 6;
    sub_217F4B0C4();
    LOBYTE(v14) = 7;
    sub_217F4B0A4();
    LOBYTE(v14) = 8;
    sub_217F4B0A4();
    LOBYTE(v14) = 9;
    sub_217F4B0A4();
    LOBYTE(v14) = 10;
    sub_217F4B0A4();
    LOBYTE(v14) = 11;
    sub_217F4B0A4();
    LOBYTE(v14) = 12;
    sub_217F4B0A4();
    swift_beginAccess();
    LOBYTE(v13) = 13;
    sub_217F4B0A4();
    LOBYTE(v13) = 14;
    sub_217F4B0A4();
    LOBYTE(v13) = 15;
    sub_217F4B0A4();
    LOBYTE(v13) = 16;
    sub_217F4B0A4();
    LOBYTE(v13) = 17;
    sub_217F4B0A4();
    v13 = v3[20];
    LOBYTE(v12) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    sub_217F3D124(&qword_27CBF5D68, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_217F4B0C4();
    v13 = v3[21];
    LOBYTE(v12) = 19;
    sub_217F4B0C4();
    LOBYTE(v13) = 20;
    sub_217F4B0A4();
    LOBYTE(v13) = 21;
    sub_217F4B0A4();
    LOBYTE(v13) = 22;
    sub_217F4B0A4();
    LOBYTE(v13) = 23;
    sub_217F4B0A4();
    LOBYTE(v13) = 24;
    sub_217F4B0A4();
    LOBYTE(v13) = 25;
    sub_217F4B0A4();
    LOBYTE(v13) = 26;
    sub_217F4B0A4();
    LOBYTE(v13) = 27;
    sub_217F4B0A4();
    LOBYTE(v13) = 28;
    sub_217F4B0A4();
    LOBYTE(v13) = 29;
    sub_217F4B0A4();
    LOBYTE(v13) = 30;
    sub_217F4B0A4();
    LOBYTE(v13) = 31;
    sub_217F4B0A4();
    LOBYTE(v13) = 32;
    sub_217F4B0A4();
    LOBYTE(v13) = 33;
    sub_217F4B0A4();
    LOBYTE(v13) = 34;
    sub_217F4B0A4();
    swift_beginAccess();
    LOBYTE(v12) = 35;
    sub_217F4B0A4();
    v12 = v3[38];
    v11[7] = 36;
    sub_217F4B0C4();
    LOBYTE(v12) = 37;
    sub_217F4B0A4();
    LOBYTE(v12) = 38;
    sub_217F4B034();
    LOBYTE(v12) = 39;
    sub_217F4B0A4();
    LOBYTE(v12) = 40;
    sub_217F4B0A4();
    LOBYTE(v12) = 41;
    sub_217F4B0A4();
    LOBYTE(v12) = 42;
    sub_217F4B0A4();
    LOBYTE(v12) = 43;
    sub_217F4B0A4();
    LOBYTE(v12) = 44;
    sub_217F4B0A4();
    LOBYTE(v12) = 45;
    sub_217F4B0A4();
    LOBYTE(v12) = 46;
    sub_217F4B034();
    LOBYTE(v12) = 47;
    sub_217F4B034();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217F3C4A0()
{
  result = qword_27CBF73E0;
  if (!qword_27CBF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73E0);
  }

  return result;
}

uint64_t sub_217F3C4F4(void *a1)
{
  v2 = swift_allocObject();
  sub_217F3C544(a1);
  return v2;
}

double *sub_217F3C544(void *a1)
{
  v3 = v1;
  v56 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF73E8, qword_217F5A328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v56 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F3C4A0();
  sub_217F4B274();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5508, &qword_217F4D520);
    v57 = 0;
    sub_217F3D0A0(&qword_27CBF5550, sub_217E9D8BC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217F4AFC4();
    v1[2] = v58;
    LOBYTE(v58) = 1;
    sub_217F4AFA4();
    v1[3] = v10;
    LOBYTE(v58) = 2;
    sub_217F4AFA4();
    v1[4] = v11;
    LOBYTE(v58) = 3;
    sub_217F4AFA4();
    v1[5] = v12;
    LOBYTE(v58) = 4;
    sub_217F4AFA4();
    v1[6] = v13;
    LOBYTE(v58) = 5;
    sub_217F4AFA4();
    v1[7] = v14;
    v57 = 6;
    sub_217F4AFC4();
    v1[8] = v58;
    LOBYTE(v58) = 7;
    sub_217F4AFA4();
    v1[9] = v16;
    LOBYTE(v58) = 8;
    sub_217F4AFA4();
    v1[10] = v17;
    LOBYTE(v58) = 9;
    sub_217F4AFA4();
    v1[11] = v18;
    LOBYTE(v58) = 10;
    sub_217F4AFA4();
    v1[12] = v19;
    LOBYTE(v58) = 11;
    sub_217F4AFA4();
    v1[13] = v20;
    LOBYTE(v58) = 12;
    sub_217F4AFA4();
    v1[14] = v21;
    LOBYTE(v58) = 13;
    sub_217F4AFA4();
    v1[15] = v22;
    LOBYTE(v58) = 14;
    sub_217F4AFA4();
    v1[16] = v23;
    LOBYTE(v58) = 15;
    sub_217F4AFA4();
    v1[17] = v24;
    LOBYTE(v58) = 16;
    sub_217F4AFA4();
    v1[18] = v25;
    LOBYTE(v58) = 17;
    sub_217F4AFA4();
    v1[19] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    v57 = 18;
    sub_217F3D124(&qword_27CBF5D80, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_217F4AFC4();
    v1[20] = v58;
    v57 = 19;
    sub_217F4AFC4();
    v1[21] = v58;
    LOBYTE(v58) = 20;
    sub_217F4AFA4();
    v1[22] = v27;
    LOBYTE(v58) = 21;
    sub_217F4AFA4();
    v1[23] = v28;
    LOBYTE(v58) = 22;
    sub_217F4AFA4();
    v1[24] = v29;
    LOBYTE(v58) = 23;
    sub_217F4AFA4();
    v1[25] = v30;
    LOBYTE(v58) = 24;
    sub_217F4AFA4();
    v1[26] = v31;
    LOBYTE(v58) = 25;
    sub_217F4AFA4();
    v1[27] = v32;
    LOBYTE(v58) = 26;
    sub_217F4AFA4();
    v1[28] = v33;
    LOBYTE(v58) = 27;
    sub_217F4AFA4();
    v1[29] = v34;
    LOBYTE(v58) = 28;
    sub_217F4AFA4();
    v1[30] = v35;
    LOBYTE(v58) = 29;
    sub_217F4AFA4();
    v1[31] = v36;
    LOBYTE(v58) = 30;
    sub_217F4AFA4();
    v1[32] = v37;
    LOBYTE(v58) = 31;
    sub_217F4AFA4();
    v1[33] = v38;
    LOBYTE(v58) = 32;
    sub_217F4AFA4();
    v1[34] = v39;
    LOBYTE(v58) = 33;
    sub_217F4AFA4();
    v1[35] = v40;
    LOBYTE(v58) = 34;
    sub_217F4AFA4();
    v1[36] = v41;
    LOBYTE(v58) = 35;
    sub_217F4AFA4();
    v1[37] = v42;
    v57 = 36;
    sub_217F4AFC4();
    v1[38] = v58;
    LOBYTE(v58) = 37;
    sub_217F4AFA4();
    v1[39] = v43;
    LOBYTE(v58) = 38;
    v1[40] = sub_217F4AF34();
    *(v1 + 328) = v44 & 1;
    LOBYTE(v58) = 39;
    sub_217F4AFA4();
    v1[42] = v45;
    LOBYTE(v58) = 40;
    sub_217F4AFA4();
    v1[43] = v46;
    LOBYTE(v58) = 41;
    sub_217F4AFA4();
    v1[44] = v47;
    LOBYTE(v58) = 42;
    sub_217F4AFA4();
    v1[45] = v48;
    LOBYTE(v58) = 43;
    sub_217F4AFA4();
    v1[46] = v49;
    LOBYTE(v58) = 44;
    sub_217F4AFA4();
    v1[47] = v50;
    LOBYTE(v58) = 45;
    sub_217F4AFA4();
    v1[48] = v51;
    LOBYTE(v58) = 46;
    v1[49] = sub_217F4AF34();
    *(v1 + 400) = v52 & 1;
    LOBYTE(v58) = 47;
    v53 = sub_217F4AF34();
    v55 = v54;
    (*(v6 + 8))(v9, v5);
    v3[51] = v53;
    *(v3 + 416) = v55 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_217F3D0A0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5508, &qword_217F4D520);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217F3D124(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5D60, &qword_217F5A320);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double *sub_217F3D194@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_217F3C544(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s14descr2829CD401O20HeadlineScoreProfileC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 47;
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

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O20HeadlineScoreProfileC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217F3D3DC()
{
  result = qword_27CBF73F0;
  if (!qword_27CBF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73F0);
  }

  return result;
}

unint64_t sub_217F3D434()
{
  result = qword_27CBF73F8;
  if (!qword_27CBF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF73F8);
  }

  return result;
}

unint64_t sub_217F3D48C()
{
  result = qword_27CBF7400;
  if (!qword_27CBF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7400);
  }

  return result;
}

uint64_t sub_217F3D4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43656C6369747261 && a2 == 0xEE007374726F686FLL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C754D6F69647561 && a2 == 0xEF7265696C706974 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F61040 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5FB70 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5FB90 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5FBB0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F61060 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61080 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF65726F63536E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F610B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F780 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5FBD0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5FBF0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5F560 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F610D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F610F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F5C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61110 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F61130 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F61150 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5C8C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F61170 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61190 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x64656E657473696CLL && a2 == 0xEF79746C616E6550 || (sub_217F4B144() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6353726576726573 && a2 == 0xEB0000000065726FLL || (sub_217F4B144() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6576726553776172 && a2 == 0xEE0065726F635372 || (sub_217F4B144() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F611F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F7B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F61210 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61230 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61250 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F61270 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F61290 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F612B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F612D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F612F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_217F4B144() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F61310 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5F280 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5F800 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F7D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F8C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_217F4B144() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x72656E65706D6164 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6154776F64616873 && a2 == 0xEF65726F63536962 || (sub_217F4B144() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61360 == a2)
  {

    return 47;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 47;
    }

    else
    {
      return 48;
    }
  }
}

uint64_t ClassicEventData.groupBackingTagID.getter(uint64_t a1)
{
  v1 = sub_217F3EFCC(a1);

  return v1;
}

uint64_t ClassicEventData.init(articleData:groupType:groupBackingTagID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for ClassicEventData(0, a5, a6, v13);
  *(a7 + *(result + 36)) = v12;
  v15 = (a7 + *(result + 40));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

unint64_t sub_217F3E478(uint64_t a1, uint64_t a2)
{
  v2 = sub_217F4AEE4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217F3E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217F3E53C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_217F3E5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217F3E618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_217F3E688@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217F3E478(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_217F3E6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217E7F8A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_217F3E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F3E4C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217F3E738@<X0>(_BYTE *a2@<X8>)
{
  result = sub_217F3F6D4();
  *a2 = result;
  return result;
}

uint64_t sub_217F3E764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F3E7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ClassicEventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v7;
  type metadata accessor for ClassicEventData.CodingKeys(255, v8, v7, v9);
  swift_getWitnessTable();
  v25 = sub_217F4AFF4();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v26;
  sub_217F4B274();
  if (!v14)
  {
    v15 = v10;
    v16 = v24;
    v28[3] = 0;
    sub_217F4AFC4();
    v28[1] = 1;
    sub_217F3F00C();
    sub_217F4AFC4();
    v28[0] = v28[2];
    v27 = 2;
    v18 = sub_217F4AF14();
    v20 = v19;
    (*(v15 + 8))(v13, v25);
    ClassicEventData.init(articleData:groupType:groupBackingTagID:)(v6, v28, v18, v20, a2, v16, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ClassicEventData.encode(to:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v6 = *(a2 + 24);
  v16 = *(a2 + 16);
  type metadata accessor for ClassicEventData.CodingKeys(255, v16, v6, a5);
  swift_getWitnessTable();
  v7 = sub_217F4B0E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v15[1];
  sub_217F4B294();
  v21 = 0;
  v13 = v17;
  sub_217F4B0C4();
  if (!v13)
  {
    v20 = *(v12 + *(v15[0] + 36));
    v19 = 1;
    sub_217F3F060();
    sub_217F4B0C4();
    v18 = 2;
    sub_217F4B014();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_217F3EEB8(uint64_t a1)
{
  v1 = sub_217F3EFCC(a1);

  return v1;
}

uint64_t ClassicEventData.debugDescription.getter(uint64_t a1)
{
  BYTE8(v4) = 0;
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x20656C6369747241, 0xE800000000000000);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](0x2070756F7247202CLL, 0xED00002065707954);
  *&v4 = *(v1 + *(a1 + 36));
  sub_217F4AE54();
  return *(&v4 + 1);
}

unint64_t sub_217F3F00C()
{
  result = qword_27CBF7408;
  if (!qword_27CBF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7408);
  }

  return result;
}

unint64_t sub_217F3F060()
{
  result = qword_27CBF7410[0];
  if (!qword_27CBF7410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF7410);
  }

  return result;
}

uint64_t sub_217F3F0BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_217F3F14C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_217F3F4D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217F3F1DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_217F3F318(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
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
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
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
  if (v6 < 0x7FFFFFFE)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 8) = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v18 + 16) = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_217F3F4D4()
{
  if (!qword_280C29080)
  {
    v0 = sub_217F4AD74();
    if (!v1)
    {
      atomic_store(v0, &qword_280C29080);
    }
  }
}

uint64_t sub_217F3F52C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217F3F5BC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_217F3F6FC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_217EA0DA0(0, v5, 0);
    v8 = v16;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v14[0] = *(i - 1);
      v14[1] = v10;

      a1(&v15, v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v15;
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_217EA0DA0((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_217F3F828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a3 = 2831206;
  *(a3 + 8) = 0xE300000000000000;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 4;
}

uint64_t sub_217F3F8A4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_217F3F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
  MEMORY[0x21CEAEAC0](a3, a4);
  *a5 = 2831462;
  *(a5 + 8) = 0xE300000000000000;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = 3;
}

uint64_t sub_217F3F9C8()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3FA24()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3FA98(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

double sub_217F3FADC@<D0>(uint64_t a1@<X8>)
{
  *&result = 12390;
  *a1 = xmmword_217F5A9A0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FAF8@<D0>(uint64_t a1@<X8>)
{
  *&result = 12646;
  *a1 = xmmword_217F5A230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB14@<D0>(uint64_t a1@<X8>)
{
  *&result = 12902;
  *a1 = xmmword_217F5A220;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB30@<D0>(uint64_t a1@<X8>)
{
  *&result = 13926;
  *a1 = xmmword_217F5A9B0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB4C@<D0>(uint64_t a1@<X8>)
{
  *&result = 14182;
  *a1 = xmmword_217F5A240;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB68@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x732B306166;
  *a1 = xmmword_217F5A1F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB84@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6D2B306166;
  *a1 = xmmword_217F5A200;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FBA0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6C2B306166;
  *a1 = xmmword_217F5A210;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FBBC@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a1 = 724656486;
  *(a1 + 8) = 0xE400000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  return result;
}

double sub_217F3FC14@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *&aFa0S[8 * *a1];
  *(a2 + 8) = 0xE500000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

double sub_217F3FC3C@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a1 = 2831718;
  *(a1 + 8) = 0xE300000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

void sub_217F3FC90(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 == 25)
  {
    v4 = 0xED00006E6F697469;
    v5 = 0x6445664F74736542;
  }

  else
  {
    if (v3 != 5)
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v6 = -1;
      goto LABEL_7;
    }

    v4 = 0xEF736569726F7453;
    v5 = 0x676E69646E657254;
  }

  MEMORY[0x21CEAEAC0](v5, v4);

  *a2 = 2831974;
  *(a2 + 8) = 0xE300000000000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v6 = 5;
LABEL_7:
  *(a2 + 48) = v6;
}

double sub_217F3FD68(uint64_t a1)
{

  sub_217F4AB24();

  return result;
}

uint64_t sub_217F3FDC0()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217F3FE0C()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

double sub_217F3FE58(uint64_t a1)
{

  sub_217F4AB24();

  return result;
}

uint64_t sub_217F3FEB0(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217F3FF00@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5348, &unk_217F4CBB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217F4C8A0;
  MEMORY[0x21CEAEAC0](v5, v4);
  *(v6 + 32) = 2831206;
  *(v6 + 40) = 0xE300000000000000;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 4;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 112);

  v10 = v9(v7, v8);
  v12 = v11;
  MEMORY[0x21CEAEAC0]();
  MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
  MEMORY[0x21CEAEAC0](v5, v4);
  *(v6 + 88) = 2831462;
  *(v6 + 96) = 0xE300000000000000;
  *(v6 + 104) = v10;
  *(v6 + 112) = v12;
  *(v6 + 120) = v5;
  *(v6 + 128) = v4;
  *(v6 + 136) = 3;
  *a3 = v6;
}

char *sub_217F40050(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = 2831206;
  v105 = a4;
  v106 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a4 - 1) + 16))(boxed_opaque_existential_1, a1, a4);
  LODWORD(v11) = *a2;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = v105;
  v15 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v16 = (*(v15 + 112))(v14, v15);
  v18 = v17;
  v101 = 2831206;
  v102 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v19 = 2831206;
  v20 = 0xE300000000000000;
  v21 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v24 = (v23 + 1);
  if (v23 >= v22 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    *(v21 + 2) = v24;
    v25 = &v21[56 * v23];
    *(v25 + 4) = v19;
    *(v25 + 5) = v20;
    *(v25 + 6) = v16;
    *(v25 + 7) = v18;
    *(v25 + 8) = 0;
    *(v25 + 9) = 0;
    v25[80] = 4;
    v103 = v21;
    if (v11 == 25)
    {
      v26 = 0xED00006E6F697469;
      v27 = 0x6445664F74736542;
    }

    else
    {
      if (v11 != 5)
      {
        goto LABEL_9;
      }

      v26 = 0xEF736569726F7453;
      v27 = 0x676E69646E657254;
    }

    v101 = v9 + 768;
    v102 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v27, v26);

    v28 = v101;
    v29 = v102;
    v31 = *(v21 + 2);
    v30 = *(v21 + 3);
    if (v31 >= v30 >> 1)
    {
      v21 = sub_217E8DE90((v30 > 1), v31 + 1, 1, v21);
    }

    *(v21 + 2) = v31 + 1;
    v32 = &v21[56 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v29;
    *(v32 + 3) = 0u;
    *(v32 + 4) = 0u;
    v32[80] = 5;
    v103 = v21;
LABEL_9:
    v33 = v105;
    v34 = v106;
    v18 = v104;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v35 = (*(v34 + 120))(v33, v34);
    v11 = v99;
    MEMORY[0x28223BE20](v35, v36);
    v98[2] = v104;
    sub_217F3F6FC(sub_217F40EAC, v98, v35);
    v21 = v37;

    v20 = *(v21 + 2);
    v16 = MEMORY[0x277D84F90];
    if (!v20)
    {
      break;
    }

    v23 = 0;
    v24 = &_s14descr2829CD401O7FeatureON;
    while (1)
    {
      v22 = *(v21 + 2);
      if (v23 >= v22)
      {
        break;
      }

      v11 = *&v21[8 * v23 + 32];
      v18 = v11[2];
      v9 = *(v16 + 2);
      v19 = v18 + v9;
      if (__OFADD__(v9, v18))
      {
        goto LABEL_95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= *(v16 + 3) >> 1)
      {
        if (v11[2])
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9 <= v19)
        {
          v39 = v18 + v9;
        }

        else
        {
          v39 = v9;
        }

        v16 = sub_217E8DE90(isUniquelyReferenced_nonNull_native, v39, 1, v16);
        if (v11[2])
        {
LABEL_23:
          v22 = *(v16 + 2);
          if (((*(v16 + 3) >> 1) - v22) < v18)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v18)
          {
            v40 = *(v16 + 2);
            v41 = __OFADD__(v40, v18);
            v22 = v18 + v40;
            if (v41)
            {
              goto LABEL_98;
            }

            *(v16 + 2) = v22;
          }

          goto LABEL_12;
        }
      }

      if (v18)
      {
        goto LABEL_96;
      }

LABEL_12:
      if (v20 == ++v23)
      {
        goto LABEL_27;
      }
    }

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
    v21 = sub_217E8DE90((v22 > 1), v24, 1, v21);
  }

LABEL_27:

  sub_217E80F38(v16);
  v42 = v105;
  v43 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v44 = (*(v43 + 40))(v42, v43);
  if (v45)
  {
    goto LABEL_60;
  }

  if (v44 < 1)
  {
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v44 <= v13)
  {
    v42 = v103;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_113;
  }

LABEL_38:
  if (v13 <= -9.22337204e18)
  {
    goto LABEL_101;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v44 <= v13)
  {
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v12 < 9.22337204e18)
  {
    if (v44 <= v12)
    {
      v42 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
      }

      v51 = *(v42 + 2);
      v50 = *(v42 + 3);
      if (v51 >= v50 >> 1)
      {
        v42 = sub_217E8DE90((v50 > 1), v51 + 1, 1, v42);
      }

      *(v42 + 2) = v51 + 1;
      v48 = &v42[56 * v51];
      v49 = xmmword_217F5A200;
      goto LABEL_59;
    }

LABEL_51:
    if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        if (v44 > v12)
        {
          v42 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
          }

          v53 = *(v42 + 2);
          v52 = *(v42 + 3);
          if (v53 >= v52 >> 1)
          {
            v42 = sub_217E8DE90((v52 > 1), v53 + 1, 1, v42);
          }

          *(v42 + 2) = v53 + 1;
          v48 = &v42[56 * v53];
          v49 = xmmword_217F5A210;
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
LABEL_63:
      v60 = *(v42 + 2);
      v59 = *(v42 + 3);
      if (v60 >= v59 >> 1)
      {
        v42 = sub_217E8DE90((v59 > 1), v60 + 1, 1, v42);
      }

      *(v42 + 2) = v60 + 1;
      v61 = &v42[56 * v60];
      v62 = xmmword_217F5A230;
      goto LABEL_71;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
LABEL_34:
  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_217E8DE90((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[56 * v47];
  v49 = xmmword_217F5A1F0;
LABEL_59:
  *(v48 + 2) = v49;
  *(v48 + 3) = 0u;
  *(v48 + 4) = 0u;
  v48[80] = 0;
  v103 = v42;
LABEL_60:
  v54 = v105;
  v55 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v56 = (*(v55 + 56))(v54, v55);
  if (v56 != 2)
  {
    v57 = v56;
    v42 = v103;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    if (v57)
    {
      if ((v58 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_63;
    }

    if ((v58 & 1) == 0)
    {
      v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
    }

    v64 = *(v42 + 2);
    v63 = *(v42 + 3);
    if (v64 >= v63 >> 1)
    {
      v42 = sub_217E8DE90((v63 > 1), v64 + 1, 1, v42);
    }

    *(v42 + 2) = v64 + 1;
    v61 = &v42[56 * v64];
    v62 = xmmword_217F5A220;
LABEL_71:
    *(v61 + 2) = v62;
    *(v61 + 3) = 0u;
    *(v61 + 4) = 0u;
    v61[80] = 0;
    v103 = v42;
  }

  v65 = v105;
  v66 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  if ((*(v66 + 64))(v65, v66))
  {
    v67 = v105;
    v68 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v69 = (*(v68 + 112))(v67, v68);
    v101 = 2831718;
    v102 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v69);

    v70 = v101;
    v71 = v102;
    v72 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_217E8DE90(0, *(v72 + 2) + 1, 1, v72);
    }

    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_217E8DE90((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[56 * v74];
    *(v75 + 4) = v70;
    *(v75 + 5) = v71;
    *(v75 + 3) = 0u;
    *(v75 + 4) = 0u;
    v75[80] = 0;
    v103 = v72;
  }

  v76 = v105;
  v77 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  if ((*(v77 + 48))(v76, v77))
  {
    v78 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_217E8DE90(0, *(v78 + 2) + 1, 1, v78);
    }

    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_217E8DE90((v79 > 1), v80 + 1, 1, v78);
    }

    *(v78 + 2) = v80 + 1;
    v81 = &v78[56 * v80];
    *(v81 + 2) = xmmword_217F5A240;
    *(v81 + 3) = 0u;
    *(v81 + 4) = 0u;
    v81[80] = 0;
    v103 = v78;
  }

  v82 = v105;
  v83 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v84 = (*(v83 + 24))(v82, v83);
  if (v84)
  {
    v85 = *(v84 + 16);
    if (v85)
    {
      v100 = MEMORY[0x277D84F90];
      v86 = v84;
      sub_217EA0D80(0, v85, 0);
      v87 = v100;
      v99[1] = v86;
      v88 = (v86 + 40);
      do
      {
        v89 = *(v88 - 1);
        v90 = *v88;
        v101 = 724656486;
        v102 = 0xE400000000000000;

        MEMORY[0x21CEAEAC0](v89, v90);

        v91 = v101;
        v92 = v102;
        v100 = v87;
        v94 = *(v87 + 16);
        v93 = *(v87 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_217EA0D80((v93 > 1), v94 + 1, 1);
          v87 = v100;
        }

        *(v87 + 16) = v94 + 1;
        v95 = v87 + 56 * v94;
        *(v95 + 32) = v91;
        *(v95 + 40) = v92;
        *(v95 + 48) = 0u;
        *(v95 + 64) = 0u;
        *(v95 + 80) = 1;
        v88 += 2;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    sub_217E80F38(v87);
  }

  v96 = v103;
  __swift_destroy_boxed_opaque_existential_1(v104);
  return v96;
}

uint64_t sub_217F40B54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];

  if (v3 == v5 && v2 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217F4B144();
  }

  return v7 & 1;
}

unint64_t sub_217F40BD8()
{
  result = qword_27CBF7518;
  if (!qword_27CBF7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7518);
  }

  return result;
}

unint64_t sub_217F40C30()
{
  result = qword_280C290A8[0];
  if (!qword_280C290A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C290A8);
  }

  return result;
}

uint64_t _s14descr2829CD401O17ArticleLengthTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O17ArticleLengthTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F40DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F40E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t Classic.AllowListTag.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Classic.AllowListTag.init(identifier:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

unint64_t sub_217F40F20@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  result = sub_217ECC604(v2);
  a1[2] = result;
  return result;
}

void sub_217F40F54(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);

  if (!v5)
  {
    v8 = MEMORY[0x277D84F98];
LABEL_17:

    v28 = *(a1 + 16);
    if (!v28)
    {
LABEL_32:

      *a3 = a1;
      a3[1] = a2;
      a3[2] = v8;
      return;
    }

    v29 = 0;
    v30 = (a1 + 48);
    while (1)
    {
      if (v29 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v34 = *(v30 - 2);
      v33 = *(v30 - 1);
      v35 = *v30;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = sub_217E8E88C(v34, v33);
      v39 = v8[2];
      v40 = (v38 & 1) == 0;
      v19 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v19)
      {
        goto LABEL_36;
      }

      v42 = v38;
      if (v8[3] < v41)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v48 = v37;
      sub_217E90AB0();
      v37 = v48;
      if (v42)
      {
LABEL_19:
        v31 = v37;

        v32 = (v8[7] + 24 * v31);
        *v32 = v34;
        v32[1] = v33;
        v32[2] = v35;

        goto LABEL_20;
      }

LABEL_28:
      v8[(v37 >> 6) + 8] |= 1 << v37;
      v44 = (v8[6] + 16 * v37);
      *v44 = v34;
      v44[1] = v33;
      v45 = (v8[7] + 24 * v37);
      *v45 = v34;
      v45[1] = v33;
      v45[2] = v35;
      v46 = v8[2];
      v19 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v19)
      {
        goto LABEL_38;
      }

      v8[2] = v47;
LABEL_20:
      ++v29;
      v30 += 3;
      if (v28 == v29)
      {
        goto LABEL_32;
      }
    }

    sub_217E94494(v41, isUniquelyReferenced_nonNull_native);
    v37 = sub_217E8E88C(v34, v33);
    if ((v42 & 1) != (v43 & 1))
    {
      goto LABEL_39;
    }

LABEL_27:
    if (v42)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v6 = 0;
  v7 = (a2 + 48);
  v8 = MEMORY[0x277D84F98];
  while (v6 < *(a2 + 16))
  {
    v12 = *(v7 - 2);
    v11 = *(v7 - 1);
    v13 = *v7;
    swift_bridgeObjectRetain_n();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_217E8E88C(v12, v11);
    v17 = v8[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_34;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_217E94494(v20, v14);
      v15 = sub_217E8E88C(v12, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_39;
      }

LABEL_11:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (v14)
    {
      goto LABEL_11;
    }

    v27 = v15;
    sub_217E90AB0();
    v15 = v27;
    if (v21)
    {
LABEL_3:
      v9 = v15;

      v10 = (v8[7] + 24 * v9);
      *v10 = v12;
      v10[1] = v11;
      v10[2] = v13;

      goto LABEL_4;
    }

LABEL_12:
    v8[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v8[6] + 16 * v15);
    *v23 = v12;
    v23[1] = v11;
    v24 = (v8[7] + 24 * v15);
    *v24 = v12;
    v24[1] = v11;
    v24[2] = v13;
    v25 = v8[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_37;
    }

    v8[2] = v26;
LABEL_4:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_217F4B1C4();
  __break(1u);
}

uint64_t sub_217F412BC(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 16) + 16))
  {
    sub_217E8E88C(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_217F412F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_217E8E88C(a1, a2), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 24 * v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t Classic.AllowListTag.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217F41410()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217F414DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4ADD4();

  strcpy(v6, "Default Tags: ");
  v3 = MEMORY[0x21CEAEBA0](v1, &type metadata for Classic.AllowListTag);
  MEMORY[0x21CEAEAC0](v3);

  MEMORY[0x21CEAEAC0](0xD000000000000011, 0x8000000217F61380);
  v4 = MEMORY[0x21CEAEBA0](v2, &type metadata for Classic.AllowListTag);
  MEMORY[0x21CEAEAC0](v4);

  return v6[0];
}

uint64_t sub_217F415BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F41604(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_217F41654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F4169C(uint64_t result, int a2, int a3)
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

uint64_t TagGroupingReason.hashValue.getter()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F41788()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F417FC(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

unint64_t sub_217F41844()
{
  result = qword_27CBF7520;
  if (!qword_27CBF7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagGroupingReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TagGroupingReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F41A4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 64) = a10;
  *(a2 + 72) = a11;
  return result;
}

unint64_t sub_217F41A70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v1 = 0xD000000000000017;
    if (a1 != 8)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 7)
    {
      v1 = 0xD00000000000001CLL;
    }

    v2 = 0xD000000000000016;
    if (a1 != 5)
    {
      v2 = 0xD000000000000019;
    }

    v3 = a1 <= 6u;
  }

  else
  {
    v1 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000019;
    if (a1)
    {
      v2 = 0xD000000000000015;
    }

    v3 = a1 <= 1u;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_217F41BDC()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F41C50(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217F41C9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217F42728(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217F41CDC(uint64_t a1)
{
  v2 = sub_217F423DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217F41D18(uint64_t a1)
{
  v2 = sub_217F423DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217F41D54(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7528, &qword_217F5AD80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F423DC();
  sub_217F4B294();
  v20 = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v19 = 1;
    sub_217F4B0A4();
    v18 = 2;
    sub_217F4B0A4();
    v17 = 3;
    sub_217F4B0A4();
    v16 = 4;
    sub_217F4B0A4();
    v15 = 5;
    sub_217F4B0B4();
    v14 = 6;
    sub_217F4B0A4();
    v13 = 7;
    sub_217F4B0A4();
    v12 = 8;
    sub_217F4B0A4();
    v11 = 9;
    sub_217F4B0A4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217F42014@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7538, qword_217F5AD88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F423DC();
  sub_217F4B274();
  if (!v2)
  {
    v40 = 0;
    sub_217F4AFA4();
    v11 = v10;
    v39 = 1;
    sub_217F4AFA4();
    v13 = v12;
    v38 = 2;
    sub_217F4AFA4();
    v15 = v14;
    v37 = 3;
    sub_217F4AFA4();
    v17 = v16;
    v36 = 4;
    sub_217F4AFA4();
    v19 = v18;
    v35 = 5;
    v20 = sub_217F4AFB4();
    v34 = 6;
    sub_217F4AFA4();
    v22 = v21;
    v33 = 7;
    sub_217F4AFA4();
    v25 = v24;
    v32 = 8;
    sub_217F4AFA4();
    v27 = v26;
    v31 = 9;
    sub_217F4AFA4();
    v30 = v28;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v13;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
    *(a2 + 4) = v19;
    *(a2 + 5) = v20;
    *(a2 + 6) = v22;
    *(a2 + 7) = v25;
    v29 = v30;
    *(a2 + 8) = v27;
    *(a2 + 9) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217F4232C@<Q0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  *(a1 + 16) = xmmword_217F5AD60;
  *(a1 + 32) = 0x408F400000000000;
  *(a1 + 40) = 10;
  *(a1 + 48) = xmmword_217F5AD70;
  *(a1 + 64) = result;
  return result;
}

BOOL sub_217F4235C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4.f64[0] = *(a1 + 32);
  v5.f64[0] = *(a2 + 32);
  v4.f64[1] = *(a1 + 48);
  v5.f64[1] = *(a2 + 48);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(a1 + 56), *(a2 + 56)))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return result;
}

unint64_t sub_217F423DC()
{
  result = qword_27CBF7530;
  if (!qword_27CBF7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7530);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_217F4244C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217F4246C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t _s14descr2829CD401O23TagScoringConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O23TagScoringConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217F42624()
{
  result = qword_27CBF7540;
  if (!qword_27CBF7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7540);
  }

  return result;
}

unint64_t sub_217F4267C()
{
  result = qword_27CBF7548;
  if (!qword_27CBF7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7548);
  }

  return result;
}

unint64_t sub_217F426D4()
{
  result = qword_27CBF7550[0];
  if (!qword_27CBF7550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF7550);
  }

  return result;
}

uint64_t sub_217F42728(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x8000000217F613A0 == a2;
  if (v3 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F613C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F613E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00746867696557 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61400 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61420 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217F61440 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F61460 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F61480 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F614A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_217F42A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  MEMORY[0x21CEAEAC0](a2, a3);
  *(inited + 32) = 2831206;
  *(inited + 40) = 0xE300000000000000;
  v46 = sub_217E97288(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  v16 = *(a4 + 24);
  v56[1] = *(a4 + 40);
  v56[0] = v16;
  v17 = *a6;
  v55[1] = a6[1];
  v55[0] = v17;
  v18 = a7 + 64;
  v19 = 1 << *(a7 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a7 + 64);
  v22 = (v19 + 63) >> 6;
  v51 = a7;

  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  v49 = v22;
  v50 = a7 + 64;
  while (v21)
  {
    v26 = v23;
LABEL_11:
    v27 = __clz(__rbit64(v21)) | (v26 << 6);
    v28 = (*(v51 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v51 + 56) + (v27 << 6));
    v52 = *v31;
    v53 = v31[1];
    *v54 = v31[2];
    *&v54[9] = *(v31 + 41);

    MEMORY[0x21CEAEAC0](v29, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = sub_217E8E88C(2831206, 0xE300000000000000);
    v35 = v24[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_22;
    }

    v38 = v33;
    if (v24[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217E90C38();
      }
    }

    else
    {
      sub_217E94764(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_217E8E88C(2831206, 0xE300000000000000);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_24;
      }

      v34 = v39;
    }

    v21 &= v21 - 1;
    if (v38)
    {

      v25 = (v24[7] + (v34 << 6));
      *v25 = v52;
      v25[1] = v53;
      v25[2] = *v54;
      *(v25 + 41) = *&v54[9];
    }

    else
    {
      v24[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v24[6] + 16 * v34);
      *v41 = 2831206;
      v41[1] = 0xE300000000000000;
      v42 = (v24[7] + (v34 << 6));
      *(v42 + 41) = *&v54[9];
      v42[1] = v53;
      v42[2] = *v54;
      *v42 = v52;

      v43 = v24[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_23;
      }

      v24[2] = v45;
    }

    v23 = v26;
    v22 = v49;
    v18 = v50;
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      sub_217F42DD0(v14, 1.0, a1, v46, v56, v55, v24, a8, a9);

      return;
    }

    v21 = *(v18 + 8 * v26);
    ++v23;
    if (v21)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_217F4B1C4();
  __break(1u);
}

uint64_t sub_217F42DD0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v19 = &v39 - v18;
  v20 = *a5;
  v21 = a5[1];
  v22 = a5[2];
  v41 = a5[3];
  v42 = v22;
  v23 = *a6;
  v24 = a6[1];
  v25 = a6[2];
  v26 = a6[3];
  if (qword_280C28EB8 != -1)
  {
    swift_once();
  }

  v27 = qword_280C28EC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_217F4BC20;
  v29 = MEMORY[0x277D837D0];
  v30 = sub_217F4ACC4();
  v40 = a4;
  v32 = v31;
  *(v28 + 56) = v29;
  *(v28 + 64) = sub_217E86438();
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v33 = sub_217F4AD54();
  sub_217F4AA44("Training Aggregates %@", 22, 2, &dword_217E7B000, v27, v33, v28);

  *&v45 = v20;
  *(&v45 + 1) = v21;
  MEMORY[0x28223BE20](v34, v35);
  *(&v39 - 8) = a8;
  *(&v39 - 7) = a9;
  *(&v39 - 6) = a1;
  *(&v39 - 5) = a2;
  *(&v39 - 4) = v23;
  *(&v39 - 3) = v24;
  *(&v39 - 2) = v25;
  *(&v39 - 1) = v26;
  ClassicAggregateContextType.updateBaseline(with:updateBlock:)(&v45, sub_217F44864, (&v39 - 10), a8, a9);
  *&v45 = v20;
  *(&v45 + 1) = v21;
  v36 = ClassicAggregateContextType.lookupBaseline(with:)(&v45, a8, a9, v19);
  *&v45 = v42;
  *(&v45 + 1) = v41;
  MEMORY[0x28223BE20](v36, v37);
  *(&v39 - 10) = a8;
  *(&v39 - 9) = a9;
  *(&v39 - 8) = v43;
  *(&v39 - 7) = v19;
  *(&v39 - 6) = a1;
  *(&v39 - 5) = a2;
  *(&v39 - 4) = v23;
  *(&v39 - 3) = v24;
  *(&v39 - 2) = v25;
  *(&v39 - 1) = v26;
  ClassicAggregateContextType.update(with:using:updateBlock:)(v40, &v45, sub_217F44878, (&v39 - 12), a8, a9);
  return (*(v16 + 8))(v19, AssociatedTypeWitness);
}

void sub_217F430CC(uint64_t a1, void *a2, uint64_t a3, double *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = *(a3 + 40);
  v67 = *(a3 + 24);
  v73 = *(a3 + 64);
  v12 = *a4;
  v13 = a4[1];
  v14 = a4[2];
  v64 = a5[1];
  v65 = *a5;
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_project_boxed_opaque_existential_2(a2, v15);
  v18 = a2[3];
  v19 = a2[5];
  __swift_project_boxed_opaque_existential_2(a2, v18);
  (*(v19 + 8))(v74, v18, v19);
  sub_217ECB400(&v75);
  v20 = sub_217F40050(v17, v74, &v75, v15, v16);
  v69 = a7;
  v70 = a8;
  v68 = a1;
  v21 = ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(v20, v73, a7, a8);

  v22 = *(v21 + 16);
  if (v22)
  {
    *&v75 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v22, 0);
    v23 = v75;
    v24 = (v21 + 40);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;

      *&v75 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_217EA0864((v27 > 1), v28 + 1, 1);
        v23 = v75;
      }

      v24 += 7;
      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v30 = a2[3];
  v31 = a2[5];
  __swift_project_boxed_opaque_existential_2(a2, v30);
  (*(v31 + 8))(&v75, v30, v31);
  if (v75 - 23 < 0x34 || ((1 << v75) & 0x3FFFDF) != 0)
  {
    v13 = 1.0;
  }

  else if (v75 == 5)
  {
    v13 = v14;
  }

  v32 = a6 + 64;
  v33 = 1 << *(a6 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a6 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = MEMORY[0x277D84F98];
  v71 = v36;
  while (v35)
  {
    v41 = v37;
LABEL_21:
    v42 = __clz(__rbit64(v35)) | (v41 << 6);
    v43 = (*(a6 + 48) + 16 * v42);
    v44 = *v43;
    v45 = v43[1];
    v46 = (*(a6 + 56) + (v42 << 6));
    v47 = v46[1];
    v75 = *v46;
    v76 = v47;
    v77[0] = v46[2];
    *(v77 + 9) = *(v46 + 41);
    *&v74[0] = 2831206;
    *(&v74[0] + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v44, v45);
    v48 = v74[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74[0] = v38;
    v51 = sub_217E8E88C(v48, *(&v48 + 1));
    v52 = v38[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_217F4B1C4();
      __break(1u);
      return;
    }

    v55 = v50;
    if (v38[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217E90C38();
      }
    }

    else
    {
      sub_217E94764(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_217E8E88C(v48, *(&v48 + 1));
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_38;
      }

      v51 = v56;
    }

    v35 &= v35 - 1;
    if (v55)
    {

      v38 = *&v74[0];
      v39 = (*(*&v74[0] + 56) + (v51 << 6));
      v40 = v76;
      *v39 = v75;
      v39[1] = v40;
      v39[2] = v77[0];
      *(v39 + 41) = *(v77 + 9);
    }

    else
    {
      v38 = *&v74[0];
      *(*&v74[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
      *(v38[6] + 16 * v51) = v48;
      v58 = (v38[7] + (v51 << 6));
      *(v58 + 41) = *(v77 + 9);
      v59 = v77[0];
      v58[1] = v76;
      v58[2] = v59;
      *v58 = v75;

      v60 = v38[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_37;
      }

      v38[2] = v62;
    }

    v37 = v41;
    v36 = v71;
    v32 = a6 + 64;
  }

  while (1)
  {
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v41 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v41);
    ++v37;
    if (v35)
    {
      goto LABEL_21;
    }
  }

  v63 = sub_217E97288(v23);

  v75 = v67;
  v76 = v66;
  v74[0] = v65;
  v74[1] = v64;
  sub_217F42DD0(v12, v13, v68, v63, &v75, v74, v38, v69, v70);
}

uint64_t sub_217F435A8(uint64_t a1, int64_t a2, uint64_t a3, double *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = a7;
  v83 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v19 = &v71 - v18;
  v73 = *(a3 + 40);
  v74 = *(a3 + 24);
  v20 = *(a3 + 64);
  v21 = *a4;
  v22 = *a5;
  v71 = a5[1];
  v72 = v22;
  (*(a10 + 40))(a8, a10);
  v23 = *(a10 + 48);
  v81 = a2;
  v23(v84, a8, a10);
  sub_217ECB400(&v85);
  v82 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v75 = v19;
  v78 = AssociatedTypeWitness;
  v25 = sub_217F40050(v19, v84, &v85, AssociatedTypeWitness, AssociatedConformanceWitness);
  v79 = a9;
  v77 = a1;
  v26 = ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(v25, v20, v80, a9);

  v27 = *(v26 + 16);
  if (v27)
  {
    *&v85 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v27, 0);
    v28 = v85;
    v29 = (v26 + 40);
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;

      *&v85 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_217EA0864((v32 > 1), v33 + 1, 1);
        v28 = v85;
      }

      v29 += 7;
      *(v28 + 16) = v33 + 1;
      v34 = v28 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      --v27;
    }

    while (v27);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  sub_217F43B6C(v81, v80, v82, v79, a10);
  v36 = v35;
  v37 = v83 + 64;
  v38 = 1 << *(v83 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v83 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v43 = MEMORY[0x277D84F98];
  v81 = v41;
  v82 = v37;
  while (v40)
  {
    v47 = v42;
LABEL_18:
    v48 = __clz(__rbit64(v40)) | (v47 << 6);
    v49 = (*(v83 + 48) + 16 * v48);
    v50 = *v49;
    v51 = v49[1];
    v52 = (*(v83 + 56) + (v48 << 6));
    v53 = v52[1];
    v85 = *v52;
    v86 = v53;
    v87[0] = v52[2];
    *(v87 + 9) = *(v52 + 41);
    *&v84[0] = 2831206;
    *(&v84[0] + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v50, v51);
    v54 = v84[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = v43;
    v56 = sub_217E8E88C(v54, *(&v54 + 1));
    v58 = v43[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      goto LABEL_29;
    }

    v62 = v57;
    if (v43[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v56;
        sub_217E90C38();
        v56 = v68;
      }
    }

    else
    {
      sub_217E94764(v61, isUniquelyReferenced_nonNull_native);
      v56 = sub_217E8E88C(v54, *(&v54 + 1));
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_31;
      }
    }

    v40 &= v40 - 1;
    if (v62)
    {
      v44 = v56;

      v43 = *&v84[0];
      v45 = (*(*&v84[0] + 56) + (v44 << 6));
      v46 = v86;
      *v45 = v85;
      v45[1] = v46;
      v45[2] = v87[0];
      *(v45 + 41) = *(v87 + 9);
    }

    else
    {
      v43 = *&v84[0];
      *(*&v84[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
      *(v43[6] + 16 * v56) = v54;
      v64 = (v43[7] + (v56 << 6));
      *(v64 + 41) = *(v87 + 9);
      v65 = v87[0];
      v64[1] = v86;
      v64[2] = v65;
      *v64 = v85;

      v66 = v43[2];
      v60 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v60)
      {
        goto LABEL_30;
      }

      v43[2] = v67;
    }

    v42 = v47;
    v41 = v81;
    v37 = v82;
  }

  while (1)
  {
    v47 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v47 >= v41)
    {

      v69 = sub_217E97288(v28);

      v85 = v74;
      v86 = v73;
      v84[0] = v72;
      v84[1] = v71;
      sub_217F42DD0(v21, v36, v77, v69, &v85, v84, v43, v80, v79);

      return (*(v76 + 8))(v75, v78);
    }

    v40 = *(v37 + 8 * v47);
    ++v42;
    if (v40)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F43BFC(uint64_t a1, uint64_t a2, uint64_t a3, long double a4, double a5, double a6, double a7, double a8, double a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_217F4AD74();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v24 - v21;
  (*(*(AssociatedTypeWitness - 8) + 56))(v24 - v21, 1, 1, AssociatedTypeWitness, v20);
  v24[0] = a8;
  v24[1] = a9;
  sub_217F43D78(a1, v22, v24, 0, a2, a3, a4, a5);
  return (*(v18 + 8))(v22, v17);
}

void sub_217F43D78(uint64_t a1, uint64_t a2, double *a3, int a4, uint64_t a5, uint64_t a6, long double a7, double a8)
{
  v62 = a4;
  v57 = a2;
  v11 = sub_217F4A9F4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_217F4AD74();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v59 = &v56 - v17;
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18, v19);
  v56 = &v56 - v20;
  v21 = *a3;
  v22 = a3[1];
  if (qword_280C28EB8 != -1)
  {
    swift_once();
  }

  v23 = qword_280C28EC0;
  v24 = sub_217F4AD24();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v25 = swift_allocObject();
  v66 = xmmword_217F4BC20;
  *(v25 + 16) = xmmword_217F4BC20;
  v68 = 0;
  v69 = 0xE000000000000000;
  v26 = swift_getAssociatedTypeWitness();
  sub_217F4B124();
  v27 = v68;
  v28 = v69;
  *(v25 + 56) = MEMORY[0x277D837D0];
  v65 = sub_217E86438();
  *(v25 + 64) = v65;
  *(v25 + 32) = v27;
  *(v25 + 40) = v28;
  v64 = v23;
  sub_217F4AA44("Updating Aggregate %@", 21, 2, &dword_217E7B000, v23, v24, v25);

  v29 = v21 * a8;
  v30 = v22 * a8;
  if (v29 <= 0.0 && v30 <= 0.0)
  {
    goto LABEL_25;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = *(AssociatedConformanceWitness + 8);
  v33 = (*(v32 + 16))(v26, v32);
  if (a7 == 1.0)
  {
    v34 = v63;
  }

  else
  {
    v34 = v63;
    if (v29 != 1.0)
    {
      v29 = (1.0 - pow(a7, v29)) / (1.0 - a7);
    }
  }

  v35 = pow(a7, v30);
  (*(v32 + 24))(v26, v32);
  if (a7 == 1.0)
  {
    v38 = v60;
    v37 = v61;
    v39 = v59;
  }

  else
  {
    v38 = v60;
    v37 = v61;
    v39 = v59;
    if (v30 != 1.0)
    {
      v30 = (1.0 - v35) / (1.0 - a7);
    }
  }

  v40 = v29 + v33 * v35;
  v41 = v35 * v36 + v30;
  if (v62)
  {
    (*(v38 + 16))(v39, v57, v37);
    if ((*(v34 + 48))(v39, 1, AssociatedTypeWitness) == 1)
    {
      (*(v38 + 8))(v39, v37);
    }

    else
    {
      (*(v34 + 32))(v56, v39, AssociatedTypeWitness);
      v42 = 0.0;
      if (v41 > 0.0 && v40 / v41 > 0.0)
      {
        if (v40 / v41 <= 1.0)
        {
          v42 = v40 / v41;
        }

        else
        {
          v42 = 1.0;
        }
      }

      v43 = swift_getAssociatedConformanceWitness();
      v44 = v56;
      ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, v43);
      v46 = v45;
      (*(v34 + 8))(v44, AssociatedTypeWitness);
      if (v46 < v42)
      {
        v40 = v41 * v46;
      }
    }
  }

  (*(AssociatedConformanceWitness + 16))(v26, AssociatedConformanceWitness, v40);
  (*(AssociatedConformanceWitness + 32))(v26, AssociatedConformanceWitness, v41);
  v47 = (*(AssociatedConformanceWitness + 56))(&v68, v26, AssociatedConformanceWitness);
  if (*v48 != -1)
  {
    ++*v48;
    v47(&v68, 0);
    v49 = v58;
    sub_217F4A9E4();
    (*(AssociatedConformanceWitness + 64))(v49, v26, AssociatedConformanceWitness);
LABEL_25:
    v50 = sub_217F4AD24();
    v51 = swift_allocObject();
    *(v51 + 16) = v66;
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_217F4B124();
    v52 = v68;
    v53 = v69;
    v54 = v64;
    v55 = v65;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = v55;
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    sub_217F4AA44("Updated Aggregate %@", 20, 2, &dword_217E7B000, v54, v50, v51);

    return;
  }

  __break(1u);
}

uint64_t sub_217F443C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, long double a6, double a7, double a8, double a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_217F4AD74();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v26 - v22;
  LOBYTE(a2) = sub_217F4459C(a2, a1, a4, a5);
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(v23, a3, AssociatedTypeWitness);
  (*(v24 + 56))(v23, 0, 1, AssociatedTypeWitness);
  v26[0] = a8;
  v26[1] = a9;
  sub_217F43D78(a1, v23, v26, a2 & 1, a4, a5, a6, a7);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_217F4459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &v20 - v10;
  (*(v7 + 16))(&v20 - v10, a2, AssociatedTypeWitness, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v15 = v14;
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  if (*(a1 + 16))
  {
    v16 = sub_217E8E88C(v13, v15);
    v18 = v17;

    if (v18)
    {
      return *(*(a1 + 56) + (v16 << 6));
    }
  }

  else
  {
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_217F44780(unsigned int *a1, int a2)
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

_WORD *sub_217F447D0(_WORD *result, int a2, int a3)
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

uint64_t sub_217F44890(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_217F4ACF4();
  if (!v22)
  {
    return sub_217F4AC44();
  }

  v44 = v22;
  v48 = sub_217F4AE34();
  v35 = sub_217F4AE44();
  sub_217F4AE14();
  result = sub_217F4ACE4();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_217F4AD14();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_217F4AE24();
      result = sub_217F4AD04();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Classic.TagMappings.sourceTags.getter(_OWORD *a1)
{
  v2 = *(v1 + 8);
  v3 = a1[2];
  v7[0] = a1[1];
  v4 = a1[4];
  v6 = a1[3];
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v4;
  type metadata accessor for Classic.TagMapping(255, v7);
  sub_217F4AC94();
  *&v7[0] = v2;
  sub_217F4AA94();

  swift_getWitnessTable();
  return sub_217F4ACA4();
}

uint64_t Classic.TagMappings.count.getter(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v2 = a1[4];
  v4[2] = a1[3];
  v4[3] = v2;
  type metadata accessor for Classic.TagMapping(0, v4);
  return sub_217F4AC74();
}

uint64_t Classic.TagMappings.mappings(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = v2;
  type metadata accessor for Classic.TagMapping(255, &v4);
  sub_217F4AC94();
  sub_217F4AAC4();
  result = v4;
  if (!v4)
  {
    return sub_217F4AC44();
  }

  return result;
}

uint64_t Classic.TagMapping.description.getter(uint64_t a1)
{
  MEMORY[0x21CEAEAC0](40, 0xE100000000000000);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](0x203E2D2D20, 0xE500000000000000);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](8236, 0xE200000000000000);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_217F44F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6154656372756F73 && a2 == 0xE900000000000067;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEE006761546E6F69 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217F4505C(char a1)
{
  if (!a1)
  {
    return 0x6154656372756F73;
  }

  if (a1 == 1)
  {
    return 0x74616E6974736564;
  }

  return 0x65726F6373;
}

uint64_t sub_217F4515C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F451B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classic.TagMapping.encode(to:)(void *a1, uint64_t a2)
{
  v14 = *(a2 + 16);
  v15 = v14;
  v3 = *(a2 + 56);
  v12 = *(a2 + 24);
  v16 = v12;
  v13 = *(a2 + 40);
  v17 = v13;
  v18 = v3;
  v11 = *(a2 + 64);
  v19 = v11;
  _s14descr2829CD401O10TagMappingV10CodingKeysOMa(255, &v15);
  swift_getWitnessTable();
  v4 = sub_217F4B0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F4B294();
  LOBYTE(v15) = 0;
  v9 = v20;
  sub_217F4B0C4();
  if (!v9)
  {
    LOBYTE(v15) = 1;
    sub_217F4B0C4();
    LOBYTE(v15) = 2;
    sub_217F4B0A4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Classic.TagMapping.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v62 = a6;
  v61 = a5;
  v64 = a1;
  v51 = a9;
  v52 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v17, v16);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v19;
  v66 = v20;
  v67 = v21;
  v68 = v22;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v72 = a10;
  _s14descr2829CD401O10TagMappingV10CodingKeysOMa(255, &v65);
  swift_getWitnessTable();
  v60 = sub_217F4AFF4();
  v54 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v26);
  v28 = &v50 - v27;
  v55 = a2;
  v65 = a2;
  v66 = a3;
  v58 = a3;
  v59 = a4;
  v67 = a4;
  v68 = v61;
  v69 = v62;
  v70 = a7;
  v61 = a7;
  v71 = a8;
  v72 = a10;
  v29 = v64;
  v30 = type metadata accessor for Classic.TagMapping(0, &v65);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v50 - v33;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v62 = v28;
  v35 = v63;
  sub_217F4B274();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v50 = v31;
  v63 = v34;
  v36 = v54;
  v37 = v55;
  v39 = v56;
  v38 = v57;
  v40 = v58;
  LOBYTE(v65) = 0;
  v41 = v62;
  sub_217F4AFC4();
  (*(v53 + 32))(v63, v38, v37);
  LOBYTE(v65) = 1;
  sub_217F4AFC4();
  v42 = v30;
  v43 = *(v30 + 84);
  v44 = v63;
  (*(v52 + 32))(&v63[v43], v39, v40);
  LOBYTE(v65) = 2;
  sub_217F4AFA4();
  v46 = v45;
  (*(v36 + 8))(v41, v60);
  *&v44[*(v42 + 88)] = v46;
  v47 = v42;
  v48 = v50;
  (*(v50 + 16))(v51, v44, v47);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v48 + 8))(v44, v47);
}

uint64_t sub_217F45904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a11;
  v23[7] = a12;
  v21 = type metadata accessor for Classic.TagMapping(0, v23);
  result = (*(*(a4 - 8) + 32))(a9 + *(v21 + 84), a2, a4);
  *(a9 + *(v21 + 88)) = a10;
  return result;
}

uint64_t Classic.TagMappings.init(scoredMappings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v16[7] = a10;
  v17 = a1;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  type metadata accessor for Classic.TagMapping(255, v16);
  sub_217F4AC94();
  sub_217F4AA54();
  swift_getTupleTypeMetadata2();
  sub_217F4AC94();
  sub_217F4AAB4();
  sub_217F4AAB4();
  swift_getWitnessTable();
  sub_217F4AB54();
  v10 = v16[0];
  v17 = a1;

  sub_217F4AA54();
  sub_217F4AAB4();
  sub_217F4AB54();

  v14 = v16[0];
  v16[0] = v10;
  sub_217F4AAA4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_217F4AB74();

  v16[0] = v11;
  result = sub_217F4ACA4();
  *a9 = result;
  a9[1] = v10;
  a9[2] = v14;
  return result;
}

void sub_217F45D5C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v70 = a3;
  v66 = a1;
  v67 = a2;
  v68 = a12;
  v64 = *(a5 - 8);
  v69 = a10;
  MEMORY[0x28223BE20](a1, a2);
  v65 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71[0] = v25;
  v71[1] = v26;
  v71[2] = v27;
  v71[3] = v28;
  v62 = v29;
  v63 = v28;
  v71[4] = v29;
  v71[5] = v30;
  v71[6] = a11;
  v71[7] = v31;
  v61 = type metadata accessor for Classic.TagMapping(0, v71);
  MEMORY[0x28223BE20](v61, v32);
  v34 = &v58 - v33;
  v35 = swift_allocObject();
  v35[2] = a4;
  v35[3] = a5;
  v35[4] = a6;
  v35[5] = a7;
  v37 = v69;
  v36 = v70;
  v35[6] = a8;
  v35[7] = v37;
  v38 = v68;
  v35[8] = a11;
  v35[9] = v38;
  v39 = *(v20 + 16);
  v40 = a4;
  v60 = v20 + 16;
  v59 = v39;
  (v39)(v24, v36);
  v41 = v65;
  v64[2](v65, v66, a5);
  v42 = v67;
  v57 = v38;
  v66 = v34;
  v43 = v34;
  v64 = v24;
  v44 = v41;
  v45 = v62;
  v46 = v63;
  v47 = v69;
  sub_217F45904(v24, v44, a4, a5, a6, v63, v62, v69, v43, a9, a11, v57);
  v48 = swift_allocObject();
  v48[2] = a4;
  v48[3] = a5;
  v48[4] = a6;
  v48[5] = v46;
  v48[6] = v45;
  v48[7] = v47;
  v49 = v68;
  v48[8] = a11;
  v48[9] = v49;
  v48[10] = sub_217F48510;
  v48[11] = v35;
  swift_isUniquelyReferenced_nonNull_native();
  v71[0] = *v42;
  v50 = v71[0];
  *v42 = 0x8000000000000000;
  v69 = v40;
  v68 = sub_217F478D0(v70, v40, v45);
  if (__OFADD__(*(v50 + 16), (v51 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    sub_217F4B1C4();
    __break(1u);
    return;
  }

  v52 = v51;
  sub_217F4AC94();
  sub_217F4AE84();
  v53 = sub_217F4AE64();
  v54 = v71[0];
  if (v53)
  {
    sub_217F478D0(v70, v69, v45);
    if ((v52 & 1) != (v55 & 1))
    {
      goto LABEL_8;
    }
  }

  *v42 = v54;

  if ((v52 & 1) == 0)
  {
    v71[0] = (v48[10])(v56);
    v59(v64, v70, v69);
    sub_217F4AE74();
  }

  sub_217F4AC84();
}

uint64_t sub_217F46170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a8;
  v32 = a7;
  v30 = a6;
  v29 = a5;
  v28 = a2;
  v31 = a1;
  v35 = a12;
  v34 = a11;
  swift_getTupleTypeMetadata2();
  sub_217F4AC94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2, v15);
  v17 = &v27 - v16;
  v18 = *(a3 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v17, v28, TupleTypeMetadata2, v21);
  v25 = *&v17[*(TupleTypeMetadata2 + 48)];
  (*(v18 + 32))(v23, v17, a3);
  v57 = v25;
  v47 = a3;
  v48 = a4;
  v49 = v29;
  v50 = v30;
  v51 = v32;
  v52 = v33;
  v53 = a9;
  v54 = a10;
  v55 = v31;
  v56 = v23;
  v36 = a3;
  v37 = a4;
  v38 = v29;
  v39 = v30;
  v40 = v32;
  v41 = v33;
  v42 = a9;
  v43 = a10;
  v44 = v34;
  v45 = &v46;
  swift_getWitnessTable();
  sub_217F4AB84();

  return (*(v18 + 8))(v23, a3);
}

void sub_217F4644C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v60 = a8;
  v62 = a3;
  v63 = a2;
  v66 = *(a5 - 8);
  v67 = a1;
  v65 = a11;
  MEMORY[0x28223BE20](a1, a2);
  v64 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v61 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[0] = v23;
  v68[1] = v24;
  v68[2] = v25;
  v68[3] = v26;
  v68[4] = v27;
  v68[5] = v28;
  v29 = v28;
  v59 = v28;
  v68[6] = v30;
  v68[7] = a12;
  v57 = type metadata accessor for Classic.TagMapping(0, v68);
  MEMORY[0x28223BE20](v57, v31);
  v33 = &v55 - v32;
  v34 = swift_allocObject();
  v58 = a4;
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = v60;
  v34[6] = v60;
  v34[7] = v29;
  v36 = v65;
  v34[8] = v65;
  v34[9] = a12;
  v37 = v61;
  (*(v19 + 16))(v61, v62, a4);
  v38 = *(v66 + 16);
  v39 = v64;
  v66 += 16;
  v56 = v38;
  v38(v64, v67, a5);
  v62 = v33;
  v40 = v33;
  v41 = v39;
  v42 = v58;
  v43 = v35;
  v44 = v35;
  v45 = v59;
  sub_217F45904(v37, v41, v58, a5, a6, a7, v44, v59, v40, a9, v36, a12);
  v46 = swift_allocObject();
  v46[2] = v42;
  v46[3] = a5;
  v46[4] = a6;
  v46[5] = a7;
  v46[6] = v43;
  v46[7] = v45;
  v46[8] = v65;
  v46[9] = a12;
  v47 = v63;
  v46[10] = sub_217F48404;
  v46[11] = v34;
  swift_isUniquelyReferenced_nonNull_native();
  v68[0] = *v47;
  v48 = v68[0];
  *v47 = 0x8000000000000000;
  v65 = a12;
  sub_217F478D0(v67, a5, a12);
  if (__OFADD__(*(v48 + 16), (v49 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    sub_217F4B1C4();
    __break(1u);
    return;
  }

  v50 = v49;
  sub_217F4AC94();
  sub_217F4AE84();
  v51 = sub_217F4AE64();
  v52 = v68[0];
  if (v51)
  {
    sub_217F478D0(v67, a5, v65);
    if ((v50 & 1) != (v53 & 1))
    {
      goto LABEL_8;
    }
  }

  *v47 = v52;

  if ((v50 & 1) == 0)
  {
    v68[0] = (v46[10])(v54);
    v56(v64, v67, a5);
    sub_217F4AE74();
  }

  sub_217F4AC84();
}

uint64_t Classic.TagMappings.mappings(for:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[2];
  v6[0] = a2[1];
  v3 = a2[4];
  v5 = a2[3];
  v6[1] = v2;
  v6[2] = v5;
  v6[3] = v3;
  type metadata accessor for Classic.TagMapping(255, v6);
  sub_217F4AC94();
  sub_217F4AAC4();
  result = *&v6[0];
  if (!*&v6[0])
  {
    return sub_217F4AC44();
  }

  return result;
}

uint64_t Classic.TagMappings.description.getter(void *a1)
{
  v21[9] = *(v1 + 8);
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v3 = a1[5];
  v15 = a1[4];
  v16 = v3;
  v4 = a1[7];
  v17 = a1[6];
  v18 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;

  v21[0] = v13;
  v21[1] = v2;
  v21[2] = v15;
  v21[3] = v3;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  type metadata accessor for Classic.TagMapping(255, v21);
  sub_217F4AC94();
  v6 = sub_217F4AAB4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_217F44890(sub_217F47BC4, &v12, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v21[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  sub_217F47BFC();
  v10 = sub_217F4AAE4();

  return v10;
}

uint64_t sub_217F46A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](8250, 0xE200000000000000);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a10;
  type metadata accessor for Classic.TagMapping(255, v21);
  sub_217F4AC94();
  v21[0] = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  swift_getWitnessTable();
  result = sub_217F4B134();
  v18 = v23;
  *a9 = v22;
  a9[1] = v18;
  return result;
}

uint64_t sub_217F46B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697070614D776172 && a2 == 0xEB0000000073676ELL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D656372756F73 && a2 == 0xEE0073676E697070 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F61520 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217F46CB8(unsigned __int8 a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](a1);
  return sub_217F4B254();
}

uint64_t sub_217F46D00(char a1)
{
  if (!a1)
  {
    return 0x697070614D776172;
  }

  if (a1 == 1)
  {
    return 0x614D656372756F73;
  }

  return 0xD000000000000013;
}

uint64_t sub_217F46E7C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void, void, void, void))
{
  sub_217F4B224();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_217F4B254();
}

uint64_t sub_217F46F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9]);
  *a5 = result;
  return result;
}

uint64_t sub_217F46FC8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_217F4700C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F47060(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classic.TagMappings.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v28 = a2[3];
  v29 = v4;
  v5 = a2[5];
  v22 = a2[4];
  v30 = v5;
  v20 = a2[6];
  v6 = a2[8];
  v21 = a2[7];
  v7 = a2[9];
  v26 = v6;
  v27 = v7;
  v37 = v4;
  v38 = v28;
  v39 = v22;
  v40 = v5;
  v41 = v20;
  v42 = v21;
  v43 = v6;
  v44 = v7;
  _s14descr2829CD401O11TagMappingsV10CodingKeysOMa(255, &v37);
  swift_getWitnessTable();
  v8 = sub_217F4B0E4();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - v10;
  v12 = *v2;
  v19 = v2[1];
  v18 = v2[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v13 = v28;
  sub_217F4B294();
  v23 = v12;
  v45 = v12;
  v36 = 0;
  v37 = v29;
  v38 = v13;
  v39 = v22;
  v40 = v30;
  v41 = v20;
  v42 = v21;
  v43 = v26;
  v44 = v27;
  type metadata accessor for Classic.TagMapping(255, &v37);
  sub_217F4AC94();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = v25;
  sub_217F4B0C4();
  if (v15)
  {

    return (*(v24 + 8))(v11, v8);
  }

  else
  {
    v17 = v24;

    v37 = v19;
    LOBYTE(v45) = 1;
    sub_217F4AAB4();
    v33 = v30;
    v34 = v14;
    swift_getWitnessTable();
    sub_217F4B0C4();
    v37 = v18;
    LOBYTE(v45) = 2;
    sub_217F4AAB4();
    v31 = v26;
    v32 = v14;
    swift_getWitnessTable();
    sub_217F4B0C4();
    return (*(v17 + 8))(v11, v8);
  }
}

void Classic.TagMappings.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v29 = a9;
  v35 = a2;
  v36 = a6;
  v43 = a2;
  v44 = a3;
  v32 = a10;
  v33 = a3;
  v30 = a7;
  v31 = a4;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  _s14descr2829CD401O11TagMappingsV10CodingKeysOMa(255, &v43);
  swift_getWitnessTable();
  v34 = sub_217F4AFF4();
  v14 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v15);
  v16 = a1[3];
  v37 = a1;
  v17 = a1;
  v19 = &v26 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_217F4B274();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v28 = v14;
    v43 = v35;
    v44 = v33;
    v20 = v30;
    v21 = v31;
    v45 = v31;
    v46 = a5;
    v47 = v36;
    v48 = v30;
    v49 = a8;
    v50 = v32;
    type metadata accessor for Classic.TagMapping(255, &v43);
    sub_217F4AC94();
    LOBYTE(v43) = 0;
    WitnessTable = swift_getWitnessTable();
    v22 = swift_getWitnessTable();
    sub_217F4AFC4();
    v27 = v51;
    sub_217F4AAB4();
    LOBYTE(v51) = 1;
    v40 = v21;
    v41 = v22;
    swift_getWitnessTable();
    sub_217F4AFC4();
    v23 = v43;
    sub_217F4AAB4();
    LOBYTE(v51) = 2;
    v38 = v20;
    v39 = v22;
    swift_getWitnessTable();
    sub_217F4AFC4();
    (*(v28 + 8))(v19, v34);
    v24 = v43;
    v25 = v29;
    *v29 = v27;
    v25[1] = v23;
    v25[2] = v24;

    __swift_destroy_boxed_opaque_existential_1(v37);
  }
}

unint64_t sub_217F478D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217F4AAD4();

  return sub_217F4792C(a1, v6, a2, a3);
}

unint64_t sub_217F4792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_217F4AAF4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_217F47BFC()
{
  result = qword_27CBF75D8[0];
  if (!qword_27CBF75D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF75D8);
  }

  return result;
}

uint64_t sub_217F47C80(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_217F47D14(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))(a1);
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *sub_217F47EB4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t sub_217F480EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217F48134(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F4817C(uint64_t result, int a2, int a3)
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

uint64_t sub_217F481D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217F48268(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F48468(uint64_t a1)
{
  v3 = *(v1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_217F484CC()
{
  v1 = v0[2];
  v4[0] = v0[1];
  v4[1] = v1;
  v2 = v0[4];
  v4[2] = v0[3];
  v4[3] = v2;
  type metadata accessor for Classic.TagMapping(0, v4);
  return sub_217F4AA64();
}

uint64_t getEnumTagSinglePayload for GroupClusteringError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupClusteringError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t (*sub_217F48648(uint64_t a1, uint64_t a2))()
{
  swift_getFunctionTypeMetadata3();
  sub_217F4B114();
  swift_allocObject();
  sub_217F4AC24();
  v97 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_217F4AA34();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = v6;
  *(v9 + 5) = v8;
  *v97 = sub_217F4A1D4;
  v97[1] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_217F4AA34();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = v11;
  *(v14 + 5) = v13;
  v97[2] = sub_217F4A2A4;
  v97[3] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = sub_217F4AA34();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = v16;
  *(v19 + 5) = v18;
  v97[4] = sub_217F4A2A8;
  v97[5] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = sub_217F4AA34();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 2) = a1;
  *(v24 + 3) = a2;
  *(v24 + 4) = v21;
  *(v24 + 5) = v23;
  v97[6] = sub_217F4A2AC;
  v97[7] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = sub_217F4AA34();
  v28 = v27;

  v29 = swift_allocObject();
  *(v29 + 2) = a1;
  *(v29 + 3) = a2;
  *(v29 + 4) = v26;
  *(v29 + 5) = v28;
  v97[8] = sub_217F4A2B0;
  v97[9] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = sub_217F4AA34();
  v33 = v32;

  v34 = swift_allocObject();
  *(v34 + 2) = a1;
  *(v34 + 3) = a2;
  *(v34 + 4) = v31;
  *(v34 + 5) = v33;
  v97[10] = sub_217F4A2B4;
  v97[11] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = sub_217F4AA34();
  v38 = v37;

  v39 = swift_allocObject();
  *(v39 + 2) = a1;
  *(v39 + 3) = a2;
  *(v39 + 4) = v36;
  *(v39 + 5) = v38;
  v97[12] = sub_217F4A2B8;
  v97[13] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  *(v40 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = sub_217F4AA34();
  v43 = v42;

  v44 = swift_allocObject();
  *(v44 + 2) = a1;
  *(v44 + 3) = a2;
  *(v44 + 4) = v41;
  *(v44 + 5) = v43;
  v97[14] = sub_217F4A2BC;
  v97[15] = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = sub_217F4AA34();
  v48 = v47;

  v49 = swift_allocObject();
  *(v49 + 2) = a1;
  *(v49 + 3) = a2;
  *(v49 + 4) = v46;
  *(v49 + 5) = v48;
  v97[16] = sub_217F4A2C0;
  v97[17] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  *(v50 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = sub_217F4AA34();
  v53 = v52;

  v54 = swift_allocObject();
  *(v54 + 2) = a1;
  *(v54 + 3) = a2;
  *(v54 + 4) = v51;
  *(v54 + 5) = v53;
  v97[18] = sub_217F4A2C4;
  v97[19] = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = a1;
  *(v55 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = sub_217F4AA34();
  v58 = v57;

  v59 = swift_allocObject();
  *(v59 + 2) = a1;
  *(v59 + 3) = a2;
  *(v59 + 4) = v56;
  *(v59 + 5) = v58;
  v97[20] = sub_217F4A2C8;
  v97[21] = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = a1;
  *(v60 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = sub_217F4AA34();
  v63 = v62;

  v64 = swift_allocObject();
  *(v64 + 2) = a1;
  *(v64 + 3) = a2;
  *(v64 + 4) = v61;
  *(v64 + 5) = v63;
  v97[22] = sub_217F4A2CC;
  v97[23] = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = a1;
  *(v65 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = sub_217F4AA34();
  v68 = v67;

  v69 = swift_allocObject();
  *(v69 + 2) = a1;
  *(v69 + 3) = a2;
  *(v69 + 4) = v66;
  *(v69 + 5) = v68;
  v97[24] = sub_217F4A2D0;
  v97[25] = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = a1;
  *(v70 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = sub_217F4AA34();
  v73 = v72;

  v74 = swift_allocObject();
  *(v74 + 2) = a1;
  *(v74 + 3) = a2;
  *(v74 + 4) = v71;
  *(v74 + 5) = v73;
  v97[26] = sub_217F4A2D4;
  v97[27] = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = a1;
  *(v75 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = sub_217F4AA34();
  v78 = v77;

  v79 = swift_allocObject();
  *(v79 + 2) = a1;
  *(v79 + 3) = a2;
  *(v79 + 4) = v76;
  *(v79 + 5) = v78;
  v97[28] = sub_217F4A2D8;
  v97[29] = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = a1;
  *(v80 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = sub_217F4AA34();
  v83 = v82;

  v84 = swift_allocObject();
  *(v84 + 2) = a1;
  *(v84 + 3) = a2;
  *(v84 + 4) = v81;
  *(v84 + 5) = v83;
  v97[30] = sub_217F4A2DC;
  v97[31] = v84;
  sub_217F4AC94();
  v85 = sub_217F4AA14();
  v87 = v86;

  v88 = swift_allocObject();
  v88[2] = a1;
  v88[3] = a2;
  v88[4] = v85;
  v88[5] = v87;
  v89 = qword_280C28EB8;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = sub_217F4AA24();
  v92 = v91;
  v93 = swift_allocObject();
  v93[2] = a1;
  v93[3] = a2;
  v93[4] = v90;
  v93[5] = v92;
  MEMORY[0x28223BE20](v93, v94);
  sub_217F4AA04();

  v95 = swift_allocObject();
  *(v95 + 16) = a1;
  *(v95 + 24) = a2;
  *(v95 + 32) = v98;
  return sub_217F4A27C;
}

double sub_217F4995C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 9)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F499B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 10)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49A14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 11)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49A70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 16)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49ACC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 17)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49B28@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 12)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49B84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 14)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_217F49BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 2)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 3)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49C90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 4)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49CE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 5)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49D40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 7)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

__n128 sub_217F49D98(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a3 + 48);
  v20[2] = *(a3 + 32);
  v20[3] = v11;
  v21 = *(a3 + 64);
  v12 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v12;
  v13 = *a6;
  v14 = *a4;
  v19 = *(a4 + 2);
  v15 = a5[1];
  v17[0] = *a5;
  v17[1] = v15;
  v18 = v14;
  sub_217F42A54(a1, v9, v10, v20, &v18, v17, v13, a7, a8);
  return result;
}

uint64_t sub_217F49E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 8)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_217F49E68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 19)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49EC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 20)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

__n128 sub_217F49F20(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 48);
  v17[2] = *(a3 + 32);
  v17[3] = v8;
  v18 = *(a3 + 64);
  v9 = *(a3 + 16);
  v17[0] = *a3;
  v17[1] = v9;
  v10 = *a6;
  v11 = *a4;
  v16 = *(a4 + 2);
  v12 = a5[1];
  v14[0] = *a5;
  v14[1] = v12;
  v15 = v11;
  sub_217F430CC(a1, a2, v17, &v15, v14, v10, a7, a8);
  return result;
}

double sub_217F49F80@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 21)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_217F49FDC(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t (*)(), void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = v10;

  v13 = a2(sub_217F4A320, v12);
  v15 = v14;

  if (!v5)
  {
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = v13;
    v16[5] = v15;
    *a5 = sub_217F4A2E4;
    a5[1] = v16;
  }
}

uint64_t (*sub_217F4A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>))()
{
  result = sub_217F48648(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_217F4A150(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_217F4A198(uint64_t result, int a2, int a3)
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

long double sub_217F4A324(double a1, double a2, long double a3, double a4)
{
  v7 = 0.0;
  if (a3 != 0.0)
  {
    v7 = 555.0;
    v9 = (1.0 - pow(a3, 555.0)) / (1.0 - a3);
    if (v9 >= a2)
    {
      v9 = a2;
    }

    v10 = 1.0 - (1.0 - a3) * v9;
    if (v10 != 0.0)
    {
      v11 = log(v10);
      v7 = v11 / log(a3);
    }
  }

  return pow(a3, v7) * a1 + a4;
}

double sub_217F4A3D4(double a1, double a2, double a3, double a4)
{
  v4 = a4;
  if (a2 > 0.0 && a3 > 0.0)
  {
    return ((a2 + -1.0) * exp2(-a1 / a3) + 1.0) * a4;
  }

  return v4;
}

double sub_217F4A42C(double a1, double a2, long double a3, long double a4, double a5)
{
  v5 = a2;
  if (a5 <= a1)
  {
    if (a1 != 0.0)
    {
      return pow(a5 / a1, a3) * a2;
    }
  }

  else if (a1 != 1.0)
  {
    return 1.0 - (1.0 - a2) * pow((1.0 - a5) / (1.0 - a1), a4);
  }

  return v5;
}

long double sub_217F4A4A0(double a1, double a2, double a3)
{
  if (a3 <= 0.0 || a1 <= 0.0)
  {
    return 1.0;
  }

  else
  {
    return exp2(-a3 / a1 * a2);
  }
}

long double sub_217F4A4C8(long double a1, double a2, long double a3, double a4)
{
  v6 = a1;
  if (a3 != 1.0 && a1 != 1.0)
  {
    v8 = a2;
    v9 = pow(a3, a1);
    a2 = v8;
    v6 = (1.0 - v9) / (1.0 - a3);
  }

  return v6 + pow(a3, a2) * a4;
}

void sub_217F4A540(long double a1, long double a2, double a3)
{
  if (a1 != 0.0)
  {
    v5 = (1.0 - pow(a1, a2)) / (1.0 - a1);
    if (v5 >= a3)
    {
      v5 = a3;
    }

    v6 = 1.0 - (1.0 - a1) * v5;
    if (v6 != 0.0)
    {
      log(v6);
      log(a1);
    }
  }
}

long double sub_217F4A5C8(char a1, double a2, double a3, long double a4, double a5, long double a6, double a7, long double a8, long double a9, double a10)
{
  v17 = pow(a4, a8);
  v18 = 1.0 - a4;
  v19 = (1.0 - v17) / (1.0 - a4);
  if (a4 == 0.0)
  {
    if ((a1 & 1) == 0)
    {
      v25 = a7 * 0.0;
      v26 = 1.0;
      v21 = v25;
      v27 = a9;
      if (a6 == 1.0)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v25 == v26)
      {
        v25 = 1.0;
        goto LABEL_56;
      }

      v37 = v26 - a6;
      goto LABEL_55;
    }

    if (a6 == 0.0)
    {
      v20 = 0.0;
      v21 = a7 * 0.0;
      goto LABEL_39;
    }

    v56 = a7;
    v24 = 0.0;
LABEL_28:
    v32 = a9;
    v33 = (1.0 - pow(a6, a9)) / (1.0 - a6);
    if (v33 >= a5)
    {
      v33 = a5;
    }

    v34 = 1.0 - (1.0 - a6) * v33;
    if (v34 != 0.0)
    {
      v35 = log(v34);
      v32 = v35 / log(a6);
    }

    v36 = v24 - v32;
    if (v19 >= a2)
    {
      v29 = a2;
    }

    else
    {
      v29 = v19;
    }

    a7 = v56;
    if (v36 >= 0.0)
    {
      v21 = v36 * v56;
      v20 = 0.0;
    }

    else
    {
      v20 = 0.0;
      v21 = v56 * 0.0;
    }

    if (a4 == 0.0)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  if (v19 >= a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = (1.0 - v17) / (1.0 - a4);
  }

  v23 = 1.0 - v18 * v22;
  v24 = a8;
  if (v23 == 0.0)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = log(v23);
    v24 = v28 / log(a4);
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a6 != 0.0)
  {
    v56 = a7;
    goto LABEL_28;
  }

  if (v24 < 0.0)
  {
    v21 = a7 * 0.0;
    goto LABEL_18;
  }

LABEL_17:
  v21 = v24 * a7;
LABEL_18:
  if (v19 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = v19;
  }

LABEL_21:
  v30 = 1.0 - v18 * v29;
  if (v30 == 0.0)
  {
    v20 = a8;
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v31 = log(v30);
    v20 = v31 / log(a4);
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_39:
  if (a6 == 0.0)
  {
    if (v20 < 0.0)
    {
      v25 = a7 * 0.0;
      goto LABEL_51;
    }

LABEL_50:
    v25 = v20 * a7;
LABEL_51:
    v26 = 1.0;
    v27 = a9;
    if (a6 == 1.0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v27 = a9;
  v37 = 1.0 - a6;
  v38 = (1.0 - pow(a6, a9)) / (1.0 - a6);
  if (v38 >= a10)
  {
    v38 = a10;
  }

  v39 = 1.0 - v37 * v38;
  v40 = a9;
  if (v39 != 0.0)
  {
    v41 = log(v39);
    v40 = v41 / log(a6);
  }

  v20 = v20 - v40;
  if (v20 >= 0.0)
  {
    goto LABEL_50;
  }

  v25 = a7 * 0.0;
  if (a6 != 1.0 && v25 != 1.0)
  {
LABEL_55:
    v25 = (1.0 - pow(a6, v25)) / v37;
  }

LABEL_56:
  v42 = pow(a6, v27);
  v43 = 1.0 - a6;
  v44 = 0.0;
  v45 = v27;
  v46 = 0.0;
  if (a6 != 0.0)
  {
    v47 = (1.0 - v42) / v43;
    v48 = a10;
    if (v47 < a10)
    {
      v48 = v47;
    }

    v49 = 1.0 - v43 * v48;
    v44 = v45;
    v46 = v45;
    if (v49 != 0.0)
    {
      v50 = log(v49);
      v44 = v50 / log(a6);
    }

    v51 = a5;
    if (v47 < a5)
    {
      v51 = v47;
    }

    v52 = 1.0 - v43 * v51;
    if (v52 != 0.0)
    {
      v53 = log(v52);
      v46 = v53 / log(a6);
    }
  }

  if (a6 != 1.0 && v44 != 1.0)
  {
    v44 = (1.0 - pow(a6, v44)) / v43;
  }

  v54 = v25 + pow(a6, v21) * 0.0;
  return v44 + pow(a6, v46) * v54;
}