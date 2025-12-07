uint64_t sub_22BF6AA28(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83B70];

  return sub_22BF66DB4(a1, a2, v3);
}

uint64_t sub_22BF6AA80()
{

  return sub_22C26FDF4();
}

uint64_t sub_22BF6AAA8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = (a1->n128_u64 + v2 + *(v3 + 56));
  v6 = a1 + v2;

  return sub_22BF53E38(v6, v5, 1);
}

double sub_22BF6AB50()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
  result = v2 - v3;
  *(v1 + 14) = v2 - v3;
  return result;
}

uint64_t sub_22BF6AB8C(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BF6ABB0(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

__n128 *sub_22BF6ABF4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

void sub_22BF6AC74(unint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{

  sub_22BF58A38(a1, a2, a3, a4, v5, v4);
}

uint64_t sub_22BF6AC94(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22BF6ACAC(uint64_t a1, uint64_t a2)
{

  return sub_22C26E484();
}

double sub_22BF6ACC4()
{

  return result;
}

void sub_22BF6ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v27;
  a23 = v28;
  sub_22BE18A40();
  v29 = _s19SentinelFileManagerVMa(0);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v31 = sub_22BF6D97C();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v26(&a13);
  if (v23)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v33 = v23;
    v34 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE22C98();
    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v43 = sub_22BE3E5CC();
      v44 = swift_slowAlloc();
      *v25 = 136315394;
      v45 = v31;
      v46 = v44;
      v35 = *v24;
      v36 = v24[1];

      sub_22BF249B8(v24);
      sub_22BE61C88(v35, v36, &v46);
      sub_22BE25AE8();
      sub_22BE2316C();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v37;
      *v43 = v37;
      sub_22BE1A6F8(&dword_22BE15000, v38, v39, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v43, &qword_27D907870, &qword_22C27AB50);
      sub_22BE18614();
      sub_22BE26B64(v44);
      sub_22BE18614();
      sub_22BE3B050();

      v40 = sub_22BE1928C();
      v42 = v45;
    }

    else
    {

      sub_22BF249B8(v24);
      v40 = sub_22BE1928C();
      v42 = v31;
    }

    v41(v40, v42);
    swift_willThrow();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF6AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  sub_22BE18A40();
  v27 = _s19SentinelFileManagerVMa(0);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v29 = sub_22BF6D97C();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v30);
  sub_22BE18DFC();
  v23(&v42);
  if (v20)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v31 = v20;
    v32 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v39 = sub_22BE3E5CC();
      v40 = swift_slowAlloc();
      a10 = v40;
      sub_22BE1AC00(4.8151e-34);
      sub_22BF249B8(v21);
      sub_22BE61C88(v29, v24, &a10);

      sub_22BE196FC();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v33;
      *v39 = v33;
      sub_22BE1A6F8(&dword_22BE15000, v34, v35, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v39, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(v40);
      sub_22BE183C8();
      sub_22BE3B050();

      v36 = sub_22BE1928C();
      v38 = v41;
    }

    else
    {

      sub_22BF249B8(v21);
      v36 = sub_22BE1928C();
      v38 = v29;
    }

    v37(v36, v38);
    swift_willThrow();
  }

  sub_22BE18478();
}

void sub_22BF6B0F4()
{
  sub_22BE19130();
  sub_22BE18A40();
  v3 = _s19SentinelFileManagerVMa(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v5 = sub_22BF6D97C();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  v2();
  if (v0)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v7 = v0;
    v8 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE22C98();
    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v9 = sub_22BE3E5CC();
      v17 = sub_22BE25720(v9);
      sub_22BE1A2F0(4.8151e-34);
      sub_22BF249B8(v1);
      sub_22BE19F84();
      sub_22BE25AE8();
      sub_22BE2316C();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE1C354(v10);
      sub_22BE1A6F8(&dword_22BE15000, v11, v12, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v5, &qword_27D907870, &qword_22C27AB50);
      sub_22BE18614();
      sub_22BE26B64(v17);
      sub_22BE18614();
      sub_22BE3B050();

      v13 = sub_22BE1928C();
      v15 = v16;
    }

    else
    {

      sub_22BF249B8(v1);
      v13 = sub_22BE1928C();
      v15 = v5;
    }

    v14(v13, v15);
    swift_willThrow();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF6B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  sub_22BE18A40();
  v27 = _s19SentinelFileManagerVMa(0);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v29 = sub_22BF6D97C();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v30);
  sub_22BE18DFC();
  v23(&v42);
  if (v20)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v31 = v20;
    v32 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v39 = sub_22BE3E5CC();
      v40 = swift_slowAlloc();
      a10 = v40;
      sub_22BE1AC00(4.8151e-34);
      sub_22BF249B8(v21);
      sub_22BE61C88(v29, v24, &a10);

      sub_22BE196FC();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v33;
      *v39 = v33;
      sub_22BE1A6F8(&dword_22BE15000, v34, v35, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v39, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(v40);
      sub_22BE183C8();
      sub_22BE3B050();

      v36 = sub_22BE1928C();
      v38 = v41;
    }

    else
    {

      sub_22BF249B8(v21);
      v36 = sub_22BE1928C();
      v38 = v29;
    }

    v37(v36, v38);
    swift_willThrow();
  }

  sub_22BE18478();
}

void sub_22BF6B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v47 = sub_22C26DF64();
  sub_22BE179D8();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BE179EC();
  v45 = v44 - v43;
  a13 = 2;
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v39, v37, &a13, v35, v33, v31, v29, v27, v44 - v43);
  if (qword_281079BA0 != -1)
  {
    swift_once();
  }

  v46 = sub_22C271C14();
  sub_22BE199F4(v46, qword_281079BA8);
  _s11AccessTokenCMa(0);
  sub_22BF6D914(&qword_281079C90, _s11AccessTokenCMa, &unk_22C28FD1C);
  sub_22C271BC4();
  if (v23)
  {
    sub_22BF6D434();
    swift_allocError();
  }

  (*(v41 + 8))(v45, v47);
  sub_22BE18478();
}

id sub_22BF6B6B8()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27D9BA5B0 = result;
  return result;
}

uint64_t sub_22BF6B6EC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22BF6B748(a1);
  return v2;
}

uint64_t sub_22BF6B748(uint64_t a1)
{
  v3 = a1;
  if (qword_27D906398 != -1)
  {
    sub_22BE1B3FC();
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_22BF6BBA0(sub_22BF6D8AC);
  if (v2)
  {

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
    sub_22C26DF64();
    sub_22BE18000();
    (*(v5 + 32))(v1 + v4, v3);
    return v1;
  }

  return result;
}

uint64_t sub_22BF6B8B4(uint64_t a1)
{
  v3 = sub_22C26DF64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C2720A4();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271AD4();
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_22C272084();
  v11 = sub_22C2737C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v7;
    v13 = v12;
    v20 = swift_slowAlloc();
    v24 = v20;
    *v13 = 136315138;
    sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_22C273FD4();
    v22 = v1;
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_22BE61C88(v14, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22BE15000, v10, v11, "Initializing access token for %s", v13, 0xCu);
    v18 = v20;
    sub_22BE26B64(v20);
    MEMORY[0x2318AD180](v18, -1, -1);
    MEMORY[0x2318AD180](v13, -1, -1);

    return (*(v23 + 8))(v9, v21);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v23 + 8))(v9, v7);
  }
}

uint64_t sub_22BF6BC18()
{
  if (qword_27D906398 != -1)
  {
    sub_22BE1B3FC();
    swift_once();
  }

  v1 = qword_27D9BA5B0;

  [v1 lock];
  sub_22BF6BCE8();
  [v1 unlock];

  v2 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
  sub_22C26DF64();
  sub_22BE18000();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

void sub_22BF6BCE8()
{
  v1 = v0;
  v2 = sub_22C2720A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  sub_22C271AD4();

  v8 = sub_22C272084();
  v9 = sub_22C2737C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30 = v0;
    v11 = v10;
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    sub_22C26DF64();
    v31 = v3;
    sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = sub_22C273FD4();
    v15 = sub_22BE61C88(v13, v14, &v33);
    v3 = v31;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22BE15000, v8, v9, "De-Initializing access token for %s and performing clean up work", v11, 0xCu);
    sub_22BE26B64(v12);
    MEMORY[0x2318AD180](v12, -1, -1);
    v16 = v11;
    v1 = v30;
    MEMORY[0x2318AD180](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v7, v2);
  v18 = v1;
  sub_22BF6C06C();
  v19 = v32;
  if (v1)
  {
    sub_22C271AD4();
    v20 = v1;
    v21 = sub_22C272084();
    v22 = sub_22C2737A4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v2;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v18;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_22BE15000, v21, v22, "Unable to perform database sync and recovery: %@", v24, 0xCu);
      sub_22BE33928(v25, &qword_27D907870, &qword_22C27AB50);
      MEMORY[0x2318AD180](v25, -1, -1);
      v28 = v24;
      v2 = v23;
      MEMORY[0x2318AD180](v28, -1, -1);
    }

    else
    {
    }

    v17(v19, v2);
  }
}

void sub_22BF6C06C()
{
  v164 = *MEMORY[0x277D85DE8];
  v142 = sub_22C2720A4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v136 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v137 = &v136 - v2;
  MEMORY[0x28223BE20](v3);
  v139 = &v136 - v4;
  MEMORY[0x28223BE20](v5);
  v138 = &v136 - v6;
  v7 = sub_22BE5CE4C(&qword_27D90B658, &unk_22C28E620);
  MEMORY[0x28223BE20](v7 - 8);
  v143 = &v136 - v8;
  v9 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v157 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = &v136 - v12;
  v150 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  MEMORY[0x28223BE20](v150);
  v149 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v158 = &v136 - v15;
  v16 = sub_22C26DEA4();
  v147 = *(v16 - 8);
  v148 = v16;
  MEMORY[0x28223BE20](v16);
  v146 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22C26DF64();
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v160 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v161 = &v136 - v20;
  v21 = sub_22C271FF4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v136 - v26;
  v152 = sub_22C272024();
  v28 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C270B44();
  sub_22C271FE4();
  v31 = sub_22C272014();
  v32 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v33 = swift_slowAlloc();
    v153 = v21;
    v34 = v33;
    *v33 = 0;
    v35 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v31, v32, v35, "ToolEmeddingsDatabase.AccessTokenManager.LastReferenceDropped.CleanUpState", "", v34, 2u);
    v36 = v34;
    v21 = v153;
    MEMORY[0x2318AD180](v36, -1, -1);
  }

  (*(v22 + 16))(v24, v27, v21);
  sub_22C272064();
  swift_allocObject();
  v153 = sub_22C272054();
  (*(v22 + 8))(v27, v21);
  (*(v28 + 8))(v30, v152);
  sub_22C271C34();
  swift_allocObject();
  v152 = sub_22C271C44();
  v144 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
  v162 = 0x796C6E4F64616572;
  v163 = 0xE800000000000000;
  v37 = *MEMORY[0x277CC91D8];
  v38 = v146;
  v39 = v147;
  v40 = *(v147 + 104);
  v41 = v148;
  v40(v146, v37, v148);
  v145 = sub_22BE699D0();
  sub_22C26DF54();
  v42 = *(v39 + 8);
  v42(v38, v41);
  v162 = 0x7469725764616572;
  v163 = 0xE900000000000065;
  v40(v38, v37, v41);
  sub_22C26DF54();
  v42(v38, v41);
  v43 = v150;
  v44 = *(v150 + 48);
  type metadata accessor for ToolEmbeddingsDatabase(0);
  v45 = v158;
  sub_22BF4319C(v158, &v158[v44]);
  v46 = v149;
  sub_22BF4375C(v45, v149);
  v47 = *(v43 + 48);
  v48 = v155;
  sub_22BF437CC(v46, v155);
  sub_22BF249B8(v46 + v47);
  sub_22BF4375C(v45, v46);
  v49 = v157;
  sub_22BF437CC(v46 + *(v43 + 48), v157);
  v50 = sub_22BF249B8(v46);
  MEMORY[0x28223BE20](v50);
  *(&v136 - 2) = v49;
  if (qword_281079B90 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  v51 = v151;
  sub_22BF6ACDC(&dword_281079B98, sub_22BF43830, (&v136 - 4), v49, v52, v53, v54, v55, v136, v137, SWORD2(v137), SBYTE6(v137), SHIBYTE(v137), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
  if (!v51)
  {
    v57 = v56;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v57)
    {
      sub_22BF2CC4C();
    }

    MEMORY[0x28223BE20](v58);
    *(&v136 - 2) = v48;
    os_unfair_lock_lock(&dword_281079B98);
    sub_22BF6ACDC(&dword_281079B98, sub_22BF4386C, (&v136 - 4), v48, v59, v60, v61, v62, v136, v137, SWORD2(v137), SBYTE6(v137), SHIBYTE(v137), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
    v64 = v63;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v64)
    {
      sub_22BF2CC4C();
    }

    v66 = v48;
    MEMORY[0x28223BE20](v65);
    *(&v136 - 2) = v49;
    os_unfair_lock_lock(&dword_281079B98);
    v67 = v143;
    sub_22BF6B0F4();
    os_unfair_lock_unlock(&dword_281079B98);
    v73 = sub_22C26E164();
    v74 = sub_22BE1AEA8(v67, 1, v73);
    sub_22BE33928(v67, &qword_27D90B658, &unk_22C28E620);
    if (v74 == 1 || (v75 = sub_22BF2C188(), (v76 & 1) != 0))
    {
      v77 = v140;
      sub_22C271AD4();
      v78 = sub_22C272084();
      v79 = sub_22C2737C4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_22BE15000, v78, v79, "ToolEmbeddingsDatabase: No database available at readWrite path", v80, 2u);
        MEMORY[0x2318AD180](v80, -1, -1);
      }

      (*(v141 + 8))(v77, v142);
      sub_22BE33928(v45, &qword_27D90B660, &qword_22C28FE00);
      v81 = *(v154 + 8);
      v82 = v156;
      v81(v160, v156);
      v81(v161, v82);
      sub_22BF249B8(v49);
      v72 = v66;
      goto LABEL_14;
    }

    v83 = *&v75;
    v84 = v66;
    v85 = COERCE_DOUBLE(sub_22BF2C188());
    if ((v86 & 1) == 0 && v83 <= v85)
    {
      v87 = v138;
      sub_22C271AD4();

      v88 = sub_22C272084();
      v89 = sub_22C2737C4();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        LODWORD(v151) = v89;
        v92 = v91;
        v162 = v91;
        *v90 = 136315138;
        sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v69 = v156;
        v93 = sub_22C273FD4();
        v95 = sub_22BE61C88(v93, v94, &v162);

        *(v90 + 4) = v95;
        _os_log_impl(&dword_22BE15000, v88, v151, "ToolEmbeddingsDatabase: No need to copy readWrite to readOnly, as it readOnly is already the latest for %s", v90, 0xCu);
        sub_22BE26B64(v92);
        MEMORY[0x2318AD180](v92, -1, -1);
        MEMORY[0x2318AD180](v90, -1, -1);

        (*(v141 + 8))(v138, v142);
        sub_22BE33928(v158, &qword_27D90B660, &qword_22C28FE00);
        v68 = *(v154 + 8);
        v68(v160, v69);
      }

      else
      {

        (*(v141 + 8))(v87, v142);
        sub_22BE33928(v45, &qword_27D90B660, &qword_22C28FE00);
        v68 = *(v154 + 8);
        v69 = v156;
        v68(v160, v156);
      }

      v70 = v161;
      goto LABEL_12;
    }

    v96 = v139;
    sub_22C271AD4();

    v97 = sub_22C272084();
    v98 = sub_22C2737C4();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v162 = v100;
      *v99 = 136315138;
      sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v101 = sub_22C273FD4();
      v103 = sub_22BE61C88(v101, v102, &v162);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_22BE15000, v97, v98, "ToolEmbeddingsDatabase: Copying readWrite to readOnly for %s", v99, 0xCu);
      sub_22BE26B64(v100);
      MEMORY[0x2318AD180](v100, -1, -1);
      MEMORY[0x2318AD180](v99, -1, -1);

      v104 = *(v141 + 8);
      v105 = v139;
    }

    else
    {

      v104 = *(v141 + 8);
      v105 = v96;
    }

    v159 = v104;
    v104(v105, v142);
    v106 = objc_opt_self();
    v107 = [v106 defaultManager];
    v108 = v160;
    sub_22C26DF14();
    v109 = sub_22C272FF4();

    v110 = [v107 fileExistsAtPath_];

    if (!v110)
    {

      sub_22BE33928(v158, &qword_27D90B660, &qword_22C28FE00);
      v125 = *(v154 + 8);
      v126 = v156;
      v125(v108, v156);
      v125(v161, v126);
      v71 = v157;
      goto LABEL_13;
    }

    v111 = [v106 defaultManager];
    v112 = v161;
    sub_22C26DF14();
    v113 = sub_22C272FF4();

    v114 = [v111 fileExistsAtPath_];

    if (v114)
    {
      v115 = [v106 defaultManager];
      v116 = sub_22C26DEE4();
      v162 = 0;
      v117 = [v115 removeItemAtURL:v116 error:&v162];

      if (!v117)
      {
        v128 = v162;
        sub_22C26DE84();

        swift_willThrow();

        v49 = v157;
        v120 = v160;
        v112 = v161;
        goto LABEL_38;
      }

      v118 = v162;
      v112 = v161;
    }

    v119 = [v106 defaultManager];
    v120 = v160;
    v121 = sub_22C26DEE4();
    v122 = sub_22C26DEE4();
    v162 = 0;
    v123 = [v119 copyItemAtURL:v121 toURL:v122 error:&v162];

    if (v123)
    {
      v124 = v162;
      sub_22BF2B1C8();
      v49 = v157;
      v130 = v137;
      sub_22C271AD4();
      v131 = sub_22C272084();
      v132 = sub_22C2737C4();
      v133 = os_log_type_enabled(v131, v132);
      v129 = v158;
      if (v133)
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_22BE15000, v131, v132, "ToolEmbeddingsDatabase: Successfully copied readWrite to readOnly", v134, 2u);
        MEMORY[0x2318AD180](v134, -1, -1);

        v135 = v137;
      }

      else
      {

        v135 = v130;
      }

      v159(v135, v142);
      goto LABEL_11;
    }

    v127 = v162;
    sub_22C26DE84();

    swift_willThrow();

    v49 = v157;
