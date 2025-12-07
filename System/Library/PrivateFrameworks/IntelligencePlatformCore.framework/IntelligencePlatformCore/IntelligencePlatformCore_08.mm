void sub_1C44B5E0C()
{
  sub_1C43FBD3C();
  v67 = v0;
  sub_1C4423618(v8, v9, v10);
  sub_1C43FCDF8();
  v64 = v11;
  v65 = v12;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  type metadata accessor for ProgressTokens(0);
  sub_1C4412DFC();
  v66 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C4416DF8();
  type metadata accessor for Resolver(v18);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  if (v1)
  {
    sub_1C4424C80();
  }

  else
  {
    v62 = v15;
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    sub_1C4EF93C8();
    v24 = &qword_1EC0BA4A8;
    sub_1C4656BB0();
    sub_1C442C5A4();
    v28 = sub_1C4401CBC(v25, v26, &dword_1C4F141D0, v27);
    v29 = sub_1C4656C04(v28);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v63);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v31 = sub_1C4F00978();
        sub_1C43FCEE8(v31, qword_1EDE2DE10);
        sub_1C4430900(v67, v22);
        v32 = sub_1C4F00968();
        v33 = sub_1C4F01CD8();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v5 = 136315138;
          v35 = sub_1C44623A0();
          sub_1C4430900(v35, v3);
          sub_1C447E868(v22, type metadata accessor for Resolver);
          sub_1C44AE730();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for Resolver);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v4, v38);
          sub_1C44D44F0();
          *(v5 + 4) = v3;
          sub_1C4656C84(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C447E868(v22, type metadata accessor for Resolver);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v2 = v29;
    v4 = v30;

    objc_autoreleasePoolPop(v63);
    v15 = v62;
    v3 = v2;
  }

  v22 = v67;
  v43 = v67;
  sub_1C44B62F8(v69);
  v24 = v70;
  if (v70)
  {
    v44 = sub_1C440F3CC();
    v45(v44);
    sub_1C4456268();
  }

  else
  {
    sub_1C4420C3C(v69, &qword_1EC0BA490, &unk_1C4F53630);
    v43 = 0;
  }

  if ((v68 & 1) == 0 && __OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v46 = 0x6E776F6E6B6E75;
  switch(v22[*(v5 + 28)])
  {
    case 1:
      v46 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v46 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v46);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445AABC();
        sub_1C441925C();
        sub_1C44EC814(v47);
        *(v6 + *(v7 + 20)) = 0;
        sub_1C43FC08C();
        sub_1C4656C64(v48);
        sub_1C4460A18();
        v49 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v50 = sub_1C4424F7C(v49);
        sub_1C4412DCC(v50, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v51 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C4430900(&v22[v53], v15 + v54);
        sub_1C44433E8();
        sub_1C4460A18();
        v55 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904(v55);
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v15, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v51 = v15;
      }

      sub_1C447E868(v51, v52);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44B62F8@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for Resolver(0);
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
        v31 = sub_1C447CB3C(&qword_1EDDF0A60, type metadata accessor for Resolver, &protocol conformance descriptor for Resolver);
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
        v31 = sub_1C447CB3C(&qword_1EDDF0A60, type metadata accessor for Resolver, &protocol conformance descriptor for Resolver);
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

uint64_t sub_1C44B6748()
{

  return sub_1C447E868(v1, v0);
}

uint64_t sub_1C44B67DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C44B68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v26;
  a24 = v27;
  sub_1C44346B8();
  a22 = v24;
  sub_1C4400B7C();
  sub_1C448CFCC(v28, v29, v30);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (sub_1C4400B94(v32))
  {
    v34 = *(v24 + 24);
    v33 = *(v24 + 32);
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v25 = 136315138;
    sub_1C4400B7C();
    sub_1C448CFCC(v34, v33, v35);
    sub_1C43FC7A4();
    sub_1C447EAE0(v34, v36);
    sub_1C44A1310();
    v38 = v37;
    v40 = v39;
    v41 = sub_1C4414A08();
    sub_1C447EAE0(v41, v42);
    sub_1C441D828(v38, v40, &a13);
    sub_1C4441528();
    *(v25 + 4) = v33;
    sub_1C4404638(&dword_1C43F8000, v43, v44, "StageFinish %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    sub_1C443530C();
    sub_1C447EAE0(v45, v46);
  }

  sub_1C4412320();
  v47 = sub_1C443661C();
  sub_1C44B6A64(v47, v48, v49);
  v50 = sub_1C4404658();
  v51(v50);

  sub_1C43FC1B0();
  sub_1C440405C();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C44B6A64(uint64_t a1, int a2, uint64_t a3)
{
  v70 = a3;
  LODWORD(v68) = a2;
  v63 = sub_1C4F00908();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C4F008B8();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C4F008F8();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Pipeline.StatusStore(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFD548();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Source(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = 0x2D676E696B6E696CLL;
  v76 = 0xEF6C6172656E6567;
  MEMORY[0x1C6940010](95, 0xE100000000000000, v16);
  v19 = type metadata accessor for Linker(0);
  sub_1C448CFCC(a1 + *(v19 + 20), v18, type metadata accessor for Source);
  v20 = *v18;
  v21 = v18[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EAE0(v18, type metadata accessor for Source);
  MEMORY[0x1C6940010](v20, v21);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v22 = sub_1C4EFD3D8();
  v24 = v23;
  (*(v12 + 8))(v14, v11);
  MEMORY[0x1C6940010](v22, v24);

  v25 = v75;
  v26 = v76;
  sub_1C448CFCC(a1, v10, type metadata accessor for Configuration);
  v10[*(v8 + 28)] = v68;
  v27 = Pipeline.StatusStore.currentSessionId()();
  countAndFlagsBits = v27.value._countAndFlagsBits;
  object = v27.value._object;
  sub_1C447EAE0(v10, type metadata accessor for Pipeline.StatusStore);
  if (!v27.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = countAndFlagsBits;
  *(v31 + 24) = object;
  v32 = swift_allocObject();
  *(v32 + 16) = 34;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C44B7400;
  *(v34 + 24) = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C44B7400;
  *(v37 + 24) = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549F4;
  *(inited + 40) = v32;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v33;
  *(inited + 64) = sub_1C4454C38;
  *(inited + 72) = v34;
  v41 = v69;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v35;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v36;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v37;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v38;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v39;
  v42 = v71;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v43 = sub_1C4EFD5F8();
  v45 = v44;
  sub_1C4EFD608();
  v46 = sub_1C4F008D8();
  sub_1C4F00928();
  v47 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v45 & 1) == 0)
  {
    if (!v43)
    {
      __break(1u);
LABEL_7:

      (*(v66 + 8))(v41, v67);
      return (*(v64 + 8))(v42, v65);
    }

    goto LABEL_12;
  }

  if (HIDWORD(v43))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v43 & 0xFFFFF800) == 0xD800)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v43 >> 16 > 0x10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = &v74;
LABEL_12:
  LODWORD(v70) = v47;

  v49 = v61;
  sub_1C4F00958();

  v50 = v62;
  v51 = v63;
  v52 = v41;
  if ((*(v62 + 88))(v49, v63) == *MEMORY[0x1E69E93E8])
  {
    v53 = 0;
    v54 = 0;
    v68 = "[Error] Interval already ended";
  }

  else
  {
    (*(v50 + 8))(v49, v51);
    v68 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v54 = 2;
    v53 = 3;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v57 = 0;
  v73 = 0;
  v72 = v56;
  *v55 = v54;
  v55[1] = v53;
  v75 = (v55 + 2);
  while (v57 != 144)
  {
    v58 = *(inited + v57 + 32);

    v58(&v75, &v73, &v72);

    v57 += 16;
  }

  v59 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v46, v70, v59, v43, v68, v55, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v56, -1, -1);
  MEMORY[0x1C6942830](v55, -1, -1);

  (*(v66 + 8))(v52, v67);
  return (*(v64 + 8))(v71, v65);
}

uint64_t sub_1C44B7404()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C44B7500()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 128);
  v4 = sub_1C4406014();
  sub_1C4491370(v4, type metadata accessor for Fuser, type metadata accessor for Fuser, sub_1C44B7D34);
  if (!v2)
  {
    v19 = sub_1C440BECC();
    *(v0 + 184) = v19;
    *v19 = v0;
    sub_1C4402478(v19);
    sub_1C44507A0();

    __asm { BR              X1 }
  }

  *(v0 + 120) = v2;
  v5 = v2;
  v6 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442F34C(v6, v7, v6, &type metadata for PhaseSignal))
  {

    sub_1C43FBDA0();
    goto LABEL_24;
  }

  if (!*(v0 + 200))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v22 = sub_1C441BC3C();
    sub_1C43FF4EC(v22, qword_1EDE2DE10);
    v9 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C4415BD0();
      *v3 = 136315138;
      v23 = sub_1C4AD00FC();
      sub_1C4460374(v23, v24, v25, v26, v27, v28);
      sub_1C44160EC();
      *(v3 + 4) = v1;
      sub_1C4404638(&dword_1C43F8000, v29, v30, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_23;
  }

  if (*(v0 + 200) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v8 = sub_1C441BC3C();
    sub_1C43FF4EC(v8, qword_1EDE2DE10);
    v9 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_23;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C4415BD0();
    *v3 = 136315138;
    v10 = sub_1C4AD00FC();
    sub_1C4460374(v10, v11, v12, v13, v14, v15);
    sub_1C44160EC();
    *(v3 + 4) = v1;
    v18 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v31 = sub_1C441BC3C();
    sub_1C43FF4EC(v31, qword_1EDE2DE10);
    v9 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_23;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C4415BD0();
    *v3 = 136315138;
    v32 = sub_1C4AD00FC();
    sub_1C4460374(v32, v33, v34, v35, v36, v37);
    sub_1C44160EC();
    *(v3 + 4) = v1;
    v18 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v16, v17, v18);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_23:

  sub_1C4ACF7B8();

  sub_1C43FC1B0();
LABEL_24:
  sub_1C44507A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C44B7868()
{
  sub_1C43FBCD4();
  *(v1 + 16) = v0;
  *(v1 + 192) = v2;
  v3 = type metadata accessor for Fuser(0);
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

uint64_t sub_1C44B7A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
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
  sub_1C4420124();
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
    sub_1C4420124();
    sub_1C448CFCC(v51, v52, v53);
    sub_1C4425F18();
    sub_1C447EAE0(v51, v54);
    sub_1C44B7D34();
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
    sub_1C447EAE0(v25[5], type metadata accessor for Fuser);
  }

  v57 = swift_task_alloc();
  v25[22] = v57;
  *v57 = v25;
  v57[1] = sub_1C44BCEEC;
  sub_1C440405C();

  return Fuser.execute()();
}

void sub_1C44B7D34()
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
  v5 = type metadata accessor for Fuser(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA540, &unk_1C4F14270);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C4656C44();
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

uint64_t sub_1C44B7E8C()
{
  v1 = *(v0 + 56);
  result = type metadata accessor for Fuser(0);
  *(v0 + 64) = result;
  v3 = *(v1 + *(result + 24));
  *(v0 + 72) = v3;
  v4 = *(v3 + 16);
  *(v0 + 80) = v4;
  *(v0 + 88) = 0;
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_1C442E860(v3 + 32, v0 + 16);
      v5 = sub_1C44506A0();
      v6(v5);
      *(v0 + 113) = *(v0 + 112);
      v7 = swift_task_alloc();
      *(v0 + 96) = v7;
      *v7 = v0;
      v8 = sub_1C441C25C(v7);

      return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = type metadata accessor for PhaseStores(0);
    sub_1C448E020(v11, v12, v13, v14, v15, v16, v17, v18, v20, SWORD2(v20), SBYTE6(v20), SHIBYTE(v20));
    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t StandardEntityFusion.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for StandardEntityFusion(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t StandardEntityFusion.entityClass.getter()
{
  v2 = sub_1C44059B8();
  v3 = *(type metadata accessor for StandardEntityFusion(v2) + 20);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t StandardEntityFusion.source.getter()
{
  v2 = sub_1C44059B8();
  type metadata accessor for StandardEntityFusion(v2);
  sub_1C440CD94();
  return sub_1C4471BAC(v1 + v3, v0);
}

uint64_t sub_1C44B8198()
{
  v1 = sub_1C44A1E40();
  v2 = type metadata accessor for Source(v1);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v4 = type metadata accessor for StandardEntityFusion(0);
  sub_1C4471CA0(v4);
  v5 = sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
  v6 = sub_1C4485A60(v5);
  MEMORY[0x1C6940010](v6);

  sub_1C441DC78();
  sub_1C4656C44();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v7);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v8);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

uint64_t StandardEntityFusion.execute()()
{
  v1[19] = v0;
  v2 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v2);
  v1[20] = sub_1C43FBE7C();
  v3 = sub_1C4EFD548();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = sub_1C43FBE7C();
  v4 = sub_1C4EF98F8();
  sub_1C43FBD18(v4);
  v1[24] = sub_1C43FBE7C();
  v5 = type metadata accessor for Pipeline.StatusStore(0);
  v1[25] = v5;
  sub_1C43FBD18(v5);
  v1[26] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C44B8434, 0, 0);
}

uint64_t sub_1C44B83A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return StandardEntityFusion.execute()();
}

uint64_t sub_1C44B8434()
{
  v114 = v0;
  aBlock = v0 + 2;
  v1 = v0 + 13;
  v104 = (v0 + 14);
  v2 = v0 + 15;
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[19];
  sub_1C449AF24();
  sub_1C4471BAC(v5, v4);
  v6 = type metadata accessor for StandardEntityFusion(0);
  v7 = *(v6 + 28);
  v8 = *(v5 + v7);
  v96 = *(v3 + 20);
  v98 = v4;
  *(v4 + v96) = v8;
  v106 = v6;
  v108 = swift_allocObject();
  *(v108 + 16) = MEMORY[0x1E69E7CC0];
  v102 = v108 + 16;
  v110 = (v0 + 15);
  switch(v8)
  {
    case 1:

      goto LABEL_6;
    case 2:
      sub_1C4482D18();
      break;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v9 = sub_1C4F02938();

  if (v9)
  {
LABEL_6:
    v11 = v0 + 13;
    v12 = v0[24];
    sub_1C44B909C();
    v13 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1C4EF98C8();

    v14 = sub_1C44B90E0(v12);
    v15 = [v14 librarySpecificFetchOptions];
    v16 = sub_1C4F01138();
    v18 = v17;
    v19 = sub_1C44B9174(v15);
    if (!v19)
    {
      __break(1u);
      JUMPOUT(0x1C44B8E9CLL);
    }

    v9 = v19;
    v94 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_42:
      sub_1C4401E28();
      sub_1C443D664();
      v9 = v86;
    }

    v20 = *(v9 + 16);
    if (v20 >= *(v9 + 24) >> 1)
    {
      sub_1C4401E28();
      sub_1C443D664();
      v9 = v87;
    }

    *(v9 + 16) = v20 + 1;
    v21 = v9 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v22 = sub_1C4F01658();

    [v15 setFetchPropertySets_];

    v23 = [objc_opt_self() fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions_];
    if (v23)
    {
      v9 = v23;
      v0[6] = sub_1C4B587C4;
      v0[7] = v108;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1C4AAF5EC;
      v0[5] = &unk_1F43FD9C0;
      v24 = _Block_copy(aBlock);

      [v9 enumerateObjectsUsingBlock_];

      _Block_release(v24);
      v14 = v9;
    }

    else
    {
    }

    v6 = v106;
    v7 = v94;
    v1 = v11;

    v2 = v110;
  }

  *v1 = 0;
  v1[1] = 0;
  *v2 = 0;
  switch(*(v5 + v7))
  {
    case 1:
    case 3:
      sub_1C447F6F4(v10);
      sub_1C4EFD378();
      v25 = sub_1C44886D0();
      v26(v25);
      type metadata accessor for PhaseStores(0);
      v27 = sub_1C44CD920();
      sub_1C4508964(v27, v28, v29, v30, v31, v32, v33, v34, v88, v90, v92, v94, v96, v98, aBlock, v102, v104, v106, v108, v110);
      if (v6)
      {
        v38 = sub_1C4B58610;
        v39 = sub_1C4B58948;
      }

      else
      {
        v38 = sub_1C44E7CDC;
        v39 = sub_1C44B9608;
      }

      goto LABEL_22;
    case 2:
      sub_1C447F6F4(v10);
      sub_1C4EFD378();
      v42 = sub_1C44886D0();
      v43(v42);
      type metadata accessor for PhaseStores(0);
      v44 = sub_1C44CD920();
      sub_1C4508964(v44, v45, v46, v47, v48, v49, v50, v51, v88, v90, v92, v94, v96, v98, aBlock, v102, v104, v106, v108, v110);
      if (v6)
      {
        v38 = sub_1C4B585B8;
        v39 = sub_1C4B58B08;
      }

      else
      {
        v38 = sub_1C450AC80;
        v39 = sub_1C450B3F4;
      }

LABEL_22:
      sub_1C44B92A4(v1 + v2, v9, v38, v7, v39, v35, v36, v37, v89, v91, v93, v95, v97, v99, aBlocka, v103, v105, v107, v109, v111);
      v52 = v0[26];
      v53 = v0[20];

      v54 = v0[13];
      v15 = v0[14];
      v55 = v0[15];
      sub_1C449AF24();
      sub_1C4471BAC(v52, v53);
      v56 = *(v98 + v96);
      v112 = 0xD000000000000010;
      v113 = 0x80000001C4FAAFC0;
      v57 = 0xE400000000000000;
      v58 = 1819047270;
      switch(v56)
      {
        case 1:
          break;
        case 2:
          v57 = 0xE500000000000000;
          v58 = sub_1C4482D18();
          break;
        case 3:
          v58 = sub_1C44133C0();
          v57 = 0xEA0000000000676ELL;
          break;
        default:
          v58 = sub_1C44806FC();
          break;
      }

      v59 = v0[20];
      MEMORY[0x1C6940010](v58, v57);

      MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
      type metadata accessor for KeyValueStore(0);
      swift_allocObject();
      v60 = v59;
      v5 = 0;
      v14 = KeyValueStore.init(config:domain:)(v60, v112, v113);
      v18 = sub_1C44BA6A8(v54, v15, v55);
      v11 = 0;
      v61 = *(v18 + 16);
      v62 = v18 + 32;
      v16 = v106;
      break;
    default:
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[16] = v6;
      sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
      v40 = sub_1C4F01198();
      MEMORY[0x1C6940010](v40);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v5 + v7));
      sub_1C4B590A0();
      return sub_1C4F024A8();
  }

  while (v61 != v11)
  {
    if (v11 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1C442E860(v62, (v0 + 8));
    v63 = v0[11];
    v64 = v0[12];
    v65 = sub_1C4409678(v0 + 8, v63);
    v66 = v63;
    v5 = 0;
    sub_1C446F2A0(v65, 0, 0, v66, v64);
    v11 = (v11 + 1);
    sub_1C440962C(v0 + 8);
    v62 += 40;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v67 = sub_1C4F00978();
  sub_1C442B738(v67, qword_1EDE2DE10);
  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CF8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v112 = v71;
    *v70 = 136315138;
    v0[18] = v106;
    sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
    v72 = sub_1C4F01198();
    v74 = sub_1C441D828(v72, v73, &v112);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_1C43F8000, v68, v69, "%s Updated result to db", v70, 0xCu);
    sub_1C440962C(v71);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C44BB5A4(v0[19] + *(v106 + 20), v0[19] + *(v106 + 24));
  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CF8();
  v77 = os_log_type_enabled(v75, v76);
  v78 = v0[26];
  if (v77)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v112 = v80;
    *v79 = 136315138;
    v0[17] = v106;
    sub_1C456902C(&qword_1EC0BA4D8, &qword_1C4F14208);
    v81 = sub_1C4F01198();
    v83 = sub_1C441D828(v81, v82, &v112);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_1C43F8000, v75, v76, "%s Updated token", v79, 0xCu);
    sub_1C440962C(v80);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C442ED28();
  sub_1C44BCC4C(v78, v84);

  v85 = v0[1];

  return v85();
}

uint64_t sub_1C44B8ECC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C44B8F10()
{

  return type metadata accessor for PhaseStores(0);
}

