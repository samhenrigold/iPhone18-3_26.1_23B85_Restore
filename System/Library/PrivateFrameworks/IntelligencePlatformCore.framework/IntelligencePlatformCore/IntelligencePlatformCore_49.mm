uint64_t sub_1C487B3F0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1C4EFF8A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFD548();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  if (!v14)
  {
    return 1;
  }

  v28 = v11;
  v15 = sub_1C4877BE8(v10);
  v17 = sub_1C4499AD0(v15, v16, v14);

  if (v17)
  {
    return 1;
  }

  sub_1C4877DD0(v18);
  sub_1C4EFF898();
  sub_1C4EFF828();
  (*(v6 + 8))(v8, v5);
  if (sub_1C44157D4(v4, 1, v9) == 1)
  {
    sub_1C4420C3C(v4, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v20 = v28;
    v21 = (*(v28 + 32))(v13, v4, v9);
    v29 = sub_1C4877BE8(v21);
    v30 = v22;
    MEMORY[0x1C6940010](47, 0xE100000000000000);
    v23 = sub_1C4EFD2F8();
    MEMORY[0x1C6940010](v23);

    v24 = MEMORY[0x1C6940010](47, 0xE100000000000000);
    v25 = sub_1C4877FA8(v24);
    MEMORY[0x1C6940010](v25);

    v26 = sub_1C4499AD0(v29, v30, v14);

    (*(v20 + 8))(v13, v9);
    if (v26)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C487B6D8(void (*a1)(void))
{

  a1(*(v1 + 24));
  return v1;
}

uint64_t sub_1C487B710()
{
  sub_1C487B6D8(MEMORY[0x1E69E7CF8]);

  return swift_deallocClassInstance();
}

void sub_1C487B7A0(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEA40, MEMORY[0x1E69E6530]);
  if (v1 <= 0x3F)
  {
    sub_1C487B8D4(319, &qword_1EDDFCE88, &qword_1EC0B9B70, &unk_1C4F37490);
    if (v2 <= 0x3F)
    {
      sub_1C487B8D4(319, &qword_1EDDFA540, &qword_1EC0B9178, &qword_1C4F11B50);
      if (v3 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
        if (v4 <= 0x3F)
        {
          sub_1C487B8D4(319, &qword_1EDDFCCE0, &qword_1EC0BE568, &unk_1C4F374A0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C487B8D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C4572308(a3, a4);
    v5 = sub_1C4F01F48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C487B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7[2] = a2;
  v7[3] = a4;
  *&v7[4] = a5;
  v7[5] = a1;
  v7[6] = a3;

  v5 = sub_1C49A53C8(sub_1C487BA88, v7);

  return v5;
}

uint64_t sub_1C487B9B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  _s19FilteredBatchLoaderCMa();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4879C14(v13, a1, a2);
  v14 = sub_1C487A7E4(a3, a4, a6);
  v16 = v15;
  v17 = v14;

  if (!v6)
  {
    *a5 = v16;
    a5[1] = v17;
  }

  return result;
}

uint64_t sub_1C487BAAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  _s19FilteredBatchLoaderCMa();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4879C14(v15, a1, a2);
  v16 = sub_1C487AE8C(a3, a4, a6, a7);
  v18 = v17;
  v19 = v16;

  if (!v7)
  {
    *a5 = v18;
    a5[1] = v19;
  }

  return result;
}

uint64_t sub_1C487BC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C487BCAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C487BD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C487BE6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 146))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C487BEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GraphStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GraphStore.init(config:)(a1);
  return v2;
}

uint64_t GraphStore.store<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 134218242;
    sub_1C4404084();
    *(v9 + 4) = sub_1C4F01758();

    *(v9 + 12) = 2080;
    v11 = sub_1C4F02C58();
    v13 = sub_1C441D828(v11, v12, &v17);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1C43F8000, v7, v8, "GraphStore: store: %ld %s records.", v9, 0x16u);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v14);
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;

  sub_1C446C37C(sub_1C487EB5C, v16);
}

void sub_1C487C188()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4410D94(v4, v5, v6, v7, v8, v9, v10, v11, v27);
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C456902C(&qword_1EC0BE588, &qword_1C4F37680);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v15 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v16 = *(v13 + 8);
  v17 = sub_1C43FD574();
  v16(v17);
  if (v0)
  {

    v20 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v20);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v18 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v19 = sub_1C43FD574();
  v16(v19);
  v28 = v1;
  v21 = v1;
  v22 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0(v22, &v28, v22))
  {

    goto LABEL_8;
  }

  v23 = sub_1C4400510();
  v24(v23);
  v25 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v25, v26);
  __break(1u);
}

void sub_1C487C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v13);
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FC010();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4414B64();
  sub_1C4EFB2C8();
  if (!v12)
  {
    sub_1C443137C();
    memcpy(a10, v31, 0x70uLL);
    goto LABEL_8;
  }

  v19 = v12;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v20 = *(v17 + 8);
  v21 = sub_1C4409D0C();
  v20(v21);
  if (v10)
  {

    v24 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v24);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v22 = v12;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v23 = sub_1C4409D0C();
  v20(v23);
  v31[0] = v12;
  v25 = v12;
  v26 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8(v11, v31, v26))
  {

    goto LABEL_8;
  }

  v27 = sub_1C44132A8();
  v28(v27);
  v29 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v29, v30);
  __break(1u);
}

void sub_1C487C724()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v28 = v3;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FEFC4(v5, v6, v7, v8, v9, v10, v11, v12, v28);
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C456902C(&qword_1EC0BE590, &qword_1C4F37688);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v16 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v17 = *(v14 + 8);
  v18 = sub_1C43FD574();
  v17(v18);
  if (v0)
  {

    v21 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v21);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v19 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v20 = sub_1C43FD574();
  v17(v20);
  v29 = v1;
  v22 = v1;
  v23 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0(v23, &v29, v23))
  {

    goto LABEL_8;
  }

  v24 = sub_1C4400510();
  v25(v24);
  v26 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v26, v27);
  __break(1u);
}

void sub_1C487C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v15 = v14;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4410D94(v18, v19, v20, v21, v22, v23, v24, v25, v41);
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C456902C(v15, v13);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v29 = v11;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v30 = *(v27 + 8);
  v31 = sub_1C43FD574();
  v30(v31);
  if (v10)
  {

    v34 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v34);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v32 = v11;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v33 = sub_1C43FD574();
  v30(v33);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8(v42, v35, v36))
  {

    goto LABEL_8;
  }

  v37 = sub_1C4400510();
  v38(v37);
  v39 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v39, v40);
  __break(1u);
}

void sub_1C487CC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4404F80();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v37 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FEFC4(v14, v15, v16, v17, v18, v19, v20, v21, v37);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  sub_1C4414B64();
  _s10ViewConfigVMa(0);
  sub_1C440D510();
  sub_1C4EFB2C8();
  if (!v39)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v25 = v39;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v26 = *(v23 + 8);
  v27 = sub_1C43FD574();
  v26(v27);
  if (v10)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v28 = v39;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v29 = sub_1C43FD574();
  v26(v29);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8(v38, v31, v32))
  {

    goto LABEL_8;
  }

  v33 = sub_1C4400510();
  v34(v33);
  v35 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v35, v36);
  __break(1u);
}

uint64_t GraphStore.delete<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;

  v3 = sub_1C443DD50(sub_1C487EBF4, v5);

  return v3;
}

void *GraphStore.init(config:)(uint64_t a1)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
  if (qword_1EDDFF500 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4ABF788();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v5;
  }

  return v1;
}

uint64_t GraphStore.deinit()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);
  return v0;
}

uint64_t GraphStore.__deallocating_deinit()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config);

  return swift_deallocClassInstance();
}

