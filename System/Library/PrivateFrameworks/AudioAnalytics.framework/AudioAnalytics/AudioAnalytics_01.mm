BOOL sub_1C0BDFE84(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1C0BEC288() & 1;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1C0BDFF68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0BDFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BDFFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C0BE0058()
{
  if (*(v0 + 48) >= 2u)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v1 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v1, qword_1ED6F78B8);
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD00000000000005ALL;
    *(v2 + 24) = 0x80000001C0BEDF70;
    v3 = swift_allocObject();
    *(v3 + 16) = 0x286E6F646E616261;
    *(v3 + 24) = 0xE900000000000029;
    v4 = swift_allocObject();
    *(v4 + 16) = 75;
    oslog = sub_1C0BEBF88();
    v5 = sub_1C0BEC138();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v6 = swift_allocObject();
    *(v6 + 16) = 8;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C0BE0B0C;
    *(v7 + 24) = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C0BE0B08;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = 32;
    v10 = swift_allocObject();
    *(v10 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C0BE0B0C;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C0BE0B08;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = 8;
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C0BE0B14;
    *(v16 + 24) = v4;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C0BE0B2C;
    *(v17 + 24) = v16;
    v21 = v5;
    if (os_log_type_enabled(oslog, v5))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      v27 = 0;
      *v18 = 770;
      v20 = v19;
      v28 = v18 + 2;
      v24 = sub_1C0BE0B18;
      v25 = v22;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0B18;
      v25 = v6;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0AF4;
      v25 = v8;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0B18;
      v25 = v9;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0B18;
      v25 = v10;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0AF4;
      v25 = v12;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0B18;
      v25 = v13;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0B18;
      v25 = v15;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      v24 = sub_1C0BE0AF8;
      v25 = v17;
      sub_1C0BDAEA4(&v24, &v28, &v27, &v26);

      _os_log_impl(&dword_1C0BC7000, oslog, v21, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v20, -1, -1);
      MEMORY[0x1C68E0970](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 16) = MEMORY[0x1E69E7CC0];

    *(v0 + 48) = 2;
  }
}

char *sub_1C0BE0720(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0BDF4CC(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0BE0830(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C0BE08C0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0BE0984()
{
  result = qword_1EBE52918;
  if (!qword_1EBE52918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52918);
  }

  return result;
}

unint64_t sub_1C0BE09DC()
{
  result = qword_1EBE52920;
  if (!qword_1EBE52920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52920);
  }

  return result;
}

uint64_t sub_1C0BE0A30()
{
  v1 = *v0;
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](v1);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE0A78(uint64_t a1)
{
  v2 = *v1;
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](v2);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE0B30()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C0BE0B7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ReporterState(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v28[-1] - v9);
  sub_1C0BC9310(a1, &v28[-1] - v9, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v11 = type metadata accessor for ReporterState;
    v12 = v10;
LABEL_3:
    sub_1C0BD78EC(v12, v11);
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v13 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v13, qword_1ED6F78B8);
    v14 = sub_1C0BEBF88();
    v15 = sub_1C0BEC138();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1C0BD80C0(0xD00000000000006BLL, 0x80000001C0BEE100, v28);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1C0BD80C0(0xD00000000000003ELL, 0x80000001C0BEE170, v28);
      *(v16 + 22) = 2048;
      *(v16 + 24) = 197;
      _os_log_impl(&dword_1C0BC7000, v14, v15, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v17, -1, -1);
      MEMORY[0x1C68E0970](v16, -1, -1);
    }

    return sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
  }

  type metadata accessor for ActiveReporterState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v10;
  if (EnumCaseMultiPayload != 1)
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    v11 = type metadata accessor for StartedReporterData;
    v12 = v10 + *(v23 + 48);
    goto LABEL_3;
  }

  v21 = *(v20 + 16);
  v22 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
  if (!*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
  {
    type metadata accessor for MessageCache();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C0BDE700();
    v27 = *(v2 + v22);
    *(v2 + v22) = v24;
  }

  sub_1C0BDF134(v21);

  *v8 = v20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  v25 = sub_1C0BCD8D4(v8, 3);
  sub_1C0BD78EC(v8, type metadata accessor for ReporterState);
  [v25 createSessionWith_];
  [v25 setWithServiceType:*(v20 + 24) for:v21];
  swift_beginAccess();

  v26 = sub_1C0BEC038();

  [v25 setWithConfiguration:v26 for:v21];
  swift_unknownObjectRelease();

  *a2 = v20;
  swift_storeEnumTagMultiPayload();
  return swift_storeEnumTagMultiPayload();
}