LABEL_38:
    v129 = v158;
LABEL_11:
    sub_22BE33928(v129, &qword_27D90B660, &qword_22C28FE00);
    v68 = *(v154 + 8);
    v69 = v156;
    v68(v120, v156);
    v70 = v112;
LABEL_12:
    v68(v70, v69);
    v71 = v49;
LABEL_13:
    sub_22BF249B8(v71);
    v72 = v84;
LABEL_14:
    sub_22BF249B8(v72);
    sub_22BF6D528();

    return;
  }

  os_unfair_lock_unlock(&dword_281079B98);
  __break(1u);
}

uint64_t sub_22BF6D2F4()
{
  sub_22BF6BC18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s11AccessTokenCMa(uint64_t a1)
{
  result = qword_27D90B910;
  if (!qword_27D90B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF6D3A0(uint64_t a1)
{
  result = sub_22C26DF64();
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

unint64_t sub_22BF6D434()
{
  result = qword_27D90B920;
  if (!qword_27D90B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B920);
  }

  return result;
}

unint64_t sub_22BF6D4D4()
{
  result = qword_27D90B928;
  if (!qword_27D90B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B928);
  }

  return result;
}

uint64_t sub_22BF6D528()
{
  v0 = sub_22C272034();
  v18 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22C271FF4();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C272024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C270B44();
  v10 = sub_22C272014();
  sub_22C272044();
  v17 = sub_22C2737E4();
  if (sub_22C273824())
  {

    sub_22C272074();

    v11 = v18;
    if ((*(v18 + 88))(v2, v0) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v2, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v10, v17, v14, "ToolEmeddingsDatabase.AccessTokenManager.LastReferenceDropped.CleanUpState", v12, v13, 2u);
    MEMORY[0x2318AD180](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v19);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22BF6D814@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D58];
  v3 = sub_22C271C24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BF6D8C8()
{
  v0 = sub_22C271C14();
  sub_22BE952A4(v0, qword_281079BA8);
  sub_22BE199F4(v0, qword_281079BA8);
  return sub_22C271C04();
}

uint64_t sub_22BF6D914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BF6D97C()
{

  return sub_22C2720A4();
}

uint64_t ToolEmbeddingsDatabaseReplica.rawValue.getter()
{
  if (*v0)
  {
    return 0x7469725764616572;
  }

  else
  {
    return 0x796C6E4F64616572;
  }
}

uint64_t static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a1;
  v45 = a2;
  v51 = a9;
  v50 = sub_22C26DEA4();
  sub_22BE17C68();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_22C26DF64();
  sub_22BE17C68();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v44 - v30;
  v32 = *a3;
  sub_22BF6DDAC(a4, v19);
  if (sub_22BE1AEA8(v19, 1, v20) == 1)
  {
    sub_22BF6DE1C(v19);
    sub_22C271A84();
    LOBYTE(v52) = v32;
    static ToolEmbeddingsDatabasePaths.baseRelativeStoragePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:)(v44, v45, &v52, v46, v47, v48, v49, v25);
    v33 = sub_22C26DF14();
    v35 = v34;
    v36 = *(v22 + 8);
    v36(v25, v20);
    v52 = v33;
    v53 = v35;
    v37 = v50;
    (*(v12 + 104))(v16, *MEMORY[0x277CC91D8], v50);
    sub_22BE699D0();
    sub_22C26DF54();
    (*(v12 + 8))(v16, v37);

    return (v36)(v28, v20);
  }

  else
  {
    v39 = v12;
    v40 = v50;
    v41 = *(v22 + 32);
    v41(v31, v19, v20);
    if (v32 == 2)
    {
      return (v41)(v51, v31, v20);
    }

    else
    {
      v42 = 0x796C6E4F64616572;
      if (v32)
      {
        v42 = 0x7469725764616572;
        v43 = 0xE900000000000065;
      }

      else
      {
        v43 = 0xE800000000000000;
      }

      v52 = v42;
      v53 = v43;
      (*(v39 + 104))(v16, *MEMORY[0x277CC91D8], v40);
      sub_22BE699D0();
      sub_22C26DF54();
      (*(v39 + 8))(v16, v40);

      return (*(v22 + 8))(v31, v20);
    }
  }
}

uint64_t sub_22BF6DDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF6DE1C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ToolEmbeddingsDatabasePaths.baseRelativeStoragePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v80 = a7;
  v81 = a5;
  v90 = a6;
  v88 = a4;
  v79 = a2;
  v92 = a1;
  v84 = a8;
  v9 = type metadata accessor for ToolboxVersion(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v76 = (v12 - v11);
  v13 = sub_22C26DEA4();
  sub_22BE17C68();
  v15 = v14;
  v96 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v72 - v21;
  v93 = sub_22C26DF64();
  sub_22BE17C68();
  v85 = v23;
  MEMORY[0x28223BE20](v24);
  v72 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v74 = &v72 - v27;
  MEMORY[0x28223BE20](v28);
  v91 = &v72 - v29;
  MEMORY[0x28223BE20](v30);
  v89 = &v72 - v31;
  MEMORY[0x28223BE20](v32);
  v77 = &v72 - v33;
  v78 = *a3;
  sub_22BE19DC4(v22, 1, 1, v34);
  v35 = *MEMORY[0x277CC91D8];
  v36 = *(v15 + 104);
  v36(v19, v35, v13);
  v94 = v15 + 104;
  v95 = v36;
  sub_22C26DF44();
  v75 = *(v90 + 16);
  v37 = v76;
  v75(v88);
  v38 = *(v10 + 28);
  v39 = sub_22C26FDE4();
  v41 = v40;
  v42 = sub_22C26FDF4();
  v43 = v37 + v38;
  v44 = v37;
  (*(*(v42 - 8) + 8))(v43, v42);
  v97 = v39;
  v98 = v41;
  v45 = v13;
  v36(v19, v35, v13);
  v86 = sub_22BE699D0();
  v46 = v74;
  sub_22C26DF54();
  v47 = *(v96 + 8);
  v96 += 8;
  v73 = v47;
  (v47)(v19, v13);

  v82 = *(v85 + 8);
  v87 = v85 + 8;
  v48 = v93;
  v82(v46, v93);
  (v75)(v88, v90);
  v49 = v35;
  v50 = *v44;
  sub_22BF6E584(v44);
  v97 = v50;
  v97 = sub_22C273FD4();
  v98 = v51;
  v52 = v35;
  v83 = v35;
  v53 = v95;
  v95(v19, v52, v45);
  v54 = v91;
  sub_22C26DF54();
  v55 = sub_22BE1BF88();
  v56 = v73;
  v73(v55);

  v57 = v48;
  v58 = v82;
  v82(v54, v57);
  v97 = (*(v80 + 40))(v81);
  v98 = v59;
  v53(v19, v49, v45);
  v60 = v77;
  v61 = v89;
  sub_22C26DF54();
  v62 = sub_22BE1BF88();
  v56(v62);

  v63 = v93;
  v58(v61, v93);
  v97 = 0x786F426C6F6F74;
  v98 = 0xE700000000000000;
  v95(v19, v83, v45);
  sub_22C26DF54();
  v64 = sub_22BE1BF88();
  v56(v64);
  result = (v58)(v60, v63);
  if (v78 != 2)
  {
    v66 = 0x796C6E4F64616572;
    if (v78)
    {
      v66 = 0x7469725764616572;
      v67 = 0xE900000000000065;
    }

    else
    {
      v67 = 0xE800000000000000;
    }

    v97 = v66;
    v98 = v67;
    v95(v19, v83, v45);
    v68 = v72;
    v69 = v84;
    sub_22C26DF54();
    v70 = sub_22BE1BF88();
    v56(v70);

    v71 = v93;
    v82(v69, v93);
    return (*(v85 + 32))(v69, v68, v71);
  }

  return result;
}

uint64_t sub_22BF6E584(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

IntelligenceFlowPlannerSupport::ToolEmbeddingsDatabaseReplica_optional __swiftcall ToolEmbeddingsDatabaseReplica.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22BF6E654()
{
  result = qword_27D90B930;
  if (!qword_27D90B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B930);
  }

  return result;
}

uint64_t sub_22BF6E6CC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolEmbeddingsDatabaseReplica.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolEmbeddingsDatabasePaths(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolEmbeddingsDatabaseReplica(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static ToolkitCacheKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22C274014();
  }
}

uint64_t ToolkitCacheKey.hashValue.getter()
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BF6E910(uint64_t a1)
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t ToolkitCache.init(parameters:)(uint64_t a1)
{
  v2 = v1;
  sub_22BE5CE4C(&qword_27D90B938, &qword_22C28FF30);
  swift_allocObject();
  v4 = sub_22C271BB4();
  sub_22C271B74();
  sub_22BE18524();
  (*(v5 + 8))(a1);
  *(v2 + 16) = v4;
  return v2;
}

unint64_t sub_22BF6EA18()
{
  result = qword_28107BC40;
  if (!qword_28107BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107BC40);
  }

  return result;
}

uint64_t sub_22BF6EA6C(uint64_t a1, uint64_t a2)
{
  result = sub_22BF6EB10(&qword_27D90B940, a2, type metadata accessor for ToolkitCache, &protocol conformance descriptor for ToolkitCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF6EB10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolRetrievalLimitForQueryDecoration(_BYTE *result, int a2, int a3)
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

uint64_t ToolQuery.query.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolQuery.init(query:appBundleIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ToolQuery.Output.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270B74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ToolQuery.Output.init(definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C270B74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22BF6ED70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BF6EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6ED70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF6EE3C(uint64_t a1)
{
  v2 = sub_22BF6F008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6EE78(uint64_t a1)
{
  v2 = sub_22BF6F008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolQuery.Output.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B948, &qword_22C2900C0);
  sub_22BE179D8();
  v4 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6F008();
  sub_22C274234();
  sub_22C270B74();
  sub_22BF6F2F8(&qword_27D90B958, MEMORY[0x277D1ED08]);
  sub_22C273FA4();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_22BF6F008()
{
  result = qword_27D90B950;
  if (!qword_27D90B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B950);
  }

  return result;
}

uint64_t ToolQuery.Output.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_22C270B74();
  sub_22BE179D8();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90B960, &qword_22C2900C8);
  sub_22BE179D8();
  v9 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ToolQuery.Output(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6F008();
  v16 = v23;
  sub_22C274214();
  if (!v16)
  {
    v17 = v21;
    sub_22BF6F2F8(&qword_27D90B968, MEMORY[0x277D1ED20]);
    sub_22C273EB4();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_22BF6F33C(v15, v20);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for ToolQuery.Output(uint64_t a1)
{
  result = qword_27D90B990;
  if (!qword_27D90B990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF6F2F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C270B74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BF6F33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolQuery.Output(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ToolQuery.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_22C274014(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_22BF6FB9C(v2, v3);

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_22BF6F464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEC00000073644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF6F52C(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_22BF6F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6F464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF6F598(uint64_t a1)
{
  v2 = sub_22BF6FD44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6F5D4(uint64_t a1)
{
  v2 = sub_22BF6FD44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolQuery.encode(to:)(void *a1)
{
  v4 = sub_22BE5CE4C(&qword_27D90B970, &unk_22C2900D0);
  sub_22BE179D8();
  v12 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 16);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6FD44();
  sub_22C274234();
  v15 = 0;
  sub_22C273F54();
  if (!v2)
  {
    v13 = v11;
    v14 = 1;
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF66DB4(&qword_27D90B680, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_22C273F34();
  }

  return (*(v12 + 8))(v8, v4);
}

void ToolQuery.hash(into:)(void *a1)
{
  v3 = *(v1 + 16);
  sub_22C272F44();
  if (v3)
  {
    sub_22C274174();

    sub_22BF6FF38(a1, v3);
  }

  else
  {
    sub_22C274174();
  }
}

uint64_t ToolQuery.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_22C274154();
  sub_22C272F44();
  sub_22C274174();
  if (v1)
  {
    sub_22BF6FF38(__src, v1);
  }

  return sub_22C2741A4();
}

void ToolQuery.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22BE5CE4C(&qword_27D90B980, &qword_22C2900E0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6FD44();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(a1);
  }

  else
  {
    v6 = sub_22C273E64();
    v8 = v7;
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF66DB4(&qword_28106DB78, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_22C273E44();
    v9 = sub_22BE17B54();
    v10(v9);
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v11;

    sub_22BE26B64(a1);
  }
}

uint64_t sub_22BF6FB20(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22C274154();
  sub_22C272F44();
  sub_22C274174();
  if (v2)
  {
    sub_22BF6FF38(__src, v2);
  }

  return sub_22C2741A4();
}

uint64_t sub_22BF6FB9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_22C274154();

      sub_22C272F44();
      v15 = sub_22C2741A4();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_22C274014();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BF6FD44()
{
  result = qword_27D90B978;
  if (!qword_27D90B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B978);
  }

  return result;
}

uint64_t sub_22BF6FD98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v16 = result;
  if (v7)
  {
    while (2)
    {
      v17 = (v7 - 1) & v7;
LABEL_13:
      sub_22C274154();

      sub_22BEB8E5C();
      v11 = sub_22C2741A4();
      v12 = ~(-1 << *(a2 + 32));
      do
      {
        v13 = v11 & v12;
        if (((*(a2 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {

          return 0;
        }

        sub_22BEA5C9C();
        v15 = v14;

        v11 = v13 + 1;
      }

      while ((v15 & 1) == 0);

      result = v16;
      v7 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v17 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22BF6FF38(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_22C2741A4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x2318AC860](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_22C274154();

        sub_22C272F44();
        v10 = sub_22C2741A4();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_22BF70090()
{
  result = qword_27D90B988;
  if (!qword_27D90B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B988);
  }

  return result;
}

uint64_t sub_22BF7011C(uint64_t a1)
{
  result = sub_22C270B74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolQuery.Output.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BF70314()
{
  result = qword_27D90B9A0;
  if (!qword_27D90B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9A0);
  }

  return result;
}

unint64_t sub_22BF7036C()
{
  result = qword_27D90B9A8;
  if (!qword_27D90B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9A8);
  }

  return result;
}

unint64_t sub_22BF703C4()
{
  result = qword_27D90B9B0;
  if (!qword_27D90B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9B0);
  }

  return result;
}

unint64_t sub_22BF7041C()
{
  result = qword_27D90B9B8;
  if (!qword_27D90B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9B8);
  }

  return result;
}

unint64_t sub_22BF70474()
{
  result = qword_27D90B9C0;
  if (!qword_27D90B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9C0);
  }

  return result;
}

unint64_t sub_22BF704CC()
{
  result = qword_27D90B9C8;
  if (!qword_27D90B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9C8);
  }

  return result;
}

void sub_22BF70520(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C1160D8(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_22BF86F80(v9);
  *a1 = v3;
}

void sub_22BF705DC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
}

uint64_t sub_22BF70784@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22BF707B8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22BF708B8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HydrationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_22BF708F8@<X0>(_BYTE *a1@<X8>)
{
  result = HydrationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BF70924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_22BE40CC8;

  return ConcurrencySafeToolExecutionInterface.hydrate(value:)(a1, a2, a3, a4, v14, v15, v16, v17, a9);
}

uint64_t sub_22BF709E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return sub_22BF71158(a1, a2, 0);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  *(v9 + 32) = 0;
  sub_22BE2573C();
  v23 = v10 + *v10;
  v11 = swift_task_alloc();
  v12 = sub_22BE23AE4(v11);
  *v12 = v13;
  v12[1] = sub_22BF70BC8;
  sub_22BE239DC();

  return v19(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t sub_22BF70BC8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_22BE17A94();

    return v10();
  }
}

uint64_t sub_22BF70D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_task_alloc();
  *(v10 + 16) = v14;
  *v14 = v10;
  v14[1] = sub_22BF8894C;

  return ConcurrencySafeToolExecutionInterface.hydrate(values:)(a1, a2, a3, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_22BF70DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BF8894C;

  return sub_22BF72DB4(a1, 0);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  *(v10 + 32) = 0;
  sub_22BE1AC20();
  v11 = swift_task_alloc();
  v12 = sub_22BE2C6B0(v11);
  *v12 = v13;
  sub_22BE23AF4(v12);
  sub_22BF88C54();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_22BF70F74()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  sub_22BE232FC();
  *v5 = v4;
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_22BE2589C();

    return v12(v3);
  }
}

uint64_t sub_22BF71090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_22BE40CC8;

  return ConcurrencySafeToolExecutionInterface.hydrate(value:options:)();
}

uint64_t sub_22BF71158(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 224) = a2;
  *(v4 + 232) = v3;
  *(v4 + 344) = a3;
  *(v4 + 216) = a1;
  v5 = sub_22C2720A4();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v6 = sub_22C272874();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF712CC, 0, 0);
}

uint64_t sub_22BF712CC()
{
  sub_22BE183F0();
  (*(v0[36] + 16))(v0[38], v0[28], v0[35]);
  static SessionInjectionContext<>.inherited.getter(v0 + 2);
  v1 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22BF71344()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 120))
  {
    sub_22BE49224((v0 + 96), v0 + 56);
    sub_22BF88D74((v0 + 56));
    sub_22BE2573C();
    v1 = swift_task_alloc();
    *(v0 + 312) = v1;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v1 = v2;
    v1[1] = sub_22BF71608;
    sub_22BE23898(v3, *(v0 + 264));

    __asm { BRAA            X8, X16 }
  }

  v5 = *(v0 + 280);
  sub_22BE33928(v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v5);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  sub_22BE3555C();
  if (!v11)
  {
    sub_22BE3C49C();
    sub_22BE33928(v0 + 16, &qword_27D90B178, &qword_22C28BE40);
    v20 = sub_22BF88968();
    v21(v20, v9);
    v22 = sub_22BE3BF10();
    v23(v22);

    sub_22BE1A26C();
    sub_22BE2330C();

    __asm { BRAA            X1, X16 }
  }

  sub_22BE33928(v10, &qword_27D907400, &unk_22C274F90);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 320) = v12;
  *v12 = v13;
  sub_22BE3E908(v12);
  sub_22BE2330C();

  return sub_22BF7C380(v14, v15, v16, v17);
}

uint64_t sub_22BF71608()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF71918()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 328) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF71A10()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 176, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 200))
  {
    sub_22BE49224((v0 + 176), v0 + 136);
    sub_22BF88D74((v0 + 136));
    sub_22BE2573C();
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v1 = v2;
    v1[1] = sub_22BF71D7C;
    sub_22BE30F2C(v3);
    sub_22BE25494();

    __asm { BRAA            X8, X16 }
  }

  sub_22BE22C8C();
  sub_22BE33928(v6, v7, v8);
  v9 = *(v0 + 280);
  sub_22BE22C8C();
  sub_22BE33928(v10, v11, v12);
  v13 = sub_22BF88968();
  v14(v13, v9);
  sub_22BE2B734();
  v15();

  sub_22BE1A26C();

  return v16();
}

