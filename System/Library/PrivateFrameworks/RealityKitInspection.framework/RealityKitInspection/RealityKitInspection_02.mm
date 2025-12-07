uint64_t sub_2619D3ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_2619D3F54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2619D3FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2619D401C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2619D4078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2619D40DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2619D4138(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2619D41BC()
{
  result = qword_27FEC91F0;
  if (!qword_27FEC91F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC8F70, &unk_2619DB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC91F0);
  }

  return result;
}

uint64_t sub_2619D424C(uint64_t a1, const void *a2)
{
  sub_2619B624C(a2, v11);
  sub_2619CEF60();
  swift_beginAccess();
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v8, __dst, sizeof(v8));
  sub_2619B3420(v8);
  sub_2619B624C(a2, v11);
  sub_2619CF0A8();
  swift_beginAccess();
  memcpy(__src, a2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v9, __src, sizeof(v9));
  sub_2619B3420(v9);
  sub_2619B624C(a2, v11);
  sub_2619CF1F0();
  swift_beginAccess();
  memcpy(v5, a2, sizeof(v5));

  swift_getAtKeyPath();

  memcpy(v10, v5, sizeof(v10));
  sub_2619B3420(v10);
  sub_2619CF338();
  swift_beginAccess();
  memcpy(v4, a2, sizeof(v4));

  swift_getAtKeyPath();

  memcpy(v11, v4, 0x128uLL);
  sub_2619B3420(v11);
  sub_2619D95F8();
}

uint64_t sub_2619D44A4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  sub_2619D49A8(v1);
  sub_2619B624C(v2, v19);
  sub_2619CF480();
  swift_beginAccess();
  memcpy(__dst, v2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v12, __dst, sizeof(v12));
  sub_2619B3420(v12);
  sub_2619B624C(v2, v19);
  sub_2619CF5C8();
  swift_beginAccess();
  memcpy(__src, v2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v13, __src, sizeof(v13));
  sub_2619B3420(v13);
  sub_2619B624C(v2, v19);
  sub_2619CF710();
  swift_beginAccess();
  memcpy(v9, v2, sizeof(v9));

  swift_getAtKeyPath();

  memcpy(v14, v9, sizeof(v14));
  sub_2619B3420(v14);
  sub_2619B624C(v2, v19);
  sub_2619CF858();
  swift_beginAccess();
  memcpy(v8, v2, sizeof(v8));

  swift_getAtKeyPath();

  memcpy(v15, v8, sizeof(v15));
  sub_2619B3420(v15);
  sub_2619B624C(v2, v19);
  sub_2619CF9A0();
  swift_beginAccess();
  memcpy(v7, v2, sizeof(v7));

  swift_getAtKeyPath();

  memcpy(v16, v7, sizeof(v16));
  sub_2619B3420(v16);
  sub_2619B624C(v2, v19);
  sub_2619CFDA8();
  swift_beginAccess();
  memcpy(v6, v2, sizeof(v6));

  swift_getAtKeyPath();

  memcpy(v17, v6, sizeof(v17));
  sub_2619B3420(v17);
  sub_2619B624C(v2, v19);
  sub_2619CFEF0();
  swift_beginAccess();
  memcpy(v5, v2, sizeof(v5));

  swift_getAtKeyPath();

  memcpy(v18, v5, sizeof(v18));
  sub_2619B3420(v18);
  sub_2619D0038();
  swift_beginAccess();
  memcpy(v4, v2, sizeof(v4));

  swift_getAtKeyPath();

  memcpy(v19, v4, 0x128uLL);
  sub_2619B3420(v19);
  sub_2619D9618();
}

