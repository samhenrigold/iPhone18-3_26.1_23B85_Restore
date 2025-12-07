uint64_t sub_1C44FA2C0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFC018();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  v16 = sub_1C4F00D88();
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1C43FBCC4();
  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v15 = 0x404E000000000000;
  (*(v11 + 104))(v15, *MEMORY[0x1E69A00D8], v9);
  sub_1C4EFB118();
  sub_1C4EFB0D8();
  v17 = a1;
  v18 = v25;
  (*(v4 + 16))(v8, v17, v25);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = v26;
  *(v21 + 24) = v22;
  (*(v4 + 32))(v21 + v19, v8, v18);
  *(v21 + v20) = v22;
  sub_1C4EFB0C8();
}

uint64_t sub_1C44FA524()
{
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1C44FA5AC()
{
  v1 = sub_1C4EFB148();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C44FA8BC();
  if (!v0 && v7 != 2)
  {
    sub_1C4EFBE88();
    v8 = sub_1C4EFB0F8();
    v10 = v9;
    (*(v3 + 8))(v6, v1);
    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v24 = v11;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      sub_1C43FEC60();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C441D828(v24, v12, &v25);
      _os_log_impl(&dword_1C43F8000, v14, v15, "ErrorHandlingDatabasePool(%s): switching to incremental auto_vacuum mode.", v16, 0xCu);
      sub_1C440962C(v17);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4776CE4(2u);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      sub_1C43FEC60();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      v22 = sub_1C441D828(v24, v12, &v25);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1C43F8000, v18, v19, "ErrorHandlingDatabasePool(%s): auto_vacuum is now incremental.", v20, 0xCu);
      sub_1C440962C(v21);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C44FA8BC()
{
  v1 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v0)
  {
    (*(v3 + 8))(v6, v1);
    return sub_1C4423A0C(v9, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    (*(v3 + 8))(v6, v1);
    sub_1C4423A0C(v9, &unk_1EC0BC770, &qword_1C4F10DC0);
    v8 = v11;
    if (v11 >= 3)
    {
      v8 = 3;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

void sub_1C44FAA4C()
{
  sub_1C43FE96C();
  v61 = v0;
  v62 = v1;
  v2 = sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v64 = sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v63 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C4EFB5E8();
  v14 = *MEMORY[0x1E699FE90];
  v15 = *(v4 + 104);
  v15(v8, v14, v2);
  sub_1C4407670(0xD000000000000014, v16, v17, sub_1C4B6325C);
  v18 = *(v4 + 8);
  v19 = sub_1C43FD018();
  v18(v19);
  v20 = sub_1C441A0EC();
  (v15)(v20);
  sub_1C44137F4();
  sub_1C4407670(v21 + 2, v22, v23, v24);
  v25 = sub_1C43FD018();
  v18(v25);
  v26 = sub_1C441A0EC();
  (v15)(v26);
  sub_1C44137F4();
  sub_1C4407670(v27 | 0xC, v28, v29, v30);
  v31 = sub_1C43FD018();
  v18(v31);
  v15(v8, v14, v2);
  sub_1C4EFB5C8();
  v32 = sub_1C43FD018();
  v18(v32);
  v33 = sub_1C441A0EC();
  (v15)(v33);
  sub_1C4407670(0xD000000000000017, v34, v35, sub_1C4B63D74);
  v36 = sub_1C43FD018();
  v18(v36);
  v37 = sub_1C441A0EC();
  (v15)(v37);
  sub_1C44137F4();
  sub_1C4407670(v38 + 10, v39, v40, v41);
  v42 = sub_1C43FD018();
  v18(v42);
  v43 = sub_1C441A0EC();
  (v15)(v43);
  sub_1C44137F4();
  sub_1C4407670(v44 + 3, v45, v46, v47);
  v48 = sub_1C43FD018();
  v18(v48);
  v49 = sub_1C441A0EC();
  (v15)(v49);
  sub_1C43FDE8C();
  v50 = sub_1C43FD018();
  v18(v50);
  v51 = sub_1C441A0EC();
  (v15)(v51);
  sub_1C43FDE8C();
  v52 = sub_1C43FD018();
  v18(v52);
  sub_1C44FAF64(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);
  v53 = sub_1C4EFB5D8();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v53);
    *(&v60 - 2) = v13;
    sub_1C446572C(sub_1C44FB024, (&v60 - 4), v54, v55, v56, v57, v58, v59, v60, v61);
  }

  (*(v63 + 8))(v13, v64);
  sub_1C43FBC80();
}

uint64_t sub_1C44FAED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44FAF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44FAF64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44FAFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44FB040(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3, v8);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    (v11)(v6, v18, v3);
    sub_1C4B62F60();
    v19(v6, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C44FB258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF230, &qword_1EDE2DFE8, sub_1C446B00C, sub_1C44FB2B8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44FB2B8()
{
  sub_1C456902C(&qword_1EC0C09D8, qword_1C4F3F9B8);
  swift_allocObject();
  result = sub_1C44FB350();
  qword_1EDE2DFE8 = result;
  return result;
}

uint64_t type metadata accessor for KeyValueDatabase(uint64_t a1)
{
  result = qword_1EDDFD8C8;
  if (!qword_1EDDFD8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44FB350()
{
  sub_1C456902C(&qword_1EC0C6250, &qword_1C4F6B5C8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for KeyValueDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6258, &qword_1C4F6B5D0);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

void *sub_1C44FB3DC(uint64_t a1)
{
  v2 = v1;
  v36 = *v2;
  v33[5] = sub_1C4EFB1E8();
  sub_1C43FCDF8();
  v33[3] = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v33[4] = v6;
  MEMORY[0x1EEE9AC00](v7);
  v33[2] = v33 - v8;
  v9 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v33[1] = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  sub_1C4419BA4();
  sub_1C4EF9888();
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url;
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url, v19, v9);
  v35 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config);
  type metadata accessor for Configuration(0);
  v41 = a1;
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v38 = v2;
  v40 = v9;
  sub_1C44072E8();
  v22 = 2 * (v21 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C44072E8();
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 | 4;
  }

  v37 = v24;
  sub_1C44F920C();
  v25 = static NSUserDefaults.keyValueDatabaseLoggingEnabled.getter() & 1;
  v26 = *(v11 + 16);
  v27 = v38;
  v28 = v38 + v20;
  v34 = v20;
  v29 = v40;
  v26(v16, v28, v40);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v30 = v39;
  v31 = sub_1C44F999C(v16, v37 | v25);
  if (v30)
  {
    sub_1C4467948(v41);
    (*(v11 + 8))(v27 + v34, v29);
    sub_1C4467948(v27 + v35);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v27 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool) = v31;
    sub_1C44FBA6C();
    sub_1C4467948(v41);
  }

  return v27;
}

uint64_t sub_1C44FB9AC()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE978);
  sub_1C442B738(v0, qword_1EDDFE978);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t sub_1C44FBA6C()
{
  v0 = sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v23 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v10 = *MEMORY[0x1E699FE90];
  v11 = *(v2 + 104);
  v11(v5, v10, v0);
  sub_1C4EFB5C8();
  v12 = *(v2 + 8);
  v12(v5, v0);
  v11(v5, v10, v0);
  sub_1C4EFB5C8();
  v12(v5, v0);
  sub_1C44FAF64(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);
  v13 = v22[2];
  v14 = sub_1C4EFB5D8();
  if (!v13)
  {
    MEMORY[0x1EEE9AC00](v14);
    v22[-2] = v9;
    sub_1C446572C(sub_1C44FBD48, &v22[-4], v15, v16, v17, v18, v19, v20, v22[0], v22[1]);
  }

  return (*(v23 + 8))(v9, v24);
}

uint64_t sub_1C44FBD64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3, v8);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    (v11)(v6, v18, v3);
    sub_1C4B62F60();
    v19(v6, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C44FBF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF7A0, &qword_1EDE2E060, sub_1C44273D4, sub_1C44FBFDC);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C44FBFDC()
{
  sub_1C456902C(&qword_1EC0C4660, qword_1C4F5AED0);
  swift_allocObject();
  result = sub_1C44FC074();
  qword_1EDE2E060 = result;
  return result;
}

uint64_t type metadata accessor for ViewDatabase(uint64_t a1)
{
  result = qword_1EDDFF6E0;
  if (!qword_1EDDFF6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44FC074()
{
  sub_1C456902C(&qword_1EC0C6240, &qword_1C4F6B5B8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6248, &qword_1C4F6B5C0);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

void sub_1C44FC100()
{
  sub_1C43FE96C();
  v63 = v1;
  v2 = v0;
  v4 = v3;
  v61 = *v0;
  v51 = sub_1C4EFB1E8();
  sub_1C43FCDF8();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - v9;
  v10 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v56 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_statementCacheBacking) = 0;
  v57 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_initialFilterStatementCacheBacking) = 0;
  v58 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_enqueueViewStatementCacheBacking) = 0;
  v59 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_viewAccessStatementCacheBacking) = 0;
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache;
  sub_1C456902C(&qword_1EC0C4648, &qword_1C4F5AEB0);
  swift_allocObject();
  v22 = sub_1C4F00248();
  sub_1C456902C(&qword_1EC0C4650, &unk_1C4F5AEB8);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  v60 = v21;
  *(v2 + v21) = v23;
  sub_1C43FF734();
  sub_1C4EF9888();
  v24 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_url, v20, v10);
  v55 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config;
  sub_1C44098F0(v4, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_config);
  v25 = *(type metadata accessor for Configuration(0) + 20);
  v65 = v4;
  v26 = *(v4 + v25);
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v62 = v2;
  v64 = v10;
  sub_1C4426108();
  v29 = 2 * (v28 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    v46 = v27;
    swift_once();
    v27 = v46;
  }

  v52 = v27;
  v53 = v26;
  sub_1C4426108();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = v29 | 4;
  }

  sub_1C44F920C();
  v32 = v31 | static NSUserDefaults.viewDatabaseLoggingEnabled.getter() & 1;
  v33 = *(v12 + 16);
  v34 = v62;
  v54 = v24;
  v35 = v64;
  v33(v17, v62 + v24, v64);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v36 = v63;
  v37 = sub_1C44F999C(v17, v32 | 0x30);
  if (v36)
  {
    sub_1C4467948(v65);
    (*(v12 + 8))(v34 + v54, v35);
    sub_1C4467948(v34 + v55);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v52;
    v39 = v53;
    *(v34 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool) = v37;
    sub_1C4BBBF08();
    if (qword_1EDDFEC48 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC50 & ~v39) != 0 || (*(&xmmword_1EDDFEC50 + 1) & v38) != *(&xmmword_1EDDFEC50 + 1))
    {

      sub_1C4418704(sub_1C4BC1AFC, v34, v40, v41, v42, v43, v44, v45, v47, v48);
      sub_1C44354B4();
      sub_1C4467948(v65);
    }

    else
    {
      sub_1C4467948(v65);
    }
  }

  sub_1C43FF5E8();
  sub_1C43FBC80();
}