void sub_1C0BE1000(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v44 = a2;
  v41[1] = a5;
  v42 = a4;
  v43 = a3;
  v6 = type metadata accessor for ReporterState(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v41 - v13;
  active = type metadata accessor for ActiveReporterState(0);
  v16 = MEMORY[0x1EEE9AC00](active);
  v18 = (v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (v41 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (v41 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v41 - v25;
  sub_1C0BC9310(a1, v14, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C0BC9028(v14, v26, type metadata accessor for ActiveReporterState);
    sub_1C0BC9028(v26, v18, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *v18;
    if (EnumCaseMultiPayload == 1)
    {
      (v42)(*v18);
    }

    else
    {
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
      v44(v28);

      sub_1C0BD78EC(v18 + v35, type metadata accessor for StartedReporterData);
    }
  }

  else
  {
    v43 = v21;
    v44 = active;
    v42 = v24;
    sub_1C0BD78EC(v14, type metadata accessor for ReporterState);
    sub_1C0BC9310(a1, v12, type metadata accessor for ReporterState);
    v29 = sub_1C0BEBF88();
    v30 = sub_1C0BEC128();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      sub_1C0BC9310(v12, v9, type metadata accessor for ReporterState);
      v32 = swift_getEnumCaseMultiPayload();
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = v9;
          v34 = v42;
        }

        else
        {
          v33 = v9;
          v34 = v43;
        }

        sub_1C0BC9028(v33, v34, type metadata accessor for ActiveReporterState);
        v37 = swift_getEnumCaseMultiPayload();
        v36 = *v34;
        if (v37 != 1)
        {
          v38 = *v34;
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BD78EC(v34 + *(v39 + 48), type metadata accessor for StartedReporterData);
          v36 = v38;
        }
      }

      else
      {
        v36 = *v9;
      }

      v40 = *(v36 + 16);

      sub_1C0BD78EC(v12, type metadata accessor for ReporterState);
      *(v31 + 4) = v40;
      _os_log_impl(&dword_1C0BC7000, v29, v30, "Reporter disconnected. { func=setServiceType, reporterID=%lld }", v31, 0xCu);
      MEMORY[0x1C68E0970](v31, -1, -1);
    }

    else
    {
      sub_1C0BD78EC(v12, type metadata accessor for ReporterState);
    }
  }
}

uint64_t sub_1C0BE1468@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = type metadata accessor for StartedReporterData(0);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = type metadata accessor for ReporterState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveReporterState(0);
  v12 = MEMORY[0x1EEE9AC00](active);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v17 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v17, qword_1ED6F78B8);
  v18 = sub_1C0BEBF88();
  v19 = sub_1C0BEC148();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v14;
    v21 = active;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_1C0BC7000, v18, v19, "handleXPCInterruption called.", v20, 2u);
    v23 = v22;
    active = v21;
    v14 = v43;
    MEMORY[0x1C68E0970](v23, -1, -1);
  }

  sub_1C0BC9310(a1, v10, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = a2;
    sub_1C0BC9028(v10, v16, type metadata accessor for ActiveReporterState);
    sub_1C0BC9310(v16, v14, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *v14;
    if (EnumCaseMultiPayload == 1)
    {
      if (*(v25 + 40))
      {

        sub_1C0BE0058();
      }

      sub_1C0BD78EC(v16, type metadata accessor for ActiveReporterState);
      *v43 = v25;
    }

    else
    {
      v42 = active;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9028(v14 + *(v41 + 48), v7, type metadata accessor for StartedReporterData);
      v27 = *(v25 + 16);
      v28 = sub_1C0BCD8D4(a1, 3);
      [v28 createSessionWith_];
      [v28 setWithServiceType:*(v25 + 24) for:v27];
      swift_beginAccess();

      v29 = sub_1C0BEC038();

      [v28 setWithConfiguration:v29 for:v27];

      v30 = v45;
      sub_1C0BEBF48();
      v31 = v44;
      *(v30 + *(v44 + 20)) = 0;
      [v28 startSessionFor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0BED230;
      *(inited + 32) = 0xD000000000000011;
      v33 = inited + 32;
      *(inited + 40) = 0x80000001C0BEE1B0;
      *(inited + 72) = MEMORY[0x1E69E6370];
      *(inited + 48) = 1;
      v34 = sub_1C0BC8EF8(inited);
      swift_setDeallocating();
      sub_1C0BE206C(v33);
      v35 = *&v7[*(v31 + 20)];
      if (v35)
      {
        v49 = MEMORY[0x1E69E7668];
        LODWORD(v48) = v35;
        sub_1C0BCA658(&v48, v47);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v34;
        sub_1C0BCB360(v47, 0xD000000000000014, 0x80000001C0BEE1D0, isUniquelyReferenced_nonNull_native);
      }

      v37 = sub_1C0BEC038();

      [v28 sendWithMessage:v37 with:1 and:0 for:v27];

      if (*(v25 + 40) && (, sub_1C0BE0058(), , *(v25 + 40)))
      {

        sub_1C0BCDC98();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_1C0BD78EC(v7, type metadata accessor for StartedReporterData);
      sub_1C0BD78EC(v16, type metadata accessor for ActiveReporterState);
      v38 = *(v41 + 48);
      v39 = v43;
      *v43 = v25;
      sub_1C0BC9028(v45, v39 + v38, type metadata accessor for StartedReporterData);
      swift_storeEnumTagMultiPayload();
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1C0BD78EC(v10, type metadata accessor for ReporterState);
    return sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
  }
}

uint64_t sub_1C0BE1B50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v6 = MEMORY[0x1EEE9AC00](active);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v33 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ReporterState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9310(a1, v16, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = *v16;
    v24 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
    if (!*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
    {
      type metadata accessor for MessageCache();
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1C0BDE700();
      *(v2 + v24) = v32;
    }

    *v8 = v23;
    swift_storeEnumTagMultiPayload();

    sub_1C0BDD83C(v8);

    sub_1C0BD78EC(v8, type metadata accessor for ActiveReporterState);
    *a2 = v23;
    swift_storeEnumTagMultiPayload();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0BC9028(v16, v13, type metadata accessor for ActiveReporterState);
    sub_1C0BC9310(v13, v11, type metadata accessor for ActiveReporterState);
    v18 = swift_getEnumCaseMultiPayload();
    v19 = *v11;
    if (v18 != 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD78EC(v11 + *(v20 + 48), type metadata accessor for StartedReporterData);
    }

    v21 = *(v19 + 16);

    [sub_1C0BCD8D4(a1 3)];
    swift_unknownObjectRelease();
    v22 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
    if (!*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
    {
      type metadata accessor for MessageCache();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1C0BDE700();
      *(v2 + v22) = v31;
    }

    sub_1C0BDD83C(v13);

    sub_1C0BC9028(v13, a2, type metadata accessor for ActiveReporterState);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v25 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v25, qword_1ED6F78B8);
  v26 = sub_1C0BEBF88();
  v27 = sub_1C0BEC138();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_1C0BD80C0(0xD00000000000006BLL, 0x80000001C0BEE100, &v34);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1C0BD80C0(0xD00000000000003ELL, 0x80000001C0BEE0C0, &v34);
    *(v28 + 22) = 2048;
    *(v28 + 24) = 175;
    _os_log_impl(&dword_1C0BC7000, v26, v27, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68E0970](v29, -1, -1);
    MEMORY[0x1C68E0970](v28, -1, -1);
  }

  sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
  return sub_1C0BD78EC(v16, type metadata accessor for ReporterState);
}

uint64_t sub_1C0BE206C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BE20D4()
{
  v1 = v0;
  active = type metadata accessor for ActiveReporterState(0);
  v3 = MEMORY[0x1EEE9AC00](active);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - v6);
  v8 = type metadata accessor for ReporterState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9378(v1, v10, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C0BC9D60(v10, v7, type metadata accessor for ActiveReporterState);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = *v7;
      if (v12 != 1)
      {
        v14 = *v7;
        v15 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_8:
        sub_1C0BCA00C(v15, type metadata accessor for StartedReporterData);
        v13 = v14;
      }
    }

    else
    {
      sub_1C0BC9D60(v10, v5, type metadata accessor for ActiveReporterState);
      v16 = swift_getEnumCaseMultiPayload();
      v13 = *v5;
      if (v16 != 1)
      {
        v14 = *v5;
        v15 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = *v10;
  }

  v17 = *(v13 + 16);

  return v17;
}

char *sub_1C0BE23D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BE7AD0;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1C0BD3D50;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BCA800;
    aBlock[3] = &block_descriptor_219;
    v6 = _Block_copy(aBlock);
    v7 = v3;

    dispatch_sync(v2, v6);

    _Block_release(v6);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0BE255C(char *a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  v2 = *(v72 - 8);
  v3 = MEMORY[0x1EEE9AC00](v72);
  v5 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v65 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v65 - v9;
  v11 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_logger;
  v12 = sub_1C0BEBF88();
  v13 = sub_1C0BEC148();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C0BC7000, v12, v13, "Interruption handler: Server exited or crashed.", v14, 2u);
    MEMORY[0x1C68E0970](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
  swift_beginAccess();

  v17 = sub_1C0BE2C8C(v16);
  v71 = 0;
  if (!v17[2])
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v70 = v2;
  v18 = sub_1C0BCA668(0x657463656E6E6F63, 0xE900000000000064);
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  v69 = v15;
  v22 = *(v17[7] + 8 * v18);
  v23 = *(v22 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (!v23)
  {
    v15 = v69;
    if (v17[2])
    {
      goto LABEL_13;
    }

LABEL_21:

    v73 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v66 = v17;
  v67 = v11;
  v68 = a1;
  v74[0] = MEMORY[0x1E69E7CC0];

  sub_1C0BE6CFC(0, v23, 0);
  v24 = v72;
  v20 = v74[0];
  v25 = *(v70 + 80);
  v65 = v22;
  v26 = v22 + ((v25 + 32) & ~v25);
  v73 = *(v70 + 72);
  do
  {
    sub_1C0BE7AD8(v26, v10);
    sub_1C0BE7AD8(v10, v8);
    v27 = *v8;
    v28 = *(v24 + 48);
    *v5 = *v8;
    sub_1C0BC9D60(v8 + v28, v5 + v28, type metadata accessor for ReporterState);
    sub_1C0BC9D00(v5, &qword_1EBE52910, &unk_1C0BED290);
    sub_1C0BC9D00(v10, &qword_1EBE52910, &unk_1C0BED290);
    v74[0] = v20;
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1C0BE6CFC((v29 > 1), v30 + 1, 1);
      v24 = v72;
      v20 = v74[0];
    }

    *(v20 + 16) = v30 + 1;
    *(v20 + 8 * v30 + 32) = v27;
    v26 += v73;
    --v23;
  }

  while (v23);

  a1 = v68;
  v15 = v69;
  v17 = v66;
  v11 = v67;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_12:
  if (!v17[2])
  {
    goto LABEL_21;
  }

LABEL_13:
  v31 = sub_1C0BCA668(0x656E6E6F63736964, 0xEC00000064657463);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

  v33 = *(v17[7] + 8 * v31);

  v34 = v33;
  v35 = v33[2];
  if (!v35)
  {
    goto LABEL_21;
  }

  v67 = v11;
  v68 = a1;
  v69 = v15;
  v74[0] = v19;
  v36 = v34;
  sub_1C0BE6CFC(0, v35, 0);
  v37 = v74[0];
  v38 = *(v70 + 80);
  v66 = v36;
  v39 = v36 + ((v38 + 32) & ~v38);
  v73 = *(v70 + 72);
  do
  {
    sub_1C0BE7AD8(v39, v10);
    sub_1C0BE7AD8(v10, v8);
    v40 = *v8;
    v41 = *(v72 + 48);
    *v5 = *v8;
    sub_1C0BC9D60(v8 + v41, v5 + v41, type metadata accessor for ReporterState);
    sub_1C0BC9D00(v5, &qword_1EBE52910, &unk_1C0BED290);
    sub_1C0BC9D00(v10, &qword_1EBE52910, &unk_1C0BED290);
    v74[0] = v37;
    v43 = *(v37 + 16);
    v42 = *(v37 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1C0BE6CFC((v42 > 1), v43 + 1, 1);
      v37 = v74[0];
    }

    *(v37 + 16) = v43 + 1;
    *(v37 + 8 * v43 + 32) = v40;
    v39 += v73;
    --v35;
  }

  while (v35);
  v73 = v37;

  a1 = v68;
  v15 = v69;
LABEL_22:

  v44 = sub_1C0BEBF88();
  v45 = sub_1C0BEC148();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v74[0] = v47;
    *v46 = 136446210;
    v48 = MEMORY[0x1C68E0030](v20, MEMORY[0x1E69E7360]);
    v50 = v49;

    v51 = sub_1C0BD80C0(v48, v50, v74);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1C0BC7000, v44, v45, "Reconnecting started reporters. { reporterIDs=%{public}s }", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1C68E0970](v47, -1, -1);
    MEMORY[0x1C68E0970](v46, -1, -1);
  }

  else
  {
  }

  v52 = v73;

  v53 = sub_1C0BEBF88();
  v54 = sub_1C0BEC148();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v74[0] = v56;
    *v55 = 136446210;
    v57 = MEMORY[0x1C68E0030](v52, MEMORY[0x1E69E7360]);
    v59 = v58;

    v60 = sub_1C0BD80C0(v57, v59, v74);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_1C0BC7000, v53, v54, "Disconnecting all other reporters. { reporterIDs=%{public}s }", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1C68E0970](v56, -1, -1);
    MEMORY[0x1C68E0970](v55, -1, -1);
  }

  else
  {
  }

  v61 = a1;

  v63 = sub_1C0BE6EC4(v62, v61);

  *&a1[v15] = v63;
}