uint64_t sub_1C44B8F2C()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44B8F44(uint64_t result, char a2)
{
  v4 = v2 + *(v3 + 32);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C44B8F9C()
{
  v3 = *(v0 + 56);
  *(v1 - 96) = *(v0 + 80);
  *(v1 - 88) = v3;
}

uint64_t sub_1C44B8FBC()
{
  v2 = *(v0 - 1080);
  v3 = *(v0 - 1096);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44B9028()
{
}

unint64_t sub_1C44B909C()
{
  result = qword_1EDDFCE78;
  if (!qword_1EDDFCE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFCE78);
  }

  return result;
}

id sub_1C44B90E0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4EF9868();
  v4 = [v2 initWithPhotoLibraryURL_];

  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_1C44B9174(void *a1)
{
  v1 = [a1 fetchPropertySets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C44B91CC()
{
  v3 = *(v1 - 200);

  return sub_1C4430900(v0, v3);
}

uint64_t sub_1C44B9210()
{
  result = v1;
  *(v0 + 416) = **(v0 + 344);
  return result;
}

uint64_t sub_1C44B9260()
{
  v8 = (v2 + v4[8]);
  *v8 = v0;
  v8[1] = v1;
  v9 = (v2 + v4[10]);
  *v9 = *(v5 - 112);
  v9[1] = v3;
  *(v2 + v4[11]) = v7;
  *(v2 + v4[12]) = *(v5 - 116);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C44B92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v66 = v24;
  v25 = v20;
  v63 = v26;
  v64 = v27;
  v67 = v28;
  v30 = v29;
  v31 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128(&qword_1EDDFFAF0);
  }

  v38 = sub_1C4F00978();
  sub_1C442B738(v38, qword_1EDE2E088);
  v39 = *(v33 + 16);
  v65 = v30;
  v39(v37, v30, v31);
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CF8();
  if (os_log_type_enabled(v40, v41))
  {
    v62 = v21;
    v42 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v42 = 136315394;
    sub_1C44B95C0(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    HIDWORD(v60) = v41;
    v43 = sub_1C4F02858();
    v61 = v25;
    v45 = v44;
    (*(v33 + 8))(v37, v31);
    v46 = sub_1C441D828(v43, v45, &a10);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v47 = v67;
    v48 = sub_1C44A5D54(v67);
    v50 = sub_1C441D828(v48, v49, &a10);

    *(v42 + 14) = v50;
    _os_log_impl(&dword_1C43F8000, v40, BYTE4(v60), "GraphStore: tripleFusingMap: e:%s p:%s", v42, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v51 = (*(v33 + 8))(v37, v31);
    v47 = v67;
  }

  MEMORY[0x1EEE9AC00](v51);
  v52 = v65;
  *(&v60 - 6) = v25;
  *(&v60 - 5) = v52;
  *(&v60 - 32) = v47;
  v53 = v64;
  *(&v60 - 3) = v63;
  *(&v60 - 2) = v53;

  sub_1C4418704(v66, (&v60 - 8), v54, v55, v56, v57, v58, v59, v60, v61);

  sub_1C43FBC80();
}

uint64_t sub_1C44B95C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44B9660(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v23 = a5;
  v21 = a1;
  v24 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
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
  type metadata accessor for ConstructionGraphTriple(0);
  sub_1C44B95C0(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v21, v16, v9, v23, v25, &qword_1EC0BA580, &unk_1C4F32530, &unk_1EDDF00A0, &qword_1EDDF00B0, &qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple, sub_1C44E77A4, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  (*(v22 + 8))(v9, v24);
  return (v17)(v16, v10);
}

void sub_1C44B9974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, unint64_t *a22, uint64_t (*a23)(uint64_t), uint64_t a24, uint64_t *a25)
{
  sub_1C43FE96C();
  v152 = v27;
  v158 = v25;
  v159 = v28;
  v162 = v29;
  v160 = v30;
  v166 = v31;
  v33 = v32;
  v153 = v34;
  v154 = v35;
  v161 = sub_1C456902C(v34, v35);
  sub_1C43FCDF8();
  v156 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v155 = v39;
  sub_1C43FBE44();
  v165 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v157 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v164 = v43 - v42;
  v44 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v45 = sub_1C43FBD18(v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBD08();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v163 = v50;
  v51 = sub_1C43FBE44();
  v52 = type metadata accessor for TranslatedEntityTriple(v51);
  sub_1C43FCDF8();
  v151 = v53;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBD08();
  v57 = v55 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v138 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v138 - v62;
  sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  sub_1C441310C();
  sub_1C4401CBC(v64, &qword_1EC0BE558, &unk_1C4F54060, v65);
  sub_1C441A560();
  sub_1C44B95C0(v66, v67, &protocol conformance descriptor for TranslatedEntityTriple);
  sub_1C440A9B8();
  v68 = sub_1C4EFAFD8();
  if (!v26)
  {
    v69 = v68;
    v174 = v57;
    v166 = v52;
    v149 = v60;
    v148 = v48;
    v150 = v33;
    v147 = v63;
    v70 = v163;
    sub_1C44BA514();
    if (sub_1C44157D4(v70, 1, v166) == 1)
    {
      sub_1C4420C3C(v70, &unk_1EC0BC9C8, &qword_1C4F29B58);
      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C4400128(&qword_1EDDFFAF0);
      }

      v71 = sub_1C4F00978();
      sub_1C442B738(v71, qword_1EDE2E088);
      v72 = sub_1C4F00968();
      v73 = sub_1C4F01CF8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1C43F8000, v72, v73, "GraphStore: batchFusingInsert: found no data", v74, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v146 = v69;
      v141 = a23;
      v140 = a22;
      v138 = a21;
      sub_1C4426060();
      sub_1C4B5907C();
      sub_1C44856C8(v75, v76);
      sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
      v77 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v163 = *(v151 + 72);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      sub_1C441D754();
      v139 = v78;
      v151 = v77;
      sub_1C4471BAC(v70, v78 + v77);
      v80 = (v157 + 16);
      v79 = *(v157 + 16);
      v81 = v164;
      v82 = v70;
      v83 = v165;
      v79(v164, v82, v165);
      v144 = sub_1C4EFBD38();
      v84 = sub_1C4B59094(v144, MEMORY[0x1E69A0050]);
      sub_1C4422F90(v84);
      sub_1C4EFBD48();
      v168 = v83;
      sub_1C4466D8C();
      v143 = sub_1C44B95C0(v85, v86, MEMORY[0x1E69A9800]);
      v169 = v143;
      v87 = sub_1C4422F90(v167);
      v145 = v79;
      v79(v87, v81, v83);
      v142 = sub_1C4EFB298();
      v172 = v142;
      v173 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v171);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4420C3C(v167, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v170);
      sub_1C43FC300();
      sub_1C4B5907C();
      v88 = v154;
      v92 = sub_1C4401CBC(v89, v90, v154, v91);
      sub_1C4B590C8();
      sub_1C4EFB438();
      sub_1C440962C(v171);
      sub_1C441310C();
      v94 = sub_1C4401CBC(v138, v83, v88, v93);
      v95 = sub_1C44B95C0(v140, v141, a24);
      sub_1C4EFAFE8();
      v140 = v95;
      v141 = v94;
      v152 = v92;
      v153 = v80;
      v96 = v139;
      v154 = a25;
      v97 = (v156 + 8);
      v98 = sub_1C43FD7E0();
      v156 = v99;
      v99(v98);
      sub_1C44A3CE0();
      sub_1C44B6790();
      while (1)
      {
        sub_1C44BA514();
        if (sub_1C44157D4(v94, 1, v166) == 1)
        {
          break;
        }

        sub_1C44856C8(v94, v81);
        sub_1C4466D8C();
        sub_1C44B95C0(&qword_1EDDFCC98, v100, MEMORY[0x1E69A9830]);
        v101 = v164;
        sub_1C43FD7E0();
        if (sub_1C4F010B8())
        {
          v102 = v96;
        }

        else
        {
          v94 = v97;
          sub_1C44A3C00();
          sub_1C447D030(v103, v104, v105, v106, v107, v108);
          v109 = v165;
          (*v157)(v101, v165);

          v110 = sub_1C43FD7E0();
          v81 = v153;
          v111 = v145;
          (v145)(v110);
          v170[3] = v144;
          v112 = sub_1C445AC14(MEMORY[0x1E69A0050]);
          sub_1C4422F90(v112);
          sub_1C4EFBD48();
          v168 = v109;
          v169 = v143;
          v113 = sub_1C4422F90(v167);
          v111(v113, v101, v109);
          v172 = v142;
          v173 = MEMORY[0x1E699FE60];
          sub_1C4422F90(v171);
          sub_1C440C4CC();
          sub_1C4EFBB28();
          sub_1C4420C3C(v167, &qword_1EC0C5040, &qword_1C4F0F950);
          sub_1C440962C(v170);
          sub_1C4B590C8();
          sub_1C4EFB438();
          sub_1C440962C(v171);
          sub_1C4EFAFE8();
          v114 = sub_1C43FD7E0();
          v156(v114);
          v102 = MEMORY[0x1E69E7CC0];
          sub_1C44B6790();
        }

        sub_1C4471BAC(v81, v174);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1C441BA3C();
          sub_1C44E6488(v118, v119, v120, v121);
          v102 = v122;
        }

        v116 = *(v102 + 16);
        v115 = *(v102 + 24);
        v96 = v102;
        if (v116 >= v115 >> 1)
        {
          sub_1C44E6488(v115 > 1, v116 + 1, 1, v102);
          v96 = v123;
        }

        sub_1C44BCC4C(v81, type metadata accessor for TranslatedEntityTriple);
        *(v96 + 16) = v116 + 1;
        sub_1C4426060();
        sub_1C44856C8(v174, v117);
      }

      sub_1C4420C3C(v94, &unk_1EC0BC9C8, &qword_1C4F29B58);
      if (*(v96 + 16))
      {
        v124 = v164;
        sub_1C44A3C00();
        sub_1C447D030(v125, v126, v127, v128, v129, v130);
        v131 = v165;
        v132 = v147;

        sub_1C441739C();
        v133(v124, v131);
        sub_1C4407B7C();
        sub_1C44BCC4C(v132, v137);
      }

      else
      {

        sub_1C441739C();
        v134(v164, v165);
        sub_1C4407B7C();
        v135 = sub_1C4400248();
        sub_1C44BCC4C(v135, v136);
      }
    }
  }

  sub_1C43FBC80();
}

void sub_1C44BA514()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD64();
  v4 = sub_1C442C998(&unk_1EDDFA310, &unk_1EC0BC9D8, &unk_1C4F29B60);
  if (sub_1C440C4B0(v4))
  {
    type metadata accessor for TranslatedEntityTriple(0);
    v5 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = sub_1C4406CA4(&qword_1EDDFA320, &unk_1EC0BC9D8, &unk_1C4F29B60);
  sub_1C444FD58(v9);
  v10 = sub_1C43FBE94();
  type metadata accessor for TranslatedEntityTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC9C8, &qword_1C4F29B58);
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

uint64_t sub_1C44BA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE2D870;
  v6 = *algn_1EDE2D878;
  v7 = qword_1EDE2D880;
  v8 = unk_1EDE2D888;
  v9 = qword_1EDE2D890;
  v10 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v42 = v10;
  v11 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090, &unk_1C4F555C8);
  v43 = v11;
  v12 = swift_allocObject();
  *&v41 = v12;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v12[7] = a1;
  v12[8] = v8;
  v12[9] = v9;
  sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v41, inited + 32);
  sub_1C446F0D0(v8, v9);
  sub_1C446F0D0(v8, v9);
  v14 = qword_1EDDF7B10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE2D848;
  v16 = unk_1EDE2D850;
  v17 = qword_1EDE2D858;
  v18 = unk_1EDE2D860;
  v19 = qword_1EDE2D868;
  v39 = v10;
  v40 = v11;
  v20 = swift_allocObject();
  *&v38 = v20;
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v19;
  v20[7] = a2;
  v20[8] = v18;
  v20[9] = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v38, v21 + 32);
  sub_1C446F0D0(v18, v19);
  sub_1C446F0D0(v18, v19);
  v22 = qword_1EDDF7B08;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE2D820;
  v24 = *algn_1EDE2D828;
  v25 = qword_1EDE2D830;
  v26 = unk_1EDE2D838;
  v27 = qword_1EDE2D840;
  v36 = v10;
  v37 = v11;
  v28 = swift_allocObject();
  *&v35 = v28;
  v28[2] = v23;
  v28[3] = v24;
  v28[4] = v25;
  v28[5] = v26;
  v28[6] = v27;
  v28[7] = a3;
  v28[8] = v26;
  v28[9] = v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1C4F0D130;
  sub_1C443FA18(&v35, v29 + 32);
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1C4F0C890;
  *(v30 + 32) = inited;
  *(v30 + 40) = v21;
  *(v30 + 48) = v29;
  sub_1C446F0D0(v26, v27);
  sub_1C446F0D0(v26, v27);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F8F4(v30);
  v32 = v31;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v32;
}

uint64_t sub_1C44BA9F0()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C44BAA50()
{
  sub_1C441B2E0();
  sub_1C441C090();

  v2 = sub_1C440CAAC();
  v3 = v0(v2);

  if (v1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C44BAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = *(a2 + 32);
  return v3(a1, v6);
}

void sub_1C44BAB60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v6 & 1) != 0 || !__OFADD__(v4, v5))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v12 = v11;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FBE44();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  v18 = sub_1C43FD2BC();
  sub_1C456902C(v18, v19);
  sub_1C4418A58();
  if (!v10)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v21 = *(v16 + 8);
  v22 = sub_1C43FCE84();
  v21(v22);
  if (v12)
  {

    v25 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v25);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v23 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v24 = sub_1C43FCE84();
  v21(v24);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8(v26, v27, v28))
  {

    goto LABEL_8;
  }

  v29 = sub_1C4403150();
  v30(v29);
  sub_1C441B3B8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

uint64_t sub_1C44BAE74@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