uint64_t sub_1C44FC830(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFF570, &_s17BiomeStreamConfigVN);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF5C0, &_s14BiomeSQLConfigVN);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF5D0, &_s13FeatureConfigVN);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFDDF8, &_s16FeatureRowConfigVN);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF390, &_s14CustomViewTypeON);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFDDF0, &_s16KTSSegmentConfigVN);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF588, &_s16KTSCadenceConfigVN);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF260, &_s17IncrementalObjectVN);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF250, &_s7SQLViewO12ViewSQLPathsVN);
      if (v15 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCD08(319, &qword_1EDDFF078, _s6ConfigVMa);
      if (v16 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF068, &_s6TargetVN);
      if (v17 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCD08(319, &qword_1EDDFF9A0, MEMORY[0x1E69A9D80]);
      if (v18 > 0x3F)
      {
        return v6;
      }

      sub_1C44FCC6C(319, &qword_1EDDFF530, &_s33RepresentationPreprocessingConfigVN);
      if (v19 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDFF5A0, &_s15EmbeddingConfigVN);
        v2 = v20;
        if (v21 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFF5B0, &_s14VectorDBConfigVN);
          v2 = v22;
          if (v23 <= 0x3F)
          {
            sub_1C44FCC6C(319, &qword_1EDDFF550, &_s20PeopleDonationConfigVN);
            v2 = v24;
            if (v25 <= 0x3F)
            {
              sub_1C44FCC6C(319, &qword_1EDDFF540, &_s21EntityRelevanceConfigVN);
              v2 = v26;
              if (v27 <= 0x3F)
              {
                sub_1C44FCC6C(319, &qword_1EDDFF560, &_s19EntityTaggingConfigVN);
                v2 = v28;
                if (v29 <= 0x3F)
                {
                  sub_1C44FCC6C(319, &qword_1EDDFF8E0, &unk_1F4406328);
                  v2 = v30;
                  if (v31 <= 0x3F)
                  {
                    sub_1C44FCC6C(319, &qword_1EDDFF900, &unk_1F43FF3A0);
                    v2 = v32;
                    if (v33 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C44FCC6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C44FCCB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C44FCD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C44FCD5C(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFED80, &type metadata for UnstructuredDatabaseTable.Config);
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEF38, &type metadata for CustomRowDatabaseTable.Config);
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEF28, &type metadata for ObjectRowDatabaseTable.Config);
      if (v3 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFEF48, &type metadata for SubgraphDatabaseTable.Config);
        if (v4 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFF8C8, &type metadata for VectorSearch.Config);
          if (v5 <= 0x3F)
          {
            sub_1C4BC1B7C(319);
            if (v6 <= 0x3F)
            {
              sub_1C44FCC6C(319, &qword_1EDDFF8E0, &unk_1F4406328);
              if (v7 <= 0x3F)
              {
                sub_1C44FCC6C(319, &qword_1EDDFF900, &unk_1F43FF3A0);
                if (v8 <= 0x3F)
                {
                  sub_1C44FCC6C(319, &qword_1EDDFED60, &type metadata for EntityRelevanceRankingDatabaseTable.Config);
                  if (v9 <= 0x3F)
                  {
                    sub_1C44FCC6C(319, &qword_1EDDFED78, &unk_1F43EA2E8);
                    if (v10 <= 0x3F)
                    {
                      sub_1C44FCC6C(319, &qword_1EDDFED50, &type metadata for EntityInteractionHistogramDatabaseTable.Config);
                      if (v11 <= 0x3F)
                      {
                        sub_1C44FCC6C(319, &qword_1EDDFD478, &unk_1F43E6B28);
                        if (v12 <= 0x3F)
                        {
                          sub_1C44FCC6C(319, &qword_1EDDFED48, &type metadata for EntityRelevanceHistoricalFeatureDatabaseTable.Config);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

uint64_t sub_1C44FCFC0()
{
  sub_1C456902C(&qword_1EC0BD8C0, &qword_1C4F2FE00);
  swift_allocObject();
  result = sub_1C44FD02C();
  qword_1EDE2DFC8 = result;
  return result;
}

uint64_t sub_1C44FD02C()
{
  sub_1C456902C(&qword_1EC0C6230, &qword_1C4F6B5A8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for FeedbackLogDatabase(v1);
  v2 = sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4(MEMORY[0x1E69E7CC0], v3, v4, v2);
  sub_1C456902C(&qword_1EC0C6238, &qword_1C4F6B5B0);
  sub_1C44400E8();
  v5 = swift_allocObject();
  return sub_1C44208F4(v5);
}

uint64_t sub_1C44FD0B8()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44FD1C8(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C44FD14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for FeedbackLogDatabase, FeedbackLogDatabase.init(config:), sub_1C4662054);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void FeedbackLogDatabase.init(config:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v44 = *v2;
  v45 = v1;
  sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v39 = v6;
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v38 = v7;
  sub_1C43FBE44();
  sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v42 = v9;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v41 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  sub_1C4414ACC();
  sub_1C4EF9888();
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_url;
  sub_1C44333BC();
  v22(&v2[v21], v20, v11);
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_config;
  sub_1C44FD704(v4, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_config], type metadata accessor for Configuration);
  type metadata accessor for Configuration(0);
  v46 = v4;
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0();
  v25 = 2 * (v24 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C440CBE0();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 | 4;
  }

  (*(v13 + 16))(v17, &v2[v21], v11);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  swift_allocObject();
  v28 = v45;
  v29 = sub_1C44F999C(v17, v27);
  if (v28)
  {
    sub_1C47FAADC(v46, type metadata accessor for Configuration);
    (*(v13 + 8))(&v2[v21], v11);
    sub_1C47FAADC(&v2[v23], type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_pool] = v29;
    v30 = v41;
    sub_1C4EFB5E8();
    v32 = v38;
    v31 = v39;
    v33 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x1E699FE90], v40);
    sub_1C4EFB5C8();
    v34 = (*(v31 + 8))(v32, v33);
    MEMORY[0x1EEE9AC00](v34);
    *(&v38 - 2) = v30;

    sub_1C446C37C(sub_1C44FD764, (&v38 - 4));

    sub_1C4435048();
    sub_1C47FAA94(v35, v36, &unk_1C4F244D0);

    sub_1C4EFB5D8();

    sub_1C4403178();
    sub_1C47FAADC(v46, v37);
    (*(v42 + 8))(v30, v43);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44FD704(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1C44FD780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFB5F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v10);
  v13 = sub_1C4EFB5B8();
  if (v2)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14 = v13;
    (*(v9 + 8))(v12, v8);
    if (v14)
    {
      if (qword_1EDDFFAF0 != -1)
      {
LABEL_21:
        swift_once();
      }

      v15 = sub_1C4F00978();
      v16 = sub_1C442B738(v15, qword_1EDE2E088);
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CF8();
      v19 = os_log_type_enabled(v17, v18);
      v35 = v5;
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C43F8000, v17, v18, "Feedback Log database will reset schema and migrations", v20, 2u);
        v21 = v20;
        v5 = v35;
        MEMORY[0x1C6942830](v21, -1, -1);
      }

      v22 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
      v32[1] = v16;
      v33 = v4;
      v23 = v22 + 64;
      v24 = 1 << *(v22 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v22 + 64);
      v4 = (v24 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = 0;
      v34 = v7;
      if (v26)
      {
        while (1)
        {
          v28 = v27;
LABEL_14:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFBF68();
          v26 &= v26 - 1;

          v27 = v28;
          v5 = v35;
          v7 = v34;
          if (!v26)
          {
            goto LABEL_11;
          }
        }
      }

      while (1)
      {
LABEL_11:
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v28 >= v4)
        {
          break;
        }

        v26 = *(v23 + 8 * v28);
        ++v27;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      (*(v5 + 8))(v7, v33);
      v29 = sub_1C4F00968();
      v30 = sub_1C4F01CF8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C43F8000, v29, v30, "Feedback Log database completed reset of schema and migrations.", v31, 2u);
        MEMORY[0x1C6942830](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_1C44FDC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1C4422F90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C441D670(&v12, v10 + 40 * a1 + 32);
}

void sub_1C44FDCBC()
{
  sub_1C43FBD3C();
  sub_1C43FFC44();
  if (v7)
  {
    sub_1C441172C();
    if (v12 != v13)
    {
      sub_1C442B904();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v11 = v6;
  }

  v14 = *(v0 + 16);
  if (v11 <= v14)
  {
    v15 = *(v0 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1C4422208(v5, v6, v7, v8, v9, v10);
  v16 = sub_1C4404050();
  v18 = *(*(sub_1C456902C(v16, v17) - 8) + 72);
  v19 = sub_1C44357B4();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v4 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_1C441B764((v20 - v4) / v18);
LABEL_18:
  v22 = sub_1C4404050();
  v24 = *(sub_1C456902C(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_1C459CE68(v0 + v25, v14, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C4441894();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44FDE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C44FDEA4()
{
  result = qword_1EC0C6928;
  if (!qword_1EC0C6928)
  {
    sub_1C4572308(&qword_1EC0C6920, ">d\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6928);
  }

  return result;
}

void sub_1C44FDF38()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(v6, v4);
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v20 = *(v9 + 16);
  v21 = sub_1C4401CBC(v3, v7, v5, MEMORY[0x1E699C760]);
  v22 = MEMORY[0x1C69407C0](v20, v10, v21);
  sub_1C4426A00(v22);
  if (v7)
  {
    v24 = v12 + 16;
    v23 = *(v12 + 16);
    v30[1] = v9;
    v31 = v23;
    v25 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v27 = v1;
    v28 = (v24 - 8);
    do
    {
      v31(v16, v25, v10);
      v29 = sub_1C43FE5F8();
      v27(v29);
      (*v28)(v19, v10);
      v25 += v26;
      v7 = (v7 - 1);
    }

    while (v7);
  }

  else
  {
    sub_1C440F210();
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C44FE0D8()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v4);
  sub_1C440BD5C();
  sub_1C440AC0C();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44236E4();
  v6 = sub_1C440C518(&qword_1EC0B9150);
  sub_1C44A1E88(v6);
  sub_1C4426B80();
  while (1)
  {
    v8 = v7 & v3;
    sub_1C4414B44();
    sub_1C4851B10();
    if (v9)
    {
      sub_1C4851C50();
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C4848DD8(v17, v18, v19);
      *v3 = v24;
      v20 = sub_1C4441090();
      v21(v20);
      goto LABEL_7;
    }

    v10 = sub_1C440BD34();
    (qword_1EC0B8A30)(v10);
    sub_1C4425100();
    v12 = sub_1C48514DC(&qword_1EC0BDEB8, &qword_1EC0B8A30, &unk_1C4F0DE50, v11);
    sub_1C449DA9C(v2, v13, v14, v12);
    v15 = sub_1C44409C8();
    v1(v15);
    if (v0)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v22 = sub_1C440230C();
  v1(v22);
  sub_1C441802C();
  v23 = sub_1C4433D0C();
  (qword_1EC0B8A30)(v23);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C44FE288(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22[0] = v22 - v3;
  v4 = type metadata accessor for EntityTriple(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (1)
  {
    if (v15 == v14)
    {
      return 0;
    }

    sub_1C44719E4(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7);
    v16 = &v7[*(v4 + 32)];
    v17 = *v16 == 0xD000000000000016 && 0x80000001C4FC7900 == *(v16 + 1);
    if (v17 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    sub_1C44DBDB4(v7, type metadata accessor for EntityTriple);
    ++v14;
  }

  sub_1C4485774(v7, v10);
  v18 = sub_1C4485774(v10, v13);
  MEMORY[0x1EEE9AC00](v18);
  v22[-2] = v13;
  v19 = v22[0];
  sub_1C4BABD38(sub_1C4D58EA0, &v22[-4], a1);
  if (sub_1C44157D4(v19, 1, v4) == 1)
  {
    sub_1C4420C3C(v19, &qword_1EC0BA590, &qword_1C4F1F430);
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + *(v4 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBDB4(v19, type metadata accessor for EntityTriple);
  }

  sub_1C44DBDB4(v13, type metadata accessor for EntityTriple);
  return v20;
}

void sub_1C44FE5AC()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  type metadata accessor for GraphTriple(v2);
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v4 = sub_1C44057DC();
      sub_1C4471874(v4, v5);
      sub_1C440D464();
      if (v6)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      sub_1C4436548();
      v8 = sub_1C445E5E8(&qword_1EDDFE218, v7, &protocol conformance descriptor for GraphTriple);
      sub_1C4414204(v8);
      sub_1C445E81C();
      sub_1C4471874(v0, v9);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v10);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C44FE6EC(void *a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  LOBYTE(a1) = sub_1C44DBB50(v7, a2);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

uint64_t sub_1C44FE800(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C44FF944, 0, 0);
}

uint64_t sub_1C44FE860()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C43FCF54(v2);
  *v3 = v4;
  v5 = sub_1C4408024(v3);

  return sub_1C44FE98C(v5, v6, v7, v1);
}

uint64_t sub_1C44FE8F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4408024(v1);
  sub_1C4426C44();

  return sub_1C4CDC678(v3, v4, v5, v6, v7);
}

uint64_t sub_1C44FE9AC()
{
  sub_1C43FBCD4();
  v1 = *(v0[2] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop);
  v0[3] = v1;
  if (v1)
  {

    swift_task_alloc();
    sub_1C43FBE70();
    v0[4] = v2;
    *v2 = v3;
    v2[1] = sub_1C4CDC558;
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v6, v4, v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v7();
  }
}

uint64_t sub_1C44FEAAC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDC830, 0, 0);
  }

  else
  {
    sub_1C43FBDA0();

    return v5();
  }
}

void sub_1C44FEBCC()
{
  sub_1C43FBD3C();
  v3 = v2;
  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBC74();
  sub_1C4435C48(v5);
  if (!v3)
  {
LABEL_23:

LABEL_24:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v6)
  {
    goto LABEL_24;
  }

  sub_1C456902C(&qword_1EC0BDEC0, &qword_1C4F32308);
  sub_1C4416310();
  sub_1C4418B64();
  sub_1C4408EE0();
  while (v7)
  {
    sub_1C440AAD0();
LABEL_13:
    v10 = sub_1C4407798();
    v11(v10);
    v12 = sub_1C4A8ECB4();
    sub_1C4409F98(v12);
    sub_1C442D128();
    if (v6)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v6)
        {
          if (v14)
          {
            goto LABEL_26;
          }
        }

        sub_1C443002C();
        if (!v6)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }
    }

    sub_1C43FFC04();
LABEL_21:
    v15 = sub_1C441A1A0(v13);
    v16(v15);
    sub_1C4433698();
    if (v17)
    {
      goto LABEL_27;
    }

    sub_1C444B224();
  }

  v8 = v1;
  while (1)
  {
    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v1 >= v0)
    {
      goto LABEL_23;
    }

    sub_1C4424F24();
    if (v9)
    {
      sub_1C4413608();
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1C44FEDEC(uint64_t a1)
{
  v3[2] = a1;

  v1 = sub_1C44FEDD4(sub_1C4501314, v3);

  return v1;
}

void sub_1C44FEE5C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B8A40, &unk_1C4F0DE60);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C44FEFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v46 = a1;
  v44 = a3;
  v45 = a4;
  v5 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C456902C(&qword_1EC0C39F0, &unk_1C4F54110);
  v47 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - v12;
  type metadata accessor for ProgressTokens(0);
  v52 = &type metadata for ProgressTokenColumn;
  v13 = sub_1C4492FAC();
  v53 = v13;
  LOBYTE(v51[0]) = 1;
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  v16 = *(v15 + 8);
  v17 = *(v16 + 16);
  v49 = sub_1C4EFD548();
  v50 = sub_1C4472550(&qword_1EDDFA240, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92B0]);
  sub_1C4422F90(v48);
  v17(v14, v16);
  v55 = sub_1C4EFB298();
  v56 = MEMORY[0x1E699FE60];
  v18 = v55;
  v40 = v55;
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4472550(&qword_1EDDF7A98, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);
  v19 = v41;
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  v52 = &type metadata for ProgressTokenColumn;
  v53 = v13;
  v20 = v13;
  LOBYTE(v51[0]) = 0;
  v22 = a2[3];
  v21 = a2[4];
  sub_1C4409678(a2, v22);
  (*(*(v21 + 8) + 24))(v22);
  v23 = *(v7 + 2);
  sub_1C447EBE4(v7, type metadata accessor for Source);
  v49 = MEMORY[0x1E69E6530];
  v50 = MEMORY[0x1E69A0178];
  v48[0] = v23;
  v55 = v18;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4401CBC(&qword_1EDDFA2A8, &qword_1EC0C39F0, &unk_1C4F54110, MEMORY[0x1E699FF70]);
  v24 = v42;
  v25 = v57;
  sub_1C4EFB438();
  v26 = *(v47 + 8);
  v26(v19, v25);
  sub_1C440962C(v54);
  v52 = &type metadata for ProgressTokenColumn;
  v53 = v20;
  v41 = v20;
  LOBYTE(v51[0]) = 3;
  v27 = a2[3];
  v28 = a2[4];
  sub_1C4409678(a2, v27);
  v29 = *(v28 + 8);
  v30 = *(v29 + 32);
  v49 = &type metadata for StageName;
  v50 = sub_1C4493280();
  v31 = v27;
  v32 = v57;
  v33 = v29;
  v34 = v24;
  v35 = v40;
  v30(v48, v31, v33);
  v36 = MEMORY[0x1E699FE60];
  v37 = v43;
  v55 = v35;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFBB28();
  sub_1C4420C3C(v48, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4EFB438();
  v26(v34, v32);
  sub_1C440962C(v54);
  if (v44)
  {
    v52 = &type metadata for ProgressTokenColumn;
    v53 = v41;
    LOBYTE(v51[0]) = 2;
    v55 = v35;
    v56 = v36;
    sub_1C4422F90(v54);
    sub_1C4EFBB38();
    sub_1C440962C(v51);
    sub_1C4EFB438();
    v26(v37, v32);
    sub_1C440962C(v54);
    (*(v47 + 32))(v37, v34, v32);
  }

  sub_1C4401CBC(&qword_1EDDFA2B0, &qword_1EC0C39F0, &unk_1C4F54110, MEMORY[0x1E699FF60]);
  sub_1C4472550(&qword_1EDDF7A88, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);
  sub_1C4EFAFF8();
  return (v26)(v37, v32);
}

uint64_t sub_1C44FF644()
{
  sub_1C4475B28();
  v7 = v0;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v1 = swift_task_alloc();
  v2 = sub_1C447FAC0(v1);
  *v2 = v3;
  v4 = sub_1C4401314(v2);

  return v5(v4);
}

uint64_t sub_1C44FF70C()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;
  v3 = sub_1C4414C5C();

  return sub_1C44FE800(v3, v0);
}

uint64_t sub_1C44FF7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState);
  sub_1C43FBDBC();
  swift_allocObject();
  swift_weakInit();
  os_unfair_lock_lock(v1 + 6);
  sub_1C44FF850(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C44FF894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v10 = swift_task_alloc();
  v11 = sub_1C43FCF54(v10);
  *v11 = v12;
  sub_1C4432DFC(v11);
  sub_1C442642C();

  return sub_1C44FF920(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C44FF920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C44FF644, 0, 0);
}

uint64_t sub_1C44FF944()
{
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v0 + 64) = sub_1C44FE820(v2);
    *(v0 + 88) = 3;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1C4CE94D8;
    v4 = sub_1C4414C5C();

    return sub_1C4427590(v4, 0x4000, 0, 0, 0, (v0 + 88));
  }

  else
  {
    sub_1C43FBDA0();

    return v6();
  }
}

void sub_1C44FFA6C()
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask))
  {

    sub_1C4F01918();
  }

  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure + 8);
    v6 = sub_1C4F018C8();
    sub_1C440BAA8(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;
    v7[5] = v5;

    sub_1C4785250();
  }
}

uint64_t sub_1C44FFBA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C44FFC84()
{
  sub_1C456902C(&qword_1EC0B8930, &qword_1C4F0DD38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C4F0C890;
  v2 = v0[5];
  v3 = v0[6];
  sub_1C4409678(v0 + 2, v2);
  (*(v3 + 8))(&v9, v2, v3);
  *(v1 + 32) = v9;
  v4 = v0[5];
  v5 = v0[6];
  sub_1C4409678(v0 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = ~*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_identifier);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  return v1;
}

uint64_t sub_1C44FFD74(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C44FFDE4(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1C4F018C8();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  sub_1C440BAA8(v5, 0, 1, v6);
  v7 = sub_1C4428DF0(qword_1EDDEC900, _s12JobSchedulerCMa, &unk_1C4F6A794);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1C4785250();
}

uint64_t sub_1C44FFF44(void *a1, uint64_t a2, uint64_t *a3)
{
  v21 = a3;
  v20 = sub_1C4EFC808();
  v18[0] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v18[1] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v19 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  sub_1C4409678(a1, a1[3]);
  v22[5] = sub_1C4EFF7D8();
  v22[6] = v11;
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v22);
  sub_1C4509A40();
  sub_1C4420C3C(v22, &qword_1EC0C0F38, &qword_1C4F41A90);
  v22[0] = v12;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748], MEMORY[0x1E699C758]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  sub_1C4EFC818();
  v13 = v19;
  (*(v6 + 16))(v19, v10, v5);
  v14 = v21;
  sub_1C4501C08();
  v15 = *(*v14 + 16);
  sub_1C4505A00();
  (*(v6 + 8))(v10, v5);
  v16 = *v14;
  *(v16 + 16) = v15 + 1;
  return (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v13, v5);
}

size_t sub_1C45002A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C43FF2B4(a1, a2, a3, a4);
  v9 = sub_1C456902C(a5, a6);
  sub_1C43FCF7C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      sub_1C43FDA58((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45003AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v43 = a4;
  v6 = sub_1C4EFC808();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v29 - v8;
  v35 = sub_1C4EFC8F8();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1C4500964();
  *a2 = v16;

  v41 = 0;
  v42 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v17 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4501C90(v17, &v41, &v39);

  v18 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v18 = v41 & 0xFFFFFFFFFFFFLL;
  }

  v19 = v40;
  if (v18)
  {
    goto LABEL_7;
  }

  v20 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v20 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
LABEL_7:
    v32 = v42;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = v15;
    sub_1C4EFC8E8();
    v33 = v19;
    v21 = *(v10 + 16);
    v29 = v12;
    v31 = v4;
    v22 = v35;
    v21(v12, v15, v35);
    sub_1C4505A9C(v38, *a2);
    sub_1C4509A40();
    sub_1C4420C3C(v38, &qword_1EC0C0F38, &qword_1C4F41A90);
    v23 = MEMORY[0x1E699C790];
    sub_1C44FDE5C(&qword_1EC0C6930, MEMORY[0x1E699C790], MEMORY[0x1E699C7A8]);
    sub_1C44FDE5C(&qword_1EC0C6938, v23, MEMORY[0x1E699C798]);
    v24 = v37;
    v25 = v43;
    sub_1C44FDE5C(&qword_1EC0C6940, v23, MEMORY[0x1E699C7A0]);
    sub_1C4EFC818();
    sub_1C45007C4();
    v26 = *(*v25 + 16);
    sub_1C450084C();
    (*(v10 + 8))(v30, v22);
    v27 = *v25;
    *(v27 + 16) = v26 + 1;
    (*(v24 + 32))(v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v26, v9, v34);
  }

  else
  {
  }
}

void sub_1C45007C4()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C443FA1C();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C450084C()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C443FA1C();
    sub_1C4505908();
    *v0 = v4;
  }
}

void sub_1C4500964()
{
  sub_1C43FBD3C();
  v2 = v1;
  v28[1] = type metadata accessor for ConstructionGraphTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v28[0] = v5 - v4;
  v6 = sub_1C43FBE44();
  v28[2] = type metadata accessor for EntityTriple(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v15 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  sub_1C4409678(v2, v2[3]);
  sub_1C4EFF7D8();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v14, 1, v15) != 1)
  {
    (*(v17 + 32))(v21, v14, v15);
    switch(*(v0 + *(type metadata accessor for WalletOrderMatcher(0) + 24)))
    {
      case 2:

        goto LABEL_7;
      case 3:
        sub_1C44133C0();
        break;
      default:
        break;
    }

    v22 = sub_1C4F02938();

    if (v22)
    {
LABEL_7:
      sub_1C442E860(v2, v29);
      sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
      if (!swift_dynamicCast())
      {
        type metadata accessor for PhaseStores(0);
        sub_1C4440B28();
        GraphStore.loadGraphTriples(subject:)();
        sub_1C44FE5AC();
        goto LABEL_13;
      }

      sub_1C4420A30();
      sub_1C44DBDB4(v10, v23);
    }

    else
    {
      sub_1C442E860(v2, v29);
      sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
      if (swift_dynamicCast())
      {
        sub_1C44501B8();
        type metadata accessor for PhaseStores(0);
        v24 = sub_1C4440B28();
        GraphStore.loadConstructionGraphTriples(subject:)(v24);
        sub_1C4812AF0();
LABEL_13:

        v26 = sub_1C43FD024();
        v27(v26);
        goto LABEL_14;
      }
    }

    type metadata accessor for PhaseStores(0);
    v25 = sub_1C4440B28();
    sub_1C44FEDEC(v25);
    sub_1C44F40EC();
    goto LABEL_13;
  }

  sub_1C4420C3C(v14, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_14:
  sub_1C43FE9F0();
}

void sub_1C4500CEC()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v4);
  sub_1C440BD5C();
  sub_1C440AC0C();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44236E4();
  v6 = sub_1C440C518(&qword_1EC0B9158);
  sub_1C44A1E88(v6);
  sub_1C4426B80();
  while (1)
  {
    v8 = v7 & v3;
    sub_1C4414B44();
    sub_1C4851B10();
    if (v9)
    {
      sub_1C4851C50();
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C48495DC(v17, v18, v19);
      *v3 = v24;
      v20 = sub_1C4441090();
      v21(v20);
      goto LABEL_7;
    }

    v10 = sub_1C440BD34();
    (qword_1EC0B8A38)(v10);
    sub_1C4425100();
    v12 = sub_1C48514DC(&qword_1EC0BDEC8, &qword_1EC0B8A38, &qword_1C4F32310, v11);
    sub_1C449DA9C(v2, v13, v14, v12);
    v15 = sub_1C44409C8();
    v1(v15);
    if (v0)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v22 = sub_1C440230C();
  v1(v22);
  sub_1C441802C();
  v23 = sub_1C4433D0C();
  (qword_1EC0B8A38)(v23);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C4500E80()
{
  sub_1C43FBD3C();
  sub_1C4851B30(v4);
  sub_1C440BD5C();
  sub_1C440AC0C();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44236E4();
  v6 = sub_1C440C518(&qword_1EC0B9148);
  sub_1C44A1E88(v6);
  sub_1C4426B80();
  while (1)
  {
    v8 = v7 & v3;
    sub_1C4414B44();
    sub_1C4851B10();
    if (v9)
    {
      sub_1C4851C50();
      sub_1C4436564();
      v16();
      v17 = sub_1C44414C4();
      sub_1C4849330(v17, v18, v19);
      *v3 = v24;
      v20 = sub_1C4441090();
      v21(v20);
      goto LABEL_7;
    }

    v10 = sub_1C440BD34();
    (qword_1EC0B8A28)(v10);
    sub_1C4425100();
    v12 = sub_1C48514DC(&qword_1EC0BDEA8, &qword_1EC0B8A28, &qword_1C4F322F0, v11);
    sub_1C449DA9C(v2, v13, v14, v12);
    v15 = sub_1C44409C8();
    v1(v15);
    if (v0)
    {
      break;
    }

    v7 = v8 + 1;
  }

  v22 = sub_1C440230C();
  v1(v22);
  sub_1C441802C();
  v23 = sub_1C4433D0C();
  (qword_1EC0B8A28)(v23);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C4501018(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C4F0D7C0;
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

uint64_t sub_1C450107C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-1] - v8;
  type metadata accessor for EntityTriple(0);
  v16[3] = &type metadata for SourcedTripleColumn;
  v16[4] = sub_1C44964E4();
  LOBYTE(v16[0]) = 0;
  v10 = sub_1C4EFF0C8();
  v15[3] = v10;
  v15[4] = sub_1C4496488(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v11 = sub_1C4422F90(v15);
  (*(*(v10 - 8) + 16))(v11, a2, v10);
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  sub_1C4EFBB28();
  sub_1C44967E0(v15);
  sub_1C440962C(v16);
  sub_1C4496488(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C4496848(&qword_1EDDFA2D8, MEMORY[0x1E699FF60]);
  sub_1C4496488(&qword_1EDDF8DA0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v12;
  }

  return result;
}

void sub_1C4501330()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v15 = v5;
  v14 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4405820();
  v9 = *(v4 + 16);
  if (v9)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C45098B8();
    v10 = v4 + 32;
    while (1)
    {
      v15(v10);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v11 = *(v16 + 16);
      if (v11 >= *(v16 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C45098B8();
      }

      *(v16 + 16) = v11 + 1;
      sub_1C440DEA4();
      (*(v7 + 32))(v12 + v13 * v11, v1, v14);
      v10 += 40;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45014A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_1C4EFC808();
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4EFCAA8();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1C4EFCA98();
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7D8();
  sub_1C4EFCA88();
  v10 = v6;
  v11 = v16;
  (*(v4 + 16))(v10, v9, v16);
  sub_1C456902C(&qword_1EC0C6948, "8d\a");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  sub_1C442E860(a1, v22);
  sub_1C4509A40();
  sub_1C4420C3C(v22, &qword_1EC0C0F38, &qword_1C4F41A90);
  v22[0] = v12;
  sub_1C44FDE5C(&qword_1EC0C2318, MEMORY[0x1E699C748], MEMORY[0x1E699C758]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  sub_1C4F020C8();
  v13 = MEMORY[0x1E699C7B8];
  sub_1C44FDE5C(&qword_1EC0C6950, MEMORY[0x1E699C7B8], MEMORY[0x1E699C7D0]);
  sub_1C44FDE5C(&qword_1EC0C6958, v13, MEMORY[0x1E699C7C0]);
  sub_1C44FDE5C(&qword_1EC0C6960, v13, MEMORY[0x1E699C7C8]);
  sub_1C4EFC818();
  return (*(v4 + 8))(v9, v11);
}

uint64_t sub_1C450181C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_1C456902C(&qword_1EC0C2310, &unk_1C4F4A380);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1C4EFC808();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(v11 + 16);
  v28 = v2;
  v19(v14, v2, v9, v16);
  v26 = sub_1C4501AE8(&qword_1EC0C2318, MEMORY[0x1E699C758]);
  sub_1C4F02098();
  sub_1C4501AE8(qword_1EC0C2320, MEMORY[0x1E699C750]);
  v27 = a2;
  v20 = sub_1C4F010B8();
  v30 = v4;
  v21 = *(v4 + 48);
  *v8 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v11 + 32))(&v8[v21], v18, v9);
  }

  else
  {
    (*(v11 + 8))(v18, v9);
    v22 = v27;
    (v19)(&v8[v21], v27, v9);
    (v19)(v14, v22, v9);
    sub_1C4F020A8();
  }

  v23 = v29;
  sub_1C4501B2C(v8, v29);
  v24 = *v23;
  (*(v11 + 32))(v31, &v23[*(v30 + 48)], v9);
  return v24;
}

uint64_t sub_1C4501AE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EFC808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4501B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2310, &unk_1C4F4A380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4501B9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

void sub_1C4501C08()
{
  v2 = sub_1C4436470();
  *v1 = v0;
  if (!v2)
  {
    sub_1C44269E8();
    sub_1C440F1DC();
    sub_1C4505908();
    *v1 = v3;
  }
}

void sub_1C4501C90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v38 = a2;
  v39 = a3;
  v4 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v37 - v16;
  v17 = *(a1 + 16);
  v18 = (a1 + 32);
  v47 = (v19 + 8);
  v43 = v8;
  v44 = v20;
  v45 = v21;
  v41 = v14;
  v42 = v11;
  if (v17)
  {
    while (1)
    {
      v46 = v17;
      sub_1C4409678(v18, v18[3]);
      sub_1C4EFF7F8();
      sub_1C4EFE4D8();
      sub_1C44FDE5C(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v50 == v48 && v51 == v49)
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_1C4F02938();
      }

      v24 = *v47;
      (*v47)(v14, v4);
      v24(v52, v4);
      if ((v23 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_1C4409678(v18, v18[3]);
      v25 = v42;
      sub_1C4EFF7C8();
      sub_1C4EFEE08();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v50 == v48 && v51 == v49)
      {
        break;
      }

      v40 = sub_1C4F02938();

      v24(v8, v4);
      v24(v25, v4);
      if (v40)
      {
        goto LABEL_16;
      }

LABEL_17:
      sub_1C4409678(v18, v18[3]);
      v30 = v44;
      sub_1C4EFF7C8();
      v31 = v45;
      sub_1C4EFEC18();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v50 == v48 && v51 == v49)
      {

        v24(v31, v4);
        v24(v30, v4);
        v8 = v43;
        v14 = v41;
      }

      else
      {
        v33 = sub_1C4F02938();

        v24(v31, v4);
        v24(v30, v4);
        v8 = v43;
        v14 = v41;
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_1C4409678(v18, v18[3]);
      v34 = sub_1C4EFF7D8();
      v35 = v39;
      *v39 = v34;
      v35[1] = v36;

LABEL_25:
      v18 += 5;
      v17 = v46 - 1;
      if (v46 == 1)
      {
        return;
      }
    }

    v24(v8, v4);
    v24(v25, v4);
LABEL_16:
    sub_1C4409678(v18, v18[3]);
    v27 = sub_1C4EFF7D8();
    v28 = v38;
    *v38 = v27;
    v28[1] = v29;

    goto LABEL_17;
  }
}

unint64_t sub_1C45021B8()
{
  result = qword_1EDDFD840;
  if (!qword_1EDDFD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD840);
  }

  return result;
}

uint64_t sub_1C450220C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4502254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C450229C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45022E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C450232C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4502370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45023B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4502400(uint64_t a1)
{
  v2 = sub_1C4505DC4();

  return MEMORY[0x1EEE09858](a1, v2);
}

unint64_t sub_1C450244C()
{
  result = qword_1EDDFD838;
  if (!qword_1EDDFD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD838);
  }

  return result;
}

void sub_1C45024A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v561 = v20;
  v552 = v23;
  v25 = v24;
  v595 = *MEMORY[0x1E69E9840];
  v577 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v553 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v539 - v61;
  v573 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8();
  v64 = v63;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBC74();
  sub_1C43FD2C8(v66);
  v67 = sub_1C4EFCA68();
  sub_1C43FCDF8();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBCC4();
  v73 = v72 - v71;
  v74 = *(v69 + 16);
  v560 = v73;
  v542 = v69 + 16;
  v541 = v74;
  v74();
  v75 = sub_1C4EFC9B8();
  v76 = v75;
  v77 = *(v75 + 32);
  v78 = ((1 << v77) + 63) >> 6;
  v79 = (8 * v78);
  v545 = v25;
  v544 = v67;
  v543 = v69;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_286;
  }

  while (1)
  {
    v550 = &v539;
    MEMORY[0x1EEE9AC00](v75);
    v551 = v78;
    v555 = &v539 - ((v79 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v78, v555);
    v556 = 0;
    v80 = 0;
    v575 = v76;
    v81 = v76 + 56;
    v82 = 1 << *(v76 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v76 + 56);
    v76 = (v82 + 63) >> 6;
    v558 = v64 + 16;
    v559 = v64;
    v557 = v64 + 8;
    v64 = v572;
    v85 = v573;
    while (v84)
    {
      v578 = ((v84 - 1) & v84);
LABEL_12:
      sub_1C44135DC();
      v78 = v559;
      v90 = v89;
      (*(v559 + 2))(v64, *(v88 + 48) + *(v559 + 9) * v89, v85);
      sub_1C4EFC828();
      v79 = v592[0];
      v91 = sub_1C4F013E8();

      v92 = sub_1C4404DC8();
      v93(v92);
      v84 = v578;
      if ((v91 & 1) == 0)
      {
        *(v555 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
        if (__OFADD__(v556++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1C44FEBCC();
          v79 = v95;
          v558 = 0;
          goto LABEL_17;
        }
      }
    }

    v86 = v80;
    while (1)
    {
      v80 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v80 >= v76)
      {
        goto LABEL_16;
      }

      v87 = *(v81 + 8 * v80);
      ++v86;
      if (v87)
      {
        v578 = ((v87 - 1) & v87);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();

  v536 = sub_1C43FE99C();
  v78 = v76;
  v79 = sub_1C4D58D9C(v536, v537, v76, v538);
  v558 = 0;
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_17:
  v96 = v552;
  sub_1C4414724();
  sub_1C4EFC9C8();
  v97 = *(v96 + 16);
  v98 = v96 + 32;
  v578 = (v553 + 8);
  v99 = MEMORY[0x1E69E7CC0];
  v559 = v97;
  v572 = v98;
  if (v97)
  {
    while (1)
    {
      sub_1C442E860(v98, &v591);
      sub_1C44BBF70();
      sub_1C43FFE24();
      sub_1C4EFF7F8();
      sub_1C4EFE428();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v100, MEMORY[0x1E69A9770]);
      sub_1C443E488();
      v79 = v62;
      sub_1C44356A8();
      sub_1C4F01578();
      sub_1C441B628();
      sub_1C4F01578();
      v101 = *(&v588 + 1);
      sub_1C44151A4();
      v104 = v104 && v101 == v62;
      if (v104)
      {
        break;
      }

      v105 = sub_1C43FBEC0(v102, v101, v103);
      sub_1C443EFE4();
      v64 = *v99;
      (*v99)();
      v106 = sub_1C4402CD0();
      (v64)(v106);

      if (v105)
      {
        goto LABEL_25;
      }

      sub_1C440962C(&v591);
LABEL_30:
      v98 += 40;
      v97 = (v97 - 1);
      if (!v97)
      {
        goto LABEL_31;
      }
    }

    v64 = v578;
    v107 = *v578;
    v108 = sub_1C43FE99C();
    (v107)(v108);
    v109 = sub_1C4402CD0();
    (v107)(v109);

LABEL_25:
    sub_1C441B1B0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v580 = v99;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C44093D0();
      v99 = v580;
    }

    v112 = *(v99 + 16);
    v111 = *(v99 + 24);
    if (v112 >= v111 >> 1)
    {
      v122 = sub_1C43FCFE8(v111);
      sub_1C4434354(v122, v112 + 1);
    }

    v79 = v589;
    v113 = v590;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v114);
    sub_1C43FBCC4();
    (*(v115 + 16))(v117 - v116);
    v118 = sub_1C43FFE24();
    sub_1C44FDC24(v118, v119, v120, v79, v113);
    sub_1C440962C(&v588);
    sub_1C4423DA8();
    v99 = *(v121 - 256);
    goto LABEL_30;
  }

LABEL_31:
  v76 = 0;
  v573 = *(v99 + 16);
  v575 = v99;
  v123 = MEMORY[0x1E69E7CC0];
  v124 = v554;
  while (v573 != v76)
  {
    sub_1C44135DC();
    if (v76 >= *(v126 + 16))
    {
      goto LABEL_279;
    }

    sub_1C442EE30(v125);
    sub_1C44BBF70();
    sub_1C43FFE24();
    sub_1C4EFF7C8();
    sub_1C441615C();
    sub_1C4EFEA98();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v127, MEMORY[0x1E69A9770]);
    sub_1C443E488();
    v79 = v124;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C442AD44();
    sub_1C4F01578();
    v128 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v128 == v124)
    {
      v135 = *v578;
      v136 = sub_1C4402CD0();
      (v135)(v136);
      v137 = sub_1C43FE99C();
      (v135)(v137);
    }

    else
    {
      v132 = sub_1C43FBEC0(v129, v128, v130);
      v64 = *v578;
      v133 = sub_1C4402CD0();
      (v64)(v133);
      v134 = sub_1C43FE99C();
      (v64)(v134);

      if ((v132 & 1) == 0)
      {
        sub_1C440962C(&v591);
        goto LABEL_46;
      }
    }

    sub_1C441B1B0();
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v123;
    if ((v138 & 1) == 0)
    {
      sub_1C44093D0();
      v123 = v580;
    }

    v140 = *(v123 + 16);
    v139 = *(v123 + 24);
    if (v140 >= v139 >> 1)
    {
      v151 = sub_1C43FCFE8(v139);
      sub_1C4434354(v151, v140 + 1);
    }

    v79 = v589;
    v141 = v590;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v142);
    sub_1C43FBCC4();
    v144 = sub_1C4405530(v143);
    v145(v144);
    sub_1C4435D5C();
    sub_1C44FDC24(v146, v147, v148, v149, v141);
    sub_1C440962C(&v588);
    sub_1C4423DA8();
    v123 = *(v150 - 256);
LABEL_46:
    sub_1C441F174();
    ++v76;
  }

  v79 = &v539;
  MEMORY[0x1EEE9AC00](v152);
  sub_1C4411530();
  *(v153 - 16) = v561;
  v76 = v558;
  sub_1C45098F8(sub_1C44FED98, v154, v123);
  v156 = v155;
  v570 = v76;

  v157 = 0;
  sub_1C4441A64(*(v156 + 16));
  v64 = MEMORY[0x1E69E7CC0];
  v158 = v549;
  while (1)
  {
    sub_1C44135DC();
    if (v160 == v157)
    {
      break;
    }

    if (v157 >= *(v156 + 16))
    {
      goto LABEL_280;
    }

    sub_1C442EE30(v159);
    sub_1C44BBF70();
    sub_1C43FFE24();
    sub_1C4EFF7F8();
    sub_1C441615C();
    sub_1C4EFEBF8();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v161, MEMORY[0x1E69A9770]);
    sub_1C443E488();
    v79 = v158;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C442AD44();
    sub_1C4F01578();
    v162 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v162 == v158)
    {
      v76 = *v578;
      v168 = sub_1C4402CD0();
      (v76)(v168);
      v169 = sub_1C43FE99C();
      (v76)(v169);
    }

    else
    {
      LODWORD(v573) = sub_1C43FBEC0(v163, v162, v164);
      v76 = *v578;
      v166 = sub_1C4402CD0();
      (v76)(v166);
      v167 = sub_1C43FE99C();
      (v76)(v167);

      if ((v573 & 1) == 0)
      {
        sub_1C440962C(&v591);
        goto LABEL_62;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    if ((v170 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C44225D8();
    }

    v172 = *(v64 + 2);
    v171 = *(v64 + 3);
    if (v172 >= v171 >> 1)
    {
      v182 = sub_1C43FCFE8(v171);
      sub_1C4434354(v182, v172 + 1);
    }

    v79 = v589;
    v173 = v590;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v174);
    sub_1C43FBCC4();
    v176 = sub_1C441D054(v175);
    v177(v176);
    sub_1C4441354();
    sub_1C44FDC24(v178, v179, v180, v181, v173);
    sub_1C440962C(&v588);
    sub_1C44225D8();
LABEL_62:
    sub_1C441F174();
    ++v157;
  }

  MEMORY[0x1EEE9AC00](v183);
  sub_1C4411530();
  *(v184 - 16) = v561;
  sub_1C449DBA4();
  v76 = v570;
  sub_1C4501330();
  v570 = v185;
  sub_1C4495DB4(v592);
  sub_1C4441A64(MEMORY[0x1E69E7CC0]);
  sub_1C443F454();
  v187 = *(v186 - 256);
  v188 = v571;
  if (v76)
  {
    while (1)
    {
      sub_1C442E860(v187, &v591);
      sub_1C4409678(&v591, v593);
      sub_1C43FD258();
      sub_1C4EFF7F8();
      sub_1C4EFE428();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v189, MEMORY[0x1E69A9770]);
      v79 = v188;
      sub_1C44356A8();
      sub_1C4F01578();
      sub_1C441B628();
      sub_1C4F01578();
      v190 = *(&v588 + 1);
      sub_1C44151A4();
      if (v104 && v190 == v188)
      {
        break;
      }

      v194 = sub_1C43FBEC0(v191, v190, v192);
      sub_1C443EFE4();
      v195 = *v188;
      v196 = sub_1C43FE99C();
      v195(v196);
      v197 = sub_1C445BE44(&v593);
      v195(v197);
      v188 = v571;

      if (v194)
      {
        goto LABEL_71;
      }

      sub_1C440962C(&v591);
LABEL_76:
      v187 += 40;
      if (!--v76)
      {
        goto LABEL_77;
      }
    }

    v198 = *v578;
    v199 = sub_1C43FE99C();
    (v198)(v199);
    v200 = sub_1C43FD7E0();
    (v198)(v200);

LABEL_71:
    sub_1C441B1B0();
    v201 = v575;
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v201;
    if ((v202 & 1) == 0)
    {
      sub_1C44093D0();
      v201 = v580;
    }

    v204 = *(v201 + 16);
    v203 = *(v201 + 24);
    if (v204 >= v203 >> 1)
    {
      v214 = sub_1C43FCFE8(v203);
      sub_1C4434354(v214, v204 + 1);
    }

    v79 = v589;
    v205 = v590;
    sub_1C442AA80();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v206);
    sub_1C43FBCC4();
    v208 = sub_1C441D054(v207);
    v209(v208);
    sub_1C4441354();
    sub_1C44FDC24(v210, v211, v212, v213, v205);
    sub_1C440962C(&v588);
    sub_1C4441A64(v580);
    goto LABEL_76;
  }

