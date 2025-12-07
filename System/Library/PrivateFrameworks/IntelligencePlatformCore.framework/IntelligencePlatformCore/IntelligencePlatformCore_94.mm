uint64_t sub_1C4CBFAC4()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FC3940);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v19, *v21, *&v21[4], v21[6], *(v0 + 33), 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v20, v22, v23, v24, *(v0 + 34), v25);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v17);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v26;
}

uint64_t sub_1C4CBFC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, __int16 a9)
{
  *(v9 + 88) = 0;
  strcpy((v9 + 96), "alwaysUpdate");
  *(v9 + 109) = 0;
  *(v9 + 110) = -5120;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a8;
  *(v9 + 33) = a9;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 72) = a3;
  *(v9 + 74) = BYTE2(a3);
  *(v9 + 75) = BYTE3(a3);
  *(v9 + 76) = BYTE4(a3);
  *(v9 + 80) = 0;
  return v9;
}

void sub_1C4CBFCB8(void *a1, uint64_t *a2)
{
  v5 = [a1 state];
  v6 = sub_1C4F01138();
  v8 = v7;

  v9 = sub_1C443BE78(v6, v8);
  if (v9 == 5)
  {
    sub_1C4F02248();

    v34 = 0xD00000000000001ELL;
    v35 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v10 = [a1 state];
    v11 = sub_1C4F01138();
    v13 = v12;

    MEMORY[0x1C6940010](v11, v13);

LABEL_9:
    sub_1C446D0DC();
    swift_allocError();
    *v25 = v34;
    *(v25 + 8) = v35;
    *(v25 + 16) = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v14 = v9;
  v15 = [a1 configIdentifier];
  v16 = [v15 index];

  v17 = a2[32];
  if (!v17 || *(v17 + 16) <= v16)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](0x7055737961776C61, 0xEC00000065746164);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v24 = sub_1C4F02858();
    MEMORY[0x1C6940010](v24);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    goto LABEL_9;
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = a2[1];
    v19 = v17 + 5 * v16;
    v32 = *(v19 + 32);
    v33 = *a2;
    v31 = *(v19 + 33);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C443ED0C([a1 configIdentifier]);
    if (v2)
    {

LABEL_10:
      sub_1C445F57C(a2);
      return;
    }

    v26 = v20;
    v27 = v21;
    v28 = v22;
    v30 = v23;
    v29 = [a1 triggered];
    swift_allocObject();
    sub_1C4CBFC48(v33, v18, v32 | (v31 << 8), v26, v27, v28, v30, v29, v14);

    sub_1C445F57C(a2);
  }
}

void sub_1C4CC0038(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  *(v2 + 33) = 3;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1C444F05C(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64));
    v11 = sub_1C441D828(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, oslog, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CC019C()
{

  return v0;
}

uint64_t sub_1C4CC01CC()
{
  sub_1C4CC019C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CC023C()
{
  v1 = *(*v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4CC0334()
{
  v1 = *(*v0 + 96);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

unint64_t sub_1C4CC039C(uint64_t a1)
{
  result = sub_1C4CC03C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CC03C4()
{
  result = qword_1EDDFC890;
  if (!qword_1EDDFC890)
  {
    _s18AlwaysUpdateSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC890);
  }

  return result;
}

void sub_1C4CC0450(char a1, const char *a2, ...)
{
  *(v2 + 34) = a1;
  v4 = *(v2 + 336);
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  sub_1C4CC21C4(v4);
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 288) = v5;
  *(v2 + 296) = v6;
  sub_1C4431E64(v5, v6);
  v7 = sub_1C43FD168();
  sub_1C441DFEC(v7, v8);
  *(v2 + 33) = 3;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1C44355B0();
    v15 = sub_1C441D828(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, oslog, v10, a2, v11, 0xCu);
    sub_1C440962C(v12);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

double sub_1C4CC05C4()
{
  if (*(v0 + 320) == 1)
  {
    v1 = sub_1C4CC08F0(v0);
    v3 = v2;
    v4 = *(v0 + 320);
    *(v0 + 320) = v1;
    *(v0 + 328) = v2;
    swift_unknownObjectRetain();
    sub_1C4CC21C4(v4);
  }

  else
  {
    v3 = *(v0 + 328);
  }

  v5 = sub_1C4402CD0();
  sub_1C4450444(v5);
  return v3;
}

void *sub_1C4CC064C()
{
  v1 = 0;
  if (*(v0 + 296) >> 60 != 15)
  {
    sub_1C44344B8(*(v0 + 288), *(v0 + 296));
    v1 = sub_1C44633C0();
    sub_1C441DFEC(v2, v3);
  }

  return v1;
}

uint64_t sub_1C4CC06D4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 34) = 4;
  v4 = sub_1C4450454();
  v5 = *(v1 + 336);
  *(v2 + 336) = a1;
  *(v2 + 344) = v4;
  swift_unknownObjectRetain();
  sub_1C4CC21C4(v5);
  v6 = *(v2 + 272);
  v7 = *(v2 + 280);
  *(v2 + 288) = v6;
  *(v2 + 296) = v7;
  sub_1C4431E64(v6, v7);
  v8 = sub_1C43FD168();
  sub_1C441DFEC(v8, v9);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = sub_1C44355B0();
    v17 = sub_1C441D828(v15, v16, &v21);

    *(v13 + 4) = v17;
    sub_1C44003E4(&dword_1C43F8000, v18, v19, "ViewUpdate: %s: Partially updated");
    sub_1C440962C(v14);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C4CC0860(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = objc_autoreleasePoolPush();
    sub_1C44634A0(a1, &v9);
    objc_autoreleasePoolPop(v5);
    a2 = v9;
  }

  v6 = sub_1C4402120();
  sub_1C4431E64(v6, v7);
  return a2;
}

void *sub_1C4CC08F0(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(a1 + 232);
  sub_1C4431E64(v1, v2);
  return sub_1C4440600(v1, v2);
}

double sub_1C4CC0AAC()
{
  v1 = *(v0 + 336);
  if (v1 == 1)
  {
    v2 = sub_1C4CC05C4();
  }

  else
  {
    v2 = *(v0 + 344);
  }

  sub_1C4450444(v1);
  return v2;
}

uint64_t sub_1C4CC0B10()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C6940010](0xD00000000000001CLL, 0x80000001C4FC3C60);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v19, *v21, *&v21[4], v21[6], *(v0 + 33), 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v20, v22, v23, v24, *(v0 + 34), v25);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v17);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v26;
}

void sub_1C4CC0D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4CC0DF0(a1, a2, a3, a4, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4CC0DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = objc_opt_self();
  v36 = a2;
  v37 = a1;
  v13 = sub_1C4F01108();
  sub_1C4447C04();
  v14 = sub_1C4F01EC8();
  LOBYTE(v32) = 1;
  v15 = [v12 publisherForStream:v13 device:a3 account:a4 startTime:0 endTime:0 maxEvents:v14 lastN:0 reversed:v32];

  v38 = v15;
  if (v15)
  {
    v34 = a5;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v43 = nullsub_1;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C4442530;
    v42 = &unk_1F4409330;
    v17 = _Block_copy(&aBlock);
    v43 = sub_1C4CC22C8;
    v44 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C443EC24;
    v42 = &unk_1F4409358;
    v18 = _Block_copy(&aBlock);
    v35 = v16;

    v19 = [v38 sinkWithBookmark:0 completion:v17 receiveInput:v18];
    _Block_release(v18);
    _Block_release(v17);

    v20 = sub_1C4F01108();
    LOBYTE(v33) = 0;
    v21 = [v12 publisherForStream:v20 device:a3 account:a4 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v33];

    if (v21)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      swift_beginAccess();
      v23 = *(v35 + 16);
      v43 = sub_1C4CC2354;
      v44 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1C4442530;
      v42 = &unk_1F4409380;
      v24 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v43 = nullsub_1;
      v44 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1C443EC24;
      v42 = &unk_1F44093A8;
      v25 = _Block_copy(&aBlock);
      v26 = [v21 &selRef:v23 :v24 rawGeoHashVisitEventPublisherFrom:v25 to:? reversed:? level:? + 3];

      _Block_release(v25);
      _Block_release(v24);

      swift_unknownObjectRelease();
      swift_beginAccess();
      *a6 = *(v22 + 16);
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1C450B034();
      v30 = swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0xE000000000000000;
      *(v31 + 16) = 0xD000000000000013;
      *(v31 + 24) = 0x80000001C4FC3CA0;
      *(v31 + 32) = v37;
      *(v31 + 40) = v36;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0xE000000000000000;
      *(v31 + 64) = 2;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v34 = v30;
    }
  }

  else
  {
    sub_1C450B034();
    v28 = swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 0xD000000000000013;
    *(v29 + 24) = 0x80000001C4FC3CA0;
    *(v29 + 32) = v37;
    *(v29 + 40) = v36;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0xE000000000000000;
    *(v29 + 64) = 2;
    swift_willThrow();
    *a5 = v28;
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4CC12F4(void *a1, uint64_t a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v5 = [a1 bookmark];
    swift_beginAccess();
    *(a2 + 16) = v5;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CC137C()
{
  if (*(v0 + 128))
  {
    v0 = *(v0 + 120);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v1 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v1);
    *v2 = xmmword_1C4F67D80;
    sub_1C440DB00(v2, 2);
  }

  return v0;
}

uint64_t sub_1C4CC13EC()
{
  v0 = sub_1C4F00728();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v44 = v5 - v4;
  sub_1C4F00848();
  sub_1C43FCDF8();
  v41 = v7;
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v43 = sub_1C4F00808();
  sub_1C43FCDF8();
  v40 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4F007E8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4404C28();
  sub_1C4F00768();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4404C28();
  sub_1C4F00768();
  sub_1C4F00818();
  (*(v2 + 104))(v44, *MEMORY[0x1E69AA7A8], v0);
  sub_1C4432D78();
  sub_1C4CC22D0(v23, 255, v24, MEMORY[0x1E69AA7E0]);
  v25 = sub_1C4F00718();
  if (v38)
  {
    (*(v2 + 8))(v44, v0);
  }

  else
  {
    v27 = v25;
    v39 = v26;
    sub_1C4413BA0();
    sub_1C4CC22D0(v28, 255, v29, MEMORY[0x1E69AA7F0]);
    v36 = sub_1C4F00718();
    v37 = v30;
    sub_1C440809C();
    sub_1C4CC22D0(v31, 255, v32, MEMORY[0x1E69AA800]);
    v33 = sub_1C4F00718();
    MEMORY[0x1C693F420](v44, v27, v39, v36, v37, v33, v35);
  }

  (*(v41 + 8))(v10, v42);
  (*(v40 + 8))(v15, v43);
  return (*(v18 + 8))(v22, v16);
}

uint64_t sub_1C4CC17F0()
{
  v56 = sub_1C4F00728();
  sub_1C43FCDF8();
  v58 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v57 = v4 - v3;
  v55 = sub_1C4F00848();
  sub_1C43FCDF8();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F00808();
  sub_1C43FCDF8();
  v53 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4F007E8();
  sub_1C43FCDF8();
  v54 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  sub_1C4CC0AAC();
  v23 = sub_1C4CC1E28(v22);
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    v49 = v9;
    v50 = v15;
    v51 = v21;
    if (v23)
    {
      v47 = v23;
      v25 = sub_1C4CC064C();
      v48 = sub_1C4CC1E28(v25);
      swift_unknownObjectRelease();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F00768();
      v46 = v10;
      v26 = v58;
      v27 = v57;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F00768();
      v28 = [v47 segmentName];
      sub_1C4F01138();

      [v47 offset];
      v29 = v52;
      v30 = v53;
      if (v48)
      {
        v31 = [v48 segmentName];
        sub_1C4F01138();

        [v48 offset];
        v30 = v53;
        v29 = v52;
        v27 = v57;
        v26 = v58;
      }

      sub_1C4F00818();
      (*(v26 + 104))(v27, *MEMORY[0x1E69AA7A8], v56);
      sub_1C4432D78();
      sub_1C4CC22D0(v32, 255, v33, MEMORY[0x1E69AA7E0]);
      v34 = sub_1C4F00718();
      v36 = v35;
      sub_1C4413BA0();
      sub_1C4CC22D0(v37, 255, v38, MEMORY[0x1E69AA7F0]);
      v44 = sub_1C4F00718();
      v45 = v39;
      sub_1C440809C();
      sub_1C4CC22D0(v40, 255, v41, MEMORY[0x1E69AA800]);
      v42 = sub_1C4F00718();
      MEMORY[0x1C693F420](v57, v34, v36, v44, v45, v42, v43);

      (*(v29 + 8))(v49, v55);
      (*(v30 + 8))(v50, v46);
      return (*(v54 + 8))(v51, v16);
    }

    else
    {
      return sub_1C4CC13EC();
    }
  }

  return result;
}