BOOL static GraphStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  v3 = a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration(0) + 20);
  v6 = *(v2 + v4);
  v5 = *(v2 + v4 + 8);
  v7 = (v3 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t GraphStore.hash(into:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C4408B50();
  sub_1C487EF54(v3, v4, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v5 = (v2 + *(type metadata accessor for Configuration(0) + 20));
  v6 = v5[1];
  MEMORY[0x1C69417F0](*v5);
  return MEMORY[0x1C69417F0](v6);
}

uint64_t GraphStore.hashValue.getter()
{
  sub_1C4F02AF8();
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C4408B50();
  sub_1C487EF54(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration(0) + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

uint64_t sub_1C487D2B0()
{
  v1 = *v0;
  sub_1C4F02AF8();
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config;
  sub_1C4EF98F8();
  sub_1C487EF54(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v3 = (v2 + *(type metadata accessor for Configuration(0) + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C487D36C()
{
  v1 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v106 = &v91 - v2;
  v3 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v5 = v4;
  v108 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v105 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C441E3FC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441E3FC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441E3FC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FC010();
  v107 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v109 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  *&v110 = v21 - v20;
  v121[0] = MEMORY[0x1E69E7CC8];
  v103 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v22 = *(sub_1C4EFEEF8() - 8);
  v104 = *(v22 + 72);
  v102 = *(v22 + 80);
  v100 = (v102 + 32) & ~v102;
  v23 = swift_allocObject();
  v101 = xmmword_1C4F0D130;
  *(v23 + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v99 = v24;
  v25 = *MEMORY[0x1E69A95C0];
  v96 = *(v5 + 104);
  v26 = v96;
  v93 = v0;
  sub_1C43FC2F4();
  v26();
  v27 = v16;
  sub_1C43FC2F4();
  v26();
  v28 = v13;
  sub_1C43FC2F4();
  v26();
  sub_1C43FC2F4();
  v26();
  v29 = v105;
  sub_1C43FC2F4();
  v26();
  v30 = v29;
  v94 = v28;
  v95 = v10;
  sub_1C4EFDCD8();

  v31 = *(v108 + 8);
  v97 = v31;
  v108 += 8;
  (v31)(v30, v3);
  (v31)(v10, v3);
  (v31)(v28, v3);
  v92 = v27;
  (v31)(v27, v3);
  v32 = v93;
  (v31)(v93, v3);
  v99 = sub_1C4EFD678();
  v33 = v106;
  sub_1C440BAA8(v106, 1, 1, v99);
  v116 = v121;
  v34 = v110;
  v35 = sub_1C440D510();
  sub_1C48687D0(v35, v36, v37, v38);
  sub_1C4423A0C(v33, &unk_1EC0C07E0, &unk_1C4F168F0);
  v39 = *(v109 + 8);
  v109 += 8;
  v98 = v39;
  v39(v34, v107);
  *(swift_allocObject() + 16) = v101;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v40 = v32;
  v41 = v25;
  sub_1C43FC2F4();
  v42 = v96;
  v96();
  sub_1C43FC2F4();
  v42();
  v43 = v94;
  (v42)(v94, v41, v3);
  v44 = v41;
  (v42)(v95, v41, v3);
  v45 = v105;
  (v42)(v105, v44, v3);
  v46 = v92;
  sub_1C4EFDCD8();

  v47 = v97;
  (v97)(v45, v3);
  v48 = sub_1C4404B44();
  v47(v48);
  (v47)(v43, v3);
  (v47)(v46, v3);
  (v47)(v40, v3);
  v49 = v106;
  sub_1C440BAA8(v106, 1, 1, v99);
  v115 = v121;
  v50 = v110;
  v51 = sub_1C4404084();
  sub_1C48687E8(v51, v52, v53, v54);
  sub_1C4423A0C(v49, &unk_1EC0C07E0, &unk_1C4F168F0);
  v98(v50, v107);
  v55 = MEMORY[0x1E69E7CC8];
  v120 = MEMORY[0x1E69E7CC8];
  type metadata accessor for GraphTriple(0);
  sub_1C487EF54(&qword_1EDDEBBB0, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v114 = &v120;
  v56 = sub_1C4404084();
  sub_1C487E2E4(v56, v57, 1, v58, v59);
  v119 = v55;
  v113 = &v119;
  v60 = sub_1C4404084();
  sub_1C487E2E4(v60, v61, 3, v62, v63);
  v118 = v55;
  type metadata accessor for EventTriple(0);
  sub_1C487EF54(&qword_1EDDEBC00, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v112 = &v118;
  v64 = sub_1C4404084();
  sub_1C487E2E4(v64, v65, 1, v66, v67);
  v117 = v55;
  v111 = &v117;
  v68 = sub_1C4404084();
  sub_1C487E2E4(v68, v69, 3, v70, v71);
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 0x73656C70697254;
  *(inited + 40) = 0xE700000000000000;
  sub_1C456902C(&qword_1EC0B9250, &qword_1C4F0ED70);
  v73 = swift_initStackObject();
  v110 = xmmword_1C4F0CE60;
  *(v73 + 16) = xmmword_1C4F0CE60;
  *(v73 + 32) = 0x6870617247;
  *(v73 + 40) = 0xE500000000000000;
  *(v73 + 48) = GraphStore.graphTripleCount()();
  *(v73 + 56) = 0x746E657645;
  *(v73 + 64) = 0xE500000000000000;
  *(v73 + 72) = GraphStore.eventTripleCount()();
  v74 = sub_1C4F00F28();
  v75 = sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  *(inited + 48) = v74;
  *(inited + 72) = v75;
  *(inited + 80) = 0x7365697469746E45;
  v76 = v121[0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v76;
  v109 = v76;
  sub_1C443FCD8();
  *(inited + 120) = v77;
  *(inited + 128) = v78;
  v79 = v78;
  *(inited + 136) = 0xEA00000000007365;
  sub_1C456902C(&qword_1EC0BE5B8, &qword_1C4F376C0);
  v80 = swift_initStackObject();
  *(v80 + 16) = v110;
  *(v80 + 32) = 0x6870617247;
  *(v80 + 40) = 0xE500000000000000;
  sub_1C456902C(&qword_1EC0BE5C0, &qword_1C4F376C8);
  v81 = swift_initStackObject();
  *(v81 + 16) = v110;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0xEA00000000007365;
  v83 = v119;
  v82 = v120;
  *(v81 + 48) = v120;
  *(v81 + 56) = 0xD000000000000017;
  v108 = v82;
  *(v81 + 64) = 0x80000001C4FA37D0;
  *(v81 + 72) = v83;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v80 + 48) = sub_1C4F00F28();
  *(v80 + 56) = 0x746E657645;
  *(v80 + 64) = 0xE500000000000000;
  *(swift_initStackObject() + 16) = v110;
  sub_1C443FCD8();
  v84[4] = v85;
  v86 = v117;
  v87 = v118;
  v84[5] = 0xEA00000000007365;
  v84[6] = v87;
  v84[7] = 0xD000000000000017;
  v84[8] = 0x80000001C4FA37D0;
  v84[9] = v86;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v80 + 72) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BE5C8, &qword_1C4F376D0);
  v88 = sub_1C4F00F28();
  *(inited + 168) = sub_1C456902C(&qword_1EC0BE5D0, &qword_1C4F376D8);
  *(inited + 144) = v88;
  v89 = sub_1C4F00F28();

  return v89;
}

uint64_t sub_1C487DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a1;
  v13[2] = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13[0] = v8;
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F01688();
  for (i = v10; ; v10 = i)
  {
    result = sub_1C4F01758();
    if (v10 == result)
    {
      break;
    }

    v12 = sub_1C4F01738();
    sub_1C4F016B8();
    if (v12)
    {
      (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, a3);
    }

    else
    {
      result = sub_1C4F02298();
      if (v13[0] != 8)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      (*(v7 + 16))(v9, &v14, a3);
      swift_unknownObjectRelease();
    }

    sub_1C4F01788();
    sub_1C4EFB6A8();
    result = (*(v7 + 8))(v9, a3);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C487E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4F017A8();
  swift_getWitnessTable();
  return sub_1C4F01538();
}

uint64_t sub_1C487E0DC@<X0>(uint64_t *a1@<X0>, void *a5@<X8>)
{
  v7 = *a1;
  result = sub_1C4EFBA58();
  if (!v5)
  {
    if ((result & 1) != 0 && (v9 = __OFADD__(v7, 1), ++v7, v9))
    {
      __break(1u);
    }

    else
    {
      *a5 = v7;
    }
  }

  return result;
}

uint64_t sub_1C487E13C(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v10 = (a1 + *(a3(0, v7) + 32));
  v12 = *v10;
  v11 = v10[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  v13 = sub_1C4EFD548();
  if (sub_1C44157D4(v9, 1, v13) == 1)
  {
    sub_1C4423A0C(v9, &qword_1EC0B8568, &unk_1C4F319B0);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v12 = sub_1C4EFD3D8();
    v11 = v15;
    result = (*(*(v13 - 8) + 8))(v9, v13);
  }

  v16 = *a2;
  v17 = *(*a2 + 16);
  if (v17)
  {
    result = sub_1C445FAA8(v12, v11);
    if (v18)
    {
      v17 = *(*(v16 + 56) + 8 * result);
    }

    else
    {
      v17 = 0;
    }
  }

  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4416128();
    sub_1C4662330();
    *a2 = v19[1];

    return 1;
  }

  return result;
}

uint64_t sub_1C487E2E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;

  sub_1C4465390(sub_1C487EF9C, v6);
}

uint64_t sub_1C487E354(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693D840](a1, a2);
  v10 = sub_1C4EFEEF8();
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4423A0C(v9, &qword_1EC0B9A08, &unk_1C4F107B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4EFEC08();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4416128();
  sub_1C4662330();
  *a4 = v12[1];
}

uint64_t sub_1C487E4AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v37 = a1;
  v35 = a6;
  v41 = a5;
  v39 = a4;
  v6 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  sub_1C4EFADB8();
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  *(v16 + 56) = &type metadata for FusedTripleColumn;
  *(v16 + 64) = sub_1C48112EC();
  v17 = v39;
  *(v16 + 32) = v39;
  v40[3] = &type metadata for FusedTripleColumn;
  v40[4] = sub_1C45021B8();
  LOBYTE(v40[0]) = v17;
  v18 = sub_1C4EFB298();
  v19 = MEMORY[0x1E699FE50];
  *(v16 + 96) = v18;
  *(v16 + 104) = v19;
  sub_1C4422F90((v16 + 72));
  sub_1C4EFBD28();
  sub_1C440962C(v40);
  sub_1C4EFBCF8();

  (*(v7 + 8))(v9, v6);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0D130;
  *(v20 + 56) = &type metadata for FusedTripleColumn;
  *(v20 + 64) = sub_1C481123C();
  *(v20 + 32) = v39;
  sub_1C487EFC0(&qword_1EDDFA270, MEMORY[0x1E699FF58]);
  sub_1C4EFB6E8();

  v21 = *(v36 + 8);
  v21(v12, v10);
  sub_1C487EFC0(&qword_1EDDFE850, MEMORY[0x1E699FF60]);
  v22 = v38;
  sub_1C4EFB028();
  result = (v21)(v15, v10);
  if (v22)
  {
    return result;
  }

  while (1)
  {
    v24 = sub_1C4458EE8();
    if (!v24)
    {
    }

    sub_1C4EFBBA8();
    v25 = sub_1C4EFBBE8();
    if (v25)
    {
      MEMORY[0x1EEE9AC00](v25);
      *(&v35 - 2) = v24;
      *(&v35 - 1) = 0;
      v27 = sqlite3_column_type(v26, 0);
      if (v27 == 5)
      {
        MEMORY[0x1EEE9AC00](v27);
        *(&v35 - 2) = sub_1C487BF24;
        *(&v35 - 1) = (&v35 - 4);
        goto LABEL_16;
      }

      v28 = sub_1C4F011E8();
      v30 = v29;
      v40[0] = v28;
    }

    else
    {
      sub_1C4EFBB98();
      v28 = v40[0];
      v30 = v40[1];
    }

    sub_1C4EFBBA8();
    v31 = sub_1C4EFBBE8();
    if (v31)
    {
      break;
    }

    sub_1C4EFBB98();
    v34 = v40[0];
LABEL_11:
    v41(v28, v30, v34);
  }

  MEMORY[0x1EEE9AC00](v31);
  *(&v35 - 2) = v24;
  *(&v35 - 1) = 1;
  v33 = sqlite3_column_type(v32, 1);
  if (v33 != 5)
  {
    v34 = sub_1C4F02AA8();
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v33);
  *(&v35 - 2) = sub_1C487BDA4;
  *(&v35 - 1) = (&v35 - 4);
LABEL_16:
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t GraphStore.TransactionOperation.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

void *sub_1C487EB7C(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1C487EBC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for GraphStore(uint64_t a1)
{
  result = qword_1EDDFE748;
  if (!qword_1EDDFE748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C487ECB8()
{
  result = qword_1EC0BE580;
  if (!qword_1EC0BE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE580);
  }

  return result;
}

uint64_t sub_1C487ED14(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

_BYTE *storeEnumTagSinglePayload for GraphStore.TransactionOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C487EF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C487EFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B9AC8, &unk_1C4F10E00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GraphValidator.__allocating_init(config:)(uint64_t a1)
{
  sub_1C4406518();
  v2 = swift_allocObject();
  GraphValidator.init(config:)(a1);
  return v2;
}

void *GraphValidator.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1C4430CAC(a1, v15 - v10, type metadata accessor for Configuration);
  type metadata accessor for GraphStore(0);
  swift_allocObject();
  v12 = GraphStore.init(config:)(v11);
  if (v2)
  {
    sub_1C4453E9C(a1, type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v12;
    sub_1C4430CAC(a1, v8, type metadata accessor for Configuration);
    type metadata accessor for OntologyStore(0);
    swift_allocObject();
    v13 = OntologyStore.init(config:)(v8);
    sub_1C4453E9C(a1, type metadata accessor for Configuration);
    *(v3 + 24) = v13;
  }

  return v3;
}

void sub_1C487F264()
{
  sub_1C43FBD3C();
  v222 = v1;
  v211 = v2;
  v4 = v3;
  v215 = v0;
  v196 = v5;
  v7 = v6;
  v223 = v6;
  v228 = sub_1C4EFEEF8();
  v225 = *(v228 - 8);
  v8 = v225;
  MEMORY[0x1EEE9AC00](v228);
  sub_1C43FD2D8();
  v218 = v9;
  v217 = sub_1C4EFF0C8();
  v10 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v11);
  v216 = sub_1C4EFF8A8();
  v12 = *(v216 - 1);
  v203 = v216 - 8;
  v209 = v12;
  v212 = v12;
  MEMORY[0x1EEE9AC00](v216 - 8);
  sub_1C43FD2D8();
  v14 = sub_1C43FD2C8(v13);
  v15 = v4(v14);
  sub_1C43FCDF8();
  v214 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v213 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v185 - v22;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = sub_1C43FBD18(v23);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2C8(&v185 - v25);
  v26 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v221 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
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
  sub_1C43FD2C8(&v185 - v33);
  v198 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v197 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v226 = v36;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v37 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v38 = swift_allocObject();
  v227 = xmmword_1C4F0D130;
  *(v38 + 16) = xmmword_1C4F0D130;
  v192 = v10;
  v39 = *(v10 + 16);
  v189 = v10 + 16;
  v188 = v39;
  v39(v38 + v37, v7, v217);
  sub_1C4D51ABC();
  v202 = v40;
  v200 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v41 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v227;
  v224 = v15;
  v225 = v8;
  v43 = *(v15 + 20);
  v219 = *(v8 + 16);
  v220 = v8 + 16;
  v195 = v43;
  v219(v42 + v41, v7 + v43, v228);
  sub_1C4D504A4();
  v201 = v44;
  sub_1C456902C(&qword_1EC0B8ED0, &unk_1C4F377B0);
  v45 = v212;
  v46 = sub_1C441613C();
  *(v46 + 16) = v227;
  v47 = *(v45 + 16);
  v203 = *(v15 + 24);
  v186 = v47;
  v187 = v45 + 16;
  v47(v46 + v7, v7 + v203, v216);
  sub_1C4D51DB8();
  v209 = v48;
  *(swift_allocObject() + 16) = v227;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v49 = v221[13];
  v50 = v204;
  sub_1C43FC448();
  v49();
  v51 = v205;
  sub_1C43FC448();
  v49();
  v52 = v206;
  sub_1C43FC448();
  v49();
  v53 = v207;
  sub_1C43FC448();
  v49();
  v54 = v208;
  sub_1C43FC448();
  v49();
  v55 = v54;
  sub_1C4EFDCD8();

  v56 = v221[1];
  v56(v55, v26);
  v56(v53, v26);
  v57 = v52;
  v58 = v219;
  v56(v57, v26);
  v56(v51, v26);
  v56(v50, v26);
  v59 = v228;
  v60 = v215;
  v61 = sub_1C4EFF8F8();
  v62 = v210;
  sub_1C440BAA8(v210, 1, 1, v61);
  v63 = v211(v226, v62);
  v64 = v224;
  v65 = v63;
  sub_1C482ADC8(v62);
  v66 = v214;
  v67 = v222;
  v68 = 0;
  v69 = v65[2];
  v221 = v65;
  if (!v69)
  {
    v70 = v193;
    v71 = v194;
    v72 = v216;
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v73 = sub_1C4F00978();
      sub_1C442B738(v73, qword_1EDDFECB8);
      v75 = v222;
      v74 = v223;
      sub_1C4430CAC(v223, v70, v222);
      sub_1C4430CAC(v74, v71, v75);
      v76 = sub_1C4F00968();
      v77 = sub_1C4F01CD8();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v224;
      if (v78)
      {
        v80 = swift_slowAlloc();
        *&v227 = swift_slowAlloc();
        v229 = v227;
        *v80 = 136315394;
        v81 = v190;
        v186(v190, v70 + *(v79 + 24), v72);
        sub_1C4453E9C(v70, v75);
        sub_1C4400524();
        sub_1C4882C0C(v82, v83, MEMORY[0x1E69A9A18]);
        v84 = sub_1C4F02858();
        v86 = v85;
        (*(v212 + 8))(v81, v72);
        v87 = sub_1C441D828(v84, v86, &v229);

        *(v80 + 4) = v87;
        *(v80 + 12) = 2080;
        v88 = v191;
        v89 = v217;
        v188(v191, v71, v217);
        v90 = v75;
        v91 = v89;
        sub_1C4453E9C(v71, v90);
        sub_1C440705C();
        sub_1C4882C0C(v92, v93, MEMORY[0x1E69A9840]);
        v94 = sub_1C4F02858();
        v96 = v95;
        sub_1C43FFB20();
        v97(v88, v91);
        v98 = sub_1C441D828(v94, v96, &v229);

        *(v80 + 14) = v98;
        _os_log_impl(&dword_1C43F8000, v76, v77, "GraphValidator: PS1 predicate does not exist for nested predicate %s with IntelligencePlatformID %s", v80, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
        sub_1C4453E9C(v71, v75);
        sub_1C4453E9C(v70, v75);
      }

      v72 = 0xD000000000000019;
      v229 = 0;
      v230 = 0xE000000000000000;
      sub_1C4F02248();

      v229 = 0x3A7463656A627573;
      v230 = 0xE900000000000020;
      sub_1C440705C();
      sub_1C4882C0C(v99, v100, MEMORY[0x1E69A9840]);
      v101 = sub_1C4F02858();
      MEMORY[0x1C6940010](v101);

      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA3990);
      sub_1C4400524();
      sub_1C4882C0C(v102, v103, MEMORY[0x1E69A9A18]);
      v104 = sub_1C4F02858();
      MEMORY[0x1C6940010](v104);

      MEMORY[0x1C6940010](0x636964657270202CLL, 0xEE0020203A657461);
      sub_1C44198BC();
      sub_1C4882C0C(v105, v106, MEMORY[0x1E69A9780]);
      v107 = sub_1C4F02858();
      MEMORY[0x1C6940010](v107);

      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v108 = v229;
      v109 = v230;
      v71 = v196;
      swift_isUniquelyReferenced_nonNull_native();
      v229 = *v71;
      sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
      sub_1C43FC438();
      if (__OFADD__(v112, v113))
      {
        break;
      }

      v114 = v110;
      v70 = v111;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      v115 = sub_1C4F02458();
      v121 = v229;
      if (v115)
      {
        v122 = sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
        if ((v70 & 1) != (v123 & 1))
        {
          goto LABEL_32;
        }

        v114 = v122;
      }

      *v71 = v121;
      if ((v70 & 1) == 0)
      {
        sub_1C44686DC(v114, 0xD000000000000021, 0x80000001C4FA3910, MEMORY[0x1E69E7CD0], v121);
      }

      sub_1C44869B4(&v229, v108, v109, v116, v117, v118, v119, v120, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);

      v65 = v221;
      v68 = sub_1C455B6CC;
      if (v221[2])
      {
        v59 = v228;
        v67 = v222;
        v64 = v224;
        v66 = v214;
        v60 = v215;
        v58 = v219;
        goto LABEL_14;
      }

      __break(1u);
LABEL_29:
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v216 = v68;
  *&v227 = *(v60 + 24);
  v124 = (v66[80] + 32) & ~v66[80];
  v125 = v213;
  sub_1C4430CAC(v65 + v124, v213, v67);
  v126 = v218;
  v58(v218, v125 + *(v64 + 20), v59);
  sub_1C4453E9C(v125, v67);
  v127 = v64;
  v217 = sub_1C4EFEB68();
  v129 = v128;
  v130 = *(v225 + 8);
  v225 += 8;
  v214 = v130;
  (v130)(v126, v59);
  v131 = v199;
  sub_1C4430CAC(v65 + v124, v199, v67);
  v132 = (v131 + *(v127 + 32));
  v133 = v65;
  v134 = *v132;
  v135 = v132[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v131, v67);
  v217 = sub_1C4A570F0(v217, v129, v134, v135);

  v215 = *(v127 + 28);
  v136 = sub_1C4EFEB68();
  v138 = v137;
  v212 = v124;
  sub_1C4430CAC(v133 + v124, v125, v67);
  v139 = (v125 + *(v127 + 32));
  v140 = *v139;
  v141 = v139[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v125, v67);
  v142 = sub_1C4A56CF4(v136, v138, v140, v141);

  v143 = *(v142 + 16);

  if (v143)
  {
    v144 = *(v217 + 16);

    if (v144)
    {
LABEL_19:
      sub_1C43FFB20();
      v151(v226, v198);

LABEL_27:
      sub_1C44239FC(v216, 0);
      sub_1C43FE9F0();
      return;
    }
  }

  else
  {
  }

  v145 = v218;
  sub_1C4EFEBB8();
  sub_1C44198BC();
  sub_1C4882C0C(v146, v147, MEMORY[0x1E69A9768]);
  v148 = v228;
  v149 = sub_1C4F010B8();
  v150 = v214;
  (v214)(v145, v148);
  if (v149)
  {
    goto LABEL_19;
  }

  v153 = v221;
  v152 = v222;
  v155 = v212;
  v154 = v213;
  sub_1C4430CAC(v221 + v212, v213, v222);
  v219(v145, v154 + *(v224 + 20), v148);
  sub_1C4453E9C(v154, v152);
  sub_1C44198BC();
  *&v227 = sub_1C4882C0C(v156, v157, MEMORY[0x1E69A9780]);
  v158 = sub_1C4F02858();
  v159 = v150;
  v161 = v160;
  (v159)(v145, v148);
  v229 = v158;
  v230 = v161;
  MEMORY[0x1C6940010](92, 0xE100000000000000);
  sub_1C4430CAC(v153 + v155, v154, v152);

  v162 = (v154 + *(v224 + 32));
  v163 = *v162;
  v164 = v162[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4453E9C(v154, v152);
  MEMORY[0x1C6940010](v163, v164);

  MEMORY[0x1C6940010](92, 0xE100000000000000);
  v165 = sub_1C4F02858();
  MEMORY[0x1C6940010](v165);

  v166 = v229;
  v167 = v230;
  v168 = v196;
  swift_isUniquelyReferenced_nonNull_native();
  v229 = *v168;
  sub_1C445FAA8(0xD000000000000019, 0x80000001C4FA3970);
  sub_1C43FC438();
  if (__OFADD__(v171, v172))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v173 = v169;
  v174 = v170;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  v175 = sub_1C4F02458();
  v181 = v229;
  if ((v175 & 1) == 0)
  {
LABEL_24:
    *v168 = v181;
    if ((v174 & 1) == 0)
    {
      sub_1C44686DC(v173, 0xD000000000000019, 0x80000001C4FA3970, MEMORY[0x1E69E7CD0], v181);
    }

    sub_1C44869B4(&v229, v166, v167, v176, v177, v178, v179, v180, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);

    sub_1C43FFB20();
    v184(v226, v198);
    goto LABEL_27;
  }

  v182 = sub_1C445FAA8(0xD000000000000019, 0x80000001C4FA3970);
  if ((v174 & 1) == (v183 & 1))
  {
    v173 = v182;
    goto LABEL_24;
  }

LABEL_32:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4880458()
{
  sub_1C43FBD3C();
  v154 = v1;
  v143 = v2;
  v153 = v3;
  v167 = v4;
  v166 = v5;
  v7 = v6;
  v171 = v0;
  v152 = v8;
  v10 = v9;
  v151 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v150 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v13);
  v14 = sub_1C4EFF0C8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v17 = sub_1C43FD2C8(v16);
  v168 = v7(v17);
  sub_1C43FCDF8();
  v155 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v140 - v21;
  v22 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2C8(&v140 - v24);
  v25 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v27 = v26;
  v160 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v140 - v35;
  v158 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v157 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v172 = v39;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v141 = sub_1C4F00F28();
  v178 = v141;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v40 = sub_1C441613C();
  v170 = xmmword_1C4F0D130;
  *(v40 + 16) = xmmword_1C4F0D130;
  v147 = v15;
  v41 = *(v15 + 16);
  v169 = v10;
  v148 = v14;
  v144 = v15 + 16;
  v142 = v41;
  v41(v40 + v14 - 8, v10, v14);
  sub_1C4D51ABC();
  v161 = v42;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v140 = sub_1C4EFEEF8();
  v43 = swift_allocObject();
  sub_1C443349C(v43);
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v44 = *(v27 + 104);
  v159 = v36;
  sub_1C4407074();
  v44();
  v45 = v33;
  sub_1C4407074();
  v44();
  v46 = v162;
  sub_1C4407074();
  v44();
  v47 = v163;
  sub_1C4407074();
  v44();
  v48 = v164;
  sub_1C4407074();
  v44();
  v49 = v172;
  sub_1C4EFDCD8();

  v50 = *(v160 + 8);
  v50(v48, v25);
  v50(v47, v25);
  v50(v46, v25);
  v50(v45, v25);
  v50(v159, v25);
  v51 = sub_1C4EFF8F8();
  v52 = v165;
  sub_1C440BAA8(v165, 1, 1, v51);
  v53 = v166(v49, v52);
  sub_1C482ADC8(v52);
  if (*(v53 + 16))
  {
    v54 = v156;
    v55 = v167;
    sub_1C4430CAC(v53 + ((*(v155 + 80) + 32) & ~*(v155 + 80)), v156, v167);

    v56 = (v54 + *(v168 + 32));
    v58 = *v56;
    v57 = v56[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453E9C(v54, v55);
    v59 = sub_1C4404C28();
    v61 = sub_1C4A5512C(v59, v60);
    v62 = sub_1C4428DA0(v61);

    if (v62)
    {
      v63 = sub_1C4EFEB68();
      v65 = sub_1C4A56CF4(v63, v64, v58, v57);

      v66 = *(v65 + 16);

      if (v66)
      {
      }

      else if (sub_1C4663244())
      {

        v112 = sub_1C4B5A9F8(&v175, 0xD000000000000012, 0x80000001C4FA38D0);
        if (*v113)
        {
          v173 = 40;
          v174 = 0xE100000000000000;
          v114 = sub_1C4404C28();
          MEMORY[0x1C6940010](v114);

          MEMORY[0x1C6940010](8236, 0xE200000000000000);
          sub_1C44198BC();
          v117 = sub_1C4882C0C(v115, v116, MEMORY[0x1E69A9780]);
          v118 = sub_1C4425168(v117);
          MEMORY[0x1C6940010](v118);

          MEMORY[0x1C6940010](41, 0xE100000000000000);
          sub_1C44869B4(&v177, v173, v174, v119, v120, v121, v122, v123, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
        }

        (v112)(&v175, 0);
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        sub_1C443349C(inited);
        v175 = 40;
        v176 = 0xE100000000000000;
        v125 = sub_1C4404C28();
        MEMORY[0x1C6940010](v125);

        MEMORY[0x1C6940010](8236, 0xE200000000000000);
        sub_1C44198BC();
        v128 = sub_1C4882C0C(v126, v127, MEMORY[0x1E69A9780]);
        v129 = sub_1C4425168(v128);
        MEMORY[0x1C6940010](v129);

        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v130 = v176;
        inited[2].n128_u64[0] = v175;
        inited[2].n128_u64[1] = v130;
        sub_1C4499940();
        v131 = v178;
        swift_isUniquelyReferenced_nonNull_native();
        v175 = v131;
        sub_1C4486BA8();
        v178 = v175;
      }

      v132 = v149;
      sub_1C4EFF888();
      sub_1C4400524();
      sub_1C4882C0C(v133, v134, MEMORY[0x1E69A9A08]);
      v135 = v151;
      v136 = sub_1C4F010B8();
      sub_1C43FFB20();
      v137(v132, v135);
      if ((v136 & 1) == 0)
      {
        sub_1C487F264();
      }

      sub_1C488206C();
      v138 = sub_1C4411DD4();
      v139(v138);
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v84 = swift_initStackObject();
      sub_1C443349C(v84);
      *(v85 + 32) = v58;
      *(v85 + 40) = v57;
      sub_1C4499940();
      v86 = v178;
      swift_isUniquelyReferenced_nonNull_native();
      v175 = v86;
      sub_1C4486BA8();
      v87 = sub_1C4411DD4();
      v88(v87);
    }

LABEL_26:
    sub_1C43FE9F0();
    return;
  }

  v67 = v145;
  v68 = v146;
  v69 = v147;
  v70 = v148;
  v71 = v167;

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDDFECB8);
  sub_1C4430CAC(v169, v67, v71);
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CD8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = v67;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v175 = v77;
    *v76 = 136315138;
    v142(v68, v75, v70);
    sub_1C4453E9C(v75, v71);
    sub_1C440705C();
    sub_1C4882C0C(v78, v79, MEMORY[0x1E69A9840]);
    v80 = sub_1C4F02858();
    v82 = v81;
    (*(v69 + 8))(v68, v70);
    v83 = sub_1C441D828(v80, v82, &v175);

    *(v76 + 4) = v83;
    _os_log_impl(&dword_1C43F8000, v73, v74, "GraphValidator: PS1 predicate does not exist for %s", v76, 0xCu);
    sub_1C440962C(v77);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    sub_1C4453E9C(v67, v71);
  }

  sub_1C440705C();
  sub_1C4882C0C(v89, v90, MEMORY[0x1E69A9840]);
  v91 = sub_1C4F02858();
  v93 = v92;
  v94 = v178;
  swift_isUniquelyReferenced_nonNull_native();
  v175 = v94;
  sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
  sub_1C43FC438();
  if (__OFADD__(v97, v98))
  {
    __break(1u);
  }

  else
  {
    v99 = v95;
    v100 = v96;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v101 = sub_1C4F02458();
    v102 = v175;
    if ((v101 & 1) == 0)
    {
LABEL_15:

      if ((v100 & 1) == 0)
      {
        sub_1C44686DC(v99, 0xD000000000000021, 0x80000001C4FA3910, MEMORY[0x1E69E7CD0], v102);
      }

      sub_1C44869B4(&v175, v91, v93, v105, v106, v107, v108, v109, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);

      v110 = sub_1C4411DD4();
      v111(v110);

      goto LABEL_26;
    }

    v103 = sub_1C445FAA8(0xD000000000000021, 0x80000001C4FA3910);
    if ((v100 & 1) == (v104 & 1))
    {
      v99 = v103;
      goto LABEL_15;
    }
  }

  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4881260()
{
  sub_1C43FBD3C();
  v0 = type metadata accessor for EventTriple(0);
  v115 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C43FD2D8();
  v114 = v1;
  v2 = type metadata accessor for GraphTriple(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FD2D8();
  v121 = v4;
  v5 = GraphStore.loadGraphTriples()();
  v116 = GraphStore.loadEventTriples()();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v6 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BE5E8, &unk_1C4F377A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x80000001C4FA38B0;
  type metadata accessor for GraphValidator.TriplePredicateCountValidator();
  v8 = swift_allocObject();

  sub_1C4881CB0(v9);
  *(inited + 48) = v8;
  sub_1C4F00F28();
  v119 = *(v5 + 2);
  if (!v119)
  {
    goto LABEL_39;
  }

  v10 = 0;
  v117 = v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v109 = v5;
  v112 = v3;
  do
  {
    if (v10 >= *(v5 + 2))
    {
      goto LABEL_80;
    }

    sub_1C4430CAC(&v117[*(v3 + 72) * v10], v121, type metadata accessor for GraphTriple);
    sub_1C465DBBC();
    sub_1C4414B7C(v11, v12, type metadata accessor for GraphTriple, sub_1C498DB80);
    v14 = v13;

    v15 = sub_1C4404C28();
    sub_1C4453E9C(v15, v16);
    if (!*(v14 + 16))
    {

      goto LABEL_38;
    }

    v17 = 0;
    sub_1C4408B68();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    while (v20)
    {
LABEL_11:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = *(*(v14 + 56) + 8 * (v24 | (v17 << 6)));
      v26 = *(v6 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v26 && (sub_1C4417348(), (v27 & 1) != 0))
      {
        if (*(v6 + 16) && (v28 = sub_1C4417348(), (v29 & 1) != 0))
        {
          v46 = *(*(v6 + 56) + 8 * v28);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v108 = sub_1C44999E0(v25, v46);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C4417348();
          sub_1C43FD8D0();
          if (v34)
          {
            goto LABEL_86;
          }

          v49 = v47;
          v106 = v48;
          sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
          sub_1C440D51C();
          if (sub_1C4F02458())
          {
            v50 = sub_1C4404BCC();
            sub_1C445FAA8(v50, v51);
            sub_1C442DFC0();
            if (!v39)
            {
              goto LABEL_90;
            }

            v49 = v52;
            if ((v53 & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_35:

            sub_1C44043D4();
            *(v57 + 8 * v49) = v108;
          }

          else
          {
            if (v106)
            {
              goto LABEL_35;
            }

LABEL_32:
            sub_1C4405CBC();
            sub_1C4432450(v54);
            sub_1C442BBF0((v55 + 16 * v49));
            *(v56 + 8 * v49) = v108;
            sub_1C4418AE4();
            if (v34)
            {
              goto LABEL_88;
            }

LABEL_33:
            *(v6 + 16) = v44;
          }
        }

        else
        {

          sub_1C4417348();
          v31 = v30;

          if (v31)
          {
            swift_isUniquelyReferenced_nonNull_native();
            sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
            sub_1C440D51C();
            sub_1C4F02458();
            sub_1C4409D18();

            sub_1C4F02478();
          }
        }
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4417348();
        sub_1C43FD8D0();
        if (v34)
        {
          goto LABEL_82;
        }

        v107 = v33;
        v105 = v32;
        sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
        sub_1C440D51C();
        if (sub_1C4F02458())
        {
          v35 = sub_1C4404BCC();
          sub_1C445FAA8(v35, v36);
          sub_1C442DFC0();
          if (!v39)
          {
            goto LABEL_90;
          }

          v40 = v37;
          if ((v38 & 1) == 0)
          {
LABEL_22:
            sub_1C4405CBC();
            sub_1C4432450(v41);
            sub_1C442BBF0((v42 + 16 * v40));
            *(v43 + 8 * v40) = v25;
            sub_1C4418AE4();
            if (v34)
            {
              goto LABEL_84;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v40 = v105;
          if ((v107 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        sub_1C44043D4();
        *(v45 + 8 * v40) = v25;
      }
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v23 >= v22)
      {
        break;
      }

      v20 = *(v14 + 8 * v23);
      ++v17;
      if (v20)
      {
        v17 = v23;
        goto LABEL_11;
      }
    }

    v5 = v109;
    v3 = v112;
LABEL_38:
    ++v10;
  }

  while (v10 != v119);
LABEL_39:

  v58 = v116;
  v122 = *(v116 + 16);
  if (!v122)
  {
LABEL_77:

    sub_1C43FE9F0();
    return;
  }

  v59 = 0;
  v120 = v116 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
  while (1)
  {
    if (v59 >= *(v58 + 16))
    {
      goto LABEL_81;
    }

    sub_1C4430CAC(v120 + *(v115 + 72) * v59, v114, type metadata accessor for EventTriple);
    sub_1C465DBBC();
    sub_1C4414B7C(v60, v61, type metadata accessor for EventTriple, sub_1C498DBE8);
    v63 = v62;

    v64 = sub_1C4404C28();
    sub_1C4453E9C(v64, v65);
    if (*(v63 + 16))
    {
      break;
    }

LABEL_76:
    ++v59;
    v58 = v116;
    if (v59 == v122)
    {
      goto LABEL_77;
    }
  }

  v66 = 0;
  sub_1C4408B68();
  v69 = v68 & v67;
  v71 = (v70 + 63) >> 6;
  while (v69)
  {
LABEL_49:
    v73 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v74 = *(*(v63 + 56) + 8 * (v73 | (v66 << 6)));
    v75 = *(v6 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v75 || (sub_1C4417348(), (v76 & 1) == 0))
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4417348();
      sub_1C43FD8D0();
      if (v34)
      {
        goto LABEL_83;
      }

      v113 = v82;
      v110 = v81;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      sub_1C440D51C();
      if (sub_1C4F02458())
      {
        v83 = sub_1C4404BCC();
        sub_1C445FAA8(v83, v84);
        sub_1C442DFC0();
        if (!v39)
        {
          goto LABEL_90;
        }

        v87 = v85;
        if (v86)
        {
LABEL_64:

          sub_1C44043D4();
          *(v92 + 8 * v87) = v74;

          continue;
        }
      }

      else
      {
        v87 = v110;
        if (v113)
        {
          goto LABEL_64;
        }
      }

      sub_1C4405CBC();
      sub_1C4432450(v88);
      sub_1C442BBF0((v89 + 16 * v87));
      *(v90 + 8 * v87) = v74;
      sub_1C4418AE4();
      if (v34)
      {
        goto LABEL_85;
      }

      goto LABEL_71;
    }

    if (*(v6 + 16) && (v77 = sub_1C4417348(), (v78 & 1) != 0))
    {
      v93 = *(*(v6 + 56) + 8 * v77);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v118 = sub_1C44999E0(v74, v93);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4417348();
      sub_1C43FD8D0();
      if (v34)
      {
        goto LABEL_87;
      }

      v96 = v94;
      v111 = v95;
      sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
      sub_1C440D51C();
      if (sub_1C4F02458())
      {
        v97 = sub_1C4404BCC();
        sub_1C445FAA8(v97, v98);
        sub_1C442DFC0();
        if (!v39)
        {
          goto LABEL_90;
        }

        v96 = v99;
        if ((v100 & 1) == 0)
        {
LABEL_70:
          sub_1C4405CBC();
          sub_1C4432450(v101);
          sub_1C442BBF0((v102 + 16 * v96));
          *(v103 + 8 * v96) = v118;
          sub_1C4418AE4();
          if (v34)
          {
            goto LABEL_89;
          }

LABEL_71:
          *(v6 + 16) = v91;
          continue;
        }
      }

      else if ((v111 & 1) == 0)
      {
        goto LABEL_70;
      }

      sub_1C44043D4();
      *(v104 + 8 * v96) = v118;
    }

    else
    {

      sub_1C4417348();
      v80 = v79;

      if (v80)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
        sub_1C440D51C();
        sub_1C4F02458();
        sub_1C4409D18();

        sub_1C4F02478();
      }
    }
  }

  while (1)
  {
    v72 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v72 >= v71)
    {

      goto LABEL_76;
    }

    v69 = *(v63 + 8 * v72);
    ++v66;
    if (v69)
    {
      v66 = v72;
      goto LABEL_49;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4881CB0(uint64_t a1)
{
  v1 = sub_1C4A55968();
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = 48 * v2;
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    ++v2;
    v7 = v6 + 48;
    v8 = *(v1 + v6 + 72);
    v6 += 48;
    if ((v8 & 1) == 0)
    {
      v9 = *(v1 + v7 - 16);
      v10 = *(v1 + v7 - 8);
      v11 = *(v1 + v7);
      v12 = *(v1 + v7 + 8);
      v13 = *(v1 + v7 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C459E6F0(0, *(v5 + 16) + 1, 1);
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C459E6F0(v14 > 1, v15 + 1, 1);
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 48 * v15;
      *(v16 + 32) = v28;
      *(v16 + 40) = v10;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      *(v16 + 72) = 0;
      goto LABEL_2;
    }
  }

  v17 = *(v5 + 16);
  if (v17)
  {
    sub_1C459E6D0(0, v17, 0);
    v18 = 0;
    v19 = (v5 + 72);
    while (v18 < *(v5 + 16))
    {
      if (*v19)
      {
        goto LABEL_23;
      }

      v20 = v5;
      v21 = *(v19 - 4);
      v22 = *(v19 - 1);
      v29 = *(v19 - 5);
      v23 = *(v4 + 16);
      v24 = *(v4 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v23 >= v24 >> 1)
      {
        sub_1C459E6D0((v24 > 1), v23 + 1, 1);
      }

      ++v18;
      *(v4 + 16) = v23 + 1;
      v25 = (v4 + 24 * v23);
      v25[4] = v29;
      v25[5] = v21;
      v25[6] = v22;
      v19 += 48;
      v5 = v20;
      if (v17 == v18)
      {

        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v26 = sub_1C4BA04F4(v4);

  *(v27 + 16) = v26;
  *(v27 + 24) = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4881F24()
{
  sub_1C4881F7C(MEMORY[0x1E69E7CF8]);
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4881F7C(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));
  return v1;
}

uint64_t GraphValidator.__deallocating_deinit()
{
  GraphValidator.deinit();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

void sub_1C488206C()
{
  sub_1C43FBD3C();
  v43 = v0;
  v2 = v1;
  v46 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v39 - v11;
  v40 = v2;
  sub_1C4430CAC(v5, &v39 - v11, v2);
  v12 = v7 + 64;
  v13 = 1 << *(v7 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v45 = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  v41 = xmmword_1C4F0D130;
  while (v15)
  {
LABEL_9:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = (v17 << 10) | (16 * v19);
    v21 = (*(v45 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v45 + 56) + v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_unknownObjectRetain();
    v25 = v43(v44, v24);
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      if (*(*v46 + 16) && (sub_1C445FAA8(v22, v23), (v29 & 1) != 0))
      {
        v35 = sub_1C4B5A9F8(v47, v22, v23);
        if (*v36)
        {
          sub_1C44869B4(v48, v27, v28, v30, v31, v32, v33, v34, v39, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8]);
        }

        (v35)(v47, 0);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        *(inited + 16) = v41;
        *(inited + 32) = v27;
        *(inited + 40) = v28;
        sub_1C4499940();
        v38 = v46;
        swift_isUniquelyReferenced_nonNull_native();
        v47[0] = *v38;
        sub_1C4486BA8();

        swift_unknownObjectRelease();
        *v38 = v47[0];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      sub_1C4453E9C(v44, v40);

      sub_1C43FE9F0();
      return;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4882304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for EventTriple(0);
  v49 = v13;
  v50 = sub_1C4882C0C(&qword_1EDDEBC08, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v14 = sub_1C4422F90(v48);
  sub_1C4430CAC(a1, v14, type metadata accessor for EventTriple);
  v41 = sub_1C4409678(v48, v49);
  v15 = *(v5 + 16);
  v15(v12, v14 + *(v13 + 20), v4);
  v16 = sub_1C4EFEB68();
  v18 = v17;
  v42 = *(v5 + 8);
  v42(v12, v4);
  swift_beginAccess();
  v43 = a2;
  v19 = sub_1C465C024(v16, v18, *(a2 + 16));
  LOBYTE(a2) = v20;

  swift_endAccess();
  v21 = 0;
  if ((a2 & 1) == 0)
  {
    if (v19 < 1)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1C4F02248();
      v44 = v46;
      v45 = v47;
      MEMORY[0x1C6940010](0x7461636964657250, 0xEA00000000002065);
      v39 = *(v13 + 20);
      v23 = v41;
      v15(v9, &v41[v39], v4);
      v24 = sub_1C4EFEB68();
      v26 = v25;
      v27 = v42;
      v42(v9, v4);
      MEMORY[0x1C6940010](v24, v26);

      MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FA3940);
      v28 = v40;
      v15(v40, &v23[v39], v4);
      v29 = sub_1C4EFEB68();
      v31 = v30;
      v27(v28, v4);
      v32 = v43;
      swift_beginAccess();
      v33 = sub_1C465C024(v29, v31, *(v32 + 24));
      LOBYTE(v29) = v34;
      swift_endAccess();

      v35 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v29 & 1) == 0)
      {
        v35 = v33;
      }

      v46 = v35;
      v36 = sub_1C4F02858();
      MEMORY[0x1C6940010](v36);

      MEMORY[0x1C6940010](0x6465776F6C6C6120, 0xE900000000000029);
      v21 = v44;
    }

    else
    {
      v15(v9, &v41[*(v13 + 20)], v4);
      sub_1C4EFEB68();
      v42(v9, v4);
      v22 = v43;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v22 + 16);
      sub_1C4662330();
      *(v22 + 16) = v44;

      swift_endAccess();
      v21 = 0;
    }
  }

  sub_1C440962C(v48);
  return v21;
}

uint64_t sub_1C4882788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for GraphTriple(0);
  v49 = v13;
  v50 = sub_1C4882C0C(&qword_1EC0BAA28, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v14 = sub_1C4422F90(v48);
  sub_1C4430CAC(a1, v14, type metadata accessor for GraphTriple);
  v41 = sub_1C4409678(v48, v49);
  v15 = *(v5 + 16);
  v15(v12, v14 + *(v13 + 20), v4);
  v16 = sub_1C4EFEB68();
  v18 = v17;
  v42 = *(v5 + 8);
  v42(v12, v4);
  swift_beginAccess();
  v43 = a2;
  v19 = sub_1C465C024(v16, v18, *(a2 + 16));
  LOBYTE(a2) = v20;

  swift_endAccess();
  v21 = 0;
  if ((a2 & 1) == 0)
  {
    if (v19 < 1)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1C4F02248();
      v44 = v46;
      v45 = v47;
      MEMORY[0x1C6940010](0x7461636964657250, 0xEA00000000002065);
      v39 = *(v13 + 20);
      v23 = v41;
      v15(v9, &v41[v39], v4);
      v24 = sub_1C4EFEB68();
      v26 = v25;
      v27 = v42;
      v42(v9, v4);
      MEMORY[0x1C6940010](v24, v26);

      MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FA3940);
      v28 = v40;
      v15(v40, &v23[v39], v4);
      v29 = sub_1C4EFEB68();
      v31 = v30;
      v27(v28, v4);
      v32 = v43;
      swift_beginAccess();
      v33 = sub_1C465C024(v29, v31, *(v32 + 24));
      LOBYTE(v29) = v34;
      swift_endAccess();

      v35 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v29 & 1) == 0)
      {
        v35 = v33;
      }

      v46 = v35;
      v36 = sub_1C4F02858();
      MEMORY[0x1C6940010](v36);

      MEMORY[0x1C6940010](0x6465776F6C6C6120, 0xE900000000000029);
      v21 = v44;
    }

    else
    {
      v15(v9, &v41[*(v13 + 20)], v4);
      sub_1C4EFEB68();
      v42(v9, v4);
      v22 = v43;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v22 + 16);
      sub_1C4662330();
      *(v22 + 16) = v44;

      swift_endAccess();
      v21 = 0;
    }
  }

  sub_1C440962C(v48);
  return v21;
}

uint64_t sub_1C4882C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GroupMatcher(uint64_t a1)
{
  result = qword_1EDDF8B08;
  if (!qword_1EDDF8B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GroupMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t GroupMatcher.stateStore.getter()
{
  type metadata accessor for GroupMatcher(0);
}

uint64_t GroupMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GroupMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for GroupMatcher(0);
  sub_1C4EFCF48();
  *(a4 + v8[9]) = 1056964608;
  sub_1C440053C();
  sub_1C44718CC(a1, a4);
  sub_1C447200C(a2, a4 + v8[5]);
  *(a4 + v8[6]) = v7;
  v9 = *(a1 + *(type metadata accessor for PhaseStores(0) + 28));

  result = sub_1C44854B4(a1, type metadata accessor for PhaseStores);
  *(a4 + v8[7]) = v9;
  return result;
}

float sub_1C4882ED0(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v51 - v12;
  v63 = type metadata accessor for EntityTriple(0);
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v51 - v20;
  v21 = 0;
  v22 = *(a1 + 16);
  v59 = a1;
  v60 = v22;
  v65 = (v4 + 8);
  while (1)
  {
    v23 = 0.0;
    if (v60 == v21)
    {
      return v23;
    }

    v24 = *(v58 + 72);
    v57 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = v24;
    sub_1C44718CC(v59 + v57 + v24 * v21, v18);
    sub_1C4EFE558();
    sub_1C4885B38(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v68 == v66 && v69 == v67)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1C4F02938();
    }

    v27 = *v65;
    (*v65)(v64, v3);

    if (v26)
    {
      goto LABEL_17;
    }

    sub_1C4EFE7E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v68 == v66 && v69 == v67)
    {
      v27(v10, v3);

LABEL_17:
      v30 = v53;
      sub_1C447200C(v18, v53);
      v31 = (v30 + *(v63 + 32));
      v32 = v31[1];
      v64 = *v31;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v30, type metadata accessor for EntityTriple);
      v33 = *(v54 + 16);
      v34 = v54 + v57;
      while (1)
      {
        v35 = v56;
        if (!v33)
        {

          return v23;
        }

        sub_1C44718CC(v34, v62);
        sub_1C4EFE558();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v68 == v66 && v69 == v67)
        {
          break;
        }

        v37 = sub_1C4F02938();
        v38 = v35;
        v39 = v37;
        v27(v38, v3);

        if (v39)
        {
          goto LABEL_31;
        }

        v35 = v55;
        sub_1C4EFE7E8();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v68 == v66 && v69 == v67)
        {
          break;
        }

        v41 = sub_1C4F02938();
        v42 = v35;
        v43 = v41;
        v27(v42, v3);

        if (v43)
        {
          goto LABEL_31;
        }

        sub_1C44854B4(v62, type metadata accessor for EntityTriple);
        v34 += v61;
        --v33;
      }

      v27(v35, v3);

LABEL_31:
      v44 = v52;
      sub_1C447200C(v62, v52);
      v45 = (v44 + *(v63 + 32));
      v47 = *v45;
      v46 = v45[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v44, type metadata accessor for EntityTriple);
      if (v47 == v64 && v46 == v32)
      {
      }

      else
      {
        v49 = sub_1C4F02938();

        if ((v49 & 1) == 0)
        {
          return v23;
        }
      }

      return 1.0;
    }

    v29 = sub_1C4F02938();
    v27(v10, v3);

    if (v29)
    {
      goto LABEL_17;
    }

    sub_1C44854B4(v18, type metadata accessor for EntityTriple);
    ++v21;
  }
}

float sub_1C48835BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v80[1] = a6;
  v84 = a4;
  v85 = a5;
  v88 = a2;
  v87 = a3(0);
  sub_1C43FCDF8();
  v83 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v94 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v80[0] = v80 - v12;
  v13 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v86 = v80 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v89 = v80 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  v93 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v90 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v81 = v80 - v33;
  v82 = v19;
  v34 = 0;
  v35 = *(a1 + 16);
  v91 = a1;
  v92 = v35;
  v95 = (v15 + 8);
  while (1)
  {
    v36 = 0.0;
    if (v92 == v34)
    {
      return v36;
    }

    sub_1C44718CC(v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v34, v31);
    sub_1C4EFE558();
    sub_1C4885B38(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    v37 = v96;
    sub_1C44132BC();
    v40 = v40 && v37 == v26;
    if (v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_1C43FBEC0(v38, v37, v39);
    }

    v42 = *v95;
    (*v95)(v26, v13);

    if (v41)
    {
      goto LABEL_17;
    }

    v43 = v89;
    sub_1C4EFE7E8();
    sub_1C43FD4F4();
    v44 = v43;
    sub_1C43FD4F4();
    v45 = v96;
    sub_1C44132BC();
    if (v40 && v45 == v44)
    {
      v51 = sub_1C4400554();
      (v42)(v51);

LABEL_17:
      v52 = v81;
      sub_1C447200C(v31, v81);
      v53 = (v52 + *(v93 + 32));
      v54 = v53[1];
      v92 = *v53;
      v93 = v54;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v52, type metadata accessor for EntityTriple);
      v55 = 0;
      v56 = *(v88 + 16);
      while (1)
      {
        v57 = v86;
        if (v56 == v55)
        {

          return v36;
        }

        sub_1C44718CC(v88 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v55, v94);
        sub_1C4EFE558();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        v58 = v96;
        sub_1C44132BC();
        if (v40 && v58 == v57)
        {
          v72 = v57;
          goto LABEL_33;
        }

        v62 = sub_1C43FBEC0(v59, v58, v60);
        v42(v57, v13);

        if (v62)
        {
          goto LABEL_34;
        }

        v63 = v82;
        sub_1C4EFE7E8();
        v64 = v63;
        sub_1C43FD4F4();
        v65 = v63;
        sub_1C43FD4F4();
        v66 = v96;
        sub_1C44132BC();
        if (v40 && v66 == v65)
        {
          break;
        }

        v70 = sub_1C43FBEC0(v67, v66, v68);
        v71 = sub_1C4400554();
        (v42)(v71);

        if (v70)
        {
          goto LABEL_34;
        }

        sub_1C44854B4(v94, v85);
        ++v55;
      }

      v72 = v64;
LABEL_33:
      v42(v72, v13);

LABEL_34:
      v73 = v80[0];
      sub_1C447200C(v94, v80[0]);
      v74 = (v73 + *(v87 + 32));
      v76 = *v74;
      v75 = v74[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v73, v85);
      if (v76 == v92 && v75 == v93)
      {
      }

      else
      {
        v78 = sub_1C4F02938();

        if ((v78 & 1) == 0)
        {
          return v36;
        }
      }

      return 1.0;
    }

    v49 = sub_1C43FBEC0(v46, v45, v47);
    v50 = sub_1C4400554();
    (v42)(v50);

    if (v49)
    {
      goto LABEL_17;
    }

    sub_1C44854B4(v31, type metadata accessor for EntityTriple);
    ++v34;
  }
}

uint64_t sub_1C4883C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v71 = a3;
  v4 = sub_1C4EF9CD8();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = v3;
  v27 = v81;
  result = sub_1C4ACE6A4();
  if (!v27)
  {
    v29 = v10;
    v68 = v22;
    v69 = v19;
    v70 = 0;
    v81 = v13;
    v30 = v76;
    v31 = v77;
    v80 = v25;
    v32 = v26;
    if (v77)
    {
      sub_1C44F1938(v77, v16);
      v33 = type metadata accessor for GraphTriple(0);
      v34 = v29;
      if (sub_1C44157D4(v16, 1, v33) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
        v35 = 1;
      }

      else
      {
        (*(v75 + 16))(v80, v16, v30);
        sub_1C44854B4(v16, type metadata accessor for GraphTriple);
        v35 = 0;
      }

      v36 = v79;
      v37 = v81;
    }

    else
    {
      v35 = 1;
      v36 = v79;
      v37 = v81;
      v34 = v29;
    }

    v38 = v11;
    sub_1C440BAA8(v80, v35, 1, v30);
    v39 = v78;
    sub_1C44D0BD8(v78, v34);
    if (sub_1C44157D4(v34, 1, v38) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v80;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Group Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v34, v37);
      if (v31)
      {
        v47 = sub_1C48835BC(v39, v31, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v71;
      v49 = v75;
      v50 = v68;
      v51 = type metadata accessor for GroupMatcher(0);
      v52 = *(v51 + 36);
      v79 = v32;
      v53 = *&v32[v52];
      v54 = v80;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v80;
        sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v30);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v30) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v49 + 32))(v36, v55, v30);
        v78 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v79;
        (*(*(v57 - 8) + 16))(v48, &v79[v56], v57);
        v59 = v36;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v49 + 16);
        v62 = v81;
        v61(v48 + v60[5], v81, v30);
        v61(v48 + v60[6], v59, v30);
        v63 = v72;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v65 = v64;
        (*(v73 + 8))(v63, v74);
        (*(v49 + 8))(v59, v30);
        sub_1C44854B4(v62, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v66 = v58[*(v78 + 24)];
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v65;
        *(v48 + v60[9]) = v66;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4884418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v75 = a1;
  v73 = a3;
  v70 = sub_1C4EF9CD8();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = v77;
  result = sub_1C4ACE6A4();
  if (!v26)
  {
    v77 = v8;
    v63 = v22;
    v64 = v19;
    v65 = 0;
    v66 = v7;
    v67 = v10;
    v28 = v71;
    v29 = v72;
    v76 = v25;
    v30 = v73;
    v31 = v74;
    if (v74)
    {
      sub_1C44D0BD8(v74, v16);
      v32 = v28;
      if (sub_1C44157D4(v16, 1, v77) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v76, v16, v29);
        sub_1C44854B4(v16, type metadata accessor for EntityTriple);
        v33 = 0;
      }
    }

    else
    {
      v33 = 1;
      v32 = v71;
    }

    v34 = v75;
    sub_1C440BAA8(v76, v33, 1, v29);
    sub_1C44D0BD8(v34, v13);
    if (sub_1C44157D4(v13, 1, v77) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4F00978();
      sub_1C442B738(v35, qword_1EDE2DE10);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v76;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Group Matcher: skipping entityTriples are empty", v40, 2u);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v13, v67);
      if (v31)
      {
        v42 = sub_1C4882ED0(v34, v31);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v30;
      v44 = v66;
      v45 = v63;
      v46 = type metadata accessor for GroupMatcher(0);
      v47 = *(v46 + 36);
      v77 = v3;
      v48 = *(v3 + v47);
      v49 = v76;
      v50 = v64;
      if (v42 <= v48)
      {
        sub_1C4EFF008();
        v49 = v76;
        sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v45, 0, 1, v29);
        sub_1C44DDDBC(v45, v49);
        v42 = v48;
      }

      sub_1C457E858(v49, v50);
      if (sub_1C44157D4(v50, 1, v29) == 1)
      {
        sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v32 + 32))(v44, v50, v29);
        v75 = v46;
        v51 = *(v46 + 32);
        v52 = sub_1C4EFD548();
        v53 = v77;
        (*(*(v52 - 8) + 16))(v43, v77 + v51, v52);
        v54 = v29;
        v55 = type metadata accessor for EntityMatch(0);
        v56 = v32;
        v57 = *(v32 + 16);
        v58 = v67;
        v57(v43 + v55[5], v67, v54);
        v57(v43 + v55[6], v44, v54);
        v59 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v68 + 8))(v59, v70);
        (*(v56 + 8))(v44, v54);
        sub_1C44854B4(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v53 + *(v75 + 24));
        *(v43 + v55[7]) = v42;
        *(v43 + v55[8]) = v61;
        *(v43 + v55[9]) = v62;
        *(v43 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4884B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v71 = a3;
  v4 = sub_1C4EF9CD8();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = v3;
  v27 = v81;
  result = sub_1C4ACE6A4();
  if (!v27)
  {
    v29 = v10;
    v68 = v22;
    v69 = v19;
    v70 = 0;
    v81 = v13;
    v30 = v76;
    v31 = v77;
    v80 = v25;
    v32 = v26;
    if (v77)
    {
      sub_1C486854C(v77, v16);
      v33 = type metadata accessor for ConstructionGraphTriple(0);
      v34 = v29;
      if (sub_1C44157D4(v16, 1, v33) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
        v35 = 1;
      }

      else
      {
        (*(v75 + 16))(v80, v16, v30);
        sub_1C44854B4(v16, type metadata accessor for ConstructionGraphTriple);
        v35 = 0;
      }

      v36 = v79;
      v37 = v81;
    }

    else
    {
      v35 = 1;
      v36 = v79;
      v37 = v81;
      v34 = v29;
    }

    v38 = v11;
    sub_1C440BAA8(v80, v35, 1, v30);
    v39 = v78;
    sub_1C44D0BD8(v78, v34);
    if (sub_1C44157D4(v34, 1, v38) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v80;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Group Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v34, v37);
      if (v31)
      {
        v47 = sub_1C48835BC(v39, v31, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v71;
      v49 = v75;
      v50 = v68;
      v51 = type metadata accessor for GroupMatcher(0);
      v52 = *(v51 + 36);
      v79 = v32;
      v53 = *&v32[v52];
      v54 = v80;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v80;
        sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v30);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v30) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v49 + 32))(v36, v55, v30);
        v78 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v79;
        (*(*(v57 - 8) + 16))(v48, &v79[v56], v57);
        v59 = v36;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v49 + 16);
        v62 = v81;
        v61(v48 + v60[5], v81, v30);
        v61(v48 + v60[6], v59, v30);
        v63 = v72;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v65 = v64;
        (*(v73 + 8))(v63, v74);
        (*(v49 + 8))(v59, v30);
        sub_1C44854B4(v62, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v66 = v58[*(v78 + 24)];
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v65;
        *(v48 + v60[9]) = v66;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t GroupMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4885408, 0, 0);
}

uint64_t sub_1C4885408()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for GroupMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C488596C;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4885B80;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4641DC0();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA538, &qword_1C4F377D0);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4885804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C488587C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return GroupMatcher.execute()();
}

uint64_t sub_1C488599C(uint64_t a1)
{
  result = sub_1C4885B38(&qword_1EDDEB618, type metadata accessor for GroupMatcher, &protocol conformance descriptor for GroupMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48859F4(uint64_t a1)
{
  result = sub_1C4885B38(qword_1EDDEB628, type metadata accessor for GroupMatcher, &protocol conformance descriptor for GroupMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4885A74(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StateStore(319);
      if (v4 <= 0x3F)
      {
        result = sub_1C4EFD548();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4885B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4885BA8()
{
  if (qword_1EC0B70C8 != -1)
  {
    swift_once();
  }

  qword_1EC152210 = qword_1EC0C3728;
  unk_1EC152218 = *&qword_1EC0C3730;
  qword_1EC152228 = qword_1EC0C3740;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4885C28(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BE618, &qword_1C4F37968);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C488632C();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14 = 1;
    sub_1C4F02738();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4885E04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BE608, &unk_1C4F37958);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C488632C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v15 = v6;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v10 = sub_1C4402F74();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1C488607C(uint64_t a1)
{
  v2 = sub_1C488632C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48860B8(uint64_t a1)
{
  v2 = sub_1C488632C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C48860F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6BD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152228;
  *a1 = qword_1EC152210;
  *(a1 + 8) = unk_1EC152218;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4886178@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4885E04(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C48861D8(uint64_t a1)
{
  result = sub_1C4886200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4886200()
{
  result = qword_1EC0BE5F0;
  if (!qword_1EC0BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE5F0);
  }

  return result;
}

unint64_t sub_1C4886254(uint64_t a1)
{
  *(a1 + 8) = sub_1C4886284();
  result = sub_1C48862D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4886284()
{
  result = qword_1EC0BE5F8;
  if (!qword_1EC0BE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE5F8);
  }

  return result;
}

unint64_t sub_1C48862D8()
{
  result = qword_1EC0BE600;
  if (!qword_1EC0BE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE600);
  }

  return result;
}

unint64_t sub_1C488632C()
{
  result = qword_1EC0BE610;
  if (!qword_1EC0BE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Handle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4886460()
{
  result = qword_1EC0BE620;
  if (!qword_1EC0BE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE620);
  }

  return result;
}

unint64_t sub_1C48864B8()
{
  result = qword_1EC0BE628;
  if (!qword_1EC0BE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE628);
  }

  return result;
}

unint64_t sub_1C4886510()
{
  result = qword_1EC0BE630;
  if (!qword_1EC0BE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE630);
  }

  return result;
}

uint64_t sub_1C4886564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v75 = a3;
  v86 = *MEMORY[0x1E69E9840];
  v79 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v77 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v80 = v11;
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v70 - v14;
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v70 - v16;
  v18 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v73 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = sub_1C4F01188();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v31 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v31 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    return 0;
  }

  v72 = v9;
  sub_1C4F01178();
  v74 = sub_1C4F01148();
  v33 = v32;
  (*(v26 + 8))(v30, v24);
  if (v33 >> 60 == 15)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C442B738(v34, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v84 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1C441D828(a1, a2, &v84);
      _os_log_impl(&dword_1C43F8000, v35, v36, "HashGenerator: Unable to convert identifier to UTF-8 data: %s", v37, 0xCu);
      sub_1C440962C(v38);
      MEMORY[0x1C6942830](v38, -1, -1);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    return 0;
  }

  v40 = sub_1C4886C68();
  if (v41 >> 60 == 15)
  {
    sub_1C441DFEC(v74, v33);
    return 0;
  }

  v42 = v40;
  v43 = v41;
  v84 = v74;
  v85 = v33;
  sub_1C44344B8(v74, v33);
  v70 = v42;
  sub_1C44F9684(v42, v43);
  sub_1C4467FE0(v75, v17);
  v44 = sub_1C44157D4(v17, 1, v18);
  v71 = v33;
  if (v44 == 1)
  {
    sub_1C44686E4(v17);
  }

  else
  {
    v45 = v73;
    v46 = sub_1C4404BCC();
    v47(v46);
    sub_1C4EF9AD8();
    v82 = v48;
    v49 = sub_1C4464F38(&v82, &v83);
    v51 = v50;
    v52 = v84;
    v53 = v85;
    v82 = v49;
    v83 = v50;
    sub_1C44344B8(v49, v50);
    sub_1C44F9684(v52, v53);
    sub_1C4434000(v49, v51);
    (*(v45 + 8))(v23, v18);
    sub_1C4434000(v84, v85);
    v84 = v82;
    v85 = v83;
  }

  v54 = v72;
  sub_1C4886F14();
  v55 = v79;
  sub_1C4F00DB8();
  v56 = sub_1C4404BCC();
  sub_1C44344B8(v56, v57);
  v58 = sub_1C4404BCC();
  sub_1C4498FD8(v58, v59, v54);
  v60 = sub_1C4404BCC();
  sub_1C4434000(v60, v61);
  v62 = v78;
  sub_1C4F00DA8();
  (*(v77 + 8))(v54, v55);
  v64 = v80;
  v63 = v81;
  v65 = v76;
  (*(v80 + 16))(v76, v62, v81);
  v66 = sub_1C44D5F88(v65);
  v68 = v67;
  v39 = sub_1C4EF9A48();
  sub_1C4434000(v66, v68);
  sub_1C441DFEC(v70, v43);
  sub_1C441DFEC(v74, v71);
  (*(v64 + 8))(v62, v63);
  sub_1C4434000(v84, v85);
  return v39;
}

void sub_1C4886B98()
{
  v0 = sub_1C46B6F7C();
  sub_1C4886C08();
  v1 = sub_1C4F01108();

  [v0 removeObjectForKey_];
}

unint64_t sub_1C4886C08()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = 0xD000000000000012;
    *(v0 + 24) = 0xD000000000000012;
    *(v0 + 32) = 0x80000001C4FA3A70;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4886C68()
{
  v1 = sub_1C46B6F7C();
  sub_1C4886C08();
  v2 = sub_1C4F01108();

  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_1C4EF9A68();
LABEL_5:

    return v4;
  }

  v4 = sub_1C4886D78();
  if (v5 >> 60 != 15)
  {
    v6 = *(v0 + 16);
    v7 = sub_1C4EF9A38();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = sub_1C4F01108();

    [v6 setObject:v7 forKey:v3];

    goto LABEL_5;
  }

  return v4;
}

uint64_t sub_1C4886D78()
{
  v0 = sub_1C4F01728();
  *(v0 + 16) = 32;
  *(v0 + 32) = 0u;
  v1 = v0 + 32;
  *(v0 + 48) = 0u;
  v2 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, (v0 + 32));
  if (v2)
  {
    v3 = v2;

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CE8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1C43F8000, v5, v6, "HashGenerator: Unable to generate salt from SecRandomCopyBytes: %d", v7, 8u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return 0;
  }

  else
  {
    v8 = MEMORY[0x1C6938770](v1, 32);
  }

  return v8;
}

void *sub_1C4886F04()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

unint64_t sub_1C4886F14()
{
  result = qword_1EDDFEAD0;
  if (!qword_1EDDFEAD0)
  {
    sub_1C4F00DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAD0);
  }

  return result;
}

void sub_1C4886F6C(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v7 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1C4834878();
  v7 = v14;
  *(a2 + 8) = v14;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v4 >= *(v7 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v7 + 32;
  v9 = *(v7 + 32 + 8 * v4);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v4) = v9;
  if (v10)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_14:
  sub_1C4834860();
  v9 = v15;
  *(v2 + 8 * v4) = v15;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v5 >= *(v9 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 4 * v5 + 32) = v6;
  v11 = *(a2 + 8);
  if (v5 < *(v11 + 16))
  {
    v9 = v11 + 32;
    v12 = *(v11 + 32 + 8 * v5);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 8 * v5) = v12;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  sub_1C4834860();
  v12 = v16;
  *(v9 + 8 * v5) = v16;
LABEL_9:
  if (v4 >= *(v12 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v12 + 4 * v4 + 32) = v6;
  }
}

unint64_t sub_1C4887098()
{
  result = qword_1EDDFE820;
  if (!qword_1EDDFE820)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE820);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphEdge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphEdge(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1C488714C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v118 = a1;
  v119 = a2;
  v5 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v6 = *(v5 - 8);
  v115 = v5;
  v116 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CNContactStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFBCA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v11, &qword_1EDE2DD58);
  String.base64EncodedSHA(withPrefix:)();
  v13 = v12;
  v15 = v14;
  type metadata accessor for HKEmergencyContactStructs.Person(0);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DBEAC0();
  if (v3)
  {
  }

  v18 = v16;
  v110 = v13;
  v111 = v8;
  v113 = 0;
  v114 = v15;
  *(v16 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser) = xmmword_1C4F17530;

  type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType(0);
  swift_allocObject();
  v19 = sub_1C4DBE1D0();
  v20 = sub_1C45B4BF8(v2, &selRef_relationship);
  sub_1C4425188(v20, v21);
  v22 = sub_1C45B4BF8(v2, &selRef_relationship);
  sub_1C4425188(v22, v23);
  *(v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence) = xmmword_1C4F0D2B0;

  v24 = sub_1C45B4BF8(v2, &selRef_name);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = sub_1C45B4BF8(v4, &selRef_nameContactIdentifier);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v121 = v26;
  v122 = v27;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v30, v31);

  v32 = v121;
  v33 = v122;
  v34 = sub_1C45B4BF8(v4, &selRef_phoneNumberContactIdentifier);
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v121 = v32;
  v122 = v33;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v36, v37);

  v38 = HIBYTE(v122) & 0xF;
  if ((v122 & 0x2000000000000000) == 0)
  {
    v38 = v121 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    sub_1C465B58C();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
  }

  v112 = v19;
  if (qword_1EDDF7908 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v11, qword_1EDE2D638);
  String.base64EncodedSHA(withPrefix:)();

  swift_allocObject();
  v39 = v113;
  sub_1C4DBEAC0();
  if (v39)
  {
  }

  v42 = v40;
  v43 = sub_1C4EFF048();
  sub_1C4425188(v43, v44);
  v45 = sub_1C45B4BF8(v4, &selRef_name);
  sub_1C4425188(v45, v46);
  type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType(0);
  swift_allocObject();
  v47 = sub_1C4DBBB00();
  v48 = sub_1C45B4BF8(v4, &selRef_phoneNumberLabel);
  sub_1C4425188(v48, v49);
  v50 = sub_1C45B4BF8(v4, &selRef_phoneNumber);
  sub_1C4425188(v50, v51);

  v108 = v47;
  sub_1C4DB80EC(v52);

  v109 = v42;
  sub_1C4DB8114(v53);

  sub_1C4DB81B4(v54);
  v55 = sub_1C45B4BF8(v4, &selRef_nameContactIdentifier);
  if (!v56)
  {
    v55 = sub_1C45B4BF8(v4, &selRef_phoneNumberContactIdentifier);
    if (!v56)
    {
      v55 = 0;
      v56 = 0xE000000000000000;
    }
  }

  v123 = MEMORY[0x1E69E7CC0];
  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v67 = sub_1C4F00978();
    sub_1C442B738(v67, qword_1EDE2DE10);
    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CD8();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v114;
    v72 = v110;
    if (v70)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1C43F8000, v68, v69, "An ingested emergency contact did not have a valid ContactID.", v73, 2u);
      MEMORY[0x1C6942830](v73, -1, -1);
    }

    goto LABEL_46;
  }

  v113 = v18;
  v106 = v55;
  v107 = v56;
  if (qword_1EDDF7890 != -1)
  {
    swift_once();
  }

  v58 = sub_1C442B738(v11, qword_1EDDF7898);
  v59 = *v58;
  v60 = v58[1];
  v121 = *v58;
  v122 = v60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v106, v107);
  sub_1C44CBA5C(v121, v122, v61, v62, v63, v64, v65, v66, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v74 = v60;
  v113 = 0;
  v75 = sub_1C4EFEEF8();
  v76 = v111;
  sub_1C440BAA8(v111, 1, 1, v75);
  v77 = v115;
  sub_1C4EFD318();
  v78 = v77[6];
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Source(0);
  v80 = sub_1C442B738(v79, &unk_1EDDFD088);
  sub_1C448CD24(v80, v76 + v78, type metadata accessor for Source);
  sub_1C4EFE808();
  v81 = (v76 + v77[8]);
  sub_1C4EFE878();
  v82 = (v76 + v77[10]);
  sub_1C4EFEB48();
  v83 = (v76 + v77[12]);
  sub_1C4EFE3A8();
  v105 = v77[14];
  *(v76 + v105) = 0;
  sub_1C4EFE2A8();
  v84 = (v76 + v77[16]);
  *v84 = 0;
  v84[1] = 0;
  *v82 = sub_1C45B4BF8(v4, &selRef_relationship);
  v82[1] = v85;
  *v83 = sub_1C45B4BF8(v4, &selRef_relationship);
  v83[1] = v86;
  *v81 = sub_1C4EFF048();
  v81[1] = v87;
  v88 = sub_1C45B4BF8(v4, &selRef_relationship);
  if (v89)
  {
    v90 = v88;
    v91 = v89;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1C4F0D130;
    *(v92 + 32) = v90;
    *(v92 + 40) = v91;
    *(v76 + v105) = v92;
  }

  sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
  v93 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1C4F0D130;
  sub_1C448CD24(v76, v94 + v93, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  v95 = v117;
  v96 = *(v117 + 248);
  v97 = v120;

  *&v97[v96] = v94;
  sub_1C44D8894();
  sub_1C44D93D0();
  v99 = v98;
  v100 = *(v95 + 244);

  *&v97[v100] = v99;
  sub_1C4D7F6AC();
  v121 = v59;
  v122 = v74;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v106, v107);

  LOBYTE(v121) = 1;
  v101 = v113;
  sub_1C4D6F494();
  if (!v101)
  {
    v104 = v102;

    sub_1C49D3614(v104);
    sub_1C4407080();
    sub_1C44198D4();
    v71 = v114;
    v72 = v110;
LABEL_46:
    LOBYTE(v121) = 1;
    v103 = sub_1C4DB81DC(v72, v71, &v121);

    sub_1C49D3614(v103);

    return v123;
  }

  sub_1C4407080();
  return sub_1C44198D4();
}

uint64_t sub_1C4887C10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4887C68(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v7);
  *(v3 + 48) = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v8);
  *(v3 + 56) = sub_1C43FBE7C();
  v9 = type metadata accessor for HKEmergencyContactSourceIngestor(0);
  *(v3 + 64) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v10 = type metadata accessor for Source(0);
  *(v3 + 88) = v10;
  sub_1C43FBD18(v10);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v11 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v11);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4887E20, 0, 0);
}

