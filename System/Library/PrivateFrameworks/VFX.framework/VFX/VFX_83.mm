uint64_t sub_1AF77F840(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a2 + 16);

  if (!v5)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v7 = 0;
  v8 = v6 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v30 = v6 + 40;
  do
  {
    v9 = (v8 + 16 * v7++);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = v3 == v11 && v4 == v10;
      if (v12 || (sub_1AFDFEE28() & 1) != 0)
      {
        goto LABEL_5;
      }

      v33 = v11;
      v34 = v10;
      sub_1AF770DF0();
      sub_1AF770E44();

      if (sub_1AFDFCD68())
      {
        break;
      }

LABEL_5:
      v9 += 2;
      if (++v7 - v5 == 1)
      {
        goto LABEL_20;
      }
    }

    v13 = v32;
    v35 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC05CE4(0, *(v32 + 16) + 1, 1);
      v13 = v35;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      v16 = v15 + 1;
      v13 = v35;
    }

    *(v13 + 16) = v16;
    v32 = v13;
    v17 = v13 + 16 * v15;
    *(v17 + 32) = v11;
    *(v17 + 40) = v10;
    v8 = v30;
  }

  while (v7 != v5);
LABEL_20:

  v18 = *(v32 + 16);

  if (v18)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v33 = 0x6E6920726F727245;
    v34 = 0xE900000000000020;
    v21 = a3[42];
    v20 = a3[43];

    MEMORY[0x1B2718AE0](v21, v20);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v23 = a3[2];
    v22 = a3[3];

    MEMORY[0x1B2718AE0](v23, v22);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v3, v4);
    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF33DD0);

    v25 = MEMORY[0x1B2718E40](v24, MEMORY[0x1E69E6158]);
    v27 = v26;

    MEMORY[0x1B2718AE0](v25, v27);

    v28 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v29 = v28;
      swift_once();
      v28 = v29;
    }

    v33 = 0;
    sub_1AF0D4F18(v28, &v33, 0x6E6920726F727245, 0xE900000000000020);
  }

  return result;
}

uint64_t sub_1AF77FBC8()
{
  v1 = v0;
  v2 = v0[20];
  if (v2)
  {
    v3 = *(v2 + 16);

    if (v3)
    {
      sub_1AF4486E4();
      v4 = 0;
      v5 = v2 + 40;
      v6 = MEMORY[0x1E69E7CC0];
      v52 = v2 + 40;
      do
      {
        v54 = v6;
        v7 = (v5 + 16 * v4++);
        while (1)
        {
          v57 = v4;
          v8 = *(v7 - 1);
          v9 = *v7;

          v10 = sub_1AFDFDF18();
          v11 = sub_1AFDFDF18();
          v12 = sub_1AFDFDF18();
          v59 = v8;
          v60 = v9;
          if (sub_1AFDFDF18() & 1) != 0 || (v12 & 1) != 0 || (v11 & 1) != 0 || (v10)
          {
            break;
          }

          v7 += 2;
          ++v4;
          if (v57 + 1 - v3 == 1)
          {
            v6 = v54;
            goto LABEL_18;
          }
        }

        v6 = v54;
        v61 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AFC05CE4(0, *(v54 + 16) + 1, 1);
          v6 = v61;
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
          v6 = v61;
        }

        *(v6 + 16) = v14 + 1;
        v15 = v6 + 16 * v14;
        *(v15 + 32) = v8;
        *(v15 + 40) = v9;
        v5 = v52;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_18:

    if (!*(v6 + 16))
    {

      v24 = v56[25];
      if (v24)
      {
        goto LABEL_25;
      }

      return swift_arrayDestroy();
    }

    v1 = v56;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
    v16 = v56[42];
    v17 = v56[43];

    MEMORY[0x1B2718AE0](v16, v17);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v18 = v56[2];
    v19 = v56[3];

    MEMORY[0x1B2718AE0](v18, v19);

    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF33DA0);
    v20 = MEMORY[0x1B2718E40](v6, MEMORY[0x1E69E6158]);
    v22 = v21;

    MEMORY[0x1B2718AE0](v20, v22);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v50 = v23;
      swift_once();
      v23 = v50;
    }

    v59 = 0;
    sub_1AF0D4F18(v23, &v59, 0, 0xE000000000000000);
  }

  v24 = v1[25];
  if (!v24)
  {
    return swift_arrayDestroy();
  }

LABEL_25:
  v25 = *(v24 + 16);

  if (v25)
  {
    sub_1AF4486E4();
    v26 = 0;
    v27 = v24 + 40;
    v28 = MEMORY[0x1E69E7CC0];
    v53 = v24 + 40;
    do
    {
      v55 = v28;
      v29 = (v27 + 16 * v26++);
      while (1)
      {
        v58 = v26;
        v30 = *(v29 - 1);
        v31 = *v29;

        v59 = v30;
        v60 = v31;
        v32 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        v33 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        v34 = sub_1AFDFDF18();
        v59 = v30;
        v60 = v31;
        if (sub_1AFDFDF18() & 1) != 0 || (v34 & 1) != 0 || (v33 & 1) != 0 || (v32)
        {
          break;
        }

        v29 += 2;
        ++v26;
        if (v58 + 1 - v25 == 1)
        {
          v28 = v55;
          goto LABEL_43;
        }
      }

      v28 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v55 + 16) + 1, 1);
        v28 = v61;
      }

      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC05CE4(v36 > 1, v37 + 1, 1);
        v28 = v61;
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v30;
      *(v38 + 40) = v31;
      v27 = v53;
    }

    while (v26 != v25);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

LABEL_43:
  swift_arrayDestroy();

  if (!*(v28 + 16))
  {
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
  v40 = v56[42];
  v41 = v56[43];

  MEMORY[0x1B2718AE0](v40, v41);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v43 = v56[2];
  v42 = v56[3];

  MEMORY[0x1B2718AE0](v43, v42);

  MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF33D70);
  v44 = MEMORY[0x1B2718E40](v28, MEMORY[0x1E69E6158]);
  v46 = v45;

  MEMORY[0x1B2718AE0](v44, v46);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v48 = v59;
  v47 = v60;
  v49 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v51 = v49;
    swift_once();
    v49 = v51;
  }

  v59 = 0;
  sub_1AF0D4F18(v49, &v59, v48, v47);
}