id sub_1C4CC1E28(id result)
{
  if (result)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      result = [v1 value];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      sub_1C446D0DC();
      swift_allocError();
      *v2 = 0xD000000000000018;
      *(v2 + 8) = 0x80000001C4FC3CF0;
      *(v2 + 16) = 2;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C4CC1F10()
{
  v2 = sub_1C4F00848();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4F00748();
  sub_1C440809C();
  sub_1C4CC22D0(v9, 255, v10, MEMORY[0x1E69AA800]);
  result = sub_1C4F00708();
  if (!v1)
  {
    v22 = v4;
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00828();
    v16 = v15;
    v17 = sub_1C4F00838();
    v18 = objc_allocWithZone(MEMORY[0x1E698F128]);
    v19 = sub_1C4CC21D4(v12, 0.0, v13, v14, v16, v17);
    v20 = swift_dynamicCastObjCProtocolConditional();
    if (v20)
    {
      v21 = v19;
    }

    sub_1C444D5B8(v20);

    swift_unknownObjectRelease();
    return (*(v22 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_1C4CC216C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4CC22D0(&qword_1EDDFC690, a2, _s11BiomeSourceCMa, &unk_1C4F67EC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4CC21C4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C4CC21D4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C4F01108();

  v10 = sub_1C4F01108();

  v11 = [v6 initWithStream:v9 segment:v10 iterationStartTime:a6 offset:a2];

  return v11;
}

unint64_t sub_1C4CC2274()
{
  result = qword_1EDDFF988;
  if (!qword_1EDDFF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF988);
  }

  return result;
}

uint64_t sub_1C4CC22D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C4CC2358(char a1)
{
  result = 0x64656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002DLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC2410()
{
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = &unk_1F43D2FB8 + v7++;
    switch(v10[32])
    {
      case 1:
        sub_1C444B38C();
        if (v0)
        {
          v5 = v9;
          v11 = v7;
          v159 = v8;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4426F4C();
          v4 = v159;
          v3 = v0 - 1;
          for (i = 32; ; i += 48)
          {
            sub_1C442EDE0();
            sub_1C47F5D0C(v13, v14);
            v159 = v4;
            v15 = *(v4 + 16);
            v0 = v15 + 1;
            if (v15 >= *(v4 + 24) >> 1)
            {
              sub_1C441CF20();
              v4 = v159;
            }

            v151 = &unk_1F43D0FA8;
            v152 = sub_1C4CA7E60();
            sub_1C44180FC();
            v16 = swift_allocObject();
            sub_1C447F394(v16, v17, v18, v19, v20, v21, v22, v23, v24, v126, v130, v134, v138, v142.i64[0], v142.i64[1], v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v25, v156);
            *(v26 + 44) = *&v157[12];
            *(v4 + 16) = v0;
            sub_1C441D670(&v149, v4 + 40 * v15 + 32);
            if (!v3)
            {
              break;
            }

            --v3;
          }

          v7 = v11;
          v9 = v5;
          v1 = v138;
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v4 = v8;
        }

        sub_1C4433ED0();
        if (v102)
        {
          __break(1u);
          goto LABEL_145;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(isUniquelyReferenced_nonNull_native);
          v9 = v119;
        }

        if (!*(v4 + 16))
        {

          if (!v0)
          {
            goto LABEL_130;
          }

          goto LABEL_154;
        }

        sub_1C44128B0();
        if (v105 != v102)
        {
          goto LABEL_158;
        }

        sub_1C446C134();
        v120 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
        sub_1C44106E0(v120);

        if (!v0)
        {
          goto LABEL_130;
        }

        sub_1C4469368();
        if (v102)
        {
          goto LABEL_167;
        }

        goto LABEL_129;
      case 2:
        if (*(v1 + 24))
        {
          v0 = *(v1 + 24);
        }

        else
        {
          v0 = v8;
        }

        v2 = *(v0 + 16);
        if (v2)
        {
          v5 = v9;
          v50 = v7;
          *&v149 = v8;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C459E828();
          v4 = v149;
          v51 = (v0 + 36);
          do
          {
            v6.i32[0] = *(v51 - 1);
            v52 = *v51;
            *&v149 = v4;
            v53 = *(v4 + 16);
            v3 = v53 + 1;
            if (v53 >= *(v4 + 24) >> 1)
            {
              sub_1C459E828();
              v4 = v149;
            }

            v142 = vmovl_u8(v6);
            *&v157[8] = &unk_1F4409820;
            *&v157[16] = sub_1C4CA7F2C();
            LODWORD(v156) = vuzp1_s8(*v142.i8, *v142.i8).u32[0];
            BYTE4(v156) = v52;
            *(v4 + 16) = v3;
            sub_1C441D670(&v156, v4 + 40 * v53 + 32);
            v51 += 5;
            --v2;
          }

          while (v2);

          v8 = MEMORY[0x1E69E7CC0];
          v7 = v50;
          v9 = v5;
          v1 = v138;
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v4 = v8;
        }

        sub_1C4433ED0();
        if (v102)
        {
          goto LABEL_148;
        }

        v109 = swift_isUniquelyReferenced_nonNull_native();
        if (!v109 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(v109);
          v9 = v110;
        }

        if (!*(v4 + 16))
        {

          if (v0)
          {
            goto LABEL_151;
          }

          goto LABEL_130;
        }

        sub_1C44128B0();
        if (v105 != v102)
        {
          goto LABEL_159;
        }

        sub_1C446C134();
        v111 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
        sub_1C44106E0(v111);

        if (!v0)
        {
          goto LABEL_130;
        }

        sub_1C4469368();
        if (v102)
        {
          goto LABEL_164;
        }

        goto LABEL_129;
      case 3:
        sub_1C444B38C();
        if (v0)
        {
          sub_1C448F234(v54);
          sub_1C4426F4C();
          sub_1C443F3FC();
          while (1)
          {
            v55 = *(v2 + v7);
            v56 = *(v2 + v7 + 16);
            v57 = *(v2 + v7 + 48);
            *&v157[16] = *(v2 + v7 + 32);
            v158 = v57;
            v156 = v55;
            *v157 = v56;
            sub_1C445CD7C(&v156, &v149);
            sub_1C440C7EC();
            if (v31)
            {
              sub_1C441CF20();
              v1 = 40;
              v5 = v159;
            }

            v151 = &unk_1F4409938;
            v152 = sub_1C4CA7EB4();
            v58 = swift_allocObject();
            sub_1C447F394(v58, v59, v60, v61, v62, v63, v64, v65, v66, v126, v130, v134, v138, v142.i64[0], v142.i64[1], v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v67, v156);
            v68 = v158;
            *(v69 + 48) = *&v157[16];
            *(v69 + 64) = v68;
            sub_1C443F82C(v69, v70, v71, v72, v73, v74, v75, v76, v128, v132, v136, v140, v144, v147, v149);
            if (!v3)
            {
              break;
            }

            --v3;
            v7 += 64;
          }

          sub_1C442AA1C();
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v5 = v8;
        }

        sub_1C4461D60();
        if (v102)
        {
          goto LABEL_150;
        }

        v112 = swift_isUniquelyReferenced_nonNull_native();
        if (!v112 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(v112);
          v9 = v113;
        }

        if (!*(v5 + 16))
        {

          if (v0)
          {
            goto LABEL_155;
          }

          goto LABEL_130;
        }

        sub_1C44128B0();
        if (v105 != v102)
        {
          goto LABEL_161;
        }

        sub_1C446C134();
        v114 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
        sub_1C441B108(v114);

        if (!v0)
        {
          goto LABEL_130;
        }

        sub_1C4469368();
        if (v102)
        {
          goto LABEL_165;
        }

        goto LABEL_129;
      case 4:
        sub_1C444B38C();
        if (v0)
        {
          sub_1C448F234(v27);
          sub_1C4426F4C();
          sub_1C443F3FC();
          while (1)
          {
            v28 = *(v2 + v7);
            v29 = *(v2 + v7 + 16);
            v30 = *(v2 + v7 + 32);
            LODWORD(v158) = *(v2 + v7 + 48);
            *v157 = v29;
            *&v157[16] = v30;
            v156 = v28;
            sub_1C47F5DBC(&v156, &v149);
            sub_1C440C7EC();
            if (v31)
            {
              sub_1C441CF20();
              v1 = 40;
              v5 = v159;
            }

            v151 = &unk_1F4409540;
            v152 = sub_1C4CA7E0C();
            v32 = swift_allocObject();
            sub_1C447F394(v32, v33, v34, v35, v36, v37, v38, v39, v40, v126, v130, v134, v138, v142.i64[0], v142.i64[1], v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v41, v156);
            *(v42 + 48) = *&v157[16];
            *(v42 + 64) = v158;
            sub_1C443F82C(v42, v43, v44, v45, v46, v47, v48, v49, v127, v131, v135, v139, v143, v146, v149);
            if (!v3)
            {
              break;
            }

            --v3;
            v7 += 56;
          }

          sub_1C442AA1C();
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v5 = v8;
        }

        sub_1C4461D60();
        if (v102)
        {
          goto LABEL_146;
        }

        v103 = swift_isUniquelyReferenced_nonNull_native();
        if (!v103 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(v103);
          v9 = v106;
        }

        if (!*(v5 + 16))
        {

          if (v0)
          {
            goto LABEL_153;
          }

          goto LABEL_130;
        }

        sub_1C44128B0();
        if (v105 != v102)
        {
          goto LABEL_160;
        }

        sub_1C446C134();
        v107 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
        sub_1C441B108(v107);

        if (!v0)
        {
          goto LABEL_130;
        }

        sub_1C4469368();
        if (v102)
        {
          goto LABEL_166;
        }

        goto LABEL_129;
      case 5:
        sub_1C444B38C();
        if (v0)
        {
          sub_1C448F234(v79);
          sub_1C4426F4C();
          sub_1C443F3FC();
          while (1)
          {
            sub_1C442EDE0();
            sub_1C47F5E6C(v80, v81);
            sub_1C440C7EC();
            if (v31)
            {
              sub_1C441CF20();
              v1 = 40;
              v5 = v159;
            }

            v151 = &unk_1F44096F8;
            v152 = sub_1C4CA7DB8();
            sub_1C44180FC();
            v82 = swift_allocObject();
            sub_1C447F394(v82, v83, v84, v85, v86, v87, v88, v89, v90, v126, v130, v134, v138, v142.i64[0], v142.i64[1], v149, *(&v149 + 1), v150, v151, v152, v153, v154, v155, v91, v156);
            *(v92 + 44) = *&v157[12];
            sub_1C443F82C(v92, v93, v94, v95, v96, v97, v98, v99, v129, v133, v137, v141, v145, v148, v149);
            if (!v3)
            {
              break;
            }

            --v3;
            v7 += 48;
          }

          sub_1C442AA1C();
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v5 = v8;
        }

        sub_1C4461D60();
        if (v102)
        {
          goto LABEL_147;
        }

        v121 = swift_isUniquelyReferenced_nonNull_native();
        if (!v121 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(v121);
          v9 = v122;
        }

        if (*(v5 + 16))
        {
          sub_1C44128B0();
          if (v105 != v102)
          {
            goto LABEL_162;
          }

          sub_1C446C134();
          v123 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
          sub_1C441B108(v123);

          if (v0)
          {
            sub_1C4469368();
            if (v102)
            {
              goto LABEL_163;
            }

LABEL_129:
            *(v9 + 16) = v108;
          }
        }

        else
        {

          if (v0)
          {
            goto LABEL_152;
          }
        }

        goto LABEL_130;
      case 6:
        if (*(v1 + 8))
        {
          v100 = *(v1 + 8);
        }

        else
        {
          v100 = v8;
        }

        v0 = *(v100 + 16);
        if (v0)
        {
          v130 = v9;
          v134 = v7;
          *&v149 = v8;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BBF18();
          sub_1C445C018();
          do
          {
            sub_1C445FF08();
            if (v5 >= v100 >> 1)
            {
              sub_1C444ADC8();
              v1 = 40;
              v4 = v149;
            }

            v142 = vmovl_u8(v6);
            *&v157[8] = &unk_1F4409790;
            *&v157[16] = sub_1C4CA7D64();
            v101 = swift_allocObject();
            *&v156 = v101;
            *(v101 + 16) = v9;
            *(v101 + 24) = v2;
            *(v101 + 32) = v3;
            *(v101 + 40) = vuzp1_s8(*v142.i8, *v142.i8).u32[0];
            *(v4 + 16) = v7;
            sub_1C441D670(&v156, v4 + v5 * v1 + 32);
            v8 += 32;
            --v0;
          }

          while (v0);

          v1 = v138;
          v8 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v4 = v8;
        }

        sub_1C4433ED0();
        if (v102)
        {
          goto LABEL_149;
        }

        v124 = swift_isUniquelyReferenced_nonNull_native();
        if (!v124 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
        {
          sub_1C443036C(v124);
          v9 = v125;
        }

        if (!*(v4 + 16))
        {
          goto LABEL_138;
        }

        sub_1C44128B0();
        if (v105 == v102)
        {
          goto LABEL_98;
        }

        goto LABEL_157;
      case 7:
        if (*(v1 + 48))
        {
          v77 = *(v1 + 48);
        }

        else
        {
          v77 = v8;
        }

        v0 = *(v77 + 16);
        if (v0)
        {
          v130 = v9;
          v134 = v7;
          *&v149 = v8;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BBF18();
          sub_1C445C018();
          do
          {
            sub_1C445FF08();
            if (v5 >= v77 >> 1)
            {
              sub_1C444ADC8();
              v1 = 40;
              v4 = v149;
            }

            v142 = vmovl_u8(v6);
            *&v157[8] = &unk_1F4409668;
            *&v157[16] = sub_1C4CA7D10();
            v78 = swift_allocObject();
            *&v156 = v78;
            *(v78 + 16) = v9;
            *(v78 + 24) = v2;
            *(v78 + 32) = v3;
            *(v78 + 40) = vuzp1_s8(*v142.i8, *v142.i8).u32[0];
            *(v4 + 16) = v7;
            sub_1C441D670(&v156, v4 + v5 * v1 + 32);
            v8 += 32;
            --v0;
          }

          while (v0);

          v1 = v138;
          v8 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v4 = v8;
        }

        sub_1C4433ED0();
        if (!v102)
        {
          v115 = swift_isUniquelyReferenced_nonNull_native();
          if (!v115 || (sub_1C4434804(), !(v105 ^ v102 | v104)))
          {
            sub_1C443036C(v115);
            v9 = v116;
          }

          if (*(v4 + 16))
          {
            sub_1C44128B0();
            if (v105 != v102)
            {
              goto LABEL_156;
            }

LABEL_98:
            sub_1C446C134();
            v117 = sub_1C456902C(&qword_1EC0B8BE0, &unk_1C4F0EF30);
            sub_1C44106E0(v117);
          }

          else
          {
LABEL_138:
          }

LABEL_130:
          if (v7 == 8)
          {
            return;
          }

          continue;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        __break(1u);
LABEL_167:
        __break(1u);
        __break(1u);
        return;
      default:
        goto LABEL_130;
    }
  }
}

uint64_t sub_1C4CC2E18()
{
  sub_1C4404078();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = *(v1 + 16);
  v5 = *(v0 + 16);
  if (v4)
  {
    if (!v5 || (sub_1C47E7154(v4, v5) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v5)
  {
    goto LABEL_16;
  }

  v6 = *(v1 + 24);
  v7 = *(v0 + 24);
  if (v6)
  {
    if (v7 && (sub_1C47E7154(v6, v7) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v8 = 0;
    return v8 & 1;
  }

  if (v7)
  {
    goto LABEL_16;
  }

LABEL_14:
  v8 = *(v1 + 32) ^ *(v0 + 32) ^ 1;
  return v8 & 1;
}

uint64_t sub_1C4CC2EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E77656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E65727574616566 && a2 == 0xEC00000073656D61;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C4FC3E40 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001C4FB32D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4CC3020(char a1)
{
  result = 0x656D614E77656976;
  switch(a1)
  {
    case 1:
      result = 0x4E65727574616566;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC30AC()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C5E30, &qword_1C4F68BC0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4CCBAA8();
  sub_1C440F61C(&_s14FeaturesFilterV10CodingKeysON, v4, v3);
  sub_1C4402150();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C4417A64();
    sub_1C440F9B8();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C448E100(*(v0 + 24));
    sub_1C4417A64();
    sub_1C440F9B8();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C440D3E4();
    sub_1C4F027A8();
  }

  v5 = sub_1C43FF120();
  v6(v5);
  sub_1C44102DC();
}

uint64_t sub_1C4CC3234(uint64_t a1)
{
  sub_1C4F01298();
  if (*(v1 + 16))
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v1 + 24))
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CC32BC(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC3234(v2);
  return sub_1C4F02B68();
}

void sub_1C4CC32F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v13 = v12;
  sub_1C456902C(&qword_1EC0C5E28, &unk_1C4F68BB0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4417F50(v10, v10[3]);
  sub_1C4CCBAA8();
  sub_1C4F02BC8();
  if (v11)
  {
    sub_1C440962C(v10);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1C440BCD8();
    v19 = sub_1C4F02678();
    v20 = v15;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C444C3EC();
    sub_1C440BCD8();
    sub_1C4F02658();
    sub_1C444C3EC();
    sub_1C4F02658();
    sub_1C440BCD8();
    v16 = sub_1C4F02688();
    v17 = sub_1C441F0A4();
    v18(v17);
    sub_1C440962C(v10);
    *v13 = v19;
    *(v13 + 8) = v20;
    *(v13 + 16) = a10;
    *(v13 + 24) = a10;
    *(v13 + 32) = v16 & 1;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC35A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC2EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC35D0(uint64_t a1)
{
  v2 = sub_1C4CCBAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC360C(uint64_t a1)
{
  v2 = sub_1C4CCBAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC3648@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C4CC32F4(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

uint64_t sub_1C4CC36B0()
{
  sub_1C4F02AF8();
  sub_1C4CC3234(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC3774()
{
  v1 = sub_1C4405D78();
  result = sub_1C44912F4(v1);
  *v0 = result;
  return result;
}

BOOL sub_1C4CC37F4()
{
  sub_1C4404078();
  v3 = *v2;
  v5 = *v4;
  if (*v2)
  {
    if (!v5)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E79F0();
    sub_1C44016DC();
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = v1[1];
  v7 = v0[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47F79D0();
    sub_1C44016DC();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = v1[2];
  v9 = v0[2];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E7A98();
    sub_1C44016DC();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v1[3];
  v11 = v0[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E7B70();
    sub_1C44016DC();
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = v1[4];
  v13 = v0[4];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E7F00();
    sub_1C44016DC();
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = v1[5];
  v15 = v0[5];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E7FF4();
    sub_1C44016DC();
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = v1[6];
  v17 = v0[6];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47F79D0();
    sub_1C44016DC();
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = v1[8];
  v19 = v0[8];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v1[7] == v0[7] && v18 == v19;
    return v20 || (sub_1C4F02938() & 1) != 0;
  }

  return !v19;
}

uint64_t sub_1C4CC39AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001C4FC3E80 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001DLL && 0x80000001C4FC3EA0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73694C656D6F6962 && a2 == 0xEE007372656E6574;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4FC3EC0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7473694C77656976 && a2 == 0xED00007372656E65;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001C4FC3EE0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001C4FC3F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

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

void sub_1C4CC3C38()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C5E90, &unk_1C4F68C20);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C45069D4();
  sub_1C440F61C(&_s9ListenersV10CodingKeysON, v4, v3);
  sub_1C456902C(&qword_1EC0C5E58, &qword_1C4F68BE8);
  sub_1C4CCC048();
  sub_1C43FEF68();
  sub_1C4F02778();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CCC0CC();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C448E100(*(v1 + 16));
    sub_1C456902C(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CCC150();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C456902C(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CCC1D4();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C456902C(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCC258();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C456902C(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CCC2DC();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C456902C(&qword_1EC0C5E88, &qword_1C4F68C18);
    sub_1C4CCC360();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C44074D0();
    sub_1C4F02738();
  }

  v5 = sub_1C43FF120();
  v6(v5);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC3F08()
{
  if (*v0)
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F133C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[1])
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F1BD8();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[2])
  {
    sub_1C4F02B18();
    v1 = sub_1C4410428();
    sub_1C49F1084(v1, v2);
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[3])
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F0E88();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[4])
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F0BC8();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[5])
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F09BC();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (v0[6])
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F1BD8();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (!v0[8])
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();
  sub_1C4441A30();

  return sub_1C4F01298();
}

uint64_t sub_1C4CC4070(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC3F08();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC40A8()
{
  sub_1C4404078();
  v3 = *(v2 + 8);
  v4 = *(v0 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (*(v1 + 16) == 2)
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = sub_1C442C0F0();
  if (!v5 && ((v7 ^ v8) & 1) == 0)
  {
LABEL_15:
    v9 = *(v1 + 24);
    v10 = *(v0 + 24);
    if (v9)
    {
      if (!v10 || (sub_1C47E7154(v9, v10) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    v11 = *(v1 + 32);
    v12 = *(v0 + 32);
    if (v11)
    {
      if (!v12 || (sub_1C47E7154(v11, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    v13 = *(v1 + 48);
    v14 = *(v0 + 48);
    if (v13)
    {
      if (!v14)
      {
        return 0;
      }

      v15 = *(v1 + 40) == *(v0 + 40) && v13 == v14;
      return v15 || (sub_1C4F02938() & 1) != 0;
    }

    return !v14;
  }

  return result;
}

uint64_t sub_1C4CC41AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001C4FC3F20 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65527463656A626FLL && a2 == 0xEB00000000786567)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C4CC4364(char a1)
{
  result = 0x7954797469746E65;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x73656372756F73;
      break;
    case 4:
      result = 0x65527463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC4410()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C5F18, &qword_1C4F69A28);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  v3 = sub_1C4CCD51C();
  sub_1C440F61C(&_s20KnowledgeGraphFilterV10CodingKeysON, v4, v3);
  sub_1C4402150();
  sub_1C4F02738();
  if (!v1)
  {
    sub_1C440D3E4();
    sub_1C4F02748();
    sub_1C448E100(*(v0 + 24));
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C4417A64();
    sub_1C440F9B8();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C4417A64();
    sub_1C440F9B8();
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v5 = sub_1C43FF120();
  v6(v5);
  sub_1C44102DC();
}

uint64_t sub_1C4CC45BC()
{
  if (*(v0 + 8))
  {
    sub_1C4F02B18();
    sub_1C441476C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v0 + 16) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v0 + 24))
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v0 + 32))
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (!*(v0 + 48))
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();
  sub_1C4441A30();

  return sub_1C4F01298();
}

uint64_t sub_1C4CC46B8(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC45BC();
  return sub_1C4F02B68();
}

void sub_1C4CC46F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v13 = v12;
  v14 = sub_1C456902C(&qword_1EC0C5F10, &qword_1C4F69A20);
  sub_1C43FCDF8();
  v16 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_1C4417F50(v10, v10[3]);
  sub_1C4CCD51C();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v11)
  {
    sub_1C440962C(v10);
  }

  else
  {
    sub_1C440389C();
    v20 = sub_1C4F02618();
    v22 = v21;
    LOBYTE(a10) = 1;
    sub_1C440389C();
    v34 = sub_1C4F02628();
    v35 = v20;
    v36 = v22;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v37 = 2;
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C444C3EC();
    sub_1C440389C();
    sub_1C4F02658();
    v33 = a10;
    v37 = 3;
    sub_1C444C3EC();
    sub_1C440389C();
    sub_1C4F02658();
    v32 = a10;
    sub_1C440389C();
    v23 = sub_1C4F02618();
    v24 = v36;
    v26 = v25;
    v27 = *(v16 + 8);
    v31 = v23;
    v27(v19, v14);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = v33;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v10);

    *v13 = v35;
    *(v13 + 8) = v24;
    *(v13 + 16) = v34;
    *(v13 + 24) = v28;
    *(v13 + 32) = v29;
    *(v13 + 40) = v31;
    *(v13 + 48) = v26;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC4A2C(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4CC4A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC39AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC4AA8(uint64_t a1)
{
  v2 = sub_1C45069D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC4AE4(uint64_t a1)
{
  v2 = sub_1C45069D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CC4B40()
{
  sub_1C4F02AF8();
  sub_1C4CC3F08();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC4B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC41AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC4BB0(uint64_t a1)
{
  v2 = sub_1C4CCD51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC4BEC(uint64_t a1)
{
  v2 = sub_1C4CCD51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC4C28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C4CC46F0(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *&v15;
    *(a9 + 32) = v15;
    *(a9 + 48) = v16;
  }

  return result;
}

uint64_t sub_1C4CC4C98()
{
  sub_1C4F02AF8();
  sub_1C4CC45BC();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC4CD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CC4A2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4CC4DC8(char *a1, char *a2)
{
  v6 = sub_1C4413BB8(a1, a2);
  v8 = v8 && v4 == v7;
  if (v8)
  {
  }

  else
  {
    sub_1C4409A04(v6);
    sub_1C43FD000();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4839E00();
  if ((v9 & 1) == 0 || (sub_1C47E84E0(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32);
  v11 = *(v2 + 32);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v3 + 24) == *(v2 + 24) && v10 == v11;
    if (!v12 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_1C442F768();
  if (v8)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v14 || ((v16 ^ v17) & 1) != 0)
    {
      return result;
    }
  }

  sub_1C4401F48();
  if (v8)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v19 || ((v20 ^ v21) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 42) == 2)
  {
    if (*(v2 + 42) != 2)
    {
      return 0;
    }

LABEL_36:
    v24 = *(v3 + 43);
    v25 = *(v2 + 43);
    if (v24 == 2)
    {
      if (v25 != 2)
      {
        return 0;
      }
    }

    else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = sub_1C442C0F0();
  if (!v8 && ((v22 ^ v23) & 1) == 0)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1C4CC4F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365726F7473 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737265746C6966 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

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

unint64_t sub_1C4CC51B4(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x7365726F7473;
      break;
    case 2:
      result = 0x737265746C6966;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6465726975716572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x56646C6975626572;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC52B0()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C5DF0, &qword_1C4F68B78);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  v2 = sub_1C4CCB5F8();
  sub_1C440F61C(&_s20KnowledgeGraphConfigV10CodingKeysON, v3, v2);
  sub_1C44644B0();
  sub_1C43FDF6C();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0C5DE0, &qword_1C4F68B68);
    sub_1C4CCB7FC();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C456902C(&qword_1EC0C5DE8, &qword_1C4F68B70);
    sub_1C4CCB8D4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C44074D0();
    sub_1C4F02738();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
  }

  v4 = sub_1C43FF120();
  v5(v4);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC54D8(uint64_t a1)
{
  sub_1C44092CC(a1);

  sub_1C4851370(v2, *(v1 + 8));
  sub_1C49F14C0();
  if (*(v1 + 32))
  {
    sub_1C4F02B18();
    sub_1C441476C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v1 + 40) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 41) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 42) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 43) != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

void sub_1C4CC55D4()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5DD8, &qword_1C4F68B60);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  sub_1C4417F50(v2, v2[3]);
  v11 = sub_1C4CCB5F8();
  sub_1C4460B4C(&_s20KnowledgeGraphConfigV10CodingKeysON, v12, v11);
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1C441D9A4();
    sub_1C4440E44();
    sub_1C4402EB0();
    sub_1C4F026C8();
    v13 = v29;
    sub_1C456902C(&qword_1EC0C5DE0, &qword_1C4F68B68);
    LOBYTE(v27) = 1;
    sub_1C4CCB64C();
    sub_1C4440E44();
    sub_1C4402EB0();
    sub_1C4F026C8();
    v26 = v29;
    sub_1C456902C(&qword_1EC0C5DE8, &qword_1C4F68B70);
    LOBYTE(v27) = 2;
    sub_1C4CCB724();
    sub_1C4440E44();
    sub_1C4402EB0();
    sub_1C4F026C8();
    v34 = v13;
    v14 = v29;
    sub_1C440FE18(3);
    sub_1C4402EB0();
    v15 = sub_1C4F02618();
    v17 = v16;
    v25 = v15;
    sub_1C440FE18(4);
    sub_1C4402EB0();
    v24[3] = sub_1C4F02628();
    sub_1C440FE18(5);
    sub_1C4402EB0();
    v24[2] = sub_1C4F02628();
    sub_1C440FE18(6);
    sub_1C4402EB0();
    v24[1] = sub_1C4F02628();
    sub_1C440EE90(7);
    sub_1C4402EB0();
    sub_1C4F02628();
    (*(v7 + 8))(v10, v5);
    LOBYTE(v27) = v34;
    v19 = v25;
    v18 = v26;
    *(&v27 + 1) = v26;
    *v28 = v14;
    *&v28[8] = v25;
    *&v28[16] = v17;
    v20 = sub_1C442254C();
    sub_1C47F5D0C(v20, v21);
    sub_1C440962C(v2);
    LOBYTE(v29) = v34;
    v30 = v18;
    v31 = v14;
    v32 = v19;
    v33 = v17;
    v22 = sub_1C44604A0();
    sub_1C47F5D68(v22);
    v23 = *v28;
    *v4 = v27;
    v4[1] = v23;
    *(v4 + 28) = *&v28[12];
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4CC5968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC4F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC5990(uint64_t a1)
{
  v2 = sub_1C4CCB5F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC59CC(uint64_t a1)
{
  v2 = sub_1C4CCB5F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC5A08@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4CC55D4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[12];
    *(a1 + 28) = *&v5[12];
  }

  return result;
}

uint64_t sub_1C4CC5AB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4CC5CB8(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6D614E7465737361;
      break;
    case 2:
      result = 0x6465726975716572;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x56646C6975626572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4CC5D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC5AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC5DC0(uint64_t a1)
{
  v2 = sub_1C4CCBA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC5DFC(uint64_t a1)
{
  v2 = sub_1C4CCBA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1C4CC5F88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C4CC5FA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C4CC5FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C4CC604C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

__n128 sub_1C4CC606C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4CC6080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1C4CC60C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CC6118(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C4CC6158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CC61B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C4CC61F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s19ControlSourceConfigVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C4CC6254(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 5))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 1);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CC62AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C4CC62FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C4CC633C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CC638C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C4CC63CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CC6428(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CC647C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C4CC64F0()
{
  result = qword_1EC0C5DA0;
  if (!qword_1EC0C5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5DA0);
  }

  return result;
}

void sub_1C4CC6544(uint64_t a1, void (*a2)(void))
{
  v6 = *(v2 + 27);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    (a2)(v7, v8, 0);
    if (v3)
    {
      return;
    }

    (a2)(v7, v8, 1);
  }

  v9 = *(v2 + 32);
  if (v9)
  {
    v37 = v3;
    v10 = *(v9 + 16);
    v34 = a1;
    if (v10)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1C459F090(0, v10, 0);
      v11 = v39;
      v12 = (v9 + 32);
      do
      {
        v14 = *v12++;
        v13 = v14;
        v40 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C459F090((v15 > 1), v16 + 1, 1);
          v11 = v40;
        }

        *(v11 + 16) = v16 + 1;
        *(v11 + 8 * v16 + 32) = v13;
        --v10;
      }

      while (v10);
      a1 = v34;
    }

    v17 = sub_1C4598BC4();
    v41 = sub_1C4428DA0(a1);
    if (v41)
    {
      v33 = a2;
      v18 = 0;
      v38 = a1 & 0xC000000000000001;
      v35 = a1 + 32;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v38)
        {
          v19 = MEMORY[0x1C6940F90](v18, a1);
        }

        else
        {
          if (v18 >= *(v36 + 16))
          {
            goto LABEL_31;
          }

          v19 = *(v35 + 8 * v18);
        }

        v20 = v19;
        if (__OFADD__(v18++, 1))
        {
          break;
        }

        v22 = [v19 platform];
        if (*(v17 + 16))
        {
          v23 = v22;
          sub_1C4F02AF8();
          MEMORY[0x1C69417F0](v23);
          v24 = sub_1C4F02B68();
          v25 = ~(-1 << *(v17 + 32));
          while (1)
          {
            v26 = v24 & v25;
            if (((*(v17 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
            {
              break;
            }

            v24 = v26 + 1;
            if (*(*(v17 + 48) + 8 * v26) == v23)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v27 = [v20 deviceIdentifier];
              v28 = sub_1C4F01138();
              v30 = v29;

              MEMORY[0x1C6940010](0x7365746F6D65723ALL, 0xE90000000000003ALL);
              MEMORY[0x1C6940010](v28, v30);

              v31 = sub_1C43FE5F8();
              v33(v31);
              if (!v37)
              {
                v32 = sub_1C43FE5F8();
                v33(v32);
                v37 = 0;

                a1 = v34;
                goto LABEL_26;
              }

              return;
            }
          }
        }

LABEL_26:
        if (v18 == v41)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_27:
    }
  }
}

uint64_t sub_1C4CC687C(char *a1, char *a2)
{
  v6 = sub_1C4413BB8(a1, a2);
  v8 = v8 && v4 == v7;
  if (v8)
  {
  }

  else
  {
    sub_1C4409A04(v6);
    sub_1C43FD000();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4459C50();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 24) == 2)
  {
    if (*(v2 + 24) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v13 ^ v14) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 25) == 2)
  {
    if (*(v2 + 25) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v15 ^ v16) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 26) == 2)
  {
    if (*(v2 + 26) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v17 ^ v18) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 27) == 2)
  {
    if (*(v2 + 27) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v19 ^ v20) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 28) == 2)
  {
    if (*(v2 + 28) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v21 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  v23 = *(v3 + 32);
  v24 = *(v2 + 32);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4405814();
    sub_1C47E8710();
    sub_1C44016DC();
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  sub_1C442F768();
  if (v8)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v26 || ((v27 ^ v28) & 1) != 0)
    {
      return result;
    }
  }

  sub_1C4401F48();
  if (v8)
  {
    if (v29 != 2)
    {
      return 0;
    }

    goto LABEL_55;
  }

  result = sub_1C442C0F0();
  if (!v30 && ((v31 ^ v32) & 1) == 0)
  {
LABEL_55:
    v33 = *(v3 + 56);
    v34 = *(v2 + 56);
    if (v33)
    {
      if (!v34)
      {
        return 0;
      }

      v35 = *(v3 + 48) == *(v2 + 48) && v33 == v34;
      return v35 || (sub_1C4F02938() & 1) != 0;
    }

    return !v34;
  }

  return result;
}

uint64_t sub_1C4CC6A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6165727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4F646C6975626572 && a2 == 0xEE00656E7572506ELL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69725068676968 && a2 == 0xEC00000079746972;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C6564756C637865 && a2 == 0xEC0000006C61636FLL;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C4FC3E60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x75517265746C6966 && a2 == 0xEB00000000797265)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

void sub_1C4CC6E04()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C5E48, &qword_1C4F68BD8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  v2 = sub_1C45089AC();
  sub_1C440F61C(&_s11BiomeConfigV10CodingKeysON, v3, v2);
  sub_1C44644B0();
  sub_1C43FDF6C();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C44074D0();
    sub_1C4F02798();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C456902C(&qword_1EC0C5E40, &qword_1C4F68BD0);
    sub_1C4CCBBD4();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C44074D0();
    sub_1C4F02738();
  }

  v4 = sub_1C43FF120();
  v5(v4);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC7064(uint64_t a1)
{
  sub_1C44092CC(a1);

  sub_1C4F01298();
  if (*(v1 + 24) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 25) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 26) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 27) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 28) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 32))
  {
    sub_1C4F02B18();
    sub_1C4410428();
    sub_1C49F16B0();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v1 + 40) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 41) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (!*(v1 + 56))
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();
  sub_1C4441A30();

  return sub_1C4F01298();
}

uint64_t sub_1C4CC7200(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC7064(v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC6A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC7260(uint64_t a1)
{
  v2 = sub_1C45089AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC729C(uint64_t a1)
{
  v2 = sub_1C45089AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CC7300()
{
  sub_1C4F02AF8();
  sub_1C4CC7064(v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CC7344()
{
  result = qword_1EDDECB30;
  if (!qword_1EDDECB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECB30);
  }

  return result;
}

unint64_t sub_1C4CC73D8()
{
  result = qword_1EDDECB40;
  if (!qword_1EDDECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECB40);
  }

  return result;
}

unint64_t sub_1C4CC742C()
{
  result = qword_1EDDECB38;
  if (!qword_1EDDECB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECB38);
  }

  return result;
}

unint64_t sub_1C4CC7484()
{
  result = qword_1EC0C5DA8;
  if (!qword_1EC0C5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5DA8);
  }

  return result;
}

uint64_t sub_1C4CC74D8()
{
  sub_1C4404078();
  v3 = sub_1C4424B10(v2);
  v5 = v4;
  v6 = sub_1C4424B10(v0);
  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    sub_1C4409A04(v6);
    sub_1C43FD000();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v1 & 0xFF00) == 0x200)
  {
    if (BYTE1(v0) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(v0) == 2 || ((((v1 & 0x100) == 0) ^ (v0 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((v1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(v0) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE2(v0) == 2 || ((((v1 & 0x10000) == 0) ^ (v0 >> 16)) & 1) == 0)
    {
      return result;
    }
  }

  if ((v1 & 0xFF000000) == 0x2000000)
  {
    if (BYTE3(v0) != 2)
    {
      return 0;
    }

LABEL_23:
    if ((v1 & 0xFF00000000) == 0x200000000)
    {
      if (BYTE4(v0) != 2)
      {
        return 0;
      }
    }

    else if (BYTE4(v0) == 2 || ((((v1 & 0x100000000) == 0) ^ HIDWORD(v0)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (BYTE3(v0) != 2 && ((((v1 & 0x1000000) == 0) ^ (v0 >> 24)) & 1) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1C4CC7654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C4CC780C(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6465726975716572;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x56646C6975626572;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC78C8()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C5E20, &qword_1C4F68BA8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  v2 = sub_1C4CCBA54();
  sub_1C440F61C(&_s18AlwaysUpdateConfigV10CodingKeysON, v3, v2);
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C440D3E4();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C441B5AC();
    sub_1C440D3E4();
    sub_1C4F02748();
    sub_1C44620C4();
    sub_1C440D3E4();
    sub_1C4F02748();
    sub_1C442ACF8();
    sub_1C440D3E4();
    sub_1C4F02748();
    sub_1C44168E4();
    sub_1C440D3E4();
    sub_1C4F02748();
  }

  v4 = sub_1C43FF120();
  v5(v4);
  sub_1C44102DC();
}

uint64_t sub_1C4CC7A2C()
{
  sub_1C4404078();
  sub_1C4424B10(v0);
  sub_1C4F01298();

  if ((v0 & 0xFF00) != 0x200)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((v0 & 0xFF0000) != 0x20000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((v0 & 0xFF000000) != 0x2000000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((v0 & 0xFF00000000) != 0x200000000)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CC7B14(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC7A2C();
  return sub_1C4F02B68();
}

void sub_1C4CC7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1C43FE96C();
  a24 = v26;
  a25 = v27;
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C5E18, &qword_1C4F68BA0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4417F50(v25, v25[3]);
  sub_1C4CCBA54();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  LOBYTE(a15) = 0;
  sub_1C441D9A4();
  sub_1C4F026C8();
  sub_1C441B5AC();
  sub_1C4403AB0(&a14);
  sub_1C44620C4();
  sub_1C4403AB0(&a13);
  a12 = 3;
  sub_1C4403AB0(&a12);
  a11 = 4;
  sub_1C4403AB0(&a11);
  v29 = sub_1C43FE5F8();
  v30(v29);
  sub_1C440962C(v25);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC7D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC7654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC7D68(uint64_t a1)
{
  v2 = sub_1C4CCBA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC7DA4(uint64_t a1)
{
  v2 = sub_1C4CCBA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CC7E90()
{
  sub_1C4F02AF8();
  sub_1C4CC7A2C();
  return sub_1C4F02B68();
}

unint64_t sub_1C4CC7EF8()
{
  result = qword_1EDDF9F10;
  if (!qword_1EDDF9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F10);
  }

  return result;
}

unint64_t sub_1C4CC7F8C()
{
  result = qword_1EDDFF998;
  if (!qword_1EDDFF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF998);
  }

  return result;
}

unint64_t sub_1C4CC7FE0()
{
  result = qword_1EDDF9F20;
  if (!qword_1EDDF9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F20);
  }

  return result;
}

unint64_t sub_1C4CC8034()
{
  result = qword_1EDDF9F18;
  if (!qword_1EDDF9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F18);
  }

  return result;
}

unint64_t sub_1C4CC808C()
{
  result = qword_1EDDEC1F0;
  if (!qword_1EDDEC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC1F0);
  }

  return result;
}

unint64_t sub_1C4CC8120()
{
  result = qword_1EDDFF968;
  if (!qword_1EDDFF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF968);
  }

  return result;
}

unint64_t sub_1C4CC8174()
{
  result = qword_1EDDEC200;
  if (!qword_1EDDEC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC200);
  }

  return result;
}

unint64_t sub_1C4CC81C8()
{
  result = qword_1EDDEC1F8;
  if (!qword_1EDDEC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC1F8);
  }

  return result;
}

uint64_t sub_1C4CC821C(char *a1, char *a2)
{
  v6 = sub_1C4413BB8(a1, a2);
  v8 = v8 && v4 == v7;
  if (v8)
  {
  }

  else
  {
    sub_1C4409A04(v6);
    sub_1C43FD000();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4459C50();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 24);
  v13 = *(v2 + 24);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || (sub_1C46888E4(v12 & 1) & 1) == 0)
  {
    return 0;
  }

  v14 = *(v3 + 40);
  v15 = *(v2 + 40);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(v3 + 32) == *(v2 + 32) && v14 == v15;
    if (!v16 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(v3 + 48) == 2)
  {
    if (*(v2 + 48) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v18 ^ v19) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 49) == 2)
  {
    if (*(v2 + 49) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v8 || ((v20 ^ v21) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 50) == 2)
  {
    if (*(v2 + 50) != 2)
    {
      return 0;
    }

LABEL_42:
    v24 = *(v3 + 51);
    v25 = *(v2 + 51);
    if (v24 == 2)
    {
      if (v25 != 2)
      {
        return 0;
      }
    }

    else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = sub_1C442C0F0();
  if (!v8 && ((v22 ^ v23) & 1) == 0)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1C4CC83BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6570795466666964 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x75517265746C6966 && a2 == 0xEB00000000797265;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

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

unint64_t sub_1C4CC8650(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6570795466666964;
      break;
    case 3:
      result = 0x75517265746C6966;
      break;
    case 4:
      result = 0x6465726975716572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x56646C6975626572;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC8750()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C5DC0, &qword_1C4F68B48);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  v2 = sub_1C4CCB550();
  sub_1C440F61C(&_s16ViewSourceConfigV10CodingKeysON, v3, v2);
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C43FDF6C();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C441B5AC();
    sub_1C44074D0();
    sub_1C4F02798();
    sub_1C4BBB9FC();
    sub_1C43FDF6C();
    sub_1C4F02778();
    sub_1C44074D0();
    sub_1C4F02738();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
  }

  v4 = sub_1C43FF120();
  v5(v4);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC8938(uint64_t a1)
{
  sub_1C44092CC(a1);

  sub_1C4F01298();
  if (*(v1 + 24) == 2)
  {
    sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  if (*(v1 + 40))
  {
    sub_1C4F02B18();
    sub_1C441476C();
  }

  else
  {
    sub_1C4F02B18();
  }

  if (*(v1 + 48) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 49) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 50) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v1 + 51) != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CC8AA4(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4CC8938(v2);
  return sub_1C4F02B68();
}

void sub_1C4CC8ADC()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5DB8, &qword_1C4F68B40);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4440AD4();
  sub_1C4417F50(v0, v0[3]);
  sub_1C4CCB550();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C43FE664();
    sub_1C4F026C8();
    sub_1C43FE12C(1);
    v9 = sub_1C4F02678();
    v11 = v10;
    v22 = v9;
    LOBYTE(v23) = 2;
    sub_1C4442E20();
    sub_1C43FE664();
    sub_1C4F02658();
    v37 = v27[0];
    v21 = v27[0];
    sub_1C43FE12C(3);
    v12 = sub_1C4F02618();
    v14 = v13;
    v20 = v12;
    sub_1C43FE12C(4);
    v19 = sub_1C4F02628();
    sub_1C43FE12C(5);
    v18 = sub_1C4F02628();
    sub_1C43FE12C(6);
    v17 = sub_1C4F02628();
    sub_1C43FE664();
    v15 = sub_1C4F02628();
    (*(v7 + 8))(v2, v5);
    LOBYTE(v23) = v27[0];
    *(&v23 + 1) = v22;
    *&v24 = v11;
    BYTE8(v24) = v27[0];
    *&v25 = v20;
    *(&v25 + 1) = v14;
    LOBYTE(v26) = v19;
    BYTE1(v26) = v18;
    BYTE2(v26) = v17;
    HIBYTE(v26) = v15;
    sub_1C47F5DBC(&v23, v27);
    sub_1C440962C(v0);
    v27[0] = v37;
    v28 = v22;
    v29 = v11;
    v30 = v21;
    v31 = v20;
    v32 = v14;
    v33 = v19;
    v34 = v18;
    v35 = v17;
    v36 = v15;
    sub_1C47F5E18(v27);
    v16 = v24;
    *v4 = v23;
    *(v4 + 16) = v16;
    *(v4 + 32) = v25;
    *(v4 + 48) = v26;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC8E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC83BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC8E64(uint64_t a1)
{
  v2 = sub_1C4CCB550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC8EA0(uint64_t a1)
{
  v2 = sub_1C4CCB550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC8EFC@<D0>(uint64_t a1@<X8>)
{
  sub_1C4CC8ADC();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1C4CC8F6C()
{
  sub_1C4F02AF8();
  sub_1C4CC8938(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CC8FAC(char *a1, char *a2)
{
  v6 = sub_1C4413BB8(a1, a2);
  v8 = v8 && v4 == v7;
  if (v8)
  {
  }

  else
  {
    sub_1C4409A04(v6);
    sub_1C43FD000();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4459C50();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C442F768();
  if (v8)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v14 || ((v16 ^ v17) & 1) != 0)
    {
      return result;
    }
  }

  sub_1C4401F48();
  if (v8)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v19 || ((v20 ^ v21) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v3 + 42) == 2)
  {
    if (*(v2 + 42) != 2)
    {
      return 0;
    }

LABEL_35:
    v24 = *(v3 + 43);
    v25 = *(v2 + 43);
    if (v24 == 2)
    {
      if (v25 != 2)
      {
        return 0;
      }
    }

    else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = sub_1C442C0F0();
  if (!v8 && ((v22 ^ v23) & 1) == 0)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_1C4CC90F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C656E69746E6573 && a2 == 0xEB0000000079654BLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4CC9338(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6E69616D6F64;
      break;
    case 2:
      result = 0x6C656E69746E6573;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x56646C6975626572;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC9428()
{
  sub_1C4413F18();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C5E00, &qword_1C4F68B88);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  v2 = sub_1C4CCB9AC();
  sub_1C440F61C(&_s20KeyValueSourceConfigV10CodingKeysON, v3, v2);
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C43FDF6C();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C441B5AC();
    sub_1C44074D0();
    sub_1C4F02798();
    sub_1C44620C4();
    sub_1C44074D0();
    sub_1C4F02798();
    sub_1C442ACF8();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C44168E4();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
    sub_1C43FDF6C();
    sub_1C4F02748();
  }

  v4 = sub_1C43FF120();
  v5(v4);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC95C4(uint64_t a1)
{
  sub_1C44092CC(a1);

  sub_1C4F01298();
  sub_1C4F01298();
  if (v1[40] != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (v1[41] != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (v1[42] != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (v1[43] != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CC969C(uint64_t (*a1)(_BYTE *))
{
  sub_1C441EC18(a1);
  a1(v3);
  return sub_1C4F02B68();
}

void sub_1C4CC96DC()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5DF8, &qword_1C4F68B80);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4440AD4();
  sub_1C4417F50(v0, v0[3]);
  sub_1C4CCB9AC();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C4440E44();
    sub_1C43FE664();
    sub_1C4F026C8();
    sub_1C4432D90(1);
    v9 = sub_1C4F02678();
    v11 = v10;
    v19 = v9;
    sub_1C4432D90(2);
    v12 = sub_1C4F02678();
    v14 = v13;
    v18 = v12;
    sub_1C4432D90(3);
    sub_1C4F02628();
    sub_1C4432D90(4);
    sub_1C4F02628();
    sub_1C4432D90(5);
    sub_1C4F02628();
    sub_1C440EE90(6);
    sub_1C43FE664();
    sub_1C4F02628();
    (*(v7 + 8))(v2, v5);
    LOBYTE(v20) = v22;
    *(&v20 + 1) = v19;
    *v21 = v11;
    *&v21[8] = v18;
    *&v21[16] = v14;
    v15 = sub_1C442254C();
    sub_1C47F5E6C(v15, v16);
    sub_1C440962C(v0);
    v17 = sub_1C44604A0();
    sub_1C47F5EC8(v17);
    *v4 = v20;
    v4[1] = *v21;
    *(v4 + 28) = *&v21[12];
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC9990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC90F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC99B8(uint64_t a1)
{
  v2 = sub_1C4CCB9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC99F4(uint64_t a1)
{
  v2 = sub_1C4CCB9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC9A30@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4CC96DC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[12];
    *(a1 + 28) = *&v5[12];
  }

  return result;
}

uint64_t sub_1C4CC9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1C4F02AF8();
  a4(v6);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CC9B20()
{
  result = qword_1EDDF9988;
  if (!qword_1EDDF9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9988);
  }

  return result;
}

unint64_t sub_1C4CC9BB4()
{
  result = qword_1EDDFF980;
  if (!qword_1EDDFF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF980);
  }

  return result;
}

unint64_t sub_1C4CC9C08()
{
  result = qword_1EDDF9998[0];
  if (!qword_1EDDF9998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9998);
  }

  return result;
}

unint64_t sub_1C4CC9C5C()
{
  result = qword_1EDDF9990;
  if (!qword_1EDDF9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9990);
  }

  return result;
}

unint64_t sub_1C4CC9CB4()
{
  result = qword_1EDDF9968;
  if (!qword_1EDDF9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9968);
  }

  return result;
}

unint64_t sub_1C4CC9D48()
{
  result = qword_1EDDFF978;
  if (!qword_1EDDFF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF978);
  }

  return result;
}

unint64_t sub_1C4CC9D9C()
{
  result = qword_1EDDF9978;
  if (!qword_1EDDF9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9978);
  }

  return result;
}

unint64_t sub_1C4CC9DF0()
{
  result = qword_1EDDF9970;
  if (!qword_1EDDF9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9970);
  }

  return result;
}

uint64_t sub_1C4CC9E44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[0] = a1;
  v38[1] = a2;
  sub_1C4415EA8();
  v8 = sub_1C4F02058();
  if (!v8[2])
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CE8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Predicate should not be empty", v14, 2u);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    return 0;
  }

  v37 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44342E0();
  if (a4)
  {
    sub_1C4A56CF4(v9, v10, a3, a4);
  }

  else
  {
    sub_1C4A559DC(v9, v10);
  }

  v15 = v8[2];
  if (v15 == 3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44342E0();
    v17 = v16;
    v19 = v18;
    sub_1C44585A0();
    sub_1C4A570F0(v17, v19, v20, v21);

    if (v8[2] >= 3uLL)
    {
      v22 = v8[12];
      v23 = v8[13];
      v24 = v8[14];
      v25 = v8[15];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v26 = MEMORY[0x1C693FEF0](v22, v23, v24, v25);
      v28 = v27;
      sub_1C44585A0();
      sub_1C4A56CF4(v26, v28, v29, v30);

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (v15 == 1)
    {

LABEL_15:

      return 1;
    }

    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_17;
    }
  }

  sub_1C44066DC(&qword_1EDDFECD0);
LABEL_17:
  v32 = sub_1C4F00978();
  sub_1C442B738(v32, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CE8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1C441D828(a1, v37, v38);
    _os_log_impl(&dword_1C43F8000, v33, v34, "Predicate %s is not in accepted format", v35, 0xCu);
    sub_1C440962C(v36);
    MEMORY[0x1C6942830](v36, -1, -1);
    MEMORY[0x1C6942830](v35, -1, -1);
  }

  return 0;
}

uint64_t sub_1C4CCA208(char a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v15 = sub_1C4424B10(a1);
  v17 = v16;
  v19 = v15 == sub_1C4424B10(a5) && v17 == v18;
  if (v19)
  {
  }

  else
  {
    v20 = sub_1C4F02938();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 != a6 || a3 != a7)
  {
    sub_1C43FE5F8();
    if ((sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  if (a4 == 2)
  {
    if (a8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v19 || ((a8 ^ a4) & 1) != 0)
    {
      return result;
    }
  }

  if ((a4 & 0xFF00) == 0x200)
  {
    if (BYTE1(a8) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a8) == 2 || ((((a4 & 0x100) == 0) ^ (a8 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a4 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a8) != 2)
    {
      return 0;
    }

LABEL_28:
    v23 = HIBYTE(a8);
    if (HIBYTE(a4) == 2)
    {
      if (v23 != 2)
      {
        return 0;
      }
    }

    else if (v23 == 2 || ((v23 ^ HIBYTE(a4)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (BYTE2(a8) != 2 && ((((a4 & 0x10000) == 0) ^ HIWORD(a8)) & 1) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1C4CCA3C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4CCA5C0(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6465726975716572;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x56646C6975626572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CCA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C43FE96C();
  v24 = v23;
  v26 = v25;
  v29 = sub_1C456902C(v27, v28);
  sub_1C43FCDF8();
  v31 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4402A68();
  sub_1C4409678(v26, v26[3]);
  v24();
  sub_1C4F02BF8();
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C4F027E8();
  if (!v21)
  {
    sub_1C441B5AC();
    sub_1C4402150();
    sub_1C4F02798();
    sub_1C44620C4();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C442ACF8();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C44168E4();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
  }

  (*(v31 + 8))(v22, v29);
  sub_1C43FBC80();
}

uint64_t sub_1C4CCA868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_1C4424B10(a2);
  sub_1C4F01298();

  sub_1C441476C();
  if (a5 != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a5 & 0xFF00) != 0x200)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a5 & 0xFF0000) != 0x20000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (HIBYTE(a5) != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CCA960(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  sub_1C441EC18(a1);
  sub_1C4CCA868(v9, v7, a2, a3, a4);
  return sub_1C4F02B68();
}

void sub_1C4CCA9C0()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(v5, v6);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4409678(v4, v4[3]);
  v2();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v4);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C440BCD8();
    sub_1C4F026C8();
    sub_1C441B5AC();
    sub_1C4425554();
    sub_1C4F02678();
    sub_1C44620C4();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    v8 = sub_1C4408A58();
    v9(v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v4);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C4CCAC5C(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C4CCACA8(char a1)
{
  result = 0x6D726F6674616C70;
  switch(a1)
  {
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4CCAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CCADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CCA3C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CCAE14(uint64_t a1)
{
  v2 = sub_1C4CCB5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CCAE50(uint64_t a1)
{
  v2 = sub_1C4CCB5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CCAED0(uint64_t a1@<X8>)
{
  sub_1C4CCA9C0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1C4CCAF88()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1C4F02AF8();
  sub_1C4CCA868(v6, v4, v1, v2, v3);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CCB024()
{
  result = qword_1EDDEC210;
  if (!qword_1EDDEC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC210);
  }

  return result;
}

unint64_t sub_1C4CCB0B8()
{
  result = qword_1EDDFF970;
  if (!qword_1EDDFF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF970);
  }

  return result;
}

unint64_t sub_1C4CCB10C()
{
  result = qword_1EDDEC220;
  if (!qword_1EDDEC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC220);
  }

  return result;
}

unint64_t sub_1C4CCB160()
{
  result = qword_1EDDEC218;
  if (!qword_1EDDEC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC218);
  }

  return result;
}

unint64_t sub_1C4CCB1E8()
{
  result = qword_1EDDF95C8;
  if (!qword_1EDDF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95C8);
  }

  return result;
}

unint64_t sub_1C4CCB240()
{
  result = qword_1EDDF9EF0;
  if (!qword_1EDDF9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EF0);
  }

  return result;
}

uint64_t sub_1C4CCB2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4CCB328()
{
  result = qword_1EDDFF990;
  if (!qword_1EDDFF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF990);
  }

  return result;
}

unint64_t sub_1C4CCB37C()
{
  result = qword_1EDDF9F00;
  if (!qword_1EDDF9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F00);
  }

  return result;
}

unint64_t sub_1C4CCB3D0()
{
  result = qword_1EDDF9EF8;
  if (!qword_1EDDF9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EF8);
  }

  return result;
}

unint64_t sub_1C4CCB448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CCAC5C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4CCB478()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CCACA8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1C4CCB550()
{
  result = qword_1EDDFC848;
  if (!qword_1EDDFC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC848);
  }

  return result;
}

unint64_t sub_1C4CCB5A4()
{
  result = qword_1EDDFC3F0;
  if (!qword_1EDDFC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3F0);
  }

  return result;
}

unint64_t sub_1C4CCB5F8()
{
  result = qword_1EDDFC428;
  if (!qword_1EDDFC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC428);
  }

  return result;
}

unint64_t sub_1C4CCB64C()
{
  result = qword_1EDDFCEA8;
  if (!qword_1EDDFCEA8)
  {
    sub_1C4572308(&qword_1EC0C5DE0, &qword_1C4F68B68);
    sub_1C4CCB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEA8);
  }

  return result;
}

unint64_t sub_1C4CCB6D0()
{
  result = qword_1EDDFC448;
  if (!qword_1EDDFC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC448);
  }

  return result;
}

unint64_t sub_1C4CCB724()
{
  result = qword_1EDDFA598;
  if (!qword_1EDDFA598)
  {
    sub_1C4572308(&qword_1EC0C5DE8, &qword_1C4F68B70);
    sub_1C4CCB7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA598);
  }

  return result;
}

unint64_t sub_1C4CCB7A8()
{
  result = qword_1EDDFC408;
  if (!qword_1EDDFC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC408);
  }

  return result;
}

unint64_t sub_1C4CCB7FC()
{
  result = qword_1EDDDBB80;
  if (!qword_1EDDDBB80)
  {
    sub_1C4572308(&qword_1EC0C5DE0, &qword_1C4F68B68);
    sub_1C4CCB880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB80);
  }

  return result;
}

unint64_t sub_1C4CCB880()
{
  result = qword_1EDDEC490;
  if (!qword_1EDDEC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC490);
  }

  return result;
}

unint64_t sub_1C4CCB8D4()
{
  result = qword_1EDDDBD00;
  if (!qword_1EDDDBD00)
  {
    sub_1C4572308(&qword_1EC0C5DE8, &qword_1C4F68B70);
    sub_1C4CCB958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD00);
  }

  return result;
}

unint64_t sub_1C4CCB958()
{
  result = qword_1EDDEC488;
  if (!qword_1EDDEC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC488);
  }

  return result;
}

unint64_t sub_1C4CCB9AC()
{
  result = qword_1EDDFC438;
  if (!qword_1EDDFC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC438);
  }

  return result;
}

unint64_t sub_1C4CCBA00()
{
  result = qword_1EDDFE320;
  if (!qword_1EDDFE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE320);
  }

  return result;
}

unint64_t sub_1C4CCBA54()
{
  result = qword_1EDDFE718;
  if (!qword_1EDDFE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE718);
  }

  return result;
}

unint64_t sub_1C4CCBAA8()
{
  result = qword_1EDDFC670;
  if (!qword_1EDDFC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC670);
  }

  return result;
}

unint64_t sub_1C4CCBAFC()
{
  result = qword_1EDDFA5A8;
  if (!qword_1EDDFA5A8)
  {
    sub_1C4572308(&qword_1EC0C5E40, &qword_1C4F68BD0);
    sub_1C4CCBB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5A8);
  }

  return result;
}

unint64_t sub_1C4CCBB80()
{
  result = qword_1EDDFC850;
  if (!qword_1EDDFC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC850);
  }

  return result;
}

unint64_t sub_1C4CCBBD4()
{
  result = qword_1EDDDBD30;
  if (!qword_1EDDDBD30)
  {
    sub_1C4572308(&qword_1EC0C5E40, &qword_1C4F68BD0);
    sub_1C4CCBC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD30);
  }

  return result;
}

unint64_t sub_1C4CCBC58()
{
  result = qword_1EDDED058[0];
  if (!qword_1EDDED058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED058);
  }

  return result;
}

unint64_t sub_1C4CCBCAC()
{
  result = qword_1EDDFEA90;
  if (!qword_1EDDFEA90)
  {
    sub_1C4572308(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CC9D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA90);
  }

  return result;
}

unint64_t sub_1C4CCBD30()
{
  result = qword_1EDDFEA80;
  if (!qword_1EDDFEA80)
  {
    sub_1C4572308(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CC8120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA80);
  }

  return result;
}

unint64_t sub_1C4CCBDB4()
{
  result = qword_1EDDFEAA0;
  if (!qword_1EDDFEAA0)
  {
    sub_1C4572308(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CC2274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAA0);
  }

  return result;
}

unint64_t sub_1C4CCBE38()
{
  result = qword_1EDDFEAA8;
  if (!qword_1EDDFEAA8)
  {
    sub_1C4572308(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CC7F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAA8);
  }

  return result;
}

unint64_t sub_1C4CCBEBC()
{
  result = qword_1EDDFCEE0;
  if (!qword_1EDDFCEE0)
  {
    sub_1C4572308(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCB328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEE0);
  }

  return result;
}

unint64_t sub_1C4CCBF40()
{
  result = qword_1EDDFEA98;
  if (!qword_1EDDFEA98)
  {
    sub_1C4572308(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CC9BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA98);
  }

  return result;
}

unint64_t sub_1C4CCBFC4()
{
  result = qword_1EDDFEA88;
  if (!qword_1EDDFEA88)
  {
    sub_1C4572308(&qword_1EC0C5E88, &qword_1C4F68C18);
    sub_1C4CCB0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA88);
  }

  return result;
}

