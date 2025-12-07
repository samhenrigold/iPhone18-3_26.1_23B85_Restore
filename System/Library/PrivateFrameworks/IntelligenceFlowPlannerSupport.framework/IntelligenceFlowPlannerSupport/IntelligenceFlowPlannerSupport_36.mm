void sub_22C1A8078()
{
  sub_22BE19460();
  v3 = v2;
  v58 = v4;
  v69 = sub_22C272CA4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE18950(v8);
  v68 = sub_22C272224();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE190A8(v12);
  v74 = sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE2C64C();
  v76 = type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  v67 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE190A8(v26);
  v57 = v0;
  v27 = *v0;
  sub_22C274154();
  v75 = v3;
  ToolboxCustomKeyResult.hash(into:)();
  sub_22C2741A4();
  v28 = v27 + 56;
  sub_22BE26164();
  v31 = v30 & ~v29;
  if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
  {
    v72 = ~v29;
    v73 = *(v15 + 72);
    v60 = v10 + 32;
    v65 = (v10 + 8);
    v32 = (v6 + 8);
    v59 = v6 + 32;
    v70 = v19;
    v66 = v27;
    v64 = v27 + 56;
    do
    {
      v71 = v73 * v31;
      sub_22BE1AA10();
      v33 = *(v74 + 48);
      sub_22BE2BA80();
      sub_22BE1AA10();
      sub_22BE1AA10();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE22D64();
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22BE33554();
          v34 = v62;
          v35 = v69;
          v36(v62, v1 + v33, v69);
          v37 = sub_22C272C44();
          v38 = *v32;
          v19 = v70;
          (*v32)(v34, v35);
          sub_22BE257FC();
          sub_22BE1AE00(v24, v39);
          v40 = sub_22BE18240();
          v38(v40);
          if (v37)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_22BE257FC();
          sub_22BE1AE00(v1, v51);
          v28 = v64;
          goto LABEL_13;
        }

        sub_22BE257FC();
        sub_22BE1AE00(v24, v43);
        (*v32)(v19, v69);
      }

      else
      {
        sub_22BE22D64();
        v41 = v67;
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22BE33554();
          v44 = v61;
          v45 = v68;
          v46(v61, v1 + v33, v68);
          v63 = sub_22C2721B4();
          v47 = *v65;
          v48 = v44;
          v19 = v70;
          (*v65)(v48, v45);
          sub_22BE257FC();
          sub_22BE1AE00(v24, v49);
          v50 = sub_22BE3E8FC();
          v47(v50);
          if (v63)
          {
LABEL_15:
            sub_22BE1AE00(v1, type metadata accessor for ToolboxCustomKeyResult);
            sub_22BE1AE00(v75, type metadata accessor for ToolboxCustomKeyResult);
            sub_22BE22D64();
            sub_22BE1AA10();
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        sub_22BE257FC();
        sub_22BE1AE00(v24, v42);
        (*v65)(v41, v68);
      }

      sub_22BE33928(v1, &qword_27D90B4D0, &qword_22C2CB6C0);
LABEL_13:
      v31 = (v31 + 1) & v72;
    }

    while (((*(v28 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
  }

  v52 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22BE22D64();
  sub_22BE1AA10();
  v77 = *v52;
  v54 = sub_22BE38970();
  sub_22C1AAB14(v54, v55, isUniquelyReferenced_nonNull_native);
  *v52 = v77;
  sub_22BE3F300();
LABEL_16:
  sub_22BE1AABC();
}

void sub_22C1A8654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE323B4();
  sub_22BE35EB4();
  sub_22BE37940();
  sub_22C272F44();
  sub_22C2741A4();
  sub_22BE26164();
  while (1)
  {
    sub_22C1AE3A4();
    if (v16)
    {
      break;
    }

    sub_22BE3C184();
    v16 = *v15 == v13 && v15[1] == v11;
    if (!v16)
    {
      sub_22C1AE45C();
      if ((sub_22C274014() & 1) == 0)
      {
        continue;
      }
    }

    sub_22BE3C184();
    v18 = v17[1];
    *v10 = *v17;
    v10[1] = v18;

    goto LABEL_10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22C1AE3E0();
  v20 = sub_22BE232C8();
  sub_22C1AB1A8(v20, v21, v14, isUniquelyReferenced_nonNull_native);
  *v12 = a10;
  *v10 = v13;
  v10[1] = v11;
LABEL_10:
  sub_22C1AE388();
}

BOOL sub_22C1A8734(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22C274144();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_22C1AB310(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_22C1A8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE323B4();
  v12 = v11;
  v23 = v13;
  v14 = *v10;
  sub_22C274154();
  sub_22BEB8E5C();
  sub_22C2741A4();
  sub_22BE26164();
  v17 = ~v16;
  while (1)
  {
    v18 = v15 & v17;
    if (((1 << (v15 & v17)) & *(v14 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_22C1AE3E0();
      sub_22C1AB414(v22, v18, isUniquelyReferenced_nonNull_native);
      *v10 = a10;
      *v23 = v12;
      goto LABEL_7;
    }

    sub_22BEA5C9C();
    v20 = v19;

    if (v20)
    {
      break;
    }

    v15 = v18 + 1;
  }

  *v23 = *(*(v14 + 48) + 8 * v18);

LABEL_7:
  sub_22C1AE388();
}

BOOL sub_22C1A8914(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v27 = a2;
  v9 = sub_22C272ED4();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_22C1AB58C(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_22C1AE190(&qword_27D9071C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v15 = sub_22C272FD4();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_22C1A8BDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  v4 = sub_22C273A34();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_22C1A7AFC(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22C274154();
    sub_22C272F44();
    v19 = sub_22C2741A4();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1A8E38(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22C272CA4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22BE5CE4C(&qword_27D9153D0, &unk_22C2CB6A8);
  v6 = sub_22C273A34();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_22C1A7AFC(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
    v20 = sub_22C272ED4();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1A9190(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  v4 = sub_22C273A34();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v32 = v2;
  v33 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22C1A7AFC(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_22C274154();
    v34 = v17;
    sub_22C272F44();
    sub_22C272F44();
    v21 = sub_22C2741A4();
    v22 = -1 << *(v5 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v5 + 48) + 32 * v25);
    v3 = v33;
    *v30 = v34;
    v30[1] = v18;
    v30[2] = v19;
    v30[3] = v20;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1A9414(uint64_t a1)
{
  v2 = v1;
  v49 = sub_22C272CA4();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C272224();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolboxCustomKeyResult(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = *v1;
  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  v13 = sub_22C273A34();
  v14 = v13;
  if (!*(v12 + 16))
  {
LABEL_30:

    *v2 = v14;
    return;
  }

  v41 = v1;
  v15 = 0;
  v16 = (v12 + 56);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v12 + 56);
  v20 = (v17 + 63) >> 6;
  v44 = (v5 + 8);
  v45 = (v5 + 32);
  v43 = (v3 + 32);
  v42 = (v3 + 8);
  v21 = v13 + 56;
  v50 = v12;
  if (!v19)
  {
LABEL_7:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v15 >= v20)
      {
        break;
      }

      v23 = v16[v15];
      ++v22;
      if (v23)
      {
        v19 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    v40 = 1 << *(v12 + 32);
    if (v40 >= 64)
    {
      sub_22C1A7AFC(0, (v40 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v40;
    }

    v2 = v41;
    *(v12 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v19 &= v19 - 1;
LABEL_12:
    v54 = *(v52 + 72);
    sub_22BE3F300();
    sub_22C274154();
    v24 = v11;
    v25 = v51;
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v48;
      v27 = v25;
      v28 = v49;
      (*v43)(v48, v27, v49);
      MEMORY[0x2318AC860](1);
      sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
      sub_22C272EE4();
      v29 = v42;
    }

    else
    {
      v26 = v46;
      v30 = v25;
      v28 = v47;
      (*v45)(v46, v30, v47);
      MEMORY[0x2318AC860](0);
      sub_22C1AE190(&qword_27D90B508, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      sub_22C272EE4();
      v29 = v44;
    }

    (*v29)(v26, v28);
    v31 = sub_22C2741A4();
    v32 = -1 << *(v14 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    v11 = v24;
    if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v21 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    sub_22BE3F300();
    ++*(v14 + 16);
    v12 = v50;
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v21 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_22C1A99C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  v4 = sub_22C273A34();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_22C1A7AFC(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22C274154();
    sub_22C272F44();
    v19 = sub_22C2741A4();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1A9C1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  v4 = sub_22C273A34();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v26 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_22C1A7AFC(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_22C274144();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1A9E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BE323B4();
  sub_22BE22B58();
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  sub_22BE1804C();
  v34 = sub_22C273A34();
  if (!*(v31 + 16))
  {
LABEL_26:

    *v30 = v34;
    sub_22C1AE388();
    return;
  }

  v35 = 0;
  v36 = (v31 + 56);
  sub_22C1AE2D4();
  if (!v33)
  {
LABEL_4:
    v38 = v35;
    while (1)
    {
      v35 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v35 >= v32)
      {
        break;
      }

      ++v38;
      if (v36[v35])
      {
        sub_22BE29270();
        v33 = v40 & v39;
        goto LABEL_9;
      }
    }

    v51 = 1 << *(v31 + 32);
    if (v51 >= 64)
    {
      sub_22C1A7AFC(0, (v51 + 63) >> 6, v31 + 56);
    }

    else
    {
      sub_22BE26164();
      *v36 = v52;
    }

    *(v31 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    sub_22BE37764();
LABEL_9:
    v41 = (*(v31 + 48) + 16 * (v37 | (v35 << 6)));
    v43 = *v41;
    v42 = v41[1];
    sub_22C274154();
    sub_22C274174();
    if (v42)
    {
      sub_22C272F44();
    }

    sub_22C2741A4();
    sub_22BE3C0C4();
    if (v44)
    {
      break;
    }

    sub_22C1AE448();
LABEL_20:
    sub_22BE2BAD8(v45);
    *v50 = v43;
    v50[1] = v42;
    ++*(v34 + 16);
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  sub_22C1AE434();
  while (++v46 != v48 || (v47 & 1) == 0)
  {
    v49 = v46 == v48;
    if (v46 == v48)
    {
      v46 = 0;
    }

    v47 |= v49;
    if (v30[v46] != -1)
    {
      sub_22C1AE420();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

void sub_22C1A9FF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  v4 = sub_22C273A34();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = v4 + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_22C274154();
      sub_22BEB8E5C();
      sub_22C2741A4();
      v17 = sub_22C2739F4();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      sub_22C1A7AFC(0, (v18 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v18;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_22C1AA1D0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22C26E1D4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22BE5CE4C(&qword_27D9153C8, &qword_22C2CB6A0);
  v6 = sub_22C273A34();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_22C1A7AFC(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v20 = sub_22C272ED4();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_22C1AA528(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22C1A8BDC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22C1AC3D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_22C274154();
      sub_22C272F44();
      v16 = sub_22C2741A4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_22C1AB83C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_22C1AA690(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_22C272CA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A8E38(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C1AC604(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
      v14 = sub_22C272ED4();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22C1AE190(&qword_28106DED8, MEMORY[0x277D73358], MEMORY[0x277D73370]);
        v16 = sub_22C272FD4();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_22C1AC1F4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_22C1AA940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_22C1A9190(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22C1AB994();
      goto LABEL_21;
    }

    sub_22C1AC91C(v12 + 1);
  }

  v14 = *v6;
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  v15 = sub_22C2741A4();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == result && v20[1] == a2;
      if (v23 || (sub_22C274014() & 1) != 0)
      {
        v24 = v21 == a3 && v22 == a4;
        if (v24 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_24:
  sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
  sub_22C2740A4();
  __break(1u);
}

uint64_t sub_22C1AAB14(uint64_t a1, unint64_t a2, char a3)
{
  v60 = a1;
  v53 = sub_22C272CA4();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C272224();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0);
  MEMORY[0x28223BE20](v59);
  v11 = &v44 - v10;
  v61 = type metadata accessor for ToolboxCustomKeyResult(0);
  v12 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v44 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v45 = v3;
  v44 = v12;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9414(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_22C1ABAFC();
        goto LABEL_21;
      }

      sub_22C1ACB7C(v20 + 1);
    }

    v22 = *v3;
    sub_22C274154();
    ToolboxCustomKeyResult.hash(into:)();
    v23 = sub_22C2741A4();
    v57 = v22 + 56;
    v58 = v22;
    v24 = -1 << *(v22 + 32);
    a2 = v23 & ~v24;
    v25 = *(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2;
    v26 = v54;
    if (v25)
    {
      v56 = ~v24;
      v55 = *(v12 + 72);
      v47 = (v8 + 32);
      v50 = (v6 + 8);
      v51 = (v8 + 8);
      v46 = (v6 + 32);
      do
      {
        sub_22BE1AA10();
        v27 = *(v59 + 48);
        sub_22BE1AA10();
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22BE1AA10();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v28 = v49;
            v29 = v53;
            (*v46)(v49, &v11[v27], v53);
            v30 = sub_22C272C44();
            v31 = *v50;
            v32 = v28;
            v33 = v54;
            (*v50)(v32, v29);
            sub_22BE1AE00(v19, type metadata accessor for ToolboxCustomKeyResult);
            v31(v14, v29);
            if (v30)
            {
              goto LABEL_24;
            }

            v26 = v33;
LABEL_19:
            sub_22BE1AE00(v11, type metadata accessor for ToolboxCustomKeyResult);
            goto LABEL_20;
          }

          sub_22BE1AE00(v19, type metadata accessor for ToolboxCustomKeyResult);
          (*v50)(v14, v53);
        }

        else
        {
          sub_22BE1AA10();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v34 = v48;
            v35 = v52;
            (*v47)(v48, &v11[v27], v52);
            v36 = sub_22C2721B4();
            v37 = *v51;
            v38 = v34;
            v26 = v54;
            (*v51)(v38, v35);
            sub_22BE1AE00(v19, type metadata accessor for ToolboxCustomKeyResult);
            v37(v26, v35);
            if (v36)
            {
              goto LABEL_24;
            }

            goto LABEL_19;
          }

          sub_22BE1AE00(v19, type metadata accessor for ToolboxCustomKeyResult);
          (*v51)(v26, v52);
        }

        sub_22BE33928(v11, &qword_27D90B4D0, &qword_22C2CB6C0);
LABEL_20:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v39 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22BE3F300();
  v41 = *(v39 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_24:
    sub_22BE1AE00(v11, type metadata accessor for ToolboxCustomKeyResult);
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v43;
  }

  return result;
}

void sub_22C1AB1A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22C1A99C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22C1AD0F4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_22C274154();
      sub_22C272F44();
      v16 = sub_22C2741A4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_22C1ABD04();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_22C1AB310(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9C1C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_22C1AD328(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_22C274144();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_22C1ABE5C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_22C1AB414(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9FF0(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_22C1AD6A0(v6 + 1);
LABEL_8:
      v8 = *v3;
      sub_22C274154();
      sub_22BEB8E5C();
      v9 = sub_22C2741A4();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);

        sub_22BEA5C9C();
        v12 = v11;

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_22C1AC0A4();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

uint64_t sub_22C1AB58C(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_22C26E1D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1AA1D0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C1AD848(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v14 = sub_22C272ED4();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22C1AE190(&qword_27D9071C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v16 = sub_22C272FD4();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_22C1AC1F4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_22C1AB83C()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_22C1AB994()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_22C1ABAFC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolboxCustomKeyResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  v3 = *v0;
  v4 = sub_22C273A24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_22BE1AA10();
        sub_22BE3F300();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }
}

void sub_22C1ABD04()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_22C1ABE5C()
{
  v2 = v0;
  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  v3 = *v0;
  v4 = sub_22C273A24();
  if (*(v3 + 16))
  {
    sub_22C1AE35C();
    sub_22BE37B50();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + 8 * v16) = *(*(v3 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }
}

void sub_22C1ABF80()
{
  v2 = v0;
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  v3 = *v0;
  v4 = sub_22C273A24();
  if (*(v3 + 16))
  {
    sub_22C1AE35C();
    sub_22BE37B50();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    sub_22BE38654();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        *(*(v4 + 48) + 16 * (v16 | (v10 << 6))) = *(*(v3 + 48) + 16 * (v16 | (v10 << 6)));
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v1 + v10))
      {
        sub_22BE29270();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void sub_22C1AC0A4()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_22C1AC1F4()
{
  sub_22BE19460();
  v2 = v0;
  v4 = v3(0);
  sub_22BE179D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  v8 = sub_22BE18240();
  sub_22BE5CE4C(v8, v9);
  v10 = *v0;
  v11 = sub_22C273A24();
  if (v10[2])
  {
    v12 = sub_22C1AE35C();
    v14 = (v13 + 63) >> 6;
    if (v11 != v10 || v12 >= &v10[v14 + 7])
    {
      memmove(v12, v10 + 7, 8 * v14);
    }

    v16 = 0;
    *(v11 + 16) = v10[2];
    sub_22BE38654();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        sub_22BE37764();
LABEL_15:
        (*(v6 + 16))(v1, v10[6] + *(v6 + 72) * (v22 | (v16 << 6)), v4);
        sub_22BE37940();
        v26();
      }

      while (v19);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_17;
      }

      ++v23;
      if (v10[v16 + 7])
      {
        sub_22BE29270();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v11;
    sub_22BE1AABC();
  }
}

void sub_22C1AC3D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  v4 = sub_22C273A34();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_22C274154();

        sub_22C272F44();
        v18 = sub_22C2741A4();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_22C1AC604(uint64_t a1)
{
  v2 = v1;
  v34 = sub_22C272CA4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22BE5CE4C(&qword_27D9153D0, &unk_22C2CB6A8);
  v7 = sub_22C273A34();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
        v20 = sub_22C272ED4();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_22C1AC91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  v4 = sub_22C273A34();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_22C274154();

        sub_22C272F44();
        sub_22C272F44();
        v21 = sub_22C2741A4();
        v22 = -1 << *(v5 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v5 + 48) + 32 * v25);
        *v30 = v17;
        v30[1] = v18;
        v30[2] = v19;
        v30[3] = v20;
        ++*(v5 + 16);
        v3 = v32;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_22C1ACB7C(uint64_t a1)
{
  v2 = v1;
  v50 = sub_22C272CA4();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C272224();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolboxCustomKeyResult(0);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = *v1;
  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  v14 = sub_22C273A34();
  v15 = v14;
  if (*(v13 + 16))
  {
    v42 = v1;
    v16 = 0;
    v17 = v13 + 56;
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v3;
    v21 = v19 & *(v13 + 56);
    v22 = (v18 + 63) >> 6;
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v44 = (v20 + 32);
    v43 = (v20 + 8);
    v23 = v14 + 56;
    v51 = v13;
    v52 = v9;
    if (v21)
    {
      while (1)
      {
        v21 &= v21 - 1;
LABEL_12:
        v55 = *(v53 + 72);
        sub_22BE1AA10();
        sub_22C274154();
        v26 = v12;
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = v9;
          v28 = v49;
          v29 = v50;
          (*v44)(v49, v27, v50);
          MEMORY[0x2318AC860](1);
          sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
          sub_22C272EE4();
          (*v43)(v28, v29);
        }

        else
        {
          v30 = v47;
          v31 = v9;
          v32 = v48;
          (*v46)(v47, v31, v48);
          MEMORY[0x2318AC860](0);
          sub_22C1AE190(&qword_27D90B508, MEMORY[0x277D72238], MEMORY[0x277D72248]);
          sub_22C272EE4();
          (*v45)(v30, v32);
        }

        v33 = sub_22C2741A4();
        v34 = -1 << *(v15 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v9 = v52;
        v12 = v26;
        if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
        {
          break;
        }

        v37 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v23 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        sub_22BE3F300();
        ++*(v15 + 16);
        if (!v21)
        {
          goto LABEL_7;
        }
      }

      v38 = 0;
      v39 = (63 - v34) >> 6;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v23 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v24 = v16;
      while (1)
      {
        v16 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v16 >= v22)
        {

          v2 = v42;
          goto LABEL_28;
        }

        v25 = *(v17 + 8 * v16);
        ++v24;
        if (v25)
        {
          v21 = (v25 - 1) & v25;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v15;
  }
}

void sub_22C1AD0F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  v4 = sub_22C273A34();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_22C274154();
        sub_22C272F44();
        v18 = sub_22C2741A4();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v16;
        ++*(v5 + 16);

        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_22C1AD328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  v4 = sub_22C273A34();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_22C274144();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

void sub_22C1AD514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BE323B4();
  sub_22BE22B58();
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  sub_22BE1804C();
  v34 = sub_22C273A34();
  if (*(v31 + 16))
  {
    v35 = 0;
    sub_22C1AE2D4();
    if (v33)
    {
      while (1)
      {
        sub_22BE37764();
LABEL_9:
        v40 = (*(v31 + 48) + 16 * (v36 | (v35 << 6)));
        v42 = *v40;
        v41 = v40[1];
        sub_22C274154();
        sub_22C274174();
        if (v41)
        {

          sub_22C272F44();
        }

        sub_22C2741A4();
        sub_22BE3C0C4();
        if (v43)
        {
          break;
        }

        sub_22C1AE448();
LABEL_20:
        sub_22BE2BAD8(v44);
        *v49 = v42;
        v49[1] = v41;
        ++*(v34 + 16);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      sub_22C1AE434();
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        if (v30[v45] != -1)
        {
          sub_22C1AE420();
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_4:
      v37 = v35;
      while (1)
      {
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          goto LABEL_22;
        }

        ++v37;
        if (*(v31 + 56 + 8 * v35))
        {
          sub_22BE29270();
          v33 = v39 & v38;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    *v30 = v34;
    sub_22C1AE388();
  }
}

void sub_22C1AD6A0(uint64_t a1)
{
  v2 = *v1;
  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  v3 = sub_22C273A34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = v3 + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      sub_22C274154();

      sub_22BEB8E5C();
      sub_22C2741A4();
      v15 = sub_22C2739F4();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }
}

void sub_22C1AD848(uint64_t a1)
{
  v2 = v1;
  v34 = sub_22C26E1D4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22BE5CE4C(&qword_27D9153C8, &qword_22C2CB6A0);
  v7 = sub_22C273A34();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v20 = sub_22C272ED4();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

unint64_t sub_22C1ADBA0(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    a4(0);
    return sub_22BE1AA10();
  }

  __break(1u);
  return result;
}

void *sub_22C1ADC94@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t (*a4)(void)@<X5>, void *a5@<X8>, uint64_t a6@<X1>)
{
  if (a3)
  {
    (a4)(0, a6, a2);
    sub_22C1AE414();
    sub_22BE1A140();
    return sub_22BE19DC4(v8, v9, v10, v11);
  }

  else
  {
    v17 = a2;
    result = a1(a5, &v17);
    if (v6)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      sub_22C1AE414();
      sub_22BE187DC();
      return sub_22BE19DC4(v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_22C1ADD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D915378, &qword_22C2CB4E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C1ADEB0()
{
  result = qword_27D915390;
  if (!qword_27D915390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915390);
  }

  return result;
}

uint64_t sub_22C1ADF04(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_27D915398, &qword_27D9124F0, &qword_22C2B77F0, &protocol conformance descriptor for <A> [A]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1ADF58(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_28106DC48, &qword_27D9124F0, &qword_22C2B77F0, MEMORY[0x277D83980]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1ADFAC(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_27D9153A0, &qword_27D9153A8, &qword_22C2CB548, MEMORY[0x277D83FB8]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C1AE004()
{
  result = qword_27D9153B0;
  if (!qword_27D9153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9153B0);
  }

  return result;
}

_BYTE *_s17SessionStateErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C1AE144@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_22C1AE190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C1AE238@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 - 128) = v2;
  *(v3 - 112) = a2;
  *(v3 - 144) = *(*(a1 + 8) + 8);

  return sub_22C273CD4();
}

uint64_t sub_22C1AE300()
{

  return sub_22BE1AE00(v0, type metadata accessor for Expression);
}

uint64_t sub_22C1AE328()
{
  v3 = *(v1 - 120);

  return MEMORY[0x2821FC328](v3, v0);
}

uint64_t sub_22C1AE3E0()
{
}

uint64_t sub_22C1AE3FC()
{

  return sub_22BE3F300();
}

uint64_t sub_22C1AE474(uint64_t a1)
{

  return sub_22C273734();
}

uint64_t sub_22C1AE494()
{

  return sub_22BE1AA10();
}

uint64_t sub_22C1AE4B4(uint64_t a1, uint64_t a2)
{

  return sub_22C272FD4();
}

Swift::Void __swiftcall QueryDecorationResult.streamRedact()()
{
  v1 = *(type metadata accessor for QueryDecorationResult(0) + 28);

  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_22C1AE5C4(uint64_t a1, uint64_t a2)
{
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  (*(*(DecorationResult - 8) + 32))(a2, a1, DecorationResult);
  return a2;
}

uint64_t sub_22C1AE63C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v33 = sub_22BE5CE4C(&qword_27D915498, &unk_22C2CB840);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE193B0(v7, v30);
  MEMORY[0x28223BE20](v8);
  sub_22BE1C17C();
  v9 = sub_22C270944();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE486EC();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *(v11 + 16);
  v32 = v2;
  v17(v4, v2, v9, v14);
  v18 = MEMORY[0x277D1E9E8];
  v30 = sub_22C1CE8AC(&qword_27D9154A0, MEMORY[0x277D1E9E8], MEMORY[0x277D1E9F8]);
  sub_22C273984();
  sub_22BE1C0B0();
  v19 = v18;
  v20 = v33;
  sub_22C1CE8AC(v21, v19, v22);
  v31 = a2;
  v23 = sub_22C272FD4();
  v24 = *(v20 + 48);
  *v3 = (v23 & 1) == 0;
  if (v23)
  {
    sub_22BE47DF4();
    v25(&v3[v24], v16, v9);
  }

  else
  {
    (*(v11 + 8))(v16, v9);
    (v17)(&v3[v24], v31, v9);
    v26 = sub_22BE3C968();
    (v17)(v26);
    sub_22C273994();
  }

  v27 = v34;
  sub_22BEF88B8(v3, v34, &qword_27D915498, &unk_22C2CB840);
  v28 = *v27;
  (*(v11 + 32))(v35, &v27[*(v20 + 48)], v9);
  return v28;
}

BOOL sub_22C1AE8E4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_22C1AEFF4()
{
  v2 = sub_22C271394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoStructuredContextSiriRequestContext.init(context:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C1CE8AC(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
    v6 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v6;
}

uint64_t sub_22C1AF1AC()
{
  v2 = sub_22C271654();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v7 = MEMORY[0x28223BE20](v6);
  (*(v3 + 16))(v5, v0, v2, v7);
  ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)();
  if (!v1)
  {
    sub_22C1CE8AC(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
    v6 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v6;
}

char *sub_22C1AF364()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_22C271624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v12 + 16);
  v43 = v11;
  v19(v14, v2, v11, v16);
  sub_22C2715C4();
  if (v42)
  {
    v36 = v1;
    v20 = 1;
LABEL_6:
    v21 = type metadata accessor for ContextProtoCGRect(0);
    sub_22BE19DC4(v7, v20, 1, v21);
    sub_22BEF88B8(v7, v10, &qword_27D90BF90, &unk_22C294AD0);
    v35 = sub_22C271614();
    v22 = v37;
    sub_22BE3BB64(v10, v37, &qword_27D90BF90, &unk_22C294AD0);
    v34 = sub_22C2715E4();
    v33 = v23;
    v24 = sub_22C2715A4();
    v31 = v25;
    v32 = v24;
    v26 = v15[5];
    sub_22BE19DC4(&v18[v26], 1, 1, v21);
    v27 = &v18[v15[6]];
    v28 = &v18[v15[7]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v12 + 8))(v14, v43);
    sub_22BE233E8(v10, &qword_27D90BF90, &unk_22C294AD0);
    *v18 = v35 & 1;
    sub_22BE23490(v22, &v18[v26], &qword_27D90BF90, &unk_22C294AD0);
    *v27 = v34;
    v27[8] = v33 & 1;
    v29 = v31;
    *v28 = v32;
    v28[1] = v29;
    sub_22C1CE8AC(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
    v14 = sub_22C270744();
    sub_22C1CEAFC();
    return v14;
  }

  ContextProtoCGRect.init(context:)(v7, v38, v39, v40, v41);
  if (!v1)
  {
    v36 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  (*(v12 + 8))(v14, v43);
  return v14;
}

uint64_t sub_22C1AF72C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v9);
  ContextProtoCGRect.init(context:)(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, a3, a4);
  if (!v4)
  {
    sub_22C1CE8AC(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
    v9 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v9;
}

uint64_t sub_22C1AF868()
{
  v0 = sub_22C270EA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_22C270984();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContextProtoConfidence(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v21, v7, v12);
  sub_22C270964();
  v16 = v15;
  sub_22C270974();
  (*(v1 + 16))(v3, v6, v0);
  v17 = (*(v1 + 88))(v3, v0);
  if (v17 == *MEMORY[0x277D1EDD8])
  {
    v18 = 0;
LABEL_7:
    (*(v1 + 8))(v6, v0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v8 + 8))(v10, v7);
    *v14 = v16;
    v14[4] = v18;
    sub_22C1CE8AC(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
    v19 = sub_22C270744();
    sub_22C1CEAFC();
    return v19;
  }

  if (v17 == *MEMORY[0x277D1EDE8])
  {
    v18 = 1;
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277D1EDE0])
  {
    v18 = 2;
    goto LABEL_7;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1AFBA4()
{
  v1 = sub_22C271A74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1, v6);
  v9 = sub_22C271A54();
  v11 = v10;
  v12 = sub_22C271A64();
  v14 = v13;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v4, v1);
  *v8 = v9;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v14;
  sub_22C1CE8AC(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  v15 = sub_22C270744();
  sub_22C1CEAFC();
  return v15;
}

uint64_t sub_22C1AFD94()
{
  v1 = v0;
  v2 = sub_22C2709F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v7);
  sub_22C2709B4();
  v11 = v10;
  sub_22C2709C4();
  v13 = v12;
  sub_22C2709D4();
  v15 = v14;
  sub_22C2709E4();
  v17 = v16;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v5, v2);
  *v9 = v11;
  v9[4] = 0;
  *(v9 + 2) = v13;
  v9[12] = 0;
  *(v9 + 4) = v15;
  v9[20] = 0;
  *(v9 + 6) = v17;
  v9[28] = 0;
  sub_22C1CE8AC(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  v18 = sub_22C270744();
  sub_22C1CEAFC();
  return v18;
}

char *sub_22C1AFFAC()
{
  v2 = v0;
  v3 = sub_22C2709F4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_22C270E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContextProtoSurroundingText(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, v2, v7, v12);
  v23 = sub_22C270E84();
  v16 = v15;
  sub_22C270E64();
  ContextProtoBoundingBox.init(context:)();
  if (v1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v17 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE19DC4(v6, 0, 1, v17);
    v22 = v16;
    v18 = *(v11 + 20);
    sub_22BE19DC4(v14 + v18, 1, 1, v17);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v8 + 8))(v10, v7);
    v19 = v22;
    *v14 = v23;
    v14[1] = v19;
    sub_22BE23490(v6, v14 + v18, &qword_27D9092A0, &unk_22C294AC0);
    sub_22C1CE8AC(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);
    v6 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v6;
}

void TranscriptContextBidirectionalConvertibleProtocol.protoBytes()()
{
  sub_22BE19130();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE3AC88();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE289D8();
  v5(v4);
  sub_22BE1A8C4();
  swift_getAssociatedConformanceWitness();
  v6 = sub_22BE3D5BC();
  v7(v6, AssociatedTypeWitness);
  if (!v0)
  {
    swift_getAssociatedConformanceWitness();
    sub_22BE19454();
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22BE354D0();
    sub_22C270744();
    v8 = sub_22BE200D4();
    v9(v8);
  }

  sub_22BE1A8C4();
  sub_22BE18478();
}

uint64_t sub_22C1B04BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_22C2713B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_22BE3BB64(a1, v5, &qword_27D915430, &qword_22C2CB7A8);
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915430, &qword_22C2CB7A8);
    result = sub_22BE233E8(v5, &qword_27D915430, &qword_22C2CB7A8);
    v17 = 7;
LABEL_18:
    *v22 = v17;
    return result;
  }

  (*(v7 + 32))(v15, v5, v6);
  v18 = *(v7 + 16);
  v18(v12, v15, v6);
  v18(v9, v12, v6);
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == *MEMORY[0x277D1EFC8])
  {
    v17 = 0;
LABEL_17:
    sub_22BE233E8(a1, &qword_27D915430, &qword_22C2CB7A8);
    v20 = *(v7 + 8);
    v20(v12, v6);
    result = (v20)(v15, v6);
    goto LABEL_18;
  }

  if (v19 == *MEMORY[0x277D1EF98])
  {
    v17 = 1;
    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D1EFB0])
  {
    v17 = 2;
    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D1EFC0])
  {
    v17 = 3;
    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D1EFA0])
  {
    v17 = 4;
    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D1EFB8])
  {
    v17 = 5;
    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D1EFA8])
  {
    v17 = 6;
    goto LABEL_17;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0810@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_22C2713C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_22BE3BB64(a1, v5, &qword_27D915428, &qword_22C2CB7A0);
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915428, &qword_22C2CB7A0);
    result = sub_22BE233E8(v5, &qword_27D915428, &qword_22C2CB7A0);
    v17 = 4;
LABEL_12:
    *v22 = v17;
    return result;
  }

  (*(v7 + 32))(v15, v5, v6);
  v18 = *(v7 + 16);
  v18(v12, v15, v6);
  v18(v9, v12, v6);
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == *MEMORY[0x277D1EFD8])
  {
    v17 = 0;
LABEL_11:
    sub_22BE233E8(a1, &qword_27D915428, &qword_22C2CB7A0);
    v20 = *(v7 + 8);
    v20(v12, v6);
    result = (v20)(v15, v6);
    goto LABEL_12;
  }

  if (v19 == *MEMORY[0x277D1EFE0])
  {
    v17 = 1;
    goto LABEL_11;
  }

  if (v19 == *MEMORY[0x277D1EFE8])
  {
    v17 = 2;
    goto LABEL_11;
  }

  if (v19 == *MEMORY[0x277D1EFD0])
  {
    v17 = 3;
    goto LABEL_11;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_22C2713D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_22BE3BB64(a1, v5, &qword_27D915420, &qword_22C2CB798);
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915420, &qword_22C2CB798);
    result = sub_22BE233E8(v5, &qword_27D915420, &qword_22C2CB798);
    v17 = 9;
LABEL_22:
    *v22 = v17;
    return result;
  }

  (*(v7 + 32))(v15, v5, v6);
  v18 = *(v7 + 16);
  v18(v12, v15, v6);
  v18(v9, v12, v6);
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == *MEMORY[0x277D1F000])
  {
    v17 = 8;
LABEL_21:
    sub_22BE233E8(a1, &qword_27D915420, &qword_22C2CB798);
    v20 = *(v7 + 8);
    v20(v12, v6);
    result = (v20)(v15, v6);
    goto LABEL_22;
  }

  if (v19 == *MEMORY[0x277D1F010])
  {
    v17 = 0;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1F018])
  {
    v17 = 1;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1F008])
  {
    v17 = 2;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1F028])
  {
    v17 = 3;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1F030])
  {
    v17 = 4;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1F020])
  {
    v17 = 5;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1EFF0])
  {
    v17 = 6;
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x277D1EFF8])
  {
    v17 = 7;
    goto LABEL_21;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22C270EA4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v40 = type metadata accessor for ContextProtoConfidence(0);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_22C270984();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = a1;
  sub_22BE3BB64(a1, v11, &qword_27D9153F8, &unk_22C2CB750);
  if (sub_22BE1AEA8(v11, 1, v12) == 1)
  {
    sub_22BE233E8(a1, &qword_27D9153F8, &unk_22C2CB750);
    sub_22BE233E8(v11, &qword_27D9153F8, &unk_22C2CB750);
    v20 = 1;
    v22 = v40;
    v21 = v41;
    return sub_22BE19DC4(v21, v20, 1, v22);
  }

  (*(v13 + 32))(v18, v11, v12);
  (*(v13 + 16))(v15, v18, v12);
  sub_22C270964();
  v24 = v23;
  sub_22C270974();
  v26 = v36;
  v25 = v37;
  v27 = v38;
  (*(v37 + 16))(v36, v7, v38);
  v28 = (*(v25 + 88))(v26, v27);
  v29 = v27;
  v30 = v25;
  if (v28 == *MEMORY[0x277D1EDD8])
  {
    v31 = 0;
    v22 = v40;
LABEL_9:
    (*(v30 + 8))(v7, v29);
    v32 = v39;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(v19, &qword_27D9153F8, &unk_22C2CB750);
    v33 = *(v13 + 8);
    v33(v15, v12);
    v33(v18, v12);
    *v32 = v24;
    *(v32 + 4) = v31;
    v21 = v41;
    sub_22C1CEB4C(v32, v41, type metadata accessor for ContextProtoConfidence);
    v20 = 0;
    return sub_22BE19DC4(v21, v20, 1, v22);
  }

  v22 = v40;
  if (v28 == *MEMORY[0x277D1EDE8])
  {
    v31 = 1;
    goto LABEL_9;
  }

  if (v28 == *MEMORY[0x277D1EDE0])
  {
    v31 = 2;
    goto LABEL_9;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B12DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for ContextProtoContextMetadata(0);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_22C270E04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_22BE3BB64(a1, v7, &qword_27D9153F0, &unk_22C2CB740);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
    sub_22BE233E8(v7, &qword_27D9153F0, &unk_22C2CB740);
    v15 = 1;
    v16 = v27;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v17 = v29;
    ContextProtoContextMetadata.init(context:)(v11, v18, v19, v20, v21, v22, v23, v24, v26, v27, SWORD1(v27), SWORD2(v27), SBYTE6(v27), SHIBYTE(v27), v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    if (v17)
    {
      sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
      return (*(v9 + 8))(v14, v8);
    }

    sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
    (*(v9 + 8))(v14, v8);
    v16 = v27;
    sub_22C1CEB4C(v4, v27, type metadata accessor for ContextProtoContextMetadata);
    v15 = 0;
  }

  return sub_22BE19DC4(v16, v15, 1, v26);
}

uint64_t sub_22C1B15A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for ContextProtoStructuredContext(0);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_22C2716E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_22BE3BB64(a1, v7, &qword_27D915400, &unk_22C2CB760);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
    sub_22BE233E8(v7, &qword_27D915400, &unk_22C2CB760);
    v15 = 1;
    v16 = v27;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v17 = v29;
    ContextProtoStructuredContext.init(context:)(v11, v18, v19, v20, v21, v22, v23, v24, v26, v27, SBYTE4(v27), SBYTE5(v27), SBYTE6(v27), SHIBYTE(v27), v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    if (v17)
    {
      sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
      return (*(v9 + 8))(v14, v8);
    }

    sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
    (*(v9 + 8))(v14, v8);
    v16 = v27;
    sub_22C1CEB4C(v4, v27, type metadata accessor for ContextProtoStructuredContext);
    v15 = 0;
  }

  return sub_22BE19DC4(v16, v15, 1, v26);
}

uint64_t sub_22C1B186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for ContextProtoBoundingBox(0);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_22C2709F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_22BE3BB64(a1, v7, &qword_27D915418, &qword_22C2CB788);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915418, &qword_22C2CB788);
    sub_22BE233E8(v7, &qword_27D915418, &qword_22C2CB788);
    v15 = 1;
    v17 = v30;
    v16 = v31;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_22C2709B4();
    v19 = v18;
    sub_22C2709C4();
    v21 = v20;
    sub_22C2709D4();
    v23 = v22;
    sub_22C2709E4();
    v25 = v24;
    v26 = v30;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(a1, &qword_27D915418, &qword_22C2CB788);
    v27 = *(v9 + 8);
    v27(v11, v8);
    v27(v14, v8);
    *v4 = v19;
    v4[4] = 0;
    *(v4 + 2) = v21;
    v4[12] = 0;
    *(v4 + 4) = v23;
    v4[20] = 0;
    *(v4 + 6) = v25;
    v4[28] = 0;
    v28 = v31;
    sub_22C1CEB4C(v4, v31, type metadata accessor for ContextProtoBoundingBox);
    v15 = 0;
    v16 = v28;
    v17 = v26;
  }

  return sub_22BE19DC4(v16, v15, 1, v17);
}

uint64_t sub_22C1B1B74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_22C270F74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_22BE3BB64(a1, v5, &qword_27D915410, &unk_22C2CB778);
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915410, &unk_22C2CB778);
    result = sub_22BE233E8(v5, &qword_27D915410, &unk_22C2CB778);
    v17 = 6;
LABEL_16:
    *v22 = v17;
    return result;
  }

  (*(v7 + 32))(v15, v5, v6);
  v18 = *(v7 + 16);
  v18(v12, v15, v6);
  v18(v9, v12, v6);
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == *MEMORY[0x277D1EE60])
  {
    v17 = 0;
LABEL_15:
    sub_22BE233E8(a1, &qword_27D915410, &unk_22C2CB778);
    v20 = *(v7 + 8);
    v20(v12, v6);
    result = (v20)(v15, v6);
    goto LABEL_16;
  }

  if (v19 == *MEMORY[0x277D1EE48])
  {
    v17 = 1;
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x277D1EE58])
  {
    v17 = 5;
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x277D1EE38])
  {
    v17 = 2;
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x277D1EE40])
  {
    v17 = 3;
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x277D1EE50])
  {
    v17 = 4;
    goto LABEL_15;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B1EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  MEMORY[0x28223BE20](v30);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_22C271A74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = a1;
  sub_22BE3BB64(a1, v7, &qword_27D915408, &qword_22C2CB770);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915408, &qword_22C2CB770);
    sub_22BE233E8(v7, &qword_27D915408, &qword_22C2CB770);
    v16 = 1;
    v17 = v29;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v18 = sub_22C271A54();
    v27 = v19;
    v28 = v18;
    v20 = sub_22C271A64();
    v22 = v21;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(v15, &qword_27D915408, &qword_22C2CB770);
    v23 = *(v9 + 8);
    v23(v11, v8);
    v23(v14, v8);
    v24 = v27;
    *v4 = v28;
    v4[1] = v24;
    v4[2] = v20;
    v4[3] = v22;
    v25 = v29;
    sub_22C1CEB4C(v4, v29, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
    v16 = 0;
    v17 = v25;
  }

  return sub_22BE19DC4(v17, v16, 1, v30);
}

uint64_t sub_22C1B2184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v12 = a2;
    v13 = 1;
  }

  else
  {
    result = ContextProtoCGRect.init(context:)(v11, v5, v6, v7, v8);
    if (v2)
    {
      return result;
    }

    sub_22C1CEB4C(v11, a2, type metadata accessor for ContextProtoCGRect);
    v12 = a2;
    v13 = 0;
  }

  return sub_22BE19DC4(v12, v13, 1, v9);
}

void sub_22C1B2294()
{
  sub_22BE19130();
  v4 = v3;
  v41 = v5;
  v40 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE19338();
  v7 = sub_22BE1A8C4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE3A208();
  v11 = sub_22C271394();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v13);
  sub_22BE1C17C();
  v14 = sub_22BE22DF4();
  sub_22BE3BB64(v14, v15, &qword_27D9120B0, &qword_22C2B5F00);
  v16 = sub_22BE3C598();
  sub_22BE1AB5C(v16, v17, v11);
  if (v18)
  {
    v19 = sub_22BE431C0();
    sub_22BE233E8(v19, v20, &qword_22C2B5F00);
    sub_22BE233E8(v2, &qword_27D9120B0, &qword_22C2B5F00);
    v21 = 1;
    v22 = v41;
LABEL_7:
    sub_22BE19DC4(v22, v21, 1, v40);
    goto LABEL_8;
  }

  v23 = sub_22BE289D8();
  v24(v23);
  v25 = sub_22BE37B20();
  v26(v25);
  v27 = sub_22BE37D44();
  ContextProtoStructuredContextSiriRequestContext.init(context:)(v27, v28, v29, v30, v31, v32, v33, v34, v40, v41);
  if (!v0)
  {
    sub_22BE233E8(v4, &qword_27D9120B0, &qword_22C2B5F00);
    v37 = sub_22BE196A8();
    v38(v37);
    sub_22BE3C190();
    v22 = v42;
    sub_22C1CEB4C(v1, v42, v39);
    v21 = 0;
    goto LABEL_7;
  }

  sub_22BE233E8(v4, &qword_27D9120B0, &qword_22C2B5F00);
  v35 = sub_22BE196A8();
  v36(v35);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void ConvertibleFromContextProtocol.init(context:)()
{
  sub_22BE19130();
  v4 = v3;
  v37 = v5;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE3BF90(v7);
  v35 = v8;
  v38 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_22C273844();
  sub_22BE179D8();
  v13 = v12;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  MEMORY[0x28223BE20](v15);
  sub_22BE18928();
  MEMORY[0x28223BE20](v16);
  sub_22BE181E4();
  sub_22C116380();
  v17(v0, v4, v11);
  v18 = sub_22BE391E8();
  sub_22BE1AB5C(v18, v19, AssociatedTypeWitness);
  if (v20)
  {
    v21 = *(v13 + 8);
    v22 = sub_22BE261AC();
    v21(v22);
    (v21)(v0, v11);
    v23 = 1;
    v24 = v37;
    v28 = v38;
LABEL_7:
    sub_22BE19DC4(v24, v23, 1, v28);
    goto LABEL_8;
  }

  v33 = v4;
  v25 = sub_22BE200D4();
  v26(v25);
  sub_22C1CF23C();
  sub_22BE358FC();
  v27();
  v28 = v38;
  (*(v35 + 16))(v2, v38);
  if (!v1)
  {
    (*(v13 + 8))(v33, v11);
    v31 = sub_22BE22DF4();
    v32(v31);
    v24 = v37;
    (*(v34 + 32))(v37, v36, v38);
    v23 = 0;
    goto LABEL_7;
  }

  (*(v13 + 8))(v33, v11);
  v29 = sub_22BE22DF4();
  v30(v29);
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1B27C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoRetrievedContext(v14);
  v16 = sub_22BE17A18(v15);
  v100 = v17;
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v18, v87);
  MEMORY[0x28223BE20](v19);
  sub_22BE22D7C(v20, v21, v22, v23, v24, v25, v26, v27, v88);
  sub_22C270F24();
  sub_22BE179D8();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v31);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v32);
  sub_22BE23730(v33, v34, v35, v36, v37, v38, v39, v40, v89);
  MEMORY[0x28223BE20](v41);
  sub_22BE26800();
  v42 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70334(v43, v44, v45);
  sub_22BE3E47C();
  if (v42)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v46)
      {
        break;
      }

      sub_22BE39418();
      if (v65)
      {
        goto LABEL_22;
      }

      v47 = sub_22BE25BB8();
      v29(v47);
      v48 = sub_22C1CEC40();
      v29(v48);
      v49 = sub_22BE23360();
      ContextProtoRetrievedContext.init(context:)(v49, v50, v51, v52, v53, v54, v55, v56, v90, v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
      if (v11)
      {
LABEL_17:

        v85 = sub_22BE203E8();
        v86(v85);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v57 = sub_22BE2902C();
      v58(v57);
      sub_22BE1B698();
      if (v65)
      {
        sub_22BE3D1E4(v59);
        sub_22C1CF178();
        sub_22BE70334(v62, v63, v64);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22C1CED8C();
      sub_22C1CEB4C(v102, v60, v61);
      sub_22BE323D0();
      v29 = v91;
      if (v46)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v46)
      {

        goto LABEL_19;
      }

      if (v65)
      {
        break;
      }

      v66 = sub_22BE1A084();
      v12(v66);
      v67 = sub_22C1CEC40();
      v12(v67);
      v68 = sub_22C1CF124();
      ContextProtoRetrievedContext.init(context:)(v68, v69, v70, v71, v72, v73, v74, v75, v90, v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
      if (v11)
      {
        goto LABEL_17;
      }

      v76 = sub_22BE203E8();
      v77(v76);
      sub_22C1CEC50();
      if (v65)
      {
        v82 = sub_22BE19808(v78);
        sub_22BE70334(v82, v83, v84);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22C1CED8C();
      sub_22C1CEB4C(v79, v80, v81);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1B2A8C(uint64_t a1)
{
  v86 = sub_22C2709F4();
  v2 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v70[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v70[-v5];
  v7 = type metadata accessor for ContextProtoSurroundingText(0);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v89 = &v70[-v11];
  v83 = sub_22C270E94();
  v12 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v82 = &v70[-v15];
  MEMORY[0x28223BE20](v16);
  v79 = &v70[-v17];
  v18 = *(a1 + 16);
  v92 = MEMORY[0x277D84F90];
  sub_22BE70544(0, v18, 0);
  v19 = v92;
  v80 = a1;
  v90 = v12;
  v71 = v2;
  if (v18)
  {
    v20 = 0;
    v21 = *(a1 + 16);
    v76 = (a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v77 = v21;
    v74 = v12 + 2;
    v73 = (v2 + 8);
    v72 = v12 + 1;
    v75 = v18;
    while (v77 != v20)
    {
      v22 = v76 + v12[9] * v20;
      v91 = v19;
      v23 = v12[2];
      v24 = v82;
      v25 = v83;
      v23(v82, v22, v83);
      v26 = v78;
      v23(v78, v24, v25);
      v27 = sub_22C270E84();
      v87 = v28;
      v88 = v27;
      v29 = v81;
      sub_22C270E64();
      sub_22C2709B4();
      v31 = v30;
      sub_22C2709C4();
      v33 = v32;
      sub_22C2709D4();
      v35 = v34;
      sub_22C2709E4();
      v37 = v36;
      v38 = type metadata accessor for ContextProtoBoundingBox(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*v73)(v29, v86);
      *v6 = v31;
      v6[4] = 0;
      *(v6 + 2) = v33;
      v6[12] = 0;
      *(v6 + 4) = v35;
      v6[20] = 0;
      *(v6 + 6) = v37;
      v6[28] = 0;
      sub_22BE19DC4(v6, 0, 1, v38);
      v39 = *(v85 + 20);
      sub_22BE19DC4(v9 + v39, 1, 1, v38);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v40 = v90[1];
      v40(v26, v25);
      v40(v24, v25);
      v19 = v91;
      v41 = v87;
      *v9 = v88;
      v9[1] = v41;
      sub_22BE23490(v6, v9 + v39, &qword_27D9092A0, &unk_22C294AC0);
      v92 = v19;
      v43 = *(v19 + 16);
      v42 = *(v19 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22BE70544(v42 > 1, v43 + 1, 1);
        v19 = v92;
      }

      ++v20;
      *(v19 + 16) = v43 + 1;
      sub_22C1CEB4C(v9, v19 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v43, type metadata accessor for ContextProtoSurroundingText);
      v18 = v75;
      v12 = v90;
      if (v75 == v20)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v78 = v12 + 2;
    v76 = v12 + 1;
    v77 = (v71 + 8);
    v44 = v79;
    while (1)
    {
      v45 = *(v80 + 16);
      if (v18 == v45)
      {

        return;
      }

      if (v18 >= v45)
      {
        break;
      }

      v46 = v90;
      v47 = v80 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v90[9] * v18;
      v91 = v19;
      v48 = v90[2];
      v49 = v83;
      v48(v44, v47, v83);
      v50 = v18;
      v51 = v82;
      v48(v82, v44, v49);
      v52 = sub_22C270E84();
      v87 = v53;
      v88 = v52;
      v54 = v81;
      sub_22C270E64();
      sub_22C2709B4();
      v56 = v55;
      sub_22C2709C4();
      v58 = v57;
      sub_22C2709D4();
      v60 = v59;
      sub_22C2709E4();
      v62 = v61;
      v63 = type metadata accessor for ContextProtoBoundingBox(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*v77)(v54, v86);
      *v6 = v56;
      v6[4] = 0;
      *(v6 + 2) = v58;
      v6[12] = 0;
      *(v6 + 4) = v60;
      v6[20] = 0;
      *(v6 + 6) = v62;
      v6[28] = 0;
      sub_22BE19DC4(v6, 0, 1, v63);
      v64 = *(v85 + 20);
      sub_22BE19DC4(v89 + v64, 1, 1, v63);
      v65 = v89;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v66 = v46[1];
      v66(v51, v49);
      v66(v44, v49);
      v19 = v91;
      v67 = v87;
      *v65 = v88;
      v65[1] = v67;
      sub_22BE23490(v6, v65 + v64, &qword_27D9092A0, &unk_22C294AC0);
      v92 = v19;
      v69 = *(v19 + 16);
      v68 = *(v19 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22BE70544(v68 > 1, v69 + 1, 1);
        v19 = v92;
      }

      *(v19 + 16) = v69 + 1;
      sub_22C1CEB4C(v65, v19 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v69, type metadata accessor for ContextProtoSurroundingText);
      v18 = v50 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t Array<A>.init<A>(context:)(uint64_t a1, uint64_t a2)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v2)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
  }

  sub_22BE1BC24();
  v4 = sub_22BE18944();
  v5(v4);
  return a2;
}

uint64_t sub_22C1B3338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a5 + 16))(v15, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void Set<>.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v4)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C2736A4();
  }
}

uint64_t sub_22C1B35D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1, v12);
  result = (*(a4 + 16))(v14, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t Dictionary<>.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_22C272EB4();

  return v5;
}

uint64_t sub_22C1B37E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, v10);
  return (*(a6 + 16))(v12, a4, a6);
}

uint64_t ContextConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

void RetrievedContext.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v27 = v26;
  v57 = v28;
  v29 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  sub_22BE38A28(v31);
  v32 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  sub_22BE183BC();
  sub_22C270A04();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v35 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE3BF90(v37);
  v38 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  v40 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E64();
  v42 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v42);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1B72C();
  v44 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v44);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE23E58();
  v46 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  sub_22BE19448(v46);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A8B4();
  v48 = type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE3BB64(v27 + v48[9], v25, &qword_27D90BF50, &unk_22C2B5ED0);

  sub_22C0FF19C();
  if (v23)
  {
    sub_22BE259EC();
  }

  else
  {
    sub_22BE3BB64(v27 + v48[8], v24, &qword_27D909128, &qword_22C294AA0);
    sub_22C0FC7A8(v24, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    sub_22BE3BB64(v27 + v48[6], v59, &qword_27D90BF70, &qword_22C290DC0);
    sub_22C0FF370();
    ContextType.init(transcript:)();
    sub_22BE3BB64(v27 + v48[7], v58, &qword_27D90BF60, &unk_22C294AB0);
    sub_22C0FF574();
    sub_22C270EC4();
    sub_22BE259EC();
  }

  sub_22BE18478();
}

uint64_t ContextType.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C270A04();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoRetrievedContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v31 = v30;
  v108 = v32;
  v33 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v109 = v35;
  v36 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v113 = v38;
  v39 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  sub_22BE19448(v39);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  sub_22BE3BF90(v41);
  v42 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v42);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A8B4();
  v44 = sub_22C270A04();
  v45 = sub_22BE19448(v44);
  MEMORY[0x28223BE20](v45);
  sub_22BE179EC();
  v46 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v46);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE234F4();
  v48 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v48);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1B72C();
  v50 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v51 = sub_22BE19448(v50);
  MEMORY[0x28223BE20](v51);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v52);
  sub_22BE32374();
  v53 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v54 = sub_22BE19448(v53);
  MEMORY[0x28223BE20](v54);
  sub_22BE183AC();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  sub_22BE181E4();
  sub_22C270EE4();
  sub_22C105684(v29, v59, v60, v61, v62, v63, v64, v65, v101, v103);
  if (v24)
  {
    sub_22C270F24();
    sub_22BE18524();
    (*(v66 + 8))(v31);
  }

  else
  {
    v114 = v57;
    v107 = v25;
    sub_22C270F14();
    sub_22C1B0E9C(v27, v23);
    sub_22C270EF4();
    ContextProtoContextType.init(context:)();
    sub_22C270F04();
    sub_22C1B12DC(v111, v28);
    sub_22C270EE4();
    sub_22C105684(v26, v67, v68, v69, v70, v71, v72, v73, v102, v104);
    sub_22C270EB4();
    sub_22C1B15A4(v109, v113);
    v106 = sub_22C270ED4();
    v112 = v74;
    v75 = type metadata accessor for ContextProtoRetrievedContext(0);
    v105 = v75[5];
    v110 = v28;
    v76 = sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v77, v78, v79, v76);
    v80 = v75[6];
    type metadata accessor for ContextProtoConfidence(0);
    sub_22BE1A140();
    sub_22BE19DC4(v81, v82, v83, v84);
    v85 = v75[7];
    type metadata accessor for ContextProtoContextMetadata(0);
    sub_22BE1A140();
    sub_22BE19DC4(v86, v87, v88, v89);
    v90 = v75[8];
    sub_22BE1A140();
    sub_22BE19DC4(v91, v92, v93, v76);
    v94 = v75[9];
    type metadata accessor for ContextProtoStructuredContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v95, v96, v97, v98);
    v99 = &v108[v75[10]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270F24();
    sub_22BE18524();
    (*(v100 + 8))(v31);
    sub_22BE23490(v107, &v108[v105], &qword_27D909128, &qword_22C294AA0);
    sub_22BE23490(v23, &v108[v80], &qword_27D90BF70, &qword_22C290DC0);
    *v108 = a13;
    sub_22BE23490(v110, &v108[v85], &qword_27D90BF60, &unk_22C294AB0);
    sub_22BE23490(v114, &v108[v90], &qword_27D909128, &qword_22C294AA0);
    sub_22BE23490(v113, &v108[v94], &qword_27D90BF50, &unk_22C2B5ED0);
    *v99 = v106;
    v99[1] = v112;
  }

  sub_22BE18478();
}

