uint64_t sub_1C449ED64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C449EDC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EE28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EE88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449EEE8()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C449EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C449EFA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449F008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C449F070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C449F0D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F128()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C449F17C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F1D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F22C()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C449F280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C449F2E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C449F338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FCE50();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C449F390()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C449F450()
{

  return _s20KnowledgeGraphSourceCMa();
}

uint64_t sub_1C449F468()
{

  return swift_task_alloc();
}

uint64_t sub_1C449F4A0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

void sub_1C449F4C0()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
}

uint64_t sub_1C449F510()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C449F5F4()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 232) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C449F6F8()
{
  v22 = v0;
  (*(v0 + 200))(*(v0 + 48), *(v0 + 32), *(v0 + 16));
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  v3 = sub_1C4400B94(v2);
  v4 = *(v0 + 216);
  if (v3)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 16);
    v19 = *(v0 + 200);
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    sub_1C43FEC60();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315138;
    v19(v5, v6, v7);
    v4(v6, v7);
    v9 = sub_1C4F02858();
    v11 = v10;
    v4(v5, v7);
    v12 = sub_1C441D828(v9, v11, &v21);

    *(v8 + 4) = v12;
    sub_1C4404638(&dword_1C43F8000, v13, v14, "StageFinish %s");
    sub_1C440962C(v20);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v4(*(v0 + 48), *(v0 + 16));
  }

  sub_1C440A0CC();
  sub_1C4460410();
  v15 = sub_1C4402120();
  v16(v15);

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C449F920(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  LODWORD(v73) = a2;
  v65 = sub_1C4F00908();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C4F008B8();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C4F008F8();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Pipeline.StatusStore(0) - 8;
  MEMORY[0x1EEE9AC00](v72);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C4EFD548();
  v14 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Source(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a5 + 32))(&v78, a4, a5, v18);
  v80 = StageName.description.getter();
  v81 = v21;
  MEMORY[0x1C6940010](95, 0xE100000000000000);
  (*(a5 + 24))(a4, a5);
  v22 = *v20;
  v23 = v20[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EBE4(v20, type metadata accessor for Source);
  MEMORY[0x1C6940010](v22, v23);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  (*(a5 + 16))(a4, a5);
  v24 = sub_1C4EFD3D8();
  v26 = v25;
  (*(v14 + 8))(v16, v70);
  MEMORY[0x1C6940010](v24, v26);

  v27 = v80;
  v28 = v81;
  v29 = v71;
  (*(a5 + 40))(a4, a5);
  sub_1C44921D4();
  sub_1C447EBE4(v29, type metadata accessor for PhaseStores);
  v13[*(v72 + 28)] = v73;
  v30 = Pipeline.StatusStore.currentSessionId()();
  object = v30.value._object;
  sub_1C447EBE4(v13, type metadata accessor for Pipeline.StatusStore);
  if (v30.value._object)
  {
    countAndFlagsBits = v30.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (!v30.value._object)
  {
    object = 0xE000000000000000;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v28;
  v34 = swift_allocObject();
  *(v34 + 16) = countAndFlagsBits;
  *(v34 + 24) = object;
  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C44A05A4;
  *(v37 + 24) = v33;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C44A05D8;
  *(v40 + 24) = v34;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v35;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v36;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v37;
  v44 = v74;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v38;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v39;
  v45 = v76;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v40;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v41;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v42;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v46 = sub_1C4EFD5F8();
  v48 = v47;
  sub_1C4EFD608();
  v49 = sub_1C4F008D8();
  sub_1C4F00928();
  v50 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  LODWORD(v75) = v50;
  if ((v48 & 1) == 0)
  {
    v52 = v65;
    v53 = v64;
    v54 = v63;
    if (!v46)
    {
      __break(1u);
LABEL_10:

      (*(v68 + 8))(v44, v69);
      return (*(v66 + 8))(v45, v67);
    }

    goto LABEL_15;
  }

  v52 = v65;
  v53 = v64;
  v54 = v63;
  if (HIDWORD(v46))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v46 & 0xFFFFF800) == 0xD800)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v46 >> 16 > 0x10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = &v79;
LABEL_15:

  sub_1C4F00958();

  v55 = v44;
  if ((*(v53 + 88))(v54, v52) == *MEMORY[0x1E69E93E8])
  {
    v56 = 0;
    v57 = 0;
    v73 = "[Error] Interval already ended";
  }

  else
  {
    (*(v53 + 8))(v54, v52);
    v73 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v57 = 2;
    v56 = 3;
  }

  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v60 = 0;
  v78 = 0;
  v77 = v59;
  *v58 = v57;
  v58[1] = v56;
  v80 = (v58 + 2);
  while (v60 != 144)
  {
    v61 = *(inited + v60 + 32);

    v61(&v80, &v78, &v77);

    v60 += 16;
  }

  v62 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v49, v75, v62, v46, v73, v58, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v59, -1, -1);
  MEMORY[0x1C6942830](v58, -1, -1);

  (*(v68 + 8))(v55, v69);
  return (*(v66 + 8))(v76, v67);
}

uint64_t sub_1C44A037C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44A03C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t StageName.description.getter()
{
  v1 = 0xE800000000000000;
  v2 = *v0 - 6;
  result = sub_1C4432A10();
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = sub_1C44124F8();
      break;
    case 2:
      result = sub_1C44137B0();
      break;
    case 3:
      result = sub_1C43FDE60();
      break;
    case 4:
      result = sub_1C440E7B4();
      break;
    default:
      v5 = 0x676E696B636F6C62;
      switch(v4)
      {
        case 1:
          v1 = 0xEE006E6F69746172;
          v5 = sub_1C43FF604();
          break;
        case 2:
          v6 = 0x69686374616DLL;
          goto LABEL_11;
        case 3:
          v6 = 0x697075646564;
LABEL_11:
          v5 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v1 = 0xEA00000000006E6FLL;
          v5 = sub_1C4409050();
          break;
        case 5:
          v1 = 0xE700000000000000;
          v5 = sub_1C4411228();
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v5, v1);

      result = 0x2D676E696B6E696CLL;
      break;
  }

  return result;
}

uint64_t sub_1C44A05AC()
{
  sub_1C4404078();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C4402120();
}

char *sub_1C44A05DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0BD2E8, &unk_1C4F2DAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1C44A06D0()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 368) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C44A07D4()
{
  sub_1C4407B64();
  sub_1C447EBE4(v0, v1);
  sub_1C442ED08();

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C44A0864()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C44A0960()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_1C440962C((v0 + 56));
  switch(*(v3 + v2))
  {
    case 2:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      goto LABEL_4;
    default:
LABEL_4:
      v4 = sub_1C4F02938();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      type metadata accessor for PhaseStores(0);
      if (!sub_1C4876DF8())
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v25 = sub_1C4F00978();
        sub_1C442B738(v25, qword_1EDE2DE10);
        v26 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1C43F8000, v26, v27, "Delta source Ingestion resulted in zero entity triples, skipping", v28, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_34;
      }

LABEL_6:
      v5 = *(v0 + 160);
      v6 = *(v0 + 128);
      v7 = sub_1C442BE7C();
      sub_1C4491370(v7, type metadata accessor for Linker, type metadata accessor for Linker, sub_1C44A1310);
      if (!v5)
      {
        v22 = sub_1C440BECC();
        *(v0 + 168) = v22;
        *v22 = v0;
        sub_1C4402478(v22);
        sub_1C44507A0();

        __asm { BR              X1 }
      }

      *(v0 + 120) = v5;
      v8 = v5;
      v9 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (!sub_1C442F34C(v9, v10, v9, &type metadata for PhaseSignal))
      {

        sub_1C43FBDA0();
        goto LABEL_35;
      }

      if (!*(v0 + 200))
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v29 = sub_1C441BC3C();
        sub_1C43FF4EC(v29, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CD8();
        sub_1C44253BC();
        if (sub_1C443FF34())
        {
          sub_1C440FAA4();
          sub_1C440E550();
          sub_1C4415BD0();
          *v6 = 136315138;
          v30 = sub_1C4AD00FC();
          sub_1C4460374(v30, v31, v32, v33, v34, v35);
          sub_1C44160EC();
          *(v6 + 4) = v1;
          sub_1C4404638(&dword_1C43F8000, v36, v37, "%s caught unrecoverable error, phase was skipped");
          sub_1C440AEF4();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_33;
      }

      if (*(v0 + 200) == 1)
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v11 = sub_1C441BC3C();
        sub_1C43FF4EC(v11, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44253BC();
        if (!sub_1C443FF34())
        {
          goto LABEL_33;
        }

        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C4415BD0();
        *v6 = 136315138;
        v13 = sub_1C4AD00FC();
        sub_1C4460374(v13, v14, v15, v16, v17, v18);
        sub_1C44160EC();
        *(v6 + 4) = v1;
        v21 = "%s phase had no data to process";
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v38 = sub_1C441BC3C();
        sub_1C43FF4EC(v38, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44253BC();
        if (!sub_1C443FF34())
        {
          goto LABEL_33;
        }

        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C4415BD0();
        *v6 = 136315138;
        v39 = sub_1C4AD00FC();
        sub_1C4460374(v39, v40, v41, v42, v43, v44);
        sub_1C44160EC();
        *(v6 + 4) = v1;
        v21 = "%s source is disabled due to privacy setting";
      }

      sub_1C4404638(&dword_1C43F8000, v19, v20, v21);
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
LABEL_33:

      sub_1C4ACF7B8();
LABEL_34:

      sub_1C43FC1B0();
LABEL_35:
      sub_1C44507A0();

      __asm { BRAA            X1, X16 }

      return;
  }
}

uint64_t sub_1C44A0E44()
{
  sub_1C43FBCD4();
  *(v1 + 16) = v0;
  *(v1 + 192) = v2;
  v3 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v3);
  *(v1 + 24) = sub_1C43FE604();
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  v4 = sub_1C4F008B8();
  *(v1 + 48) = v4;
  sub_1C43FCF7C(v4);
  *(v1 + 56) = v5;
  *(v1 + 64) = sub_1C43FE604();
  *(v1 + 72) = swift_task_alloc();
  v6 = sub_1C4F008F8();
  *(v1 + 80) = v6;
  sub_1C43FCF7C(v6);
  *(v1 + 88) = v7;
  *(v1 + 96) = sub_1C43FE604();
  *(v1 + 104) = swift_task_alloc();
  v8 = sub_1C4F00978();
  *(v1 + 112) = v8;
  sub_1C43FCF7C(v8);
  *(v1 + 120) = v9;
  *(v1 + 128) = sub_1C43FE604();
  *(v1 + 136) = swift_task_alloc();
  v10 = sub_1C4EFD618();
  *(v1 + 144) = v10;
  sub_1C43FCF7C(v10);
  *(v1 + 152) = v11;
  *(v1 + 160) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C44A1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v31;
  a24 = v32;
  sub_1C44346B8();
  a22 = v25;
  sub_1C442244C();
  v33 = sub_1C442FCD8();
  v34(v33);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v35 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v36 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v37, v38, v36, "graphConstruction", "");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4405274();
  v39 = sub_1C4414A08();
  v40(v39);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C442BA8C();
  v41 = sub_1C4409FD4();
  v42(v41);
  sub_1C442ECA4("graphConstruction");
  v44 = *(v26 + 8);
  v43 = v26 + 8;
  v44(v28, v29);
  (*(v30 + 8))(v35, v27);
  (*(v24 + 8))(a12, a11);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v25[21] = sub_1C442B738(v25[14], qword_1EDE2DE10);
  sub_1C4400B7C();
  v45 = sub_1C43FBC98();
  sub_1C448CFCC(v45, v46, v47);
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CF8();
  v50 = sub_1C4400B94(v49);
  v51 = v25[5];
  if (v50)
  {
    v52 = v25[4];
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v43 = 136315138;
    sub_1C4400B7C();
    sub_1C448CFCC(v51, v52, v53);
    sub_1C43FC7A4();
    sub_1C447EAE0(v51, v54);
    sub_1C44A1310();
    sub_1C441AFF8();
    sub_1C441D828(v52, v29, &a13);
    sub_1C4441528();
    *(v43 + 4) = v52;
    sub_1C4404638(&dword_1C43F8000, v55, v56, "StageStart %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    sub_1C447EAE0(v25[5], type metadata accessor for Linker);
  }

  v57 = swift_task_alloc();
  v25[22] = v57;
  *v57 = v25;
  v57[1] = sub_1C44B67DC;
  sub_1C440405C();

  return Linker.execute()();
}

void sub_1C44A1310()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4433190();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4414930();
  sub_1C4440948();
  v5 = type metadata accessor for Linker(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA520, &unk_1C4F14250);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  MEMORY[0x1C6940010](0x2D676E696B6E696CLL, 0xEF6C6172656E6567);
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v8);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v9);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v10 = sub_1C441B798();
  v11(v10);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C44A14A0()
{

  sub_1C45D689C();
}

uint64_t sub_1C44A14E8()
{
  v2 = *(v0 - 320);

  return sub_1C440962C(v2);
}

uint64_t sub_1C44A150C()
{
}

void sub_1C44A152C(void *a1@<X8>)
{
  *a1 = *(v1 - 256);
  a1[1] = v2;
  v8 = (v4 + *(v5 + 40));
  *v8 = *(v6 - 144);
  v8[1] = v3;
  *(v4 + *(v5 + 44)) = v7;
}

void sub_1C44A156C()
{

  JUMPOUT(0x1C6942830);
}

uint64_t sub_1C44A15B0()
{
  v1 = *(v0 + 56);
  result = type metadata accessor for Linker(0);
  v3 = *(v1 + *(result + 24));
  *(v0 + 64) = v3;
  v4 = *(v3 + 16);
  *(v0 + 72) = v4;
  *(v0 + 80) = 0;
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_1C442E860(v3 + 32, v0 + 16);
      v5 = sub_1C4475C04();
      v6(v5);
      *(v0 + 105) = *(v0 + 104);
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v8 = sub_1C442A464(v7);

      return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1C43FBDA0();

    return v11();
  }

  return result;
}

uint64_t Blocker.pipelineType.getter()
{
  result = sub_1C445FBF0();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t Blocker.stores.getter()
{
  sub_1C445FBF0();
  sub_1C441D69C();
  return sub_1C4430900(v1 + v2, v0);
}

uint64_t sub_1C44A172C()
{
  v4 = v1 + *(v2 + 20);

  return sub_1C45AD734(v0, v4);
}

void sub_1C44A1748()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A1780()
{
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 1;

  return sub_1C4F02A08();
}

void sub_1C44A17C4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A17EC()
{
  v2 = *(v0 - 488);
  v3 = *(v0 - 496);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44A1838()
{

  return sub_1C4EFF028();
}

uint64_t sub_1C44A1870()
{

  return sub_1C4F02248();
}

unint64_t sub_1C44A1890()
{

  return sub_1C446D0DC();
}

uint64_t sub_1C44A18F0()
{
  result = type metadata accessor for LifeEventStructs.Place(0);
  *(v0 - 65) = 8;
  return result;
}

uint64_t Blocker.entityClass.getter()
{
  v2 = *(sub_1C445FBF0() + 20);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t Blocker.source.getter()
{
  sub_1C445FBF0();
  sub_1C441925C();
  return sub_1C4430900(v1 + v2, v0);
}

uint64_t Blocker.stageName.getter()
{
  result = sub_1C445FBF0();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1C44A1AC0()
{
  v3 = sub_1C44A1E40();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v6 = type metadata accessor for Blocker(0);
  sub_1C4471CA0(v6);
  v7 = sub_1C456902C(&qword_1EC0BA478, &qword_1C4F140D0);
  v8 = sub_1C4485A60(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v1 + 28));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v9);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v10);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 44)));
  return sub_1C43FE658();
}

uint64_t sub_1C44A1BE0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = *(v1 + a1);

  return StageName.description.getter();
}

void sub_1C44A1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 - 224) = v5;
  *(v6 - 276) = a5;
  *(v6 - 288) = a4;
}

uint64_t sub_1C44A1C38()
{
  v2 = *(v0 - 1152);
  v3 = *(v0 - 1160);

  return sub_1C44239FC(v2, v3);
}

void sub_1C44A1C70()
{

  JUMPOUT(0x1C693FEF0);
}

uint64_t sub_1C44A1D20()
{

  return sub_1C4EF9CD8();
}

void sub_1C44A1D40()
{

  sub_1C47E5B7C();
}

uint64_t sub_1C44A1D58()
{
  *(v2 - 192) = v1;

  return sub_1C4851984();
}

uint64_t sub_1C44A1D74()
{
  *(v0 - 70) = 5;

  return type metadata accessor for Source(0);
}

uint64_t sub_1C44A1D94()
{
}

uint64_t sub_1C44A1DB0(uint64_t a1)
{
  *(v1 - 352) = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44A1DD0(uint64_t a1)
{

  return sub_1C4EFB438();
}

uint64_t sub_1C44A1E00@<X0>(void *a1@<X8>)
{
  result = *(v1 - 224);
  *a1 = *(v1 - 232);
  a1[1] = result;
  return result;
}

uint64_t sub_1C44A1E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 136) = result;
  *(v3 - 120) = v2 - a2;
  return result;
}

uint64_t sub_1C44A1E88(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1C4F00FD8();
}

uint64_t sub_1C44A1EBC()
{
  v2 = *(v0 - 960);
  v3 = *(v0 - 968);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44A1EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1C4460108(a1, v5, v2, v3);
}

uint64_t sub_1C44A1F7C(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

void *sub_1C44A1F88@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(a1 + v2) = 0;
  return sub_1C4409678(v1, v1[3]);
}

uint64_t sub_1C44A1FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Blocker.execute()();
}

uint64_t Blocker.execute()()
{
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44A210C, 0, 0);
}

uint64_t sub_1C44A210C()
{
  v24 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Blocker(0);
  type metadata accessor for PhaseStores(0);
  v4 = v3[11];
  LOBYTE(v22) = *(v2 + v4);
  v5 = v3[5];
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v7 + 16))(v1, v2 + v5, v6);
  sub_1C440BAA8(v1, 0, 1, v6);
  sub_1C44A2734(&v22, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v8 = v0[3];
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      v10 = sub_1C44F0828;
      v11 = sub_1C44A3304;
      goto LABEL_3;
    case 2:
      v16 = v0[3];
      if ((*(v16 + v3[13]) & 1) == 0)
      {
        v9 = swift_task_alloc();
        *(v9 + 16) = v16;
        v10 = sub_1C44F1A74;
        v11 = sub_1C4656B44;
LABEL_3:
        sub_1C44A2FC4(v2 + v5, 0, 1, v10, v9, v11);
      }

      v17 = v0[3];
      v18 = *(v2 + v4);
      v19 = swift_task_alloc();
      v19[2] = v17;
      sub_1C44A5990(v2 + v5, v18, 0, 1, sub_1C44CB36C, v19);

      sub_1C4EF9AE8();
      sub_1C44A7134(v20, 0, 1u);

      v21 = v0[1];

      result = v21();
      break;
    default:
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA478, &qword_1C4F140D0);
      v12 = sub_1C4F01198();
      MEMORY[0x1C6940010](v12);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4656C24("Fatal error", v13, v14, v22, v23, "IntelligencePlatformCore/Blocker.swift");
      break;
  }

  return result;
}

uint64_t sub_1C44A2474(char *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *a1;
  v31[16] = *a1;
  v32 = a2;

  v15 = sub_1C443DD50(a3, v31);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2E088);
  sub_1C44A2E4C(a2, v13);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();
  if (os_log_type_enabled(v17, v18))
  {
    sub_1C43FEC60();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = a4;
    v34 = v20;
    *v19 = 136315650;
    v33 = v14;
    sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
    v21 = sub_1C4F01198();
    v23 = sub_1C441D828(v21, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_1C44A2E4C(v13, v10);
    v24 = sub_1C4F01198();
    v26 = v25;
    sub_1C4420C3C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
    v27 = sub_1C441D828(v24, v26, &v34);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v15;
    _os_log_impl(&dword_1C43F8000, v17, v18, v30, v19, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C4420C3C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  return v15;
}

uint64_t sub_1C44A2754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a1;
  v33 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1C4EFD548();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BE538, &qword_1C4F37360);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  type metadata accessor for EntityBlock(0);
  sub_1C4490890(&unk_1EDDF92F8, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);
  sub_1C4EFADF8();
  if (qword_1EDDF9308 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, qword_1EDE2DB18);
  v44 = v17;
  v45 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v43);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
  switch(v18)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v20 = 0xE400000000000000;
      v21 = 1819047270;
      goto LABEL_7;
    case 2:
      v20 = 0xE500000000000000;
      v21 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v20 = 0xEA0000000000676ELL;
      v21 = 0x69686374614D6F74;
LABEL_7:
      v41 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69A0130];
      v39 = v21;
      v40 = v20;
      v47 = sub_1C4EFB298();
      v48 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v46);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v43);
      sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360, MEMORY[0x1E699FF70]);
      sub_1C4EFB438();
      (*(v9 + 8))(v16, v8);
      sub_1C440962C(v46);
      (*(v9 + 32))(v16, v13, v8);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v37, v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v23 = v35;
    v22 = v36;
    (*(v36 + 32))(v35, v5, v6);
    if (qword_1EDDF9318 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4EFBD38();
    v25 = sub_1C442B738(v24, qword_1EDE2DB30);
    v44 = v24;
    v45 = MEMORY[0x1E69A0050];
    v26 = sub_1C4422F90(v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = sub_1C4EFD3D8();
    v41 = MEMORY[0x1E69E6158];
    v42 = MEMORY[0x1E69A0130];
    v39 = v27;
    v40 = v28;
    v47 = sub_1C4EFB298();
    v48 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v46);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v43);
    sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360, MEMORY[0x1E699FF70]);
    v29 = v34;
    sub_1C4EFB438();
    (*(v22 + 8))(v23, v6);
    (*(v9 + 8))(v16, v8);
    sub_1C440962C(v46);
    (*(v9 + 32))(v16, v29, v8);
  }

  v30 = v49;
  v31 = sub_1C4EFB898();
  result = (*(v9 + 8))(v16, v8);
  if (!v30)
  {
    *v33 = v31;
  }

  return result;
}

uint64_t sub_1C44A2E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PipelineType.description.getter()
{
  v1 = *v0;
  sub_1C4F02248();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1819047270;
      break;
    case 2:
      v3 = sub_1C44076F0();
      break;
    case 3:
      v2 = 0xEA0000000000676ELL;
      v3 = sub_1C44133C0();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x6E696C657069503CLL;
}