LABEL_77:
  v215 = 0;
  v216 = v575;
  v571 = *(v575 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v576 = MEMORY[0x1E69E7CC0];
  v62 = v548;
  sub_1C445FEFC();
  while (v571 != v215)
  {
    if (v215 >= *(v216 + 16))
    {
      goto LABEL_281;
    }

    v573 = v217;
    sub_1C442E860(v217, &v591);
    sub_1C4409678(&v591, v593);
    sub_1C4EFF7C8();
    v218 = v566;
    sub_1C4EFEBD8();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v219, MEMORY[0x1E69A9770]);
    sub_1C443E488();
    sub_1C442AD44();
    sub_1C4F01578();
    v79 = v218;
    sub_1C4F01578();
    v220 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v220 == v218)
    {
      sub_1C440C878();
      v225 = sub_1C44158DC();
      (v76)(v225);
      v226 = sub_1C43FE99C();
      (v76)(v226);
    }

    else
    {
      sub_1C4435D5C();
      v222 = sub_1C4F02938();
      sub_1C440C878();
      v223 = sub_1C44158DC();
      (v76)(v223);
      v224 = sub_1C43FE99C();
      (v76)(v224);

      if ((v222 & 1) == 0)
      {
        sub_1C440962C(&v591);
        sub_1C445FEFC();
        v216 = v575;
        goto LABEL_92;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    v216 = v575;
    if ((v227 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C44225D8();
    }

    sub_1C445FEFC();
    v229 = *(v64 + 2);
    v228 = *(v64 + 3);
    if (v229 >= v228 >> 1)
    {
      v239 = sub_1C43FCFE8(v228);
      sub_1C4434354(v239, v229 + 1);
    }

    v79 = v589;
    v230 = v590;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v231);
    sub_1C43FBCC4();
    v233 = sub_1C441D054(v232);
    v234(v233);
    sub_1C4441354();
    sub_1C44FDC24(v235, v236, v237, v238, v230);
    sub_1C440962C(&v588);
    sub_1C44225D8();
LABEL_92:
    v217 = v573 + 40;
    v215 = (v215 + 1);
  }

  v586 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v240);
  sub_1C4411530();
  *(v241 - 16) = &v586;
  *(v241 - 8) = v561;
  v242 = sub_1C449DBA4();
  v76 = v569;
  sub_1C4501B9C(v242, v243, v244);
  sub_1C4495DB4(v592);
  v591 = v570;
  v79 = &v591;
  v570 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45057E4(v570);
  sub_1C45058D8();
  sub_1C4414724();
  sub_1C4EFCA48();
  sub_1C443F454();
  v246 = *(v245 - 256);
  v247 = v567;
  if (v76)
  {
    while (1)
    {
      sub_1C442E860(v246, &v591);
      sub_1C4409678(&v591, v593);
      sub_1C445087C();
      sub_1C4404044();
      sub_1C4EFF7F8();
      sub_1C4EFECF8();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v248, MEMORY[0x1E69A9770]);
      sub_1C441B628();
      sub_1C4F01578();
      v79 = v247;
      sub_1C4F01578();
      v249 = *(&v588 + 1);
      sub_1C44151A4();
      if (v104 && v249 == v247)
      {
        break;
      }

      v253 = sub_1C43FBEC0(v250, v249, v251);
      sub_1C444B440();
      v64 = *v62;
      v254 = sub_1C43FD7E0();
      (v64)(v254);
      v255 = sub_1C43FE99C();
      (v64)(v255);

      v62 = v576;
      if (v253)
      {
        goto LABEL_101;
      }

      sub_1C440962C(&v591);
LABEL_106:
      v246 += 40;
      if (!--v76)
      {
        goto LABEL_107;
      }
    }

    sub_1C444B440();
    v256 = *v62;
    v257 = sub_1C43FD7E0();
    (v256)(v257);
    v258 = sub_1C43FE99C();
    (v256)(v258);

    v62 = v576;