void ContextProtoContextType.init(context:)()
{
  sub_22BE4111C();
  sub_22C270A04();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1EAB8] || v6 == *MEMORY[0x277D1EA58] || v6 == *MEMORY[0x277D1EA78] || v6 == *MEMORY[0x277D1EA90] || v6 == *MEMORY[0x277D1EA60] || v6 == *MEMORY[0x277D1EB10] || v6 == *MEMORY[0x277D1EA98] || v6 == *MEMORY[0x277D1EAA8] || v6 == *MEMORY[0x277D1EAB0] || v6 == *MEMORY[0x277D1EB38] || v6 == *MEMORY[0x277D1EB28] || v6 == *MEMORY[0x277D1EB48] || v6 == *MEMORY[0x277D1EB00] || v6 == *MEMORY[0x277D1EB18] || v6 == *MEMORY[0x277D1EB40] || v6 == *MEMORY[0x277D1EA68] || v6 == *MEMORY[0x277D1EA80] || v6 == *MEMORY[0x277D1EAA0] || v6 == *MEMORY[0x277D1EA88] || v6 == *MEMORY[0x277D1EAD8] || v6 == *MEMORY[0x277D1EA50] || v6 == *MEMORY[0x277D1EAD0] || v6 == *MEMORY[0x277D1EB50] || v6 == *MEMORY[0x277D1EB20] || v6 == *MEMORY[0x277D1EB08] || v6 == *MEMORY[0x277D1EAF8] || v6 == *MEMORY[0x277D1EB30] || v6 == *MEMORY[0x277D1EAE0] || v6 == *MEMORY[0x277D1EAE8] || v6 == *MEMORY[0x277D1EAC0] || v6 == *MEMORY[0x277D1EAC8] || v6 == *MEMORY[0x277D1EA70] || v6 == *MEMORY[0x277D1EAF0])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ContextMetadata.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v47 = v4;
  v5 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2BC40(v8, v9, v10, v11, v12, v13, v14, v15, v45);
  v16 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v18 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v20 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  sub_22BEC07BC(v22);
  v23 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v26 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v26);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE2C64C();
  v28 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE25CD0();
  v30 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE3BB64(v3 + v30[7], v1, &qword_27D90BF70, &qword_22C290DC0);

  sub_22BE37D44();
  sub_22C0FF370();
  if (v0)
  {
    sub_22C1CEBA4();
  }

  else
  {
    sub_22C2709F4();
    sub_22BE1A140();
    sub_22BE19DC4(v31, v32, v33, v34);

    sub_22C0FA9F4();
    sub_22BE3BB64(v30[8], v49, &qword_27D9092A0, &unk_22C294AC0);
    sub_22C1CF27C();
    sub_22C0FF748();
    sub_22C270F74();
    sub_22BE1A140();
    sub_22C18F17C(v35, v36, v37, v38);
    sub_22C271A74();
    sub_22BE1A140();
    sub_22BE19DC4(v39, v40, v41, v42);

    sub_22BE3974C();
    sub_22C270DC4();

    sub_22C270D24();
    v43 = *(v3 + v30[20]);

    sub_22C270D74();
    sub_22BE3BB64(v3 + v30[17], v48, &qword_27D90BF90, &unk_22C294AD0);
    sub_22BE3E778();
    sub_22C0FF9D0();
    if (v43)
    {
      sub_22C1CEBA4();
      sub_22C270E04();
      sub_22BE18524();
      (*(v44 + 8))(v47);
    }

    else
    {
      sub_22C270CC4();
      sub_22BE3BB64(v3 + v30[18], v46, &qword_27D90BF90, &unk_22C294AD0);
      sub_22BE3E778();
      sub_22C0FF9D0();
      sub_22C270DA4();
      sub_22C270D04();
      sub_22C1CEBA4();
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

void ContextProtoContextMetadata.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  a23 = v29;
  a24 = v30;
  v32 = v31;
  v137 = v33;
  v34 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v148 = v37;
  v38 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  v139 = v40;
  v41 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  sub_22BE19448(v41);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v141 = v43;
  v44 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  sub_22BE19448(v44);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BEC07BC(v46);
  v47 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  v48 = sub_22BE19448(v47);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  v144 = v49;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v50);
  sub_22C1CEC74(v51, v52, v53, v54, v55, v56, v57, v58, v123);
  v59 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v60 = sub_22BE19448(v59);
  MEMORY[0x28223BE20](v60);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v61);
  sub_22BE25A90();
  v62 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v62);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v63);
  sub_22BE234F4();
  v64 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v65);
  sub_22BE23E58();
  v66 = sub_22C270DD4();
  v68 = v67;
  sub_22C270CD4();
  sub_22C270DE4();
  sub_22C1B0E9C(v26, v28);
  if (v24)
  {
    sub_22C270E04();
    sub_22BE18524();
    (*(v69 + 8))(v32);
  }

  else
  {
    v149 = v68;
    v70 = sub_22C270D54();
    sub_22C1B2A8C(v70);
    sub_22C270D34();
    sub_22C1B186C(v146, v25);
    v147 = v25;
    sub_22C270D84();
    a10 = v71;
    v72 = sub_22C270DB4();
    sub_22C1CF270(v72);
    v74 = v73;
    v75 = sub_22C270CA4();
    v76 = sub_22C270DF4();
    sub_22C270CE4();
    sub_22C1B186C(v144, v27);
    v134 = v76;
    v145 = v74;
    sub_22C270C94();
    sub_22C1B1B74(v142, &a14);
    v77 = a14;
    sub_22C270D44();
    sub_22C1B1EAC(v139, v141);
    v143 = v77;
    sub_22C270D14();
    sub_22C270CB4();
    sub_22C1B2184(&v150, v148);
    sub_22C270D94();
    sub_22C1B2184(&v151, v138);
    v131 = v75 & 1;
    v130 = v134 & 1;
    v140 = sub_22C270CF4();
    v135 = v78;
    v133 = sub_22C270D64();
    v132 = v79;
    v80 = type metadata accessor for ContextProtoContextMetadata(0);
    type metadata accessor for ContextProtoConfidence(0);
    sub_22BE1A140();
    sub_22BE19DC4(v81, v82, v83, v84);
    v85 = v80[8];
    v86 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE1A140();
    sub_22BE19DC4(v87, v88, v89, v86);
    v125 = v137 + v80[9];
    v127 = (v137 + v80[10]);
    v129 = v80[11];
    v128 = v80[12];
    sub_22BE1A140();
    sub_22BE19DC4(v90, v91, v92, v86);
    v126 = v80[14];
    *(v137 + v126) = 6;
    type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    sub_22BE1A140();
    sub_22BE19DC4(v93, v94, v95, v96);
    v97 = v80[17];
    v98 = type metadata accessor for ContextProtoCGRect(0);
    sub_22BE1A140();
    sub_22BE19DC4(v99, v100, v101, v98);
    sub_22BE1A140();
    sub_22BE19DC4(v102, v103, v104, v98);
    v105 = v137 + v80[19];
    v124 = v27;
    v106 = (v137 + v80[20]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270E04();
    sub_22BE18524();
    (*(v107 + 8))(v32);
    v137[1] = v66;
    v137[2] = v149;
    sub_22C1CF148();
    v137[3] = v109;
    v137[4] = v108;
    sub_22BE33BC4();
    sub_22BE23490(v28, v110, v111, v112);
    sub_22C1CF2AC();
    *v137 = v113;
    sub_22C1CF344(v147, v137 + v85);
    sub_22BE2BCA8();
    *v125 = v114;
    v125[8] = a10 & 1;
    *v127 = v136;
    v127[1] = v145;
    *(v137 + v129) = v131;
    *(v137 + v128) = v130;
    sub_22BE33BC4();
    sub_22C1CF344(v124, v115);
    *(v137 + v126) = v143;
    sub_22BE33BC4();
    sub_22BE23490(v141, v116, v117, v118);
    sub_22C1CF130();
    *v120 = v121;
    v120[1] = v119;
    sub_22BE23490(v148, v137 + v97, &qword_27D90BF90, &unk_22C294AD0);
    sub_22BE33BC4();
    sub_22BE23490(v138, v122, &qword_27D90BF90, &unk_22C294AD0);
    *v105 = v140;
    v105[8] = v135 & 1;
    *v106 = v133;
    v106[1] = v132;
  }

  sub_22BE18478();
}