void *sub_2619D49A8(const void *a1)
{
  v49 = sub_2619D9838();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619B624C(a1, v52);
  sub_2619CFC60();
  swift_beginAccess();
  memcpy(v51, a1, sizeof(v51));

  swift_getAtKeyPath();

  memcpy(v52, v51, 0x128uLL);
  sub_2619B3420(v52);
  v4 = v50;
  if (v50)
  {
    v5 = 0;
    v6 = v50 + 64;
    v7 = 1 << *(v50 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v50 + 64);
    v10 = (v7 + 63) >> 6;
    v48 = v2 + 32;
    v11 = MEMORY[0x277D84F98];
LABEL_5:
    v12 = MEMORY[0x277D84F90];
    while (v9)
    {
LABEL_11:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v5 << 6);
      v16 = *(*(v4 + 48) + 4 * v15);
      v17 = *(*(v4 + 56) + 8 * v15);
      if (v17 >> 62)
      {
        v42 = v4;
        v43 = v16;
        v19 = sub_2619D9CA8();
        v4 = v42;
        if (v19)
        {
          v18 = sub_2619D9CA8();
          if (!v18)
          {
            v40 = v6;
            v41 = v11;
            v39 = v10;
            v46 = v2;
LABEL_26:
            v25 = v41;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51[0] = v25;
            v27 = sub_2619D0ED4(v43);
            v29 = v25[2];
            v30 = (v28 & 1) == 0;
            v31 = __OFADD__(v29, v30);
            v32 = v29 + v30;
            if (v31)
            {
              goto LABEL_42;
            }

            v33 = v28;
            if (v25[3] >= v32)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v37 = v27;
                sub_2619D7940();
                v27 = v37;
              }
            }

            else
            {
              sub_2619D64EC(v32, isUniquelyReferenced_nonNull_native);
              v27 = sub_2619D0ED4(v43);
              if ((v33 & 1) != (v34 & 1))
              {
                goto LABEL_44;
              }
            }

            v11 = v51[0];
            if (v33)
            {
              *(*(v51[0] + 56) + 8 * v27) = v12;
            }

            else
            {
              *(v51[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
              *(v11[6] + 4 * v27) = v43;
              *(v11[7] + 8 * v27) = v12;
              v35 = v11[2];
              v31 = __OFADD__(v35, 1);
              v36 = v35 + 1;
              if (v31)
              {
                goto LABEL_43;
              }

              v11[2] = v36;
            }

            v4 = v42;
            v2 = v46;
            v10 = v39;
            v6 = v40;
            goto LABEL_5;
          }

LABEL_17:
          v46 = v2;
          v47 = v18;
          v40 = v6;
          v41 = v11;
          v39 = v10;
          v51[0] = v12;
          v20 = v18 & ~(v18 >> 63);

          sub_2619D8368(0, v20, 0);
          if (v47 < 0)
          {
            goto LABEL_41;
          }

          v21 = 0;
          v12 = v51[0];
          v45 = v17 & 0xC000000000000001;
          v22 = v44;
          do
          {
            if (v45)
            {
              MEMORY[0x2667148E0](v21, v17);
            }

            else
            {
            }

            sub_2619D9448();
            sub_2619D9828();

            v51[0] = v12;
            v24 = *(v12 + 16);
            v23 = *(v12 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_2619D8368((v23 > 1), v24 + 1, 1);
              v12 = v51[0];
            }

            ++v21;
            *(v12 + 16) = v24 + 1;
            (*(v46 + 32))(v12 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24, v22, v49);
          }

          while (v47 != v21);

          goto LABEL_26;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          v43 = v16;
          v42 = v4;
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v11;
      }

      v9 = *(v6 + 8 * v13);
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_2619D9D78();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2619D4E1C(uint64_t a1, const void *a2)
{
  sub_2619D4EF4(a2);
  sub_2619CE638();
  swift_beginAccess();
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v5, __dst, sizeof(v5));
  sub_2619B3420(v5);
  sub_2619D9638();
}

void *sub_2619D4EF4(const void *a1)
{
  sub_2619B624C(a1, v27);
  sub_2619CE780();
  swift_beginAccess();
  memcpy(__dst, a1, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v27, __dst, 0x128uLL);
  sub_2619B3420(v27);
  if (v25)
  {
    v2 = 0;
    v3 = 1 << *(v25 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v25 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = MEMORY[0x277D84F98];
    if (v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_8:
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v6)
      {

        return v7;
      }

      v5 = *(v25 + 64 + 8 * v8);
      ++v2;
    }

    while (!v5);
    while (1)
    {
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(*(v25 + 48) + 8 * v9);
      v11 = *(*(v25 + 56) + 4 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v7;
      v13 = sub_2619C5F4C(v10);
      v15 = v7[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        break;
      }

      v19 = v14;
      if (v7[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = v13;
          sub_2619D7A9C();
          v13 = v23;
        }
      }

      else
      {
        sub_2619D6760(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_2619C5F4C(v10);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_27;
        }
      }

      v5 &= v5 - 1;
      v7 = __dst[0];
      if (v19)
      {
        *(*(__dst[0] + 56) + 4 * v13) = v11;
        v2 = v8;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        *(__dst[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
        *(v7[6] + 8 * v13) = v10;
        *(v7[7] + 4 * v13) = v11;
        v21 = v7[2];
        v17 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        v7[2] = v22;
        v2 = v8;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      v8 = v2;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_2619D9D78();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2619D514C(uint64_t a1, const void *a2)
{
  sub_2619B624C(a2, v16);
  sub_2619CEE18();
  swift_beginAccess();
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v16, __dst, sizeof(v16));
  sub_2619B3420(v16);
  v3 = v14;
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_2619B624C(a2, __src);
  sub_2619CEB88();
  swift_beginAccess();
  memcpy(__src, a2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v13, __src, sizeof(v13));
  sub_2619B3420(v13);
  if (!v11)
  {

LABEL_5:
    sub_2619B3420(a2);
    __dst[0] = 0;
    sub_2619D95D8();
  }

  v4 = MEMORY[0x277D84F98];
  v8 = MEMORY[0x277D84F98];

  sub_2619D87DC(v4, v11, v3, &v8);

  swift_bridgeObjectRelease_n();
  sub_2619B624C(a2, v10);
  sub_2619CEA40();
  swift_beginAccess();
  memcpy(v7, a2, sizeof(v7));

  swift_getAtKeyPath();

  memcpy(v9, v7, sizeof(v9));
  sub_2619B3420(v9);
  sub_2619CECD0();
  swift_beginAccess();
  memcpy(v6, a2, sizeof(v6));

  swift_getAtKeyPath();

  memcpy(v10, v6, sizeof(v10));
  sub_2619B3420(v10);

  sub_2619D95D8();
}

uint64_t sub_2619D5430(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v77 = a4;
  v79 = sub_2619D95C8();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = v64 - v10;
  v11 = sub_2619D9838();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[1];
  if (!*(v16 + 16))
  {
    return result;
  }

  if (!*(a3 + 16))
  {
    return result;
  }

  v17 = *a2;
  result = sub_2619B0D08(v17);
  if ((v18 & 1) == 0)
  {
    return result;
  }

  v64[1] = v17;
  v65 = v15;
  v66 = v12;
  v67 = v11;
  v68 = a1;
  v19 = *(*(a3 + 56) + 8 * result);
  v20 = v16 + 64;
  v21 = 1 << *(v16 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v16 + 64);
  v24 = (v21 + 63) >> 6;
  v72 = v19;
  v73 = (v7 + 32);
  v69 = v7 + 40;

  v25 = 0;
  v80 = MEMORY[0x277D84F90];
  v70 = v16;
  v71 = v7;
  while (v23)
  {
LABEL_14:
    v29 = __clz(__rbit64(v23)) | (v25 << 6);
    v30 = (*(v16 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(v16 + 56) + 24 * v29;
    v34 = *(v33 + 16);
    v35 = *(v33 + 20);
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v35;
    v75 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_2619D86D0(0, *(v80 + 2) + 1, 1, v80);
    }

    v38 = *(v80 + 2);
    v37 = *(v80 + 3);
    v39 = v72;
    if (v38 >= v37 >> 1)
    {
      v59 = sub_2619D86D0((v37 > 1), v38 + 1, 1, v80);
      v39 = v72;
      v80 = v59;
    }

    v40 = v80;
    *(v80 + 2) = v38 + 1;
    v41 = &v40[16 * v38];
    *(v41 + 4) = v32;
    *(v41 + 5) = v31;
    if (*(v39 + 16))
    {
      sub_2619B0DB4(v32, v31);
    }

    v42 = v76;
    sub_2619D95B8();

    v43 = *v73;
    (*v73)(v78, v42, v79);
    v44 = v77;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *v44;
    v46 = v81;
    *v44 = 0x8000000000000000;
    v47 = sub_2619B0DB4(v32, v31);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_33;
    }

    v53 = v48;
    if (v46[3] < v52)
    {
      sub_2619D69C4(v52, v45);
      v47 = sub_2619B0DB4(v32, v31);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_35;
      }

LABEL_25:
      v55 = v71;
      if (v53)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

    if (v45)
    {
      goto LABEL_25;
    }

    v60 = v47;
    sub_2619D7BE8();
    v47 = v60;
    v55 = v71;
    if (v53)
    {
LABEL_7:
      v26 = v47;

      v27 = v81;
      (*(v55 + 40))(v81[7] + *(v55 + 72) * v26, v78, v79);
      goto LABEL_8;
    }

LABEL_26:
    v27 = v81;
    v81[(v47 >> 6) + 8] |= 1 << v47;
    v56 = (v27[6] + 16 * v47);
    *v56 = v32;
    v56[1] = v31;
    v43((v27[7] + *(v55 + 72) * v47), v78, v79);
    v57 = v27[2];
    v51 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v51)
    {
      goto LABEL_34;
    }

    v27[2] = v58;
LABEL_8:
    v23 &= v23 - 1;
    *v77 = v27;

    v16 = v70;
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      sub_2619D9448();
      v61 = v65;
      sub_2619D9828();

      v62 = v68;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *v62;
      sub_2619D74FC(v80, v61, v63);
      result = (*(v66 + 8))(v61, v67);
      *v62 = v81;
      return result;
    }

    v23 = *(v20 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D5984(uint64_t a1, _BYTE *a2)
{
  v2 = sub_2619D893C(a1, a2);

  return v2;
}

uint64_t sub_2619D59B8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2619D9838();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  MEMORY[0x28223BE20](v4);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();

  v8 = sub_2619B8194(v7);
  v98 = a1;
  v99 = v8;
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2619D9CA8())
  {
    v11 = MEMORY[0x277D84F90];
    v87 = v2;
    if (!i)
    {
      v2 = MEMORY[0x277D84F90];
      v21 = *(MEMORY[0x277D84F90] + 16);
      if (!v21)
      {
        break;
      }

      goto LABEL_19;
    }

    v102 = MEMORY[0x277D84F90];
    sub_2619D8388(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_116;
    }

    v97 = v9;
    v12 = 0;
    v2 = v102;
    v13 = *(*v99 + 96);
    v14 = v98 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v15 = MEMORY[0x2667148E0](v12, v98);
      }

      else
      {
        v15 = *(v98 + 8 * v12 + 32);
      }

      v16 = v13();
      if (*(v16 + 16))
      {
        v17 = sub_2619B0D08(v15);
        if (v18)
        {
          memcpy(v100, (*(v16 + 56) + 296 * v17), sizeof(v100));
          sub_2619B624C(v100, v103);

          memcpy(v101, v100, sizeof(v101));
          nullsub_1();
        }

        else
        {

          sub_2619B638C(v101);
        }

        memcpy(v103, v101, 0x128uLL);
      }

      else
      {

        sub_2619B638C(v103);
      }

      v102 = v2;
      v20 = v2[2];
      v19 = v2[3];
      if (v20 >= v19 >> 1)
      {
        sub_2619D8388((v19 > 1), v20 + 1, 1);
        v2 = v102;
      }

      ++v12;
      v2[2] = v20 + 1;
      memcpy(&v2[37 * v20 + 4], v103, 0x128uLL);
    }

    while (i != v12);
    v9 = v97;
    v11 = MEMORY[0x277D84F90];
    v21 = v2[2];
    if (!v21)
    {
      break;
    }

LABEL_19:
    v22 = 0;
    v23 = (v2 + 4);
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      memmove(v103, v23, 0x128uLL);
      v25 = sub_2619B62AC(v103) == 1;
      if ((v25 | LOBYTE(v103[1])))
      {
        v26 = 0;
      }

      else
      {
        v26 = v103[0];
      }

      v27 = __OFADD__(v24, v26);
      v22 = v24 + v26;
      if (v27)
      {
        goto LABEL_102;
      }

      v23 += 296;
      if (!--v21)
      {
        goto LABEL_29;
      }
    }

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
    ;
  }

  v22 = 0;
LABEL_29:
  v86 = v22;

  v101[0] = v11;
  if (v9)
  {
    v28 = sub_2619D9CA8();
    if (!v28)
    {
      goto LABEL_74;
    }

LABEL_31:
    v29 = 0;
    v94 = v98 & 0xFFFFFFFFFFFFFF8;
    v95 = v98 & 0xC000000000000001;
    v92 = v28;
    v93 = v98 + 32;
    while (1)
    {
      if (v95)
      {
        v2 = MEMORY[0x2667148E0](v29, v98);
        v27 = __OFADD__(v29++, 1);
        if (v27)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v29 >= *(v94 + 16))
        {
          goto LABEL_104;
        }

        v2 = *(v93 + 8 * v29);

        v27 = __OFADD__(v29++, 1);
        if (v27)
        {
          goto LABEL_103;
        }
      }

      MEMORY[0x266714720](v32);
      if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2619D9A28();
      }

      v33 = sub_2619D9A38();
      v34 = v101[0];
      v35 = sub_2619C691C(v33);
      v36 = v35 >> 62;
      v37 = v35;
      if (v35 >> 62)
      {
        v38 = sub_2619D9CA8();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v34 >> 62;
      if (v34 >> 62)
      {
        v58 = sub_2619D9CA8();
        v40 = v58 + v38;
        if (__OFADD__(v58, v38))
        {
          goto LABEL_105;
        }
      }

      else
      {
        v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v40 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_105;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject == 1 && (v42 = v34 & 0xFFFFFFFFFFFFFF8, v40 <= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v43 = v38;
      }

      else
      {
        if (v9)
        {
          sub_2619D9CA8();
        }

        v43 = v38;
        v34 = sub_2619D9BD8();
        v42 = v34 & 0xFFFFFFFFFFFFFF8;
      }

      v44 = *(v42 + 16);
      v45 = *(v42 + 24);
      v46 = v37;
      if (v36)
      {
        v47 = v42;
        v48 = sub_2619D9CA8();
        v42 = v47;
        v9 = v48;
        v46 = v37;
        if (!v9)
        {
LABEL_32:

          v30 = v43 <= 0;
          v31 = v92;
          if (!v30)
          {
            goto LABEL_106;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v9 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_32;
        }
      }

      if (((v45 >> 1) - v44) < v43)
      {
        goto LABEL_109;
      }

      v49 = v43;
      v96 = v42;
      v97 = v34;
      v50 = v42 + 8 * v44 + 32;
      if (v36)
      {
        if (v9 < 1)
        {
          goto LABEL_111;
        }

        v89 = v43;
        v90 = v2;
        v91 = v29;
        v51 = v46;
        sub_2619B63E4();
        v52 = 0;
        v2 = &unk_2619DB1E0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
          v53 = sub_2619B3098(v103, v52, v51);
          v55 = *v54;

          (v53)(v103, 0);
          *(v50 + 8 * v52++) = v55;
        }

        while (v9 != v52);

        v29 = v91;
        v31 = v92;
        v49 = v89;
      }

      else
      {
        sub_2619D94A8();
        swift_arrayInitWithCopy();

        v31 = v92;
      }

      v34 = v97;
      if (v49 > 0)
      {
        v56 = *(v96 + 16);
        v27 = __OFADD__(v56, v49);
        v57 = v56 + v49;
        if (v27)
        {
          goto LABEL_110;
        }

        *(v96 + 16) = v57;
      }

LABEL_34:
      v101[0] = v34;
      if (v29 == v31)
      {
        goto LABEL_75;
      }
    }
  }

  v28 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
    goto LABEL_31;
  }

LABEL_74:
  v34 = MEMORY[0x277D84F90];
LABEL_75:

  v59 = v34 & 0xFFFFFFFFFFFFFF8;
  if (v34 >> 62)
  {
    v2 = sub_2619D9CA8();
    if (v2)
    {
      goto LABEL_77;
    }

    goto LABEL_114;
  }

  v2 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_114:

    v81 = sub_2619D9668();

    return v81;
  }

LABEL_77:
  v60 = 0;
  v61 = v34 & 0xC000000000000001;
  v96 = v85 + 16;
  v98 = v85 + 8;
  v62 = MEMORY[0x277D84F98];
  while (1)
  {
    v9 = v60;
    while (1)
    {
      if (v61)
      {
        v63 = MEMORY[0x2667148E0](v9, v34);
        v60 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v9 >= *(v59 + 16))
        {
          goto LABEL_108;
        }

        v63 = *(v34 + 8 * v9 + 32);

        v60 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_107;
        }
      }

      v64 = (*(*v99 + 96))();
      if (*(v64 + 16))
      {
        v65 = sub_2619B0D08(v63);
        if (v66)
        {
          break;
        }
      }

      ++v9;
      if (v60 == v2)
      {
        goto LABEL_114;
      }
    }

    v97 = v34;
    memcpy(v103, (*(v64 + 56) + 296 * v65), 0x128uLL);
    sub_2619B624C(v103, v101);

    sub_2619D9448();
    v67 = v88;
    sub_2619D9828();

    sub_2619D9698();

    v95 = sub_2619D893C(v68, v103);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v62;
    v70 = sub_2619D6454(v67);
    v72 = v62[2];
    v73 = (v71 & 1) == 0;
    v27 = __OFADD__(v72, v73);
    v74 = v72 + v73;
    if (v27)
    {
      break;
    }

    v75 = v71;
    if (v62[3] >= v74)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = v70;
        sub_2619D80E8();
        v70 = v80;
      }
    }

    else
    {
      sub_2619D7120(v74, isUniquelyReferenced_nonNull_native);
      v70 = sub_2619D6454(v88);
      if ((v75 & 1) != (v76 & 1))
      {
        goto LABEL_118;
      }
    }

    v34 = v97;
    v62 = v101[0];
    if (v75)
    {
      *(*(v101[0] + 56) + 8 * v70) = v95;
    }

    else
    {
      *(v101[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v77 = v70;
      (*(v85 + 16))(v62[6] + *(v85 + 72) * v70, v88, v84);
      *(v62[7] + 8 * v77) = v95;
      v78 = v62[2];
      v27 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v27)
      {
        goto LABEL_117;
      }

      v62[2] = v79;
    }

    (*v98)(v88, v84);
    if (v60 == v2)
    {
      goto LABEL_114;
    }
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D63A0(uint64_t a1)
{
  sub_2619D9678();

  sub_2619D59B8(v1);
  v2 = sub_2619D9658();

  return v2;
}

unint64_t sub_2619D6454(uint64_t a1)
{
  sub_2619D9838();
  sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348], MEMORY[0x277D65350]);
  v2 = sub_2619D9918();

  return sub_2619D7780(a1, v2);
}