LABEL_101:
    sub_1C441B1B0();
    v259 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v62;
    if ((v259 & 1) == 0)
    {
      sub_1C44093D0();
      v62 = v580;
    }

    v261 = *(v62 + 16);
    v260 = *(v62 + 24);
    if (v261 >= v260 >> 1)
    {
      v270 = sub_1C43FCFE8(v260);
      sub_1C4434354(v270, v261 + 1);
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v262);
    sub_1C43FBCC4();
    v264 = sub_1C445C2B0(v263);
    v265(v264);
    v266 = sub_1C4404044();
    sub_1C44FDC24(v266, v267, v268, v62, v247);
    sub_1C440962C(&v588);
    sub_1C4423DA8();
    v576 = *(v269 - 256);
    goto LABEL_106;
  }

LABEL_107:
  v271 = 0;
  v571 = *(sub_1C441C660() + 16);
  v272 = MEMORY[0x1E69E7CC0];
  v575 = MEMORY[0x1E69E7CC0];
  sub_1C44554D8();
  while (v571 != v271)
  {
    if (v271 >= *(v273 + 16))
    {
      goto LABEL_282;
    }

    v573 = v274;
    sub_1C442E860(v274, &v591);
    sub_1C4409678(&v591, v593);
    sub_1C4404DC8();
    sub_1C4EFF7C8();
    sub_1C4415B50();
    sub_1C4EFEA38();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v275, MEMORY[0x1E69A9770]);
    sub_1C441B628();
    sub_1C4F01578();
    v79 = v246;
    sub_1C4F01578();
    v64 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v64 == v246)
    {
      sub_1C440C878();
      v280 = sub_1C440BB4C();
      (v76)(v280);
      v281 = sub_1C43FE99C();
      (v76)(v281);
    }

    else
    {
      sub_1C4441354();
      v277 = sub_1C4F02938();
      sub_1C440C878();
      v278 = sub_1C440BB4C();
      (v76)(v278);
      v279 = sub_1C43FE99C();
      (v76)(v279);

      if ((v277 & 1) == 0)
      {
        sub_1C440962C(&v591);
        sub_1C441C660();
        sub_1C44554D8();
        goto LABEL_122;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    v580 = v272;
    sub_1C44554D8();
    if ((v282 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C4424DDC();
    }

    sub_1C4414024();
    if (v284)
    {
      v293 = sub_1C43FCFE8(v283);
      sub_1C4434354(v293, v64 + 1);
    }

    v79 = v589;
    v272 = v590;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v285);
    sub_1C43FBCC4();
    v287 = sub_1C4405530(v286);
    v288(v287);
    sub_1C4435D5C();
    sub_1C44FDC24(v289, v290, v291, v292, v272);
    sub_1C440962C(&v588);
    sub_1C4424DDC();
    v273 = sub_1C441C660();
LABEL_122:
    v274 = v573 + 40;
    v271 = (v271 + 1);
  }

  v62 = &v539;
  v585[1] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v294);
  sub_1C4411530();
  sub_1C4461DD4(v295);
  v296 = sub_1C447F674();
  v297 = v569;
  sub_1C4501B9C(v296, v298, v299);
  v573 = v297;

  v571 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44FDF08(v571);
  sub_1C4414724();
  sub_1C4EFC9A8();
  sub_1C443F454();
  v301 = *(v300 - 256);
  if (v297)
  {
    while (1)
    {
      sub_1C442E860(v301, &v591);
      sub_1C4409678(&v591, v593);
      sub_1C441615C();
      sub_1C4404044();
      sub_1C4EFF7F8();
      sub_1C4EFE2F8();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v302, MEMORY[0x1E69A9770]);
      sub_1C442AD44();
      sub_1C4F01578();
      v79 = v246;
      sub_1C4F01578();
      v303 = *(&v588 + 1);
      sub_1C44151A4();
      if (v104 && v303 == v246)
      {
        break;
      }

      v307 = sub_1C43FBEC0(v304, v303, v305);
      v246 = v297;
      sub_1C443EFE4();
      v64 = off_1EDDFCCA8;
      off_1EDDFCCA8();
      v308 = sub_1C4402CD0();
      (v64)(v308);

      if (v307)
      {
        goto LABEL_131;
      }

      sub_1C440962C(&v591);
LABEL_136:
      sub_1C44554D8();
      v301 += 5;
      if (!--v297)
      {
        goto LABEL_137;
      }
    }

    v64 = v578;
    v309 = *v578;
    v310 = sub_1C440BB4C();
    (v309)(v310);
    v311 = sub_1C4402CD0();
    (v309)(v311);

LABEL_131:
    sub_1C441B1B0();
    sub_1C441DF34();
    v312 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v62;
    if ((v312 & 1) == 0)
    {
      sub_1C44093D0();
      v62 = v580;
    }

    v314 = *(v62 + 16);
    v313 = *(v62 + 24);
    if (v314 >= v313 >> 1)
    {
      v323 = sub_1C43FCFE8(v313);
      sub_1C4434354(v323, v314 + 1);
    }

    v79 = v589;
    v246 = v590;
    sub_1C442AA80();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v315);
    sub_1C43FBCC4();
    v317 = sub_1C445C2B0(v316);
    v318(v317);
    v319 = sub_1C4404044();
    sub_1C44FDC24(v319, v320, v321, v79, v246);
    sub_1C440962C(&v588);
    sub_1C4423DA8();
    sub_1C4441A64(*(v322 - 256));
    goto LABEL_136;
  }

LABEL_137:
  v324 = 0;
  sub_1C441DF34();
  v574 = *(v62 + 16);
  v325 = v62 + 32;
  v326 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v76 = v568;
    if (v574 == v324)
    {
      break;
    }

    if (v324 >= *(v62 + 16))
    {
      goto LABEL_283;
    }

    sub_1C442EE30(v325);
    sub_1C4409678(&v591, v593);
    sub_1C441615C();
    sub_1C4404DC8();
    sub_1C4EFF7C8();
    sub_1C4EFE848();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v327, MEMORY[0x1E69A9770]);
    v79 = v62;
    sub_1C44356A8();
    sub_1C4F01578();
    sub_1C445EB3C();
    sub_1C4F01578();
    v64 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v64 == v62)
    {
      sub_1C4405930();
      v333 = *v301;
      v334 = sub_1C4404084();
      v333(v334);
      v335 = sub_1C4402CD0();
      v333(v335);
    }

    else
    {
      sub_1C4441354();
      v329 = sub_1C4F02938();
      sub_1C4405930();
      v330 = *v301;
      v331 = sub_1C4404084();
      v330(v331);
      v332 = sub_1C4402CD0();
      v330(v332);

      if ((v329 & 1) == 0)
      {
        sub_1C440962C(&v591);
        sub_1C441DF34();
        goto LABEL_152;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    v580 = v326;
    sub_1C441DF34();
    if ((v336 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C4424DDC();
    }

    sub_1C4414024();
    if (v284)
    {
      v346 = sub_1C43FCFE8(v337);
      sub_1C4434354(v346, v64 + 1);
    }

    v79 = v589;
    v326 = v590;
    sub_1C442AA80();
    sub_1C446C1B0();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v338);
    sub_1C43FBCC4();
    v340 = sub_1C4405530(v339);
    v341(v340);
    sub_1C4435D5C();
    sub_1C44FDC24(v342, v343, v344, v345, v326);
    sub_1C440962C(&v588);
    sub_1C4424DDC();
LABEL_152:
    v325 = sub_1C441F174();
    ++v324;
  }

  v62 = &v539;
  v78 = MEMORY[0x1E69E7CC0];
  v584 = MEMORY[0x1E69E7CC0];
  v585[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v347);
  *(&v539 - 4) = v585;
  *(&v539 - 3) = v561;
  *(&v539 - 2) = &v584;
  v348 = sub_1C447F674();
  v349 = v573;
  sub_1C4501B9C(v348, v350, v351);
  v573 = v349;

  v569 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45008A8();
  sub_1C4414724();
  sub_1C4EFCA28();
  v583 = v78;
  sub_1C443F454();
  v353 = *(v352 - 256);
  v354 = v563;
  while (1)
  {
    v576 = v78;
    if (!v349)
    {
      break;
    }

    v575 = v353;
    sub_1C442E860(v353, &v591);
    sub_1C4480460();
    sub_1C4415B50();
    sub_1C4EFF7F8();
    sub_1C4EFE648();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v355, MEMORY[0x1E69A9770]);
    sub_1C4416BFC();
    v356 = v577;
    sub_1C4F01578();
    v79 = v354;
    sub_1C4F01578();
    v357 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v357 == v354)
    {
      sub_1C4405930();
      v62 = *v301;
      (*v301)(v354, v356);
      v364 = sub_1C43FFE24();
      (v62)(v364);
    }

    else
    {
      v62 = sub_1C43FBEC0(v358, v357, v359);
      sub_1C4405930();
      v361 = *v301;
      (*v301)(v354, v356);
      v362 = sub_1C43FFE24();
      v361(v362);

      if ((v62 & 1) == 0)
      {
        sub_1C440962C(&v591);
        v363 = &a10;
        goto LABEL_167;
      }
    }

    sub_1C441B1B0();
    v365 = v576;
    v366 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v365;
    if ((v366 & 1) == 0)
    {
      sub_1C44093D0();
      v365 = v580;
    }

    v368 = *(v365 + 16);
    v367 = *(v365 + 24);
    if (v368 >= v367 >> 1)
    {
      v374 = sub_1C43FCFE8(v367);
      sub_1C4434354(v374, v368 + 1);
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v369);
    v371 = sub_1C440B8C0(v370, v539);
    v372(v371);
    sub_1C4460504(v368, v373, &v580);
    sub_1C440962C(&v588);
    sub_1C4423DA8();
LABEL_167:
    v78 = *(v363 - 32);
    v353 = v575 + 40;
    --v349;
  }

  v375 = 0;
  v574 = *(v576 + 16);
  v376 = v576 + 32;
  v377 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v76 = v564;
  while (v574 != v375)
  {
    if (v375 >= *(v576 + 16))
    {
      goto LABEL_284;
    }

    v575 = v376;
    sub_1C442E860(v376, &v591);
    sub_1C4480460();
    sub_1C4EFF7C8();
    sub_1C4EFEA68();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v378, MEMORY[0x1E69A9770]);
    sub_1C4416BFC();
    sub_1C44356A8();
    sub_1C4F01578();
    v79 = v76;
    sub_1C43FD024();
    sub_1C4F01578();
    v379 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v379 == v76)
    {
      v62 = *v578;
      v384 = sub_1C440BB4C();
      (v62)(v384);
      v385 = sub_1C44158DC();
      (v62)(v385);
    }

    else
    {
      sub_1C4435D5C();
      v62 = sub_1C4F02938();
      sub_1C4405930();
      v381 = *v301;
      v382 = sub_1C440BB4C();
      v381(v382);
      v383 = sub_1C44158DC();
      v381(v383);

      if ((v62 & 1) == 0)
      {
        sub_1C440962C(&v591);
        v377 = MEMORY[0x1E69E7CC0];
        goto LABEL_183;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    v377 = MEMORY[0x1E69E7CC0];
    if ((v386 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C44225D8();
    }

    v388 = *(v64 + 2);
    v387 = *(v64 + 3);
    if (v388 >= v387 >> 1)
    {
      v393 = sub_1C43FCFE8(v387);
      sub_1C4434354(v393, v388 + 1);
    }

    sub_1C440CE1C();
    sub_1C446C1B0();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v389);
    sub_1C43FBCC4();
    v391 = sub_1C441D054(v390);
    v392(v391);
    sub_1C44FDC24(v388, v64, &v580, v62, v79);
    sub_1C440962C(&v588);
    sub_1C44225D8();
LABEL_183:
    v376 = v575 + 40;
    ++v375;
    v76 = v564;
  }

  sub_1C441C660();

  v62 = &v539;
  MEMORY[0x1EEE9AC00](v394);
  sub_1C4411530();
  sub_1C4461DD4(v395);
  v396 = sub_1C449DBA4();
  v76 = v573;
  sub_1C4501B9C(v396, v397, v398);
  sub_1C4495DB4(&v595);
  v574 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45008D8();
  sub_1C4414724();
  sub_1C4EFC9D8();
  v582 = v377;
  v399 = v559;
  sub_1C445FEFC();
  v401 = v565;
  if (v399)
  {
    while (1)
    {
      sub_1C442EE30(v400);
      v402 = v594;
      sub_1C4480460();
      v403 = v562;
      sub_1C4400118();
      sub_1C4EFF7F8();
      sub_1C4EFED78();
      sub_1C440832C();
      sub_1C44FDE5C(&off_1EDDFCCA8, v404, MEMORY[0x1E69A9770]);
      sub_1C4416BFC();
      sub_1C43FD024();
      sub_1C4F01578();
      v79 = v401;
      sub_1C43FD024();
      sub_1C4F01578();
      v76 = v78;
      v405 = *(&v588 + 1);
      sub_1C44151A4();
      if (v104 && v405 == v79)
      {
        break;
      }

      sub_1C4441354();
      LODWORD(v575) = sub_1C4F02938();
      v62 = v377;
      sub_1C443EFE4();
      v407 = off_1EDDFCCA8;
      v408 = sub_1C4405814();
      (v407)(v408);
      (v407)(v403, v78);

      if (v575)
      {
        goto LABEL_192;
      }

      sub_1C440962C(&v591);
LABEL_197:
      v401 = v565;
      v400 = sub_1C441F174();
      v399 = (v399 - 1);
      if (!v399)
      {
        goto LABEL_198;
      }
    }

    sub_1C4405930();
    v62 = *v402;
    v409 = sub_1C4405814();
    (v62)(v409);
    (v62)(v403, v78);

LABEL_192:
    sub_1C441B1B0();
    v410 = swift_isUniquelyReferenced_nonNull_native();
    v580 = v377;
    if ((v410 & 1) == 0)
    {
      sub_1C44093D0();
      v377 = v580;
    }

    v412 = *(v377 + 16);
    v411 = *(v377 + 24);
    if (v412 >= v411 >> 1)
    {
      v418 = sub_1C43FCFE8(v411);
      sub_1C4434354(v418, v412 + 1);
    }

    sub_1C440CE1C();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v413);
    v415 = sub_1C440B8C0(v414, v539);
    v416(v415);
    sub_1C4460504(v412, v417, &v580);
    sub_1C440962C(&v588);
    v377 = v580;
    goto LABEL_197;
  }

LABEL_198:
  sub_1C4441A64(*(v377 + 16));
  v64 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C44135DC();
    if (v420 == v399)
    {
      break;
    }

    if (v399 >= *(v377 + 16))
    {
      goto LABEL_285;
    }

    sub_1C442EE30(v419);
    v421 = v594;
    sub_1C4480460();
    sub_1C4415B50();
    sub_1C4400118();
    sub_1C4EFF7C8();
    sub_1C445087C();
    sub_1C4EFE728();
    sub_1C440832C();
    sub_1C44FDE5C(&off_1EDDFCCA8, v422, MEMORY[0x1E69A9770]);
    sub_1C4416BFC();
    sub_1C43FD024();
    sub_1C4F01578();
    v79 = v421;
    sub_1C43FD024();
    sub_1C4F01578();
    v423 = *(&v588 + 1);
    sub_1C44151A4();
    if (v104 && v423 == v421)
    {
      v76 = v578;
      v62 = *v578;
      v428 = sub_1C43FE99C();
      (v62)(v428);
      v429 = sub_1C440BB4C();
      (v62)(v429);
    }

    else
    {
      sub_1C4435D5C();
      v62 = sub_1C4F02938();
      v76 = v578;
      v425 = v421;
      v426 = *v578;
      (*v578)(v425, v78);
      v427 = sub_1C440BB4C();
      (v426)(v427);

      if ((v62 & 1) == 0)
      {
        sub_1C440962C(&v591);
        sub_1C445FEFC();
        goto LABEL_213;
      }
    }

    sub_1C441B1B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44A18D4();
    if ((v430 & 1) == 0)
    {
      sub_1C44093D0();
      sub_1C44225D8();
    }

    sub_1C445FEFC();
    v432 = *(v64 + 2);
    v431 = *(v64 + 3);
    if (v432 >= v431 >> 1)
    {
      v438 = sub_1C43FCFE8(v431);
      sub_1C4434354(v438, v432 + 1);
    }

    sub_1C440CE1C();
    sub_1C44307D4();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v433);
    v435 = sub_1C440B8C0(v434, v539);
    v436(v435);
    sub_1C4460504(v432, v437, &v580);
    sub_1C440962C(&v588);
    sub_1C44225D8();