uint64_t sub_22BF71C60()
{
  sub_22BE183FC();
  sub_22BE33928(v0 + 16, &qword_27D90B178, &qword_22C28BE40);
  v1 = sub_22BE18944();
  v2(v1);
  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF71CF0()
{
  sub_22BE183FC();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF71D7C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF71E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  sub_22BE26B64((v10 + 136));
  sub_22BE33928(v10 + 16, &qword_27D90B178, &qword_22C28BE40);
  v11 = sub_22BE35FA4();
  v12(v11);
  sub_22BE376A8();
  v13();

  sub_22BE1A26C();
  sub_22BF88C3C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(value:options:)()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 240) = v4;
  *(v1 + 248) = v0;
  *(v1 + 224) = v5;
  *(v1 + 232) = v6;
  *(v1 + 216) = v7;
  v8 = sub_22C2720A4();
  *(v1 + 256) = v8;
  sub_22BE17A18(v8);
  *(v1 + 264) = v9;
  *(v1 + 272) = sub_22BE25184();
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  *(v1 + 280) = sub_22BE3602C();
  *(v1 + 288) = swift_task_alloc();
  v10 = sub_22C272874();
  *(v1 + 296) = v10;
  sub_22BE17A18(v10);
  *(v1 + 304) = v11;
  *(v1 + 312) = sub_22BE3602C();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 360) = *v3;
  v12 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BF72088()
{
  sub_22BE183F0();
  (*(v0[38] + 16))(v0[40], v0[28], v0[37]);
  static SessionInjectionContext<>.inherited.getter(v0 + 2);
  v1 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22BF72100()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 120))
  {
    sub_22BE49224((v0 + 96), v0 + 56);
    sub_22BF88D74((v0 + 56));
    sub_22BE2573C();
    v1 = swift_task_alloc();
    *(v0 + 328) = v1;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v1 = v2;
    v1[1] = sub_22BF723C4;
    sub_22BE23898(v3, *(v0 + 280));

    __asm { BRAA            X8, X16 }
  }

  v5 = *(v0 + 296);
  sub_22BE33928(v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v5);
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  sub_22BE3555C();
  if (!v11)
  {
    sub_22BF88CAC();
    sub_22BE33928(v0 + 16, &qword_27D90B178, &qword_22C28BE40);
    v22 = sub_22BF88968();
    v23(v22, v9);
    v24 = sub_22BE3BF10();
    v25(v24);

    sub_22BE1A26C();
    sub_22BE2330C();

    __asm { BRAA            X1, X16 }
  }

  sub_22BE33928(v10, &qword_27D907400, &unk_22C274F90);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 336) = v12;
  *v12 = v13;
  sub_22BE2355C(v12);
  sub_22BE2330C();

  return sub_22BF7E34C(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_22BF723C4()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF726D4()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 344) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF727CC()
{
  sub_22BE183FC();
  sub_22BE33928(v0 + 16, &qword_27D90B178, &qword_22C28BE40);
  v1 = sub_22BE18944();
  v2(v1);
  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF7285C()
{
  sub_22BE183FC();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF728E8()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 176, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 200))
  {
    sub_22BE49224((v0 + 176), v0 + 136);
    sub_22BF88D74((v0 + 136));
    sub_22BE2573C();
    v1 = swift_task_alloc();
    *(v0 + 352) = v1;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v1 = v2;
    v1[1] = sub_22BF72B38;
    sub_22BE30F2C(v3);
    sub_22BE25494();

    __asm { BRAA            X8, X16 }
  }

  sub_22BE22C8C();
  sub_22BE33928(v6, v7, v8);
  v9 = *(v0 + 296);
  sub_22BE22C8C();
  sub_22BE33928(v10, v11, v12);
  v13 = sub_22BF88968();
  v14(v13, v9);
  sub_22BE2B734();
  v15();

  sub_22BE1A26C();

  return v16();
}

uint64_t sub_22BF72B38()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  v3 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BF72C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  sub_22BE26B64((v10 + 136));
  sub_22BE33928(v10 + 16, &qword_27D90B178, &qword_22C28BE40);
  v11 = sub_22BE35FA4();
  v12(v11);
  sub_22BE376A8();
  v13();

  sub_22BE1A26C();
  sub_22BF88C3C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_22BF72CF8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22BF8894C;

  return ConcurrencySafeToolExecutionInterface.hydrate(values:options:)(a1, a2, a3, a4);
}

uint64_t sub_22BF72DB4(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 32) = a1;
  *(v3 + 16) = v2;
  return MEMORY[0x2822009F8](sub_22BF72DDC, 0, 0);
}

uint64_t sub_22BF72DDC()
{
  sub_22BE201F0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v1;
  sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 48) = v4;
  *v4 = v5;
  v4[1] = sub_22BF72EE8;
  sub_22BE41DD4();
  sub_22BE1AF3C();

  return MEMORY[0x282200740]();
}

uint64_t sub_22BF72EE8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF72FF0()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(values:options:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 80) = *a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF7306C()
{
  sub_22BE201F0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_22BF73180;
  sub_22BE41DD4();
  sub_22BE1AF3C();

  return MEMORY[0x282200740]();
}

uint64_t sub_22BF73180()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF73288()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF732E8(uint64_t a1)
{
  v2 = sub_22C2720A4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C272754();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C2726B4();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C272874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = *(v11 + 16);
  v42 = a1;
  v17(&v40 - v15, a1, v10, v14);
  v18 = (*(v11 + 88))(v16, v10);
  if (v18 == *MEMORY[0x277D72A58] || v18 == *MEMORY[0x277D729E8])
  {
    goto LABEL_6;
  }

  if (v18 == *MEMORY[0x277D72A38])
  {
    (*(v11 + 96))(v16, v10);
    v21 = swift_projectBox();
    v22 = v47;
    (*(v47 + 16))(v6, v21, v4);
    v20 = sub_22BF846A8();
    (*(v22 + 8))(v6, v4);
LABEL_12:

    return v20 & 1;
  }

  if (v18 == *MEMORY[0x277D729E0])
  {
    (*(v11 + 96))(v16, v10);
    v23 = swift_projectBox();
    v24 = v46;
    (*(v46 + 16))(v9, v23, v7);
    v25 = sub_22C2726A4();
    v20 = sub_22BF73E2C(v25);

    (*(v24 + 8))(v9, v7);
    goto LABEL_12;
  }

  if (v18 == *MEMORY[0x277D72A30])
  {
    goto LABEL_6;
  }

  if (v18 == *MEMORY[0x277D72A40] || v18 == *MEMORY[0x277D729F8])
  {
    (*(v11 + 8))(v16, v10);
    v20 = 1;
    return v20 & 1;
  }

  if (v18 == *MEMORY[0x277D72A60])
  {
LABEL_6:
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v27 = v43;
    sub_22C271AD4();
    v28 = v41;
    (v17)(v41, v42, v10);
    v29 = sub_22C272084();
    v30 = sub_22C2737A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v31 = 136315138;
      v47 = sub_22C272824();
      v32 = v28;
      v34 = v33;
      v35 = *(v11 + 8);
      v35(v32, v10);
      v36 = v35;
      v37 = sub_22BE61C88(v47, v34, &v49);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_22BE15000, v29, v30, "ConcurrencySafeToolExecutionInterface: Unexpected TypedValue case during hydration: %s", v31, 0xCu);
      v38 = v48;
      sub_22BE26B64(v48);
      MEMORY[0x2318AD180](v38, -1, -1);
      MEMORY[0x2318AD180](v31, -1, -1);

      v39 = v36;
    }

    else
    {

      v39 = *(v11 + 8);
      v39(v28, v10);
    }

    (*(v44 + 8))(v27, v45);
    v39(v16, v10);
  }

  v20 = 0;
  return v20 & 1;
}

void ConcurrencySafeToolExecutionInterface.needsHydrating(value:)()
{
  sub_22BE19460();
  v68 = v0;
  v69 = v1;
  v67 = v2;
  v4 = v3;
  sub_22C2720A4();
  sub_22BE179D8();
  v63 = v6;
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v62 = v8 - v7;
  v9 = sub_22C272754();
  sub_22BE179D8();
  v66 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22C2726B4();
  sub_22BE179D8();
  v65 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v20 = v19 - v18;
  v21 = sub_22C272874();
  sub_22BE179D8();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = *(v23 + 16);
  v61 = v4;
  v28(&v59 - v29, v4, v21, v27);
  v30 = sub_22BE1B328();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x277D72A58] || v32 == *MEMORY[0x277D729E8])
  {
    goto LABEL_16;
  }

  if (v32 == *MEMORY[0x277D72A38])
  {
    v34 = sub_22BE1B328();
    v35(v34);
    v36 = swift_projectBox();
    (*(v66 + 16))(v14, v36, v9);
    ConcurrencySafeToolExecutionInterface.needsHydrating(entity:)();
    v37 = sub_22BE2BA80();
    v38(v37);
LABEL_11:

    goto LABEL_12;
  }

  if (v32 == *MEMORY[0x277D729E0])
  {
    v39 = sub_22BE1B328();
    v40(v39);
    v41 = swift_projectBox();
    v42 = v65;
    (*(v65 + 16))(v20, v41, v15);
    v43 = sub_22C2726A4();
    (*(v69 + 112))(v43, v67);

    (*(v42 + 8))(v20, v15);
    goto LABEL_11;
  }

  if (v32 == *MEMORY[0x277D72A30] || v32 == *MEMORY[0x277D72A40] || v32 == *MEMORY[0x277D729F8] || v32 == *MEMORY[0x277D72A60])
  {
LABEL_16:
    v44 = sub_22BE1B328();
    v45(v44);
    goto LABEL_12;
  }

  v46 = v62;
  sub_22C271AD4();
  v47 = v60;
  (v28)(v60, v61, v21);
  v48 = sub_22C272084();
  v49 = sub_22C2737A4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_22BE19E2C();
    v69 = sub_22BE25618();
    v70 = v69;
    *v50 = 136315138;
    v68 = sub_22C272824();
    v51 = v47;
    v53 = v52;
    v54 = *(v23 + 8);
    v54(v51, v21);
    v55 = v54;
    v56 = sub_22BE61C88(v68, v53, &v70);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_22BE15000, v48, v49, "ConcurrencySafeToolExecutionInterface: Unexpected TypedValue case during hydration: %s", v50, 0xCu);
    sub_22BE35E84();
    sub_22BE183C8();
    sub_22BE183C8();

    v57 = v55;
  }

  else
  {

    v57 = *(v23 + 8);
    v57(v47, v21);
  }

  (*(v63 + 8))(v46, v64);
  v58 = sub_22BE1B328();
  (v57)(v58);
LABEL_12:
  sub_22BE1AABC();
}

Swift::Bool __swiftcall ConcurrencySafeToolExecutionInterface.needsHydrating(values:)(Swift::OpaquePointer values)
{
  v5 = v1;
  v6 = v2;
  return sub_22BF0CCB8(sub_22BF84EB4, &v4, values._rawValue);
}

uint64_t ToolKitExecutionSession.executorEventStream.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF73F00()
{
  sub_22BE183F0();
  v0[4] = *(*(v0[3] + 16) + 16);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_22BE23AF4(v1);

  return sub_22BF74184();
}

uint64_t sub_22BF73FA0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE3C84C();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v2;
  sub_22BE18C2C();
  *v8 = v7;
  v5[6] = v1;

  if (!v1)
  {
    v5[7] = v0;
    v5[8] = v3;
  }

  sub_22BE19504();
  sub_22BE1AF3C();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF740A4()
{
  sub_22BE183FC();

  swift_getObjectType();
  sub_22C272304();
  swift_unknownObjectRelease();
  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF74128()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF74198()
{
  sub_22BE183FC();
  sub_22BE41FC0();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  v3 = sub_22BE5CE4C(&qword_27D90BA00, &unk_22C290B78);
  v4 = sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  *v2 = v1;
  v2[1] = sub_22BF74278;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v1 + 16, v0, v3, v4, v5);
}