unint64_t sub_1C4CCC048()
{
  result = qword_1EDDDBD08;
  if (!qword_1EDDDBD08)
  {
    sub_1C4572308(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CC9D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD08);
  }

  return result;
}

unint64_t sub_1C4CCC0CC()
{
  result = qword_1EDDDBCF0;
  if (!qword_1EDDDBCF0)
  {
    sub_1C4572308(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CC8174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBCF0);
  }

  return result;
}

unint64_t sub_1C4CCC150()
{
  result = qword_1EDDDBD20;
  if (!qword_1EDDDBD20)
  {
    sub_1C4572308(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CC73D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD20);
  }

  return result;
}

unint64_t sub_1C4CCC1D4()
{
  result = qword_1EDDDBD38;
  if (!qword_1EDDDBD38)
  {
    sub_1C4572308(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CC7FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD38);
  }

  return result;
}

unint64_t sub_1C4CCC258()
{
  result = qword_1EDDDBD28;
  if (!qword_1EDDDBD28)
  {
    sub_1C4572308(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCB37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD28);
  }

  return result;
}

unint64_t sub_1C4CCC2DC()
{
  result = qword_1EDDDBD10;
  if (!qword_1EDDDBD10)
  {
    sub_1C4572308(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CC9C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD10);
  }

  return result;
}