LABEL_213:
    sub_1C441F174();
    v399 = (v399 + 1);
  }

  MEMORY[0x1EEE9AC00](v439);
  sub_1C4411530();
  sub_1C4461DD4(v440);
  v441 = sub_1C449DBA4();
  sub_1C4501B9C(v441, v442, v443);
  sub_1C4495DB4(&v591);
  v444 = v582;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4414724();
  sub_1C4EFCA38();
  v445 = v559;
  v573 = v444;
  if (!v559)
  {
LABEL_243:
    v78 = v560;
    goto LABEL_277;
  }

  v446 = v572;
  do
  {
    sub_1C442E860(v446, v587);
    v447 = sub_1C447FB48();
    sub_1C4409678(v447, v448);
    sub_1C4415B50();
    sub_1C4400118();
    sub_1C4EFF7F8();
    sub_1C441615C();
    sub_1C4EFE308();
    sub_1C440832C();
    v450 = sub_1C44FDE5C(&off_1EDDFCCA8, v449, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C442AD44();
    v576 = v450;
    sub_1C4F01578();
    v451 = v581;
    sub_1C444AE6C();
    if (v104 && v451 == v377)
    {
      v455 = 1;
    }

    else
    {
      v455 = sub_1C43FBEC0(v452, v451, v453);
    }

    v377 = *v578;
    v456 = sub_1C445BE44(&v584);
    (v377)(v456);
    v457 = sub_1C445BE44(&v583);
    (v377)(v457);

    if (v455)
    {
      v458 = sub_1C447FB48();
      sub_1C4409678(v458, v459);
      sub_1C4400118();
      if (sub_1C4EFF7D8() == 0x707954726564726FLL && v460 == 0xE900000000000065)
      {

LABEL_245:
        sub_1C441D670(v587, &v588);
        v478 = sub_1C441D670(&v588, &v591);
        v479 = MEMORY[0x1E69E7CC0];
        v480 = v540;
        if (!v559)
        {
LABEL_259:
          MEMORY[0x1EEE9AC00](v478);
          sub_1C4411530();
          *(v495 - 16) = &v591;
          v496 = sub_1C447F674();
          sub_1C44F46C0(v496, v497, v498, v499, v500, v501, v502, v503, v539, v540, v541, v542, v543, v544, v545, v546, v547, v548, v549, v550);
          sub_1C444C448();
          sub_1C4D52BA4(v504, v505);
          goto LABEL_276;
        }

        while (2)
        {
          sub_1C44BBD00();
          sub_1C4409678(&v588, v589);
          sub_1C4400118();
          sub_1C4EFF7F8();
          sub_1C4EFE308();
          sub_1C445EB3C();
          sub_1C4F01578();
          sub_1C43FD024();
          sub_1C4F01578();
          sub_1C448E140();
          if (v104 && v446 == v480)
          {
            sub_1C43FD7E0();
            sub_1C444B440();
            (v377)();
            v484 = sub_1C4404084();
            (v377)(v484);
          }

          else
          {
            sub_1C4441354();
            v482 = sub_1C4F02938();
            sub_1C43FD7E0();
            sub_1C4405930();
            (v377)();
            v483 = sub_1C4404084();
            (v377)(v483);

            if ((v482 & 1) == 0)
            {
              sub_1C440962C(&v588);
              goto LABEL_258;
            }
          }

          sub_1C441D670(&v588, v587);
          v485 = swift_isUniquelyReferenced_nonNull_native();
          v579[0] = v479;
          if ((v485 & 1) == 0)
          {
            sub_1C4460BA4();
            sub_1C4460924();
          }

          sub_1C4414024();
          if (v284)
          {
            sub_1C43FCFE8(v486);
            sub_1C44F4214();
          }

          v487 = sub_1C447FB48();
          sub_1C4418280(v487, v488);
          sub_1C446C1B0();
          sub_1C43FCE64();
          MEMORY[0x1EEE9AC00](v489);
          v491 = sub_1C440B8C0(v490, v539);
          v492(v491);
          sub_1C4460504(v446, v493, v579);
          sub_1C440962C(v587);
          sub_1C4460924();
LABEL_258:
          sub_1C44508D0();
          if (!v494)
          {
            goto LABEL_259;
          }

          continue;
        }
      }

      v462 = sub_1C4F02938();

      if (v462)
      {
        goto LABEL_245;
      }
    }

    sub_1C440962C(v587);
    v446 += 40;
    v445 = (v445 - 1);
  }

  while (v445);
  sub_1C4441A64(0x80000001C4FC7900);
  v463 = v572;
  v464 = v559;
  while (2)
  {
    sub_1C442E860(v463, v587);
    v465 = sub_1C447FB48();
    v467 = sub_1C4409678(v465, v466);
    sub_1C4EFF7F8();
    sub_1C445087C();
    sub_1C4EFE308();
    sub_1C442AD44();
    sub_1C4F01578();
    sub_1C441B628();
    sub_1C4F01578();
    v468 = v581;
    sub_1C444AE6C();
    if (v104 && v468 == v467)
    {
      sub_1C43FE99C();
      sub_1C4405930();
      (v377)();
      v472 = sub_1C4402CD0();
      (v377)(v472);
    }

    else
    {
      sub_1C4435D5C();
      v470 = sub_1C4F02938();
      sub_1C43FE99C();
      sub_1C4405930();
      (v377)();
      v471 = sub_1C4402CD0();
      (v377)(v471);

      if ((v470 & 1) == 0)
      {
        goto LABEL_242;
      }
    }

    v473 = sub_1C447FB48();
    sub_1C4409678(v473, v474);
    sub_1C4400118();
    if (sub_1C4EFF7D8() != 0xD000000000000016 || v575 != v475)
    {
      v477 = sub_1C4F02938();

      if (v477)
      {
        goto LABEL_261;
      }

LABEL_242:
      sub_1C440962C(v587);
      v463 += 40;
      v464 = (v464 - 1);
      if (!v464)
      {
        goto LABEL_243;
      }

      continue;
    }

    break;
  }

LABEL_261:
  sub_1C441D670(v587, &v588);
  v506 = sub_1C441D670(&v588, &v591);
  v507 = MEMORY[0x1E69E7CC0];
  v508 = v539;
  if (v559)
  {
    while (2)
    {
      sub_1C44BBD00();
      sub_1C4409678(&v588, v589);
      sub_1C4400118();
      sub_1C4EFF7F8();
      sub_1C4EFE308();
      sub_1C445EB3C();
      sub_1C4F01578();
      sub_1C43FD024();
      sub_1C4F01578();
      sub_1C448E140();
      if (v104 && v463 == v508)
      {
        sub_1C43FD7E0();
        sub_1C444B440();
        (v377)();
        v512 = sub_1C4404084();
        (v377)(v512);
      }

      else
      {
        sub_1C4441354();
        v510 = sub_1C4F02938();
        sub_1C43FD7E0();
        sub_1C4405930();
        (v377)();
        v511 = sub_1C4404084();
        (v377)(v511);

        if ((v510 & 1) == 0)
        {
          sub_1C440962C(&v588);
          goto LABEL_274;
        }
      }

      sub_1C441D670(&v588, v587);
      v513 = swift_isUniquelyReferenced_nonNull_native();
      v579[0] = v507;
      if ((v513 & 1) == 0)
      {
        sub_1C4460BA4();
        sub_1C4460924();
      }

      sub_1C4414024();
      if (v284)
      {
        sub_1C43FCFE8(v514);
        sub_1C44F4214();
      }

      v515 = sub_1C447FB48();
      sub_1C4418280(v515, v516);
      sub_1C446C1B0();
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v517);
      v519 = sub_1C440B8C0(v518, v539);
      v520(v519);
      sub_1C4460504(v463, v521, v579);
      sub_1C440962C(v587);
      sub_1C4460924();
LABEL_274:
      sub_1C44508D0();
      if (!v522)
      {
        break;
      }

      continue;
    }
  }

  MEMORY[0x1EEE9AC00](v506);
  sub_1C4411530();
  *(v523 - 16) = &v591;
  v524 = sub_1C447F674();
  sub_1C44F46C0(v524, v525, v526, v527, v528, v529, v530, v531, v539, v540, v541, v542, v543, v544, v545, v546, v547, v548, v549, v550);
  sub_1C444C448();
  sub_1C4D52F58(v532, v533);
LABEL_276:

  sub_1C440962C(&v591);
LABEL_277:
  v534 = sub_1C445BE44(&v564);
  v535 = v544;
  (v541)(v534);

  (*(v543 + 8))(v78, v535);
  sub_1C43FE9F0();
}

void sub_1C45057E4(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4501BF0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C4505908()
{
  sub_1C442F0C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_1C441172C();
    if (v14 != v15)
    {
      sub_1C442B904();
      if (v14)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v13 = v0;
  }

  v16 = *(v9 + 16);
  v17 = v1(v16, v13);
  v18 = *(sub_1C456902C(v7, v5) - 8);
  if (v11)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v3(v9 + v19, v16, v17 + v19);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

void sub_1C4505A00()
{
  sub_1C441F35C();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C44269E8();
    sub_1C4505908();
    *v0 = v4;
  }
}

double sub_1C4505A5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C442E860(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t GraphStore.loadGraphTriples(subject:)()
{

  sub_1C441FC38(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_1C4407020();
  return v0;
}

uint64_t sub_1C4505B18@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v5 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - v7;
  type metadata accessor for GraphTriple(0);
  v15[3] = &type metadata for FusedTripleColumn;
  v15[4] = sub_1C45021B8();
  LOBYTE(v15[0]) = 0;
  v9 = sub_1C4EFF0C8();
  v14[3] = v9;
  v14[4] = sub_1C45022E4(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
  v10 = sub_1C4422F90(v14);
  (*(*(v9 - 8) + 16))(v10, a2, v9);
  v16[3] = sub_1C4EFB298();
  v16[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v16);
  sub_1C4EFBB28();
  sub_1C44967E0(v14);
  sub_1C440962C(v15);
  sub_1C45022E4(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v16);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45022E4(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v8, v5);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

unint64_t sub_1C4505DC4()
{
  result = qword_1EDDFD860;
  if (!qword_1EDDFD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD860);
  }

  return result;
}

unint64_t sub_1C4505E18(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x73656372756F73;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4505F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s10ViewConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
        JUMPOUT(0x1C4506070);
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4506098()
{
  result = qword_1EDDFF270;
  if (!qword_1EDDFF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF270);
  }

  return result;
}

uint64_t _s10ViewConfigV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C45061D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C445EDA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManualBundleCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C450628C()
{
  result = qword_1EDDFF578;
  if (!qword_1EDDFF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF578);
  }

  return result;
}

uint64_t sub_1C45062E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4506320()
{
  result = qword_1EDDFF5C8;
  if (!qword_1EDDFF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5C8);
  }

  return result;
}

unint64_t sub_1C4506374()
{
  result = qword_1EDDFF598;
  if (!qword_1EDDFF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF598);
  }

  return result;
}

uint64_t sub_1C45063C8(uint64_t result, int a2, int a3)
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

_BYTE *_s14CustomViewTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x1C45064C8);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

void sub_1C45064F0()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C5E50, &qword_1C4F68BE0);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4440AD4();
  sub_1C4417F50(v3, v3[3]);
  v10 = sub_1C45069D4();
  sub_1C4460B4C(&_s9ListenersV10CodingKeysON, v11, v10);
  if (v0)
  {
    sub_1C440962C(v3);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CCBCAC();
    sub_1C442D7EC();
    v23 = v25[0];
    sub_1C456902C(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CCBD30();
    sub_1C442D7EC();
    v22 = v25[0];
    sub_1C456902C(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CCBDB4();
    sub_1C442D7EC();
    sub_1C456902C(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CCBE38();
    sub_1C442D7EC();
    sub_1C456902C(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCBEBC();
    sub_1C442D7EC();
    v21 = v25[0];
    sub_1C456902C(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CCBF40();
    sub_1C442D7EC();
    v12 = v25[0];
    sub_1C456902C(&qword_1EC0C5E88, &qword_1C4F68C18);
    LOBYTE(v24[0]) = 6;
    sub_1C4CCBFC4();
    sub_1C442D7EC();
    v13 = v25[0];
    sub_1C440EE90(7);
    v14 = sub_1C4F02618();
    v20 = v15;
    (*(v8 + 8))(v1, v6);
    v24[0] = v25[0];
    v24[1] = v25[0];
    sub_1C440C668();
    v24[2] = v17;
    v24[3] = v16;
    v24[4] = v25[0];
    v24[5] = v25[0];
    v24[6] = v25[0];
    v24[7] = v14;
    v24[8] = v20;
    sub_1C4508D08(v24, v25);
    sub_1C440962C(v3);
    v25[0] = v23;
    v25[1] = v22;
    sub_1C440C668();
    v25[2] = v19;
    v25[3] = v18;
    v25[4] = v21;
    v25[5] = v12;
    v25[6] = v13;
    v25[7] = v14;
    v25[8] = v20;
    sub_1C4508D64(v25);
    memcpy(v5, v24, 0x48uLL);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C45069D4()
{
  result = qword_1EDDFF950;
  if (!qword_1EDDFF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF950);
  }

  return result;
}

uint64_t sub_1C4506A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4505F5C(&qword_1EDDFF5F0, _s10ViewConfigVMa, &unk_1C4F623C4);

  return MEMORY[0x1EEE09B50](a1, a2, a3, v6);
}

void sub_1C4506AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v29);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4440AD4();
  v31 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v104 - v33;
  v35 = sub_1C456902C(&qword_1EC0C5638, &qword_1C4F627D0);
  sub_1C43FFAE0(v35, &a10);
  v37 = v36;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C4418964();
  v115 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  sub_1C43FCE30(v41 - v40);
  v42 = v26[3];
  v114 = v26;
  sub_1C4417F50(v26, v42);
  sub_1C4507AF4();
  v112 = v20;
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C448E0F4();
    LODWORD(v34) = 0;
    v43 = 0;
    LODWORD(v26) = 0;
    v37 = 0;
    v105 = 0;
    v106 = 0;
    sub_1C441A960();
  }

  else
  {
    v111 = v34;
    v110 = v22;
    v109 = v28;
    LOBYTE(v125[0]) = 0;
    sub_1C4CB03B0();
    sub_1C44BBF0C();
    sub_1C4F02678();
    sub_1C440EE84();
    *v20 = v48;
    *(v20 + 8) = v49;
    LOBYTE(v125[0]) = 1;
    v43 = v37;
    *(v20 + 16) = sub_1C4F02618();
    *(v20 + 24) = v50;
    LOBYTE(v121) = 2;
    sub_1C4506098();
    sub_1C441BDEC();
    sub_1C4F026C8();
    *(v20 + 32) = v125[0];
    LOBYTE(v125[0]) = 3;
    *(v20 + 33) = sub_1C4F02628();
    LOBYTE(v121) = 4;
    sub_1C450628C();
    sub_1C441BDEC();
    sub_1C4F02658();
    v51 = v125[1];
    *(v20 + 40) = v125[0];
    *(v20 + 56) = v51;
    LOBYTE(v121) = 5;
    sub_1C4506320();
    sub_1C441BDEC();
    sub_1C4F02658();
    *(v20 + 72) = *&v125[0];
    LOBYTE(v121) = 6;
    sub_1C4507F94();
    sub_1C441BDEC();
    sub_1C4F02658();
    v52 = v125[2];
    v53 = v125[1];
    *(v20 + 80) = v125[0];
    *(v20 + 96) = v53;
    *(v20 + 112) = v52;
    LOBYTE(v121) = 7;
    sub_1C4506374();
    sub_1C441BDEC();
    sub_1C4F02658();
    *(v20 + 120) = v125[0];
    LOBYTE(v121) = 8;
    sub_1C4508038();
    sub_1C441BDEC();
    sub_1C4F02658();
    sub_1C448E0F4();
    *(v20 + 136) = v125[0];
    LOBYTE(v121) = 9;
    sub_1C450808C();
    sub_1C440F064();
    v54 = v117;
    sub_1C4F02658();
    sub_1C448E0F4();
    if (!v54)
    {
      sub_1C4485DC0();
      *(v58 + 144) = v57;
      LOBYTE(v121) = 10;
      sub_1C45080E0();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v59 + 152) = v60;
      LOBYTE(v121) = 11;
      sub_1C4508134();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v61 + 168) = v62;
      *(v61 + 184) = v63;
      LOBYTE(v121) = 12;
      sub_1C4508188();
      sub_1C440F064();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C445A9FC();
      *(v64 + 200) = v65;
      *(v64 + 216) = v66;
      HIBYTE(a10) = 13;
      sub_1C45081DC();
      sub_1C440E974();
      sub_1C4F026C8();
      sub_1C448E0F4();
      sub_1C445A9FC();
      memcpy((v67 + 232), v125, 0x48uLL);
      _s6ConfigVMa(0);
      LOBYTE(v121) = 14;
      sub_1C4440E2C();
      sub_1C44902F4(v68);
      sub_1C443559C();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      sub_1C44CDA7C();
      BYTE6(a10) = 15;
      sub_1C4508E14();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      v71 = (v70 + v69);
      v72 = v122;
      *v71 = v121;
      v71[1] = v72;
      v73 = v124;
      v71[2] = v123;
      v71[3] = v73;
      sub_1C4F001E8();
      LOBYTE(v118) = 16;
      sub_1C447CC7C();
      sub_1C44902F4(v74);
      sub_1C443559C();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      sub_1C44CDA7C();
      BYTE5(a10) = 17;
      sub_1C4509390();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      sub_1C44BBCD4(v75);
      sub_1C441B0D4(18);
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      *(v78 + v77) = v76;
      sub_1C441B0D4(19);
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      *(v81 + v80) = v79;
      sub_1C441B0D4(20);
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      *(v84 + v83) = v82;
      BYTE5(a10) = 21;
      sub_1C45093E4();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4428EF4();
      v86 = v116 + *(v85 + 100);
      *v86 = v118;
      *(v86 + 16) = v87;
      BYTE5(a10) = 22;
      sub_1C4509478();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      sub_1C44BBCD4(v88);
      BYTE5(a10) = 23;
      sub_1C45094CC();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      sub_1C44BBCD4(v89);
      BYTE5(a10) = 24;
      sub_1C4509520();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C44167A4();
      sub_1C4485DC0();
      *(v91 + v90) = v92;
      BYTE5(a10) = 25;
      sub_1C45095B0();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4414360();
      sub_1C44BBCD4(v93);
      BYTE5(a10) = 26;
      sub_1C4442E20();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      sub_1C4428EF4();
      *(v116 + *(v94 + 120)) = v95;
      BYTE5(a10) = 27;
      sub_1C45096F8();
      sub_1C440E974();
      sub_1C4F02658();
      sub_1C448E0F4();
      v96 = sub_1C440DAE8();
      v97(v96);
      sub_1C4428EF4();
      v99 = v116;
      v100 = v116 + *(v98 + 124);
      v101 = v119;
      *v100 = v118;
      *(v100 + 16) = v101;
      *(v100 + 32) = v120;
      *(v100 + 48) = v102;
      sub_1C440B6DC();
      sub_1C45097F0();
      sub_1C44A14E8();
      sub_1C4408084();
      sub_1C443C22C(v99, v103);
      sub_1C441EE54();
      goto LABEL_37;
    }

    v55 = sub_1C440DAE8();
    v56(v55);
    v105 = 0;
    v106 = 0;
    sub_1C441A960();
    sub_1C44092B0();
  }

  sub_1C440EE84();
  sub_1C44A14E8();
  sub_1C447E26C();
  if (v34)
  {
  }

  if (v43)
  {
    sub_1C4CA8D48(*(v20 + 40), *(v20 + 48));
  }

  if (v26)
  {
    sub_1C4C10CD0(*(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112));
    sub_1C441EE54();
    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_8:

    v44 = v115;
    goto LABEL_9;
  }

  sub_1C441EE54();
  if (v37)
  {
    goto LABEL_8;
  }

LABEL_25:
  v44 = v115;
