unint64_t sub_1C0BC8788(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ReporterState(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C0BEC018();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = sub_1C0BEC028();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v19 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_idGenerator);
    v20 = *(v19 + 16);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 16) = v22;
      result = getpid();
      if ((result & 0x80000000) == 0)
      {
        v18 = *(v19 + 16) | (result << 32);
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = a1;
LABEL_7:
  sub_1C0BC8CCC(v18, v10);
  sub_1C0BC9378(v10, v6, type metadata accessor for ReporterState);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  sub_1C0BC958C(v6, v18);
  swift_endAccess();
  v23 = sub_1C0BEBF88();
  v24 = sub_1C0BEC118();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v18;
    _os_log_impl(&dword_1C0BC7000, v23, v24, "Created new reporting session. { reporterID=%lld }", v25, 0xCu);
    MEMORY[0x1C68E0970](v25, -1, -1);
  }

  sub_1C0BCA00C(v10, type metadata accessor for ReporterState);
  return v18;
}

unint64_t sub_1C0BC8AFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C0BC8788(0x100000000);
  *a1 = result;
  return result;
}

uint64_t AudioAnalyticsCreateReporter(uint64_t a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1C0BEC178();

  return v4;
}

unint64_t sub_1C0BC8C28@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C0BC8788(0x100000000);
  *a1 = result;
  return result;
}