uint64_t sub_1C4887E20()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD218 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 153);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 88), &qword_1EDDFD220);
  *(v0 + 136) = v11;
  sub_1C44717B8(v11, v6, type metadata accessor for Source);
  sub_1C44717B8(v10, v5, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v7 + 20), type metadata accessor for Source);
  sub_1C44717B8(v5, v8, type metadata accessor for PhaseStores);
  *(v8 + *(v7 + 24)) = v4;
  v12 = sub_1C4EF9E48();
  sub_1C440BAA8(v9, 1, 1, v12);
  sub_1C4EFF1A8();
  v26 = *(v0 + 153);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 16);
  sub_1C44857CC(*(v0 + 120));
  v20 = sub_1C4EFF1C8();
  sub_1C440BAA8(v17, 0, 1, v20);
  sub_1C4482F3C(v17, v16 + *(v18 + 28));
  sub_1C442CBB4();
  sub_1C48884A4(v16, v15, v21);
  sub_1C44068F0();
  sub_1C44717B8(v11, v14, v22);
  sub_1C4419288();
  sub_1C44717B8(v19, v13, v23);
  *(v0 + 152) = v26;
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v24[1] = sub_1C4888098;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4888098()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4888194, 0, 0);
}

uint64_t sub_1C4888194()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v26 = v0[16];
  v27 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  sub_1C44068F0();
  sub_1C44717B8(v9, v3, v10);
  sub_1C4419288();
  sub_1C44717B8(v8, v1, v11);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v8);
  v12 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v5;
  v12[4] = sub_1C488844C();
  sub_1C4422F90(v12);
  sub_1C442CBB4();
  sub_1C48884A4(v4, v13, v14);
  sub_1C4400564();
  sub_1C48884A4(v2, v15, v16);
  sub_1C4400564();
  sub_1C48884A4(v26, v17, v18);
  sub_1C4400564();
  sub_1C48884A4(v27, v19, v20);
  sub_1C4400564();
  sub_1C48884A4(v6, v21, v22);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v23 = v0[1];
  v24 = v0[3];

  return v23(v24);
}