unint64_t sub_1C4CCC360()
{
  result = qword_1EDDDBCF8;
  if (!qword_1EDDDBCF8)
  {
    sub_1C4572308(&qword_1EC0C5E88, &qword_1C4F68C18);
    sub_1C4CCB10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBCF8);
  }

  return result;
}

unint64_t sub_1C4CCC3E4()
{
  result = qword_1EC0C5E98;
  if (!qword_1EC0C5E98)
  {
    type metadata accessor for BMDevicePlatform(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5E98);
  }

  return result;
}

_BYTE *_s14FeaturesFilterV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20KeyValueSourceConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4CCC644(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          result = sub_1C4423610(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CCC720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CCC774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_1C4CCC7E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4CCC8B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CCC9A0()
{
  result = qword_1EC0C5EA0;
  if (!qword_1EC0C5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EA0);
  }

  return result;
}

unint64_t sub_1C4CCC9F8()
{
  result = qword_1EC0C5EA8;
  if (!qword_1EC0C5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EA8);
  }

  return result;
}

uint64_t sub_1C4CCCA7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4CCCAD4()
{
  result = qword_1EDDFC458[0];
  if (!qword_1EDDFC458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC458);
  }

  return result;
}

unint64_t sub_1C4CCCB2C()
{
  result = qword_1EC0C5EC0;
  if (!qword_1EC0C5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EC0);
  }

  return result;
}