uint64_t sub_1C0BC8C74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0BC8CCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  active = type metadata accessor for ActiveReporterState(0);
  v7 = MEMORY[0x1EEE9AC00](active);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v18 - v10);
  type metadata accessor for ReporterData();
  v12 = swift_allocObject();
  *(v12 + 24) = -1;
  *(v12 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0BED230;
  *(v13 + 32) = getpid();
  type metadata accessor for PerfCheck(0);
  swift_allocObject();
  *(v12 + 40) = sub_1C0BC9100(v13);
  *(v12 + 16) = a1;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  if (*(v3 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled) == 1)
  {
    sub_1C0BC9028(v11, a2, type metadata accessor for ActiveReporterState);
    type metadata accessor for ReporterState(0);
  }

  else
  {
    sub_1C0BC9028(v11, v9, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *v9;
    if (EnumCaseMultiPayload != 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD78EC(v9 + *(v16 + 48), type metadata accessor for StartedReporterData);
    }

    *a2 = v15;
    type metadata accessor for ReporterState(0);
  }

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C0BC8EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v3 = sub_1C0BEC278();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0BCCD54(v4, &v13, &qword_1EBE52938, &qword_1C0BED7D0);
      v5 = v13;
      v6 = v14;
      result = sub_1C0BCA668(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C0BCA658(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BC9028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PerfCheck(uint64_t a1)
{
  result = qword_1ED6F76D0;
  if (!qword_1ED6F76D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1C0BC9100(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 50) = -1;
  v4 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
  if (qword_1ED6F7520 != -1)
  {
    swift_once();
  }

  v5 = sub_1C0BEBFA8();
  v6 = __swift_project_value_buffer(v5, qword_1ED6F78D0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v1 + v4, v6, v5);
  if (qword_1ED6F7540 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F78E8 == 1)
  {
    *(v1 + 24) = a1;

    *(v1 + 48) = 1;
  }

  else
  {

    (*(v7 + 8))(v1 + v4, v5);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C0BC9310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC9378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC93E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    v4 = sub_1C0BCA668(0xD00000000000001ALL, 0x80000001C0BEE450);
    if (v5)
    {
      sub_1C0BCB304(*(a2 + 56) + 32 * v4, v11);
      sub_1C0BCA658(v11, v12);
      sub_1C0BCB304(v12, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C0BCB360(v11, 0xD000000000000018, 0x80000001C0BEDF20, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_0(v12);
      v7 = a2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = a2;
LABEL_6:
  swift_beginAccess();

  v8 = swift_isUniquelyReferenced_nonNull_native();
  *&v11[0] = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1C0BC9890(v7, sub_1C0BCB820, 0, v8, v11);

  *(a1 + 32) = *&v11[0];

  result = swift_endAccess();
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);

    sub_1C0BCB874(a2, v10);
  }

  return result;
}

uint64_t sub_1C0BC958C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1C0BC9D00(a1, &qword_1EBE52960, &unk_1C0BED5F0);
    v13 = sub_1C0BC97E0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C0BEB944();
        v17 = v21;
      }

      sub_1C0BC9D60(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ReporterState);
      sub_1C0BDFCD8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1C0BC9D00(v8, &qword_1EBE52960, &unk_1C0BED5F0);
  }

  else
  {
    sub_1C0BC9D60(a1, v12, type metadata accessor for ReporterState);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1C0BC9DC8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_1C0BC97E0(uint64_t a1)
{
  v2 = sub_1C0BEC2B8();

  return sub_1C0BC9824(a1, v2);
}

unint64_t sub_1C0BC9824(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C0BC9890(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1C0BC9BA0(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1C0BCA658(v44, v42);
  v14 = *a5;
  result = sub_1C0BCA668(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1C0BCB4B0(v20, a4 & 1);
    result = sub_1C0BCA668(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1C0BEC298();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1C0BD20A0();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1C0BCA658(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1C0BCA658(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1C0BC9BA0(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1C0BCA658(v44, v42);
        v32 = *a5;
        result = sub_1C0BCA668(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1C0BCB4B0(v36, 1);
          result = sub_1C0BCA668(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_1C0BCA658(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1C0BCA658(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1C0BC9BA0(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1C0BCB86C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0BC9BA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C0BCB304(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1C0BCA658(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1C0BC9D00(v21, &qword_1EBE52968, &qword_1C0BED608);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BC9D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C0BC9D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC9DC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C0BC97E0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1C0BEB944();
      goto LABEL_7;
    }

    sub_1C0BD0568(v13, a3 & 1);
    v20 = sub_1C0BC97E0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C0BEC298();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ReporterState(0) - 8) + 72) * v10;

    return sub_1C0BD1920(a1, v18);
  }

LABEL_13:

  return sub_1C0BC9F14(v10, a2, a1, v16);
}

uint64_t sub_1C0BC9F14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReporterState(0);
  result = sub_1C0BC9FA8(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1C0BC9FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BCA00C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AudioAnalyticsSetConfiguration(_:_:)(Swift::Int64 a1, CFDictionaryRef a2)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
      sub_1C0BEC048();
    }
  }
}

void AudioAnalyticsSetConfiguration(Swift::Int64 a1, void *a2)
{
  v3 = a2;
  AudioAnalyticsSetConfiguration(_:_:)(a1, v3);
}

unint64_t sub_1C0BCA374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1C0BCA5E8(*(a1 + 56) + 32 * v14, &v29);
        v27 = v17;
        v28 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
        swift_dynamicCast();
        sub_1C0BCA658(&v23, v25);
        sub_1C0BCA658(v25, v26);
        sub_1C0BCA658(v26, &v24);
        result = sub_1C0BCA668(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1C0BCA658(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1C0BCA658(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0BCA5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C0BCA658(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C0BCA668(uint64_t a1, uint64_t a2)
{
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  v4 = sub_1C0BEC2F8();

  return sub_1C0BCA6E0(a1, a2, v4);
}

unint64_t sub_1C0BCA6E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C0BEC288())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0BCA828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  active = type metadata accessor for ActiveReporterState(0);
  v6 = MEMORY[0x1EEE9AC00](active);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = (&v52 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for ReporterState(0);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v52 - v18;
  v19 = sub_1C0BEC018();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v24 = v23;
  v25 = sub_1C0BEC028();
  result = (*(v20 + 8))(v22, v19);
  if (v25)
  {
    v57 = v17;
    v27 = a2;

    v28 = sub_1C0BEBF88();
    v29 = sub_1C0BEC118();

    v30 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61[0] = v32;
      *v31 = 134218243;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2081;
      v33 = sub_1C0BEC068();
      v35 = v30;
      v36 = sub_1C0BD80C0(v33, v34, v61);

      *(v31 + 14) = v36;
      v30 = v35;
      _os_log_impl(&dword_1C0BC7000, v28, v29, "Set configuration. { reporterID=%lld, configuration=%{private}s }", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1C68E0970](v32, -1, -1);
      MEMORY[0x1C68E0970](v31, -1, -1);
    }

    sub_1C0BCAF30(v27, 0xD000000000000026, 0x80000001C0BEE4B0, v13);
    if ((*(v58 + 48))(v13, 1, v59) == 1)
    {
      return sub_1C0BC9D00(v13, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      v37 = v13;
      v38 = v60;
      sub_1C0BC9D60(v37, v60, type metadata accessor for ReporterState);
      v39 = v38;
      v40 = v57;
      sub_1C0BC9378(v39, v57, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload())
      {
        v41 = v54;
        sub_1C0BC9D60(v40, v54, type metadata accessor for ActiveReporterState);
        v42 = v53;
        sub_1C0BC9378(v41, v53, type metadata accessor for ActiveReporterState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v44 = *v42;
        if (EnumCaseMultiPayload != 1)
        {
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BCA00C(v42 + *(v45 + 48), type metadata accessor for StartedReporterData);
        }

        sub_1C0BC93E0(v44, v30);

        v46 = sub_1C0BCD8D4(v60, 3);
        v47 = v56;
        sub_1C0BC9D60(v41, v56, type metadata accessor for ActiveReporterState);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BCA00C(v47 + *(v48 + 48), type metadata accessor for StartedReporterData);
        }

        swift_beginAccess();

        v49 = sub_1C0BEC038();

        v50 = v60;
        [v46 setWithConfiguration:v49 for:sub_1C0BE20D4()];
        swift_unknownObjectRelease();

        v51 = v50;
      }

      else
      {
        sub_1C0BC93E0(*v40, v30);

        v51 = v60;
      }

      return sub_1C0BCA00C(v51, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BCAF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1C0BEC018();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1C0BEC028();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (qword_1ED6F74F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  if (qword_1ED6F78A0 == a1)
  {
    v18 = type metadata accessor for ReporterState(0);
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }

  else
  {
    v20 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
    swift_beginAccess();
    v21 = *(v4 + v20);
    if (*(v21 + 16) && (v22 = sub_1C0BC97E0(a1), (v23 & 1) != 0))
    {
      v24 = v22;
      v25 = *(v21 + 56);
      v26 = type metadata accessor for ReporterState(0);
      v27 = *(v26 - 8);
      sub_1C0BC9378(v25 + *(v27 + 72) * v24, v11, type metadata accessor for ReporterState);
      v28 = *(v27 + 56);
      v28(v11, 0, 1, v26);
      sub_1C0BC9D60(v11, a4, type metadata accessor for ReporterState);
      return (v28)(a4, 0, 1, v26);
    }

    else
    {
      v29 = type metadata accessor for ReporterState(0);
      v30 = *(v29 - 8);
      (*(v30 + 56))(v11, 1, 1, v29);
      sub_1C0BD1F28(a2, a3, a1, a4);
      result = (*(v30 + 48))(v11, 1, v29);
      if (result != 1)
      {
        return sub_1C0BC9D00(v11, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }
  }

  return result;
}

uint64_t sub_1C0BCB304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C0BCB360(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C0BCA668(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C0BD20A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0BCB4B0(v16, a4 & 1);
    v11 = sub_1C0BCA668(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C0BEC298();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1C0BCA658(a1, v22);
  }

  else
  {
    sub_1C0BCB768(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1C0BCB4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
  v33 = v4;
  result = sub_1C0BEC268();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C0BCA658(v24, v34);
      }

      else
      {
        sub_1C0BCB304(v24, v34);
      }

      sub_1C0BEC2C8();
      sub_1C0BEC098();
      result = sub_1C0BEC2F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C0BCA658(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1C0BCB768(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C0BCA658(a4, (a5[7] + 32 * a1));
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_1C0BCB820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1C0BCB304((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1C0BCB874(uint64_t result, __int16 a2)
{
  v3 = result;
  *(v2 + 50) = a2;
  if (*(result + 16))
  {
    result = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF00);
    if (v4)
    {
      sub_1C0BCB304(*(v3 + 56) + 32 * result, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52928, &qword_1C0BED440);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_1C0BE0720(v6);
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF20);
    if (v5)
    {
      sub_1C0BCB304(*(v3 + 56) + 32 * result, v8);
      result = swift_dynamicCast();
      if (result)
      {
        *(v2 + 32) = v6;
        *(v2 + 40) = v7;
      }
    }
  }

  return result;
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t AudioAnalyticsSetAudioServiceType(_:_:)(uint64_t result, __int16 a2)
{
  v3 = result;
  if (qword_1ED6F74F8 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED6F78A0 != v3)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    v5 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a2;
    *(v6 + 32) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C0BD04FC;
    *(v7 + 24) = v6;
    v10[4] = sub_1C0BCA7FC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C0BCA800;
    v10[3] = &block_descriptor_25;
    v8 = _Block_copy(v10);
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0BCBC08()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void AudioAnalyticsSendMessage(_:_:_:_:)(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
      sub_1C0BEC048();
    }

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v5 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v5, qword_1ED6F78B8);
    oslog = sub_1C0BEBF88();
    v6 = sub_1C0BEC128();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, oslog, v6, "Discarding message with at least one nil entry. { reporterID=%lld }", v7, 0xCu);
      MEMORY[0x1C68E0970](v7, -1, -1);
    }
  }
}

uint64_t sub_1C0BCBFB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

void AudioAnalyticsSendMessage(uint64_t a1, void *a2, int a3, __int16 a4)
{
  v7 = a2;
  AudioAnalyticsSendMessage(_:_:_:_:)(a1, v7, a3, a4);
}

void sub_1C0BCC0E4(char *a1, char a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v79 = a6;
  v83 = a4;
  v84 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v71[-v11];
  v77 = type metadata accessor for ReporterState(0);
  v80 = *(v77 - 8);
  v12 = MEMORY[0x1EEE9AC00](v77);
  v78 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71[-v14];
  v82 = sub_1C0BEBF68();
  v16 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1C0BEC018();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *&v6[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v23 = v22;
  v24 = sub_1C0BEC028();
  (*(v19 + 8))(v21, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v25 = a1;
  a1 = v6;
  v24 = v83;
  if (a2)
  {
    if (qword_1ED6F74F8 == -1)
    {
LABEL_4:
      v25 = qword_1ED6F78A0;
      goto LABEL_5;
    }

LABEL_50:
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  v26 = v81;
  sub_1C0BEBF58();
  sub_1C0BEBF38();
  v28 = v27;
  v74 = *(v16 + 8);
  v75 = v16 + 8;
  v74(v26, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED230;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001C0BEE510;
  *(inited + 72) = MEMORY[0x1E69E63B0];
  *(inited + 48) = v28;

  v30 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  sub_1C0BC9D00(inited + 32, &qword_1EBE52938, &qword_1C0BED7D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = a3;
  sub_1C0BC9890(v30, sub_1C0BCB820, 0, isUniquelyReferenced_nonNull_native, &aBlock);

  v32 = aBlock;
  v33 = v84;
  sub_1C0BCCF24(v25, aBlock, v24, v84);
  AudioAnalyticsTraceWrapperPost(4624);
  v34 = v80;
  if ((v79 & 1) != 0 && (sub_1C0BCCDBC(1u) & 1) == 0)
  {

    v40 = sub_1C0BEBF88();
    v41 = sub_1C0BEC128();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v25;
      _os_log_impl(&dword_1C0BC7000, v40, v41, "Message send exceeds rate-limit threshold and will be dropped. { reporterID=%lld, rateLimit=32hz }", v42, 0xCu);
      MEMORY[0x1C68E0970](v42, -1, -1);
    }

    sub_1C0BE63FC(v25);
  }

  else
  {
    v35 = v24 == 7 && v33 == 6;
    v36 = v35;
    v79 = v36;
    if (v35)
    {
      if (qword_1EBE52840 != -1)
      {
        swift_once();
      }

      if (byte_1EBE53252)
      {
        v37 = sub_1C0BEC078();
        v38 = swift_allocObject();
        *(v38 + 16) = v32;
        v89 = sub_1C0BE79C0;
        v90 = v38;
        aBlock = MEMORY[0x1E69E9820];
        v86 = 1107296256;
        v87 = sub_1C0BE58C8;
        v88 = &block_descriptor_80;
        v39 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v39);

        return;
      }

      v43 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle;
      v44 = *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle];
      if (v44)
      {
        v73 = v44;
        v72 = [v73 pause];
        v45 = sub_1C0BEBF88();
        v46 = sub_1C0BEC118();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 67109120;
          *(v47 + 4) = v72;
          _os_log_impl(&dword_1C0BC7000, v45, v46, "Paused CPUTrace with handle. { success=%{BOOL}d }", v47, 8u);
          v48 = v47;
          v34 = v80;
          MEMORY[0x1C68E0970](v48, -1, -1);
        }

        v49 = *&a1[v43];
        *&a1[v43] = 0;

        v24 = v83;
      }
    }

    v50 = v76;
    sub_1C0BCAF30(v25, 0xD00000000000003FLL, 0x80000001C0BEE530, v76);
    v51 = *(v34 + 48);
    v52 = v77;
    if (v51(v50, 1, v77) == 1)
    {
      sub_1C0BD2244(v25, v15);
      if (v51(v50, 1, v52) != 1)
      {
        sub_1C0BC9D00(v50, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }

    else
    {
      sub_1C0BC9D60(v50, v15, type metadata accessor for ReporterState);
    }

    v53 = v78;
    sub_1C0BC9378(v15, v78, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0BCA00C(v53, type metadata accessor for ReporterState);
      if (qword_1ED6F7540 != -1)
      {
        swift_once();
      }

      if (byte_1ED6F78E8 != 1)
      {
        goto LABEL_43;
      }

      if (qword_1ED6F74F0 != -1)
      {
        swift_once();
      }

      if (byte_1ED6F78A9 == 1 && v84 == 1 && *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_halIOCategory] == v24)
      {
        v54 = v81;
        sub_1C0BEBF58();
        sub_1C0BEBF38();
        v56 = v55;
        v74(v54, v82);
        v57 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery;
        if (v56 - *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] > 3600.0)
        {
          v58 = sub_1C0BCD8D4(v15, 1);
          v59 = swift_allocObject();
          *(v59 + 16) = a1;
          v89 = sub_1C0BE79B8;
          v90 = v59;
          aBlock = MEMORY[0x1E69E9820];
          v86 = 1107296256;
          v87 = sub_1C0BE59D0;
          v88 = &block_descriptor_2;
          v60 = _Block_copy(&aBlock);
          v61 = a1;

          [v58 getTailspinSessionIDFor:v25 reply:v60];
          _Block_release(v60);
          swift_unknownObjectRelease();
          v62 = v81;
          sub_1C0BEBF58();
          sub_1C0BEBF38();
          v64 = v63;
          v74(v62, v82);
          *&a1[v57] = v64;
        }
      }

      v33 = v84;
      if (v79)
      {
        v65 = sub_1C0BCD8D4(v15, 1);
        v66 = sub_1C0BEC038();

        [v65 sendWithMessage:v66 with:7 and:6 for:v25];
      }

      else
      {
LABEL_43:
        v67 = sub_1C0BCD8D4(v15, 3);
        v66 = sub_1C0BEC038();

        [v67 sendWithMessage:v66 with:v24 and:v33 for:v25];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1C0BCA00C(v53, type metadata accessor for ReporterState);
      v68 = sub_1C0BEBF88();
      v69 = sub_1C0BEC128();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        *(v70 + 4) = v25;
        _os_log_impl(&dword_1C0BC7000, v68, v69, "Reporter disconnected. { function=sendMessage, reporterID=%lld }", v70, 0xCu);
        MEMORY[0x1C68E0970](v70, -1, -1);
      }
    }

    sub_1C0BCA00C(v15, type metadata accessor for ReporterState);
  }
}

uint64_t sub_1C0BCCCE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BCCD18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BCCD54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0BCCDBC(unsigned int a1)
{
  v2 = v1;
  v4 = sub_1C0BEBF68();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  if (v9 < a1)
  {
    sub_1C0BEBF58();
    sub_1C0BEBF38();
    v11 = v10;
    result = (*(v5 + 8))(v8, v4);
    v12 = (v11 - *(v2 + 32)) * 32.0;
    v13 = round(v12);
    v14 = vcvtad_u64_f64(v12);
    if (v13 >= 4294967300.0 || v13 <= -1.0)
    {
      v14 = -1;
    }

    v16 = *(v2 + 24);
    v17 = v16 + v14;
    if (v16 + v14 >= 0x20)
    {
      v17 = 32;
    }

    v9 = __CFADD__(v16, v14) ? 32 : v17;
    *(v2 + 24) = v9;
    *(v2 + 32) = v11;
    if (v9 < a1)
    {
      return 0;
    }
  }

  v18 = v9 >= a1;
  v19 = v9 - a1;
  if (v18)
  {
    *(v2 + 24) = v19;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0BCCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a4 == 6)
  {

    oslog = sub_1C0BEBF88();
    v6 = sub_1C0BEC148();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 134218754;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2082;
      v9 = AudioEventCategory.description.getter(v4);
      v11 = sub_1C0BD80C0(v9, v10, &v29);

      *(v7 + 14) = v11;
      *(v7 + 22) = 2082;
      v12 = AudioEventType.description.getter(6u);
      v14 = sub_1C0BD80C0(v12, v13, &v29);

      *(v7 + 24) = v14;
      *(v7 + 32) = 2082;
      v15 = sub_1C0BEC068();
      v17 = sub_1C0BD80C0(v15, v16, &v29);

      *(v7 + 34) = v17;
      _os_log_impl(&dword_1C0BC7000, oslog, v6, "Sending message. { reporterID=%lld, category=%{public}s, type=%{public}s, message=%{public}s }", v7, 0x2Au);
      swift_arrayDestroy();
      v18 = v8;
LABEL_6:
      MEMORY[0x1C68E0970](v18, -1, -1);
      MEMORY[0x1C68E0970](v7, -1, -1);

      return;
    }
  }

  else
  {
    v19 = a4;
    oslog = sub_1C0BEBF88();
    v20 = sub_1C0BEC118();
    if (os_log_type_enabled(oslog, v20))
    {
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v7 = 134218498;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2082;
      v22 = AudioEventCategory.description.getter(v4);
      v24 = sub_1C0BD80C0(v22, v23, &v29);

      *(v7 + 14) = v24;
      *(v7 + 22) = 2082;
      v25 = AudioEventType.description.getter(v19);
      v27 = sub_1C0BD80C0(v25, v26, &v29);

      *(v7 + 24) = v27;
      _os_log_impl(&dword_1C0BC7000, oslog, v20, "Sending message. { reporterID=%lld, category=%{public}s, type=%{public}s }", v7, 0x20u);
      swift_arrayDestroy();
      v18 = v21;
      goto LABEL_6;
    }
  }
}

uint64_t sub_1C0BCD268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v5 = MEMORY[0x1EEE9AC00](active);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v45 - v8);
  v10 = type metadata accessor for ReporterState(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v45 - v17);
  sub_1C0BC9310(a1, &v45 - v17, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v24 = *v18;
    v25 = sub_1C0BCD8D4(a1, 3);
    [v25 createSessionWith_];
    swift_beginAccess();

    v26 = sub_1C0BEC038();

    [v25 setWithConfiguration:v26 for:*(v24 + 16)];

    [v25 setWithServiceType:*(v24 + 24) for:*(v24 + 16)];
    sub_1C0BCDBE8(v24);
    [v25 startSessionFor_];
    v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
    *a2 = v24;
    sub_1C0BEBF48();
    swift_unknownObjectRelease();
    *&v27[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
    swift_storeEnumTagMultiPayload();
    return swift_storeEnumTagMultiPayload();
  }

  v45 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *v18;
    if (v20 == 1)
    {
      sub_1C0BCDBE8(*v18);
      [sub_1C0BCD8D4(a1 3)];
      swift_unknownObjectRelease();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      v23 = v45 + *(v22 + 48);
      *v45 = v21;
      sub_1C0BEBF48();
      *&v23[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *v18;
    if (v29 == 1)
    {
      sub_1C0BCDBE8(*v18);
      [sub_1C0BCD8D4(a1 3)];
      swift_unknownObjectRelease();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      v32 = v45 + *(v31 + 48);
      *v45 = v30;
      sub_1C0BEBF48();
      *&v32[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BD78EC(v18 + *(v33 + 48), type metadata accessor for StartedReporterData);
  sub_1C0BC9310(a1, v16, type metadata accessor for ReporterState);
  v34 = sub_1C0BEBF88();
  v35 = sub_1C0BEC118();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    sub_1C0BC9310(v16, v13, type metadata accessor for ReporterState);
    v37 = swift_getEnumCaseMultiPayload();
    v38 = v35;
    if (v37)
    {
      if (v37 == 1)
      {
        sub_1C0BC9028(v13, v9, type metadata accessor for ActiveReporterState);
        v39 = swift_getEnumCaseMultiPayload();
        v40 = *v9;
        if (v39 != 1)
        {
          v41 = *v9;
          v42 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_18:
          sub_1C0BD78EC(v42, type metadata accessor for StartedReporterData);
          v40 = v41;
        }
      }

      else
      {
        sub_1C0BC9028(v13, v7, type metadata accessor for ActiveReporterState);
        v43 = swift_getEnumCaseMultiPayload();
        v40 = *v7;
        if (v43 != 1)
        {
          v41 = *v7;
          v42 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
          goto LABEL_18;
        }
      }
    }

    else
    {
      v40 = *v13;
    }

    v44 = *(v40 + 16);

    sub_1C0BD78EC(v16, type metadata accessor for ReporterState);
    *(v36 + 4) = v44;
    _os_log_impl(&dword_1C0BC7000, v34, v38, "Reporter already started. Returning early. { reporterID=%lld }", v36, 0xCu);
    MEMORY[0x1C68E0970](v36, -1, -1);
    goto LABEL_20;
  }

  sub_1C0BD78EC(v16, type metadata accessor for ReporterState);
LABEL_20:

  return sub_1C0BC9310(a1, v45, type metadata accessor for ReporterState);
}

uint64_t sub_1C0BCD8D4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ReporterState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9378(a1, v7, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *v7;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    v9 = swift_getEnumCaseMultiPayload();
    v10 = *v7;
    if (v9 != 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BCA00C(v7 + *(v11 + 48), type metadata accessor for StartedReporterData);
    }

LABEL_6:
    v12 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_injectedServerProtocol);
    if (v12)
    {
      swift_unknownObjectRetain();
LABEL_21:

      return v12;
    }

    if (a2 == 3)
    {
      v14 = *(v10 + 24);

      if (v14 == 11)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (a2)
      {
        if (a2 != 1)
        {
LABEL_19:

          v15 = sub_1C0BE7C4C();
          goto LABEL_20;
        }

        v15 = sub_1C0BE7C38();
LABEL_20:
        v12 = v15;
        goto LABEL_21;
      }
    }

    v15 = sub_1C0BD190C();
    goto LABEL_20;
  }

  v13 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
  if (*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
  {
    v12 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
  }

  else
  {
    type metadata accessor for MessageCache();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C0BDE700();
    *(v2 + v13) = v12;
  }

  sub_1C0BCA00C(v7, type metadata accessor for ReporterState);
  return v12;
}

uint64_t sub_1C0BCDB1C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) *a2];
    sub_1C0BEC1C8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52988, &qword_1C0BED688);
    swift_dynamicCast();
    v5 = v8;
    *(v2 + v3) = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_1C0BCDBE8(uint64_t a1)
{
  result = AudioAnalyticsTraceWrapperPost(4612);
  if (*(a1 + 40))
  {

    v3 = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
    sub_1C0BCB874(v3, *(a1 + 24));

    if (*(a1 + 40))
    {

      sub_1C0BCDC98();
    }
  }

  return result;
}

void sub_1C0BCDC98()
{
  if (*(v0 + 48) - 1 >= 2)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v9 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v9, qword_1ED6F78B8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD00000000000005ALL;
    *(v10 + 24) = 0x80000001C0BEDF70;
    v11 = swift_allocObject();
    *(v11 + 16) = 0x29287472617473;
    *(v11 + 24) = 0xE700000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = 31;
    oslog = sub_1C0BEBF88();
    v13 = sub_1C0BEC138();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v14 = swift_allocObject();
    *(v14 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C0BE0B0C;
    *(v15 + 24) = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C0BE0B08;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = 32;
    v18 = swift_allocObject();
    *(v18 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C0BE0B0C;
    *(v19 + 24) = v11;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1C0BE0B08;
    *(v20 + 24) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C0BE0B14;
    *(v24 + 24) = v12;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C0BE0B2C;
    *(v25 + 24) = v24;
    v57 = v13;
    if (os_log_type_enabled(oslog, v13))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63 = v27;
      v64 = 0;
      *v26 = 770;
      v56 = v27;
      v65[0] = v26 + 2;
      v61 = sub_1C0BE0B18;
      v62 = v58;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v14;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0AF4;
      v62 = v16;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v17;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v18;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0AF4;
      v62 = v20;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v21;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v23;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

LABEL_17:
      v61 = sub_1C0BE0AF8;
      v62 = v25;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      _os_log_impl(&dword_1C0BC7000, oslog, v57, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v56, -1, -1);
      MEMORY[0x1C68E0970](v26, -1, -1);

      return;
    }
  }

  else
  {
    v1 = v0;
    v2 = *(v0 + 16);
    if (v2 >> 62)
    {
      if (!sub_1C0BEC248())
      {
        goto LABEL_4;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52948, &qword_1C0BED450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0BED2C0;
      *(inited + 32) = 0x705F746E65636572;
      *(inited + 40) = 0xEB000000006B6165;
      strcpy((inited + 48), "kaeptncrpeak_delta");
      *(inited + 67) = 0;
      *(inited + 68) = -369098752;
      *(inited + 72) = *"atldkaep";
      v4 = *(v0 + 24);
      v5 = MEMORY[0x1E69E7CC0];
      v61 = MEMORY[0x1E69E7CC0];
      v6 = *(v4 + 16);
      if (v6)
      {
        type metadata accessor for PCSession();

        v7 = 32;
        do
        {
          v8 = *(v4 + v7);
          swift_allocObject();
          if (sub_1C0BCECC0(v8))
          {
            if (sub_1C0BCEFD8(inited))
            {
              MEMORY[0x1C68E0020]();
              if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1C0BEC0F8();
              }

              sub_1C0BEC108();
              v5 = v61;
            }

            else
            {
            }
          }

          v7 += 4;
          --v6;
        }

        while (v6);
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52950, &qword_1C0BED458);
      swift_arrayDestroy();
      *(v1 + 16) = v5;

      swift_retain_n();
      v28 = sub_1C0BEBF88();
      v29 = sub_1C0BEC118();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v61 = v31;
        *v30 = 136315394;

        v33 = MEMORY[0x1C68E0030](v32, MEMORY[0x1E69E72F0]);
        v35 = v34;

        v36 = sub_1C0BD80C0(v33, v35, &v61);

        *(v30 + 4) = v36;
        *(v30 + 12) = 2048;
        v37 = *(v1 + 16);
        if (v37 >> 62)
        {
          v38 = sub_1C0BEC248();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v30 + 14) = v38;

        _os_log_impl(&dword_1C0BC7000, v28, v29, "Begin measuring performance metrics. { pids=%s, pcSessions=%ld }", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1C68E0970](v31, -1, -1);
        MEMORY[0x1C68E0970](v30, -1, -1);
      }

      else
      {
      }

      *(v1 + 48) = 0;
      return;
    }

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v39 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v39, qword_1ED6F78B8);
    v40 = swift_allocObject();
    *(v40 + 16) = 0xD00000000000005ALL;
    *(v40 + 24) = 0x80000001C0BEDF70;
    v41 = swift_allocObject();
    *(v41 + 16) = 0x29287472617473;
    *(v41 + 24) = 0xE700000000000000;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    oslog = sub_1C0BEBF88();
    v43 = sub_1C0BEC138();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C0BE0B0C;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1C0BE0B08;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C0BE0B0C;
    *(v49 + 24) = v41;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C0BE0B08;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1C0BE0B14;
    *(v54 + 24) = v42;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C0BE0B2C;
    *(v25 + 24) = v54;
    v57 = v43;
    if (os_log_type_enabled(oslog, v43))
    {
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      v64 = 0;
      *v26 = 770;
      v56 = v55;
      v65[0] = v26 + 2;
      v61 = sub_1C0BE0B18;
      v62 = v59;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v44;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0AF4;
      v62 = v46;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v47;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v48;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0AF4;
      v62 = v50;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v51;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      v61 = sub_1C0BE0B18;
      v62 = v53;
      sub_1C0BDAEA4(&v61, v65, &v64, &v63);

      goto LABEL_17;
    }
  }
}

uint64_t sub_1C0BCEBA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BCEBE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1C0BCECC0(uint64_t a1)
{
  v2 = v1;
  v21[1] = *MEMORY[0x1E69E9840];
  __errnum = sub_1C0BEBFB8();
  sub_1C0BEBFC8();
  sub_1C0BEBFC8();
  v3 = pc_session_create();
  if (v3 && (v4 = v3, __errnum == sub_1C0BEBFB8()))
  {
    __errnuma = pc_session_set_procpid();
    if (__errnuma == sub_1C0BEBFB8())
    {
      *(v1 + 16) = v4;
      *(v1 + 24) = 0;
      return v2;
    }

    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v15 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v15, qword_1ED6F78D0);
    v6 = sub_1C0BEBF88();
    v7 = sub_1C0BEC118();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_11:

      type metadata accessor for PCSession();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136380675;
    swift_beginAccess();
    result = strerror(__errnuma);
    if (result)
    {
      v16 = sub_1C0BEC0B8();
      v18 = sub_1C0BD80C0(v16, v17, v21);

      *(v8 + 4) = v18;
      v14 = "pc_session_set_procpid failed. { ret=%{private}s }.";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v5 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v5, qword_1ED6F78D0);
    v6 = sub_1C0BEBF88();
    v7 = sub_1C0BEC118();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136380675;
    swift_beginAccess();
    result = strerror(__errnum);
    if (result)
    {
      v11 = sub_1C0BEC0B8();
      v13 = sub_1C0BD80C0(v11, v12, v21);

      *(v8 + 4) = v13;
      v14 = "pc_session_create failed. { ret=%{private}s }.";
LABEL_10:
      _os_log_impl(&dword_1C0BC7000, v6, v7, v14, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1C68E0970](v9, -1, -1);
      MEMORY[0x1C68E0970](v8, -1, -1);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BCEFD8(uint64_t a1)
{
  if (*(v1 + 24))
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v26 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v26, qword_1ED6F78B8);
    v27 = swift_allocObject();
    *(v27 + 16) = 0xD00000000000005ALL;
    *(v27 + 24) = 0x80000001C0BEDF70;
    v28 = swift_allocObject();
    strcpy((v28 + 16), "begin(with:)");
    *(v28 + 29) = 0;
    *(v28 + 30) = -5120;
    v29 = swift_allocObject();
    *(v29 + 16) = 161;
    osloga = sub_1C0BEBF88();
    v44 = sub_1C0BEC138();
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C0BE0B0C;
    *(v31 + 24) = v27;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1C0BE0B08;
    *(v32 + 24) = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1C0BE0B0C;
    *(v35 + 24) = v28;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1C0BE0B08;
    *(v36 + 24) = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1C0BE0B14;
    *(v38 + 24) = v29;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1C0BE0B2C;
    *(v39 + 24) = v38;
    if (os_log_type_enabled(osloga, v44))
    {
      v42 = v33;
      v43 = v34;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 770;
      v52 = 0;
      v53 = v40 + 2;
      v49 = sub_1C0BE0B18;
      v50 = v47;
      v51 = v41;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0B18;
      v50 = v30;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0AF4;
      v50 = v32;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0B18;
      v50 = v42;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0B18;
      v50 = v43;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0AF4;
      v50 = v36;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0B18;
      v50 = v37;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0B18;
      v50 = v48;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      v49 = sub_1C0BE0AF8;
      v50 = v39;
      sub_1C0BDAEA4(&v49, &v53, &v52, &v51);

      _os_log_impl(&dword_1C0BC7000, osloga, v44, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v41, -1, -1);
      MEMORY[0x1C68E0970](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = _TtC14AudioAnalytics9PerfCheck;
    if (v2)
    {
      v4 = a1 + 48;
      do
      {
        v6 = *(v4 - 16);
        v5 = *(v4 - 8);

        v7 = pc_session_add_metric();
        if (v7 == sub_1C0BEBFB8())
        {
        }

        else
        {
          if (v3[32].info != -1)
          {
            swift_once();
          }

          v8 = sub_1C0BEBFA8();
          __swift_project_value_buffer(v8, qword_1ED6F78D0);

          v9 = sub_1C0BEBF88();
          v10 = sub_1C0BEC118();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = v3;
            v13 = swift_slowAlloc();
            v49 = v13;
            *v11 = 136380675;
            v14 = sub_1C0BD80C0(v6, v5, &v49);

            *(v11 + 4) = v14;
            _os_log_impl(&dword_1C0BC7000, v9, v10, "pc_session_add_metric failed. { metric=%{private}s }", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v13);
            v15 = v13;
            v3 = v12;
            MEMORY[0x1C68E0970](v15, -1, -1);
            MEMORY[0x1C68E0970](v11, -1, -1);
          }

          else
          {
          }
        }

        v4 += 24;
        --v2;
      }

      while (v2);
    }

    v16 = pc_session_begin();
    if (v16 == sub_1C0BEBFB8())
    {
      result = 1;
      LOBYTE(oslog[3].isa) = 1;
      return result;
    }

    if (v3[32].info != -1)
    {
      swift_once();
    }

    v18 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v18, qword_1ED6F78D0);
    v19 = sub_1C0BEBF88();
    v20 = sub_1C0BEC118();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136380675;
      if (!strerror(v16))
      {
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      v23 = sub_1C0BEC0B8();
      v25 = sub_1C0BD80C0(v23, v24, &v49);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1C0BC7000, v19, v20, "pc_session_begin failed. { ret=%{private}s }", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1C68E0970](v22, -1, -1);
      MEMORY[0x1C68E0970](v21, -1, -1);
    }
  }

  return 0;
}

Swift::Void __swiftcall AudioAnalyticsStartReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BCD238;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCAF00;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C0BCFB8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BCFBD8(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0BEC018();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = sub_1C0BEC028();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v20 = sub_1C0BEBF88();
    v21 = sub_1C0BEC118();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v25;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v23;
      _os_log_impl(&dword_1C0BC7000, v20, v21, "Starting reporter. { reporterID=%lld }", v24, 0xCu);
      MEMORY[0x1C68E0970](v24, -1, -1);
    }

    sub_1C0BCAF30(v23, 0xD000000000000019, 0x80000001C0BEE610, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_1C0BC9D00(v8, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v8, v12, type metadata accessor for ReporterState);
      sub_1C0BCD268(v12, v6);
      (*(v10 + 56))(v6, 0, 1, v9);
      swift_beginAccess();
      sub_1C0BC958C(v6, v23);
      swift_endAccess();
      return sub_1C0BCA00C(v12, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BCFF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - v7;
  v8 = type metadata accessor for ReporterState(0);
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v46 = v15;
  v47 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1C0BEC018();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v23 = v22;
  v24 = sub_1C0BEC028();
  result = (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v26 = sub_1C0BEBF88();
    v27 = sub_1C0BEC118();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 134218242;
      *(v28 + 4) = a2;
      *(v28 + 12) = 2082;
      v30 = AudioServiceType.description.getter(v5);
      v45 = v12;
      v32 = sub_1C0BD80C0(v30, v31, &v51);
      v12 = v45;

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1C0BC7000, v26, v27, "Set serviceType. { reporterID=%lld, serviceType=%{public}s }", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1C68E0970](v29, -1, -1);
      MEMORY[0x1C68E0970](v28, -1, -1);
    }

    v34 = v48;
    v33 = v49;
    sub_1C0BCAF30(a2, 0xD000000000000024, 0x80000001C0BEE4E0, v48);
    v35 = v50;
    if ((*(v50 + 48))(v34, 1, v33) == 1)
    {
      return sub_1C0BC9D00(v34, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v34, v17, type metadata accessor for ReporterState);
      v36 = v47;
      sub_1C0BC9378(v17, v47, type metadata accessor for ReporterState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1C0BCA00C(v36, type metadata accessor for ReporterState);
      if (EnumCaseMultiPayload)
      {
        sub_1C0BC9378(v17, v12, type metadata accessor for ReporterState);
        v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
        v39 = a2;
        v40 = swift_allocObject();
        *(v40 + 16) = v5;
        *(v40 + 24) = v3;
        *(v40 + 32) = v39;
        sub_1C0BC9D60(v12, v40 + v38, type metadata accessor for ReporterState);
        sub_1C0BC9378(v17, v12, type metadata accessor for ReporterState);
        v41 = swift_allocObject();
        *(v41 + 16) = v5;
        *(v41 + 24) = v3;
        *(v41 + 32) = v39;
        sub_1C0BC9D60(v12, v41 + v38, type metadata accessor for ReporterState);
        v42 = v3;
        sub_1C0BE1000(v17, sub_1C0BE77A8, v40, sub_1C0BE7914, v41);
        sub_1C0BCA00C(v17, type metadata accessor for ReporterState);
      }

      else
      {
        v43 = sub_1C0BD0874();
        sub_1C0BCA00C(v17, type metadata accessor for ReporterState);
        *(v43 + 24) = v5;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BD0568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ReporterState(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  v37 = v4;
  result = sub_1C0BEC268();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1C0BC9FA8(v25, v7);
      }

      else
      {
        sub_1C0BEBE44(v25, v7);
      }

      result = sub_1C0BEC2B8();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1C0BC9FA8(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C0BD0874()
{
  v1 = v0;
  active = type metadata accessor for ActiveReporterState(0);
  v3 = MEMORY[0x1EEE9AC00](active);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v17 - v6);
  v8 = type metadata accessor for ReporterState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0BC9378(v1, v10, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0BC9D60(v10, v7, type metadata accessor for ActiveReporterState);
    v12 = swift_getEnumCaseMultiPayload();
    result = *v7;
    if (v12 == 1)
    {
      return result;
    }

    v14 = *v7;
    v15 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  }

  else
  {
    sub_1C0BC9D60(v10, v5, type metadata accessor for ActiveReporterState);
    v16 = swift_getEnumCaseMultiPayload();
    result = *v5;
    if (v16 == 1)
    {
      return result;
    }

    v14 = *v5;
    v15 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  }

  sub_1C0BCA00C(v15, type metadata accessor for StartedReporterData);
  return v14;
}

char *sub_1C0BD0AB4()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  result = sub_1C0BD0BE4(0, 0);
  qword_1ED6F78F0 = result;
  return result;
}

uint64_t sub_1C0BD0AF4(uint64_t a1)
{
  result = sub_1C0BEBFA8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1C0BD0BE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v71 = a1;
  v80 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0BEC158();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C0BEC168();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0BEC008();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_logger;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v11 = sub_1C0BEBFA8();
  v12 = __swift_project_value_buffer(v11, qword_1ED6F78B8);
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v68 = v12;
  v69 = v11;
  v66 = (v13 + 16);
  v67 = v14;
  (v14)(&v2[v10]);
  v15 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_halIOCategory;
  *&v2[v15] = sub_1C0BD2604(&unk_1F4021878);
  v16 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue;
  sub_1C0BD24B8(0, &qword_1ED6F7500, 0x1E69E9610);
  sub_1C0BEBFF8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8098], v5);
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0BD2500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BD2558();
  sub_1C0BEC1D8();
  *&v2[v16] = sub_1C0BEC198();
  v17 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_idGenerator;
  type metadata accessor for ReporterIDGenerator();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&v2[v17] = v18;
  v19 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageRateLimiter;
  type metadata accessor for RateLimiter();
  v20 = swift_allocObject();
  type metadata accessor for TokenBucket();
  v21 = swift_allocObject();
  *(v21 + 16) = 0x2000000020;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v20 + 16) = v21;
  *&v3[v19] = v20;
  v22 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
  *&v3[v22] = sub_1C0BD28B0(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache] = 0;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle] = 0;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] = 0;
  v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] = 0;
  if (v71)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v25 = sub_1C0BEC078();
    v23 = [v24 initWithMachServiceName:v25 options:4096];
  }

  v26 = v70;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection] = v23;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_injectedServerProtocol] = v26;
  type metadata accessor for ServerProxy(0);
  v27 = swift_allocObject();
  v67(v27 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger, v68, v69);
  *(v27 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___unboostedProxy) = 0;
  *(v27 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___boostedProxy) = 0;
  *(v27 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy) = 0;
  *(v27 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) = v23;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy] = v27;
  v28 = type metadata accessor for ServerClient(0);
  v79.receiver = v3;
  v79.super_class = v28;
  v29 = v23;
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v79, sel_init);
  v31 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection;
  v32 = *&v30[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection];
  v33 = objc_opt_self();
  v34 = v30;
  v35 = v32;
  v36 = [v33 interfaceWithProtocol_];
  [v35 setRemoteObjectInterface_];

  v37 = *&v30[v31];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1C0BE7A9C;
  v78 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1C0BE31A0;
  v76 = &block_descriptor_174;
  v39 = _Block_copy(&aBlock);
  v40 = v37;

  [v40 setInterruptionHandler_];
  _Block_release(v39);

  v67 = v31;
  v68 = v30;
  v41 = *&v30[v31];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1C0BE7AA4;
  v78 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v69 = &v75;
  v75 = sub_1C0BE31A0;
  v76 = &block_descriptor_178;
  v43 = _Block_copy(&aBlock);
  v44 = v41;

  [v44 setInvalidationHandler_];
  _Block_release(v43);

  v45 = swift_allocObject();
  *(v45 + 16) = -1;
  v46 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue;
  v47 = *&v34[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1C0BE7AAC;
  v78 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1C0BE3780;
  v76 = &block_descriptor_185;
  v49 = _Block_copy(&aBlock);
  v50 = v34;
  v51 = v47;

  v52 = sub_1C0BEC088();
  v53 = notify_register_dispatch((v52 + 32), (v45 + 16), v51, v49);

  _Block_release(v49);

  v66 = v34;
  v54 = *&v34[v46];
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v50;
  *(v55 + 32) = v45;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1C0BE7AB4;
  *(v56 + 24) = v55;
  v77 = sub_1C0BD3D50;
  v78 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1C0BCA800;
  v76 = &block_descriptor_195;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  dispatch_sync(v58, v57);

  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  out_token = -1;
  v59 = *&v66[v46];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v59;

  v77 = sub_1C0BE7AC0;
  v78 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1C0BE3780;
  v76 = &block_descriptor_199;
  v62 = _Block_copy(&aBlock);

  v63 = sub_1C0BEC088();
  notify_register_dispatch((v63 + 32), &out_token, v61, v62);

  _Block_release(v62);

  v64 = *(v67 + v68);
  [v64 resume];

  swift_unknownObjectRelease();
  return v50;
}

uint64_t sub_1C0BD1644()
{
  MEMORY[0x1C68E09C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD168C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD16E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1C0BEBFA8();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1C0BEBF98();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t AudioAnalyticsGetAudioServiceType(_:)(uint64_t a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_1ED6F78A0 == a1)
  {
    return 0xFFFFLL;
  }

  if (qword_1ED6F77D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = qword_1ED6F78F0;
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for AudioServiceType(0);
  v2 = v5;
  sub_1C0BEC178();

  return v6;
}

uint64_t sub_1C0BD1920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BD1984()
{
  result = sub_1C0BD1A4C();
  if (v1)
  {
    v2 = v1;
    if (result == 0x64786D6F69647561 && v1 == 0xE800000000000000 || (v3 = result, (sub_1C0BEC288() & 1) != 0) || v3 == 0x726573616964656DLL && v2 == 0xEC00000064726576)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C0BEC288();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_1ED6F78A9 = v4 & 1;
  return result;
}

uint64_t sub_1C0BD1A4C()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C0BED0E0;
  *(v1 + 32) = 0xE00000001;
  v2 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 44) = v0;
  bzero(v7, 0x288uLL);
  v6 = 648;
  v3 = sysctl(v2, 4u, v7, &v6, 0, 0);
  if (v3 == sub_1C0BEBFB8())
  {
    v4 = sub_1C0BEC0B8();

    return v4;
  }

  else
  {

    return 0;
  }
}

void sub_1C0BD1BAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C0BD1BF8@<X0>(uint64_t a1@<X1>, __int16 *a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for ReporterState(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = sub_1C0BEBF88();
  v14 = sub_1C0BEC118();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v10;
    v16 = a2;
    v17 = v15;
    *v15 = 134217984;
    *(v15 + 4) = v27;
    _os_log_impl(&dword_1C0BC7000, v13, v14, "Get serviceType. { reporterID=%lld }", v15, 0xCu);
    v18 = v17;
    a2 = v16;
    v10 = v26;
    MEMORY[0x1C68E0970](v18, -1, -1);
  }

  sub_1C0BCAF30(v27, 0xD00000000000001BLL, 0x80000001C0BEE6F0, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1C0BC9D00(v5, &qword_1EBE52960, &unk_1C0BED5F0);
    v20 = -1;
  }

  else
  {
    sub_1C0BC9D60(v5, v12, type metadata accessor for ReporterState);
    sub_1C0BC9D60(v12, v10, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for ActiveReporterState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = *v10;
      if (EnumCaseMultiPayload != 1)
      {
        v23 = a2;
        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
        v20 = *(v22 + 24);

        v25 = &v10[v24];
        a2 = v23;
        result = sub_1C0BCA00C(v25, type metadata accessor for StartedReporterData);
        goto LABEL_11;
      }

      v20 = *(v22 + 24);
    }

    else
    {
      v20 = *(*v10 + 24);
    }
  }

LABEL_11:
  *a2 = v20;
  return result;
}

uint64_t sub_1C0BD1F28@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  v8 = sub_1C0BEBF88();
  v9 = sub_1C0BEC118();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_1C0BD80C0(a1, a2, &v15);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v8, v9, "ReporterID not created by client. Returning early. { function=%{private}s, reporterID=%lld }", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C68E0970](v11, -1, -1);
    MEMORY[0x1C68E0970](v10, -1, -1);
  }

  v12 = type metadata accessor for ReporterState(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4, 1, 1, v12);
}

void *sub_1C0BD20A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
  v2 = *v0;
  v3 = sub_1C0BEC258();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C0BCB304(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C0BCA658(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C0BD2244@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  MEMORY[0x1EEE9AC00](active);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReporterData();
  v8 = swift_allocObject();
  *(v8 + 24) = -1;
  *(v8 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0BED230;
  *(v9 + 32) = getpid();
  type metadata accessor for PerfCheck(0);
  swift_allocObject();
  *(v8 + 40) = sub_1C0BC9100(v9);
  *(v8 + 16) = a1;
  *v7 = v8;
  swift_storeEnumTagMultiPayload();
  sub_1C0BC9D60(v7, a3, type metadata accessor for ActiveReporterState);
  type metadata accessor for ReporterState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C0BD23C4()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C0BD2404()
{

  v1 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
  v2 = sub_1C0BEBFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C0BD24B8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1C0BD2500()
{
  result = qword_1ED6F7508;
  if (!qword_1ED6F7508)
  {
    sub_1C0BEC158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7508);
  }

  return result;
}

unint64_t sub_1C0BD2558()
{
  result = qword_1ED6F7510;
  if (!qword_1ED6F7510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE52970, &unk_1C0BED630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7510);
  }

  return result;
}

uint64_t sub_1C0BD2604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C0BD2764(0, v1, 0);
    v3 = v21;
    v4 = (a1 + 32);
    v5 = v21[1].u64[0];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v22 = v3;
      v8 = v3[1].u64[1];
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_1C0BD2764((v8 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[1].i64[0] = v9;
      v3[2].i32[v5++] = v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9 <= 7)
  {
    v10 = 0;
    LODWORD(v11) = 0;
LABEL_13:
    v18 = v9 - v10;
    v19 = 4 * v10 + 32;
    do
    {
      v11 = *(v3->i32 + v19) | v11;
      v19 += 4;
      --v18;
    }

    while (v18);
    goto LABEL_15;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = v3 + 3;
  v13 = 0uLL;
  v14 = v9 & 0xFFFFFFFFFFFFFFF8;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 8;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v17 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v11 = (v17.i32[0] | v17.i32[1]);
  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

char *sub_1C0BD2764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0BD2784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0BD2784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52980, &qword_1C0BED650);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1C0BD28B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529E8, &qword_1C0BED828);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
    v7 = sub_1C0BEC278();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1C0BCCD54(v9, v5, &qword_1EBE529E8, &qword_1C0BED828);
      v11 = *v5;
      result = sub_1C0BC97E0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ReporterState(0);
      result = sub_1C0BC9FA8(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BD2A70(uint64_t a1)
{
  type metadata accessor for ReporterData();
  result = type metadata accessor for ActiveReporterState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C0BD2AD8(uint64_t a1)
{
  sub_1C0BD2B40(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ReporterData();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1C0BD2B40(uint64_t a1)
{
  if (!qword_1ED6F7418)
  {
    type metadata accessor for ReporterData();
    type metadata accessor for StartedReporterData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6F7418);
    }
  }
}

uint64_t sub_1C0BD2BAC(uint64_t a1)
{
  result = sub_1C0BEBF68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ServerProxy(uint64_t a1)
{
  result = qword_1ED6F7450;
  if (!qword_1ED6F7450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0BD2C6C(uint64_t a1)
{
  result = sub_1C0BEBFA8();
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

BOOL sub_1C0BD2D20(int a1)
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  notify_get_state(a1, v5);
  v1 = sub_1C0BEBF88();
  v2 = sub_1C0BEC118();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    swift_beginAccess();
    *(v3 + 4) = v5[0];
    _os_log_impl(&dword_1C0BC7000, v1, v2, "Game mode state retrieved. { value=%llu }", v3, 0xCu);
    MEMORY[0x1C68E0970](v3, -1, -1);
  }

  swift_beginAccess();
  return v5[0] != 0;
}

void sub_1C0BD2E40(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] != (result & 1))
  {
    v2 = v1;
    v3 = result;
    v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] = result & 1;
    v4 = sub_1C0BEBF88();
    v5 = sub_1C0BEC118();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      if (v6)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C0BC7000, v4, v5, "Entering caching mode.", v7, 2u);
        MEMORY[0x1C68E0970](v7, -1, -1);
      }

      v8 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
      swift_beginAccess();
      v9 = v2;

      v11 = sub_1C0BE7140(v10, v9);

      *&v2[v8] = v11;
    }

    else
    {
      if (v6)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1C0BC7000, v4, v5, "Leaving caching mode.", v12, 2u);
        MEMORY[0x1C68E0970](v12, -1, -1);
      }

      v13 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
      swift_beginAccess();
      v14 = v2;

      v16 = sub_1C0BE745C(v15, v14);

      *&v2[v13] = v16;

      sub_1C0BE5700();
    }
  }
}

uint64_t sub_1C0BD3020(uint64_t a1)
{
  result = sub_1C0BEBFA8();
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

void sub_1C0BD30F8()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v5[3] = &type metadata for AudioAnalytics;
      v5[4] = sub_1C0BD3184();
      v3 = sub_1C0BEBF78();
      __swift_destroy_boxed_opaque_existential_0(v5);
      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    byte_1ED6F78E8 = v4 & 1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C0BD3184()
{
  result = qword_1ED6F7528;
  if (!qword_1ED6F7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7528);
  }

  return result;
}

uint64_t sub_1C0BD3420()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1C0BD3500(uint64_t a1, unint64_t a2)
{
  v5 = [v2 reporterID];
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED6F78A0;
  if (v5 == qword_1ED6F78A0)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v7 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v7, qword_1ED6F78B8);

    v8 = v2;
    v9 = sub_1C0BEBF88();
    v10 = sub_1C0BEC128();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136380931;
      *(v11 + 4) = sub_1C0BD80C0(a1, a2, &v14);
      *(v11 + 12) = 2048;
      *(v11 + 14) = [v8 reporterID];

      _os_log_impl(&dword_1C0BC7000, v9, v10, "CAReporterID is invalid. Returning early. { function=%{private}s, reporterID=%lld }", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C68E0970](v12, -1, -1);
      MEMORY[0x1C68E0970](v11, -1, -1);
    }

    else
    {
    }
  }

  return v5 != v6;
}

uint64_t AudioAnalyticsReporter.sendMessage(_:category:type:)(uint64_t a1, int a2, __int16 a3)
{
  result = sub_1C0BD3500(0xD00000000000001DLL, 0x80000001C0BEDB10);
  if (result)
  {
    v8 = [v3 reporterID];
    result = sub_1C0BD39A8(a1);
    if (result || (result = sub_1C0BDCEB4(0xD00000000000001DLL, 0x80000001C0BEDB10, v8)) != 0)
    {
      v9 = result;
      if (qword_1ED6F77D8 != -1)
      {
        swift_once();
      }

      v10 = qword_1ED6F78F0;
      v11 = [v3 reporterID];
      v12 = *&v10[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = a2;
      *(v13 + 44) = a3;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1C0BCC094;
      *(v14 + 24) = v13;
      v17[4] = sub_1C0BD3D50;
      v17[5] = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1C0BCA800;
      v17[3] = &block_descriptor_54;
      v15 = _Block_copy(v17);
      v16 = v10;

      dispatch_sync(v12, v15);

      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1C0BD3910()
{

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

unint64_t sub_1C0BD39A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1C0BD3C64(*(a1 + 48) + 40 * v12, v27);
        sub_1C0BCB304(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1C0BD3C64(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1C0BCB304(v25 + 8, v20);
        sub_1C0BD3CE8(v24);
        v21 = v18;
        sub_1C0BCA658(v20, v22);
        v13 = v21;
        sub_1C0BCA658(v22, v23);
        sub_1C0BCA658(v23, &v21);
        result = sub_1C0BCA668(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_1C0BCA658(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1C0BCA658(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1C0BD3CE8(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0BD3CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528C8, &unk_1C0BED090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BD3F80(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0BEC018();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = sub_1C0BEC028();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v20 = sub_1C0BEBF88();
    v21 = sub_1C0BEC118();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v26;
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v23;
      _os_log_impl(&dword_1C0BC7000, v20, v21, "Stopping reporter. { reporterID=%lld }", v24, 0xCu);
      MEMORY[0x1C68E0970](v24, -1, -1);
    }

    sub_1C0BCAF30(v23, 0xD000000000000018, 0x80000001C0BEE5D0, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_1C0BC9D00(v8, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v8, v12, type metadata accessor for ReporterState);
      v25 = v2;
      sub_1C0BD4394(v12, v25, v25, v23, v6);
      (*(v10 + 56))(v6, 0, 1, v9);
      swift_beginAccess();
      sub_1C0BC958C(v6, v23);
      swift_endAccess();
      return sub_1C0BCA00C(v12, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0BD4394(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a4;
  v54 = a5;
  v55 = a3;
  v53 = a2;
  v6 = type metadata accessor for StartedReporterData(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  active = type metadata accessor for ActiveReporterState(0);
  v12 = MEMORY[0x1EEE9AC00](active);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - v15);
  v17 = type metadata accessor for ReporterState(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v51 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v51 - v27);
  v56 = a1;
  sub_1C0BC9310(a1, &v51 - v27, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = type metadata accessor for ReporterState;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = swift_getEnumCaseMultiPayload();
    v30 = type metadata accessor for ActiveReporterState;
    if (v31 != 1)
    {
      v32 = *v28;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9028(v28 + *(v33 + 48), v11, type metadata accessor for StartedReporterData);
      v34 = v55;
      sub_1C0BD4A88(v32, v11, v55, v51);
      [sub_1C0BCD8D4(v56 3)];
      swift_unknownObjectRelease();
      sub_1C0BD78EC(v11, type metadata accessor for StartedReporterData);
      *v54 = v32;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

LABEL_6:
    v36 = v56;
    sub_1C0BD78EC(v28, v30);
    sub_1C0BC9310(v36, v26, type metadata accessor for ReporterState);
    v37 = sub_1C0BEBF88();
    v38 = sub_1C0BEC128();
    if (!os_log_type_enabled(v37, v38))
    {
      sub_1C0BD78EC(v26, type metadata accessor for ReporterState);
      v45 = v54;
      v34 = v55;
LABEL_19:

      sub_1C0BC9310(v36, v45, type metadata accessor for ReporterState);
      goto LABEL_20;
    }

    v39 = swift_slowAlloc();
    *v39 = 134217984;
    sub_1C0BC9310(v26, v23, type metadata accessor for ReporterState);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40)
    {
      if (v40 == 1)
      {
        sub_1C0BC9028(v23, v16, type metadata accessor for ActiveReporterState);
        v41 = swift_getEnumCaseMultiPayload();
        v42 = *v16;
        if (v41 != 1)
        {
          v43 = *v16;
          v44 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_17:
          sub_1C0BD78EC(v44, type metadata accessor for StartedReporterData);
          v42 = v43;
        }
      }

      else
      {
        sub_1C0BC9028(v23, v14, type metadata accessor for ActiveReporterState);
        v49 = swift_getEnumCaseMultiPayload();
        v42 = *v14;
        if (v49 != 1)
        {
          v43 = *v14;
          v44 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v42 = *v23;
    }

    v45 = v54;
    v34 = v55;
    v50 = *(v42 + 16);

    sub_1C0BD78EC(v26, type metadata accessor for ReporterState);
    *(v39 + 4) = v50;
    _os_log_impl(&dword_1C0BC7000, v37, v38, "Reporter disconnected or already stopped. { func=stop, reporterID=%lld }", v39, 0xCu);
    MEMORY[0x1C68E0970](v39, -1, -1);
    v36 = v56;
    goto LABEL_19;
  }

  v35 = swift_getEnumCaseMultiPayload();
  v30 = type metadata accessor for ActiveReporterState;
  if (v35 == 1)
  {
    goto LABEL_6;
  }

  v46 = *v28;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BC9028(v28 + *(v47 + 48), v9, type metadata accessor for StartedReporterData);
  v34 = v55;
  sub_1C0BD4A88(v46, v9, v55, v51);
  v48 = v53;
  [sub_1C0BCD8D4(v56 3)];
  swift_unknownObjectRelease();
  if (*(v48 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled) == 1)
  {
    sub_1C0BD78EC(v9, type metadata accessor for StartedReporterData);
    *v54 = v46;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v20 = v46;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    sub_1C0BE0B7C(v20, v54);
    sub_1C0BD78EC(v20, type metadata accessor for ReporterState);
    sub_1C0BE5700();

    sub_1C0BD78EC(v9, type metadata accessor for StartedReporterData);
  }

LABEL_20:
}

uint64_t sub_1C0BD4A88(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  AudioAnalyticsTraceWrapperPost(4616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED230;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C0BEE5F0;
  sub_1C0BEBF28();
  *(inited + 72) = MEMORY[0x1E69E63B0];
  *(inited + 48) = -v8;
  v9 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  sub_1C0BC9D00(inited + 32, &qword_1EBE52938, &qword_1C0BED7D0);
  v10 = *(a2 + *(type metadata accessor for StartedReporterData(0) + 20));
  if (v10)
  {
    v23 = MEMORY[0x1E69E7668];
    LODWORD(v22) = v10;
    sub_1C0BCA658(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C0BCB360(v21, 0xD000000000000014, 0x80000001C0BEE1D0, isUniquelyReferenced_nonNull_native);
  }

  sub_1C0BCC0E4(a4, 0, v9, 1u, 0, 0);

  if (*(a1 + 40))
  {

    v13 = sub_1C0BD4D64();

    v14 = sub_1C0BEBF88();
    v15 = sub_1C0BEC118();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v22 = v17;
      *v16 = 134218243;
      *(v16 + 4) = a4;
      *(v16 + 12) = 2081;
      v18 = sub_1C0BEC068();
      v20 = sub_1C0BD80C0(v18, v19, &v22);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1C0BC7000, v14, v15, "Gathered performance metrics. { reporterID=%lld, perfMetrics=%{private}s }", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1C68E0970](v17, -1, -1);
      MEMORY[0x1C68E0970](v16, -1, -1);
    }

    sub_1C0BCC0E4(a4, 0, v13, 0xDu, 0, 0);
  }

  return result;
}

uint64_t (*sub_1C0BD4D64())(uint64_t, uint64_t, uint64_t)
{
  if (*(v0 + 48))
  {
LABEL_36:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v24 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v24, qword_1ED6F78B8);
    v25 = swift_allocObject();
    *(v25 + 16) = 0xD00000000000005ALL;
    *(v25 + 24) = 0x80000001C0BEDF70;
    v26 = swift_allocObject();
    *(v26 + 16) = 0xD000000000000022;
    *(v26 + 24) = 0x80000001C0BEDF40;
    v27 = swift_allocObject();
    *(v27 + 16) = 52;
    oslog = sub_1C0BEBF88();
    v43 = sub_1C0BEC138();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C0BE0ABC;
    *(v29 + 24) = v25;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C0BE0AD4;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1C0BE0ABC;
    *(v33 + 24) = v26;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1C0BE0B08;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1C0BE0AC4;
    *(v36 + 24) = v27;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1C0BE0AE4;
    *(v37 + 24) = v36;
    if (os_log_type_enabled(oslog, v43))
    {
      v41 = v31;
      v42 = v32;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      v50 = 0;
      *v38 = 770;
      v51 = v38 + 2;
      v47 = sub_1C0BE0ACC;
      v48 = v45;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0B18;
      v48 = v28;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0ADC;
      v48 = v30;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0B18;
      v48 = v41;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0B18;
      v48 = v42;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0AF4;
      v48 = v34;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0B18;
      v48 = v35;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0B18;
      v48 = v46;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      v47 = sub_1C0BE0AEC;
      v48 = v37;
      sub_1C0BDAEA4(&v47, &v51, &v50, &v49);

      _os_log_impl(&dword_1C0BC7000, oslog, v43, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v39, -1, -1);
      MEMORY[0x1C68E0970](v38, -1, -1);
    }

    else
    {
    }

    v40 = MEMORY[0x1E69E7CC0];

    return sub_1C0BC8EF8(v40);
  }

  v1 = v0;
  swift_retain_n();
  v2 = sub_1C0BEBF88();
  v3 = sub_1C0BEC118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v47 = v5;
    *v4 = 136315394;

    v7 = MEMORY[0x1C68E0030](v6, MEMORY[0x1E69E72F0]);
    v9 = v8;

    v10 = sub_1C0BD80C0(v7, v9, &v47);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2048;
    v11 = *(v1 + 16);
    if (v11 >> 62)
    {
      v12 = sub_1C0BEC248();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 14) = v12;

    _os_log_impl(&dword_1C0BC7000, v2, v3, "Collecting performance metrics. { pids=%s, pcSessions=%ld }", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C68E0970](v5, -1, -1);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + 16);
  if (v13 >> 62)
  {
    v14 = sub_1C0BEC248();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68E0170](v15, v13);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_18;
        }
      }

      sub_1C0BD57A0();

      ++v15;
    }

    while (v16 != v14);
  }

  v17 = *(v1 + 16);
  v47 = MEMORY[0x1E69E7CC8];
  if (v17 >> 62)
  {
    v18 = sub_1C0BEC248();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    v22 = MEMORY[0x1E69E7CC8];
    goto LABEL_33;
  }

  v19 = 0;
  while ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1C68E0170](v19, v17);
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_30;
    }

LABEL_26:
    v51 = v20;
    sub_1C0BD5FBC(&v47, &v51, v1);

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_31;
    }
  }

  if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v20 = *(v17 + 8 * v19 + 32);

  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v22 = v47;
LABEL_33:

  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  *(v1 + 48) = 1;
  return v22;
}

void sub_1C0BD57A0()
{
  if (*(v0 + 24) == 1)
  {
    v1 = v0;
    v2 = pc_session_end();
    if (v2 != sub_1C0BEBFB8())
    {
      if (qword_1ED6F7520 != -1)
      {
        swift_once();
      }

      v3 = sub_1C0BEBFA8();
      __swift_project_value_buffer(v3, qword_1ED6F78D0);
      v4 = sub_1C0BEBF88();
      v5 = sub_1C0BEC118();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v34 = v7;
        *v6 = 136380675;
        if (!strerror(v2))
        {
          __break(1u);

          while (1)
          {

            __break(1u);
          }
        }

        v8 = sub_1C0BEC0B8();
        v10 = sub_1C0BD80C0(v8, v9, &v34);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1C0BC7000, v4, v5, "pc_session_end failed. { ret=%{private}s }", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1C68E0970](v7, -1, -1);
        MEMORY[0x1C68E0970](v6, -1, -1);
      }
    }

    *(v1 + 24) = 2;
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v11 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v11, qword_1ED6F78B8);
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD00000000000005ALL;
    *(v12 + 24) = 0x80000001C0BEDF70;
    v13 = swift_allocObject();
    *(v13 + 16) = 0x2928646E65;
    *(v13 + 24) = 0xE500000000000000;
    v14 = swift_allocObject();
    *(v14 + 16) = 181;
    oslog = sub_1C0BEBF88();
    v15 = sub_1C0BEC138();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v16 = swift_allocObject();
    *(v16 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C0BE0B0C;
    *(v17 + 24) = v12;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C0BE0B08;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1C0BE0B0C;
    *(v21 + 24) = v13;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C0BE0B08;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C0BE0B14;
    *(v26 + 24) = v14;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1C0BE0B2C;
    *(v27 + 24) = v26;
    v31 = v15;
    if (os_log_type_enabled(oslog, v15))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      v37 = 0;
      *v28 = 770;
      v30 = v29;
      v38 = v28 + 2;
      v34 = sub_1C0BE0B18;
      v35 = v32;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0B18;
      v35 = v16;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0AF4;
      v35 = v18;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0B18;
      v35 = v19;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0B18;
      v35 = v20;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0AF4;
      v35 = v22;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0B18;
      v35 = v23;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0B18;
      v35 = v25;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      v34 = sub_1C0BE0AF8;
      v35 = v27;
      sub_1C0BDAEA4(&v34, &v38, &v37, &v36);

      _os_log_impl(&dword_1C0BC7000, oslog, v31, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v30, -1, -1);
      MEMORY[0x1C68E0970](v28, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C0BD5FBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21[22] = a1;
  v4 = 0x6E776F6E6B6E75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_1C0BED2C0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C0BEDF20;
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = MEMORY[0x1E69E6158];
  if (!v8)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  v10 = 0xE700000000000000;
  if (v8)
  {
    v11 = *(a3 + 40);
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v11;
  *(inited + 72) = v9;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  v12 = AudioServiceType.description.getter(*(a3 + 50));
  v6[15] = v9;
  v6[12] = v12;
  v6[13] = v13;

  v14 = sub_1C0BC8EF8(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  swift_arrayDestroy();
  v15 = sub_1C0BD63F4();
  v16 = sub_1C0BD73D0(v15);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v14;
  sub_1C0BC9890(v16, sub_1C0BCB820, 0, isUniquelyReferenced_nonNull_native, v21);

  v18 = v21[0];
  if (pc_session_get_procname())
  {
    v4 = sub_1C0BEC0B8();
    v10 = v19;
  }

  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52940, &qword_1C0BED448);
  v21[0] = v18;
  return sub_1C0BD7618(v21, v4, v10);
}

unint64_t AudioServiceType.description.getter(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x6E6F6870656C6574;
  switch(v1)
  {
    case 0:
      result = 0x636972656E6567;
      break;
    case 1:
      result = 1769105779;
      break;
    case 2:
      return result;
    case 3:
      result = 0x73636974706168;
      break;
    case 4:
      result = 0x736D72616C61;
      break;
    case 5:
      result = 0x6F6C41646E617473;
      break;
    case 6:
      result = 0x747541646E756F73;
      break;
    case 7:
      result = 0x6D726F46676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x737472656C61;
      break;
    case 11:
      result = 1953719668;
      break;
    case 12:
      result = 0x6567617355697061;
      break;
    case 13:
      result = 0x6F536D6574737973;
      break;
    case 14:
      result = 0x616E41646E756F73;
      break;
    case 15:
      result = 0x657275636573;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_1C0BD63F4()
{
  if (*(v0 + 24) == 2)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = sub_1C0BD6D50(MEMORY[0x1E69E7CC0]);
    v2 = (v1 + 16);
    v42 = sub_1C0BD6F04;
    v43 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1C0BD6E54;
    v41 = &block_descriptor_1;
    v3 = _Block_copy(&aBlock);

    values = pc_session_get_values();
    _Block_release(v3);
    if (values != sub_1C0BEBFB8())
    {
      if (qword_1ED6F7520 != -1)
      {
        swift_once();
      }

      v5 = sub_1C0BEBFA8();
      __swift_project_value_buffer(v5, qword_1ED6F78D0);
      v6 = sub_1C0BEBF88();
      v7 = sub_1C0BEC118();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock = v9;
        *v8 = 136380675;
        if (!strerror(values))
        {
          __break(1u);

          while (1)
          {

            __break(1u);
          }
        }

        v10 = sub_1C0BEC0B8();
        v12 = sub_1C0BD80C0(v10, v11, &aBlock);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_1C0BC7000, v6, v7, "pc_session_destroy failed, { ret=%{private}s }", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x1C68E0970](v9, -1, -1);
        MEMORY[0x1C68E0970](v8, -1, -1);
      }
    }

    swift_beginAccess();
    v13 = *(v1 + 16);

    return v13;
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v15 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v15, qword_1ED6F78B8);
    v16 = swift_allocObject();
    *(v16 + 16) = 0xD00000000000005ALL;
    *(v16 + 24) = 0x80000001C0BEDF70;
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000011;
    *(v17 + 24) = 0x80000001C0BEDFD0;
    v18 = swift_allocObject();
    *(v18 + 16) = 195;
    oslog = sub_1C0BEBF88();
    v34 = sub_1C0BEC138();
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1C0BE0B0C;
    *(v20 + 24) = v16;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1C0BE0B08;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C0BE0B0C;
    *(v24 + 24) = v17;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C0BE0B08;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1C0BE0B14;
    *(v27 + 24) = v18;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1C0BE0B2C;
    *(v28 + 24) = v27;
    if (os_log_type_enabled(oslog, v34))
    {
      v32 = v22;
      v33 = v23;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      v45 = 0;
      *v29 = 770;
      v46 = v29 + 2;
      aBlock = sub_1C0BE0B18;
      v39 = v36;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0B18;
      v39 = v19;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0AF4;
      v39 = v21;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0B18;
      v39 = v32;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0B18;
      v39 = v33;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0AF4;
      v39 = v25;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0B18;
      v39 = v26;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0B18;
      v39 = v37;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      aBlock = sub_1C0BE0AF8;
      v39 = v28;
      sub_1C0BDAEA4(&aBlock, &v46, &v45, &v44);

      _os_log_impl(&dword_1C0BC7000, oslog, v34, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v30, -1, -1);
      MEMORY[0x1C68E0970](v29, -1, -1);
    }

    else
    {
    }

    v31 = MEMORY[0x1E69E7CC0];

    return sub_1C0BD6D50(v31);
  }
}

uint64_t sub_1C0BD6CDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C0BD6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
    v3 = sub_1C0BEC278();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C0BCA668(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BD6E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v17 = *(a1 + 32);

  v17(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1C0BD6F0C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {
    v11 = sub_1C0BEC0B8();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a9 + 16);
  *(a9 + 16) = 0x8000000000000000;
  sub_1C0BD6FD0(v11, v13, isUniquelyReferenced_nonNull_native, a1);

  *(a9 + 16) = v16;
  return swift_endAccess();
}

unint64_t sub_1C0BD6FD0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C0BCA668(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1C0BD712C(v16, a3 & 1);
      result = sub_1C0BCA668(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C0BEC298();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C0BEB7DC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1C0BD712C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
  v33 = v4;
  result = sub_1C0BEC268();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1C0BEC2C8();
      sub_1C0BEC098();
      result = sub_1C0BEC2F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1C0BD73D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1C0BCA658(&v22, v24);
        sub_1C0BCA658(v24, v25);
        sub_1C0BCA658(v25, &v23);
        result = sub_1C0BCA668(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1C0BCA658(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1C0BCA658(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0BD7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C0BCA658(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C0BCB360(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1C0BC9D00(a1, &qword_1EBE52890, &qword_1C0BED600);
    sub_1C0BE6E20(a2, a3, v9);

    return sub_1C0BC9D00(v9, &qword_1EBE52890, &qword_1C0BED600);
  }

  return result;
}

uint64_t sub_1C0BD76E8()
{
  v0 = sub_1C0BD7718();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

char *sub_1C0BD7718()
{
  v1 = v0;
  v2 = pc_session_destroy();
  if (v2 == sub_1C0BEBFB8())
  {
    return v1;
  }

  if (qword_1ED6F7520 != -1)
  {
    swift_once();
  }

  v3 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v3, qword_1ED6F78D0);
  v4 = sub_1C0BEBF88();
  v5 = sub_1C0BEC118();
  if (!os_log_type_enabled(v4, v5))
  {
LABEL_7:

    return v1;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v12 = v7;
  *v6 = 136380675;
  result = strerror(v2);
  if (result)
  {
    v9 = sub_1C0BEC0B8();
    v11 = sub_1C0BD80C0(v9, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C0BC7000, v4, v5, "pc_session_destroy failed, { ret=%{private}s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C68E0970](v7, -1, -1);
    MEMORY[0x1C68E0970](v6, -1, -1);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BD788C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0BD78EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AudioAnalyticsStopReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BD433C;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCA7FC;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_15;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t AudioEventCategory.description.getter(int a1)
{
  v1 = a1 & 0xFFFF0000;
  v2 = a1;
  if ((a1 & 0xFFFF0000) <= 0x7FFFFFF)
  {
    switch(v1)
    {
      case 0x80000000:
        v3 = 0xE700000000000000;
        v4 = 0x786F626C6F6F54;
        goto LABEL_17;
      case 0:
        if (!a1)
        {
          return 0;
        }

        goto LABEL_19;
      case 0x4000000:
        v3 = 0xE400000000000000;
        v4 = 1229211981;
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v1 > 0x1FFFFFFF)
  {
    if (v1 != 0x20000000)
    {
      if (v1 == 0x40000000)
      {
        v3 = 0xE700000000000000;
        v4 = 0x676E6974756F52;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v3 = 0xE300000000000000;
    v4 = 4997448;
  }

  else
  {
    if (v1 != 0x8000000)
    {
      if (v1 == 0x10000000)
      {
        v3 = 0xE300000000000000;
        v4 = 5264196;
        goto LABEL_17;
      }

LABEL_14:
      v3 = 0xE900000000000064;
      v4 = 0x656E696665646E55;
      goto LABEL_17;
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E6F6973736553;
  }

LABEL_17:
  MEMORY[0x1C68DFFF0](v4, v3);

  if (v2)
  {
    MEMORY[0x1C68DFFF0](95, 0xE100000000000000);
LABEL_19:
    v5 = sub_1C0BD8C40(v2);
    MEMORY[0x1C68DFFF0](v5);
  }

  return 0;
}

void AudioAnalyticsSendSessionlessMessage(void *a1, int a2, __int16 a3)
{
  v5 = a1;
  AudioAnalyticsSendSessionlessMessage(_:_:_:)(v5, a2, a3);
}

void AudioAnalyticsSendSessionlessMessage(_:_:_:)(uint64_t a1, int a2, __int16 a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
    sub_1C0BEC048();
  }

  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v3 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v3, qword_1ED6F78B8);
  oslog = sub_1C0BEBF88();
  v4 = sub_1C0BEC128();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C0BC7000, oslog, v4, "Discarding message with at least one nil entry.", v5, 2u);
    MEMORY[0x1C68E0970](v5, -1, -1);
  }
}

unint64_t sub_1C0BD80C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C0BD818C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C0BCB304(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C0BD818C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C0BD8964(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C0BEC238();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t AudioAnalyticsCopyConfiguration(_:)(uint64_t a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  if (qword_1ED6F78A0 == a1)
  {
    return 0;
  }

  if (qword_1ED6F77D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  v4 = sub_1C0BEC038();

  return v4;
}

uint64_t sub_1C0BD8420@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ReporterState(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = sub_1C0BEBF88();
  v13 = sub_1C0BEC118();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v9;
    v15 = v14;
    *v14 = 134217984;
    *(v14 + 4) = v26;
    _os_log_impl(&dword_1C0BC7000, v12, v13, "Get configuration. { reporterID=%lld }", v14, 0xCu);
    v9 = v24;
    MEMORY[0x1C68E0970](v15, -1, -1);
  }

  sub_1C0BCAF30(v26, 0xD00000000000001DLL, 0x80000001C0BEE6D0, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C0BC9D00(v4, &qword_1EBE52960, &unk_1C0BED5F0);
    result = sub_1C0BD8824(MEMORY[0x1E69E7CC0]);
    v17 = result;
  }

  else
  {
    sub_1C0BC9D60(v4, v11, type metadata accessor for ReporterState);
    sub_1C0BC9378(v11, v9, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload() && (type metadata accessor for ActiveReporterState(0), swift_getEnumCaseMultiPayload() != 1))
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
      swift_beginAccess();

      v17 = sub_1C0BDA6D8(v22);

      sub_1C0BCA00C(v11, type metadata accessor for ReporterState);
      v19 = type metadata accessor for StartedReporterData;
      v20 = &v9[v21];
    }

    else
    {
      swift_beginAccess();

      v17 = sub_1C0BDA6D8(v18);

      v19 = type metadata accessor for ReporterState;
      v20 = v11;
    }

    result = sub_1C0BCA00C(v20, v19);
  }

  *v25 = v17;
  return result;
}

unint64_t sub_1C0BD8824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528A0, &qword_1C0BED810);
    v3 = sub_1C0BEC278();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0BCCD54(v4, v13, &qword_1EBE529D8, &qword_1C0BED818);
      result = sub_1C0BEA930(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C0BCA658(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C0BD8964(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C0BD89B0(a1, a2);
  sub_1C0BD8AE0(&unk_1F40218A0);
  return v3;
}

void *sub_1C0BD89B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0BD8BCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C0BEC238();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C0BEC0C8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0BD8BCC(v10, 0);
        result = sub_1C0BEC218();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C0BD8AE0(uint64_t result)
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

  result = sub_1C0BEA724(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1C0BD8BCC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529B8, &unk_1C0BED7E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C0BD8C40(int a1)
{
  v1 = a1 + 1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64726F636552;
      break;
    case 4:
      result = 0x7475706E49;
      break;
    case 5:
      result = 0x6B63616279616C50;
      break;
    case 6:
      result = 0x74757074754FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 20297;
      break;
    case 9:
      result = 0x7075746553;
      break;
    case 10:
      result = 0x6552746E65696C43;
      break;
    case 11:
      result = 0x6168436574756F52;
      break;
    case 12:
      result = 0x726F727245;
      break;
    case 13:
      result = 0x74726F7065524F49;
      break;
    case 14:
      result = 0x616D726F66726550;
      break;
    case 15:
      result = 0x656D756C6F56;
      break;
    case 16:
      result = 0x65736E61707845;
      break;
    case 17:
      result = 0x48676E6972616548;
      break;
    case 18:
      result = 0x73646F50726941;
      break;
    case 19:
      result = 0x6F72506563696F56;
      break;
    case 21:
      result = 0x6C616974617053;
      break;
    case 22:
      result = 0x556F5478694D5056;
      break;
    case 26:
      result = 0x756F527261456E49;
      break;
    default:
      result = 0x656E696665646E55;
      break;
  }

  return result;
}

unint64_t AudioEventType.description.getter(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x636972656E6567;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 1886352499;
      break;
    case 3:
      result = 0x6574617669746361;
      break;
    case 4:
      result = 0x6176697463616564;
      break;
    case 5:
      result = 0x7075746573;
      break;
    case 6:
      result = 0x726F727265;
      break;
    case 7:
      result = 0x7465446575737369;
      break;
    case 8:
      result = 0x676F4C7265776F70;
      break;
    case 9:
      result = 0x696E556F69647561;
      break;
    case 10:
      result = 0x766972446964696DLL;
      break;
    case 11:
      result = 0x7972616D6D7573;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x7078456F69647561;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x694B726F736E6573;
      break;
    case 16:
      result = 0x656C706D6973;
      break;
    case 17:
      result = 0x6172676F74736968;
      break;
    case 18:
      result = 0x6574617473;
      break;
    case 19:
      result = 0x6F4C79726F6D656DLL;
      break;
    case 20:
      result = 0x6E49646F50726961;
      break;
    case 21:
      result = 0x4955726F66;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x73676E6974746573;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

_WORD *sub_1C0BD9278@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1C0BD9294()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD92CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

uint64_t sub_1C0BD9318()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD9358()
{

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

id sub_1C0BD9398@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reporterID];
  *a2 = result;
  return result;
}

void sub_1C0BD93E4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1C0BEC038();
  [v2 setConfiguration_];
}

uint64_t sub_1C0BD945C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD95A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0BEBF68();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C0BD9610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0BEBF68();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C0BD9680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD96B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD96F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BD9728()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0BD9760()
{

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

uint64_t sub_1C0BD97A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

uint64_t sub_1C0BD9820()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1C0BD9858()
{

  return MEMORY[0x1EEE6BDD0](v0, 38, 7);
}

void sub_1C0BD9A60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = AudioAnalyticsHWTraceHandleWrapper;
  [(_Unwind_Exception *)&a11 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t libtailspinLibraryCore(char **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v1 = libtailspinLibraryCore(char **)::frameworkLibrary;
  v6 = libtailspinLibraryCore(char **)::frameworkLibrary;
  if (!libtailspinLibraryCore(char **)::frameworkLibrary)
  {
    v7 = xmmword_1E8127D80;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libtailspinLibraryCore(char **)::frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1C0BD9C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL22libtailspinLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libtailspinLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t gettailspin_get_cputrace_handleSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_get_cputrace_handleSymbolLoc(void)::ptr;
  v6 = gettailspin_get_cputrace_handleSymbolLoc(void)::ptr;
  if (!gettailspin_get_cputrace_handleSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_get_cputrace_handle");
    gettailspin_get_cputrace_handleSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BD9D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40gettailspin_get_cputrace_handleSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_get_cputrace_handle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_get_cputrace_handleSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libtailspinLibrary(void)
{
  v3 = 0;
  v0 = libtailspinLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t gettailspin_cputrace_handle_deinitSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr;
  v6 = gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr;
  if (!gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_cputrace_handle_deinit");
    gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BD9F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL43gettailspin_cputrace_handle_deinitSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_cputrace_handle_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t gettailspin_pause_cputraceSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_pause_cputraceSymbolLoc(void)::ptr;
  v6 = gettailspin_pause_cputraceSymbolLoc(void)::ptr;
  if (!gettailspin_pause_cputraceSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_pause_cputrace");
    gettailspin_pause_cputraceSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BDA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL35gettailspin_pause_cputraceSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_pause_cputrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_pause_cputraceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AudioAnalyticsCreateSharedClientWithEndpoint(void *a1)
{
  v1 = qword_1ED6F77D8;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  v4 = v2;
  v5 = sub_1C0BD0BE4(v2, 0);
  v6 = qword_1ED6F78F0;
  qword_1ED6F78F0 = v5;
}

Swift::Void __swiftcall AudioAnalyticsCreateSharedClient(endpoint:)(NSXPCListenerEndpoint endpoint)
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  v3 = endpoint.super.isa;
  qword_1ED6F78F0 = sub_1C0BD0BE4(endpoint.super.isa, 0);

  MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1C0BDA270()
{
  result = qword_1EBE52850;
  if (!qword_1EBE52850)
  {
    type metadata accessor for AudioServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52850);
  }

  return result;
}

_DWORD *sub_1C0BDA2C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C0BDA2F8()
{
  sub_1C0BEC2C8();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BDA36C(uint64_t a1)
{
  sub_1C0BEC2C8();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t AudioAnalyticsCreateSharedClient()
{
  if (qword_1ED6F77D8 != -1)
  {
    return swift_once();
  }

  return result;
}

Swift::Void __swiftcall AudioAnalyticsCreateSharedClient()()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }
}

Swift::Int64 __swiftcall AudioAnalyticsCreateReporter()()
{
  if (qword_1ED6F77D8 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  sub_1C0BEC178();

  return v4;
}

uint64_t AudioAnalyticsCreateReporterFromSessionID(uint64_t a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  sub_1C0BEC178();

  return v5;
}

Swift::Int64 __swiftcall AudioAnalyticsCreateReporterFromSessionID(_:)(Swift::UInt32 a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    v4 = *&a1;
    swift_once();
    *&a1 = v4;
  }

  MEMORY[0x1EEE9AC00](*&a1);
  v2 = v1;
  sub_1C0BEC178();

  return v5;
}

uint64_t sub_1C0BDA6D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528A0, &qword_1C0BED810);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C0BCB304(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C0BCA658(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C0BCA658(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C0BCA658(v31, v32);
    result = sub_1C0BEC1F8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C0BCA658(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AudioAnalyticsDestroyReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BDAEF0;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCA7FC;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_65;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t AudioAnalyticsRequestMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4 = a3;
  v5 = a2;
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  AudioAnalyticsRequestMessage(_:_:_:_:)(a1, v5, v4, sub_1C0BDAEF8, v8);
}

uint64_t AudioAnalyticsRequestMessage(_:_:_:_:)(uint64_t result, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (qword_1ED6F74F8 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED6F78A0 != v9)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED6F78F0;
    v11 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;
    *(v12 + 48) = a2;
    *(v12 + 52) = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C0BDAF0C;
    *(v13 + 24) = v12;
    v17[4] = sub_1C0BCA7FC;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C0BCA800;
    v17[3] = &block_descriptor_78;
    v14 = _Block_copy(v17);
    v15 = v10;

    dispatch_sync(v11, v14);

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
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

_BYTE **sub_1C0BDAEE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id AudioAnalyticsReporter.init(newReporterID:)(uint64_t a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1C0BEC178();

  *&v1[OBJC_IVAR___AudioAnalyticsReporter_reporterID] = v6;
  v5.receiver = v1;
  v5.super_class = AudioAnalyticsReporter;
  return objc_msgSendSuper2(&v5, sel_init);
}

AudioAnalyticsReporter __swiftcall AudioAnalyticsReporter.init(reporterID:)(Swift::Int64 reporterID)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v3 = [v2 initWithReporterID_];
  result.reporterID = v4;
  result.super.isa = v3;
  return result;
}

id AudioAnalyticsReporter.init(reporterID:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = a1;
  v3.super_class = AudioAnalyticsReporter;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AudioAnalyticsReporter.init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithSessionID:a1 serviceType:a2];
}

id AudioAnalyticsReporter.init(sessionID:serviceType:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  if (qword_1ED6F77D8 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  sub_1C0BEC178();

  v7 = aBlock[0];
  *&v3[OBJC_IVAR___AudioAnalyticsReporter_reporterID] = aBlock[0];
  v8 = qword_1ED6F78F0;
  v9 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v10 + 32) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C0BD04FC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C0BCAF28;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_0;
  v12 = _Block_copy(aBlock);
  v13 = v8;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v16.receiver = v3;
    v16.super_class = AudioAnalyticsReporter;
    return objc_msgSendSuper2(&v16, sel_init);
  }

  return result;
}

uint64_t AudioAnalyticsReporter.reporterID.getter()
{
  v1 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioAnalyticsReporter.reporterID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioAnalyticsReporter.serviceType.getter()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED6F78F0;
  v2 = [v0 reporterID];
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for AudioServiceType(0);
  sub_1C0BEC178();

  return v4;
}

uint64_t AudioAnalyticsReporter.configuration.getter()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED6F78F0;
  v2 = [v0 reporterID];
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  return v4;
}

void AudioAnalyticsReporter.configuration.setter(char *a1)
{
  if (!sub_1C0BD3500(0x72756769666E6F63, 0xED00006E6F697461))
  {
LABEL_8:

    return;
  }

  v3 = [v1 reporterID];
  v4 = sub_1C0BD39A8(a1);

  if (v4)
  {
    if (*(v4 + 16))
    {
      goto LABEL_4;
    }

LABEL_13:

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v13 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v13, qword_1ED6F78B8);
    v17 = v1;
    oslog = sub_1C0BEBF88();
    v14 = sub_1C0BEC128();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v17 reporterID];

      _os_log_impl(&dword_1C0BC7000, oslog, v14, "Configuration empty. Returning early. { reporterID=%lld }", v15, 0xCu);
      MEMORY[0x1C68E0970](v15, -1, -1);
      v16 = oslog;
    }

    else
    {

      v16 = v17;
    }

    return;
  }

  v12 = sub_1C0BDCEB4(0x72756769666E6F63, 0xED00006E6F697461, v3);
  if (!v12)
  {
    return;
  }

  v4 = v12;
  if (!*(v12 + 16))
  {
    goto LABEL_13;
  }

LABEL_4:
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED6F78F0;
  v6 = [v1 reporterID];
  v7 = *&v5[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C0BCAEC8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1C0BD3D50;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }
}

void sub_1C0BDC078(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  v4 = sub_1C0BEC058();

  *a2 = v4;
}

AudioAnalyticsReporter __swiftcall AudioAnalyticsReporter.init()()
{
  v0 = sub_1C0BDC0F4(&selRef_init);
  result.reporterID = v1;
  result.super.isa = v0;
  return result;
}

id sub_1C0BDC0F4(const char **a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *a1;

  return [v2 v3];
}

uint64_t AudioAnalyticsReporter.set(serviceType:)(__int16 a1)
{
  result = sub_1C0BD3500(0xD000000000000011, 0x80000001C0BEDAF0);
  if (result)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    v5 = [v1 reporterID];
    v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = a1;
    *(v7 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C0BDD2F0;
    *(v8 + 24) = v7;
    v11[4] = sub_1C0BD3D50;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1C0BCA800;
    v11[3] = &block_descriptor_24;
    v9 = _Block_copy(v11);
    v10 = v4;

    dispatch_sync(v6, v9);
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall AudioAnalyticsReporter.start()()
{
  if (sub_1C0BD3500(0x29287472617473, 0xE700000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED6F78F0;
    v2 = [v0 reporterID];
    v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BCD238;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BD3D50;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_34;
    v6 = _Block_copy(v8);
    v7 = v1;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall AudioAnalyticsReporter.stop()()
{
  if (sub_1C0BD3500(0x2928706F7473, 0xE600000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED6F78F0;
    v2 = [v0 reporterID];
    v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BD433C;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BD3D50;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_44;
    v6 = _Block_copy(v8);
    v7 = v1;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t AudioAnalyticsReporter.requestMessage(for:type:callback:)(int a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C0BD3500(0xD000000000000022, 0x80000001C0BEDB30);
  if (result)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED6F78F0;
    v11 = [v4 reporterID];
    v12 = *&v10[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    *(v13 + 48) = a1;
    *(v13 + 52) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1C0BDAF0C;
    *(v14 + 24) = v13;
    v18[4] = sub_1C0BD3D50;
    v18[5] = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1C0BCA800;
    v18[3] = &block_descriptor_64;
    v15 = _Block_copy(v18);
    v16 = v10;

    dispatch_sync(v12, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C0BDCC40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528B8, &qword_1C0BED088);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1C0BCB304(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_1C0BCA658(v24, v23);
    sub_1C0BD24B8(0, &qword_1EBE528C0, 0x1E69E58C0);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_1C0BCA668(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

uint64_t sub_1C0BDCEB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v6 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v6, qword_1ED6F78B8);

  v7 = sub_1C0BEBF88();
  v8 = sub_1C0BEC128();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_1C0BD80C0(a1, a2, &v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v7, v8, "Dictionary is not a string-keyed dictionary. Returning early. { function=%{private}s, reporterID=%lld }", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C68E0970](v10, -1, -1);
    MEMORY[0x1C68E0970](v9, -1, -1);
  }

  return 0;
}

unint64_t _sSo22AudioAnalyticsReporterC0aB0E22sendSessionlessMessage_8category4typeySDys11AnyHashableVypG_So0A13EventCategoryVSo0aK4TypeVtFZ_0(uint64_t a1, int a2, __int16 a3)
{
  if (qword_1ED6F74F8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  v5 = qword_1ED6F78A0;
  result = sub_1C0BD39A8(a1);
  if (result || (result = sub_1C0BDCEB4(0xD000000000000028, 0x80000001C0BEDC90, v5)) != 0)
  {
    v7 = result;
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED6F78F0;
    v9 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    *(v10 + 32) = a2;
    *(v10 + 36) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C0BD7B38;
    *(v11 + 24) = v10;
    v15[4] = sub_1C0BD3D50;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1C0BCA800;
    v15[3] = &block_descriptor_126;
    v12 = _Block_copy(v15);
    v13 = v8;

    dispatch_sync(v9, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }

  return result;
}

id AudioAnalyticsTestReporter.__allocating_init(newReporterID:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 initWithNewReporterID];
}

id AudioAnalyticsTestReporter.init(newReporterID:)()
{
  v1 = [v0 initWithNewReporterID];
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  objc_msgSendSuper2(&v3, sel_setServiceType_, 11);
  return v1;
}

id AudioAnalyticsTestReporter.__allocating_init(reporterID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithReporterID_];
}

id AudioAnalyticsTestReporter.init(reporterID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v4, sel_initWithReporterID_, a1);
}

id AudioAnalyticsTestReporter.__allocating_init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithSessionID:a1 serviceType:a2];
}

id AudioAnalyticsTestReporter.init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v6, sel_initWithSessionID_serviceType_, a1, a2);
}

id AudioAnalyticsTestReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0BDD608()
{
  result = os_variant_is_darwinos();
  byte_1EBE53252 = result;
  return result;
}

uint64_t sub_1C0BDD634()
{
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](0);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BDD6A0(uint64_t a1)
{
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](0);
  return sub_1C0BEC2F8();
}

uint64_t getEnumTagSinglePayload for AudioAnalytics(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AudioAnalytics(_WORD *result, int a2, int a3)
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

unint64_t sub_1C0BDD7E8()
{
  result = qword_1EBE528D8;
  if (!qword_1EBE528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE528D8);
  }

  return result;
}

uint64_t sub_1C0BDD83C(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for ActiveReporterState(0);
  v5 = MEMORY[0x1EEE9AC00](active);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v67 - v8);
  v72 = a1;
  sub_1C0BDF3C0(a1, &v67 - v8);
  v71 = active;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload != 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    sub_1C0BD788C(v9 + *(v12 + 48), type metadata accessor for StartedReporterData);
  }

  v13 = *(v2 + 16);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_31:
    v52 = *(v13 + 16);
    if (v52)
    {
      v53 = *(v11 + 24);
      v54 = *(v11 + 16);
      v55 = v13 + 32;

      do
      {
        sub_1C0BDF424(v55, v79);
        __swift_project_boxed_opaque_existential_1(v79, v80);
        sub_1C0BE894C(v53, v54);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v55 += 40;
        --v52;
      }

      while (v52);
    }

    swift_beginAccess();
    v56 = *(v2 + 16);
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = *(v11 + 32);
      v59 = *(v11 + 16);
      v60 = v56 + 32;

      do
      {
        sub_1C0BDF424(v60, v79);
        __swift_project_boxed_opaque_existential_1(v79, v80);
        sub_1C0BE8AA0(v58, v59);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v60 += 40;
        --v57;
      }

      while (v57);
    }

    sub_1C0BDF3C0(v72, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_1C0BD788C(v7, type metadata accessor for ActiveReporterState);
    }

    else
    {

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD788C(&v7[*(v62 + 48)], type metadata accessor for StartedReporterData);
      v63 = *(v2 + 16);
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = *(v11 + 16);
        v66 = v63 + 32;

        do
        {
          sub_1C0BDF424(v66, v79);
          __swift_project_boxed_opaque_existential_1(v79, v80);
          sub_1C0BE8064(v65);
          __swift_destroy_boxed_opaque_existential_0(v79);
          v66 += 40;
          --v64;
        }

        while (v64);
      }

      else
      {
      }
    }
  }

  v68 = v7;
  v69 = v2;
  v70 = v11;
  v15 = *(v11 + 16);
  v16 = v13 + 32;
  v67 = v13;

  *(&v17 + 1) = 2;
  v74 = xmmword_1C0BED230;
  *&v17 = 134283521;
  v73 = v17;
  v75 = v15;
  while (1)
  {
    sub_1C0BDF424(v16, v79);
    v18 = *__swift_project_boxed_opaque_existential_1(v79, v80);
    v19 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    if (*(*(v18 + v19) + 16))
    {
      sub_1C0BC97E0(v15);
      if (v20)
      {
        v21 = sub_1C0BEBF88();
        v22 = sub_1C0BEC138();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = v73;
          *(v23 + 4) = v15;
          _os_log_impl(&dword_1C0BC7000, v21, v22, "create called for existing reporterID. { reporterID=%{private}lld }", v23, 0xCu);
          MEMORY[0x1C68E0970](v23, -1, -1);
        }

        goto LABEL_7;
      }
    }

    v77 = v14;
    type metadata accessor for ReporterInfo(0);
    v24 = swift_allocObject();
    v25 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
    v26 = sub_1C0BEBF68();
    (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
    v27 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
    type metadata accessor for MessageCounts();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    v76 = v24;
    *(v24 + v27) = v28;
    type metadata accessor for ReporterData();
    v29 = swift_allocObject();
    *(v29 + 24) = -1;
    *(v29 + 32) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
    v30 = swift_allocObject();
    *(v30 + 16) = v74;
    *(v30 + 32) = getpid();
    type metadata accessor for PerfCheck(0);
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E7CC0];
    *(v31 + 16) = MEMORY[0x1E69E7CC0];
    *(v31 + 24) = v32;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    *(v31 + 50) = -1;
    v33 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v34 = sub_1C0BEBFA8();
    v35 = __swift_project_value_buffer(v34, qword_1ED6F78D0);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v31 + v33, v35, v34);
    if (qword_1ED6F7540 != -1)
    {
      swift_once();
    }

    if (byte_1ED6F78E8 == 1)
    {
      *(v31 + 24) = v30;

      *(v31 + 48) = 1;
    }

    else
    {

      (*(v36 + 8))(v31 + v33, v34);
      swift_deallocPartialClassInstance();
      v31 = 0;
    }

    v37 = v76;
    v14 = v77;
    *(v29 + 40) = v31;
    v15 = v75;
    *(v29 + 16) = v75;
    *(v37 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v29;
    *(v29 + 24) = -1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v18 + v19);
    v39 = v78;
    *(v18 + v19) = 0x8000000000000000;
    v40 = sub_1C0BC97E0(v15);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      break;
    }

    v46 = v41;
    if (v39[3] < v45)
    {
      sub_1C0BEAB90(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_1C0BC97E0(v15);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_48;
      }

LABEL_25:
      v48 = v78;
      if ((v46 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v51 = v40;
    sub_1C0BEB504();
    v40 = v51;
    v48 = v78;
    if ((v46 & 1) == 0)
    {
LABEL_26:
      v48[(v40 >> 6) + 8] |= 1 << v40;
      *(v48[6] + 8 * v40) = v15;
      *(v48[7] + 8 * v40) = v37;
      v49 = v48[2];
      v44 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v44)
      {
        goto LABEL_47;
      }

      v48[2] = v50;
      goto LABEL_6;
    }

LABEL_5:
    *(v48[7] + 8 * v40) = v37;

LABEL_6:
    *(v18 + v19) = v48;
    swift_endAccess();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v79);
    v16 += 40;
    if (!--v14)
    {

      v2 = v69;
      v13 = *(v69 + 16);
      v11 = v70;
      v7 = v68;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BDE078(uint64_t a1)
{
  result = *(v1 + 16);
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result + 32;

  v38 = a1;
  while (1)
  {
    sub_1C0BDF424(v5, v40);
    v6 = *__swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v7 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    if (*(*(v6 + v7) + 16))
    {
      sub_1C0BC97E0(a1);
      if (v8)
      {
        v9 = sub_1C0BEBF88();
        v10 = sub_1C0BEC138();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 134283521;
          *(v11 + 4) = a1;
          _os_log_impl(&dword_1C0BC7000, v9, v10, "create called for existing reporterID. { reporterID=%{private}lld }", v11, 0xCu);
          MEMORY[0x1C68E0970](v11, -1, -1);
        }

        goto LABEL_5;
      }
    }

    type metadata accessor for ReporterInfo(0);
    v12 = swift_allocObject();
    v13 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
    v14 = sub_1C0BEBF68();
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    v15 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
    type metadata accessor for MessageCounts();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v39 = v12;
    *(v12 + v15) = v16;
    type metadata accessor for ReporterData();
    v17 = swift_allocObject();
    *(v17 + 24) = -1;
    *(v17 + 32) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C0BED230;
    *(v18 + 32) = getpid();
    type metadata accessor for PerfCheck(0);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    *(v19 + 16) = MEMORY[0x1E69E7CC0];
    *(v19 + 24) = v20;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
    *(v19 + 50) = -1;
    v21 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v22 = sub_1C0BEBFA8();
    v23 = __swift_project_value_buffer(v22, qword_1ED6F78D0);
    v24 = *(v22 - 8);
    (*(v24 + 16))(v19 + v21, v23, v22);
    if (qword_1ED6F7540 != -1)
    {
      swift_once();
    }

    if (byte_1ED6F78E8 == 1)
    {
      *(v19 + 24) = v18;

      *(v19 + 48) = 1;
    }

    else
    {

      (*(v24 + 8))(v19 + v21, v22);
      swift_deallocPartialClassInstance();
      v19 = 0;
    }

    *(v17 + 40) = v19;
    a1 = v38;
    *(v17 + 16) = v38;
    *(v39 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v17;
    *(v17 + 24) = -1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v6 + v7);
    *(v6 + v7) = 0x8000000000000000;
    v27 = sub_1C0BC97E0(v38);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      sub_1C0BEAB90(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1C0BC97E0(v38);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_32;
      }

LABEL_23:
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v37 = v27;
    sub_1C0BEB504();
    v27 = v37;
    if ((v33 & 1) == 0)
    {
LABEL_24:
      v26[(v27 >> 6) + 8] |= 1 << v27;
      *(v26[6] + 8 * v27) = v38;
      *(v26[7] + 8 * v27) = v39;
      v35 = v26[2];
      v31 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v31)
      {
        goto LABEL_31;
      }

      v26[2] = v36;
      goto LABEL_4;
    }

LABEL_3:
    *(v26[7] + 8 * v27) = v39;

LABEL_4:
    *(v6 + v7) = v26;
    swift_endAccess();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v40);
    v5 += 40;
    if (!--v4)
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BDE5D0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;

    do
    {
      sub_1C0BDF424(v7, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_1C0BE894C(v6, a2);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C0BDE668(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;

    do
    {
      sub_1C0BDF424(v7, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_1C0BE8AA0(v6, a2);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_1C0BDE700()
{
  v18[0] = sub_1C0BD1A4C();
  v18[1] = v0;
  v14 = v18;
  v1 = sub_1C0BDF908(sub_1C0BDFEF8, v13, &unk_1F40218C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E8, &qword_1C0BED270);
  swift_arrayDestroy();

  if ((v1 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = type metadata accessor for SessionGenericSummaryCache(0);
  swift_allocObject();
  v3 = sub_1C0BE9908();
  v18[3] = v2;
  v18[4] = &off_1F4023DF8;
  v18[0] = v3;
  v4 = sub_1C0BDF5D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1C0BDF5D0((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v2);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  v11 = *v9;
  v16 = v2;
  v17 = &off_1F4023DF8;
  *&v15 = v11;
  v4[2] = v6 + 1;
  sub_1C0BDFF68(&v15, &v4[5 * v6 + 4]);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v4;
}

uint64_t sub_1C0BDE904()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C0BDEB5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  sub_1C0BDF084(a3, a4);
}

uint64_t *sub_1C0BDEBB4(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v37 - v10;
  v11 = *(v4 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v14 = a2 == 7;
    v13 = (v11 + 32);
    v14 = v14 && a3 == 6;
    v15 = v14;

    *&v16 = 134217984;
    v37 = v16;
    while (1)
    {
      result = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v17 = *result;
      v18 = *(*result + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived);
      v19 = __CFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
        return result;
      }

      *(v17 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived) = v20;
      if (v15)
      {
        if (*(a1 + 16))
        {
          v21 = sub_1C0BCA668(0x79745F6575737369, 0xEA00000000006570);
          if (v22)
          {
            sub_1C0BCB304(*(a1 + 56) + 32 * v21, v42);
            if (swift_dynamicCast())
            {
              if (v40 == 0x64616F6C7265766FLL && v41 == 0xE800000000000000)
              {
              }

              else
              {
                v23 = sub_1C0BEC288();

                if ((v23 & 1) == 0)
                {
                  goto LABEL_10;
                }
              }

              if (qword_1ED6F74F8 != -1)
              {
                swift_once();
              }

              if (qword_1ED6F78A0 == v39)
              {
              }

              else
              {
                v24 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
                swift_beginAccess();
                v25 = *(v17 + v24);
                if (!*(v25 + 16) || (v26 = sub_1C0BC97E0(v39), (v27 & 1) == 0) || (v28 = *(*(v25 + 56) + 8 * v26), , !v28))
                {
                  v33 = sub_1C0BEBF68();
                  v31 = v38;
                  (*(*(v33 - 8) + 56))(v38, 1, 1, v33);
                  goto LABEL_31;
                }

                v29 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
                swift_beginAccess();
                v30 = v28 + v29;
                v31 = v38;
                sub_1C0BDFFE8(v30, v38);
                v32 = sub_1C0BEBF68();
                if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
                {

LABEL_31:
                  sub_1C0BDFF80(v31);
                  v34 = sub_1C0BEBF88();
                  v35 = sub_1C0BEC118();
                  if (os_log_type_enabled(v34, v35))
                  {
                    v36 = swift_slowAlloc();
                    *v36 = v37;
                    *(v36 + 4) = v39;
                    _os_log_impl(&dword_1C0BC7000, v34, v35, "Received message on non-active session. { function=send, reporterID=%lld }", v36, 0xCu);
                    MEMORY[0x1C68E0970](v36, -1, -1);
                  }

                  goto LABEL_10;
                }

                sub_1C0BDFF80(v31);
              }

              sub_1C0BEA188(a1);
            }
          }
        }
      }

LABEL_10:
      v13 += 5;
      if (!--v12)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1C0BDF084(uint64_t result, void (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;

    do
    {
      sub_1C0BDF424(v7, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      a2(v6);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C0BDF134(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 32;

    do
    {
      sub_1C0BDF424(v5, v13);
      v6 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
      sub_1C0BE83CC(v4);
      v7 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
      swift_beginAccess();
      v8 = sub_1C0BC97E0(v4);
      if (v9)
      {
        v10 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(v6 + v7);
        *(v6 + v7) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C0BEB504();
        }

        sub_1C0BDF9B8(v10, v12);
        *(v6 + v7) = v12;
      }

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(v13);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C0BDF278(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_1C0BDF3C0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveReporterState(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1C0BDF424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1C0BDF4CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C0BDF5D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528F0, &qword_1C0BED278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528F8, &qword_1C0BED280);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0BDF718(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52908, &qword_1C0BED288);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290) - 8);
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

uint64_t sub_1C0BDF908(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C0BDF9B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C0BEC2B8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C0BDFB28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      sub_1C0BEC2C8();

      sub_1C0BEC098();
      v10 = sub_1C0BEC2F8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C0BDFCD8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C0BEC2B8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ReporterState(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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