uint64_t sub_1C44A2FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v54 = a2;
  v50 = a4;
  v51 = a5;
  v10 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440F400();
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2E088);
  v15 = *(v12 + 16);
  v52 = a1;
  v15(v7, a1, v10);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v49 = v6;
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v18 = 136315394;
    sub_1C44189E4();
    sub_1C447CB3C(v19, v20, MEMORY[0x1E69A92F8]);
    v47 = v17;
    v21 = sub_1C4F02858();
    v48 = a3;
    v23 = v22;
    v24 = sub_1C449F410();
    v25(v24);
    v26 = sub_1C441D828(v21, v23, &v57);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v27 = v54;
    v55 = v54;
    v56 = a3 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v28 = sub_1C4F01198();
    v30 = sub_1C441D828(v28, v29, &v57);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_1C43F8000, v16, v47, "GraphStore: tripleBlockingMap: e:%s t:%s", v18, 0x16u);
    swift_arrayDestroy();
    v31 = sub_1C44068C0();
    MEMORY[0x1C6942830](v31);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v33 = sub_1C449F410();
    v32 = v34(v33);
    v27 = v54;
  }

  MEMORY[0x1EEE9AC00](v32);
  v43[2] = v35;
  v43[3] = v52;
  v43[4] = v27;
  v44 = a3 & 1;
  v45 = v50;
  v46 = v51;

  sub_1C4418704(v53, v43, v36, v37, v38, v39, v40, v41, v43[0], v43[1]);
}

uint64_t sub_1C44A3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v18 = a6;
  v19 = a7;
  v17 = a1;
  v7 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for ConstructionGraphTriple(0);
  sub_1C447CB3C(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  sub_1C4EFADF8();
  sub_1C44A3574();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_1C44A3D98(v17, v13, v18, v19);
  return (v14)(v13, v7);
}

void sub_1C44A3574()
{
  sub_1C43FBD3C();
  sub_1C4423CA4(v1, v2, v3, v4, v5, v6);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v8 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  sub_1C43FBE44();
  v13 = sub_1C4EFBD38();
  v14 = sub_1C4B59094(v13, MEMORY[0x1E69A0050]);
  sub_1C4422F90(v14);
  sub_1C4440DD4();
  sub_1C4EFEBB8();
  sub_1C4EFEB68();
  v15 = sub_1C44EB8F8();
  v16(v15);
  v17 = MEMORY[0x1E69E6158];
  v18 = sub_1C4B59030();
  v63 = v18;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v59);
  sub_1C43FC300();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BA580, &unk_1C4F32530, v20);
  sub_1C446286C(v21);
  sub_1C440962C(v62);
  v60 = v13;
  v22 = sub_1C445AC14(MEMORY[0x1E69A0050]);
  sub_1C4422F90(v22);
  sub_1C4B58F44();
  v23 = sub_1C4EFD2F8();
  sub_1C4475624(v23, v24);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
  v25 = sub_1C442A9D8();
  sub_1C44CD080(v25);
  v26 = sub_1C441B504();
  v17(v26);
  sub_1C440962C(v62);
  v27 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v28 = sub_1C44331AC(v27);
  v29 = sub_1C44F0930(v28, xmmword_1C4F0D130);
  sub_1C442A644(v29, MEMORY[0x1E69A0038]);
  sub_1C44C04A4();
  sub_1C442F3C0();
  v32 = sub_1C4401CBC(v30, &qword_1EC0BA580, &unk_1C4F32530, v31);
  sub_1C44E7704(v32);

  v33 = v0;
  v34 = MEMORY[0x1E699FE60];
  (v17)(v33, v8);
  sub_1C444C04C();
  if (!v35)
  {
    v60 = v13;
    v36 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v36);
    sub_1C4462064();
    sub_1C447FA24();
    switch(v38)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C447CC4C();
        break;
      default:
        break;
    }

    v58[3] = MEMORY[0x1E69E6158];
    sub_1C4485AA8(v37);
    sub_1C440C4CC();
    sub_1C4EFBB28();
    sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
    v39 = sub_1C442A9D8();
    sub_1C4460AF8(v39);
    v40 = sub_1C446070C();
    v41(v40);
    sub_1C440962C(v62);
    v42 = sub_1C44BBEDC();
    v43(v42);
  }

  if ((v57 & 1) == 0)
  {
    v60 = v13;
    v44 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v44);
    sub_1C44513D8();
    sub_1C442F988(MEMORY[0x1E69E63B0]);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v58);
    v45 = sub_1C442A9D8();
    sub_1C4460AF8(v45);
    v46 = sub_1C446070C();
    v47(v46);
    sub_1C440962C(v62);
    v48 = sub_1C44BBEDC();
    v49(v48);
  }

  v60 = v13;
  v61 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v59);
  sub_1C44D3FFC();
  v63 = v18;
  v64 = v34;
  sub_1C4422F90(v62);
  v50 = sub_1C4441550(&qword_1EDDF0090);
  sub_1C446BD00(v50);
  v51 = sub_1C442A9D8();
  sub_1C44A1DD0(v51);
  sub_1C440962C(v62);
  v52 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v53 = sub_1C44331AC(v52);
  sub_1C4457964(v53);
  sub_1C442A644(v54, MEMORY[0x1E69A0048]);
  sub_1C44D3FFC();
  v55 = sub_1C44507CC(&qword_1EDDF00A8);
  sub_1C4475DD4(v55);

  v56 = sub_1C4B58F6C();
  v17(v56);
  (v17)(v34, v8);
  sub_1C43FE9F0();
}

uint64_t sub_1C44A3A84()
{
}

uint64_t sub_1C44A3AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F01298();
}

uint64_t sub_1C44A3B20()
{

  return swift_beginAccess();
}

void sub_1C44A3B44(uint64_t a1)
{
  if (v3 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1C44C9240(a1, v5, 1, v1);
}

uint64_t sub_1C44A3B64(uint64_t a1)
{

  return sub_1C4F027E8();
}

uint64_t sub_1C44A3BBC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = *(v1 + a1);

  return StageName.description.getter();
}

uint64_t sub_1C44A3BD8()
{
}

uint64_t sub_1C44A3BF0(uint64_t result)
{
  *(v1 - 560) = result;
  *(v1 - 176) = result;
  return result;
}

uint64_t sub_1C44A3C3C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = a1;
  *(v3 - 144) = v2;

  return sub_1C440BAA8(v1 + a1, 1, 1, v2);
}

uint64_t sub_1C44A3C78()
{
  *(v1 - 89) = v0;
}

uint64_t sub_1C44A3C98()
{
}

uint64_t sub_1C44A3CB0()
{
  v3 = *(v0 + *(v1 + 28));

  return sub_1C448D934(v3);
}

id sub_1C44A3D04()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

uint64_t sub_1C44A3D38@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 232) = &a2 - a1;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C44A3D68(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02738();
}

uint64_t sub_1C44A3D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v63 = a2;
  v59 = a4;
  v60 = a3;
  v61 = sub_1C4EFF0C8();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = type metadata accessor for ConstructionGraphTriple(0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v20 = a1;
  sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530, MEMORY[0x1E699FF60]);
  sub_1C447CB3C(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  v21 = v64;
  result = sub_1C4EFAFD8();
  if (!v21)
  {
    v23 = result;
    v63 = v11;
    v64 = v13;
    v24 = v16;
    v52 = v8;
    v53 = v19;
    v25 = v58;
    v26 = v59;
    sub_1C44A457C();
    if (sub_1C44157D4(v25, 1, v63) == 1)
    {
      sub_1C4420C3C(v25, &unk_1EC0BCAE0, byte_1C4F142A0);
      if (qword_1EDDFFAF0 != -1)
      {
        swift_once();
      }

      v27 = sub_1C4F00978();
      sub_1C442B738(v27, qword_1EDE2E088);
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CF8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C43F8000, v28, v29, "GraphStore: batchBlockingUpsert: found no data", v30, 2u);
        MEMORY[0x1C6942830](v30, -1, -1);
      }
    }

    else
    {
      v54 = v20;
      v55 = v23;
      v31 = v25;
      v32 = v53;
      sub_1C449F338(v31, v53);
      sub_1C456902C(&qword_1EC0B8F00, &unk_1C4F0E9A0);
      v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = *(v56 + 72);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C4F0D130;
      v56 = v33;
      sub_1C4430900(v32, v34 + v33);
      v65 = v34;
      v35 = v57 + 16;
      v36 = v32;
      v37 = v61;
      (*(v57 + 16))(v62, v36, v61);
      swift_beginAccess();
      v38 = (v35 + 8);
      v39 = v26;
      v40 = v52;
      while (1)
      {
        sub_1C44A457C();
        if (sub_1C44157D4(v40, 1, v63) == 1)
        {
          break;
        }

        sub_1C449F338(v40, v24);
        sub_1C447CB3C(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
        v41 = v62;
        if (sub_1C4F010B8())
        {
          v42 = v24;
        }

        else
        {
          v43 = objc_autoreleasePoolPush();
          sub_1C44C9764(v60, v26, &v65, v41, v54);
          objc_autoreleasePoolPop(v43);

          v42 = v24;
          (*v38)(v41, v24, v37);
          v34 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4430900(v42, v64);
        v39 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v34 + 16) + 1, 1, v34);
          v34 = v46;
        }

        v45 = *(v34 + 16);
        v44 = *(v34 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C44EE8C8(v44 > 1, v45 + 1, 1, v34);
          v34 = v47;
        }

        sub_1C447E868(v24, type metadata accessor for ConstructionGraphTriple);
        *(v34 + 16) = v45 + 1;
        sub_1C449F338(v64, v34 + v56 + v45 * v58);
        v65 = v34;
        v37 = v61;
      }

      sub_1C4420C3C(v40, &unk_1EC0BCAE0, byte_1C4F142A0);
      if (*(v34 + 16))
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v62;
        sub_1C44C9764(v60, v39, &v65, v62, v54);
        v50 = v57;
        v51 = v53;
        objc_autoreleasePoolPop(v48);

        sub_1C447E868(v51, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        sub_1C447E868(v53, type metadata accessor for ConstructionGraphTriple);

        v50 = v57;
        v49 = v62;
      }

      (*(v50 + 8))(v49, v37);
    }
  }

  return result;
}

void sub_1C44A457C()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDF0178, &unk_1EC0BCAF0, &qword_1C4F29BE0);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for ConstructionGraphTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDF0188, &unk_1EC0BCAF0, &qword_1C4F29BE0);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for ConstructionGraphTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCAE0, byte_1C4F142A0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C44A4700(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, void (*a6)(void))
{
  v11 = sub_1C43FBE94();
  v12(v11);
  sub_1C43FCF8C();
  if (*(v14 + 84) == a3)
  {
    v15 = v13;
    v16 = v6;
  }

  else
  {
    a6(0);
    sub_1C43FCF8C();
    if (*(v18 + 84) == a3)
    {
      v15 = v17;
      v19 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v6 + a4[6]) = a2 + 3;
        return;
      }

      v15 = sub_1C4EFD548();
      v19 = a4[7];
    }

    v16 = v6 + v19;
  }

  sub_1C440BAA8(v16, a2, a2, v15);
}

void sub_1C44A4818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {

    sub_1C440BAA8(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1C44A48B8()
{
  sub_1C43FC36C();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v3 + 84) != v1)
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v4 + 84) != v1)
      {
        sub_1C44289C4();
        *(v9 + 8) = (v0 - 1);
        return;
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v5, v6, v7, v8);
}

void sub_1C44A49C8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v8 + 84) == a3)
  {
    sub_1C43FD5B4();
    sub_1C43FE688();

    sub_1C440BAA8(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_1C44A4A60(uint64_t a1, uint64_t a2, int a3, int *a4, void (*a5)(void), void (*a6)(void))
{
  a5(0);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a3)
  {
    v13 = v11;
    v14 = a1;
  }

  else
  {
    a6(0);
    sub_1C43FCF8C();
    if (*(v16 + 84) == a3)
    {
      v13 = v15;
      v17 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return;
      }

      v13 = sub_1C4EFD548();
      v17 = a4[7];
    }

    v14 = a1 + v17;
  }

  sub_1C440BAA8(v14, a2, a2, v13);
}

void sub_1C44A4B7C()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v3 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v4 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v5 + 84) != v1)
        {
          sub_1C441864C(*(v0 + 32));
          return;
        }

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

void sub_1C44A4CCC()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v5 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v6 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v7 + 84) != v3)
        {
          *(v1 + *(v2 + 32) + 8) = v0;
          return;
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v8, v9, v10, v11);
}

void sub_1C44A4E28()
{
  sub_1C43FF404();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v14 + 84) != v3)
        {
          *(v1 + v2[8] + 8) = v0;
          return;
        }

        v6 = v13;
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  sub_1C440BAA8(v7, v0, v0, v6);
}

uint64_t sub_1C44A4F94(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, void (*a5)(void))
{
  v9 = sub_1C43FBE94();
  v10(v9);
  sub_1C43FCF8C();
  if (*(v12 + 84) == a2)
  {
    v13 = v11;
    v14 = v5;
  }

  else
  {
    a5(0);
    sub_1C43FCF8C();
    if (*(v16 + 84) == a2)
    {
      v13 = v15;
      v17 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v18 = *(v5 + a3[6]);
        if (v18 >= 4)
        {
          return v18 - 3;
        }

        else
        {
          return 0;
        }
      }

      v13 = sub_1C4EFD548();
      v17 = a3[7];
    }

    v14 = v5 + v17;
  }

  return sub_1C44157D4(v14, a2, v13);
}

uint64_t sub_1C44A50A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {

    return sub_1C44157D4(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1C44A5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v13 + 84) != v3)
      {
        sub_1C44289C4();
        sub_1C448E060();
        return (v15 + 1);
      }

      v8 = v12;
      v11 = *(a3 + 24);
    }

    v7 = v4 + v11;
  }

  return sub_1C44157D4(v7, v3, v8);
}

uint64_t sub_1C44A525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) != a2)
  {
    return sub_1C43FCE3C(*(v3 + *(a3 + 20)));
  }

  return sub_1C44157D4(v3, a2, v6);
}

uint64_t sub_1C44A52F4(uint64_t a1, uint64_t a2, int *a3, void (*a4)(void), void (*a5)(void))
{
  a4(0);
  sub_1C43FCF8C();
  if (*(v10 + 84) == a2)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    a5(0);
    sub_1C43FCF8C();
    if (*(v14 + 84) == a2)
    {
      v11 = v13;
      v15 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v16 = *(a1 + a3[6]);
        if (v16 >= 4)
        {
          return v16 - 3;
        }

        else
        {
          return 0;
        }
      }

      v11 = sub_1C4EFD548();
      v15 = a3[7];
    }

    v12 = a1 + v15;
  }

  return sub_1C44157D4(v12, a2, v11);
}

uint64_t sub_1C44A5404()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) != v0)
        {
          return sub_1C43FE264(*(v2 + 32));
        }

        sub_1C4416C14();
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44A5554()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v10 + 84) != v0)
        {
          return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
        }

        v5 = v9;
        v7 = *(v2 + 28);
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44A56B0()
{
  sub_1C440CE48();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) != v0)
        {
          return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
        }

        sub_1C4416C14();
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44A5808(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v16 + 84) != a2)
        {
          return sub_1C4405628(*(a1 + a3[8] + 8));
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C44A5990(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v44 = a3;
  v46 = a5;
  v45 = a4;
  v7 = a2;
  v9 = sub_1C4EFD548();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2E088);
  v14 = *(v10 + 16);
  v43 = a1;
  v14(v12, a1, v9);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v17 = 136315650;
    sub_1C447CB3C(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v18 = sub_1C4F02858();
    v42 = a6;
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = sub_1C441D828(v18, v20, &v49);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1C44A5D54(v7);
    v24 = sub_1C441D828(v22, v23, &v49);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    a6 = v42;
    v25 = v44;
    v47 = v44;
    v26 = v45;
    v48 = v45 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v27 = sub_1C4F01198();
    v29 = sub_1C441D828(v27, v28, &v49);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_1C43F8000, v15, v16, "GraphStore: tripleBlockingMap: e:%s p:%s t:%s", v17, 0x20u);
    v30 = v41;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v30, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  else
  {

    v31 = (*(v10 + 8))(v12, v9);
    v26 = v45;
    v25 = v44;
  }

  MEMORY[0x1EEE9AC00](v31);
  v32 = v43;
  *(&v41 - 8) = v33;
  *(&v41 - 7) = v32;
  *(&v41 - 48) = v7;
  *(&v41 - 5) = v25;
  *(&v41 - 32) = v26 & 1;
  *(&v41 - 3) = v46;
  *(&v41 - 2) = a6;

  sub_1C4418704(sub_1C44A6008, (&v41 - 10), v34, v35, v36, v37, v38, v39, v41, v42);
}

uint64_t sub_1C44A5D54(char a1)
{
  sub_1C4F02248();

  v3 = sub_1C44806FC();
  switch(a1)
  {
    case 1:
      v1 = 0xE400000000000000;
      v3 = 1819047270;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v3 = sub_1C4482D18();
      break;
    case 3:
      v1 = 0xEA0000000000676ELL;
      v3 = sub_1C44133C0();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v1);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x6E696C657069503CLL;
}

uint64_t sub_1C44A5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  v17 = a5;
  v18 = a1;
  v8 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  type metadata accessor for EntityTriple(0);
  sub_1C447CB3C(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  sub_1C4EFADF8();
  sub_1C44A6034();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_1C44A6544(v18, v14, v19, v20);
  return (v15)(v14, v8);
}

void sub_1C44A6034()
{
  sub_1C43FBD3C();
  sub_1C4423CA4(v1, v2, v3, v4, v5, v6);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v8 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  sub_1C43FBE44();
  v13 = sub_1C4EFBD38();
  v14 = sub_1C4B59094(v13, MEMORY[0x1E69A0050]);
  sub_1C4422F90(v14);
  sub_1C4440DD4();
  sub_1C4EFEBB8();
  sub_1C4EFEB68();
  v15 = sub_1C44EB8F8();
  v16(v15);
  v17 = MEMORY[0x1E69E6158];
  v18 = sub_1C4B59030();
  v63 = v18;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v59);
  sub_1C43FC300();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BA588, &unk_1C4F142B0, v20);
  sub_1C446286C(v21);
  sub_1C440962C(v62);
  v60 = v13;
  v22 = sub_1C445AC14(MEMORY[0x1E69A0050]);
  sub_1C4422F90(v22);
  sub_1C4B58F44();
  v23 = sub_1C4EFD2F8();
  sub_1C4475624(v23, v24);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
  v25 = sub_1C442A9D8();
  sub_1C44CD080(v25);
  v26 = sub_1C441B504();
  v17(v26);
  sub_1C440962C(v62);
  v27 = sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v28 = sub_1C44331AC(v27);
  v29 = sub_1C44F0930(v28, xmmword_1C4F0D130);
  sub_1C442A644(v29, MEMORY[0x1E69A0038]);
  sub_1C44C04A4();
  sub_1C442F3C0();
  v32 = sub_1C4401CBC(v30, &qword_1EC0BA588, &unk_1C4F142B0, v31);
  sub_1C44E7704(v32);

  v33 = v0;
  v34 = MEMORY[0x1E699FE60];
  (v17)(v33, v8);
  sub_1C444C04C();
  if (!v35)
  {
    v60 = v13;
    v36 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v36);
    sub_1C4462064();
    sub_1C447FA24();
    switch(v38)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C447CC4C();
        break;
      default:
        break;
    }

    v58[3] = MEMORY[0x1E69E6158];
    sub_1C4485AA8(v37);
    sub_1C440C4CC();
    sub_1C4EFBB28();
    sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
    v39 = sub_1C442A9D8();
    sub_1C4460AF8(v39);
    v40 = sub_1C446070C();
    v41(v40);
    sub_1C440962C(v62);
    v42 = sub_1C44BBEDC();
    v43(v42);
  }

  if ((v57 & 1) == 0)
  {
    v60 = v13;
    v44 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v44);
    sub_1C44513D8();
    sub_1C442F988(MEMORY[0x1E69E63B0]);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v58);
    v45 = sub_1C442A9D8();
    sub_1C4460AF8(v45);
    v46 = sub_1C446070C();
    v47(v46);
    sub_1C440962C(v62);
    v48 = sub_1C44BBEDC();
    v49(v48);
  }

  v60 = v13;
  v61 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v59);
  sub_1C44D3FFC();
  v63 = v18;
  v64 = v34;
  sub_1C4422F90(v62);
  v50 = sub_1C4441550(&qword_1EDDFA2B8);
  sub_1C446BD00(v50);
  v51 = sub_1C442A9D8();
  sub_1C44A1DD0(v51);
  sub_1C440962C(v62);
  v52 = sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v53 = sub_1C44331AC(v52);
  sub_1C4457964(v53);
  sub_1C442A644(v54, MEMORY[0x1E69A0048]);
  sub_1C44D3FFC();
  v55 = sub_1C44507CC(&qword_1EDDFA2D0);
  sub_1C4475DD4(v55);

  v56 = sub_1C4B58F6C();
  v17(v56);
  (v17)(v34, v8);
  sub_1C43FE9F0();
}