uint64_t sub_2619D64EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9238, &qword_2619DB2A0);
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x266714AA0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2619D6760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9230, &qword_2619DB298);
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = sub_2619D9D98();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2619D69C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2619D95C8();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9220, &qword_2619DB288);
  v42 = v4;
  result = sub_2619D9CC8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2619D6D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2619D9838();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9218, &qword_2619DB280);
  v39 = v4;
  result = sub_2619D9CC8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348], MEMORY[0x277D65350]);
      result = sub_2619D9918();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2619D7120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2619D9838();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91F8, ":\a");
  v39 = v4;
  result = sub_2619D9CC8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348], MEMORY[0x277D65350]);
      result = sub_2619D9918();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2619D74FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2619D9838();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2619D6454(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2619D7E68();
      goto LABEL_7;
    }

    sub_2619D6D44(v17, a3 & 1);
    v22 = sub_2619D6454(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2619D76C8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2619D9D78();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2619D76C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2619D9838();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

unint64_t sub_2619D7780(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2619D9838();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2619D8ED0(&qword_27FEC9208, MEMORY[0x277D65348], MEMORY[0x277D65358]);
      v15 = sub_2619D9938();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_2619D7940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9238, &qword_2619DB2A0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2619D7A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9230, &qword_2619DB298);
  v2 = *v0;
  v3 = sub_2619D9CB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2619D7BE8()
{
  v1 = v0;
  v35 = sub_2619D95C8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9220, &qword_2619DB288);
  v3 = *v0;
  v4 = sub_2619D9CB8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2619D7E68()
{
  v1 = v0;
  v33 = sub_2619D9838();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9218, &qword_2619DB280);
  v3 = *v0;
  v4 = sub_2619D9CB8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2619D80E8()
{
  v1 = v0;
  v33 = sub_2619D9838();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91F8, ":\a");
  v3 = *v0;
  v4 = sub_2619D9CB8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2619D8368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2619D83A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2619D8388(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2619D8580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2619D83A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9240, &qword_2619DB2A8);
  v10 = *(sub_2619D9838() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2619D9838() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2619D8580(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9210, &unk_2619DB270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[37 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 296 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F58, &unk_2619DA600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2619D86D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9228, &qword_2619DB290);
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

uint64_t sub_2619D87DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a1;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v10)));
      v16 = *(*(a2 + 56) + v15);
      v18[0] = *(*(a2 + 48) + v15);
      v18[1] = v16;

      sub_2619D5430(&v19, v18, a3, a4);
      if (v17)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v19;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2619D893C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_2619D9838();
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2619D95E8();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v47 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v35 - v9;
  v46 = sub_2619D9648();
  v44 = *(v46 - 8);
  v10 = MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = sub_2619D9628();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v42 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v50 = sub_2619D9608();
  v19 = *(v50 - 8);
  v40 = v19;
  v20 = MEMORY[0x28223BE20](v50);
  v41 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;

  sub_2619B624C(a2, v57);
  v39 = v23;
  sub_2619D424C(a1, a2);

  sub_2619B624C(a2, v57);
  v37 = v18;
  sub_2619D44A4(a1);

  sub_2619B624C(a2, v57);
  sub_2619D4EF4(a2);
  sub_2619CE638();
  swift_beginAccess();
  memcpy(v56, a2, sizeof(v56));

  swift_getAtKeyPath();

  memcpy(v57, v56, 0x128uLL);
  sub_2619B3420(v57);
  v54 = BYTE4(v55);
  v36 = v13;
  sub_2619D9638();

  v25 = v43;
  sub_2619D514C(v24, a2);
  v26 = *a2;
  if (a2[4])
  {
    v26 = 0;
  }

  v38 = v26;

  sub_2619D9448();
  sub_2619D9828();

  (*(v19 + 16))(v41, v23, v50);
  (*(v51 + 16))(v42, v18, v52);
  v27 = v44;
  v28 = v46;
  (*(v44 + 16))(v45, v13, v46);
  v29 = v48;
  v30 = v25;
  v31 = v25;
  v32 = v49;
  (*(v48 + 16))(v47, v30, v49);
  v33 = sub_2619D9688();
  (*(v29 + 8))(v31, v32);
  (*(v27 + 8))(v36, v28);
  (*(v51 + 8))(v37, v52);
  (*(v40 + 8))(v39, v50);
  return v33;
}

uint64_t sub_2619D8ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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