void (*sub_1C44BAEAC(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v48 = a3;
  v31 = a2;
  v30[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EDE2E068);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v36);
  v14 = *(*(v11 - 8) + 16);
  v14(v13, v12, v11);
  v30[0] = v3;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v15;
  v33 = v16;
  v17 = sub_1C4EFB298();
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v11, qword_1EDE2DF28);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v36);
  v14(v19, v18, v11);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v31;
  v33 = v48;
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v20 = *(v5 + 8);
  v20(v7, v4);
  sub_1C440962C(v39);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v21 = v30[2];
  sub_1C4EFAFF8();
  v20(v10, v4);
  if (v21)
  {
    return v20;
  }

  v22 = v43;
  if (!v43)
  {
    return 0;
  }

  v23 = v42;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v27 = v47;
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C45A2288();
  sub_1C4EF9698();
  if (*(v42 + 16))
  {
    v28 = v24;
    v20 = *(v42 + 32);
    sub_1C4470E30(v23, v22, v28, v25, v26, v27);

    return v20;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1C4F02248();

  v42 = 0xD00000000000002FLL;
  v43 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v31, v48);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void (*sub_1C44BB420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char *, uint64_t)
{
  result = sub_1C44BAEAC(a1, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C44BB458(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C44BB4C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v6 & 1) != 0 || !__OFADD__(v4, v5))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BB534(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_1C44BAADC();
  if (v3)
  {

LABEL_5:
    sub_1C448B80C();
    return;
  }

  if ((v6 & 1) != 0 || !__OFADD__(v4, v5))
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1C44BB5A4(uint64_t a1, uint64_t a2)
{
  v6 = objc_autoreleasePoolPush();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9AE8();
  v22[0] = v7;
  sub_1C456902C(&qword_1EC0BA4A8, &dword_1C4F141D0);
  sub_1C4401CBC(&unk_1EDDF7D68, &qword_1EC0BA4A8, &dword_1C4F141D0, &protocol conformance descriptor for ProgressToken<A>);
  v8 = sub_1C4EF93B8();
  if (v3)
  {

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = v8;
    v11 = v9;
    v25 = a1;

    objc_autoreleasePoolPop(v6);
    sub_1C44344B8(v10, v11);
    sub_1C44BB884();
    v12 = v23;
    if (v23)
    {
      v13 = v24;
      sub_1C4409678(v22, v23);
      v14 = (*(v13 + 48))(v12, v13);
      sub_1C440962C(v22);
    }

    else
    {
      sub_1C4420C3C(v22, &qword_1EC0BA490, &unk_1C4F53630);
      v14 = 0;
    }

    switch(*(v2 + *(type metadata accessor for StandardEntityFusion(0) + 28)))
    {
      case 2:

        goto LABEL_9;
      default:
        v15 = sub_1C4F02938();

        if (v15)
        {
LABEL_9:
          type metadata accessor for PhaseStores(0);
          v16 = sub_1C4B58C88;
          v17 = a2;
          v18 = v25;
          v19 = v10;
          v20 = v11;
          v21 = 0;
        }

        else
        {
          type metadata accessor for PhaseStores(0);
          v16 = sub_1C44BC06C;
          v17 = a2;
          v18 = v25;
          v19 = v10;
          v20 = v11;
          v21 = 1;
        }

        sub_1C44BC004(v17, v18, v19, v20, v21, v14, v16);
        sub_1C4434000(v10, v11);
        sub_1C4434000(v10, v11);
        break;
    }
  }
}

void sub_1C44BB884()
{
  sub_1C43FBD3C();
  v3 = v0;
  v36 = v4;
  v5 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37[-1] - v7;
  v9 = type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37[-1] - v16;
  type metadata accessor for ProgressTokens(0);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1C4416DF8();
  v20 = type metadata accessor for StandardEntityFusion(v19);
  switch(*(v3 + *(v20 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v21 = sub_1C4F02938();

      if (v21)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        sub_1C4488218();
        v38 = v20;
        sub_1C449AE68();
        v39 = sub_1C447CB3C(v22, v23, &protocol conformance descriptor for StandardEntityFusion);
        v24 = sub_1C4422F90(v37);
        sub_1C445AB80(v24);
        sub_1C44FEF34(v37, 0);
        sub_1C440962C(v37);
        if (sub_1C44157D4(v17, 1, v1) == 1)
        {
          v25 = &unk_1EC0BA4B8;
          v26 = &unk_1C4F16F60;
          v27 = v17;
LABEL_8:
          sub_1C4420C3C(v27, v25, v26);
          v31 = v36;
          *(v36 + 32) = 0;
          *v31 = 0u;
          v31[1] = 0u;
          goto LABEL_12;
        }

        sub_1C449F338(v17, v2);
        v32 = v36;
        *(v36 + 24) = v1;
        v32[4] = &off_1F43EE918;
        v33 = sub_1C4422F90(v32);
        v34 = v2;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        sub_1C4488218();
        v38 = v20;
        sub_1C449AE68();
        v39 = sub_1C447CB3C(v28, v29, &protocol conformance descriptor for StandardEntityFusion);
        v30 = sub_1C4422F90(v37);
        sub_1C445AB80(v30);
        sub_1C449D50C(v37, 0);
        sub_1C440962C(v37);
        if (sub_1C44157D4(v8, 1, v9) == 1)
        {
          v25 = &unk_1EC0BAC20;
          v26 = &unk_1C4F141E0;
          v27 = v8;
          goto LABEL_8;
        }

        sub_1C449F338(v8, v13);
        v35 = v36;
        *(v36 + 24) = v9;
        v35[4] = &off_1F43EE970;
        v33 = sub_1C4422F90(v35);
        v34 = v13;
      }

      sub_1C449F338(v34, v33);
LABEL_12:
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C44BBC6C()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44BBC8C()
{
  v2 = *(v0 - 1064);
  v3 = *(v0 - 1072);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C44BBD00()
{
  v2 = *(v0 - 360);

  return sub_1C442E860(v2, v0 - 176);
}

uint64_t sub_1C44BBD20@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D2B4(v3 + a2, v4 + v2, a1);
}

uint64_t sub_1C44BBD38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44BBD84()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C44BBDB4(uint64_t a1)
{
  *(v2 - 184) = a1;
  *(v2 - 120) = v1;

  return sub_1C4EF93D8();
}

uint64_t sub_1C44BBE8C(uint64_t a1)
{

  return sub_1C4420C3C(a1, v1, v2);
}

uint64_t sub_1C44BBEA4()
{

  return sub_1C461B90C(v0 + 432, v0 + 376);
}

unint64_t sub_1C44BBEBC(float a1)
{
  *v4 = a1;

  return sub_1C441D828(v2, v3, (v1 + 400));
}

void sub_1C44BBF18()
{

  sub_1C459E828();
}

void sub_1C44BBF4C()
{
  v2 = (*(v0 + 64) + 24);

  os_unfair_lock_lock(v2);
}

void *sub_1C44BBF70()
{
  v2 = *(v0 - 112);

  return sub_1C4409678((v0 - 136), v2);
}

uint64_t sub_1C44BBFAC(uint64_t a1)
{

  return sub_1C4F02778();
}

void sub_1C44BBFDC(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4E9412C(319, a2, v3);
}

uint64_t sub_1C44BC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a6;
  v10 = a5;

  sub_1C446C37C(a7, v9);
}

uint64_t sub_1C44BC0C8(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v52 = a7;
  v61 = a6;
  v50 = type metadata accessor for ConstructionPhaseStatus(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - v14;
  v56 = sub_1C456902C(&qword_1EC0C39F8, &qword_1C4F54120);
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v48 - v20;
  v21 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C4EFD548();
  v25 = *(*(v24 - 8) + 16);
  v54 = a2;
  v53 = v25;
  v25(v23, a2, v24);
  v26 = &v23[v21[6]];
  v57 = a3;
  sub_1C4471BAC(a3, v26);
  v23[v21[5]] = 10;
  v27 = &v23[v21[7]];
  *v27 = a4;
  *(v27 + 1) = a5;
  *&v23[v21[8]] = v61;
  v23[v21[9]] = 1;
  sub_1C44344B8(a4, a5);
  sub_1C44B95C0(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
  v61 = a1;
  v28 = v71;
  sub_1C4EFB6A8();
  if (!v28)
  {
    v48 = v15;
    v66 = &type metadata for ProgressTokenColumn;
    v67 = sub_1C4492FAC();
    v29 = v67;
    LOBYTE(v65[0]) = 0;
    v63 = type metadata accessor for Source(0);
    v64 = sub_1C44B95C0(qword_1EDDF0D80, type metadata accessor for Source, &protocol conformance descriptor for Source);
    v30 = sub_1C4422F90(v62);
    sub_1C4471BAC(v57, v30);
    v69 = sub_1C4EFB298();
    v70 = MEMORY[0x1E699FE60];
    v31 = v69;
    v49 = v69;
    sub_1C4422F90(v68);
    sub_1C4EFBB28();
    sub_1C4420C3C(v62, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v65);
    sub_1C44B95C0(&qword_1EDDE1100, type metadata accessor for ConstructionProgressTokens, &protocol conformance descriptor for ConstructionProgressTokens);
    v71 = 0;
    v32 = v55;
    sub_1C4EFAE28();
    sub_1C440962C(v68);
    v66 = &type metadata for ProgressTokenColumn;
    v67 = v29;
    LOBYTE(v65[0]) = 1;
    v63 = v24;
    v64 = sub_1C44B95C0(&qword_1EDDFA240, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92B0]);
    v33 = sub_1C4422F90(v62);
    v53(v33, v54, v24);
    v69 = v31;
    v70 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v68);
    sub_1C4EFBB28();
    sub_1C4420C3C(v62, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v65);
    sub_1C4401CBC(&qword_1EDDF0078, &qword_1EC0C39F8, &qword_1C4F54120, MEMORY[0x1E699FF70]);
    v34 = v56;
    sub_1C4EFB438();
    v35 = v59 + 8;
    v54 = *(v59 + 8);
    v54(v32, v34);
    sub_1C440962C(v68);
    v66 = &type metadata for ProgressTokenColumn;
    v67 = v29;
    LOBYTE(v65[0]) = 2;
    v36 = v49;
    v69 = v49;
    v70 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v68);
    sub_1C4EFBB38();
    sub_1C440962C(v65);
    sub_1C4EFB438();
    sub_1C440962C(v68);
    v66 = &type metadata for ProgressTokenColumn;
    v67 = v29;
    LOBYTE(v65[0]) = 3;
    v63 = &type metadata for StageName;
    v64 = sub_1C4493280();
    LOBYTE(v62[0]) = 9;
    v69 = v36;
    v70 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v68);
    sub_1C4EFBB68();
    sub_1C4420C3C(v62, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v65);
    v37 = v58;
    v38 = v54;
    sub_1C4EFB438();
    v38(v32, v34);
    sub_1C440962C(v68);
    v39 = v71;
    sub_1C4EFB898();
    v40 = v35;
    if (v39)
    {
      v38(v37, v34);
      v38(v60, v34);
    }

    else
    {
      v41 = v38;
      v59 = v40;
      v42 = sub_1C4EFBF38();
      v43 = v48;
      sub_1C440BAA8(v48, 1, 1, v42);
      sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
      sub_1C4EFB4E8();
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      LOBYTE(v65[0]) = 2;
      v69 = MEMORY[0x1E69E6370];
      v70 = MEMORY[0x1E69A0148];
      LOBYTE(v68[0]) = 1;
      sub_1C44930A4();
      v44 = v43;
      sub_1C4EFB568();
      sub_1C4420C3C(v68, &qword_1EC0C5040, &qword_1C4F0F950);
      v45 = v60;
      sub_1C4EFB8A8();
      sub_1C4420C3C(v44, &unk_1EC0BCAB0, &unk_1C4F111A0);

      if (v52)
      {
        v46 = v51;
        sub_1C4471BAC(v57, v51);
        *(v46 + *(v50 + 20)) = 3;
        sub_1C44B95C0(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus, &protocol conformance descriptor for ConstructionPhaseStatus);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v46, type metadata accessor for ConstructionPhaseStatus);
      }

      v41(v58, v34);
      v41(v45, v34);
    }
  }

  return sub_1C44BCC4C(v23, type metadata accessor for ConstructionProgressTokens);
}

uint64_t sub_1C44BCA84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCADC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCB34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44BCBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44BCC4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44BCCA4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  sub_1C440962C((v2 + 16));
  if (v0)
  {
    v3 = sub_1C48136F8;
  }

  else
  {
    v3 = sub_1C44BCDC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C44BCDC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  *(v0 + 88) = v2;
  if (v2 == v1)
  {
    v3 = type metadata accessor for PhaseStores(0);
    sub_1C448E020(v3, v4, v5, v6, v7, v8, v9, v10, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    v11 = *(v0 + 8);

    v11();
  }

  else
  {
    v12 = *(v0 + 72);
    if (v2 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C442E860(v12 + 40 * v2 + 32, v0 + 16);
      v13 = sub_1C44506A0();
      v14(v13);
      *(v0 + 113) = *(v0 + 112);
      v15 = swift_task_alloc();
      *(v0 + 96) = v15;
      *v15 = v0;
      v16 = sub_1C441C25C(v15);

      ResumableStage.executeIfRequired(_:)(v16, v17, v18);
    }
  }
}

uint64_t sub_1C44BCEEC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C44BCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v26;
  a24 = v27;
  sub_1C44346B8();
  a22 = v24;
  sub_1C4420124();
  sub_1C448CFCC(v28, v29, v30);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (sub_1C4400B94(v32))
  {
    v34 = *(v24 + 24);
    v33 = *(v24 + 32);
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v25 = 136315138;
    sub_1C4420124();
    sub_1C448CFCC(v34, v33, v35);
    sub_1C4425F18();
    sub_1C447EAE0(v34, v36);
    sub_1C44B7D34();
    v38 = v37;
    v40 = v39;
    v41 = sub_1C4414A08();
    sub_1C447EAE0(v41, v42);
    sub_1C441D828(v38, v40, &a13);
    sub_1C4441528();
    *(v25 + 4) = v33;
    sub_1C4404638(&dword_1C43F8000, v43, v44, "StageFinish %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    sub_1C4430084();
    sub_1C447EAE0(v45, v46);
  }

  sub_1C4412320();
  v47 = sub_1C443661C();
  sub_1C44BD174(v47, v48, v49);
  v50 = sub_1C4404658();
  v51(v50);

  sub_1C43FC1B0();
  sub_1C440405C();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C44BD174(uint64_t a1, char a2, uint64_t a3)
{
  v68 = a3;
  v62 = sub_1C4F00908();
  v61 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C4F008B8();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C4F008F8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v69 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Pipeline.StatusStore(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFD548();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = 0x5F6E6F69737566;
  v74 = 0xE700000000000000;
  v19 = type metadata accessor for Fuser(0);
  sub_1C448CFCC(a1 + *(v19 + 20), v18, type metadata accessor for Source);
  v20 = *v18;
  v21 = v18[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EAE0(v18, type metadata accessor for Source);
  MEMORY[0x1C6940010](v20, v21);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v22 = sub_1C4EFD3D8();
  v24 = v23;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1C6940010](v22, v24);

  v25 = v73;
  v26 = v74;
  sub_1C448CFCC(a1, v11, type metadata accessor for Configuration);
  v11[*(v9 + 28)] = a2;
  v27 = Pipeline.StatusStore.currentSessionId()();
  countAndFlagsBits = v27.value._countAndFlagsBits;
  object = v27.value._object;
  sub_1C447EAE0(v11, type metadata accessor for Pipeline.StatusStore);
  if (!v27.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = countAndFlagsBits;
  *(v31 + 24) = object;
  v32 = swift_allocObject();
  *(v32 + 16) = 34;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C44A059C;
  *(v34 + 24) = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C44A059C;
  *(v37 + 24) = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v32;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v33;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v34;
  v41 = v67;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v35;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v36;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v37;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v38;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v39;
  v42 = v69;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v43 = sub_1C4EFD5F8();
  v45 = v44;
  sub_1C4EFD608();
  v46 = sub_1C4F008D8();
  sub_1C4F00928();
  v47 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v45 & 1) == 0)
  {
    if (!v43)
    {
      __break(1u);
LABEL_7:

      (*(v65 + 8))(v41, v66);
      return (*(v63 + 8))(v42, v64);
    }

    goto LABEL_12;
  }

  if (HIDWORD(v43))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v43 & 0xFFFFF800) == 0xD800)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v43 >> 16 > 0x10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = &v72;
LABEL_12:
  LODWORD(v68) = v47;

  v49 = v60;
  sub_1C4F00958();

  v50 = v61;
  v51 = v62;
  v52 = v41;
  if ((*(v61 + 88))(v49, v62) == *MEMORY[0x1E69E93E8])
  {
    v53 = 0;
    v54 = 0;
    v62 = "[Error] Interval already ended";
  }

  else
  {
    (*(v50 + 8))(v49, v51);
    v62 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v54 = 2;
    v53 = 3;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v57 = 0;
  v71 = 0;
  v70 = v56;
  *v55 = v54;
  v55[1] = v53;
  v73 = (v55 + 2);
  while (v57 != 144)
  {
    v58 = *(inited + v57 + 32);

    v58(&v73, &v71, &v70);

    v57 += 16;
  }

  v59 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v46, v68, v59, v43, v62, v55, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v56, -1, -1);
  MEMORY[0x1C6942830](v55, -1, -1);

  (*(v65 + 8))(v52, v66);
  return (*(v63 + 8))(v69, v64);
}

uint64_t sub_1C44BDAC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44BDB08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44BDB5C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 192) = v0;

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

uint64_t sub_1C44BDC7C()
{
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    sub_1C43FBDA0();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C44BDDC8, 0, 0);
  }
}

uint64_t sub_1C44BDDC8()
{
  v20 = v0;
  (*(v0 + 80))(*(v0 + 48), *(v0 + 32), *(v0 + 16));
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  if (v3)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 16);
    v17 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v8 = 136315138;
    v17(v5, v6, v7);
    v4(v6, v7);
    v9 = sub_1C4F02858();
    v11 = v10;
    v4(v5, v7);
    v12 = sub_1C441D828(v9, v11, &v19);

    *(v8 + 4) = v12;
    sub_1C4404638(&dword_1C43F8000, v13, v14, "PhaseFinish %s");
    sub_1C440962C(v18);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    v4(*(v0 + 48), *(v0 + 16));
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C44BDFA0()
{
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C44BEC04, 0, 0);
  }
}

void *sub_1C44BE0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = a2;
  v73 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = v77;
  result = sub_1C446ABD0(0);
  if (!v24)
  {
    v66 = v13;
    v65 = v20;
    v70 = a1;
    v67 = 0;
    v64 = v10;
    v62 = v17;
    v63 = v7;
    v26 = v74;
    v68 = result;
    v77 = v14;
    v71 = v15;
    v69 = v23;
    sub_1C4EF9CC8();
    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v86 = xmmword_1EDE2D910;
    v87 = unk_1EDE2D920;
    v88 = qword_1EDE2D930;
    v27 = v75;
    v28 = *(v75 + 16);
    v28(v26, v75);
    v29 = v67;
    sub_1C446ABD0(0);
    if (v29)
    {
      v31 = v71;

      return (*(v31 + 8))(v69, v77);
    }

    else
    {
      v67 = v28;
      v30 = v66;
      sub_1C448E94C();

      v32 = v77;
      v33 = sub_1C44157D4(v30, 1, v77);
      v34 = v71;
      if (v33 == 1)
      {
        sub_1C4423A0C(v30, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v35 = v26;
      }

      else
      {
        (*(v71 + 32))(v65, v30, v32);
        if (qword_1EDDF7B40 != -1)
        {
          swift_once();
        }

        v84[0] = xmmword_1EDE2D8E8;
        v84[1] = *&qword_1EDE2D8F8;
        v85 = qword_1EDE2D908;
        v36 = (v67)(v26, v27);
        v38 = v37;
        sub_1C446ABD0(0);
        sub_1C44BEC80(v84, v36, v38);

        v43 = v65;
        sub_1C4EF9CB8();
        v35 = v26;
        v44 = (v67)(v26, v27);
        sub_1C44BF3A4(v84, v44, v45);

        v34 = v71;
        (*(v71 + 8))(v43, v77);
      }

      if (qword_1EDDF7AE8 != -1)
      {
        swift_once();
      }

      v81 = xmmword_1EDE2D7D0;
      v82 = unk_1EDE2D7E0;
      v83 = qword_1EDE2D7F0;
      v67(v35, v27);
      sub_1C446ABD0(0);
      v39 = v64;
      sub_1C448E94C();

      v40 = v77;
      if (sub_1C44157D4(v39, 1, v77) == 1)
      {
        sub_1C4423A0C(v39, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v41 = v73;
        v42 = v63;
      }

      else
      {
        (*(v34 + 32))(v62, v39, v40);
        sub_1C4EF9CB8();
        v41 = v73;
        v42 = v63;
        if (qword_1EDDF7AF8 != -1)
        {
          swift_once();
        }

        v79[0] = xmmword_1EDE2D7F8;
        v79[1] = *&qword_1EDE2D808;
        v80 = qword_1EDE2D818;
        v46 = (v67)(v35, v75);
        sub_1C44BF3A4(v79, v46, v47);

        (*(v34 + 8))(v62, v77);
      }

      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DE10);
      v49 = *(v41 + 16);
      v49(v42, v76, v35);
      v50 = sub_1C4F00968();
      v51 = sub_1C4F01CF8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78 = v76;
        *v52 = 136315138;
        LODWORD(v74) = v51;
        v53 = v72;
        v49(v72, v42, v35);
        v54 = *(v41 + 8);
        v54(v42, v35);
        v55 = v50;
        v56 = sub_1C4F02858();
        v58 = v57;
        v54(v53, v35);
        v59 = sub_1C441D828(v56, v58, &v78);

        *(v52 + 4) = v59;
        _os_log_impl(&dword_1C43F8000, v55, v74, "PhaseMetricsFinish %s", v52, 0xCu);
        v60 = v76;
        sub_1C440962C(v76);
        MEMORY[0x1C6942830](v60, -1, -1);
        MEMORY[0x1C6942830](v52, -1, -1);
      }

      else
      {
        (*(v41 + 8))(v42, v35);
      }

      return (*(v71 + 8))(v69, v77);
    }
  }

  return result;
}

uint64_t sub_1C44BEC04()
{
  sub_1C44BE0C8(v0[2], v0[3], v0[4]);
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C44BEC80(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441CBA4();
    MEMORY[0x1C6940010](*a1, a1[1]);
    v5 = sub_1C44BED60();
    if (!v3)
    {
      v7 = v5;

      return v7;
    }
  }

  else
  {
    v6 = sub_1C44BED60();
    if (!v3)
    {
      return v6;
    }
  }

  return 0;
}

void (*sub_1C44BEDF8(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v48 = a3;
  v31 = a2;
  v30[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EDE2E068);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v36);
  v14 = *(*(v11 - 8) + 16);
  v14(v13, v12, v11);
  v30[0] = v3;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v15;
  v33 = v16;
  v17 = sub_1C4EFB298();
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v11, qword_1EDE2DF28);
  v37 = v11;
  v38 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v36);
  v14(v19, v18, v11);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v31;
  v33 = v48;
  v40 = v17;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v20 = *(v5 + 8);
  v20(v7, v4);
  sub_1C440962C(v39);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910, MEMORY[0x1E699FF60]);
  sub_1C446B794();
  v21 = v30[2];
  sub_1C4EFAFF8();
  v20(v10, v4);
  if (v21)
  {
    return v20;
  }

  v22 = v43;
  if (!v43)
  {
    return 0;
  }

  v23 = v42;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v27 = v47;
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  sub_1C45A2B10();
  sub_1C4EF9698();
  if (*(v42 + 16))
  {
    v28 = v24;
    v20 = *(v42 + 32);
    sub_1C4470E30(v23, v22, v28, v25, v26, v27);

    return v20;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1C4F02248();

  v42 = 0xD00000000000002FLL;
  v43 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v31, v48);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void (*sub_1C44BF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char *, uint64_t)
{
  result = sub_1C44BEDF8(a1, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C44BF3A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[4];

    v6 = sub_1C4433DE4();
    v4(v6, a1);
    return sub_1C44239FC(v4, v5);
  }

  else
  {
    v9 = *a1;
    v8 = a1[1];
    if (a3)
    {
      sub_1C444B2B4();
      sub_1C441CBA4();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v9, v8);
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C441C09C();
    sub_1C44BF660();
  }
}

uint64_t sub_1C44BF4E4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    MEMORY[0x1C6940010](*a3, a3[1]);
    sub_1C44BF660();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "<PipelineStatus> Phase specific status should always have a keyPrefix", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4AD3B98();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }
}

void sub_1C44BF660()
{
  sub_1C440BDEC();
  v2 = v1;
  sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
  sub_1C4418B14();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0D130;
  *(v3 + 32) = v2;
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  v4 = sub_1C496D4C4();
  sub_1C4425D04(v4);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C440EE0C();
}

uint64_t sub_1C44BF784()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C44BF864(uint64_t a1, uint64_t a2)
{
  *(v3 + 1112) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE6DEB0](v3 + 16, a2, sub_1C4AC5620, v3 + 736);
  }

  else
  {
    return sub_1C43FFE30(sub_1C44BF89C);
  }
}

uint64_t sub_1C44BF89C()
{
  sub_1C4404D98();
  v2 = v0[136];
  v0[140] = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v0 + 97;
    if (qword_1EDDF7BA0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1C442539C(&qword_1EDDF7BA0);
LABEL_3:
  v3 = v0[132];
  v4 = v0[129];
  v5 = *algn_1EDE2DA10;
  *v1 = xmmword_1EDE2DA00;
  *(v1 + 1) = v5;
  v1[4] = qword_1EDE2DA20;
  sub_1C440B110();
  sub_1C443113C(v4, v6);
  v7 = *(v4 + *(v3 + 20));
  v0[127] = 0xD000000000000010;
  v0[128] = 0x80000001C4FAAFC0;
  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E75;
  switch(v7)
  {
    case 1:
      v8 = 0xE400000000000000;
      v9 = 1819047270;
      break;
    case 2:
      v8 = 0xE500000000000000;
      v9 = 0x61746C6564;
      break;
    case 3:
      v8 = 0xEA0000000000676ELL;
      v9 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v10 = v0[139];
  v11 = v0[131];
  MEMORY[0x1C6940010](v9, v8);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  v12 = v0[127];
  v13 = v0[128];
  type metadata accessor for KeyValueStore(0);
  sub_1C43FD23C();
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v11, v12, v13);
  v0[141] = v10;
  if (v10)
  {
    v15 = sub_1C4AC5520;
    v16 = v0 + 2;
    v17 = v0 + 102;
  }

  else
  {
    sub_1C440F1BC();
    sub_1C448B734();
    v0[142] = 0;

    v15 = sub_1C44BFAEC;
    v16 = v0 + 2;
    v17 = v0 + 122;
  }

  return MEMORY[0x1EEE6DEB0](v16, v14, v15, v17);
}

uint64_t sub_1C44BFB00()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C440962C((v0 + 856));
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  *(v0 + 1088) = *(v0 + 1120);
  v4 = v3[2];
  if (!v4)
  {
    sub_1C447F9FC();

    sub_1C43FC1B0();
    goto LABEL_8;
  }

  sub_1C448BD48((v3 + 4), v0 + 856);
  if (!swift_isUniquelyReferenced_nonNull_native() || (v4 - 1) > v3[3] >> 1)
  {
    sub_1C4401E28();
    sub_1C448B40C();
    v3 = v5;
  }

  *(v0 + 1096) = v3;
  v6 = *(v0 + 1040);
  sub_1C440962C(v3 + 4);
  v7 = v3[2];
  memmove(v3 + 4, v3 + 9, 40 * v7 - 40);
  v3[2] = v7 - 1;
  *v6 = v3;
  sub_1C4F01968();
  if (v1)
  {
    sub_1C440962C((v0 + 856));
    sub_1C447F9FC();

    sub_1C43FBDA0();
LABEL_8:
    sub_1C4426C44();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v17 = *(v0 + 1080);
  v18 = *(v0 + 1064);
  v19 = *(v0 + 1032);
  sub_1C448BD48(v0 + 856, v0 + 936);
  sub_1C44346A0();
  sub_1C443113C(v19, v17);
  v20 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 1104) = v21;
  sub_1C441D670((v0 + 936), v21 + 16);
  sub_1C4469200();
  sub_1C44760B0(v17, v21 + v20);
  sub_1C44239FC(&unk_1C4F4E0D8, v2);
  swift_asyncLet_begin();
  sub_1C4436600();
  sub_1C4426C44();

  return MEMORY[0x1EEE6DEC0](v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t PipelinePhase.deinit()
{
  sub_1C442D1D0();
  sub_1C447EAE0(v0 + v1, v2);
  sub_1C447EAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_stores, type metadata accessor for PhaseStores);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor));
  sub_1C443530C();
  sub_1C447EAE0(v0 + v3, v4);
  sub_1C4430084();
  sub_1C447EAE0(v0 + v5, v6);
  return v0;
}