uint64_t sub_1C44A6544(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v63 = a2;
  v59 = a4;
  v60 = a3;
  v61 = sub_1C4EFF0C8();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v10;
  v11 = type metadata accessor for EntityTriple(0);
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v20 = a1;
  sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF60]);
  sub_1C447CB3C(&qword_1EDDF8DA0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  v21 = v64;
  result = sub_1C4EFAFD8();
  if (!v21)
  {
    v23 = result;
    v63 = v11;
    v64 = v13;
    v24 = v16;
    v52 = v8;
    v53 = v19;
    v25 = v58;
    v26 = v59;
    sub_1C44A6D28();
    if (sub_1C44157D4(v25, 1, v63) == 1)
    {
      sub_1C4420C3C(v25, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFFAF0 != -1)
      {
        swift_once();
      }

      v27 = sub_1C4F00978();
      sub_1C442B738(v27, qword_1EDE2E088);
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CF8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C43F8000, v28, v29, "GraphStore: batchBlockingUpsert: found no data", v30, 2u);
        MEMORY[0x1C6942830](v30, -1, -1);
      }
    }

    else
    {
      v54 = v20;
      v55 = v23;
      v31 = v25;
      v32 = v53;
      sub_1C449F338(v31, v53);
      sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
      v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = *(v56 + 72);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C4F0D130;
      v56 = v33;
      sub_1C4430900(v32, v34 + v33);
      v65 = v34;
      v35 = v57 + 16;
      v36 = v32;
      v37 = v61;
      (*(v57 + 16))(v62, v36, v61);
      swift_beginAccess();
      v38 = (v35 + 8);
      v39 = v26;
      v40 = v52;
      while (1)
      {
        sub_1C44A6D28();
        if (sub_1C44157D4(v40, 1, v63) == 1)
        {
          break;
        }

        sub_1C449F338(v40, v24);
        sub_1C447CB3C(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
        v41 = v62;
        if (sub_1C4F010B8())
        {
          v42 = v24;
        }

        else
        {
          v43 = objc_autoreleasePoolPush();
          sub_1C44C9764(v60, v26, &v65, v41, v54);
          objc_autoreleasePoolPop(v43);

          v42 = v24;
          (*v38)(v41, v24, v37);
          v34 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4430900(v42, v64);
        v39 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44C9240(0, *(v34 + 16) + 1, 1, v34);
          v34 = v46;
        }

        v45 = *(v34 + 16);
        v44 = *(v34 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C44C9240(v44 > 1, v45 + 1, 1, v34);
          v34 = v47;
        }

        sub_1C447E868(v24, type metadata accessor for EntityTriple);
        *(v34 + 16) = v45 + 1;
        sub_1C449F338(v64, v34 + v56 + v45 * v58);
        v65 = v34;
        v37 = v61;
      }

      sub_1C4420C3C(v40, &qword_1EC0BA590, &qword_1C4F1F430);
      if (*(v34 + 16))
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v62;
        sub_1C44C9764(v60, v39, &v65, v62, v54);
        v50 = v57;
        v51 = v53;
        objc_autoreleasePoolPop(v48);

        sub_1C447E868(v51, type metadata accessor for EntityTriple);
      }

      else
      {
        sub_1C447E868(v53, type metadata accessor for EntityTriple);

        v50 = v57;
        v49 = v62;
      }

      (*(v50 + 8))(v49, v37);
    }
  }

  return result;
}

void sub_1C44A6D28()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA360, &unk_1EC0BC9F8, &qword_1C4F29B80);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for EntityTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFA370, &unk_1EC0BC9F8, &qword_1C4F29B80);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &qword_1EC0BA590, &qword_1C4F1F430);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C44A6E94()
{
  sub_1C43FC36C();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v2 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v3 + 84) != v1)
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v4 + 84) != v1)
      {
        if (v1 == 0x7FFFFFFF)
        {
          sub_1C44289C4();
          *(v5 + 8) = (v0 - 1);
          return;
        }

        type metadata accessor for Source(0);
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C44A6FE0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FECE0();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFEEF8();
    sub_1C43FCF8C();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_1C4EFF8A8();
      sub_1C43FCF8C();
      if (*(v13 + 84) == v3)
      {
        v8 = v12;
        v11 = a3[6];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          sub_1C44289C4();
          sub_1C448E060();
          return (v14 + 1);
        }

        v8 = type metadata accessor for Source(0);
        v11 = a3[9];
      }
    }

    v7 = v4 + v11;
  }

  return sub_1C44157D4(v7, v3, v8);
}

void sub_1C44A7134(uint64_t a1, char a2, unsigned int a3)
{
  v4 = v3;
  v53 = a3;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProgressTokens(0);
  v52 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Blocker(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  if (a2)
  {
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v54[0] = a1;
    sub_1C4EF93D8();
    swift_allocObject();
    sub_1C4EF93C8();
    sub_1C456902C(&qword_1EC0BA4A8, &dword_1C4F141D0);
    sub_1C4401CBC(&unk_1EDDF7D68, &qword_1EC0BA4A8, &dword_1C4F141D0, &protocol conformance descriptor for ProgressToken<A>);
    v17 = sub_1C4EF93B8();
    v18 = v28;

    objc_autoreleasePoolPop(v48);
  }

  sub_1C44A7940(v54);
  v29 = v55;
  v30 = v53;
  if (v55)
  {
    v15 = v56;
    sub_1C4409678(v54, v55);
    v31 = v15[6](v29, v15);
    sub_1C440962C(v54);
    if (v30)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(v54, &qword_1EC0BA490, &unk_1C4F53630);
    v31 = 0;
    if (v30)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v31++, 1))
  {
    __break(1u);
    swift_once();
    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DE10);
    sub_1C4430900(v4, v30);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54[0] = v23;
      *v22 = 136315138;
      sub_1C4430900(v30, v15);
      sub_1C447E868(v30, type metadata accessor for Blocker);
      v24 = sub_1C44A1AC0();
      v26 = v25;
      sub_1C447E868(v15, type metadata accessor for Blocker);
      v27 = sub_1C441D828(v24, v26, v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1C43F8000, v20, v21, "%s failed to update progress token", v22, 0xCu);
      sub_1C440962C(v23);
      MEMORY[0x1C6942830](v23, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {
      sub_1C447E868(v30, type metadata accessor for Blocker);
    }

    return;
  }

LABEL_11:
  switch(*(v4 + v13[11]))
  {
    case 2:

      goto LABEL_14;
    default:
      v33 = sub_1C4F02938();

      if (v33)
      {
LABEL_14:
        v34 = v13[5];
        v35 = sub_1C4EFD548();
        (*(*(v35 - 8) + 16))(v12, v4 + v34, v35);
        LOBYTE(v34) = *(v4 + v13[7]);
        sub_1C4430900(v4 + v13[6], &v12[v10[6]]);
        v12[v10[5]] = v34;
        v36 = &v12[v10[7]];
        *v36 = v17;
        v36[1] = v18;
        *&v12[v10[8]] = v31;
        v12[v10[9]] = v30 & 1;
        type metadata accessor for PhaseStores(0);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v37 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1C4F0D130;
        sub_1C4430900(v12, v38 + v37);
        sub_1C4431E64(v17, v18);
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v39 = type metadata accessor for ProgressTokens;
        v40 = v12;
      }

      else
      {
        v41 = v13[5];
        v42 = sub_1C4EFD548();
        v43 = v51;
        (*(*(v42 - 8) + 16))(v51, v4 + v41, v42);
        LOBYTE(v41) = *(v4 + v13[7]);
        v44 = v49;
        sub_1C4430900(v4 + v13[6], v43 + v49[6]);
        *(v43 + v44[5]) = v41;
        v45 = (v43 + v44[7]);
        *v45 = v17;
        v45[1] = v18;
        *(v43 + v44[8]) = v31;
        *(v43 + v44[9]) = v30 & 1;
        type metadata accessor for PhaseStores(0);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v46 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1C4F0D130;
        sub_1C4430900(v43, v47 + v46);
        sub_1C4431E64(v17, v18);
        sub_1C449498C(v47);
        swift_setDeallocating();
        sub_1C4495394();
        v39 = type metadata accessor for ConstructionProgressTokens;
        v40 = v43;
      }

      sub_1C447E868(v40, v39);
      sub_1C441DFEC(v17, v18);
      break;
  }
}

uint64_t sub_1C44A7940@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-1] - v4;
  v6 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Blocker(0);
  switch(*(v2 + *(v15 + 44)))
  {
    case 2:

      goto LABEL_4;
    default:
      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF0D58, type metadata accessor for Blocker, &protocol conformance descriptor for Blocker);
        v17 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v17);
        sub_1C44FEF34(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v18 = &unk_1EC0BA4B8;
          v19 = &unk_1C4F16F60;
          v20 = v11;
LABEL_8:
          result = sub_1C4420C3C(v20, v18, v19);
          v23 = v28;
          *(v28 + 32) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          return result;
        }

        sub_1C449F338(v11, v14);
        v24 = v28;
        *(v28 + 24) = v12;
        v24[4] = &off_1F43EE918;
        v25 = sub_1C4422F90(v24);
        v26 = v14;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF0D58, type metadata accessor for Blocker, &protocol conformance descriptor for Blocker);
        v21 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v21);
        sub_1C449D50C(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v5, 1, v6) == 1)
        {
          v18 = &unk_1EC0BAC20;
          v19 = &unk_1C4F141E0;
          v20 = v5;
          goto LABEL_8;
        }

        sub_1C449F338(v5, v8);
        v27 = v28;
        *(v28 + 24) = v6;
        v27[4] = &off_1F43EE970;
        v25 = sub_1C4422F90(v27);
        v26 = v8;
      }

      return sub_1C449F338(v26, v25);
  }
}

uint64_t sub_1C44A7DA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C44A7E94()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 96) = v0;

  sub_1C440962C((v3 + 16));
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C44A7F98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80) + 1;
  *(v0 + 80) = v2;
  if (v2 == v1)
  {
    sub_1C43FBDA0();

    v3();
  }

  else
  {
    v4 = *(v0 + 64);
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C442E860(v4 + 40 * v2 + 32, v0 + 16);
      v5 = sub_1C4475C04();
      v6(v5);
      *(v0 + 105) = *(v0 + 104);
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v8 = sub_1C442A464(v7);

      ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }
  }
}

uint64_t PairGenerator.pipelineType.getter()
{
  result = sub_1C444B20C();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t PairGenerator.entityClass.getter()
{
  v2 = *(sub_1C444B20C() + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t PairGenerator.stageName.getter()
{
  result = sub_1C444B20C();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1C44A826C()
{
  v2 = sub_1C44A1E40();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v5 = type metadata accessor for PairGenerator(0);
  sub_1C4471CA0(v5);
  v6 = sub_1C456902C(&qword_1EC0BA508, &qword_1C4F14238);
  v7 = sub_1C4485A60(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 32));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v8);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v9);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

uint64_t sub_1C44A83A4()
{

  return sub_1C4431E64(v0, v1);
}

void sub_1C44A83C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A83EC@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C44A8434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return PairGenerator.execute()();
}

uint64_t PairGenerator.execute()()
{
  *(v1 + 32) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44A855C, 0, 0);
}

uint64_t sub_1C44A855C()
{
  v22 = v0;
  v1 = MEMORY[0x1E69E7CD0];
  v0[2] = MEMORY[0x1E69E7CD0];
  v0[3] = v1;
  v3 = v0[4];
  v2 = v0[5];
  type metadata accessor for PhaseStores(0);
  v4 = type metadata accessor for PairGenerator(0);
  v5 = *(v4 + 24);
  v6 = *(v4 + 28);
  v19 = *(v3 + v6);
  v7 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v18 = *(v8 + 16);
  v18(v2, v3 + v5, v7);
  sub_1C443F2D4();
  sub_1C44A8814(&v19, v2);
  sub_1C4420C3C(v2, &qword_1EC0B8568, &unk_1C4F319B0);
  v20 = *(v3 + v6);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v0 + 2;
  v9[4] = v0 + 3;
  sub_1C44A8F2C(v3 + v5, &v20, 0, 1, sub_1C44D1DC0, v9);
  v10 = v0[4];

  v12 = v0[2];
  v11 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4A7C7A0(v12, v11);
  v14 = swift_task_alloc();
  *(v14 + 16) = v10;
  sub_1C44AA1F0(v13, sub_1C44D698C, v14);
  v16 = v0[5];

  sub_1C4EF9AE8();
  sub_1C44AA7D4();
  v21[0] = *(v3 + v6);
  v18(v16, v3 + v5, v7);
  sub_1C443F2D4();
  sub_1C44A2734(v21, v16);
  sub_1C4420C3C(v16, &qword_1EC0B8568, &unk_1C4F319B0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C44A8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a1;
  v33 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1C4EFD548();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BE540, &qword_1C4F37368);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  type metadata accessor for EntityPair(0);
  sub_1C4490890(&qword_1EDDFA0F8, type metadata accessor for EntityPair, &unk_1C4F36FC4);
  sub_1C4EFADF8();
  if (qword_1EDDFA118 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, &unk_1EDE2DC90);
  v44 = v17;
  v45 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v43);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
  switch(v18)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v20 = 0xE400000000000000;
      v21 = 1819047270;
      goto LABEL_7;
    case 2:
      v20 = 0xE500000000000000;
      v21 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v20 = 0xEA0000000000676ELL;
      v21 = 0x69686374614D6F74;
LABEL_7:
      v41 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69A0130];
      v39 = v21;
      v40 = v20;
      v47 = sub_1C4EFB298();
      v48 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v46);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v43);
      sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368, MEMORY[0x1E699FF70]);
      sub_1C4EFB438();
      (*(v9 + 8))(v16, v8);
      sub_1C440962C(v46);
      (*(v9 + 32))(v16, v13, v8);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v37, v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v23 = v35;
    v22 = v36;
    (*(v36 + 32))(v35, v5, v6);
    if (qword_1EDDFA120 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4EFBD38();
    v25 = sub_1C442B738(v24, qword_1EDE2DCA8);
    v44 = v24;
    v45 = MEMORY[0x1E69A0050];
    v26 = sub_1C4422F90(v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = sub_1C4EFD3D8();
    v41 = MEMORY[0x1E69E6158];
    v42 = MEMORY[0x1E69A0130];
    v39 = v27;
    v40 = v28;
    v47 = sub_1C4EFB298();
    v48 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v46);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v43);
    sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368, MEMORY[0x1E699FF70]);
    v29 = v34;
    sub_1C4EFB438();
    (*(v22 + 8))(v23, v6);
    (*(v9 + 8))(v16, v8);
    sub_1C440962C(v46);
    (*(v9 + 32))(v16, v29, v8);
  }

  v30 = v49;
  v31 = sub_1C4EFB898();
  result = (*(v9 + 8))(v16, v8);
  if (!v30)
  {
    *v33 = v31;
  }

  return result;
}

uint64_t sub_1C44A8F2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v9 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  HIDWORD(v46) = *a2;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2E088);
  v17 = *(v11 + 16);
  v48 = a1;
  v17(v15, a1, v9);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    sub_1C43FEC60();
    v20 = swift_slowAlloc();
    v45 = v6;
    v54 = swift_slowAlloc();
    *v20 = 136315650;
    sub_1C441FC50();
    sub_1C4490890(v21, v22, MEMORY[0x1E69A92F8]);
    v23 = sub_1C4F02858();
    v25 = v24;
    (*(v11 + 8))(v15, v9);
    v26 = sub_1C441D828(v23, v25, &v54);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = BYTE4(v46);
    v28 = sub_1C44A5D54(SBYTE4(v46));
    v30 = sub_1C441D828(v28, v29, &v54);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v31 = v49;
    v52 = v49;
    v32 = v50;
    v53 = v50 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v33 = sub_1C4F01198();
    v35 = sub_1C441D828(v33, v34, &v54);

    *(v20 + 24) = v35;
    _os_log_impl(&dword_1C43F8000, v18, v19, "GraphStore: blockPairingMap: e:%s p:%s t:%s", v20, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v36 = (*(v11 + 8))(v15, v9);
    v32 = v50;
    v31 = v49;
    v27 = BYTE4(v46);
  }

  MEMORY[0x1EEE9AC00](v36);
  *(&v45 - 6) = v48;
  *(&v45 - 40) = v27;
  *(&v45 - 4) = v31;
  *(&v45 - 24) = v32 & 1;
  v37 = v47;
  *(&v45 - 2) = v51;
  *(&v45 - 1) = v37;

  sub_1C4418704(sub_1C44A9D54, (&v45 - 8), v38, v39, v40, v41, v42, v43, v45, v46);
}

uint64_t sub_1C44A92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a7)
{
  v71 = a6;
  v72 = a7;
  v61 = a5;
  v60 = a4;
  v65 = a3;
  v69 = a1;
  v7 = sub_1C456902C(&unk_1EC0BCA08, &qword_1C4F29B88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v58 - v8;
  v9 = type metadata accessor for EntityBlock(0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v58 - v12;
  v63 = sub_1C456902C(&qword_1EC0BE538, &qword_1C4F37360);
  v70 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v58 - v18;
  if (qword_1EDDF9318 != -1)
  {
    swift_once();
  }

  v19 = sub_1C4EFBD38();
  v20 = sub_1C442B738(v19, qword_1EDE2DB30);
  v21 = MEMORY[0x1E69A0050];
  v78 = v19;
  v79 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v77);
  v23 = *(*(v19 - 8) + 16);
  v23(v22, v20, v19);
  v24 = sub_1C4EFD3D8();
  v25 = MEMORY[0x1E69A0130];
  v75 = MEMORY[0x1E69E6158];
  v76 = MEMORY[0x1E69A0130];
  v73 = v24;
  v74 = v26;
  v27 = sub_1C4EFB298();
  v81 = v27;
  v82 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v80);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v73, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v77);
  sub_1C4490890(&unk_1EDDF92F8, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);
  v67 = v9;
  sub_1C4EFAE28();
  sub_1C440962C(v80);
  if (qword_1EDDF9308 != -1)
  {
    swift_once();
  }

  v28 = sub_1C442B738(v19, qword_1EDE2DB18);
  v78 = v19;
  v79 = v21;
  v29 = sub_1C4422F90(v77);
  v23(v29, v28, v19);
  v30 = 0xE700000000000000;
  v31 = 0x6E776F6E6B6E75;
  switch(v65)
  {
    case 1:
      v30 = 0xE400000000000000;
      v31 = 1819047270;
      break;
    case 2:
      v30 = 0xE500000000000000;
      v31 = 0x61746C6564;
      break;
    case 3:
      v30 = 0xEA0000000000676ELL;
      v31 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v75 = MEMORY[0x1E69E6158];
  v76 = v25;
  v73 = v31;
  v74 = v30;
  v81 = v27;
  v82 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v80);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v73, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v77);
  sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360, MEMORY[0x1E699FF70]);
  v32 = v66;
  v33 = v63;
  sub_1C4EFB438();
  v34 = *(v70 + 8);
  v65 = v70 + 8;
  v64 = v34;
  v34(v16, v33);
  sub_1C440962C(v80);
  v35 = v69;
  if ((v61 & 1) == 0)
  {
    if (qword_1EC0B6B90 != -1)
    {
      swift_once();
    }

    v36 = sub_1C442B738(v19, qword_1EC152198);
    v78 = v19;
    v79 = MEMORY[0x1E69A0050];
    v37 = sub_1C4422F90(v77);
    v23(v37, v36, v19);
    v75 = MEMORY[0x1E69E63B0];
    v76 = MEMORY[0x1E69A0160];
    v73 = v60;
    v81 = v27;
    v82 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v80);
    sub_1C4EFB808();
    sub_1C440962C(&v73);
    sub_1C440962C(v77);
    v38 = v59;
    v32 = v66;
    sub_1C4EFB438();
    v64(v32, v33);
    sub_1C440962C(v80);
    (*(v70 + 32))(v32, v38, v33);
  }

  sub_1C4401CBC(&qword_1EDDFA2F8, &qword_1EC0BE538, &qword_1C4F37360, MEMORY[0x1E699FF60]);
  sub_1C4490890(&qword_1EDDF92F0, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);
  v39 = v62;
  v40 = sub_1C4EFAFD8();
  if (v39)
  {
    return (v64)(v32, v33);
  }

  *&v41 = 134218243;
  v62 = v41;
  v44 = v67;
  v43 = v68;
  v45 = v58;
  v46 = v83;
  v70 = v40;
  while (1)
  {
    sub_1C44A9D80();
    if (sub_1C44157D4(v43, 1, v44) == 1)
    {
      break;
    }

    sub_1C44D1B5C(v43, v46, type metadata accessor for EntityBlock);
    v47 = objc_autoreleasePoolPush();
    v48 = v71(v46, sub_1C4876F0C, v35);
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2E088);
    sub_1C4490938(v46, v45, type metadata accessor for EntityBlock);
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CB8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80[0] = v53;
      *v52 = v62;
      *(v52 + 4) = v48;
      *(v52 + 12) = 2085;
      v55 = *v45;
      v54 = v45[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4491300(v45, type metadata accessor for EntityBlock);
      v56 = sub_1C441D828(v55, v54, v80);
      v35 = v69;

      *(v52 + 14) = v56;
      _os_log_impl(&dword_1C43F8000, v50, v51, "GraphStore: blockPairingMap: inserted %ld pairs for '%{sensitive}s'", v52, 0x16u);
      sub_1C440962C(v53);
      MEMORY[0x1C6942830](v53, -1, -1);
      v57 = v52;
      v44 = v67;
      v43 = v68;
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    else
    {

      sub_1C4491300(v45, type metadata accessor for EntityBlock);
    }

    objc_autoreleasePoolPop(v47);
    v46 = v83;
    sub_1C4491300(v83, type metadata accessor for EntityBlock);
  }

  v64(v66, v63);

  return sub_1C4420C3C(v43, &unk_1EC0BCA08, &qword_1C4F29B88);
}

