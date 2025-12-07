void sub_1B5E31C7C()
{
  sub_1B5DFD8A8();
  v4 = v3;
  v32 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E34E38();
  v31 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E34DAC(v0 + 128);
  v33 = 0;
  v30 = *MEMORY[0x1E69C63E0];
  v11 = (v6 + 104);
  v12 = (v6 + 8);
  do
  {
    v13 = v4;
    v14 = v4 == 1;
    if (v4-- <= 1)
    {
      v16 = !v14;
      if ((v16 | v33))
      {
        goto LABEL_13;
      }

      v33 = 1;
      v4 = 1;
    }

    if (v13 >= *(*(v0 + 128) + 16))
    {
      __break(1u);
LABEL_13:
      if (qword_1EB90D178 != -1)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v24 = sub_1B5EA53B0();
        sub_1B5DFD794(v24, qword_1EB90D180);
        v25 = sub_1B5EA5380();
        v26 = sub_1B5EA5A50();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = sub_1B5E34E60();
          sub_1B5E34EA8(v27);
          sub_1B5E34F48(&dword_1B5DED000, v28, v29, "Invalid prompt configuration. Unable to find previous user message.");
          sub_1B5E34DF0();
        }

        __break(1u);
LABEL_17:
        sub_1B5E34CF4(&qword_1EB90D178, v10);
      }
    }

    v17 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E01C50(v17);
    v18 = sub_1B5E34ECC();
    v19(v18);
    sub_1B5EA5420();
    v20 = sub_1B5E34ECC();
    v21(v20, v31);
    (*v11)(v1, v30, v32);
    v22 = sub_1B5EA5590();
    v23 = *v12;
    (*v12)(v1, v32);
    v23(v2, v32);
  }

  while ((v22 & 1) == 0);
  sub_1B5DFD8C0();
}

void sub_1B5E31F74()
{
  sub_1B5DFD8A8();
  sub_1B5E1A084();
  v36 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7F8();
  v34 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E34E38();
  v35 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v15 = v14 - v13;
  v16 = v0 + 1;
  if (__OFADD__(v0, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B5E34DAC(v1 + 128);
  v17 = *(*(v1 + 128) + 16);
  if (v17 < v16)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    if (qword_1EB90D178 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v27 = sub_1B5EA53B0();
      sub_1B5DFD794(v27, qword_1EB90D180);
      v28 = sub_1B5EA5380();
      v29 = sub_1B5EA5A50();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_1B5E34E60();
        sub_1B5E34EA8(v30);
        sub_1B5E34F48(&dword_1B5DED000, v31, v32, "Invalid prompt configuration. Unable to find next user message.");
        sub_1B5E34DF0();
      }

      __break(1u);
LABEL_17:
      sub_1B5E34CF4(&qword_1EB90D178, v12);
    }
  }

  v33 = *MEMORY[0x1E69C63E0];
  v18 = (v4 + 8);
  v37 = v17 - 1;
  do
  {
    if (v37 == v0)
    {
      goto LABEL_13;
    }

    if (v16 < 0)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v19 = *(v1 + 128);
    if ((v0 + 1) >= *(v19 + 16))
    {
      goto LABEL_10;
    }

    v20 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E01C50(v20);
    (*(v10 + 16))(v15, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v22 + 72) * (v0 + 1), v35);
    sub_1B5EA5420();
    (*(v10 + 8))(v15, v35);
    v23 = sub_1B5E34ECC();
    v24(v23, v33, v36);
    v25 = sub_1B5EA5590();
    v26 = *v18;
    (*v18)(v34, v36);
    v26(v2, v36);
    ++v0;
  }

  while ((v25 & 1) == 0);
  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}

void sub_1B5E3229C()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7F8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v39 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  sub_1B5E34DAC(v1 + 128);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v1 + 128);
  if (*(v18 + 16) <= v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  sub_1B5E01C50(v19);
  v32 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v38 = *(v21 + 72);
  v36 = *(v13 + 16);
  v36(v17, v18 + v32 + v38 * v3, v39);
  sub_1B5EA5420();
  v35 = *(v13 + 8);
  v35(v17, v39);
  v34 = *MEMORY[0x1E69C63E0];
  v33 = *(v6 + 104);
  v33(v10);
  sub_1B5E34F04();
  v22 = sub_1B5EA5590();
  v23 = *(v6 + 8);
  v23(v10, v4);
  v24 = sub_1B5E34F10();
  (v23)(v24);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v3;
  v26 = *(*(v1 + 128) + 16);
  if (v26 > v25)
  {
    v37 = v1;
    v27 = v25 + 1;
    v28 = v32 + v38 * (v25 + 1);
    while (1)
    {
      if (v26 == v27)
      {
LABEL_10:
        sub_1B5DFD8C0();
        return;
      }

      if (v27 >= v26)
      {
        break;
      }

      v29 = *(v37 + 128);
      if (v27 >= *(v29 + 16))
      {
        goto LABEL_12;
      }

      v36(v17, v29 + v28, v39);
      sub_1B5EA5420();
      v35(v17, v39);
      (v33)(v10, v34, v4);
      sub_1B5E34F04();
      v30 = sub_1B5EA5590();
      v23(v10, v4);
      v31 = sub_1B5E34F10();
      (v23)(v31);
      ++v27;
      v28 += v38;
      if (v30)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1B5E32610()
{

  v1 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  sub_1B5EA5160();
  sub_1B5DF5EB8();
  (*(v2 + 8))(v0 + v1);

  sub_1B5E34D60();
  sub_1B5E34A98();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B5E326D0()
{
  sub_1B5E32610();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B5E32724(uint64_t a1)
{
  result = sub_1B5EA5160();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1B5E32870(uint64_t a1)
{
  sub_1B5EA5450();
  if (v1 <= 0x3F)
  {
    sub_1B5E328FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5E328FC(uint64_t a1)
{
  if (!qword_1EB90D1A8)
  {
    sub_1B5EA47C0();
    v1 = sub_1B5EA5AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB90D1A8);
    }
  }
}

__n128 sub_1B5E32954(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B5E32968(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5E329A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B5E32A70(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B5E32B14(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1B5E32B5C()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v24 = v3;
  v4 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  v23 = v0;
  v11 = *v0;
  sub_1B5E34CDC();
  sub_1B5E34900(v12, v13, MEMORY[0x1E69C6188]);
  v14 = sub_1B5EA55F0();
  v25 = v11;
  v26 = v11 + 56;
  v15 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v16 = v14 & v15;
    if (((1 << (v14 & v15)) & *(v26 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v27 = *v23;
      sub_1B5E334DC(v10, v16, isUniquelyReferenced_nonNull_native);
      *v23 = v27;
      (*(v6 + 32))(v24, v2, v4);
      goto LABEL_7;
    }

    v17 = *(v6 + 72) * v16;
    v18 = *(v6 + 16);
    v18(v10, *(v25 + 48) + v17, v4);
    sub_1B5E34CDC();
    sub_1B5E34900(&qword_1EB90E618, v19, MEMORY[0x1E69C6190]);
    v20 = sub_1B5EA5660();
    v21 = *(v6 + 8);
    v21(v10, v4);
    if (v20)
    {
      break;
    }

    v14 = v16 + 1;
  }

  v21(v2, v4);
  v18(v24, *(v25 + 48) + v17, v4);
LABEL_7:
  sub_1B5DFD8C0();
}

BOOL sub_1B5E32DE0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v8 = sub_1B5EA6020();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1B5EA5F00() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  v17 = sub_1B5E34F10();
  sub_1B5E33768(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1B5E32F28(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1B5EA4EE0();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  result = sub_1B5EA5B80();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
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
  v34 = v3 + 32;
  v14 = result + 56;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1B5E41824(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
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
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
    result = sub_1B5EA55F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B5E33280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B80();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
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
  v12 = result + 56;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1B5E41824(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
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
    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B5E334DC(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1B5EA4EE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B5E32F28(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1B5E33C5C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
      v13 = sub_1B5EA55F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1B5E34900(&qword_1EB90E618, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
        v15 = sub_1B5EA5660();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1B5E338D0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1B5EA5F30();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_1B5E33768(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B5E33280(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B5E33F74(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1B5EA5FD0();
      sub_1B5EA5710();
      result = sub_1B5EA6020();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B5EA5F00() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B5E33B04();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B5EA5F30();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1B5E338D0()
{
  v1 = v0;
  v2 = sub_1B5EA4EE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  v6 = *v0;
  v7 = sub_1B5EA5B70();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1B5E33B04()
{
  v1 = v0;
  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  v2 = *v0;
  v3 = sub_1B5EA5B70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_1B5E33C5C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1B5EA4EE0();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  v7 = sub_1B5EA5B80();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
        result = sub_1B5EA55F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
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

          v2 = v28;
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

  return result;
}

uint64_t sub_1B5E33F74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B80();
  v5 = result;
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
    v11 = result + 56;
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
        sub_1B5EA5FD0();

        sub_1B5EA5710();
        result = sub_1B5EA6020();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

  return result;
}

uint64_t sub_1B5E341A8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B5E342A8(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1B5EA5450();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1B5E342A8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_1B5E6D814();
    *v1 = v5;
  }
}

uint64_t sub_1B5E34310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B5EA4EE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  v25 = a1;
  v9 = sub_1B5EA55F0();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_1B5DF3658(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1B5E34900(&qword_1EB90E618, MEMORY[0x1E69C6178], MEMORY[0x1E69C6190]);
    v13 = sub_1B5EA5660();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B5E338D0();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1B5E34584(v11);
  v14 = 0;
  *v16 = v26;
  return sub_1B5DF3658(v15, v14, 1, v4);
}

uint64_t sub_1B5E34584(int64_t a1)
{
  v3 = sub_1B5EA4EE0();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1B5EA5B20();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
        v24 = sub_1B5EA55F0();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_1B5E34890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E34900(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E34948()
{
  sub_1B5E34EC0();
  sub_1B5E1A084();
  v1 = sub_1B5EA4EE0();
  sub_1B5E01CF8(v1);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1B5E34CD8;
  v4 = sub_1B5E34E48();

  return sub_1B5E2F150(v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E34A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E34A98()
{
  v1 = sub_1B5E1A084();
  v2(v1);
  sub_1B5DF5EB8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B5E34AEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  v4 = sub_1B5DFA488();
  v5(v4);
  return a2;
}

uint64_t sub_1B5E34B48()
{
  sub_1B5E34EC0();
  v2 = *(v0 + 40);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B5E34BF0;
  v5 = sub_1B5E34E48();

  return sub_1B5E2F2AC(v5, v6, v7, v8, v2);
}

uint64_t sub_1B5E34BF0()
{
  sub_1B5E01DFC();
  v1 = *v0;
  sub_1B5E34F1C();
  *v2 = v1;

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E34CF4(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E34DAC(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_1B5E34DF0()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E34E60()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E34E78(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1B5E34E90()
{

  return swift_task_alloc();
}

void sub_1B5E34F28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1B5E34F48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B5E34F68(uint64_t a1)
{
  v3 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = (&v33 - v4);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v47 = MEMORY[0x1E69E7CC0];
  sub_1B5E5BEDC(0, v5, 0);
  v6 = v47;
  v7 = sub_1B5E4287C(a1);
  v9 = v8;
  v11 = v10;
  v12 = a1 + 64;
  v37 = sub_1B5EA5560();
  v38 = a1;
  v13 = 0;
  v34 = v9;
  v35 = v5;
  v33 = a1 + 72;
  v36 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v41 = v11;
    v14 = v7 >> 6;
    if ((*(v12 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 36) != v9)
    {
      goto LABEL_24;
    }

    v43 = v9;
    v44 = 1 << v7;
    v42 = v13;
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + 16 * v7);
    v17 = v16[1];
    v45 = *v16;
    v18 = (v15 + 16 * v7);
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();
    sub_1B5E35720(v19, v20);
    sub_1B5E35720(v19, v20);

    sub_1B5E24A58(v19, v20);

    sub_1B5E35720(v19, v20);
    sub_1B5E24A58(v19, v20);
    v21 = v46;
    *v46 = v45;
    v21[1] = v17;
    sub_1B5E35778(&unk_1EB90E980, MEMORY[0x1E69C63A0], MEMORY[0x1E69C63B0]);
    sub_1B5EA4670();
    if (v1)
    {
      goto LABEL_28;
    }

    sub_1B5E24A58(v19, v20);
    v47 = v6;
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1B5E5BEDC((v22 > 1), v23 + 1, 1);
      v6 = v47;
    }

    *(v6 + 16) = v23 + 1;
    sub_1B5E34890(v46, v6 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23);
    a1 = v38;
    v24 = 1 << *(v38 + 32);
    if (v7 >= v24)
    {
      goto LABEL_25;
    }

    v12 = v36;
    v25 = *(v36 + 8 * v14);
    if ((v25 & v44) == 0)
    {
      goto LABEL_26;
    }

    if (*(v38 + 36) != v43)
    {
      goto LABEL_27;
    }

    v26 = v25 & (-2 << (v7 & 0x3F));
    if (v26)
    {
      v24 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v14 << 6;
      v28 = v14 + 1;
      v29 = (v33 + 8 * v14);
      while (v28 < (v24 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_1B5E427F8(v7, v43, v41 & 1);
          v24 = __clz(__rbit64(v30)) + v27;
          goto LABEL_20;
        }
      }

      sub_1B5E427F8(v7, v43, v41 & 1);
    }

LABEL_20:
    v11 = 0;
    v13 = v42 + 1;
    v7 = v24;
    v9 = v34;
    if (v42 + 1 == v35)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B5E3537C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1B5DF33E0(a2, a3);
    v5 = sub_1B5EA5CE0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1B5E35420(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_1B5DF33E0(&qword_1EB90E948, &qword_1B5EB6698);
    v5 = sub_1B5EA5CE0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1B5E42014(a1, a2, 1, &v7);

  return v7;
}

uint64_t sub_1B5E35504()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error + 8));
  return v1;
}

uint64_t sub_1B5E3555C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t GenerativeErrorXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return GenerativeErrorXPCEnvelope.init(sealing:)();
}

uint64_t GenerativeErrorXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA5130();
  sub_1B5E4345C();
  sub_1B5E35778(v0, v1, MEMORY[0x1E69A0A70]);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E4335C();
  v4 = sub_1B5DFA488();
  v5(v4);
  return 0;
}

uint64_t GenerativeErrorXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA5130();
  sub_1B5E435FC();
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E4345C();
  v5 = sub_1B5E35778(v3, v4, MEMORY[0x1E69A0A78]);
  sub_1B5E432D8(v5);
  v6 = sub_1B5E26234();
  result = sub_1B5E24A58(v6, v7);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B5E35720(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1B5E35778(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t static GenerativeErrorXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E640 = a1;
  return result;
}

uint64_t sub_1B5E358A8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E640;
  return result;
}

uint64_t sub_1B5E358F4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E640 = v1;
  return result;
}

id GenerativeErrorXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return GenerativeErrorXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E35A84()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice + 8));
  return v1;
}

uint64_t sub_1B5E35ADC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void ToolChoiceXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  ToolChoiceXPCEnvelope.init(sealing:)();
}

void ToolChoiceXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  sub_1B5EA5160();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  sub_1B5EA4850();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1B5E431F0();
  v4(v3);
  sub_1B5E4375C();
  sub_1B5EA4840();
  sub_1B5E4348C();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA570]);
  sub_1B5E26048();
  sub_1B5EA4680();
  v7 = sub_1B5E43244();
  v8(v7);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1B5E43304();
  v10(v9);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t ToolChoiceXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  sub_1B5EA4850();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  sub_1B5E4348C();
  sub_1B5E35778(v4, v5, MEMORY[0x1E69DA578]);
  v6 = sub_1B5E432C4();
  sub_1B5E436F4(v6, v7, v8, v9, v10);
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    sub_1B5EA4830();
    v11 = sub_1B5E43618();
    return v12(v11);
  }

  return result;
}

uint64_t static ToolChoiceXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E641 = a1;
  return result;
}

uint64_t sub_1B5E35EC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E641;
  return result;
}

uint64_t sub_1B5E35F14(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E641 = v1;
  return result;
}

id ToolChoiceXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ToolChoiceXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E35FAC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B5E433C0();
  v8 = sub_1B5EA5670();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_1B5EA5AF0();
    v10 = swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  *&v24 = sub_1B5E43638(v10, v11, v12, v13, v14, v15, v16, v17, v28.receiver, v28.super_class, v29, *(&v29 + 1), v30, *(&v30 + 1), v31).n128_u64[0];
  if (!v25)
  {

    sub_1B5DF4428(v32, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_9:
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((sub_1B5E43734(&v29, v18, v19, MEMORY[0x1E6969080], v20, v21, v22, v23, v24) & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v4[*a4] = v29;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, sel_init);

  return v26;
}

uint64_t sub_1B5E361F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool + 8));
  return v1;
}

uint64_t sub_1B5E36248(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void ToolTypeXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  ToolTypeXPCEnvelope.init(sealing:)();
}

void ToolTypeXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  sub_1B5EA5350();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v2 = sub_1B5EA46B0();
  v3 = sub_1B5E01CF8(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  sub_1B5EA49C0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B5E431F0();
  v6(v5);
  sub_1B5EA46A0();
  sub_1B5EA49B0();
  sub_1B5E434A4();
  sub_1B5E35778(v7, v8, MEMORY[0x1E69DA5C0]);
  sub_1B5E26048();
  sub_1B5EA4680();
  v9 = sub_1B5E43244();
  v10(v9);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  objc_msgSendSuper2(&v13, sel_init);
  v11 = sub_1B5E43304();
  v12(v11);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

void ToolTypeXPCEnvelope.unseal()()
{
  sub_1B5DFD8A8();
  sub_1B5DF5E80();
  v2 = sub_1B5EA49C0();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E4321C();
  sub_1B5EA46B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v7 = v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool;
  v8 = *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v9 = *(v7 + 8);
  sub_1B5E35720(v8, v9);
  sub_1B5E434A4();
  sub_1B5E35778(v10, v11, MEMORY[0x1E69DA5C8]);
  sub_1B5EA4670();
  sub_1B5E24A58(v8, v9);
  sub_1B5EA49A0();
  (*(v4 + 8))(v1, v2);
  sub_1B5EA4690();
  v12 = sub_1B5E433C0();
  v13(v12);
  sub_1B5DFD8C0();
}

uint64_t static ToolTypeXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E642 = a1;
  return result;
}

uint64_t sub_1B5E36728@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E642;
  return result;
}

uint64_t sub_1B5E36774(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E642 = v1;
  return result;
}

id ToolTypeXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ToolTypeXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E3690C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8));
  return v1;
}

uint64_t sub_1B5E369D4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E25DA0(v4, v5);
}

void SchemaXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  SchemaXPCEnvelope.init(sealing:)();
}

void SchemaXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_1B5EA51B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E4321C();
  v6 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E4332C();
  v8 = sub_1B5EA5290();
  sub_1B5DF5DA8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v14 = v13 - v12;
  v15 = &v2[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema];
  *&v2[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema] = xmmword_1B5EB4730;
  sub_1B5E11D08(v4, v1, &qword_1EB90E6A0, &qword_1B5EB60D8);
  if (sub_1B5DF46E0(v1, 1, v8) == 1)
  {
    sub_1B5DF4428(v1, &qword_1EB90E6A0, &qword_1B5EB60D8);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v18 = sub_1B5E436DC();
    v19(v18);
    sub_1B5EA5270();
    sub_1B5E433E4();
    sub_1B5E35778(v20, v21, MEMORY[0x1E69A0BA0]);
    v16 = sub_1B5EA4680();
    v17 = v22;
    v23 = sub_1B5E26048();
    v24(v23);
    (*(v10 + 8))(v14, v8);
  }

  v25 = *v15;
  v26 = v15[1];
  *v15 = v16;
  v15[1] = v17;
  sub_1B5E25DA0(v25, v26);
  v28.receiver = v2;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_init);
  sub_1B5DF4428(v4, &qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t SchemaXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  sub_1B5EA51B0();
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5E2829C();
  if (*(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8) >> 60 == 15)
  {
    sub_1B5EA5290();
    v2 = sub_1B5E43628();

    return sub_1B5DF3658(v2, v3, v4, v5);
  }

  else
  {
    v7 = sub_1B5E433C0();
    sub_1B5E35720(v7, v8);
    sub_1B5E433E4();
    sub_1B5E35778(v9, v10, MEMORY[0x1E69A0BB0]);
    sub_1B5EA4670();
    sub_1B5EA5280();
    v11 = sub_1B5E433C0();
    sub_1B5E25DA0(v11, v12);
    sub_1B5EA5290();
    v13 = sub_1B5E34D9C();
    return sub_1B5DF3658(v13, v14, v15, v16);
  }
}

uint64_t static SchemaXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E643 = a1;
  return result;
}

uint64_t sub_1B5E36F18@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E643;
  return result;
}

uint64_t sub_1B5E36F64(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E643 = v1;
  return result;
}

id SchemaXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return SchemaXPCEnvelope.init(coder:)();
}