LABEL_9:
  if (v105)
  {

    if ((v106 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v106)
  {
LABEL_11:
    if (v107)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

  sub_1C45BBFB4(*(v20 + 168), *(v20 + 176));
  if (v107)
  {
LABEL_12:
    sub_1C45BBFB4(*(v20 + 200), *(v20 + 208));
    if ((v108 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v108)
  {
LABEL_13:
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  memcpy(v125, (v20 + 232), 0x48uLL);
  sub_1C4508D64(v125);
  if (a10)
  {
LABEL_14:
    sub_1C4420C3C(v20 + v44[18], &qword_1EC0C44F8, &qword_1C4F594B8);
    if ((v109 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v109)
  {
LABEL_15:
    if (v110)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v45 = (v20 + v44[19]);
  v46 = v45[1];
  v125[0] = *v45;
  v125[1] = v46;
  v47 = v45[3];
  v125[2] = v45[2];
  v125[3] = v47;
  sub_1C4420C3C(v125, &qword_1EC0C5640, &qword_1C4F627D8);
  if (v110)
  {
LABEL_16:
    sub_1C4420C3C(v20 + v44[20], &qword_1EC0BDCB0, &unk_1C4F54830);
    if ((v111 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v111)
  {
LABEL_17:
    if (v112)
    {
      goto LABEL_18;
    }

LABEL_34:
    if (!v113)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_33:

  if ((v112 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  sub_1C45E8E50(*(v20 + v44[25]), *(v20 + v44[25] + 8));
  if ((v113 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_35:

LABEL_19:
  if (v114)
  {
  }

LABEL_37:
  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C4507AF4()
{
  result = qword_1EDDFF620;
  if (!qword_1EDDFF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF620);
  }

  return result;
}

unint64_t sub_1C4507B68()
{

  return sub_1C441D828(v0, v1, (v2 - 176));
}

uint64_t sub_1C4507BA8()
{

  return sub_1C4EFF028();
}

unint64_t sub_1C4507BE4(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E79636167656CLL;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x7641737961776C61;
      break;
    case 4:
      result = 0x656D6F6962;
      break;
    case 5:
      result = 0x4C5153656D6F6962;
      break;
    case 6:
      result = 0x4365727574616566;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x69566D6F74737563;
      break;
    case 9:
      result = 0x656D67655373746BLL;
      break;
    case 10:
      result = 0x6E6564614373746BLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 7106931;
      break;
    case 13:
      result = 0x657461647075;
      break;
    case 14:
      result = 0x7463616669747261;
      break;
    case 15:
      result = 0x746567726174;
      break;
    case 16:
      result = 0x4665727574616566;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0x536F546574697277;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
      result = 0x456E4F7261656C63;
      break;
    case 21:
      result = 0x6E69646465626D65;
      break;
    case 22:
      result = 0x4244726F74636576;
      break;
    case 23:
      result = 0x6F44656C706F6570;
      break;
    case 24:
      result = 0x6552797469746E65;
      break;
    case 25:
      result = 0x6154797469746E65;
      break;
    case 26:
      result = 0x6570795466666964;
      break;
    case 27:
      result = 0x4F64657461647075;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4507F94()
{
  result = qword_1EDDFF5D8;
  if (!qword_1EDDFF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5D8);
  }

  return result;
}

uint64_t sub_1C4507FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1C4508038()
{
  result = qword_1EDDFF398;
  if (!qword_1EDDFF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF398);
  }

  return result;
}

unint64_t sub_1C450808C()
{
  result = qword_1EDDFF580;
  if (!qword_1EDDFF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF580);
  }

  return result;
}

unint64_t sub_1C45080E0()
{
  result = qword_1EDDFF590;
  if (!qword_1EDDFF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF590);
  }

  return result;
}

unint64_t sub_1C4508134()
{
  result = qword_1EDDFF268;
  if (!qword_1EDDFF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF268);
  }

  return result;
}

unint64_t sub_1C4508188()
{
  result = qword_1EDDFF258;
  if (!qword_1EDDFF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF258);
  }

  return result;
}

unint64_t sub_1C45081DC()
{
  result = qword_1EDDFF938;
  if (!qword_1EDDFF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF938);
  }

  return result;
}

void sub_1C4508230(void *a1@<X8>)
{
  sub_1C45064F0();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

unint64_t sub_1C4508284(char a1)
{
  result = 0x73694C656D6F6962;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7473694C77656976;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x70756F7267;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

_BYTE *sub_1C45083BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C4508478);
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t _s24IntelligencePlatformCore18TransportationTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

double sub_1C4508530@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4508574();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1C4508574()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v3 = v2;
  sub_1C456902C(&qword_1EC0C5E38, &qword_1C4F68BC8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4417F50(v0, v0[3]);
  sub_1C45089AC();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C440389C();
    sub_1C4F026C8();
    sub_1C44080B4(1);
    v5 = sub_1C4F02678();
    v7 = v6;
    v24 = v5;
    v40 = v29[0];
    sub_1C44080B4(2);
    v8 = sub_1C4F02628();
    sub_1C44080B4(3);
    v23 = sub_1C4F02628();
    sub_1C44080B4(4);
    v22 = sub_1C4F02628();
    sub_1C44080B4(5);
    v21 = sub_1C4F02628();
    sub_1C44080B4(6);
    v20 = sub_1C4F02628();
    sub_1C456902C(&qword_1EC0C5E40, &qword_1C4F68BD0);
    LOBYTE(v25) = 7;
    sub_1C4CCBAFC();
    sub_1C440389C();
    sub_1C4F02658();
    v18 = v8;
    v9 = v29[0];
    sub_1C44080B4(8);
    v19 = sub_1C4F02628();
    sub_1C44080B4(9);
    v17 = sub_1C4F02628();
    sub_1C440389C();
    v10 = sub_1C4F02618();
    v11 = sub_1C43FBF04();
    v12(v11);
    LOBYTE(v25) = v40;
    *(&v25 + 1) = v24;
    *&v26 = v7;
    BYTE8(v26) = v18;
    BYTE9(v26) = v23;
    BYTE10(v26) = v22;
    BYTE11(v26) = v21;
    BYTE12(v26) = v20;
    *&v27 = v9;
    BYTE8(v27) = v19;
    BYTE9(v27) = v17;
    sub_1C440C668();
    *&v28 = v10;
    *(&v28 + 1) = v13;
    sub_1C445CD7C(&v25, v29);
    sub_1C440962C(v0);
    LOBYTE(v29[0]) = v40;
    v29[1] = v24;
    v29[2] = v7;
    v30 = v18;
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v34 = v20;
    v35 = v9;
    v36 = v19;
    v37 = v17;
    sub_1C440C668();
    v38 = v10;
    v39 = v14;
    sub_1C445DA1C(v29);
    v15 = v26;
    *v3 = v25;
    v3[1] = v15;
    v16 = v28;
    v3[2] = v27;
    v3[3] = v16;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4508944(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *sub_1C4508964(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  result[2] = v20;
  result[3] = a16;
  result[4] = a15;
  result[5] = a17;
  result[6] = a20;
  return result;
}

void *sub_1C4508984()
{

  return memcpy((v1 + 16), (v0 + 24), 0x48uLL);
}

unint64_t sub_1C45089AC()
{
  result = qword_1EDDFC698[0];
  if (!qword_1EDDFC698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC698);
  }

  return result;
}

unint64_t sub_1C4508A08(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6D6165727473;
      break;
    case 2:
      result = 0x4F646C6975626572;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0x6F69725068676968;
      break;
    case 5:
      result = 0x4C6564756C637865;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x56646C6975626572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x75517265746C6966;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1C4508BB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C4508C6CLL);
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

__n128 sub_1C4508CF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4508DB8()
{
  sub_1C4404078();
  sub_1C456902C(v2, v3);
  sub_1C43FBCE0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

unint64_t sub_1C4508E14()
{
  result = qword_1EDDFF070;
  if (!qword_1EDDFF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF070);
  }

  return result;
}

double sub_1C4508E68@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1C4508EAC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1C4508EAC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C4690, &qword_1C4F5B008);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4509158();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v34[0]) = 0;
  sub_1C4405804();
  v11 = sub_1C4F02678();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  sub_1C4405804();
  v13 = sub_1C4F02678();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  sub_1C4405804();
  v25 = sub_1C4F02678();
  v27 = v15;
  v35 = 3;
  v16 = sub_1C4F02678();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1C4509328(&v30, v34);
  sub_1C440962C(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_1C4509360(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

unint64_t sub_1C4509158()
{
  result = qword_1EDDFD550[0];
  if (!qword_1EDDFD550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFD550);
  }

  return result;
}

uint64_t sub_1C45091B4(char a1)
{
  result = 0x6573616261746164;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x746567726174;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s6TargetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1C4509300);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4509390()
{
  result = qword_1EDDFF538;
  if (!qword_1EDDFF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF538);
  }

  return result;
}

unint64_t sub_1C45093E4()
{
  result = qword_1EDDFF5A8;
  if (!qword_1EDDFF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5A8);
  }

  return result;
}

uint64_t sub_1C4509440(uint64_t result, int a2, int a3)
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

unint64_t sub_1C4509478()
{
  result = qword_1EDDFF5B8;
  if (!qword_1EDDFF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF5B8);
  }

  return result;
}

unint64_t sub_1C45094CC()
{
  result = qword_1EDDFF558;
  if (!qword_1EDDFF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF558);
  }

  return result;
}

unint64_t sub_1C4509520()
{
  result = qword_1EDDFF548;
  if (!qword_1EDDFF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF548);
  }

  return result;
}

uint64_t sub_1C4509574(uint64_t result, int a2, int a3)
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

unint64_t sub_1C45095B0()
{
  result = qword_1EDDFF568;
  if (!qword_1EDDFF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF568);
  }

  return result;
}

_BYTE *sub_1C4509604(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1C45096D0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45096F8()
{
  result = qword_1EDDFF908;
  if (!qword_1EDDFF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF908);
  }

  return result;
}

uint64_t sub_1C450974C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4509798(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C45097F0()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

void sub_1C45098F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      v10 = sub_1C4416050();
      v11(v10);
      if (v3)
      {

        goto LABEL_16;
      }

      sub_1C441E354();
      if (v12)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v4 > *(v8 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C44FEE5C();
        v8 = v13;
      }

      if (*(v6 + 16))
      {
        sub_1C4414A30();
        if (v15 != v12)
        {
          goto LABEL_19;
        }

        v4 = v8 + 40 * v14;
        v16 = sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
        sub_1C4426B00(v16);

        if (v5)
        {
          v17 = *(v8 + 16);
          v12 = __OFADD__(v17, v5);
          v18 = v17 + v5;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v8 + 16) = v18;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      v9 += 40;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1C44030B0();
  }
}

void sub_1C4509A40()
{
  sub_1C43FBD3C();
  v3 = v2;
  v132 = v4;
  v5 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v123 - v8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v123 - v12;
  v14 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v136 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v138 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v139 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v137 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v140 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v123 - v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FCE30(v31);
  v32 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  sub_1C43FBD18(v32);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  v133 = v34;
  v35 = sub_1C43FBE44();
  v127 = type metadata accessor for EntityTriple(v35);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C43FCE30(v38 - v37);
  v39 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  sub_1C43FBD18(v39);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v42 = sub_1C43FD2C8(v41);
  v43 = type metadata accessor for ConstructionGraphTriple(v42);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v46 - v45);
  p_info = sub_1C4EFC808();
  sub_1C43FCDF8();
  v134 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v123 - v52;
  sub_1C446C964(v3, &v143, &qword_1EC0C0F38, &qword_1C4F41A90);
  if (!v144)
  {
    sub_1C4420C3C(&v143, &qword_1EC0C0F38, &qword_1C4F41A90);
    sub_1C4EFC7F8();
LABEL_102:
    sub_1C43FE9F0();
    return;
  }

  v135 = v0;
  sub_1C441D670(&v143, v145);
  *&v143 = MEMORY[0x1E69E7CC0];
  sub_1C444018C();
  sub_1C44FDE5C(v54, v55, MEMORY[0x1E699C758]);
  sub_1C456902C(&qword_1EC0C6920, ">d\a");
  sub_1C44FDEA4();
  v141 = v53;
  sub_1C4F020C8();
  if (qword_1EC0B7150 != -1)
  {
LABEL_115:
    swift_once();
  }

  v142 = qword_1EC152C48;
  sub_1C442E860(v145, &v143);
  sub_1C456902C(&qword_1EC0B8A48, &unk_1C4F0EC60);
  v56 = v130;
  v57 = swift_dynamicCast();
  v58 = v133;
  if (v57)
  {
    sub_1C43FBD94();
    sub_1C440BAA8(v59, v60, v61, v43);
    v62 = v126;
    sub_1C4485774(v56, v126);
    v142 = *(v62 + *(v43 + 36));
    sub_1C44501B8();
    goto LABEL_15;
  }

  sub_1C440BAA8(v56, 1, 1, v43);
  sub_1C4420C3C(v56, &unk_1EC0BCAE0, byte_1C4F142A0);
  sub_1C442E860(v145, &v143);
  v63 = v127;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C440BAA8(v58, 1, 1, v63);
    sub_1C4420C3C(v58, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_15;
  }

  sub_1C43FBD94();
  sub_1C440BAA8(v64, v65, v66, v63);
  sub_1C44032D8();
  v67 = v124;
  sub_1C4485774(v58, v124);
  sub_1C43FD90C();
  v69 = v125;
  sub_1C44719E4(v67 + v68, v125);
  sub_1C4420A30();
  sub_1C44DBDB4(v67, v70);
  v71 = *(v69 + 16);
  sub_1C441AB50();
  sub_1C44DBDB4(v69, v72);
  v73 = v71 - 1;
  if (!__OFSUB__(v71, 1))
  {
    if (v73 <= 0x40)
    {
      if (v71 == 65)
      {
        v74 = 0;
      }

      else
      {
        v74 = 1 << v73;
      }

      v142 = v74;
    }

    else
    {
      v142 = 0;
    }

LABEL_15:
    v133 = p_info;
    if (qword_1EDDFD288 != -1)
    {
      swift_once();
    }

    v75 = sub_1C442B738(v14, &qword_1EDDFD290);
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    v76 = 1;
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v76)
      {
        break;
      }

      sub_1C449E530(v76, v13);
      sub_1C43FC0FC(v13);
      if (v79)
      {
        sub_1C4420C3C(v13, &unk_1EC0C0760, &qword_1C4F170D0);
        v77 = __OFADD__(v76++, 1);
        if (v77)
        {
          goto LABEL_104;
        }
      }

      else
      {
        sub_1C43FD90C();
        sub_1C4485774(v13, v140);
        if (__OFSUB__(v76, 1))
        {
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
          goto LABEL_115;
        }

        v77 = __OFADD__(v76++, 1);
        if (v77)
        {
          goto LABEL_105;
        }

        sub_1C4405EEC();
        sub_1C4418D6C();
        if (v78 != v77)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v140, v81);
        }

        else
        {
          sub_1C43FD90C();
          sub_1C4485774(v140, v29);
          v79 = *v29 == *v75 && *(v29 + 8) == v75[1];
          if (v79)
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v29, v82);
LABEL_37:
            sub_1C4415B50();
            sub_1C4EFC7F8();
            v83 = sub_1C43FE990();
            sub_1C450181C(v83, v84);
            v85 = sub_1C4451468();
            (v43)(v85);
            v86 = sub_1C43FE990();
            (v43)(v86);
            break;
          }

          v43 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v29, v80);
          if (v43)
          {
            goto LABEL_37;
          }
        }
      }
    }

    if (qword_1EDDFD1F0 != -1)
    {
      sub_1C441BA74();
      swift_once();
    }

    v87 = sub_1C442B738(v14, &qword_1EDDFD1F8);
    v13 = 1;
    p_info = &unk_1EC0C0760;
    v88 = 1;
    v29 = &qword_1C4F170D0;
    while (qword_1EDE2DCF0 >= v88)
    {
      sub_1C449E530(v88, v1);
      sub_1C43FC0FC(v1);
      if (v79)
      {
        sub_1C4420C3C(v1, &unk_1EC0C0760, &qword_1C4F170D0);
        v77 = __OFADD__(v88++, 1);
        if (v77)
        {
          goto LABEL_107;
        }
      }

      else
      {
        sub_1C43FD90C();
        v43 = v139;
        sub_1C4485774(v1, v139);
        if (__OFSUB__(v88, 1))
        {
          goto LABEL_106;
        }

        v77 = __OFADD__(v88++, 1);
        if (v77)
        {
          goto LABEL_108;
        }

        sub_1C4418D6C();
        if (v78 != v77)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v43, v93);
        }

        else
        {
          sub_1C43FD90C();
          v89 = v43;
          v43 = v137;
          sub_1C4485774(v89, v137);
          if (*v43 == *v87 && *(v43 + 8) == v87[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v43, v94);
LABEL_58:
            sub_1C4415B50();
            sub_1C4EFC7D8();
            v95 = sub_1C43FE990();
            sub_1C450181C(v95, v96);
            v97 = sub_1C4451468();
            (v43)(v97);
            v98 = sub_1C43FE990();
            (v43)(v98);
            break;
          }

          v43 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v92, v91);
          if (v43)
          {
            goto LABEL_58;
          }
        }
      }
    }

    if (qword_1EDDFD1A0 != -1)
    {
      sub_1C441BA88();
      swift_once();
    }

    v99 = sub_1C442B738(v14, &qword_1EDDFD1A8);
    v43 = &unk_1EC0C0760;
    p_info = 1;
    v13 = v129;
    v1 = v135;
    while (qword_1EDE2DCF0 >= p_info)
    {
      sub_1C449E530(p_info, v9);
      sub_1C43FC0FC(v9);
      if (v79)
      {
        sub_1C4420C3C(v9, &unk_1EC0C0760, &qword_1C4F170D0);
        v77 = __OFADD__(p_info++, 1);
        if (v77)
        {
          goto LABEL_110;
        }
      }

      else
      {
        sub_1C43FD90C();
        v29 = v138;
        sub_1C4485774(v9, v138);
        if (__OFSUB__(p_info, 1))
        {
          goto LABEL_109;
        }

        v77 = __OFADD__(p_info++, 1);
        if (v77)
        {
          goto LABEL_111;
        }

        sub_1C4405EEC();
        sub_1C4418D6C();
        if (v78 != v77)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v29, v104);
        }

        else
        {
          sub_1C43FD90C();
          v100 = sub_1C43FD258();
          sub_1C4485774(v100, v101);
          if (*v1 == *v99 && v1[1] == v99[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v1, v105);
LABEL_79:
            sub_1C445087C();
            sub_1C4EFC7C8();
            v106 = sub_1C43FE5F8();
            sub_1C450181C(v106, v107);
            v108 = *(v134 + 8);
            v108(&unk_1EC0C0760, v133);
            v109 = sub_1C43FE5F8();
            (v108)(v109);
            break;
          }

          v29 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v1, v103);
          if (v29)
          {
            goto LABEL_79;
          }
        }
      }
    }

    if (qword_1EDDFD1C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C442B738(v14, &qword_1EDDFD1D0);
    v43 = 1;
    p_info = &qword_1C4F170D0;
    v1 = v128;
    v29 = v136;
    while (1)
    {
      v110 = v141;
      if (qword_1EDE2DCF0 < v43)
      {
        break;
      }

      sub_1C449E530(v43, v1);
      sub_1C43FC0FC(v1);
      if (v79)
      {
        sub_1C4420C3C(v1, &unk_1EC0C0760, &qword_1C4F170D0);
        v77 = __OFADD__(v43++, 1);
        if (v77)
        {
          goto LABEL_113;
        }
      }

      else
      {
        sub_1C43FD90C();
        v111 = sub_1C4404DC8();
        sub_1C4485774(v111, v112);
        if (__OFSUB__(v43, 1))
        {
          goto LABEL_112;
        }

        v77 = __OFADD__(v43++, 1);
        if (v77)
        {
          goto LABEL_114;
        }

        sub_1C4405EEC();
        sub_1C4418D6C();
        if (v78 != v77)
        {
          sub_1C441AB50();
          sub_1C44DBDB4(v13, v116);
        }

        else
        {
          sub_1C43FD90C();
          sub_1C4485774(v13, v29);
          if (*v29 == *v9 && *(v29 + 8) == v9[1])
          {
            sub_1C441AB50();
            sub_1C44DBDB4(v29, v117);
LABEL_100:
            v118 = v131;
            sub_1C4EFC7E8();
            v119 = sub_1C4405814();
            v110 = v141;
            sub_1C450181C(v119, v120);
            v121 = *(v134 + 8);
            v121(v118, v133);
            v122 = sub_1C4405814();
            (v121)(v122);
            break;
          }

          v114 = sub_1C4F02938();
          sub_1C441AB50();
          sub_1C44DBDB4(v29, v115);
          if (v114)
          {
            goto LABEL_100;
          }
        }
      }
    }

    sub_1C440962C(v145);
    (*(v134 + 32))(v132, v110, v133);
    goto LABEL_102;
  }

  __break(1u);
}

uint64_t sub_1C450A6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C450244C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

unint64_t sub_1C450A734@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4505E18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void ProgressTokens.init(from:)()
{
  sub_1C43FE96C();
  v3 = sub_1C445C188(v2);
  type metadata accessor for Source(v3);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44017FC();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0BE118, &qword_1C4F32648);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD1B4();
  type metadata accessor for ProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v22 = v10;
  v23 = v0;
  sub_1C4417F50(v0, v0[3]);
  v11 = sub_1C450B0DC();
  sub_1C44807A0(&type metadata for ProgressTokens.CodingKeys, v12, v11);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v13, v14, MEMORY[0x1E69A92F0]);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    v15 = sub_1C43FE6D8();
    v16(v15);
    sub_1C449DBF8();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C443DF60();
    sub_1C441FBB8();
    sub_1C4490F60(v17, v18, &protocol conformance descriptor for Source);
    sub_1C443F630();
    sub_1C44414E0();
    sub_1C4F026C8();
    sub_1C44D3FBC();
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C44414E0();
    sub_1C4F02658();
    *(v22 + v7[7]) = v24;
    sub_1C4433D1C(4);
    *(v22 + v7[8]) = sub_1C4F026B8();
    sub_1C4433D1C(5);
    sub_1C44414E0();
    v19 = sub_1C4F02688();
    v20 = sub_1C4415A30();
    v21(v20);
    *(v22 + v7[9]) = v19 & 1;
    sub_1C449EEE8();
    sub_1C440962C(v23);
    sub_1C43FBC98();
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C450ABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF7A68, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C450ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  sub_1C43FE96C();
  v76 = v22;
  v24 = v23;
  v72 = v25;
  v73 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  sub_1C43FBD18(v35);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v69 - v37;
  sub_1C450B008(v34, &v69 - v37);
  v39 = type metadata accessor for TranslatedEntityTriple(0);
  if (sub_1C44157D4(v38, 1, v39) == 1)
  {
    goto LABEL_22;
  }

  v40 = &v38[*(v39 + 40)];
  v41 = *v40;
  v42 = v40[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407B7C();
  sub_1C44BCC4C(v38, v43);
  sub_1C44B8118();
  if (v21)
  {

LABEL_5:
    sub_1C43FBC98();
    sub_1C43FBC80();
    return;
  }

  v70 = v24;
  v71 = v41;
  v44 = type metadata accessor for StandardEntityFusion(0);
  v45 = *(v30 + *(v44 + 28));
  v46 = sub_1C44E7D44();
  swift_beginAccess();
  v47 = *v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = v76(v34, v32, v45, v46, v47);
  v77 = v49;
  v51 = v50;

  v52 = v30 + *(v44 + 24);
  v38 = v77;
  v53 = a21(v52, v71, v42, v48, v77, v51, v32);
  v55 = v54;
  v57 = v56;

  if (v53)
  {
    v58 = *(v53 + 16);
  }

  else
  {
    v58 = 0;
  }

  v59 = v73;
  v60 = __OFADD__(*v72, v58);
  v61 = *v72 + v58;
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *v72 = v61;
    if (v55)
    {
      v62 = *(v55 + 16);
    }

    else
    {
      v62 = 0;
    }

    v60 = __OFADD__(*v59, v62);
    v63 = *v59 + v62;
    if (!v60)
    {
      *v59 = v63;
      if (v57)
      {
        v64 = *(v57 + 16);
      }

      else
      {
        v64 = 0;
      }

      v60 = __OFADD__(*v70, v64);
      v65 = *v70 + v64;
      if (!v60)
      {
        *v70 = v65;
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C4420C3C(v38, &unk_1EC0BC9C8, &qword_1C4F29B58);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1C4F02248();
  v74 = type metadata accessor for StandardEntityFusion(0);
  sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
  v66 = sub_1C4F01198();
  v68 = v67;

  v74 = v66;
  v75 = v68;
  MEMORY[0x1C6940010](0xD00000000000002BLL, 0x80000001C4FB2840);
  sub_1C4B590A0();
  sub_1C4F024A8();
  __break(1u);
}

unint64_t sub_1C450B034()
{
  result = qword_1EDDFDA90;
  if (!qword_1EDDFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDA90);
  }

  return result;
}

unint64_t sub_1C450B0DC()
{
  result = qword_1EDDF7AB0;
  if (!qword_1EDDF7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AB0);
  }

  return result;
}