uint64_t StructuredContext.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v6 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v127 = v8;
  v9 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  sub_22BEC07BC(v11);
  v12 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v135 = v14;
  sub_22BE183BC();
  v15 = sub_22C2714B4();
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v125 = v17;
  v18 = sub_22BE183BC();
  v19 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v137 = v21;
  sub_22BE183BC();
  v22 = sub_22C271514();
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v133 = v24;
  v25 = sub_22BE183BC();
  v26 = type metadata accessor for ContextProtoStructedContextAppContext(v25);
  v27 = sub_22BE19448(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v132 = v28;
  v29 = sub_22BE183BC();
  v30 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v29);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v126 = v32;
  sub_22BE183BC();
  v33 = sub_22C271654();
  v34 = sub_22BE19448(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v124 = v35;
  v36 = sub_22BE183BC();
  v37 = type metadata accessor for ContextProtoCGRect(v36);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v131 = v39;
  sub_22BE183BC();
  v40 = sub_22C2716B4();
  v41 = sub_22BE19448(v40);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v123 = v42;
  v43 = sub_22BE183BC();
  v130 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v43);
  sub_22BE18000();
  MEMORY[0x28223BE20](v44);
  sub_22BE17A44();
  v134 = v45;
  sub_22BE183BC();
  v46 = sub_22C271034();
  v47 = sub_22BE19448(v46);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  v129 = v48;
  v49 = sub_22BE183BC();
  v50 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(v49);
  v51 = sub_22BE19448(v50);
  MEMORY[0x28223BE20](v51);
  sub_22BE179EC();
  v54 = v53 - v52;
  v55 = sub_22C271594();
  v56 = sub_22BE19448(v55);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  v128 = v57;
  v58 = sub_22BE183BC();
  v59 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(v58);
  v60 = sub_22BE19448(v59);
  MEMORY[0x28223BE20](v60);
  sub_22BE179EC();
  v63 = v62 - v61;
  v64 = sub_22C271394();
  v65 = sub_22BE19448(v64);
  MEMORY[0x28223BE20](v65);
  sub_22BE19338();
  v66 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v67 = sub_22BE19448(v66);
  MEMORY[0x28223BE20](v67);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v68);
  sub_22BE181E4();
  v69 = sub_22BE33B3C();
  v71 = sub_22BE5CE4C(v69, v70);
  v72 = sub_22BE19448(v71);
  MEMORY[0x28223BE20](v72);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v73);
  v75 = v119 - v74;
  sub_22BE3BB64(a1, v119 - v74, &qword_27D90BFE0, &qword_22C2CB7B0);
  v76 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v77 = sub_22BE3C598();
  sub_22BE1AB5C(v77, v78, v76);
  if (v79)
  {
    v80 = sub_22C1B64BC();
    sub_22BE196B4(&type metadata for ContextConversion.Error, v80);
    *v81 = 0;
    swift_willThrow();
    sub_22BE18FA4();
LABEL_4:
    sub_22C1CEAFC();
  }

  else
  {
    v122 = a1;
    v82 = sub_22BE3C968();
    sub_22BE3BB64(v82, v83, v84, v85);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v87 = v137;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v100 = sub_22BE19454();
        sub_22C1CEB4C(v100, v101, v102);
        v137 = *(v63 + 48);
        v134 = v75;

        sub_22BE33FCC();
        v75 = v134;
        sub_22C271524();
        sub_22C271734();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 2:
        v93 = sub_22BE19EBC();
        sub_22C1CEB4C(v93, v54, v94);

        sub_22BE354D0();
        sub_22C271004();
        sub_22C2716F4();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE379D8();
        goto LABEL_4;
      case 3:
        v95 = sub_22BE19EBC();
        v96 = v134;
        sub_22C1CEB4C(v95, v134, v97);
        v98 = v130;

        v99 = v138;
        sub_22C10479C();
        if (v99)
        {
        }

        else
        {
          CGRect.init(transcript:)();
          v116 = v96 + *(v98 + 28);
          v138 = *v116;
          v117 = *(v116 + 8);
          sub_22C10488C();
          LODWORD(v137) = v117;
          StructuredContext.UIMetadata.init(transcript:)();
          sub_22C1CF2D8();
          sub_22C271694();
          sub_22C271744();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 4:
        v91 = sub_22BE19EBC();
        sub_22C1CEB4C(v91, v132, v92);

        sub_22BE354D0();
        sub_22C2714D4();
        sub_22C271724();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 5:
        v134 = v75;
        v103 = sub_22BE19EBC();
        sub_22C1CEB4C(v103, v87, v104);
        v105 = *v87;
        v106 = *(v87 + 8);
        v107 = *(v87 + 24);
        v132 = *(v87 + 16);
        v133 = v105;
        v130 = v106;
        v131 = v107;
        v108 = *(v87 + 40);
        v129 = *(v87 + 32);
        v109 = *(v87 + 48);
        v110 = *(v87 + 56);
        v111 = *(v87 + 64);
        v112 = *(v87 + 72);
        v113 = *(v87 + 80);
        v114 = *(v87 + 88);
        v115 = v138;
        sub_22C0FEBA0();
        if (!v115)
        {
          v120 = v114;
          v121 = v113;
          LODWORD(v123) = v112;
          v124 = v111;
          LODWORD(v126) = v110;
          v128 = v109;
          v138 = v108;
          sub_22C0FECD0();
          sub_22C0FEDDC();
          sub_22C1CEFB0(*(v87 + 96));
          v119[1] = *(v87 + 112);
          sub_22BE41EA0(*(v87 + 128));
          sub_22C1CEFD4(*(v87 + 144));

          sub_22BE2BCA8();
          sub_22BE3974C();
          sub_22C1CF2AC();
          sub_22C2713E4();
          sub_22C271714();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE29160();
        sub_22C1CEAFC();
        v75 = v134;
        break;
      default:
        sub_22BE3C190();
        v88 = sub_22BE3CC34();
        sub_22C1CEB4C(v88, v89, v90);
        sub_22C1CEAA4(v3, v4, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
        sub_22BE37D44();
        StructuredContext.SiriRequestContext.init(transcript:)();
        if (!v2)
        {
          sub_22C271704();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE268E8();
        goto LABEL_4;
    }
  }

  return sub_22BE233E8(v75, &qword_27D90BFE0, &qword_22C2CB7B0);
}

unint64_t sub_22C1B64BC()
{
  result = qword_27D915438;
  if (!qword_27D915438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915438);
  }

  return result;
}

void StructuredContext.SiriRequestContext.init(transcript:)()
{
  sub_22BE19130();
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D915440, &qword_22C2CB7B8);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v8 = sub_22BE18950(v7);
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v8);
  v10 = sub_22BE17A18(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v152 = v11;
  sub_22BE183BC();
  v151 = sub_22C2712D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE190A8(v13);
  v14 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v16);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v17);
  sub_22BE41674();
  MEMORY[0x28223BE20](v18);
  sub_22C1CECC4(v19, v20, v21, v22, v23, v24, v25, v26, v117);
  MEMORY[0x28223BE20](v27);
  sub_22BE19490();
  v149 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  v148 = v30;
  v31 = sub_22BE5CE4C(&qword_27D915448, &unk_22C2CB7C8);
  sub_22BE19448(v31);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  sub_22BE190A8(v33);
  v34 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  sub_22BE190A8(v39);
  v40 = sub_22BE5CE4C(&qword_27D915450, &qword_22C2CB7D8);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  sub_22BE190A8(v42);
  v43 = sub_22BE5CE4C(&qword_27D915458, &unk_22C2CB7E0);
  sub_22BE19448(v43);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  v45 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  v46 = sub_22BE19448(v45);
  MEMORY[0x28223BE20](v46);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v47);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v48);
  sub_22BE25A90();
  v49 = sub_22BE5CE4C(&qword_27D915460, &unk_22C2CB7F0);
  sub_22BE19448(v49);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  sub_22BE190A8(v51);
  v52 = *(v4 + 24);
  v134 = *(v4 + 16);
  v133 = *(v4 + 32);
  v147 = *(v4 + 40);
  v53 = *(v4 + 56);
  v132 = *(v4 + 48);
  v54 = *(v4 + 72);
  v131 = *(v4 + 64);
  v130 = *(v4 + 80);
  v129 = *(v4 + 81);
  v128 = *(v4 + 82);
  v127 = *(v4 + 83);
  v126 = *(v4 + 84);
  v55 = *v4;
  v56 = *(v4 + 8);
  v143 = v4;
  v144 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v57 = v144[15];
  sub_22BE3BB64(v4 + v57, v2, &qword_27D90C020, &qword_22C290DF8);
  v58 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v59 = sub_22BE2BA98();
  sub_22BE1AB5C(v59, v60, v58);
  v141 = v53;
  v142 = v52;
  v145 = v55;
  v146 = v56;
  if (v61)
  {

    sub_22BE233E8(v2, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {

    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  sub_22BE3BB64(v143 + v57, v0, &qword_27D90C020, &qword_22C290DF8);
  sub_22BE1AB5C(v0, 1, v58);
  if (v61)
  {
    sub_22BE233E8(v0, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {
    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  sub_22BE3BB64(v143 + v57, v157, &qword_27D90C020, &qword_22C290DF8);
  v62 = sub_22BE391E8();
  sub_22BE1AB5C(v62, v63, v58);
  if (v61)
  {
    sub_22BE233E8(v157, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {
    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  sub_22C0FEF24();
  if (v1)
  {
    sub_22BE268E8();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22C271214();
    sub_22C271234();
    sub_22BE187DC();
    sub_22BE19DC4(v64, v65, v66, v67);
    v68 = (v143 + v144[16]);
    v69 = *v68;
    v70 = v68[1];
    v124 = *(v143 + v144[17]);
    v71 = v144[19];
    v72 = (v143 + v144[18]);
    v73 = v72[1];
    v123 = *v72;
    sub_22BE3BB64(v143 + v71, v135, &qword_27D90C010, &dword_22C294AF0);
    v74 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
    v75 = sub_22BE3C598();
    sub_22BE1AB5C(v75, v76, v74);
    if (v61)
    {
      sub_22BF1C1E4(v69, v70);

      sub_22BE233E8(v135, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      sub_22BF1C1E4(v69, v70);

      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v143 + v71, v136, &qword_27D90C010, &dword_22C294AF0);
    sub_22BE1AB5C(v136, 1, v74);
    if (v61)
    {
      sub_22BE233E8(v136, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {

      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    v137 = v70;
    sub_22BE3BB64(v143 + v71, v138, &qword_27D90C010, &dword_22C294AF0);
    sub_22BE1AB5C(v138, 1, v74);
    if (v61)
    {
      sub_22BE233E8(v138, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v143 + v71, v139, &qword_27D90C010, &dword_22C294AF0);
    v77 = sub_22BE391E8();
    sub_22BE1AB5C(v77, v78, v74);
    if (v61)
    {
      sub_22BE233E8(v139, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22C271134();
    sub_22C271174();
    sub_22BE187DC();
    sub_22BE19DC4(v79, v80, v81, v82);
    v83 = v144[21];
    v84 = v143 + v144[20];
    v122 = *v84;
    v121 = *(v84 + 8);
    v85 = *(v143 + v83 + 8);
    v120 = *(v143 + v83);
    v119 = *(v143 + v144[22]);
    v118 = *(v143 + v144[23]);
    v86 = v144[24];
    sub_22BE3BB64(v143 + v86, v148, &qword_27D90C000, &qword_22C2CB7C0);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    sub_22BE181B0(v148);
    v140 = v85;
    if (v61)
    {

      sub_22BE233E8(v148, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      sub_22C1CEFD4(*(v148 + 8));

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    v87 = v53;
    sub_22BE3BB64(v143 + v86, v149, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v149);
    if (v61)
    {
      sub_22BE233E8(v149, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v143 + v86, v153, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v153);
    if (v61)
    {
      sub_22BE233E8(v153, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v143 + v86, v154, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v154);
    v88 = v147;
    if (v61)
    {
      sub_22BE233E8(v154, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    v89 = v142;
    sub_22BE3BB64(v143 + v86, v155, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v155);
    v90 = v141;
    if (v61)
    {
      sub_22BE233E8(v155, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22C1CF2A0();
    sub_22BE3BB64(v143 + v86, v156, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v156);
    if (v61)
    {
      sub_22BE233E8(v156, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v91 = *v156;

      sub_22BE1BBB0();
      sub_22C1CEAFC();
      v92 = *(v91 + 16);
      if (v92)
      {
        v158 = *(v91 + 16);
        v159 = MEMORY[0x277D84F90];
        sub_22BE71C8C(0, v92, 0);
        sub_22BE25AD8();
        v94 = v91 + v93;
        v150 = *(v95 + 72);
        do
        {
          sub_22C1CEAA4(v94, v152, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          v87 = v152[3];
          v97 = v152[10];
          v96 = v152[11];

          sub_22C271294();
          sub_22C1CEAFC();
          sub_22C1CF084();
          if (v99)
          {
            sub_22BE1AAE4(v98);
            sub_22C1CF294();
            sub_22BE71C8C(v103, v104, v105);
          }

          *(v159 + 16) = v97;
          sub_22BE197A0();
          (*(v102 + 32))(v100 + v101 * v96, v125, v151);
          v94 += v150;
          --v158;
        }

        while (v158);

        v89 = v142;
        sub_22C1CF2A0();
        v88 = v147;
        v90 = v141;
      }

      else
      {
      }
    }

    sub_22C271314();
    sub_22C271334();
    sub_22BE187DC();
    sub_22BE19DC4(v106, v107, v108, v109);
    sub_22C0FF03C();
    HIBYTE(v116) = v118;
    LOBYTE(v116) = v119;
    sub_22BE32C24();
    v115 = v110;
    sub_22C1CF130();
    v114 = v111;
    sub_22C1CF148();
    BYTE4(v113) = v126;
    BYTE3(v113) = v127;
    BYTE2(v113) = v128;
    BYTE1(v113) = v129;
    LOBYTE(v113) = v130;
    sub_22C271374(v134, v89, v133, v88, v132, v90, v131, v54, v113, v145, v146, v112, v114, v137, v124, v115, v123, v73, v87, v122, v121, v120, v140, v116);
    sub_22BE268E8();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void CGRect.init(transcript:)()
{
  v1 = sub_22BE17BC4();
  v2 = type metadata accessor for ContextProtoCGSize(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v4);
  sub_22BE26800();
  v5 = type metadata accessor for ContextProtoCGPoint(0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE1C17C();
  sub_22C10200C();
  if (v0)
  {
    sub_22BE3C42C();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22BE3CA6C();
    sub_22C1CEAFC();
    sub_22C10200C();
    sub_22BE3CA6C();
    sub_22C1CEAFC();
    type metadata accessor for ContextProtoCGRect(0);
    sub_22C1020FC();
    sub_22C1CEDDC();
    sub_22C1CEAFC();
    sub_22C1020FC();
    sub_22BE3C42C();
    sub_22C1CEAFC();
    sub_22C1CEDDC();
    sub_22C1CEAFC();
  }

  sub_22C1CF2D8();
}

uint64_t StructuredContext.UIMetadata.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v1);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1BC40();
  v4 = sub_22C271624();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  sub_22C1021EC();
  if (!v0)
  {
    StructuredContext.UIMetadata.Window.init(transcript:)();
    sub_22C271634();
  }

  return sub_22C1CEAFC();
}

void ContextProtoStructuredContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  a23 = v30;
  a24 = v31;
  v33 = v32;
  v270 = v34;
  v35 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE190A8(v37);
  v38 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  v240 = v40;
  v41 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v41);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  v247 = v43;
  sub_22BE183BC();
  v257 = sub_22C2714B4();
  sub_22BE179D8();
  v250 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v249 = v46;
  sub_22BE183BC();
  sub_22C271514();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  sub_22BE18950(v48);
  v49 = sub_22C271654();
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  sub_22BE19448(v52);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1A174();
  v238 = v54;
  v55 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v55);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  v244 = v57;
  sub_22BE183BC();
  sub_22C2716B4();
  sub_22BE179D8();
  v245 = v59;
  v246 = v58;
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  v242 = v60;
  sub_22BE183BC();
  sub_22C271034();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C271594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v62);
  sub_22BE179EC();
  sub_22BE22DB8();
  v63 = sub_22C271394();
  sub_22BE179D8();
  v264 = v64;
  MEMORY[0x28223BE20](v65);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v66);
  sub_22BE32374();
  v67 = sub_22BE5CE4C(&qword_27D915468, &qword_22C2CB800);
  v68 = sub_22BE19448(v67);
  MEMORY[0x28223BE20](v68);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v69);
  sub_22BE26800();
  v269 = type metadata accessor for ContextProtoStructuredContextKind(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v71);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v73);
  sub_22BE355FC(v74, v75, v76, v77, v78, v79, v80, v81, v230);
  v82 = v33;
  sub_22C2716D4();
  v83 = sub_22C2716C4();
  sub_22BE181B0(v26);
  if (!v84)
  {
    v234 = v82;
    v233 = v26;
    v89 = sub_22BE291B0();
    sub_22BE3BB64(v89, v90, v91, v92);
    v93 = *(v83 - 8);
    v94 = sub_22BE19454();
    v96 = v95(v94);
    if (v96 == *MEMORY[0x277D1F080])
    {
      v97 = sub_22C1CECDC();
      v98(v97);
      v99 = sub_22BE3C968();
      v100(v99);
      (*(v264 + 16))(v29, v28, v63);
      ContextProtoStructuredContextSiriRequestContext.init(context:)(v29, v101, v102, v103, v104, v105, v106, v107, v231, v232);
      if (v24)
      {
        sub_22C2716E4();
        sub_22BE18524();
        v108 = sub_22BE3C9D0();
        v109(v108);
        (*(v264 + 8))(v28, v63);
LABEL_7:
        v88 = v233;
        goto LABEL_8;
      }

      (*(v264 + 8))(v28, v63);
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      v141 = v25;
LABEL_15:
      sub_22C1CEB4C(v141, v271, v140);
      goto LABEL_16;
    }

    if (v96 == *MEMORY[0x277D1F0A0])
    {
      v110 = sub_22C1CECDC();
      v111(v110);
      v112 = sub_22BE39EAC();
      v113(v112);
      v114 = sub_22C271534();
      v255 = v115;
      v258 = v114;
      v265 = sub_22C271584();
      v253 = v116;
      v251 = sub_22C271554();
      v118 = v117;
      v119 = sub_22C271564();
      v121 = v120;
      v122 = sub_22C271544();
      v123 = sub_22C271574();
      type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v124 = sub_22BE1AEE4();
      v125(v124);
      *v271 = v258;
      *(v271 + 8) = v255;
      *(v271 + 40) = v253;
      *(v271 + 48) = v251;
      *(v271 + 56) = v118;
      *(v271 + 64) = v119;
      *(v271 + 72) = v121;
      *(v271 + 16) = v122 & 1;
      v93 = v269;
      *(v271 + 24) = v123;
      *(v271 + 32) = v265;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    }

    if (v96 == *MEMORY[0x277D1F078])
    {
      v126 = sub_22C1CECDC();
      v127(v126);
      v128 = sub_22BE18944();
      v129(v128);
      v266 = sub_22C271014();
      v131 = v130;
      v132 = sub_22C270FF4();
      v134 = v133;
      v135 = sub_22C271024();
      v137 = v136;
      type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v138 = sub_22BE27A44();
      v139(v138);
      v93 = v269;
      *v271 = v266;
      *(v271 + 8) = v131;
      *(v271 + 16) = v132;
      *(v271 + 24) = v134;
      *(v271 + 32) = v135;
      *(v271 + 40) = v137;
      goto LABEL_13;
    }

    if (v96 == *MEMORY[0x277D1F088])
    {
      v153 = sub_22C1CECDC();
      v154(v153);
      sub_22BE47DF4();
      v155 = sub_22BE18944();
      v156(v155);
      v259 = sub_22C2713F4();
      v261 = v157;
      v256 = sub_22C271444();
      v267 = v158;
      v252 = sub_22C271424();
      v160 = v159;
      v254 = sub_22C271454();
      v162 = v161;
      v163 = sub_22C271464();
      v165 = v164;
      v166 = sub_22C271474();
      v168 = v167;
      sub_22C271414();
      sub_22C1B04BC(v247, &a14);
      if (v24)
      {

        sub_22C2716E4();
        sub_22BE18524();
        v169 = sub_22BE3C9D0();
        v170(v169);
        (*(v250 + 8))(v249, v257);
        goto LABEL_7;
      }

      v248 = v163;
      v272 = v162;
      v197 = a14;
      sub_22C2714A4();
      sub_22C1B0810(v240, &a13);
      v243 = v197;
      v204 = a13;
      sub_22BE236D4();
      sub_22C271404();
      sub_22C1B0B10(v240, &a12);
      v241 = a12;
      v221 = sub_22C271484();
      v237 = v222;
      v239 = v221;
      sub_22C271494();
      v223 = sub_22C271434();
      sub_22C1CF270(v223);
      sub_22C2713A4();
      *(v235 + 89) = 1031;
      *(v235 + 91) = 9;
      type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v93 = v250 + 8;
      (*(v250 + 8))(v249, v257);
      *v235 = v259;
      *(v235 + 8) = v261;
      *(v235 + 16) = v256;
      *(v235 + 24) = v267;
      *(v235 + 32) = v252;
      *(v235 + 40) = v160;
      *(v235 + 48) = v254;
      *(v235 + 56) = v272 & 1;
      *(v235 + 64) = v248;
      *(v235 + 72) = v165 & 1;
      *(v235 + 80) = v166;
      *(v235 + 88) = v168 & 1;
      *(v235 + 89) = v243;
      *(v235 + 90) = v204;
      *(v235 + 91) = v241;
      *(v235 + 96) = v239;
      *(v235 + 104) = v237;
      sub_22C1CF148();
      *(v235 + 112) = v225;
      *(v235 + 120) = v224;
      sub_22BE2BCA8();
      *(v235 + 128) = v227;
      *(v235 + 136) = v226;
      sub_22C1CF130();
      *(v235 + 144) = v229;
      *(v235 + 152) = v228;
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      v141 = v235;
      goto LABEL_15;
    }

    if (v96 == *MEMORY[0x277D1F098])
    {
      v171 = sub_22C1CECDC();
      v172(v171);
      v173 = sub_22BE18944();
      v174(v173);
      v175 = sub_22C2716A4();
      v177 = v176;
      sub_22C271674();
      ContextProtoCGRect.init(context:)(v244, v178, v179, v180, v181);
      if (v24)
      {

        sub_22C2716E4();
        sub_22BE18524();
        v182 = sub_22BE3C9D0();
        v183(v182);
        v184 = sub_22BE1B73C();
        v185(v184);
        goto LABEL_7;
      }

      v200 = type metadata accessor for ContextProtoCGRect(0);
      v201 = sub_22BE360A0();
      sub_22BE19DC4(v201, v202, v203, v200);
      sub_22C271664();
      ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)();
      v205 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
      sub_22BE187DC();
      sub_22BE19DC4(v206, v207, v208, v205);
      v263 = sub_22C271684();
      v260 = v209;
      v210 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
      v211 = v210[5];
      sub_22BE1A140();
      sub_22BE19DC4(v212, v213, v214, v200);
      v93 = v210[6];
      sub_22BE28D2C();
      sub_22BE19DC4(v215, v216, v217, v218);
      v219 = v236 + v210[7];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*(v245 + 8))(v242, v246);
      *v236 = v175;
      v236[1] = v177;
      sub_22BE23490(v244, v236 + v211, &qword_27D90BF90, &unk_22C294AD0);
      sub_22BE23490(v238, v236 + v93, &qword_27D90C078, &unk_22C294B00);
      *v219 = v263;
      v219[8] = v260 & 1;
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      sub_22C1CEB4C(v236, v271, v220);
LABEL_16:
      sub_22BE233E8(v233, &qword_27D915468, &qword_22C2CB800);
      sub_22BE1A140();
      v145 = sub_22C18F17C(v142, v143, v144, v93);
      type metadata accessor for ContextProtoStructuredContext(v145);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C2716E4();
      sub_22BE18524();
      (*(v146 + 8))(v234);
      sub_22BE233E8(v270, &qword_27D90BFE0, &qword_22C2CB7B0);
      sub_22BE33AEC();
      v147 = sub_22BE33BE8();
      sub_22C1CEB4C(v147, v148, v149);
      sub_22BE187DC();
      sub_22BE19DC4(v150, v151, v152, v93);
      goto LABEL_17;
    }

    if (v96 == *MEMORY[0x277D1F090])
    {
      v186 = sub_22C1CECDC();
      v187(v186);
      v188 = sub_22BE18944();
      v189(v188);
      v190 = sub_22C2714E4();
      v262 = v191;
      v268 = v190;
      v192 = sub_22C2714C4();
      v93 = v193;
      sub_22C2714F4();
      sub_22C1CF16C();
      v194 = sub_22C271504();
      type metadata accessor for ContextProtoStructedContextAppContext(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v195 = sub_22BE261AC();
      v196(v195);
      *v271 = v268;
      *(v271 + 8) = v262;
      *(v271 + 24) = v192;
      *(v271 + 32) = v93;
      *(v271 + 40) = v27;
      *(v271 + 48) = v63;
      *(v271 + 16) = v194 & 1;
      sub_22BE36390();
      goto LABEL_13;
    }

    v198 = sub_22BE19454();
    v199(v198);
    v26 = v233;
  }

  v85 = sub_22C1B64BC();
  sub_22BE196B4(&type metadata for ContextConversion.Error, v85);
  *v86 = 0;
  swift_willThrow();
  sub_22C2716E4();
  sub_22BE18524();
  (*(v87 + 8))(v82);
  v88 = v26;
LABEL_8:
  sub_22BE233E8(v88, &qword_27D915468, &qword_22C2CB800);
LABEL_17:
  sub_22BE18478();
}

void ContextProtoStructuredContextSiriRequestContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v16 = v15;
  sub_22BE36638(v17);
  sub_22C2712D4();
  sub_22BE179D8();
  v292 = v18;
  v293 = v19;
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v20 = sub_22BE183BC();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v20);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  sub_22BE190A8(v22);
  v23 = sub_22BE5CE4C(&qword_27D915448, &unk_22C2CB7C8);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v317 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v27);
  sub_22BE19490();
  v311 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE23730(v30, v31, v32, v33, v34, v35, v36, v37, v239);
  MEMORY[0x28223BE20](v38);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  v302 = v40;
  v41 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  sub_22BE19448(v41);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  sub_22BE190A8(v43);
  v44 = sub_22BE5CE4C(&qword_27D915450, &qword_22C2CB7D8);
  v45 = sub_22BE19448(v44);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v299 = v46;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v47);
  sub_22C1CECC4(v48, v49, v50, v51, v52, v53, v54, v55, v240);
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  v294 = v57;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v58);
  sub_22BE2BC40(v59, v60, v61, v62, v63, v64, v65, v66, v241);
  v67 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  sub_22BE19448(v67);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  v284 = v69;
  v70 = sub_22BE5CE4C(&qword_27D915458, &unk_22C2CB7E0);
  sub_22BE19448(v70);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1A174();
  sub_22BE18950(v72);
  v287 = sub_22C2711F4();
  sub_22BE179D8();
  v74 = v73;
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v76);
  sub_22BE19E94();
  v286 = v77;
  v78 = sub_22BE5CE4C(&qword_27D915460, &unk_22C2CB7F0);
  v79 = sub_22BE19448(v78);
  MEMORY[0x28223BE20](v79);
  sub_22BE17B98();
  v81 = v80;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v82);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v83);
  sub_22BE1C17C();
  v84 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE19448(v84);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1A174();
  sub_22BE190A8(v86);
  v87 = sub_22BE5CE4C(&qword_27D915440, &qword_22C2CB7B8);
  sub_22BE19448(v87);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v88);
  sub_22BE19E64();
  v89 = sub_22C271074();
  sub_22BE179D8();
  v91 = v90;
  MEMORY[0x28223BE20](v92);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v93);
  sub_22BE26800();
  v285 = v16;
  sub_22C271094();
  v94 = sub_22BE2BA98();
  sub_22BE1AB5C(v94, v95, v89);
  if (v96)
  {
    sub_22BE233E8(v12, &qword_27D915440, &qword_22C2CB7B8);
    v97 = 12;
  }

  else
  {
    v98 = sub_22BE25C08();
    v99(v98);
    (*(v91 + 16))(v10, v13, v89);
    ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(context:)();
    if (v11)
    {
      sub_22C271394();
      sub_22BE18524();
      (*(v100 + 8))(v16);
      v101 = sub_22BE1B18C();
      v102(v101);
LABEL_68:
      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    v103 = sub_22BE1B18C();
    v104(v103);
    v97 = v319;
  }

  v276 = v97;
  sub_22C271384();
  v275 = sub_22C271364();
  v274 = v105;
  v273 = sub_22C2710A4();
  v272 = v106;
  v271 = sub_22C2710E4();
  v270 = v107;
  v269 = sub_22C271054();
  v268 = sub_22C2710B4();
  v267 = sub_22C2711C4();
  v266 = sub_22C2711A4();
  v265 = sub_22C2711B4();
  v264 = sub_22C271184();
  v263 = MEMORY[0x2318A97C0]();
  sub_22C2710F4();
  v108 = sub_22C271234();
  sub_22BE1AB5C(v14, 1, v108);
  if (v96)
  {
    sub_22BE233E8(v14, &qword_27D915460, &unk_22C2CB7F0);
    v262 = 0;
    v260 = 0;
  }

  else
  {
    v262 = sub_22C271224();
    v260 = v109;
    sub_22BE1BC24();
    v110 = sub_22BE196A8();
    v111(v110);
  }

  sub_22C2710F4();
  sub_22BE1AB5C(v277, 1, v108);
  if (v96)
  {
    sub_22BE233E8(v277, &qword_27D915460, &unk_22C2CB7F0);
    v112 = 2;
  }

  else
  {
    v112 = sub_22C2711E4();
    sub_22BE1BC24();
    (*(v113 + 8))(v114, v108);
  }

  sub_22C2710F4();
  v115 = sub_22BE1AEA8(v81, 1, v108);
  v116 = MEMORY[0x277D1EF50];
  if (v115 == 1)
  {
    sub_22BE233E8(v81, &qword_27D915460, &unk_22C2CB7F0);
    sub_22BE1A140();
    v117 = v287;
    sub_22BE19DC4(v118, v119, v120, v287);
  }

  else
  {
    sub_22C271204();
    sub_22BE1BC24();
    (*(v121 + 8))(v81, v108);
    v122 = sub_22BE2BA98();
    v117 = v287;
    sub_22BE1AB5C(v122, v123, v287);
    if (!v96)
    {
      v124 = v286;
      (*(v74 + 32))(v286, v278, v287);
      LODWORD(v116) = *v116;
      goto LABEL_19;
    }
  }

  v116 = *v116;
  v124 = v286;
  (*(v74 + 104))(v286, v116, v117);
  sub_22BE181B0(v278);
  if (!v96)
  {
    sub_22BE233E8(v278, &qword_27D915458, &unk_22C2CB7E0);
  }

LABEL_19:
  sub_22BE29400();
  sub_22C1CF288();
  v125();
  v126 = sub_22BE3C5E4();
  v128 = v127(v126);
  if (v128 == v116)
  {
    v129 = 0;
    goto LABEL_29;
  }

  if (v128 == *MEMORY[0x277D1EF58])
  {
    v129 = 1;
    goto LABEL_29;
  }

  if (v128 == *MEMORY[0x277D1EF60])
  {
    v129 = 2;
    goto LABEL_29;
  }

  if (v128 == *MEMORY[0x277D1EF48])
  {
    v129 = 3;
    goto LABEL_29;
  }

  if (v128 == *MEMORY[0x277D1EF68])
  {
    v129 = 4;
LABEL_29:
    v130 = sub_22BE35838();
    v131(v130);
    *(v283 + 17) = 5;
    v132 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v283 = v262;
    *(v283 + 8) = v260;
    *(v283 + 16) = v112;
    *(v283 + 17) = v129;
    sub_22BE187DC();
    v258 = v132;
    sub_22BE19DC4(v133, v134, v135, v132);
    v280 = sub_22C271104();
    v279 = v136;
    sub_22C271084();
    v261 = sub_22C271064();
    v259 = v137;
    sub_22C271194();
    v138 = sub_22C271174();
    sub_22BE19FE0(v290);
    if (v96)
    {
      sub_22BE233E8(v290, &qword_27D915450, &qword_22C2CB7D8);
      v140 = 0;
      LOBYTE(v288) = 1;
    }

    else
    {
      v139 = sub_22C271144();
      v140 = v139;
      v288 = HIDWORD(v139) & 1;
      sub_22BE3A288();
      (*(v141 + 8))(v290, v138);
    }

    sub_22C271194();
    sub_22BE19FE0(v294);
    if (v96)
    {
      sub_22BE233E8(v294, &qword_27D915450, &qword_22C2CB7D8);
      v124 = 0;
      v112 = 0;
    }

    else
    {
      sub_22C271164();
      sub_22C1CF16C();
      sub_22BE3A288();
      v142 = sub_22BE29454();
      v143(v142);
    }

    sub_22C271194();
    sub_22BE19FE0(v296);
    if (v96)
    {
      sub_22BE233E8(v296, &qword_27D915450, &qword_22C2CB7D8);
      v145 = 0;
      LOBYTE(v146) = 1;
    }

    else
    {
      v144 = sub_22C271154();
      v145 = v144;
      v146 = HIDWORD(v144) & 1;
      sub_22BE3A288();
      (*(v147 + 8))(v148, v138);
    }

    sub_22C271194();
    sub_22BE19FE0(v299);
    if (v96)
    {
      sub_22BE233E8(v299, &qword_27D915450, &qword_22C2CB7D8);
      v150 = 0;
      LOBYTE(v151) = 1;
    }

    else
    {
      v149 = sub_22C271124();
      v150 = v149;
      v151 = HIDWORD(v149) & 1;
      sub_22BE3A288();
      (*(v152 + 8))();
    }

    v153 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v284 = v140;
    *(v284 + 4) = v288;
    *(v284 + 8) = v124;
    *(v284 + 16) = v112;
    *(v284 + 24) = v145;
    *(v284 + 28) = v146;
    *(v284 + 32) = v150;
    *(v284 + 36) = v151;
    sub_22BE187DC();
    v251 = v153;
    sub_22BE19DC4(v154, v155, v156, v153);
    v157 = v285;
    v257 = sub_22C271354();
    v256 = v158;
    v255 = sub_22C271114();
    v254 = v159;
    v253 = sub_22C2711D4();
    v252 = sub_22C2710D4();
    sub_22C271344();
    v160 = sub_22C271334();
    sub_22BE19FE0(v302);
    if (v96)
    {
      sub_22BE233E8(v302, &qword_27D915448, &unk_22C2CB7C8);
      v250 = 0;
      v249 = 0;
    }

    else
    {
      v250 = sub_22C271324();
      v249 = v161;
      sub_22BE3A288();
      (*(v162 + 8))(v302, v160);
    }

    sub_22C271344();
    sub_22BE19FE0(v305);
    if (v96)
    {
      sub_22BE233E8(v305, &qword_27D915448, &unk_22C2CB7C8);
      v166 = 0;
      v248 = 0;
    }

    else
    {
      sub_22C271254();
      v248 = v163;
      sub_22BE3A288();
      v166 = v165;
      (*(v164 + 8))(v305, v160);
    }

    sub_22C271344();
    sub_22BE19FE0(v308);
    if (v96)
    {
      sub_22BE233E8(v308, &qword_27D915448, &unk_22C2CB7C8);
      v247 = 0;
      v246 = 0;
    }

    else
    {
      v247 = sub_22C271244();
      v246 = v167;
      sub_22BE3A288();
      (*(v168 + 8))(v308, v160);
    }

    sub_22C271344();
    sub_22BE19FE0(v311);
    if (v96)
    {
      sub_22BE233E8(v311, &qword_27D915448, &unk_22C2CB7C8);
      v172 = 0;
      v245 = 0;
    }

    else
    {
      sub_22C2712F4();
      v245 = v169;
      sub_22BE3A288();
      v172 = v171;
      (*(v170 + 8))(v311, v160);
    }

    sub_22C271344();
    sub_22BE19FE0(v314);
    if (v96)
    {
      sub_22BE233E8(v314, &qword_27D915448, &unk_22C2CB7C8);
      v176 = 0;
      v244 = 0;
    }

    else
    {
      sub_22C2712E4();
      v244 = v173;
      sub_22BE3A288();
      v176 = v175;
      (*(v174 + 8))(v314, v160);
    }

    sub_22C271344();
    v177 = sub_22BE19FE0(v317);
    if (v96)
    {
      sub_22BE233E8(v317, &qword_27D915448, &unk_22C2CB7C8);
    }

    else
    {
      v178 = MEMORY[0x2318A9A00](v177);
      sub_22BE3A288();
      (*(v179 + 8))(v317, v160);
      v180 = *(v178 + 16);
      if (v180)
      {
        v242 = v172;
        sub_22BE3122C(MEMORY[0x277D84F90]);
        sub_22BE34198();
        sub_22BE704EC(v181, v182, v183);
        v184 = a10;
        v291 = *(v293 + 16);
        sub_22BE19E14();
        v186 = v178 + v185;
        v289 = *(v187 + 56);
        do
        {
          v315 = v180;
          v188 = sub_22BE18944();
          v291(v188);
          v189 = sub_22C2712A4();
          v309 = v190;
          v312 = v189;
          v191 = sub_22C2712C4();
          v303 = v192;
          v306 = v191;
          v193 = sub_22C271284();
          v297 = v194;
          v300 = v193;
          v295 = sub_22C2712B4();
          v196 = v195;
          v197 = sub_22C271264();
          v199 = v198;
          v200 = sub_22C271274();
          v202 = v201;
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v203 = sub_22BE2BD4C();
          v204(v203, v292);
          v243[2] = v306;
          v243[3] = v303;
          v243[4] = v300;
          v243[5] = v297;
          v243[6] = v295;
          v243[7] = v196;
          v243[8] = v197;
          v243[9] = v199;
          v243[10] = v200;
          v243[11] = v202;
          v206 = *(a10 + 16);
          v205 = *(a10 + 24);
          *v243 = v312;
          v243[1] = v309;
          if (v206 >= v205 >> 1)
          {
            sub_22BE3D1E4(v205);
            sub_22C1CF294();
            sub_22BE704EC(v209, v210, v211);
          }

          *(a10 + 16) = v206 + 1;
          sub_22BE197A0();
          sub_22C1CEB4C(v243, v207 + v208 * v206, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          v186 += v289;
          v180 = v315 - 1;
        }

        while (v315 != 1);

        v157 = v285;
        v172 = v242;
        goto LABEL_67;
      }
    }

    v184 = MEMORY[0x277D84F90];
LABEL_67:
    v212 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v281[2] = v249;
    v281[3] = v166;
    v281[4] = v248;
    v281[5] = v247;
    v281[6] = v246;
    v281[7] = v172;
    v281[8] = v245;
    v281[9] = v176;
    v281[10] = v244;
    *v281 = v184;
    v281[1] = v250;
    sub_22BE187DC();
    sub_22BE19DC4(v213, v214, v215, v212);
    v318 = sub_22C271044();
    v216 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v217, v218, v219, v258);
    v220 = v282 + v216[16];
    *v220 = xmmword_22C28E6A0;
    v221 = (v282 + v216[17]);
    v222 = (v282 + v216[18]);
    v304 = v216[19];
    sub_22BE1A140();
    sub_22BE19DC4(v223, v224, v225, v251);
    v298 = v282 + v216[20];
    v301 = (v282 + v216[21]);
    v310 = v216[23];
    v313 = v216[22];
    v316 = v216[24];
    sub_22BE1A140();
    sub_22BE19DC4(v226, v227, v228, v212);
    v229 = v216[25];
    *(v282 + v229) = 12;
    v307 = v216[26];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271394();
    sub_22BE18524();
    (*(v230 + 8))(v157);
    sub_22C1CF130();
    *(v282 + 16) = v232;
    *(v282 + 24) = v231;
    *(v282 + 32) = v275;
    *(v282 + 40) = v274;
    *(v282 + 48) = v273;
    *(v282 + 56) = v272;
    *(v282 + 64) = v271;
    *(v282 + 72) = v270;
    *(v282 + 80) = v269;
    *(v282 + 81) = v268;
    *(v282 + 82) = v267;
    *(v282 + 83) = v266;
    *(v282 + 84) = v265;
    *v282 = v264;
    *(v282 + 8) = v263;
    v233 = sub_22C1CEFC8();
    sub_22BE23490(v233, v234, v235, v236);
    sub_22BF158B4(*v220, *(v220 + 8));
    *v220 = v280;
    *(v220 + 8) = v279;
    sub_22BE32C24();
    *v221 = v238;
    v221[1] = v237;
    *v222 = v261;
    v222[1] = v259;
    sub_22BE23490(v284, v282 + v304, &qword_27D90C010, &dword_22C294AF0);
    *v298 = v257;
    *(v298 + 8) = v256 & 1;
    *v301 = v255;
    v301[1] = v254;
    *(v282 + v313) = v253;
    *(v282 + v310) = v252;
    sub_22BE23490(v281, v282 + v316, &qword_27D90C000, &qword_22C2CB7C0);
    *(v282 + v229) = v276;
    *(v282 + v307) = v318;
    goto LABEL_68;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t ContextProtoCGRect.init(context:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v13 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE35AE8();
  v15 = sub_22BE1AEE4();
  v17 = sub_22BE5CE4C(v15, v16);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE3A208();
  v20 = type metadata accessor for ContextProtoCGPoint(v19);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a2;
  v7[1] = a3;
  v21 = sub_22BE360A0();
  sub_22BE19DC4(v21, v22, v23, v20);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  Height = CGRectGetHeight(v37);
  type metadata accessor for ContextProtoCGSize(0);
  sub_22C1CF2CC();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a4;
  *(v6 + 8) = Height;
  sub_22BE187DC();
  sub_22BE19DC4(v25, v26, v27, v5);
  sub_22BE1A140();
  v31 = sub_22C18F17C(v28, v29, v30, v20);
  v32 = *(type metadata accessor for ContextProtoCGRect(v31) + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v33, v34, v35, v5);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23490(v7, a1, &qword_27D90C0C0, &unk_22C294B10);
  return sub_22BE23490(v6, a1 + v32, &qword_27D90C0B0, &qword_22C290E20);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)()
{
  sub_22BE1B254();
  v2 = sub_22C271624();
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  v4 = sub_22BE5CE4C(&qword_27D90C090, &qword_22C290E10);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE25CD0();
  sub_22C271644();
  ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(context:)();
  if (v1)
  {
    sub_22C271654();
    sub_22BE18524();
    return (*(v6 + 8))(v0);
  }

  else
  {
    v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
    sub_22BE187DC();
    sub_22BE19DC4(v9, v10, v11, v8);
    sub_22BE1A140();
    v15 = sub_22C18F17C(v12, v13, v14, v8);
    type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v15);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271654();
    sub_22BE18524();
    (*(v16 + 8))(v0);
    v17 = sub_22BE200D4();
    return sub_22BE23490(v17, v18, v19, v20);
  }
}

void StructuredContext.NowPlayingMediaItemContext.init(transcript:)()
{
  sub_22BE19130();
  v1 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE1A174();
  v3 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A8B4();
  v5 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22C0FEBA0();
  if (!v0)
  {
    sub_22C0FECD0();
    sub_22C0FEDDC();

    sub_22C2713E4();
  }

  sub_22BE29160();
  sub_22C1CEAFC();
  sub_22BE19650();
  sub_22BE18478();
}

void ContextProtoStructedContextNowPlayingMediaItem.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BE19130();
  a24 = v28;
  a25 = v29;
  v31 = v30;
  v74 = v32;
  v33 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v75 = v35;
  v36 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A8B4();
  v38 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE23E58();
  v77 = sub_22C2713F4();
  v79 = v40;
  v73 = sub_22C271444();
  v80 = v41;
  v72 = sub_22C271424();
  v78 = v42;
  v43 = sub_22C271454();
  v45 = v44;
  v46 = sub_22C271464();
  v48 = v47;
  v49 = sub_22C271474();
  v51 = v50;
  sub_22C271414();
  sub_22C1B04BC(v27, &a15);
  if (v25)
  {
    sub_22C2714B4();
    sub_22BE18524();
    (*(v54 + 8))(v31);
  }

  else
  {
    a10 = v45;
    v52 = a15;
    sub_22C2714A4();
    sub_22C1B0810(v26, &a14);
    v53 = a14;
    sub_22C271404();
    sub_22C1B0B10(v75, &a13);
    v76 = a13;
    v55 = sub_22C271484();
    v70 = v56;
    v71 = v55;
    v57 = sub_22C271494();
    v68 = v58;
    v69 = v57;
    v59 = sub_22C271434();
    v66 = v60;
    v67 = v59;
    v61 = sub_22C2713A4();
    v64 = v62;
    v65 = v61;
    *(v74 + 89) = 1031;
    *(v74 + 91) = 9;
    type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C2714B4();
    sub_22BE18524();
    (*(v63 + 8))(v31);
    *v74 = v77;
    *(v74 + 8) = v79;
    *(v74 + 16) = v73;
    *(v74 + 24) = v80;
    *(v74 + 32) = v72;
    *(v74 + 40) = v78;
    *(v74 + 48) = v43;
    *(v74 + 56) = a10 & 1;
    *(v74 + 64) = v46;
    *(v74 + 72) = v48 & 1;
    *(v74 + 80) = v49;
    *(v74 + 88) = v51 & 1;
    *(v74 + 89) = v52;
    *(v74 + 90) = v53;
    *(v74 + 91) = v76;
    *(v74 + 96) = v71;
    *(v74 + 104) = v70;
    *(v74 + 112) = v69;
    *(v74 + 120) = v68;
    *(v74 + 128) = v67;
    *(v74 + 136) = v66;
    *(v74 + 144) = v65;
    *(v74 + 152) = v64;
  }

  sub_22BE18478();
}

uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemotePlaybackState.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C2713B4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoStructedContextNowPlayingMediaRemotePlaybackState.init(context:)()
{
  sub_22BE4111C();
  sub_22C2713B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1EFC8] || v6 == *MEMORY[0x277D1EF98] || v6 == *MEMORY[0x277D1EFB0] || v6 == *MEMORY[0x277D1EFC0] || v6 == *MEMORY[0x277D1EFA0] || v6 == *MEMORY[0x277D1EFB8] || v6 == *MEMORY[0x277D1EFA8])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaType.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C2713C4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType.init(context:)()
{
  sub_22BE4111C();
  sub_22C2713C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1EFD8] || v6 == *MEMORY[0x277D1EFE0] || v6 == *MEMORY[0x277D1EFE8] || v6 == *MEMORY[0x277D1EFD0])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaSubType.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C2713D4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType.init(context:)()
{
  sub_22BE4111C();
  sub_22C2713D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1F000] || v6 == *MEMORY[0x277D1F010] || v6 == *MEMORY[0x277D1F018] || v6 == *MEMORY[0x277D1F008] || v6 == *MEMORY[0x277D1F028] || v6 == *MEMORY[0x277D1F030] || v6 == *MEMORY[0x277D1F020] || v6 == *MEMORY[0x277D1EFF0] || v6 == *MEMORY[0x277D1EFF8])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(context:)()
{
  sub_22BE38A98();
  v1 = v0;
  sub_22C271074();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = sub_22BE18B58(v5, v21);
  v7(v6);
  v8 = sub_22BE36680();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D1EF38])
  {
    v11 = 0;
LABEL_23:
    v12 = sub_22BE3C5E4();
    result = v13(v12);
    *v1 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x277D1EF28])
  {
    v11 = 1;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF40])
  {
    v11 = 2;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF30])
  {
    v11 = 3;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EEF8])
  {
    v11 = 4;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF20])
  {
    v11 = 5;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF10])
  {
    v11 = 6;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF00])
  {
    v11 = 7;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF08])
  {
    v11 = 8;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EEF0])
  {
    v11 = 9;
    goto LABEL_23;
  }

  if (v10 == *MEMORY[0x277D1EF18])
  {
    v11 = 10;
    goto LABEL_23;
  }

  v15 = sub_22C108358();
  v16 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v15);
  sub_22BE3C74C(v16, v17);
  v18 = *(v3 + 8);
  v19 = sub_22BE3C5E4();
  v18(v19);
  v20 = sub_22BE36680();
  return (v18)(v20);
}