id SchemaXPCEnvelope.init(coder:)()
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema];
  *&v1[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema] = xmmword_1B5EB4730;
  v4 = sub_1B5E43710();
  v5 = [v0 decodeObjectForKey_];

  if (v5)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1B5DF4428(v15, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = xmmword_1B5EB4730;
    goto LABEL_9;
  }

  v6 = v11;
LABEL_9:
  v7 = *v3;
  v8 = v3[1];
  *v3 = v6;
  sub_1B5E25DA0(v7, v8);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);

  return v9;
}

Swift::Void __swiftcall SchemaXPCEnvelope.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8) >> 60 != 15)
  {
    v2 = sub_1B5E43768();
    sub_1B5E35720(v2, v3);
    sub_1B5E43768();
    sub_1B5EA42C0();
    v4 = sub_1B5E43768();
    sub_1B5E25DA0(v4, v5);
  }

  sub_1B5E43710();
  sub_1B5E436E8();
  v6 = sub_1B5E43780();
  [v6 v7];
  swift_unknownObjectRelease();
}

id SchemaXPCEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E372D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer + 8));
  return v1;
}

uint64_t sub_1B5E37330(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)();
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4D20();
  sub_1B5E43474();
  sub_1B5E35778(v0, v1, MEMORY[0x1E69A13E0]);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E4335C();
  v4 = sub_1B5DFA488();
  v5(v4);
  return 0;
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4D20();
  sub_1B5E435FC();
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E43474();
  v5 = sub_1B5E35778(v3, v4, MEMORY[0x1E69A13E8]);
  sub_1B5E432D8(v5);
  v6 = sub_1B5E26234();
  result = sub_1B5E24A58(v6, v7);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static StringRenderedPromptSanitizerXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E644 = a1;
  return result;
}

uint64_t sub_1B5E375DC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E644;
  return result;
}

uint64_t sub_1B5E37628(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E644 = v1;
  return result;
}

id StringRenderedPromptSanitizerXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return StringRenderedPromptSanitizerXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E377A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer + 8));
  return v1;
}

uint64_t sub_1B5E377F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t StringResponseSanitizerXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return StringResponseSanitizerXPCEnvelope.init(sealing:)();
}

uint64_t StringResponseSanitizerXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4CC0();
  sub_1B5E43414();
  sub_1B5E35778(v0, v1, MEMORY[0x1E69A13A8]);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E4335C();
  v4 = sub_1B5DFA488();
  v5(v4);
  return 0;
}

uint64_t StringResponseSanitizerXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4CC0();
  sub_1B5E435FC();
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E43414();
  v5 = sub_1B5E35778(v3, v4, MEMORY[0x1E69A13B0]);
  sub_1B5E432D8(v5);
  v6 = sub_1B5E26234();
  result = sub_1B5E24A58(v6, v7);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static StringResponseSanitizerXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E645 = a1;
  return result;
}

uint64_t sub_1B5E37AA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E645;
  return result;
}

uint64_t sub_1B5E37AF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E645 = v1;
  return result;
}

id StringResponseSanitizerXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return StringResponseSanitizerXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E37C68()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document + 8));
  return v1;
}

uint64_t sub_1B5E37CC0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t DocumentIdentifierXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return DocumentIdentifierXPCEnvelope.init(sealing:)();
}

uint64_t DocumentIdentifierXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4EE0();
  sub_1B5E433FC();
  sub_1B5E35778(v0, v1, MEMORY[0x1E69C6180]);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E4335C();
  v4 = sub_1B5DFA488();
  v5(v4);
  return 0;
}

uint64_t DocumentIdentifierXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4EE0();
  sub_1B5E435FC();
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E433FC();
  v5 = sub_1B5E35778(v3, v4, MEMORY[0x1E69C6198]);
  sub_1B5E432D8(v5);
  v6 = sub_1B5E26234();
  result = sub_1B5E24A58(v6, v7);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static DocumentIdentifierXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E646 = a1;
  return result;
}

uint64_t sub_1B5E37F6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E646;
  return result;
}

uint64_t sub_1B5E37FB8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E646 = v1;
  return result;
}

id DocumentIdentifierXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return DocumentIdentifierXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E38160()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration + 8));
  return v1;
}

void DocumentRegistrationXPCResponse.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentRegistrationXPCResponse.init(sealing:)();
}

void DocumentRegistrationXPCResponse.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  sub_1B5EA4ED0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  sub_1B5EA4A50();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1B5E431F0();
  v4(v3);
  sub_1B5E4375C();
  sub_1B5EA4A40();
  sub_1B5E43504();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA608]);
  sub_1B5E26048();
  sub_1B5EA4680();
  v7 = sub_1B5E43244();
  v8(v7);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration);
  objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1B5E43304();
  v10(v9);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t DocumentRegistrationXPCResponse.unseal()()
{
  sub_1B5E4367C();
  v1 = sub_1B5EA4A50();
  sub_1B5DF5DA8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E2829C();
  sub_1B5E43504();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA610]);
  sub_1B5E432C4();
  sub_1B5EA4670();
  sub_1B5E43670();
  MEMORY[0x1B8C89650]();
  return (*(v3 + 8))(v0, v1);
}

uint64_t static DocumentRegistrationXPCResponse.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E647 = a1;
  return result;
}

uint64_t sub_1B5E38570@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E647;
  return result;
}

uint64_t sub_1B5E385BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E647 = v1;
  return result;
}

id DocumentRegistrationXPCResponse.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return DocumentRegistrationXPCResponse.init(coder:)(v1);
}

uint64_t sub_1B5E38774()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages + 8));
  return v1;
}

void sub_1B5E387B4()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = &qword_1EB90E938;
  v5 = &qword_1B5EB6690;
  v6 = sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E4332C();
  v8 = sub_1B5EA5470();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5E437AC();
  if (sub_1B5DF46E0(v2, 1, v8) == 1)
  {
    sub_1B5DF4428(v2, &qword_1EB90E938, &qword_1B5EB6690);
    v4 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v10 = sub_1B5E436A0();
    v11(v10);
    sub_1B5E434BC();
    sub_1B5E35778(v12, v13, MEMORY[0x1E69C6200]);
    sub_1B5E433C0();
    sub_1B5EA4680();
    v14 = sub_1B5E433A8();
    v15(v14);
  }

  v16 = &v1[OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages];
  *v16 = v4;
  v16[1] = v5;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  sub_1B5DF4428(v0, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t ChatMessagesXPCEnvelope.unseal()()
{
  sub_1B5E435FC();
  v2 = sub_1B5EA5470();
  if (v1 >> 60 == 15)
  {
    sub_1B5E43628();
    sub_1B5E437EC();

    return sub_1B5DF3658(v3, v4, v5, v6);
  }

  else
  {
    v9 = sub_1B5E26234();
    sub_1B5E35720(v9, v10);
    sub_1B5E434BC();
    v13 = sub_1B5E35778(v11, v12, MEMORY[0x1E69C6208]);
    sub_1B5E435D0(v13);
    if (v0)
    {
      sub_1B5E43234();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v14 = sub_1B5E34D9C();
      sub_1B5DF3658(v14, v15, v16, v2);
      sub_1B5E26234();
      sub_1B5E437EC();

      return sub_1B5E25DA0(v17, v18);
    }
  }

  return result;
}

uint64_t static ChatMessagesXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E648 = a1;
  return result;
}

uint64_t sub_1B5E38B60@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E648;
  return result;
}

uint64_t sub_1B5E38BAC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E648 = v1;
  return result;
}

id ChatMessagesXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ChatMessagesXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E38D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B5EA42C0();
    v5 = sub_1B5DFA488();
    sub_1B5E25DA0(v5, v6);
  }

  return v4;
}

uint64_t sub_1B5E38DBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template + 8));
  return v1;
}

void sub_1B5E38DFC()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = &qword_1EB90E928;
  v5 = &qword_1B5EB6688;
  v6 = sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E4332C();
  v8 = sub_1B5EA4E40();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5E437AC();
  if (sub_1B5DF46E0(v2, 1, v8) == 1)
  {
    sub_1B5DF4428(v2, &qword_1EB90E928, &qword_1B5EB6688);
    v4 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v10 = sub_1B5E436A0();
    v11(v10);
    sub_1B5E43444();
    sub_1B5E35778(v12, v13, MEMORY[0x1E69A14F0]);
    sub_1B5E433C0();
    sub_1B5EA4680();
    v14 = sub_1B5E433A8();
    v15(v14);
  }

  v16 = &v1[OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template];
  *v16 = v4;
  v16[1] = v5;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  sub_1B5DF4428(v0, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t TemplateXPCEnvelope.unseal()()
{
  sub_1B5E435FC();
  v2 = sub_1B5EA4E40();
  if (v1 >> 60 == 15)
  {
    sub_1B5E43628();
    sub_1B5E437EC();

    return sub_1B5DF3658(v3, v4, v5, v6);
  }

  else
  {
    v9 = sub_1B5E26234();
    sub_1B5E35720(v9, v10);
    sub_1B5E43444();
    v13 = sub_1B5E35778(v11, v12, MEMORY[0x1E69A14F8]);
    sub_1B5E435D0(v13);
    if (v0)
    {
      sub_1B5E43234();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v14 = sub_1B5E34D9C();
      sub_1B5DF3658(v14, v15, v16, v2);
      sub_1B5E26234();
      sub_1B5E437EC();

      return sub_1B5E25DA0(v17, v18);
    }
  }

  return result;
}

uint64_t static TemplateXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E649 = a1;
  return result;
}

uint64_t sub_1B5E391A8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E649;
  return result;
}

uint64_t sub_1B5E391F4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E649 = v1;
  return result;
}

id TemplateXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return TemplateXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E39288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E433C0();
  v8 = sub_1B5EA5670();
  v9 = [v4 decodeObjectForKey_];

  if (v9)
  {
    sub_1B5EA5AF0();
    v10 = swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  *&v24 = sub_1B5E43638(v10, v11, v12, v13, v14, v15, v16, v17, v29, *(&v29 + 1), v30.receiver, v30.super_class, v31, *(&v31 + 1), v32).n128_u64[0];
  if (!v25)
  {
    sub_1B5DF4428(v33, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  if ((sub_1B5E43734(&v29, v18, v19, MEMORY[0x1E6969080], v20, v21, v22, v23, v24) & 1) == 0)
  {
LABEL_8:
    v26 = xmmword_1B5EB4730;
    goto LABEL_9;
  }

  v26 = v29;
LABEL_9:
  *&v5[*a4] = v26;
  v30.receiver = v5;
  v30.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v30, sel_init);

  return v27;
}

void sub_1B5E393E4(uint64_t a1, void *a2)
{
  if (*(v2 + *a2 + 8) >> 60 != 15)
  {
    sub_1B5EA42C0();
  }

  sub_1B5E43768();
  sub_1B5EA5670();
  sub_1B5E436E8();
  v3 = sub_1B5E43780();
  [v3 v4];
  swift_unknownObjectRelease();
}

void sub_1B5E395AC()
{
  sub_1B5DFD8A8();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B5DF33E0(&qword_1EB90E900, &qword_1B5EB6668);
  sub_1B5DF5EB8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - v11;
  if (!v2)
  {
    v53 = 0;
LABEL_26:
    *&v0[OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables] = v53;
    v74.receiver = v0;
    v74.super_class = ObjectType;
    objc_msgSendSuper2(&v74, sel_init);
    sub_1B5DFD8C0();
    return;
  }

  v12 = *(v2 + 16);
  if (!v12)
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v53 = sub_1B5E3537C(v13, &qword_1EB90E910, &qword_1B5EB6670, sub_1B5E41D14);
    goto LABEL_26;
  }

  v61 = v10;
  v54 = ObjectType;
  v55 = v0;
  v73 = MEMORY[0x1E69E7CC0];
  sub_1B5E5BF74(0, v12, 0);
  v13 = v73;
  v16 = sub_1B5E4287C(v2);
  v17 = 0;
  v72 = 0;
  v18 = v2 + 64;
  v57 = v14;
  v58 = v12;
  v56 = v2 + 72;
  v62 = v2;
  v59 = v4;
  v60 = v2 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v2 + 32))
  {
    if ((*(v18 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v2 + 36) != v14)
    {
      goto LABEL_29;
    }

    v67 = 1 << v16;
    v68 = v16 >> 6;
    v65 = v17;
    v66 = v14;
    v64 = v15;
    v71 = v13;
    v19 = *(v4 + 48);
    v20 = *(v2 + 56);
    v21 = (*(v2 + 48) + 16 * v16);
    v23 = *v21;
    v22 = v21[1];
    v24 = sub_1B5EA5560();
    sub_1B5DF5DA8();
    v26 = v25;
    v28 = v20 + *(v27 + 72) * v16;
    v29 = v63;
    (*(v25 + 16))(&v63[v19], v28, v24);
    v30 = v61;
    *v61 = v23;
    *(v30 + 8) = v22;
    (*(v26 + 32))(v30 + *(v4 + 48), &v29[v19], v24);
    v31 = sub_1B5E34F10();
    sub_1B5E11D08(v31, v32, &qword_1EB90E900, &qword_1B5EB6668);
    v33 = *v8;
    v69 = v8[1];
    v70 = v33;
    sub_1B5E35778(&qword_1EB90E908, MEMORY[0x1E69C63A0], MEMORY[0x1E69C63A8]);

    v34 = v8;
    v35 = v72;
    v36 = sub_1B5EA4680();
    v72 = v35;
    if (v35)
    {
      goto LABEL_33;
    }

    v38 = v36;
    v39 = v37;
    v40 = *(v4 + 48);
    sub_1B5DF4428(v30, &qword_1EB90E900, &qword_1B5EB6668);
    v8 = v34;
    (*(v26 + 8))(v34 + v40, v24);
    v13 = v71;
    v73 = v71;
    v42 = *(v71 + 16);
    v41 = *(v71 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1B5E5BF74((v41 > 1), v42 + 1, 1);
      v13 = v73;
    }

    *(v13 + 16) = v42 + 1;
    v43 = (v13 + 32 * v42);
    v44 = v69;
    v43[4] = v70;
    v43[5] = v44;
    v43[6] = v38;
    v43[7] = v39;
    v2 = v62;
    v45 = 1 << *(v62 + 32);
    if (v16 >= v45)
    {
      goto LABEL_30;
    }

    v18 = v60;
    v46 = *(v60 + 8 * v68);
    if ((v46 & v67) == 0)
    {
      goto LABEL_31;
    }

    if (*(v62 + 36) != v66)
    {
      goto LABEL_32;
    }

    v47 = v46 & (-2 << (v16 & 0x3F));
    if (v47)
    {
      v45 = __clz(__rbit64(v47)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v4 = v59;
    }

    else
    {
      v48 = v68 << 6;
      v49 = v68 + 1;
      v50 = (v56 + 8 * v68);
      v4 = v59;
      while (v49 < (v45 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          sub_1B5E427F8(v16, v66, v64 & 1);
          v45 = __clz(__rbit64(v51)) + v48;
          goto LABEL_21;
        }
      }

      sub_1B5E427F8(v16, v66, v64 & 1);
    }

LABEL_21:
    v15 = 0;
    v17 = v65 + 1;
    v16 = v45;
    v14 = v57;
    if (v65 + 1 == v58)
    {

      v0 = v55;
      ObjectType = v54;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_unexpectedError();
  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall BindingVariablesXPCEnvelope.unseal()()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables);
  if (v1)
  {
    sub_1B5E34F68(v1);
    sub_1B5E43554();
    v1 = sub_1B5E3537C(v2, v3, v4, v5);
  }

  result.value._rawValue = v1;
  result.is_nil = v6;
  return result;
}

uint64_t static BindingVariablesXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64A = a1;
  return result;
}

uint64_t sub_1B5E39BD0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64A;
  return result;
}