uint64_t sub_1C450B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF7A70, type metadata accessor for ProgressTokens, &protocol conformance descriptor for ProgressTokens);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ProgressTokens.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0BE110, &qword_1C4F32640);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C450B0DC();
  sub_1C440F61C(&type metadata for ProgressTokens.CodingKeys, v3, v2);
  LOBYTE(v11) = 0;
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A92D0]);
  sub_1C44E76EC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for ProgressTokens(0);
    sub_1C4416AC4(v6);
    sub_1C442DF84();
    sub_1C4F027E8();
    sub_1C4867FD8();
    sub_1C441FBB8();
    sub_1C4490F60(v7, v8, &protocol conformance descriptor for Source);
    sub_1C43FC428();
    sub_1C4F027E8();
    sub_1C44AE054();
    sub_1C442DF84();
    sub_1C4F02778();
    sub_1C441DFEC(v11, v12);
    sub_1C4471CBC(4);
    sub_1C440D3E4();
    sub_1C4F027D8();
    sub_1C4471CBC(5);
    sub_1C440D3E4();
    sub_1C4F027A8();
  }

  v9 = sub_1C43FF120();
  v10(v9);
  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C450B3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 104) = result;
  return result;
}

void sub_1C450B420()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  sub_1C43FCFC0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    sub_1C43FEC60();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 134218242;
    *(v11 + 4) = *(v7 + 16);

    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1C441D828(v5, v3, &v15);
    _os_log_impl(&dword_1C43F8000, v9, v10, "GraphStore: store: %ld %s records.", v11, 0x16u);
    sub_1C440962C(v12);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v13);
  v14[2] = v7;

  sub_1C446C37C(v1, v14);

  sub_1C43FE9F0();
}