void *sub_1C0BE2C8C(uint64_t a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  v59 = *(v63 - 8);
  v2 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v62 = &v55 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v55 - v8;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v66 = MEMORY[0x1E69E7CC8];
  v64 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v56 = xmmword_1C0BED230;
  v58 = v17;
  while (v16)
  {
LABEL_9:
    v19 = __clz(__rbit64(v16)) | (v9 << 6);
    v20 = *(v64 + 56);
    v21 = *(*(v64 + 48) + 8 * v19);
    v22 = v20 + *(*(type metadata accessor for ReporterState(0) - 8) + 72) * v19;
    v23 = v63;
    v24 = v61;
    sub_1C0BC9378(v22, &v61[*(v63 + 48)], type metadata accessor for ReporterState);
    *v24 = v21;
    v25 = v24;
    v26 = v65;
    sub_1C0BE7B48(v25, v65);
    v27 = v26;
    v28 = v62;
    sub_1C0BE7AD8(v27, v62);
    v29 = v28 + *(v23 + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for ReporterState;
      goto LABEL_13;
    }

    type metadata accessor for ActiveReporterState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = type metadata accessor for ActiveReporterState;
LABEL_13:
      sub_1C0BCA00C(v29, v30);
      v31 = 0x656E6E6F63736964;
      v32 = 0xEC00000064657463;
      goto LABEL_15;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    sub_1C0BCA00C(v29 + *(v33 + 48), type metadata accessor for StartedReporterData);
    v32 = 0xE900000000000064;
    v31 = 0x657463656E6E6F63;
LABEL_15:
    v35 = sub_1C0BCA668(v31, v32);
    v36 = v10[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_30;
    }

    v39 = v34;
    if (v10[3] < v38)
    {
      sub_1C0BEB0CC(v38, 1);
      v10 = v66;
      v40 = sub_1C0BCA668(v31, v32);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_32;
      }

      v35 = v40;
    }

    v16 &= v16 - 1;
    if (v39)
    {

      v42 = v10[7];
      sub_1C0BE7B48(v65, v60);
      v43 = *(v42 + 8 * v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 8 * v35) = v43;
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v42;
      }

      else
      {
        v43 = sub_1C0BDF718(0, v43[2] + 1, 1, v43);
        v45 = v42;
        *(v42 + 8 * v35) = v43;
      }

      v47 = v43[2];
      v46 = v43[3];
      if (v47 >= v46 >> 1)
      {
        v43 = sub_1C0BDF718((v46 > 1), v47 + 1, 1, v43);
        *(v45 + 8 * v35) = v43;
      }

      v43[2] = v47 + 1;
      sub_1C0BE7B48(v60, v43 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v47);
      v17 = v58;
    }

    else
    {
      v57 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52908, &qword_1C0BED288);
      v48 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v56;
      sub_1C0BE7B48(v65, v49 + v48);
      v10[(v35 >> 6) + 8] |= 1 << v35;
      v50 = (v10[6] + 16 * v35);
      *v50 = v57;
      v50[1] = v32;
      *(v10[7] + 8 * v35) = v49;
      v51 = v10[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_31;
      }

      v10[2] = v53;
      v17 = v58;
    }
  }

  while (1)
  {
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return v10;
    }

    v16 = *(v12 + 8 * v18);
    ++v9;
    if (v16)
    {
      v9 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BE31A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C0BE31E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v2 = Strong;
  v3 = sub_1C0BEBF88();
  v4 = sub_1C0BEC118();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C0BC7000, v3, v4, "Invalidation handler: Connection cannot be formed.", v5, 2u);
    MEMORY[0x1C68E0970](v5, -1, -1);
  }

  v6 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C0BE7AC8;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1C0BD3D50;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_209;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_6:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v11 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v11, qword_1ED6F78B8);
    v12 = sub_1C0BEBF88();
    v13 = sub_1C0BEC118();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C0BC7000, v12, v13, "self nil in invalidationHandler.", v14, 2u);
      MEMORY[0x1C68E0970](v14, -1, -1);
    }
  }
}

uint64_t sub_1C0BE3494(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection);
  type metadata accessor for ServerProxy(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger;
  v5 = qword_1ED6F7518;
  v6 = v2;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1C0BEBFA8();
  v8 = __swift_project_value_buffer(v7, qword_1ED6F78B8);
  (*(*(v7 - 8) + 16))(v3 + v4, v8, v7);
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___unboostedProxy) = 0;
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___boostedProxy) = 0;
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy) = 0;
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) = v6;
  *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy) = v3;
}

void sub_1C0BE35C4(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1C0BEBF88();
    v6 = sub_1C0BEC118();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v5, v6, "Game mode notification received. { token=%d }", v7, 8u);
      MEMORY[0x1C68E0970](v7, -1, -1);
    }

    v8 = sub_1C0BD2D20(a1);
    sub_1C0BD2E40(v8);
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v9 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v9, qword_1ED6F78B8);
    v4 = sub_1C0BEBF88();
    v10 = sub_1C0BEC128();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v4, v10, "Game mode notification received, but self is nil. { token=%d }", v11, 8u);
      MEMORY[0x1C68E0970](v11, -1, -1);
    }
  }
}