uint64_t sub_1C44BFD9C()
{
  PipelinePhase.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C44BFDF0()
{
  result = qword_1EDDF0610;
  if (!qword_1EDDF0610)
  {
    sub_1C4572308(&qword_1EC0B9170, &unk_1C4F0EC70);
    sub_1C45A2840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0610);
  }

  return result;
}

uint64_t sub_1C44BFF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void sub_1C44BFFBC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1C44C01C0);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        sub_1C440BAA8(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_1C44C01E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1C44C0334()
{
  v2 = sub_1C44A1E40();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v5 = type metadata accessor for CNContactFullSourceIngestor(0);
  sub_1C4471CA0(v5);
  v6 = sub_1C456902C(&qword_1EC0BA5A8, &unk_1C4F14300);
  v7 = sub_1C4485A60(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 40));
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
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C44C0438()
{

  return sub_1C4EFD548();
}

uint64_t sub_1C44C0474()
{
  *(v2 + *(v1 + 40)) = v0;
  *(v2 + *(v1 + 44)) = *(v3 - 128);
}

uint64_t sub_1C44C04A4()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44C051C@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D610(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C44C0544()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C44C05C4()
{
  sub_1C43FCF70();
  v0 = sub_1C43FDE54();
  type metadata accessor for PhaseStores(v0);
  v1 = sub_1C4407B44();
  v2 = type metadata accessor for CNContactFullSourceIngestor(v1);
  sub_1C44124C8(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, SWORD2(v15), SBYTE6(v15), SHIBYTE(v15));
  v10 = swift_task_alloc();
  v11 = sub_1C4409044(v10);
  *v11 = v12;
  sub_1C44246F8(v11);

  return sub_1C44C0680();
}

uint64_t sub_1C44C0680()
{
  sub_1C43FBCD4();
  v1[16] = v0;
  v2 = type metadata accessor for CNContactFullSourceIngestor(0);
  v1[17] = v2;
  sub_1C43FBD18(v2);
  v1[18] = sub_1C43FBE7C();
  v3 = sub_1C4EFCCC8();
  v1[19] = v3;
  sub_1C43FCF7C(v3);
  v1[20] = v4;
  v1[21] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v5);
  v1[22] = sub_1C43FBE7C();
  v6 = sub_1C4EF98F8();
  v1[23] = v6;
  sub_1C43FCF7C(v6);
  v1[24] = v7;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44C0808, 0, 0);
}

uint64_t sub_1C44C0808()
{
  v67 = v0;
  v66[1] = *MEMORY[0x1E69E9840];
  sub_1C44C0EFC();
  v1 = v0 + 16;
  v2 = (v0 + 96);
  v3 = (v0 + 104);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v6 = *(v5 + *(v4 + 28));
  v7 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
  *(v0 + 80) = sub_1C4461BB8(0, &qword_1EDDF05A8, 0x1E695CE90);
  *(v0 + 88) = &off_1F43E6920;
  *(v0 + 56) = v7;
  sub_1C468282C();
  v8 = [objc_opt_self() service];
  *(v0 + 112) = 0;
  v9 = [v8 requestVUIndexURLForSystemPhotosLibraryWithError_];

  v10 = *(v0 + 112);
  if (!v9)
  {
    v20 = *(v0 + 128);
    v21 = v10;
    sub_1C4EF97A8();

    swift_willThrow();
LABEL_6:
    sub_1C4420C3C(v1, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C44C600C(v20, v3, v2);

    sub_1C43FBDA0();
    goto LABEL_7;
  }

  v63 = v6;
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  v64 = *(v0 + 152);
  sub_1C4EF98C8();
  v17 = v10;

  (*(v13 + 16))(v14, v11, v12);
  sub_1C440BAA8(v14, 0, 1, v12);
  (*(v16 + 104))(v15, *MEMORY[0x1E69E0610], v64);
  v18 = sub_1C4EFCD18();
  sub_1C44099C4(v18);
  v19 = sub_1C4EFCCA8();
  v22 = (v0 + 120);
  v23 = *(v0 + 200);
  v24 = v19;
  v25 = *(v0 + 128);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v26 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v27 = sub_1C44B90E0(v23);
  *(v0 + 216) = 0;
  *(v0 + 120) = 0;
  type metadata accessor for PhaseStores(0);
  v28 = swift_task_alloc();
  v28[2] = v25;
  v28[3] = v0 + 120;
  v28[4] = v0 + 216;
  v28[5] = v0 + 96;
  v28[6] = v24;
  v28[7] = v27;
  v28[8] = v0 + 16;
  v28[9] = v0 + 104;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C44C92A8, v28);

  v29 = *v22;
  if (*v22)
  {
    v30 = v27;
    v31 = *(v0 + 208);
    v32 = *(v0 + 184);
    v33 = *(v0 + 192);
    v20 = *(v0 + 128);
    swift_willThrow();
    v34 = v29;

    (*(v33 + 8))(v31, v32);
    v2 = (v0 + 96);

    v1 = v0 + 16;
    v3 = (v0 + 104);
    goto LABEL_6;
  }

  if ((*(v0 + 216) & 1) != 0 || (v37 = [v63 currentHistoryToken]) == 0)
  {
    v65 = v27;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    sub_1C43FBC98();
    sub_1C448C9D8();
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CD8();
    v52 = sub_1C4417F98(v51);
    v53 = *(v0 + 144);
    if (v52)
    {
      v54 = sub_1C43FD084();
      v55 = sub_1C43FFD34();
      v66[0] = v55;
      *v54 = 136315138;
      v56 = sub_1C44C0334();
      v58 = v57;
      sub_1C440CB3C();
      sub_1C441D828(v56, v58, v66);
      sub_1C4426A94();

      *(v54 + 4) = v53;
      _os_log_impl(&dword_1C43F8000, v50, v51, "Unable to commit full pipeline for : %s", v54, 0xCu);
      sub_1C440962C(v55);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C440CB3C();
    }

    v1 = v0 + 16;
    v59 = *(v0 + 208);
    v60 = *(v0 + 184);
    v61 = *(v0 + 192);
    v20 = *(v0 + 128);
    sub_1C465B58C();
    sub_1C441C114();
    swift_allocError();
    *v62 = 1;
    swift_willThrow();

    (*(v61 + 8))(v59, v60);
    v2 = (v0 + 96);
    v3 = (v0 + 104);
    goto LABEL_6;
  }

  v38 = v37;
  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 192);
  v42 = *(v0 + 128);
  sub_1C4EF9A68();

  v43 = sub_1C4404DC8();
  sub_1C44344B8(v43, v44);
  sub_1C4404DC8();
  sub_1C44C55E4();

  v45 = sub_1C4404DC8();
  sub_1C4434000(v45, v46);
  v47 = sub_1C4404DC8();
  sub_1C4434000(v47, v48);
  (*(v41 + 8))(v39, v40);
  sub_1C4420C3C(v0 + 16, &unk_1EC0BABC0, qword_1C4F16ED8);
  sub_1C44C600C(v42, (v0 + 104), (v0 + 96));

  sub_1C43FBDA0();
LABEL_7:

  return v35();
}

void sub_1C44C0EFC()
{
  v0 = sub_1C4F01108();
  v1 = sub_1C44C1028(v0);

  if (!v1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Siri Toggle: Pipeline is blocked from sourcing CNContacts", v5, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C46828B4();
    sub_1C441C114();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1C44C1028(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = objc_msgSend_containsObject_(v2, v3, v1, v4);

  return v5 ^ 1u;
}

uint64_t sub_1C44C1084(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = sub_1C441DD30();
      break;
    case 2:
      result = sub_1C440C564();
      break;
    case 3:
      result = sub_1C43FD894(21);
      break;
    case 4:
      result = sub_1C44017E8();
      break;
    case 5:
      result = sub_1C4461FC0();
      break;
    case 6:
      result = 0x6449656372756F73;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    case 8:
      result = sub_1C445A978();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C44C1190()
{
  result = qword_1EDDF8A00[0];
  if (!qword_1EDDF8A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8A00);
  }

  return result;
}

uint64_t sub_1C44C11E4()
{
}

uint64_t sub_1C44C1238()
{
}

uint64_t sub_1C44C1250()
{

  return swift_setDeallocating();
}

uint64_t sub_1C44C1270()
{
  v2 = *(v0 - 904);
  v3 = *(v0 - 920);

  return sub_1C44239FC(v2, v3);
}

void *sub_1C44C12D4(uint64_t a1, ...)
{

  return sub_1C4F02AF8();
}

unint64_t sub_1C44C12F8(uint64_t a1, unint64_t a2)
{

  return sub_1C441D828(a1, a2, (v2 - 128));
}

uint64_t sub_1C44C135C()
{

  return sub_1C448D5BC();
}

void sub_1C44C1374(void *a1@<X8>)
{
  *a1 = *(v1 - 256);
  a1[1] = v2;
  v8 = (v6 + *(v3 + 40));
  *v8 = v4;
  v8[1] = v5;
  *(v6 + *(v3 + 44)) = v7;
}

uint64_t sub_1C44C13D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = a1 + 32;
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = result + 40;
    sub_1C442E860(result, v7);
    sub_1C4409678(v7, v7[3]);
    sub_1C4EFB6A8();
    sub_1C440962C(v7);
    result = v6;
  }

  while (!v2);
  return result;
}

uint64_t sub_1C44C149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF8D88, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void EntityTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE0B8, &qword_1C4F325F0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44C17FC();
  sub_1C440F61C(&type metadata for EntityTriple.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for EntityTriple(0);
    sub_1C4404F64();
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v6, v7, MEMORY[0x1E69A9750]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4401670();
    sub_1C4EFF8A8();
    sub_1C4406FE8();
    sub_1C4490F60(v8, v9, MEMORY[0x1E69A99F0]);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C43FF10C();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C44A1D74();
    sub_1C441FBB8();
    sub_1C4490F60(v10, v11, &protocol conformance descriptor for Source);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C449DAB8();
    sub_1C442FDD8();
    sub_1C4F027B8();
    sub_1C443E19C();
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  v12 = sub_1C440231C();
  v13(v12);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44C17FC()
{
  result = qword_1EDDF8DF8;
  if (!qword_1EDDF8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DF8);
  }

  return result;
}