uint64_t type metadata accessor for HKEmergencyContactPhase(uint64_t a1)
{
  result = qword_1EDDE1FD8;
  if (!qword_1EDDE1FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C488844C()
{
  result = qword_1EDDDDE90;
  if (!qword_1EDDDDE90)
  {
    type metadata accessor for HKEmergencyContactSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDE90);
  }

  return result;
}

uint64_t sub_1C48884A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for HKEmergencyContactSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDDE70;
  if (!qword_1EDDDDE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4888574(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4682388(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4888638()
{
  v0[18] = 0;
  v0[19] = 0;
  if ([objc_opt_self() isHealthDataAvailable])
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v0[23] = v1;
    v2 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
    v0[24] = v2;
    v0[20] = MEMORY[0x1E69E7CC0];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1C48888D4;
    v3 = swift_continuation_init();
    v0[17] = sub_1C456902C(&qword_1EC0BE640, &qword_1C4F37BE8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C4888EBC;
    v0[13] = &unk_1F43EFB38;
    v0[14] = v3;
    [v2 fetchMedicalIDEmergencyContactsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "HealthKit data unavailable on this device", v7, 2u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    v8 = v0[22];
    sub_1C4EF9AE8();
    sub_1C441FC90(v9);
    sub_1C4888C54(v8, v0 + 19, v0 + 18);
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C48888D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1C4888AFC;
  }

  else
  {
    v2 = sub_1C48889E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C48889E4()
{
  *(v0 + 160) = *(v0 + 168);
  *(v0 + 80) = 0;
  v1 = *(v0 + 176);
  type metadata accessor for PhaseStores(0);
  v2 = swift_task_alloc();
  v2[2] = v0 + 160;
  v2[3] = v1;
  v2[4] = v0 + 144;
  v2[5] = v0 + 152;
  v2[6] = v0 + 80;
  sub_1C44198FC();
  v3 = *(v0 + 192);

  if (v0 == -80)
  {
    sub_1C4EF9AE8();
    sub_1C441FC90(v5);
  }

  sub_1C442CBCC();
  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4888AFC(uint64_t a1)
{
  v11 = v1;
  v2 = *(v1 + 200);
  v3 = *(v1 + 176);
  swift_willThrow();
  v10[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v2, 0xD000000000000012, 0x80000001C4FA3BA0, v3, v10);

  *(v1 + 80) = 0;
  v4 = *(v1 + 176);
  type metadata accessor for PhaseStores(0);
  v5 = swift_task_alloc();
  v5[2] = v1 + 160;
  v5[3] = v4;
  v5[4] = v1 + 144;
  v5[5] = v1 + 152;
  v5[6] = v1 + 80;
  sub_1C44198FC();
  v6 = *(v1 + 192);

  if (v1 == -160)
  {
    sub_1C4EF9AE8();
    sub_1C441FC90(v8);
  }

  sub_1C442CBCC();
  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4888C54(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4888EBC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C467BF20();
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB8E8, 0x1E696C628);
    sub_1C4F01678();

    return sub_1C467BF1C();
  }
}

void sub_1C4888F64(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v11 = *a2;
  v24 = *a2 & 0xC000000000000001;
  v25 = sub_1C4428DA0(*a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v21 = v11;
  while (1)
  {
    if (v25 == v12)
    {

      *a7 = *a6;
      return;
    }

    sub_1C4431590(v12, v24 == 0, v11);
    v13 = v24 ? MEMORY[0x1C6940F90](v12, v11) : *(v11 + 8 * v12 + 32);
    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_1C4ACEFFC();
    if (v8)
    {

      return;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_14;
    }

    ++*a4;
    v15 = type metadata accessor for HKEmergencyContactSourceIngestor(0);
    sub_1C488714C(a3 + *(v15 + 28), a3);
    v16 = a4;
    sub_1C4812140();
    v18 = v17;

    a1(v18);
    v8 = 0;

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_15;
    }

    ++*a5;
    a4 = v16;
    v11 = v21;
    ++v12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1C488924C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C4888618();
}

uint64_t sub_1C48892DC(uint64_t a1)
{
  result = sub_1C48893A8(qword_1EDDDDE98, &unk_1C4F37B54);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4889320(uint64_t a1)
{
  result = sub_1C48893A8(&qword_1EDDDDE80, &unk_1C4F37B7C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4889364(uint64_t a1)
{
  result = sub_1C48893A8(&qword_1EDDDDE88, &unk_1C4F37B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48893A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKEmergencyContactSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C488943C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  sub_1C4577DBC();
  v7 = sub_1C4F00F28();
  if (a2)
  {
    v8 = sub_1C45FB538();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C4EF9CD8();
      sub_1C440BAA8(v6, 1, 1, v10);
      v11 = sub_1C4886564(a1, a2, v6);
      v13 = v12;
      sub_1C45942C8(v9);
      sub_1C44686E4(v6);
      if (v13)
      {
        if (sub_1C4594E18(v11, v13))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v20 = v7;
          sub_1C4660314();
          return v20;
        }

        else
        {
          v14 = sub_1C445FAA8(0xD000000000000012, 0x80000001C4F9B330);
          if (v15)
          {
            v16 = v14;
            swift_isUniquelyReferenced_nonNull_native();
            v20 = v7;
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v7 = v20;

            v17 = *(*(v7 + 56) + 8 * v16);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v7;
}

void sub_1C4889670(uint64_t a1)
{
  v1 = [BiomeLibrary() HomeKit];
  swift_unknownObjectRelease();
  v2 = [v1 Client];
  swift_unknownObjectRelease();
  v3 = [v2 AccessoryControl];
  swift_unknownObjectRelease();
  sub_1C4580B40();
}

uint64_t type metadata accessor for HomeKitEvent(uint64_t a1)
{
  result = qword_1EC0BE648;
  if (!qword_1EC0BE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48897CC(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4889858()
{
  result = qword_1EC0BE658;
  if (!qword_1EC0BE658)
  {
    sub_1C4572308(&qword_1EC0BE660, &qword_1C4F37C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE658);
  }

  return result;
}

uint64_t type metadata accessor for HomeMatcher(uint64_t a1)
{
  result = qword_1EC0BE678;
  if (!qword_1EC0BE678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomeMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeMatcher.stateStore.getter()
{
  type metadata accessor for HomeMatcher(0);
}

uint64_t HomeMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomeMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HomeMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for HomeMatcher(0);
  sub_1C4EFD3B8();
  *(a4 + v8[9]) = 1056964608;
  sub_1C440053C();
  sub_1C44718CC(a1, a4);
  sub_1C447200C(a2, a4 + v8[5]);
  *(a4 + v8[6]) = v7;
  v9 = *(a1 + *(type metadata accessor for PhaseStores(0) + 28));

  result = sub_1C44854B4(a1, type metadata accessor for PhaseStores);
  *(a4 + v8[7]) = v9;
  return result;
}

float sub_1C4889B38(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v50 = type metadata accessor for EntityTriple(0);
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v39 - v16;
  v17 = 0;
  v18 = *(a1 + 16);
  v46 = a1;
  v47 = v18;
  v49 = (v4 + 8);
  while (1)
  {
    v19 = 0.0;
    if (v47 == v17)
    {
      return v19;
    }

    v20 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = *(v45 + 72);
    sub_1C44718CC(v46 + v20 + v48 * v17, v14);
    sub_1C4EFE558();
    sub_1C488C408(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v53 == v51 && v54 == v52)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_1C4F02938();
    }

    v23 = *v49;
    (*v49)(v8, v3);

    if (v22)
    {
      v24 = v41;
      sub_1C447200C(v14, v41);
      v25 = (v24 + *(v50 + 32));
      v26 = v25[1];
      v47 = *v25;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v24, type metadata accessor for EntityTriple);
      v27 = *(v42 + 16);
      v28 = v42 + v20;
      v29 = v43;
      if (!v27)
      {
LABEL_18:

        return v19;
      }

      while (1)
      {
        sub_1C44718CC(v28, v44);
        sub_1C4EFE558();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v53 == v51 && v54 == v52)
        {
          break;
        }

        v31 = sub_1C4F02938();
        v23(v29, v3);

        if (v31)
        {
          goto LABEL_20;
        }

        sub_1C44854B4(v44, type metadata accessor for EntityTriple);
        v28 += v48;
        if (!--v27)
        {
          goto LABEL_18;
        }
      }

      v23(v29, v3);

LABEL_20:
      v32 = v40;
      sub_1C447200C(v44, v40);
      v33 = (v32 + *(v50 + 32));
      v35 = *v33;
      v34 = v33[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v32, type metadata accessor for EntityTriple);
      if (v35 == v47 && v34 == v26)
      {
      }

      else
      {
        v37 = sub_1C4F02938();

        if ((v37 & 1) == 0)
        {
          return v19;
        }
      }

      return 1.0;
    }

    sub_1C44854B4(v14, type metadata accessor for EntityTriple);
    ++v17;
  }
}

float sub_1C488A094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v57 = a6;
  v60 = a4;
  v61 = a5;
  v64 = a2;
  v7 = sub_1C43FBE94();
  v63 = v8(v7);
  sub_1C43FCDF8();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v65 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - v14;
  v15 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v62 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v67 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v58 = &v55 - v31;
  v32 = 0;
  v66 = v6;
  v68 = *(v6 + 16);
  v69 = (v17 + 8);
  while (1)
  {
    v33 = 0.0;
    if (v68 == v32)
    {
      return v33;
    }

    sub_1C44718CC(v66 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v32, v29);
    sub_1C4EFE558();
    sub_1C488C408(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    if (v72 == v70 && v73 == v71)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_1C4F02938();
    }

    v36 = *v69;
    (*v69)(v23, v15);

    if (v35)
    {
      v37 = v58;
      sub_1C447200C(v29, v58);
      v38 = (v37 + *(v67 + 32));
      v40 = *v38;
      v39 = v38[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v37, type metadata accessor for EntityTriple);
      v41 = 0;
      v42 = *(v64 + 16);
      while (1)
      {
        v43 = v62;
        if (v42 == v41)
        {

          return v33;
        }

        sub_1C44718CC(v64 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v41, v65);
        sub_1C4EFE558();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        if (v72 == v70 && v73 == v71)
        {
          break;
        }

        v45 = sub_1C4F02938();
        v46 = v43;
        v47 = v45;
        v36(v46, v15);

        if (v47)
        {
          goto LABEL_21;
        }

        sub_1C44854B4(v65, v61);
        ++v41;
      }

      v36(v43, v15);

LABEL_21:
      v48 = v56;
      sub_1C447200C(v65, v56);
      v49 = (v48 + *(v63 + 32));
      v51 = *v49;
      v50 = v49[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44854B4(v48, v61);
      if (v51 == v40 && v50 == v39)
      {
      }

      else
      {
        v53 = sub_1C4F02938();

        if ((v53 & 1) == 0)
        {
          return v33;
        }
      }

      return 1.0;
    }

    sub_1C44854B4(v29, type metadata accessor for EntityTriple);
    ++v32;
  }
}

uint64_t sub_1C488A5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v71 = a3;
  v4 = sub_1C4EF9CD8();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = v3;
  v27 = v81;
  result = sub_1C4ACE5D4();
  if (!v27)
  {
    v29 = v10;
    v68 = v22;
    v69 = v19;
    v70 = 0;
    v81 = v13;
    v30 = v76;
    v31 = v77;
    v80 = v25;
    v32 = v26;
    if (v77)
    {
      sub_1C44F1938(v77, v16);
      v33 = type metadata accessor for GraphTriple(0);
      v34 = v29;
      if (sub_1C44157D4(v16, 1, v33) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
        v35 = 1;
      }

      else
      {
        (*(v75 + 16))(v80, v16, v30);
        sub_1C44854B4(v16, type metadata accessor for GraphTriple);
        v35 = 0;
      }

      v36 = v79;
      v37 = v81;
    }

    else
    {
      v35 = 1;
      v36 = v79;
      v37 = v81;
      v34 = v29;
    }

    v38 = v11;
    sub_1C440BAA8(v80, v35, 1, v30);
    v39 = v78;
    sub_1C44D0BD8(v78, v34);
    if (sub_1C44157D4(v34, 1, v38) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v80;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Home Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v34, v37);
      if (v31)
      {
        v47 = sub_1C488A094(v39, v31, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v71;
      v49 = v75;
      v50 = v68;
      v51 = type metadata accessor for HomeMatcher(0);
      v52 = *(v51 + 36);
      v79 = v32;
      v53 = *&v32[v52];
      v54 = v80;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v80;
        sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v30);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v30) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v49 + 32))(v36, v55, v30);
        v78 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v79;
        (*(*(v57 - 8) + 16))(v48, &v79[v56], v57);
        v59 = v36;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v49 + 16);
        v62 = v81;
        v61(v48 + v60[5], v81, v30);
        v61(v48 + v60[6], v59, v30);
        v63 = v72;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v65 = v64;
        (*(v73 + 8))(v63, v74);
        (*(v49 + 8))(v59, v30);
        sub_1C44854B4(v62, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v66 = v58[*(v78 + 24)];
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v65;
        *(v48 + v60[9]) = v66;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C488ADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v75 = a1;
  v73 = a3;
  v70 = sub_1C4EF9CD8();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = v77;
  result = sub_1C4ACE5D4();
  if (!v26)
  {
    v77 = v8;
    v63 = v22;
    v64 = v19;
    v65 = 0;
    v66 = v7;
    v67 = v10;
    v28 = v71;
    v29 = v72;
    v76 = v25;
    v30 = v73;
    v31 = v74;
    if (v74)
    {
      sub_1C44D0BD8(v74, v16);
      v32 = v28;
      if (sub_1C44157D4(v16, 1, v77) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v76, v16, v29);
        sub_1C44854B4(v16, type metadata accessor for EntityTriple);
        v33 = 0;
      }
    }

    else
    {
      v33 = 1;
      v32 = v71;
    }

    v34 = v75;
    sub_1C440BAA8(v76, v33, 1, v29);
    sub_1C44D0BD8(v34, v13);
    if (sub_1C44157D4(v13, 1, v77) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4F00978();
      sub_1C442B738(v35, qword_1EDE2DE10);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v76;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Home Matcher: skipping entityTriples are empty", v40, 2u);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v13, v67);
      if (v31)
      {
        v42 = sub_1C4889B38(v34, v31);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v30;
      v44 = v66;
      v45 = v63;
      v46 = type metadata accessor for HomeMatcher(0);
      v47 = *(v46 + 36);
      v77 = v3;
      v48 = *(v3 + v47);
      v49 = v76;
      v50 = v64;
      if (v42 <= v48)
      {
        sub_1C4EFF008();
        v49 = v76;
        sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v45, 0, 1, v29);
        sub_1C44DDDBC(v45, v49);
        v42 = v48;
      }

      sub_1C457E858(v49, v50);
      if (sub_1C44157D4(v50, 1, v29) == 1)
      {
        sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v32 + 32))(v44, v50, v29);
        v75 = v46;
        v51 = *(v46 + 32);
        v52 = sub_1C4EFD548();
        v53 = v77;
        (*(*(v52 - 8) + 16))(v43, v77 + v51, v52);
        v54 = v29;
        v55 = type metadata accessor for EntityMatch(0);
        v56 = v32;
        v57 = *(v32 + 16);
        v58 = v67;
        v57(v43 + v55[5], v67, v54);
        v57(v43 + v55[6], v44, v54);
        v59 = v69;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v68 + 8))(v59, v70);
        (*(v56 + 8))(v44, v54);
        sub_1C44854B4(v58, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v53 + *(v75 + 24));
        *(v43 + v55[7]) = v42;
        *(v43 + v55[8]) = v61;
        *(v43 + v55[9]) = v62;
        *(v43 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C488B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v71 = a3;
  v4 = sub_1C4EF9CD8();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = v3;
  v27 = v81;
  result = sub_1C4ACE5D4();
  if (!v27)
  {
    v29 = v10;
    v68 = v22;
    v69 = v19;
    v70 = 0;
    v81 = v13;
    v30 = v76;
    v31 = v77;
    v80 = v25;
    v32 = v26;
    if (v77)
    {
      sub_1C486854C(v77, v16);
      v33 = type metadata accessor for ConstructionGraphTriple(0);
      v34 = v29;
      if (sub_1C44157D4(v16, 1, v33) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
        v35 = 1;
      }

      else
      {
        (*(v75 + 16))(v80, v16, v30);
        sub_1C44854B4(v16, type metadata accessor for ConstructionGraphTriple);
        v35 = 0;
      }

      v36 = v79;
      v37 = v81;
    }

    else
    {
      v35 = 1;
      v36 = v79;
      v37 = v81;
      v34 = v29;
    }

    v38 = v11;
    sub_1C440BAA8(v80, v35, 1, v30);
    v39 = v78;
    sub_1C44D0BD8(v78, v34);
    if (sub_1C44157D4(v34, 1, v38) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v80;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Home Matcher: skipping entityTriples are empty", v45, 2u);
        MEMORY[0x1C6942830](v45, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C447200C(v34, v37);
      if (v31)
      {
        v47 = sub_1C488A094(v39, v31, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v47 = 0.0;
      }

      v48 = v71;
      v49 = v75;
      v50 = v68;
      v51 = type metadata accessor for HomeMatcher(0);
      v52 = *(v51 + 36);
      v79 = v32;
      v53 = *&v32[v52];
      v54 = v80;
      v55 = v69;
      if (v47 <= v53)
      {
        sub_1C4EFF008();
        v54 = v80;
        sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v50, 0, 1, v30);
        sub_1C44DDDBC(v50, v54);
        v47 = v53;
      }

      sub_1C457E858(v54, v55);
      if (sub_1C44157D4(v55, 1, v30) == 1)
      {
        sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v49 + 32))(v36, v55, v30);
        v78 = v51;
        v56 = *(v51 + 32);
        v57 = sub_1C4EFD548();
        v58 = v79;
        (*(*(v57 - 8) + 16))(v48, &v79[v56], v57);
        v59 = v36;
        v60 = type metadata accessor for EntityMatch(0);
        v61 = *(v49 + 16);
        v62 = v81;
        v61(v48 + v60[5], v81, v30);
        v61(v48 + v60[6], v59, v30);
        v63 = v72;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v65 = v64;
        (*(v73 + 8))(v63, v74);
        (*(v49 + 8))(v59, v30);
        sub_1C44854B4(v62, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v80, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v66 = v58[*(v78 + 24)];
        *(v48 + v60[7]) = v47;
        *(v48 + v60[8]) = v65;
        *(v48 + v60[9]) = v66;
        *(v48 + v60[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t HomeMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C488BD9C, 0, 0);
}

uint64_t sub_1C488BD9C()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for HomeMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C488C300;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C488C450;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46413D4();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA530, &unk_1C4F14260);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C488C198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C488C210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return HomeMatcher.execute()();
}

uint64_t sub_1C488C330(uint64_t a1)
{
  result = sub_1C488C408(&qword_1EC0BE668, type metadata accessor for HomeMatcher, &protocol conformance descriptor for HomeMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C488C388(uint64_t a1)
{
  result = sub_1C488C408(&qword_1EC0BE670, type metadata accessor for HomeMatcher, &protocol conformance descriptor for HomeMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C488C408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C488C468()
{
  v0 = qword_1EC0BE688;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

unint64_t sub_1C488C4A0(uint64_t a1)
{
  result = sub_1C488C4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C488C4C8()
{
  result = qword_1EC0BE698;
  if (!qword_1EC0BE698)
  {
    type metadata accessor for HUTenPointDataCollection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE698);
  }

  return result;
}

BOOL sub_1C488C520(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C488C574@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C43FBEF8();
  v6 = sub_1C456902C(v4, v5);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = type metadata accessor for HUTenPointDataCollection(v8);
  sub_1C4460108(v2 + *(v9 + 36), v1, &qword_1EC0BF0B0, &qword_1C4F38128);
  type metadata accessor for HUTenPointSessionSample(0);
  sub_1C4400334();
  if (v10)
  {
    sub_1C4F00318();
    v11 = sub_1C447CBE4();
    v12 = type metadata accessor for HUTenPointContext(v11);
    sub_1C44410C0(v12);
    v13 = type metadata accessor for HUTenPointBehaviors(0);
    sub_1C44410C0(v13);
    result = sub_1C4400334();
    if (!v10)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0B0, &qword_1C4F38128);
    }
  }

  else
  {
    sub_1C441B408();
    return sub_1C4924B90(v1, a1);
  }

  return result;
}

uint64_t sub_1C488C670()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointDataCollection(v1);
  sub_1C4420C3C(v0 + *(v2 + 36), &qword_1EC0BF0B0, &qword_1C4F38128);
  sub_1C441B408();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointSessionSample(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C488C6E0@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  v8 = type metadata accessor for HUTenPointSessionSample(v7);
  v9 = sub_1C44553C4(*(v8 + 24));
  sub_1C4460108(v9, v10, &qword_1EC0BF0D8, &qword_1C4F38158);
  v11 = type metadata accessor for HUTenPointBehaviors(0);
  sub_1C440AC34(v11);
  if (v12)
  {
    sub_1C4F00318();
    if (qword_1EC0B6BF0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0D8, &qword_1C4F38158);
    }
  }

  else
  {
    sub_1C442DFCC();
    v13 = sub_1C43FD024();
    return sub_1C4924B90(v13, v14);
  }

  return result;
}

uint64_t sub_1C488C7F4()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointSessionSample(v1);
  sub_1C4420C3C(v0 + *(v2 + 24), &qword_1EC0BF0D8, &qword_1C4F38158);
  sub_1C442DFCC();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointBehaviors(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C488C864()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 16, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C89C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 16, v4);
  *(v5 + 16) = v0;
}

uint64_t sub_1C488C904()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 24, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C93C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 24, v4);
  *(v5 + 24) = v0;
}

uint64_t sub_1C488C9A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 32, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488C9DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 32, v4);
  *(v5 + 32) = v0;
}

uint64_t sub_1C488CA44()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 40, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CA7C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 40, v4);
  *(v5 + 40) = v0;
}

uint64_t sub_1C488CAE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 48, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CB1C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 48, v4);
  *(v5 + 48) = v0;
}

uint64_t sub_1C488CB84()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 56, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CBBC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 56, v4);
  *(v5 + 56) = v0;
}

uint64_t sub_1C488CC24()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 200, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CC5C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 200, v4);
  *(v5 + 200) = v0;
}

uint64_t sub_1C488CCC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 208, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CCFC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 208, v4);
  *(v5 + 208) = v0;
}

uint64_t sub_1C488CD64()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 64, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CD9C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 64, v4);
  *(v5 + 64) = v0;
}