uint64_t sub_22BF74278()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ToolKitExecutionSession.execute(toolInvocation:dialogHandler:)()
{
  sub_22BE183F0();
  v4 = sub_22BF88AA8(v1, v2, v3);
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v6 = sub_22BE3602C();
  v7 = sub_22BF88C94(v6);
  v8 = sub_22BF88C7C(v7);
  v0[10] = v8;
  sub_22BE17A18(v8);
  v0[11] = v9;
  v0[12] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF74494()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88A8C(v2);
  sub_22C271FE4();
  sub_22C272014();
  v3 = sub_22C2737F4();
  if (sub_22BF88B60(v3))
  {
    v4 = sub_22BF88ACC();
    v6 = sub_22BF88B78(v4, v5);
    sub_22BE35B7C(&dword_22BE15000, v7, v8, v6, "IF.ToolKitExecutionSession.execute", "");
    sub_22BE311B8();
  }

  sub_22BE29E9C();
  v9 = sub_22BE1A718();
  v10(v9);
  v11 = sub_22C272064();
  sub_22BE33584(v11);
  v0[13] = sub_22BE25254();
  v12 = sub_22BE22CB0();
  v13(v12);
  v14 = sub_22BE1971C();
  v15(v14);
  v0[14] = *(*(v1 + 16) + 16);

  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF745CC()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  *v6 = *v1;
  v5[16] = v7;
  v5[17] = v0;

  if (!v0)
  {
    v5[18] = v3;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF746DC()
{
  sub_22BE183F0();

  swift_getObjectType();
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 152) = v1;
  *v1 = v2;
  v1[1] = sub_22BF7478C;
  v3 = sub_22BF88A58();

  return MEMORY[0x2821DAA58](v3);
}

uint64_t sub_22BF7478C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF74884()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_22BF74A44(v1, v2);

  sub_22BE1A26C();
  sub_22BE1AF3C();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22BF7491C()
{
  sub_22BE27B90();
  sub_22BE201F0();

  sub_22BF88A08();
  sub_22BF74A44(v0, *(v1 + 24));

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BF749B0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF88A08();
  sub_22BF74A44(v0, *(v1 + 24));

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BF74A44(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C272224();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22C272034();
  v49 = *(v51 - 1);
  MEMORY[0x28223BE20](v51);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C271FF4();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C272244();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C272024();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C270B54();
  (*(v10 + 16))(v12, a2, v9);
  v17 = sub_22C272014();
  sub_22C272044();
  v50 = sub_22C2737E4();
  if (sub_22C273824())
  {
    v43 = v12;
    v44 = v17;
    v45 = v9;
    v46 = v8;
    v47 = v13;
    v18 = v55;

    v19 = v48;
    sub_22C272074();

    v20 = v49;
    v21 = v51;
    if ((*(v49 + 88))(v19, v51) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v19, v21);
      v51 = "tool=%{signpost.telemetry:string1,public}s %s";
      v22 = 2;
    }

    v24 = v18;
    v25 = v14;
    v26 = v16;
    v27 = v10;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v57 = v29;
    *v28 = v22;
    *(v28 + 1) = v22;
    *(v28 + 2) = 2082;
    v30 = v52;
    v31 = v43;
    sub_22C272234();
    v32 = sub_22C2721D4();
    v34 = v33;
    (*(v53 + 8))(v30, v54);
    v35 = sub_22BE61C88(v32, v34, &v57);

    *(v28 + 4) = v35;
    (*(v27 + 8))(v31, v45);
    *(v28 + 12) = 2080;
    sub_22C270B24();
    v36 = sub_22C273AD4();
    v38 = sub_22BE61C88(v36, v37, &v57);

    *(v28 + 14) = v38;
    v39 = v46;
    v40 = sub_22C271FD4();
    v41 = v44;
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v44, v50, v40, "IF.ToolKitExecutionSession.execute", v51, v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318AD180](v29, -1, -1);
    MEMORY[0x2318AD180](v28, -1, -1);

    (*(v24 + 8))(v39, v56);
    return (*(v25 + 8))(v26, v47);
  }

  else
  {

    (*(v55 + 8))(v8, v56);
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t ToolKitExecutionSession.undo(_:)()
{
  sub_22BE183F0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C271FF4();
  v1[4] = v3;
  sub_22BE17A18(v3);
  v1[5] = v4;
  v1[6] = sub_22BE3602C();
  v1[7] = swift_task_alloc();
  v5 = sub_22C272024();
  v1[8] = v5;
  sub_22BE17A18(v5);
  v1[9] = v6;
  v1[10] = sub_22BE25184();
  v7 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF750B4()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22C270B54();
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.undo", "");
    sub_22BE311B8();
  }

  sub_22BF88D14();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 88) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  *(v0 + 96) = *(*(v1 + 16) + 16);

  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF751F8()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  *v6 = *v1;
  v5[14] = v7;
  v5[15] = v0;

  if (!v0)
  {
    v5[16] = v3;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF75308()
{
  sub_22BE183F0();

  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_22BF753B8;
  v3 = sub_22BE3F448();

  return MEMORY[0x2821DAA48](v3, ObjectType);
}

uint64_t sub_22BF753B8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF754B0()
{
  sub_22BE183FC();
  swift_unknownObjectRelease();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF75548()
{
  sub_22BE27B90();
  sub_22BE201F0();

  sub_22BE3C218();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF755E0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3C218();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.redo(_:)()
{
  sub_22BE183F0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C271FF4();
  v1[4] = v3;
  sub_22BE17A18(v3);
  v1[5] = v4;
  v1[6] = sub_22BE3602C();
  v1[7] = swift_task_alloc();
  v5 = sub_22C272024();
  v1[8] = v5;
  sub_22BE17A18(v5);
  v1[9] = v6;
  v1[10] = sub_22BE25184();
  v7 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF75774()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22C270B54();
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.redo", "");
    sub_22BE311B8();
  }

  sub_22BF88D14();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 88) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  *(v0 + 96) = *(*(v1 + 16) + 16);

  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF758B8()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  *v6 = *v1;
  v5[14] = v7;
  v5[15] = v0;

  if (!v0)
  {
    v5[16] = v3;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF759C8()
{
  sub_22BE183F0();

  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_22BF75A78;
  v3 = sub_22BE3F448();

  return MEMORY[0x2821DAA40](v3, ObjectType);
}

uint64_t sub_22BF75A78()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF75B70()
{
  sub_22BE183FC();
  swift_unknownObjectRelease();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF75C08()
{
  sub_22BE27B90();
  sub_22BE201F0();

  sub_22BE3C218();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF75CA0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3C218();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.resolve(reference:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF75D50()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  v0 = swift_task_alloc();
  v1 = sub_22BE28A04(v0);
  *v1 = v2;
  sub_22BF88978(v1);

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t ConcurrencySafeToolKitExecutionSession.resolve(reference:)()
{
  sub_22BE183F0();
  sub_22BE294A0(v1, v2);
  v3 = sub_22C271FF4();
  v0[5] = v3;
  sub_22BE17A18(v3);
  v0[6] = v4;
  v5 = sub_22BE3602C();
  v6 = sub_22BF88DA8(v5);
  v7 = sub_22BE42638(v6);
  v0[9] = v7;
  sub_22BE17A18(v7);
  v0[10] = v8;
  v0[11] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_22BE183F0();
  sub_22BE294A0(v1, v2);
  v3 = sub_22C271FF4();
  v0[5] = v3;
  sub_22BE17A18(v3);
  v0[6] = v4;
  v5 = sub_22BE3602C();
  v6 = sub_22BF88DA8(v5);
  v7 = sub_22BE42638(v6);
  v0[9] = v7;
  sub_22BE17A18(v7);
  v0[10] = v8;
  v0[11] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_22BE183F0();
  sub_22BE294A0(v1, v2);
  v3 = sub_22C272874();
  v0[5] = v3;
  sub_22BE17A18(v3);
  v0[6] = v4;
  v0[7] = sub_22BE25184();
  v5 = sub_22C272834();
  v0[8] = v5;
  sub_22BE17A18(v5);
  v0[9] = v6;
  v0[10] = sub_22BE3602C();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v7 = sub_22C2726F4();
  v0[13] = v7;
  sub_22BE17A18(v7);
  v0[14] = v8;
  v0[15] = sub_22BE3602C();
  v0[16] = swift_task_alloc();
  v9 = sub_22C2720A4();
  v0[17] = v9;
  sub_22BE17A18(v9);
  v0[18] = v10;
  v0[19] = sub_22BE3602C();
  v0[20] = swift_task_alloc();
  v11 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF75EBC()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88B44(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.resolve", "");
    sub_22BE311B8();
  }

  sub_22BF889E8();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 96) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF75FE0(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 112) = v4;
  *(v6 + 120) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE3CDEC(v14);
    *v15 = v16;
    sub_22BE3D1A0(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA80](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF76140()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF76238()
{
  sub_22BE183FC();
  sub_22BE3AC94();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF762C4()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE36530();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF76350()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3CA94();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.resolve(reference:coercedTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF763FC()
{
  sub_22BE183F0();
  sub_22BE37B2C();
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_22BF88938;
  sub_22BF88A58();

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:coercedTo:)();
}

uint64_t ConcurrencySafeToolKitExecutionSession.resolve(reference:coercedTo:)()
{
  sub_22BE183F0();
  v4 = sub_22BF88AA8(v1, v2, v3);
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v6 = sub_22BE3602C();
  v7 = sub_22BF88C94(v6);
  v8 = sub_22BF88C7C(v7);
  v0[10] = v8;
  sub_22BE17A18(v8);
  v0[11] = v9;
  v0[12] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_22BE183F0();
  v4 = sub_22BF88AA8(v1, v2, v3);
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v6 = sub_22BE3602C();
  v7 = sub_22BF88C94(v6);
  v8 = sub_22BF88C7C(v7);
  v0[10] = v8;
  sub_22BE17A18(v8);
  v0[11] = v9;
  v0[12] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF7656C()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88A8C(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BF88ACC();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.resolveCoercedTo", "");
    sub_22BE311B8();
  }

  sub_22BE29E9C();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 104) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE28E68(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF7668C(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 120) = v4;
  *(v6 + 128) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE27A60(v14);
    *v15 = v16;
    sub_22BF88B90(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA70](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF767EC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF768E4()
{
  sub_22BE183FC();
  sub_22BF88B28();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF76970()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF76A00()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF76AB0()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  v0 = swift_task_alloc();
  v1 = sub_22BE28A04(v0);
  *v1 = v2;
  sub_22BF88978(v1);

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t sub_22BF76C1C()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88B44(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.resolveDeferredValue", "");
    sub_22BE311B8();
  }

  sub_22BF889E8();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 96) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF76D40(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 112) = v4;
  *(v6 + 120) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE3CDEC(v14);
    *v15 = v16;
    sub_22BE3D1A0(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA78](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF76EA0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF76F98()
{
  sub_22BE183FC();
  sub_22BE3AC94();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF77024()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE36530();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF770B0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3CA94();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF7715C()
{
  sub_22BE183F0();
  sub_22BE37B2C();
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_22BF88938;
  sub_22BF88A58();

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:coercedTo:)();
}

uint64_t sub_22BF772CC()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88A8C(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BF88ACC();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.resolveDeferredValueCoercedTo", "");
    sub_22BE311B8();
  }

  sub_22BE29E9C();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 104) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE28E68(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF773EC(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 120) = v4;
  *(v6 + 128) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE27A60(v14);
    *v15 = v16;
    sub_22BF88B90(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA68](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF7754C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF77644()
{
  sub_22BE183FC();
  sub_22BF88B28();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF776D0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF77760()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.inject(value:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF77810()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  v0 = swift_task_alloc();
  v1 = sub_22BE28A04(v0);
  *v1 = v2;
  sub_22BF88978(v1);

  return ConcurrencySafeToolKitExecutionSession.inject(value:)();
}

uint64_t ConcurrencySafeToolKitExecutionSession.inject(value:)()
{
  sub_22BE183F0();
  sub_22BE294A0(v1, v2);
  v3 = sub_22C271FF4();
  v0[5] = v3;
  sub_22BE17A18(v3);
  v0[6] = v4;
  v5 = sub_22BE3602C();
  v6 = sub_22BF88DA8(v5);
  v7 = sub_22BE42638(v6);
  v0[9] = v7;
  sub_22BE17A18(v7);
  v0[10] = v8;
  v0[11] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF7797C()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88B44(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.inject", "");
    sub_22BE311B8();
  }

  sub_22BF889E8();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 96) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF77AA0(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 112) = v4;
  *(v6 + 120) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE3CDEC(v14);
    *v15 = v16;
    sub_22BE3D1A0(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA50](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF77C00()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF77CF8()
{
  sub_22BE183FC();
  sub_22BE3AC94();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF77D84()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE36530();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF77E10()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3CA94();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.enumerate(valueSet:in:query:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF77EC0()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22BF77F58;
  sub_22BE3E2E8(*(v0 + 16));

  return ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:options:)();
}

uint64_t sub_22BF77F58()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;

  sub_22BE2589C();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:options:)()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C271FF4();
  v1[7] = v6;
  sub_22BE17A18(v6);
  v1[8] = v7;
  v1[9] = sub_22BE3602C();
  v1[10] = swift_task_alloc();
  v8 = sub_22C272024();
  v1[11] = v8;
  sub_22BE17A18(v8);
  v1[12] = v9;
  v1[13] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF78148()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22C270B54();
  sub_22C271FE4();
  v1 = sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.enumerate", "");
    sub_22BE311B8();
  }

  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 112) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  *v15 = v0;
  sub_22BE23AF4(v15);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF7828C(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  v6[16] = v4;
  v6[17] = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v6[18] = v14;
    *v14 = v8;
    v14[1] = sub_22BF78408;
    sub_22BE3E2E8(v6[2]);
    sub_22BE252DC();

    return MEMORY[0x2821DAA88](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_22BF78408()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF78510()
{
  sub_22BE183FC();
  swift_unknownObjectRelease();
  sub_22BF7B864();

  sub_22BE2589C();
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_22BF785B0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF78644()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.enumerate(valueSet:in:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF786F8()
{
  sub_22BE183F0();
  sub_22BE37B2C();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22BF78788;
  sub_22BE3F448();

  return ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:)();
}

uint64_t sub_22BF78788()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;

  sub_22BE2589C();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:)()
{
  sub_22BE183F0();
  v4 = sub_22BF88AA8(v1, v2, v3);
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v6 = sub_22BE3602C();
  v7 = sub_22BF88C94(v6);
  v8 = sub_22BF88C7C(v7);
  v0[10] = v8;
  sub_22BE17A18(v8);
  v0[11] = v9;
  v0[12] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF78958()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88A8C(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BF88ACC();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.enumerate", "");
    sub_22BE311B8();
  }

  sub_22BE29E9C();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 104) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE28E68(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF78A78(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  v6[15] = v4;
  v6[16] = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v6[17] = v14;
    *v14 = v8;
    v14[1] = sub_22BF78BF4;
    sub_22BE3E2E8(v6[2]);
    sub_22BE252DC();

    return MEMORY[0x2821DAA90](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_22BF78BF4()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF78CFC()
{
  sub_22BE183FC();
  sub_22BF88B28();
  sub_22BF7B864();

  sub_22BE2589C();
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_22BF78D90()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF78E20()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.fetchToolInvocationSummary(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF78ED0()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  v0 = swift_task_alloc();
  v1 = sub_22BE28A04(v0);
  *v1 = v2;
  sub_22BF88978(v1);

  return ConcurrencySafeToolKitExecutionSession.fetchToolInvocationSummary(for:)();
}

uint64_t sub_22BF78F54()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t ConcurrencySafeToolKitExecutionSession.fetchToolInvocationSummary(for:)()
{
  sub_22BE183F0();
  sub_22BE294A0(v1, v2);
  v3 = sub_22C271FF4();
  v0[5] = v3;
  sub_22BE17A18(v3);
  v0[6] = v4;
  v5 = sub_22BE3602C();
  v6 = sub_22BF88DA8(v5);
  v7 = sub_22BE42638(v6);
  v0[9] = v7;
  sub_22BE17A18(v7);
  v0[10] = v8;
  v0[11] = sub_22BE25184();
  v9 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF7911C()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88B44(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BE202F8();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.fetchToolInvocationSummary", "");
    sub_22BE311B8();
  }

  sub_22BF889E8();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 96) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE3ADF8(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF79240(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE3C84C();
  v6 = v5;
  sub_22BE18800();
  *v7 = v6;
  v8 = *v3;
  sub_22BE18C2C();
  *v9 = v8;
  *(v6 + 112) = v4;
  *(v6 + 120) = v2;

  if (v2)
  {
    sub_22BE19504();
    sub_22BE252DC();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    swift_getObjectType();
    v14 = swift_task_alloc();
    v15 = sub_22BE3CDEC(v14);
    *v15 = v16;
    sub_22BE3D1A0(v15);
    sub_22BE252DC();

    return MEMORY[0x2821DAA28](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_22BF793A0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF79498()
{
  sub_22BE183FC();
  sub_22BE3AC94();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF79524()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE36530();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF795B0()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BE3CA94();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.coerce(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF7965C()
{
  sub_22BE183F0();
  sub_22BE37B2C();
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_22BF796E8;
  sub_22BF88A58();

  return ConcurrencySafeToolKitExecutionSession.coerce(value:to:)();
}

uint64_t sub_22BF796E8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t ConcurrencySafeToolKitExecutionSession.coerce(value:to:)()
{
  sub_22BE183F0();
  v4 = sub_22BF88AA8(v1, v2, v3);
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v6 = sub_22BE3602C();
  v7 = sub_22BF88C94(v6);
  v8 = sub_22BF88C7C(v7);
  v0[10] = v8;
  sub_22BE17A18(v8);
  v0[11] = v9;
  v0[12] = sub_22BE25184();
  v10 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF798AC()
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BF88A8C(v1);
  sub_22C271FE4();
  sub_22C272014();
  v2 = sub_22C2737F4();
  if (sub_22BF88B60(v2))
  {
    v3 = sub_22BF88ACC();
    v5 = sub_22BF88B78(v3, v4);
    sub_22BE35B7C(&dword_22BE15000, v6, v7, v5, "IF.ToolKitExecutionSession.coerce", "");
    sub_22BE311B8();
  }

  sub_22BE29E9C();
  v8 = sub_22BE1A718();
  v9(v8);
  v10 = sub_22C272064();
  sub_22BE33584(v10);
  *(v0 + 104) = sub_22BE25254();
  v11 = sub_22BE22CB0();
  v12(v11);
  v13 = sub_22BE1971C();
  v14(v13);
  v15 = swift_task_alloc();
  v16 = sub_22BE28E68(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE25494();

  return sub_22BF74184();
}

uint64_t sub_22BF799CC()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE3C84C();
  v4 = v3;
  sub_22BE18800();
  *v5 = v4;
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v4 + 120) = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    sub_22BE19504();
    sub_22BE1AF3C();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    swift_getObjectType();
    v12 = swift_task_alloc();
    v13 = sub_22BE27A60(v12);
    *v13 = v14;
    v13[1] = sub_22BF79B40;
    sub_22BE1AF3C();

    return MEMORY[0x2821DAAA8](v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_22BF79B40()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF79C38()
{
  sub_22BE183FC();
  sub_22BF88B28();
  sub_22BF7B864();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF79CC4()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_22BF79D54()
{
  sub_22BE27B90();
  sub_22BE201F0();
  swift_unknownObjectRelease();
  sub_22BF88A08();
  sub_22BF7B864();

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t ToolKitExecutionSession.hydrate(value:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF79E04()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  sub_22BE254D4(&dword_22C2905A8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = sub_22BE28A04(v1);
  *v2 = v3;
  v4 = sub_22BF88978(v2);

  return v6(v4);
}

uint64_t ToolKitExecutionSession.hydrate(values:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF79EAC()
{
  sub_22BE183F0();
  sub_22BE254D4(&dword_22C2905B8);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_22BF88950;
  v3 = sub_22BE3F448();

  return v5(v3, 0);
}

uint64_t ToolKitExecutionSession.hydrate(value:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 48) = *a3;
  return sub_22BE18DA0();
}

uint64_t sub_22BF79F6C()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  sub_22BE254D4(&dword_22C2905A8);
  v9 = v1;
  v2 = swift_task_alloc();
  v3 = sub_22BE28A04(v2);
  *v3 = v4;
  v3[1] = sub_22BF88934;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 48);

  return v9(v5, v6, v7);
}

uint64_t ToolKitExecutionSession.hydrate(values:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 40) = *a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF7A024()
{
  sub_22BE183F0();
  sub_22BE254D4(&dword_22C2905B8);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_22BF24470;
  v3 = sub_22BE3E2E8(*(v0 + 16));

  return v5(v3);
}

uint64_t sub_22BF7A0E0()
{
  sub_22BE183F0();
  sub_22BE41FC0();
  v0 = swift_task_alloc();
  v1 = sub_22BE28A04(v0);
  *v1 = v2;
  sub_22BF88978(v1);

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t sub_22BF7A318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22BF8899C();
  a25 = v27;
  a26 = v28;
  sub_22BE40C34();
  a24 = v26;
  v29 = v26[20];
  v30 = v26[14];
  sub_22BF88C00(v31);
  v32 = *(v30 + 16);
  v33 = sub_22BE36788();
  v32(v33);
  v34 = sub_22C272084();
  sub_22C273794();
  sub_22BE4612C();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v26[20];
  v39 = v26[17];
  v38 = v26[18];
  v40 = v26[16];
  if (v36)
  {
    v63 = v26[17];
    v64 = v32;
    sub_22BE19E2C();
    a15 = sub_22BF88B08();
    *v37 = 136315138;
    v41 = sub_22BE410B0();
    v32(v41);
    sub_22BE3E79C();
    v42 = sub_22C273074();
    v62 = v29;
    v44 = v43;
    v45 = sub_22BE2BA80();
    v46(v45);
    v47 = v42;
    v32 = v64;
    sub_22BE61C88(v47, v44, &a15);
    sub_22BE3AEA4();
    *(v37 + 4) = v40;
    _os_log_impl(&dword_22BE15000, v34, v62, "ConcurrencySafeToolExecutionInterface: Injecting reference - %s", v37, 0xCu);
    sub_22BE35E84();
    sub_22BE183C8();
    sub_22BE39084();

    v48 = *(v38 + 8);
    v48(a12, v63);
  }

  else
  {

    v49 = sub_22BE2565C();
    v50(v49);
    v48 = *(v38 + 8);
    v48(v37, v39);
  }

  v26[21] = v48;
  v51 = v26[13];
  v52 = v26[7];
  v53 = v26[3];
  v54 = swift_allocBox();
  (v32)(v55, v53, v51);
  *v52 = v54;
  v56 = sub_22BE1B0A0();
  v57(v56);
  swift_task_alloc();
  sub_22BE33A50();
  v26[22] = v58;
  *v58 = v59;
  v58[1] = sub_22BF7A554;
  sub_22BE3CBB4();
  sub_22BE18174();

  return ConcurrencySafeToolKitExecutionSession.inject(value:)();
}

uint64_t sub_22BF7A554()
{
  sub_22BE183FC();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 184) = v0;

  v7 = sub_22BE180D4();
  v8(v7);
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF7A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22BF8899C();
  a25 = v27;
  a26 = v28;
  sub_22BE40C34();
  a24 = v26;
  v29 = v26[19];
  v30 = v26[9];
  sub_22C271AD4();
  v31 = *(v30 + 16);
  v32 = sub_22BE1B5EC();
  v31(v32);
  v33 = sub_22C272084();
  sub_22C273794();
  sub_22BE4612C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v26[21];
  v37 = v26[11];
  if (v35)
  {
    v54 = v26[17];
    v55 = v26[19];
    v38 = v26[9];
    sub_22BE19E2C();
    a15 = sub_22BE3C028();
    *v36 = 136315138;
    v39 = sub_22BE410B0();
    v31(v39);
    sub_22BE3E79C();
    v40 = sub_22C273074();
    v41 = v29;
    v43 = v42;
    v44 = v33;
    v45 = *(v38 + 8);
    v46 = sub_22BE2BA80();
    v45(v46);
    sub_22BE61C88(v40, v43, &a15);
    sub_22BE3AEA4();
    *(v36 + 4) = v37;
    _os_log_impl(&dword_22BE15000, v44, v41, "ConcurrencySafeToolExecutionInterface: Resolving reference - %s", v36, 0xCu);
    sub_22BE35E84();
    sub_22BE183C8();
    sub_22BE311B8();

    a11(v55, v54);
  }

  else
  {
    v47 = v26[9];

    v45 = *(v47 + 8);
    v48 = sub_22BE2565C();
    v45(v48);
    v49 = sub_22BE3E79C();
    (v36)(v49);
  }

  v26[24] = v45;
  swift_task_alloc();
  sub_22BE33A50();
  v26[25] = v50;
  *v50 = v51;
  v50[1] = sub_22BF7A8A0;
  sub_22BE18174();

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t sub_22BF7A8A0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7A998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  (*(v10 + 192))(*(v10 + 96), *(v10 + 64));

  sub_22BE1A26C();
  sub_22BF88C3C();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_22BF7AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  sub_22BE4650C(v10, v11, v12, v13, v14);

  sub_22BE17A94();
  sub_22BF88C3C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_22BF7AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  v11 = (*(v10 + 192))(*(v10 + 96), *(v10 + 64));
  sub_22BE4650C(v11, v12, v13, v14, v15);

  sub_22BE17A94();
  sub_22BF88C3C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_22BF7ABD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.executorEventStream.getter(a1);
}

uint64_t sub_22BF7AC74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.resolve(reference:)(a1, a2);
}

uint64_t sub_22BF7AD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.resolve(reference:coercedTo:)(a1, a2, a3);
}

uint64_t sub_22BF7ADD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.coerce(value:to:)(a1, a2, a3);
}

uint64_t sub_22BF7AE88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.resolve(reference:)(a1, a2);
}

uint64_t sub_22BF7AF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.resolve(reference:coercedTo:)(a1, a2, a3);
}

uint64_t sub_22BF7AFE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.resolve(reference:)(a1, a2);
}

uint64_t sub_22BF7B094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22BF8894C;

  return ToolKitExecutionSession.enumerate(valueSet:in:query:options:)(a1, a2, a3, a4);
}

uint64_t sub_22BF7B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BF8894C;

  return ToolKitExecutionSession.enumerate(valueSet:in:query:)(a1, a2, a3);
}

uint64_t sub_22BF7B204(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40D78;

  return ToolKitExecutionSession.fetchToolInvocationSummary(for:)(a1, a2);
}

uint64_t sub_22BF7B2B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.hydrate(value:)(a1, a2);
}

uint64_t sub_22BF7B35C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BF8894C;

  return ToolKitExecutionSession.hydrate(values:)(a1);
}

uint64_t sub_22BF7B3F4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.hydrate(value:options:)(a1, a2, a3);
}

uint64_t sub_22BF7B4A8(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BF7B550;

  return ToolKitExecutionSession.hydrate(values:options:)(a1, a2);
}

uint64_t sub_22BF7B550()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;

  sub_22BE2589C();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22BF7B63C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.execute(toolInvocation:dialogHandler:)();
}

uint64_t sub_22BF7B6F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.undo(_:)();
}

uint64_t sub_22BF7B788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ToolKitExecutionSession.redo(_:)();
}

uint64_t ConcurrencySafeToolKitExecutionSession.init(sessionHolder:sessionId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  sub_22BF84F5C(a2, v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport38ConcurrencySafeToolKitExecutionSession_sessionId);
  return v2;
}

void sub_22BF7B864()
{
  sub_22BE19460();
  v26 = v0;
  v1 = sub_22C272034();
  sub_22BE179D8();
  v25 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v27 = sub_22C271FF4();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = sub_22C272024();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  sub_22C270B54();
  v20 = sub_22C272014();
  sub_22C272044();
  v24 = sub_22C2737E4();
  if (sub_22C273824())
  {

    sub_22C272074();

    if ((*(v25 + 88))(v6, v1) == *MEMORY[0x277D85B00])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v6, v1);
      v21 = "";
    }

    v22 = sub_22BE202F8();
    *v22 = 0;
    v23 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v20, v24, v23, v26, v21, v22, 2u);
    sub_22BE183C8();
  }

  (*(v8 + 8))(v12, v27);
  (*(v15 + 8))(v19, v13);
  sub_22BE1AABC();
}

uint64_t sub_22BF7BB00(void *a1)
{

  sub_22BF84FC0(v1 + *a1);
  return v1;
}

uint64_t sub_22BF7BB5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolKitExecutionSession.coerce(value:to:)();
}

uint64_t sub_22BF7BC10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t sub_22BF7BCBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:coercedTo:)();
}

uint64_t sub_22BF7BD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolKitExecutionSession.resolve(reference:)();
}

uint64_t sub_22BF7BE1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BF8894C;

  return ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:options:)();
}

uint64_t sub_22BF7BEDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BF8894C;

  return ConcurrencySafeToolKitExecutionSession.enumerate(valueSet:in:query:)();
}

uint64_t sub_22BF7BF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolKitExecutionSession.fetchToolInvocationSummary(for:)();
}