void sub_1C44C1850(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char *a10, unsigned __int8 a11, void (*a12)(void), char *a13, uint64_t a14, uint64_t *a15)
{
  v466 = a8;
  v475 = a7;
  v474 = a6;
  v465 = a5;
  v472 = a4;
  v469 = a3;
  v482 = a2;
  v457 = a9;
  v476 = a15;
  v473 = sub_1C456902C(&qword_1EC0BAD30, &unk_1C4F0E170);
  v460 = *(v473 - 8);
  MEMORY[0x1EEE9AC00](v473);
  v478 = &v451 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v464 = (&v451 - v18);
  v19 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v459 = &v451 - v20;
  v21 = sub_1C456902C(&qword_1EC0BAD40, &qword_1C4F175A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v493 = &v451 - v22;
  v494 = type metadata accessor for CNContactStructs.Organization(0);
  MEMORY[0x1EEE9AC00](v494);
  v461 = &v451 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  MEMORY[0x1EEE9AC00](v489);
  v462 = (&v451 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v481 = sub_1C4EF9648();
  v471 = *(v481 - 8);
  MEMORY[0x1EEE9AC00](v481);
  v484 = &v451 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C456902C(&qword_1EC0BAD48, &qword_1C4F175A8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v470 = &v451 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v488 = &v451 - v29;
  v30 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
  v490 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v492 = &v451 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
  v468 = *(v491 - 8);
  MEMORY[0x1EEE9AC00](v491);
  v458 = &v451 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v495 = &v451 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v463 = &v451 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v480 = (&v451 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v477 = &v451 - v40;
  v41 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v486 = &v451 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v467 = &v451 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v451 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v451 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v451 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v451 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v451 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v451 - v61;
  v63 = type metadata accessor for CNContactStructs.Person(0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v451 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = MEMORY[0x1E69E7CC0];
  v66 = sub_1C44CB92C();
  v67 = v487;
  sub_1C44CBA5C(v66, v68, v69, v70, v71, v72, v73, v74, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462);
  if (v67)
  {
    *v476 = v67;
    return;
  }

  v451 = v59;
  v452 = v62;
  v453 = v53;
  v454 = v56;
  v455 = v47;
  v487 = v50;
  v75 = v467;
  v456 = 0;
  v483 = v63;
  v485 = v65;
  v479 = a1;
  v76 = [v482 stringFromContact_];
  if (v76)
  {
    v77 = v76;
    v78 = sub_1C4F01138();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  v81 = v483;
  v82 = v494;
  v83 = v75;
  v84 = v485;
  v85 = &v485[v483[51]];

  *v85 = v78;
  v85[1] = v80;
  v86 = v479;
  v87 = [v479 givenName];
  v88 = sub_1C4F01138();
  v90 = v89;

  v91 = (v84 + v81[9]);

  *v91 = v88;
  v91[1] = v90;
  v92 = [v86 phoneticGivenName];
  v93 = sub_1C4F01138();
  v95 = v94;

  v96 = (v84 + v81[53]);

  *v96 = v93;
  v96[1] = v95;
  v97 = [v86 middleName];
  v98 = sub_1C4F01138();
  v100 = v99;

  v101 = (v84 + v81[15]);

  *v101 = v98;
  v101[1] = v100;
  v102 = [v86 phoneticMiddleName];
  v103 = sub_1C4F01138();
  v105 = v104;

  v106 = (v84 + v81[55]);

  *v106 = v103;
  v106[1] = v105;
  v107 = [v86 familyName];
  v108 = sub_1C4F01138();
  v110 = v109;

  v111 = (v84 + v81[17]);

  *v111 = v108;
  v111[1] = v110;
  v112 = [v86 phoneticFamilyName];
  v113 = sub_1C4F01138();
  v115 = v114;

  v116 = (v84 + v81[57]);

  *v116 = v113;
  v116[1] = v115;
  v117 = [v86 previousFamilyName];
  v118 = sub_1C4F01138();
  v120 = v119;

  v121 = (v84 + v81[43]);

  *v121 = v118;
  v121[1] = v120;
  v122 = [v86 nickname];
  v123 = sub_1C4F01138();
  v125 = v124;

  v126 = (v84 + v81[21]);

  *v126 = v123;
  v126[1] = v125;
  v127 = [v86 namePrefix];
  v128 = sub_1C4F01138();
  v130 = v129;

  v131 = (v84 + v81[13]);

  *v131 = v128;
  v131[1] = v130;
  v132 = [v86 nameSuffix];
  v133 = sub_1C4F01138();
  v135 = v134;

  v136 = (v84 + v81[19]);

  *v136 = v133;
  v136[1] = v135;
  v137 = [v86 birthday];
  if (v137)
  {
    v138 = v137;
    v139 = v451;
    sub_1C4EF9598();

    v140 = 0;
    v141 = v481;
    v142 = v471;
    v143 = v452;
  }

  else
  {
    v140 = 1;
    v141 = v481;
    v142 = v471;
    v143 = v452;
    v139 = v451;
  }

  sub_1C440BAA8(v139, v140, 1, v141);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v143, 1, v141) == 1)
  {
    sub_1C4420C3C(v143, &unk_1EC0BAD50, &unk_1C4F168E0);
    v144 = 0;
    v145 = 0;
  }

  else
  {
    v144 = sub_1C44CDAD4();
    v145 = v146;
    (*(v142 + 8))(v143, v141);
  }

  v147 = v491;
  v148 = &v485[v483[25]];

  *v148 = v144;
  v148[1] = v145;
  v149 = [v479 birthday];
  if (v149)
  {
    v150 = v149;
    v151 = v453;
    sub_1C4EF9598();

    v152 = 0;
    v153 = v454;
  }

  else
  {
    v152 = 1;
    v153 = v454;
    v151 = v453;
  }

  sub_1C440BAA8(v151, v152, 1, v141);
  sub_1C44CDA7C();
  v154 = sub_1C44157D4(v153, 1, v141);
  v155 = v141;
  v156 = v485;
  if (v154 == 1)
  {
    sub_1C4420C3C(v153, &unk_1EC0BAD50, &unk_1C4F168E0);
    v157 = 0;
    v158 = 0;
  }

  else
  {
    v157 = sub_1C44CE310();
    v158 = v159;
    (*(v142 + 8))(v153, v155);
  }

  v160 = (v156 + v483[27]);

  *v160 = v157;
  v160[1] = v158;
  v161 = [v479 nonGregorianBirthday];
  if (v161)
  {
    v162 = v161;
    v163 = v455;
    sub_1C4EF9598();

    v164 = 0;
    v165 = v481;
    v166 = v487;
  }

  else
  {
    v164 = 1;
    v165 = v481;
    v166 = v487;
    v163 = v455;
  }

  sub_1C440BAA8(v163, v164, 1, v165);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v166, 1, v165) == 1)
  {
    sub_1C4420C3C(v166, &unk_1EC0BAD50, &unk_1C4F168E0);
    v167 = 0;
    v168 = 0;
  }

  else
  {
    v167 = sub_1C44CDAD4();
    v168 = v169;
    (*(v142 + 8))(v166, v165);
  }

  v170 = &v485[v483[33]];

  *v170 = v167;
  v170[1] = v168;
  v171 = v479;
  v172 = [v479 nonGregorianBirthday];
  if (v172)
  {
    v173 = v172;
    v174 = v486;
    sub_1C4EF9598();

    v175 = 0;
  }

  else
  {
    v175 = 1;
    v174 = v486;
  }

  sub_1C440BAA8(v174, v175, 1, v165);
  sub_1C44CDA7C();
  v176 = sub_1C44157D4(v83, 1, v165);
  v177 = v165;
  v178 = v485;
  if (v176 == 1)
  {
    sub_1C4420C3C(v83, &unk_1EC0BAD50, &unk_1C4F168E0);
    v179 = 0;
    v180 = 0;
  }

  else
  {
    v179 = sub_1C44CE310();
    v180 = v181;
    (*(v142 + 8))(v83, v177);
  }

  v182 = (v178 + v483[35]);

  *v182 = v179;
  v182[1] = v180;
  v183 = sub_1C4EFEEF8();
  v184 = v477;
  v487 = v183;
  sub_1C440BAA8(v477, 1, 1, v183);
  sub_1C4EFD258();
  if (qword_1EDDFED28 != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    v185 = type metadata accessor for Source(0);
    v186 = sub_1C442B738(v185, &unk_1EDDFD088);
    sub_1C448CA30();
    sub_1C4EFE558();
    v187 = (v184 + *(v147 + 32));
    sub_1C4EFE658();
    v188 = v147;
    v189 = (v184 + *(v147 + 40));
    sub_1C4EFEED8();
    v190 = (v184 + v188[12]);
    *v190 = 0;
    v190[1] = 0;
    sub_1C4EFEE18();
    v191 = (v184 + v188[14]);
    *v191 = 0;
    v191[1] = 0;
    sub_1C4EFE738();
    v192 = (v184 + v188[16]);
    *v192 = 0;
    v192[1] = 0;
    v193 = [v171 identifier];
    v194 = sub_1C4F01138();
    v195 = v171;
    v197 = v196;

    *v187 = v194;
    v187[1] = v197;
    v199 = *v186;
    v198 = *(v186 + 1);
    v486 = v186;
    *v189 = v199;
    v189[1] = v198;
    v200 = v469;
    if (v469)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v201 = objc_autoreleasePoolPush();
      v202 = type metadata accessor for PhaseStores(0);
      v203 = sub_1C44CE7B0(v200, *(v472 + *(v202 + 32)), v465, v482);
      objc_autoreleasePoolPop(v201);

      v171 = v195;
      v204 = v483;
      v205 = v492;
      v206 = v468;
      if (v203)
      {
        *v192 = xmmword_1C4F17530;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v171 = v195;
      v204 = v483;
      v205 = v492;
      v206 = v468;
    }

    sub_1C448CA30();
    sub_1C44CF814(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v208 = v207;
    v210 = *(v207 + 16);
    v209 = *(v207 + 24);
    v211 = v485;
    if (v210 >= v209 >> 1)
    {
      sub_1C44CF814(v209 > 1, v210 + 1, 1, v207);
      v208 = v448;
    }

    *(v208 + 16) = v210 + 1;
    v467 = ((v206[80] + 32) & ~v206[80]);
    v465 = *(v206 + 9);
    v212 = v208;
    sub_1C44CF9EC();
    v480 = v212;
    v502 = v212;
    sub_1C44DDE2C();
    if (v498)
    {
      sub_1C441D670(&v497, &v499);
      v213 = sub_1C44CFC70(&v499);
      v215 = v214;
      v216 = v204[64];

      *(v211 + v216) = v213;
      sub_1C44D1BE8();
      sub_1C440962C(&v499);
      if (v215)
      {
        v217 = (v211 + v204[49]);

        *v217 = xmmword_1C4F17530;
      }
    }

    else
    {
      sub_1C4420C3C(&v497, &unk_1EC0BABC0, qword_1C4F16ED8);
    }

    v218 = [v171 postalAddresses];
    v469 = sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
    v219 = sub_1C4F01678();

    v220 = sub_1C4428DA0(v219);
    if (!v220)
    {

      v221 = MEMORY[0x1E69E7CC0];
LABEL_55:
      v227 = v483[63];

      *(v211 + v227) = v221;
      sub_1C44D7BA8();
      v228 = sub_1C44D7E5C();
      v229 = v228;
      if (v228)
      {
        v230 = [v228 identifier];

        v231 = sub_1C4F01138();
        v229 = v232;

        v171 = v479;
      }

      else
      {
        v231 = 0;
      }

      v233 = [v171 identifier];
      v234 = sub_1C4F01138();
      v236 = v235;

      if (v229)
      {
        v237 = v231 == v234 && v229 == v236;
        v147 = v483;
        if (v237)
        {
        }

        else
        {
          v238 = sub_1C4F02938();

          if ((v238 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v239 = &v485[*(v147 + 44)];

        *v239 = xmmword_1C4F17530;
      }

      else
      {

        v147 = v483;
      }

LABEL_68:
      v468 = a10;
      v240 = v479;
      v241 = [v479 contactRelations];
      v242 = sub_1C4F01678();

      v243 = sub_1C44D7F40(v242);

      v244 = [v240 contactRelations];
      v245 = sub_1C4F01678();

      *&v499 = v245;
      sub_1C44D8450(v243);
      v246 = v466;
      if (v466)
      {
        sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
        v247 = sub_1C4F00F28();
      }

      else
      {
        v247 = 0;
      }

      v248 = v476;
      v249 = v485;
      *&v497 = v247;
      MEMORY[0x1EEE9AC00](v247);
      v250 = v482;
      *(&v451 - 10) = v475;
      *(&v451 - 9) = v250;
      *(&v451 - 8) = v246;
      *(&v451 - 7) = &v497;
      *(&v451 - 6) = v249;
      *(&v451 - 5) = v251;
      v219 = v479;
      v252 = v468;
      *(&v451 - 4) = v479;
      *(&v451 - 3) = v252;
      *(&v451 - 2) = &v503;
      v253 = v456;
      sub_1C44D85F4();
      v205 = v253;
      if (v253)
      {

        sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C44C45FC(v249, type metadata accessor for CNContactStructs.Person);

        *v248 = v253;
        return;
      }

      v255 = v254;
      v474 = 0;

      v256 = *(v147 + 248);

      *(v249 + v256) = v255;
      sub_1C44D8894();
      v257 = [v219 dates];
      v258 = sub_1C4F01678();

      v259 = sub_1C4428DA0(v258);
      if (!v259)
      {
        v482 = MEMORY[0x1E69E7CC0];
        v475 = MEMORY[0x1E69E7CC0];
        v291 = v493;
LABEL_107:
        v296 = v291;
        v455 = a13;
        v456 = a12;
        LODWORD(v471) = a11;

        v297 = v483;
        v298 = v483[29];
        v299 = v485;
        v300 = v482;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *(v299 + v298) = v300;
        v301 = v297[31];
        v302 = v475;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *(v299 + v301) = v302;
        v303 = [v479 socialProfiles];
        v304 = sub_1C4F01678();

        v492 = sub_1C4428DA0(v304);
        v171 = 0;
        v484 = (v304 & 0xC000000000000001);
        v490 = v304;
        v481 = v304 & 0xFFFFFFFFFFFFFF8;
        v466 = MEMORY[0x1E69E7CC0];
        v147 = v491;
        v305 = v495;
        v184 = v489;
        while (v492 != v171)
        {
          if (v484)
          {
            v306 = MEMORY[0x1C6940F90](v171, v490);
          }

          else
          {
            if (v171 >= *(v481 + 16))
            {
              goto LABEL_188;
            }

            v306 = *(v490 + 8 * v171 + 32);
          }

          v307 = v306;
          if (__OFADD__(v171, 1))
          {
            goto LABEL_187;
          }

          v480 = (v171 + 1);
          v308 = [v306 value];
          sub_1C440BAA8(v305, 1, 1, v487);
          sub_1C4EFD258();
          sub_1C448CA30();
          sub_1C4EFE558();
          v309 = (v305 + *(v147 + 32));
          *v309 = 0;
          v309[1] = 0;
          sub_1C4EFE658();
          v310 = (v305 + *(v147 + 40));
          sub_1C4EFEED8();
          v311 = (v305 + *(v147 + 48));
          sub_1C4EFEE18();
          v312 = (v495 + *(v147 + 56));
          sub_1C4EFE738();
          v313 = (v495 + *(v147 + 64));
          *v313 = 0;
          v313[1] = 0;
          v314 = [v308 service];
          v315 = sub_1C4F01138();
          v317 = v316;

          *v310 = v315;
          v310[1] = v317;
          v318 = [v308 username];
          v319 = sub_1C4F01138();
          v321 = v320;

          *v312 = v319;
          v312[1] = v321;
          v305 = v495;
          v322 = [v308 urlString];
          v323 = sub_1C4F01138();
          v325 = v324;

          *v311 = v323;
          v311[1] = v325;
          v147 = v491;
          v326 = v488;
          sub_1C448CA30();
          sub_1C440BAA8(v326, 0, 1, v147);
          sub_1C44C45FC(v305, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
          if (sub_1C44157D4(v326, 1, v147) == 1)
          {
            sub_1C4420C3C(v326, &qword_1EC0BAD48, &qword_1C4F175A8);
            ++v171;
            v184 = v489;
            v296 = v493;
            v82 = v494;
          }

          else
          {
            sub_1C44CF9EC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v184 = v489;
            v296 = v493;
            v82 = v494;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C44CF814(0, *(v466 + 16) + 1, 1, v466);
              v466 = v330;
            }

            v329 = *(v466 + 16);
            v328 = *(v466 + 24);
            if (v329 >= v328 >> 1)
            {
              sub_1C44CF814(v328 > 1, v329 + 1, 1, v466);
              v466 = v331;
            }

            *(v466 + 16) = v329 + 1;
            sub_1C44CF9EC();
            v171 = v480;
          }
        }

        v205 = v296;

        sub_1C44D8ADC(v466);
        v219 = &off_1E81F1000;
        v332 = v479;
        v333 = [v479 organizationName];
        v334 = sub_1C4F01138();
        v336 = v335;

        v337 = HIBYTE(v336) & 0xF;
        if ((v336 & 0x2000000000000000) == 0)
        {
          v337 = v334 & 0xFFFFFFFFFFFFLL;
        }

        if (v337)
        {
          v147 = v462;
          sub_1C440BAA8(v462, 1, 1, v487);
          sub_1C4EFD248();
          sub_1C448CA30();
          sub_1C4EFE2B8();
          v338 = *(v184 + 32);
          v339 = v184;
          v340 = v332;
          v171 = v147 + v338;
          *v171 = 0;
          *(v171 + 8) = 0;
          sub_1C440BAA8(v147 + *(v339 + 36), 1, 1, v82);
          v341 = [v340 organizationName];
          sub_1C4F01138();

          if (qword_1EDDF7978 != -1)
          {
            goto LABEL_199;
          }

          goto LABEL_125;
        }

        v356 = v485;
        goto LABEL_134;
      }

      v171 = v259;
      if (v259 < 1)
      {
        goto LABEL_198;
      }

      v260 = 0;
      v261 = *MEMORY[0x1E695CB50];
      v262 = v258 & 0xC000000000000001;
      v480 = (v471 + 8);
      v482 = MEMORY[0x1E69E7CC0];
      v475 = MEMORY[0x1E69E7CC0];
      v490 = v258 & 0xC000000000000001;
      v492 = v259;
      while (1)
      {
        if (v262)
        {
          v263 = MEMORY[0x1C6940F90](v260, v258);
        }

        else
        {
          v263 = *(v258 + 8 * v260 + 32);
        }

        v264 = v263;
        v265 = [v263 label];
        if (v265)
        {
          v266 = v265;
          v267 = sub_1C4F01138();
          v269 = v268;
        }

        else
        {
          v267 = 0;
          v269 = 0;
        }

        v270 = sub_1C4F01138();
        if (v269)
        {
          if (v267 == v270 && v269 == v271)
          {

LABEL_92:
            v274 = v261;
            v275 = v258;
            v276 = [v264 value];
            sub_1C4EF9598();

            v277 = sub_1C44CDAD4();
            v279 = v278;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C443D664();
              v482 = v292;
            }

            v280 = v482[2];
            if (v280 >= v482[3] >> 1)
            {
              sub_1C443D664();
              v482 = v293;
            }

            v281 = v482;
            v482[2] = (v280 + 1);
            v282 = &v281[2 * v280];
            v282[4] = v277;
            v282[5] = v279;
            v283 = v484;
            v284 = sub_1C44CE310();
            if (v285)
            {
              v286 = v284;
              v287 = v285;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C443D664();
                v475 = v294;
              }

              v288 = *(v475 + 16);
              if (v288 >= *(v475 + 24) >> 1)
              {
                sub_1C443D664();
                v475 = v295;
              }

              (*v480)(v484, v481);
              v289 = v475;
              *(v475 + 16) = v288 + 1;
              v290 = v289 + 16 * v288;
              *(v290 + 32) = v286;
              *(v290 + 40) = v287;
            }

            else
            {
              (*v480)(v283, v481);
            }

            v258 = v275;
            v261 = v274;
            v171 = v492;
            v262 = v490;
            goto LABEL_104;
          }

          v273 = sub_1C4F02938();

          if (v273)
          {
            goto LABEL_92;
          }
        }

        else
        {
        }

LABEL_104:
        ++v260;
        v291 = v493;
        v82 = v494;
        if (v171 == v260)
        {
          goto LABEL_107;
        }
      }
    }

    v147 = v220;
    *&v499 = MEMORY[0x1E69E7CC0];
    sub_1C44D4860(0, v220 & ~(v220 >> 63), 0);
    if (v147 < 0)
    {
      break;
    }

    v171 = 0;
    v221 = v499;
    v82 = v219 & 0xC000000000000001;
    v184 = v456;
    while (1)
    {
      v222 = (v171 + 1);
      if (__OFADD__(v171, 1))
      {
        break;
      }

      sub_1C4431590(v171, v82 == 0, v219);
      if (v82)
      {
        v223 = MEMORY[0x1C6940F90](v171, v219);
      }

      else
      {
        v223 = *(v219 + 8 * v171 + 32);
      }

      v224 = v223;
      *&v497 = v223;
      sub_1C44D4A28(&v497, &v496, v205);
      if (v184)
      {

        *v476 = v496;
        sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C44C45FC(v485, type metadata accessor for CNContactStructs.Person);
        return;
      }

      v184 = 0;

      *&v499 = v221;
      v226 = *(v221 + 16);
      v225 = *(v221 + 24);
      if (v226 >= v225 >> 1)
      {
        sub_1C44D4860(v225 > 1, v226 + 1, 1);
        v221 = v499;
      }

      *(v221 + 16) = v226 + 1;
      v205 = v492;
      sub_1C44CF9EC();
      ++v171;
      if (v222 == v147)
      {
        v456 = 0;

        v211 = v485;
        v171 = v479;
        v82 = v494;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  swift_once();
LABEL_125:
  v342 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v342, qword_1EDDF7980);
  String.base64EncodedSHA(withPrefix:)();
  v344 = v343;
  v346 = v345;

  v347 = v461;
  v348 = v474;
  sub_1C4D6E9E4(v344, v346, v349, v350, v351, v352, v353, v354, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462);
  v355 = v348;
  if (v348)
  {

    sub_1C44C45FC(v147, type metadata accessor for CNContactStructs.EmploymentRelationshipType);

    sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    sub_1C44C45FC(v485, type metadata accessor for CNContactStructs.Person);
LABEL_180:

    *v476 = v355;
    return;
  }

  v474 = 0;
  v357 = *(v219 + 2272);
  v358 = v347;
  v359 = v479;
  v360 = [v479 v357];
  v361 = sub_1C4F01138();
  v363 = v362;

  v364 = (v358 + *(v82 + 36));

  *v364 = v361;
  v364[1] = v363;
  v365 = [v359 phoneticOrganizationName];
  v366 = sub_1C4F01138();
  v368 = v367;

  v369 = (v358 + *(v82 + 44));

  *v369 = v366;
  v369[1] = v368;
  sub_1C448CA30();
  sub_1C440BAA8(v205, 0, 1, v82);
  sub_1C4D6F26C(v205);
  v370 = [v359 departmentName];
  v371 = sub_1C4F01138();
  v373 = v372;

  v374 = HIBYTE(v373) & 0xF;
  if ((v373 & 0x2000000000000000) == 0)
  {
    v374 = v371 & 0xFFFFFFFFFFFFLL;
  }

  if (v374)
  {
    v375 = [v359 departmentName];
    v376 = sub_1C4F01138();
    v378 = v377;
  }

  else
  {
    v376 = 0;
    v378 = 0;
  }

  v147 = v491;
  v379 = v459;

  *v171 = v376;
  *(v171 + 8) = v378;
  v380 = v462;
  sub_1C448CA30();
  sub_1C440BAA8(v379, 0, 1, v489);
  v356 = v485;
  sub_1C4D6F388(v379);
  sub_1C44C45FC(v461, type metadata accessor for CNContactStructs.Organization);
  sub_1C44C45FC(v380, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  v332 = v479;
LABEL_134:
  if ([objc_opt_self() isInternalDevice] && (Configuration.isLivableSourcesEnabled.getter() & 1) != 0)
  {
    v381 = [v332 jobTitle];
    v382 = sub_1C4F01138();
    v384 = v383;

    v385 = HIBYTE(v384) & 0xF;
    if ((v384 & 0x2000000000000000) == 0)
    {
      v385 = v382 & 0xFFFFFFFFFFFFLL;
    }

    if (v385)
    {
      v386 = [v332 jobTitle];
      v387 = sub_1C4F01138();
      v389 = v388;

      v390 = &v485[v483[39]];

      *v390 = v387;
      v390[1] = v389;
    }

    v391 = [v332 instantMessageAddresses];
    v184 = sub_1C4F01678();

    v392 = sub_1C4428DA0(v184);
    v493 = v184;
    v494 = v392;
    v171 = 0;
    v492 = (v184 & 0xC000000000000001);
    v490 = v184 & 0xFFFFFFFFFFFFFF8;
    v488 = MEMORY[0x1E69E7CC0];
    while (v494 != v171)
    {
      if (v492)
      {
        v393 = MEMORY[0x1C6940F90](v171, v493);
      }

      else
      {
        if (v171 >= *(v490 + 16))
        {
          goto LABEL_194;
        }

        v393 = *(v493 + 8 * v171 + 32);
      }

      v394 = v393;
      if (__OFADD__(v171, 1))
      {
        goto LABEL_193;
      }

      v489 = v171 + 1;
      v395 = [v393 value];
      v396 = v495;
      sub_1C440BAA8(v495, 1, 1, v487);
      sub_1C4EFD258();
      sub_1C448CA30();
      sub_1C4EFE558();
      v397 = (v396 + *(v147 + 32));
      *v397 = 0;
      v397[1] = 0;
      sub_1C4EFE658();
      v398 = (v396 + *(v147 + 40));
      sub_1C4EFEED8();
      v399 = (v396 + *(v147 + 48));
      *v399 = 0;
      v399[1] = 0;
      sub_1C4EFEE18();
      v400 = (v396 + *(v147 + 56));
      sub_1C4EFE738();
      v401 = (v396 + *(v147 + 64));
      *v401 = 0;
      v401[1] = 0;
      v402 = [v395 username];
      v403 = sub_1C4F01138();
      v405 = v404;

      *v400 = v403;
      v400[1] = v405;
      v406 = [v395 service];
      v407 = sub_1C4F01138();
      v82 = v408;

      v184 = v470;
      *v398 = v407;
      v398[1] = v82;
      v147 = v491;
      sub_1C448CA30();
      sub_1C440BAA8(v184, 0, 1, v147);
      sub_1C44C45FC(v396, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
      if (sub_1C44157D4(v184, 1, v147) == 1)
      {
        sub_1C4420C3C(v184, &qword_1EC0BAD48, &qword_1C4F175A8);
        ++v171;
      }

      else
      {
        v184 = v458;
        sub_1C44CF9EC();
        v409 = v488;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44CF814(0, *(v409 + 16) + 1, 1, v409);
          v409 = v412;
        }

        v171 = v489;
        v411 = *(v409 + 16);
        v410 = *(v409 + 24);
        if (v411 >= v410 >> 1)
        {
          sub_1C44CF814(v410 > 1, v411 + 1, 1, v409);
          v409 = v413;
        }

        *(v409 + 16) = v411 + 1;
        v488 = v409;
        sub_1C44CF9EC();
      }
    }

    sub_1C44D8ADC(v488);
    v356 = v485;
  }

  else
  {
  }

  v414 = v502;
  v415 = v483;
  v416 = v483[58];

  *(v356 + v416) = v414;
  sub_1C44D8D6C();
  sub_1C44D93D0();
  v418 = v417;
  v419 = v415[61];

  *(v356 + v419) = v418;
  sub_1C4D7F6AC();
  v420 = sub_1C44CB92C();
  v421 = v464;
  *v464 = v420;
  v421[1] = v422;
  sub_1C448CA30();
  v495 = v503;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458CCD4();
    v495 = v449;
  }

  v423 = v478;
  v424 = v460;
  v426 = *(v495 + 16);
  v425 = *(v495 + 24);
  v494 = v426 + 1;
  if (v426 >= v425 >> 1)
  {
    sub_1C458CCD4();
    v495 = v450;
  }

  v427 = v495;
  *(v495 + 16) = v494;
  v171 = v427 + ((*(v424 + 80) + 32) & ~*(v424 + 80));
  v493 = *(v424 + 72);
  v428 = &qword_1EC0BAD30;
  v429 = &unk_1C4F0E170;
  sub_1C44CDA7C();
  v184 = 0;
  v430 = MEMORY[0x1E69E7CC0];
  while (v494 != v184)
  {
    if (v184 >= *(v495 + 16))
    {
      goto LABEL_189;
    }

    sub_1C44DDE2C();
    LOBYTE(v499) = v471;
    v431 = v474;
    sub_1C4D6F494();
    v474 = v431;
    if (v431)
    {
      sub_1C4420C3C(v423, &qword_1EC0BAD30, &unk_1C4F0E170);

      sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
      sub_1C44C45FC(v485, type metadata accessor for CNContactStructs.Person);

      *v476 = v474;
      return;
    }

    v433 = v432;
    v147 = v428;
    v82 = v429;
    sub_1C4420C3C(v423, v428, v429);
    v205 = *(v433 + 16);
    v434 = *(v430 + 16);
    v435 = v434 + v205;
    if (__OFADD__(v434, v205))
    {
      goto LABEL_190;
    }

    v436 = swift_isUniquelyReferenced_nonNull_native();
    if ((v436 & 1) == 0 || v435 > *(v430 + 24) >> 1)
    {
      if (v434 <= v435)
      {
        v437 = v434 + v205;
      }

      else
      {
        v437 = v434;
      }

      sub_1C44C9240(v436, v437, 1, v430);
      v430 = v438;
    }

    v423 = v478;
    if (*(v433 + 16))
    {
      v219 = (*(v430 + 24) >> 1) - *(v430 + 16);
      type metadata accessor for EntityTriple(0);
      if (v219 < v205)
      {
        goto LABEL_192;
      }

      swift_arrayInitWithCopy();

      v423 = v478;
      if (v205)
      {
        v439 = *(v430 + 16);
        v440 = __OFADD__(v439, v205);
        v441 = v439 + v205;
        if (v440)
        {
          __break(1u);
          goto LABEL_197;
        }

        *(v430 + 16) = v441;
      }
    }

    else
    {

      if (v205)
      {
        goto LABEL_191;
      }
    }

    v171 += v493;
    ++v184;
    v428 = v147;
    v429 = v82;
  }

  sub_1C4812140();
  v442 = v474;
  v456();
  v355 = v442;
  if (v442)
  {

    sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    sub_1C44C45FC(v485, type metadata accessor for CNContactStructs.Person);
    goto LABEL_180;
  }

  v443 = *(v430 + 16);

  v444 = v457;
  v445 = v457;
  *v457 = v443;
  v446 = (v445 + 1);
  v447 = v497;
  if (v497)
  {
    v500 = sub_1C456902C(&qword_1EC0BAD68, &qword_1C4F175B8);
    v501 = sub_1C4401CBC(&unk_1EC0BAD70, &qword_1EC0BAD68, &qword_1C4F175B8, MEMORY[0x1E69E5DE8]);
    *&v499 = v447;
    sub_1C441D670(&v499, v446);
  }

  else
  {
    v444[4] = sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
    v444[5] = sub_1C4401CBC(&unk_1EDDF05F0, &unk_1EC0BABF0, &qword_1C4F16F30, MEMORY[0x1E69E6328]);
    v444[1] = MEMORY[0x1E69E7CC0];
  }

  sub_1C44C45FC(v477, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
  sub_1C44C45FC(v485, type metadata accessor for CNContactStructs.Person);
}

uint64_t sub_1C44C45FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44C4674()
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
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v11 = sub_1C43FE99C();
          v5 = sub_1C456902C(v11, v12);
          v7 = *(v2 + 36);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44C483C(uint64_t a1, uint64_t a2, int *a3)
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
          return sub_1C43FE264(a3[8]);
        }

        v8 = v15;
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C44C49A4()
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
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v10)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v12 = sub_1C43FE99C();
          v5 = sub_1C456902C(v12, v13);
          v7 = *(v2 + 44);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44C4B38()
{
  sub_1C440CE48();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v6 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v8 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v9 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v5 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
          v7 = *(v2 + 32);
        }
      }
    }

    v4 = v1 + v7;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C44C4CA8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void *a6, unsigned __int8 *a7, uint64_t a8, void (*a9)(void), char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  v14 = v13;
  ObjectType = swift_getObjectType();
  v20 = *a7;
  v23 = objc_autoreleasePoolPush();
  sub_1C44C1850(v14, a4, a5, a2, a6, a8, a3, a12, &v28, a13, v20, a9, a10, ObjectType, &v30);
  objc_autoreleasePoolPop(v23);
  if (!v27)
  {
    v20 = v28;
    sub_1C441D670(v29, a1);
  }

  return v20;
}

void sub_1C44C4DAC(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10, uint64_t a11, void (*a12)(void), char *a13, void *a14)
{
  v34 = a8;
  v35 = a6;
  v21 = type metadata accessor for PhaseStores(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44BFE8C();
  if (*a5)
  {
    goto LABEL_4;
  }

  if (__OFADD__(*a7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  ++*a7;
  if (![a1 contactType])
  {
    v32 = a13;
    v33 = a10;
    v31 = a12;
    v29 = objc_autoreleasePoolPush();
    sub_1C448C9D8();
    v24 = type metadata accessor for CNContactFullSourceIngestor(0);
    v25 = v24[6];
    v30 = *(a4 + v24[7]);
    v26 = *(a4 + v24[11]);
    v37 = *(a4 + v25);
    sub_1C44DDE2C();
    v27 = 0;
    if (a3)
    {
      v27 = sub_1C44C8F40();
    }

    sub_1C44C4CA8(v38, v23, v30, v26, v34, v33, &v37, v36, v31, v32, a2, v27, (a4 + v24[12]));

    sub_1C4420C3C(v36, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C4485354(v23, type metadata accessor for PhaseStores);
    sub_1C441D670(v38, v39);
    if (!__OFADD__(*a14, 1))
    {
      ++*a14;
      sub_1C441D670(v39, a9);
      objc_autoreleasePoolPop(v29);
      return;
    }

    goto LABEL_11;
  }

LABEL_4:
  a9[3] = sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
  a9[4] = sub_1C4401CBC(&unk_1EDDF05F0, &unk_1EC0BABF0, &qword_1C4F16F30, MEMORY[0x1E69E6328]);
  *a9 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C44C5224(void (*a1)(id *__return_ptr, void *, void, uint64_t), uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for CNContactFullSourceIngestor(0);
  v6 = *(v2 + *(v5 + 28));
  if (*(v2 + *(v5 + 32)) == 1)
  {
    v7 = sub_1C44C8F40();
    v8 = sub_1C44C9794(v7);

    if (v8)
    {
      a1(aBlock, v8, 0, 1);
      sub_1C4409678(aBlock, v27);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v10);
      sub_1C43FBCC4();
      (*(v13 + 16))(v12 - v11);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1C4422F90(v23);
      sub_1C4404044();
      sub_1C4F01478();
      while (1)
      {
        sub_1C4418280(v23, AssociatedTypeWitness);
        sub_1C4404044();
        sub_1C4F01FA8();
        v14 = v22[0];
        if (!v22[0])
        {
          break;
        }

        a1(v22, v22[0], 0, 0);

        sub_1C440962C(v22);
      }

      sub_1C440962C(v23);
      return sub_1C440962C(aBlock);
    }
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDF03C8, 0x1E695CD78);
    v15 = sub_1C44C8F40();
    v16 = sub_1C467EA4C(v15);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C4682884;
    *(v18 + 24) = v17;
    v28 = sub_1C468288C;
    v29 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C468190C;
    v27 = &unk_1F43E65A8;
    v19 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v20 = [v6 enumerateContactsWithFetchRequest:v16 error:aBlock usingBlock:v19];
    _Block_release(v19);

    v21 = aBlock[0];
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    if (!v20)
    {
      sub_1C4EF97A8();

      swift_willThrow();
    }
  }

  return result;
}

void sub_1C44C55E4()
{
  sub_1C43FBD3C();
  v4 = v1;
  v87 = v5;
  v7 = v6;
  v9 = v8;
  type metadata accessor for ConstructionProgressTokens(0);
  sub_1C43FCDF8();
  v83 = v10;
  v84 = v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v12 = sub_1C43FECFC();
  type metadata accessor for ProgressTokens(v12);
  sub_1C43FCDF8();
  v85 = v13;
  v86 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1C4416DF8();
  v16 = type metadata accessor for CNContactFullSourceIngestor(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v18);
  v21 = v79 - v20;
  if (v7 >> 60 == 15)
  {
    sub_1C4656BF8();
  }

  else
  {
    v79[1] = v19;
    v80 = v3;
    v82 = v1;
    v22 = sub_1C44191B8();
    sub_1C44344B8(v22, v23);
    v81 = objc_autoreleasePoolPush();
    v88[0] = v9;
    v88[1] = v7;
    v24 = sub_1C4EF93D8();
    sub_1C44099C4(v24);
    sub_1C4EF93C8();
    v25 = qword_1EC0BAC30;
    sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
    sub_1C442C5A4();
    v29 = sub_1C4401CBC(v26, v27, &qword_1C4F142F8, v28);
    v30 = sub_1C44418D0(v29);
    if (qword_1EC0BAC30)
    {

      objc_autoreleasePoolPop(v81);
      v32 = sub_1C44191B8();
      sub_1C441DFEC(v32, v33);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v34 = sub_1C4F00978();
        sub_1C43FCEE8(v34, qword_1EDE2DE10);
        v35 = sub_1C44623A0();
        sub_1C4430900(v35, v21);
        v36 = sub_1C4F00968();
        v37 = sub_1C4F01CD8();
        v38 = sub_1C44016D0();
        if (os_log_type_enabled(v38, v39))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v40 = swift_slowAlloc();
          sub_1C44305A4(v40);
          *v9 = 136315138;
          sub_1C44B91CC();
          sub_1C447E868(v21, type metadata accessor for CNContactFullSourceIngestor);
          v41 = sub_1C44C0334();
          v43 = v42;
          v44 = sub_1C440CAF0();
          sub_1C447E868(v44, v45);
          v46 = sub_1C447CB90();
          sub_1C441D828(v46, v43, v47);
          sub_1C44D44F0();
          *(v9 + 4) = v41;
          sub_1C4451274(&dword_1C43F8000, v48, v37, "%s failed to update progress token");
          sub_1C440962C(v2);
          v49 = sub_1C4416E14();
          MEMORY[0x1C6942830](v49);
          v50 = sub_1C44068C0();
          MEMORY[0x1C6942830](v50);
        }

        else
        {
          sub_1C447E868(v21, type metadata accessor for CNContactFullSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v0 = v30;
    v51 = v31;

    objc_autoreleasePoolPop(v81);
    v52 = sub_1C44191B8();
    sub_1C441DFEC(v52, v53);
    v4 = v82;
    v9 = v0;
    v7 = v51;
    v3 = v80;
  }

  v54 = v4;
  sub_1C44C5BBC(v88);
  v25 = v89;
  v21 = v87;
  if (!v89)
  {
    sub_1C4420C3C(v88, &qword_1EC0BA490, &unk_1C4F53630);
    v54 = 0;
    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v55 = sub_1C43FECAC();
  v56(v55);
  sub_1C4456268();
  if ((v21 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v54++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v58 = 0x6E776F6E6B6E75;
  switch(*(v4 + v16[6]))
  {
    case 1:
      v58 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v58 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v58);
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        v59 = v16[9];
        sub_1C4EFD548();
        sub_1C43FCE50();
        (*(v60 + 16))(v2, v4 + v59);
        sub_1C441925C();
        sub_1C4430900(v4 + v61, v2 + v62);
        sub_1C4485FC4();
        *v63 = v9;
        v63[1] = v7;
        sub_1C44A1488();
        type metadata accessor for PhaseStores(0);
        sub_1C4488218();
        v64 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v65 = sub_1C4404CB4(v64);
        sub_1C4412DCC(v65, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v66 = sub_1C43FFEF0();
      }

      else
      {
        v68 = v16[9];
        sub_1C4EFD548();
        sub_1C43FCE50();
        (*(v69 + 16))(v3, v4 + v68);
        LOBYTE(v68) = *(v4 + v16[10]);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4430900(v4 + v70, v3 + v71);
        *(v3 + MEMORY[0xE700000000000014]) = v68;
        v72 = (v3 + MEMORY[0xE70000000000001C]);
        *v72 = v9;
        v72[1] = v7;
        *(v3 + MEMORY[0xE700000000000020]) = v54;
        *(v3 + MEMORY[0xE700000000000024]) = v21 & 1;
        type metadata accessor for PhaseStores(0);
        sub_1C4488218();
        v73 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v74 = sub_1C4405904(v73);
        sub_1C44068A0(v74, xmmword_1C4F0D130);
        sub_1C4430900(v3, v75);
        v76 = sub_1C4461F3C();
        sub_1C449498C(v76);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v66 = v3;
      }

      sub_1C447E868(v66, v67);
      v77 = sub_1C44191B8();
      sub_1C441DFEC(v77, v78);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44C5BBC@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for CNContactFullSourceIngestor(0);
  switch(*(v2 + *(v15 + 24)))
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
        v31 = sub_1C447CB3C(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor, "\tfK/li\r");
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
        v31 = sub_1C447CB3C(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor, "\tfK/li\r");
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

uint64_t sub_1C44C600C(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Pipeline.StatusStore(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C448C9D8();
  v8[*(v6 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4485354(v8, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v10 = sub_1C4F01108();

  *(inited + 48) = v10;
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

uint64_t OrganizationMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OrganizationMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t OrganizationMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OrganizationMatcher(0);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v3, a1);
}

void sub_1C44C63E8()
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
  v5 = type metadata accessor for OrganizationMatcher(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA510, &unk_1C4F14240);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v8);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v9);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v10 = sub_1C441B798();
  v11(v10);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44C654C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return OrganizationMatcher.execute()();
}

uint64_t OrganizationMatcher.execute()()
{
  v1[2] = v0;
  v2 = sub_1C4EFD548();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44C66F4, 0, 0);
}

uint64_t sub_1C44C66F4()
{
  v57 = v0;
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for PhaseStores(0);
  v4 = type metadata accessor for OrganizationMatcher(0);
  v5 = *(v4 + 24);
  LOBYTE(v56[0]) = *(v3 + v5);
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v6, v7, v8, v2);
  sub_1C44ABA54(v56, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v5))
  {
    case 1:
    case 3:
      v9 = v0[8];
      v11 = v0[3];
      v10 = v0[4];
      v12 = v0[2];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v54 = v5;
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      sub_1C43FC6AC();
      sub_1C44AC170(v14, v15, v16, v17, v18, v13);
      v19 = *(v10 + 8);
      v19(v9, v11);

      v20 = v19;
      v21 = v0[2];
      v22 = v21 + *(v4 + 20);
      if (*(v22 + *(type metadata accessor for Source(0) + 28)) != 1)
      {
        goto LABEL_8;
      }

      v23 = v0[7];
      v24 = v0[3];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v25 = swift_task_alloc();
      *(v25 + 16) = v21;
      sub_1C43FC6AC();
      sub_1C44C6BB4(v26, v27, v28, v29, v30, v25);
      v20(v23, v24);
      goto LABEL_7;
    case 2:
      v32 = v0[6];
      v33 = v0[4];
      v55 = v0[3];
      v34 = v0[2];
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v35 = *(v3 + v5);
      v36 = swift_task_alloc();
      *(v36 + 16) = v34;
      sub_1C46CE408(v32, v35, 0, 1, sub_1C4A7A02C, v36);
      v37 = *(v33 + 8);
      v37(v32, v55);

      v54 = v5;
      v38 = v0[2];
      v39 = v38 + *(v4 + 20);
      if (*(v39 + *(type metadata accessor for Source(0) + 28)) == 1)
      {
        v40 = v0[5];
        v41 = v0[3];
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v42 = swift_task_alloc();
        *(v42 + 16) = v38;
        sub_1C43FC6AC();
        sub_1C44C6BB4(v43, v44, v45, v46, v47, v42);
        v37(v40, v41);
LABEL_7:
      }

LABEL_8:
      v48 = v0[9];
      v49 = v0[3];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C44C7610();
      LOBYTE(v56[0]) = *(v3 + v54);
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v50, v51, v52, v49);
      sub_1C44A8814(v56, v48);
      sub_1C4420C3C(v48, &qword_1EC0B8568, &unk_1C4F319B0);

      v53 = v0[1];

      result = v53();
      break;
    default:
      v56[0] = 0;
      v56[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4FAEA50);
      sub_1C448D934(*(v3 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44C6C0C(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v64 = a7;
  LODWORD(v71) = a6;
  v73 = a5;
  v72 = a2;
  v74 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - v20;
  v78 = type metadata accessor for EntityPair(0);
  MEMORY[0x1EEE9AC00](v78);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v85) = a4;

  v25 = v75;
  v26 = sub_1C44AD0F8(v24, a3, &v85, 0, v73, v71 & 1);
  if (v25)
  {
  }

  v28 = v26;
  v77 = a1;
  v62 = v21;
  v59 = v15;
  v60 = v18;
  v63 = a4;
  v73 = type metadata accessor for EntityTriple(0);
  v29 = v78;
  v58 = a8;
  v76 = v23;
  v61 = v28;
  v72 = (v70 + 8);
  while (1)
  {
    v30 = v62;
    sub_1C44AD7D0();
    v31 = v63;
    if (sub_1C44157D4(v30, 1, v29) == 1)
    {
      break;
    }

    sub_1C4471E9C(v30, v23);
    v83 = &type metadata for SourcedTripleColumn;
    v84 = sub_1C44964E4();
    LOBYTE(v82[0]) = 8;
    v32 = 0xE700000000000000;
    v33 = 0x6E776F6E6B6E75;
    v34 = v84;
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

    v80 = MEMORY[0x1E69E6158];
    v81 = MEMORY[0x1E69A0130];
    v79[0] = v33;
    v79[1] = v32;
    v35 = sub_1C4EFB298();
    v86 = v35;
    v36 = MEMORY[0x1E699FE60];
    v87 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v85);
    sub_1C4EFBB28();
    sub_1C4420C3C(v79, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v82);
    v75 = type metadata accessor for EntityTriple;
    v37 = sub_1C44AC538(&qword_1EDDF8DB0, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
    v38 = v59;
    v70 = v37;
    sub_1C4EFAE28();
    sub_1C440962C(&v85);
    v83 = &type metadata for SourcedTripleColumn;
    v84 = v34;
    LOBYTE(v82[0]) = 0;
    v39 = v78;
    v40 = *(v78 + 20);
    v41 = sub_1C4EFF0C8();
    v80 = v41;
    v68 = sub_1C44AC538(&qword_1EDDFCCA0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9800]);
    v81 = v68;
    v42 = sub_1C4422F90(v79);
    v43 = *(v41 - 8);
    v69 = *(v43 + 16);
    v67 = v43 + 16;
    v69(v42, &v23[v40], v41);
    v71 = v35;
    v86 = v35;
    v87 = v36;
    sub_1C4422F90(&v85);
    sub_1C4EFBB28();
    sub_1C4420C3C(v79, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v82);
    sub_1C4401CBC(&qword_1EDDFA2C8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF70]);
    v44 = v60;
    v45 = v74;
    sub_1C4EFB438();
    v46 = *v72;
    (*v72)(v38, v45);
    sub_1C440962C(&v85);
    v47 = sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0, MEMORY[0x1E699FF60]);
    v48 = sub_1C44AC538(&qword_1EDDF8DA0, v75, &protocol conformance descriptor for EntityTriple);
    v66 = v47;
    v65 = v48;
    v75 = sub_1C4EFAFE8();
    v46(v44, v45);
    v88 = 0;
    v49 = *(v39 + 24);
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v41, qword_1EDE2DC60);
    sub_1C44AC538(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
    v50 = v76;
    if (sub_1C4F010B8())
    {
      v51 = v77;
    }

    else
    {
      v83 = sub_1C4EFBD38();
      v84 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v82);
      sub_1C4EFBD48();
      v80 = v41;
      v81 = v68;
      v52 = sub_1C4422F90(v79);
      v69(v52, (v50 + v49), v41);
      v86 = v71;
      v87 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v85);
      sub_1C4EFBB28();
      sub_1C4420C3C(v79, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v82);
      v53 = v57;
      sub_1C4EFAE28();
      sub_1C440962C(&v85);
      v51 = v77;
      v54 = v74;
      v55 = sub_1C4EFAFE8();
      v46(v53, v54);
      v88 = v55;
    }

    v56 = objc_autoreleasePoolPush();
    sub_1C44DC904(v64, v58, v75, &v88, v51, v51);
    v29 = v78;
    objc_autoreleasePoolPop(v56);

    v23 = v76;
    sub_1C44DBD04(v76, type metadata accessor for EntityPair);
  }

  return sub_1C4420C3C(v30, &unk_1EC0BCAC0, &qword_1C4F1F438);
}

void sub_1C44C7610()
{
  sub_1C43FBD3C();
  sub_1C4495194(v9, v10, v11);
  v12 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v12);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4409ACC(v14, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C4416DF8();
  type metadata accessor for OrganizationMatcher(v16);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v19 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v19);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v20 = sub_1C4404C28();
    sub_1C456902C(v20, v21);
    sub_1C442C5A4();
    v25 = sub_1C4401CBC(v22, v23, &dword_1C4F141D0, v24);
    sub_1C4414180(v25);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v3);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v6 = 136315138;
          v32 = sub_1C4404BB0();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v3, type metadata accessor for OrganizationMatcher);
          sub_1C44C63E8();
          v34 = sub_1C440CAFC();
          sub_1C447E868(v34, type metadata accessor for OrganizationMatcher);
          v35 = sub_1C447CB90();
          sub_1C441D828(v35, v5, v36);
          sub_1C44D44F0();
          *(v6 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v37, v38, "%s failed to update progress token");
          sub_1C440962C(v7);
          v39 = sub_1C4416E14();
          MEMORY[0x1C6942830](v39);
          v40 = sub_1C44068C0();
          MEMORY[0x1C6942830](v40);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C44C7AC4(v41);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v42 = sub_1C4402D10();
  v43(v42);
  sub_1C4456268();
  if ((v3 & 1) == 0)
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
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        *(v7 + *(v8 + 20)) = 2;
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C43FD294(*(v2 + 5));
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44C7AC4@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for OrganizationMatcher(0);
  switch(*(v2 + *(v15 + 24)))
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
        v31 = sub_1C447CB3C(&qword_1EDDF4AF0, type metadata accessor for OrganizationMatcher, &protocol conformance descriptor for OrganizationMatcher);
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
        v31 = sub_1C447CB3C(&qword_1EDDF4AF0, type metadata accessor for OrganizationMatcher, &protocol conformance descriptor for OrganizationMatcher);
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

uint64_t TopicMatcher.pipelineType.getter()
{
  result = sub_1C441EF60();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t TopicMatcher.entityClass.getter()
{
  v2 = *(sub_1C441EF60() + 36);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t TopicMatcher.source.getter()
{
  sub_1C441EF60();
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v2, v0);
}

uint64_t TopicMatcher.stageName.getter()
{
  result = sub_1C441EF60();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1C44C8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF8D80, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44C81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C43FE96C();
  a26 = v30;
  a27 = v31;
  v93 = v33;
  v94 = v32;
  v104 = v29;
  v105 = v34;
  v103 = v35;
  v37 = v36;
  v38 = sub_1C440EDE4();
  v95 = type metadata accessor for Source(v38);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  v96 = v40;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v100 = v42;
  v101 = v41;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2D8();
  v97 = v43;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v108 = v44;
  v109 = v45;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBD08();
  v48 = (v46 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v91 - v50;
  v52 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v102 = v53;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBCC4();
  v98 = sub_1C447F834();
  sub_1C43FCDF8();
  v56 = v55;
  sub_1C43FBC68();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v91 - v59;
  v110 = v37(0, v58);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  v106 = &v91 - v62;
  v107 = v28;
  v63 = sub_1C4417F50(v28, v28[3]);
  v103(v63);
  v103 = v60;
  v64 = v104;
  sub_1C4F02BC8();
  v99 = v52;
  if (v64)
  {
    sub_1C440962C(v107);
    sub_1C441D6F0();
    if (v28)
    {
    }
  }

  else
  {
    v65 = v97;
    v104 = v48;
    v105 = v56;
    a17 = 0;
    sub_1C4419854();
    sub_1C4490F60(v66, v67, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    v68 = v106;
    (*(v102 + 32))(v106, v27, v52);
    sub_1C4405BEC();
    sub_1C442CB58();
    v71 = sub_1C4490F60(v69, v70, MEMORY[0x1E69A9778]);
    v72 = v108;
    sub_1C442F914(v71, &a16);
    v73 = &v68[v110[5]];
    v92 = *(v109 + 32);
    v92(v73, v51, v72);
    sub_1C4401670();
    sub_1C4406FE8();
    sub_1C4490F60(v74, v75, MEMORY[0x1E69A9A10]);
    v76 = v101;
    sub_1C4F026C8();
    v77 = (*(v100 + 32))(&v68[v110[6]], v65, v76);
    a14 = 3;
    v78 = v104;
    sub_1C442F914(v77, &a14);
    v79 = v110;
    v92(&v68[v110[7]], v78, v72);
    sub_1C447F524();
    v80 = sub_1C4F02678();
    v81 = &v68[v79[8]];
    *v81 = v80;
    v81[1] = v82;
    sub_1C441FBB8();
    sub_1C4490F60(v83, v84, &protocol conformance descriptor for Source);
    v85 = v96;
    sub_1C4F026C8();
    sub_1C448B210(v85, &v68[v79[9]]);
    v86 = sub_1C4F02678();
    v87 = &v68[v79[10]];
    *v87 = v86;
    v87[1] = v88;
    sub_1C449DAB8();
    *&v68[v79[11]] = sub_1C4F02698();
    v111 = 8;
    sub_1C44C8A04();
    sub_1C4F026C8();
    v89 = sub_1C441B9AC();
    v90(v89);
    v68[v79[12]] = v112;
    sub_1C449EEE8();
    sub_1C440962C(v107);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C44C8A04()
{
  result = qword_1EDDF89F0;
  if (!qword_1EDDF89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF89F0);
  }

  return result;
}

void GraphStore.tripleInsertingTransaction(transactionBody:)(uint64_t a1, uint64_t a2)
{
  v14[2] = a1;
  v14[3] = a2;

  sub_1C4418704(sub_1C44C8C4C, v14, v3, v4, v5, v6, v7, v8, v14[0], v14[1]);
  if (v2)
  {

    v15 = v2;
    v9 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {

      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C440686C();
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C442B738(v10, qword_1EDE2E088);
      v11 = sub_1C4F00968();
      v12 = sub_1C4F01CF8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C43F8000, v11, v12, "GraphStore: tripleInsertingTransaction rolled back transaction.", v13, 2u);
        MEMORY[0x1C6942830](v13, -1, -1);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

IntelligencePlatformCore::PipelineType_optional __swiftcall PipelineType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1C44C8CC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t (*)(), uint64_t))
{
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
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "GraphStore: tripleInsertingTransaction beginning.", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  a2(&v13, sub_1C487F030, a1);

  if (!v2)
  {
    if (v13)
    {
      sub_1C4EFC028();
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CC8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "GraphStore: tripleInsertingTransaction rolled back.";
LABEL_11:
        _os_log_impl(&dword_1C43F8000, v9, v10, v12, v11, 2u);
        MEMORY[0x1C6942830](v11, -1, -1);
      }
    }

    else
    {
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CC8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "GraphStore: tripleInsertingTransaction complete.";
        goto LABEL_11;
      }
    }
  }
}

uint64_t sub_1C44C8EE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44C8F40()
{
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F16D00;
  v1 = *MEMORY[0x1E695C410];
  v2 = *MEMORY[0x1E695C258];
  *(v0 + 32) = *MEMORY[0x1E695C410];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C240];
  v4 = *MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C240];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C230];
  v52 = *MEMORY[0x1E695C390];
  v6 = *MEMORY[0x1E695C390];
  *(v0 + 64) = *MEMORY[0x1E695C230];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C300];
  *(v0 + 80) = *MEMORY[0x1E695C310];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C308];
  v55 = *MEMORY[0x1E695C360];
  v10 = *MEMORY[0x1E695C360];
  *(v0 + 96) = *MEMORY[0x1E695C308];
  *(v0 + 104) = v10;
  v51 = *MEMORY[0x1E695C330];
  v58 = *MEMORY[0x1E695C208];
  v11 = *MEMORY[0x1E695C208];
  *(v0 + 112) = *MEMORY[0x1E695C330];
  *(v0 + 120) = v11;
  v12 = *MEMORY[0x1E695C3A8];
  v57 = *MEMORY[0x1E695C1F0];
  v13 = *MEMORY[0x1E695C1F0];
  *(v0 + 128) = *MEMORY[0x1E695C3A8];
  *(v0 + 136) = v13;
  v53 = *MEMORY[0x1E695C1D0];
  v60 = *MEMORY[0x1E695C318];
  v14 = *MEMORY[0x1E695C318];
  *(v0 + 144) = *MEMORY[0x1E695C1D0];
  *(v0 + 152) = v14;
  v56 = *MEMORY[0x1E695C328];
  v62 = *MEMORY[0x1E695C2C8];
  v15 = *MEMORY[0x1E695C2C8];
  *(v0 + 160) = *MEMORY[0x1E695C328];
  *(v0 + 168) = v15;
  v54 = *MEMORY[0x1E695C1F8];
  v61 = *MEMORY[0x1E695C3D0];
  v16 = *MEMORY[0x1E695C3D0];
  *(v0 + 176) = *MEMORY[0x1E695C1F8];
  *(v0 + 184) = v16;
  v59 = *MEMORY[0x1E695C2B0];
  v63 = *MEMORY[0x1E695C400];
  v17 = *MEMORY[0x1E695C400];
  *(v0 + 192) = *MEMORY[0x1E695C2B0];
  *(v0 + 200) = v17;
  v65 = *MEMORY[0x1E695C278];
  *(v0 + 208) = *MEMORY[0x1E695C278];
  v64 = objc_opt_self();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v52;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v55;
  v28 = v51;
  v29 = v58;
  v30 = v12;
  v31 = v57;
  v32 = v53;
  v33 = v60;
  v34 = v56;
  v35 = v62;
  v36 = v54;
  v37 = v61;
  v38 = v59;
  v39 = v63;
  v40 = v65;
  v41 = [v64 descriptorForRequiredKeysForStyle_];
  v42 = *MEMORY[0x1E695C348];
  *(v0 + 216) = v41;
  *(v0 + 224) = v42;
  v43 = *MEMORY[0x1E695C350];
  v44 = *MEMORY[0x1E695C340];
  *(v0 + 232) = *MEMORY[0x1E695C350];
  *(v0 + 240) = v44;
  v45 = *MEMORY[0x1E695C358];
  *(v0 + 248) = *MEMORY[0x1E695C358];
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v49 = v45;
  return v0;
}