void sub_1AF78037C()
{
  if (v0[18])
  {
    v1 = v0[3];
    v29 = v0[2];
    v30 = v1;
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {
      v2 = v0[27];
      v3 = 1 << *(v2 + 32);
      v4 = -1;
      if (v3 < 64)
      {
        v4 = ~(-1 << v3);
      }

      v5 = v4 & *(v2 + 64);
      v6 = (v3 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v7 = 0;
      for (i = 0; v5; i |= sub_1AFDFDF18())
      {
        v9 = v7;
LABEL_10:
        v10 = (*(v2 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v10;
        v11 = v10[1];
        v5 &= v5 - 1;
        v29 = v12;
        v30 = v11;
      }

      while (1)
      {
        v9 = v7 + 1;
        if (v7 + 1 >= v6)
        {
          break;
        }

        v5 = *(v2 + 8 * v7++ + 72);
        if (v5)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      if ((i & 1) == 0)
      {
        v13 = v0[21];
        if (v13)
        {
          v14 = *(v13 + 16);

          if (!v14)
          {

            v18 = v0[26];
            if (!v18)
            {
LABEL_27:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v29 = 0;
              v30 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
              v23 = v0[42];
              v24 = v0[43];

              MEMORY[0x1B2718AE0](v23, v24);

              MEMORY[0x1B2718AE0](46, 0xE100000000000000);
              v26 = v0[2];
              v25 = v0[3];

              MEMORY[0x1B2718AE0](v26, v25);

              MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF33E30);
              v27 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                v28 = v27;
                swift_once();
                v27 = v28;
              }

              v29 = 0;
              sub_1AF0D4F18(v27, &v29, 0, 0xE000000000000000);

              return;
            }

LABEL_21:
            v19 = *(v18 + 16);

            if (v19)
            {
              v20 = 0;
              v21 = (v18 + 40);
              do
              {
                v22 = *v21;
                v29 = *(v21 - 1);
                v30 = v22;
                v20 |= sub_1AFDFDF18();
                v21 += 2;
                --v19;
              }

              while (v19);

              if (v20)
              {
                return;
              }
            }

            else
            {
            }

            goto LABEL_27;
          }

          v15 = 0;
          v16 = (v13 + 40);
          do
          {
            v17 = *v16;
            v29 = *(v16 - 1);
            v30 = v17;
            v15 |= sub_1AFDFDF18();
            v16 += 2;
            --v14;
          }

          while (v14);

          if (v15)
          {
            return;
          }
        }

        v18 = v0[26];
        if (!v18)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }
  }
}

void *sub_1AF780744()
{

  sub_1AF771214(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280));

  return v0;
}

uint64_t sub_1AF780844()
{
  sub_1AF780744();

  return swift_deallocClassInstance();
}

uint64_t *sub_1AF7808B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF77AA7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF780958@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1AF7809A0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = a1[20];
  v6 = a2[20];
  if (v5)
  {
    if (!v6 || (sub_1AFB7B948(v5, v6) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v6)
  {
    goto LABEL_34;
  }

  v7 = a1[21];
  v8 = a2[21];
  if (v7)
  {
    if (!v8 || (sub_1AFB7B948(v7, v8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v8)
  {
    goto LABEL_34;
  }

  v9 = a1[25];
  v10 = a2[25];
  if (v9)
  {
    if (!v10 || (sub_1AFB7B948(v9, v10) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v10)
  {
    goto LABEL_34;
  }

  v11 = a1[26];
  v12 = a2[26];
  if (v11)
  {
    if (!v12 || (sub_1AFB7B948(v11, v12) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v12)
  {
    goto LABEL_34;
  }

  v13 = a1[27];
  v14 = a2[27];

  v15 = sub_1AF776394(v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_34;
  }

  v16 = a2[28];
  if (a1[28])
  {
    if (v16)
    {

      v18 = sub_1AF776394(v17, v16);

      if (v18)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    v23 = 0;
    return v23 & 1;
  }

  if (v16)
  {
    goto LABEL_34;
  }

LABEL_30:
  v19 = sub_1AF776F1C();
  v21 = v20;
  if (v19 == sub_1AF776F1C() && v21 == v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1AFDFEE28();
  }

  return v23 & 1;
}

unint64_t sub_1AF780B60()
{
  result = qword_1EB63E710;
  if (!qword_1EB63E710)
  {
    result = swift_getWitnessTable(aI7, &_s17CodeSourceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E710);
  }

  return result;
}

unint64_t sub_1AF780BB4()
{
  result = qword_1EB63E720;
  if (!qword_1EB63E720)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF780FD0(255, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E69E6390];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v3, v4);
    atomic_store(result, &qword_1EB63E720);
  }

  return result;
}

unint64_t sub_1AF780C48()
{
  result = qword_1EB63E728;
  if (!qword_1EB63E728)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF780D78(255, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    v4 = v3;
    v5[0] = sub_1AF780D10(&qword_1ED726C58, &qword_1ED726C70, MEMORY[0x1E69E62F8], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63E728);
  }

  return result;
}

uint64_t sub_1AF780D10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF780FD0(255, a2, MEMORY[0x1E69E6158], a3);
    v8 = MEMORY[0x1E69E6190];
    result = swift_getWitnessTable(a4, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF780D78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF780FD0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF780DE4()
{
  result = qword_1EB63E740;
  if (!qword_1EB63E740)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF780D78(255, &qword_1EB63E730, &qword_1EB63E738, &_s8MetadataVN);
    v4 = v3;
    v5[0] = sub_1AF780EA4(&qword_1EB63E748, sub_1AF774FD8, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63E740);
  }

  return result;
}

uint64_t sub_1AF780EA4(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF780FD0(255, &qword_1EB63E738, &_s8MetadataVN, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF780F34()
{
  result = qword_1EB63E750;
  if (!qword_1EB63E750)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF780FD0(255, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = sub_1AF75FCC4();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63E750);
  }

  return result;
}

void sub_1AF780FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF781020()
{
  result = qword_1EB63E768;
  if (!qword_1EB63E768)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF780D78(255, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    v4 = v3;
    v5[0] = sub_1AF7810B0();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63E768);
  }

  return result;
}

unint64_t sub_1AF7810B0()
{
  result = qword_1EB63E770;
  if (!qword_1EB63E770)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF780FD0(255, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF78114C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB63E770);
  }

  return result;
}

unint64_t sub_1AF78114C()
{
  result = qword_1EB63E778;
  if (!qword_1EB63E778)
  {
    result = swift_getWitnessTable(byte_1AFE767A4, &_s17CodeSourceSnippetC9ParameterVN, v0, v1);
    atomic_store(result, &qword_1EB63E778);
  }

  return result;
}

void sub_1AF7811A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF781204()
{
  if (!qword_1EB63E788)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E788);
    }
  }
}

unint64_t sub_1AF781260()
{
  result = qword_1EB63E790;
  if (!qword_1EB63E790)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7811A0(255, &qword_1EB63E780, sub_1AF781204, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = sub_1AF78132C(&qword_1EB63E798, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1EB63E790);
  }

  return result;
}

uint64_t sub_1AF78132C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF781204();
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF78138C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v44 = a1;
  v12 = a1 + 72;
  v42 = v10;
  while (v9)
  {
    v47 = a4;
    v17 = v11;
LABEL_13:
    v19 = (v17 << 10) | (16 * __clz(__rbit64(v9)));
    v20 = (*(v44 + 48) + v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v44 + 56) + v19);
    v24 = *v23;
    v25 = v23[1];
    v52[0] = v21;
    v52[1] = v22;
    v52[2] = v24;
    v52[3] = v25;

    a2(&v48, v52);

    v26 = v48;
    v27 = v49;
    v45 = v50;
    v46 = v51;
    v28 = *v53;
    v29 = sub_1AF419914(v48, v49);
    v31 = v30;
    v32 = v28[2] + ((v30 & 1) == 0);
    if (v28[3] >= v32)
    {
      v33 = v26;
      if ((v47 & 1) == 0)
      {
        sub_1AF849704();
      }

      v36 = v27;
    }

    else
    {
      sub_1AF8357A0(v32, v47 & 1);
      v33 = v26;
      v34 = sub_1AF419914(v26, v27);
      if ((v31 & 1) != (v35 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v29 = v34;
      v36 = v27;
    }

    v9 &= v9 - 1;
    v37 = *v53;
    v38 = 16 * v29;
    if (v31)
    {
      v13 = (v37[7] + v38);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v37[7] + v38);
      *v16 = v15;
      v16[1] = v14;

      a4 = 1;
    }

    else
    {
      a4 = 1;
      v37[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v37[6] + v38);
      *v39 = v33;
      v39[1] = v36;
      v40 = (v37[7] + v38);
      *v40 = v45;
      v40[1] = v46;
      ++v37[2];
    }

    v11 = v17;
    v10 = v42;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (v18 + 1 >= v10)
    {
      break;
    }

    v9 = *(v12 + 8 * v18++);
    if (v9)
    {
      v47 = a4;
      goto LABEL_13;
    }
  }

  sub_1AF0FBB14(v44);
}

uint64_t sub_1AF781654(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 216);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v37 = v1;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v10 == 99 && v11 == 0xE100000000000000;
    if (!v13 && (sub_1AFDFEE28() & 1) == 0)
    {
      v14 = v12 == 0x7070636A626FLL && v11 == 0xE600000000000000;
      if (!v14 && (sub_1AFDFEE28() & 1) == 0 && (v12 != 0x6C6174656DLL || v11 != 0xE500000000000000))
      {
        v16 = sub_1AFDFEE28();
        v17 = v12 == 0x7466697773 && v11 == 0xE500000000000000;
        v18 = v17;
        if ((v16 & 1) == 0 && !v18 && (sub_1AFDFEE28() & 1) == 0 && (v12 != 29546 || v11 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
        {
          continue;
        }
      }
    }

    v19 = *(v1 + 216);
    if (*(v19 + 16))
    {

      v20 = sub_1AF419914(v12, v11);
      if (v21)
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v23 = v22[1];
        v38 = *v22;
        if (*(v1 + 232))
        {
          v24 = *(v1 + 232);
        }

        else
        {
          v24 = MEMORY[0x1E69E7CC8];
        }

        *(v1 + 232) = v24;
        v39 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(v1 + 232);
        *(v1 + 232) = 0x8000000000000000;
        v27 = sub_1AF419914(v12, v11);
        v29 = v28;
        v30 = v26[2] + ((v28 & 1) == 0);
        if (v26[3] >= v30)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF849704();
          }
        }

        else
        {
          sub_1AF8357A0(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_1AF419914(v12, v11);
          if ((v29 & 1) != (v32 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v27 = v31;
        }

        if (v29)
        {
          v33 = (v26[7] + 16 * v27);
          *v33 = v38;
          v33[1] = v39;
        }

        else
        {
          v26[(v27 >> 6) + 8] |= 1 << v27;
          v34 = (v26[6] + 16 * v27);
          *v34 = v12;
          v34[1] = v11;
          v35 = (v26[7] + 16 * v27);
          *v35 = v38;
          v35[1] = v39;
          ++v26[2];
        }

        v1 = v37;
        *(v37 + 232) = v26;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7++ + 72);
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1AF7819E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF118();

  if (v2 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF781A3C(void *a1)
{
  sub_1AF781CA4(0, &qword_1EB63E7B8, sub_1AF781C50, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF781C50();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1AFDFE708();
    v11 = 1;
    sub_1AFDFE708();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

unint64_t sub_1AF781C50()
{
  result = qword_1EB63E7C0;
  if (!qword_1EB63E7C0)
  {
    result = swift_getWitnessTable(byte_1AFE76A20, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7C0);
  }

  return result;
}

void sub_1AF781CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF781D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s17CodeSourceSnippetC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17CodeSourceSnippetC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF781ED0()
{
  result = qword_1EB63E7D0;
  if (!qword_1EB63E7D0)
  {
    result = swift_getWitnessTable(asc_1AFE76940, &_s17CodeSourceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7D0);
  }

  return result;
}

unint64_t sub_1AF781F28()
{
  result = qword_1EB63E7D8;
  if (!qword_1EB63E7D8)
  {
    result = swift_getWitnessTable(aQ_56, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7D8);
  }

  return result;
}

unint64_t sub_1AF781F80()
{
  result = qword_1EB63E7E0;
  if (!qword_1EB63E7E0)
  {
    result = swift_getWitnessTable(byte_1AFE76968, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7E0);
  }

  return result;
}

unint64_t sub_1AF781FD8()
{
  result = qword_1EB63E7E8;
  if (!qword_1EB63E7E8)
  {
    result = swift_getWitnessTable(byte_1AFE76990, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7E8);
  }

  return result;
}

unint64_t sub_1AF782030()
{
  result = qword_1EB63E7F0;
  if (!qword_1EB63E7F0)
  {
    result = swift_getWitnessTable(aY2, &_s17CodeSourceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7F0);
  }

  return result;
}

unint64_t sub_1AF782088()
{
  result = qword_1EB63E7F8;
  if (!qword_1EB63E7F8)
  {
    result = swift_getWitnessTable(byte_1AFE768A0, &_s17CodeSourceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E7F8);
  }

  return result;
}

double sub_1AF7820F4@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = v1[3];
  v3 = v1[4];
  if (v3)
  {
    v5 = v1[3];
LABEL_9:
    v9 = 40 * (__clz(__rbit64(v3)) | (v5 << 6));
    v10 = *(v2 + 48) + v9;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v2 + 56) + v9;
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v10) = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    v1[3] = v5;
    v1[4] = (v3 - 1) & v3;
    v21 = v1[5];
    v1[5] = v21 + 1;
    *a1 = v21;
    *(a1 + 8) = v12;
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18;
    *(a1 + 64) = v10;
    *(a1 + 72) = v19;
    *(a1 + 80) = v20;
  }

  else
  {
    v6 = (v1[2] + 64) >> 6;
    if (v6 <= v4 + 1)
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = (v1[2] + 64) >> 6;
    }

    v8 = v7 - 1;
    while (1)
    {
      v5 = v4 + 1;
      if (v4 + 1 >= v6)
      {
        break;
      }

      v3 = *(v1[1] + 8 + 8 * v4++);
      if (v3)
      {
        goto LABEL_9;
      }
    }

    v1[3] = v8;
    v1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_1AF782220(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF6247EC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1AF79F688(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF78228C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1AFC28858();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1AF79F790(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF782304(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1AF782388(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1AF6B0504(v5, v6);

      sub_1AF6B0504(v5, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1AF782460(unint64_t result, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2719C70](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    a3(&v10, a2);

    if (v3)
    {
      break;
    }

    ++v8;
  }

  while (v7 != v8);
  return result;
}

unint64_t sub_1AF78254C(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
    }

    v6 = (*a2 + 112);

    sub_1AF5AA544();
    if (v7)
    {

      MEMORY[0x1B2718E00](v8);
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }

    ++v5;
  }

  while (v4 != v5);
  return result;
}

unint64_t sub_1AF782684(unint64_t result, uint64_t *a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
    }

    v6 = *a2;

    MEMORY[0x1B2718E00](v7);
    if (*((*(v6 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    ++v5;
    sub_1AFDFD4B8();
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_1AF7827B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1AFC854D0(*(a1 + 16), 0);
    sub_1AFC892B8();

    sub_1AF0FBB14(v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = v2;
  sub_1AF782304(&v6, sub_1AF624800, sub_1AF79F880);
  v3 = v6;
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1AF7828AC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1AF7A4574(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = MEMORY[0x1E6968FB0];
  sub_1AF7A4574(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  *(v2 + 136) = a1;

  v12 = sub_1AFDFC128();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1AF7F4084(1, v11);
  sub_1AF7A7C7C(v11, &qword_1ED7315E0, v8);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  v15 = *(a1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock);

  [v15 lock];
  sub_1AFDFC308();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AF7AE9EC;
  *(v16 + 24) = v13;
  v17 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_onUserTemplatesChanged;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v17);
  *(a1 + v17) = 0x8000000000000000;
  sub_1AF85324C(sub_1AF464154, v16, v7, isUniquelyReferenced_nonNull_native);
  *(a1 + v17) = v22;
  [*(a1 + v14) unlock];

  v19 = sub_1AFDFC318();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  return sub_1AF48710C(v7, v2 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID);
}

uint64_t sub_1AF782B8C()
{
  v1 = *(v0 + 184);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:

    v11 = sub_1AF791074(v10);
    if (v12)
    {
      v15 = v12;
      v26 = v14;
      v27 = v13;
      v28 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF42533C(0, v7[2] + 1, 1, v7);
      }

      v17 = v7[2];
      v16 = v7[3];
      v18 = v7;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_1AF42533C(v16 > 1, v17 + 1, 1, v7);
      }

      v18[2] = v17 + 1;
      v7 = v18;
      v8 = &v18[4 * v17];
      v8[4] = v28;
      v8[5] = v15;
      v8[6] = v27;
      v8[7] = v26;
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v9;
      goto LABEL_10;
    }
  }

  v19 = v7[2];
  if (v19)
  {
    v20 = v7 + 7;
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;

      sub_1AF783728(v21, v22, v23, v24, 1, 0);

      v20 += 4;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1AF782D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[25];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v8)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[21];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v9)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[22];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v10)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[23];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v11)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[24];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v12)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[26];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v13)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[27];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[28];
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v15)
    {
      goto LABEL_30;
    }
  }

  v6 = v3[30];
  if (!*(v6 + 16))
  {
    goto LABEL_28;
  }

  v7 = sub_1AF419914(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_28:
    v6 = v3[31];
    if (*(v6 + 16))
    {

      v7 = sub_1AF419914(a1, a2);
      if (v17)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

LABEL_30:
  v18 = *(*(v6 + 56) + 8 * v7);

  return v18;
}

uint64_t sub_1AF782F9C(uint64_t a1, unint64_t a2)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    MEMORY[0x1B2718AE0](95, 0xE100000000000000);
    v6 = sub_1AFDFEA08();
    v8 = v7;

    MEMORY[0x1B2718AE0](v6, v8);

    v9 = a1;
    v10 = a2;
  }

  else
  {
    v9 = sub_1AFDFEA08();
    v10 = v11;
  }

  ++*(v2 + 144);
  v12 = v9;
  if (!sub_1AF782D90(v9, v10))
  {
    return v12;
  }

  return sub_1AF782F9C(a1, a2);
}

uint64_t sub_1AF7830EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF432690(MEMORY[0x1E69E7CC0]);
  v54 = v4;
  v9 = *(v4 + 256);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v56 = v13;
  v57 = a4;
  v55 = a1;
  while (v12)
  {
    v17 = a3;
LABEL_11:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v14 << 6);
    v21 = (*(v9 + 48) + 16 * v20);
    v22 = *v21;
    v23 = (*(v9 + 56) + 24 * v20);
    v59 = *v23;
    v62 = v21[1];
    v63 = v23[1];
    v24 = v23[2];
    v25 = *v21 == a1 && v21[1] == a2;
    if (v25 || (sub_1AFDFEE28() & 1) != 0)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      a3 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = sub_1AF419914(a3, a4);
      v29 = v28;
      if (v8[3] >= (v8[2] + ((v28 & 1) == 0)))
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v27;
          sub_1AF8498A8();
          v27 = v50;
        }

        a4 = v57;
      }

      else
      {
        sub_1AF835A74(v8[2] + ((v28 & 1) == 0), isUniquelyReferenced_nonNull_native);
        v27 = sub_1AF419914(a3, a4);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_52;
        }
      }

      a1 = v55;
      if (v29)
      {
        v31 = (v8[7] + 24 * v27);
        *v31 = v59;
        v31[1] = v63;
        v31[2] = v24;

        a4 = v57;
      }

      else
      {
        v8[(v27 >> 6) + 8] |= 1 << v27;
        v15 = (v8[6] + 16 * v27);
        *v15 = a3;
        v15[1] = a4;
        v16 = (v8[7] + 24 * v27);
        *v16 = v59;
        v16[1] = v63;
        v16[2] = v24;
        ++v8[2];
      }

      v13 = v56;
    }

    else
    {
      v32 = v59 == a1 && v63 == a2;
      if (v32 || (sub_1AFDFEE28() & 1) != 0)
      {
        swift_retain_n();

        swift_bridgeObjectRetain_n();

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v33 = sub_1AF419914(v22, v62);
        v35 = v34;
        if (v8[3] >= (v8[2] + ((v34 & 1) == 0)))
        {
          a3 = v17;
          if (v60)
          {
            if ((v34 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v61 = v33;
            sub_1AF8498A8();
            v33 = v61;
            if ((v35 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          sub_1AF835A74(v8[2] + ((v34 & 1) == 0), v60);
          v33 = sub_1AF419914(v22, v62);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_52;
          }

          a3 = v17;
          if ((v35 & 1) == 0)
          {
LABEL_32:
            v8[(v33 >> 6) + 8] |= 1 << v33;
            v37 = (v8[6] + 16 * v33);
            *v37 = v22;
            v37[1] = v62;
            v38 = (v8[7] + 24 * v33);
            a4 = v57;
            *v38 = a3;
            v38[1] = v57;
            v38[2] = v24;
            ++v8[2];

            goto LABEL_36;
          }
        }

        v39 = (v8[7] + 24 * v33);
        a4 = v57;
        *v39 = a3;
        v39[1] = v57;
        v39[2] = v24;

        swift_bridgeObjectRelease_n();

LABEL_36:

        v13 = v56;
      }

      else
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v53 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v8;
        v41 = sub_1AF419914(v22, v62);
        v42 = v8[2] + ((v40 & 1) == 0);
        if (v8[3] >= v42)
        {
          a3 = v17;
          if ((v53 & 1) == 0)
          {
            v51 = v40;
            sub_1AF8498A8();
            v40 = v51;
          }

          v46 = v24;
        }

        else
        {
          v43 = v40;
          sub_1AF835A74(v42, v53);
          v44 = sub_1AF419914(v22, v62);
          if ((v43 & 1) != (v45 & 1))
          {
LABEL_52:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v41 = v44;
          v40 = v43;
          v46 = v24;
          a3 = v17;
        }

        v8 = v64;
        if (v40)
        {
          v47 = (v64[7] + 24 * v41);
          *v47 = v59;
          v47[1] = v63;
          v47[2] = v46;
        }

        else
        {
          v64[(v41 >> 6) + 8] |= 1 << v41;
          v48 = (v64[6] + 16 * v41);
          *v48 = v22;
          v48[1] = v62;
          v49 = (v64[7] + 24 * v41);
          *v49 = v59;
          v49[1] = v63;
          v49[2] = v46;
          ++v64[2];
        }

        v13 = v56;
        a4 = v57;
      }
    }
  }

  while (1)
  {
    v18 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v17 = a3;
      v14 = v18;
      goto LABEL_11;
    }
  }

  *(v54 + 256) = v8;
}

uint64_t sub_1AF783728(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v9 = a2;
  v426 = result;
  if (result == a3 && a2 == a4)
  {
    return result;
  }

  result = sub_1AFDFEE28();
  if (result)
  {
    return result;
  }

  v414 = sub_1AF432980(MEMORY[0x1E69E7CC0]);

  v11 = sub_1AF7A3C1C(v10, a6 & 1, v426, v9, sub_1AF8FC1C4);

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v422 = v7;
  v423 = a4;
  v425 = v9;
  v389 = v11;
  v391 = v15;
  while (v14)
  {
    v19 = v16;
LABEL_13:
    v20 = __clz(__rbit64(v14)) | (v19 << 6);
    v21 = (*(v11 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v11 + 56) + 8 * v20);
    sub_1AF4486E4();

    *(v24 + 24) = sub_1AFDFDEB8();
    *(v24 + 32) = v25;

    v405 = v22;
    sub_1AF419914(v23, v22);
    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v7[23];
      v7[23] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84C2DC();
      }

      sub_1AF6B7624();
      v7[23] = v28;
    }

    v30 = *(v24 + 24);
    v29 = *(v24 + 32);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v7[23];
    v7[23] = 0x8000000000000000;
    v34 = sub_1AF419914(v30, v29);
    v35 = v33;
    v36 = v32[2] + ((v33 & 1) == 0);
    if (v32[3] >= v36)
    {
      if (v31)
      {
        v39 = v32;
        if ((v33 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AF84C2DC();
        v39 = v32;
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1AF83AE94(v36, v31);
      v37 = sub_1AF419914(v30, v29);
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_250;
      }

      v34 = v37;
      v39 = v32;
      if ((v35 & 1) == 0)
      {
LABEL_20:
        v39[(v34 >> 6) + 8] |= 1 << v34;
        v40 = (v39[6] + 16 * v34);
        *v40 = v30;
        v40[1] = v29;
        *(v39[7] + 8 * v34) = v24;
        ++v39[2];
        goto LABEL_24;
      }
    }

    *(v39[7] + 8 * v34) = v24;

LABEL_24:
    v7 = v422;
    v422[23] = v39;
    v41 = *(v24 + 32);
    v394 = *(v24 + 24);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v405;
    v44 = sub_1AF419914(v23, v405);
    v46 = v45;
    v47 = v414[2] + ((v45 & 1) == 0);
    if (v414[3] >= v47)
    {
      if ((v42 & 1) == 0)
      {
        v50 = v44;
        sub_1AF849704();
        v44 = v50;
      }

      v43 = v405;
    }

    else
    {
      sub_1AF8357A0(v47, v42);
      v44 = sub_1AF419914(v23, v405);
      if ((v46 & 1) != (v48 & 1))
      {
LABEL_250:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v14 &= v14 - 1;
    if (v46)
    {
      v49 = (v414[7] + 16 * v44);
      *v49 = v394;
      v49[1] = v41;
    }

    else
    {
      v414[(v44 >> 6) + 8] |= 1 << v44;
      v17 = (v414[6] + 16 * v44);
      *v17 = v23;
      v17[1] = v43;
      v18 = (v414[7] + 16 * v44);
      *v18 = v394;
      v18[1] = v41;
      ++v414[2];
    }

    v16 = v19;
    v9 = v425;
    v11 = v389;
    v15 = v391;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (v16 + 1 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16++ + 72);
    if (v14)
    {
      goto LABEL_13;
    }
  }

  v52 = sub_1AF7A3C1C(v51, a6 & 1, v426, v9, sub_1AF8FC1A4);

  v53 = 1 << *(v52 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v52 + 64);
  v56 = (v53 + 63) >> 6;

  v57 = 0;
  v395 = v56;
  while (v55)
  {
    v60 = v57;
LABEL_43:
    v61 = __clz(__rbit64(v55)) | (v60 << 6);
    v62 = (*(v52 + 48) + 16 * v61);
    v64 = *v62;
    v63 = v62[1];
    v65 = *(*(v52 + 56) + 8 * v61);
    sub_1AF4486E4();

    *(v65 + 24) = sub_1AFDFDEB8();
    *(v65 + 32) = v66;

    v406 = v64;
    sub_1AF419914(v64, v63);
    if (v67)
    {
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v7[24];
      v7[24] = 0x8000000000000000;
      if (!v68)
      {
        sub_1AF84C33C();
      }

      sub_1AF6B7624();
      v7[24] = v69;
    }

    v71 = *(v65 + 24);
    v70 = *(v65 + 32);

    v72 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v7;
    v74 = v72;
    v75 = v73[24];
    v73[24] = 0x8000000000000000;
    v76 = sub_1AF419914(v71, v70);
    v78 = v77;
    v79 = v75[2] + ((v77 & 1) == 0);
    if (v75[3] >= v79)
    {
      if ((v74 & 1) == 0)
      {
        v91 = v76;
        sub_1AF84C33C();
        v76 = v91;
      }
    }

    else
    {
      sub_1AF83AEF4(v79, v74);
      v76 = sub_1AF419914(v71, v70);
      if ((v78 & 1) != (v80 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v78)
    {
      *(v75[7] + 8 * v76) = v65;
    }

    else
    {
      v75[(v76 >> 6) + 8] |= 1 << v76;
      v81 = (v75[6] + 16 * v76);
      *v81 = v71;
      v81[1] = v70;
      *(v75[7] + 8 * v76) = v65;
      ++v75[2];
    }

    v422[24] = v75;
    v82 = *(v65 + 32);
    v402 = *(v65 + 24);

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v406;
    v85 = sub_1AF419914(v406, v63);
    v87 = v86;
    v88 = v414[2] + ((v86 & 1) == 0);
    if (v414[3] >= v88)
    {
      if ((v83 & 1) == 0)
      {
        v92 = v85;
        sub_1AF849704();
        v85 = v92;
      }

      v84 = v406;
    }

    else
    {
      sub_1AF8357A0(v88, v83);
      v85 = sub_1AF419914(v406, v63);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_250;
      }
    }

    v55 &= v55 - 1;
    if (v87)
    {
      v90 = (v414[7] + 16 * v85);
      *v90 = v402;
      v90[1] = v82;
    }

    else
    {
      v414[(v85 >> 6) + 8] |= 1 << v85;
      v58 = (v414[6] + 16 * v85);
      *v58 = v84;
      v58[1] = v63;
      v59 = (v414[7] + 16 * v85);
      *v59 = v402;
      v59[1] = v82;
      ++v414[2];
    }

    v57 = v60;
    v7 = v422;
    v9 = v425;
    v56 = v395;
  }

  while (1)
  {
    v60 = v57 + 1;
    if (v57 + 1 >= v56)
    {
      break;
    }

    v55 = *(v52 + 8 * v57++ + 72);
    if (v55)
    {
      goto LABEL_43;
    }
  }

  v94 = sub_1AF7A3C1C(v93, a6 & 1, v426, v9, sub_1AF8FC184);

  v95 = 1 << *(v94 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v94 + 64);
  v98 = (v95 + 63) >> 6;

  v99 = 0;
  v396 = v98;
  while (v97)
  {
    v102 = v99;
LABEL_72:
    v103 = __clz(__rbit64(v97)) | (v102 << 6);
    v104 = (*(v94 + 48) + 16 * v103);
    v106 = *v104;
    v105 = v104[1];
    v107 = *(*(v94 + 56) + 8 * v103);
    sub_1AF4486E4();

    *(v107 + 24) = sub_1AFDFDEB8();
    *(v107 + 32) = v108;

    v407 = v106;
    sub_1AF419914(v106, v105);
    if (v109)
    {
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v7[26];
      v7[26] = 0x8000000000000000;
      if (!v110)
      {
        sub_1AF84C354();
      }

      sub_1AF6B7624();
      v7[26] = v111;
    }

    v113 = *(v107 + 24);
    v112 = *(v107 + 32);

    v114 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v7;
    v116 = v114;
    v117 = v115[26];
    v115[26] = 0x8000000000000000;
    v118 = sub_1AF419914(v113, v112);
    v120 = v119;
    v121 = v117[2] + ((v119 & 1) == 0);
    if (v117[3] >= v121)
    {
      if ((v116 & 1) == 0)
      {
        v133 = v118;
        sub_1AF84C354();
        v118 = v133;
      }
    }

    else
    {
      sub_1AF83AF0C(v121, v116);
      v118 = sub_1AF419914(v113, v112);
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v120)
    {
      *(v117[7] + 8 * v118) = v107;
    }

    else
    {
      v117[(v118 >> 6) + 8] |= 1 << v118;
      v123 = (v117[6] + 16 * v118);
      *v123 = v113;
      v123[1] = v112;
      *(v117[7] + 8 * v118) = v107;
      ++v117[2];
    }

    v422[26] = v117;
    v124 = *(v107 + 32);
    v403 = *(v107 + 24);

    v125 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v407;
    v127 = sub_1AF419914(v407, v105);
    v129 = v128;
    v130 = v414[2] + ((v128 & 1) == 0);
    if (v414[3] >= v130)
    {
      if ((v125 & 1) == 0)
      {
        v134 = v127;
        sub_1AF849704();
        v127 = v134;
      }

      v126 = v407;
    }

    else
    {
      sub_1AF8357A0(v130, v125);
      v127 = sub_1AF419914(v407, v105);
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_250;
      }
    }

    v97 &= v97 - 1;
    if (v129)
    {
      v132 = (v414[7] + 16 * v127);
      *v132 = v403;
      v132[1] = v124;
    }

    else
    {
      v414[(v127 >> 6) + 8] |= 1 << v127;
      v100 = (v414[6] + 16 * v127);
      *v100 = v126;
      v100[1] = v105;
      v101 = (v414[7] + 16 * v127);
      *v101 = v403;
      v101[1] = v124;
      ++v414[2];
    }

    v99 = v102;
    v7 = v422;
    v9 = v425;
    v98 = v396;
  }

  while (1)
  {
    v102 = v99 + 1;
    if (v99 + 1 >= v98)
    {
      break;
    }

    v97 = *(v94 + 8 * v99++ + 72);
    if (v97)
    {
      goto LABEL_72;
    }
  }

  v136 = sub_1AF7A3C1C(v135, a6 & 1, v426, v9, sub_1AF8FC164);

  v137 = 1 << *(v136 + 32);
  v138 = -1;
  if (v137 < 64)
  {
    v138 = ~(-1 << v137);
  }

  v139 = v138 & *(v136 + 64);
  v140 = (v137 + 63) >> 6;

  v141 = 0;
  v397 = v140;
  while (v139)
  {
    v144 = v141;
LABEL_101:
    v145 = __clz(__rbit64(v139)) | (v144 << 6);
    v146 = (*(v136 + 48) + 16 * v145);
    v148 = *v146;
    v147 = v146[1];
    v149 = *(*(v136 + 56) + 8 * v145);
    sub_1AF4486E4();

    *(v149 + 24) = sub_1AFDFDEB8();
    *(v149 + 32) = v150;

    v408 = v148;
    sub_1AF419914(v148, v147);
    if (v151)
    {
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v7[30];
      v7[30] = 0x8000000000000000;
      if (!v152)
      {
        sub_1AF84C36C();
      }

      sub_1AF6B7624();
      v7[30] = v153;
    }

    v155 = *(v149 + 24);
    v154 = *(v149 + 32);

    v156 = swift_isUniquelyReferenced_nonNull_native();
    v157 = v7;
    v158 = v156;
    v159 = v157[30];
    v157[30] = 0x8000000000000000;
    v160 = sub_1AF419914(v155, v154);
    v162 = v161;
    v163 = v159[2] + ((v161 & 1) == 0);
    if (v159[3] >= v163)
    {
      if ((v158 & 1) == 0)
      {
        v175 = v160;
        sub_1AF84C36C();
        v160 = v175;
      }
    }

    else
    {
      sub_1AF83AF24(v163, v158);
      v160 = sub_1AF419914(v155, v154);
      if ((v162 & 1) != (v164 & 1))
      {
        goto LABEL_250;
      }
    }

    if (v162)
    {
      *(v159[7] + 8 * v160) = v149;
    }

    else
    {
      v159[(v160 >> 6) + 8] |= 1 << v160;
      v165 = (v159[6] + 16 * v160);
      *v165 = v155;
      v165[1] = v154;
      *(v159[7] + 8 * v160) = v149;
      ++v159[2];
    }

    v422[30] = v159;
    v166 = *(v149 + 32);
    v404 = *(v149 + 24);

    v167 = swift_isUniquelyReferenced_nonNull_native();
    v168 = v408;
    v169 = sub_1AF419914(v408, v147);
    v171 = v170;
    v172 = v414[2] + ((v170 & 1) == 0);
    if (v414[3] >= v172)
    {
      if ((v167 & 1) == 0)
      {
        v176 = v169;
        sub_1AF849704();
        v169 = v176;
      }

      v168 = v408;
    }

    else
    {
      sub_1AF8357A0(v172, v167);
      v169 = sub_1AF419914(v408, v147);
      if ((v171 & 1) != (v173 & 1))
      {
        goto LABEL_250;
      }
    }

    v139 &= v139 - 1;
    if (v171)
    {
      v174 = (v414[7] + 16 * v169);
      *v174 = v404;
      v174[1] = v166;
    }

    else
    {
      v414[(v169 >> 6) + 8] |= 1 << v169;
      v142 = (v414[6] + 16 * v169);
      *v142 = v168;
      v142[1] = v147;
      v143 = (v414[7] + 16 * v169);
      *v143 = v404;
      v143[1] = v166;
      ++v414[2];
    }

    v141 = v144;
    v7 = v422;
    v9 = v425;
    v140 = v397;
  }

  while (1)
  {
    v144 = v141 + 1;
    if (v141 + 1 >= v140)
    {
      break;
    }

    v139 = *(v136 + 8 * v141++ + 72);
    if (v139)
    {
      goto LABEL_101;
    }
  }

  v177 = v414;

  v179 = sub_1AF7A3C1C(v178, a6 & 1, v426, v9, sub_1AF8FC144);

  v180 = 1 << *(v179 + 32);
  v181 = -1;
  if (v180 < 64)
  {
    v181 = ~(-1 << v180);
  }

  v182 = v181 & *(v179 + 64);
  v183 = (v180 + 63) >> 6;

  v184 = 0;
  while (v182)
  {
    v415 = v177;
LABEL_130:
    v192 = __clz(__rbit64(v182)) | (v184 << 6);
    v193 = (*(v179 + 48) + 16 * v192);
    v195 = *v193;
    v194 = v193[1];
    v196 = *(*(v179 + 56) + 8 * v192);
    sub_1AF4486E4();

    *(v196 + 24) = sub_1AFDFDEB8();
    *(v196 + 32) = v197;

    v409 = v195;
    sub_1AF419914(v195, v194);
    if (v198)
    {
      v199 = swift_isUniquelyReferenced_nonNull_native();
      v430 = v422[31];
      v422[31] = 0x8000000000000000;
      sub_1AF842F8C(v199, *(v430 + 24));

      sub_1AF6B7624();
      v422[31] = v430;
    }

    v182 &= v182 - 1;
    v185 = *(v196 + 24);
    v186 = *(v196 + 32);

    v187 = swift_isUniquelyReferenced_nonNull_native();
    v429 = v422[31];
    v422[31] = 0x8000000000000000;
    sub_1AF856DC0(v196, v185, v186, v187);

    v422[31] = v429;
    v188 = *(v196 + 24);
    v189 = *(v196 + 32);

    v190 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AF854CE8(v188, v189, v409, v194, v190);

    v177 = v415;
  }

  while (1)
  {
    v191 = v184 + 1;
    if (v184 + 1 >= v183)
    {
      break;
    }

    v182 = *(v179 + 8 * v184++ + 72);
    if (v182)
    {
      v415 = v177;
      v184 = v191;
      goto LABEL_130;
    }
  }

  v201 = sub_1AF7A3C1C(v200, a6 & 1, v426, v425, sub_1AF8FC124);

  v202 = v177;

  v203 = 1 << *(v201 + 32);
  v204 = -1;
  if (v203 < 64)
  {
    v204 = ~(-1 << v203);
  }

  v205 = v204 & *(v201 + 64);
  v206 = (v203 + 63) >> 6;

  v207 = 0;
  while (v205)
  {
    v416 = v202;
LABEL_141:
    v215 = __clz(__rbit64(v205)) | (v207 << 6);
    v216 = (*(v201 + 48) + 16 * v215);
    v218 = *v216;
    v217 = v216[1];
    v219 = *(*(v201 + 56) + 8 * v215);
    sub_1AF4486E4();

    *(v219 + 24) = sub_1AFDFDEB8();
    *(v219 + 32) = v220;

    v410 = v218;
    sub_1AF419914(v218, v217);
    if (v221)
    {
      v222 = swift_isUniquelyReferenced_nonNull_native();
      v432 = v422[27];
      v422[27] = 0x8000000000000000;
      sub_1AF842FB8(v222, *(v432 + 24));

      sub_1AF6B7624();
      v422[27] = v432;
    }

    v205 &= v205 - 1;
    v208 = *(v219 + 24);
    v209 = *(v219 + 32);

    v210 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v422[27];
    v422[27] = 0x8000000000000000;
    sub_1AF856DEC(v219, v208, v209, v210);

    v422[27] = v431;
    v211 = *(v219 + 24);
    v212 = *(v219 + 32);

    v213 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AF854CE8(v211, v212, v410, v217, v213);

    v202 = v416;
  }

  while (1)
  {
    v214 = v207 + 1;
    if (v207 + 1 >= v206)
    {
      break;
    }

    v205 = *(v201 + 8 * v207++ + 72);
    if (v205)
    {
      v416 = v202;
      v207 = v214;
      goto LABEL_141;
    }
  }

  v438 = v202;

  v224 = sub_1AF7A3C1C(v223, a6 & 1, v426, v425, sub_1AF8FC104);

  v225 = 1 << *(v224 + 32);
  v226 = -1;
  if (v225 < 64)
  {
    v226 = ~(-1 << v225);
  }

  v227 = v226 & *(v224 + 64);
  v228 = (v225 + 63) >> 6;

  v229 = 0;
  while (v227)
  {
    v234 = v422 + 28;
LABEL_153:
    v236 = __clz(__rbit64(v227)) | (v229 << 6);
    v237 = (*(v224 + 48) + 16 * v236);
    v238 = *v237;
    v239 = v237[1];
    v240 = *(*(v224 + 56) + 8 * v236);
    sub_1AF4486E4();

    *(v240 + 24) = sub_1AFDFDEB8();
    *(v240 + 32) = v241;

    sub_1AF419914(v238, v239);
    if (v242)
    {
      v243 = swift_isUniquelyReferenced_nonNull_native();
      v433 = *v234;
      v244 = *v234;
      *v234 = 0x8000000000000000;
      sub_1AF842FE4(v243, *(v244 + 24));

      sub_1AF6B7624();
      v422[28] = v433;
    }

    v227 &= v227 - 1;
    v230 = *(v240 + 24);
    v231 = *(v240 + 32);

    sub_1AF825EEC(v240, v230, v231);
    v232 = *(v240 + 24);
    v233 = *(v240 + 32);

    sub_1AF8252CC(v232, v233, v238, v239);
  }

  v234 = v422 + 28;
  while (1)
  {
    v235 = v229 + 1;
    if (v229 + 1 >= v228)
    {
      break;
    }

    v227 = *(v224 + 8 * v229++ + 72);
    if (v227)
    {
      v229 = v235;
      goto LABEL_153;
    }
  }

  v246 = sub_1AF7A3C1C(v245, a6 & 1, v426, v425, sub_1AF8FC0E4);

  v247 = 1 << *(v246 + 32);
  v248 = -1;
  if (v247 < 64)
  {
    v248 = ~(-1 << v247);
  }

  v249 = v248 & *(v246 + 64);
  v250 = (v247 + 63) >> 6;

  v251 = 0;
  while (v249)
  {
    v256 = v422 + 25;
LABEL_165:
    v258 = __clz(__rbit64(v249)) | (v251 << 6);
    v259 = (*(v246 + 48) + 16 * v258);
    v260 = *v259;
    v261 = v259[1];
    v262 = *(*(v246 + 56) + 8 * v258);
    sub_1AF4486E4();

    *(v262 + 24) = sub_1AFDFDEB8();
    *(v262 + 32) = v263;

    sub_1AF419914(v260, v261);
    if (v264)
    {
      v265 = swift_isUniquelyReferenced_nonNull_native();
      v434 = *v256;
      v266 = *v256;
      *v256 = 0x8000000000000000;
      sub_1AF842F08(v265, *(v266 + 24));

      sub_1AF6B7624();
      v422[25] = v434;
    }

    v249 &= v249 - 1;
    v252 = *(v262 + 24);
    v253 = *(v262 + 32);

    sub_1AF825DF0(v262, v252, v253);
    v254 = *(v262 + 24);
    v255 = *(v262 + 32);

    sub_1AF8252CC(v254, v255, v260, v261);
  }

  v256 = v422 + 25;
  while (1)
  {
    v257 = v251 + 1;
    if (v251 + 1 >= v250)
    {
      break;
    }

    v249 = *(v246 + 8 * v251++ + 72);
    if (v249)
    {
      v251 = v257;
      goto LABEL_165;
    }
  }

  v268 = sub_1AF7A3C1C(v267, a6 & 1, v426, v425, sub_1AF8FC0C4);

  v269 = 1 << *(v268 + 32);
  v270 = -1;
  if (v269 < 64)
  {
    v270 = ~(-1 << v269);
  }

  v271 = v270 & *(v268 + 64);
  v272 = (v269 + 63) >> 6;

  v273 = 0;
  v274 = v422 + 21;
  v398 = v422 + 21;
  while (v271)
  {
LABEL_176:
    v283 = __clz(__rbit64(v271)) | (v273 << 6);
    v284 = (*(v268 + 48) + 16 * v283);
    v417 = *v284;
    v285 = *(*(v268 + 56) + 8 * v283);
    v286 = *(v285 + 24);
    v287 = *(v285 + 32);
    v411 = v284[1];

    sub_1AF419914(v286, v287);
    if (v288)
    {
      v289 = swift_isUniquelyReferenced_nonNull_native();
      v435 = *v274;
      v290 = *v274;
      *v274 = 0x8000000000000000;
      sub_1AF842F60(v289, *(v290 + 24));

      sub_1AF6B7624();
      *v398 = v435;

      v275 = v422 + 21;
    }

    else
    {

      v275 = v274;
    }

    v271 &= v271 - 1;
    sub_1AF4486E4();
    v276 = sub_1AFDFDEB8();
    v278 = v277;
    *(v285 + 24) = v276;
    *(v285 + 32) = v277;

    v274 = v275;
    sub_1AF825E44(v279, v276, v278);
    v280 = *(v285 + 24);
    v281 = *(v285 + 32);

    sub_1AF8252CC(v280, v281, v417, v411);
  }

  while (1)
  {
    v282 = v273 + 1;
    if (v273 + 1 >= v272)
    {
      break;
    }

    v271 = *(v268 + 8 * v273++ + 72);
    if (v271)
    {
      v273 = v282;
      goto LABEL_176;
    }
  }

  v292 = sub_1AF7A3C1C(v291, a6 & 1, v426, v425, sub_1AF8FBE68);

  v293 = 1 << *(v292 + 32);
  v294 = -1;
  if (v293 < 64)
  {
    v294 = ~(-1 << v293);
  }

  v295 = v294 & *(v292 + 64);
  v296 = (v293 + 63) >> 6;

  v297 = 0;
  v298 = v422 + 22;
  while (v295)
  {
LABEL_187:
    v307 = __clz(__rbit64(v295)) | (v297 << 6);
    v308 = (*(v292 + 48) + 16 * v307);
    v418 = *v308;
    v309 = *(*(v292 + 56) + 8 * v307);
    v310 = *(v309 + 24);
    v311 = *(v309 + 32);
    v412 = v308[1];

    sub_1AF419914(v310, v311);
    if (v312)
    {
      v313 = swift_isUniquelyReferenced_nonNull_native();
      v436 = *v298;
      v314 = *v298;
      *v298 = 0x8000000000000000;
      sub_1AF842F34(v313, *(v314 + 24));

      sub_1AF6B7624();
      v422[22] = v436;

      v299 = v422 + 22;
    }

    else
    {

      v299 = v298;
    }

    v295 &= v295 - 1;
    sub_1AF4486E4();
    v300 = sub_1AFDFDEB8();
    v302 = v301;
    *(v309 + 24) = v300;
    *(v309 + 32) = v301;

    v298 = v299;
    sub_1AF825E98(v303, v300, v302);
    v304 = *(v309 + 24);
    v305 = *(v309 + 32);

    sub_1AF8252CC(v304, v305, v418, v412);
  }

  while (1)
  {
    v306 = v297 + 1;
    if (v297 + 1 >= v296)
    {
      break;
    }

    v295 = *(v292 + 8 * v297++ + 72);
    if (v295)
    {
      v297 = v306;
      goto LABEL_187;
    }
  }

  v316 = sub_1AF7A3FD4(v315, a6 & 1, v426, v425);

  v317 = 1 << *(v316 + 32);
  v318 = -1;
  if (v317 < 64)
  {
    v318 = ~(-1 << v317);
  }

  v319 = v318 & *(v316 + 64);
  v320 = (v317 + 63) >> 6;

  v321 = 0;
  while (v319)
  {
LABEL_197:
    v327 = __clz(__rbit64(v319)) | (v321 << 6);
    v328 = (*(v316 + 48) + 16 * v327);
    v329 = *v328;
    v330 = v328[1];
    v331 = *(*(v316 + 56) + 8 * v327);
    sub_1AF4486E4();

    v331[5] = sub_1AFDFDEB8();
    v331[6] = v332;

    if (a5)
    {
      v331[3] = sub_1AFDFDEB8();
      v331[4] = v333;
    }

    v419 = v329;
    sub_1AF419914(v329, v330);
    if (v334)
    {
      v335 = swift_isUniquelyReferenced_nonNull_native();
      v437 = v422[33];
      v422[33] = 0x8000000000000000;
      sub_1AF842EB0(v335, *(v437 + 24));

      sub_1AF6B7624();
      v422[33] = v437;
    }

    v319 &= v319 - 1;
    v322 = v331[5];
    v323 = v331[6];

    sub_1AF8253D4(v331, v322, v323);
    v324 = v331[5];
    v325 = v331[6];

    sub_1AF8252CC(v324, v325, v419, v330);
  }

  while (1)
  {
    v326 = v321 + 1;
    if (v321 + 1 >= v320)
    {
      break;
    }

    v319 = *(v316 + 8 * v321++ + 72);
    if (v319)
    {
      v321 = v326;
      goto LABEL_197;
    }
  }

  v336 = v423;
  if (a5)
  {
    v337 = *v398;
    v338 = 1 << *(*v398 + 32);
    v339 = -1;
    if (v338 < 64)
    {
      v339 = ~(-1 << v338);
    }

    v340 = v339 & *(*v398 + 64);
    v341 = (v338 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v342 = 0;
    v343 = v422 + 22;
    v390 = v341;
    v392 = v337;
    while (v340)
    {
LABEL_210:
      v346 = *(*(v337 + 56) + 8 * (__clz(__rbit64(v340)) | (v342 << 6)));
      v347 = *(v346 + 80);
      v348 = *(v347 + 16);
      if (v348)
      {
        v420 = v340;
        v427 = MEMORY[0x1E69E7CC0];

        v399 = v346;

        sub_1AFB8C2AC(v348);
        sub_1AF4486E4();
        v349 = v427;
        v350 = v347 + 40;
        do
        {
          v351 = sub_1AFDFDEB8();
          v353 = v352;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v349 + 16) + 1, 1);
            v349 = v427;
          }

          v355 = *(v349 + 16);
          v354 = *(v349 + 24);
          if (v355 >= v354 >> 1)
          {
            sub_1AFC05CE4(v354 > 1, v355 + 1, 1);
            v349 = v427;
          }

          *(v349 + 16) = v355 + 1;
          v356 = v349 + 16 * v355;
          *(v356 + 32) = v351;
          *(v356 + 40) = v353;
          v350 += 16;
          --v348;
          v336 = v423;
        }

        while (v348);

        v337 = v392;
        v344 = v399;
        v343 = v422 + 22;
        v341 = v390;
        v340 = v420;
      }

      else
      {

        v349 = MEMORY[0x1E69E7CC0];
      }

      v340 &= v340 - 1;
      *(v344 + 80) = v349;
    }

    while (1)
    {
      v345 = v342 + 1;
      if (v342 + 1 >= v341)
      {
        break;
      }

      v340 = *(v337 + 8 * v342++ + 72);
      if (v340)
      {
        v342 = v345;
        goto LABEL_210;
      }
    }

    v357 = *v343;
    v358 = 1 << *(v357 + 32);
    v359 = -1;
    if (v358 < 64)
    {
      v359 = ~(-1 << v358);
    }

    v360 = v359 & *(v357 + 64);
    v361 = (v358 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v362 = 0;
    v393 = v361;
    v400 = v357;
    while (v360)
    {
LABEL_227:
      v364 = *(*(v357 + 56) + 8 * (__clz(__rbit64(v360)) | (v362 << 6)));
      v365 = *(v364 + 40);
      v366 = *(v365 + 16);
      if (v366)
      {
        v421 = v360;
        v428 = MEMORY[0x1E69E7CC0];

        sub_1AFB8C2AC(v366);
        sub_1AF4486E4();
        v367 = v428;
        v368 = v365 + 40;
        do
        {
          v369 = sub_1AFDFDEB8();
          v371 = v370;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v367 + 16) + 1, 1);
            v367 = v428;
          }

          v373 = *(v367 + 16);
          v372 = *(v367 + 24);
          if (v373 >= v372 >> 1)
          {
            sub_1AFC05CE4(v372 > 1, v373 + 1, 1);
            v367 = v428;
          }

          *(v367 + 16) = v373 + 1;
          v374 = v367 + 16 * v373;
          *(v374 + 32) = v369;
          *(v374 + 40) = v371;
          v368 += 16;
          --v366;
          v336 = v423;
        }

        while (v366);

        v357 = v400;
        v361 = v393;
        v360 = v421;
      }

      else
      {

        v367 = MEMORY[0x1E69E7CC0];
      }

      v360 &= v360 - 1;
      *(v364 + 40) = v367;
    }

    while (1)
    {
      v363 = v362 + 1;
      if (v362 + 1 >= v361)
      {
        break;
      }

      v360 = *(v357 + 8 * v362++ + 72);
      if (v360)
      {
        v362 = v363;
        goto LABEL_227;
      }
    }
  }

  v375 = 1 << *(v438 + 32);
  v376 = -1;
  if (v375 < 64)
  {
    v376 = ~(-1 << v375);
  }

  v377 = v376 & v438[8];
  v378 = (v375 + 63) >> 6;

  v379 = 0;
  while (v377)
  {
    v380 = v379;
LABEL_244:
    v381 = __clz(__rbit64(v377));
    v377 &= v377 - 1;
    v382 = (v380 << 10) | (16 * v381);
    v383 = (v438[6] + v382);
    v384 = *v383;
    v385 = v383[1];
    v386 = (v438[7] + v382);
    v387 = *v386;
    v388 = v386[1];

    sub_1AF7830EC(v384, v385, v387, v388);
  }

  while (1)
  {
    v380 = v379 + 1;
    if (v379 + 1 >= v378)
    {
      break;
    }

    v377 = v438[v379++ + 9];
    if (v377)
    {
      v379 = v380;
      goto LABEL_244;
    }
  }

  if ((a6 & 1) == 0)
  {
    sub_1AF7830EC(v426, v425, a3, v336);
  }
}

void *sub_1AF785FB4()
{
  v1 = v0;
  v2 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 16))
  {

    v4 = sub_1AF7AA418(v3, v1, sub_1AF7AAF38, sub_1AF7AAF38);

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (v9 + 1 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9++ + 72);
          if (v7)
          {
            v9 = v12;
            goto LABEL_11;
          }
        }

        return v2;
      }

LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v9 << 6);
      v14 = (*(v4 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1AF4455CC(*(v4 + 56) + 88 * v13, &v42);
      v41[0] = v16;
      v41[1] = v15;

      if (sub_1AFDFD178())
      {

        v17 = sub_1AFDFD048();

        v18 = sub_1AF701628(v17, v16, v15);
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v16 = MEMORY[0x1B27189E0](v18, v20, v22, v24);
        v15 = v25;
      }

      else
      {
      }

      sub_1AF7A74D0(&v43, v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v26);
      sub_1AF449D40(v39, &v40);
      swift_dynamicCast();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1AF419914(v16, v15);
      v30 = v29;
      v31 = v2[2] + ((v29 & 1) == 0);
      if (v2[3] < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v35 = v28;
      sub_1AF849704();
      v28 = v35;
      v33 = v37;
      if ((v30 & 1) == 0)
      {
LABEL_5:
        v2[(v28 >> 6) + 8] |= 1 << v28;
        v10 = (v2[6] + 16 * v28);
        *v10 = v16;
        v10[1] = v15;
        v11 = (v2[7] + 16 * v28);
        *v11 = v33;
        v11[1] = v38;
        ++v2[2];
        goto LABEL_6;
      }

LABEL_19:
      v34 = (v2[7] + 16 * v28);
      *v34 = v33;
      v34[1] = v38;

LABEL_6:
      v7 &= v7 - 1;
      sub_1AF7A7124(v41);
    }

    sub_1AF8357A0(v31, isUniquelyReferenced_nonNull_native);
    v28 = sub_1AF419914(v16, v15);
    if ((v30 & 1) != (v32 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_18:
    v33 = v37;
    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  return v2;
}

void *sub_1AF78633C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  v9 = sub_1AF782F9C(v7, v8);
  v11 = v10;

  v12 = *(v4 + 136);
  _s11CodeSnippetCMa();
  swift_allocObject();

  v14 = sub_1AF7752A8(v13, v9, v11, 0, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(v4 + 200);
  *(v4 + 200) = 0x8000000000000000;
  sub_1AF856CE4(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v4 + 200) = v22;
  v16.n128_f64[0] = sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v20);
  if (v21)
  {
    sub_1AF449D40(&v20, &v22);
    v17 = v23;
    v18 = sub_1AF441150(&v22, v23);
    sub_1AF77087C(v18, v17);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v22);
  }

  else
  {
    sub_1AF7A2FA4(&v20, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v16);
  }

  sub_1AF763CA8(a1, 0);
  sub_1AF786504(a1, v14, a3 & 1);
  sub_1AF7868E8(a1);
  return v14;
}

uint64_t sub_1AF786504(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = (*(*a1 + 1024))(a1);
    v8 = v7;
    if (v6 == (*(*a2 + 1024))() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1AFDFEE28();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }
  }

  v14 = sub_1AF7AA0A4(v13, v3, a1, sub_1AF7A9DCC, sub_1AF7A9DCC);

  v45 = a1;

  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
    v20 = v19;
LABEL_16:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v20 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = (*(v14 + 56) + 24 * v22);
    v27 = *v26;
    v28 = v26[1];

    sub_1AF7ADF54(v24, v25, v27, v28, v4, a2);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19++ + 72);
    if (v17)
    {
      v19 = v20;
      goto LABEL_16;
    }
  }

  v30 = sub_1AF7AA0A4(v29, v4, v45, sub_1AF7A7FF4, sub_1AF7A7FF4);

  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  while (v33)
  {
    v36 = v35;
LABEL_25:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v36 << 6);
    v39 = (*(v30 + 48) + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = (*(v30 + 56) + 24 * v38);
    v43 = *v42;
    v44 = v42[1];

    sub_1AF7AE17C(v40, v41, v43, v44, v4, a2);
  }

  while (1)
  {
    v36 = v35 + 1;
    if (v35 + 1 >= v34)
    {
    }

    v33 = *(v30 + 8 * v35++ + 72);
    if (v33)
    {
      v35 = v36;
      goto LABEL_25;
    }
  }
}