void ContextProtoStructuredContextSiriRequestContextUserClassification.init(context:)()
{
  sub_22BE4111C();
  sub_22C2711F4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1EF50] || v6 == *MEMORY[0x277D1EF58] || v6 == *MEMORY[0x277D1EF60] || v6 == *MEMORY[0x277D1EF48] || v6 == *MEMORY[0x277D1EF68])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void StructuredContext.UIMetadata.Window.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE289D8();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  v10 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v12);
  sub_22BE26800();
  sub_22C271604();
  v13 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_22BE3BB64(v3 + *(v13 + 20), v1, &qword_27D90BF90, &unk_22C294AD0);
  sub_22BE1AB5C(v1, 1, v10);
  if (v14)
  {
    sub_22BE233E8(v1, &qword_27D90BF90, &unk_22C294AD0);
LABEL_7:

    sub_22C2715B4();
    sub_22C2715F4();
    sub_22BE379D8();
    sub_22C1CEAFC();
    goto LABEL_8;
  }

  v15 = sub_22BE18240();
  sub_22C1CEB4C(v15, v16, v17);
  v18 = sub_22BE36318();
  sub_22C1CEAA4(v18, v19, v20);
  sub_22BE37D44();
  CGRect.init(transcript:)();
  if (!v0)
  {
    sub_22C2715D4();
    sub_22BE3C42C();
    sub_22C1CEAFC();
    goto LABEL_7;
  }

  sub_22BE379D8();
  sub_22C1CEAFC();
  sub_22BE3C42C();
  sub_22C1CEAFC();
  sub_22C271624();
  sub_22BE18524();
  (*(v21 + 8))(v5);