uint64_t sub_22BF7C038(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return sub_22BF709E4(a1, a2);
}

uint64_t sub_22BF7C0F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BF8894C;

  return sub_22BF70DAC(a1);
}

uint64_t sub_22BF7C1A8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE40CC8;

  return sub_22BF71158(a1, a2, v6);
}

uint64_t sub_22BF7C274(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BF8894C;

  return sub_22BF72DB4(a1, v4);
}

uint64_t sub_22BF7C380(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 428) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  sub_22C272984();
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_22C2726F4();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_22C272764();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_22C272754();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  v8 = sub_22C2726B4();
  *(v4 + 120) = v8;
  *(v4 + 128) = *(v8 - 8);
  *(v4 + 136) = swift_task_alloc();
  v9 = sub_22C272874();
  *(v4 + 144) = v9;
  *(v4 + 152) = *(v9 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v10 = sub_22C2720A4();
  *(v4 + 216) = v10;
  *(v4 + 224) = *(v10 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF7C6A0, 0, 0);
}

uint64_t sub_22BF7CECC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v7 + 296) = v6;
  *(v7 + 304) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF7CFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  if ((*(v18 + 428) & 2) != 0 && (v19 = *(sub_22C2726A4() + 16), , v19) && !*(*(v18 + 296) + 16))
  {
    v39 = *(v18 + 128);
    v40 = *(v18 + 136);
    v41 = *(v18 + 120);

    v42 = sub_22BF885D0();
    v43 = sub_22BE196B4(&type metadata for ExecutionSessionError, v42);
    sub_22BE416E4(v43, v44, v45, v46, v47, v48);
    (*(v39 + 8))(v40, v41);

    v49 = sub_22BE2318C();
    sub_22BE1828C(v49, v50, v51, v52, v53);

    sub_22BE17A94();
  }

  else
  {
    a14 = *(v18 + 272);
    LODWORD(a13) = *(v18 + 424);
    a12 = *(v18 + 144);
    v21 = *(v18 + 128);
    v20 = *(v18 + 136);
    v22 = *(v18 + 120);
    swift_allocBox();
    sub_22C272694();
    sub_22C272684();
    (*(v21 + 8))(v20, v22);
    v23 = sub_22BF88BAC();
    v24(v23);

    v25 = sub_22BE3B06C();
    sub_22BE27BB0(v25, v26, v27, v28, v29);

    sub_22BE1A26C();
  }

  sub_22BE18174();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  (*(v18[16] + 8))(v18[17], v18[15]);

  v19 = sub_22BE2318C();
  sub_22BE2505C(v19, v20, v21, v22, v23);

  sub_22BE25B00();
  sub_22BE18174();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7D334()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7D42C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 428);
    sub_22BE254D4(&dword_22C2905A8);
    v17 = v11;
    swift_task_alloc();
    sub_22BE33A50();
    *(v3 + 376) = v12;
    *v12 = v13;
    v12[1] = sub_22BF7D5A4;
    v14 = *(v3 + 184);
    v15 = *(v3 + 16);

    return v17(v15, v14, v10 & 0xFFFFFFFD);
  }
}

uint64_t sub_22BF7D5A4()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 384) = v0;

  v9 = sub_22BE33FD8();
  v5(v9);
  sub_22BE201FC();
  sub_22BE1AF3C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF7D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BE48710();
  v19(v18);

  v20 = sub_22BE2318C();
  sub_22BE2505C(v20, v21, v22, v23, v24);

  sub_22BE25B00();
  sub_22BE18174();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  (*(v16[13] + 8))(v16[14], v16[12]);
  v17 = sub_22BE3E428();
  v18(v17);

  v19 = sub_22BE3B06C();
  sub_22BE1828C(v19, v20, v21, v22, v23);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  (*(v18[13] + 8))(v18[14], v18[12]);
  swift_deallocBox();

  v19 = sub_22BE2318C();
  sub_22BE2505C(v19, v20, v21, v22, v23);

  sub_22BE25B00();
  sub_22BE18174();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7DA04()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 400) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7DAFC()
{
  sub_22BE183FC();
  v1 = *(v0 + 428);
  (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 160), *(v0 + 144));
  sub_22BE254D4(&dword_22C2905A8);
  v8 = v2;
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 408) = v3;
  *v3 = v4;
  v3[1] = sub_22BF7DBC0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 16);

  return v8(v6, v5, v1 & 0xFFFFFFF9);
}