uint64_t sub_1C488CE04()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 184, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CE3C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 184, v4);
  *(v5 + 184) = v0;
}

uint64_t sub_1C488CEA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 192, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CEDC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 192, v4);
  *(v5 + 192) = v0;
}

uint64_t sub_1C488CF44()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 104, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488CF7C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 104, v4);
  *(v5 + 104) = v0;
}

uint64_t sub_1C488CFE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 112, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D01C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 112, v4);
  *(v5 + 112) = v0;
}

uint64_t sub_1C488D084()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 72, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D0BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 72, v4);
  *(v5 + 72) = v0;
}

uint64_t sub_1C488D124()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 368, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D15C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 368, v4);
  *(v5 + 368) = v0;
}

uint64_t sub_1C488D1C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 88, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D1FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 88, v4);
  *(v5 + 88) = v0;
}

uint64_t sub_1C488D264()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 168, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D29C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 168, v4);
  *(v5 + 168) = v0;
}

uint64_t sub_1C488D304()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 248, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D33C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 248, v4);
  *(v5 + 248) = v0;
}

uint64_t sub_1C488D3A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 120, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D3DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 120, v4);
  *(v5 + 120) = v0;
}

uint64_t sub_1C488D444()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 136, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D47C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 136, v4);
  *(v5 + 136) = v0;
}