uint64_t sub_1B5E39C1C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64A = v1;
  return result;
}

id BindingVariablesXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return BindingVariablesXPCEnvelope.init(coder:)();
}

id BindingVariablesXPCEnvelope.init(coder:)()
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v3 = sub_1B5E437CC();
  v4 = [v0 decodeObjectForKey_];

  if (v4)
  {
    sub_1B5EA5AF0();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_1B5E43638(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v26.receiver, v26.super_class, v27, *(&v27 + 1), v28);
  if (!v13)
  {
    sub_1B5DF4428(v29, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  v14 = sub_1B5DF33E0(&qword_1EB90E748, &qword_1B5EB60E0);
  if ((sub_1B5E43734(&v25, v15, v16, v14, v17, v18, v19, v20) & 1) == 0)
  {
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  v21 = v25;
LABEL_9:
  *&v1[OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables] = v21;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  return v22;
}

Swift::Void __swiftcall BindingVariablesXPCEnvelope.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables))
  {
    sub_1B5EA55C0();
  }

  sub_1B5E437CC();
  sub_1B5E436E8();
  v2 = sub_1B5E43780();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_1B5E39F38()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters + 8));
  return v1;
}

void sub_1B5E39F78()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  sub_1B5EA4820();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  sub_1B5EA4A20();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1B5E431F0();
  v4(v3);
  sub_1B5E4375C();
  sub_1B5EA4A10();
  sub_1B5E434D4();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA5F0]);
  sub_1B5E26048();
  sub_1B5EA4680();
  v7 = sub_1B5E43244();
  v8(v7);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters);
  objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1B5E43304();
  v10(v9);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t SamplingParametersXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  v1 = sub_1B5EA4A20();
  sub_1B5DF5DA8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E2829C();
  sub_1B5E434D4();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA5F8]);
  sub_1B5E432C4();
  sub_1B5EA4670();
  sub_1B5E43670();
  sub_1B5EA4A00();
  return (*(v3 + 8))(v0, v1);
}

uint64_t static SamplingParametersXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64B = a1;
  return result;
}

uint64_t sub_1B5E3A31C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64B;
  return result;
}

uint64_t sub_1B5E3A368(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64B = v1;
  return result;
}

id SamplingParametersXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return SamplingParametersXPCEnvelope.init(coder:)(v1);
}

void sub_1B5E3A450()
{
  sub_1B5E436B8();
  v1 = sub_1B5EA42C0();
  sub_1B5EA5670();
  sub_1B5E436E8();
  [v0 encodeObject:v1 forKey:?];
}

uint64_t sub_1B5E3A658@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  v4 = sub_1B5EA42B0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B5E3A774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  v4 = sub_1B5EA42B0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B5E3A8D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8));
  return v1;
}

uint64_t sub_1B5E3A928(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void DocumentXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentXPCEnvelope.init(sealing:)();
}

void DocumentXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E2624C();
  ObjectType = swift_getObjectType();
  v3 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5EA4E60();
  v7 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url], v1, v3);
  if ((sub_1B5EA4E50() & 0x80000000) != 0)
  {
    sub_1B5EA4E90();
    sub_1B5DF5EB8();
    (*(v16 + 8))(v0);
    (*(v5 + 8))(&v0[v7], v3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle] = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:sub_1B5EA4E50() closeOnDealloc:0];
    sub_1B5EA4E80();
    sub_1B5DF33E0(&qword_1EB90E760, &qword_1B5EB60E8);
    sub_1B5E3AE00(&unk_1EB90E768, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    v8 = sub_1B5EA4680();
    v10 = v9;

    v18 = sub_1B5EA4E80();
    v11 = sub_1B5EA4680();
    v13 = v12;

    sub_1B5E24A58(v8, v10);
    v14 = &v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata];
    *v14 = v11;
    v14[1] = v13;
    v17.receiver = v0;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, sel_init);
    sub_1B5EA4E90();
    sub_1B5DF5EB8();
    (*(v15 + 8))(v0);
  }

  sub_1B5DFD8C0();
}

uint64_t DocumentXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v2 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5DF33E0(&qword_1EB90E760, &qword_1B5EB60E8);
  v6 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v7 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8);
  sub_1B5E35720(v6, v7);
  sub_1B5E3AE00(&qword_1EB90E778, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1B5EA4670();
  sub_1B5E24A58(v6, v7);
  v8 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  (*(v4 + 16))(v1, v0 + v8, v2);
  [*(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle) fileDescriptor];
  return sub_1B5EA4EA0();
}

uint64_t sub_1B5E3AE00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E760, &qword_1B5EB60E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DocumentXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64C = a1;
  return result;
}

uint64_t sub_1B5E3AF54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64C;
  return result;
}

uint64_t sub_1B5E3AFA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64C = v1;
  return result;
}

void DocumentXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentXPCEnvelope.init(coder:)();
}

void DocumentXPCEnvelope.init(coder:)()
{
  sub_1B5DFD8A8();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E01D10();
  v8 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  v12 = sub_1B5EA5670();
  v13 = [v4 decodeObjectForKey_];

  if (v13)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_1B5E43608();
  if (!v14)
  {

    sub_1B5DF4428(v35, &qword_1EB90E668, &qword_1B5EB60D0);
    sub_1B5DF3658(v2, 1, 1, v8);
    goto LABEL_8;
  }

  v15 = swift_dynamicCast();
  sub_1B5DF3658(v2, v15 ^ 1u, 1, v8);
  if (sub_1B5DF46E0(v2, 1, v8) == 1)
  {

LABEL_8:
    sub_1B5DF4428(v2, &unk_1EB90E780, &unk_1B5EB60F0);
LABEL_26:
    swift_deallocPartialClassInstance();
    goto LABEL_27;
  }

  (*(v10 + 32))(v1, v2, v8);
  v16 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  (*(v10 + 16))(&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url], v1, v8);
  v17 = sub_1B5E435A4();
  v18 = [v4 decodeObjectForKey_];

  if (v18)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_1B5E43608();
  if (!v19)
  {

    sub_1B5DF4428(v35, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_18:
    v26 = *(v10 + 8);
    v27 = sub_1B5E34F10();
    v26(v27);
    (v26)(&v0[v16], v8);
    goto LABEL_26;
  }

  sub_1B5E3B4B4();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v30 = v16;
  v20 = v32;
  *&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle] = v32;
  v21 = v20;
  v22 = sub_1B5E43648();
  v23 = [v4 decodeObjectForKey_];

  if (v23)
  {
    sub_1B5EA5AF0();

    swift_unknownObjectRelease();
    v24 = *(v10 + 8);
    v25 = sub_1B5E34F10();
    v24(v25);
  }

  else
  {
    v24 = *(v10 + 8);
    v28 = sub_1B5E34F10();
    v24(v28);

    v33 = 0u;
    v34 = 0u;
  }

  sub_1B5E43608();
  if (!v29)
  {

    sub_1B5DF4428(v35, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_25:
    (v24)(&v0[v30], v8);

    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  *&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata] = v32;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_init);

LABEL_27:
  sub_1B5DFD8C0();
}

unint64_t sub_1B5E3B4B4()
{
  result = qword_1EB90CD88;
  if (!qword_1EB90CD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB90CD88);
  }

  return result;
}

Swift::Void __swiftcall DocumentXPCEnvelope.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  (*(v6 + 16))(v10, v2 + v11, v4);
  v12 = sub_1B5EA4260();
  v13 = sub_1B5E26234();
  v14(v13);
  v15 = sub_1B5EA5670();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle);
  v17 = sub_1B5E435A4();
  v18 = sub_1B5E43780();
  [v18 v19];

  v20 = sub_1B5E436DC();
  sub_1B5E35720(v20, v21);
  sub_1B5E436DC();
  v22 = sub_1B5EA42C0();
  v23 = sub_1B5E436DC();
  sub_1B5E24A58(v23, v24);
  v25 = sub_1B5E43648();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v25];
}

uint64_t sub_1B5E3B810()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration + 8));
  return v1;
}

uint64_t sub_1B5E3B868(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void SessionConfigurationXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  SessionConfigurationXPCEnvelope.init(sealing:)();
}

void SessionConfigurationXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  v11 = type metadata accessor for SessionConfiguration(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v13 = type metadata accessor for SessionConfigurationEnvelope(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5E402FC(v0, v3, type metadata accessor for SessionConfiguration);
  (*(v6 + 16))(v10, &v3[v12[7]], v4);
  sub_1B5E3D134(v10, v34);
  memcpy(v2, v34, 0x50uLL);
  *(v2 + v13[8]) = *v3;
  v15 = v12[8];
  v16 = v13[6];
  sub_1B5EA5450();
  sub_1B5DF5EB8();
  (*(v17 + 16))(v2 + v16, &v3[v15]);
  v18 = &v3[v12[9]];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = (v2 + v13[7]);
  *v21 = v20;
  v21[1] = v19;
  v22 = &v3[v12[10]];
  v23 = *v22;
  v24 = *(v22 + 1);

  sub_1B5E3D640(v3, type metadata accessor for SessionConfiguration);
  v2[10] = v23;
  v2[11] = v24;
  sub_1B5E4342C();
  sub_1B5E35778(v25, v26, &unk_1B5EB6618);
  sub_1B5E34F10();
  v27 = sub_1B5EA4680();
  v29 = v28;
  sub_1B5E4325C();
  sub_1B5E3D640(v2, v30);
  v31 = &v1[OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration];
  *v31 = v27;
  v31[1] = v29;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, sel_init);
  sub_1B5E3D640(v0, type metadata accessor for SessionConfiguration);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t SessionConfigurationXPCEnvelope.unseal()()
{
  v2 = sub_1B5DF5E80();
  type metadata accessor for SessionConfigurationEnvelope(v2);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v4 = sub_1B5E26240();
  sub_1B5E35720(v4, v5);
  sub_1B5E4342C();
  sub_1B5E35778(v6, v7, &unk_1B5EB65F0);
  sub_1B5EA4670();
  v8 = sub_1B5E26240();
  sub_1B5E24A58(v8, v9);
  sub_1B5E3BC8C(v0);
  sub_1B5E4325C();
  return sub_1B5E3D640(v1, v10);
}

uint64_t sub_1B5E3BC8C@<X0>(char *a1@<X8>)
{
  v54 = a1;
  v2 = sub_1B5EA5450();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v60 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v46 = sub_1B5EA4930();
  v8 = *(v46 - 8);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  v16 = type metadata accessor for SessionConfigurationEnvelope(0);
  v48 = *(v1 + v16[8]);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1B5E3DEAC(v15);
  v17 = v1[11];
  v58 = v1[10];
  v59 = v17;
  v18 = v16[6];
  v56 = v3;
  v19 = *(v3 + 16);
  v19(v7, v1 + v18, v2);
  v20 = (v1 + v16[7]);
  v21 = v20[1];
  v49 = *v20;
  v52 = v15;
  v53 = v8;
  v22 = v15;
  v23 = *(v8 + 16);
  v24 = v46;
  v23(v13, v22, v46);
  v55 = v7;
  v25 = v2;
  v26 = v45;
  v57 = v25;
  v47 = v19;
  (v19)(v60, v7);
  v51 = v13;
  v27 = v13;
  v28 = v24;
  v23(v26, v27, v24);
  v50 = v21;

  sub_1B5EA4900();
  if (!v29)
  {
  }

  v30 = type metadata accessor for SessionConfiguration(0);
  v31 = v54;
  v32 = &v54[v30[7]];
  v44 = v30[9];
  sub_1B5EA4910();
  v23(&v31[v30[5]], v26, v24);
  v33 = v60;
  v34 = v57;
  v35.n128_f64[0] = v47(&v31[v30[6]], v60, v57);
  v36 = &v31[v30[8]];
  v37 = v59;
  *v36 = v58;
  *(v36 + 1) = v37;
  sub_1B5DFAA14(v48, 0, v35);
  v39 = v38;
  v40 = *(v53 + 8);
  v40(v26, v28);
  v41 = *(v56 + 8);
  v41(v33, v34);
  v40(v51, v28);
  v41(v55, v34);
  result = (v40)(v52, v28);
  *v31 = v39;
  v43 = v50;
  *v32 = v49;
  *(v32 + 1) = v43;
  *&v31[v44] = 0;
  return result;
}

uint64_t static SessionConfigurationXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64D = a1;
  return result;
}

uint64_t sub_1B5E3C19C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64D;
  return result;
}

uint64_t sub_1B5E3C1E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64D = v1;
  return result;
}

id SessionConfigurationXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return SessionConfigurationXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E3C3A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event + 8));
  return v1;
}

uint64_t sub_1B5E3C3F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void CompletePromptResponseElementXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  CompletePromptResponseElementXPCEnvelope.init(sealing:)();
}

void CompletePromptResponseElementXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5EA4A80();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5DFC6BC(v0, &v13);
  sub_1B5EA4A70();
  sub_1B5E433CC();
  sub_1B5E35778(v6, v7, MEMORY[0x1E69DA630]);
  sub_1B5E433C0();
  sub_1B5EA4680();
  v8 = sub_1B5E433A8();
  v9(v8);
  v10 = &v1[OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event];
  *v10 = v2;
  *(v10 + 1) = v3;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_init);
  v11 = sub_1B5E2624C();
  sub_1B5DF3FB8(v11);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t CompletePromptResponseElementXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  sub_1B5EA4A80();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  sub_1B5E433CC();
  sub_1B5E35778(v4, v5, MEMORY[0x1E69DA638]);
  v6 = sub_1B5E432C4();
  sub_1B5E436F4(v6, v7, v8, v9, v10);
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    MEMORY[0x1B8C89680]();
    v11 = sub_1B5E43618();
    return v12(v11);
  }

  return result;
}

uint64_t static CompletePromptResponseElementXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64E = a1;
  return result;
}

uint64_t sub_1B5E3C794@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64E;
  return result;
}