uint64_t sub_22BF7DBC0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v19 = *(v18 + 400);
  if (*(v18 + 428))
  {
    sub_22C271AD4();
    v24 = v19;
    v25 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE392EC();
    v26 = sub_22BE3C13C();
    v27 = *(v18 + 400);
    if (v26)
    {
      sub_22BE19E2C();
      v28 = sub_22BE3C620();
      sub_22BF88D90(5.7779e-34);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE22B28(v29);
      sub_22BF88A14(&dword_22BE15000, v30, v31, "ConcurrencySafeToolExecutionInterface: Ignoring error resolving deferred value - %@");
      sub_22BE33928(v28, &qword_27D907870, &qword_22C27AB50);
      sub_22BE39084();
      sub_22BE311B8();
    }

    else
    {
    }

    (*(v18 + 256))(*(v18 + 232), *(v18 + 216));
    swift_allocBox();
    sub_22BE2B734();
    v32();
    v33 = sub_22BE374BC();
    v34(v33);

    v35 = sub_22BE3B06C();
    sub_22BE27BB0(v35, v36, v37, v38, v39);

    sub_22BE1A26C();
  }

  else
  {
    v21 = *(v18 + 80);
    v20 = *(v18 + 88);
    v22 = *(v18 + 72);
    swift_willThrow();
    (*(v21 + 8))(v20, v22);

    sub_22BE2318C();
    a9 = *(v18 + 136);
    a10 = *(v18 + 112);
    a11 = *(v18 + 88);
    a12 = *(v18 + 64);
    a13 = *(v18 + 40);
    a14 = v23;

    sub_22BE17A94();
  }

  sub_22BE18174();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v16 = sub_22BE1BC68();
  v17(v16);
  v18 = sub_22BE180D4();
  v19(v18);

  v20 = sub_22BE3B06C();
  sub_22BE1828C(v20, v21, v22, v23, v24);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7E07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BE1BC68();
  v19(v18);
  v20 = sub_22BE180D4();
  v21(v20);

  v22 = sub_22BE2318C();
  sub_22BE2505C(v22, v23, v24, v25, v26);

  sub_22BE25B00();
  sub_22BE18174();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7E178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v16 = sub_22BE48710();
  v17(v16);

  v18 = sub_22BE3B06C();
  sub_22BE1828C(v18, v19, v20, v21, v22);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BE48710();
  v19(v18);

  v20 = sub_22BE2318C();
  sub_22BE2505C(v20, v21, v22, v23, v24);

  sub_22BE25B00();
  sub_22BE18174();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7E34C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 447) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_22C2726F4();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = sub_22C272764();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  v9 = sub_22C272754();
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 - 8);
  *(v6 + 120) = swift_task_alloc();
  sub_22C272984();
  *(v6 + 128) = swift_task_alloc();
  v10 = sub_22C2726B4();
  *(v6 + 136) = v10;
  *(v6 + 144) = *(v10 - 8);
  *(v6 + 152) = swift_task_alloc();
  v11 = sub_22C272874();
  *(v6 + 160) = v11;
  *(v6 + 168) = *(v11 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v12 = sub_22C2720A4();
  *(v6 + 232) = v12;
  *(v6 + 240) = *(v12 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF7E670, 0, 0);
}

uint64_t sub_22BF7F000()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v5;
  *(v3 + 320) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BF7F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  if ((*(v18 + 447) & 2) != 0 && (v19 = *(sub_22C2726A4() + 16), , v19) && !*(*(v18 + 312) + 16))
  {
    v39 = *(v18 + 144);
    v40 = *(v18 + 152);
    v41 = *(v18 + 136);

    v42 = sub_22BF885D0();
    v43 = sub_22BE196B4(&type metadata for ExecutionSessionError, v42);
    sub_22BE416E4(v43, v44, v45, v46, v47, v48);
    (*(v39 + 8))(v40, v41);

    v49 = sub_22BE19298();
    sub_22BE3759C(v49, v50, v51, v52, v53);

    sub_22BE17A94();
  }

  else
  {
    a14 = *(v18 + 288);
    LODWORD(a13) = *(v18 + 440);
    a12 = *(v18 + 160);
    v21 = *(v18 + 144);
    v20 = *(v18 + 152);
    v22 = *(v18 + 136);
    swift_allocBox();
    sub_22C272694();
    sub_22C272684();
    (*(v21 + 8))(v20, v22);
    v23 = sub_22BF88BAC();
    v24(v23);

    v25 = sub_22BE1B410();
    sub_22BF88A34(v25, v26, v27, v28, v29);

    sub_22BE1A26C();
  }

  sub_22BE18174();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7F364()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 352) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  (*(v16[14] + 8))(v16[15], v16[13]);
  v17 = sub_22BE3E428();
  v18(v17);

  v19 = sub_22BE1B410();
  sub_22BE3759C(v19, v20, v21, v22, v23);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7F56C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 376) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7F664()
{
  sub_22BE183FC();
  v1 = *(v0 + 447);
  (*(*(v0 + 168) + 32))(*(v0 + 200), *(v0 + 192), *(v0 + 160));
  *(v0 + 445) = v1 & 0xF9;
  sub_22BE189B4();
  v10 = (v2 + *v2);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 384) = v3;
  *v3 = v4;
  v3[1] = sub_22BF7F79C;
  v5 = *(v0 + 200);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return v10(v8, v5, v0 + 445, v6, v7);
}

uint64_t sub_22BF7F79C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 392) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF7F894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v16 = sub_22BE1B1F4();
  v17(v16);
  v18 = sub_22BE180D4();
  v19(v18);

  v20 = sub_22BE1B410();
  sub_22BE3759C(v20, v21, v22, v23, v24);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7F98C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    *(v3 + 444) = *(v3 + 447) & 0xFD;
    sub_22BE2573C();
    v18 = (v10 + *v10);
    swift_task_alloc();
    sub_22BE33A50();
    *(v3 + 424) = v11;
    *v11 = v12;
    v11[1] = sub_22BF7FB70;
    v13 = *(v3 + 184);
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = *(v3 + 16);

    return v18(v16, v13, v3 + 444, v14, v15);
  }
}

uint64_t sub_22BF7FB70()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 432) = v0;

  v7 = sub_22BE35D54();
  v8(v7);
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF7FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v16 = sub_22BF88A78();
  v17(v16);

  v18 = sub_22BE1B410();
  sub_22BE3759C(v18, v19, v20, v21, v22);

  sub_22BE1A26C();
  sub_22BE285F4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF7FD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  (*(v18[18] + 8))(v18[19], v18[17]);

  v19 = sub_22BE19298();
  sub_22BE3D4A4(v19, v20, v21, v22, v23);

  sub_22BE25B00();
  sub_22BE18174();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  (*(v18[14] + 8))(v18[15], v18[13]);
  swift_deallocBox();

  v19 = sub_22BE19298();
  sub_22BE3D4A4(v19, v20, v21, v22, v23);

  sub_22BE25B00();
  sub_22BE18174();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF7FF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v19 = *(v18 + 376);
  if (*(v18 + 447))
  {
    sub_22C271AD4();
    v24 = v19;
    v25 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE392EC();
    v26 = sub_22BE3C13C();
    v27 = *(v18 + 376);
    if (v26)
    {
      sub_22BE19E2C();
      v28 = sub_22BE3C620();
      sub_22BF88D90(5.7779e-34);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE22B28(v29);
      sub_22BF88A14(&dword_22BE15000, v30, v31, "ConcurrencySafeToolExecutionInterface: Ignoring error resolving deferred value - %@");
      sub_22BE33928(v28, &qword_27D907870, &qword_22C27AB50);
      sub_22BE39084();
      sub_22BE311B8();
    }

    else
    {
    }

    (*(v18 + 272))(*(v18 + 248), *(v18 + 232));
    swift_allocBox();
    sub_22BE2B734();
    v32();
    v33 = sub_22BE374BC();
    v34(v33);

    v35 = sub_22BE1B410();
    sub_22BF88A34(v35, v36, v37, v38, v39);

    sub_22BE1A26C();
  }

  else
  {
    v21 = *(v18 + 88);
    v20 = *(v18 + 96);
    v22 = *(v18 + 80);
    swift_willThrow();
    (*(v21 + 8))(v20, v22);

    sub_22BE19298();
    a9 = *(v18 + 152);
    a10 = *(v18 + 128);
    a11 = *(v18 + 120);
    a12 = *(v18 + 96);
    a13 = *(v18 + 72);
    a14 = v23;

    sub_22BE17A94();
  }

  sub_22BE18174();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF80234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BE1B1F4();
  v19(v18);
  v20 = sub_22BE180D4();
  v21(v20);

  v22 = sub_22BE19298();
  sub_22BE3D4A4(v22, v23, v24, v25, v26);

  sub_22BE25B00();
  sub_22BE18174();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF80330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BF88A78();
  v19(v18);

  v20 = sub_22BE19298();
  sub_22BE3D4A4(v20, v21, v22, v23, v24);

  sub_22BE25B00();
  sub_22BE18174();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF8041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v18 = sub_22BF88A78();
  v19(v18);

  v20 = sub_22BE19298();
  sub_22BE3D4A4(v20, v21, v22, v23, v24);

  sub_22BE25B00();
  sub_22BE18174();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BF80508(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 208) = a3;
  *(v4 + 24) = a1;
  sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  *(v4 + 48) = swift_task_alloc();
  sub_22C272984();
  *(v4 + 56) = swift_task_alloc();
  v5 = sub_22C272874();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D909078, &unk_22C27FC90);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF8069C, 0, 0);
}

void sub_22BF8069C()
{
  v5 = sub_22C272714();
  *(v1 + 128) = v5;
  *(v1 + 209) = *(v5 + 32);
  sub_22BE20504();
  *(v1 + 136) = MEMORY[0x277D84F98];
  if ((v7 & v6) != 0)
  {
    v8 = 0;
LABEL_6:
    v12 = *(v1 + 112);
    v13 = sub_22BE3EA8C();
    v14(v13);
    v15 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
    *v12 = v4;
    *(v12 + 8) = v2;
    sub_22BE376A8();
    v16();
    v17 = sub_22BF88A68();
    sub_22BE19DC4(v17, v18, v19, v15);

    v0 = v8;
  }

  else
  {
    sub_22BE26114();
    while (v0 != v9)
    {
      v8 = v9 + 1;
      if (*(v10 + 8 * v9++))
      {
        goto LABEL_6;
      }
    }

    v12 = *(v1 + 112);
    sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
    v34 = sub_22BE1B010();
    sub_22BE19DC4(v34, v35, 1, v36);
    v3 = 0;
  }

  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  sub_22BE73F60(*(v1 + 112), *(v1 + 120), &qword_27D909078, &unk_22C27FC90);
  sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  v20 = sub_22BE3D3E0();
  v21 = sub_22BE1AEA8(v20, 1, v12);
  v22 = *(v1 + 120);
  if (v21 == 1)
  {

    sub_22C272744();
    sub_22C272704();
    sub_22BE3F38C();
    sub_22BE46B48();
    sub_22C272734();

    sub_22BE1A26C();
    sub_22BE25CF0();

    __asm { BRAA            X1, X16 }
  }

  v25 = *(v1 + 96);
  v26 = *(v1 + 64);
  v27 = *(v1 + 72);
  *(v1 + 160) = *v22;
  *(v1 + 168) = *(v22 + 1);
  v28 = *(v12 + 48);
  v29 = *(v27 + 32);
  *(v1 + 176) = v29;
  *(v1 + 184) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v25, &v22[v28], v26);
  sub_22BE254D4(&dword_22C2905A8);
  swift_task_alloc();
  sub_22BE33A50();
  *(v1 + 192) = v30;
  *v30 = v31;
  sub_22BE25F6C(v30);
  sub_22BE25CF0();

  __asm { BR              X3 }
}

uint64_t sub_22BF80964()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF80A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[12];
  v14 = v12[9];
  v15 = v12[8];
  v25 = v12[6];

  (*(v14 + 8))(v13, v15);

  sub_22BE17A94();
  sub_22BE25494();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

void sub_22BF80B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v19 = *(v16 + 160);
  v18 = *(v16 + 168);
  v20 = *(v16 + 136);
  (*(v16 + 176))(*(v16 + 80), *(v16 + 88), *(v16 + 64));
  swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v20;
  sub_22BE3B674(v19, v18);
  sub_22BE32D60();
  if (v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v21;
  v25 = v22;
  sub_22BE5CE4C(&qword_27D9071A8, &qword_22C274FC0);
  if (sub_22C273C44())
  {
    v26 = sub_22BE3B674(*(v16 + 160), *(v16 + 168));
    if ((v25 & 1) != (v27 & 1))
    {
      sub_22BE285F4();

      sub_22C2740B4();
      return;
    }

    v24 = v26;
  }

  v29 = *(v16 + 16);
  if (v25)
  {
    (*(*(v16 + 72) + 40))(v29[7] + *(*(v16 + 72) + 72) * v24, *(v16 + 80), *(v16 + 64));
  }

  else
  {
    v30 = *(v16 + 176);
    v32 = *(v16 + 160);
    v31 = *(v16 + 168);
    v34 = *(v16 + 72);
    v33 = *(v16 + 80);
    v35 = *(v16 + 64);
    v29[(v24 >> 6) + 8] |= 1 << v24;
    v36 = (v29[6] + 16 * v24);
    *v36 = v32;
    v36[1] = v31;
    v30(v29[7] + *(v34 + 72) * v24, v33, v35);
    v37 = v29[2];
    v23 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v23)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v29[2] = v38;
  }

  (*(*(v16 + 72) + 8))(*(v16 + 96), *(v16 + 64));
  v39 = *(v16 + 144);
  v40 = *(v16 + 152);
  *(v16 + 136) = v29;
  if (!v39)
  {
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= (((1 << *(v16 + 209)) + 63) >> 6))
      {
        sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
        v78 = sub_22BE1B010();
        sub_22BE19DC4(v78, v79, 1, v80);
        v17 = 0;
        goto LABEL_18;
      }

      ++v40;
      if (*(*(v16 + 128) + 8 * v41 + 64))
      {
        v40 = v41;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_17:
  v42 = sub_22BE22E00();
  v43(v42);
  v44 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  v45 = sub_22BF88AE8(v44);
  v46(v45);
  v47 = sub_22BF88A68();
  sub_22BE19DC4(v47, v48, v49, v20);

LABEL_18:
  *(v16 + 144) = v17;
  *(v16 + 152) = v40;
  v50 = *(v16 + 120);
  sub_22BE73F60(*(v16 + 112), v50, &qword_27D909078, &unk_22C27FC90);
  v51 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  sub_22BE1AB5C(v50, 1, v51);
  if (v52)
  {
    v81 = *(v16 + 104);
    v82 = *(v16 + 96);
    v83 = *(v16 + 88);

    sub_22C272744();
    sub_22C272704();
    sub_22BE3F38C();
    sub_22BE46B48();
    sub_22C272734();

    sub_22BE1A26C();
    sub_22BE285F4();

    v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v81, v82, v83, v29, a14, a15, a16);
  }

  else
  {
    v61 = *(v16 + 120);
    v62 = *(v16 + 96);
    v63 = *(v16 + 64);
    v64 = *(v16 + 72);
    *(v16 + 160) = *v61;
    *(v16 + 168) = *(v61 + 1);
    v65 = *(v51 + 48);
    v66 = *(v64 + 32);
    *(v16 + 176) = v66;
    *(v16 + 184) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v66(v62, &v61[v65], v63);
    sub_22BE254D4(&dword_22C2905A8);
    v84 = v67;
    swift_task_alloc();
    sub_22BE33A50();
    *(v16 + 192) = v68;
    *v68 = v69;
    sub_22BE25F6C(v68);
    sub_22BE285F4();

    v73(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, v84, a14, a15, a16);
  }
}

uint64_t sub_22BF80F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 225) = a3;
  *(v6 + 24) = a1;
  sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  *(v6 + 64) = swift_task_alloc();
  sub_22C272984();
  *(v6 + 72) = swift_task_alloc();
  v7 = sub_22C272874();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D909078, &unk_22C27FC90);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF810F4, 0, 0);
}