void sub_1C44A9D80()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCA08, &qword_1C4F29B88);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA3B0, &qword_1EC0BCA18, &qword_1C4F29B90);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for EntityBlock(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFA3C0, &qword_1EC0BCA18, &qword_1C4F29B90);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityBlock(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCA08, &qword_1C4F29B88);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C44A9F00(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C4EFD548();
    sub_1C442F908();
    sub_1C43FE688();

    return sub_1C440BAA8(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C44A9F8C(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_1C448E060();
    return (v2 + 1);
  }

  else
  {
    sub_1C4EFD548();
    v5 = sub_1C442F908();

    return sub_1C44157D4(v5, a2, v6);
  }
}

void sub_1C44AA008()
{
  sub_1C43FBD3C();
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v26 = v7;
  sub_1C456902C(v7, v1);
  sub_1C43FBC68();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  v12 = v4(0, v9);
  sub_1C43FCDF8();
  v14 = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  if (*(*v0 + 16))
  {
    v18 = 1 << *(v6 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v6 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v14 + 8;
    v25[2] = v14 + 16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    if (v20)
    {
      while (1)
      {
LABEL_8:
        sub_1C441BBA8();
        (*(v14 + 16))(v17, *(v6 + 48) + *(v14 + 72) * v24, v12);
        v28(v17);
        (*(v14 + 8))(v17, v12);
        sub_1C4420C3C(v11, v26, v27);
      }
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        goto LABEL_10;
      }

      ++v22;
      if (*(v6 + 56 + 8 * v23))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C44AA1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2E088);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1C441D828(0xD000000000000010, 0x80000001C4FAEAC0, &v19);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1C441D828(0x6150797469746E45, 0xEA00000000007269, &v19);
    _os_log_impl(&dword_1C43F8000, v6, v7, "GraphStore: storingMap from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v10);
  v18[2] = &v20;
  v18[3] = a2;
  v18[4] = a3;

  sub_1C4418704(sub_1C44AA7B4, v18, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);
}

uint64_t sub_1C44AA408(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v38 = a1;
  v37 = type metadata accessor for EntityPair(0);
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v36 = (v16 + 63) >> 6;
  v33 = v12 + 16;
  v34 = (v12 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  v27 = a2 + 56;
  v28 = v14;
  v31 = a4;
  v32 = a2;
  v29 = v12;
  v30 = v11;
LABEL_4:
  result = a2;
  if (!v18)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_18;
      }

      if (v21 >= v36)
      {
      }

      v18 = *(v15 + 8 * v21);
      ++v19;
      if (v18)
      {
        goto LABEL_9;
      }
    }
  }

  v21 = v19;
LABEL_9:
  (*(v12 + 16))(v14, *(result + 48) + *(v12 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v11);
  v22 = v35(v14);
  if (!v5)
  {
    v23 = v22;
    v18 &= v18 - 1;
    result = (*v34)(v14, v11);
    v24 = 0;
    v25 = *(v23 + 16);
    while (1)
    {
      if (v25 == v24)
      {

        v19 = v21;
        a2 = v32;
        v12 = v29;
        v11 = v30;
        v15 = v27;
        v14 = v28;
        goto LABEL_4;
      }

      if (v24 >= *(v23 + 16))
      {
        break;
      }

      sub_1C4471A3C(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v10);
      sub_1C44D7248(&qword_1EDDFA0E0, type metadata accessor for EntityPair, &unk_1C4F370FC);
      sub_1C4EFB6A8();
      ++v24;
      result = sub_1C4485564(v10, type metadata accessor for EntityPair);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  (*v34)(v14, v11);
}

void sub_1C44AA7D4()
{
  sub_1C43FBD3C();
  sub_1C4435804(v9, v10, v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for PairGenerator(v15);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C4656BF8();
  }

  else
  {
    v18 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v6 = sub_1C4656BB0();
    sub_1C442C5A4();
    v22 = sub_1C4401CBC(v19, v20, &dword_1C4F141D0, v21);
    sub_1C4461C04(v22);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v23 = sub_1C4F00978();
        sub_1C43FCEE8(v23, qword_1EDE2DE10);
        v24 = sub_1C44623A0();
        sub_1C4430900(v24, v4);
        v25 = sub_1C4F00968();
        sub_1C4F01CD8();
        v26 = sub_1C44016D0();
        if (os_log_type_enabled(v26, v27))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v28 = swift_slowAlloc();
          sub_1C44305A4(v28);
          *v6 = 136315138;
          v29 = sub_1C43FE99C();
          sub_1C4430900(v29, v30);
          sub_1C447E868(v4, type metadata accessor for PairGenerator);
          sub_1C44A826C();
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v4, v32);
          sub_1C4404CE0();

          *(v6 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v7);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          v36 = sub_1C44068C0();
          MEMORY[0x1C6942830](v36);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C44A3A84();
    objc_autoreleasePoolPop(v60);
  }

  sub_1C4656BA4();
  sub_1C44AACB4(v37);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v38 = sub_1C440F3CC();
  v39(v38);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v40 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v5 + 28)))
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        sub_1C44D3DDC();
        sub_1C43FCE50();
        v41 = sub_1C440EDB0();
        v42(v41);
        sub_1C445AABC();
        sub_1C441925C();
        sub_1C44EC814(v43);
        sub_1C44016BC();
        *v44 = v6;
        v44[1] = v8;
        sub_1C4422270();
        sub_1C446277C(v45);
        type metadata accessor for PhaseStores(0);
        sub_1C4460A18();
        v46 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v47 = sub_1C4404CB4(v46);
        sub_1C4412DCC(v47, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v48 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44D3DDC();
        sub_1C43FCE50();
        v50 = sub_1C4422A44();
        v51(v50);
        sub_1C441925C();
        sub_1C4656CBC(v52);
        sub_1C442A378();
        sub_1C4460A18();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4461F3C();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v48 = v3;
      }

      sub_1C447E868(v48, v49);
      v57 = sub_1C44191B8();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44AACB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-1] - v4;
  v6 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PairGenerator(0);
  switch(*(v2 + *(v15 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF8048, type metadata accessor for PairGenerator, &protocol conformance descriptor for PairGenerator);
        v17 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v17);
        sub_1C44FEF34(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v18 = &unk_1EC0BA4B8;
          v19 = &unk_1C4F16F60;
          v20 = v11;
LABEL_8:
          result = sub_1C4420C3C(v20, v18, v19);
          v23 = v28;
          *(v28 + 32) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          return result;
        }

        sub_1C449F338(v11, v14);
        v24 = v28;
        *(v28 + 24) = v12;
        v24[4] = &off_1F43EE918;
        v25 = sub_1C4422F90(v24);
        v26 = v14;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF8048, type metadata accessor for PairGenerator, &protocol conformance descriptor for PairGenerator);
        v21 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v21);
        sub_1C449D50C(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v5, 1, v6) == 1)
        {
          v18 = &unk_1EC0BAC20;
          v19 = &unk_1C4F141E0;
          v20 = v5;
          goto LABEL_8;
        }

        sub_1C449F338(v5, v8);
        v27 = v28;
        *(v28 + 24) = v6;
        v27[4] = &off_1F43EE970;
        v25 = sub_1C4422F90(v27);
        v26 = v8;
      }

      return sub_1C449F338(v26, v25);
  }
}

uint64_t sub_1C44AB104@<X0>(unsigned __int16 a1@<W8>)
{

  return sub_1C4610B78(a1, 1);
}

uint64_t sub_1C44AB11C()
{

  return sub_1C447E868(v1, v0);
}

void sub_1C44AB134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = *(v22 - 128);
  v25 = *(v22 - 120);
  v27 = *(v22 - 108);

  sub_1C4601D10(v25, v27, v26, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C44AB158(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44AB174(uint64_t a1)
{

  return sub_1C4F00FE8();
}

id sub_1C44AB1A0(uint64_t a1, const char *a2)
{
  *(v4 - 488) = v2;

  return [v2 a2];
}

uint64_t sub_1C44AB1E0(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44AB1FC()
{

  return swift_beginAccess();
}

uint64_t sub_1C44AB224@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 112);
  *v3 = *(v2 - 120);
  v3[1] = result;
  return result;
}

void sub_1C44AB234()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44AB280()
{

  return sub_1C4F01148();
}

uint64_t sub_1C44AB2A0()
{

  return sub_1C4471BAC(v0, v1);
}

uint64_t PassthroughMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PassthroughMatcher(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PassthroughMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassthroughMatcher(0) + 28);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C44AB4C4()
{
  v3 = sub_1C44A1E40();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v6 = type metadata accessor for PassthroughMatcher(0);
  sub_1C4471CA0(v6);
  v7 = sub_1C456902C(&qword_1EC0BA500, &qword_1C4F14230);
  v8 = sub_1C4485A60(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  v9 = sub_1C4402CD0();
  sub_1C4430900(v9, v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  return sub_1C43FE658();
}

uint64_t sub_1C44AB5C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return PassthroughMatcher.execute()();
}

uint64_t PassthroughMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44AB6F0, 0, 0);
}

uint64_t sub_1C44AB6F0()
{
  v33 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for PassthroughMatcher(0);
  type metadata accessor for PhaseStores(0);
  v4 = *(v3 + 20);
  LOBYTE(v32[0]) = *(v2 + v4);
  v5 = *(v3 + 28);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v31 = *(v7 + 16);
  v31(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v8, v9, v10, v6);
  sub_1C44ABA54(v32, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v3 = v0[3];
      *(swift_task_alloc() + 16) = v3;
      sub_1C442D110();
      sub_1C44AC170(v11, v12, v13, v14, v15, v16);
      goto LABEL_5;
    case 2:
      v19 = v0[3];
      *(swift_task_alloc() + 16) = v19;
      sub_1C442D110();
      sub_1C46CE408(v20, v21, v22, v23, v24, v25);
LABEL_5:

      if (!v3)
      {
        v27 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C44ADB10();
        LOBYTE(v32[0]) = *(v2 + v4);
        v31(v27, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v28, v29, v30, v6);
        sub_1C44A8814(v32, v27);
        sub_1C4420C3C(v27, &qword_1EC0B8568, &unk_1C4F319B0);
      }

      v26 = v0[1];

      result = v26();
      break;
    default:
      v32[0] = 0;
      v32[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA500, &qword_1C4F14230);
      v17 = sub_1C4F01198();
      MEMORY[0x1C6940010](v17);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44ABA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a1;
  v33 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1C4EFD548();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  type metadata accessor for EntityMatch(0);
  sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
  sub_1C4EFADF8();
  if (qword_1EDDF9200 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, qword_1EDE2DAE8);
  v44 = v17;
  v45 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v43);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
  switch(v18)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v20 = 0xE400000000000000;
      v21 = 1819047270;
      goto LABEL_7;
    case 2:
      v20 = 0xE500000000000000;
      v21 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v20 = 0xEA0000000000676ELL;
      v21 = 0x69686374614D6F74;
LABEL_7:
      v41 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69A0130];
      v39 = v21;
      v40 = v20;
      v47 = sub_1C4EFB298();
      v48 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v46);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v43);
      sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF70]);
      sub_1C4EFB438();
      (*(v9 + 8))(v16, v8);
      sub_1C440962C(v46);
      (*(v9 + 32))(v16, v13, v8);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v37, v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v23 = v35;
    v22 = v36;
    (*(v36 + 32))(v35, v5, v6);
    if (qword_1EDDF9208 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4EFBD38();
    v25 = sub_1C442B738(v24, qword_1EDE2DB00);
    v44 = v24;
    v45 = MEMORY[0x1E69A0050];
    v26 = sub_1C4422F90(v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = sub_1C4EFD3D8();
    v41 = MEMORY[0x1E69E6158];
    v42 = MEMORY[0x1E69A0130];
    v39 = v27;
    v40 = v28;
    v47 = sub_1C4EFB298();
    v48 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v46);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v43);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF70]);
    v29 = v34;
    sub_1C4EFB438();
    (*(v22 + 8))(v23, v6);
    (*(v9 + 8))(v16, v8);
    sub_1C440962C(v46);
    (*(v9 + 32))(v16, v29, v8);
  }

  v30 = v49;
  v31 = sub_1C4EFB898();
  result = (*(v9 + 8))(v16, v8);
  if (!v30)
  {
    *v33 = v31;
  }

  return result;
}

uint64_t sub_1C44AC19C(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v56 = a3;
  v53 = a6;
  v57 = a4;
  v11 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2E088);
  v18 = *(v13 + 16);
  v54 = a1;
  v18(v16, a1, v11);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v7;
    v22 = v21;
    v51 = swift_slowAlloc();
    v60 = v51;
    *v22 = 136315650;
    sub_1C44AC538(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v50 = v19;
    v23 = sub_1C4F02858();
    HIDWORD(v49) = v20;
    v25 = v24;
    (*(v13 + 8))(v16, v11);
    v26 = sub_1C441D828(v23, v25, &v60);
    v27 = a2;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v28 = sub_1C44A5D54(a2);
    v30 = sub_1C441D828(v28, v29, &v60);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v31 = v56;
    v58 = v56;
    v32 = v57;
    v59 = v57 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v33 = sub_1C4F01198();
    v35 = sub_1C441D828(v33, v34, &v60);

    *(v22 + 24) = v35;
    v36 = v50;
    _os_log_impl(&dword_1C43F8000, v50, BYTE4(v49), "GraphStore: tripleMatchingMap: e:%s p:%s t:%s", v22, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v37 = (*(v13 + 8))(v16, v11);
    v32 = v57;
    v31 = v56;
    v27 = a2;
  }

  MEMORY[0x1EEE9AC00](v37);
  v38 = v54;
  *(&v48 - 8) = v39;
  *(&v48 - 7) = v38;
  *(&v48 - 48) = v27;
  *(&v48 - 5) = v31;
  *(&v48 - 32) = v32 & 1;
  v40 = v53;
  *(&v48 - 3) = a5;
  *(&v48 - 2) = v40;

  sub_1C4418704(v55, (&v48 - 10), v41, v42, v43, v44, v45, v46, v48, v49);
}

uint64_t sub_1C44AC538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44AC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v69 = a8;
  v68 = a7;
  LODWORD(v75) = a6;
  v76 = a2;
  v77 = a5;
  v11 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v58 - v12;
  v14 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  v19 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = v58 - v20;
  v70 = type metadata accessor for EntityPair(0);
  MEMORY[0x1EEE9AC00](v70);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v87) = a4;

  v24 = v78;
  v25 = sub_1C44AD0F8(v23, a3, &v87, 1, v77, v75 & 1);
  if (v24)
  {
  }

  v27 = v25;
  v80 = a1;
  v64 = v18;
  v65 = v14;
  v60 = v13;
  v67 = a4;
  v61 = v11;
  v58[1] = type metadata accessor for ConstructionGraphTriple(0);
  v62 = type metadata accessor for EntityTriple(0);
  v63 = (v73 + 8);
  v59 = (v74 + 8);
  v28 = v72;
  v29 = v71;
  v30 = v70;
  v79 = v22;
  v66 = v27;
  while (1)
  {
    sub_1C44AD7D0();
    v31 = v67;
    if (sub_1C44157D4(v29, 1, v30) == 1)
    {

      return sub_1C4420C3C(v29, &unk_1EC0BCAC0, &qword_1C4F1F438);
    }

    sub_1C4471E9C(v29, v22);
    v85 = &type metadata for SourcedTripleColumn;
    v86 = sub_1C44964E4();
    LOBYTE(v84[0]) = 8;
    v32 = 0xE700000000000000;
    v33 = 0x6E776F6E6B6E75;
    v34 = v86;
    v78 = 0;
    switch(v31)
    {
      case 1:
        v32 = 0xE400000000000000;
        v33 = 1819047270;
        break;
      case 2:
        v32 = 0xE500000000000000;
        v33 = 0x61746C6564;
        break;
      case 3:
        v32 = 0xEA0000000000676ELL;
        v33 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v82 = MEMORY[0x1E69E6158];
    v83 = MEMORY[0x1E69A0130];
    v81[0] = v33;
    v81[1] = v32;
    v35 = sub_1C4EFB298();
    v88 = v35;
    v36 = MEMORY[0x1E699FE60];
    v89 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v87);
    sub_1C4EFBB28();
    sub_1C4420C3C(v81, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v84);
    v77 = type metadata accessor for EntityTriple;
    sub_1C44AC538(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
    sub_1C4EFAE28();
    sub_1C440962C(&v87);
    v85 = &type metadata for SourcedTripleColumn;
    v86 = v34;
    LOBYTE(v84[0]) = 0;
    v37 = *(v30 + 20);
    v38 = v28;
    v39 = v30;
    v40 = sub_1C4EFF0C8();
    v82 = v40;
    v74 = sub_1C44AC538(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
    v83 = v74;
    v41 = sub_1C4422F90(v81);
    v42 = *(v40 - 8);
    v75 = *(v42 + 16);
    v73 = v42 + 16;
    v75(v41, &v22[v37], v40);
    v76 = v35;
    v88 = v35;
    v89 = v36;
    sub_1C4422F90(&v87);
    sub_1C4EFBB28();
    sub_1C4420C3C(v81, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v84);
    sub_1C4401CBC(&qword_1EDDFA2C8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF70]);
    v43 = v64;
    v44 = v65;
    sub_1C4EFB438();
    v45 = *v63;
    (*v63)(v38, v44);
    sub_1C440962C(&v87);
    sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF60]);
    sub_1C44AC538(&qword_1EDDF8DA0, v77, &protocol conformance descriptor for EntityTriple);
    v46 = v78;
    v47 = sub_1C4EFAFE8();
    if (v46)
    {
      break;
    }

    v48 = v47;
    v45(v43, v44);
    v90 = 0;
    v49 = *(v39 + 24);
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v40, qword_1EDE2DC60);
    sub_1C44AC538(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
    v50 = v79;
    if (sub_1C4F010B8())
    {
      v51 = v80;
    }

    else
    {
      v52 = v48;
      v85 = sub_1C4EFBD38();
      v86 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v84);
      sub_1C4EFBD48();
      v82 = v40;
      v83 = v74;
      v53 = sub_1C4422F90(v81);
      v75(v53, (v50 + v49), v40);
      v88 = v76;
      v89 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v87);
      sub_1C4EFBB28();
      sub_1C4420C3C(v81, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v84);
      sub_1C44AC538(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
      v54 = v60;
      sub_1C4EFAE28();
      sub_1C440962C(&v87);
      sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530, MEMORY[0x1E699FF60]);
      sub_1C44AC538(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
      v51 = v80;
      v55 = v61;
      v56 = sub_1C4EFAFE8();
      (*v59)(v54, v55);
      v90 = v56;
      v48 = v52;
    }

    v57 = objc_autoreleasePoolPush();
    sub_1C44DC904(v68, v69, v48, &v90, v51, v51);
    v28 = v72;
    v29 = v71;
    v30 = v70;
    objc_autoreleasePoolPop(v57);

    v22 = v79;
    sub_1C44DBD04(v79, type metadata accessor for EntityPair);
  }

  v45(v43, v44);
  return sub_1C44DBD04(v79, type metadata accessor for EntityPair);
}

uint64_t sub_1C44AD0F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  v50 = a6;
  v46 = a5;
  v49 = a4;
  v52 = a1;
  v7 = sub_1C456902C(&qword_1EC0BE540, &qword_1C4F37368);
  sub_1C43FCDF8();
  v65 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v45 - v18;
  v48 = *a3;
  type metadata accessor for EntityPair(0);
  if (qword_1EDDFA120 != -1)
  {
    swift_once();
  }

  v19 = sub_1C4EFBD38();
  v20 = sub_1C442B738(v19, qword_1EDE2DCA8);
  v60 = v19;
  v61 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v59);
  v22 = *(v19 - 8);
  v23 = *(v22 + 16);
  v24 = v22 + 16;
  v23(v21, v20, v19);
  v25 = sub_1C4EFD3D8();
  v57 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69A0130];
  v55 = v25;
  v56 = v26;
  v27 = sub_1C4EFB298();
  v63 = v27;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v59);
  sub_1C44004F8();
  sub_1C4490890(v28, v29, &unk_1C4F36FC4);
  sub_1C4EFAE28();
  sub_1C440962C(v62);
  if (qword_1EDDFA118 != -1)
  {
    swift_once();
  }

  v30 = sub_1C442B738(v19, &unk_1EDE2DC90);
  v60 = v19;
  v61 = MEMORY[0x1E69A0050];
  v31 = sub_1C4422F90(v59);
  v23(v31, v30, v19);
  v32 = 0xE700000000000000;
  v33 = 0x6E776F6E6B6E75;
  v53 = v24;
  v54 = v23;
  switch(v48)
  {
    case 1:
      v32 = 0xE400000000000000;
      v33 = 1819047270;
      break;
    case 2:
      v32 = 0xE500000000000000;
      v33 = 0x61746C6564;
      break;
    case 3:
      v32 = 0xEA0000000000676ELL;
      v33 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v57 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69A0130];
  v55 = v33;
  v56 = v32;
  v63 = v27;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v59);
  sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368, MEMORY[0x1E699FF70]);
  sub_1C441731C(v62);
  v34 = *(v65 + 8);
  v34(v13, v7);
  sub_1C440962C(v62);
  if (qword_1EDDFA108 != -1)
  {
    swift_once();
  }

  v35 = sub_1C442B738(v19, &unk_1EDE2DC78);
  v60 = v19;
  v61 = MEMORY[0x1E69A0050];
  v36 = sub_1C4422F90(v59);
  v54(v36, v35, v19);
  v63 = v27;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C4EFBB38();
  sub_1C440962C(v59);
  v37 = v51;
  sub_1C4EFB438();
  v34(v16, v7);
  sub_1C440962C(v62);
  if ((v50 & 1) == 0)
  {
    if (qword_1EC0B6BA0 != -1)
    {
      swift_once();
    }

    v38 = sub_1C442B738(v19, qword_1EC1521B0);
    v60 = v19;
    v61 = MEMORY[0x1E69A0050];
    v39 = sub_1C4422F90(v59);
    v54(v39, v38, v19);
    v57 = MEMORY[0x1E69E63B0];
    v58 = MEMORY[0x1E69A0160];
    v55 = v46;
    v63 = v27;
    v64 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v62);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(&v55);
    sub_1C440962C(v59);
    v40 = v47;
    sub_1C441731C(v62);
    v34(v37, v7);
    sub_1C440962C(v62);
    (*(v65 + 32))(v37, v40, v7);
  }

  sub_1C4401CBC(&qword_1EDDFA308, &qword_1EC0BE540, &qword_1C4F37368, MEMORY[0x1E699FF60]);
  sub_1C44004F8();
  sub_1C4490890(v41, v42, &unk_1C4F36F7C);
  v43 = sub_1C4EFAFD8();
  v34(v37, v7);
  return v43;
}