uint64_t sub_1B5E3C7E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64E = v1;
  return result;
}

id CompletePromptResponseElementXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return CompletePromptResponseElementXPCEnvelope.init(coder:)(v1, v2, v3);
}

id sub_1B5E3C970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_1B5EA42C0();
  v4 = sub_1B5DFA488();
  sub_1B5E24A58(v4, v5);

  return v3;
}

uint64_t sub_1B5E3C9CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion + 8));
  return v1;
}

void sub_1B5E3CA24(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v8 = a1;
  sub_1B5EA42E0();

  v7 = sub_1B5E436DC();
  a4(v7);
}

uint64_t sub_1B5E3CAA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void CompletePromptResponseXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  CompletePromptResponseXPCEnvelope.init(sealing:)();
}

void CompletePromptResponseXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  sub_1B5EA47C0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  sub_1B5EA49F0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1B5E431F0();
  v4(v3);
  sub_1B5E4375C();
  sub_1B5EA49E0();
  sub_1B5E434EC();
  sub_1B5E35778(v5, v6, MEMORY[0x1E69DA5D8]);
  sub_1B5E26048();
  sub_1B5EA4680();
  v7 = sub_1B5E43244();
  v8(v7);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1B5E43304();
  v10(v9);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t CompletePromptResponseXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  sub_1B5EA49F0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  sub_1B5E434EC();
  sub_1B5E35778(v4, v5, MEMORY[0x1E69DA5E0]);
  v6 = sub_1B5E432C4();
  sub_1B5E436F4(v6, v7, v8, v9, v10);
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    sub_1B5EA49D0();
    v11 = sub_1B5E43618();
    return v12(v11);
  }

  return result;
}

uint64_t static CompletePromptResponseXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64F = a1;
  return result;
}

uint64_t sub_1B5E3CE90@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64F;
  return result;
}

uint64_t sub_1B5E3CEDC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64F = v1;
  return result;
}

id CompletePromptResponseXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return CompletePromptResponseXPCEnvelope.init(coder:)(v1);
}

void sub_1B5E3CFC0()
{
  sub_1B5E436B8();
  v1 = sub_1B5E26240();
  sub_1B5E35720(v1, v2);
  sub_1B5E26240();
  v3 = sub_1B5EA42C0();
  v4 = sub_1B5E26240();
  sub_1B5E24A58(v4, v5);
  sub_1B5EA5670();
  sub_1B5E436E8();
  [v0 encodeObject:v3 forKey:?];

  sub_1B5E437EC();
}

id _s4Sage17SchemaXPCEnvelopeCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B5E3D134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = sub_1B5EA4660();
  v4 = *(v54 - 8);
  v5 = MEMORY[0x1EEE9AC00](v54);
  v57 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v41 - v7;
  v8 = type metadata accessor for ModelBundleEnvelope(0);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B5EA4630();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1B5EA4890();
  v49 = v15;
  v48 = sub_1B5EA4900();
  v47 = v16;
  v17 = sub_1B5EA48D0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v42 = v14;
    v43 = v12;
    v44 = v11;
    v45 = a1;
    v46 = a2;
    v60[0] = MEMORY[0x1E69E7CC0];
    v19 = v17;
    sub_1B5E5BF94(0, v18, 0);
    v20 = v60[0];
    v22 = *(v4 + 16);
    v21 = v4 + 16;
    v52 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v41[1] = v19;
    v24 = v19 + v23;
    v51 = *(v21 + 56);
    v25 = (v21 - 8);
    v53 = v21;
    do
    {
      v26 = v56;
      v27 = v54;
      v28 = v52;
      v52(v56, v24, v54);
      v29 = v57;
      v28(v57, v26, v27);
      sub_1B5EA4640();
      v30 = *v25;
      (*v25)(v29, v27);
      v30(v26, v27);
      v60[0] = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B5E5BF94(v31 > 1, v32 + 1, 1);
        v20 = v60[0];
      }

      *(v20 + 16) = v32 + 1;
      sub_1B5E42818(v10, v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v32);
      v24 += v51;
      --v18;
    }

    while (v18);

    a2 = v46;
    a1 = v45;
    v11 = v44;
    v12 = v43;
    v14 = v42;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v33 = sub_1B5EA48C0() & 1;
  sub_1B5EA48A0();
  (*(v12 + 8))(v14, v11);
  v34 = sub_1B5EA4920();
  v36 = v35;
  v37 = sub_1B5EA48B0();
  v38 = sub_1B5EA4860();
  v39 = sub_1B5EA4930();
  (*(*(v39 - 8) + 8))(a1, v39);
  __src[0] = v50;
  __src[1] = v49;
  __src[2] = v48;
  __src[3] = v47;
  __src[4] = v20;
  LOBYTE(__src[5]) = v33;
  *(&__src[5] + 1) = *v67;
  HIDWORD(__src[5]) = *&v67[3];
  __src[6] = v34;
  __src[7] = v36;
  __src[8] = v37;
  __src[9] = v38;
  v60[0] = v50;
  v60[1] = v49;
  v60[2] = v48;
  v60[3] = v47;
  v60[4] = v20;
  v61 = v33;
  *&v62[3] = *&v67[3];
  *v62 = *v67;
  v63 = v34;
  v64 = v36;
  v65 = v37;
  v66 = v38;
  sub_1B5E401EC(__src, v58);
  sub_1B5E40278(v60);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_1B5E3D640(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E3DB20(uint64_t a1)
{
  result = sub_1B5EA42B0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5E3DD5C(uint64_t a1)
{
  sub_1B5EA5450();
  if (v1 <= 0x3F)
  {
    sub_1B5DFD5E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B5E3DE08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5E3DE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B5E3DEAC@<X0>(uint64_t a1@<X8>)
{
  v23[8] = a1;
  v2 = type metadata accessor for ModelBundleEnvelope(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B5EA4660();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B5EA4630();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[7];
  v23[6] = v1[6];
  v23[7] = v13;
  v15 = v1[4];
  v16 = *(v15 + 16);
  if (v16)
  {
    v23[3] = v11;
    v23[4] = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23[5] = v1;
    v26 = MEMORY[0x1E69E7CC0];
    v23[2] = v10;
    v17 = v12;

    v23[1] = v17;

    v23[0] = v14;

    sub_1B5E5BFEC(0, v16, 0);
    v18 = v26;
    v19 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v24 = *(v24 + 72);
    do
    {
      sub_1B5E402FC(v19, v4, type metadata accessor for ModelBundleEnvelope);
      sub_1B5EA4250();
      sub_1B5EA4650();
      sub_1B5E3D640(v4, type metadata accessor for ModelBundleEnvelope);
      v26 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B5E5BFEC(v20 > 1, v21 + 1, 1);
        v18 = v26;
      }

      *(v18 + 16) = v21 + 1;
      (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v25);
      v19 += v24;
      --v16;
    }

    while (v16);
  }

  else
  {
  }

  sub_1B5EA4610();
  return sub_1B5EA4880();
}

BOOL sub_1B5E3E1F0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v35 = *(a1 + 40);
  v33 = a1[7];
  v34 = a1[6];
  v30 = a1[8];
  v31 = a1[9];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v32 = *(a2 + 56);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v28 = *(a2 + 64);
  v29 = *(a2 + 72);
  if (!v12 && (sub_1B5EA5F00() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v4 == v8 && v6 == v7;
    if (!v13 && (sub_1B5EA5F00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = sub_1B5E40CC4(v5, v9);
  result = 0;
  if (v15 & 1) == 0 || ((v35 ^ v10))
  {
    return result;
  }

  if (v34 == v11 && v33 == v32)
  {
    if (v30 != v28 || v31 != v29)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v17 = sub_1B5EA5F00();
  result = 0;
  if ((v17 & 1) != 0 && v30 == v28 && v31 == v29)
  {
LABEL_34:
    v20 = a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88);
    if (v20 || (sub_1B5EA5F00() & 1) != 0)
    {
      v21 = type metadata accessor for SessionConfigurationEnvelope(0);
      if (sub_1B5EA53E0())
      {
        v22 = *(v21 + 28);
        v23 = (a1 + v22);
        v24 = *(a1 + v22 + 8);
        v25 = (a2 + v22);
        v26 = v25[1];
        if (v24)
        {
          if (v26)
          {
            v27 = *v23 == *v25 && v24 == v26;
            if (v27 || (sub_1B5EA5F00() & 1) != 0)
            {
              return *(a1 + *(v21 + 32)) == *(a2 + *(v21 + 32));
            }
          }
        }

        else if (!v26)
        {
          return *(a1 + *(v21 + 32)) == *(a2 + *(v21 + 32));
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B5E3E3EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001B5EA9940 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463757274736E69 && a2 == 0xEC000000736E6F69;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574616C706D6574 && a2 == 0xEA00000000004449;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B5EA5F00();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E3E5B4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7463757274736E69;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0x694C6F54656D6974;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B5E3E66C(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E860, &qword_1B5EB6640);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E40198();
  sub_1B5EA6040();
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3, sizeof(__src));
  v14 = 0;
  sub_1B5E401EC(__dst, v10);
  sub_1B5E40224();
  sub_1B5EA5EA0();
  if (v2)
  {
    memcpy(v10, __src, sizeof(v10));
    sub_1B5E40278(v10);
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    sub_1B5E40278(v10);
    v13 = 1;
    sub_1B5EA5E50();
    type metadata accessor for SessionConfigurationEnvelope(0);
    v13 = 2;
    sub_1B5EA5450();
    sub_1B5E35778(&qword_1EB90E878, MEMORY[0x1E69C61C0], MEMORY[0x1E69C61C8]);
    sub_1B5EA5EA0();
    v13 = 3;
    sub_1B5EA5E10();
    v13 = 4;
    sub_1B5EA5E70();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B5E3E918(uint64_t a1)
{
  memcpy(v6, v1, sizeof(v6));
  sub_1B5E3F864(a1);
  sub_1B5EA5710();
  v3 = type metadata accessor for SessionConfigurationEnvelope(0);
  sub_1B5EA5450();
  sub_1B5E35778(&qword_1EB90DB48, MEMORY[0x1E69C61C0], MEMORY[0x1E69C61D0]);
  sub_1B5EA5600();
  if (*&v1[*(v3 + 28) + 8])
  {
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  v4 = *&v1[*(v3 + 32)];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1B8C8AC30](*&v4);
}

uint64_t sub_1B5E3EA40()
{
  sub_1B5EA5FD0();
  sub_1B5E3E918(v1);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E3EA80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1B5EA5450();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B5DF33E0(&qword_1EB90E880, &qword_1B5EB6648);
  v22 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = type metadata accessor for SessionConfigurationEnvelope(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v25 = a1;
  sub_1B5DF3BFC(a1, v9);
  sub_1B5E40198();
  v10 = v24;
  sub_1B5EA6030();
  if (v10)
  {
    return sub_1B5DF3FB8(v25);
  }

  v24 = v5;
  v11 = v22;
  v27 = 0;
  sub_1B5E402A8();
  sub_1B5EA5DC0();
  memcpy(v8, __src, 0x50uLL);
  __dst = 1;
  v8[10] = sub_1B5EA5D70();
  v8[11] = v12;
  __dst = 2;
  sub_1B5E35778(&unk_1EB90E890, MEMORY[0x1E69C61C0], MEMORY[0x1E69C61D8]);
  v13 = v24;
  sub_1B5EA5DC0();
  (*(v21 + 32))(v8 + v6[6], v13, v3);
  __dst = 3;
  v14 = sub_1B5EA5D30();
  v15 = (v8 + v6[7]);
  *v15 = v14;
  v15[1] = v16;
  __dst = 4;
  sub_1B5EA5D90();
  v18 = v17;
  (*(v11 + 8))(0, v23);
  *(v8 + v6[8]) = v18;
  sub_1B5E402FC(v8, v20, type metadata accessor for SessionConfigurationEnvelope);
  sub_1B5DF3FB8(v25);
  return sub_1B5E3D640(v8, type metadata accessor for SessionConfigurationEnvelope);
}

uint64_t sub_1B5E3EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E3E3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E3EFF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E3E5AC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E3F018(uint64_t a1)
{
  v2 = sub_1B5E40198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E3F054(uint64_t a1)
{
  v2 = sub_1B5E40198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E3F098(uint64_t a1)
{
  sub_1B5EA5FD0();
  sub_1B5E3E918(v2);
  return sub_1B5EA6020();
}

BOOL sub_1B5E3F108(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B5EA5F00() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1B5EA5F00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_1B5E40CC4(a1[4], *(a2 + 32)) & 1) != 0 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v8 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
    if (v8 || (sub_1B5EA5F00()) && a1[8] == *(a2 + 64))
    {
      return a1[9] == *(a2 + 72);
    }
  }

  return 0;
}

uint64_t sub_1B5E3F1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001B5EA9960 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B5EA9980 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001B5EA99A0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E3F48C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x444970756F7267;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6C6F506568636163;
      break;
    case 5:
      result = 0x4965736143657375;
      break;
    case 6:
      result = 0x666C616865426E6FLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E3F5A0(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E8D8, &qword_1B5EB6660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42668();
  sub_1B5EA6040();
  LOBYTE(v11) = 0;
  sub_1B5EA5E50();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1B5EA5E10();
    v11 = *(v3 + 32);
    v10[7] = 2;
    sub_1B5DF33E0(&qword_1EB90E8B8, &qword_1B5EB6658);
    sub_1B5E42710(&qword_1EB90E8E0, &qword_1EB90E8E8, &unk_1B5EB697C);
    sub_1B5EA5EA0();
    LOBYTE(v11) = 3;
    sub_1B5EA5E60();
    LOBYTE(v11) = 4;
    sub_1B5E427A4();
    sub_1B5EA5EA0();
    LOBYTE(v11) = 5;
    sub_1B5EA5E50();
    LOBYTE(v11) = 6;
    sub_1B5EA5E90();
    LOBYTE(v11) = 7;
    sub_1B5EA5E90();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B5E3F864(uint64_t a1)
{
  v2 = v1;
  sub_1B5EA5710();
  if (v2[3])
  {
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  sub_1B5E424D4(a1, v2[4]);
  sub_1B5EA5FF0();
  sub_1B5EA5710();
  MEMORY[0x1B8C8AC00](v2[8]);
  return MEMORY[0x1B8C8AC00](v2[9]);
}

uint64_t sub_1B5E3F8FC()
{
  sub_1B5EA5FD0();
  sub_1B5E3F864(v1);
  return sub_1B5EA6020();
}

void *sub_1B5E3F93C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E8A8, &qword_1B5EB6650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42668();
  sub_1B5EA6030();
  if (v2)
  {
    sub_1B5DF3FB8(a1);
  }

  else
  {
    LOBYTE(v30[0]) = 0;
    v9 = sub_1B5EA5D70();
    v11 = v10;
    v27 = v9;
    LOBYTE(v30[0]) = 1;
    v12 = sub_1B5EA5D30();
    v14 = v13;
    v26 = v12;
    sub_1B5DF33E0(&qword_1EB90E8B8, &qword_1B5EB6658);
    LOBYTE(__src[0]) = 2;
    sub_1B5E42710(&qword_1EB90E8C0, &qword_1EB90E8C8, &unk_1B5EB69CC);
    sub_1B5EA5DC0();
    v25 = v30[0];
    LOBYTE(v30[0]) = 3;
    v36 = sub_1B5EA5D80();
    LOBYTE(v30[0]) = 4;
    sub_1B5E426BC();
    sub_1B5EA5DC0();
    LOBYTE(v30[0]) = 5;
    v24 = sub_1B5EA5D70();
    v28 = v15;
    LOBYTE(v30[0]) = 6;
    v23 = sub_1B5EA5DB0();
    v37 = 7;
    v16 = sub_1B5EA5DB0();
    v36 &= 1u;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = v27;
    __src[0] = v27;
    __src[1] = v11;
    __src[2] = v26;
    __src[3] = v14;
    v19 = v25;
    __src[4] = v25;
    LOBYTE(__src[5]) = v36;
    v20 = v28;
    __src[6] = v24;
    __src[7] = v28;
    __src[8] = v23;
    __src[9] = v17;
    sub_1B5E401EC(__src, v30);
    sub_1B5DF3FB8(a1);
    v30[0] = v18;
    v30[1] = v11;
    v30[2] = v26;
    v30[3] = v14;
    v30[4] = v19;
    v31 = v36;
    v32 = v24;
    v33 = v20;
    v34 = v23;
    v35 = v17;
    sub_1B5E40278(v30);
    return memcpy(a2, __src, 0x50uLL);
  }
}

uint64_t sub_1B5E3FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E3FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E3F1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E3FEB0(uint64_t a1)
{
  v2 = sub_1B5E42668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E3FEEC(uint64_t a1)
{
  v2 = sub_1B5E42668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E3FFA8(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1B5EA5FD0();
  sub_1B5E3F864(v3);
  return sub_1B5EA6020();
}

void *sub_1B5E40000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B5E3F93C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

BOOL sub_1B5E400A0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1B5E3F108(v4, __dst);
}

unint64_t sub_1B5E400FC()
{
  result = qword_1EB90E850;
  if (!qword_1EB90E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E850);
  }

  return result;
}

unint64_t sub_1B5E40198()
{
  result = qword_1EB90E868;
  if (!qword_1EB90E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E868);
  }

  return result;
}

unint64_t sub_1B5E40224()
{
  result = qword_1EB90E870;
  if (!qword_1EB90E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E870);
  }

  return result;
}

unint64_t sub_1B5E402A8()
{
  result = qword_1EB90E888;
  if (!qword_1EB90E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E888);
  }

  return result;
}

uint64_t sub_1B5E402FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  v4 = sub_1B5DFA488();
  v5(v4);
  return a2;
}

uint64_t sub_1B5E40358(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90EA10, &qword_1B5EB6AA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42EA4();
  sub_1B5EA6040();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B5E404CC(uint64_t a1)
{
  v2 = sub_1B5E42EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E40508(uint64_t a1)
{
  v2 = sub_1B5E42EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E405B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000495255)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E40650(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90EA00, &qword_1B5EB6AA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42E50();
  sub_1B5EA6040();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90EA08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B5EA5EA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B5E407C8(uint64_t a1)
{
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  return sub_1B5EA5600();
}

uint64_t sub_1B5E4084C()
{
  sub_1B5EA5FD0();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E408D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1B5EA42B0();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5DF33E0(&qword_1EB90E9E8, &qword_1B5EB6A98);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ModelBundleEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42E50();
  sub_1B5EA6030();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1B5E35778(&qword_1EB90E9F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B5EA5DC0();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1B5E42818(v11, v13);
  }

  return sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E40B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E405B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E40B8C(uint64_t a1)
{
  v2 = sub_1B5E42E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E40BC8(uint64_t a1)
{
  v2 = sub_1B5E42E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E40C0C(uint64_t a1)
{
  sub_1B5EA5FD0();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E40CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleEnvelope(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1B5E402FC(v13, v10, type metadata accessor for ModelBundleEnvelope);
        sub_1B5E402FC(v14, v7, type metadata accessor for ModelBundleEnvelope);
        v16 = sub_1B5EA4270();
        sub_1B5E3D640(v7, type metadata accessor for ModelBundleEnvelope);
        sub_1B5E3D640(v10, type metadata accessor for ModelBundleEnvelope);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B5E40E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1B5EA5560();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1B5DF33E0(&qword_1EB90E968, &qword_1B5EB66B8);
  v42 = v4;
  result = sub_1B5EA5CD0();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
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
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1B5E41824(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B5E411EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B5DF33E0(&qword_1EB90E910, &qword_1B5EB6670);
  v32 = v4;
  result = sub_1B5EA5CD0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
        goto LABEL_34;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      sub_1B5E41824(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v33 = *(*(v5 + 56) + 16 * v18);
    if ((v32 & 1) == 0)
    {

      sub_1B5E35720(v33, *(&v33 + 1));
    }

    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v7 + 48) + 16 * v25);
    *v30 = v20;
    v30[1] = v21;
    *(*(v7 + 56) + 16 * v25) = v33;
    ++*(v7 + 16);
    if (!v12)
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
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B5E4149C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  sub_1B5DF33E0(&qword_1EB90E948, &qword_1B5EB6698);
  v42 = v4;
  result = sub_1B5EA5CD0();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
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
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1B5E41824(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B5E41824(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B5EB1380;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1B5E41888(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v6 = sub_1B5EA5560();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v46 = (v38 - v13);
  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v14 = 0;
  v44 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v42 = v7;
  v43 = v15;
  v47 = (v7 + 32);
  v40 = v9;
  v41 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v46;
    sub_1B5E11D08(v44 + *(v12 + 72) * v14, v46, &unk_1EB90E970, &unk_1B5EB66C0);
    v19 = v17[1];
    v51 = *v17;
    v18 = v51;
    v52 = v19;
    v20 = *v47;
    (*v47)(v9, v17 + v43, v6);
    v21 = *v48;
    v23 = sub_1B5E5AE4C(v18, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E608, &unk_1B5EBB5D0);
      sub_1B5EA5C80();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = *v48;
    *(*v48 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    v6 = v41;
    v32 = v30[7] + *(v42 + 72) * v23;
    v9 = v40;
    v20(v32, v40, v41);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v14;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v12 = v16;
    if (v45 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_1B5E40E6C(v26, a2 & 1);
  v28 = sub_1B5E5AE4C(v18, v19);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v53 = v36;
  v37 = v36;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v42 + 8))(v40, v41);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

void sub_1B5E41D14(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);

    sub_1B5E35720(v7, v6);
    if (!v8)
    {
      goto LABEL_17;
    }

    v29 = v6;
    v10 = *a3;
    v12 = sub_1B5E5AE4C(v9, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E918, &qword_1B5EB6678);
      sub_1B5EA5C80();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = (v19[7] + 16 * v12);
    *v21 = v7;
    v21[1] = v29;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v19[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_1B5E411EC(v15, a2 & 1);
  v17 = sub_1B5E5AE4C(v9, v8);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B5E24A58(v7, v29);

    return;
  }

LABEL_23:
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

void sub_1B5E42014(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v56 = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v49 = sub_1B5DF33E0(&qword_1EB90E958, &qword_1B5EB66A8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v44 - v11;
  v12 = *(a1 + 16);
  v50 = v8;
  v51 = v12;
  v47 = v8 + 16;
  v13 = v8 + 32;

  v14 = 0;
  v52 = a1;
  v15 = (a1 + 40);
  v45 = a2;
  v46 = v7;
  while (1)
  {
    if (v51 == v14)
    {
LABEL_18:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v14 >= *(v52 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_25;
    }

    v16 = *(a2 + 16);
    if (v14 == v16)
    {
      goto LABEL_18;
    }

    if (v14 >= v16)
    {
      goto LABEL_21;
    }

    v17 = *(v15 - 1);
    v18 = *v15;
    v53 = v15;
    v54 = v14;
    v19 = v50;
    v20 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v55 = *(v50 + 72);
    v21 = *(v49 + 48);
    v22 = v13;
    v23 = v48;
    (*(v50 + 16))(&v48[v21], v20 + v55 * v14, v7);
    v59 = v17;
    v60 = v18;
    v24 = *(v19 + 32);
    v25 = &v23[v21];
    v13 = v22;
    v26 = v10;
    v24(v10, v25, v7);
    v27 = *v56;

    v29 = sub_1B5E5AE4C(v17, v18);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v27[3] < v32)
    {
      break;
    }

    if (a3)
    {
      if (v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
      sub_1B5EA5C80();
      if (v33)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v36 = *v56;
    *(*v56 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v37 = (v36[6] + 16 * v29);
    *v37 = v17;
    v37[1] = v18;
    v38 = v36[7] + v29 * v55;
    v10 = v26;
    v7 = v46;
    v24(v38, v26, v46);
    v39 = v36[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_23;
    }

    v36[2] = v41;
    v15 = v53 + 2;
    v14 = v54 + 1;
    a3 = 1;
    a2 = v45;
  }

  sub_1B5E4149C(v32, a3 & 1);
  v34 = sub_1B5E5AE4C(v17, v18);
  if ((v33 & 1) != (v35 & 1))
  {
    goto LABEL_24;
  }

  v29 = v34;
  if ((v33 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v42 = swift_allocError();
  swift_willThrow();
  v61 = v42;
  v43 = v42;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v50 + 8))(v26, v46);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

uint64_t sub_1B5E424D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ModelBundleEnvelope(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1B8C8AC00](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1B5E402FC(v9, v6, type metadata accessor for ModelBundleEnvelope);
      sub_1B5EA42B0();
      sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1B5EA5600();
      result = sub_1B5E3D640(v6, type metadata accessor for ModelBundleEnvelope);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_1B5E42668()
{
  result = qword_1EB90E8B0;
  if (!qword_1EB90E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8B0);
  }

  return result;
}

unint64_t sub_1B5E426BC()
{
  result = qword_1EB90E8D0;
  if (!qword_1EB90E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8D0);
  }

  return result;
}

void sub_1B5E42710(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    sub_1B5DFD694(&qword_1EB90E8B8, &qword_1B5EB6658);
    sub_1B5E35778(a2, type metadata accessor for ModelBundleEnvelope, a3);
    sub_1B5E26240();
    atomic_store(swift_getWitnessTable(), a1);
  }

  sub_1B5E437EC();
}

unint64_t sub_1B5E427A4()
{
  result = qword_1EB90E8F0;
  if (!qword_1EB90E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8F0);
  }

  return result;
}

uint64_t sub_1B5E427F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B5E42804(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B5E35720(result, a2);
  }

  return result;
}

uint64_t sub_1B5E42818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleEnvelope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for TGSessionConfigurationEnvelope.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SessionConfigurationEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionConfigurationEnvelope.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5E42B34(uint64_t a1)
{
  result = sub_1B5EA42B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B5E42BEC()
{
  result = qword_1EB90E9B0;
  if (!qword_1EB90E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9B0);
  }

  return result;
}

unint64_t sub_1B5E42C44()
{
  result = qword_1EB90E9B8;
  if (!qword_1EB90E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9B8);
  }

  return result;
}

unint64_t sub_1B5E42C9C()
{
  result = qword_1EB90E9C0;
  if (!qword_1EB90E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9C0);
  }

  return result;
}

unint64_t sub_1B5E42CF4()
{
  result = qword_1EB90E9C8;
  if (!qword_1EB90E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9C8);
  }

  return result;
}

unint64_t sub_1B5E42D4C()
{
  result = qword_1EB90E9D0;
  if (!qword_1EB90E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9D0);
  }

  return result;
}

unint64_t sub_1B5E42DA4()
{
  result = qword_1EB90E9D8;
  if (!qword_1EB90E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9D8);
  }

  return result;
}

unint64_t sub_1B5E42DFC()
{
  result = qword_1EB90E9E0;
  if (!qword_1EB90E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9E0);
  }

  return result;
}

unint64_t sub_1B5E42E50()
{
  result = qword_1EB90E9F0;
  if (!qword_1EB90E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9F0);
  }

  return result;
}

unint64_t sub_1B5E42EA4()
{
  result = qword_1EB90EA18;
  if (!qword_1EB90EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelBundleEnvelope.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E42FB8()
{
  result = qword_1EB90EA20;
  if (!qword_1EB90EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA20);
  }

  return result;
}

unint64_t sub_1B5E43010()
{
  result = qword_1EB90EA28;
  if (!qword_1EB90EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA28);
  }

  return result;
}

unint64_t sub_1B5E43068()
{
  result = qword_1EB90EA30;
  if (!qword_1EB90EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA30);
  }

  return result;
}

unint64_t sub_1B5E430C0()
{
  result = qword_1EB90EA38;
  if (!qword_1EB90EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA38);
  }

  return result;
}

unint64_t sub_1B5E43118()
{
  result = qword_1EB90EA40;
  if (!qword_1EB90EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA40);
  }

  return result;
}

uint64_t sub_1B5E43274()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E43294()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E432D8(uint64_t a1)
{

  return sub_1B5EA4670();
}

void sub_1B5E43318(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  *v5 = v2;
  v5[1] = v3;
  v6 = *(v4 - 112);
  *(v4 - 104) = v1;
  *(v4 - 96) = v6;
}

uint64_t sub_1B5E4351C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1B5E4356C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t sub_1B5E43584@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1B5E35720(v4, v5);
}

uint64_t sub_1B5E435A4()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E435D0(uint64_t a1)
{

  return sub_1B5EA4670();
}

__n128 sub_1B5E43608()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

uint64_t sub_1B5E43648()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E436F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1B5EA4670();
}

uint64_t sub_1B5E43710()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E43734(uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1B5E4378C(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t sub_1B5E437AC()
{

  return sub_1B5E11D08(v0, v1, v2, v3);
}

uint64_t sub_1B5E437CC()
{

  return sub_1B5EA5670();
}

void GenerativeExperiencesSessionClient.__allocating_init(_:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  GenerativeExperiencesSessionClient.init(_:)();
}

void GenerativeExperiencesSessionClient.__allocating_init(identifer:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1B5E5F940();
  GenerativeExperiencesSessionClient.init(identifer:)();
}

void *sub_1B5E4386C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1B5E6E0D4(*(a1 + 16), 0);
  sub_1B5EA4EE0();
  sub_1B5E8FE68();
  v4 = v3;
  sub_1B5E5ECC8(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1B5E43934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  if (*(v1 + 32) != 1)
  {
    v9 = *(v1 + 8);
    v10 = *(*v1 + 16);
    if (v9 != v10)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v4 + 16);
        v12 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9;
        *(v1 + 8) = v9 + 1;
        result = v11(v7, v12, v3);
        v14 = *(v1 + 16);
        v13 = *(v1 + 24);
        v15 = *(v14 + 16);
        if (v13 == v15)
        {
          (*(v4 + 8))(v7, v3);
          goto LABEL_9;
        }

        if (v13 < v15)
        {
          v19 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
          v20 = v13 + 1;
          v21 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13;
          *(v1 + 24) = v20;
          v22 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
          v23 = *(v22 + 48);
          (*(v4 + 32))(a1, v7, v3);
          sub_1B5E5EEBC(v21, a1 + v23, &qword_1EB90EC00, &qword_1B5EB6DC8);
          v17 = a1;
          v18 = 0;
          v16 = v22;
          return sub_1B5DF3658(v17, v18, 1, v16);
        }
      }

      __break(1u);
      return result;
    }

LABEL_9:
    *(v1 + 32) = 1;
    v16 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
    v17 = a1;
    v18 = 1;
    return sub_1B5DF3658(v17, v18, 1, v16);
  }

  v8 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);

  return sub_1B5DF3658(a1, 1, 1, v8);
}

uint64_t sub_1B5E43BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - v11;
  if (sub_1B5DF46E0(a1, 1, v9) == 1)
  {
    sub_1B5DF4428(a1, &qword_1EB90EC18, &qword_1B5EB6E90);
    sub_1B5E5D330(v8);
    v13 = sub_1B5EA4340();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B5DF4428(v8, &qword_1EB90EC18, &qword_1B5EB6E90);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA01F0(v12, a2, isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v22[0], *v3, v22[2], v22[3]);
    *v3 = v22[1];
    v21 = sub_1B5EA4340();
    return (*(*(v21 - 8) + 8))(a2, v21);
  }
}

uint64_t sub_1B5E43E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - v11;
  if (sub_1B5DF46E0(a1, 1, v9) == 1)
  {
    sub_1B5DF4428(a1, &qword_1EB90EC30, &qword_1B5EB6EA8);
    sub_1B5E5D330(v8);
    v13 = sub_1B5EA4340();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B5DF4428(v8, &qword_1EB90EC30, &qword_1B5EB6EA8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA04A8(v12, a2, isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v22[0], *v3, v22[2], v22[3]);
    *v3 = v22[1];
    v21 = sub_1B5EA4340();
    return (*(*(v21 - 8) + 8))(a2, v21);
  }
}

void sub_1B5E44070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E601CC();
  v6 = v5;
  v8 = v7;
  v9 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v9);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E5F1E8();
  v11 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5E5F57C();
  v13 = sub_1B5E5F8E0();
  sub_1B5E5F5A8(v13, v14, v11);
  if (v15)
  {
    v16 = sub_1B5E5F78C();
    sub_1B5DF4428(v16, v17, &qword_1B5EB70B0);
    v18 = sub_1B5E43768();
    sub_1B5E5E068(v18, v19, v20);

    v21 = sub_1B5E5FA54();
    sub_1B5DF4428(v21, v22, &qword_1B5EB70B0);
  }

  else
  {
    v23 = sub_1B5E5F8A8();
    v24(v23);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_1B5EA068C(v4, v8, v6);

    *v3 = v25;
  }

  sub_1B5E601B8();
}

uint64_t *sub_1B5E4420C(__n128 a1)
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118(&qword_1EB90CE70, a1);
  }

  return &qword_1EB90CE78;
}

id static GenerativeExperiencesSessionXPCService.interface.getter(__n128 a1)
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118(&qword_1EB90CE70, a1);
  }

  sub_1B5E2D094(&qword_1EB90CE78);
  v1 = qword_1EB90CE78;

  return v1;
}

void static GenerativeExperiencesSessionXPCService.interface.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118(&qword_1EB90CE70, a2);
  }

  sub_1B5E2D240(&qword_1EB90CE78);
  v3 = qword_1EB90CE78;
  qword_1EB90CE78 = a1;
}

uint64_t static GenerativeExperiencesSessionXPCService.interface.modify(__n128 a1)
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118(&qword_1EB90CE70, a1);
  }

  v1 = sub_1B5E5F324();
  sub_1B5E34E78(v1);
  return sub_1B5E2D0FC();
}