void sub_22BF810F4()
{
  v6 = sub_22C272714();
  *(v2 + 144) = v6;
  *(v2 + 226) = *(v6 + 32);
  sub_22BE20504();
  *(v2 + 152) = MEMORY[0x277D84F98];
  if ((v8 & v7) != 0)
  {
    v9 = 0;
LABEL_6:
    v13 = *(v2 + 128);
    v1 = *(v2 + 80);
    v14 = sub_22BE3EA8C();
    v15(v14);
    v16 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
    *v13 = v5;
    v13[1] = v3;
    sub_22BE376A8();
    v17();
    v18 = sub_22BF88A68();
    sub_22BE19DC4(v18, v19, v20, v16);

    v0 = v9;
  }

  else
  {
    sub_22BE26114();
    while (v0 != v10)
    {
      v9 = v10 + 1;
      if (*(v11 + 8 * v10++))
      {
        goto LABEL_6;
      }
    }

    v13 = *(v2 + 128);
    sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
    v31 = sub_22BE1B010();
    sub_22BE19DC4(v31, v32, 1, v33);
    v4 = 0;
  }

  *(v2 + 160) = v4;
  *(v2 + 168) = v0;
  sub_22BE73F60(*(v2 + 128), *(v2 + 136), &qword_27D909078, &unk_22C27FC90);
  sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  v21 = sub_22BE3D3E0();
  sub_22BE1AB5C(v21, 1, v13);
  if (!v22)
  {
    sub_22BF88CC0();
    sub_22BF889B8(v25);
    v26();
    *(v2 + 224) = v1;
    sub_22BE189B4();
    swift_task_alloc();
    sub_22BE33A50();
    *(v2 + 208) = v27;
    *v27 = v28;
    sub_22BE378C0(v27);
    sub_22BE25CF0();

    __asm { BRAA            X5, X16 }
  }

  sub_22C272744();
  sub_22C272704();
  sub_22C272724();
  sub_22C272734();

  sub_22BE1A26C();
  sub_22BE25CF0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BF8140C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22BF81518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  sub_22BE37BE4();
  v18 = *(v16 + 152);
  (*(v16 + 192))(*(v16 + 96), *(v16 + 104), *(v16 + 80));
  swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v18;
  v19 = sub_22BE19454();
  sub_22BE3B674(v19, v20);
  sub_22BE32D60();
  if (v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v21;
  v25 = v22;
  sub_22BE5CE4C(&qword_27D9071A8, &qword_22C274FC0);
  if (sub_22C273C44())
  {
    v26 = sub_22BE3B674(*(v16 + 176), *(v16 + 184));
    if ((v25 & 1) != (v27 & 1))
    {
      sub_22BE285F4();

      sub_22C2740B4();
      return;
    }

    v24 = v26;
  }

  if (v25)
  {
    v29 = *(v16 + 112);
    v30 = *(v16 + 88);
    v31 = *(v16 + 80);

    v32 = *(v16 + 16);
    sub_22BE2B734();
    v33();
    (*(v30 + 8))(v29, v31);
  }

  else
  {
    v34 = *(v16 + 192);
    v36 = *(v16 + 176);
    v35 = *(v16 + 184);
    v37 = *(v16 + 112);
    v39 = *(v16 + 88);
    v38 = *(v16 + 96);
    v40 = *(v16 + 80);
    v32 = *(v16 + 16);
    v32[(v24 >> 6) + 8] |= 1 << v24;
    v41 = (v32[6] + 16 * v24);
    *v41 = v36;
    v41[1] = v35;
    v34(v32[7] + *(v39 + 72) * v24, v38, v40);
    (*(v39 + 8))(v37, v40);
    v42 = v32[2];
    v23 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v23)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v32[2] = v43;
  }

  v44 = *(v16 + 160);
  v45 = *(v16 + 168);
  *(v16 + 152) = v32;
  if (!v44)
  {
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= (((1 << *(v16 + 226)) + 63) >> 6))
      {
        sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
        v80 = sub_22BE1B010();
        sub_22BE19DC4(v80, v81, 1, v82);
        v17 = 0;
        goto LABEL_18;
      }

      ++v45;
      if (*(*(v16 + 144) + 8 * v46 + 64))
      {
        v45 = v46;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_17:
  v47 = sub_22BE22E00();
  v48(v47);
  v49 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  v50 = sub_22BF88AE8(v49);
  v51(v50);
  v52 = sub_22BF88A68();
  sub_22BE19DC4(v52, v53, v54, v32);

LABEL_18:
  *(v16 + 160) = v17;
  *(v16 + 168) = v45;
  v55 = *(v16 + 136);
  sub_22BE73F60(*(v16 + 128), v55, &qword_27D909078, &unk_22C27FC90);
  v56 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  sub_22BE1AB5C(v55, 1, v56);
  if (v57)
  {
    v83 = *(v16 + 120);
    v84 = *(v16 + 112);
    v85 = *(v16 + 104);

    sub_22C272744();
    sub_22C272704();
    sub_22BE3F38C();
    sub_22BE46B48();
    sub_22C272734();

    sub_22BE1A26C();
    sub_22BE285F4();

    v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, v83, v84, v85, v32, a14, a15, a16);
  }

  else
  {
    sub_22BF88CC0();
    v87 = v66;
    sub_22BF889B8(v67);
    v68();
    *(v16 + 224) = v55;
    v88 = v87 + 88;
    sub_22BE189B4();
    v86 = v69 + *v69;
    swift_task_alloc();
    sub_22BE33A50();
    *(v16 + 208) = v70;
    *v70 = v71;
    sub_22BE378C0(v70);
    sub_22BE285F4();

    v77(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, v86, v88, a14, a15, a16);
  }
}

uint64_t sub_22BF81994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[14];
  v14 = v12[11];
  v15 = v12[10];
  v25 = v12[8];

  (*(v14 + 8))(v13, v15);

  sub_22BE17A94();
  sub_22BE25494();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_22BF81A68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 320) = a4;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  v5 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  *(v4 + 152) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90BA08, &qword_22C290BA8);
  *(v4 + 160) = swift_task_alloc();
  v6 = sub_22BE5CE4C(&qword_27D90BA10, &qword_22C290BB0);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 - 8);
  *(v4 + 184) = swift_task_alloc();
  v7 = sub_22C272874();
  *(v4 + 192) = v7;
  v8 = *(v7 - 8);
  *(v4 + 200) = v8;
  *(v4 + 208) = *(v8 + 64);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = sub_22BE5CE4C(&qword_27D90BA18, &qword_22C290BB8);
  *(v4 + 264) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90BA20, &qword_22C290BC0);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF81D78, 0, 0);
}

uint64_t sub_22BF81D78(uint64_t a1)
{
  v2 = 0;
  v48 = *(v1 + 200);
  v49 = *(v1 + 256);
  v3 = *(*(v1 + 88) + 16);
  v47 = v3;
  while (1)
  {
    if (v2 == v3)
    {
      v4 = 1;
      v5 = v3;
    }

    else
    {
      if (v2 >= v3)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return MEMORY[0x2822004E8](a1);
      }

      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      v7 = *(v1 + 264);
      v6 = *(v1 + 272);
      sub_22BE3799C();
      v8 = *(v49 + 48);
      *v7 = v2;
      (*(v9 + 16))(&v7[v8]);
      sub_22BE73F60(v7, v6, &qword_27D90BA18, &qword_22C290BB8);
      v4 = 0;
    }

    v11 = *(v1 + 272);
    v10 = *(v1 + 280);
    v12 = *(v1 + 256);
    sub_22BE19DC4(v11, v4, 1, v12);
    sub_22BE73F60(v11, v10, &qword_27D90BA20, &qword_22C290BC0);
    v13 = sub_22BE1B010();
    sub_22BE1AB5C(v13, v14, v12);
    if (v15)
    {
      break;
    }

    v54 = v5;
    v16 = *(v1 + 280);
    v53 = *(v1 + 240);
    v17 = *(v1 + 232);
    v18 = *(v1 + 208);
    v19 = *(v1 + 192);
    v52 = *(v1 + 320);
    v50 = *(v1 + 96);
    v51 = *v16;
    v20 = *(v49 + 48);
    v21 = sub_22C273624();
    v22 = sub_22BE1B010();
    sub_22BE19DC4(v22, v23, 1, v21);
    v24 = *(v48 + 32);
    v24(v17, v16 + v20, v19);
    v25 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v26 = (v25 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v25 + v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    v29 = v28 + v25;
    v30 = v21;
    v24(v29, v17, v19);
    v31 = v28 + v26;
    *v31 = v50;
    *(v31 + 8) = v52;
    *(v28 + v27) = v51;
    sub_22BE376A8();
    sub_22BE2B984(v32, v33, v34, &qword_22C275B90);
    LODWORD(v21) = sub_22BE1AEA8(v53, 1, v21);

    v35 = *(v1 + 240);
    if (v21 == 1)
    {
      sub_22BE33928(*(v1 + 240), &qword_27D9078A0, &qword_22C275B90);
    }

    else
    {
      sub_22C273614();
      (*(*(v30 - 8) + 8))(v35, v30);
    }

    if (*(v28 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22BE1B5EC();
      v36 = sub_22C2735D4();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v3 = v47;
    v2 = v54;
    v39 = **(v1 + 80);

    v40 = sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
    v42 = v38 | v36;
    if (v38 | v36)
    {
      v42 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v36;
      *(v1 + 40) = v38;
    }

    v43 = *(v1 + 248);
    *(v1 + 48) = 1;
    *(v1 + 56) = v42;
    *(v1 + 64) = v39;
    sub_22BF88D54(v40, v41, v40);

    a1 = sub_22BE33928(v43, &qword_27D9078A0, &qword_22C275B90);
  }

  *(v1 + 288) = sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE33FD8();
  sub_22C273644();
  *(v1 + 296) = MEMORY[0x277D84F90];
  swift_task_alloc();
  sub_22BE33A50();
  *(v1 + 304) = v44;
  *v44 = v45;
  v44[1] = sub_22BF82200;
  sub_22BF88988();

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BF82200()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22BF82300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_22BE46070();
  a27 = v30;
  a28 = v31;
  sub_22BF88BDC();
  a26 = v28;
  v32 = v28[36];
  v33 = v28[20];
  sub_22BE3555C();
  if (v40)
  {
    v34 = v28[39];
    v35 = v28[37];
    (*(v28[22] + 8))(v28[23], v28[21]);
    a16 = v35;

    sub_22BF70520(&a16);
    if (v34)
    {

      sub_22BE2946C();
    }

    else
    {
      v53 = *(a16 + 16);
      if (v53)
      {
        a16 = MEMORY[0x277D84F90];
        sub_22BE71320(0, v53, 0);
        v54 = a16;
        sub_22BF88BE8();
        v89 = v55;
        do
        {
          v95 = v54;
          v97 = v53;
          v91 = v28[27];
          v57 = v28[24];
          v56 = v28[25];
          v58 = v28[16];
          v59 = v28[17];
          v60 = v28[15];
          v61 = v28[13];
          sub_22BE2B984(v29, v59, &unk_27D907700, &qword_22C290BA0);
          sub_22BE2B984(v59, v58, &unk_27D907700, &qword_22C290BA0);
          v62 = *(v56 + 32);
          v63 = *(v61 + 48);
          *v60 = *v58;
          v93 = v62;
          v62(v60 + v63, v58 + v63, v57);
          v64 = v60 + v63;
          v54 = v95;
          (*(v56 + 16))(v91, v64, v57);
          sub_22BE33928(v60, &unk_27D907700, &qword_22C290BA0);
          sub_22BE33928(v59, &unk_27D907700, &qword_22C290BA0);
          a16 = v95;
          v66 = *(v95 + 16);
          v65 = *(v95 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_22BE71320(v65 > 1, v66 + 1, 1);
            v54 = a16;
          }

          v67 = v28[27];
          v68 = v28[24];
          v69 = v28[25];
          *(v54 + 16) = v66 + 1;
          v93(v54 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v66, v67, v68);
          v29 += v89;
          v53 = v97 - 1;
        }

        while (v97 != 1);
      }

      v88 = v28[20];
      v90 = v28[19];
      v92 = v28[18];
      v94 = v28[17];
      v96 = v28[16];
      v98 = v28[15];

      sub_22BE2589C();
      sub_22BE2946C();

      v72(v70, v71, v72, v73, v74, v75, v76, v77, a9, v88, v90, v92, v94, v96, v98, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v37 = v28[24];
    v38 = v28[19];
    v39 = *v33;
    sub_22BE73F60(v33 + *(v32 + 48), v38, &qword_27D907400, &unk_22C274F90);
    sub_22BE1AB5C(v38, 1, v37);
    if (v40)
    {
      sub_22BE33928(v28[19], &qword_27D907400, &unk_22C274F90);
    }

    else
    {
      v41 = v28[18];
      v42 = sub_22BE1B0A0();
      v43(v42);
      *v41 = v39;
      sub_22BE376A8();
      v44();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v28[37];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE35C88();
        sub_22BE67900(v78, v79, v80, v81);
        v46 = v82;
      }

      if (*(v46 + 16) >= *(v46 + 24) >> 1)
      {
        sub_22BE35C88();
        sub_22BE67900(v83, v84, v85, v86);
        v46 = v87;
      }

      v47 = v28[18];
      (*(v28[25] + 8))(v28[28], v28[24]);
      sub_22BE4096C();
      sub_22BE73F60(v47, v48, &unk_27D907700, &qword_22C290BA0);
      v28[37] = v46;
    }

    swift_task_alloc();
    sub_22BE33A50();
    v28[38] = v49;
    *v49 = v50;
    v49[1] = sub_22BF82200;
    sub_22BF88988();
    sub_22BE2946C();

    MEMORY[0x2822004E8](v51);
  }
}

uint64_t sub_22BF827EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BF8899C();
  sub_22BE40C34();
  v28 = v18[20];
  v29 = v18[19];
  v30 = v18[18];
  v31 = v18[17];
  v32 = v18[16];
  v34 = v18[15];
  (*(v18[22] + 8))(v18[23], v18[21]);
  v33 = v18[9];

  sub_22BE17A94();
  sub_22BE18174();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, a16, a17, a18);
}

uint64_t sub_22BF82914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 368) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  v9 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  *(v7 + 176) = swift_task_alloc();
  v10 = *(a6 - 8);
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 + 64);
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_22C272874();
  *(v7 + 208) = v11;
  v12 = *(v11 - 8);
  *(v7 + 216) = v12;
  *(v7 + 224) = *(v12 + 64);
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90BA08, &qword_22C290BA8);
  *(v7 + 272) = swift_task_alloc();
  v13 = sub_22BE5CE4C(&qword_27D90BA10, &qword_22C290BB0);
  *(v7 + 280) = v13;
  *(v7 + 288) = *(v13 - 8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = sub_22BE5CE4C(&qword_27D90BA18, &qword_22C290BB8);
  *(v7 + 312) = swift_task_alloc();
  sub_22BE5CE4C(&qword_27D90BA20, &qword_22C290BC0);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF82C84, 0, 0);
}