unint64_t sub_1C4CCCB84()
{
  result = qword_1EC0C5EC8;
  if (!qword_1EC0C5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EC8);
  }

  return result;
}

unint64_t sub_1C4CCCBDC()
{
  result = qword_1EC0C5ED0;
  if (!qword_1EC0C5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5ED0);
  }

  return result;
}

unint64_t sub_1C4CCCC34()
{
  result = qword_1EC0C5ED8;
  if (!qword_1EC0C5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5ED8);
  }

  return result;
}

unint64_t sub_1C4CCCC8C()
{
  result = qword_1EC0C5EE0;
  if (!qword_1EC0C5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EE0);
  }

  return result;
}

unint64_t sub_1C4CCCCE4()
{
  result = qword_1EC0C5EE8;
  if (!qword_1EC0C5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EE8);
  }

  return result;
}

unint64_t sub_1C4CCCD3C()
{
  result = qword_1EC0C5EF0;
  if (!qword_1EC0C5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EF0);
  }

  return result;
}

unint64_t sub_1C4CCCD94()
{
  result = qword_1EC0C5EF8;
  if (!qword_1EC0C5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EF8);
  }

  return result;
}

unint64_t sub_1C4CCCDEC()
{
  result = qword_1EC0C5F00;
  if (!qword_1EC0C5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F00);
  }

  return result;
}