id sub_1B5E44388@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E4420C(a2);
  swift_beginAccess();
  v3 = qword_1EB90CE78;
  *a1 = qword_1EB90CE78;

  return v3;
}

void sub_1B5E443E8(id *a1)
{
  v1 = *a1;
  sub_1B5E4420C(v2);
  swift_beginAccess();
  v3 = qword_1EB90CE78;
  qword_1EB90CE78 = v1;
}

uint64_t static GenerativeExperiencesSessionXPCService.serviceName.modify()
{
  v0 = sub_1B5E5F324();
  sub_1B5E34E78(v0);
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E444B0(uint64_t a1)
{
  sub_1B5E2D094(a1);

  return sub_1B5E5F324();
}

uint64_t static GenerativeExperiencesSessionXPCService.entitlementName.modify(uint64_t a1)
{
  v1 = sub_1B5E5F324();
  sub_1B5E34E78(v1);
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E4454C()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90CE88);
  v1 = sub_1B5DFD794(v0, qword_1EB90CE88);
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v2 = sub_1B5DFD794(v0, qword_1EB90D180);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B5E44614(__n128 a1)
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54(&qword_1EB90CE80, a1);
  }

  v1 = sub_1B5EA53B0();

  return sub_1B5DFD794(v1, qword_1EB90CE88);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.getter(__n128 a1)
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54(&qword_1EB90CE80, a1);
  }

  v1 = sub_1B5EA53B0();
  v2 = sub_1B5DFD794(v1, qword_1EB90CE88);
  sub_1B5E2D094(v2);
  sub_1B5E2D1D8();
  v3 = sub_1B5E5F318();
  return v4(v3);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.setter(__n128 a1)
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54(&qword_1EB90CE80, a1);
  }

  v1 = sub_1B5EA53B0();
  v2 = sub_1B5DFD794(v1, qword_1EB90CE88);
  sub_1B5E34E78(v2);
  v3 = sub_1B5E5F940();
  v4(v3);
  swift_endAccess();
  v5 = sub_1B5DFA488();
  return v6(v5);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.modify(__n128 a1)
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54(&qword_1EB90CE80, a1);
  }

  v1 = sub_1B5EA53B0();
  v2 = sub_1B5DFD794(v1, qword_1EB90CE88);
  sub_1B5E34E78(v2);
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E44854@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_1B5E44614(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

uint64_t sub_1B5E448D0(uint64_t a1, __n128 a2)
{
  v3 = sub_1B5E44614(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  (*(*(v4 - 8) + 24))(v3, a1, v4);
  return swift_endAccess();
}

uint64_t *sub_1B5E44968(__n128 a1)
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8(&qword_1EB90CEA8, a1);
  }

  return &qword_1EB90CEA0;
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.getter(__n128 a1)
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8(&qword_1EB90CEA8, a1);
  }

  sub_1B5E2D094(&qword_1EB90CEA0);
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8(&qword_1EB90CEA8, a2);
  }

  sub_1B5E2D240(&qword_1EB90CEA0);
  qword_1EB90CEA0 = a1;
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.modify(uint64_t a1, __n128 a2)
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8(&qword_1EB90CEA8, a2);
  }

  v2 = sub_1B5E5F324();
  sub_1B5E34E78(v2);
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E44AD8@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E44968(a2);
  swift_beginAccess();
  *a1 = qword_1EB90CEA0;
}

uint64_t sub_1B5E44B2C(uint64_t *a1)
{
  v1 = *a1;

  sub_1B5E44968(v2);
  swift_beginAccess();
  qword_1EB90CEA0 = v1;
}

void static GenerativeExperiencesSessionXPCService.customize(serverInterface:)(void *a1)
{
  v181 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B5E479E8(0, &qword_1ED7D2B98, 0x1E695DFD8);
  v1 = sub_1B5DF33E0(&qword_1EB90EAD0, &qword_1B5EB6CC0);
  v2 = sub_1B5E5F9CC(v1);
  sub_1B5E5F514(v2, xmmword_1B5EB6C60);
  v3 = type metadata accessor for DocumentRegistrationXPCResponse();
  v2[3].n128_u64[1] = sub_1B5DF33E0(&qword_1EB90EAD8, &qword_1B5EB6CC8);
  v2[2].n128_u64[0] = v3;
  v180 = sub_1B5E479E8(0, &qword_1ED7D29B8, 0x1E695DEF0);
  v4 = sub_1B5DF33E0(&qword_1EB90EAE0, &qword_1B5EB6CD0);
  v2[5].n128_u64[1] = v4;
  v2[4].n128_u64[0] = v180;
  v5 = MEMORY[0x1B8C8A6C0](v2);
  sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
  v6 = sub_1B5E47980();
  sub_1B5E5FA60();
  v7 = sub_1B5EA5A00();

  sub_1B5E46144(v7);

  sub_1B5E5FF70();
  v8 = sub_1B5EA59F0();

  sub_1B5E601F8(v181, sel_setClasses_forSelector_argumentIndex_ofReply_, v8, sel_sessionDidProduceDocumentRegistrationStatusFor_documentID_registrationStatus_isComplete_);

  v9 = sub_1B5E5F9CC(v1);
  sub_1B5E5F330(v9);
  v10 = type metadata accessor for CompletePromptResponseElementXPCEnvelope();
  v11 = sub_1B5DF33E0(&qword_1EB90EAE8, &qword_1B5EB6CD8);
  v9[2].n128_u64[0] = v10;
  v9[5].n128_u64[1] = v4;
  v9[3].n128_u64[1] = v11;
  v9[4].n128_u64[0] = v180;
  v12 = MEMORY[0x1B8C8A6C0](v9);
  sub_1B5E5FA60();
  v13 = sub_1B5EA5A00();

  sub_1B5E46144(v13);

  sub_1B5E5FF70();
  v14 = sub_1B5EA59F0();

  sub_1B5E5FD70(v181, &off_1E7C224F8, v14, sel_sessionDidProduceCompletionResponseFor_element_isComplete_);

  v15 = v1;
  v16 = sub_1B5E5F9CC(v1);
  sub_1B5E5F330(v16);
  v17 = type metadata accessor for GenerativeErrorXPCEnvelope();
  v18 = sub_1B5DF33E0(&qword_1EB90EAF0, &qword_1B5EB6CE0);
  v16[2].n128_u64[0] = v17;
  v16[5].n128_u64[1] = v4;
  v16[3].n128_u64[1] = v18;
  v16[4].n128_u64[0] = v180;
  v19 = MEMORY[0x1B8C8A6C0](v16);
  sub_1B5E5FA60();
  v20 = sub_1B5EA5A00();

  sub_1B5E46144(v20);
  sub_1B5E60210();
  v21 = sub_1B5EA59F0();

  sub_1B5E5FD70(v181, sel_setClasses_forSelector_argumentIndex_ofReply_, v21, sel_sessionDidEncounterCompletionErrorFor_generativeError_);

  v22 = sub_1B5E5F9CC(v15);
  v23 = sub_1B5E5F330(v22);
  v24[4] = v17;
  v24[11] = v4;
  v24[7] = v18;
  v24[8] = v180;
  v25 = MEMORY[0x1B8C8A6C0](v23);
  sub_1B5E5FA60();
  v26 = sub_1B5EA5A00();

  v27 = sub_1B5E46144(v26);

  sub_1B5EA59F0();
  sub_1B5E60210();
  sub_1B5E601F8(v181, sel_setClasses_forSelector_argumentIndex_ofReply_, v26, sel_sessionDidEncounterRegistrationErrorFor_documentID_generativeError_);

  v28 = sub_1B5E5F9CC(v15);
  sub_1B5E5F0A8(v28);
  v29 = type metadata accessor for CompletePromptResponseXPCEnvelope();
  v30 = sub_1B5DF33E0(&qword_1EB90EAF8, &qword_1B5EB6CE8);
  v27[4] = v29;
  v27[11] = v4;
  v27[7] = v30;
  v27[8] = v180;
  MEMORY[0x1B8C8A6C0](v27);
  sub_1B5E5F598();
  v31 = sub_1B5EA5A00();

  v32 = sub_1B5E46144(v31);

  sub_1B5EA59F0();
  sub_1B5E60210();
  sub_1B5E5FD70(v181, sel_setClasses_forSelector_argumentIndex_ofReply_, v31, sel_sessionDidProduceOneShotCompletionFor_completion_);

  v33 = v15;
  v34 = sub_1B5E5F9CC(v15);
  v35 = sub_1B5E5F330(v34);
  v36[4] = v17;
  v36[11] = v4;
  v36[7] = v18;
  v36[8] = v180;
  MEMORY[0x1B8C8A6C0](v35);
  sub_1B5E5F598();
  v37 = sub_1B5EA5A00();

  sub_1B5E46144(v37);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(v181, sel_setClasses_forSelector_argumentIndex_ofReply_, v37, sel_sessionDidProduceOneShotCompletionErrorFor_generativeError_);

  v38 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v38);
  v177 = type metadata accessor for SessionConfigurationXPCEnvelope();
  v176 = sub_1B5DF33E0(&qword_1EB90EB00, &qword_1B5EB6CF0);
  v32[4] = v177;
  v32[11] = v4;
  v32[7] = v176;
  v32[8] = v180;
  MEMORY[0x1B8C8A6C0](v32);
  sub_1B5E5F598();
  v39 = sub_1B5EA5A00();

  sub_1B5E46144(v39);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v40 = sub_1B5E5FC9C();
  v42 = v41;
  [v40 v43];

  v44 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v44);
  v174 = type metadata accessor for ChatMessagesXPCEnvelope();
  v173 = sub_1B5DF33E0(&qword_1EB90EB08, &qword_1B5EB6CF8);
  v32[4] = v174;
  v32[11] = v4;
  v32[7] = v173;
  v32[8] = v180;
  MEMORY[0x1B8C8A6C0](v32);
  sub_1B5E5F798();
  v45 = sub_1B5EA5A00();

  sub_1B5E46144(v45);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(a1, sel_setClasses_forSelector_argumentIndex_ofReply_, v45, v42);

  v46 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v46);
  v172 = type metadata accessor for TemplateXPCEnvelope();
  v171 = sub_1B5DF33E0(&qword_1EB90EB10, &qword_1B5EB6D00);
  v32[4] = v172;
  v32[11] = v4;
  v32[7] = v171;
  v32[8] = v180;
  MEMORY[0x1B8C8A6C0](v32);
  sub_1B5E5F798();
  v47 = sub_1B5EA5A00();

  sub_1B5E46144(v47);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v48 = sub_1B5E5FC90();
  v178 = v42;
  sub_1B5E601F8(v48, v49, v50, v42);

  v51 = swift_allocObject();
  sub_1B5E5F514(v51, xmmword_1B5EB6C70);
  v169 = type metadata accessor for BindingVariablesXPCEnvelope();
  v170 = sub_1B5DF33E0(&qword_1EB90EB18, &qword_1B5EB6D08);
  v51[3].n128_u64[1] = v170;
  v51[2].n128_u64[0] = v169;
  v167 = sub_1B5E479E8(0, &qword_1EB90CD90, 0x1E695DF20);
  v168 = sub_1B5DF33E0(&qword_1EB90EB20, &qword_1B5EB6D10);
  v51[5].n128_u64[1] = v168;
  v51[4].n128_u64[0] = v167;
  v166 = sub_1B5E479E8(0, &qword_1EB90CD58, 0x1E696AEC0);
  v165 = sub_1B5DF33E0(&qword_1EB90EB28, &qword_1B5EB6D18);
  v51[6].n128_u64[0] = v166;
  v51[9].n128_u64[1] = v4;
  v51[7].n128_u64[1] = v165;
  v51[8].n128_u64[0] = v180;
  v52 = MEMORY[0x1B8C8A6C0](v51);
  v53 = sub_1B5EA5A00();

  sub_1B5E46144(v53);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v53 forSelector:v42 argumentIndex:3 ofReply:0];

  v54 = sub_1B5E601E0(v33);
  sub_1B5E5F514(v54, xmmword_1B5EB6C80);
  v163 = type metadata accessor for DocumentIdentifierXPCEnvelope();
  v164 = sub_1B5DF33E0(&qword_1EB90EB30, &qword_1B5EB6D20);
  v54[3].n128_u64[1] = v164;
  v54[2].n128_u64[0] = v163;
  v55 = sub_1B5E479E8(0, &qword_1ED7D2B90, 0x1E695DEC8);
  v56 = sub_1B5DF33E0(&qword_1EB90EB38, &qword_1B5EB6D28);
  v54[4].n128_u64[0] = v55;
  v57 = v55;
  v175 = v55;
  v54[7].n128_u64[1] = v4;
  v54[5].n128_u64[1] = v56;
  v54[6].n128_u64[0] = v180;
  v58 = MEMORY[0x1B8C8A6C0](v54);
  v59 = sub_1B5EA5A00();

  sub_1B5E46144(v59);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v60 = sub_1B5E5FC90();
  [v60 v61];

  v62 = sub_1B5E601E0(v33);
  sub_1B5E5F514(v62, xmmword_1B5EB6C80);
  v162 = type metadata accessor for ToolTypeXPCEnvelope();
  v161 = sub_1B5DF33E0(&qword_1EB90EB40, &qword_1B5EB6D30);
  v62[2].n128_u64[0] = v162;
  v62[3].n128_u64[1] = v161;
  v62[4].n128_u64[0] = v57;
  v62[7].n128_u64[1] = v4;
  v62[5].n128_u64[1] = v56;
  v62[6].n128_u64[0] = v180;
  MEMORY[0x1B8C8A6C0](v62);
  sub_1B5E5F598();
  v63 = sub_1B5EA5A00();

  sub_1B5E46144(v63);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v64 = sub_1B5E5FC90();
  [v64 v65];

  v66 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v66);
  v160 = type metadata accessor for ToolChoiceXPCEnvelope();
  v159 = sub_1B5DF33E0(&qword_1EB90EB48, &qword_1B5EB6D38);
  v62[2].n128_u64[0] = v160;
  v62[5].n128_u64[1] = v4;
  v62[3].n128_u64[1] = v159;
  v62[4].n128_u64[0] = v180;
  MEMORY[0x1B8C8A6C0](v62);
  sub_1B5E5F798();
  v67 = sub_1B5EA5A00();

  sub_1B5E46144(v67);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v68 = sub_1B5E5FC90();
  [v68 v69];

  v70 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v70);
  v157 = type metadata accessor for SamplingParametersXPCEnvelope();
  v158 = sub_1B5DF33E0(&qword_1EB90EB50, &qword_1B5EB6D40);
  v62[2].n128_u64[0] = v157;
  v62[5].n128_u64[1] = v4;
  v62[3].n128_u64[1] = v158;
  v62[4].n128_u64[0] = v180;
  v71 = MEMORY[0x1B8C8A6C0](v62);
  v72 = sub_1B5EA5A00();

  sub_1B5E46144(v72);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v72 forSelector:v178 argumentIndex:7 ofReply:0];

  v73 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v73);
  v156 = type metadata accessor for SchemaXPCEnvelope();
  v155 = sub_1B5DF33E0(&qword_1EB90EB58, &qword_1B5EB6D48);
  v71[4] = v156;
  v71[11] = v4;
  v71[7] = v155;
  v71[8] = v180;
  MEMORY[0x1B8C8A6C0](v71);
  sub_1B5E60024();
  v74 = sub_1B5EA5A00();

  sub_1B5E46144(v74);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v74 forSelector:v178 argumentIndex:8 ofReply:0];

  v75 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v75);
  v154 = type metadata accessor for StringRenderedPromptSanitizerXPCEnvelope();
  v153 = sub_1B5DF33E0(&qword_1EB90EB60, &qword_1B5EB6D50);
  v71[4] = v154;
  v71[11] = v4;
  v71[7] = v153;
  v71[8] = v180;
  v76 = MEMORY[0x1B8C8A6C0](v71);
  v77 = sub_1B5EA5A00();

  sub_1B5E46144(v77);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v78 = sub_1B5E5FC9C();
  [v78 v79];

  v80 = sub_1B5E5F9CC(v33);
  sub_1B5E5F0A8(v80);
  v152 = type metadata accessor for StringResponseSanitizerXPCEnvelope();
  v151 = sub_1B5DF33E0(&qword_1EB90EB68, &qword_1B5EB6D58);
  v76[4] = v152;
  v76[11] = v4;
  v76[7] = v151;
  v76[8] = v180;
  v81 = MEMORY[0x1B8C8A6C0](v76);
  v82 = sub_1B5EA5A00();

  sub_1B5E46144(v82);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v83 = sub_1B5E5FC9C();
  [v83 v84];

  [a1 setInterface:v181 forSelector:v178 argumentIndex:13 ofReply:0];
  v85 = sub_1B5E5F9CC(v33);
  v86 = sub_1B5E5F330(v85);
  v87[4] = v177;
  v87[11] = v4;
  v87[7] = v176;
  v87[8] = v180;
  MEMORY[0x1B8C8A6C0](v86);
  sub_1B5E60024();
  v88 = sub_1B5EA5A00();

  sub_1B5E46144(v88);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v88 forSelector:? argumentIndex:? ofReply:?];

  v89 = sub_1B5E5F9CC(v33);
  v90 = sub_1B5E5F330(v89);
  v91[4] = v174;
  v91[11] = v4;
  v91[7] = v173;
  v91[8] = v180;
  MEMORY[0x1B8C8A6C0](v90);
  sub_1B5E60024();
  v92 = sub_1B5EA5A00();

  sub_1B5E46144(v92);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(a1, sel_setClasses_forSelector_argumentIndex_ofReply_, v92, sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_);

  v93 = sub_1B5E5F9CC(v33);
  v94 = sub_1B5E5F330(v93);
  v95[4] = v172;
  v95[11] = v4;
  v95[7] = v171;
  v95[8] = v180;
  v96 = MEMORY[0x1B8C8A6C0](v94);
  v97 = sub_1B5EA5A00();

  sub_1B5E46144(v97);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v98 = sub_1B5E5FC9C();
  sub_1B5E601F8(v98, v99, v100, sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_);

  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1B5EB6C70;
  *(v101 + 32) = v169;
  *(v101 + 56) = v170;
  *(v101 + 64) = v167;
  *(v101 + 88) = v168;
  *(v101 + 96) = v166;
  *(v101 + 152) = v4;
  *(v101 + 120) = v165;
  *(v101 + 128) = v180;
  v102 = MEMORY[0x1B8C8A6C0]();
  v103 = sub_1B5EA5A00();

  sub_1B5E46144(v103);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v104 = sub_1B5E5FC9C();
  [v104 v105];

  v106 = sub_1B5E601E0(v33);
  *(v106 + 16) = xmmword_1B5EB6C80;
  *(v106 + 32) = v163;
  *(v106 + 56) = v164;
  *(v106 + 64) = v175;
  *(v106 + 120) = v4;
  *(v106 + 88) = v56;
  *(v106 + 96) = v180;
  v107 = MEMORY[0x1B8C8A6C0]();
  v108 = sub_1B5EA5A00();

  sub_1B5E46144(v108);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v109 = sub_1B5E5FEBC();
  [v109 v110];

  v111 = sub_1B5E601E0(v33);
  *(v111 + 16) = xmmword_1B5EB6C80;
  *(v111 + 32) = v162;
  *(v111 + 56) = v161;
  *(v111 + 64) = v175;
  *(v111 + 120) = v4;
  *(v111 + 88) = v56;
  *(v111 + 96) = v180;
  v112 = MEMORY[0x1B8C8A6C0]();
  v113 = sub_1B5EA5A00();

  sub_1B5E46144(v113);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [v6 setClasses:v113 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:5 ofReply:0];

  v114 = sub_1B5E5F9CC(v33);
  v115 = sub_1B5E5F330(v114);
  v116[4] = v160;
  v116[11] = v4;
  v116[7] = v159;
  v116[8] = v180;
  MEMORY[0x1B8C8A6C0](v115);
  sub_1B5E60024();
  v117 = sub_1B5EA5A00();

  sub_1B5E46144(v117);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v118 = sub_1B5E5FC90();
  [v118 v119];

  v120 = sub_1B5E5F9CC(v33);
  v121 = sub_1B5E5F330(v120);
  v122[4] = v157;
  v122[11] = v4;
  v122[7] = v158;
  v122[8] = v180;
  MEMORY[0x1B8C8A6C0](v121);
  sub_1B5E5F598();
  v123 = sub_1B5EA5A00();

  sub_1B5E46144(v123);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v124 = sub_1B5E5FEBC();
  [v124 v125];

  v126 = sub_1B5E5F9CC(v33);
  v127 = sub_1B5E5F330(v126);
  v128[4] = v156;
  v128[11] = v4;
  v128[7] = v155;
  v128[8] = v180;
  MEMORY[0x1B8C8A6C0](v127);
  sub_1B5E5F798();
  v129 = sub_1B5EA5A00();

  sub_1B5E46144(v129);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v129 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:8 ofReply:0];

  v130 = sub_1B5E5F9CC(v33);
  v131 = sub_1B5E5F330(v130);
  v132[4] = v154;
  v132[11] = v4;
  v132[7] = v153;
  v132[8] = v180;
  MEMORY[0x1B8C8A6C0](v131);
  sub_1B5E5F798();
  v133 = sub_1B5EA5A00();

  sub_1B5E46144(v133);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v133 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:9 ofReply:0];

  v134 = sub_1B5E5F9CC(v33);
  v135 = sub_1B5E5F330(v134);
  v136[4] = v152;
  v136[11] = v4;
  v136[7] = v151;
  v136[8] = v180;
  v137 = MEMORY[0x1B8C8A6C0](v135);
  v138 = sub_1B5EA5A00();

  sub_1B5E46144(v138);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v138 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:10 ofReply:0];

  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setInterface:v181 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:13 ofReply:0];
  v139 = sub_1B5E5F9CC(v33);
  v140 = sub_1B5E5F330(v139);
  v141[4] = v177;
  v141[11] = v4;
  v141[7] = v176;
  v141[8] = v180;
  v142 = MEMORY[0x1B8C8A6C0](v140);
  v143 = sub_1B5EA5A00();

  sub_1B5E46144(v143);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E60210();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ forSelector:sel_registerWithConfiguration_documents_requestUUID_delegate_ argumentIndex:0 ofReply:0];

  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1B5EB6C90;
  *(v144 + 56) = v56;
  *(v144 + 32) = v175;
  v145 = type metadata accessor for DocumentXPCEnvelope(0);
  *(v144 + 88) = sub_1B5DF33E0(&qword_1EB90EB70, &qword_1B5EB6D60);
  *(v144 + 64) = v145;
  v146 = sub_1B5E479E8(0, &qword_1EB90CD60, 0x1E695DFF8);
  *(v144 + 120) = sub_1B5DF33E0(&qword_1EB90EB78, &qword_1B5EB6D68);
  *(v144 + 96) = v146;
  v147 = sub_1B5E479E8(0, &qword_1EB90CD88, 0x1E696AC00);
  v148 = sub_1B5DF33E0(&qword_1EB90EB80, &qword_1B5EB6D70);
  *(v144 + 128) = v147;
  *(v144 + 184) = v4;
  *(v144 + 152) = v148;
  *(v144 + 160) = v180;
  v149 = MEMORY[0x1B8C8A6C0](v144);
  v150 = sub_1B5EA5A00();

  sub_1B5E46144(v150);
  sub_1B5E43350();

  sub_1B5EA59F0();
  sub_1B5E2624C();

  sub_1B5E5FD70(sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_, sel_setClasses_forSelector_argumentIndex_ofReply_, v150, sel_registerWithConfiguration_documents_requestUUID_delegate_);

  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setInterface:v181 forSelector:sel_registerWithConfiguration_documents_requestUUID_delegate_ argumentIndex:3 ofReply:0];
}