uint64_t sub_1C488D4E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 152, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D51C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 152, v4);
  *(v5 + 152) = v0;
}

uint64_t sub_1C488D584()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 216, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D5BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 216, v4);
  *(v5 + 216) = v0;
}

uint64_t sub_1C488D624()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 232, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D65C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 232, v4);
  *(v5 + 232) = v0;
}

uint64_t sub_1C488D6C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 264, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D6FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 264, v4);
  *(v5 + 264) = v0;
}

uint64_t sub_1C488D764()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 80, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D79C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 80, v4);
  *(v5 + 80) = v0;
}

uint64_t sub_1C488D804()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 376, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D83C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 376, v4);
  *(v5 + 376) = v0;
}

uint64_t sub_1C488D8A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 96, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D8DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 96, v4);
  *(v5 + 96) = v0;
}

uint64_t sub_1C488D944()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 176, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488D97C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 176, v4);
  *(v5 + 176) = v0;
}

uint64_t sub_1C488D9E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 256, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DA1C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 256, v4);
  *(v5 + 256) = v0;
}

uint64_t sub_1C488DA84()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 128, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DABC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 128, v4);
  *(v5 + 128) = v0;
}

uint64_t sub_1C488DB24()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 144, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DB5C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 144, v4);
  *(v5 + 144) = v0;
}