LABEL_8:
  sub_22BE18478();
}

void ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(context:)()
{
  sub_22BE19130();
  sub_22C1CECFC();
  v7 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v10);
  sub_22BE26800();
  sub_22C2715C4();
  if (v32)
  {
    v11 = type metadata accessor for ContextProtoCGRect(0);
    v12 = 1;
LABEL_6:
    sub_22BE19DC4(v6, v12, 1, v11);
    sub_22BEF88B8(v6, v4, &qword_27D90BF90, &unk_22C294AD0);
    v27 = sub_22C271614();
    v14 = sub_22BE1AB1C();
    sub_22BE3BB64(v14, v15, &qword_27D90BF90, &unk_22C294AD0);
    v26 = sub_22C2715E4();
    v25 = v16;
    v24 = sub_22C2715A4();
    v18 = v17;
    type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
    v19 = sub_22C1CF0A4();
    type metadata accessor for ContextProtoCGRect(v19);
    sub_22BE1A140();
    sub_22BE19DC4(v20, v21, v22, v11);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271624();
    sub_22BE18524();
    (*(v23 + 8))(v1);
    sub_22BE233E8(v4, &qword_27D90BF90, &unk_22C294AD0);
    *v2 = v27 & 1;
    sub_22C1CF344(v3, &v2[v5]);
    *v2 = v26;
    v2[8] = v25 & 1;
    *v2 = v24;
    *(v2 + 1) = v18;
    goto LABEL_7;
  }

  ContextProtoCGRect.init(context:)(v6, v28, v29, v30, v31);
  if (!v0)
  {
    v11 = type metadata accessor for ContextProtoCGRect(0);
    v12 = 0;
    goto LABEL_6;
  }

  sub_22C271624();
  sub_22BE18524();
  (*(v13 + 8))(v1);
LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1BB758(void *a1@<X8>)
{
  CGRect.init(transcript:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t Confidence.init(transcript:)(float *a1)
{
  sub_22C270954();
  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoConfidence.init(context:)()
{
  sub_22C1CECFC();
  v3 = sub_22C270EA4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE26800();
  sub_22C270964();
  v9 = v8;
  sub_22C270974();
  sub_22C1CF23C();
  sub_22BE25300();
  v10();
  v11 = (*(v5 + 88))(v2, v3);
  if (v11 == *MEMORY[0x277D1EDD8])
  {
    v12 = 0;
LABEL_7:
    v13 = sub_22BE1AB1C();
    v14(v13);
    type metadata accessor for ContextProtoConfidence(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270984();
    sub_22BE18524();
    result = (*(v15 + 8))(v0);
    *v1 = v9;
    *(v1 + 4) = v12;
    return result;
  }

  if (v11 == *MEMORY[0x277D1EDE8])
  {
    v12 = 1;
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x277D1EDE0])
  {
    v12 = 2;
    goto LABEL_7;
  }

  result = sub_22BE3FFAC();
  __break(1u);
  return result;
}

uint64_t ContextDataSource.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C270F74();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoContextDataSource.init(context:)()
{
  sub_22BE4111C();
  sub_22C270F74();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1EE60] || v6 == *MEMORY[0x277D1EE48] || v6 == *MEMORY[0x277D1EE58] || v6 == *MEMORY[0x277D1EE38] || v6 == *MEMORY[0x277D1EE40] || v6 == *MEMORY[0x277D1EE50])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ContextualEntityDisplayRepresentation.init(transcript:)(uint64_t *a1)
{
  if (a1[1])
  {

    sub_22C271A44();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D912050, &unk_22C2B5E70);
    v1 = sub_22C273074();
    v3 = v2;
    v4 = sub_22C108598();
    sub_22BE196B4(&type metadata for TranscriptConversion.Error, v4);
    *v5 = v1;
    *(v5 + 8) = v3;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(context:)()
{
  sub_22C1CECFC();
  v4 = sub_22C271A54();
  v6 = v5;
  sub_22C271A64();
  sub_22C1CF16C();
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C271A74();
  sub_22BE18524();
  result = (*(v7 + 8))(v0);
  *v1 = v4;
  v1[1] = v6;
  v1[2] = v2;
  v1[3] = v3;
  return result;
}

uint64_t ConfidenceBucket.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C270EA4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

uint64_t BoundingBox.init(transcript:)(unsigned int *a1)
{
  sub_22C101EF8(*a1 | (*(a1 + 4) << 32));
  if (!v1)
  {
    sub_22C1CF1CC(a1[2]);
    sub_22C1CF1CC(a1[4]);
    sub_22C1CF1CC(a1[6]);
    sub_22C2709A4();
  }

  sub_22BE2B930();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoBoundingBox.init(context:)()
{
  sub_22C1CECFC();
  sub_22C2709B4();
  v3 = v2;
  sub_22C2709C4();
  v5 = v4;
  sub_22C2709D4();
  v7 = v6;
  sub_22C2709E4();
  v9 = v8;
  type metadata accessor for ContextProtoBoundingBox(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C2709F4();
  sub_22BE18524();
  result = (*(v10 + 8))(v0);
  *v1 = v3;
  *(v1 + 4) = 0;
  *(v1 + 8) = v5;
  *(v1 + 12) = 0;
  *(v1 + 16) = v7;
  *(v1 + 20) = 0;
  *(v1 + 24) = v9;
  *(v1 + 28) = 0;
  return result;
}

void SurroundingText.init(transcript:)(uint64_t *a1)
{
  v6 = v1;
  v8 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v10);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v12);
  sub_22BE39EE8();
  v13 = sub_22C2709F4();
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE19338();
  v15 = *a1;
  v16 = a1[1];

  sub_22C101F78(v15, v16);
  if (v6)
  {
    sub_22BE3F4E0();
  }

  else
  {

    v30 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
    sub_22BE3BB64(a1 + v30, v3, &qword_27D9092A0, &unk_22C294AC0);
    v31 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE1AB5C(v3, 1, v31);
    if (v17)
    {
      sub_22BE233E8(v3, &qword_27D9092A0, &unk_22C294AC0);
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = *v3;
      v19 = *(v3 + 4);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v18 | (v19 << 32));
    sub_22BE3BB64(a1 + v30, v2, &qword_27D9092A0, &unk_22C294AC0);
    v20 = sub_22BE2BA98();
    sub_22BE1AB5C(v20, v21, v31);
    if (v17)
    {
      sub_22BE233E8(v2, &qword_27D9092A0, &unk_22C294AC0);
      v22 = 0;
      v23 = 1;
    }

    else
    {
      v22 = *(v2 + 8);
      v23 = *(v2 + 12);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v22 | (v23 << 32));
    sub_22BE3BB64(a1 + v30, v5, &qword_27D9092A0, &unk_22C294AC0);
    v24 = sub_22BE3C598();
    sub_22BE1AB5C(v24, v25, v31);
    if (v17)
    {
      sub_22BE233E8(v5, &qword_27D9092A0, &unk_22C294AC0);
      v26 = 0;
      v27 = 1;
    }

    else
    {
      v26 = *(v5 + 16);
      v27 = *(v5 + 20);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v26 | (v27 << 32));
    sub_22BE3BB64(a1 + v30, v4, &qword_27D9092A0, &unk_22C294AC0);
    sub_22BE1AB5C(v4, 1, v31);
    if (v17)
    {
      sub_22BE233E8(v4, &qword_27D9092A0, &unk_22C294AC0);
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v28 = *(v4 + 24);
      v29 = *(v4 + 28);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v28 | (v29 << 32));
    sub_22C2709A4();
    sub_22C270E74();
    sub_22BE3F4E0();
  }
}

void ContextProtoSurroundingText.init(context:)()
{
  sub_22BE19130();
  sub_22BE1B254();
  v4 = sub_22C2709F4();
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE3AC88();
  v6 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE35AE8();
  v8 = sub_22C270E84();
  v10 = v9;
  sub_22C270E64();
  ContextProtoBoundingBox.init(context:)();
  if (v2)
  {
    sub_22C270E94();
    sub_22BE18524();
    (*(v11 + 8))(v1);
  }

  else
  {
    v12 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE187DC();
    v16 = sub_22C18F17C(v13, v14, v15, v12);
    v17 = *(type metadata accessor for ContextProtoSurroundingText(v16) + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v18, v19, v20, v12);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270E94();
    sub_22BE18524();
    (*(v21 + 8))(v1);
    *v0 = v8;
    v0[1] = v10;
    sub_22BE23490(v3, v0 + v17, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RetrievedTool.Definition.init(transcript:)()
{
  sub_22BE19130();
  v79 = v1;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE193B0(v4, v73);
  MEMORY[0x28223BE20](v5);
  sub_22BE22D7C(v6, v7, v8, v9, v10, v11, v12, v13, v74);
  sub_22C272634();
  sub_22BE179D8();
  v76 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22C1CECC4(v17, v18, v19, v20, v21, v22, v23, v24, v75);
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272674();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v26);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v27);
  sub_22BE23858();
  MEMORY[0x28223BE20](v28);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v30);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22BE39EE8();
  v33 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v32);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22C10497C();
  if (v0)
  {
    sub_22BE17E78();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22BE260B8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v57 = sub_22BE33FCC();
        v58(v57);
        v33 = *(v76 + 16);
        v59 = sub_22BE3EA80();
        v33(v59);
        v60 = sub_22BE27A44();
        v33(v60);
        sub_22BE35CEC();
        sub_22C272C94();
        v68 = *(v76 + 8);
        v69 = sub_22BE1B18C();
        v68(v69);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v70 = sub_22BE196A8();
        v68(v70);
        v67 = MEMORY[0x277D1ECE8];
        break;
      case 2u:
        sub_22BE47DF4();
        v44 = sub_22BE291B0();
        v45(v44);
        sub_22BE36288();
        sub_22BE25300();
        v48(v46, v47);
        v49 = sub_22BE35CEC();
        ToolDefinition.init(transcript:)(v49, v50);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v61 = sub_22BE291B0();
        v62(v61);
        v67 = MEMORY[0x277D1ECD8];
        break;
      case 3u:
        v51 = sub_22BE33FCC();
        v52(v51);
        sub_22C116380();
        v53 = sub_22BE37B20();
        v54(v53);
        v33 = v79;
        v55 = sub_22BE37D44();
        ToolDefinition.init(transcript:)(v55, v56);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v63 = sub_22BE33FCC();
        v64(v63);
        v67 = MEMORY[0x277D1ECD0];
        break;
      case 4u:
        v41 = sub_22BE29264();
        sub_22C1CEB4C(v41, v42, v43);
        sub_22C1CEAA4(v77, v78, type metadata accessor for ContextProtoUIControlTool);
        sub_22BE35CEC();
        UIControlTool.init(transcript:)();
        sub_22BE17E78();
        sub_22C1CEAFC();
        sub_22BE2600C();
        sub_22C1CEAFC();
        v67 = MEMORY[0x277D1ECF8];
        break;
      default:
        v35 = sub_22BE39EAC();
        v36(v35);
        sub_22C116380();
        v37 = sub_22BE1B73C();
        v38(v37);
        v39 = sub_22BE35CEC();
        ToolDefinition.init(transcript:)(v39, v40);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v65 = sub_22BE39EAC();
        v66(v65);
        v67 = MEMORY[0x277D1ECE0];
        break;
    }

    v71 = *v67;
    sub_22C270B74();
    sub_22BE1834C();
    (*(v72 + 104))(v33, v71);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void UIControlTool.init(transcript:)()
{
  sub_22BE19130();
  v4 = v0;
  v6 = v5;
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v11);
  sub_22BE32374();
  v12 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  v14 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  sub_22BE3BB64(v6 + v14, v3, &qword_27D90C180, &unk_22C296C40);
  sub_22C272674();
  v15 = sub_22BE3C598();
  v18 = sub_22BE1AEA8(v15, v16, v17);
  sub_22BE233E8(v3, &qword_27D90C180, &unk_22C296C40);
  if (v18 == 1)
  {
    sub_22C272224();
    sub_22BE1A140();
    sub_22BE19DC4(v19, v20, v21, v22);
  }

  else
  {
    sub_22BE3BB64(v6 + v14, v2, &qword_27D90C180, &unk_22C296C40);
    sub_22C1CF27C();
    sub_22C0FD2BC();
    v4 = v0;
    if (v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C101F78(*v6, v6[1]);
  if (v4)
  {
    sub_22BE2600C();
    sub_22C1CEAFC();
    sub_22BE233E8(v1, &qword_27D90B2D8, &qword_22C2B5080);
    goto LABEL_8;
  }

  sub_22C101F78(v6[2], v6[3]);
  sub_22C101F78(v6[4], v6[5]);
  sub_22C270C64();
LABEL_4:
  sub_22BE2600C();
  sub_22C1CEAFC();
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

void ContextProtoRetrievedTool.Definition.init(handwritten:)()
{
  sub_22BE19130();
  v145 = v5;
  v141 = v6;
  sub_22C270C84();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272CA4();
  sub_22BE179D8();
  v138 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v137 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  sub_22BE183BC();
  sub_22C272674();
  sub_22BE179D8();
  v139 = v14;
  v140 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v134 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE22D7C(v18, v19, v20, v21, v22, v23, v24, v25, v130);
  v26 = sub_22C272224();
  sub_22BE179D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v133 = v30;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v32);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  v136 = v34;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v36);
  sub_22BE1C17C();
  v37 = sub_22C270B74();
  sub_22BE179D8();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v41 = sub_22BE3A208();
  v143 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v41);
  sub_22BE18000();
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v45);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v46);
  sub_22C1CEC08(v47, v48, v49, v50, v51, v52, v53, v54, v131);
  (*(v39 + 16))(v4, v145, v37);
  v55 = sub_22BE33BE8();
  v57 = v56(v55);
  if (v57 == *MEMORY[0x277D1ECE0])
  {
    v58 = sub_22BE3CE68();
    v59(v58);
    sub_22BE47DF4();
    v60 = sub_22BE289D8();
    v61(v60);
    sub_22BE36288();
    v62 = sub_22BE31038();
    v63(v62);
    sub_22C2721F4();
    if (v1)
    {
      v64 = sub_22C1CF094();
      v65(v64);
      v66 = *(v28 + 8);
      v67 = sub_22BE261AC();
      v66(v67);
      v68 = sub_22BE2BA80();
LABEL_4:
      v66(v68);
LABEL_14:
      sub_22BE18478();
      return;
    }

    v88 = *(v28 + 8);
    v89 = sub_22BE261AC();
    v88(v89);
    v90 = sub_22BE2BA80();
    v69 = v39;
    v88(v90);
    (*(v139 + 32))(v2, v144, v140);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v92 = v2;
    goto LABEL_11;
  }

  if (v57 == *MEMORY[0x277D1ECE8])
  {
    v69 = v39;
    v70 = sub_22BE3CE68();
    v71(v70);
    v72 = sub_22BE22DF4();
    v73(v72);
    sub_22C1CF23C();
    v0 = v137;
    v74 = sub_22BE336E8();
    v75(v74);
    sub_22C272C84();
    v76 = *(v138 + 8);
    v77 = sub_22BE1B73C();
    v76(v77);
    v78 = sub_22BE3AF28();
    v76(v78);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
LABEL_13:
    sub_22BE1A140();
    v97 = sub_22C18F17C(v94, v95, v96, v0);
    type metadata accessor for ContextProtoRetrievedTool.Definition(v97);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v69 + 8))(v145, v37);
    sub_22BE233E8(v141, &qword_27D9090C0, &qword_22C27FCC8);
    sub_22BE25814();
    v98 = sub_22BE291B0();
    sub_22C1CEB4C(v98, v99, v100);
    sub_22BE187DC();
    sub_22BE19DC4(v101, v102, v103, v0);
    goto LABEL_14;
  }

  if (v57 == *MEMORY[0x277D1ECD8])
  {
    v79 = sub_22BE3CE68();
    v80(v79);
    sub_22BE47DF4();
    v81 = v26;
    v82();
    sub_22BE36288();
    v0 = v135;
    v83 = sub_22BE261AC();
    v84(v83);
    sub_22C2721F4();
    if (v1)
    {
      v85 = sub_22C1CF094();
      v86(v85);
      v66 = *(v28 + 8);
      v87 = sub_22BE31038();
      v66(v87);
      v68 = sub_22BE37B20();
      goto LABEL_4;
    }

    v69 = v39;
    v122 = *(v28 + 8);
    v123 = sub_22BE31038();
    v122(v123);
    (v122)(v136, v81);
    v124 = sub_22BE1AB1C();
    v125(v124);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v92 = v3;
    goto LABEL_11;
  }

  if (v57 == *MEMORY[0x277D1ECD0])
  {
    v104 = sub_22BE3CE68();
    v105(v104);
    sub_22BE47DF4();
    v106 = sub_22BE22DF4();
    v107 = v26;
    v108(v106);
    sub_22BE36288();
    v0 = v133;
    v109 = sub_22BE336E8();
    v110(v109);
    sub_22C2721F4();
    if (v1)
    {
      v111 = sub_22C1CF094();
      v112(v111);
      v66 = *(v28 + 8);
      v113 = sub_22BE27A44();
      v66(v113);
      v68 = sub_22BE29454();
      goto LABEL_4;
    }

    v69 = v39;
    v126 = *(v28 + 8);
    v126(v133, v107);
    v127 = sub_22BE29454();
    (v126)(v127);
    (*(v139 + 32))(v132, v134, v140);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v92 = v132;
LABEL_11:
    v93 = v142;
LABEL_12:
    sub_22C1CEB4C(v92, v93, v91);
    goto LABEL_13;
  }

  if (v57 == *MEMORY[0x277D1ECF8])
  {
    v69 = v39;
    v114 = sub_22BE3CE68();
    v115(v114);
    sub_22BE47DF4();
    v116 = sub_22BE289D8();
    v117(v116);
    sub_22BE36288();
    v118 = sub_22BE31038();
    v119(v118);
    sub_22C1CF2A0();
    ContextProtoUIControlTool.init(handwritten:)();
    v93 = v142;
    v0 = v143;
    if (v1)
    {
      (*(v39 + 8))(v145, v37);
      v120 = sub_22BE33FCC();
      v121(v120);
      goto LABEL_14;
    }

    v128 = sub_22BE33FCC();
    v129(v128);
    sub_22BE431C0();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v92 = v2;
    goto LABEL_12;
  }

  sub_22C274004();
  __break(1u);
}

void ContextProtoUIControlTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v5 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE2C64C();
  v7 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v9 = sub_22C270C34();
  v11 = v10;
  v34 = sub_22C270C44();
  v13 = v12;
  v32 = sub_22C270C74();
  v15 = v14;
  sub_22C270C54();
  sub_22C1058C4(v4, v16, v17, v18, v19, v20, v21, v22, v30, v32);
  if (v2)
  {
    sub_22C270C84();
    sub_22BE18524();
    (*(v23 + 8))(v1);
  }

  else
  {
    v31 = v9;
    v24 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
    sub_22C272674();
    sub_22BE1A140();
    sub_22BE19DC4(v25, v26, v27, v28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270C84();
    sub_22BE18524();
    (*(v29 + 8))(v1);
    *v0 = v31;
    v0[1] = v11;
    v0[2] = v34;
    v0[3] = v13;
    v0[4] = v33;
    v0[5] = v15;
    sub_22BE23490(v3, v0 + v24, &qword_27D90C180, &unk_22C296C40);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ContextProtoToolQueryOutput.init(handwritten:)()
{
  sub_22BE1B254();
  sub_22C270B74();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE22DB8();
  v2 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v2);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  v4 = sub_22BE35838();
  v5(v4);
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (v0)
  {
    return sub_22C1CEF3C();
  }

  v7 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE187DC();
  sub_22BE19DC4(v8, v9, v10, v7);
  sub_22BE1A140();
  v14 = sub_22C18F17C(v11, v12, v13, v7);
  type metadata accessor for ContextProtoToolQueryOutput(v14);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C1CEF3C();
  v15 = sub_22BE200D4();
  return sub_22BE23490(v15, v16, v17, v18);
}

uint64_t RetrievedTool.Stage.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C270BC4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

uint64_t StructuredContext.SiriRequestContext.User.Classification.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C2711F4();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

uint64_t StructuredContext.SiriRequestContext.DeviceIdiom.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C271074();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void RetrievedTool.init(transcript:)()
{
  sub_22BE3F494();
  v4 = v3;
  sub_22C1CEFB0(v5);
  v70 = sub_22C270BC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  sub_22BE190A8(v8);
  sub_22BE5CE4C(&qword_27D915470, &qword_22C2CB808);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v75 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v12);
  sub_22C1CEC74(v13, v14, v15, v16, v17, v18, v19, v20, v68);
  v21 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  sub_22BE18950(v23);
  v24 = sub_22C270B74();
  v25 = sub_22BE19448(v24);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE18950(v26);
  v27 = sub_22C270C14();
  sub_22BE179D8();
  v72 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  MEMORY[0x28223BE20](v31);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v32);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE32374();
  sub_22BE28ECC();
  sub_22C1CE8AC(v35, v36, MEMORY[0x277D1ED88]);
  sub_22C2742B4();
  v71 = v4;
  v37 = *(v4 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 32);
    v40 = (v72 + 16);
    v79 = (v72 + 8);
    v81 = v2;
    v78 = v1;
    do
    {
      if (*v39)
      {
        sub_22C270C04();
        v41 = sub_22BE23108();
        v76 = v42;
        (v42)(v41);
        sub_22BE46174();
        sub_22C1CE8AC(&qword_27D915480, v40, MEMORY[0x277D1ED78]);
        sub_22BE3D5BC();
        sub_22C273984();
        sub_22BE32DB8();
        sub_22C1CE8AC(&qword_27D915488, v40, v43);
        sub_22BE36658();
        sub_22C272FD4();
        sub_22C1CF1B4();
        *v75 = v44;
        v45 = *v79;
        if (v46)
        {
          (v45)(v1, v27);
          sub_22BE3C6BC();
          v76();
          sub_22BE3C6BC();
          v76();
          sub_22C273994();
          v57 = sub_22BE2BA80();
          v45(v57);
          v1 = v78;
        }

        else
        {
          v47 = sub_22BE2BA80();
          v45(v47);
          sub_22C108D54();
          v48(&v75[v27], v1, v27);
        }

        sub_22BEF88B8(v75, v80, &qword_27D915470, &qword_22C2CB808);
        v58 = sub_22C1CF228();
        v45(v58);
        v2 = v81;
      }

      else
      {
        sub_22C270BF4();
        v49 = sub_22BE23108();
        v77 = v50;
        (v50)(v49);
        sub_22BE46174();
        sub_22C1CE8AC(&qword_27D915480, v40, MEMORY[0x277D1ED78]);
        sub_22BE2BA80();
        sub_22C273984();
        sub_22BE32DB8();
        sub_22C1CE8AC(&qword_27D915488, v40, v51);
        sub_22BE3EA80();
        sub_22C272FD4();
        sub_22C1CF1B4();
        *v74 = v52;
        v53 = *v79;
        if (v54)
        {
          v59 = sub_22BE36318();
          v53(v59);
          sub_22BE3C6BC();
          v77();
          sub_22BE3C6BC();
          v77();
          sub_22C273994();
          v60 = sub_22BE2BA80();
          v53(v60);
        }

        else
        {
          v55 = sub_22BE2BA80();
          v53(v55);
          sub_22C108D54();
          v56(&v74[v27], v73, v27);
        }

        sub_22BEF88B8(v74, v80, &qword_27D915470, &qword_22C2CB808);
        v61 = sub_22C1CF228();
        v53(v61);
        v2 = v81;
        v1 = v78;
      }

      ++v39;
      --v38;
      v40 = (v72 + 16);
    }

    while (v38);
  }

  type metadata accessor for ContextProtoRetrievedTool(0);
  sub_22C1CF2A0();
  sub_22C1025DC();
  if (!v0)
  {
    sub_22C1CF148();
    sub_22BE3E778();
    RetrievedTool.Definition.init(transcript:)();

    sub_22C0FAC80(v62);
    sub_22BE236D4();
    (*(v63 + 104))(v69, **(&unk_278725BD0 + *(v71 + 16)), v70);
    v64 = sub_22BE1AEE4();
    v65(v64);
    sub_22BE29400();
    v66 = sub_22BE261AC();
    v67(v66);
    sub_22BE3974C();
    sub_22C270B84();
  }

  sub_22BE379D8();
  sub_22C1CEAFC();
  (*(v72 + 8))(v2, v27);
  sub_22BE22978();
  sub_22BE3CAD8();
}