uint64_t sub_22BF82C84(uint64_t a1)
{
  v2 = 0;
  v49 = *(v1 + 304);
  v47 = *(v1 + 184);
  v48 = *(v1 + 216);
  v3 = *(*(v1 + 96) + 16);
  v46 = v3;
  while (1)
  {
    if (v2 == v3)
    {
      v4 = 1;
      v5 = v3;
    }

    else
    {
      if (v2 >= v3)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return MEMORY[0x2822004E8](a1);
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      v6 = *(v1 + 312);
      sub_22BE3799C();
      v7 = *(v49 + 48);
      *v6 = v2;
      (*(v8 + 16))(&v6[v7]);
      v9 = sub_22BE19454();
      sub_22BE73F60(v9, v10, &qword_27D90BA18, &qword_22C290BB8);
      v4 = 0;
      v5 = v2 + 1;
    }

    v11 = *(v1 + 304);
    sub_22BE19DC4(*(v1 + 320), v4, 1, v11);
    v12 = sub_22BE19454();
    sub_22BE73F60(v12, v13, &qword_27D90BA20, &qword_22C290BC0);
    v14 = sub_22BE1B010();
    sub_22BE1AB5C(v14, v15, v11);
    if (v16)
    {
      break;
    }

    v57 = v5;
    v17 = *(v1 + 328);
    v52 = *(v1 + 264);
    v56 = *(v1 + 256);
    v18 = *(v1 + 248);
    v19 = *(v1 + 224);
    v20 = *(v1 + 208);
    v50 = *(v1 + 200);
    v55 = *(v1 + 192);
    v54 = *(v1 + 368);
    v53 = *v17;
    v21 = *(v49 + 48);
    v51 = sub_22C273624();
    v58 = *(v1 + 112);
    v22 = sub_22BE1B010();
    sub_22BE19DC4(v22, v23, 1, v24);
    v25 = *(v48 + 32);
    v25(v18, v17 + v21, v20);
    v26 = sub_22BE3E79C();
    v27(v26);
    v28 = (*(v48 + 80) + 48) & ~*(v48 + 80);
    v29 = (v19 + *(v47 + 80) + v28) & ~*(v47 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = v58;
    v25(v30 + v28, v18, v20);
    (*(v47 + 32))(v30 + v29, v50, v58);
    *(v30 + v29 + v55) = v54;
    *(v30 + ((v29 + v55) & 0xFFFFFFFFFFFFFFF8) + 8) = v53;
    sub_22BE2B984(v52, v56, &qword_27D9078A0, &qword_22C275B90);
    v31 = sub_22BE1B010();
    v33 = sub_22BE1AEA8(v31, v32, v51);
    v34 = *(v1 + 256);
    if (v33 == 1)
    {
      sub_22BE33928(*(v1 + 256), &qword_27D9078A0, &qword_22C275B90);
    }

    else
    {
      sub_22C273614();
      (*(*(v51 - 8) + 8))(v34, v51);
    }

    v3 = v46;
    if (*(v30 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = sub_22C2735D4();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v57;
    v38 = **(v1 + 88);

    v39 = sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
    v41 = v37 | v35;
    if (v37 | v35)
    {
      v41 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v35;
      *(v1 + 40) = v37;
    }

    v42 = *(v1 + 264);
    *(v1 + 48) = 1;
    *(v1 + 56) = v41;
    *(v1 + 64) = v38;
    sub_22BF88D54(v39, v40, v39);

    a1 = sub_22BE33928(v42, &qword_27D9078A0, &qword_22C275B90);
  }

  *(v1 + 336) = sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE33FD8();
  sub_22C273644();
  *(v1 + 344) = MEMORY[0x277D84F90];
  swift_task_alloc();
  sub_22BE33A50();
  *(v1 + 352) = v43;
  *v43 = v44;
  v43[1] = sub_22BF83178;
  sub_22BF88988();

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BF83178()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22BF83278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BE46070();
  a27 = v30;
  a28 = v31;
  sub_22BF88BDC();
  a26 = v28;
  v32 = *(v28 + 336);
  v33 = *(v28 + 272);
  sub_22BE3555C();
  if (v40)
  {
    v34 = *(v28 + 360);
    v35 = *(v28 + 344);
    (*(*(v28 + 288) + 8))(*(v28 + 296), *(v28 + 280));
    a16 = v35;

    sub_22BF70520(&a16);
    if (v34)
    {

      sub_22BE2946C();
    }

    else
    {
      v53 = *(a16 + 16);
      if (v53)
      {
        a16 = MEMORY[0x277D84F90];
        sub_22BE71320(0, v53, 0);
        v54 = a16;
        sub_22BF88BE8();
        v99 = v55;
        do
        {
          v103 = v54;
          v105 = v53;
          v101 = *(v28 + 232);
          v57 = *(v28 + 208);
          v56 = *(v28 + 216);
          v58 = *(v28 + 152);
          v59 = *(v28 + 144);
          v60 = *(v28 + 128);
          sub_22BE2B984(v29, *(v28 + 160), &unk_27D907700, &qword_22C290BA0);
          v61 = sub_22BE3E79C();
          sub_22BE2B984(v61, v62, &unk_27D907700, &qword_22C290BA0);
          v63 = *(v56 + 32);
          v64 = *(v60 + 48);
          *v59 = *v58;
          v65 = v58 + v64;
          v66 = v63;
          v63(v59 + v64, v65, v57);
          v67 = v59 + v64;
          v54 = v103;
          (*(v56 + 16))(v101, v67, v57);
          v68 = sub_22BE19454();
          sub_22BE33928(v68, v69, &qword_22C290BA0);
          sub_22BE22C8C();
          sub_22BE33928(v70, v71, v72);
          a16 = v103;
          v74 = *(v103 + 16);
          v73 = *(v103 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_22BE71320(v73 > 1, v74 + 1, 1);
            v54 = a16;
          }

          v75 = *(v28 + 232);
          v76 = *(v28 + 208);
          v77 = *(v28 + 216);
          *(v54 + 16) = v74 + 1;
          v66(v54 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v74, v75, v76);
          v29 += v99;
          v53 = v105 - 1;
        }

        while (v105 != 1);
      }

      else
      {

        v54 = MEMORY[0x277D84F90];
      }

      v96 = *(v28 + 232);
      v97 = *(v28 + 200);
      v98 = *(v28 + 176);
      v100 = *(v28 + 168);
      v102 = *(v28 + 160);
      v104 = *(v28 + 152);
      v106 = *(v28 + 144);
      **(v28 + 80) = v54;

      sub_22BE1A26C();
      sub_22BE2946C();

      v79(v78, v79, v80, v81, v82, v83, v84, v85, v96, v97, v98, v100, v102, v104, v106, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v37 = *(v28 + 208);
    v38 = *(v28 + 176);
    v39 = *v33;
    sub_22BE73F60(v33 + *(v32 + 48), v38, &qword_27D907400, &unk_22C274F90);
    sub_22BE1AB5C(v38, 1, v37);
    if (v40)
    {
      sub_22BE33928(*(v28 + 176), &qword_27D907400, &unk_22C274F90);
    }

    else
    {
      v41 = *(v28 + 168);
      v42 = sub_22BE1B0A0();
      v43(v42);
      *v41 = v39;
      sub_22BE376A8();
      v44();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v28 + 344);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE35C88();
        sub_22BE67900(v86, v87, v88, v89);
        v46 = v90;
      }

      if (*(v46 + 16) >= *(v46 + 24) >> 1)
      {
        sub_22BE35C88();
        sub_22BE67900(v91, v92, v93, v94);
        v46 = v95;
      }

      v47 = *(v28 + 168);
      (*(*(v28 + 216) + 8))(*(v28 + 240), *(v28 + 208));
      sub_22BE4096C();
      sub_22BE73F60(v47, v48, &unk_27D907700, &qword_22C290BA0);
      *(v28 + 344) = v46;
    }

    swift_task_alloc();
    sub_22BE33A50();
    *(v28 + 352) = v49;
    *v49 = v50;
    v49[1] = sub_22BF83178;
    sub_22BF88988();
    sub_22BE2946C();

    MEMORY[0x2822004E8](v51);
  }
}

uint64_t sub_22BF83768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE46070();
  sub_22BF88BDC();
  v30 = v20[29];
  v31 = v20[25];
  v32 = v20[22];
  v33 = v20[21];
  v34 = v20[20];
  v35 = v20[19];
  v37 = v20[18];
  (*(v20[36] + 8))(v20[37], v20[35]);
  v36 = v20[9];

  sub_22BE17A94();
  sub_22BE2946C();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_22BF8389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  v8 = sub_22C272874();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_22C2720A4();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF839E4, 0, 0);
}

uint64_t sub_22BF83BCC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF83CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE426F4();
  sub_22BE2035C();
  v11 = *(v10 + 40);
  v12 = *(v10 + 16);
  v13 = *(sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8) + 48);
  *v12 = v11;
  sub_22BE22C8C();
  v14();
  sub_22BE414F8();
  sub_22BE19DC4(v12 + v13, 0, 1, v15);

  sub_22BE1A26C();
  sub_22BE1C2F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_22BF83D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE426F4();
  sub_22BE2035C();
  v11 = *(v10 + 136);
  if ((*(v10 + 144) & 2) != 0)
  {
    sub_22C271B34();
    v12 = v11;
    v13 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE392EC();
    v14 = sub_22BE3C13C();
    v15 = *(v10 + 136);
    if (v14)
    {
      sub_22BE19E2C();
      v16 = sub_22BE3C620();
      sub_22BF88D90(5.7779e-34);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE22B28(v17);
      sub_22BF88A14(&dword_22BE15000, v18, v19, "ConcurrencySafeToolExecutionInterface: Unable to hydrate value. Filtering from list: %@");
      sub_22BE33928(v16, &qword_27D907870, &qword_22C27AB50);
      sub_22BE39084();
      sub_22BE311B8();
    }

    else
    {
    }

    v20 = *(v10 + 40);
    v21 = *(v10 + 16);
    (*(v10 + 120))(*(v10 + 104), *(v10 + 88));
    sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
    *v21 = v20;
    sub_22BE414F8();
    sub_22BE1A140();
    sub_22BE19DC4(v22, v23, v24, v25);

    sub_22BE1A26C();
  }

  else
  {
    swift_willThrow();

    sub_22BE17A94();
  }

  sub_22BE1C2F8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_22BF83F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v13;
  *(v8 + 161) = a6;
  *(v8 + 32) = a5;
  *(v8 + 40) = a7;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = sub_22C272874();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_22C2720A4();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF840B4, 0, 0);
}

uint64_t sub_22BF84310()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF84408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE426F4();
  sub_22BE2035C();
  v11 = *(v10 + 40);
  v12 = *(v10 + 16);
  v13 = *(sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8) + 48);
  *v12 = v11;
  sub_22BE22C8C();
  v14();
  sub_22BF88CD4();
  sub_22BE19DC4(v12 + v13, 0, 1, v15);

  sub_22BE1A26C();
  sub_22BE1C2F8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_22BF844E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE426F4();
  sub_22BE2035C();
  v11 = *(v10 + 152);
  if ((*(v10 + 161) & 2) != 0)
  {
    sub_22C271B34();
    v12 = v11;
    v13 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE392EC();
    v14 = sub_22BE3C13C();
    v15 = *(v10 + 152);
    if (v14)
    {
      sub_22BE19E2C();
      v16 = sub_22BE3C620();
      sub_22BF88D90(5.7779e-34);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE22B28(v17);
      sub_22BF88A14(&dword_22BE15000, v18, v19, "ConcurrencySafeToolExecutionInterface: Unable to hydrate value. Filtering from list: %@");
      sub_22BE33928(v16, &qword_27D907870, &qword_22C27AB50);
      sub_22BE39084();
      sub_22BE311B8();
    }

    else
    {
    }

    v20 = *(v10 + 40);
    v21 = *(v10 + 16);
    (*(v10 + 136))(*(v10 + 120), *(v10 + 104));
    sub_22BE5CE4C(&qword_27D90B9D0, &qword_22C2904C8);
    *v21 = v20;
    sub_22BF88CD4();
    sub_22BE1A140();
    sub_22BE19DC4(v22, v23, v24, v25);

    sub_22BE1A26C();
  }

  else
  {
    swift_willThrow();

    sub_22BE17A94();
  }

  sub_22BE1C2F8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_22BF846A8()
{
  v23 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  MEMORY[0x28223BE20](v23);
  v1 = &v23 - v0;
  v2 = sub_22C272714();
  v3 = v2;
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v3 + 56);
    v15 = (*(v3 + 48) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    v18 = sub_22C272874();
    v19 = *(v18 - 8);
    v20 = v14 + *(v19 + 72) * v13;
    v21 = *(v23 + 48);
    (*(v19 + 16))(&v1[v21], v20, v18);
    *v1 = v17;
    *(v1 + 1) = v16;

    LOBYTE(v16) = sub_22BF732E8(&v1[v21]);
    result = sub_22BE33928(v1, &qword_27D909080, &qword_22C2905E0);
    if (v16)
    {
      v22 = 1;
LABEL_13:

      return v22;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v22 = 0;
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void ConcurrencySafeToolExecutionInterface.needsHydrating(entity:)()
{
  sub_22BE19460();
  v31 = v0;
  v2 = v1;
  v29 = v3;
  v28 = sub_22BE5CE4C(&qword_27D909080, &qword_22C2905E0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = sub_22C272714();
  v8 = v7;
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = v2;
  v27[1] = v2 + 104;

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v8 + 56);
    v19 = (*(v8 + 48) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    sub_22C272874();
    sub_22BE18000();
    v23 = v18 + *(v22 + 72) * v17;
    v24 = *(v28 + 48);
    (*(v22 + 16))(&v6[v24], v23);
    *v6 = v21;
    *(v6 + 1) = v20;
    v25 = v30;
    v26 = *(v30 + 104);

    LOBYTE(v20) = v26(&v6[v24], v29, v25);
    sub_22BE33928(v6, &qword_27D909080, &qword_22C2905E0);
    if (v20)
    {
LABEL_11:

      sub_22BE1AABC();
      return;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_22BF84A90(uint64_t a1)
{
  v2 = sub_22BF888E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BF84ACC(uint64_t a1)
{
  v2 = sub_22BF888E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ToolExecutionSessionHolder.__allocating_init(sessionTask:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22BF84B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_22BE2B984(a3, v21 - v9, &qword_27D9078A0, &qword_22C275B90);
  v11 = sub_22C273624();
  v12 = sub_22BE1AEA8(v10, 1, v11);

  if (v12 == 1)
  {
    sub_22BE33928(v10, &qword_27D9078A0, &qword_22C275B90);
  }

  else
  {
    sub_22C273614();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_22C2735D4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_22C2730B4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_22BE33928(a3, &qword_27D9078A0, &qword_22C275B90);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22BE33928(a3, &qword_27D9078A0, &qword_22C275B90);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22BF84DFC()
{
  sub_22BE426F4();
  sub_22BE2035C();
  sub_22BE1A8A8();
  v0 = swift_task_alloc();
  v1 = sub_22BE23AE4(v0);
  *v1 = v2;
  v1[1] = sub_22BE40CC8;
  sub_22BE1C2F8();

  return sub_22BF82914(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BF84EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270274();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF84F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270274();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF84FC0(uint64_t a1)
{
  v2 = sub_22C270274();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BF85020()
{
  result = qword_27D90B9E0;
  if (!qword_27D90B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9E0);
  }

  return result;
}

unint64_t sub_22BF85078()
{
  result = qword_27D90B9E8;
  if (!qword_27D90B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9E8);
  }

  return result;
}

unint64_t sub_22BF850CC()
{
  result = qword_27D90B9F0;
  if (!qword_27D90B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9F0);
  }

  return result;
}

unint64_t sub_22BF85124()
{
  result = qword_27D90B9F8;
  if (!qword_27D90B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HydrationOptions(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.coerce(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.resolve(reference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.resolve(reference:coercedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.enumerate(valueSet:in:query:options:)()
{
  sub_22BE1C1B4();
  sub_22BE25C4C(v0, v1, v2, v3, v4, v5);
  sub_22BE1AC20();
  v6 = swift_task_alloc();
  v7 = sub_22BE2C6B0(v6);
  *v7 = v8;
  sub_22BE23AF4(v7);
  v9 = sub_22BE292D4();

  return v10(v9);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.enumerate(valueSet:in:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE2C6B0(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE3E5E8();
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.fetchToolInvocationSummary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.hydrate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.hydrate(values:)()
{
  sub_22BE201F0();
  sub_22BF88954(v0, v1, v2);
  sub_22BE2573C();
  v3 = swift_task_alloc();
  v4 = sub_22BE2C6B0(v3);
  *v4 = v5;
  v6 = sub_22BE2F184(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.hydrate(value:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ConcurrencySafeToolExecutionInterface.hydrate(values:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE2C6B0(v14);
  *v15 = v16;
  sub_22BE23AF4(v15);
  sub_22BE1BAA4();
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionInterface.executorEventStream.getter()
{
  sub_22BE201F0();
  sub_22BF88954(v3, v4, v5);
  sub_22BE2573C();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = sub_22BE23AE4(v7);
  *v8 = v9;
  v8[1] = sub_22BE40CC8;

  return v11(v2, v1, v0);
}

uint64_t dispatch thunk of ToolExecutionInterface.resolve(reference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionInterface.resolve(reference:coercedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ToolExecutionInterface.coerce(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ToolExecutionInterface.enumerate(valueSet:in:query:options:)()
{
  sub_22BE1C1B4();
  sub_22BE25C4C(v0, v1, v2, v3, v4, v5);
  sub_22BE1AC20();
  v6 = swift_task_alloc();
  v7 = sub_22BE2C6B0(v6);
  *v7 = v8;
  sub_22BE23AF4(v7);
  v9 = sub_22BE292D4();

  return v10(v9);
}

uint64_t dispatch thunk of ToolExecutionInterface.enumerate(valueSet:in:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE2C6B0(v15);
  *v16 = v17;
  sub_22BE23AF4(v16);
  sub_22BE3E5E8();
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ToolExecutionInterface.fetchToolInvocationSummary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionInterface.hydrate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE23AE4(v14);
  *v15 = v16;
  sub_22BE1BF94(v15);
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionInterface.hydrate(values:)()
{
  sub_22BE201F0();
  sub_22BF88954(v0, v1, v2);
  sub_22BE2573C();
  v3 = swift_task_alloc();
  v4 = sub_22BE2C6B0(v3);
  *v4 = v5;
  v6 = sub_22BE2F184(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ToolExecutionInterface.hydrate(value:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ToolExecutionInterface.hydrate(values:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  sub_22BE18630(v10, v11, v12, v13);
  sub_22BE1AC20();
  v14 = swift_task_alloc();
  v15 = sub_22BE2C6B0(v14);
  *v15 = v16;
  sub_22BE23AF4(v15);
  sub_22BE1BAA4();
  sub_22BF88C54();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_22BF86A70()
{
  sub_22BE183F0();
  v2 = v1;
  sub_22BE190F0();
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  sub_22BE2589C();

  return v5(v2);
}

uint64_t dispatch thunk of ToolExecutionInterface.execute(toolInvocation:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  sub_22BE18A50(v9, v10, v11, v12, v13);
  sub_22BE2573C();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  sub_22BE17D2C(v16);
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ToolExecutionInterface.undo(_:)()
{
  sub_22BE201F0();
  sub_22BF88954(v0, v1, v2);
  sub_22BE2573C();
  v3 = swift_task_alloc();
  v4 = sub_22BE2C6B0(v3);
  *v4 = v5;
  v6 = sub_22BE2F184(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ToolExecutionInterface.redo(_:)()
{
  sub_22BE201F0();
  sub_22BF88954(v0, v1, v2);
  sub_22BE2573C();
  v3 = swift_task_alloc();
  v4 = sub_22BE2C6B0(v3);
  *v4 = v5;
  v6 = sub_22BE2F184(v4);

  return v7(v6);
}

uint64_t sub_22BF86E74(uint64_t a1)
{
  result = sub_22C26E1D4();
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