unint64_t sub_1C4CCCE44()
{
  result = qword_1EC0C5F08;
  if (!qword_1EC0C5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F08);
  }

  return result;
}

unint64_t sub_1C4CCCE9C()
{
  result = qword_1EDDFF940;
  if (!qword_1EDDFF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF940);
  }

  return result;
}

unint64_t sub_1C4CCCEF4()
{
  result = qword_1EDDFF948;
  if (!qword_1EDDFF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF948);
  }

  return result;
}

unint64_t sub_1C4CCCF4C()
{
  result = qword_1EDDFE5E8;
  if (!qword_1EDDFE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE5E8);
  }

  return result;
}

unint64_t sub_1C4CCCFA4()
{
  result = qword_1EDDFE5F0;
  if (!qword_1EDDFE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE5F0);
  }

  return result;
}

unint64_t sub_1C4CCCFFC()
{
  result = qword_1EDDFC660;
  if (!qword_1EDDFC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC660);
  }

  return result;
}

unint64_t sub_1C4CCD054()
{
  result = qword_1EDDFC668;
  if (!qword_1EDDFC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC668);
  }

  return result;
}

unint64_t sub_1C4CCD0AC()
{
  result = qword_1EDDFE708;
  if (!qword_1EDDFE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE708);
  }

  return result;
}