uint64_t sub_1C44C92F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v15[8] = a10;
  v15[9] = a1;
  v15[10] = a2;
  v15[11] = a11;
  result = sub_1C44C5224(sub_1C44CB450, v15);
  if (!v11)
  {
    *a9 = *a5;
  }

  return result;
}

uint64_t sub_1C44C936C(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for EntityBlock(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v37 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = a1(v18);

  if (!v5)
  {
    v21 = a4;
    if (qword_1EDDFFAF0 != -1)
    {
LABEL_13:
      sub_1C440686C();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4F00968();
    v35 = sub_1C4F01CB8();
    v24 = v12;
    v12 = v37;
    if (os_log_type_enabled(v23, v35))
    {
      v31 = v24;
      v25 = swift_slowAlloc();
      sub_1C43FEC60();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v25 = 134218242;
      *(v25 + 4) = *(v19 + 16);
      v33 = v25;

      *(v25 + 12) = 2080;
      swift_beginAccess();
      v32 = v23;
      (*(v37 + 16))(v17, v21, v31);
      sub_1C4490890(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
      v26 = sub_1C4F02858();
      v28 = v27;
      v12 = v37 + 8;
      (*(v37 + 8))(v17, v31);
      v29 = sub_1C441D828(v26, v28, &v38);

      *(v33 + 14) = v29;
      _os_log_impl(&dword_1C43F8000, v32, v35, "GraphStore: batchMappingInsert: %ld blocks for %s", v33, 0x16u);
      sub_1C440962C(v34);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v21 = 0;
    v30 = *(v19 + 16);
    while (v30 != v21)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_1C4490938(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v11, type metadata accessor for EntityBlock);
      sub_1C44D0D54();
      ++v21;
      sub_1C4491300(v11, type metadata accessor for EntityBlock);
    }
  }

  return result;
}

id sub_1C44C9794(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() predicateForMeContact];
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v3 = sub_1C4F01658();
  v16[0] = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:v2 keysToFetch:v3 error:v16];

  v5 = v16[0];
  if (v4)
  {
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v6 = sub_1C4F01678();
    v7 = v5;
  }

  else
  {
    v8 = v16[0];
    v9 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DE10);
    v4 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v4, v11, "CNContactTransformer: Error querying me contact", v12, 2u);
      sub_1C43FBE2C();
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0(v6))
  {
    sub_1C4431590(0, (v6 & 0xC000000000000001) == 0, v6);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1C6940F90](0, v6);
    }

    else
    {
      v13 = *(v6 + 32);
    }

    v14 = v13;
  }

  else
  {

    return 0;
  }

  return v14;
}