uint64_t sub_1C0BE3780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1C0BE37D4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    v5 = sub_1C0BEBF88();
    v6 = sub_1C0BEC128();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67174913;
      *(v7 + 4) = a1;
      *(v7 + 8) = 1024;
      swift_beginAccess();
      *(v7 + 10) = *(a3 + 16);

      _os_log_impl(&dword_1C0BC7000, v5, v6, "GameMode notifications failed to initialize! Defaulting to off. { result=%{private}u, token=%d }", v7, 0xEu);
      v8 = v7;
LABEL_6:
      MEMORY[0x1C68E0970](v8, -1, -1);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    v9 = sub_1C0BD2D20(*(a3 + 16));
    sub_1C0BD2E40(v9);

    v5 = sub_1C0BEBF88();
    v10 = sub_1C0BEC118();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67174913;
      *(v11 + 8) = 1024;
      swift_beginAccess();
      *(v11 + 10) = *(a3 + 16);

      _os_log_impl(&dword_1C0BC7000, v5, v10, "Listening for GameMode notifications. { result=%{private}u, token=%d }", v11, 0xEu);
      v8 = v11;
      goto LABEL_6;
    }
  }
}

void sub_1C0BE39E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] = 0;
  }
}

unint64_t sub_1C0BE3BAC@<X0>(unsigned int a1@<W1>, unint64_t *a2@<X8>)
{
  result = sub_1C0BC8788(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C0BE4208(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BCAED4;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0BD3D50;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C0BCA800;
  v12[3] = &block_descriptor_168;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE43FC(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  v9 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 44) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C0BCC0A8;
  *(v11 + 24) = v10;
  v16[4] = sub_1C0BD3D50;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C0BCA800;
  v16[3] = &block_descriptor_158;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE461C(uint64_t a1, int a2, __int16 a3)
{
  v7 = *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 36) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C0BD7B48;
  *(v9 + 24) = v8;
  v14[4] = sub_1C0BD3D50;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1C0BCA800;
  v14[3] = &block_descriptor_148;
  v10 = _Block_copy(v14);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE49B4(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a1;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a2;
  *(v12 + 52) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C0BDAF0C;
  *(v13 + 24) = v12;
  v18[4] = sub_1C0BD3D50;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C0BCA800;
  v18[3] = &block_descriptor_138;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE4B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, unsigned int a5, int a6)
{
  v35 = a6;
  v36 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ReporterState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C0BEBF88();
  v17 = sub_1C0BEC118();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a4;
    v19 = a3;
    v20 = v18;
    *v18 = 134217984;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_1C0BC7000, v16, v17, "Requesting message. { reporterID=%lld }", v18, 0xCu);
    v21 = v20;
    a3 = v19;
    a4 = v34;
    MEMORY[0x1C68E0970](v21, -1, -1);
  }

  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 == a2)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v22 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v22, qword_1ED6F78B8);
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC118();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a3;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a2;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "requestMessage called with invalidID. { reporterID=%lld }", v26, 0xCu);
      v27 = v26;
      a3 = v25;
      MEMORY[0x1C68E0970](v27, -1, -1);
    }

    return a3(0);
  }

  else
  {
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    v30 = v35;
    *(v29 + 24) = v36;
    *(v29 + 28) = v30;
    *(v29 + 32) = a3;
    *(v29 + 40) = a4;

    sub_1C0BCAF30(a2, 0xD000000000000032, 0x80000001C0BEE660, v11);
    v31 = *(v13 + 48);
    if (v31(v11, 1, v12) == 1)
    {
      sub_1C0BE538C(a2, v15);
      if (v31(v11, 1, v12) != 1)
      {
        sub_1C0BC9D00(v11, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }

    else
    {
      sub_1C0BC9D60(v11, v15, type metadata accessor for ReporterState);
    }

    v32 = sub_1C0BCD8D4(v15, 1);
    aBlock[4] = sub_1C0BE7A40;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BE55A4;
    aBlock[3] = &block_descriptor_128;
    v33 = _Block_copy(aBlock);

    [v32 requestMessageFor:a2 category:v36 type:v35 reply:v33];
    _Block_release(v33);

    swift_unknownObjectRelease();
    return sub_1C0BCA00C(v15, type metadata accessor for ReporterState);
  }
}

void sub_1C0BE4FD0(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned __int16 a5, void (*a6)(void))
{
  if (!a1)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v22 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v22, qword_1ED6F78B8);
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC128();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 134218498;
      *(v25 + 4) = a3;
      *(v25 + 12) = 2080;
      v27 = AudioEventCategory.description.getter(a4);
      v29 = sub_1C0BD80C0(v27, v28, &v36);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      v30 = AudioEventType.description.getter(a5);
      v32 = sub_1C0BD80C0(v30, v31, &v36);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "requestMessage received message. Invoking callback. { reporterID=%lld, category=%s, type=%{public}s }", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v26, -1, -1);
      MEMORY[0x1C68E0970](v25, -1, -1);

      if (a2)
      {
LABEL_10:
        v33 = sub_1C0BEC038();
        goto LABEL_16;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_10;
      }
    }

    v33 = 0;
LABEL_16:
    v35 = v33;
    a6();
    v34 = v35;

    goto LABEL_13;
  }

  v8 = a1;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v9 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v9, qword_1ED6F78B8);
  v10 = a1;
  v11 = sub_1C0BEBF88();
  v12 = sub_1C0BEC118();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136380931;
    swift_getErrorValue();
    v15 = sub_1C0BEC2A8();
    v17 = sub_1C0BD80C0(v15, v16, &v36);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v11, v12, "Error in requestMessage. { error=%{private}s, reporterID=%lld }", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1C68E0970](v14, -1, -1);
    MEMORY[0x1C68E0970](v13, -1, -1);

    return;
  }

  v34 = a1;

LABEL_13:
}

uint64_t sub_1C0BE538C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  MEMORY[0x1EEE9AC00](active);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StartedReporterData(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0BEBF48();
  *&v11[*(v9 + 28)] = 0;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  type metadata accessor for ReporterData();
  v13 = swift_allocObject();
  *(v13 + 24) = -1;
  *(v13 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C0BED230;
  *(v14 + 32) = getpid();
  type metadata accessor for PerfCheck(0);
  swift_allocObject();
  *(v13 + 40) = sub_1C0BC9100(v14);
  *(v13 + 16) = a1;
  *v7 = v13;
  sub_1C0BC9D60(v11, v7 + v12, type metadata accessor for StartedReporterData);
  swift_storeEnumTagMultiPayload();
  sub_1C0BC9D60(v7, a3, type metadata accessor for ActiveReporterState);
  type metadata accessor for ReporterState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C0BE55A4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1C0BEC058();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

void sub_1C0BE5700()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
  v2 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      do
      {
        sub_1C0BDF424(v5, v15);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_1C0BE8CF4();
        __swift_destroy_boxed_opaque_existential_0(v15);
        v5 += 40;
        --v4;
      }

      while (v4);

      v3 = *(v2 + 16);
    }

    else
    {
    }

    v6 = *(v3 + 16);
    v7 = v3 + 32;

    v8 = -v6;
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        *(v14 + v1) = 0;
        goto LABEL_14;
      }

      if (++v9 >= *(v3 + 16))
      {
        break;
      }

      sub_1C0BDF424(v7, v15);
      v10 = *__swift_project_boxed_opaque_existential_1(v15, v16);
      v11 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
      swift_beginAccess();
      if (*(*(v10 + v11) + 16))
      {

        __swift_destroy_boxed_opaque_existential_0(v15);
        return;
      }

      v7 += 40;
      v12 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
      swift_beginAccess();
      v13 = *(*(v10 + v12) + 16);
      __swift_destroy_boxed_opaque_existential_0(v15);
      if (v13)
      {

LABEL_14:

        return;
      }
    }

    __break(1u);
  }
}