uint64_t sub_1AF7868E8(uint64_t result)
{
  v2 = v1;
  if (*(*(v1 + 200) + 16))
  {
    v3 = result;
    v5 = *(result + 24);
    v4 = *(result + 32);

    sub_1AF419914(v5, v4);
    LOBYTE(v5) = v6;

    if (v5)
    {
      v7 = *(v3 + 24);
      v8 = *(v3 + 32);

      sub_1AF850ED4(v7, v8);

      v10 = sub_1AF7AA0A4(v9, v2, v3, sub_1AF7AE3A0, sub_1AF7AE3A0);

      *(v2 + 256) = v10;

      v11 = sub_1AF7AA0A4(v10, v2, v3, sub_1AF7AE60C, sub_1AF7AE60C);

      *(v2 + 256) = v11;

      v13 = sub_1AF7AA418(v12, v3, sub_1AF7AE87C, sub_1AF7AE87C);

      *(v2 + 264) = v13;
    }
  }

  return result;
}

uint64_t sub_1AF786B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  a1[5] = a2;

  a1[6] = a3;

  sub_1AF76B4B4();
  sub_1AF764300();
  a1[10] = a4;

  a1[11] = a5;

  sub_1AF763428();
  v11 = *(a1[5] + 16);
  v50 = a1[5];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = (v50 + 32 + 16 * v12);
      v14 = v13[1];
      v15 = a1[5];
      v16 = *(v15 + 16);
      if (!v16)
      {
        goto LABEL_62;
      }

      v17 = *v13;
      v18 = (v15 + 40);
      v19 = (v15 + 40);
      while (1)
      {
        v20 = *(v19 - 1) == v17 && *v19 == v14;
        if (v20 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v19 += 2;
        if (!--v16)
        {
          goto LABEL_62;
        }
      }

      v21 = *(v15 + 16);
      if (!v21)
      {
        goto LABEL_62;
      }

      v22 = 0;
      while (1)
      {
        v23 = *(v18 - 1) == v17 && *v18 == v14;
        if (v23 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v22;
        v18 += 2;
        if (v21 == v22)
        {
          goto LABEL_62;
        }
      }

      v24 = a1[7];
      if (v24 >> 62)
      {
        if (v22 >= sub_1AFDFE108())
        {
          goto LABEL_62;
        }
      }

      else if (v22 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v25 = a1[7];
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1B2719C70](v22, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v22 + 32);
      }

      ++v12;
      v27 = *(v26 + 40);
      v28 = *(v26 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v6 + 264);
      *(v6 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v26, v27, v28, isUniquelyReferenced_nonNull_native);

      *(v6 + 264) = v52;
    }

    while (v12 != v11);
  }

  v30 = *(a1[10] + 16);
  v51 = a1[10];

  if (v30)
  {
    v31 = 0;
    while (1)
    {
      v32 = (v51 + 32 + 16 * v31);
      v33 = v32[1];
      v34 = a1[10];
      v35 = *(v34 + 16);
      if (!v35)
      {
        break;
      }

      v36 = *v32;
      v37 = (v34 + 40);
      v38 = (v34 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v36 && *v38 == v33;
        if (v39 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v38 += 2;
        if (!--v35)
        {
          goto LABEL_62;
        }
      }

      v40 = *(v34 + 16);
      if (!v40)
      {
        break;
      }

      v41 = 0;
      while (1)
      {
        v42 = *(v37 - 1) == v36 && *v37 == v33;
        if (v42 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v41;
        v37 += 2;
        if (v40 == v41)
        {
          goto LABEL_62;
        }
      }

      v43 = a1[12];
      if (v43 >> 62)
      {
        if (v41 >= sub_1AFDFE108())
        {
          break;
        }
      }

      else if (v41 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v44 = a1[12];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = MEMORY[0x1B2719C70](v41, v44);
      }

      else
      {
        v45 = *(v44 + 8 * v41 + 32);
      }

      ++v31;
      v46 = *(v45 + 40);
      v47 = *(v45 + 48);

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v6 + 264);
      *(v6 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v45, v46, v47, v48);

      *(v6 + 264) = v53;

      if (v31 == v30)
      {
        goto LABEL_59;
      }
    }

LABEL_62:

    __break(1u);
    return result;
  }

LABEL_59:
}

uint64_t sub_1AF786F68@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6158];
  *(&v55 + 1) = MEMORY[0x1E69E6158];
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v54, v49);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v54);
  sub_1AF449D40(v49, &v50);
  v7 = MEMORY[0x1E69E7CA0];
  swift_dynamicCast();
  sub_1AF7874E4(v54, *(&v54 + 1), v51);
  v28 = v51[1];
  v29 = v51[0];
  v26 = v51[2];
  v27 = v51[3];
  v8 = v52;
  v9 = v53;

  v11 = v29;
  if (*(&v29 + 1))
  {
    goto LABEL_2;
  }

  v15.n128_f64[0] = sub_1AF7FDC2C(0x6574616C706D6574, 0xEB00000000646955, &v38);
  if (!v40)
  {
    sub_1AF7A2FA4(&v38, &qword_1ED726850, v7 + 8, v15);
    if ((a1 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v40 = v6;
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v38, &v32);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v38);
    sub_1AF449D40(&v32, &v38);
    swift_dynamicCast();
    v16 = *(v3 + 280);
    if (!*(v16 + 16) || (, v17 = sub_1AF419914(v31, *(&v31 + 1)), v19 = v18, , (v19 & 1) == 0))
    {

      goto LABEL_15;
    }

    v20 = *(*(v16 + 56) + 8 * v17);

    v21.n128_f64[0] = sub_1AF7FDC2C(0x6574616C706D6574, 0xEC000000656D614ELL, &v38);
    if (v40)
    {
      if (swift_dynamicCast())
      {
        v23 = *(&v32 + 1);
        v22 = v32;
LABEL_23:
        v40 = v6;
        *&v38 = v22;
        *(&v38 + 1) = v23;
        sub_1AF7FDB64(1701667182, 0xE400000000000000, &v38);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v38);
        v40 = v6;
        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v38, v47);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v38);
        sub_1AF449D40(v47, v48);
        swift_dynamicCast();
        v32 = v38;
        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        LOBYTE(v34) = 0;
        *(&v34 + 1) = 0;
        v35 = 0xE000000000000000;
        v36 = 0xE000000000000000;
        v37 = v20;
        v39 = 0;
        v40 = 0xE000000000000000;
        v41 = 0;
        v42 = 0;
        v43 = 0xE000000000000000;
        v44 = 0;
        v45 = 0xE000000000000000;
        v46 = v20;
        sub_1AF7ADEA4(&v32, &v31);
        result = sub_1AF7ADF00(&v38);
        v12 = v33;
        v11 = v32;
        v13 = v35;
        v14 = v34;
        v8 = v36;
        v9 = v37;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1AF7A2FA4(&v38, &qword_1ED726850, v7 + 8, v21);
    }

    v40 = v6;
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v38, &v32);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v38);
    sub_1AF449D40(&v32, &v38);
    swift_dynamicCast();
    v23 = *(&v31 + 1);
    v22 = v31;
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    sub_1AF7879A8(v32, *(&v32 + 1), &v54);
    v28 = v55;
    v30 = v54;
    v26 = v56;
    v27 = v57;
    v8 = v58;
    v9 = v59;

    v11 = v30;
    if (*(&v30 + 1))
    {
LABEL_2:
      v13 = v27;
      v12 = v28;
      v14 = v26;
      goto LABEL_20;
    }
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v31 = v38;
  MEMORY[0x1B2718AE0](0xD000000000000049, 0x80000001AFF349C0);
  v40 = v6;
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v38, &v32);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v38);
  sub_1AF449D40(&v32, &v38);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v48[0], *(&v48[0] + 1));

  v24 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v25 = v24;
    swift_once();
    v24 = v25;
  }

  *&v48[0] = 0;
  sub_1AF0D4F18(v24, v48, v31, *(&v31 + 1));

  v8 = 0;
  v9 = 0;
  v11 = 0uLL;
  v12 = 0uLL;
  v14 = 0uLL;
  v13 = 0uLL;
LABEL_20:
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_1AF7874E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v8 = *(v3 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_templateRemapping);
  if (*(v8 + 16))
  {
    v9 = sub_1AF419914(a1, a2);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v6 = *v11;
      v5 = v11[1];
    }
  }

  v53 = v6;
  v54 = v5;
  *&v48 = 124;
  *(&v48 + 1) = 0xE100000000000000;
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    sub_1AF7FB48C(v63);
    v12 = v64;
    if (v64)
    {
      v13 = LOBYTE(v63[0]);
      v14 = v63[1];
      v16 = v65;
      v15 = v66;
      v17 = v67;
      v18 = v68;

      v19 = sub_1AF7F42EC(v13, v14, v12, v16, v15, v17, v18);
      v45 = v20;
      v22 = v21;

      if (v22)
      {
        if (v19)
        {
          v53 = 0;
          v54 = 0xE000000000000000;
          v23 = 0xE700000000000000;
          v24 = 0x6E69746C697542;
          if (v13 != 1)
          {
            v24 = 1919251285;
            v23 = 0xE400000000000000;
          }

          if (v13)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0x6C61636F4CLL;
          }

          if (v13)
          {
            v26 = v23;
          }

          else
          {
            v26 = 0xE500000000000000;
          }

          MEMORY[0x1B2718AE0](v25, v26);

          MEMORY[0x1B2718AE0](124, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v14, v12);
          MEMORY[0x1B2718AE0](124, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v16, v15);
          v27 = v54;
          v44 = v53;
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          v28 = 0xE700000000000000;
          v29 = 0x6E69746C697542;
          if (v13 != 1)
          {
            v29 = 1919251285;
            v28 = 0xE400000000000000;
          }

          if (v13)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0x6C61636F4CLL;
          }

          if (v13)
          {
            v31 = v28;
          }

          else
          {
            v31 = 0xE500000000000000;
          }

          MEMORY[0x1B2718AE0](v30, v31);

          MEMORY[0x1B2718AE0](v14, v12);
          MEMORY[0x1B2718AE0](v16, v15);

          v48 = v46;
          *&v49 = v16;
          *(&v49 + 1) = v15;
          LOBYTE(v50) = v13;
          *(&v50 + 1) = v45;
          *&v51 = v22;
          *(&v51 + 1) = v53;
          *&v52 = v54;
          *(&v52 + 1) = v19;
          v53 = v46;
          v54 = 0xE000000000000000;
          v55 = v16;
          v56 = v15;
          v57 = v13;
          v58 = v45;
          v59 = v22;
          v60 = v44;
          v61 = v27;
          v62 = v19;
          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v54 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF34980);
      MEMORY[0x1B2718AE0](v6, v5);

      v36 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v43 = v36;
        swift_once();
        v36 = v43;
      }

      v53 = 0;
      sub_1AF0D4F18(v36, &v53, 0, 0xE000000000000000);
    }

    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    goto LABEL_41;
  }

  v32 = *(v4 + 272);
  if (*(v32 + 16))
  {

    v33 = sub_1AF419914(v6, v5);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  *&v48 = v6;
  *(&v48 + 1) = v5;
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = 0;
  v51 = 0xE000000000000000;
  *&v52 = 0xE000000000000000;
  *(&v52 + 1) = v35;
  v53 = v6;
  v54 = v5;
  v55 = 0;
  v56 = 0xE000000000000000;
  v57 = 0;
  v58 = 0;
  v59 = 0xE000000000000000;
  v60 = 0;
  v61 = 0xE000000000000000;
  v62 = v35;
LABEL_37:
  sub_1AF7ADEA4(&v48, v47);
  result = sub_1AF7ADF00(&v53);
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
LABEL_41:
  *a3 = v38;
  a3[1] = v39;
  a3[2] = v40;
  a3[3] = v41;
  a3[4] = v42;
  return result;
}

uint64_t sub_1AF7879A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  v6 = sub_1AF7F4614(a1, a2);
  v8 = v7;
  v10 = v9;

  v12 = 0uLL;
  if (v10)
  {

    sub_1AF7FB48C(v49);
    v13 = v50;
    if (v50)
    {
      v34 = v6;
      v14 = LOBYTE(v49[0]);
      v15 = v49[1];
      v16 = v51;
      v17 = v52;
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      v18 = 0xE700000000000000;
      v19 = 0x6E69746C697542;
      if (LOBYTE(v49[0]) != 1)
      {
        v19 = 1919251285;
        v18 = 0xE400000000000000;
      }

      if (LOBYTE(v49[0]))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x6C61636F4CLL;
      }

      if (LOBYTE(v49[0]))
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v20, v21);

      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v15, v13);
      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v16, v17);
      v22 = v40;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      v23 = 0xE700000000000000;
      v24 = 0x6E69746C697542;
      if (v14 != 1)
      {
        v24 = 1919251285;
        v23 = 0xE400000000000000;
      }

      if (v14)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0x6C61636F4CLL;
      }

      if (v14)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v25, v26);

      MEMORY[0x1B2718AE0](v15, v13);
      MEMORY[0x1B2718AE0](v16, v17);

      v36 = v48;
      *&v37 = v16;
      *(&v37 + 1) = v17;
      LOBYTE(v38) = v14;
      *(&v38 + 1) = v8;
      *v39 = v10;
      *&v39[8] = v40;
      *&v39[24] = v34;
      v40 = v48;
      v41 = v16;
      v42 = v17;
      v43 = v14;
      v44 = v8;
      v45 = v10;
      v46 = v22;
      v47 = v34;
      sub_1AF7ADEA4(&v36, v35);
      result = sub_1AF7ADF00(&v40);
      v12 = v36;
      v27 = v37;
      v28 = v38;
      v29 = *v39;
      v30 = *&v39[16];
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000046, 0x80000001AFF34930);
      MEMORY[0x1B2718AE0](v8, v10);

      v31 = v40;
      v32 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v33 = v32;
        swift_once();
        v32 = v33;
      }

      *&v40 = 0;
      sub_1AF0D4F18(v32, &v40, v31, *(&v31 + 1));

      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v12 = 0uLL;
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
  }

  *a3 = v12;
  a3[1] = v27;
  a3[2] = v28;
  a3[3] = v29;
  a3[4] = v30;
  return result;
}

void *sub_1AF787D48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AF782F9C(a1, a2);
  v10 = v9;
  v11 = *(v4 + 136);
  _s10SubContextCMa(0);
  swift_allocObject();
  swift_retain_n();
  v12 = sub_1AF795F18(v8, v10, v11);
  v27 = MEMORY[0x1E69E6158];
  v26[0] = a1;
  v26[1] = a2;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, v26);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  v27 = MEMORY[0x1E69E6370];
  LOBYTE(v26[0]) = 1;
  sub_1AF7FDB64(0x6C706D6554657375, 0xEB00000000657461, v26);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
  v13 = v12[3];
  v14 = v12[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = *(v4 + 184);
  *(v4 + 184) = 0x8000000000000000;
  sub_1AF856D10(v12, v13, v14, isUniquelyReferenced_nonNull_native);

  *(v4 + 184) = v26[0];
  sub_1AF762ABC(a3);
  sub_1AF8D3CBC();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  sub_1AF8D3CBC();
  v20 = v19;

  if (v18)
  {
    v21 = *(v18 + 80);
    v22 = *(v18 + 88);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v20 + 40);
  v24 = *(v20 + 48);

  sub_1AF786B1C(v12, v21, v22, v23, v24);

  return v12;
}

void *sub_1AF787F94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF7874E4(a1, a2, v54);
  v6 = *(&v54[0] + 1);
  if (*(&v54[0] + 1))
  {
    v7 = *&v54[0];
    v9 = v55;
    v8 = v56;
    v10 = v58;
    v59 = v57;
    if (v58)
    {
      v50 = v54[1];

      v11 = sub_1AF787D48(a1, a2, v10);
      if ((v7 != a1 || v6 != a2) && (sub_1AFDFEE28() & 1) == 0)
      {
        v53 = MEMORY[0x1E69E6158];
        v52.n128_u64[0] = v7;
        v52.n128_u64[1] = v6;

        sub_1AF7FDB64(0x6574616C706D6574, 0xEC000000656D614ELL, &v52);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
        v13 = v10[3];
        v12 = v10[4];
        v53 = MEMORY[0x1E69E6158];
        v52.n128_u64[0] = v13;
        v52.n128_u64[1] = v12;

        sub_1AF7FDB64(0x6574616C706D6574, 0xEB00000000646955, &v52);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52.n128_u64[0] = *(v2 + 280);
        *(v2 + 280) = 0x8000000000000000;
        sub_1AF856D3C(v10, v9, v8, isUniquelyReferenced_nonNull_native);

        *(v2 + 280) = v52.n128_u64[0];
        v15 = v11[3];
        v16 = v11[4];

        sub_1AF850F00(v15, v16);

        v17 = v11[4];
        v52.n128_u64[0] = v11[3];
        v52.n128_u64[1] = v17;
        sub_1AF4486E4();
        v18 = MEMORY[0x1E69E6158];
        v11[3] = sub_1AFDFDEB8();
        v11[4] = v19;

        v52.n128_u64[0] = a1;
        v52.n128_u64[1] = a2;
        v51 = 85;
        sub_1AF770DF0();
        sub_1AF770E44();
        if (sub_1AFDFCD68())
        {
          v53 = &_s8TemplateV8CategoryON;
          v52.n128_u8[0] = 2;
          sub_1AF7FDB64(0x6F67657461635F5FLL, 0xEA00000000007972, &v52);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
          v53 = MEMORY[0x1E69E6370];
          v52.n128_u8[0] = 1;
          sub_1AF7FDB64(0x5472657355657375, 0xEF6574616C706D65, &v52);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
          v52 = v59;
          v51 = 85;
          v20 = sub_1AFDFDEB8();
          v53 = v18;
          v52.n128_u64[0] = v20;
          v52.n128_u64[1] = v21;
        }

        else
        {
          v53 = &_s8TemplateV8CategoryON;
          v52.n128_u8[0] = 1;
          sub_1AF7FDB64(0x6F67657461635F5FLL, 0xEA00000000007972, &v52);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
          v53 = MEMORY[0x1E69E6370];
          v52.n128_u8[0] = 1;
          sub_1AF7FDB64(0xD000000000000012, 0x80000001AFF34910, &v52);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
          v53 = v18;
          v52 = v50;
        }

        sub_1AF7FDB64(0x6C6562616CLL, 0xE500000000000000, &v52);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
        v53 = MEMORY[0x1E69E6530];
        v52.n128_u64[0] = 1;
        sub_1AF7FDB64(0x6E4F646165725F5FLL, 0xEA0000000000796CLL, &v52);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
        sub_1AF762ABC(v10);
        v24 = v10[2];
        if (v24)
        {
          v25 = v11[2];

          if (!v25)
          {
            v11[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
          }

          v26 = swift_isUniquelyReferenced_nonNull_native();
          v52.n128_u64[0] = v11[2];
          v11[2] = 0x8000000000000000;
          sub_1AF7A6008(v24, sub_1AF7A2CE4, 0, v26, &v52);

          v11[2] = v52.n128_u64[0];
        }

        v27 = v11[3];
        v28 = v11[4];

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v52.n128_u64[0] = *(v3 + 184);
        *(v3 + 184) = 0x8000000000000000;
        sub_1AF856D10(v11, v27, v28, v29);

        *(v3 + 184) = v52.n128_u64[0];
        sub_1AF8D3CBC();
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        sub_1AF8D3CBC();
        v34 = v33;

        if (v32)
        {
          v35 = *(v32 + 80);
          v36 = *(v32 + 88);
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
          v35 = MEMORY[0x1E69E7CC0];
        }

        v37 = *(v34 + 40);
        v38 = *(v34 + 48);

        sub_1AF786B1C(v11, v35, v36, v37, v38);
      }

      sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v52);
      if (v53)
      {
        v39 = MEMORY[0x1E69E7CA0];
        if (swift_dynamicCast() & 1) != 0 && (v51)
        {
          v40.n128_f64[0] = sub_1AF7FDC2C(0xD000000000000012, 0x80000001AFF34910, &v52);
          if (v53)
          {
            if (swift_dynamicCast() & 1) != 0 && (v51)
            {
              sub_1AF7A2FA4(v54, &qword_1EB63EA78, &_s8TemplateVN, v41);

              return v11;
            }
          }

          else
          {
            sub_1AF7A2FA4(&v52, &qword_1ED726850, v39 + 8, v40);
          }

          sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          v53 = v47;
          v52.n128_u64[0] = &unk_1F2500318;

          sub_1AF7FDB64(0xD00000000000001CLL, 0x80000001AFF23ED0, &v52);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
          sub_1AF764300();

          sub_1AF764300();
        }

        v44 = &qword_1EB63EA78;
        v46 = &_s8TemplateVN;
        v45 = v54;
      }

      else
      {

        sub_1AF7A2FA4(v54, &qword_1EB63EA78, &_s8TemplateVN, v42);
        v44 = &qword_1ED726850;
        v45 = &v52;
        v46 = (MEMORY[0x1E69E7CA0] + 8);
      }

      sub_1AF7A2FA4(v45, v44, v46, v43);
      return v11;
    }

    sub_1AF7A2FA4(v54, &qword_1EB63EA78, &_s8TemplateVN, v57);
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v52.n128_u64[0] = 0;
  v52.n128_u64[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000037, 0x80000001AFF348D0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
  v22 = v52;
  v23 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v49 = v23;
    swift_once();
    v23 = v49;
  }

  v52.n128_u64[0] = 0;
  sub_1AF0D4F18(v23, &v52, v22.n128_i64[0], v22.n128_i64[1]);

  return 0;
}

uint64_t sub_1AF7888DC(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 168) + 16) > 1uLL)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();
    v30 = 0;
    v31 = 0xE000000000000000;
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF34860);
    v29 = MEMORY[0x1E69E6158];
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v28, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    sub_1AF449D40(v27, &v28);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    v5 = " (invalid contextExitMap)";
    v6 = 0xD00000000000001ALL;