uint64_t sub_1C44C99DC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void), void (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t *, uint64_t), unint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t a12)
{
  v275 = a8;
  v267 = a7;
  v291 = a6;
  v290 = a5;
  v274 = a12;
  v273 = a11;
  v272 = a10;
  v271 = a9;
  v302 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v18 = v17;
  v313 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v311 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v259 - v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C441D15C();
  type metadata accessor for EntityBlock(0);
  sub_1C43FCDF8();
  v306 = v29;
  v307 = v30;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v264 = v33;
  v262 = a2;
  v263 = a3;
  v34 = sub_1C456902C(a2, a3);
  v35 = sub_1C43FBD18(v34);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2C8(&v259 - v36);
  v287 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBD08();
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
  sub_1C43FD230();
  v45 = sub_1C43FD2C8(v44);
  v284 = type metadata accessor for Blocker(v45);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v49 = sub_1C43FD2C8(v48);
  a4(v49);
  v50 = v27;
  sub_1C43FCDF8();
  v277 = v51;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD230();
  v312 = v55;
  LODWORD(v288) = 0;
  v56 = 0;
  v280 = a1;
  v278 = *(a1 + 16);
  v316 = (v18 + 16);
  v57 = (v18 + 8);
  v286 = (v38 + 2);
  v261 = v38;
  v285 = (v38 + 1);
  v58 = MEMORY[0x1E69E7CC0];
  *&v59 = 136380675;
  v283 = v59;
  v294 = v60;
  v309 = v27;
  v314 = v22;
  v293 = v12;
  v315 = v57;
  while (1)
  {
    v61 = &unk_1C4F0C000;
    if (v56 == v278)
    {
      break;
    }

    sub_1C43FBF6C();
    v64 = *(v63 + 72);
    v279 = v56;
    sub_1C4430900(v280 + v62 + v64 * v56, v312);
    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_93;
      }

      goto LABEL_77;
    }

    v65 = *(v308 + v284[9]);
    v298 = *(v65 + 16);
    if (v298)
    {
      v66 = 0;
      v296 = *(v294 + 20);
      v295 = v65 + 32;
      v297 = v65;
      while (1)
      {
        if (v66 >= *(v65 + 16))
        {
          __break(1u);
LABEL_87:
          v299 = v38;
          v230 = v58;
          v231 = v284;
          v232 = v284[5];
          v233 = v308;
          sub_1C4EFD2F8();
          v234 = sub_1C4F00FF8();
          v316 = v235;
          v317 = v234;

          v236 = v306;
          v237 = v306[5];
          sub_1C4EFD548();
          sub_1C43FCE50();
          v239 = v264;
          v240 = v233 + v232;
          v58 = v230;
          (*(v238 + 16))(v264 + v237, v240);
          v241 = sub_1C4EFF048();
          v243 = v242;
          sub_1C4EF9AE8();
          v244 = *(v233 + v231[11]);
          v245 = v316;
          *v239 = v317;
          v239[1] = v245;
          v246 = (v239 + v236[6]);
          *v246 = v241;
          v246[1] = v243;
          *(v239 + v236[7]) = v247;
          *(v239 + v236[8]) = v244;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_88:
            v249 = *(v58 + 16);
            v248 = *(v58 + 24);
            if (v249 >= v248 >> 1)
            {
              sub_1C44CF6F4(v248 > 1, v249 + 1, 1, v58);
              v58 = v258;
            }

            sub_1C44BBC2C();
            v250 = sub_1C43FE99C();
            v251(v250);
            *(v58 + 16) = v249 + 1;
            sub_1C43FBF6C();
            sub_1C443058C();
            sub_1C449F338(v264, v252);
            sub_1C4488AF0();
            return v58;
          }

LABEL_95:
          v254 = sub_1C43FCEC0();
          sub_1C44CF6F4(v254, v255, v256, v58);
          v58 = v257;
          goto LABEL_88;
        }

        v301 = v58;
        v300 = v66;
        sub_1C442E860(v295 + 40 * v66, &v318);
        sub_1C4409678(&v318, v319);
        v67 = sub_1C4404BB0();
        v69 = v68(v67);
        v70 = *(v69 + 16);
        sub_1C441B31C();
        v72 = sub_1C447CB3C(&qword_1EDDFCCB8, v71, MEMORY[0x1E69A9758]);
        v73 = v302;
        v305 = v72;
        v74 = MEMORY[0x1C69407C0](v70, v302);
        v321 = v74;
        v75 = *(v69 + 16);
        if (v75)
        {
          v76 = v314;
          sub_1C43FBF6C();
          v317 = v69;
          v78 = v69 + v77;
          v80 = *(v79 + 72);
          v81 = *(v79 + 16);
          v82 = v73;
          v83 = v315;
          do
          {
            v84 = sub_1C4402CD0();
            v81(v84);
            sub_1C44CB508();
            (*v83)(v76, v82);
            v78 += v80;
            --v75;
          }

          while (v75);

          v85 = v321;
          v50 = v309;
          v86 = v316;
          v73 = v82;
        }

        else
        {
          v85 = v74;

          v86 = v316;
        }

        v87 = v319;
        v58 = v320;
        sub_1C4409678(&v318, v319);
        v88 = (*(v58 + 16))(v87, v58);
        v89 = MEMORY[0x1C69407C0](*(v88 + 16), v73, v305);
        v321 = v89;
        v90 = *(v88 + 16);
        v304 = (v86 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
        v22 = v314;
        if (v90)
        {
          v310 = v85;
          sub_1C43FBF6C();
          *&v303 = v88;
          v58 = v88 + v91;
          v93 = *(v92 + 72);
          v317 = *(v92 + 16);
          v94 = v315;
          v95 = v50;
          v96 = v302;
          do
          {
            v97 = sub_1C43FD2BC();
            v317(v97);
            sub_1C44CB508();
            (*v94)(v22, v96);
            v58 += v93;
            --v90;
          }

          while (v90);

          v38 = v321;
          v50 = v95;
          v98 = v317;
          v85 = v310;
        }

        else
        {
          v38 = v89;

          v98 = *v86;
        }

        v99 = v311;
        v100 = v302;
        v317 = v98;
        (v98)(v311, v312 + v296, v302);
        if (*(v85 + 16))
        {
          break;
        }

LABEL_23:

        v310 = *v315;
        v310(v99, v100);
        if (v38[2])
        {
          v110 = sub_1C4F00FD8();
          v58 = (v38 + 7);
          v111 = ~(-1 << *(v38 + 32));
          v22 = v304;
          while (1)
          {
            v112 = v110 & v111;
            if (((*(v58 + (((v110 & v111) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v110 & v111)) & 1) == 0)
            {
              break;
            }

            (v317)(v314, v38[6] + *(v313 + 72) * v112, v100);
            sub_1C441B31C();
            sub_1C447CB3C(&qword_1EDDFCCB0, v113, MEMORY[0x1E69A9768]);
            v114 = sub_1C4F010B8();
            v115 = sub_1C43FC0A8();
            (v310)(v115);
            v110 = v112 + 1;
            if (v114)
            {

              goto LABEL_28;
            }
          }

          sub_1C44755F0();
LABEL_46:
          v50 = v309;
          goto LABEL_47;
        }

        sub_1C44755F0();
LABEL_47:
        v65 = v297;
        v66 = v300 + 1;
        sub_1C440962C(&v318);
        if (v66 == v298)
        {
          goto LABEL_48;
        }
      }

      v310 = v38;
      v101 = sub_1C4F00FD8();
      v102 = v85 + 56;
      v103 = v85;
      v58 = ~(-1 << *(v85 + 32));
      v22 = v304;
      do
      {
        v104 = v101 & v58;
        if (((*(v102 + (((v101 & v58) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v101 & v58)) & 1) == 0)
        {
          v50 = v309;
          v38 = v310;
          v99 = v311;
          goto LABEL_23;
        }

        v105 = v313;
        (v317)(v314, *(v103 + 48) + *(v313 + 72) * v104, v100);
        sub_1C441B31C();
        sub_1C447CB3C(&qword_1EDDFCCB0, v106, MEMORY[0x1E69A9768]);
        v107 = sub_1C4F010B8();
        v108 = *(v105 + 8);
        v109 = sub_1C43FC0A8();
        v108(v109);
        v101 = v104 + 1;
      }

      while ((v107 & 1) == 0);

      (v108)(v311, v100);
LABEL_28:
      v116 = v319;
      v117 = v320;
      sub_1C4409678(&v318, v319);
      v118 = v299;
      (*(v117 + 24))(*(v312 + *(v294 + 32)), *(v312 + *(v294 + 32) + 8), v116, v117);
      sub_1C44755F0();
      v299 = v118;
      v38 = v292;
      if (v118)
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v120 = sub_1C4F00978();
        sub_1C442B738(v120, qword_1EDE2DE10);
        sub_1C4430900(v312, v38);
        v22 = sub_1C4F00968();
        v121 = sub_1C4F01CD8();
        v122 = os_log_type_enabled(v22, v121);
        v50 = v309;
        if (v122)
        {
          sub_1C43FECF0();
          v58 = swift_slowAlloc();
          v321 = swift_slowAlloc();
          v123 = v321;
          *v58 = v283;
          v124 = v282;
          v125 = v38;
          v38 = v287;
          (*v286)(v282, v125, v287);
          sub_1C4455938();
          sub_1C442A6B0();
          sub_1C447CB3C(&qword_1EDDFE810, v126, MEMORY[0x1E69A9840]);
          v127 = sub_1C4F02858();
          v129 = v128;
          sub_1C44BBC2C();
          v130(v124, v38);
          v131 = sub_1C441D828(v127, v129, &v321);

          *(v58 + 4) = v131;
          _os_log_impl(&dword_1C43F8000, v22, v121, "Blocking not successful for sourcetriple: %{private}s", v58, 0xCu);
          sub_1C440962C(v123);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C44755F0();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C447E868(v38, v291);
        }

        v299 = 0;
        goto LABEL_47;
      }

      v132 = v119;
      v133 = *(v119 + 16);
      if (v133)
      {
        sub_1C44D3F7C();
        LODWORD(v310) = v134;
        v305 = sub_1C4EFD548();
        sub_1C43FBCE0();
        v304 = *(v135 + 16);
        *&v303 = v135 + 16;
        v288 = v132;
        v136 = (v132 + 40);
        v38 = v281;
        do
        {
          v137 = v58;
          v139 = *(v136 - 1);
          v138 = *v136;
          v22 = v306;
          v304(v38 + v306[5], v317 + v308, v305);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v140 = sub_1C4EFF048();
          v142 = v141;
          sub_1C4EF9AE8();
          *v38 = v139;
          v38[1] = v138;
          v58 = v137;
          v143 = (v38 + *(v22 + 24));
          *v143 = v140;
          v143[1] = v142;
          *(v38 + *(v22 + 28)) = v144;
          *(v38 + *(v22 + 32)) = v310;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_1C43FCEC0();
            sub_1C44CF6F4(v148, v149, v150, v137);
            v58 = v151;
          }

          v146 = *(v58 + 16);
          v145 = *(v58 + 24);
          v50 = v309;
          if (v146 >= v145 >> 1)
          {
            sub_1C44CF6F4(v145 > 1, v146 + 1, 1, v58);
            v58 = v152;
          }

          *(v58 + 16) = v146 + 1;
          sub_1C43FBF6C();
          sub_1C443058C();
          sub_1C449F338(v38, v147);
          v136 += 2;
          --v133;
        }

        while (v133);

        LODWORD(v288) = 1;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_48:
    v56 = v279 + 1;
    sub_1C447E868(v312, v291);
  }

  v311 = *(v308 + v284[10]);
  v310 = *(v311 + 16);
  if (v310)
  {
    sub_1C4488AF0();
    sub_1C445BADC();
    if (!v278)
    {
      __break(1u);
      goto LABEL_95;
    }

    v154 = 0;
    v309 = (v311 + 32);
    v305 = (*(v277 + 80) + 32) & ~*(v277 + 80);
    *&v153 = 136315138;
    v303 = v153;
    v61 = v289;
    while (1)
    {
      if (v154 >= *(v311 + 16))
      {
        __break(1u);
LABEL_93:
        sub_1C4419274();
        swift_once();
LABEL_77:
        v212 = sub_1C4F00978();
        sub_1C442B738(v212, qword_1EDE2DE10);
        sub_1C44263BC();
        v213 = v266;
        sub_1C4430900(v308, v266);
        v214 = sub_1C4F00968();
        v215 = sub_1C4F01CF8();
        v216 = sub_1C44016D0();
        if (os_log_type_enabled(v216, v217))
        {
          sub_1C43FECF0();
          v218 = swift_slowAlloc();
          v219 = v58;
          v220 = swift_slowAlloc();
          v318 = v220;
          *v218 = v61[458];
          sub_1C44263BC();
          v221 = v259;
          sub_1C4430900(v213, v259);
          sub_1C447E868(v213, type metadata accessor for Blocker);
          v222 = sub_1C44A1AC0();
          v224 = v223;
          sub_1C447E868(v221, type metadata accessor for Blocker);
          v225 = sub_1C441D828(v222, v224, &v318);

          *(v218 + 4) = v225;
          _os_log_impl(&dword_1C43F8000, v214, v215, "%s going to defer", v218, 0xCu);
          sub_1C440962C(v220);
          v58 = v219;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C447E868(v213, type metadata accessor for Blocker);
        }

        sub_1C4F01828();
        sub_1C447CB3C(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
        swift_allocError();
        sub_1C4F00EA8();
        swift_willThrow();
        sub_1C447E868(v312, v291);

        return v58;
      }

      v301 = v58;
      v312 = v154;
      sub_1C442E860(&v309[40 * v154], &v318);
      v155 = v270;
      sub_1C4430900(v280 + v305, v270);
      v156 = *v286;
      (*v286)(v61, v155, v22);
      sub_1C4455938();
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v157 = sub_1C4F00978();
      sub_1C442B738(v157, qword_1EDE2DE10);
      v158 = sub_1C4F00968();
      v159 = sub_1C4F01CB8();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_1C43F8000, v158, v159, "Entity blocking for entity", v160, 2u);
        v161 = sub_1C4416E14();
        MEMORY[0x1C6942830](v161);
      }

      v162 = v319;
      v22 = v320;
      v163 = sub_1C4409678(&v318, v319);
      MEMORY[0x1EEE9AC00](v163);
      *(&v259 - 2) = v308;
      v164 = v280;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v165 = v271(v275, &v259 - 4, v164);
      v166 = *(v22 + 8);
      v167 = sub_1C447CB3C(v272, v273, v274);
      v168 = v166(v165, v294, v167, v162, v22);
      if (v38)
      {

        v169 = v269;
        v61 = v289;
        sub_1C445BADC();
        v156();
        v58 = sub_1C4F00968();
        v170 = sub_1C4F01CD8();
        if (os_log_type_enabled(v58, v170))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v171 = swift_slowAlloc();
          v321 = v171;
          *v22 = v283;
          sub_1C442A6B0();
          sub_1C447CB3C(&qword_1EDDFE810, v172, MEMORY[0x1E69A9840]);
          sub_1C4F02858();
          v299 = v38;
          v173 = *v285;
          (*v285)(v169, v287);
          v174 = sub_1C4404BB0();
          sub_1C441D828(v174, v175, v176);
          sub_1C4404CE0();

          *(v22 + 4) = v169;
          _os_log_impl(&dword_1C43F8000, v58, v170, "Blocking not successful for entity: %{private}s", v22, 0xCu);
          sub_1C440962C(v171);
          v61 = v289;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C445BADC();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          v173 = *v285;
          (*v285)(v169, v22);
        }

        v173(v61, v22);
        v38 = 0;
        sub_1C44755F0();
      }

      else
      {
        v177 = v168;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v178 = sub_1C4F00968();
        v58 = sub_1C4F01CB8();

        os_log_type_enabled(v178, v58);
        sub_1C445BADC();
        if (v179)
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v180 = swift_slowAlloc();
          v321 = v180;
          *v165 = v303;
          v181 = MEMORY[0x1C6940380](v177, MEMORY[0x1E69E6158]);
          v183 = sub_1C441D828(v181, v182, &v321);

          *(v165 + 4) = v183;
          _os_log_impl(&dword_1C43F8000, v178, v58, "Entity blocking for entity with blocking keys %s", v165, 0xCu);
          sub_1C440962C(v180);
          v184 = sub_1C4416E14();
          MEMORY[0x1C6942830](v184);
          v185 = sub_1C44068C0();
          MEMORY[0x1C6942830](v185);
        }

        sub_1C44755F0();
        v186 = v312;
        v187 = *(v177 + 16);
        if (!v187)
        {
          sub_1C44BBC2C();
          v61 = v289;
          v211(v289, v22);

          v210 = v276;
          goto LABEL_73;
        }

        v299 = 0;
        sub_1C44D3F7C();
        LODWORD(v316) = v188;
        v315 = sub_1C4EFD548();
        sub_1C43FBCE0();
        v190 = *(v189 + 16);
        v313 = v189 + 16;
        v314 = v190;
        v304 = v177;
        v191 = (v177 + 40);
        v192 = v268;
        do
        {
          v193 = *(v191 - 1);
          v194 = *v191;
          v195 = v306;
          v314(v192 + v306[5], v317 + v308, v315);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v196 = sub_1C4EFF048();
          v198 = v197;
          sub_1C4EF9AE8();
          *v192 = v193;
          v192[1] = v194;
          v199 = (v192 + v195[6]);
          *v199 = v196;
          v199[1] = v198;
          *(v192 + v195[7]) = v200;
          *(v192 + v195[8]) = v316;
          v38 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v204 = sub_1C43FCEC0();
            sub_1C44CF6F4(v204, v205, v206, v58);
            v38 = v207;
          }

          v202 = v38[2];
          v201 = v38[3];
          if (v202 >= v201 >> 1)
          {
            sub_1C44CF6F4(v201 > 1, v202 + 1, 1, v38);
            v38 = v208;
          }

          v58 = v38;
          v38[2] = v202 + 1;
          sub_1C43FBF6C();
          sub_1C443058C();
          sub_1C449F338(v192, v203);
          v191 += 2;
          --v187;
        }

        while (v187);
        sub_1C44BBC2C();
        v61 = v289;
        v22 = v287;
        v209(v289, v287);

        LODWORD(v288) = 1;
        sub_1C4488AF0();
      }

      v210 = v276;
      v186 = v312;
LABEL_73:
      v154 = v186 + 1;
      sub_1C440962C(&v318);
      if (v154 == v310)
      {
        goto LABEL_82;
      }
    }
  }

  sub_1C4488AF0();
  sub_1C445BADC();
  v210 = v276;