uint64_t sub_1B5E46144(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1B5EA5B40())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B5DF33E0(&qword_1EB90EDD0, &qword_1B5EB71B0);
  sub_1B5E2624C();
  v3 = sub_1B5EA5B90();
  if (v2)
  {
LABEL_4:

    sub_1B5EA5B30();
    sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
    sub_1B5E47980();
    sub_1B5E436DC();
    result = sub_1B5EA5A20();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
      swift_dynamicCast();
      result = sub_1B5EA5B60();
      v18 = -1 << *(v3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v30;
      *v26 = v28;
      *(v26 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_1B5EA5B50();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
      swift_dynamicCast();
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
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        v27 = sub_1B5E5FD58();
        sub_1B5E5ECC8(v27);

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

void GenerativeExperiencesSessionClient.__allocating_init(_:_:)()
{
  sub_1B5E5FC04();
  v1 = objc_allocWithZone(v0);
  sub_1B5E5F688();
  GenerativeExperiencesSessionClient.init(_:_:)(v2, v3, v4);
}

void GenerativeExperiencesSessionClient.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E601CC();
  v6 = v5;
  v7 = sub_1B5E1A084();
  v8 = type metadata accessor for SessionConfiguration(v7);
  v9 = sub_1B5E01CF8(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v10 = &v4[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *&v4[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  *&v4[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v11;
  *&v4[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v11;
  v12 = sub_1B5DFA488();
  sub_1B5DFDA5C(v12, v13);
  v14 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v14);
  sub_1B5E5F3AC();
  sub_1B5E2D258();
  if (v15)
  {
    *&v4[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v15;
    v23.receiver = v4;
    v23.super_class = type metadata accessor for GenerativeExperiencesSessionClient();
    v16 = objc_msgSendSuper2(&v23, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v17, v18, v19);
    v20 = v16;
    v6(v22);
    sub_1B5E01688(v3);
    v21 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78(v20 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client);
    sub_1B5E5EC7C(v22, v20 + v21, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();

    sub_1B5E601B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E46698(void *a1)
{
  sub_1B5E5F910();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1B5E47A90;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1B5E467C4;
  v4[3] = &unk_1F2D66218;
  v3 = _Block_copy(v4);

  [a1 setInterruptionHandler_];
  _Block_release(v3);
}

void sub_1B5E46770(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1B5E46808(Strong, v2, v3, v4);
  }
}

uint64_t sub_1B5E467C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1B5E46808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5E601CC();
  sub_1B5EA53B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  if (qword_1EB90CE80 != -1)
  {
    v5 = sub_1B5E5EF54(&qword_1EB90CE80, v6);
  }

  v7 = sub_1B5E5F41C(v5, qword_1EB90CE88);
  sub_1B5E2D094(v7);
  v8 = sub_1B5E5F22C();
  v9(v8);
  v10 = sub_1B5EA5380();
  v11 = sub_1B5EA5A40();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1B5E5FD88();
    v15 = sub_1B5E5FC3C();
    *v12 = 136315138;
    sub_1B5E5FB20();
    *(v12 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v10, v11, "%s", v12, 0xCu);
    sub_1B5DF3FB8(v15);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v13 = sub_1B5E5F324();
  v14(v13);
  sub_1B5E601B8();
}

void sub_1B5E4699C()
{
  sub_1B5DFD8A8();
  v3 = v0;
  v4 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8();
  v74 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E08868();
  v77 = sub_1B5DF33E0(&qword_1EB90EBC0, &qword_1B5EB6D88);
  sub_1B5DF5EB8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFA50C();
  v80 = v8;
  v78 = sub_1B5DF33E0(&qword_1EB90EBC8, &qword_1B5EB6D90);
  sub_1B5DF5EB8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFA50C();
  v79 = v10;
  v81 = sub_1B5DF33E0(&qword_1EB90EBD0, &qword_1B5EB6D98);
  sub_1B5DF5EB8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E5F1E8();
  v12 = sub_1B5EA53B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  if (qword_1EB90CE80 == -1)
  {
    goto LABEL_2;
  }

LABEL_37:
  sub_1B5E5EF54(&qword_1EB90CE80, v14);
LABEL_2:
  v15 = sub_1B5DFD794(v12, qword_1EB90CE88);
  sub_1B5E2D094(v15);
  v16 = sub_1B5E436DC();
  v17(v16);
  v18 = sub_1B5EA5380();
  v19 = sub_1B5EA5A40();
  v73 = v4;
  v72 = v1;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_1B5E5FD88();
    v12 = sub_1B5E5FC3C();
    *v20 = 136315138;
    sub_1B5E5FB20();
    *(v20 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v18, v19, "%s, canceling all outstanding requests", v20, 0xCu);
    sub_1B5DF3FB8(v12);
    sub_1B5E2D07C();
    sub_1B5E2D07C();

    v21 = sub_1B5E5F324();
  }

  else
  {

    v21 = sub_1B5E5F78C();
  }

  v22(v21);
  v4 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E2D094(v3 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests);
  v1 = v3;
  v23 = *(v3 + v4);
  sub_1B5DFD808();
  v3 = v25 & v24;
  sub_1B5E6007C();
  v26 = 0;
  if (v3)
  {
    while (1)
    {
      v27 = v26;
LABEL_11:
      v28 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v29 = v28 | (v27 << 6);
      v30 = *(v23 + 48);
      sub_1B5EA4340();
      sub_1B5DF5EB8();
      (*(v31 + 16))(v2, v30 + *(v31 + 72) * v29);
      v32 = *(v23 + 56);
      v12 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
      sub_1B5DF5EB8();
      v34 = v32 + *(v33 + 72) * v29;
      v4 = *(v81 + 48);
      (*(v33 + 16))(v2 + v4, v34, v12);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      v36 = sub_1B5E47A4C(&qword_1EB90EBE0, 255, v35);
      sub_1B5E5F23C(v36);
      sub_1B5E5F94C();
      sub_1B5EA4EF0();
      sub_1B5EA59A0();
      sub_1B5DF4428(v2, &qword_1EB90EBD0, &qword_1B5EB6D98);
      if (!v3)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 >= v19)
    {
      break;
    }

    v3 = *(v23 + 64 + 8 * v27);
    ++v26;
    if (v3)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  v4 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E2D094(v1 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest);
  v81 = v1;
  v37 = *(v1 + v4);
  v2 = v37 + 64;
  sub_1B5DFD808();
  v40 = v39 & v38;
  sub_1B5E6007C();
  v41 = 0;
  v1 = v78;
  v3 = v79;
  if (!v40)
  {
    goto LABEL_15;
  }

  do
  {
    v42 = v41;
LABEL_19:
    v43 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v44 = v43 | (v42 << 6);
    v45 = *(v37 + 48);
    sub_1B5EA4340();
    sub_1B5DF5EB8();
    (*(v46 + 16))(v79, v45 + *(v46 + 72) * v44);
    v47 = *(v37 + 56);
    v12 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
    sub_1B5DF5EB8();
    v49 = v47 + *(v48 + 72) * v44;
    v4 = *(v78 + 48);
    (*(v48 + 16))(v79 + v4, v49, v12);
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    v51 = sub_1B5E47A4C(&qword_1EB90EBE0, 255, v50);
    sub_1B5E5F23C(v51);
    sub_1B5E5F94C();
    sub_1B5EA4EF0();
    sub_1B5EA58C0();
    sub_1B5DF4428(v79, &qword_1EB90EBC8, &qword_1B5EB6D90);
  }

  while (v40);
  while (1)
  {
LABEL_15:
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_35;
    }

    if (v42 >= v19)
    {
      break;
    }

    v40 = *(v2 + 8 * v42);
    ++v41;
    if (v40)
    {
      v41 = v42;
      goto LABEL_19;
    }
  }

  v52 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E2D094(v81 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests);
  v4 = *(v81 + v52) + 64;
  sub_1B5DFD808();
  v55 = v54 & v53;
  v57 = (v56 + 63) >> 6;
  v2 = v74 + 16;
  v3 = v74 + 8;
  v78 = v58;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v75 = v57;
  v76 = v4;
  if (v55)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v59 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_36;
    }

    if (v59 >= v57)
    {
      break;
    }

    v55 = *(v4 + 8 * v59);
    ++v12;
    if (v55)
    {
      v12 = v59;
      do
      {
LABEL_26:
        v79 = v55;
        v60 = __clz(__rbit64(v55)) | (v12 << 6);
        v61 = *(v78 + 48);
        sub_1B5EA4340();
        sub_1B5DF5EB8();
        (*(v62 + 16))(v80, v61 + *(v62 + 72) * v60);
        v63 = *(*(v78 + 56) + 8 * v60);
        *(v80 + *(v77 + 48)) = v63;
        v64 = *(v63 + 16);
        if (v64)
        {
          sub_1B5E34D40();
          v67 = v65 + v66;
          v81 = *(v68 + 72);
          v69 = *(v68 + 16);

          v1 = v73;
          do
          {
            v69(v72, v67, v73);
            sub_1B5EA5130();
            sub_1B5E5EF3C();
            v71 = sub_1B5E47A4C(&qword_1EB90EBE0, 255, v70);
            sub_1B5E5F23C(v71);
            sub_1B5E5F94C();
            sub_1B5EA4EF0();
            sub_1B5EA59A0();
            (*v3)(v72, v73);
            v67 += v81;
            --v64;
          }

          while (v64);
        }

        else
        {
        }

        v55 = (v79 - 1) & v79;
        sub_1B5DF4428(v80, &qword_1EB90EBC0, &qword_1B5EB6D88);
        v57 = v75;
        v4 = v76;
      }

      while (v55);
    }
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSessionClient.init(_:)()
{
  sub_1B5DFD8A8();
  v2 = sub_1B5E1A084();
  v3 = type metadata accessor for SessionConfiguration(v2);
  v4 = sub_1B5E01CF8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v5 = &v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v6;
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v6;
  v7 = sub_1B5DFA488();
  sub_1B5DFDA5C(v7, v8);
  v9 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v9);
  sub_1B5E5F3AC();
  sub_1B5E2D258();
  if (v10)
  {
    *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v10;
    v21.receiver = v1;
    v21.super_class = type metadata accessor for GenerativeExperiencesSessionClient();

    v11 = objc_msgSendSuper2(&v21, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v12, v13, v14);
    v15 = type metadata accessor for XPCServiceClientConnectionSession();
    sub_1B5E5F910();
    v16 = swift_allocObject();
    v17 = sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
    sub_1B5E5FE38(v17);
    v18 = v11;
    *(v16 + 16) = sub_1B5EA4DA0();
    v20[3] = v15;
    v20[4] = &off_1F2D66B00;

    v20[0] = v16;
    sub_1B5E01688(v0);
    v19 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78(v18 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client);
    sub_1B5E5EC7C(v20, v18 + v19, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();
  }

  else
  {
    sub_1B5E01688(v0);
    sub_1B5DF4428(v5, &qword_1EB90EBB0, &qword_1B5EB6D78);

    type metadata accessor for GenerativeExperiencesSessionClient();
    swift_deallocPartialClassInstance();
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSessionClient.init(identifer:)()
{
  sub_1B5DFD8A8();
  v65 = v2;
  v69 = v3;
  v4 = sub_1B5EA5560();
  v5 = sub_1B5E01CF8(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v68 = v7 - v6;
  sub_1B5E34DC8();
  v66 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v63 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v61 = v11 - v10;
  sub_1B5E34DC8();
  v67 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v64 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7F8();
  v62 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = sub_1B5EA4630();
  v20 = sub_1B5E01CF8(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  v60 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5E5F834();
  v23 = type metadata accessor for SessionConfiguration(0);
  v24 = sub_1B5E01CF8(v23);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5DFD7F8();
  v59 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  v30 = &v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 4) = 0;
  v31 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v31;
  v58 = v0;
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v31;
  sub_1B5DF33E0(&qword_1EB90EBF8, &qword_1B5EB6DB8);
  sub_1B5E5FFD0();
  v32 = sub_1B5EA4660();
  sub_1B5E01C50(v32);
  sub_1B5E5FC54();
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v33 = v29;

  sub_1B5EA4650();
  sub_1B5EA4620();
  sub_1B5EA4870();
  (*(v63 + 104))(v61, *MEMORY[0x1E69C63F8], v66);
  sub_1B5EA54F0();
  sub_1B5EA5400();
  v34 = sub_1B5E5FB64();
  v35(v34);
  v36 = v64;
  v37 = v62;
  v38 = v67;
  (*(v64 + 16))(v62, v18, v67);
  SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)(0, 1, v1, v37, v39, v40, v41);
  (*(v36 + 8))(v18, v38);
  v42 = sub_1B5E5FF70();
  v43(v42);
  sub_1B5DFDA5C(v33, v59);
  v44 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v44);
  sub_1B5E5FD64();
  sub_1B5E2D258();
  if (v45)
  {
    sub_1B5E2624C();

    v46 = v58;
    *&v58[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v38;
    v47 = type metadata accessor for GenerativeExperiencesSessionClient();
    v71.receiver = v46;
    v71.super_class = v47;
    v48 = objc_msgSendSuper2(&v71, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v49, v50, v51);
    v52 = type metadata accessor for XPCServiceClientConnectionSession();
    sub_1B5E5F910();
    v53 = swift_allocObject();
    v54 = sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
    sub_1B5E5FE38(v54);
    v55 = v48;
    *(v53 + 16) = sub_1B5EA4DA0();
    v70[3] = v52;
    v70[4] = &off_1F2D66B00;
    v70[0] = v53;
    sub_1B5E01688(v33);
    v56 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78(v55 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client);
    sub_1B5E5EC7C(v70, v55 + v56, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();

    sub_1B5DFD8C0();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B5E47980()
{
  result = qword_1ED7D2B88;
  if (!qword_1ED7D2B88)
  {
    sub_1B5E479E8(255, &qword_1ED7D2B80, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2B88);
  }

  return result;
}

uint64_t sub_1B5E479E8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B5E47A4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E47A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B5E47AB0()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  sub_1B5EA53B0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v5[2] = v3;
  v5[3] = v1;
  sub_1B5E4B8F4(sub_1B5E5B284, v5);
  sub_1B5DFD8C0();
}

void sub_1B5E47CDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B5EA5670();
  [a1 terminateSessionFor_];
}

void sub_1B5E47D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  v22 = v21;
  v194 = sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8);
  sub_1B5DF5DA8();
  v192 = v23;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v186 = &v154 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v190 = &v154 - v28;
  sub_1B5E34DC8();
  v184 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v191 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFD7E8();
  v183 = v32 - v31;
  v182 = sub_1B5DF33E0(&qword_1EB90EC08, &qword_1B5EB6DD0);
  sub_1B5DF5DA8();
  v189 = v33;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v34);
  sub_1B5DFA50C();
  v181 = v35;
  v195 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8();
  v37 = v36;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v38);
  sub_1B5DFA50C();
  v180 = v39;
  v193 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  sub_1B5DF5DA8();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v43);
  sub_1B5E5FF90();
  v179 = v44;
  sub_1B5E34DC8();
  v178 = sub_1B5EA4E90();
  sub_1B5DF5DA8();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  sub_1B5E5FF9C();
  v177 = v48;
  v188 = v49;
  MEMORY[0x1EEE9AC00](v50);
  sub_1B5E5FF90();
  v176 = v51;
  MEMORY[0x1EEE9AC00](v52);
  sub_1B5E26144(&v154 - v28);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v55 = &v154 - v28;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v154 - v28;
  v57 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v57);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v58);
  sub_1B5E5F1E8();
  v66 = *(v22 + 16);
  v67 = MEMORY[0x1E69E7CC0];
  v185 = v41;
  v159 = v37;
  if (v66)
  {
    v155 = v25;
    v156 = v56;
    v158 = v20;
    v196 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B798(0, v66, 0);
    v173 = sub_1B5EA4ED0();
    v69 = *(v46 + 16);
    v68 = v46 + 16;
    v172 = v69;
    v70 = *(v68 + 64);
    v157 = v22;
    v71 = v22 + ((v70 + 32) & ~v70);
    v170 = v189 + 104;
    v67 = v196;
    v169 = *(v68 + 56);
    v168 = v189 + 8;
    v167 = v191 + 8;
    v166 = (v68 + 16);
    v171 = v70;
    HIDWORD(v164) = *MEMORY[0x1E69E8790];
    v165 = (v70 + 17) & ~v70;
    v163 = v165 + v188;
    v162 = (v41 + 32);
    v161 = (v37 + 32);
    v174 = v68;
    do
    {
      v191 = v67;
      v188 = v71;
      v189 = v66;
      v72 = v178;
      v172(v176, v71, v178);
      sub_1B5E5FFC4();
      v73(v181, HIDWORD(v164), v182);
      v74 = v179;
      v75 = v180;
      sub_1B5EA5970();
      sub_1B5E5FFC4();
      v76 = sub_1B5E5F324();
      v77(v76);
      v78 = v183;
      sub_1B5EA4E60();
      v79 = sub_1B5EA42A0();
      sub_1B5E5FFC4();
      v80(v78, v184);
      v81 = *v166;
      v82 = v177;
      v83 = sub_1B5E5F318();
      v81(v83);
      v84 = swift_allocObject();
      v187 = v84;
      *(v84 + 16) = v79 & 1;
      (v81)(v84 + v165, v82, v72);
      v85 = v194;
      v86 = *(v194 + 48);
      v87 = *v162;
      v37 = v190;
      v88 = v74;
      v89 = v193;
      (*v162)(v190, v88, v193);
      v90 = *v161;
      v91 = v75;
      v92 = v195;
      (*v161)((v37 + v86), v91, v195);
      v87(v55, v37, v89);
      v93 = v92;
      v67 = v191;
      v90(&v55[*(v85 + 48)], v37 + v86, v93);
      v94 = &v55[*(v85 + 64)];
      sub_1B5E5F8F8();
      v95 = swift_allocObject();
      v96 = v187;
      *(v95 + 16) = sub_1B5E5B7B8;
      *(v95 + 24) = v96;
      *v94 = sub_1B5E5B818;
      v94[1] = v95;
      v196 = v67;
      v98 = *(v67 + 16);
      v97 = *(v67 + 24);
      if (v98 >= v97 >> 1)
      {
        v101 = sub_1B5E34E0C(v97);
        sub_1B5E5B798(v101, v98 + 1, 1);
        v67 = v196;
      }

      *(v67 + 16) = v98 + 1;
      sub_1B5E34D40();
      sub_1B5E5EE70(v55, v67 + v99 + *(v100 + 72) * v98, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v71 = v188 + v169;
      v66 = (v189 - 1);
    }

    while (v189 != 1);
    v20 = v158;
    v22 = v157;
    v56 = v156;
  }

  sub_1B5E4C324(v22, v59, v60, v61, v62, v63, v64, v65, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
  sub_1B5E5FFD0();
  sub_1B5EA5920();
  v102 = sub_1B5E5F2F8();
  sub_1B5DF3658(v102, v103, v104, v105);
  sub_1B5E5FB08();
  v106 = swift_allocObject();
  v106[2] = 0;
  v106[3] = 0;
  v106[4] = v37;
  v106[5] = v67;
  v106[6] = v20;

  v107 = v20;
  v108 = sub_1B5E5F844();
  v187 = sub_1B5E2A07C(v108, v109, v110, v111, v106);
  v112 = 0;
  v113 = *(v67 + 16);
  while (1)
  {
    v114 = *(v67 + 16);
    if (v113 == v112)
    {
      break;
    }

    if (v112 >= v114)
    {
      __break(1u);
      return;
    }

    sub_1B5E34D40();
    sub_1B5E5EEBC(v67 + v115 + *(v116 + 72) * v112++, v56, &qword_1EB90EC00, &qword_1B5EB6DC8);
    v117 = &v56[*(v194 + 64)];
    v119 = *v117;
    v118 = *(v117 + 1);
    sub_1B5E5F8F8();
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v118;
    v121 = swift_allocObject();
    v121[2] = sub_1B5E5B8CC;
    v121[3] = v120;
    v121[4] = v187;

    sub_1B5EA5980();
    v122 = sub_1B5E26048();
    sub_1B5DF4428(v122, v123, &qword_1B5EB6DC8);
  }

  if (v114)
  {
    v124 = sub_1B5E5FC78(MEMORY[0x1E69E7CC0]);
    sub_1B5E5B778(v124, v125, v126);
    v127 = v196;
    sub_1B5E34D40();
    v191 = v67;
    v129 = v67 + v128;
    v130 = (v185 + 32);
    v183 = *(v131 + 72);
    v184 = v186 + 8;
    v181 = (v159 + 8);
    v182 = (v159 + 32);
    v132 = v160;
    do
    {
      v192 = v127;
      v133 = v175;
      sub_1B5E5EEBC(v129, v175, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v134 = v193;
      v135 = v194;
      v136 = *(v194 + 48);
      v137 = *v130;
      v188 = *(v194 + 64);
      v189 = v137;
      v138 = v130;
      v139 = v190;
      (v137)(v190, v133, v193);
      v140 = v195;
      (*v182)(&v139[*(v135 + 48)], v133 + v136, v195);
      v141 = &v139[*(v135 + 64)];
      sub_1B5E5F8F8();
      v142 = swift_allocObject();
      v143 = *(v133 + v188);
      v127 = v192;
      *(v142 + 16) = v143;
      *v141 = sub_1B5E5EF2C;
      *(v141 + 1) = v142;
      v144 = v139;
      v130 = v138;
      v145 = v186;
      sub_1B5E5EE70(v144, v186, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v146 = *(v135 + 48);

      v147 = v134;
      v148 = v189;
      (v189)(v132, v145, v147);
      (*v181)(v145 + v146, v140);
      v196 = v127;
      v150 = *(v127 + 16);
      v149 = *(v127 + 24);
      if (v150 >= v149 >> 1)
      {
        v153 = sub_1B5E34E0C(v149);
        sub_1B5E5B778(v153, v150 + 1, 1);
        v127 = v196;
      }

      *(v127 + 16) = v150 + 1;
      sub_1B5E34D40();
      (v148)(v127 + v151 + *(v152 + 72) * v150, v132, v193);
      v129 += v183;
      --v114;
    }

    while (v114);
  }

  else
  {
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E488D4(char a1)
{
  v2 = sub_1B5EA42B0();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1B5EA4E60();
    sub_1B5EA4280();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1B5E489B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90EC28, &qword_1B5EB6EA0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_1B5EA4EB0();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_1B5EA4EE0();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = sub_1B5EA4ED0();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90ED90, &qword_1B5EB7178);
  v6[26] = swift_task_alloc();
  v11 = sub_1B5DF33E0(&qword_1EB90ED98, &qword_1B5EB7180);
  v6[27] = v11;
  v6[28] = *(v11 - 8);
  v6[29] = swift_task_alloc();
  v12 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v13 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v6[36] = v13;
  v6[37] = *(v13 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
  v6[41] = swift_task_alloc();
  sub_1B5DF33E0(&qword_1EB90EDA8, &qword_1B5EB7190);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E48DF0, 0, 0);
}

uint64_t sub_1B5E4922C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v1 = *v0;
  sub_1B5E2CE38();
  *v2 = v1;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B5E49E64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_1B5DF33E0(&qword_1EB90ED88, &qword_1B5EB7170);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  a2(v8);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  LODWORD(a2) = *MEMORY[0x1E69E8760];
  result = (*(v7 + 8))(v10, v6);
  if (v11 == a2)
  {
    return sub_1B5EA5940();
  }

  return result;
}

uint64_t sub_1B5E4A020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A044, 0, 0);
}

uint64_t sub_1B5E4A044()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 88) = v1;
  return sub_1B5E5EF74(sub_1B5E4A06C, v1);
}

uint64_t sub_1B5E4A06C()
{
  sub_1B5E01DFC();
  sub_1B5E2D094(*(v0 + 88) + 136);

  *(v0 + 96) = sub_1B5E4386C(v1);
  v2 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B5E4A0E0()
{
  sub_1B5E2CED8();
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  sub_1B5E2D240(v3 + 16);
  *(v3 + 16) = v1;

  dispatch_group_leave(v2);
  sub_1B5E2CF4C();

  return v4();
}

void sub_1B5E4A164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1B5DFD8A8();
  v23 = v22;
  v24 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v24);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5E08868();
  sub_1B5E5F318();
  sub_1B5EA5360();
  sub_1B5EA5290();
  sub_1B5E5F704();
  sub_1B5DF3658(v26, v27, v28, v29);
  sub_1B5E4DCD4();
  sub_1B5DF4428(v21, &qword_1EB90E6A0, &qword_1B5EB60D8);
  type metadata accessor for TokenStreamHandler(0, v23, a21, v30);
  sub_1B5E5EFBC();
  sub_1B5E63EC8();
  sub_1B5DFD8C0();
}

void sub_1B5E4A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v20;
  a20 = v21;
  v22 = sub_1B5E5FB58();
  v24 = sub_1B5DF33E0(v22, v23);
  sub_1B5E01CF8(v24);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  sub_1B5EA5290();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v28, v29, v30, v31);
  sub_1B5E26048();
  sub_1B5E4DCD4();
  v33 = v32;
  v35 = v34;
  sub_1B5DF4428(v27, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v36 = sub_1B5DF33E0(&qword_1EB90DB88, &qword_1B5EAFC30);
  sub_1B5E5FE38(v36);
  v37 = sub_1B5E5EFBC();
  sub_1B5E5AD40(v37, v33, v38, v35);
  sub_1B5DFD8C0();
}

void sub_1B5E4A398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1B5DFD8A8();
  v39[3] = v23;
  v40 = v21;
  v39[1] = v24;
  v39[2] = v25;
  v41 = v26;
  v27 = sub_1B5DF33E0(&qword_1EB90EC10, &qword_1B5EB6DF8);
  sub_1B5DF5DA8();
  v29 = v28;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5E5F57C();
  v31 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v31);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v39 - v33;
  sub_1B5E5FD58();
  sub_1B5EA5360();
  sub_1B5EA5290();
  sub_1B5E5F704();
  sub_1B5DF3658(v35, v36, v37, v38);
  sub_1B5E5FB64();
  sub_1B5E4DCD4();
  sub_1B5DF4428(v34, &qword_1EB90E6A0, &qword_1B5EB60D8);

  sub_1B5E5EFBC();
  sub_1B5EA45E0();
  sub_1B5EA4600();

  (*(v29 + 8))(v22, v27);
  sub_1B5DFD8C0();
}

void sub_1B5E4A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v20;
  a20 = v21;
  v22 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v22);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  sub_1B5EA5290();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v26, v27, v28, v29);
  sub_1B5E5FB64();
  sub_1B5E4DCD4();
  sub_1B5DF4428(v25, &qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E5EFBC();
  sub_1B5EA45E0();
  sub_1B5DFD8C0();
}