uint64_t sub_1C488DBC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 160, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DBFC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 160, v4);
  *(v5 + 160) = v0;
}

uint64_t sub_1C488DC64()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 224, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DC9C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 224, v4);
  *(v5 + 224) = v0;
}

uint64_t sub_1C488DD04()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 240, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DD3C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 240, v4);
  *(v5 + 240) = v0;
}

uint64_t sub_1C488DDA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 272, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DDDC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 272, v4);
  *(v5 + 272) = v0;
}

uint64_t sub_1C488DE44()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 280, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DE7C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 280, v4);
  *(v5 + 280) = v0;
}

uint64_t sub_1C488DEE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 288, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DF1C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 288, v4);
  *(v5 + 288) = v0;
}

uint64_t sub_1C488DF84()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 296, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488DFBC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 296, v4);
  *(v5 + 296) = v0;
}

uint64_t sub_1C488E024()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 336, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E05C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 336, v4);
  *(v5 + 336) = v0;
}

uint64_t sub_1C488E0C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 304, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E0FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 304, v4);
  *(v5 + 304) = v0;
}

uint64_t sub_1C488E164()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 312, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E19C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 312, v4);
  *(v5 + 312) = v0;
}

uint64_t sub_1C488E204()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 320, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E23C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 320, v4);
  *(v5 + 320) = v0;
}