LABEL_82:
  v267(v280);
  if (sub_1C44157D4(v210, 1, v294) == 1)
  {
    sub_1C4420C3C(v210, v262, v263);
  }

  else
  {
    v226 = v261;
    v227 = v260;
    (v261[2])(v260, v210, v22);
    sub_1C4455938();
    v228 = v265;
    (v226[4])(v265, v227, v22);
    if ((v288 & 1) == 0)
    {
      goto LABEL_87;
    }

    sub_1C44BBC2C();
    v229(v228, v22);
  }

  return v58;
}

void sub_1C44CB508()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFEEF8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C4419828();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A9758]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C44CB678(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C4419828();
    sub_1C4403D94(&qword_1EDDFCCB0, v10, MEMORY[0x1E69A9768]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C44CB678(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483F3C0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484C438(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
      v14 = sub_1C4F00FD8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
        v16 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1C44CB92C()
{
  v1 = [v0 identifier];
  sub_1C4F01138();

  if (qword_1EDDF7890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SourceIdPrefix(0);
  v5 = *sub_1C442B738(v2, qword_1EDDF7898);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v3 = sub_1C4404C28();
  MEMORY[0x1C6940010](v3);

  return v5;
}

uint64_t type metadata accessor for SourceIdPrefix(uint64_t a1)
{
  result = qword_1EDDFBC88;
  if (!qword_1EDDFBC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44CBA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v155 = v20;
  v25 = v24;
  v165 = v26;
  v28 = v27;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v156 = v30;
  v157 = v29;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v153 = v31;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v158 = v33;
  v159 = v32;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v152 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v154 = v36;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v162 = v38;
  v163 = v37;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v161 = v39;
  sub_1C43FBE44();
  a10 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v148 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C4D871FC();
  sub_1C43FCDF8();
  v149 = v46;
  v150 = v45;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  v147 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v50 = sub_1C43FD2C8(v49);
  v51 = type metadata accessor for CNContactStructs.Person(v50);
  v52 = v28 + v51[5];
  v53 = sub_1C4EFEEF8();
  v151 = v52;
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v53);
  v57 = v51[6];
  sub_1C4EFD4C8();
  v58 = (v28 + v51[7]);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v59 = type metadata accessor for Source(0);
  sub_1C442B738(v59, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v60, v58, v61);
  sub_1C4EFEE68();
  sub_1C4401738(v51[9]);
  sub_1C4EFE5D8();
  sub_1C4401738(v51[11]);
  sub_1C4EFE338();
  sub_1C4401738(v51[13]);
  sub_1C4EFE328();
  sub_1C4401738(v51[15]);
  sub_1C4EFE2C8();
  sub_1C4401738(v51[17]);
  sub_1C4EFE348();
  sub_1C4401738(v51[19]);
  sub_1C4EFE3A8();
  sub_1C4401738(v51[21]);
  sub_1C4EFEBD8();
  sub_1C4401738(v51[23]);
  sub_1C4EFE3D8();
  sub_1C4401738(v51[25]);
  sub_1C4EFE908();
  sub_1C4401738(v51[27]);
  sub_1C4EFE3B8();
  *(v28 + v51[29]) = 0;
  sub_1C4EFE8F8();
  *(v28 + v51[31]) = 0;
  sub_1C4EFE9D8();
  sub_1C4401738(v51[33]);
  sub_1C4EFEB18();
  sub_1C4401738(v51[35]);
  sub_1C4EFEC28();
  *(v28 + v51[37]) = 0;
  sub_1C4EFE358();
  sub_1C4401738(v51[39]);
  sub_1C4EFEE38();
  sub_1C4401738(v51[41]);
  sub_1C4EFE948();
  sub_1C4401738(v51[43]);
  sub_1C4EFE778();
  sub_1C4401738(v51[45]);
  sub_1C4EFE588();
  sub_1C4401738(v51[47]);
  sub_1C4EFE318();
  sub_1C4401738(v51[49]);
  sub_1C4EFEBF8();
  sub_1C4401738(v51[51]);
  sub_1C4EFE858();
  sub_1C4401738(v51[53]);
  sub_1C4EFE938();
  sub_1C4401738(v51[55]);
  sub_1C4EFE928();
  sub_1C4401738(v51[57]);
  *(v28 + v51[58]) = 0;
  v62 = v28 + v51[59];
  type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  v145 = v62;
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v66);
  v67 = v28 + v51[60];
  type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
  v144 = v67;
  sub_1C43FCF64();
  sub_1C440BAA8(v68, v69, v70, v71);
  *(v28 + v51[61]) = 0;
  *(v28 + v51[62]) = 0;
  *(v28 + v51[63]) = 0;
  *(v28 + v51[64]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDE2DE10);
  v143 = *(v41 + 16);
  v143(v21, v28 + v57, a10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CB8();

  v164 = v57;
  v160 = v41;
  if (os_log_type_enabled(v73, v74))
  {
    swift_slowAlloc();
    v166 = sub_1C441D7BC();
    *v57 = 136381187;
    v75 = sub_1C441D828(v165, v25, &v166);
    sub_1C44587AC(v75);
    sub_1C4432F18();
    sub_1C44CD358(v76, v77, MEMORY[0x1E69A92F8]);
    v141 = v74;
    v142 = v53;
    v78 = v25;
    v79 = v58;
    v80 = a10;
    v81 = sub_1C4F02858();
    v82 = v80;
    v84 = v83;
    v85 = *(v41 + 8);
    v85(v21, v82);
    v86 = sub_1C441D828(v81, v84, &v166);
    v58 = v79;
    v25 = v78;
    v53 = v142;

    *(v57 + 14) = v86;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v73, v141, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v57, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v85 = *(v41 + 8);
    v85(v21, a10);
  }

  v87 = *v58;
  v88 = v58[1];
  v166 = v165;
  v167 = v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v87, v88);

  v90 = v166;
  v89 = v167;
  sub_1C4F01178();
  sub_1C4F01148();
  v92 = v91;
  v93 = sub_1C44018C0();
  v94(v93);
  if (v92 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v95 = sub_1C4F00968();
    v96 = sub_1C4F01CD8();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v165 = v85;
      v166 = swift_slowAlloc();
      v98 = v58;
      v99 = v166;
      *v97 = 136380675;
      v100 = sub_1C441D828(v90, v89, &v166);

      *(v97 + 4) = v100;
      _os_log_impl(&dword_1C43F8000, v95, v96, "Source: failed to encode identifier as UTF8 data: %{private}s", v97, 0xCu);
      sub_1C440962C(v99);
      v58 = v98;
      v85 = v165;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v112 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v112);
    sub_1C43FE7A8(v113, 5);
    sub_1C4420C3C(v151, &qword_1EC0B9A08, &unk_1C4F107B0);
    v85(v28 + v164, a10);
    sub_1C440636C();
    sub_1C44D474C(v58, v114);
    v115 = *(*(v53 - 8) + 8);
    v116 = sub_1C44587A0(&a17);
    v115(v116);
    v117 = sub_1C44587A0(&a16);
    v115(v117);
    v118 = sub_1C44587A0(&a15);
    v115(v118);
    v119 = sub_1C44587A0(&a14);
    v115(v119);
    v120 = sub_1C44587A0(&a13);
    v115(v120);
    v121 = sub_1C44587A0(&a12);
    v115(v121);
    v122 = sub_1C44587A0(&a11);
    v115(v122);
    v123 = sub_1C44587A0(&a10);
    v115(v123);
    v124 = sub_1C44587A0(&a9);
    v115(v124);
    v125 = sub_1C44587A0(&v168);
    v115(v125);
    v126 = sub_1C44587A0(&v167);
    v115(v126);
    v127 = sub_1C44587A0(&v166);
    v115(v127);
    v128 = sub_1C44587A0(&v165);
    v115(v128);
    v129 = sub_1C44587A0(&v164);
    v115(v129);
    v130 = sub_1C44587A0(&v163);
    v115(v130);
    v131 = sub_1C44587A0(&v162);
    v115(v131);
    v132 = sub_1C44587A0(&v161);
    v115(v132);
    v133 = sub_1C44587A0(&v160);
    v115(v133);
    v134 = sub_1C44587A0(&v159);
    v115(v134);
    v135 = sub_1C44587A0(&v158);
    v115(v135);
    v136 = sub_1C44587A0(&v157);
    v115(v136);
    v137 = sub_1C44587A0(&v156);
    v115(v137);
    v138 = sub_1C44587A0(&v155);
    v115(v138);
    v139 = sub_1C44587A0(&v154);
    v115(v139);
    v140 = sub_1C44587A0(&v153);
    v115(v140);
    sub_1C4420C3C(v145, &qword_1EC0BAD38, &unk_1C4F70B40);
    sub_1C4420C3C(v144, &qword_1EC0C6C38, &qword_1C4F70B38);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v101, v102, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v103 = sub_1C4410CBC();
    sub_1C44344B8(v103, v104);
    v105 = sub_1C4410CBC();
    sub_1C4498FD8(v105, v106, v153);
    v165 = v155;
    v107 = sub_1C4410CBC();
    sub_1C441DFEC(v107, v108);
    sub_1C4F00DA8();
    (*(v156 + 8))(v153, v157);
    v143(v148, v28 + v164, a10);
    (*(v158 + 16))(v152, v154, v159);
    sub_1C4EFF028();
    v109 = sub_1C4410CBC();
    sub_1C441DFEC(v109, v110);
    (*(v158 + 8))(v154, v159);
    v111 = *(v149 + 32);
    v111(v146, v147, v150);
    v111(v28, v146, v150);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C44CC80C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

void sub_1C44CC898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v6 + 84) == a3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v7 + 84) == a3)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v8 + 84) == a3)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v9 + 84) == a3)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (a3 == 2147483646)
          {
            sub_1C441864C(*(a4 + 32));
            return;
          }

          v10 = sub_1C43FE99C();
          sub_1C456902C(v10, v11);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

void sub_1C44CCA78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return;
        }

        v10 = v17;
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  sub_1C440BAA8(v11, a2, a2, v10);
}

void sub_1C44CCBF0()
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
          sub_1C441864C(v2[8]);
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

void sub_1C44CCD54()
{
  sub_1C4E93A3C();
  sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFD548();
    sub_1C43FCF8C();
    if (*(v2 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      type metadata accessor for Source(0);
      sub_1C43FCF8C();
      if (*(v3 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C4EFEEF8();
        sub_1C43FCF8C();
        if (*(v4 + 84) == v0)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v0 == 2147483646)
          {
            sub_1C4EDD7A4();
            return;
          }

          v5 = sub_1C43FE99C();
          sub_1C456902C(v5, v6);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v7, v8, v9, v10);
}

void sub_1C44CCECC()
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

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v8, v9, v10, v11);
}

uint64_t sub_1C44CD024()
{

  return sub_1C4EFD548();
}

uint64_t sub_1C44CD064(uint64_t a1)
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44CD080(uint64_t a1)
{

  return sub_1C4EFB438();
}

uint64_t sub_1C44CD0A0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C44CD0F4()
{

  return sub_1C448D610(v1, v0, v2);
}

void sub_1C44CD14C(__n128 a1)
{
  v3 = *(v1 + 376);

  sub_1C4CDF41C(v3);
}

uint64_t sub_1C44CD164(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44CD1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD4C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C44CD598(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}