id sub_1C0BE58C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1C0BD24B8(0, &qword_1EBE528C0, 0x1E69E58C0);
    v4 = sub_1C0BEC038();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C0BE5964(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (!result && (a2 & 1) != 0)
  {
    v5 = [objc_allocWithZone(AudioAnalyticsHWTraceHandleWrapper) initWithSessionID_];
    *(a4 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void sub_1C0BE59D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_1C0BE5A58(uint64_t result, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 24) != a2)
  {
    v28[11] = v5;
    v28[12] = v6;
    v10 = result;
    v11 = sub_1C0BEBF88();
    v12 = sub_1C0BEC118();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v11, v12, "Stopping session while reconfiguring serviceType. { reporterID=%lld }", v13, 0xCu);
      MEMORY[0x1C68E0970](v13, -1, -1);
    }

    sub_1C0BD3F80(a4);

    v14 = sub_1C0BEBF88();
    v15 = sub_1C0BEC118();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v17 = v28[0];
      *v16 = 134218498;
      *(v16 + 4) = a4;
      *(v16 + 12) = 2080;
      v18 = AudioServiceType.description.getter(*(v10 + 24));
      v27 = a5;
      v20 = sub_1C0BD80C0(v18, v19, v28);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      v21 = AudioServiceType.description.getter(a2);
      v23 = sub_1C0BD80C0(v21, v22, v28);

      *(v16 + 24) = v23;
      a5 = v27;
      _os_log_impl(&dword_1C0BC7000, v14, v15, "Setting new serviceType. { reporterID=%lld, oldServiceType=%s, newServiceType=%s) }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v17, -1, -1);
      MEMORY[0x1C68E0970](v16, -1, -1);
    }

    [sub_1C0BCD8D4(a5 3)];
    swift_unknownObjectRelease();
    *(v10 + 24) = a2;
    v24 = sub_1C0BEBF88();
    v25 = sub_1C0BEC118();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v24, v25, "Restarting session after reconfiguring serviceType. { reporterID=%lld }", v26, 0xCu);
      MEMORY[0x1C68E0970](v26, -1, -1);
    }

    return sub_1C0BCFBD8(a4);
  }

  return result;
}

uint64_t sub_1C0BE5D38(uint64_t result, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 24) != a2)
  {
    v8 = result;
    v9 = sub_1C0BEBF88();
    v10 = sub_1C0BEC118();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v9, v10, "Setting new serviceType. { reporterID=%lld }", v11, 0xCu);
      MEMORY[0x1C68E0970](v11, -1, -1);
    }

    [sub_1C0BCD8D4(a5 3)];
    result = swift_unknownObjectRelease();
    *(v8 + 24) = a2;
  }

  return result;
}