LABEL_14:
    MEMORY[0x1B2718AE0](v6, v5 | 0x8000000000000000);
    v24 = v30;
    v23 = v31;
    v25 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v26 = v25;
      swift_once();
      v25 = v26;
    }

    *&v28 = 0;
    sub_1AF0D4F18(v25, &v28, v24, v23);
  }

  if (*(*(v2 + 176) + 16) != 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();
    v30 = 0;
    v31 = 0xE000000000000000;
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF34860);
    v29 = MEMORY[0x1E69E6158];
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v28, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    sub_1AF449D40(v27, &v28);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    v5 = "rename: impossible to rename ";
    v6 = 0xD000000000000019;
    goto LABEL_14;
  }

  sub_1AF8D3CBC();
  v8 = MEMORY[0x1E69E7CC8];
  if (v9)
  {
    v10 = v7;

    *(v2 + 168) = v8;
    v11 = MEMORY[0x1E69E6158];
    v29 = MEMORY[0x1E69E6158];
    *&v28 = a1;
    *(&v28 + 1) = a2;

    sub_1AF7FDB64(1701667182, 0xE400000000000000, &v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    *(v10 + 24) = a1;
    *(v10 + 32) = a2;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v2 + 168);
    *(v2 + 168) = 0x8000000000000000;
    sub_1AF856D94(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v2 + 168) = v28;
    v30 = 6245961;
    v31 = 0xE300000000000000;
    v29 = v11;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v28, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    sub_1AF449D40(v27, &v28);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    v13 = v30;
    v14 = v31;
    *&v28 = 6245961;
    *(&v28 + 1) = 0xE300000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF783728(v13, v14, v28, *(&v28 + 1), 0, 0);
  }

  sub_1AF8D3CBC();
  if (v16)
  {
    v17 = v15;

    *(v2 + 176) = v8;
    v18 = MEMORY[0x1E69E6158];
    v29 = MEMORY[0x1E69E6158];
    *&v28 = a1;
    *(&v28 + 1) = a2;

    sub_1AF7FDB64(1701667182, 0xE400000000000000, &v28);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    *(v17 + 24) = a1;
    *(v17 + 32) = a2;
    swift_bridgeObjectRetain_n();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v2 + 176);
    *(v2 + 176) = 0x8000000000000000;
    sub_1AF856D68(v17, a1, a2, v19);

    *(v2 + 176) = v28;
    v30 = 1599362383;
    v31 = 0xE400000000000000;
    v29 = v18;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v28, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
    sub_1AF449D40(v27, &v28);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    v20 = v30;
    v21 = v31;
    *&v28 = 1599362383;
    *(&v28 + 1) = 0xE400000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF783728(v20, v21, v28, *(&v28 + 1), 0, 0);
  }

  v29 = MEMORY[0x1E69E6158];
  *&v28 = a1;
  *(&v28 + 1) = a2;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, &v28);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
}

uint64_t sub_1AF788F8C(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if (a2)
  {
    (*(*a1 + 1360))(a1);
  }

  v5 = *(v4[5] + 16);
  v44 = v4[5];

  v46 = v4;
  if (v5)
  {
    v6 = (v44 + 40);
    while (1)
    {
      v10 = *(v6 - 1);
      v9 = *v6;
      v11 = *(*v4 + 1440);

      v12 = v11(v10, v9);
      v14 = *(v12 + 40);
      v13 = *(v12 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v3 + 264);
      v47 = v16;
      *(v3 + 264) = 0x8000000000000000;
      v17 = sub_1AF419914(v14, v13);
      v19 = v18;
      v20 = v16[2] + ((v18 & 1) == 0);
      if (v16[3] < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v23 = v17;
      sub_1AF849890();
      v17 = v23;
      v4 = v46;
      if (v19)
      {
LABEL_12:
        v22 = v17;

        v7 = v47;
        *(v47[7] + 8 * v22) = v12;

        goto LABEL_6;
      }

LABEL_5:
      v7 = v47;
      v47[(v17 >> 6) + 8] |= 1 << v17;
      v8 = (v47[6] + 16 * v17);
      *v8 = v14;
      v8[1] = v13;
      *(v47[7] + 8 * v17) = v12;

      ++v47[2];
LABEL_6:
      *(v3 + 264) = v7;

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    sub_1AF835A5C(v20, isUniquelyReferenced_nonNull_native);
    v17 = sub_1AF419914(v14, v13);
    if ((v19 & 1) != (v21 & 1))
    {
LABEL_30:
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    v4 = v46;
    if (v19)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_15:

  v24 = *(v4[10] + 16);
  v45 = v4[10];

  if (v24)
  {
    v25 = (v45 + 40);
    while (1)
    {
      v29 = *(v25 - 1);
      v28 = *v25;
      v30 = *(*v4 + 1456);

      v31 = v30(v29, v28);
      v33 = *(v31 + 40);
      v32 = *(v31 + 48);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + 264);
      v48 = v35;
      *(v3 + 264) = 0x8000000000000000;
      v36 = sub_1AF419914(v33, v32);
      v38 = v37;
      v39 = v35[2] + ((v37 & 1) == 0);
      if (v35[3] < v39)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_23;
      }

      v42 = v36;
      sub_1AF849890();
      v36 = v42;
      v4 = v46;
      if (v38)
      {
LABEL_24:
        v41 = v36;

        v26 = v48;
        *(v48[7] + 8 * v41) = v31;

        goto LABEL_18;
      }

LABEL_17:
      v26 = v48;
      v48[(v36 >> 6) + 8] |= 1 << v36;
      v27 = (v48[6] + 16 * v36);
      *v27 = v33;
      v27[1] = v32;
      *(v48[7] + 8 * v36) = v31;

      ++v48[2];
LABEL_18:
      *(v3 + 264) = v26;

      v25 += 2;
      if (!--v24)
      {
        goto LABEL_27;
      }
    }

    sub_1AF835A5C(v39, v34);
    v36 = sub_1AF419914(v33, v32);
    if ((v38 & 1) != (v40 & 1))
    {
      goto LABEL_30;
    }

LABEL_23:
    v4 = v46;
    if (v38)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_27:
}

uint64_t sub_1AF7893A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _s11MetadataSetCMa();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v30[3] = MEMORY[0x1E69E6370];
    LOBYTE(v30[0]) = 1;
    *(v6 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);

    sub_1AF0D5A54(v30, v25);
    memset(v29, 0, sizeof(v29));
    *&v26 = 1701536102;
    *(&v26 + 1) = 0xE400000000000000;
    v7.n128_f64[0] = sub_1AF809A8C(v25, &v27);
    sub_1AF7A2FA4(v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v7);
    sub_1AF449D40(v25, v29);
    sub_1AF82436C(&v26, 1701536102, 0xE400000000000000);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v26 = *(v3 + 256);
  *(v3 + 256) = 0x8000000000000000;
  sub_1AF854E88(v11, v10, v6, v8, v9, isUniquelyReferenced_nonNull_native);

  *(v3 + 256) = v26;
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v26 = *(v3 + 264);
  *(v3 + 264) = 0x8000000000000000;
  sub_1AF854E5C(a2, v13, v14, v15);

  *(v3 + 264) = v26;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v26 = *(v3 + 264);
  *(v3 + 264) = 0x8000000000000000;
  sub_1AF854E5C(a1, v16, v17, v18);

  *(v3 + 264) = v26;
  v19 = *(a2 + 72);
  v26 = *(a2 + 56);
  v27 = v19;
  v28 = *(a2 + 88);
  sub_1AF444F60(&v26, v30);
  v20 = sub_1AF7FE65C();
  v22 = v21;
  sub_1AF444FBC(&v26);
  if (v20 == 0x6156686374697753 && v22 == 0xEB0000000065756CLL)
  {

LABEL_8:
    sub_1AF789680(a1, a2);
  }

  v23 = sub_1AFDFEE28();

  if (v23)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1AF789680(uint64_t a1, uint64_t a2)
{
  if (!swift_weakLoadStrong())
  {
LABEL_11:
    if (!swift_weakLoadStrong())
    {
      goto LABEL_53;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 32);

    v13 = sub_1AF761D68(v11, v12);

    if (swift_weakLoadStrong())
    {
      _s10SubContextCMa(0);
      if (swift_dynamicCastClass())
      {
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);

        sub_1AF761E64(v14, v15, v13);

LABEL_37:

        goto LABEL_53;
      }
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
      {
        v23 = *(a1 + 24);
        v24 = *(a1 + 32);

        sub_1AF761E64(v23, v24, v13);

        v25 = *(a1 + 24);
        v26 = *(a1 + 32);

        sub_1AF761E64(v25, v26, v13);

        goto LABEL_37;
      }
    }

    if (swift_weakLoadStrong())
    {
      sub_1AF761E64(0x746C7561666564, 0xE700000000000000, v13);
    }

    goto LABEL_37;
  }

  _s19StaticSwitchSnippetCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_11;
  }

  v5 = v4;
  if (swift_weakLoadStrong())
  {
    _s10SubContextCMa(0);
    if (swift_dynamicCastClass())
    {
      v7 = *(a1 + 24);
      v6 = *(a1 + 32);
      v8 = *(v5 + 40);
      v9 = *(v8 + 2);
      if (v9)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v8;
        if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > *(v8 + 3) >> 1)
        {
          v8 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v9, 1, v8);
          v55 = v8;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      v56 = v6;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v57 = v30;
      v55 = v8;
      sub_1AF7FDB64(v7, v6, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

LABEL_50:

LABEL_51:

      goto LABEL_52;
    }
  }

  v16 = swift_weakLoadStrong();
  if (v16)
  {
    if (*v16 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
    {
      v18 = *(a1 + 24);
      v17 = *(a1 + 32);
      v19 = *(v5 + 40);
      v20 = *(v19 + 2);
      if (v20)
      {

        v21 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v19;
        if (!v21 || (v20 - 1) > *(v19 + 3) >> 1)
        {
          v19 = sub_1AF420554(v21, v20, 1, v19);
          v55 = v19;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v56 = v17;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      v32 = v18;
      sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v34 = v33;
      v57 = v33;
      v55 = v19;
      sub_1AF7FDB64(v32, v17, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

      v35 = *(a1 + 24);
      v36 = *(a1 + 32);
      v37 = *(v5 + 40);
      v38 = *(v37 + 2);
      if (v38)
      {

        v39 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v37;
        if (!v39 || (v38 - 1) > *(v37 + 3) >> 1)
        {
          v37 = sub_1AF420554(v39, v38, 1, v37);
          v55 = v37;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      v55 = v35;
      v56 = v36;

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
      v40 = v55;
      v57 = v34;
      v55 = v37;
      sub_1AF7FDB64(v40, v56, &v55);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

      goto LABEL_50;
    }
  }

  if (swift_weakLoadStrong())
  {
    v27 = *(v5 + 40);
    v28 = *(v27 + 2);
    if (v28)
    {

      v29 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v27;
      if (!v29 || (v28 - 1) > *(v27 + 3) >> 1)
      {
        v27 = sub_1AF420554(v29, v28, 1, v27);
        v55 = v27;
      }

      sub_1AF64C314(0, 1, 0);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v56 = 0xE700000000000000;

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF339F0);
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v57 = v31;
    v55 = v27;
    sub_1AF7FDB64(0x746C7561666564, 0xE700000000000000, &v55);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v55);

    goto LABEL_51;
  }

LABEL_52:

LABEL_53:
  if (swift_weakLoadStrong())
  {
    v41 = *(a2 + 24);
    v42 = *(a2 + 32);

    v43 = sub_1AF761F94(v41, v42);
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  if (swift_weakLoadStrong())
  {
    v46 = sub_1AF761970();

    if (sub_1AF76ACE8(v46) == 0x65746E6F43627553 && v47 == 0xEA00000000007478)
    {
      goto LABEL_63;
    }

    v48 = sub_1AFDFEE28();

    if (v48)
    {
      goto LABEL_64;
    }
  }

  if (swift_weakLoadStrong())
  {
    v49 = sub_1AF761970();

    if (sub_1AF76ACE8(v49) == 0x45747865746E6F43 && v50 == 0xEC0000007972746ELL)
    {
LABEL_63:

      goto LABEL_64;
    }

    v53 = sub_1AFDFEE28();

    if (v53)
    {
LABEL_64:
      if (swift_weakLoadStrong())
      {
        v52 = *(a1 + 24);
        v51 = *(a1 + 32);

        sub_1AF762070(v52, v51, v43, v45);
      }
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF762070(0x746C7561666564, 0xE700000000000000, v43, v45);
  }
}

uint64_t sub_1AF789F84(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = *(v2 + 256);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_8:
    v12 = (*(v6 + 56) + 24 * (__clz(__rbit64(v9)) | (v5 << 6)));
    if (*v12 != a1 || v12[1] != a2)
    {
      v9 &= v9 - 1;
      if ((sub_1AFDFEE28() & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (v5 + 1 >= v10)
    {
      return 0;
    }

    v9 = *(v6 + 72 + 8 * v5++);
    if (v9)
    {
      v5 = v11;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF78A068(__int128 *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v32 = *a1;
  v34 = a1[1];
  v8 = *(a1 + 4);
  v10 = *a2;
  v9 = a2[1];
  v29 = a2[3];
  v30 = a2[2];
  v28 = a2[4];
  sub_1AF7FE65C();
  v11 = sub_1AFDFD188();

  if (v11)
  {
    sub_1AF7FE2EC(v36);
    v12 = v36[1];
    v13 = v36[0];
    v8 = v37;
  }

  else
  {
    sub_1AF444F60(a1, v41);
    v13 = v32;
    v12 = v34;
  }

  v31 = a5;
  v33 = v13;
  v35 = v12;
  v39[0] = v13;
  v39[1] = v12;
  v40 = v8;
  sub_1AF7FE65C();
  v14 = sub_1AFDFD188();

  v26 = v9;
  v27 = v10;
  if (v14)
  {
    sub_1AF7FE2EC(v38);
    v15 = v38[0];
    v9 = v38[1];
    v16 = v38[2];
    v17 = v38[3];
    v18 = v38[4];
  }

  else
  {
    v16 = v30;
    v18 = v28;
    sub_1AF687F90(v10, v9, v30, v29, v28);
    v15 = v10;
    v17 = v29;
  }

  v41[0] = v15;
  v41[1] = v9;
  v41[2] = v16;
  v41[3] = v17;
  v41[4] = v18;

  v19 = sub_1AF7F5070(v39);
  sub_1AF687FE4(v15, v9, v16, v17, v18);
  sub_1AF687FE4(v33, *(&v33 + 1), v35, *(&v35 + 1), v8);

  if (!v19)
  {
    return 0;
  }

  sub_1AF777A94(v31);
  if (!v20)
  {
LABEL_13:

    return 0;
  }

  v21 = *(v19 + 160);
  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  MEMORY[0x1B2718AE0](v22, v23);

  sub_1AF7FE65C();
  LOBYTE(v22) = sub_1AFDFD188();

  if ((v22 & 1) == 0)
  {
    sub_1AF687F90(v27, v26, v30, v29, v28);

    sub_1AF444FBC(a2);
  }

  sub_1AF4486E4();
  v25 = sub_1AFDFDEB8();

  sub_1AF776A50(v31);

  return v25;
}

void sub_1AF78A3AC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF0D4E74(0);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v79 = "e that can't be found.";
    v80 = 0;
    v78 = (v8 + 32);
    v11 = (a2 + 40);
    v77 = xmmword_1AFE431C0;
    do
    {
      v12 = *(v3 + 256);
      if (*(v12 + 16))
      {
        v13 = *(v11 - 1);
        v14 = *v11;

        v15 = sub_1AF419914(v13, v14);
        v17 = v16;

        if (v17)
        {
          v18 = (*(v12 + 56) + 24 * v15);
          v19 = *v18;
          v20 = v18[1];

          if (!*(*(v3 + 264) + 16))
          {

            goto LABEL_21;
          }

          sub_1AF419914(v19, v20);
          v22 = v21;

          if (v22)
          {

            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v24 = Strong;
              if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
              {

                sub_1AF78CA54(a1, v24, 1);
                goto LABEL_19;
              }

              if (*Strong == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
              {

                sub_1AF790074(a1, v24);
                goto LABEL_19;
              }

              _s10SubContextCMa(0);
              v25 = swift_dynamicCastClass();
              if (v25)
              {
                v26 = v25;

                sub_1AF78F438(a1, v26, 1);
                goto LABEL_19;
              }

              _s19StaticSwitchSnippetCMa();
              v27 = swift_dynamicCastClass();
              v76 = a1;
              if (v27)
              {
                v73 = &v69;
                v74 = *a1;
                v28 = *(v74 + 176);
                v29 = *(v27 + 32);
                v86 = *(v27 + 24);
                v87 = v29;
                MEMORY[0x1EEE9AC00](v27);
                v75 = v30;
                *(&v69 - 2) = &v86;

                v31 = v80;
                LODWORD(v72) = sub_1AF7B9518(sub_1AF7714A4, (&v69 - 4), v28);
                v80 = v31;

                if ((v72 & 1) == 0)
                {
                  v32 = v74;
                  v33 = v75[4];
                  v72 = v75[3];
                  v73 = v33;
                  v34 = *(v74 + 176);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v32 + 176) = v34;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v34 = sub_1AF420554(0, *(v34 + 2) + 1, 1, v34);
                    *(v32 + 176) = v34;
                  }

                  v37 = *(v34 + 2);
                  v36 = *(v34 + 3);
                  if (v37 >= v36 >> 1)
                  {
                    v34 = sub_1AF420554(v36 > 1, v37 + 1, 1, v34);
                  }

                  *(v34 + 2) = v37 + 1;
                  v38 = &v34[16 * v37];
                  v39 = v73;
                  *(v38 + 4) = v72;
                  *(v38 + 5) = v39;
                  v40 = v75;
                  *(v74 + 176) = v34;
                  a1 = v76;
                  if (sub_1AF78EF18(v76))
                  {
                    sub_1AF78E354(a1, v40, 1);
                  }

                  else
                  {
                    sub_1AF78D808(a1, v40, 1);
                  }

                  goto LABEL_19;
                }

LABEL_32:

                a1 = v76;
              }

              else
              {
                _s17CustomCodeSnippetCMa();
                v41 = swift_dynamicCastClass();
                if (v41)
                {
                  v73 = &v69;
                  v74 = *a1;
                  v42 = *(v74 + 176);
                  v43 = *(v41 + 32);
                  v86 = *(v41 + 24);
                  v87 = v43;
                  MEMORY[0x1EEE9AC00](v41);
                  v75 = v44;
                  *(&v69 - 2) = &v86;

                  v45 = v80;
                  LODWORD(v72) = sub_1AF7B9518(sub_1AF7714A4, (&v69 - 4), v42);
                  v80 = v45;

                  if (v72)
                  {
                    goto LABEL_32;
                  }

                  v54 = v74;
                  v55 = v75[4];
                  v72 = v75[3];
                  v73 = v55;
                  v56 = *(v74 + 176);

                  v57 = swift_isUniquelyReferenced_nonNull_native();
                  *(v54 + 176) = v56;
                  if ((v57 & 1) == 0)
                  {
                    v56 = sub_1AF420554(0, *(v56 + 2) + 1, 1, v56);
                    *(v54 + 176) = v56;
                  }

                  v59 = *(v56 + 2);
                  v58 = *(v56 + 3);
                  if (v59 >= v58 >> 1)
                  {
                    v56 = sub_1AF420554(v58 > 1, v59 + 1, 1, v56);
                  }

                  v60 = v75;
                  *(v56 + 2) = v59 + 1;
                  v61 = &v56[16 * v59];
                  v62 = v73;
                  *(v61 + 4) = v72;
                  *(v61 + 5) = v62;
                  *(v74 + 176) = v56;
                  v63 = v60;
                  v64 = (*(*v60 + 1424))();
                  sub_1AF78A3AC(v76, v64);

                  v65 = sub_1AF7AB7C4(v63);
                  v73 = v66;
                  v74 = v67;
                  a1 = v76;
                  sub_1AF78AFC4(v76, v65, v66, v67);

                  v68 = v75;
                  sub_1AF78C364(a1, v75, 1);
                  sub_1AF7B67A4(a1);
                  sub_1AF78C4A4(a1, v68);
LABEL_19:
                }

                else
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v86 = 0;
                  v87 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000019, v79 | 0x8000000000000000);
                  v85 = v24;
                  type metadata accessor for GraphV1CodeGeneration.BaseObject();
                  sub_1AFDFE458();
                  v46 = v87;
                  v75 = v86;
                  LODWORD(v74) = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v73 = qword_1ED73B8A0;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  v47 = qword_1ED73B890;
                  sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v48 = swift_allocObject();
                  *(v48 + 16) = v77;
                  *(v48 + 56) = MEMORY[0x1E69E6158];
                  *(v48 + 64) = sub_1AF0D544C();
                  *(v48 + 32) = v75;
                  *(v48 + 40) = v46;
                  v72 = v46;

                  sub_1AFDFC4C8(v74, &dword_1AF0CE000, v47, "%{public}s", 10, 2, v48);

                  v73 = v73[2];

                  v49 = v81;
                  sub_1AFDFC288();
                  v50 = v83;
                  v51 = v84[12];
                  v70 = v84[16];
                  v71 = v51;
                  v52 = &v83[v84[20]];
                  (*v78)(v83, v49, v82);
                  *(v50 + v71) = v74;
                  *(v50 + v70) = 0;
                  v53 = v72;
                  *v52 = v75;
                  *(v52 + 1) = v53;
                  sub_1AFDFC608();

                  sub_1AF7A45D8(v50, sub_1AF0D4E74);
                  a1 = v76;
                }
              }

              sub_1AF78BD70(a1, v24);
            }

            else
            {
            }

LABEL_21:

            goto LABEL_4;
          }
        }
      }

LABEL_4:
      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1AF78AD48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!*(*(v3 + 264) + 16))
  {
    return 0;
  }

  sub_1AF419914(a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (swift_weakLoadStrong())
  {
    _s17TypedArraySnippetCMa();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;

      v9 = *(*(v8 + 40) + 16);

      return v9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 48);
    v13 = *(v12 + 16);

    if (!v13)
    {
LABEL_18:

LABEL_19:

      return 0;
    }

    v14 = 32;
    while (1)
    {
      v15 = *(v12 + v14);
      v16 = *(v12 + v14 + 16);
      v28 = *(v12 + v14 + 32);
      v27[0] = v15;
      v27[1] = v16;
      sub_1AF444F60(v27, v26);
      sub_1AF7FE65C();
      v17 = sub_1AFDFD188();

      sub_1AF444FBC(v27);
      if (v17)
      {
        break;
      }

      v14 += 40;
      if (!--v13)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v3 + 256);
    if (*(v18 + 16))
    {

      v19 = sub_1AF419914(a1, a2);
      if (v20)
      {
        v21 = (*(v18 + 56) + 24 * v19);
        v22 = *v21;
        v23 = v21[1];

        swift_bridgeObjectRetain_n();

        sub_1AF7AC2F0(v22, v23);
        v24 = sub_1AF78AD48(v22, v23, a3);

        return v24;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  return 0;
}

void sub_1AF78AFC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a3;
  sub_1AF0D4E74(0);
  v118 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  if (*(a2 + 16))
  {
    v11 = 0;
    v12 = *a1;
    v13 = v123 + 32;
    v14 = a4 + 32;
    v121 = *(*a1 + 24);
    v113 = (v9 + 32);
    v114 = "scriptContext, ";
    v15 = (v122 + 40);
    v112 = xmmword_1AFE431C0;
    v126 = v12;
    do
    {
      if (v11 == *(v123 + 16))
      {
        return;
      }

      v19 = *(v15 - 1);
      v20 = *v15;
      v127 = v15;
      v144 = *(v13 + 32);
      v21 = *(v13 + 16);
      v142 = *v13;
      v143 = v21;
      v22 = *(v125 + 256);
      v23 = *(v22 + 16);

      v128 = v14;
      if (v23)
      {
        sub_1AF444F60(&v142, v141);

        v24 = sub_1AF419914(v19, v20);
        if (v25)
        {
          v26 = (*(v22 + 56) + 24 * v24);
          v28 = *v26;
          v27 = v26[1];
          v29 = v26[2];

          if (v29 && (v30 = *(v29 + 16)) != 0)
          {
            v31 = *(v30 + 16);

            if (v31)
            {

              sub_1AF419914(1701536102, 0xE400000000000000);
              v33 = v32;

              if (v33)
              {

                swift_bridgeObjectRelease_n();
                sub_1AF444FBC(&v142);
                goto LABEL_60;
              }
            }
          }

          else
          {
          }

          v53 = *(v125 + 264);
          v54 = *(v53 + 16);

          if (v54)
          {
            v55 = sub_1AF419914(v28, v27);
            v57 = v56;

            if (v57)
            {
              v58 = *(*(v53 + 56) + 8 * v55);

              if (*v58 == _TtCO3VFX21GraphV1CodeGeneration12ParameterOut)
              {
                v59 = *(v58 + 72);
                v145[0] = *(v58 + 56);
                v145[1] = v59;
                v146 = *(v58 + 88);
                v60 = *(v58 + 40);
                v61 = *(v58 + 48);
                sub_1AF444F60(v145, v141);

                v119 = sub_1AF7A4C70(&v142, v19, v20, v145, v60, v61, v121, 1, v126);
                v120 = v62;
                v64 = v63;
                v66 = v65;

                sub_1AF444FBC(&v142);

                sub_1AF444FBC(v145);
                v67 = v126;
                v68 = *(v126 + 128);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v67 + 128) = v68;
                v111 = v66;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v68 = sub_1AF420554(0, *(v68 + 2) + 1, 1, v68);
                  *(v126 + 128) = v68;
                }

                v71 = *(v68 + 2);
                v70 = *(v68 + 3);
                if (v71 >= v70 >> 1)
                {
                  v68 = sub_1AF420554(v70 > 1, v71 + 1, 1, v68);
                }

                *(v68 + 2) = v71 + 1;
                v72 = &v68[16 * v71];
                *(v72 + 4) = v119;
                *(v72 + 5) = v64;
                v73 = v126;
                *(v126 + 128) = v68;

                if (v120)
                {
                  v74 = *(v73 + 168);
                  v75 = *(v74 + 2);
                  v76 = swift_isUniquelyReferenced_nonNull_native();
                  *(v73 + 168) = v74;
                  if ((v76 & 1) != 0 && v75 < *(v74 + 3) >> 1)
                  {
                    v77 = v126;
                  }

                  else
                  {
                    v74 = sub_1AF420554(v76, v75 + 1, 1, v74);
                    v77 = v126;
                    *(v126 + 168) = v74;
                  }

                  v52 = v128;
                  sub_1AF64DF78(0, 0, 1, v111, v120);
                  *(v77 + 168) = v74;

                  v12 = v77;
                  goto LABEL_62;
                }

                v12 = v73;
LABEL_61:
                v52 = v128;
LABEL_62:
                v18 = v127;
                goto LABEL_5;
              }

              sub_1AF444FBC(&v142);
            }

            else
            {
              sub_1AF444FBC(&v142);
            }
          }

          else
          {
            sub_1AF444FBC(&v142);

            swift_bridgeObjectRelease_n();
          }

LABEL_60:

          v12 = v126;
          goto LABEL_61;
        }
      }

      else
      {
        sub_1AF444F60(&v142, v141);
      }

      sub_1AF7A74D0(v14, v141, &qword_1EB6335B0, &_s8MetadataVN, v34);
      v124 = v11;
      if (!v141[1])
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v135.n128_u64[0] = 0;
        v135.n128_u64[1] = 0xE000000000000000;
        sub_1AFDFE218();
        v133[0] = v135;
        MEMORY[0x1B2718AE0](0xD000000000000057, v114 | 0x8000000000000000);
        v135 = v142;
        v136 = v143;
        *&v137 = v144;
        sub_1AFDFE458();
        sub_1AF444FBC(&v142);
        MEMORY[0x1B2718AE0](0x3D646975202C27, 0xE700000000000000);
        MEMORY[0x1B2718AE0](v19, v20);

        v42 = v133[0];
        v43 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v120 = v13;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v44 = qword_1ED73B890;
        sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v45 = swift_allocObject();
        *(v45 + 16) = v112;
        *(v45 + 56) = MEMORY[0x1E69E6158];
        *(v45 + 64) = sub_1AF0D544C();
        *(v45 + 32) = v42;

        sub_1AFDFC4C8(v43, &dword_1AF0CE000, v44, "%{public}s", 10, 2, v45);

        v46 = v115;
        sub_1AFDFC288();
        v47 = v117;
        v48 = v118[12];
        v49 = v118[16];
        v50 = &v117[v118[20]];
        (*v113)(v117, v46, v116);
        *(v47 + v48) = v43;
        *(v47 + v49) = 0;
        *v50 = v42;
        sub_1AFDFC608();

        sub_1AF7A45D8(v47, sub_1AF0D4E74);
        sub_1AF7A2FA4(v141, &qword_1EB6335B0, &_s8MetadataVN, v51);
        v11 = v124;
        v12 = v126;
        v52 = v128;
        v13 = v120;
        goto LABEL_4;
      }

      sub_1AF7A74D0(v141, v133, &qword_1EB6335B0, &_s8MetadataVN, v35);
      v138 = v133[3];
      v139 = v133[4];
      v140 = v134;
      v135 = v133[0];
      v136 = v133[1];
      v137 = v133[2];
      v37 = sub_1AF76ED08(v19, v20);
      if (v121 > 2)
      {
        if (v121 != 3)
        {
LABEL_41:
          v38 = sub_1AF7E0118(&v135, v12, v37, v36, v121);
          goto LABEL_42;
        }

        v38 = sub_1AF7DD4B4(&v135, v12, v37, v36, 3);
      }

      else
      {
        if (v121 < 2)
        {
          goto LABEL_41;
        }

        v38 = sub_1AF7E5CBC(&v135, v12);
      }

LABEL_42:
      v120 = v38;
      v78 = v39;
      v79 = v40;
      v80 = v41;

      if (v80)
      {
        v119 = v78;
        *&v133[0] = v79;
        *(&v133[0] + 1) = v80;
        v131 = 10;
        v132 = 0xE100000000000000;
        v129 = 2314;
        v130 = 0xE200000000000000;
        sub_1AF4486E4();
        v81 = sub_1AFDFDEB8();
        *&v133[0] = 8201;
        *(&v133[0] + 1) = 0xE200000000000000;
        MEMORY[0x1B2718AE0](v81);

        v82 = v133[0];
        v83 = v126;
        v84 = *(v126 + 128);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *(v83 + 128) = v84;
        if ((v85 & 1) == 0)
        {
          v84 = sub_1AF420554(0, *(v84 + 2) + 1, 1, v84);
          *(v126 + 128) = v84;
        }

        v87 = *(v84 + 2);
        v86 = *(v84 + 3);
        if (v87 >= v86 >> 1)
        {
          v84 = sub_1AF420554(v86 > 1, v87 + 1, 1, v84);
        }

        *(v84 + 2) = v87 + 1;
        *&v84[16 * v87 + 32] = v82;
        *(v126 + 128) = v84;
        v78 = v119;
      }

      v88 = sub_1AF76ED08(v19, v20);
      v90 = v89;
      *&v133[0] = 0;
      *(&v133[0] + 1) = 0xE000000000000000;
      sub_1AF7FE65C();
      v91 = sub_1AFDFD188();

      if (v91)
      {

        v92 = v88;
        v12 = v126;
        v93 = sub_1AF7DC134(&v142, v92, v90, 0, 1, v120, v78, v126, v121);
        v95 = v94;
        sub_1AF444FBC(&v142);

        MEMORY[0x1B2718AE0](v93, v95);
        v11 = v124;
      }

      else
      {

        v131 = 8201;
        v132 = 0xE200000000000000;
        v96 = sub_1AF76ED08(v19, v20);
        v98 = v97;

        if (v121 == 3)
        {
          v129 = 544499052;
          v130 = 0xE400000000000000;
          v99 = 0xE000000000000000;
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v96, v98);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          v100 = sub_1AF7DCE50(&v142, 3);
          MEMORY[0x1B2718AE0](v100);

          sub_1AF444FBC(&v142);

          v101 = 0;
          v102 = v129;
          v103 = v130;
        }

        else
        {
          v129 = 0x2074736E6F63;
          v130 = 0xE600000000000000;
          v104 = sub_1AF7DCE50(&v142, v121);
          MEMORY[0x1B2718AE0](v104);

          v99 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v96, v98);
          sub_1AF444FBC(&v142);

          v102 = v129;
          v103 = v130;
          v101 = 59;
        }

        v11 = v124;
        MEMORY[0x1B2718AE0](v102, v103);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v120, v78);
        MEMORY[0x1B2718AE0](v101, v99);

        MEMORY[0x1B2718AE0](v131, v132);
        v12 = v126;
      }

      v105 = v133[0];
      v106 = *(v12 + 128);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 128) = v106;
      v52 = v128;
      if ((v107 & 1) == 0)
      {
        v106 = sub_1AF420554(0, *(v106 + 2) + 1, 1, v106);
        *(v12 + 128) = v106;
      }

      v109 = *(v106 + 2);
      v108 = *(v106 + 3);
      if (v109 >= v108 >> 1)
      {
        *(v12 + 128) = sub_1AF420554(v108 > 1, v109 + 1, 1, v106);
      }

      sub_1AF761390(&v135);
      v16 = *(v12 + 128);
      *(v16 + 16) = v109 + 1;
      *(v16 + 16 * v109 + 32) = v105;
      *(v12 + 128) = v16;
      sub_1AF7A2FA4(v141, &qword_1EB6335B0, &_s8MetadataVN, v17);
LABEL_4:
      v18 = v127;
LABEL_5:
      ++v11;
      v15 = v18 + 2;
      v14 = v52 + 88;
      v13 += 40;
    }

    while (v11 != *(v122 + 16));
  }
}

uint64_t sub_1AF78BD70(uint64_t *a1, void *a2)
{
  v3 = v2;
  v57[0] = 24415;
  v57[1] = 0xE200000000000000;
  MEMORY[0x1B2718AE0](0x646F4D6775626564, 0xE900000000000065);
  v5 = a2[2];
  if (!v5 || !*(v5 + 16))
  {
  }

  sub_1AF419914(v57[0], 0xE200000000000000);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return result;
  }

  v55 = v3;
  v53 = *(*a1 + 24);
  v9 = a2[5];
  v10 = MEMORY[0x1E69E7CC0];
  v57[0] = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);

  v56 = a2;
  if (!v11)
  {
    v49 = v10;
    goto LABEL_25;
  }

  v12 = 0;
  v13 = v9 + 40;
  v14 = -v11;
  v49 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = (v13 + 16 * v12++);
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(*v56 + 1440);

      v19 = v18(v16, v17);
      if (v19)
      {
        break;
      }

LABEL_8:
      v15 += 2;
      ++v12;
      if (v14 + v12 == 1)
      {
        a2 = v56;
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }
    }

    v20 = *(v19 + 48);
    if (!*(*(v55 + 256) + 16))
    {

LABEL_14:

      goto LABEL_8;
    }

    v21 = *(v19 + 40);

    sub_1AF419914(v21, v20);
    LOBYTE(v21) = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }

    MEMORY[0x1B2718E00](v23);
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v49 = v57[0];
    a2 = v56;
    v10 = MEMORY[0x1E69E7CC0];
    v13 = v9 + 40;
  }

  while (v14 + v12);