uint64_t ToolQuery.Output.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v6 = sub_22C270B74();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22C1025DC();
  if (v1)
  {
    return sub_22BE425AC();
  }

  RetrievedTool.Definition.init(transcript:)();
  sub_22BE425AC();
  return (*(v8 + 32))(v0, v2, v6);
}

void ContextProtoRetrievedTool.Stage.init(handwritten:)()
{
  sub_22BE4111C();
  sub_22C270BC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BE18B58(v1, v9);
  v3(v2);
  v4 = sub_22C1CEBF4();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1ED28] || v6 == *MEMORY[0x277D1ED30] || v6 == *MEMORY[0x277D1ED40] || v6 == *MEMORY[0x277D1ED38])
  {
    v7 = sub_22BE2942C();
    v8(v7);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ContextProtoRetrievedTool.init(handwritten:)()
{
  sub_22BE3F494();
  v3 = v2;
  v67 = v4;
  v66 = sub_22C270BC4();
  sub_22BE179D8();
  v69 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v7);
  sub_22C1CEC08(v8, v9, v10, v11, v12, v13, v14, v15, v64);
  v16 = sub_22C270B74();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BE3BF90(v18);
  v19 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v70 = v21;
  sub_22BE183BC();
  v22 = sub_22C270C14();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v26);
  sub_22BE1C17C();
  sub_22C270BE4();
  sub_22C270BF4();
  sub_22BE28ECC();
  sub_22C1CE8AC(v27, v28, MEMORY[0x277D1ED78]);
  v29 = sub_22C1CF30C();
  v30 = *(v24 + 8);
  v31 = sub_22BE3CC34();
  v30(v31);
  (v30)(v1, v22);
  if (v29)
  {
    v65 = v3;
    sub_22BE66A18();
    v33 = v32;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_22BE1AAE4(v34);
      sub_22BE66A18();
      v33 = v61;
    }

    *(v33 + 16) = v35 + 1;
    *(v33 + v35 + 32) = 0;
    v3 = v65;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  sub_22C270BE4();
  sub_22C270C04();
  v36 = sub_22C1CF30C();
  v37 = sub_22BE3CC34();
  v30(v37);
  (v30)(v1, v22);
  if (v36)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE66A18();
      v33 = v62;
    }

    v39 = *(v33 + 16);
    v38 = *(v33 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_22BE1AAE4(v38);
      sub_22BE31778();
      sub_22BE66A18();
      v33 = v63;
    }

    *(v33 + 16) = v39 + 1;
    *(v33 + v39 + 32) = 1;
  }

  sub_22C270B94();
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (v0)
  {
    sub_22C270C24();
    sub_22BE18524();
    (*(v40 + 8))(v3);

LABEL_22:
    sub_22BE3CAD8();
    return;
  }

  v41 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE187DC();
  sub_22BE19DC4(v42, v43, v44, v41);
  sub_22C270BA4();
  v46 = v45;
  v47 = sub_22C270BB4();
  sub_22C1C05C8(v47);
  v49 = v48;
  sub_22C270BD4();
  v50 = sub_22BE18240();
  v51(v50);
  v52 = sub_22BE35838();
  v54 = v53(v52);
  v55 = 0;
  if (v54 == *MEMORY[0x277D1ED28])
  {
LABEL_21:
    (*(v69 + 8))(v68, v66);
    v56 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
    sub_22BE1A140();
    sub_22BE19DC4(v57, v58, v59, v41);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270C24();
    sub_22BE18524();
    (*(v60 + 8))(v3);
    sub_22BE23490(v70, v67 + v56, &qword_27D9090D0, &unk_22C294B30);
    *v67 = v46;
    *(v67 + 8) = v49;
    *(v67 + 16) = v55;
    *(v67 + 24) = v33;
    goto LABEL_22;
  }

  if (v54 == *MEMORY[0x277D1ED30])
  {
    v55 = 1;
    goto LABEL_21;
  }

  if (v54 == *MEMORY[0x277D1ED40])
  {
    v55 = 2;
    goto LABEL_21;
  }

  if (v54 == *MEMORY[0x277D1ED38])
  {
    v55 = 3;
    goto LABEL_21;
  }

  sub_22C274004();
  __break(1u);
}