uint64_t sub_1C0BE5E48(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for ReporterState(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = sub_1C0BEC018();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1C0BEC028();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = sub_1C0BEBF88();
    v23 = sub_1C0BEC118();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v32;
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v25;
      _os_log_impl(&dword_1C0BC7000, v22, v23, "Destroying reporter. { reporterID=%lld }", v26, 0xCu);
      MEMORY[0x1C68E0970](v26, -1, -1);
    }

    sub_1C0BCAF30(v25, 0xD00000000000001BLL, 0x80000001C0BEE490, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1C0BC9D00(v7, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v7, v14, type metadata accessor for ReporterState);
      sub_1C0BD3F80(v25);
      swift_beginAccess();
      v27 = v31;
      sub_1C0BE62A0(v25, v31);
      sub_1C0BC9D00(v27, &qword_1EBE52960, &unk_1C0BED5F0);
      swift_endAccess();
      sub_1C0BC9378(v14, v12, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1C0BCA00C(v12, type metadata accessor for ReporterState);
        v28 = sub_1C0BCD8D4(v14, 3);
        [v28 destroySessionFor_];
        swift_unknownObjectRelease();
        v29 = v14;
      }

      else
      {
        sub_1C0BCA00C(v14, type metadata accessor for ReporterState);
        v29 = v12;
      }

      return sub_1C0BCA00C(v29, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE62A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C0BC97E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C0BEB944();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for ReporterState(0);
    v18 = *(v11 - 8);
    sub_1C0BC9D60(v10 + *(v18 + 72) * v7, a2, type metadata accessor for ReporterState);
    sub_1C0BDFCD8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for ReporterState(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1C0BE63FC(uint64_t a1)
{
  v38 = type metadata accessor for StartedReporterData(0);
  v2 = MEMORY[0x1EEE9AC00](v38);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for ReporterState(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v37 = a1;
  sub_1C0BCAF30(a1, 0xD00000000000001DLL, 0x80000001C0BEE470, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1C0BC9D00(v12, &qword_1EBE52960, &unk_1C0BED5F0);
  }

  v36 = v4;
  sub_1C0BC9D60(v12, v19, type metadata accessor for ReporterState);
  sub_1C0BC9378(v19, v17, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C0BCA00C(v19, type metadata accessor for ReporterState);
    v29 = v17;
    v30 = type metadata accessor for ReporterState;
    return sub_1C0BCA00C(v29, v30);
  }

  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = *v17;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9D60(v17 + *(v22 + 48), v6, type metadata accessor for StartedReporterData);
      v23 = sub_1C0BEBF68();
      v24 = v36;
      result = (*(*(v23 - 8) + 16))(v36, v6, v23);
      v25 = *(v38 + 20);
      v26 = *&v6[v25];
      v27 = __CFADD__(v26, 1);
      v28 = v26 + 1;
      if (!v27)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  type metadata accessor for ActiveReporterState(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_10:
    sub_1C0BCA00C(v19, type metadata accessor for ReporterState);
    v30 = type metadata accessor for ActiveReporterState;
    v29 = v17;
    return sub_1C0BCA00C(v29, v30);
  }

  v35 = *v17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BC9D60(v17 + *(v22 + 48), v6, type metadata accessor for StartedReporterData);
  v31 = sub_1C0BEBF68();
  v24 = v36;
  result = (*(*(v31 - 8) + 16))(v36, v6, v31);
  v25 = *(v38 + 20);
  v32 = *&v6[v25];
  v27 = __CFADD__(v32, 1);
  v28 = v32 + 1;
  if (!v27)
  {
LABEL_12:
    *(v24 + v25) = v28;
    v33 = *(v22 + 48);
    *v10 = v35;
    sub_1C0BC9378(v24, v10 + v33, type metadata accessor for StartedReporterData);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v10, 0, 1, v13);
    swift_beginAccess();

    sub_1C0BC958C(v10, v37);
    swift_endAccess();

    sub_1C0BCA00C(v24, type metadata accessor for StartedReporterData);
    sub_1C0BCA00C(v6, type metadata accessor for StartedReporterData);
    v30 = type metadata accessor for ReporterState;
    v29 = v19;
    return sub_1C0BCA00C(v29, v30);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1C0BE69D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0BE6B24()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (*(v2 + 16))
  {

    v3 = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF20);
    if (v4)
    {
      sub_1C0BCB304(*(v2 + 56) + 32 * v3, v9);

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  v6 = *(v1 + 32);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1C0BCA668(0xD00000000000001ALL, 0x80000001C0BEE450);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  sub_1C0BCB304(*(v6 + 56) + 32 * v7, v9);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

char *sub_1C0BE6CFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0BE6D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0BE6D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52978, &unk_1C0BED640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double sub_1C0BE6E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C0BCA668(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C0BD20A0();
      v10 = v12;
    }

    sub_1C0BCA658((*(v10 + 56) + 32 * v8), a3);
    sub_1C0BDFB28(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1C0BE6EC4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for ReporterState(0);
  v33 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v8 = result;
  v9 = 0;
  v34 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v29 = result + 8;
  v30 = result;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(v34 + 56);
      v37 = *(*(v34 + 48) + 8 * v20);
      v22 = *(v33 + 72) * v20;
      v23 = v31;
      sub_1C0BC9378(v21 + v22, v31, type metadata accessor for ReporterState);
      v24 = v32;
      sub_1C0BE1468(v23, v32);
      sub_1C0BCA00C(v23, type metadata accessor for ReporterState);
      v8 = v30;
      *(v29 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v8[6] + 8 * v20) = v37;
      result = sub_1C0BC9D60(v24, v8[7] + v22, type metadata accessor for ReporterState);
      v25 = v8[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v8[2] = v27;
      v15 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C0BE7140(uint64_t a1, uint64_t a2)
{
  v35[2] = a2;
  v3 = type metadata accessor for ReporterState(0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v35 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v12 = v10;
  v13 = result;
  v14 = 0;
  v42 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v36 = result + 8;
  v37 = result;
  v38 = v8;
  if ((v19 & v15) != 0)
  {
    while (1)
    {
      v22 = v12;
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_10:
      v26 = v23 | (v14 << 6);
      v27 = *(v42 + 56);
      v43 = *(*(v42 + 48) + 8 * v26);
      v28 = *(v40 + 72) * v26;
      sub_1C0BC9378(v27 + v28, v22, type metadata accessor for ReporterState);
      v29 = v39;
      sub_1C0BC9378(v22, v39, type metadata accessor for ReporterState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1C0BCA00C(v29, type metadata accessor for ReporterState);
      v31 = v38;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1C0BC9378(v22, v38, type metadata accessor for ReporterState);
      }

      else
      {
        sub_1C0BE1B50(v22, v38);
      }

      v12 = v22;
      sub_1C0BCA00C(v22, type metadata accessor for ReporterState);
      v13 = v37;
      *(v36 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(v13[6] + 8 * v26) = v43;
      result = sub_1C0BC9D60(v31, v13[7] + v28, type metadata accessor for ReporterState);
      v32 = v13[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v13[2] = v34;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        return v13;
      }

      v25 = *(v16 + 8 * v14);
      ++v24;
      if (v25)
      {
        v22 = v12;
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C0BE745C(uint64_t a1, uint64_t a2)
{
  v35[2] = a2;
  v3 = type metadata accessor for ReporterState(0);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v35 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v43 = v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v11 = result;
  v12 = 0;
  v41 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = result + 8;
  v37 = result;
  if ((v17 & v13) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = *(v41 + 56);
      v42 = *(*(v41 + 48) + 8 * v23);
      v25 = *(v39 + 72) * v23;
      v26 = v43;
      sub_1C0BC9378(v24 + v25, v43, type metadata accessor for ReporterState);
      v27 = v38;
      sub_1C0BC9378(v26, v38, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      type metadata accessor for ActiveReporterState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = v27;
      v30 = EnumCaseMultiPayload;
      sub_1C0BCA00C(v29, type metadata accessor for ActiveReporterState);
      if (v30 != 1)
      {
        goto LABEL_14;
      }

      v31 = v43;
      sub_1C0BE0B7C(v43, v8);
LABEL_15:
      sub_1C0BCA00C(v31, type metadata accessor for ReporterState);
      v11 = v37;
      *(v36 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v11[6] + 8 * v23) = v42;
      result = sub_1C0BC9D60(v8, v11[7] + v25, type metadata accessor for ReporterState);
      v32 = v11[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v11[2] = v34;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    sub_1C0BCA00C(v27, type metadata accessor for ReporterState);
LABEL_14:
    v31 = v43;
    sub_1C0BC9378(v43, v8, type metadata accessor for ReporterState);
    goto LABEL_15;
  }

LABEL_5:
  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return v11;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for ReporterState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    v6 = swift_getEnumCaseMultiPayload();

    if (v6 != 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
      v8 = sub_1C0BEBF68();
      (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C0BE792C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ReporterState(0) - 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v7, v5, v6, v8);
}

unint64_t sub_1C0BE79F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C0BC8788(*(v1 + 24));
  *a1 = result;
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

uint64_t sub_1C0BE7AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BE7B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BE7C4C()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy;
  if (*(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection);
    aBlock[4] = sub_1C0BE805C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BE7F10;
    aBlock[3] = &block_descriptor_3;
    v4 = _Block_copy(aBlock);

    v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1C0BEC1C8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52988, &qword_1C0BED688);
    swift_dynamicCast();
    v2 = v7;
    *(v0 + v1) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_1C0BE7DB4(void *a1)
{
  v2 = a1;
  oslog = sub_1C0BEBF88();
  v3 = sub_1C0BEC128();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136380675;
    swift_getErrorValue();
    v6 = sub_1C0BEC2A8();
    v8 = sub_1C0BD80C0(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C0BC7000, oslog, v3, "Synchronous remote object proxy encountered error. { error=%{private}s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C68E0970](v5, -1, -1);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }
}

void sub_1C0BE7F10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C0BE7F78()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger;
  v2 = sub_1C0BEBFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1C0BE8064(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (!*(v11 + 16) || (v12 = sub_1C0BC97E0(a1), (v13 & 1) == 0))
  {
    v19 = sub_1C0BEBF88();
    v23 = sub_1C0BEC138();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134283521;
      *(v24 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v19, v23, "start called for unknown reporterID. { function=start, reporterID=%{private}lld }", v24, 0xCu);
      MEMORY[0x1C68E0970](v24, -1, -1);
    }

    goto LABEL_12;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BCCD54(v14 + v15, v9, &qword_1EBE52900, &unk_1C0BED7C0);
  v16 = sub_1C0BEBF68();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v9, 1, v16);

  sub_1C0BDFF80(v9);
  v19 = sub_1C0BEBF88();
  v20 = sub_1C0BEC118();
  v21 = os_log_type_enabled(v19, v20);
  if (v18 != 1)
  {
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 134283521;
      *(v25 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v19, v20, "start called without a stop. Ignoring. { function=start, reporterID=%{private}lld }", v25, 0xCu);
      MEMORY[0x1C68E0970](v25, -1, -1);
    }

LABEL_12:

    return;
  }

  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134283521;
    *(v22 + 4) = a1;
    _os_log_impl(&dword_1C0BC7000, v19, v20, "Setting startTime. { function=start, reporterID=%{private}lld }", v22, 0xCu);
    MEMORY[0x1C68E0970](v22, -1, -1);
  }

  sub_1C0BEBF58();
  (*(v17 + 56))(v7, 0, 1, v16);
  swift_beginAccess();
  sub_1C0BEA974(v7, v14 + v15);
  swift_endAccess();
}

void sub_1C0BE83CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  v10 = sub_1C0BEBF68();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  v17 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (!*(v18 + 16) || (v19 = sub_1C0BC97E0(a1), (v20 & 1) == 0))
  {
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC138();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "activeReporters should contain reporter already. { function=stop }", v25, 2u);
      MEMORY[0x1C68E0970](v25, -1, -1);
    }

    return;
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  v22 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BCCD54(v21 + v22, v9, &qword_1EBE52900, &unk_1C0BED7C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1C0BDFF80(v9);
LABEL_21:
    (*(v11 + 56))(v7, 1, 1, v10);
    swift_beginAccess();
    sub_1C0BEA974(v7, v21 + v22);
    swift_endAccess();

    return;
  }

  (*(v11 + 32))(v16, v9, v10);

  v56 = sub_1C0BEBB5C(v26);
  v57 = v27;
  v55 = v28;
  if (!v27)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_21;
  }

  v53 = v22;
  v54 = a1;
  v29 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
  swift_beginAccess();
  v30 = *(v2 + v29);
  if (!*(v30 + 16))
  {
    goto LABEL_14;
  }

  v31 = sub_1C0BEA89C(v56, v57, v55);
  if ((v32 & 1) == 0)
  {

LABEL_14:
    type metadata accessor for MessageCounts();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v29;
    v58 = *(v2 + v29);
    *(v2 + v29) = 0x8000000000000000;
    sub_1C0BEB374(v33, v56, v57, v55, isUniquelyReferenced_nonNull_native);

    *(v2 + v52) = v58;
    swift_endAccess();
    goto LABEL_15;
  }

  v33 = *(*(v30 + 56) + 8 * v31);

LABEL_15:
  v35 = *(v21 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);

  sub_1C0BEBF58();
  sub_1C0BEBF38();
  v37 = v36;
  v56 = *(v11 + 8);
  v57 = v11 + 8;
  v56(v14, v10);
  sub_1C0BEBF38();
  v39 = *(v35 + 16);
  v40 = *(v33 + 16);
  v41 = __CFADD__(v40, v39);
  v42 = v40 + v39;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    v43 = v38;
    *(v33 + 16) = v42;
    v44 = *(v35 + 20);

    v45 = *(v33 + 20);
    v41 = __CFADD__(v45, v44);
    v46 = v45 + v44;
    if (!v41)
    {
      *(v33 + 20) = v46;
      *(v33 + 24) = v37 - v43 + *(v33 + 24);
      v47 = sub_1C0BEBF88();
      v48 = sub_1C0BEC118();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v54;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v50;
        _os_log_impl(&dword_1C0BC7000, v47, v48, "Incremented times. { function=stop, reporterID=%lld }", v51, 0xCu);
        MEMORY[0x1C68E0970](v51, -1, -1);
      }

      else
      {
      }

      v56(v16, v10);
      v22 = v53;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_1C0BE894C(unsigned __int16 a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16) && (v8 = sub_1C0BC97E0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data;
    if (*(*(v10 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) + 24) != a1)
    {
      sub_1C0BC97E0(a2);
      v13 = v12;

      if (v13)
      {
        sub_1C0BE83CC(a2);
      }

      v14 = *(v10 + v11);

      *(v14 + 24) = a1;
    }
  }

  else
  {
    v15 = sub_1C0BEBF88();
    v16 = sub_1C0BEC138();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C0BC7000, v15, v16, "activeReporters should contain reporter already. { function=setServiceType }", v17, 2u);
      MEMORY[0x1C68E0970](v17, -1, -1);
    }
  }
}

void sub_1C0BE8AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16) && (v8 = sub_1C0BC97E0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = sub_1C0BEBF88();
    v12 = sub_1C0BEC118();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22[0] = v14;
      *v13 = 136315138;
      v15 = sub_1C0BEC068();
      v17 = sub_1C0BD80C0(v15, v16, v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C0BC7000, v11, v12, "Setting configuration. { config=%s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1C68E0970](v14, -1, -1);
      MEMORY[0x1C68E0970](v13, -1, -1);
    }

    v18 = *(v10 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data);

    swift_beginAccess();
    *(v18 + 32) = a1;
  }

  else
  {
    v19 = sub_1C0BEBF88();
    v20 = sub_1C0BEC138();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C0BC7000, v19, v20, "activeReporters should contain reporter already. { function=setConfiguration }", v21, 2u);
      MEMORY[0x1C68E0970](v21, -1, -1);
    }
  }
}

uint64_t sub_1C0BE8CF4()
{
  v1 = v0;

  v2 = sub_1C0BEBF88();
  v3 = sub_1C0BEC118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    v5 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
    swift_beginAccess();
    *(v4 + 4) = *(*(v1 + v5) + 16);
    *(v4 + 12) = 2048;
    v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    *(v4 + 14) = *(*(v1 + v6) + 16);

    _os_log_impl(&dword_1C0BC7000, v2, v3, "SessionGenericSummaryCache.process called. { messageCache=%ld, active=%ld }", v4, 0x16u);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo);
  v8 = *(v7 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);
  if (*(v8 + 16))
  {
    v9 = *(*(v7 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) + 24);

    sub_1C0BE8FD0(0x654D656C676E6973, 0xED00006567617373, v9, v8);
  }

  sub_1C0BE9EEC();
  v10 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
  swift_beginAccess();
  v26 = v10;
  v11 = *(v1 + v10);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v14; result = )
  {
    v18 = i;
LABEL_14:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v11 + 48) + 24 * v20;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(*(v11 + 56) + 8 * v20);
    v25 = *(v21 + 16);

    sub_1C0BE8FD0(v22, v23, v25, v24);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      *(v1 + v26) = MEMORY[0x1E69E7CC8];
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BE8FD0(uint64_t a1, unint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = sub_1C0BEBFD8();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1C0BEC008();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v48 = v4;
  v14 = sub_1C0BEBF88();
  v15 = sub_1C0BEC118();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v16 = 136380931;
    *(v16 + 4) = sub_1C0BD80C0(a1, a2, v50);
    *(v16 + 12) = 2081;
    v17 = AudioServiceType.description.getter(a3);
    v41 = v15;
    v19 = a4;
    v20 = a1;
    v21 = sub_1C0BD80C0(v17, v18, v50);

    *(v16 + 14) = v21;
    a1 = v20;
    a4 = v19;
    _os_log_impl(&dword_1C0BC7000, v14, v41, "Sending cached message. { appName=%{private}s, serviceType=%{private}s }", v16, 0x16u);
    v22 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C68E0970](v22, -1, -1);
    MEMORY[0x1C68E0970](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED6A0;
  *(inited + 32) = 0x65646F4D656D6167;
  v24 = MEMORY[0x1E69E6370];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v24;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001C0BEEA20;
  v25 = MEMORY[0x1E69E63B0];
  *(inited + 96) = *(a4 + 24);
  *(inited + 120) = v25;
  strcpy((inited + 128), "overload_count");
  *(inited + 143) = -18;
  v26 = MEMORY[0x1E69E7668];
  *(inited + 144) = *(a4 + 16);
  *(inited + 168) = v26;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001C0BEEA40;
  *(inited + 192) = *(a4 + 20);
  v27 = MEMORY[0x1E69E6158];
  *(inited + 216) = v26;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C0BEDF20;
  *(inited + 240) = a1;
  *(inited + 248) = a2;
  *(inited + 264) = v27;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001C0BEEA60;
  v28 = AudioServiceType.description.getter(a3);
  *(inited + 312) = v27;
  *(inited + 288) = v28;
  *(inited + 296) = v29;

  v30 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  swift_arrayDestroy();
  v31 = v48;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = 134217729;
  v50[4] = sub_1C0BEBB50;
  v50[5] = v32;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 1107296256;
  v50[2] = sub_1C0BE31A0;
  v50[3] = &block_descriptor_4;
  v33 = _Block_copy(v50);
  sub_1C0BEBFE8();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1C0BEBDA8(&qword_1EBE529A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529A8, &qword_1C0BED7D8);
  sub_1C0BEBDF0(&qword_1EBE529B0, &qword_1EBE529A8, &qword_1C0BED7D8);
  v34 = v45;
  v35 = v47;
  sub_1C0BEC1D8();
  MEMORY[0x1C68E00D0](0, v13, v34, v33);
  _Block_release(v33);
  (*(v46 + 8))(v34, v35);
  (*(v43 + 8))(v13, v44);

  v37 = *(v31 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent);
  v38 = __CFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v31 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent) = v39;
  }

  return result;
}

uint64_t sub_1C0BE9584(uint64_t a1, int a2)
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  v5 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 36) = 11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BD7B38;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0BCAF28;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C0BCA800;
  v12[3] = &block_descriptor_61;
  v8 = _Block_copy(v12);
  v9 = v4;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE9740()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_logger;
  v2 = sub_1C0BEBFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C0BE983C(uint64_t a1)
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

uint64_t sub_1C0BE9908()
{
  v1 = v0;
  v2 = sub_1C0BEC158();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C0BEC168();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C0BEC008();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v15[0] = sub_1C0BEBD5C();
  sub_1C0BEBFF8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1C0BEBDA8(&qword_1ED6F7508, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BEBDF0(&qword_1ED6F7510, &qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BEC1D8();
  *(v0 + 16) = sub_1C0BEC198();
  v8 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_logger;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v9 = sub_1C0BEBFA8();
  v10 = __swift_project_value_buffer(v9, qword_1ED6F78B8);
  (*(*(v9 - 8) + 16))(v1 + v8, v10, v9);
  v11 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache) = v11;
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived) = 0;
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent) = 0;
  v12 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo;
  type metadata accessor for ReporterInfo(0);
  v13 = swift_allocObject();
  sub_1C0BE9DA4(0, 5);
  *(v1 + v12) = v13;
  return v1;
}

uint64_t sub_1C0BE9C48()
{
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE9CE4(uint64_t a1)
{
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

BOOL sub_1C0BE9D44(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C0BEC288();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C0BE9DA4(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  v7 = sub_1C0BEBF68();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
  type metadata accessor for MessageCounts();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v3 + v8) = v9;
  type metadata accessor for ReporterData();
  v10 = swift_allocObject();
  *(v10 + 24) = -1;
  *(v10 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0BED230;
  *(v11 + 32) = getpid();
  type metadata accessor for PerfCheck(0);
  swift_allocObject();
  *(v10 + 40) = sub_1C0BC9100(v11);
  *(v10 + 16) = a1;
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v10;
  *(v10 + 24) = a2;
  return v3;
}

uint64_t sub_1C0BE9EEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C0BEBF68();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BEA974(v3, v0 + v5);
  result = swift_endAccess();
  v7 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  return result;
}

uint64_t sub_1C0BE9FE4()
{
  sub_1C0BDFF80(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C0BEA090(uint64_t a1)
{
  sub_1C0BEA130(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C0BEA130(uint64_t a1)
{
  if (!qword_1EBE52848)
  {
    sub_1C0BEBF68();
    v1 = sub_1C0BEC1A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE52848);
    }
  }
}

uint64_t sub_1C0BEA188(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v1;
  v6 = result;
  *(v1 + 16) = v4;
  if (*(result + 16))
  {
    result = sub_1C0BCA668(0x656C6379635F6F69, 0xE800000000000000);
    if (v7)
    {
      sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
      result = swift_dynamicCast();
      if ((result & 1) != 0 && v16 >= 3)
      {
        if (!*(v6 + 16))
        {
          goto LABEL_32;
        }

        result = sub_1C0BCA668(0xD000000000000015, 0x80000001C0BEE9E0);
        if ((v8 & 1) == 0)
        {
          goto LABEL_32;
        }

        sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_32;
        }

        v18 = v16;
        v19 = v17;
        sub_1C0BEA848();
        if (sub_1C0BEC1B8())
        {
        }

        v18 = v16;
        v19 = v17;
        v16 = 5263169;
        v17 = 0xE300000000000000;
        v9 = sub_1C0BEC1B8();

        if ((v9 & 1) == 0)
        {
LABEL_32:
          if (!*(v6 + 16))
          {
            goto LABEL_24;
          }

          result = sub_1C0BCA668(0xD000000000000016, 0x80000001C0BEEA00);
          if ((v10 & 1) == 0)
          {
            goto LABEL_24;
          }

          sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_24;
          }

          v18 = v16;
          v19 = v17;
          sub_1C0BEA848();
          if (sub_1C0BEC1B8())
          {
          }

          v18 = v16;
          v19 = v17;
          LOBYTE(v16) = 72;
          v11 = sub_1C0BEC1B8();

          if ((v11 & 1) == 0)
          {
LABEL_24:
            if (!*(v6 + 16) || (result = sub_1C0BCA668(0x61776572705F7369, 0xED0000676E696D72), (v12 & 1) == 0) || (sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18), result = swift_dynamicCast(), (result & 1) == 0) || (v16 & 1) == 0)
            {
              if (!*(v6 + 16) || (result = sub_1C0BCA668(0x766F6365725F7369, 0xED0000676E697265), (v13 & 1) == 0) || (sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18), result = swift_dynamicCast(), (result & 1) == 0) || (v16 & 1) == 0)
              {
                v14 = *(v5 + 20);
                v3 = __CFADD__(v14, 1);
                v15 = v14 + 1;
                if (!v3)
                {
                  *(v5 + 20) = v15;
                  return result;
                }

LABEL_29:
                __break(1u);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0BEA568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C0BEA5B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C0BEA604()
{
  result = qword_1EBE52990;
  if (!qword_1EBE52990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52990);
  }

  return result;
}

void *sub_1C0BEA658(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1C0BEA6C8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1C0BD80C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C0BEA724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529B8, &unk_1C0BED7E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C0BEA818@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1C0BEA848()
{
  result = qword_1EBE52998;
  if (!qword_1EBE52998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52998);
  }

  return result;
}

unint64_t sub_1C0BEA89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  v6 = sub_1C0BEC2F8();

  return sub_1C0BEA9E4(a1, a2, v3, v6);
}

unint64_t sub_1C0BEA930(uint64_t a1)
{
  v2 = sub_1C0BEC1F8();

  return sub_1C0BEAAC8(a1, v2);
}

uint64_t sub_1C0BEA974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0BEA9E4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a3;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1C0BEC288()) && v14 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1C0BEAAC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C0BD3C64(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68E0150](v9, a1);
      sub_1C0BEBEA8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C0BEAB90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C8, &qword_1C0BED7F8);
  result = sub_1C0BEC268();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1C0BEC2B8();
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
      *(*(v7 + 48) + 8 * v15) = v20;
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

uint64_t sub_1C0BEAE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C0, &qword_1C0BED7F0);
  v34 = v4;
  result = sub_1C0BEC268();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *(v21 + 8);
      v35 = *v21;
      v23 = *(v21 + 16);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C0BEC2C8();
      sub_1C0BEC098();
      sub_1C0BEC2E8();
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
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1C0BEB0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529E0, &qword_1C0BED820);
  v34 = v4;
  result = sub_1C0BEC268();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
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
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1C0BEB374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C0BEA89C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C0BEAE00(v18, a5 & 1);
      v13 = sub_1C0BEA89C(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1C0BEC298();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1C0BEB660();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = v23[6] + 24 * v13;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a4;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

void *sub_1C0BEB504()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C8, &qword_1C0BED7F8);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_1C0BEB660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C0, &qword_1C0BED7F0);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOWORD(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void sub_1C0BEB7DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
  v2 = *v0;
  v3 = sub_1C0BEC258();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void *sub_1C0BEB944()
{
  v1 = v0;
  v2 = type metadata accessor for ReporterState(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  v5 = *v0;
  v6 = sub_1C0BEC258();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1C0BEBE44(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_1C0BC9FA8(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C0BEBB5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data);
  result = sub_1C0BE6B24();
  if (!v3)
  {
    result = sub_1C0BD1A4C();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || *(v1 + 24) == 0xFFFF)
  {

LABEL_8:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v5 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v5, qword_1ED6F78B8);

    v6 = sub_1C0BEBF88();
    v7 = sub_1C0BEC128();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315394;
      v10 = sub_1C0BE6B24();
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v13 = sub_1C0BD80C0(v10, v12, &v17);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = AudioServiceType.description.getter(*(v1 + 24));
      v16 = sub_1C0BD80C0(v14, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1C0BC7000, v6, v7, "Unable to build MessageDimensions. { appName=%s, serviceType=%s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v9, -1, -1);
      MEMORY[0x1C68E0970](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C0BEBD5C()
{
  result = qword_1ED6F7500;
  if (!qword_1ED6F7500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F7500);
  }

  return result;
}

uint64_t sub_1C0BEBDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0BEBDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0BEBE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}