LABEL_25:

  v24 = a2[10];
  v57[0] = v10;
  v25 = *(v24 + 16);

  v27 = v55;
  v52 = v25;
  if (v25)
  {
    v28 = 0;
    v51 = v26 + 32;
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v29 = (v51 + 16 * v28);
        v30 = *v29;
        v31 = v29[1];
        ++v28;
        v32 = *(*a2 + 1456);

        v33 = v32(v30, v31);
        if (v33)
        {
          break;
        }

LABEL_28:

        if (v28 == v52)
        {
          goto LABEL_48;
        }
      }

      v34 = 0;
      v36 = *(v33 + 40);
      v35 = *(v33 + 48);
      v37 = *(v27 + 256);
      v38 = 1 << *(v37 + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v37 + 64);
      v41 = (v38 + 63) >> 6;
      do
      {
        if (!v40)
        {
          do
          {
            v42 = v34 + 1;
            if (v34 + 1 >= v41)
            {

              v27 = v55;
              a2 = v56;
              goto LABEL_28;
            }

            v40 = *(v37 + 72 + 8 * v34++);
          }

          while (!v40);
          v34 = v42;
        }

        v43 = (*(v37 + 56) + 24 * (__clz(__rbit64(v40)) | (v34 << 6)));
        if (*v43 == v36 && v43[1] == v35)
        {
          break;
        }

        v40 &= v40 - 1;
      }

      while ((sub_1AFDFEE28() & 1) == 0);

      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718E00](v45);
      if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v50 = v57[0];
      v27 = v55;
      a2 = v56;
    }

    while (v28 != v52);
  }

  else
  {
    v50 = v10;
  }

LABEL_48:

  v57[0] = v49;
  sub_1AF490730(v50);
  if (v49 >> 62)
  {
    v46 = sub_1AFDFE108();
  }

  else
  {
    v46 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v46)
  {
    v47 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1B2719C70](v47, v49);
      }

      else
      {
        v48 = *(v49 + 8 * v47 + 32);
      }

      ++v47;
      v57[0] = v48;
      sub_1AF797DCC(v57, v53, v27, a1, a2);
    }

    while (v46 != v47);
  }
}