void sub_1C44AD7D0()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA3C8, &unk_1EC0BCAD0, &unk_1C4F29BD0);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for EntityPair(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFA3D8, &unk_1EC0BCAD0, &unk_1C4F29BD0);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityPair(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCAC0, &qword_1C4F1F438);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C44AD950()
{
  sub_1C43FC36C();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFF0C8();
    sub_1C43FCF8C();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = v0 + 1;
      return;
    }

    sub_1C442F908();
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C44ADA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1C4404F74();
  }

  else
  {
    sub_1C4EFF0C8();
    sub_1C43FCF8C();
    if (*(v9 + 84) != v3)
    {
      v11 = *(v4 + *(a3 + 28));
      if (v11 >= 2)
      {
        return sub_1C4424974(v11);
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_1C442F908();
  }

  return sub_1C44157D4(v7, v3, v8);
}

void sub_1C44ADB10()
{
  sub_1C43FBD3C();
  sub_1C4435804(v7, v8, v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1C4409ACC(v11, v57);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  v15 = type metadata accessor for PassthroughMatcher(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C444BFD8();
  }

  else
  {
    v18 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v5 = sub_1C4475260();
    sub_1C442C5A4();
    v22 = sub_1C4401CBC(v19, v20, &dword_1C4F141D0, v21);
    sub_1C4461C04(v22);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v58);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v23 = sub_1C4F00978();
        sub_1C43FCEE8(v23, qword_1EDE2DE10);
        v24 = sub_1C44623A0();
        sub_1C4430900(v24, v4);
        v25 = sub_1C4F00968();
        sub_1C4F01CD8();
        v26 = sub_1C44016D0();
        if (os_log_type_enabled(v26, v27))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v28 = swift_slowAlloc();
          sub_1C44305A4(v28);
          *v5 = 136315138;
          v29 = sub_1C43FE99C();
          sub_1C4430900(v29, v30);
          sub_1C447E868(v4, type metadata accessor for PassthroughMatcher);
          sub_1C44AB4C4();
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v4, v32);
          sub_1C4404CE0();

          *(v5 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v6);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          v36 = sub_1C44068C0();
          MEMORY[0x1C6942830](v36);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v58);
  }

  sub_1C4656BA4();
  sub_1C44AE184(v37);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v59, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v38 = sub_1C440F3CC();
  v39(v38);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v40 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v15 + 20)))
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        sub_1C44C0438();
        sub_1C43FCE50();
        v41 = sub_1C440EDB0();
        v42(v41);
        sub_1C441925C();
        sub_1C4656BC8(v43);
        *(v6 + *(v12 + 20)) = 2;
        sub_1C441C838();
        sub_1C4457890();
        sub_1C4460A18();
        v44 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v45 = sub_1C4404CB4(v44);
        sub_1C4412DCC(v45, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v46 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C44C0438();
        sub_1C43FCE50();
        v48 = sub_1C4422A44();
        v49(v48);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v50);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        sub_1C4457890();
        sub_1C4460A18();
        v51 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v52 = sub_1C4405904(v51);
        sub_1C44068A0(v52, xmmword_1C4F0D130);
        sub_1C4430900(v3, v53);
        v54 = sub_1C447EF78();
        sub_1C449498C(v54);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v46 = v3;
      }

      sub_1C447E868(v46, v47);
      v55 = sub_1C43FC0A8();
      sub_1C441DFEC(v55, v56);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44ADFF0()
{

  return sub_1C4EF9C18();
}

__n128 *sub_1C44AE010(__n128 *result, __n128 a2)
{
  *(v2 - 112) = a2;
  result[1] = a2;
  return result;
}

uint64_t sub_1C44AE01C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  v2[1] = a1;

  return sub_1C4EF9CD8();
}

unint64_t sub_1C44AE054()
{
  v3 = (v0 + *(v1 + 28));
  v4 = *v3;
  v5 = v3[1];
  *(v2 - 88) = *v3;
  *(v2 - 80) = v5;
  *(v2 - 65) = 3;
  sub_1C4431E64(v4, v5);

  return sub_1C446E5F8();
}

uint64_t sub_1C44AE090()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 384);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44AE0B0()
{

  return sub_1C44BCC4C(v0, type metadata accessor for SourceIdPrefix);
}

uint64_t sub_1C44AE16C()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
  return 0;
}

uint64_t sub_1C44AE184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-1] - v4;
  v6 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PassthroughMatcher(0);
  switch(*(v2 + *(v15 + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF4ED8, type metadata accessor for PassthroughMatcher, &protocol conformance descriptor for PassthroughMatcher);
        v17 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v17);
        sub_1C44FEF34(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v18 = &unk_1EC0BA4B8;
          v19 = &unk_1C4F16F60;
          v20 = v11;
LABEL_8:
          result = sub_1C4420C3C(v20, v18, v19);
          v23 = v28;
          *(v28 + 32) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          return result;
        }

        sub_1C449F338(v11, v14);
        v24 = v28;
        *(v28 + 24) = v12;
        v24[4] = &off_1F43EE918;
        v25 = sub_1C4422F90(v24);
        v26 = v14;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF4ED8, type metadata accessor for PassthroughMatcher, &protocol conformance descriptor for PassthroughMatcher);
        v21 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v21);
        sub_1C449D50C(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v5, 1, v6) == 1)
        {
          v18 = &unk_1EC0BAC20;
          v19 = &unk_1C4F141E0;
          v20 = v5;
          goto LABEL_8;
        }

        sub_1C449F338(v5, v8);
        v27 = v28;
        *(v28 + 24) = v6;
        v27[4] = &off_1F43EE970;
        v25 = sub_1C4422F90(v27);
        v26 = v8;
      }

      return sub_1C449F338(v26, v25);
  }
}

uint64_t Resolver.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for Resolver(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t Resolver.source.getter()
{
  v2 = sub_1C44059B8();
  type metadata accessor for Resolver(v2);
  sub_1C44201A8();
  return sub_1C4471AF0(v1 + v3, v0);
}

uint64_t Resolver.stageName.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for Resolver(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

void sub_1C44AE730()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C4433190();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4414930();
  sub_1C4440948();
  v6 = type metadata accessor for Resolver(0);
  sub_1C4429020(v6);
  v7 = sub_1C456902C(&qword_1EC0BA4F0, &qword_1C4F14220);
  v8 = sub_1C445BBF0(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  v9 = sub_1C44A3BBC(*(v0 + 24));
  MEMORY[0x1C6940010](v9);

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v10);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v11);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v12 = sub_1C441B798();
  v13(v12);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C44AE8A4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C44AE8E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C44AE900()
{
  v3 = *(v1 - 104);

  return sub_1C4471BAC(v3, v0);
}

uint64_t sub_1C44AE940@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C44AE960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Resolver.execute()();
}

uint64_t Resolver.execute()()
{
  v1[4] = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  v1[5] = swift_task_alloc();
  v3 = sub_1C4EFD548();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Source(0);
  v1[9] = v4;
  sub_1C43FBD18(v4);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44AEB0C, 0, 0);
}