unint64_t sub_1C4CCD104()
{
  result = qword_1EDDFE710;
  if (!qword_1EDDFE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE710);
  }

  return result;
}

unint64_t sub_1C4CCD15C()
{
  result = qword_1EDDFE310;
  if (!qword_1EDDFE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE310);
  }

  return result;
}

unint64_t sub_1C4CCD1B4()
{
  result = qword_1EDDFE318;
  if (!qword_1EDDFE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE318);
  }

  return result;
}

unint64_t sub_1C4CCD20C()
{
  result = qword_1EDDFE360;
  if (!qword_1EDDFE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE360);
  }

  return result;
}

unint64_t sub_1C4CCD264()
{
  result = qword_1EDDFC430;
  if (!qword_1EDDFC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC430);
  }

  return result;
}

unint64_t sub_1C4CCD2BC()
{
  result = qword_1EDDFE350;
  if (!qword_1EDDFE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE350);
  }

  return result;
}

unint64_t sub_1C4CCD314()
{
  result = qword_1EDDFE358;
  if (!qword_1EDDFE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE358);
  }

  return result;
}

unint64_t sub_1C4CCD36C()
{
  result = qword_1EDDFC3E0;
  if (!qword_1EDDFC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3E0);
  }

  return result;
}

unint64_t sub_1C4CCD3C4()
{
  result = qword_1EDDFC3E8;
  if (!qword_1EDDFC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3E8);
  }

  return result;
}

unint64_t sub_1C4CCD41C()
{
  result = qword_1EDDFE640;
  if (!qword_1EDDFE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE640);
  }

  return result;
}

unint64_t sub_1C4CCD474()
{
  result = qword_1EDDFE648[0];
  if (!qword_1EDDFE648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE648);
  }

  return result;
}

unint64_t sub_1C4CCD4C8()
{
  result = qword_1EDDFC450;
  if (!qword_1EDDFC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC450);
  }

  return result;
}

unint64_t sub_1C4CCD51C()
{
  result = qword_1EDDFC420;
  if (!qword_1EDDFC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC420);
  }

  return result;
}

unint64_t sub_1C4CCD570()
{
  result = qword_1EDDFC858;
  if (!qword_1EDDFC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC858);
  }

  return result;
}

_BYTE *sub_1C4CCD5C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          result = sub_1C4423610(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CCD694()
{
  result = qword_1EC0C5F20;
  if (!qword_1EC0C5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F20);
  }

  return result;
}

unint64_t sub_1C4CCD6EC()
{
  result = qword_1EDDFC410;
  if (!qword_1EDDFC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC410);
  }

  return result;
}

unint64_t sub_1C4CCD744()
{
  result = qword_1EDDFC418;
  if (!qword_1EDDFC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC418);
  }

  return result;
}