uint64_t *sub_1AF78C364(uint64_t *result, void *a2, char a3)
{
  if (a2[2])
  {
    v6 = result;

    v8 = sub_1AF7A24A4(v7, 0xEA00000000006E49);

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = sub_1AFC8604C(*(v8 + 16), 0);
      sub_1AFC871B8(v14, (v10 + 4), v9, v8);
      sub_1AF0FBB14(v14[0]);
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v14[0] = v10;
    sub_1AF782220(v14);
    v11 = *(v14[0] + 16);
    if (v11)
    {
      v12 = v14[0] + 32;
      do
      {
        sub_1AF7A70A0(v12, v14);
        sub_1AF7AA5E8(v14[0], v14[1], &v15, v3, v6, a2, a3 & 1, v13);
        sub_1AF7A7124(v14);
        v12 += 104;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t *sub_1AF78C4A4(uint64_t *result, void *a2)
{
  if (a2[2])
  {
    v4 = result;

    v6 = sub_1AF7A24A4(v5, 0xEB0000000074754FLL);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_1AFC8604C(*(v6 + 16), 0);
      sub_1AFC871B8(v12, (v8 + 4), v7, v6);
      sub_1AF0FBB14(v12[0]);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v12[0] = v8;
    sub_1AF782220(v12);
    v9 = *(v12[0] + 16);
    if (v9)
    {
      v10 = v12[0] + 32;
      do
      {
        sub_1AF7A70A0(v10, v12);
        sub_1AF7A927C(v12[0], v12[1], &v13, v2, v4, a2, v11);
        sub_1AF7A7124(v12);
        v10 += 104;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_1AF78C610(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a2 + 16))
  {
    v8 = result;

    v10 = sub_1AF7A24A4(v9, 0xEA00000000006E49);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_1AFC8604C(*(v10 + 16), 0);
      sub_1AFC871B8(v15, (v12 + 4), v11, v10);
      sub_1AF0FBB14(v15[0]);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v15[0] = v12;
    sub_1AF782220(v15);
    v13 = *(v15[0] + 16);
    if (v13)
    {
      v14 = v15[0] + 32;
      do
      {
        sub_1AF7A70A0(v14, v15);
        a4(v15[0], v15[1], &v16, a2, a3, v4, v8);
        sub_1AF7A7124(v15);
        v14 += 104;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

BOOL sub_1AF78C760(uint64_t a1)
{
  v2 = *(sub_1AF76259C() + 16);

  if (!v2)
  {
    return 1;
  }

  v3 = sub_1AF76259C();
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v5 = 0;
  v31 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v30 = v6;
    while (1)
    {
      v7 = v5++;
      v8 = *(a1 + 40);
      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = (v31 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = (v8 + 40);
      v14 = (v8 + 40);
      while (1)
      {
        v15 = *(v14 - 1) == v12 && *v14 == v11;
        if (v15 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v14 += 2;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      v16 = *(v8 + 16);
      if (!v16)
      {
        goto LABEL_5;
      }

      v17 = 0;
      while (1)
      {
        v18 = *(v13 - 1) == v12 && *v13 == v11;
        if (v18 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v17;
        v13 += 2;
        if (v16 == v17)
        {
          goto LABEL_5;
        }
      }

      v19 = *(a1 + 56);
      if (v19 >> 62)
      {
        break;
      }

      if (v17 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_5:
      if (v5 == v4)
      {
        v6 = v30;
        goto LABEL_42;
      }
    }

    if (v17 >= sub_1AFDFE108())
    {
      goto LABEL_5;
    }

LABEL_26:
    v20 = *(a1 + 56);
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = MEMORY[0x1B2719C70](v17, v20);
    }

    else
    {
      v21 = *(v20 + 8 * v17 + 32);
    }

    v23 = sub_1AF7AA418(v22, v21, sub_1AF7AA2D8, sub_1AF7AA2D8);

    v24 = *(v23 + 16);

    if (v24)
    {

      goto LABEL_5;
    }

    v6 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC05CE4(0, *(v30 + 16) + 1, 1);
      v6 = v30;
    }

    v26 = *(v6 + 16);
    v25 = *(v6 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v26 + 1;
    v27 = v6 + 16 * v26;
    *(v27 + 32) = v12;
    *(v27 + 40) = v11;
  }

  while (v5 != v4);
LABEL_42:

  v29 = *(v6 + 16);

  return v29 == 0;
}

uint64_t *sub_1AF78CA54(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *a1;
  v100 = *(*a1 + 24);
  v9 = *(*a1 + 176);
  v10 = a2[4];
  v113 = a2[3];
  v114 = v10;
  v102 = &v113;

  v11 = sub_1AF7B9518(sub_1AF7714A4, v101, v9);

  if ((v11 & 1) == 0)
  {
    v14 = a2[3];
    v13 = a2[4];
    v15 = *(v8 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 176) = v15;
    v97 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1AF420554(0, *(v15 + 2) + 1, 1, v15);
      *(v8 + 176) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1AF420554(v17 > 1, v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v13;
    *(v8 + 176) = v15;
    v20 = v97;

    sub_1AF7973DC(v21);

    if (sub_1AF78C760(v97))
    {
      if (v97[15])
      {

        sub_1AF782684(v22, a1);
      }

      v23 = *(v97[17] + 109);
      if (v23 == 2 || (v23 & 1) == 0)
      {
        if (a3)
        {
          v58 = sub_1AF7649C4();
          sub_1AF78A3AC(a1, v58);
        }

        v59 = sub_1AF7AB7C4(v97);
        sub_1AF78AFC4(a1, v59, v60, v61);

        sub_1AF78C364(a1, v97, 1);
        sub_1AF77292C(a1);
        return sub_1AF78C4A4(a1, v97);
      }

      else
      {
        v94 = a1;
        v95 = v4;
        v24 = MEMORY[0x1E69E7CC0];
        v111 = *(v8 + 136);
        v112 = MEMORY[0x1E69E7CC0];

        v110 = sub_1AF432BA4(v24);
        v25 = v97[5];

        v26 = sub_1AF7649C4();
        v27 = v26;
        v28 = *(v25 + 16);
        if (v28)
        {
          v29 = 0;
          v30 = (v25 + 40);
          v31 = (v26 + 40);
          do
          {
            if (v29 == *(v27 + 16))
            {
              break;
            }

            v33 = *(v30 - 1);
            v32 = *v30;
            ++v29;
            v34 = *(v31 - 1);
            v35 = *v31;

            v36 = v34;
            v20 = v97;
            sub_1AF798948(v33, v32, v36, v35, v97, v95, v94, v100, &v111, &v112, &v110);

            v30 += 2;
            v31 += 2;
          }

          while (v28 != v29);
        }

        sub_1AF78C364(v94, v20, 1);
        v37 = *(*v94 + 24);
        v38 = *(*v94 + 48);
        v39 = *(*v94 + 56);
        v40 = *(*v94 + 96);
        v98 = *(*v94 + 88);
        v96 = *v94;

        v41 = MEMORY[0x1E69E7CC0];
        v42 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
        _s7ContextC14GenerationDataCMa();
        v43 = swift_allocObject();
        *(v43 + 104) = v41;
        *(v43 + 112) = v41;
        *(v43 + 120) = v41;
        *(v43 + 128) = v41;
        *(v43 + 136) = v41;
        *(v43 + 144) = v41;
        sub_1AF432980(v41);
        *(v43 + 168) = v41;
        *(v43 + 176) = v41;
        *(v43 + 16) = v95;
        *(v43 + 24) = v37;
        *(v43 + 25) = 0;
        *(v43 + 27) = 0;
        *(v43 + 32) = v41;
        *(v43 + 40) = 1;
        *(v43 + 48) = v38;
        *(v43 + 56) = v39;
        *(v43 + 64) = 257;
        *(v43 + 72) = 0;
        *(v43 + 80) = 0;
        *(v43 + 88) = v98;
        *(v43 + 96) = v40;
        *(v43 + 152) = v42;

        *(v43 + 160) = 0;
        v109 = v43;
        sub_1AF77292C(&v109);
        v44 = 0xE000000000000000;
        v113 = 0;
        v114 = 0xE000000000000000;
        v93 = v43;
        v45 = *(*(v43 + 128) + 16);

        v47 = MEMORY[0x1E69E6158];
        if (v45)
        {
          v48 = (v46 + 40);
          v49 = MEMORY[0x1E69E6158];
          do
          {
            v50 = *v48;
            v107 = *(v48 - 1);
            v108 = v50;
            v104 = 0xE100000000000000;
            v105 = 0x244E49414D4F4424;
            v106 = 0xE800000000000000;
            v103 = 34;
            v51 = *(v93 + 88);
            v52 = *(v93 + 96);

            MEMORY[0x1B2718AE0](v51, v52);

            MEMORY[0x1B2718AE0](34, 0xE100000000000000);
            sub_1AF4486E4();
            v53 = sub_1AFDFDEB8();
            v55 = v54;

            MEMORY[0x1B2718AE0](v53, v55);

            v48 += 2;
            --v45;
          }

          while (v45);
          v56 = v113;
          v44 = v114;
          v47 = v49;
        }

        else
        {
          v56 = 0;
        }

        v62 = *(v112 + 2);
        if (v62)
        {
          v63 = (v112 + 40);
          while (1)
          {
            v99 = v56;
            v76 = *(v63 - 1);
            v75 = *v63;
            v103 = *(v96 + 56);
            v77 = v110[2];

            if (v77)
            {
              sub_1AF419914(v76, v75);
              if (v78)
              {

                sub_1AF48FAF8(v79);
              }
            }

            if (v100 == 3)
            {

              v64 = v103;
            }

            else
            {
              v80 = sub_1AFDFEE28();

              v64 = v103;
              if ((v80 & 1) == 0)
              {
                v113 = 0x28636E663A3ALL;
                v114 = 0xE600000000000000;
                v107 = v103;
                sub_1AF7AD234(0, &qword_1ED726C70, v47, MEMORY[0x1E69E62F8]);
                sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v47, MEMORY[0x1E69E6310], v81);
                v82 = sub_1AFDFCD98();
                v84 = v83;

                MEMORY[0x1B2718AE0](v82, v84);
                goto LABEL_28;
              }
            }

            v113 = 40;
            v114 = 0xE100000000000000;
            v107 = v64;
            sub_1AF7AD234(0, &qword_1ED726C70, v47, MEMORY[0x1E69E62F8]);
            sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v47, MEMORY[0x1E69E6310], v65);
            v66 = sub_1AFDFCD98();
            v68 = v67;

            MEMORY[0x1B2718AE0](v66, v68);
LABEL_28:

            MEMORY[0x1B2718AE0](41, 0xE100000000000000);
            v70 = v113;
            v69 = v114;
            v113 = v76;
            v114 = v75;

            MEMORY[0x1B2718AE0](v70, v69);

            v71 = v113;
            v72 = v114;
            v113 = v99;
            v114 = v44;
            v107 = v76;
            v108 = v75;
            v105 = v71;
            v106 = v72;
            sub_1AF4486E4();
            v56 = sub_1AFDFDEB8();
            v74 = v73;

            v63 += 2;
            v44 = v74;
            if (!--v62)
            {
              goto LABEL_36;
            }
          }
        }

        v74 = v44;
LABEL_36:
        v85 = *(v96 + 128);

        v86 = swift_isUniquelyReferenced_nonNull_native();
        *(v96 + 128) = v85;
        if ((v86 & 1) == 0)
        {
          v85 = sub_1AF420554(0, *(v85 + 2) + 1, 1, v85);
          *(v96 + 128) = v85;
        }

        v87 = v94;
        v88 = v97;
        v90 = *(v85 + 2);
        v89 = *(v85 + 3);
        if (v90 >= v89 >> 1)
        {
          v92 = sub_1AF420554(v89 > 1, v90 + 1, 1, v85);
          v88 = v97;
          v85 = v92;
          v87 = v94;
        }

        *(v85 + 2) = v90 + 1;
        v91 = &v85[16 * v90];
        *(v91 + 4) = v56;
        *(v91 + 5) = v74;
        *(v96 + 128) = v85;
        sub_1AF78C4A4(v87, v88);
      }
    }

    else
    {

      sub_1AF7A4B7C(v57, v4, v100, a1);
    }
  }

  return result;
}

uint64_t sub_1AF78D3AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AF7F64F4();
  if (!v5)
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 2);
    if (v8)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31[0] = v7;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > *(v7 + 3) >> 1)
      {
        v7 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v8, 1, v7);
        v31[0] = v7;
      }

      sub_1AF64C314(0, 1, 0);

      if (*(v7 + 2))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_8:
        v6 = *(v7 + 4);

LABEL_11:

        goto LABEL_12;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v6 = v4;
LABEL_12:
  v10 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143);
  if (!v10)
  {
    return v6;
  }

  v11 = v10;

  v13 = sub_1AF7AA418(v12, v11, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v13, v31);

  if (!v31[1])
  {

    return v6;
  }

  v14 = v31[3];
  if (!*(*(v2 + 264) + 16))
  {
    goto LABEL_26;
  }

  v15 = v31[2];

  sub_1AF419914(v15, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {

    goto LABEL_28;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_26:

LABEL_28:

    v22 = 0uLL;
    v29 = 0u;
    v30 = 0u;
LABEL_29:
    sub_1AF7A2FA4(&v29, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v22);
    return v6;
  }

  sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v29);

  if (!*(&v30 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) != 0 && (v28 & 0x8000000000000000) == 0)
  {
    v19 = *(a1 + 40);
    v20 = *(v19 + 2);
    if (v20)
    {

      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v29 = v19;
      if (!v21 || (v20 - 1) > *(v19 + 3) >> 1)
      {
        v19 = sub_1AF420554(v21, v20, 1, v19);
        *&v29 = v19;
      }

      sub_1AF64C314(0, 1, 0);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v19 + 2);

    if (v28 < v24)
    {

      v25 = *(a1 + 40);
      v26 = *(v25 + 2);
      if (v26)
      {

        v27 = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v25;
        if (!v27 || (v26 - 1) > *(v25 + 3) >> 1)
        {
          v25 = sub_1AF420554(v27, v26, 1, v25);
          *&v29 = v25;
        }

        sub_1AF64C314(0, 1, 0);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      v6 = *&v25[16 * v28 + 32];
    }
  }

  return v6;
}

uint64_t sub_1AF78D808(uint64_t *a1, void *a2, char a3)
{
  v3 = a2[7];
  if (v3 >> 62)
  {
    v116 = a2;
    v117 = sub_1AFDFE108();
    a2 = v116;
    v4 = v117;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  v129 = a2;
  if (v4)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v4 & ~(v4 >> 63), 0);
    v6 = 0;
    v5 = *&v138[0];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2719C70](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v9 = *(v7 + 24);
      v8 = *(v7 + 32);

      *&v138[0] = v5;
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
        v5 = *&v138[0];
      }

      ++v6;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
    }

    while (v4 != v6);

    a2 = v129;
  }

  v13 = a2[7];
  if (v13 >> 62)
  {
    v118 = a2;
    v119 = sub_1AFDFE108();
    a2 = v118;
    v14 = v119;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
    v15 = 0;
    v16 = *&v138[0];
    do
    {
      v17 = v16;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B2719C70](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v20 = *(v18 + 40);
      v19 = *(v18 + 48);

      v16 = v17;
      *&v138[0] = v17;
      v21 = *(v17 + 16);
      v22 = *(v16 + 24);
      if (v21 >= v22 >> 1)
      {
        sub_1AFC05CE4(v22 > 1, v21 + 1, 1);
        v16 = *&v138[0];
      }

      ++v15;
      *(v16 + 16) = v21 + 1;
      v23 = v16 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
    }

    while (v14 != v15);
    v123 = v16;

    a2 = v129;
  }

  else
  {
    v123 = MEMORY[0x1E69E7CC0];
  }

  v24 = a2[7];
  if (v24 >> 62)
  {
    v25 = sub_1AFDFE108();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    *&v138[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC071E4(0, v25 & ~(v25 >> 63), 0);
    v27 = v24;
    v28 = 0;
    v29 = *&v138[0];
    v125 = v24 & 0xC000000000000001;
    v127 = v5;
    v130 = v25;
    v132 = v24;
    do
    {
      if (v125)
      {
        v30 = MEMORY[0x1B2719C70](v28, v27);
      }

      else
      {
        v30 = *(v27 + 8 * v28 + 32);
      }

      v32 = v30[7];
      v31 = v30[8];
      v33 = v30[9];
      v34 = v30[10];
      v35 = v30[11];
      sub_1AF687F90(v32, v31, v33, v34, v35);

      *&v138[0] = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC071E4(v36 > 1, v37 + 1, 1);
        v29 = *&v138[0];
      }

      ++v28;
      *(v29 + 16) = v37 + 1;
      v38 = (v29 + 40 * v37);
      v38[4] = v32;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v34;
      v38[8] = v35;
      v27 = v132;
      v5 = v127;
    }

    while (v130 != v28);

    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v136 = v26;

  sub_1AF782460(v39, &v136, sub_1AF79A814);

  if (a3)
  {
    sub_1AF78A3AC(a1, v123);
  }

  v40 = sub_1AF3C46D8(v136);
  sub_1AF78AFC4(a1, v123, v29, v40);

  sub_1AF78C364(a1, v129, 1);
  v41 = *(v5 + 2);
  if (v41)
  {
    v124 = *(v5 + 4);
    v126 = *(v5 + 5);
  }

  else
  {
    v124 = 0;
    v126 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v137 = v5;
  if (!isUniquelyReferenced_nonNull_native || v41 - (v41 != 0) > *(v5 + 3) >> 1)
  {
    v5 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v41, 1, v5);
    v137 = v5;
  }

  sub_1AF64C314(0, v41 != 0, 0);
  v43 = *(v5 + 2);
  v44 = v5;
  if (v43)
  {
    v45 = *(v5 + 4);
    v46 = *(v44 + 5);
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v47 = v43 != 0;
  v48 = v43 - v47;
  v137 = v44;
  v128 = v44;
  if ((v43 - v47) > *(v44 + 3) >> 1)
  {
    if (v43 > v48)
    {
      v48 = v43;
    }

    v120 = sub_1AF420554(1, v48, 1, v44);
    v47 = v43 != 0;
    v128 = v120;
    v137 = v120;
  }

  sub_1AF64C314(0, v47, 0);
  if (*(v129[10] + 16))
  {
    v49 = v129[12];
    if ((v49 & 0xC000000000000001) != 0)
    {

      v50 = MEMORY[0x1B2719C70](0, v49);
    }

    else
    {
      v50 = *(v49 + 32);
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = *a1;
  v52 = *(*a1 + 24);
  v53 = *(v50 + 72);
  v138[0] = *(v50 + 56);
  v138[1] = v53;
  v139 = *(v50 + 88);
  v54 = *(v50 + 40);
  v55 = *(v50 + 48);

  sub_1AF444F60(v138, &v134);
  v56 = sub_1AF76ED08(v54, v55);
  v58 = v57;

  if (v52 == 3)
  {
    v134 = 544366966;
    v135 = 0xE400000000000000;
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v56, v58);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v59 = sub_1AF7DCE50(v138, 3);
    MEMORY[0x1B2718AE0](v59);
  }

  else
  {
    v134 = sub_1AF7DCE50(v138, v52);
    v135 = v60;
    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v56, v58);
  }

  sub_1AF444FBC(v138);
  v61 = v134;
  v62 = v135;
  v134 = 8201;
  v135 = 0xE200000000000000;
  MEMORY[0x1B2718AE0](v61, v62);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  v63 = sub_1AF764B14(v45, v46);

  v64 = *(v63 + 40);
  v65 = *(v63 + 48);

  v66 = sub_1AF76ED08(v64, v65);
  v68 = v67;

  MEMORY[0x1B2718AE0](v66, v68);

  if (*(v51 + 24) == 3)
  {
    v69 = 0;
  }

  else
  {
    v69 = 59;
  }

  if (*(v51 + 24) == 3)
  {
    v70 = 0xE000000000000000;
  }

  else
  {
    v70 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v69, v70);

  v71 = v134;
  v72 = v135;
  v73 = *(v51 + 128);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *(v51 + 128) = v73;
  if ((v74 & 1) == 0)
  {
    v73 = sub_1AF420554(0, *(v73 + 2) + 1, 1, v73);
    *(v51 + 128) = v73;
  }

  v76 = *(v73 + 2);
  v75 = *(v73 + 3);
  if (v76 >= v75 >> 1)
  {
    v73 = sub_1AF420554(v75 > 1, v76 + 1, 1, v73);
  }

  *(v73 + 2) = v76 + 1;
  v77 = &v73[16 * v76];
  *(v77 + 4) = v71;
  *(v77 + 5) = v72;
  *(v51 + 128) = v73;
  v78 = *(v128 + 2);
  if (v78)
  {
    v79 = (v128 + 40);
    v80 = 1;
    do
    {
      v81 = *v79;
      v131 = *(v79 - 1);
      v133 = v78;
      v134 = 0;
      v135 = 0xE000000000000000;

      sub_1AFDFE218();

      v134 = 8201;
      v135 = 0xE200000000000000;
      v82 = *(v50 + 40);
      v83 = *(v50 + 48);

      v84 = sub_1AF76ED08(v82, v83);
      v85 = v51;
      v87 = v86;

      MEMORY[0x1B2718AE0](v84, v87);

      MEMORY[0x1B2718AE0](673201440, 0xE400000000000000);
      v88 = sub_1AF764B14(v124, v126);
      v89 = *(v88 + 40);
      v90 = *(v88 + 48);

      v91 = sub_1AF76ED08(v89, v90);
      v93 = v92;

      MEMORY[0x1B2718AE0](v91, v93);
      v51 = v85;

      MEMORY[0x1B2718AE0](540884256, 0xE400000000000000);
      v94 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v94);

      MEMORY[0x1B2718AE0](541007913, 0xE400000000000000);
      v95 = sub_1AF764B14(v131, v81);

      v96 = *(v95 + 40);
      v97 = *(v95 + 48);

      v98 = sub_1AF76ED08(v96, v97);
      v100 = v99;

      MEMORY[0x1B2718AE0](v98, v100);

      MEMORY[0x1B2718AE0](2112032, 0xE300000000000000);
      v101 = *(v50 + 40);
      v102 = *(v50 + 48);

      v103 = sub_1AF76ED08(v101, v102);
      v105 = v104;

      MEMORY[0x1B2718AE0](v103, v105);

      if (*(v85 + 24) == 3)
      {
        v106 = 0;
      }

      else
      {
        v106 = 59;
      }

      if (*(v85 + 24) == 3)
      {
        v107 = 0xE000000000000000;
      }

      else
      {
        v107 = 0xE100000000000000;
      }

      MEMORY[0x1B2718AE0](v106, v107);

      v108 = v134;
      v109 = v135;
      v110 = *(v85 + 128);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *(v85 + 128) = v110;
      if ((v111 & 1) == 0)
      {
        v110 = sub_1AF420554(0, *(v110 + 2) + 1, 1, v110);
        *(v85 + 128) = v110;
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1AF420554(v112 > 1, v113 + 1, 1, v110);
      }

      *(v110 + 2) = v113 + 1;
      v114 = &v110[16 * v113];
      *(v114 + 4) = v108;
      *(v114 + 5) = v109;
      *(v85 + 128) = v110;
      v79 += 2;
      ++v80;
      v78 = v133 - 1;
    }

    while (v133 != 1);
  }

  sub_1AF78C4A4(a1, v129);
}

uint64_t *sub_1AF78E354(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_1AF7F64F4();
  v10 = &qword_1AFE43000;
  if (v9)
  {
    v11 = v8;
    v12 = v9;
    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE431C0;
    v14 = a2[4];
    *&v112 = a2[3];
    *(&v112 + 1) = v14;

    MEMORY[0x1B2718AE0](47, 0xE100000000000000);

    MEMORY[0x1B2718AE0](v11, v12);

    v15 = *(&v112 + 1);
    *(v13 + 32) = v112;
    *(v13 + 40) = v15;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v104 = sub_1AF7F6288();
  v16 = sub_1AF78D3AC(a2);
  v102 = v16;
  v103 = v17;
  if (v17)
  {
    v18 = v16;
    v19 = v17;

    v20 = sub_1AF764B14(v18, v19);

    if (v20)
    {

      sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AFE431C0;
      v21 = v20[6];
      *(v13 + 32) = v20[5];
      *(v13 + 40) = v21;
      if (swift_weakLoadStrong())
      {
        v22 = v20[4];
        v119 = v20[3];
        v120 = v22;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        sub_1AF7FDD44(v119, v22, &v106);

        if (*(&v106 + 1))
        {

          v114 = v108;
          v115 = v109;
          v116 = v110;
          v117 = v111;
          v112 = v106;
          v113 = v107;
          sub_1AF445550(0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1AFE431C0;
          v104 = v23;
          sub_1AF4455CC(&v112, v23 + 32);

          sub_1AF761390(&v112);
          goto LABEL_11;
        }
      }

      else
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
      }

      sub_1AF7A2FA4(&v106, &qword_1EB6335B0, &_s8MetadataVN, v24);
    }
  }

LABEL_11:
  v25 = sub_1AF785FB4();
  v26 = *a1;
  v27 = *(*a1 + 152);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v112 = v25;
  sub_1AF7AB520(v27, sub_1AF780958, 0, isUniquelyReferenced_nonNull_native, &v112);

  v29 = v112;
  if (!*(v112 + 16) || (v30 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143)) == 0)
  {

    v46 = 0;
    v47 = 0;
    goto LABEL_41;
  }

  v31 = a1;
  v32 = v30;

  v34 = sub_1AF7AA418(v33, v32, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v34, &v119);

  if (!v120)
  {
    goto LABEL_38;
  }

  v100 = v26;
  v35 = v4;
  v36 = v31;
  v37 = v121;
  v38 = v122;
  v101 = v35;
  v39 = *(v35 + 264);
  v40 = *(v39 + 16);

  if (!v40)
  {
    swift_bridgeObjectRelease_n();

    v46 = 0;
    v47 = 0;
    v10 = &qword_1AFE43000;
    a1 = v36;
    goto LABEL_41;
  }

  v31 = v36;

  v41 = sub_1AF419914(v37, v38);
  v43 = v42;

  if ((v43 & 1) == 0)
  {

    v46 = 0;
    v47 = 0;
    a1 = v36;
    v10 = &qword_1AFE43000;
    goto LABEL_41;
  }

  v44 = *(*(v39 + 56) + 8 * v41);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_38:

    v46 = 0;
    v47 = 0;
LABEL_39:
    a1 = v31;
    goto LABEL_40;
  }

  v99 = v44;
  if (*(Strong + 24) == *(v101 + 24) && *(Strong + 32) == *(v101 + 32))
  {

    a1 = v36;
  }

  else
  {
    v48 = sub_1AFDFEE28();

    a1 = v36;
    if ((v48 & 1) == 0)
    {

      goto LABEL_35;
    }
  }

  if (!*(v29 + 16))
  {

LABEL_35:

LABEL_36:

    v46 = 0;
    v47 = 0;
LABEL_40:
    v10 = &qword_1AFE43000;
    goto LABEL_41;
  }

  v49 = *(v99 + 24);
  v50 = *(v99 + 32);

  v51 = sub_1AF419914(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {

    goto LABEL_38;
  }

  v54 = (*(v29 + 56) + 16 * v51);
  v55 = *v54;
  v56 = v54[1];

  v47 = sub_1AF764B14(v55, v56);

  if (!v47)
  {

    v46 = 0;
    goto LABEL_39;
  }

  a1 = v36;
  if (!*(a2[10] + 16))
  {

    goto LABEL_36;
  }

  v57 = a2[12];
  v10 = &qword_1AFE43000;
  if ((v57 & 0xC000000000000001) != 0)
  {

    v58 = MEMORY[0x1B2719C70](0, v57);
  }

  else
  {
    v58 = *(v57 + 32);
  }

  sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v59 = *(v47 + 48);
  v98 = *(v47 + 40);
  *(v13 + 32) = v98;
  *(v13 + 40) = v59;
  *&v114 = a2[22];
  v60 = *(a2 + 10);
  v112 = *(a2 + 9);
  v113 = v60;
  v61 = *(v58 + 40);
  v62 = *(v58 + 48);
  v97 = v61;
  v63 = *(v100 + 24);

  sub_1AF444F60(&v112, &v106);
  sub_1AF444F60(&v112, &v106);

  v46 = sub_1AF7A4C70(&v112, v97, v62, &v112, v98, v59, v63, 1, v100);
  v47 = v64;

  sub_1AF444FBC(&v112);

  sub_1AF444FBC(&v112);

LABEL_41:
  if (a3)
  {
    sub_1AF78A3AC(a1, v13);
  }

  sub_1AF7AD234(0, &qword_1EB638880, &_s12MetadataTypeON, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = *(v10 + 28);
  v66 = a2[18];
  v67 = a2[19];
  v68 = a2[20];
  v69 = a2[21];
  v70 = a2[22];
  v71 = a1;
  *(inited + 32) = v66;
  *(inited + 40) = v67;
  *(inited + 48) = v68;
  *(inited + 56) = v69;
  *(inited + 64) = v70;
  sub_1AF687F90(v66, v67, v68, v69, v70);
  sub_1AF78AFC4(a1, v13, inited, v104);

  swift_setDeallocating();
  sub_1AF444FBC(inited + 32);
  sub_1AF78C364(a1, a2, 1);
  if (v47)
  {

    v72 = *a1;
    v73 = *(*a1 + 128);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    *(v72 + 128) = v73;
    if ((v74 & 1) == 0)
    {
      v73 = sub_1AF420554(0, *(v73 + 2) + 1, 1, v73);
      *(v72 + 128) = v73;
    }

    v76 = *(v73 + 2);
    v75 = *(v73 + 3);
    if (v76 >= v75 >> 1)
    {
      v73 = sub_1AF420554(v75 > 1, v76 + 1, 1, v73);
    }

    *(v73 + 2) = v76 + 1;
    v77 = &v73[16 * v76];
    *(v77 + 4) = v46;
    *(v77 + 5) = v47;
    *(v72 + 128) = v73;
  }

  else if (v103)
  {
    v79 = sub_1AF764B14(v102, v103);

    if (v79)
    {
      if (*(a2[10] + 16))
      {
        v80 = a2[12];
        if ((v80 & 0xC000000000000001) != 0)
        {

          v81 = MEMORY[0x1B2719C70](0, v80);
        }

        else
        {
          v81 = *(v80 + 32);
        }

        v82 = *a1;
        *&v108 = a2[22];
        v83 = *(a2 + 10);
        v106 = *(a2 + 9);
        v107 = v83;
        v84 = *(v81 + 40);
        v85 = *(v81 + 48);
        v86 = *(v79 + 40);
        v87 = *(v79 + 48);
        v88 = *(v82 + 24);
        sub_1AF444F60(&v106, v118);

        v89 = sub_1AF7A4C70(&v106, v84, v85, &v106, v86, v87, v88, 1, v82);
        v105 = v90;

        sub_1AF444FBC(&v106);

        v91 = *(v82 + 128);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *(v82 + 128) = v91;
        if ((v92 & 1) == 0)
        {
          v91 = sub_1AF420554(0, *(v91 + 2) + 1, 1, v91);
          *(v82 + 128) = v91;
        }

        v94 = *(v91 + 2);
        v93 = *(v91 + 3);
        a1 = v71;
        if (v94 >= v93 >> 1)
        {
          *(v82 + 128) = sub_1AF420554(v93 > 1, v94 + 1, 1, v91);
        }

        v95 = *(v82 + 128);
        *(v95 + 16) = v94 + 1;
        v96 = v95 + 16 * v94;
        *(v96 + 32) = v89;
        *(v96 + 40) = v105;
        *(v82 + 128) = v95;
      }

      else
      {
      }
    }
  }

  return sub_1AF78C4A4(a1, a2);
}

BOOL sub_1AF78EF18(uint64_t a1)
{
  if (*(*a1 + 26))
  {
    return 1;
  }

  v2 = sub_1AF764B14(0x64657463656C6573, 0xEC00000065736143);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;

  v5 = sub_1AF7AA418(v4, v3, sub_1AF7AA2D8, sub_1AF7AA2D8);

  sub_1AF8CC960(v5, v13);

  if (!v13[1])
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = v13[2];
  v6 = v13[3];

  if (!*(*(v1 + 264) + 16) || (, sub_1AF419914(v7, v6), v9 = v8, , (v9 & 1) == 0))
  {

    goto LABEL_10;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    return 1;
  }

  v11 = *Strong != _TtCO3VFX21GraphV1CodeGeneration12ContextEntry;
LABEL_11:

  return v11;
}

uint64_t *sub_1AF78F0D4(uint64_t *a1, void *a2, char a3)
{
  v6 = *a1;
  v7 = *(*a1 + 176);
  v8 = a2[4];
  v21[0] = a2[3];
  v21[1] = v8;
  v20[2] = v21;

  v9 = sub_1AF7B9518(sub_1AF7714A4, v20, v7);

  if ((v9 & 1) == 0)
  {
    v12 = a2[3];
    v11 = a2[4];
    v13 = *(v6 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 176) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *(v6 + 176) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    *(v6 + 176) = v13;
    v18 = sub_1AF78EF18(a1);
    v19 = a3 & 1;
    if (v18)
    {
      return sub_1AF78E354(a1, a2, v19);
    }

    else
    {
      return sub_1AF78D808(a1, a2, v19);
    }
  }

  return result;
}

uint64_t *sub_1AF78F23C(uint64_t *a1, void *a2, char a3)
{
  v6 = *a1;
  v7 = *(*a1 + 176);
  v8 = a2[4];
  v23[0] = a2[3];
  v23[1] = v8;
  v22[2] = v23;

  v9 = sub_1AF7B9518(sub_1AF7714A4, v22, v7);

  if ((v9 & 1) == 0)
  {
    v12 = a2[3];
    v11 = a2[4];
    v13 = *(v6 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 176) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *(v6 + 176) = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    *(v6 + 176) = v13;
    if (a3)
    {
      v18 = (*(*a2 + 1424))();
      sub_1AF78A3AC(a1, v18);
    }

    v19 = sub_1AF7AB7C4(a2);
    sub_1AF78AFC4(a1, v19, v20, v21);

    sub_1AF78C364(a1, a2, 1);
    sub_1AF7B67A4(a1);
    return sub_1AF78C4A4(a1, a2);
  }

  return result;
}

uint64_t sub_1AF78F438(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(*a1 + 176);
  v10 = a2[4];
  *&v114 = a2[3];
  *(&v114 + 1) = v10;
  v108 = &v114;

  v11 = sub_1AF7B9518(sub_1AF7714A4, v107, v9);

  if (v11)
  {
    return result;
  }

  v101 = a1;
  v14 = a2[3];
  v13 = a2[4];
  v15 = *(v8 + 176);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 176) = v15;
  v104 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1AF420554(0, *(v15 + 2) + 1, 1, v15);
    *(v8 + 176) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1AF420554(v17 > 1, v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v14;
  *(v19 + 5) = v13;
  *(v8 + 176) = v15;
  v20 = v104;
  if (a3)
  {
    v21 = sub_1AF7649C4();
    sub_1AF78A3AC(v101, v21);
  }

  v22 = sub_1AF7649C4();
  *&v114 = MEMORY[0x1E69E7CC0];
  v23 = v104[6];

  sub_1AF782460(v24, &v114, sub_1AF76B130);

  sub_1AF78AFC4(v101, v22, v23, v114);

  v100 = v4;
  sub_1AF78C364(v101, v104, 1);
  v25 = sub_1AF785FB4();
  v122 = v25;

  v27 = sub_1AF7AA418(v26, v104, sub_1AF7AB100, sub_1AF7AB100);

  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v33 = MEMORY[0x1E69E6158];
  v102 = v27;
  v103 = v31;
  while (1)
  {
    if (v30)
    {
      goto LABEL_17;
    }

    do
    {
      v36 = v32 + 1;
      if (v32 + 1 >= v31)
      {

        v72 = v20[7];
        *&v119[0] = MEMORY[0x1E69E7CC0];
        if (v72 >> 62)
        {
          v73 = sub_1AFDFE108();
        }

        else
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v73)
        {
          v74 = 0;
          while (1)
          {
            if ((v72 & 0xC000000000000001) != 0)
            {
              v75 = MEMORY[0x1B2719C70](v74, v72);
            }

            else
            {
              v75 = *(v72 + 8 * v74 + 32);
            }

            v76 = *(v75 + 72);
            v109 = *(v75 + 56);
            v110 = v76;
            v111.n128_u64[0] = *(v75 + 88);
            sub_1AF444F60(&v109, &v114);
            v77 = sub_1AF7FE65C();
            v79 = v78;
            sub_1AF444FBC(&v109);
            if (v77 == 0x6156686374697753 && v79 == 0xEB0000000065756CLL)
            {
            }

            else
            {
              v80 = sub_1AFDFEE28();

              if ((v80 & 1) == 0)
              {

                goto LABEL_50;
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
LABEL_50:
            if (v73 == ++v74)
            {
              v81 = *&v119[0];
              v20 = v104;
              goto LABEL_60;
            }
          }
        }

        v81 = MEMORY[0x1E69E7CC0];
LABEL_60:

        sub_1AF7A4A90(v81, v100, &v122);

        v82.n128_f64[0] = sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v114);
        if (v115.n128_u64[1])
        {
          v83 = v101;
          if (swift_dynamicCast() & 1) != 0 && (v119[0])
          {
            sub_1AF786F68(1, &v114);
            if (*(&v114 + 1))
            {
              v84 = *(&v117[1] + 1);
              v85 = v20[3];
              v86 = v20[4];

              v87 = sub_1AF76ED08(v85, v86);
              v89 = v88;

              (*(*v20 + 4232))(v101, v87, v89, v122, v84);

              sub_1AF7A2FA4(&v114, &qword_1EB63EA78, &_s8TemplateVN, v90);
LABEL_68:
              sub_1AF78C4A4(v83, v20);
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v119[0] = 0;
            *(&v119[0] + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000030, 0x80000001AFF346F0);
            v96 = sub_1AF7F76D8();
            MEMORY[0x1B2718AE0](v96);

            MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF34730);
            v97 = v119[0];
            v98 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v99 = v98;
              swift_once();
              v98 = v99;
            }

            *&v119[0] = 0;
            sub_1AF0D4F18(v98, v119, v97, *(&v97 + 1));
LABEL_67:

            goto LABEL_68;
          }
        }

        else
        {
          sub_1AF7A2FA4(&v114, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v82);
          v83 = v101;
        }

        v91 = v20[3];
        v92 = v20[4];

        v93 = sub_1AF76ED08(v91, v92);
        v95 = v94;

        (*(*v20 + 4232))(v83, v93, v95, v122, 0);
        goto LABEL_67;
      }

      v30 = *(v27 + 8 * v32++ + 72);
    }

    while (!v30);
    v32 = v36;
LABEL_17:
    v37 = *(v27 + 48);
    v38 = (v32 << 10) | (16 * __clz(__rbit64(v30)));
    v40 = *(v37 + v38);
    v39 = *(v37 + v38 + 8);
    v41 = (*(v27 + 56) + v38);
    v42 = v41[1];
    v105 = *v41;
    v120 = 0;
    v121 = 0xE000000000000000;
    v118[3] = v33;
    v118[0] = 0;
    v118[1] = 0xE000000000000000;
    v43 = v20[2];

    v106 = v42;

    if (v43)
    {
      if (!*(v43 + 16))
      {
LABEL_22:
        if (!v43)
        {
          v20[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
        }

        sub_1AF0D5A54(v118, &v109);
        memset(v117 + 8, 0, 32);
        *&v114 = 1701667182;
        *(&v114 + 1) = 0xE400000000000000;
        sub_1AF809A8C(&v109, v123);
        v115 = v123[0];
        v116 = v123[1];
        *&v117[0] = v124;
        sub_1AF7A2FA4(v117 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v123[0]);
        sub_1AF449D40(&v109, (v117 + 8));
        v111 = v116;
        v112[0] = v117[0];
        v112[1] = v117[1];
        v113 = *&v117[2];
        v109 = v114;
        v110 = v115;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v119[0] = v20[2];
        sub_1AF85148C(&v109, 1701667182, 0xE400000000000000, v46);
        v43 = *&v119[0];
        v20[2] = *&v119[0];
        goto LABEL_25;
      }
    }

    else
    {
      v20[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);

      v43 = v20[2];
      if (!*(v43 + 16))
      {
        goto LABEL_22;
      }
    }

    sub_1AF419914(1701667182, 0xE400000000000000);
    v45 = v44;

    v43 = v20[2];
    if ((v45 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (!v43)
    {
      goto LABEL_33;
    }

    if (!*(v43 + 16))
    {
      goto LABEL_31;
    }

    v47 = sub_1AF419914(1701667182, 0xE400000000000000);
    if ((v48 & 1) == 0)
    {

LABEL_31:
      v49 = 0uLL;
      memset(v117, 0, 40);
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      goto LABEL_32;
    }

    sub_1AF4455CC(*(v43 + 56) + 88 * v47, &v114);

    if (*(&v114 + 1))
    {
      sub_1AF4455CC(&v114, &v109);
      sub_1AF7A2FA4(&v114, &qword_1EB6335B0, &_s8MetadataVN, v50);
      sub_1AF7A74D0(v112 + 8, v119, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v51);
      sub_1AF761390(&v109);
      goto LABEL_34;
    }

LABEL_32:
    sub_1AF7A2FA4(&v114, &qword_1EB6335B0, &_s8MetadataVN, v49);
LABEL_33:
    memset(v119, 0, sizeof(v119));
LABEL_34:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v118);
    sub_1AF449D40(v119, &v114);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0](v109, *(&v109 + 1));

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    if (sub_1AFDFD178())
    {

      v52 = sub_1AFDFD048();

      v53 = sub_1AF701628(v52, v40, v39);
      v55 = v54;
      v57 = v56;
      v59 = v58;

      v60 = MEMORY[0x1B27189E0](v53, v55, v57, v59);
      v62 = v61;
      v40 = v60;

      v25 = v122;
    }

    else
    {

      v62 = v39;
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v114 = v25;
    v64 = sub_1AF419914(v40, v62);
    v66 = v65;
    v67 = v25[2] + ((v65 & 1) == 0);
    if (v25[3] < v67)
    {
      break;
    }

    v68 = v40;
    if ((v63 & 1) == 0)
    {
      sub_1AF849704();
    }

LABEL_42:
    v33 = MEMORY[0x1E69E6158];
    v25 = v114;
    if (v66)
    {
      v71 = (*(v114 + 56) + 16 * v64);
      *v71 = v105;
      v71[1] = v106;
    }

    else
    {
      *(v114 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      v34 = (v25[6] + 16 * v64);
      *v34 = v68;
      v34[1] = v62;
      v35 = (v25[7] + 16 * v64);
      *v35 = v105;
      v35[1] = v106;
      ++v25[2];
    }

    v27 = v102;
    v30 &= v30 - 1;

    v122 = v25;
    v31 = v103;
    v20 = v104;
  }

  sub_1AF8357A0(v67, v63);
  v68 = v40;
  v69 = sub_1AF419914(v40, v62);
  if ((v66 & 1) == (v70 & 1))
  {
    v64 = v69;
    goto LABEL_42;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF790074(uint64_t *a1, void *a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = *(*a1 + 176);
  v7 = a2[4];
  v52 = a2[3];
  v53 = v7;
  v47 = &v52;

  v8 = sub_1AF7B9518(sub_1AF7714A4, v46, v6);

  if ((v8 & 1) == 0)
  {
    v10 = a2[3];
    v11 = a2[4];
    v12 = *(v5 + 176);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 176) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1AF420554(0, *(v12 + 2) + 1, 1, v12);
      *(v5 + 176) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1AF420554(v14 > 1, v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v11;
    *(v5 + 176) = v12;
    sub_1AF78C4A4(v4, a2);
    v17 = MEMORY[0x1E69E7CC0];
    v55 = MEMORY[0x1E69E7CC0];
    if (a2[2])
    {

      v19 = sub_1AF7A24A4(v18, 0xEB0000000074754FLL);

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = sub_1AFC8604C(*(v19 + 16), 0);
        sub_1AFC871B8(&v52, (v21 + 4), v20, v19);
        sub_1AF0FBB14(v52);
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v41 = v2;
      v42 = v5;
      v43 = v4;
      v52 = v21;
      sub_1AF782220(&v52);
      v22 = v52[2];
      if (v22)
      {
        v23 = (v52 + 4);
        v24 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1AF7A70A0(v23, &v52);
          v25 = v52;
          v26 = v53;
          sub_1AF7A74D0(&v54, v50, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v27);
          sub_1AF449D40(v50, v51);
          swift_dynamicCast();
          sub_1AF809DF8(v48, v49, v56);
          v44 = v56[1];
          v45 = v56[0];
          v28 = v57;
          *&v51[0] = v25;
          *(&v51[0] + 1) = v26;
          *&v50[0] = 0x6E657474616C662ELL;
          *(&v50[0] + 1) = 0xEB0000000074754FLL;
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_1AF4486E4();
          v29 = sub_1AFDFDEB8();
          v31 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1AF4255E0(0, v24[2] + 1, 1, v24);
          }

          v33 = v24[2];
          v32 = v24[3];
          if (v33 >= v32 >> 1)
          {
            v24 = sub_1AF4255E0(v32 > 1, v33 + 1, 1, v24);
          }

          v24[2] = v33 + 1;
          v34 = &v24[8 * v33];
          v34[4] = v29;
          v34[5] = v31;
          *(v34 + 3) = v45;
          *(v34 + 4) = v44;
          v34[10] = v28;
          *(v34 + 88) = 0;
          v55 = v24;
          sub_1AF7A7124(&v52);
          v23 += 104;
          --v22;
        }

        while (v22);
      }

      v5 = v42;
      v4 = v43;
      v2 = v41;
      v17 = MEMORY[0x1E69E7CC0];
    }

    if (*(v5 + 161) == 1)
    {
      v35 = sub_1AF432690(MEMORY[0x1E69E7CC0]);
    }

    else
    {

      v35 = sub_1AF7AA0A4(v36, v2, a2, sub_1AF7A9DCC, sub_1AF7A9DCC);
    }

    *&v51[0] = v17;
    v37 = a2[10];
    v38 = *(v37 + 16);

    if (v38)
    {
      v39 = (v37 + 40);
      do
      {
        v40 = *v39;
        v52 = *(v39 - 1);
        v53 = v40;

        sub_1AF79AD2C(&v52, &v55, a2, v4, v35, v51);

        v39 += 2;
        --v38;
      }

      while (v38);
    }

    if (*(v5 + 25))
    {
      sub_1AF78228C(v51);
    }

    sub_1AF78254C(*&v51[0], v4);
  }

  return result;
}

uint64_t sub_1AF79054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  _s7ContextC14GenerationDataCMa();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 104) = MEMORY[0x1E69E7CC0];
  *(v11 + 112) = v12;
  *(v11 + 120) = v12;
  *(v11 + 128) = v12;
  *(v11 + 136) = v12;
  *(v11 + 144) = v12;

  sub_1AF432980(v12);
  v13 = *(a2 + 16);
  *(v11 + 24) = *a2;
  *(v11 + 40) = v13;
  v14 = *(a2 + 48);
  *(v11 + 56) = *(a2 + 32);
  *(v11 + 168) = v12;
  *(v11 + 176) = v12;
  *(v11 + 16) = v4;
  *(v11 + 72) = v14;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  *(v11 + 152) = a3;

  sub_1AF7AAF00(a2, v27);

  *(v11 + 161) = v8;
  *(v11 + 160) = 0;
  v28 = v11;

  v16 = sub_1AF7AA0A4(v15, v4, a1, sub_1AF7A7FF4, sub_1AF7A7FF4);

  v27[0] = *(a2 + 48);
  v17 = *(&v27[0] + 1);
  if (*(&v27[0] + 1))
  {
    v18 = *&v27[0];

    v19 = MEMORY[0x1E69E6158];
    sub_1AF7A74D0(v27, v26, &qword_1ED726CC0, MEMORY[0x1E69E6158], v20);
    v21 = sub_1AF7A89F0(v16, v4, v18, v17);
    sub_1AF7A2FA4(v27, &qword_1ED726CC0, v19, v22);
  }

  else
  {

    v21 = sub_1AF7AA418(v16, v4, sub_1AF7A8C20, sub_1AF7A8C20);
  }

  if (v8)
  {
    sub_1AF7A9100(v11);
    sub_1AF8D3CBC();
    v24 = v23;

    sub_1AF790074(&v28, v24);

LABEL_8:
    sub_1AF7B0C28(&v28, v21, v4, v8, *(a2 + 3));
    sub_1AF790DD0(&v28);
    v11 = v28;
    goto LABEL_9;
  }

  if (*(v21 + 16))
  {
    sub_1AF7A9100(v11);
    goto LABEL_8;
  }

LABEL_9:

  sub_1AF797808();

  return v11;
}