uint64_t sub_1C488E2A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 328, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E2DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 328, v4);
  *(v5 + 328) = v0;
}

uint64_t sub_1C488E344()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 344, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E37C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 344, v4);
  *(v5 + 344) = v0;
}

uint64_t sub_1C488E3E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 352, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E41C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 352, v4);
  *(v5 + 352) = v0;
}

uint64_t sub_1C488E484()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 360, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E4BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 360, v4);
  *(v5 + 360) = v0;
}

uint64_t sub_1C488E524()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 632, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E55C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 632, v4);
  *(v5 + 632) = v0;
}

uint64_t sub_1C488E5C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 640, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E5FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 640, v4);
  *(v5 + 640) = v0;
}

uint64_t sub_1C488E664()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 656, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E69C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 656, v4);
  *(v5 + 656) = v0;
}

uint64_t sub_1C488E704()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 664, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E73C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 664, v4);
  *(v5 + 664) = v0;
}

uint64_t sub_1C488E7A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 648, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E7DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 648, v4);
  *(v5 + 648) = v0;
}

uint64_t sub_1C488E844()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 680, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E87C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 680, v4);
  *(v5 + 680) = v0;
}

uint64_t sub_1C488E8E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 688, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E91C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 688, v4);
  *(v5 + 688) = v0;
}

uint64_t sub_1C488E984()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 672, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488E9BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 672, v4);
  *(v5 + 672) = v0;
}

uint64_t sub_1C488EA24()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 704, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EA5C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 704, v4);
  *(v5 + 704) = v0;
}

uint64_t sub_1C488EAC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 712, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EAFC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 712, v4);
  *(v5 + 712) = v0;
}

uint64_t sub_1C488EB64()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 696, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EB9C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 696, v4);
  *(v5 + 696) = v0;
}

uint64_t sub_1C488EC04()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 728, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EC3C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 728, v4);
  *(v5 + 728) = v0;
}

uint64_t sub_1C488ECA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 736, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488ECDC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 736, v4);
  *(v5 + 736) = v0;
}

uint64_t sub_1C488ED44()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 720, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488ED7C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 720, v4);
  *(v5 + 720) = v0;
}

uint64_t sub_1C488EDE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 752, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EE1C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 752, v4);
  *(v5 + 752) = v0;
}

uint64_t sub_1C488EE84()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 760, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EEBC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 760, v4);
  *(v5 + 760) = v0;
}

uint64_t sub_1C488EF24()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 744, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EF5C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 744, v4);
  *(v5 + 744) = v0;
}

uint64_t sub_1C488EFC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 776, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488EFFC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 776, v4);
  *(v5 + 776) = v0;
}

uint64_t sub_1C488F064()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 784, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F09C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 784, v4);
  *(v5 + 784) = v0;
}

uint64_t sub_1C488F104()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 768, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F13C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 768, v4);
  *(v5 + 768) = v0;
}

uint64_t sub_1C488F1A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 384, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F1DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 384, v4);
  *(v5 + 384) = v0;
}

uint64_t sub_1C488F244()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 392, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F27C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 392, v4);
  *(v5 + 392) = v0;
}

uint64_t sub_1C488F2E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 400, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F31C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 400, v4);
  *(v5 + 400) = v0;
}

uint64_t sub_1C488F384()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 440, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F3BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 440, v4);
  *(v5 + 440) = v0;
}

uint64_t sub_1C488F424()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 408, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F45C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 408, v4);
  *(v5 + 408) = v0;
}

uint64_t sub_1C488F4C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 416, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F4FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 416, v4);
  *(v5 + 416) = v0;
}

uint64_t sub_1C488F564()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 424, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F59C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 424, v4);
  *(v5 + 424) = v0;
}

uint64_t sub_1C488F604()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 432, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F63C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 432, v4);
  *(v5 + 432) = v0;
}

uint64_t sub_1C488F6A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 448, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F6DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 448, v4);
  *(v5 + 448) = v0;
}

uint64_t sub_1C488F744()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 456, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F77C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 456, v4);
  *(v5 + 456) = v0;
}

uint64_t sub_1C488F7E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 464, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F81C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 464, v4);
  *(v5 + 464) = v0;
}

uint64_t sub_1C488F884()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 472, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F8BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 472, v4);
  *(v5 + 472) = v0;
}

uint64_t sub_1C488F924()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 496, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F95C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 496, v4);
  *(v5 + 496) = v0;
}

uint64_t sub_1C488F9C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 488, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488F9FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 488, v4);
  *(v5 + 488) = v0;
}

uint64_t sub_1C488FA64()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 504, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FA9C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 504, v4);
  *(v5 + 504) = v0;
}

uint64_t sub_1C488FB04()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 480, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FB3C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 480, v4);
  *(v5 + 480) = v0;
}

uint64_t sub_1C488FBA4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 536, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FBDC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 536, v4);
  *(v5 + 536) = v0;
}

uint64_t sub_1C488FC44()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 560, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FC7C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 560, v4);
  *(v5 + 560) = v0;
}

uint64_t sub_1C488FCE4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 512, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FD1C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 512, v4);
  *(v5 + 512) = v0;
}

uint64_t sub_1C488FD84()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 544, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FDBC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 544, v4);
  *(v5 + 544) = v0;
}

uint64_t sub_1C488FE24()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 568, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FE5C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 568, v4);
  *(v5 + 568) = v0;
}

uint64_t sub_1C488FEC4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 520, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FEFC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 520, v4);
  *(v5 + 520) = v0;
}

uint64_t sub_1C488FF64()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 552, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C488FF9C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 552, v4);
  *(v5 + 552) = v0;
}

uint64_t sub_1C4890004()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 576, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489003C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 576, v4);
  *(v5 + 576) = v0;
}

uint64_t sub_1C48900A4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 528, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48900DC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 528, v4);
  *(v5 + 528) = v0;
}

uint64_t sub_1C4890144()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 584, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489017C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 584, v4);
  *(v5 + 584) = v0;
}

uint64_t sub_1C48901E4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 592, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489021C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 592, v4);
  *(v5 + 592) = v0;
}

uint64_t sub_1C4890284()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 600, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48902BC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 600, v4);
  *(v5 + 600) = v0;
}

uint64_t sub_1C4890324()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 608, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489035C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 608, v4);
  *(v5 + 608) = v0;
}

uint64_t sub_1C48903C4()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 616, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C48903FC()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 616, v4);
  *(v5 + 616) = v0;
}

uint64_t sub_1C4890464()
{
  sub_1C441FCAC();
  sub_1C441C2D8(v0 + 624, v1);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C489049C()
{
  v3 = sub_1C4432464();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for HUTenPointBehaviors._StorageClass();
    sub_1C447F124();
    swift_allocObject();
    v6 = sub_1C43FD6F4();
    v7 = sub_1C48A3808(v6);
    sub_1C445E850(v7);
  }

  sub_1C440BD74(v5 + 624, v4);
  *(v5 + 624) = v0;
}

uint64_t sub_1C4890504@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  v8 = type metadata accessor for HUTenPointSessionSample(v7);
  v9 = sub_1C44553C4(*(v8 + 20));
  sub_1C4460108(v9, v10, &qword_1EC0BF0D0, &qword_1C4F38150);
  v11 = type metadata accessor for HUTenPointContext(0);
  sub_1C440AC34(v11);
  if (v12)
  {
    sub_1C4F00318();
    if (qword_1EC0B6C00 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BF0D0, &qword_1C4F38150);
    }
  }

  else
  {
    sub_1C4405CC8();
    v13 = sub_1C43FD024();
    return sub_1C4924B90(v13, v14);
  }

  return result;
}

uint64_t sub_1C4890618()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for HUTenPointSessionSample(v1);
  sub_1C4420C3C(v0 + *(v2 + 20), &qword_1EC0BF0D0, &qword_1C4F38150);
  sub_1C4405CC8();
  v3 = sub_1C44022A0();
  sub_1C4924B90(v3, v4);
  type metadata accessor for HUTenPointContext(0);
  v5 = sub_1C4410B98();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C4890688@<X0>(int a1@<W8>)
{
  v3 = sub_1C43FBEF8();
  v5 = sub_1C456902C(v3, v4);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4402FE0();
  sub_1C441ECBC(v7);
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440AC34(v8);
  if (!v9)
  {
    return sub_1C442EB90();
  }

  sub_1C4F00318();
  if (qword_1EC0B6C18 != -1)
  {
    swift_once();
  }

  result = sub_1C440E1D8();
  if (a1 != 1)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BF670, qword_1C4F3A4D8);
  }

  return result;
}

uint64_t sub_1C48907A4()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BF670, qword_1C4F3A4D8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C446BF24(v2) & 1) == 0)
  {
    sub_1C4404F9C();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C48B1DA8(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441B9D8();
  v5 = type metadata accessor for HUTenPointContext.TimeAndDate(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C48908A0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for HUTenPointContext.TimeAndDate(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    v4 = sub_1C43FD6F4();
    v5 = sub_1C48BC834(v4);
    sub_1C44222F4(v5);
  }

  sub_1C4419928();
  v6 = sub_1C4404C28();
  sub_1C4924B90(v6, v7);
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v8);
  sub_1C43FC29C();
  v9 = sub_1C44022A0();
  sub_1C44408D4(v9, v10, v11, v12);
  return swift_endAccess();
}

uint64_t sub_1C48909A4()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for HUTenPointContext.TimeAndDate(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.TimeAndDate._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    v4 = sub_1C43FD6F4();
    v5 = sub_1C48BC834(v4);
    sub_1C44222F4(v5);
  }

  sub_1C4419928();
  v6 = sub_1C4404C28();
  sub_1C4924B90(v6, v7);
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v8);
  sub_1C43FC29C();
  v9 = sub_1C44022A0();
  sub_1C44408D4(v9, v10, v11, v12);
  return swift_endAccess();
}