void sub_1C4CCD7DC()
{
  v1 = v0;
  v2 = 0xED00006465726975;
  *(v1 + 34) = 2;
  sub_1C4441C50(*(v1 + 33));
  if (v4 == 0x7165527261656C63 && v3 == 0xED00006465726975)
  {

    goto LABEL_8;
  }

  v2 = sub_1C4F02938();

  if (v2)
  {
LABEL_8:
    *(v1 + 33) = 4;
  }

  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *(v1 + 144) = xmmword_1C4F29230;
  sub_1C441DFEC(v6, v7);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v8 = sub_1C4F00978();
  sub_1C4417A74(v8, qword_1EDE2DF70);
  v28 = sub_1C4F00968();
  sub_1C4F01CF8();
  v9 = sub_1C43FF844();
  if (sub_1C4409310(v9, v10, v11, v12, v13, v14, v15, v16, v28))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v19 = sub_1C43FE144(4.8151e-34, v17, v18);
    *(v2 + 14) = sub_1C44080CC(v19, v20, v21);
    sub_1C4420830(&dword_1C43F8000, v22, v23, "ViewUpdate: %s: %s: Cleared", v24, v25, v26, v27, v29);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

void sub_1C4CCD940()
{
  v1 = v0;
  *(v0 + 34) = 3;
  sub_1C4441C50(*(v0 + 33));
  v3 = v2;
  if (v4 == 0xD000000000000010 && 0x80000001C4F87C20 == v2)
  {

    goto LABEL_8;
  }

  v6 = sub_1C4F02938();

  if (v6)
  {
LABEL_8:
    *(v1 + 33) = 4;
  }

  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *(v1 + 144) = xmmword_1C4F29230;
  sub_1C441DFEC(v7, v8);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v9 = sub_1C4F00978();
  sub_1C4417A74(v9, qword_1EDE2DF70);
  v29 = sub_1C4F00968();
  sub_1C4F01CF8();
  v10 = sub_1C43FF844();
  if (sub_1C4409310(v10, v11, v12, v13, v14, v15, v16, v17, v29))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v20 = sub_1C43FE144(4.8151e-34, v18, v19);
    *(v3 + 14) = sub_1C44080CC(v20, v21, v22);
    sub_1C4420830(&dword_1C43F8000, v23, v24, "ViewUpdate: %s: %s: Truncated", v25, v26, v27, v28, v30);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

void sub_1C4CCDA9C(uint64_t a1, unint64_t a2)
{
  *(v2 + 33) = 1284;
  sub_1C44261E0(a1, a2);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v3 = sub_1C4F00978();
  sub_1C4417A74(v3, qword_1EDE2DF70);
  v23 = sub_1C4F00968();
  sub_1C4F01CF8();
  v4 = sub_1C43FF844();
  if (sub_1C4409310(v4, v5, v6, v7, v8, v9, v10, v11, v23))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v14 = sub_1C43FE144(4.8151e-34, v12, v13);
    *(v2 + 14) = sub_1C44080CC(v14, v15, v16);
    sub_1C4420830(&dword_1C43F8000, v17, v18, "ViewUpdate: %s: %s: Finished update", v19, v20, v21, v22, v24);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C4CCDB80(uint64_t a1, unint64_t a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
    {
      return result;
    }
  }

  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }

LABEL_16:
    v5 = sub_1C4424B10(SBYTE3(a1));
    v7 = v6;
    if (v5 == sub_1C4424B10(SBYTE3(a2)) && v7 == v8)
    {
    }

    else
    {
      v10 = sub_1C4F02938();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    if ((a1 & 0xFF00000000) == 0x200000000)
    {
      if (BYTE4(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE4(a2) == 2 || ((((a1 & 0x100000000) == 0) ^ HIDWORD(a2)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (BYTE2(a2) != 2 && ((((a1 & 0x10000) == 0) ^ (a2 >> 16)) & 1) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1C4CCDD14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C4CCDECC(char a1)
{
  result = 0x56646C6975626572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x6465726975716572;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4CCDF88(void *a1, int a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_1C456902C(&qword_1EC0C5F60, &qword_1C4F69CD0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4CCEC50();
  sub_1C4F02BF8();
  v12[15] = 0;
  sub_1C440D3E4();
  sub_1C4F02748();
  if (!v2)
  {
    v12[14] = 1;
    sub_1C440D3E4();
    sub_1C4F02748();
    v12[13] = 2;
    sub_1C440D3E4();
    sub_1C4F02748();
    v12[12] = v3;
    v12[11] = 3;
    sub_1C44644B0();
    sub_1C440D3E4();
    sub_1C4F027E8();
    v12[10] = 4;
    sub_1C440D3E4();
    sub_1C4F02748();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4CCE148(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a2 & 0xFF00) != 0x200)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a2 & 0xFF0000) != 0x20000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  sub_1C4424B10(SBYTE3(a2));
  sub_1C4F01298();

  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CCE234(uint64_t a1)
{
  sub_1C4F02AF8();
  sub_1C4CCE148(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CCE27C(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C5F50, &qword_1C4F69CC8);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1C4409678(a1, a1[3]);
  sub_1C4CCEC50();
  sub_1C4F02BC8();
  if (v1)
  {
    return sub_1C440962C(a1);
  }

  v19 = 0;
  v9 = sub_1C4403AB0(&v19);
  v18 = 1;
  v10 = sub_1C4403AB0(&v18);
  v17 = 2;
  v11 = sub_1C4403AB0(&v17);
  v16[1] = 3;
  sub_1C441D9A4();
  sub_1C4F026C8();
  v15 = v16[2];
  v16[0] = 4;
  v12 = sub_1C4403AB0(v16);
  (*(v5 + 8))(v8, v3);
  sub_1C440962C(a1);
  return (v15 << 24) | (v12 << 32) | (v11 << 16) | (v10 << 8) | v9;
}

uint64_t sub_1C4CCE49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CCDD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CCE4C4(uint64_t a1)
{
  v2 = sub_1C4CCEC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CCE500(uint64_t a1)
{
  v2 = sub_1C4CCEC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4CCE53C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4CCE27C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_1C4CCE5CC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4F02AF8();
  sub_1C4CCE148(v4, v1 | (v2 << 8));
  return sub_1C4F02B68();
}

uint64_t sub_1C4CCE630()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FC3FC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  v3 = MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1C43FF824(v3, v4, &_s21ViewUpdateSourceStateON, v5, v6, v7, v8, v9, v19, *v21, *&v21[4], v21[6], *(v0 + 33), 0);
  v10 = MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_1C43FF824(v10, v11, &_s24ViewUpdateSourceResponseON, v12, v13, v14, v15, v16, v20, v22, v23, v24, *(v0 + 34), v25);
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v17 = sub_1C444F05C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  MEMORY[0x1C6940010](v17);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v26;
}

void sub_1C4CCE7B8()
{
  *(v0 + 33) = 1027;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v1 = sub_1C4F00978();
  sub_1C4417A74(v1, qword_1EDE2DF70);
  v21 = sub_1C4F00968();
  sub_1C4F01CF8();
  v2 = sub_1C43FF844();
  if (sub_1C4409310(v2, v3, v4, v5, v6, v7, v8, v9, v21))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v12 = sub_1C43FE144(4.8151e-34, v10, v11);
    *(v0 + 14) = sub_1C44080CC(v12, v13, v14);
    sub_1C4420830(&dword_1C43F8000, v15, v16, "ViewUpdate: %s: %s: Partially updated", v17, v18, v19, v20, v22);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C4CCE898()
{
  v0 = sub_1C43FBC98();
  sub_1C4431E64(v0, v1);
  return sub_1C43FBC98();
}

unint64_t sub_1C4CCE9F4()
{
  result = qword_1EC0C5F28;
  if (!qword_1EC0C5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F28);
  }

  return result;
}

unint64_t sub_1C4CCEA48(uint64_t a1)
{
  result = sub_1C4CCEA70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CCEA70()
{
  result = qword_1EDDFC680;
  if (!qword_1EDDFC680)
  {
    _s13ControlSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC680);
  }

  return result;
}

unint64_t sub_1C4CCEAC4(void *a1)
{
  a1[1] = sub_1C4CCEAFC();
  a1[2] = sub_1C4CCEB50();
  result = sub_1C4CCEBA4();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4CCEAFC()
{
  result = qword_1EC0C5F30;
  if (!qword_1EC0C5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F30);
  }

  return result;
}

unint64_t sub_1C4CCEB50()
{
  result = qword_1EC0C5F38;
  if (!qword_1EC0C5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F38);
  }

  return result;
}

unint64_t sub_1C4CCEBA4()
{
  result = qword_1EC0C5F40;
  if (!qword_1EC0C5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F40);
  }

  return result;
}

unint64_t sub_1C4CCEBFC()
{
  result = qword_1EC0C5F48;
  if (!qword_1EC0C5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F48);
  }

  return result;
}

unint64_t sub_1C4CCEC50()
{
  result = qword_1EC0C5F58;
  if (!qword_1EC0C5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F58);
  }

  return result;
}

_BYTE *_s19ControlSourceConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s19ControlSourceConfigVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[5])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s19ControlSourceConfigVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1C4CCEE30()
{
  result = qword_1EC0C5F68;
  if (!qword_1EC0C5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F68);
  }

  return result;
}

unint64_t sub_1C4CCEE88()
{
  result = qword_1EC0C5F70;
  if (!qword_1EC0C5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F70);
  }

  return result;
}

unint64_t sub_1C4CCEEE0()
{
  result = qword_1EC0C5F78;
  if (!qword_1EC0C5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F78);
  }

  return result;
}

void sub_1C4CCEF34(uint64_t a1, char a2)
{
  v4 = v3;
  sub_1C44067F0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CD0];
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  sub_1C44067F0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v34 = v2;
  if (!a1)
  {
    swift_beginAccess();
    v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C482FCC4(v23);
LABEL_10:
    v24 = 0;
    v25 = *(v12 + 16);
    for (i = (v12 + 40); ; i += 2)
    {
      if (v25 == v24)
      {

        swift_beginAccess();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        return;
      }

      if (v24 >= *(v12 + 16))
      {
        break;
      }

      v28 = *(i - 1);
      v27 = *i;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CCF60C(v28, v27, v34, v8, v6, a2 & 1, v10);
      if (v4)
      {

        goto LABEL_18;
      }

      ++v24;
    }

    __break(1u);
    return;
  }

  v29 = v6;
  v30 = v8;
  v31 = v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
LABEL_8:
    v8 = v30;
    v10 = v31;
    v6 = v29;
    goto LABEL_10;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, v11, 0);
  v12 = v33;
  v13 = (a1 + 40);
  while (1)
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4CCF4D0(v14, v15);
    if (v4)
    {
      break;
    }

    v17 = v16;

    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v21 = *(v33 + 16);
    v20 = *(v33 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1C44CD9C0(v20 > 1, v21 + 1, 1);
    }

    *(v33 + 16) = v21 + 1;
    v22 = v33 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    v13 += 2;
    if (!--v11)
    {
      goto LABEL_8;
    }
  }

LABEL_18:
}

uint64_t sub_1C4CCF350()
{

  return v0;
}

uint64_t sub_1C4CCF380()
{
  sub_1C4CCF350();

  return swift_deallocClassInstance();
}

void *sub_1C4CCF3D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = sub_1C466324C();
  swift_endAccess();
  if (!v5)
  {
    _s7DAGNodeCMa();
    v5 = swift_allocObject();
    v5[2] = a1;
    v5[3] = a2;
    v6 = MEMORY[0x1E69E7CD0];
    v5[4] = MEMORY[0x1E69E7CD0];
    v5[5] = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 16);
  sub_1C4662BE4(v5, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v9;
  swift_endAccess();
  return v5;
}

uint64_t sub_1C4CCF4D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1C445FAA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C4F02248();

    strcpy(v12, "Expected node ");
    HIBYTE(v12[1]) = -18;
    MEMORY[0x1C6940010](a1, a2);
    MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FC4090);
    v8 = v12[0];
    v9 = v12[1];
    sub_1C4CCFA58();
    swift_allocError();
    *v10 = v12[0];
    *(v10 + 8) = v9;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1C4CCF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(a3 + 16);
  if (!*(v16 + 16))
  {
    return swift_endAccess();
  }

  v17 = sub_1C445FAA8(a1, a2);
  if ((v18 & 1) == 0)
  {
    return swift_endAccess();
  }

  v72 = a5;
  v19 = *(*(v16 + 56) + 8 * v17);
  swift_endAccess();
  swift_beginAccess();
  v55 = a4;
  v20 = *(a4 + 16);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = sub_1C4499AD0(a1, a2, v20);

  if (v21)
  {
  }

  swift_beginAccess();
  v23 = *(v72 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4499AD0(a1, a2, v23);

  if (v24)
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000003CLL, 0x80000001C4FC40B0);
    MEMORY[0x1C6940010](a1, a2);
    sub_1C4CCFA58();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0xE000000000000000;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44869B4(&v57, a1, a2, v26, v27, v28, v29, v30, v50, v52, v19, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  swift_endAccess();

  if ((a6 & 1) == 0)
  {
LABEL_22:
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(&v60, a1, a2, v44, v45, v46, v47, v48, v51, v53, v54, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    swift_endAccess();

    v49 = swift_beginAccess();
    MEMORY[0x1C6940330](v49);
    sub_1C4427EF0();
    sub_1C4F01748();
    return swift_endAccess();
  }

  v51 = a7;
  swift_beginAccess();
  v31 = *(v54 + 32);
  v34 = *(v31 + 56);
  v33 = v31 + 56;
  v32 = v34;
  v35 = 1 << *(*(v54 + 32) + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v53 = *(v54 + 32);
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  if (v37)
  {
    while (1)
    {
      v40 = v39;
LABEL_17:
      v41 = (*(v53 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v37)))));
      v42 = *v41;
      v43 = v41[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CCF60C(v42, v43, a3, v56, v72, 1, v51);
      if (v8)
      {
        break;
      }

      v37 &= v37 - 1;

      v39 = v40;
      if (!v37)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        goto LABEL_22;
      }

      v37 = *(v33 + 8 * v40);
      ++v39;
      if (v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CCFA04()
{

  sub_1C44067F0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CCFA58()
{
  result = qword_1EC0C5F80;
  if (!qword_1EC0C5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F80);
  }

  return result;
}

void static ViewUpdate.GenerationRunnerSingleton.deinitInstance(for:)(uint64_t a1)
{
  v1 = a1;
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v2 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v3 - 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1C4CD1C64((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C4CCFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1C4F018C8();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CCFC20, 0, 0);
}

uint64_t sub_1C4CCFC20()
{
  sub_1C4404D98();
  sub_1C456902C(&qword_1EC0C6058, &qword_1C4F6A1B0);
  inited = swift_initStackObject();
  sub_1C441B5B8(inited);
  v2 = swift_task_alloc();
  sub_1C4450888(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
  *v12 = v0;
  v12[1] = sub_1C4CCFD44;
  sub_1C4460B6C();

  return MEMORY[0x1EEE6DE18](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1C4CCFD44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CCFE44()
{
  sub_1C43FCF70();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  swift_setDeallocating();

  (*(v3 + 8))(v1, v2);
  v4 = v0[7];

  sub_1C43FBCF0();

  return v5(v4);
}

uint64_t sub_1C4CCFEE0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C443EF88();

  (*(v2 + 8))(v0, v1);

  sub_1C43FBDA0();
  sub_1C4426C44();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4CCFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_1C4F018C8();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD0038, 0, 0);
}

uint64_t sub_1C4CD0038()
{
  sub_1C4404D98();
  sub_1C456902C(&qword_1EC0C6058, &qword_1C4F6A1B0);
  inited = swift_initStackObject();
  sub_1C441B5B8(inited);
  v2 = swift_task_alloc();
  sub_1C4450888(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_1C4CD0150;
  sub_1C4460B6C();

  return MEMORY[0x1EEE6DE18](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1C4CD0150()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4CD0250()
{
  sub_1C43FCF70();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  swift_setDeallocating();

  (*(v3 + 8))(v1, v2);

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4CD02E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4CD030C, 0, 0);
}

uint64_t sub_1C4CD030C()
{
  sub_1C43FCF70();
  v2 = swift_task_alloc();
  sub_1C4441608(v2);
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
  *v3 = v1;
  v3[1] = sub_1C4CD0400;
  sub_1C440C470();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD00000000000001FLL, v7, v8, v0, v9);
}

uint64_t sub_1C4CD0400()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FBCF0();

    return v10();
  }
}

uint64_t sub_1C4CD0520()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4CD057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CD05A8, 0, 0);
}

uint64_t sub_1C4CD05A8()
{
  sub_1C43FCF70();
  v2 = swift_task_alloc();
  sub_1C4441608(v2);
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = sub_1C4CD0694;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD00000000000001FLL, v7, v8, v0, v9);
}

uint64_t sub_1C4CD0694()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FBDA0();

    return v10();
  }
}

void sub_1C4CD07B0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v34 = a5;
  v35 = a4;
  v37 = sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v30 - v11;
  v13 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v40 = a1;
  os_unfair_lock_lock(a2 + 8);
  sub_1C4CD8B8C(&a2[4], &v45);
  v36 = a2;
  os_unfair_lock_unlock(a2 + 8);
  if ((v45 & 1) == 0)
  {
    v33 = 0;
    type metadata accessor for ViewGeneration.ViewTaskExecutor();
    v19 = swift_allocObject();
    v32 = v19;
    v20 = v35;
    *(v19 + 16) = a3;
    *(v19 + 24) = v20;
    v21 = sub_1C4F018C8();
    v31 = *(v21 - 8);
    (*(v31 + 16))(v18, v34, v21);
    sub_1C440BAA8(v18, 0, 1, v21);
    v22 = v37;
    (*(v10 + 16))(v12, a1, v37);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = swift_allocObject();
    v25 = v18;
    v26 = v39;
    *(v24 + 16) = v38;
    *(v24 + 24) = v26;
    (*(v10 + 32))(v24 + v23, v12, v22);
    sub_1C44316B0(v25, v15);
    LODWORD(v23) = sub_1C44157D4(v15, 1, v21);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v23 == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0BC660, &qword_1C4F29150);
    }

    else
    {
      sub_1C4F018B8();
      (*(v31 + 8))(v15, v21);
    }

    v27 = sub_1C4CD8A5C(&qword_1EDDF6C40, type metadata accessor for ViewGeneration.ViewTaskExecutor, &unk_1C4F6128C);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1C4F6A220;
    *(v28 + 24) = v24;
    v41 = 6;
    v42 = 0;
    v43 = v32;
    v44 = v27;
    swift_task_create();
    sub_1C4420C3C(v25, &qword_1EC0BC660, &qword_1C4F29150);
    v29 = v36;
    os_unfair_lock_lock(v36 + 8);
    sub_1C4CD8FF8(&v29[4]);
    os_unfair_lock_unlock(v29 + 8);
  }
}

void sub_1C4CD0BA4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v34 = a5;
  v35 = a4;
  v37 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v30 - v11;
  v13 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v40 = a1;
  os_unfair_lock_lock(a2 + 8);
  sub_1C4CD894C(&a2[4], &v45);
  v36 = a2;
  os_unfair_lock_unlock(a2 + 8);
  if ((v45 & 1) == 0)
  {
    v33 = 0;
    type metadata accessor for ViewGeneration.ViewTaskExecutor();
    v19 = swift_allocObject();
    v32 = v19;
    v20 = v35;
    *(v19 + 16) = a3;
    *(v19 + 24) = v20;
    v21 = sub_1C4F018C8();
    v31 = *(v21 - 8);
    (*(v31 + 16))(v18, v34, v21);
    sub_1C440BAA8(v18, 0, 1, v21);
    v22 = v37;
    (*(v10 + 16))(v12, a1, v37);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = swift_allocObject();
    v25 = v18;
    v26 = v39;
    *(v24 + 16) = v38;
    *(v24 + 24) = v26;
    (*(v10 + 32))(v24 + v23, v12, v22);
    sub_1C44316B0(v25, v15);
    LODWORD(v23) = sub_1C44157D4(v15, 1, v21);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v23 == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0BC660, &qword_1C4F29150);
    }

    else
    {
      sub_1C4F018B8();
      (*(v31 + 8))(v15, v21);
    }

    v27 = sub_1C4CD8A5C(&qword_1EDDF6C40, type metadata accessor for ViewGeneration.ViewTaskExecutor, &unk_1C4F6128C);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1C4F6A1D0;
    *(v28 + 24) = v24;
    v41 = 6;
    v42 = 0;
    v43 = v32;
    v44 = v27;
    swift_task_create();
    sub_1C4420C3C(v25, &qword_1EC0BC660, &qword_1C4F29150);
    v29 = v36;
    os_unfair_lock_lock(v36 + 8);
    sub_1C4CD8A40(&v29[4]);
    os_unfair_lock_unlock(v29 + 8);
  }
}