uint64_t sub_1C44AEB0C()
{
  v163 = v0;
  v1 = v0 + 2;
  v2 = v0[4];
  v3 = type metadata accessor for PhaseStores(0);
  v4 = type metadata accessor for Resolver(0);
  v147 = *(v4 + 28);
  LOBYTE(v162) = *(v2 + v147);
  v5 = v162;
  sub_1C44AF8F4(&v162);
  v6 = *(v2 + *(v3 + 36));
  v7 = *(v6 + 16);
  switch(v5)
  {
    case 2:

      goto LABEL_5;
    default:
      v8 = sub_1C4F02938();

      if (v8)
      {

LABEL_5:
        v7 = *(v6 + 24);
      }

      v156 = v7;
      v9 = (v0[4] + *(v4 + 20));
      sub_1C44201A8();
      sub_1C4471AF0(v9, v10);
      if (qword_1EDDFED28 != -1)
      {
        sub_1C440FADC(&qword_1EDDFED28);
      }

      v11 = v0[10];
      v12 = sub_1C442B738(v0[9], &unk_1EDDFD088);
      v13 = v12[1];
      v14 = v11[1];
      v15 = *v12 == *v11 && v13 == v14;
      if (!v15 && (sub_1C440FAC0(*v12, v13) & 1) == 0)
      {
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4410520(&qword_1EDDFD0D0);
        }

        v16 = sub_1C44008C8(v0[9], qword_1EDDFD0D8);
        v18 = v15 && v17 == v14;
        if (!v18 && (sub_1C440FAC0(v16, v17) & 1) == 0)
        {
          if (qword_1EDDFED08 != -1)
          {
            sub_1C440B19C(&qword_1EDDFED08);
          }

          v19 = sub_1C44008C8(v0[9], qword_1EDDFED10);
          v21 = v15 && v20 == v14;
          if (!v21 && (sub_1C440FAC0(v19, v20) & 1) == 0)
          {
            if (qword_1EDDFED40 != -1)
            {
              sub_1C440604C(&qword_1EDDFED40);
            }

            v22 = sub_1C44008C8(v0[9], qword_1EDDFD2A8);
            v24 = v15 && v23 == v14;
            if (!v24 && (sub_1C440FAC0(v22, v23) & 1) == 0)
            {
              if (qword_1EDDFD268 != -1)
              {
                sub_1C4404CEC(&qword_1EDDFD268);
              }

              v25 = sub_1C44008C8(v0[9], &qword_1EDDFD270);
              v27 = v15 && v26 == v14;
              if (!v27 && (sub_1C440FAC0(v25, v26) & 1) == 0)
              {
                if (qword_1EDDFD110 != -1)
                {
                  sub_1C4403664(&qword_1EDDFD110);
                }

                v28 = sub_1C44008C8(v0[9], qword_1EDDFD118);
                v30 = v15 && v29 == v14;
                if (!v30 && (sub_1C440FAC0(v28, v29) & 1) == 0)
                {
                  if (qword_1EDDFD068 != -1)
                  {
                    sub_1C44123D8(&qword_1EDDFD068);
                  }

                  v31 = sub_1C44008C8(v0[9], qword_1EDDFD070);
                  v33 = v15 && v32 == v14;
                  if (!v33 && (sub_1C440FAC0(v31, v32) & 1) == 0)
                  {
                    if (qword_1EDDFD130 != -1)
                    {
                      sub_1C44123B8(&qword_1EDDFD130);
                    }

                    v34 = sub_1C44008C8(v0[9], qword_1EDDFD138);
                    v36 = v15 && v35 == v14;
                    if (!v36 && (sub_1C440FAC0(v34, v35) & 1) == 0)
                    {
                      v37 = v2;
                      v38 = v0;
                      if (qword_1EDDFD0A8 != -1)
                      {
                        sub_1C440FA20(&qword_1EDDFD0A8);
                      }

                      v39 = sub_1C4433704();
                      v40 = sub_1C44008C8(v39, qword_1EDDFD0B0);
                      v42 = v15 && v41 == v14;
                      if (!v42 && (sub_1C440FAC0(v40, v41) & 1) == 0)
                      {
                        if (qword_1EDDFD178 != -1)
                        {
                          sub_1C4426D64(&qword_1EDDFD178);
                        }

                        v43 = sub_1C4433704();
                        v44 = sub_1C44008C8(v43, &qword_1EDDFD180);
                        v46 = v15 && v45 == v14;
                        if (!v46 && (sub_1C440FAC0(v44, v45) & 1) == 0)
                        {
                          if (qword_1EDDFED38 != -1)
                          {
                            sub_1C443FF4C(&qword_1EDDFED38);
                          }

                          v47 = sub_1C4433704();
                          v48 = sub_1C44008C8(v47, qword_1EDDFD0F0);
                          v50 = v15 && v49 == v14;
                          if (!v50 && (sub_1C440FAC0(v48, v49) & 1) == 0)
                          {
                            if (qword_1EDDFD150 != -1)
                            {
                              sub_1C4416380(&qword_1EDDFD150);
                            }

                            v51 = sub_1C4433704();
                            v52 = sub_1C44008C8(v51, qword_1EDDFD158);
                            v54 = v15 && v53 == v14;
                            if (!v54 && (sub_1C440FAC0(v52, v53) & 1) == 0)
                            {
                              if (qword_1EDDFD2F0 != -1)
                              {
                                sub_1C44253D4(&qword_1EDDFD2F0);
                              }

                              v55 = sub_1C4433704();
                              v56 = sub_1C44008C8(v55, qword_1EDDFD2F8);
                              v58 = v15 && v57 == v14;
                              if (!v58 && (sub_1C440FAC0(v56, v57) & 1) == 0)
                              {
                                if (qword_1EDDFD218 != -1)
                                {
                                  sub_1C441BC54(&qword_1EDDFD218);
                                }

                                v59 = sub_1C4433704();
                                v60 = sub_1C44008C8(v59, &qword_1EDDFD220);
                                v62 = v15 && v61 == v14;
                                if (!v62 && (sub_1C440FAC0(v60, v61) & 1) == 0)
                                {
                                  if (qword_1EDDFD240 != -1)
                                  {
                                    sub_1C441E650(&qword_1EDDFD240);
                                  }

                                  v63 = sub_1C4433704();
                                  v64 = sub_1C44008C8(v63, &qword_1EDDFD248);
                                  v66 = v15 && v65 == v14;
                                  if (!v66 && (sub_1C440FAC0(v64, v65) & 1) == 0)
                                  {
                                    if (qword_1EDDFD318 != -1)
                                    {
                                      sub_1C4409FF4(&qword_1EDDFD318);
                                    }

                                    v67 = sub_1C4433704();
                                    v68 = sub_1C44008C8(v67, qword_1EDDFD320);
                                    v70 = v15 && v69 == v14;
                                    if (!v70 && (sub_1C440FAC0(v68, v69) & 1) == 0)
                                    {
                                      if (qword_1EDDFD340 != -1)
                                      {
                                        sub_1C4414E6C(&qword_1EDDFD340);
                                      }

                                      v71 = sub_1C4433704();
                                      v72 = sub_1C44008C8(v71, qword_1EDDFD348);
                                      v74 = v15 && v73 == v14;
                                      if (!v74 && (sub_1C440FAC0(v72, v73) & 1) == 0)
                                      {
                                        if (qword_1EDDFD2C8 != -1)
                                        {
                                          sub_1C442E4E0(&qword_1EDDFD2C8);
                                        }

                                        v75 = sub_1C4433704();
                                        v76 = sub_1C44008C8(v75, qword_1EDDFD2D0);
                                        v78 = v15 && v77 == v14;
                                        if (!v78 && (sub_1C440FAC0(v76, v77) & 1) == 0)
                                        {
                                          if (qword_1EDDFD288 != -1)
                                          {
                                            sub_1C440602C(&qword_1EDDFD288);
                                          }

                                          v79 = sub_1C4433704();
                                          v80 = sub_1C44008C8(v79, &qword_1EDDFD290);
                                          v82 = v15 && v81 == v14;
                                          if (!v82 && (sub_1C440FAC0(v80, v81) & 1) == 0)
                                          {
                                            if (qword_1EDDFD1F0 != -1)
                                            {
                                              sub_1C442BE94(&qword_1EDDFD1F0);
                                            }

                                            v83 = sub_1C4433704();
                                            v84 = sub_1C44008C8(v83, &qword_1EDDFD1F8);
                                            v86 = v15 && v85 == v14;
                                            if (!v86 && (sub_1C440FAC0(v84, v85) & 1) == 0)
                                            {
                                              if (qword_1EDDFD1A0 != -1)
                                              {
                                                sub_1C441CD0C(&qword_1EDDFD1A0);
                                              }

                                              v87 = sub_1C4433704();
                                              v88 = sub_1C44008C8(v87, &qword_1EDDFD1A8);
                                              v90 = v15 && v89 == v14;
                                              if (!v90 && (sub_1C440FAC0(v88, v89) & 1) == 0)
                                              {
                                                if (qword_1EDDFD1C8 != -1)
                                                {
                                                  sub_1C4435324(&qword_1EDDFD1C8);
                                                }

                                                v91 = sub_1C4433704();
                                                v92 = sub_1C44008C8(v91, &qword_1EDDFD1D0);
                                                v94 = v15 && v93 == v14;
                                                if (!v94 && (sub_1C440FAC0(v92, v93) & 1) == 0)
                                                {
                                                  v144 = sub_1C4AE0FC8(v9);
                                                  if (v144)
                                                  {
                                                    sub_1C441A3AC();
                                                    sub_1C447EB38(v121, v122);
                                                    v161 = *(v144 + 16);
                                                    if (v161)
                                                    {
                                                      v151 = *(v2 + v147);
                                                      v123 = v0[7];
                                                      v124 = *(v123 + 16);
                                                      v123 += 16;
                                                      v158 = v124;
                                                      v125 = v144 + ((*(v123 + 64) + 32) & ~*(v123 + 64));
                                                      v153 = *(v123 + 56);
                                                      v141 = (v123 - 8);
                                                      v155 = v125;
                                                      v149 = *(v144 + 16);
                                                      do
                                                      {
                                                        v126 = v38[8];
                                                        v127 = v38[5];
                                                        v128 = v38[6];
                                                        v143 = v38[4];
                                                        v146 = v128;
                                                        v158(v126, v125, v128);
                                                        v38[2] = MEMORY[0x1E69E7CC8];
                                                        LOBYTE(v162) = v151;
                                                        v158(v127, v126, v128);
                                                        sub_1C440BAA8(v127, 0, 1, v128);
                                                        v129 = sub_1C44B0950();
                                                        sub_1C4420C3C(v127, &qword_1EC0B8568, &unk_1C4F319B0);
                                                        v130 = sub_1C44B1138(v129);
                                                        v132 = v131;

                                                        LOBYTE(v162) = v151;
                                                        v133 = swift_task_alloc();
                                                        v133[2] = v132;
                                                        v133[3] = v130;
                                                        v133[4] = v143;
                                                        v133[5] = v126;
                                                        v133[6] = v1;
                                                        v133[7] = 100;
                                                        v133[8] = v156;
                                                        sub_1C44B4478(v126, &v162, 0, 1, sub_1C44E493C, v133);

                                                        (*v141)(v126, v146);
                                                        v125 += v153;
                                                        --v149;
                                                      }

                                                      while (v149);
                                                      v2 = v37;
                                                      v134 = *(v37 + v147);
                                                      v0 = v38;
                                                      do
                                                      {
                                                        v135 = v38[5];
                                                        v136 = v38[6];
                                                        LOBYTE(v162) = v134;
                                                        v158(v135, v155, v136);
                                                        v137 = sub_1C43FC024();
                                                        sub_1C440BAA8(v137, v138, v139, v136);
                                                        sub_1C44ABA54(&v162, v135);
                                                        sub_1C4420C3C(v135, &qword_1EC0B8568, &unk_1C4F319B0);
                                                        v155 += v153;
                                                        --v161;
                                                      }

                                                      while (v161);
                                                    }

                                                    goto LABEL_167;
                                                  }

LABEL_170:
                                                  sub_1C442AC3C();
                                                  sub_1C441D374();
                                                  MEMORY[0x1C6940010](*v9, v9[1]);
                                                  MEMORY[0x1C6940010](v0 + 1, 0x80000001C4FB0ED0);
                                                  return sub_1C4F024A8();
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
                    }
                  }
                }
              }
            }
          }
        }
      }

      sub_1C441A3AC();
      sub_1C447EB38(v95, v96);
      v97 = sub_1C44AFE00(v9);
      if (!v97)
      {
        goto LABEL_170;
      }

      v98 = v97[1].n128_u64[0];
      if (v98)
      {
        v145 = v2;
        v152 = *(v2 + v147);
        v99 = v0[7];
        v100 = v97 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        v148 = v0 + 3;
        v150 = (v99 + 8);
        v140 = v100;
        v142 = v97[1].n128_u64[0];
        v154 = v0;
        v159 = *(v99 + 72);
        v160 = *(v99 + 16);
        do
        {
          v101 = v0[8];
          v102 = v0[5];
          v103 = v0[6];
          v157 = v103;
          v104 = v0[4];
          v160(v101, v100, v103);
          v0[3] = MEMORY[0x1E69E7CC8];
          LOBYTE(v162) = v152;
          v160(v102, v101, v103);
          sub_1C440BAA8(v102, 0, 1, v103);
          v105 = sub_1C44B0950();
          sub_1C4420C3C(v102, &qword_1EC0B8568, &unk_1C4F319B0);
          v106 = v104;
          v107 = sub_1C44B1138(v105);
          v109 = v108;

          LOBYTE(v162) = v152;
          v110 = swift_task_alloc();
          v110[2] = v109;
          v110[3] = v107;
          v110[4] = v106;
          v110[5] = v101;
          v110[6] = v148;
          v110[7] = 100;
          v110[8] = v156;
          sub_1C44B4478(v101, &v162, 0, 1, sub_1C44E4940, v110);
          v0 = v154;

          (*v150)(v101, v157);
          v100 += v159;
          --v98;
        }

        while (v98);
        v111 = *(v145 + v147);
        v113 = v140;
        v112 = v142;
        do
        {
          v114 = v154[5];
          v115 = v154[6];
          LOBYTE(v162) = v111;
          v160(v114, v113, v115);
          v116 = sub_1C43FC024();
          sub_1C440BAA8(v116, v117, v118, v115);
          sub_1C44ABA54(&v162, v114);
          sub_1C4420C3C(v114, &qword_1EC0B8568, &unk_1C4F319B0);
          v113 += v159;
          --v112;
        }

        while (v112);
        v2 = v145;
      }

LABEL_167:

      sub_1C4EF9AE8();
      sub_1C44B5E0C();
      LOBYTE(v162) = *(v2 + v147);
      sub_1C4495FC0(&v162);

      v119 = v0[1];

      return v119();
  }
}

uint64_t sub_1C44AF8F4(_BYTE *a1)
{
  v7[16] = *a1;

  v1 = sub_1C443DD50(sub_1C44AFCEC, v7);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1C43F8000, v3, v4, "GraphStore: clearTranslatedEntityTriples: %ld deleted.", v5, 0xCu);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1C44AFA30@<X0>(unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v4 = a2;
  v5 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-1] - v10;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44AFD28();
  sub_1C4EFADF8();
  if (v4 != 4)
  {
    v18[3] = &type metadata for SourcedTripleColumn;
    v18[4] = sub_1C44964E4();
    LOBYTE(v18[0]) = 8;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(v4)
    {
      case 1:
        v12 = 0xE400000000000000;
        v13 = 1819047270;
        break;
      case 2:
        v12 = 0xE500000000000000;
        v13 = 0x61746C6564;
        break;
      case 3:
        v12 = 0xEA0000000000676ELL;
        v13 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v17[3] = MEMORY[0x1E69E6158];
    v17[4] = MEMORY[0x1E69A0130];
    v17[0] = v13;
    v17[1] = v12;
    v19[3] = sub_1C4EFB298();
    v19[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v19);
    sub_1C4EFBB28();
    sub_1C44967E0(v17);
    sub_1C440962C(v18);
    sub_1C44AFD9C();
    sub_1C4EFB438();
    (*(v6 + 8))(v11, v5);
    sub_1C440962C(v19);
    (*(v6 + 32))(v11, v8, v5);
  }

  v14 = sub_1C4EFB898();
  result = (*(v6 + 8))(v11, v5);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

unint64_t sub_1C44AFD28()
{
  result = qword_1EDDF3A48;
  if (!qword_1EDDF3A48)
  {
    type metadata accessor for TranslatedEntityTriple(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A48);
  }

  return result;
}

unint64_t sub_1C44AFD9C()
{
  result = qword_1EDDFA288;
  if (!qword_1EDDFA288)
  {
    sub_1C4572308(&qword_1EC0BE558, &unk_1C4F54060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA288);
  }

  return result;
}

__n128 *sub_1C44AFE00(uint64_t a1)
{
  v2 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = type metadata accessor for Source(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = (v12 - v11);
  sub_1C44201A8();
  sub_1C4471AF0(a1, v13);
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C(&qword_1EDDFED08);
  }

  v14 = sub_1C442B738(v9, qword_1EDDFED10);
  v15 = v14[1];
  v16 = v13[1];
  v17 = *v14 == *v13 && v15 == v16;
  if (!v17)
  {
    v18 = sub_1C440E6E4(*v14, v15);
    if ((v18 & 1) == 0)
    {
      if (qword_1EDDFED40 != -1)
      {
        v18 = sub_1C440604C(&qword_1EDDFED40);
      }

      v19 = sub_1C442D238(v18, qword_1EDDFD2A8);
      if (!v17 || v20 != v16)
      {
        v22 = sub_1C440E6E4(v19, v20);
        if ((v22 & 1) == 0)
        {
          if (qword_1EDDFED28 != -1)
          {
            v22 = sub_1C440FADC(&qword_1EDDFED28);
          }

          v30 = sub_1C442D238(v22, &unk_1EDDFD088);
          v32 = v17 && v31 == v16;
          if (v32 || (v33 = sub_1C440E6E4(v30, v31), (v33 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v13, v34);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = swift_allocObject();
            sub_1C44328FC(v28, xmmword_1C4F0D480);
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C4EFD4A8();
            sub_1C441B018();
LABEL_25:
            sub_1C4EFD4C8();
            return v28;
          }

          if (qword_1EDDFD0D0 != -1)
          {
            v33 = sub_1C4410520(&qword_1EDDFD0D0);
          }

          v35 = sub_1C442D238(v33, qword_1EDDFD0D8);
          v37 = v17 && v36 == v16;
          if (v37 || (v38 = sub_1C440E6E4(v35, v36), (v38 & 1) != 0))
          {
LABEL_33:
            sub_1C441A3AC();
            sub_1C447EB38(v13, v39);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = sub_1C44341E8();
            sub_1C44328FC(v28, xmmword_1C4F0CE60);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
            return v28;
          }

          if (qword_1EDDFD268 != -1)
          {
            v38 = sub_1C4404CEC(&qword_1EDDFD268);
          }

          v40 = sub_1C442D238(v38, &qword_1EDDFD270);
          v42 = v17 && v41 == v16;
          if (v42 || (v43 = sub_1C440E6E4(v40, v41), (v43 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v13, v44);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = sub_1C44341E8();
            sub_1C44328FC(v28, xmmword_1C4F0CE60);
            _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C4EFD3E8();
            return v28;
          }

          if (qword_1EDDFD110 != -1)
          {
            v43 = sub_1C4403664(&qword_1EDDFD110);
          }

          v45 = sub_1C442D238(v43, qword_1EDDFD118);
          v47 = v17 && v46 == v16;
          if (v47 || (v48 = sub_1C440E6E4(v45, v46), (v48 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v13, v49);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = swift_allocObject();
            sub_1C44328FC(v28, xmmword_1C4F0D480);
            sub_1C4EFCF28();
            sub_1C4EFD1C8();
            sub_1C4EFD4C8();
            sub_1C441B018();
LABEL_58:
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            return v28;
          }

          if (qword_1EDDFD068 != -1)
          {
            v48 = sub_1C44123D8(&qword_1EDDFD068);
          }

          v50 = sub_1C442D238(v48, qword_1EDDFD070);
          v52 = v17 && v51 == v16;
          if (v52 || (v53 = sub_1C440E6E4(v50, v51), (v53 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v13, v54);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = sub_1C4418534();
            sub_1C44328FC(v28, xmmword_1C4F0C890);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
            goto LABEL_58;
          }

          if (qword_1EDDFD130 != -1)
          {
            v53 = sub_1C44123B8(&qword_1EDDFD130);
          }

          v55 = sub_1C442D238(v53, qword_1EDDFD138);
          v57 = v17 && v56 == v16;
          if (v57 || (v58 = sub_1C440E6E4(v55, v56), (v58 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v13, v59);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v28 = sub_1C4418534();
            sub_1C44328FC(v28, xmmword_1C4F0C890);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
LABEL_67:
            sub_1C4EFCF48();
            return v28;
          }

          if (qword_1EDDFD178 != -1)
          {
            v58 = sub_1C4426D64(&qword_1EDDFD178);
          }

          v60 = sub_1C442D238(v58, &qword_1EDDFD180);
          if (!v17 || v61 != v16)
          {
            v63 = sub_1C440E6E4(v60, v61);
            if ((v63 & 1) == 0)
            {
              if (qword_1EDDFD0A8 != -1)
              {
                v63 = sub_1C440FA20(&qword_1EDDFD0A8);
              }

              v64 = sub_1C442D238(v63, qword_1EDDFD0B0);
              if (!v17 || v65 != v16)
              {
                v67 = sub_1C440E6E4(v64, v65);
                if ((v67 & 1) == 0)
                {
                  if (qword_1EDDFD218 != -1)
                  {
                    v67 = sub_1C441BC54(&qword_1EDDFD218);
                  }

                  v68 = sub_1C442D238(v67, &qword_1EDDFD220);
                  if (!v17 || v69 != v16)
                  {
                    v71 = sub_1C440E6E4(v68, v69);
                    if ((v71 & 1) == 0)
                    {
                      if (qword_1EDDFED38 != -1)
                      {
                        v71 = sub_1C443FF4C(&qword_1EDDFED38);
                      }

                      v74 = sub_1C442D238(v71, qword_1EDDFD0F0);
                      v76 = v17 && v75 == v16;
                      if (v76 || (v77 = sub_1C440E6E4(v74, v75), (v77 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v13, v78);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v28 = sub_1C44341E8();
                        sub_1C44328FC(v28, xmmword_1C4F0CE60);
                        sub_1C4EFD4C8();
                        goto LABEL_67;
                      }

                      if (qword_1EDDFD150 != -1)
                      {
                        v77 = sub_1C4416380(&qword_1EDDFD150);
                      }

                      v79 = sub_1C442D238(v77, qword_1EDDFD158);
                      v81 = v17 && v80 == v16;
                      if (v81 || (v82 = sub_1C440E6E4(v79, v80), (v82 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v13, v83);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v28 = sub_1C4418534();
                        sub_1C44328FC(v28, xmmword_1C4F0C890);
                        sub_1C4EFCF28();
                        sub_1C4EFD4C8();
                        goto LABEL_58;
                      }

                      if (qword_1EDDFD2F0 != -1)
                      {
                        v82 = sub_1C44253D4(&qword_1EDDFD2F0);
                      }

                      v84 = sub_1C442D238(v82, qword_1EDDFD2F8);
                      v86 = v17 && v85 == v16;
                      if (v86 || (v87 = sub_1C440E6E4(v84, v85), (v87 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v13, v88);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v28 = sub_1C44341E8();
                        sub_1C44328FC(v28, xmmword_1C4F0CE60);
                        sub_1C4EFD538();
                        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
                        return v28;
                      }

                      if (qword_1EDDFD240 != -1)
                      {
                        v87 = sub_1C441E650(&qword_1EDDFD240);
                      }

                      v89 = sub_1C442D238(v87, &qword_1EDDFD248);
                      v91 = v17 && v90 == v16;
                      if (v91 || (v92 = sub_1C440E6E4(v89, v90), (v92 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v13, v93);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v28 = sub_1C44341E8();
                        sub_1C44328FC(v28, xmmword_1C4F0CE60);
                        sub_1C4EFCED8();
                        goto LABEL_25;
                      }

                      if (qword_1EDDFD318 != -1)
                      {
                        v92 = sub_1C4409FF4(&qword_1EDDFD318);
                      }

                      v94 = sub_1C442D238(v92, qword_1EDDFD320);
                      v96 = v17 && v95 == v16;
                      if (v96 || (v97 = sub_1C440E6E4(v94, v95), (v97 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v13, v98);
                        v99 = sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        v28 = sub_1C442F368(v99);
                        *(v28 + 16) = xmmword_1C4F0D130;
                        sub_1C4EFD1E8();
                        return v28;
                      }

                      if (qword_1EDDFD340 != -1)
                      {
                        v97 = sub_1C4414E6C(&qword_1EDDFD340);
                      }

                      v100 = sub_1C442D238(v97, qword_1EDDFD348);
                      if (v17 && v101 == v16)
                      {
                        goto LABEL_33;
                      }

                      v103 = sub_1C440E6E4(v100, v101);
                      if (v103)
                      {
                        goto LABEL_33;
                      }

                      if (qword_1EDDFD2C8 != -1)
                      {
                        v103 = sub_1C442E4E0(&qword_1EDDFD2C8);
                      }

                      v104 = sub_1C442D238(v103, qword_1EDDFD2D0);
                      if (!v17 || v105 != v16)
                      {
                        v107 = sub_1C440E6E4(v104, v105);
                        if ((v107 & 1) == 0)
                        {
                          if (qword_1EDDFD288 != -1)
                          {
                            v107 = sub_1C440602C(&qword_1EDDFD288);
                          }

                          v108 = sub_1C442D238(v107, &qword_1EDDFD290);
                          if (v17 && v109 == v16)
                          {
                            goto LABEL_173;
                          }

                          v111 = sub_1C440E6E4(v108, v109);
                          if (v111)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1F0 != -1)
                          {
                            v111 = sub_1C442BE94(&qword_1EDDFD1F0);
                          }

                          v112 = sub_1C442D238(v111, &qword_1EDDFD1F8);
                          if (v17 && v113 == v16)
                          {
                            goto LABEL_173;
                          }

                          v115 = sub_1C440E6E4(v112, v113);
                          if (v115)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1A0 != -1)
                          {
                            v115 = sub_1C441CD0C(&qword_1EDDFD1A0);
                          }

                          v116 = sub_1C442D238(v115, &qword_1EDDFD1A8);
                          if (v17 && v117 == v16)
                          {
                            goto LABEL_173;
                          }

                          v119 = sub_1C440E6E4(v116, v117);
                          if (v119)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1C8 != -1)
                          {
                            v119 = sub_1C4435324(&qword_1EDDFD1C8);
                          }

                          v120 = sub_1C442D238(v119, &qword_1EDDFD1D0);
                          if (v17 && v121 == v16)
                          {
LABEL_173:
                            sub_1C441A3AC();
                            sub_1C447EB38(v13, v125);
                          }

                          else
                          {
                            v123 = sub_1C440E6E4(v120, v121);
                            sub_1C441A3AC();
                            sub_1C447EB38(v13, v124);
                            if ((v123 & 1) == 0)
                            {
                              return 0;
                            }
                          }

                          sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                          sub_1C440B188();
                          v28 = swift_allocObject();
                          sub_1C44328FC(v28, xmmword_1C4F0F830);
                          sub_1C4EFCEF8();
                          sub_1C4EFD428();
                          _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
                          sub_1C441B018();
                          sub_1C4EFD4C8();
                          sub_1C4EFD218();
                          sub_1C4EFD4D8();
                          sub_1C4EFCEE8();
                          return v28;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          sub_1C441A3AC();
          sub_1C447EB38(v13, v72);
          v73 = sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
          v28 = sub_1C442F368(v73);
          *(v28 + 16) = xmmword_1C4F0D130;
          goto LABEL_25;
        }
      }
    }
  }

  sub_1C441A3AC();
  sub_1C447EB38(v13, v23);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C440B188();
  v24 = swift_allocObject();
  sub_1C44328FC(v24, xmmword_1C4F3B920);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD4C8();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C441B018();
  sub_1C4EFCEC8();
  sub_1C4EFCFC8();
  sub_1C4EFD498();
  sub_1C4EFD4E8();
  sub_1C4EFD538();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v25 = sub_1C4EFD0A8();
  v26 = *(v4 + 8);
  v26(v8, v2);
  v126 = v24;
  sub_1C49D3E5C(v25);
  sub_1C4EFCFB8();
  v27 = sub_1C4EFD0A8();
  v26(v8, v2);
  sub_1C49D3E5C(v27);
  return v126;
}

uint64_t sub_1C44B0950()
{

  v0 = sub_1C440CABC();
  v2 = sub_1C44B09C4(v0, v1);

  return v2;
}

uint64_t sub_1C44B0A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a1;
  v33 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1C4EFD548();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  type metadata accessor for EntityMatch(0);
  sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
  sub_1C4EFADF8();
  if (qword_1EDDF9200 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, qword_1EDE2DAE8);
  v44 = v17;
  v45 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v43);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
  switch(v18)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v20 = 0xE400000000000000;
      v21 = 1819047270;
      goto LABEL_7;
    case 2:
      v20 = 0xE500000000000000;
      v21 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v20 = 0xEA0000000000676ELL;
      v21 = 0x69686374614D6F74;
LABEL_7:
      v41 = MEMORY[0x1E69E6158];
      v42 = MEMORY[0x1E69A0130];
      v39 = v21;
      v40 = v20;
      v47 = sub_1C4EFB298();
      v48 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v46);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v43);
      sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF70]);
      sub_1C4EFB438();
      (*(v9 + 8))(v16, v8);
      sub_1C440962C(v46);
      (*(v9 + 32))(v16, v13, v8);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v37, v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v23 = v35;
    v22 = v36;
    (*(v36 + 32))(v35, v5, v6);
    if (qword_1EDDF9208 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4EFBD38();
    v25 = sub_1C442B738(v24, qword_1EDE2DB00);
    v44 = v24;
    v45 = MEMORY[0x1E69A0050];
    v26 = sub_1C4422F90(v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = sub_1C4EFD3D8();
    v41 = MEMORY[0x1E69E6158];
    v42 = MEMORY[0x1E69A0130];
    v39 = v27;
    v40 = v28;
    v47 = sub_1C4EFB298();
    v48 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v46);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v43);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF70]);
    v29 = v34;
    sub_1C4EFB438();
    (*(v22 + 8))(v23, v6);
    (*(v9 + 8))(v16, v8);
    sub_1C440962C(v46);
    (*(v9 + 32))(v16, v29, v8);
  }

  sub_1C4401CBC(&qword_1EDDFA2E8, &qword_1EC0BE530, &qword_1C4F37358, MEMORY[0x1E699FF60]);
  sub_1C4490890(&qword_1EDDF91D8, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
  v30 = v49;
  v31 = sub_1C4EFAFE8();
  result = (*(v9 + 8))(v16, v8);
  if (!v30)
  {
    *v33 = v31;
  }

  return result;
}

uint64_t sub_1C44B1138(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v154 - v4;
  v6 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v154 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  v176 = v154 - v17;
  v18 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  v163 = v154 - v22;
  v23 = type metadata accessor for EntityMatch(0);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v28);
  isUniquelyReferenced_nonNull_native = v154 - v30;
  v193 = MEMORY[0x1E69E7CC8];
  v32 = *(a1 + 16);
  v172 = v6;
  v170 = v5;
  v183 = v13;
  v171 = v33;
  v154[1] = a1;
  if (v32)
  {
    v166 = ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v178 = *(v29 + 72);
    v177 = v8 + 16;
    v165 = v8 + 8;
    v160 = v8 + 32;
    v156 = v8 + 40;
    v182 = MEMORY[0x1E69E7CC8];
    v164 = MEMORY[0x1E69E7CC8];
    v167 = MEMORY[0x1E69E7CC8];
    v175 = v154 - v30;
    while (1)
    {
      sub_1C4407970();
      v181 = v34;
      sub_1C4471AF0(v34, isUniquelyReferenced_nonNull_native);
      v35 = *&isUniquelyReferenced_nonNull_native[*(v23 + 28)];
      if (v35 >= 0.99)
      {
        v41 = *(v23 + 20);
        v42 = v167;
        if (*(v167 + 16) && (sub_1C44E3664(), (v44 & 1) != 0))
        {
          v13 = *(*(v42 + 56) + 8 * v43);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        else
        {
          v13 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4407970();
        sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v169);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44E3770(0, *(v13 + 16) + 1, 1, v13);
          v13 = v109;
        }

        v46 = *(v13 + 16);
        v45 = *(v13 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1C44E3770(v45 > 1, v46 + 1, 1, v13);
          v13 = v110;
        }

        *(v13 + 16) = v46 + 1;
        sub_1C44136A4();
        sub_1C44E3714(v169, v47);
        sub_1C441B4B4();
        v5 = *v48;
        (*v48)(v176, &isUniquelyReferenced_nonNull_native[v41], v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v184 = v193;
        sub_1C44E3664();
        sub_1C43FC438();
        if (__OFADD__(v51, v52))
        {
          goto LABEL_127;
        }

        v53 = v49;
        v6 = v50;
        sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
        v36 = &v184;
        if (sub_1C4F02458())
        {
          sub_1C44E3664();
          v36 = v171;
          isUniquelyReferenced_nonNull_native = v175;
          if ((v6 & 1) != (v55 & 1))
          {
            goto LABEL_137;
          }

          v53 = v54;
        }

        else
        {
          sub_1C4469218();
          sub_1C444B278();
        }

        v56 = v184;
        if (v6)
        {
          *(*(v184 + 56) + 8 * v53) = v13;

          sub_1C442ECC8();
        }

        else
        {
          sub_1C43FDD34(v184 + 8 * (v53 >> 6));
          sub_1C442ECC8();
          sub_1C441B4B4();
          (v5)();
          *(*(v56 + 56) + 8 * v53) = v13;
          v57 = *(v56 + 16);
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_129;
          }

          *(v56 + 16) = v59;
        }

        (*v165)(v176, v6);
        v167 = v56;
        v193 = v56;
        sub_1C44237D8();
        sub_1C440CD64();
        goto LABEL_72;
      }

      v36 = *&isUniquelyReferenced_nonNull_native[*(v23 + 40)];
      if (v36)
      {
        if (*(v36 + 2))
        {
          v37 = sub_1C4402490();
          if (v38)
          {
            v39 = (*(v36 + 7) + 16 * v37);
            v40 = *v39;
            v36 = v39[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v40 = 0;
            v36 = 0;
          }
        }

        else
        {
          v40 = 0;
          v36 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      sub_1C441DDD8();
      *&v184 = v60;
      sub_1C4415BB0();
      *(&v184 + 1) = v61;
      *&v185 = 1702195828;
      *(&v185 + 1) = v62;
      v187 = 0;
      v186 = 0uLL;
      v188 = 1;
      v5 = 0xE400000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v184);
      if (v36)
      {
        v63 = v40 == 1702195828 && v36 == 0xE400000000000000;
        if (v63)
        {

LABEL_49:
          if (v35 <= 0.0)
          {
            goto LABEL_70;
          }

          sub_1C4407970();
          sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v161);
          sub_1C4422A7C(v192);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v192[0] = v36;
          sub_1C44E3664();
          sub_1C43FC438();
          v6 = v79 + v80;
          if (__OFADD__(v79, v80))
          {
            goto LABEL_132;
          }

          v81 = v77;
          v13 = v78;
          v82 = sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
          if (sub_1C44142AC(v82))
          {
            v36 = *&v192[0];
            sub_1C444B278();
            sub_1C44E3664();
            sub_1C4404D54();
            v6 = v172;
            if (!v63)
            {
              goto LABEL_137;
            }

            v81 = v83;
          }

          else
          {
            sub_1C442ECC8();
            sub_1C444B278();
          }

          v164 = *&v192[0];
          if (v13)
          {
            sub_1C4404668();
            v88 = &v189;
LABEL_66:
            sub_1C46BB0F0(*(v88 - 32), v87);
LABEL_69:
            sub_1C440CD64();
LABEL_70:
            sub_1C4469218();
            goto LABEL_71;
          }

          sub_1C43FDD34(*&v192[0] + 8 * (v81 >> 6));
          v94 = sub_1C443009C();
          v95(v94);
          sub_1C441468C();
          sub_1C4404668();
          sub_1C44136A4();
          sub_1C44E3714(v161, v96);
          sub_1C441EE84();
          if (v58)
          {
            goto LABEL_134;
          }

LABEL_68:
          *(v93 + 16) = v92;
          goto LABEL_69;
        }

        v64 = sub_1C443F720(v40);

        if (v64)
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v36 = v164;
      if (*(v164 + 16) && (sub_1C44E3664(), (v65 & 1) != 0))
      {
        sub_1C4407970();
        isUniquelyReferenced_nonNull_native = v163;
        sub_1C4471AF0(v66, v163);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v163;
      }

      sub_1C4469218();
      sub_1C440BAA8(v67, v68, v69, v36);
      if (sub_1C44157D4(isUniquelyReferenced_nonNull_native, 1, v36))
      {
        sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &qword_1EC0BB248, &qword_1C4F1E7C8);
        if (v35 > 0.0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_1C4407970();
        v84 = v155;
        sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v155);
        sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &qword_1EC0BB248, &qword_1C4F1E7C8);
        v85 = *(v84 + *(v36 + 7));
        sub_1C44123A0();
        sub_1C447EB38(v84, v86);
        if (v85 < v35)
        {
LABEL_43:
          sub_1C4407970();
          sub_1C4471AF0(v175, v162);
          sub_1C4422A7C(v192);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v192[0] = v36;
          sub_1C44E3664();
          sub_1C43FC438();
          v6 = v72 + v73;
          if (__OFADD__(v72, v73))
          {
            goto LABEL_131;
          }

          v74 = v70;
          v13 = v71;
          v75 = sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
          if (sub_1C44142AC(v75))
          {
            v36 = *&v192[0];
            sub_1C444B278();
            sub_1C44E3664();
            sub_1C4404D54();
            v6 = v172;
            if (!v63)
            {
              goto LABEL_137;
            }

            v74 = v76;
          }

          else
          {
            sub_1C442ECC8();
            sub_1C444B278();
          }

          v164 = *&v192[0];
          if (v13)
          {
            sub_1C4404668();
            v88 = &v190;
            goto LABEL_66;
          }

          sub_1C43FDD34(*&v192[0] + 8 * (v74 >> 6));
          v89 = sub_1C443009C();
          v90(v89);
          sub_1C441468C();
          sub_1C4404668();
          sub_1C44136A4();
          sub_1C44E3714(v162, v91);
          sub_1C441EE84();
          if (v58)
          {
            goto LABEL_133;
          }

          goto LABEL_68;
        }
      }

      sub_1C4469218();
      sub_1C444B278();
LABEL_71:
      sub_1C44237D8();
LABEL_72:
      v97 = *(v36 + 6);
      v23 = &isUniquelyReferenced_nonNull_native[v97];
      if (sub_1C4EFEFF8())
      {
        sub_1C441B4B4();
        v5 = *v98;
        (*v98)(v168, &isUniquelyReferenced_nonNull_native[v97], v6);
        sub_1C4422A7C(&v199);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v184 = v23;
        sub_1C44E3664();
        sub_1C43FC438();
        if (__OFADD__(v101, v102))
        {
          goto LABEL_128;
        }

        v103 = v99;
        v13 = v100;
        sub_1C456902C(&qword_1EC0C3208, &unk_1C4F4F9A0);
        v23 = &v184;
        if (sub_1C4F02458())
        {
          v23 = v184;
          sub_1C444B278();
          sub_1C44E3664();
          sub_1C4404D54();
          if (!v63)
          {
            goto LABEL_137;
          }

          v103 = v104;
        }

        else
        {
          sub_1C444B278();
        }

        v182 = v184;
        if (v13)
        {
          (*(v8 + 40))(*(v184 + 56) + *(v8 + 72) * v103, v168, v6);
        }

        else
        {
          sub_1C43FDD34(v184 + 8 * (v103 >> 6));
          v23 = *(v8 + 72) * v103;
          sub_1C441B4B4();
          (v5)();
          sub_1C441468C();
          (*(v8 + 32))(v105 + v23, v168, v6);
          sub_1C441EE84();
          if (v58)
          {
            goto LABEL_130;
          }

          *(v107 + 16) = v106;
        }

        sub_1C44237D8();
        sub_1C440CD64();
      }

      sub_1C4469218();
      sub_1C44123A0();
      sub_1C447EB38(isUniquelyReferenced_nonNull_native, v108);
      if (!--v32)
      {
        goto LABEL_87;
      }
    }
  }

  v182 = MEMORY[0x1E69E7CC8];
  v164 = MEMORY[0x1E69E7CC8];
LABEL_87:
  sub_1C44B26D4(v164, &v193);
  v111 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44B2C94(v192, 0.99, v111);
  sub_1C44B35B4();
  v184 = v192[0];
  v185 = v192[1];
  v186 = v192[2];
  v112 = sub_1C44B3BBC(0.99);
  v162 = *(v112 + 16);
  if (v162)
  {
    v113 = 0;
    v161 = v112 + 32;
    v168 = (v8 + 32);
    v178 = v8 + 16;
    v114 = (v8 + 8);
    v166 = (v8 + 40);
    v160 = v112;
    v173 = v8;
    do
    {
      if (v113 >= *(v112 + 16))
      {
        goto LABEL_126;
      }

      v169 = v113;
      v115 = *(v161 + 8 * v113);
      v196 = MEMORY[0x1E69E7CC0];
      v197 = MEMORY[0x1E69E7CC0];
      v116 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AE0B30(v116, &v196, &v197);
      v117 = v197;
      if (*(v197 + 16))
      {
        v163 = v115;
        v118 = v196;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348A8();
          v118 = v149;
        }

        v119 = *(v118 + 16);
        v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v176 = (v118 + v120);
        v190 = v118 + v120;
        v191 = v119;
        sub_1C4AE1B00(&v190);
        v196 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348A8();
          v117 = v150;
        }

        v121 = *(v117 + 16);
        v181 = (v117 + v120);
        v190 = v117 + v120;
        v191 = v121;
        v122 = v117;
        sub_1C4AE1B00(&v190);
        sub_1C48685A4(v118, v5);
        v123 = sub_1C44157D4(v5, 1, v6);
        v177 = v118;
        v165 = v117;
        if (v123 == 1)
        {
          sub_1C4420C3C(v5, &unk_1EC0BA0E0, &qword_1C4F105A0);
          LODWORD(v190) = 0;
          v124 = v158;
          v125 = v171;
          sub_1C440BAA8(v158, 1, 1, v171);
          sub_1C4AE0A58(v122, &v193, v124, &v190);
          v126 = v159;
          v5 = &qword_1C4F1E7C8;
          sub_1C445FFF0(v124, v159, &qword_1EC0BB248, &qword_1C4F1E7C8);
          if (sub_1C44157D4(v126, 1, v125) == 1)
          {
            sub_1C4420C3C(v126, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C4435C6C();
            v154[0] = 377;
            goto LABEL_136;
          }

          sub_1C44136A4();
          v127 = v157;
          v128 = sub_1C44E3714(v126, v157);
          v181 = v154;
          MEMORY[0x1EEE9AC00](v128);
          v152 = &v193;
          v153 = v127;
          sub_1C4D373DC(sub_1C4AE2E90, &v154[-4], v165);
          sub_1C44123A0();
          sub_1C447EB38(v127, v129);
          sub_1C4420C3C(v124, &qword_1EC0BB248, &qword_1C4F1E7C8);
        }

        else
        {
          v167 = *v168;
          (v167)(v180, v5, v6);
          v175 = *(v118 + 16);
          if (v175)
          {
            v130 = 0;
            while (v130 < *(v118 + 16))
            {
              v131 = v114;
              v132 = *(v8 + 72);
              v133 = *(v8 + 16);
              (v133)(v13, &v176[v132 * v130], v6);
              sub_1C4AE2EAC(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
              v134 = v180;
              if (sub_1C4F010B8())
              {
                v135 = *v114;
                v8 = v173;
                v118 = v177;
              }

              else
              {
                v136 = sub_1C4422A7C(&v198);
                (v133)(v136, v13, v6);
                (v133)(v174, v134, v6);
                v137 = v182;
                swift_isUniquelyReferenced_nonNull_native();
                v190 = v137;
                sub_1C44E3664();
                if (__OFADD__(*(v137 + 16), (v139 & 1) == 0))
                {
                  goto LABEL_124;
                }

                v6 = v138;
                v13 = v139;
                sub_1C456902C(&qword_1EC0C3208, &unk_1C4F4F9A0);
                if (sub_1C4F02458())
                {
                  sub_1C44E3664();
                  sub_1C4404D54();
                  if (!v63)
                  {
                    goto LABEL_137;
                  }

                  v6 = v140;
                }

                v114 = v131;
                v118 = v177;
                v182 = v190;
                if (v13)
                {
                  v141 = *(v190 + 56) + v6 * v132;
                  v6 = v172;
                  (*v166)(v141, v174, v172);
                  v135 = *v114;
                  (*v114)(v179, v6);
                }

                else
                {
                  *(v190 + 8 * (v6 >> 6) + 64) |= 1 << v6;
                  v142 = v6 * v132;
                  v143 = v179;
                  sub_1C442ECC8();
                  v133();
                  sub_1C441468C();
                  (v167)(v144 + v142, v174, v6);
                  v135 = *v114;
                  (*v114)(v143, v6);
                  sub_1C441EE84();
                  if (v58)
                  {
                    goto LABEL_125;
                  }

                  *(v146 + 16) = v145;
                }

                type metadata accessor for PhaseStores(0);
                sub_1C440CD64();
                sub_1C486DA9C(v13, v180);
                v8 = v173;
              }

              ++v130;
              v135(v13, v6);
              if (v175 == v130)
              {
                goto LABEL_115;
              }
            }

            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            sub_1C4435C6C();
            v154[0] = 342;
LABEL_136:
            sub_1C4F024A8();
            __break(1u);
            while (1)
            {
LABEL_137:
              sub_1C4F029F8();
              __break(1u);
            }
          }

LABEL_115:

          v5 = 0;
          v147 = *(v165 + 16);
          while (v147 != v5)
          {
            v13 = v181 + *(v8 + 72) * v5;
            v148 = sub_1C44E5514(v13, v193);
            if (!v148)
            {
              goto LABEL_135;
            }

            ++v5;
            sub_1C4AE0718(v148, &v196);
            swift_isUniquelyReferenced_nonNull_native();
            v190 = v193;
            sub_1C4661954();
            v193 = v190;
            sub_1C440CD64();
          }

          (*v114)(v180, v6);
        }

        sub_1C44237D8();
      }

      else
      {
      }

      v113 = v169 + 1;
      v112 = v160;
    }

    while (v169 + 1 != v162);
  }

  v190 = v184;
  sub_1C4420C3C(&v190, &qword_1EC0BB250, &unk_1C4F1E7D0);
  v196 = v185;
  v197 = *(&v184 + 1);
  v194 = *(&v186 + 1);
  v195 = *(&v185 + 1);
  sub_1C4420C3C(&v197, &qword_1EC0BB258, &unk_1C4F4F980);
  sub_1C4420C3C(&v196, &qword_1EC0BB260, &unk_1C4F1E7E0);
  sub_1C4420C3C(&v195, &qword_1EC0BB268, &unk_1C4F4F990);
  sub_1C4420C3C(&v194, &qword_1EC0BB270, qword_1C4F1E7F0);

  return v182;
}

uint64_t sub_1C44B26D4(uint64_t a1, void *a2)
{
  v72 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  MEMORY[0x1EEE9AC00](v72 - 8);
  v76 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v62 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v66 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = 0;
  v63 = v15;
  v64 = a1 + 64;
  v73 = a2;
  if (v14)
  {
    while (1)
    {
LABEL_8:
      v18 = __clz(__rbit64(v14)) | (v16 << 6);
      v19 = v66;
      v20 = *(v66 + 48);
      v21 = sub_1C4EFF0C8();
      v22 = *(v21 - 8);
      v23 = v22;
      v68 = *(v22 + 72);
      v25 = v22 + 16;
      v24 = *(v22 + 16);
      v26 = v77;
      v78 = v21;
      v69 = v24;
      v67 = v25;
      (v24)(v77, v20 + v68 * v18);
      v27 = *(v19 + 56);
      v71 = *(type metadata accessor for EntityMatch(0) - 8);
      v28 = *(v71 + 72);
      v29 = v72;
      sub_1C4471AF0(v27 + v28 * v18, v26 + *(v72 + 48));
      v30 = v65;
      sub_1C445FFF0(v26, v65, &qword_1EC0BB240, "nG\v");
      v31 = *v73;
      if (*(*v73 + 16) && (sub_1C44E3664(), (v33 & 1) != 0))
      {
        v34 = *(*(v31 + 56) + 8 * v32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      sub_1C447EB38(v30 + *(v29 + 48), type metadata accessor for EntityMatch);
      v36 = v23 + 8;
      v35 = *(v23 + 8);
      v35(v30, v78);
      sub_1C445FFF0(v77, v74, &qword_1EC0BB240, "nG\v");
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44E3770(0, *(v34 + 16) + 1, 1, v34);
        v34 = v59;
      }

      v37 = v34;
      v38 = *(v34 + 16);
      v75 = v37;
      v39 = *(v37 + 24);
      if (v38 >= v39 >> 1)
      {
        sub_1C44E3770(v39 > 1, v38 + 1, 1, v75);
        v75 = v60;
      }

      v40 = *(v29 + 48);
      v41 = v75;
      *(v75 + 16) = v38 + 1;
      v42 = v74;
      sub_1C44E3714(v74 + v40, v41 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + v38 * v28);
      v70 = v35;
      v71 = v36;
      v35(v42, v78);
      sub_1C445FFF0(v77, v76, &qword_1EC0BB240, "nG\v");
      v43 = v73;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v43;
      v45 = *v43;
      v79 = v45;
      sub_1C44E3664();
      if (__OFADD__(v45[2], (v47 & 1) == 0))
      {
        break;
      }

      v48 = v46;
      v49 = v47;
      sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
      if (sub_1C4F02458())
      {
        sub_1C44E3664();
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_30;
        }

        v48 = v50;
      }

      v52 = v79;
      v53 = v72;
      if (v49)
      {
        *(v79[7] + 8 * v48) = v75;
      }

      else
      {
        v79[(v48 >> 6) + 8] |= 1 << v48;
        v69(v52[6] + v48 * v68, v76, v78);
        *(v52[7] + 8 * v48) = v75;
        v54 = v52[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_29;
        }

        v52[2] = v56;
      }

      v14 &= v14 - 1;
      v57 = *(v53 + 48);
      *v44 = v52;
      v58 = v76;
      v70(v76, v78);
      sub_1C447EB38(v58 + v57, type metadata accessor for EntityMatch);
      sub_1C4420C3C(v77, &qword_1EC0BB240, "nG\v");
      v15 = v63;
      v11 = v64;
      if (!v14)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

float sub_1C44B2C94@<S0>(uint64_t a1@<X8>, float a2@<S0>, uint64_t a3@<X0>)
{
  v8 = MEMORY[0x1E69E7CC8];
  *&v5 = MEMORY[0x1E69E7CC0];
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  *&v6 = MEMORY[0x1E69E7CC0];
  *(&v6 + 1) = MEMORY[0x1E69E7CC0];
  sub_1C44B2D10(a3);

  result = a2;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = a2;
  *(a1 + 40) = v8;
  return result;
}

void sub_1C44B2D10(uint64_t a1)
{
  v80 = sub_1C4EFF0C8();
  v2 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v73 - v5;
  v85 = type metadata accessor for EntityMatch(0);
  MEMORY[0x1EEE9AC00](v85);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1E69E7CD0];
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = *(v84 + 32);
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v82 = v2 + 16;
    v83 = 0;
    v76 = v2 + 8;
    v77 = v2;
    v75 = v13;
    while (1)
    {
      sub_1C44E37D8(v12, v8);
      v14 = *&v8[v85[7]];
      if (v11 <= v14)
      {
        v81 = v10;
        v15 = v85[5];
        sub_1C483644C();
        if ((v16 & 1) == 0)
        {
          v17 = v77;
          v74 = *(v77 + 16);
          v18 = v80;
          v74(v79, &v8[v15], v80);
          v19 = v78;
          sub_1C44D56D0();
          (*(v17 + 8))(v19, v18);
          v20 = v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v20[5];
          v22 = v83;
          sub_1C4661804(v83, &v8[v15], isUniquelyReferenced_nonNull_native);
          v20[5] = v86;
          sub_1C4588EAC();
          v23 = *(*v20 + 16);
          sub_1C4589A94();
          v24 = *v20;
          *(v24 + 16) = v23 + 1;
          v74((v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23), &v8[v15], v18);
          *v20 = v24;
          v83 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_55;
          }
        }

        v25 = v85[6];
        sub_1C483644C();
        if ((v26 & 1) == 0)
        {
          v73 = v15;
          v27 = v77;
          v74 = *(v77 + 16);
          v28 = v80;
          v29 = v84;
          v74(v79, &v8[v25], v80);
          v30 = v78;
          sub_1C44D56D0();
          (*(v27 + 8))(v30, v28);
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v29[5];
          v32 = v83;
          sub_1C4661804(v83, &v8[v25], v31);
          v29[5] = v86;
          sub_1C4588EAC();
          v33 = *(*v29 + 16);
          sub_1C4589A94();
          v34 = *v29;
          *(v34 + 16) = v33 + 1;
          v74((v34 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33), &v8[v25], v28);
          *v29 = v34;
          v83 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_56;
          }
        }

        v35 = *(v84 + 40);
        if (!*(v35 + 16))
        {
          goto LABEL_47;
        }

        sub_1C44E3664();
        if ((v37 & 1) == 0)
        {
          goto LABEL_48;
        }

        if (!*(v35 + 16))
        {
          goto LABEL_49;
        }

        v38 = *(*(v35 + 56) + 8 * v36);
        sub_1C44E3664();
        if ((v40 & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(*(v35 + 56) + 8 * v39) >= v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = *(*(v35 + 56) + 8 * v39);
        }

        if (!*(v35 + 16))
        {
          goto LABEL_51;
        }

        sub_1C44E3664();
        if ((v43 & 1) == 0)
        {
          goto LABEL_52;
        }

        if (!*(v35 + 16))
        {
          goto LABEL_53;
        }

        v44 = *(*(v35 + 56) + 8 * v42);
        sub_1C44E3664();
        if ((v46 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (*(*(v35 + 56) + 8 * v45) > v44)
        {
          v44 = *(*(v35 + 56) + 8 * v45);
        }

        v47 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458C890(0, *(v47 + 16) + 1, 1, v47);
          v47 = v51;
        }

        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        v10 = v47;
        if (v49 >= v48 >> 1)
        {
          sub_1C458C890(v48 > 1, v49 + 1, 1, v47);
          v10 = v52;
        }

        sub_1C44E383C(v8);
        *(v10 + 16) = v49 + 1;
        v50 = v10 + 24 * v49;
        *(v50 + 32) = v41;
        *(v50 + 40) = v44;
        *(v50 + 48) = v14;
        v13 = v75;
      }

      else
      {
        sub_1C44E383C(v8);
      }

      v12 += v13;
      if (!--v9)
      {
        goto LABEL_30;
      }
    }
  }

  v83 = 0;
LABEL_30:
  v53 = v83;
  v54 = sub_1C44B345C(v83, 0.0);
  v55 = sub_1C44B33C8(v54, v53);
  v56 = v84;

  *(v56 + 8) = v55;
  sub_1C44B3548(v10, v56);
  v57 = *(v56 + 8);
  v58 = *(v57 + 16);
  if (v58)
  {
    v86 = MEMORY[0x1E69E7CC0];
    sub_1C459DD98(0, v58, 0);
    v59 = 0;
    v60 = v86;
    while (v59 < *(v57 + 16))
    {
      v61 = 0;
      v62 = 0;
      v63 = v59 + 1;
      v64 = *(v57 + 32 + 8 * v59);
      v65 = *(v64 + 16);
      v66 = v64 + 32;
      v67 = 0.0;
      while (v65 != v61)
      {
        v68 = *(v66 + 4 * v61);
        if (v67 < v68)
        {
          v62 = v61;
        }

        ++v61;
        if (v67 < v68)
        {
          v67 = v68;
        }
      }

      v86 = v60;
      v70 = *(v60 + 16);
      v69 = *(v60 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1C459DD98((v69 > 1), v70 + 1, 1);
        v60 = v86;
      }

      *(v60 + 16) = v70 + 1;
      v71 = v60 + 16 * v70;
      *(v71 + 32) = v62;
      *(v71 + 40) = v67;
      v59 = v63;
      if (v63 == v58)
      {

        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v72 = v84;

    *(v72 + 16) = v60;
  }
}

uint64_t sub_1C44B33C8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_1C456902C(&qword_1EC0B8A90, &unk_1C4F0DEC0);
      sub_1C4411720();
      v4 = sub_1C4F01728();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1C44B345C(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1C4F01728();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C4F0D7C0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C4F4A4E0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1C44B3548(uint64_t result, uint64_t a2)
{
  v4 = (result + 48);
  v5 = *(result + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 6;
    v7 = *v4;
    v8 = *(v4 - 1);
    v9 = v7;
    sub_1C4886F6C(&v8, a2);
    v4 = v6;
  }

  while (!v2);
}

void sub_1C44B35B4()
{
  i = v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = sub_1C497E97C(v2, 0);
    if (sub_1C4619FFC(v78, v3 + 32, v2, 0, v2) == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v4 = *(v3 + 16);
  if (v4 < 2)
  {
LABEL_72:

    return;
  }

  v5 = i[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_7:
  v74 = i[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C4834878();
    v74 = v69;
  }

  v6 = v5 + 32;
  v76 = v74 + 32;
  v77 = v5 + 40;
  v70 = v5;
  v71 = i;
LABEL_10:
  v7 = 0;
  v75 = v4;
  v8 = *(v5 + 16);
  v4 = -1;
  v9 = 0.0;
  v10 = -1;
LABEL_11:
  v11 = (v77 + 16 * v7);
  while (1)
  {
    if (v8 == v7)
    {
      if (v10 == -1)
      {
        v4 = 0;
        i[1] = v74;
        i[2] = v5;
        v3 = 24;
        v10 = MEMORY[0x1E69E7CC0];
LABEL_76:
        v46 = (v5 + 32 + 16 * v4);
        while (v8 != v4)
        {
          if (v4 >= *(v5 + 16))
          {
            goto LABEL_110;
          }

          ++v4;
          v47 = *v46;
          v46 += 2;
          if (v47 == -1)
          {
            v48 = *(v46 - 2);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = v10;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C459DDB8(0, *(v10 + 16) + 1, 1);
              v10 = v78[0];
            }

            v51 = *(v10 + 16);
            v50 = *(v10 + 24);
            if (v51 >= v50 >> 1)
            {
              v53 = sub_1C43FCFE8(v50);
              sub_1C459DDB8(v53, v51 + 1, 1);
              v10 = v78[0];
            }

            *(v10 + 16) = v51 + 1;
            v52 = v10 + 24 * v51;
            *(v52 + 32) = v4 - 1;
            *(v52 + 40) = -1;
            *(v52 + 48) = v48;
            goto LABEL_76;
          }
        }

        v54 = *(v10 + 16);
        if (!v54)
        {
          __break(1u);
          return;
        }

        v4 = v54 - 1;
        if (v54 != 1)
        {
          goto LABEL_90;
        }

        goto LABEL_72;
      }

      v17 = i[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1C43FCEC0();
        sub_1C458C994(v40, v41, v42, v17);
        v17 = v43;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C458C994(v18 > 1, v19 + 1, 1, v17);
        v17 = v44;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 24 * v19;
      *(v20 + 32) = v10;
      *(v20 + 40) = v4;
      *(v20 + 48) = v9;
      i[3] = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        sub_1C48347BC();
        v3 = v45;
        if ((v4 & 0x8000000000000000) != 0)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }

      i = *(v3 + 16);
      if (v4 >= i)
      {
        goto LABEL_100;
      }

      v21 = (v3 + 32);
      *(v3 + 32 + 8 * v4) = -1;
      if (v4 < *(v5 + 16))
      {
        *(v77 + 16 * v4) = -1082130432;
        v73 = v3;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v3 = 0;
        v22 = i - 1;
        v23 = -1;
        v24 = 0.0;
        do
        {
          while (1)
          {
            v25 = (v3 + 1);
            v26 = v21[v3] == -1 || v10 == v3;
            if (v26)
            {
              break;
            }

            if (v3 >= *(v74 + 16))
            {
              goto LABEL_102;
            }

            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            v27 = *(v76 + 8 * v3);
            v28 = *(v27 + 16);
            if (v10 >= v28)
            {
              goto LABEL_104;
            }

            if (v4 >= v28)
            {
              goto LABEL_106;
            }

            v72 = v22;
            if (*(v27 + 32 + 4 * v10) > *(v27 + 32 + 4 * v4))
            {
              v29 = *(v27 + 32 + 4 * v10);
            }

            else
            {
              v29 = *(v27 + 32 + 4 * v4);
            }

            v30 = swift_isUniquelyReferenced_nonNull_native();
            *(v76 + 8 * v3) = v27;
            if ((v30 & 1) == 0)
            {
              sub_1C4834860();
              v27 = v33;
              *(v76 + 8 * v3) = v33;
            }

            if (v10 >= *(v27 + 16))
            {
              goto LABEL_107;
            }

            *(v27 + 4 * v10 + 32) = v29;
            if (v10 >= *(v74 + 16))
            {
              goto LABEL_108;
            }

            v31 = *(v76 + 8 * v10);
            v32 = swift_isUniquelyReferenced_nonNull_native();
            *(v76 + 8 * v10) = v31;
            if ((v32 & 1) == 0)
            {
              sub_1C4834860();
              v31 = v34;
              *(v76 + 8 * v10) = v34;
            }

            v5 = v70;
            v22 = v72;
            if (v3 >= *(v31 + 16))
            {
              goto LABEL_109;
            }

            *(v31 + 4 * v3 + 32) = v29;
            if (v24 < v29)
            {
              v24 = v29;
              v23 = v3;
            }

            v26 = v72 == v3++;
            if (v26)
            {
              goto LABEL_60;
            }
          }

          ++v3;
        }

        while (i != v25);
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

LABEL_60:
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_105;
        }

        v35 = v6 + 16 * v10;
        *v35 = v23;
        *(v35 + 8) = v24;
        v3 = v73;
        v36 = *(v73 + 16);
        for (i = v71; v36; --v36)
        {
          v38 = *v21++;
          v37 = v38;
          if (v38 != -1)
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v37 >= *(v5 + 16))
            {
              goto LABEL_98;
            }

            v39 = 16 * v37;
            if (*(v6 + v39) == v4)
            {
              *(v6 + v39) = v10;
            }
          }
        }

        v4 = v75 - 1;
        if (v75 <= 2)
        {

          v71[1] = v74;
          v71[2] = v5;
          return;
        }

        goto LABEL_10;
      }

LABEL_101:
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
      sub_1C4834890();
      v5 = v68;
      goto LABEL_7;
    }

    if (v7 >= v8)
    {
      break;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_89;
    }

    v13 = *v11;
    v11 += 4;
    v14 = v13;
    ++v7;
    if (v9 < v13)
    {
      v15 = *(v11 - 3);
      v16 = v7 - 1;
      if (v15 <= v16)
      {
        v4 = v16;
      }

      else
      {
        v4 = v15;
      }

      if (v15 >= v16)
      {
        v10 = v16;
      }

      else
      {
        v10 = v15;
      }

      v7 = v12;
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v55 = *(v10 + 32);
  v56 = i[3];
  v57 = 56;
  do
  {
    v58 = *(v10 + v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1C43FCEC0();
      sub_1C458C994(v62, v63, v64, v56);
      v56 = v65;
    }

    v60 = *(v56 + 16);
    v59 = *(v56 + 24);
    if (v60 >= v59 >> 1)
    {
      v66 = sub_1C43FCFE8(v59);
      sub_1C458C994(v66, v60 + 1, 1, v56);
      v56 = v67;
    }

    *(v56 + 16) = v60 + 1;
    v61 = v56 + 24 * v60;
    *(v61 + 32) = v55;
    *(v61 + 40) = v58;
    *(v61 + 48) = v9;
    v57 += 24;
    --v4;
  }

  while (v4);

  i[3] = v56;
}

uint64_t sub_1C44B3BBC(float a1)
{
  v93 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v93);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v87 - v9;
  v101 = v1;
  v10 = *v1;
  v12 = v11;
  v89 = v10;
  v102 = *(v10 + 2);
  v13 = sub_1C44B43F4(0, v102);
  v14 = v13;
  v15 = *(v13 + 16);
  v99 = v7;
  v100 = v12;
  v98 = v4;
  v105 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC8];
    v104 = v13 + 32;
    v103 = xmmword_1C4F0D130;
    v4 = v98;
    while (v16 < *(v14 + 16))
    {
      v18 = *(v104 + 8 * v16);
      sub_1C456902C(&qword_1EC0B8838, "nS\t");
      v19 = swift_allocObject();
      *(v19 + 16) = v103;
      *(v19 + 32) = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v106 = v17;
      v20 = sub_1C457B350(v18);
      if (__OFADD__(*(v17 + 16), (v21 & 1) == 0))
      {
        goto LABEL_64;
      }

      v22 = v20;
      v23 = v21;
      sub_1C456902C(&qword_1EC0BE638, &unk_1C4F37AC8);
      if (sub_1C4F02458())
      {
        v24 = sub_1C457B350(v18);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_69;
        }

        v22 = v24;
      }

      v12 = v100;
      v17 = v106;
      if (v23)
      {
        *(*(v106 + 56) + 8 * v22) = v19;
      }

      else
      {
        sub_1C4417364(v106 + 8 * (v22 >> 6));
        *(v26 + 8 * v22) = v18;
        *(*(v17 + 56) + 8 * v22) = v19;
        v27 = *(v17 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_66;
        }

        *(v17 + 16) = v29;
      }

      ++v16;
      v7 = v99;
      if (v105 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_15:

    v30 = v101[3];
    v31 = *(v30 + 2);
    if (v31)
    {
      v32 = (v30 + 48);
      do
      {
        if (*v32 > a1)
        {
          if (!*(v17 + 16))
          {
            goto LABEL_68;
          }

          v34 = *(v32 - 2);
          v33 = *(v32 - 1);
          v35 = sub_1C457B350(v34);
          if ((v36 & 1) == 0)
          {
            goto LABEL_68;
          }

          v37 = *(*(v17 + 56) + 8 * v35);
          sub_1C457B350(v33);
          if ((v38 & 1) == 0)
          {
            goto LABEL_68;
          }

          v106 = v37;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v39 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C49D3D88(v39);
          v40 = v106;
          swift_isUniquelyReferenced_nonNull_native();
          v106 = v17;
          v41 = sub_1C457B350(v34);
          if (__OFADD__(*(v17 + 16), (v42 & 1) == 0))
          {
            goto LABEL_65;
          }

          v43 = v41;
          v44 = v42;
          v105 = sub_1C456902C(&qword_1EC0BE638, &unk_1C4F37AC8);
          if (sub_1C4F02458())
          {
            v45 = sub_1C457B350(v34);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_69;
            }

            v43 = v45;
          }

          v17 = v106;
          if (v44)
          {
            *(*(v106 + 56) + 8 * v43) = v40;
          }

          else
          {
            sub_1C4417364(v106 + 8 * (v43 >> 6));
            *(v47 + 8 * v43) = v34;
            *(*(v17 + 56) + 8 * v43) = v40;
            v48 = *(v17 + 16);
            v28 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v28)
            {
              goto LABEL_67;
            }

            *(v17 + 16) = v49;
          }

          sub_1C457B350(v33);
          v4 = v98;
          if (v50)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v106 = v17;
            sub_1C4F02458();
            v17 = v106;

            sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
            sub_1C4F02478();
          }

          v7 = v99;
          v12 = v100;
        }

        v32 += 6;
        --v31;
      }

      while (v31);
    }

    v51 = v17 + 64;
    v52 = 1 << *(v17 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v17 + 64);
    v55 = (v52 + 63) >> 6;
    v105 = v12 + 16;
    v101 = (v12 + 32);
    v88 = (v12 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v104 = v17;
    v92 = v17 + 64;
    v90 = v55;
    if (v54)
    {
      while (1)
      {
        v95 = v57;
LABEL_41:
        v96 = v56;
        v97 = v54;
        v59 = *(*(v17 + 56) + ((v56 << 9) | (8 * __clz(__rbit64(v54)))));
        v60 = *(v59 + 16);
        v94 = v59;
        if (v60)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v62 = MEMORY[0x1E69E7CC0];
        v65 = v93;
LABEL_49:
        v71 = *(v62 + 16);
        v72 = sub_1C4887098();
        v106 = MEMORY[0x1C69407C0](v71, v65, v72);
        v73 = *(v62 + 16);
        v74 = v91;
        v51 = v92;
        if (v73)
        {
          v75 = v62 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          *&v103 = *(v100 + 72);
          v76 = *(v100 + 16);
          v77 = v88;
          v78 = v93;
          do
          {
            v76(v74, v75, v78);
            sub_1C44D56D0();
            (*v77)(v4, v78);
            v75 += v103;
            --v73;
          }

          while (v73);

          v17 = v104;
          v51 = v92;
        }

        else
        {
        }

        v79 = v106;
        v57 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v97;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458CA88();
          v57 = v84;
        }

        v83 = *(v57 + 16);
        v82 = *(v57 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1C43FCFE8(v82);
          sub_1C458CA88();
          v57 = v85;
        }

        v54 = (v81 - 1) & v81;

        *(v57 + 16) = v83 + 1;
        *(v57 + 8 * v83 + 32) = v79;
        v7 = v99;
        v55 = v90;
        v56 = v96;
        if (!v54)
        {
          goto LABEL_37;
        }
      }

      v106 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459D178();
      v61 = v100;
      v62 = v106;
      v63 = (v59 + 32);
      v64 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      *&v103 = v89 + v64;
      v65 = v93;
      while (1)
      {
        v67 = *v63++;
        v66 = v67;
        if (v67 >= v102)
        {
          break;
        }

        v68 = *(v61 + 72);
        (*(v61 + 16))(v7, v103 + v68 * v66, v65);
        v106 = v62;
        v70 = *(v62 + 16);
        v69 = *(v62 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1C43FCFE8(v69);
          sub_1C459D178();
          v61 = v100;
          v62 = v106;
        }

        *(v62 + 16) = v70 + 1;
        (*v101)(v62 + v64 + v70 * v68, v7, v65);
        --v60;
        v17 = v104;
        if (!v60)
        {
          v4 = v98;
          goto LABEL_49;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_37:
      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v58 >= v55)
        {

          return v57;
        }

        v54 = *(v51 + 8 * v58);
        ++v56;
        if (v54)
        {
          v95 = v57;
          v56 = v58;
          goto LABEL_41;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  sub_1C4F024A8();
  __break(1u);
LABEL_69:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C44B43F4(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_1C497E97C(a2 - result, 0);
      if (sub_1C4619FFC(v6, v5 + 32, v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44B4478(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v50 = a3;
  v13 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v48 = *a2;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDE2E088);
  v21 = *(v15 + 16);
  v49 = a1;
  v21(v19, a1, v13);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    sub_1C43FEC60();
    v46 = v7;
    v24 = swift_slowAlloc();
    v47 = a6;
    v45 = swift_slowAlloc();
    v53 = v45;
    *v24 = 136315650;
    sub_1C441FC50();
    sub_1C4490890(v25, v26, MEMORY[0x1E69A92F8]);
    v27 = sub_1C4F02858();
    v28 = a4;
    v29 = a5;
    v31 = v30;
    (*(v15 + 8))(v19, v13);
    v32 = sub_1C441D828(v27, v31, &v53);
    a5 = v29;
    a4 = v28;

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    v33 = v48;
    v34 = sub_1C44A5D54(v48);
    v36 = sub_1C441D828(v34, v35, &v53);

    *(v24 + 14) = v36;
    *(v24 + 22) = 2080;
    v37 = v50;
    v51 = v50;
    v52 = v28 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v38 = sub_1C4F01198();
    v40 = sub_1C441D828(v38, v39, &v53);

    *(v24 + 24) = v40;
    _os_log_impl(&dword_1C43F8000, v22, v23, "GraphStore: tripleTranslatingMap: e:%s p:%s t:%s", v24, 0x20u);
    swift_arrayDestroy();
    a6 = v47;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v7 = v46;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v41 = (*(v15 + 8))(v19, v13);
    v37 = v50;
    v33 = v48;
  }

  MEMORY[0x1EEE9AC00](v41);
  v42 = v49;
  *(&v44 - 8) = v7;
  *(&v44 - 7) = v42;
  *(&v44 - 48) = v33;
  *(&v44 - 5) = v37;
  *(&v44 - 32) = a4 & 1;
  *(&v44 - 3) = a5;
  *(&v44 - 2) = a6;

  sub_1C446C37C(sub_1C44B5DE0, (&v44 - 10));
}

uint64_t sub_1C44B480C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, int a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v140 = a8;
  v141 = a7;
  v163 = a6;
  v150 = a5;
  v155 = a3;
  v159 = a2;
  v160 = a1;
  v9 = type metadata accessor for TranslatedEntityTriple(0);
  v148 = *(v9 - 8);
  v149 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v125[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v125[-v12];
  v157 = sub_1C4EFF0C8();
  v153 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v142 = &v125[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v125[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v125[-v17];
  v18 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v151 = &v125[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v125[-v21];
  v22 = type metadata accessor for EntityTriple(0);
  v144 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v143 = &v125[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v125[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v152 = &v125[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v146 = &v125[-v30];
  v31 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v125[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v125[-v36];
  sub_1C4490890(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  v158 = v22;
  sub_1C4EFADF8();
  LODWORD(v155) = a4;
  sub_1C44A6034();
  v40 = *(v32 + 8);
  v38 = v32 + 8;
  v39 = v40;
  v40(v34, v31);
  sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF60]);
  sub_1C4490890(&qword_1EDDF8DA0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
  v41 = v161;
  v42 = sub_1C4EFAFD8();
  if (v41)
  {
    return (v39)(v37, v31);
  }

  v44 = v42;
  v138 = v38;
  v137 = v31;
  v136 = v39;
  v45 = v147;
  sub_1C44A6D28();
  v46 = 0;
  if (sub_1C44157D4(v45, 1, v158) != 1)
  {
    v131 = v37;
    v53 = v146;
    sub_1C44D1B5C(v45, v146, type metadata accessor for EntityTriple);
    sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
    v54 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v161 = *(v144 + 72);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1C4F0D130;
    sub_1C4490938(v53, v55 + v54, type metadata accessor for EntityTriple);
    v56 = v153 + 16;
    v57 = v157;
    v135 = *(v153 + 16);
    v135(v154, v53, v157);
    swift_beginAccess();
    v144 = v56 - 8;
    v153 = v56;
    v128 = (v56 + 8);
    *&v58 = 134218242;
    v129 = v58;
    v134 = v44;
    v59 = v152;
    v130 = v54;
LABEL_9:
    v132 = (v55 + v54);
    v60 = v55;
    v133 = v55;
    while (1)
    {
      v61 = v151;
      sub_1C44A6D28();
      if (sub_1C44157D4(v61, 1, v158) == 1)
      {
        sub_1C4420C3C(v61, &qword_1EC0BA590, &qword_1C4F1F430);
        v96 = *(v60 + 16);
        if (v96)
        {
          v147 = 0;
          v164 = v155;
          v135(v142, v154, v57);
          v162 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v96, 0);
          v97 = v158;
          v98 = v162;
          v99 = v60 + v130;
          do
          {
            sub_1C4490938(v99, v26, type metadata accessor for EntityTriple);
            v100 = &v26[*(v97 + 32)];
            v101 = *v100;
            v102 = v100[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4491300(v26, type metadata accessor for EntityTriple);
            v162 = v98;
            v104 = *(v98 + 16);
            v103 = *(v98 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_1C44CD9C0(v103 > 1, v104 + 1, 1);
              v97 = v158;
              v98 = v162;
            }

            *(v98 + 16) = v104 + 1;
            v105 = v98 + 16 * v104;
            *(v105 + 32) = v101;
            *(v105 + 40) = v102;
            v99 += v161;
            --v96;
          }

          while (v96);
          v107 = v142;
          v108 = v147;
          v109 = sub_1C44E3898(v160, &v164, v150, v163 & 1, v142, v98);
          if (v108)
          {

            v110 = *v144;
            v111 = v157;
            (*v144)(v107, v157);
            sub_1C4491300(v146, type metadata accessor for EntityTriple);
            v136(v131, v137);
            v110(v154, v111);
          }

          v112 = v109;
          v159 = *v144;
          v159(v107, v157);

          v161 = objc_autoreleasePoolPush();
          v113 = v133;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v26 = v141(v112, v113);

          if (qword_1EDDFFAF0 != -1)
          {
            swift_once();
          }

          v114 = sub_1C4F00978();
          sub_1C442B738(v114, qword_1EDE2E088);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v115 = sub_1C4F00968();
          v116 = sub_1C4F01CB8();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v162 = v118;
            *v117 = v129;
            *(v117 + 4) = *(v26 + 2);

            *(v117 + 12) = 2080;
            sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
            v119 = sub_1C4F02858();
            v121 = sub_1C441D828(v119, v120, &v162);

            *(v117 + 14) = v121;
            _os_log_impl(&dword_1C43F8000, v115, v116, "GraphStore: tripleTranslatingMap: %ld translated triples for %s", v117, 0x16u);
            sub_1C440962C(v118);
            MEMORY[0x1C6942830](v118, -1, -1);
            MEMORY[0x1C6942830](v117, -1, -1);
          }

          else
          {
          }

          v122 = 0;
          v123 = *(v26 + 2);
          while (v123 != v122)
          {
            if (v122 >= *(v26 + 2))
            {
              goto LABEL_60;
            }

            v124 = v145;
            sub_1C4490938(&v26[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v122], v145, type metadata accessor for TranslatedEntityTriple);
            sub_1C4490890(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
            sub_1C4EFB6C8();
            ++v122;
            sub_1C4491300(v124, type metadata accessor for TranslatedEntityTriple);
          }

          objc_autoreleasePoolPop(v161);
          v57 = v157;
        }

        sub_1C4491300(v146, type metadata accessor for EntityTriple);
        v136(v131, v137);
        (*v144)(v154, v57);
      }

      sub_1C44D1B5C(v61, v59, type metadata accessor for EntityTriple);
      sub_1C4490890(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
      v62 = v154;
      v63 = v60;
      if (sub_1C4F010B8())
      {
        v77 = v143;
LABEL_33:
        sub_1C4490938(v59, v77, type metadata accessor for EntityTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44C9240(0, *(v63 + 16) + 1, 1, v63);
          v63 = v94;
        }

        v93 = *(v63 + 16);
        v92 = *(v63 + 24);
        v55 = v63;
        if (v93 >= v92 >> 1)
        {
          sub_1C44C9240(v92 > 1, v93 + 1, 1, v63);
          v55 = v95;
        }

        sub_1C4491300(v59, type metadata accessor for EntityTriple);
        *(v55 + 16) = v93 + 1;
        v54 = v130;
        sub_1C44D1B5C(v143, v55 + v130 + v93 * v161, type metadata accessor for EntityTriple);
        goto LABEL_9;
      }

      v164 = v155;
      v64 = v156;
      v135(v156, v62, v57);
      v65 = *(v63 + 16);
      if (v65)
      {
        v147 = 0;
        v162 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v65, 0);
        v66 = v162;
        v67 = v132;
        v68 = v158;
        do
        {
          sub_1C4490938(v67, v26, type metadata accessor for EntityTriple);
          v69 = &v26[*(v68 + 32)];
          v70 = *v69;
          v71 = v69[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4491300(v26, type metadata accessor for EntityTriple);
          v162 = v66;
          v73 = *(v66 + 16);
          v72 = *(v66 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_1C44CD9C0(v72 > 1, v73 + 1, 1);
            v68 = v158;
            v66 = v162;
          }

          *(v66 + 16) = v73 + 1;
          v74 = v66 + 16 * v73;
          *(v74 + 32) = v70;
          *(v74 + 40) = v71;
          v67 = v161 + v67;
          --v65;
        }

        while (v65);
        v64 = v156;
        v57 = v157;
        v46 = v147;
        v63 = v133;
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      v75 = sub_1C44E3898(v160, &v164, v150, v163 & 1, v64, v66);
      if (v46)
      {

        v106 = *v144;
        (*v144)(v64, v57);
        sub_1C4491300(v152, type metadata accessor for EntityTriple);
        sub_1C4491300(v146, type metadata accessor for EntityTriple);
        v136(v131, v137);
        v106(v154, v57);
      }

      v76 = v75;
      (*v144)(v64, v57);

      if (v76[2])
      {
        break;
      }

      v60 = v63;
      v59 = v152;
      sub_1C4491300(v152, type metadata accessor for EntityTriple);

      v57 = v157;
    }

    v132 = objc_autoreleasePoolPush();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v78 = v141(v76, v63);

    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v79 = sub_1C4F00978();
    sub_1C442B738(v79, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v80 = sub_1C4F00968();
    v81 = sub_1C4F01CB8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v162 = v147;
      *v82 = v129;
      *(v82 + 4) = *(v78 + 16);

      *(v82 + 12) = 2080;
      sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
      v127 = v80;
      v83 = sub_1C4F02858();
      v85 = sub_1C441D828(v83, v84, &v162);
      v126 = v81;
      v86 = v85;

      *(v82 + 14) = v86;
      v46 = 0;
      v87 = v127;
      _os_log_impl(&dword_1C43F8000, v127, v126, "GraphStore: tripleTranslatingMap: %ld translated triples for %s", v82, 0x16u);
      v88 = v147;
      sub_1C440962C(v147);
      MEMORY[0x1C6942830](v88, -1, -1);
      MEMORY[0x1C6942830](v82, -1, -1);
    }

    else
    {
    }

    v89 = v148;
    v90 = 0;
    v147 = *(v78 + 16);
    v91 = v139;
    while (1)
    {
      if (v147 == v90)
      {

        objc_autoreleasePoolPop(v132);

        v59 = v152;
        v57 = v157;
        (*v128)(v154, v152, v157);
        v63 = MEMORY[0x1E69E7CC0];
        v77 = v143;
        goto LABEL_33;
      }

      if (v90 >= *(v78 + 16))
      {
        break;
      }

      sub_1C4490938(v78 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v90, v91, type metadata accessor for TranslatedEntityTriple);
      sub_1C4490890(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple, &protocol conformance descriptor for TranslatedEntityTriple);
      sub_1C4EFB6C8();
      ++v90;
      sub_1C4491300(v91, type metadata accessor for TranslatedEntityTriple);
      v89 = v148;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = v37;
  sub_1C4420C3C(v45, &qword_1EC0BA590, &qword_1C4F1F430);
  if (qword_1EDDFFAF0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v47 = sub_1C4F00978();
  sub_1C442B738(v47, qword_1EDE2E088);
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CF8();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v137;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1C43F8000, v48, v49, "GraphStore: tripleTranslatingMap: found no data", v52, 2u);
    MEMORY[0x1C6942830](v52, -1, -1);
  }

  return (v136)(v26, v51);
}