uint64_t sub_1C450B640(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v23 = a5;
  v21 = a1;
  v24 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v20 - v8;
  v10 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44B95C0(&qword_1EDDF3A48, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
  sub_1C4EFADF8();
  sub_1C4B4C078(v13, a3, a4, 0, 1, v16);
  v17 = *(v11 + 8);
  v17(v13, v10);
  type metadata accessor for GraphTriple(0);
  sub_1C44B95C0(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v21, v16, v9, v23, v25, &unk_1EC0C0800, &qword_1C4F0F948, &qword_1EDDFCD10, &qword_1EDDFE870, &qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple, sub_1C450B954, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  (*(v22 + 8))(v9, v24);
  return (v17)(v16, v10);
}

uint64_t sub_1C450B954(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v65 = a4;
  v66 = a1;
  v69 = type metadata accessor for ExpiredGraphTriple(0);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GraphTriple(0);
  v67 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v58 - v20);
  v22 = v68;
  result = (v66)(a3, v65, v19);
  if (!v22)
  {
    v65 = v14;
    v66 = v21;
    v64 = v25;
    v59 = result;
    v60 = v11;
    if (v24)
    {
      v26 = 0;
      v27 = *(v24 + 16);
      v62 = a5;
      v63 = v27;
      v28 = v65;
      v29 = v66;
      for (i = v24; ; v24 = i)
      {
        if (v63 == v26)
        {

          result = v64;
          goto LABEL_9;
        }

        if (v26 >= *(v24 + 16))
        {
          break;
        }

        v30 = v24 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v31 = *(v67 + 72);
        v68 = v26;
        sub_1C4471BAC(v30 + v31 * v26, v29);
        sub_1C4471BAC(v29, v17);
        v32 = sub_1C4EFF0C8();
        (*(*(v32 - 8) + 16))(v8, v17, v32);
        v33 = v9[5];
        v34 = v69[5];
        v35 = sub_1C4EFEEF8();
        v36 = *(*(v35 - 8) + 16);
        v36(&v8[v34], &v17[v33], v35);
        v37 = v9[6];
        v38 = v69[6];
        v39 = sub_1C4EFF8A8();
        (*(*(v39 - 8) + 16))(&v8[v38], &v17[v37], v39);
        v36(&v8[v69[7]], &v17[v9[7]], v35);
        v40 = &v17[v9[8]];
        v42 = *v40;
        v41 = *(v40 + 1);
        v43 = *&v17[v9[9]];
        v44 = v9[11];
        v45 = *&v17[v9[10]];
        v46 = *&v17[v44];
        v47 = *&v17[v44 + 8];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v48 = &v8[v69[8]];
        *v48 = v42;
        *(v48 + 1) = v41;
        *&v8[v69[9]] = v43;
        *&v8[v69[10]] = v45;
        v49 = &v8[v69[11]];
        *v49 = v46;
        *(v49 + 1) = v47;
        *&v8[v69[12]] = v50;
        sub_1C44B95C0(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple, &protocol conformance descriptor for ExpiredGraphTriple);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v8, type metadata accessor for ExpiredGraphTriple);
        sub_1C44B95C0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
        sub_1C4EFBA98();
        sub_1C44BCC4C(v17, type metadata accessor for GraphTriple);
        v29 = v66;
        result = sub_1C44BCC4C(v66, type metadata accessor for GraphTriple);
        v26 = v68 + 1;
        v28 = v65;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {
      result = v64;
      v28 = v65;
LABEL_9:
      v51 = v59;
      v52 = v67;
      if (result)
      {
        v53 = 0;
        v54 = *(result + 16);
        while (v54 != v53)
        {
          if (v53 >= *(result + 16))
          {
            goto LABEL_23;
          }

          sub_1C4471BAC(result + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v53, v28);
          sub_1C44B95C0(&qword_1EDDEBBC0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
          sub_1C4EFBA58();
          ++v53;
          sub_1C44BCC4C(v28, type metadata accessor for GraphTriple);
          result = v64;
        }
      }

      if (v51)
      {
        v55 = 0;
        v56 = *(v51 + 16);
        while (v56 != v55)
        {
          if (v55 >= *(v51 + 16))
          {
            goto LABEL_24;
          }

          v57 = v60;
          sub_1C4471BAC(v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v55, v60);
          sub_1C44B95C0(&qword_1EDDEBBC8, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
          sub_1C4EFB6A8();
          ++v55;
          result = sub_1C44BCC4C(v57, type metadata accessor for GraphTriple);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C450C07C(void *a1)
{
  v496 = a1;
  v479 = sub_1C4EFFB98();
  sub_1C43FCDF8();
  v477 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v456 - v6;
  v8 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v469 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  sub_1C43FD2C8(v12);
  v498 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v466 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v492 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v493 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v456 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v28 = sub_1C43FD2C8(v27);
  v497 = type metadata accessor for StaticKnowledgeTriple(v28);
  sub_1C43FCDF8();
  v502 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v494 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v495 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v490 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v456 - v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v499 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v500 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v456 - v53;
  v55 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v488 = v56;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  v491 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD230();
  sub_1C43FD2C8(v61);
  v501 = sub_1C4F00978();
  sub_1C43FCDF8();
  v473 = v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v456 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v461 = v67;
  v68 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v70 = sub_1C43FD2C8(&v456 - v69);
  v71 = type metadata accessor for Source(v70);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FD230();
  v465 = v74;
  v75 = sub_1C482B384();
  if (v76)
  {
    sub_1C4F00148();
    v77 = sub_1C4F00968();
    v78 = sub_1C4F01CD8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1C43F8000, v77, v78, "ConfidenceMap: Prior Beliefs unavailable", v79, 2u);
      MEMORY[0x1C6942830](v79, -1, -1);
    }

    (*(v473 + 8))(v65, v501);
    sub_1C43FF078();
    sub_1C482B95C(v80, v81, MEMORY[0x1E69A9B40]);
    return sub_1C4F00F28();
  }

  v471 = v7;
  v457 = v8;
  MEMORY[0x1EEE9AC00](v75);
  *(&v456 - 2) = v83;

  v84 = sub_1C49A52B4(sub_1C482B7D0, (&v456 - 4));

  v85 = v470;
  sub_1C482B7EC(v496, v470);
  v86 = sub_1C44157D4(v85, 1, v71);
  v496 = v84;
  if (v86 != 1)
  {
    v110 = v465;
    v111 = sub_1C482B9A4(v85, v465, type metadata accessor for Source);
    MEMORY[0x1EEE9AC00](v111);
    *(&v456 - 2) = v110;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4B347B8(sub_1C482B878, (&v456 - 4), v84);
    v113 = v112;
    v480 = 0;
    v114 = *(v112 + 16);
    if (!v114)
    {

      v229 = v461;
      sub_1C4F00148();
      v230 = v460;
      sub_1C482B898(v110, v460, type metadata accessor for Source);
      v231 = sub_1C4F00968();
      v232 = sub_1C4F01CD8();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v504 = v234;
        *v233 = 136315138;
        v235 = *v230;
        v236 = v230[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440ABC4();
        sub_1C482BA04(v230, v237);
        v238 = sub_1C441D828(v235, v236, &v504);

        *(v233 + 4) = v238;
        _os_log_impl(&dword_1C43F8000, v231, v232, "ConfidenceMap: Prior Beliefs for source %s unavailable", v233, 0xCu);
        sub_1C440962C(v234);
        MEMORY[0x1C6942830](v234, -1, -1);
        MEMORY[0x1C6942830](v233, -1, -1);
      }

      else
      {

        sub_1C440ABC4();
        sub_1C482BA04(v230, v452);
      }

      (*(v473 + 8))(v229, v501);
      sub_1C43FF078();
      sub_1C482B95C(v453, v454, MEMORY[0x1E69A9B40]);
      v82 = sub_1C4F00F28();
      sub_1C440ABC4();
      v451 = v110;
      goto LABEL_252;
    }

    v504 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v115 = v504;
    sub_1C4410D04();
    v482 = (v117 & ~v116);
    v118 = v482 + v113;
    v120 = *(v119 + 72);
    v494 = v113;
    v495 = v120;
    v502 = v488 + 16;
    v121 = v462;
    do
    {
      sub_1C4406F78();
      sub_1C482B898(v118, v54, v122);
      v123 = &v54[v497[5]];
      v501 = *v502;
      (v501)(v121, v123, v55);
      sub_1C44197F8();
      sub_1C482BA04(v54, v124);
      v504 = v115;
      v125 = *(v115 + 16);
      if (v125 >= *(v115 + 24) >> 1)
      {
        sub_1C459D178();
        v115 = v504;
      }

      *(v115 + 16) = v125 + 1;
      (*(v488 + 32))(v115 + ((*(v488 + 80) + 32) & ~*(v488 + 80)) + *(v488 + 72) * v125, v121, v55);
      v118 += v495;
      --v114;
    }

    while (v114);

    sub_1C45972E0();
    v154 = v153;
    v155 = 0;
    v156 = v496;
    v494 = v496[2];
    v493 = (v482 + v496);
    v481 = MEMORY[0x1E69E7CC0];
    v491 = (v466 + 8);
    while (1)
    {
      v157 = v500;
      while (1)
      {
        if (v155 == v494)
        {
          sub_1C4426B74();
          v492 = v157[2];
          if (!v492)
          {
            v489 = MEMORY[0x1E69E7CC8];
LABEL_203:

            v371 = 0;
            v488 = MEMORY[0x1E69E7CC0];
LABEL_204:
            v372 = v499;
            while (1)
            {
              if (v371 == v494)
              {

                v415 = v488;
                v416 = *(v488 + 16);
                if (v416)
                {
                  v417 = 0;
                  v502 = v497[7];
                  sub_1C44250F4();
                  v419 = v415 + v418;
                  sub_1C4405C68();
                  v501 = v420;
                  v82 = MEMORY[0x1E69E7CC8];
                  v422 = (v421 + 8);
                  v423 = v471;
                  v424 = v483;
                  v425 = v489;
                  do
                  {
                    if (v417 >= *(v415 + 16))
                    {
                      goto LABEL_264;
                    }

                    sub_1C4406F78();
                    sub_1C482B898(v419, v424, v426);
                    if (*(v425 + 16) && (sub_1C457AC78(), (v428 & 1) != 0))
                    {
                      v429 = *(*(v425 + 56) + 8 * v427);
                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      sub_1C4EFFBA8();
                      v430 = *v501;
                      v431 = v484;
                      (*v501)(v484, v423, v479);
                      swift_isUniquelyReferenced_nonNull_native();
                      sub_1C4435084();
                      sub_1C44EE7B4();
                      sub_1C43FC3F8();
                      if (v151)
                      {
                        goto LABEL_266;
                      }

                      v434 = v432;
                      v435 = v433;
                      sub_1C456902C(&qword_1EC0BDD50, &qword_1C4F31E30);
                      sub_1C4404398();
                      if (sub_1C4F02458())
                      {
                        v431 = v504;
                        sub_1C44EE7B4();
                        if ((v435 & 1) != (v437 & 1))
                        {
                          goto LABEL_274;
                        }

                        v434 = v436;
                      }

                      v82 = v504;
                      if (v435)
                      {
                        *(v504[7] + 8 * v434) = v429;
                        v438 = *v422;
                        v439 = v479;
                        (*v422)(v484, v479);
                        v423 = v471;
                        v438(v471, v439);
                        sub_1C44197F8();
                        v424 = v483;
                        sub_1C482BA04(v483, v440);
                      }

                      else
                      {
                        sub_1C4401D38(&v504[v434 >> 6]);
                        sub_1C441B980();
                        v444 = v484;
                        v445 = v479;
                        v430(v442 + v443 * v434, v484, v479);
                        *(*(v82 + 56) + 8 * v434) = v429;
                        v446 = *(v431 + 8);
                        v446(v444, v445);
                        v423 = v471;
                        v446(v471, v445);
                        sub_1C44197F8();
                        v424 = v483;
                        sub_1C482BA04(v483, v447);
                        v448 = *(v82 + 16);
                        v151 = __OFADD__(v448, 1);
                        v449 = v448 + 1;
                        if (v151)
                        {
                          goto LABEL_267;
                        }

                        *(v82 + 16) = v449;
                      }

                      v425 = v489;
                      v415 = v488;
                    }

                    else
                    {
                      sub_1C44197F8();
                      sub_1C482BA04(v424, v441);
                    }

                    ++v417;
                    v419 += v495;
                  }

                  while (v416 != v417);
                }

                else
                {

                  v82 = MEMORY[0x1E69E7CC8];
                }

                sub_1C440ABC4();
                v451 = v465;
LABEL_252:
                sub_1C482BA04(v451, v450);
                return v82;
              }

              if (v371 >= v156[2])
              {
                goto LABEL_261;
              }

              v373 = v371 + 1;
              sub_1C4406F78();
              sub_1C482B898(v374, v372, v375);
              if (*(v154 + 16))
              {
                v500 = v373;
                sub_1C4400490();
                sub_1C482B95C(&qword_1EDDFE820, v376, MEMORY[0x1E69A9820]);
                v377 = sub_1C4F00FD8();
                v378 = ~(-1 << *(v154 + 32));
                do
                {
                  v379 = v377 & v378;
                  sub_1C4409CD8();
                  if ((v380 & 1) == 0)
                  {
                    goto LABEL_223;
                  }

                  v381 = sub_1C442BBA0();
                  v382(v381);
                  sub_1C4400490();
                  sub_1C482B95C(&qword_1EDDFCC98, v383, MEMORY[0x1E69A9830]);
                  sub_1C4F010B8();
                  v384 = sub_1C4414B30();
                  v385(v384);
                  v377 = v379 + 1;
                }

                while ((v55 & 1) == 0);
                sub_1C4410388();
                v386 = v485;
                sub_1C4EFE5C8();
                sub_1C441FB4C();
                v388 = sub_1C482B95C(&off_1EDDFCCA8, v387, MEMORY[0x1E69A9770]);
                sub_1C4F01578();
                v492 = v388;
                sub_1C4F01578();
                v389 = v505;
                sub_1C4433428();
                if (v95 && v389 == v386)
                {
                  v394 = 1;
                }

                else
                {
                  v394 = sub_1C43FF090(v390, v391, v392);
                }

                v395 = v498;
                v490 = *v491;
                (v490)(v485, v498);

                if (v394)
                {
                  sub_1C44159FC();
                  v396 = v474;
                  sub_1C4EFED88();
                  sub_1C4F01578();
                  sub_1C4F01578();
                  v397 = v505;
                  sub_1C4433428();
                  if (v95 && v397 == v396)
                  {
                    (v490)(v396, v395);

LABEL_226:
                    sub_1C442CAF0();
                    sub_1C482B9A4(v499, v458, v405);
                    v406 = v488;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v506 = v406;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1C4408AC0();
                      v406 = v506;
                    }

                    v156 = v496;
                    v409 = *(v406 + 16);
                    v408 = *(v406 + 24);
                    v410 = v409 + 1;
                    if (v409 >= v408 >> 1)
                    {
                      sub_1C440E300(v408);
                      v414 = v413;
                      sub_1C459DB00();
                      v410 = v414;
                      v156 = v496;
                      v406 = v506;
                    }

                    *(v406 + 16) = v410;
                    sub_1C44250F4();
                    v488 = v406;
                    sub_1C442CAF0();
                    sub_1C482B9A4(v458, v411, v412);
                    v371 = v500;
                    goto LABEL_204;
                  }

                  v401 = sub_1C43FBEC0(v398, v397, v399);
                  v402 = v396;
                  v403 = v401;
                  (v490)(v402, v395);

                  if (v403)
                  {
                    goto LABEL_226;
                  }
                }

LABEL_223:
                v156 = v496;
                v372 = v499;
                v373 = v500;
              }

              sub_1C44197F8();
              sub_1C482BA04(v372, v404);
              v371 = v373;
            }
          }

          v198 = 0;
          v490 = v487 + v497[9];
          sub_1C44250F4();
          sub_1C4405C68();
          v488 = v199;
          v478 = (v200 + 8);
          v489 = MEMORY[0x1E69E7CC8];
          while (2)
          {
            if (v198 >= v157[2])
            {
              goto LABEL_263;
            }

            sub_1C4406F78();
            v500 = v201;
            v203 = sub_1C482B898(v201, v487, v202);
            v503 = 0;
            MEMORY[0x1EEE9AC00](v203);
            *(&v456 - 2) = &v503;
            if ((v206 & 0x1000000000000000) == 0)
            {
              if ((v206 & 0x2000000000000000) != 0)
              {
                v504 = v205;
                v505 = v206 & 0xFFFFFFFFFFFFFFLL;
                if (v205 > 0x20u || ((1 << v205) & 0x100003E01) == 0)
                {
                  goto LABEL_87;
                }

LABEL_84:
                v156 = v496;
                goto LABEL_85;
              }

              if ((v205 & 0x1000000000000000) != 0)
              {
                sub_1C4404F14(v204, (&v456 - 4), v205, v206);
                v209 = (v208 << v207) & 0x100003E01;
                if (!v95 & v210)
                {
                  v211 = 1;
                }

                else
                {
                  v211 = v209 == 0;
                }

                if (!v211)
                {
                  goto LABEL_84;
                }

LABEL_87:
                v214 = _swift_stdlib_strtod_clocale();
                if (!v214 || *v214)
                {
                  goto LABEL_84;
                }

LABEL_89:
                v215 = v503;
                v216 = v487 + v497[7];
                v475 = *v488;
                v475(v463, v216, v457);
                LODWORD(v476) = swift_isUniquelyReferenced_nonNull_native();
                sub_1C4435084();
                sub_1C457AC78();
                v486 = v217;
                LODWORD(v489) = v218;
                sub_1C43FC3F8();
                if (v151)
                {
                  goto LABEL_271;
                }

                sub_1C456902C(&qword_1EC0BDD58, &qword_1C4F31E38);
                sub_1C4404398();
                if (sub_1C4F02458())
                {
                  sub_1C457AC78();
                  v221 = v489;
                  if ((v489 & 1) != (v220 & 1))
                  {
                    goto LABEL_274;
                  }

                  v156 = v496;
                }

                else
                {
                  v156 = v496;
                  v219 = v486;
                  v221 = v489;
                }

                v157 = v504;
                v489 = v504;
                if (v221)
                {
                  *(v504[7] + 8 * v219) = v215;
                  (*v478)(v463, v457);
                }

                else
                {
                  sub_1C4401D38(&v504[v219 >> 6]);
                  v222 = v157[6];
                  v223 = *(v469 + 72);
                  v486 = v224;
                  v475(v222 + v223 * v224, v463, v457);
                  *(v157[7] + 8 * v486) = v215;
                  v225 = sub_1C441E3C4();
                  v226(v225, v457);
                  v227 = v157[2];
                  v151 = __OFADD__(v227, 1);
                  v228 = v227 + 1;
                  if (v151)
                  {
                    goto LABEL_273;
                  }

                  v157[2] = v228;
                }

                sub_1C4426B74();
LABEL_85:
                ++v198;
                sub_1C44197F8();
                sub_1C482BA04(v487, v213);
                if (v492 == v198)
                {
                  goto LABEL_203;
                }

                continue;
              }
            }

            break;
          }

          v157 = v480;
          sub_1C4F02218();
          v480 = v157;
          sub_1C4426B74();
          if ((v506 & 1) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_89;
        }

        if (v155 >= v156[2])
        {
          goto LABEL_257;
        }

        v158 = v155 + 1;
        sub_1C4406F78();
        sub_1C482B898(v159, v157, v160);
        if (*(v154 + 16))
        {
          break;
        }

LABEL_61:
        sub_1C44197F8();
        sub_1C482BA04(v157, v187);
        v155 = v158;
      }

      v492 = v158;
      sub_1C4400490();
      sub_1C482B95C(&qword_1EDDFE820, v161, MEMORY[0x1E69A9820]);
      v162 = sub_1C4F00FD8();
      v163 = ~(-1 << *(v154 + 32));
      do
      {
        v164 = v162 & v163;
        sub_1C4409CD8();
        if ((v165 & 1) == 0)
        {
          goto LABEL_59;
        }

        v166 = sub_1C442BBA0();
        v167(v166);
        sub_1C4400490();
        sub_1C482B95C(&qword_1EDDFCC98, v168, MEMORY[0x1E69A9830]);
        sub_1C4F010B8();
        v169 = sub_1C4414B30();
        v170(v169);
        v162 = v164 + 1;
      }

      while ((v55 & 1) == 0);
      sub_1C4410388();
      v171 = v486;
      sub_1C4EFE5C8();
      sub_1C441FB4C();
      v173 = sub_1C482B95C(&off_1EDDFCCA8, v172, MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      v489 = v173;
      sub_1C4F01578();
      v174 = v505;
      sub_1C4433428();
      if (v95 && v174 == v171)
      {
        LODWORD(v490) = 1;
      }

      else
      {
        LODWORD(v490) = sub_1C43FF090(v175, v176, v177);
      }

      v158 = v492;
      v488 = *v491;
      (v488)(v486, v498);

      if ((v490 & 1) == 0)
      {
        v156 = v496;
        v157 = v500;
        goto LABEL_61;
      }

      sub_1C44159FC();
      v179 = v475;
      sub_1C4EFE2A8();
      sub_1C4F01578();
      sub_1C4F01578();
      v180 = v505;
      sub_1C4433428();
      if (!v95 || v180 != v179)
      {
        break;
      }

      v188 = sub_1C441EC48();
      v189(v188);

LABEL_63:
      sub_1C442CAF0();
      sub_1C482B9A4(v500, v459, v190);
      sub_1C4426B74();
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v506 = v180;
      if ((v191 & 1) == 0)
      {
        sub_1C4408AC0();
        v180 = v506;
      }

      v156 = v496;
      v193 = *(v180 + 16);
      v192 = *(v180 + 24);
      v194 = v180;
      if (v193 >= v192 >> 1)
      {
        sub_1C440E300(v192);
        sub_1C459DB00();
        sub_1C44160D0();
      }

      *(v194 + 16) = v193 + 1;
      sub_1C44250F4();
      v481 = v195;
      sub_1C442CAF0();
      sub_1C482B9A4(v459, v196, v197);
      v155 = v492;
    }

    LODWORD(v490) = sub_1C43FF090(v181, v182, v183);
    v185 = sub_1C441EC48();
    v186(v185);

    if (v490)
    {
      goto LABEL_63;
    }

LABEL_59:
    v156 = v496;
    v157 = v500;
    v158 = v492;
    goto LABEL_61;
  }

  sub_1C4420C3C(v85, &unk_1EC0C0760, &qword_1C4F170D0);
  v87 = 0;
  v500 = v84[2];
  v501 = (v466 + 8);
  v487 = MEMORY[0x1E69E7CC0];
  v88 = v84;
  while (1)
  {
    if (v500 == v87)
    {
      v486 = *(v487 + 16);
      if (v486)
      {
        v126 = 0;
        v485 = v497[5];
        v484 = (v490 + v497[9]);
        sub_1C4425BC4();
        v483 = v487 + v127;
        sub_1C4405C68();
        v499 = v128;
        v129 = MEMORY[0x1E69E7CC8];
        v482 = (v130 + 8);
        v131 = v487;
        while (v126 < *(v131 + 16))
        {
          sub_1C4406F78();
          v132 = v490;
          sub_1C482B898(v133, v490, v134);
          v135 = *v499;
          (*v499)(v491, v132 + v485, v55);
          v137 = *v484;
          v136 = *(v484 + 1);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          swift_isUniquelyReferenced_nonNull_native();
          v504 = v129;
          sub_1C44E3664();
          if (__OFADD__(v129[2], (v139 & 1) == 0))
          {
            goto LABEL_259;
          }

          v140 = v138;
          v141 = v139;
          sub_1C456902C(&qword_1EC0BDD48, &qword_1C4F31E28);
          sub_1C4404398();
          if (sub_1C4F02458())
          {
            sub_1C44E3664();
            if ((v141 & 1) != (v143 & 1))
            {
              goto LABEL_274;
            }

            v140 = v142;
          }

          v88 = v496;
          v129 = v504;
          if (v141)
          {
            v144 = (v504[7] + 16 * v140);
            *v144 = v137;
            v144[1] = v136;

            (*v482)(v491, v55);
            sub_1C44197F8();
            sub_1C482BA04(v490, v145);
          }

          else
          {
            sub_1C4401D38(&v504[v140 >> 6]);
            v146 = v488;
            v147 = v491;
            v135(v129[6] + *(v488 + 72) * v140, v491, v55);
            v148 = (v129[7] + 16 * v140);
            *v148 = v137;
            v148[1] = v136;
            (*(v146 + 8))(v147, v55);
            sub_1C44197F8();
            sub_1C482BA04(v490, v149);
            v150 = v129[2];
            v151 = __OFADD__(v150, 1);
            v152 = v150 + 1;
            if (v151)
            {
              goto LABEL_265;
            }

            v129[2] = v152;
          }

          ++v126;
          v131 = v487;
          if (v486 == v126)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_258;
      }

      v129 = MEMORY[0x1E69E7CC8];
LABEL_104:

      v239 = 0;
      v499 = MEMORY[0x1E69E7CC0];
      while (v500 != v239)
      {
        if (v239 >= v88[2])
        {
          goto LABEL_255;
        }

        sub_1C4410D04();
        sub_1C4406F78();
        sub_1C482B898(v240, v495, v241);
        sub_1C4410388();
        v242 = v493;
        sub_1C4EFE5C8();
        sub_1C441FB4C();
        sub_1C482B95C(&off_1EDDFCCA8, v243, MEMORY[0x1E69A9770]);
        sub_1C444FD94();
        sub_1C444FD94();
        v244 = v505;
        sub_1C4433428();
        if (v95 && v244 == v242)
        {
          v248 = 1;
        }

        else
        {
          v248 = sub_1C43FBEC0(v245, v244, v246);
        }

        v249 = *v501;
        (*v501)(v493, v498);

        if (v248)
        {
          sub_1C44159FC();
          v250 = v481;
          sub_1C4EFE2A8();
          v251 = v498;
          sub_1C4F01578();
          sub_1C4F01578();
          v252 = v505;
          sub_1C4433428();
          if (v95 && v252 == v250)
          {
            v249(v250, v251);
          }

          else
          {
            v257 = sub_1C43FF090(v253, v254, v255);
            v258 = v250;
            v259 = v257;
            v249(v258, v251);

            if ((v259 & 1) == 0)
            {
              goto LABEL_119;
            }
          }

          sub_1C442CAF0();
          sub_1C482B9A4(v495, v468, v261);
          v262 = v499;
          v263 = swift_isUniquelyReferenced_nonNull_native();
          v506 = v262;
          if ((v263 & 1) == 0)
          {
            sub_1C4408AC0();
            v262 = v506;
          }

          v265 = v262[2];
          v264 = v262[3];
          v266 = v262;
          v88 = v496;
          if (v265 >= v264 >> 1)
          {
            sub_1C440E300(v264);
            sub_1C459DB00();
            sub_1C44160D0();
          }

          v239 = (v239 + 1);
          v266[2] = v265 + 1;
          v499 = v266;
          sub_1C442CAF0();
          sub_1C482B9A4(v468, v267, v268);
        }

        else
        {
LABEL_119:
          sub_1C44197F8();
          sub_1C482BA04(v495, v260);
          v239 = (v239 + 1);
          v88 = v496;
        }
      }

      v269 = v499[2];
      if (v269)
      {
        v270 = 0;
        v491 = 0;
        sub_1C4425BC4();
        sub_1C4405C68();
        v495 = v271;
        v273 = (v272 + 8);
        v274 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v270 >= v499[2])
          {
            goto LABEL_260;
          }

          sub_1C4406F78();
          v277 = sub_1C482B898(v275, v489, v276);
          v503 = 0;
          MEMORY[0x1EEE9AC00](v277);
          *(&v456 - 2) = &v503;
          if ((v280 & 0x1000000000000000) != 0)
          {
            break;
          }

          if ((v280 & 0x2000000000000000) != 0)
          {
            v504 = v279;
            v505 = v280 & 0xFFFFFFFFFFFFFFLL;
            if (v279 <= 0x20u && ((1 << v279) & 0x100003E01) != 0)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if ((v279 & 0x1000000000000000) == 0)
            {
              break;
            }

            sub_1C4404F14(v278, (&v456 - 4), v279, v280);
            v283 = (v282 << v281) & 0x100003E01;
            if (!v95 & v210)
            {
              v284 = 1;
            }

            else
            {
              v284 = v283 == 0;
            }

            if (!v284)
            {
              goto LABEL_140;
            }
          }

          v286 = _swift_stdlib_strtod_clocale();
          if (!v286 || *v286)
          {
            goto LABEL_140;
          }

LABEL_144:
          v493 = v273;
          v287 = v503;
          v288 = v489 + v497[7];
          v490 = *v495;
          (v490)(v464, v288, v457);
          swift_isUniquelyReferenced_nonNull_native();
          v504 = v274;
          sub_1C457AC78();
          if (__OFADD__(v274[2], (v290 & 1) == 0))
          {
            goto LABEL_270;
          }

          v291 = v289;
          v292 = v290;
          sub_1C456902C(&qword_1EC0BDD58, &qword_1C4F31E38);
          sub_1C4404398();
          if (sub_1C4F02458())
          {
            sub_1C457AC78();
            if ((v292 & 1) != (v294 & 1))
            {
              goto LABEL_274;
            }

            v291 = v293;
            v295 = v292;
            v88 = v496;
          }

          else
          {
            v88 = v496;
            v295 = v292;
          }

          v274 = v504;
          if (v295)
          {
            *(v504[7] + 8 * v291) = v287;
            v273 = v493;
            (*v493)(v464, v457);
          }

          else
          {
            sub_1C4401D38(&v504[v291 >> 6]);
            v296 = v457;
            (v490)(v274[6] + *(v469 + 72) * v291, v464, v457);
            *(v274[7] + 8 * v291) = v287;
            v297 = sub_1C441E3C4();
            v273 = v493;
            v298(v297, v296);
            v299 = v274[2];
            v151 = __OFADD__(v299, 1);
            v300 = v299 + 1;
            if (v151)
            {
              goto LABEL_272;
            }

            v274[2] = v300;
          }

LABEL_140:
          ++v270;
          sub_1C44197F8();
          sub_1C482BA04(v489, v285);
          if (v269 == v270)
          {
            goto LABEL_156;
          }
        }

        v301 = v491;
        sub_1C4F02218();
        v491 = v301;
        if ((v506 & 1) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_144;
      }

      v491 = 0;
      v274 = MEMORY[0x1E69E7CC8];
LABEL_156:
      v495 = v274;

      v302 = 0;
      v499 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          v303 = v497;
          if (v500 == v302)
          {

            v332 = v499;
            v333 = v499[2];
            if (!v333)
            {
              v82 = MEMORY[0x1E69E7CC8];
LABEL_201:

              return v82;
            }

            v334 = 0;
            v335 = v303[5];
            sub_1C4425BC4();
            v337 = v332 + v336;
            sub_1C4405C68();
            v498 = v338;
            v82 = MEMORY[0x1E69E7CC8];
            v496 = (v339 + 8);
            v340 = v472;
            v341 = v495;
            v500 = v335;
            v501 = v337;
            while (2)
            {
              if (v334 >= v332[2])
              {
                goto LABEL_262;
              }

              sub_1C4406F78();
              sub_1C482B898(v342, v340, v343);
              if (!v129[2])
              {
                sub_1C44197F8();
                sub_1C482BA04(v340, v358);
                goto LABEL_198;
              }

              sub_1C44E3664();
              if ((v344 & 1) == 0 || !*(v341 + 16))
              {
                sub_1C44197F8();
                sub_1C482BA04(v340, v357);
                v332 = v499;
                goto LABEL_198;
              }

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C457AC78();
              if (v346)
              {
                v347 = *(*(v341 + 56) + 8 * v345);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v348 = v476;
                sub_1C4EFFBA8();
                v349 = *v498;
                v350 = v478;
                (*v498)(v478, v348, v479);
                swift_isUniquelyReferenced_nonNull_native();
                sub_1C4435084();
                sub_1C44EE7B4();
                sub_1C43FC3F8();
                if (v151)
                {
                  goto LABEL_268;
                }

                v353 = v351;
                v354 = v352;
                sub_1C456902C(&qword_1EC0BDD50, &qword_1C4F31E30);
                sub_1C4404398();
                if (sub_1C4F02458())
                {
                  v350 = v504;
                  sub_1C44EE7B4();
                  v340 = v472;
                  if ((v354 & 1) != (v356 & 1))
                  {
                    goto LABEL_274;
                  }

                  v353 = v355;
                }

                else
                {
                  v340 = v472;
                }

                v82 = v504;
                if (v354)
                {
                  *(v504[7] + 8 * v353) = v347;
                  v360 = *v496;
                  v361 = v479;
                  (*v496)(v478, v479);
                  v360(v476, v361);
                  sub_1C44197F8();
                  sub_1C482BA04(v340, v362);
                  v341 = v495;
                  v332 = v499;
                  goto LABEL_198;
                }

                sub_1C4401D38(&v504[v353 >> 6]);
                sub_1C441B980();
                v365 = v478;
                v366 = v479;
                v349(v363 + v364 * v353, v478, v479);
                *(*(v82 + 56) + 8 * v353) = v347;
                v367 = *(v350 + 8);
                v367(v365, v366);
                v367(v476, v366);
                sub_1C44197F8();
                sub_1C482BA04(v340, v368);
                v369 = *(v82 + 16);
                v151 = __OFADD__(v369, 1);
                v370 = v369 + 1;
                if (v151)
                {
                  goto LABEL_269;
                }

                *(v82 + 16) = v370;
                v341 = v495;
              }

              else
              {

                sub_1C44197F8();
                sub_1C482BA04(v340, v359);
              }

              v332 = v499;
LABEL_198:
              if (v333 == ++v334)
              {
                goto LABEL_201;
              }

              continue;
            }
          }

          if (v302 >= v88[2])
          {
            goto LABEL_256;
          }

          sub_1C4410D04();
          sub_1C4406F78();
          sub_1C482B898(v304, v494, v305);
          v306 = v492;
          sub_1C4EFE5C8();
          sub_1C441FB4C();
          sub_1C482B95C(&off_1EDDFCCA8, v307, MEMORY[0x1E69A9770]);
          sub_1C4F01578();
          sub_1C4F01578();
          v308 = v505;
          sub_1C4433428();
          v311 = v95 && v308 == v306;
          v312 = v311 ? 1 : sub_1C43FBEC0(v309, v308, v310);
          v313 = *v501;
          (*v501)(v492, v498);

          if (v312)
          {
            break;
          }

LABEL_171:
          sub_1C44197F8();
          sub_1C482BA04(v494, v323);
          v302 = (v302 + 1);
          v88 = v496;
        }

        sub_1C44159FC();
        v314 = v480;
        sub_1C4EFED88();
        v315 = v498;
        sub_1C4F01578();
        sub_1C4F01578();
        v316 = v505;
        sub_1C4433428();
        if (v95 && v316 == v314)
        {
          v313(v314, v315);
        }

        else
        {
          v320 = sub_1C43FBEC0(v317, v316, v318);
          v321 = v314;
          v322 = v320;
          v313(v321, v315);

          if ((v322 & 1) == 0)
          {
            goto LABEL_171;
          }
        }

        sub_1C442CAF0();
        sub_1C482B9A4(v494, v467, v324);
        v325 = v499;
        v326 = swift_isUniquelyReferenced_nonNull_native();
        v506 = v325;
        if ((v326 & 1) == 0)
        {
          sub_1C4408AC0();
          v325 = v506;
        }

        v328 = v325[2];
        v327 = v325[3];
        v329 = v325;
        v88 = v496;
        if (v328 >= v327 >> 1)
        {
          sub_1C440E300(v327);
          sub_1C459DB00();
          sub_1C44160D0();
        }

        v302 = (v302 + 1);
        v329[2] = v328 + 1;
        v499 = v329;
        sub_1C442CAF0();
        sub_1C482B9A4(v467, v330, v331);
      }
    }

    if (v87 >= v88[2])
    {
      break;
    }

    sub_1C4410D04();
    sub_1C4406F78();
    sub_1C482B898(v89, v43, v90);
    sub_1C4410388();
    sub_1C4EFEBF8();
    sub_1C441FB4C();
    sub_1C482B95C(&off_1EDDFCCA8, v91, MEMORY[0x1E69A9770]);
    sub_1C444FD94();
    sub_1C444FD94();
    v92 = v505;
    sub_1C4433428();
    v95 = v95 && v92 == v22;
    if (v95)
    {
      v100 = sub_1C443FC9C();
      v101(v100);

LABEL_16:
      sub_1C442CAF0();
      sub_1C482B9A4(v43, v482, v102);
      v103 = v487;
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v105 = v103;
      v506 = v103;
      if ((v104 & 1) == 0)
      {
        sub_1C4408AC0();
        v105 = v506;
      }

      v88 = v496;
      v107 = *(v105 + 16);
      v106 = *(v105 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_1C440E300(v106);
        sub_1C459DB00();
        sub_1C44160D0();
      }

      v87 = (v87 + 1);
      *(v105 + 16) = v107 + 1;
      v487 = v105;
      sub_1C442CAF0();
      sub_1C482B9A4(v482, v108, v109);
    }

    else
    {
      v96 = sub_1C43FBEC0(v93, v92, v94);
      v97 = sub_1C443FC9C();
      v98(v97);

      if (v96)
      {
        goto LABEL_16;
      }

      sub_1C44197F8();
      sub_1C482BA04(v43, v99);
      v87 = (v87 + 1);
      v88 = v496;
    }
  }

  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}